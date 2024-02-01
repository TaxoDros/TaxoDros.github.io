#!/bin/bash
#
# prints references in line-json as derived from DROS5
#

set -xe

TAXODROS_VERSION=hash://md5/b8c3a1e1acdfaf8e0bb3c69d220709d8

BIN_DIR=$(dirname $0)
PRESTON_OPTS="--algo md5 --remote https://linker.bio,https://zenodo.org"

taxodros_index_version() {
  preston cat\
   ${TAXODROS_VERSION}\
   ${PRESTON_OPTS}
}

stream_records() {
  taxodros_index_version\
   | grep hasVersion\
   | grep -E "DROS5[.]TEXT"\
   | preston taxodros-stream ${PRESTON_OPTS}
}

stream_records

