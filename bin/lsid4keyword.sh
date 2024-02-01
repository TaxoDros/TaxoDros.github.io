#!/bin/bash
#
# transforms KEYWORDS.TEXT to shortname lsid mapping
#
# usage:
#    cat KEYWORDS.TEXT | ./bin/lsid4keyword.sh 
#
#
# example input:
#   affil                    Affiliation                            
#  
# example output: 
#   affil{tab}urn:lsid:taxodros.uzh.ch:keyword:affil
#
# 


tr '\r' '\n'\
 | awk\
 -v FIELDWIDTHS="24 39"\
 '{print $1 "\t" $2}'\
 | cut -f1\
 | sed -E 's/[ ]+$//g'\
 | awk -F '\t' '{ print $1 "\turn:lsid:taxodros.uzh.ch:keyword:" $1 }'\
 | awk -F '\t' '{ { gsub(" ", "_", $2) } print $1 "\t" $2 }'
