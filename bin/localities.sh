#!/bin/bash
#
# transforms ALLORTE.TEXT into lsid mapping
#
# usage:
#    cat ALLORTE.TEXT | ./lsid4orte.sh 
#
#
# example input:
#   a-lama/es                             -4.40  42.25              es               
#  
# example output: 
#   a-lama/es{tab}urn:lsid:taxodros.uzh.ch:locality:a-lama/es
#
# 

source "$(dirname $0)/taxodros-version.sh"

stream_records() {
  taxodros_index_version\
   | grep hasVersion\
   | grep -E "ALLORTE[.]TEXT"\
   | preston cat ${PRESTON_OPTS}
}

cat <(echo -e "localityCode\tlocalityId\tdecimalLongitude\tdecimalLatitude\tcountry")\
 <(stream_records\
 | tr '\r' '\n'\
 | awk\
 -v FIELDWIDTHS="36 8 8 12 16" '{print $1 "\t" $2 "\t" $3 "\t" $5}'\
 | sed -E 's/[ ]+$//g'\
 | sed -E 's/^[ ]+//g'\
 | sed -E 's/\t[ ]+/\t/g'\
 | sed -E 's/[ ]+\t/\t/g'\
 | sed -E 's/-\t/\t/g'\
 | awk -F '\t' '{ print $1 "\t" "urn:lsid:taxodros.uzh.ch:locality:" $1 "\t" $2 "\t" $3 "\t" $4 }'\
 | awk -F '\t' '{ { gsub(" ", "_", $2) } print $1 "\t" $2 "\t" $3 "\t" $4 "\t" $5 }'\
)
