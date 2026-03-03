#!/bin/bash
# 
# tracks zenodo query associated with known, versioned taxodros pdf content 
#

set -xe

SCRIPT_DIR=$(dirname $0)
DATA_DIR="${SCRIPT_DIR}/../zenodo"
source "${SCRIPT_DIR}/version.sh"

preston track --data-dir "${DATA_DIR}"\
 --algo md5\
 -f <(preston ls --algo md5 --data-dir "${SCRIPT_DIR}/../data" --anchor ${TAXODROS_PDF_MD5_VERSION}\
 | grep hasVersion \
 | grep -iE "[.]PDF>" \
 | grep -Eo "hash://md5/[a-f0-9]{32}" \
 | sort | uniq \
 | xargs -I{} echo "https://zenodo.org/api/communities/taxodros/records?q=%22{}%22&l=list&limit=1"
)

preston head --data-dir "${DATA_DIR}" --algo md5\
 > "${DATA_DIR}/HEAD"

