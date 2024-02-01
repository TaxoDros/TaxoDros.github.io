#!/bin/bash
#
# compiles tabular views on taxodros files
# 

bin=$(dirname $0)

dist="${bin}/../tsv"

mkdir -p "${dist}"


bin/taxonomy-table.sh\
 tee "${dist}/taxonomy.tsv"

bin/reference-table.sh\
 tee "${dist}/references.tsv"

bin/reference-tags-table.sh\
 tee "${dist}/reference-tags.tsv"

bin/localities.sh\
 tee "${dist}/localities.tsv"

bin/keywords.sh\
 tee "${dist}/keywords.tsv 

