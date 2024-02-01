#!/bin/bash
#
# lists keywords derived from KEYWORDS.TEXT
# in tab-separated values format.
#
# example output: 
#   affil{tab}urn:lsid:taxodros.uzh.ch:keyword:affil{tab}Affiliation
#
# 

source "$(dirname $0)/taxodros-version.sh"

stream_records() {
  taxodros_index_version\
   | grep hasVersion\
   | grep -E "KEYWORDS.TEXT"\
   | preston cat ${PRESTON_OPTS}
}


stream_records\
 | tr '\r' '\n'\
 | awk\
 -v FIELDWIDTHS="24 39"\
 '{print $1 "\t" $2}'\
 | cut -f1\
 | sed -E 's/[ ]+$//g'\
 | awk -F '\t' '{ print $1 "\turn:lsid:taxodros.uzh.ch:keyword:" $1 "\t" $2 }'\
 | awk -F '\t' '{ { gsub(" ", "_", $2) } print $1 "\t" $2 "\t" $3 }'
