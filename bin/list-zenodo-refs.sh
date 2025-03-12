#!/bin/bash
# 
# tracks zenodo query associated with known, versioned taxodros content
#

SCRIPT_DIR=$(dirname $0)
DATA_DIR="${SCRIPT_DIR}/../zenodo"
export VERSION=$(cat "${DATA_DIR}/HEAD")

preston cat --data-dir "${DATA_DIR}" ${VERSION}\
 | grep hasVersion\
 | preston cat --data-dir "${DATA_DIR}"\
 | jq '.hits.hits[] | select(.metadata.alternate_identifiers[0].identifier != null) | { "authors": (.metadata.creators | map(.name) | join(" | ")), "year": .metadata.publication_date, "title": .metadata.title, "journal": (.metadata.journal.title // ""), "publication_type": (.metadata.resource_type.title // ""), "volume": (.metadata.journal.volume // ""),"issue": (.metadata.journal.issue // ""), "pages": (.metadata.journal.pages // ""), "doi": (.links.doi // ""), "id": .metadata.alternate_identifiers[0].identifier, "contentId": .metadata.alternate_identifiers[1].identifier, "zenodoResponseCorpusId": env.VERSION}'\
 | mlr --ijsonl --ocsv cat
