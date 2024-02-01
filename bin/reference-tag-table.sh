#!/bin/bash
#
# translates dros3 json records into tabular form with columns:
#
# referenceId
# tag 
# derivedFrom
# 
#

$(dirname $0)/translate-terms.sh "DROS3"\
 | cat\
 <(echo -e "referenceId\ttag\tderivedFrom")\
 <(grep "taxodros-dros3"\
 | jq --raw-output\
 '{ "referenceId": .["referenceId"], "derivedFrom": .["http://www.w3.org/ns/prov#wasDerivedFrom"], "tag": ([select(.["keywords"]) | .["keywords"]] + [select(.["localities"]) | .["localities"]] | .[][]) } | [.referenceId, .tag, .derivedFrom] | @tsv')

