#!/bin/bash
# 
# tracks zenodo query associated with known, versioned taxodros content
#

SCRIPT_DIR=$(dirname $0)
DATA_DIR="${SCRIPT_DIR}/../zenodo"
TAXODROS_MD5_PDF_VERSION=hash://md5/c6ca8257965cccb206b90b022a9446e8

preston track --data-dir "${DATA_DIR}"\
 --algo md5\
 -f <(preston cat --data-dir "${SCRIPT_DIR}/../data" ${TAXODROS_MD5_PDF_VERSION}\
 | grep -oE "hash://md5/[a-f0-9]{32}"\
 | xargs -I{} echo "https://zenodo.org/api/communities/taxodros/records?q=%22{}%22&l=list&limit=1")

preston head --data-dir "${DATA_DIR}" --algo md5\
 > "${DATA_DIR}/HEAD"

