#!/bin/bash
#
# print taxodros taxonomic records in 
# tab-separated values format
#
#

set -xe

columns=$(cat <<__EOF__
taxonId
acceptedName
accordingTo
family
genus
infratribe
originalGenus
originalSpecificEpithet
referenceId
speciescomplex
speciesgroup
speciessubgroup
subfamily
subgenus
subspecies
subtribe
tribe
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

$(dirname $0)/taxonomy.sh\
 | cat\
 <(echo -e "${header}")\
 <(grep "taxodros-syst"\
 | jq "${query}"\
 | jq --raw-output "[ ${values} ] | @tsv")

