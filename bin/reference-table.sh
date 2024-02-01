#!/bin/bash
#
# prints references derived from DROS5.TEXT in tab-separated values 
#
# referenceId
# tag 
# derivedFrom
# 
#

set -xe

columns=$(cat <<__EOF__
referenceId
type
doi
authors
year
title
journal
volume
number
pages
publisher
collection
filename
method
http://www.w3.org/ns/prov#wasDerivedFrom
__EOF__
)

header=$(echo $columns\
 | sed 's/ /\\t/g'\
)

query=$(echo $columns\
 | tr ' ' '\n'\
 | awk '{ print "\"" $1 "\": .[\"" $1 "\"]" }'\
 | tr '\n' ','\
 | sed 's/^/{/g'\
 | sed 's/,$/}/g'\
)

values=$(echo $columns\
 | tr ' ' '\n'\
 | awk '{ print ".[\"" $1 "\"]" }'\
 | tr '\n' ','\
 | sed 's/,$//g'\
)

$(dirname $0)/translate-terms.sh "DROS5"\
 | grep taxodros-dros5\
 | cat\
 <(echo -e "${header}")\
 <(grep "taxodros-dros5"\
 | jq "${query}"\
 | jq --raw-output "[ ${values} ] | @tsv")

