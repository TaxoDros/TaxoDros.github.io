#!/bin/bash
#
# prints references in line-json as derived from DROS5
#

set -xe

source "$(dirname $0)/version.sh"

stream_records() {
  taxodros_index_version\
   | grep hasVersion\
   | grep -E "DROS5[.]TEXT"\
   | preston taxodros-stream ${PRESTON_OPTS}
}

stream_records

