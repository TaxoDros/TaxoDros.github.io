#!/bin/bash
#
# streams taxonomic name records derived from SYST.TEXT
# into line-jason
#

set -xe

BIN_DIR=$(dirname $0)
PRESTON_OPTS="--algo md5 --remote https://linker.bio,https://zenodo.org"

source "$(dirname $0)/taxodros-version.sh"

stream_records() {
  taxodros_index_version\
   | grep hasVersion\
   | grep -E "SYST[.]TEXT"\
   | preston taxodros-stream ${PRESTON_OPTS}
}

stream_records

