#!/bin/bash
#
# prints provenance of selected taxodros index version
#
#

TAXODROS_VERSION=hash://md5/40c28eb355268787eca4eba676a6fdf6
TAXODROS_PDF_VERSION=hash://md5/26a67012dde325cf2a3a058cc2f9c1b8

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
