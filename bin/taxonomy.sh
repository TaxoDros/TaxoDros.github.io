#!/bin/bash
#
# takes most recent versions of DROS3.TEXT and DROS5.TEXT 
# using most recent versions of ALLORTE.TEXT, KEYWORDS.TEXT, TAXA_LIST 
# to insert lsids into json representations of DROS3.TEXT DROS5.TEXT

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
   | grep -E "SYST[.]TEXT"\
   | preston taxodros-stream ${PRESTON_OPTS}
}

stream_records

