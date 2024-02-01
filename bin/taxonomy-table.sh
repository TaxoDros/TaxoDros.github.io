#!/bin/bash
#
# print taxodros taxonomic records in 
# tab-separated values format
#
#

set -xe

columns=$(cat <<__EOF__
taxonId
originalGenus
originalSpecificEpithet
accordingTo
family
subfamily
tribe
subtribe
infratribe
genus
subgenus
acceptedName
subspecies
speciescomplex
speciesgroup
speciessubgroup
referenceId
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
 | jq --raw-output "[ ${values} ] | @tsv"\
 | LC_COLLATE=POSIX sort)

