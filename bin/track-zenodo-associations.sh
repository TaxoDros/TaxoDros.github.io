#!/bin/bash
# 
# tracks zenodo query associated with known, versioned taxodros content
#

SCRIPT_DIR=$(dirname $0)
DATA_DIR="${SCRIPT_DIR}/../zenodo"
TAXODROS_VERSION=hash://md5/47cda0f604fec63aa3df1f9a21251481

preston track --data-dir "${DATA_DIR}"\
 --algo md5\
 -f <(preston cat --data-dir "${SCRIPT_DIR}/../data" ${TAXODROS_VERSION}\
 | grep -oE "hash://md5/[a-f0-9]{32}"\
 | xargs -I{} echo "https://zenodo.org/api/communities/taxodros/records?q=%22{}%22&l=list&limit=1")

preston head --data-dir "${DATA_DIR}" --algo md5\
 > "${DATA_DIR}/HEAD"

