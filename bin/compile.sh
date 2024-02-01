#!/bin/bash
#
# compiles tabular views on taxodros files
# 

set -xe

bin=$(dirname $0)

dist="${bin}/../tsv"

mkdir -p "${dist}"

collect-and-sample() {
  tee "${dist}/${1}.tsv"\
  | head -n51\
  > "${dist}/${1}-sample.tsv"
}

bin/taxonomy-table.sh\
 | collect-and-sample "taxonomy"

bin/reference-table.sh\
 | collect-and-sample "references"

bin/reference-tag-table.sh\
 | collect-and-sample "reference-tags"

bin/localities.sh\
 | collect-and-sample "localities"

bin/keywords.sh\
 | collect-and-sample "keywords"

