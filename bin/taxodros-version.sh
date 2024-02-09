#!/bin/bash
#
# prints provenance of selected taxodros index version
#
#

TAXODROS_VERSION=hash://md5/3793ab3633d3e94a40d3ab442b6cff7d
TAXODROS_PDF_VERSION=hash://md5/4fa9eeed1c8cff2490483a48c718df02

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
