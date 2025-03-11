#!/bin/bash
# 
# tracks zenodo query associated with known, versioned taxodros content
#

SCRIPT_DIR=$(dirname $0)
DATA_DIR="${SCRIPT_DIR}/../zenodo"
VERSION=$(cat "${DATA_DIR}/HEAD")

preston cat --data-dir "${DATA_DIR}" ${VERSION}\
 | grep hasVersion\
 | preston cat --data-dir "${DATA_DIR}"\
 | jq '.hits.hits[] | { "authors": (.metadata.creators | map(.name) | join(" | ")), "year": .metadata.publication_date, "title": .metadata.title,  "id": .metadata.alternate_identifiers[0].identifier, "doi": .links.doi}'\
 | mlr --ijsonl --ocsv cat
