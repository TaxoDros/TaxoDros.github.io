#!/bin/bash
#
# takes most recent versions of DROS3.TEXT and DROS5.TEXT 
# using most recent versions of ALLORTE.TEXT, KEYWORDS.TEXT, TAXA_LIST 
# to insert lsids into json representations of DROS3.TEXT DROS5.TEXT

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
