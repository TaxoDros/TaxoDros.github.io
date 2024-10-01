#!/bin/bash
#
# prints provenance of selected taxodros index version
#
#

TAXODROS_VERSION_2024_01=hash://md5/40c28eb355268787eca4eba676a6fdf6
TAXODROS_PDF_VERSION_2024_01=hash://md5/26a67012dde325cf2a3a058cc2f9c1b8

TAXODROS_VERSION_2024_09=hash://md5/b2c36e8284ac51b7a65dfc97c0ef0f74
TAXODROS_PDF_VERSION_2024_09=hash://md5/b3ead19ea211a66e4f59a6842e097c7b

TAXODROS_VERSION=${TAXODROS_VERSION_2024_09}
TAXODROS_PDF_VERSION=${TAXODROS_PDF_VERSION_2024_09}

PRESTON_OPTS="--algo md5 --remote https://linker.bio,https://zenodo.org"

taxodros_index_version() {
  preston cat\
   ${TAXODROS_VERSION}\
   ${PRESTON_OPTS}
}

taxodros_pdfs_version() {
  preston cat\
   ${TAXODROS_PDF_VERSION}\
   ${PRESTON_OPTS}
}
