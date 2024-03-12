#!/bin/bash
#
# Streams enriched json representations of DROS3/DROS5/SYST.TEXT
# from a package and versioned copy of TaxoDros and associated pdfs.
#
# For packaging, see related script package.sh . 
#
# Enrichment includes expanding journal abbreviations and 
# associating filenames with the md5 signatures of their content.
#
# usage:
#  ./stream.sh [DROS3|DROS5|SYST]
#
# example:
#  ./stream.sh DROS5 | head -n1 | jq . 
#  
#  yields:
#
# {
#  "metadata": {
#    "http://www.w3.org/1999/02/22-rdf-syntax-ns#type": "taxodros-dros5",
#    "keywords": [
#      "Biodiversity",
#      "Taxonomy",
#      "fruit flies",
#      "flies",
#      "Animalia",
#      "Arthropoda",
#      "Insecta",
#      "Diptera"
#    ],
#    "custom": {
#      "dwc:kingdom": [
#        "Animalia"
#      ],
#      "dwc:phylum": [
#        "Arthropoda"
#      ],
#      "dwc:class": [
#        "Insecta"
#      ],
#      "dwc:order": [
#        "Diptera"
#      ]
#    },
#    "referenceId": "abd el-halim et al., 2005",
#    "related_identifiers": [
#      {
#        "relation": "isAlternateIdentifier",
#        "identifier": "urn:lsid:taxodros.uzh.ch:id:abd%20el-halim%20et%20al.%2C%202005"
#      },
#      {
#        "relation": "isDerivedFrom",
#        "identifier": "https://linker.bio/line:hash://md5/ff86b940567d278e50fa00672cf96629!/L1-L10"
#      },
#      {
#        "relation": "isDerivedFrom",
#        "identifier": "10.5281/zenodo.10723540"
#      },
#      {
#        "relation": "isPartOf",
#        "identifier": "https://www.taxodros.uzh.ch"
#      },
#      {
#        "relation": "isAlternateIdentifier",
#        "identifier": "hash://md5/639988a4074ded5208a575b760a5dc5e"
#      }
#    ],
#    "creators": [
#      {
#        "name": "Abd El-Halim, A.S."
#      },
#      {
#        "name": "Mostafa, A.A."
#      },
#      {
#        "name": "Allam, K.A.M.a."
#      }
#    ],
#    "access_right": "restricted",
#    "publication_date": "2005",
#    "title": "Dipterous flies species and their densities in fourteen Egyptian governorates.",
#    "publication_type": "article",
#    "journal_title": "Journal of the Egyptian Society of Parasitology",
#    "journal_volume": "35",
#    "journal_pages": "351-362",
#    "taxodros:method": "ocr",
#    "http://www.w3.org/ns/prov#wasDerivedFrom": "line:hash://md5/ff86b940567d278e50fa00672cf96629!/L1-L10",
#    "references": [
#      "Bächli, G. (2024). TaxoDros - The Database on Taxonomy of Drosophilidae hash://md5/26a67012dde325cf2a3a058cc2f9c1b8 hash://sha256/ca86d74b318a334bddbc7c6a387a09530a083b8617718f5369ad548744c602d3 [Data set]. Zenodo. https://doi.org/10.5281/zenodo.10723540"
#   ],
#   "filename": "Abd El-Halim et al., 2005.pdf",
#   "upload_type": "publication",
#    "communities": [
#      {
#        "identifier": "taxodros"
#      },
#      {
#        "identifier": "biosyslit"
#      }
#    ],
#    "description": "Uploaded by Plazi for TaxoDros. We do not have abstracts."
#  }
#}


set -xe

STREAM_TYPES=${1:-DROS3|DROS5|SYST}
BIN_DIR=$(dirname $0)
TRANSLATION_TABLE=$(mktemp)
PRESTON_OPTS="--algo md5 --remote https://linker.bio,https://zenodo.org"

source "$(dirname $0)/taxodros-version.sh"

stream_records() {
  taxodros_index_version\
   | grep hasVersion\
   | grep -E "(${STREAM_TYPES})[.]TEXT"\
   | preston taxodros-stream ${PRESTON_OPTS}
}

build_translation_table() {
   "${BIN_DIR}/localities.sh"\
   | cut -f1,2

   "${BIN_DIR}/keywords.sh"\
   | cut -f1,2
 
  taxodros_index_version\
   | grep hasVersion\
   | grep TAXA_LIST\
   | head -n1\
   | preston cat ${PRESTON_OPTS}\
   | "${BIN_DIR}/lsid4taxon.sh"
  
  taxodros_index_version\
   | grep hasVersion\
   | grep ASHBURN\
   | head -n1\
   | preston cat ${PRESTON_OPTS}\
   | "${BIN_DIR}/expandjournal.sh"

  taxodros_pdfs_version\
   | "${BIN_DIR}/replace-filename-with-content-id.sh"
  
}

>&2 echo building translation table...
build_translation_table\
 | awk -F '\t' '{ { gsub("&", "\\\\&", $2) } print $1 "\t" $2 }'\
 | awk -F '\t' '{ { gsub("\"", "\\\\\"", $2) } print "s|\"" $1 "\"|\"" $2 "\"|gI" }'\
 > "${TRANSLATION_TABLE}"
>&2 echo building translation table... done.

stream_records\
  | parallel -j1 --pipe --line-buffer sed -f "${TRANSLATION_TABLE}"

rm "${TRANSLATION_TABLE}"
