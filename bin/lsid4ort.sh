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


tr '\r' '\n'\
 | awk\
 -v FIELDWIDTHS="36 8 8 65"\
 '{print $1 "\t" $2 "\t" $4}'\
 | cut -f1\
 | sed -E 's/[ ]+$//g'\
 | awk -F '\t' '{ print $1 "\turn:lsid:taxodros.uzh.ch:locality:" $1 }'\
 | awk -F '\t' '{ { gsub(" ", "_", $2) } print $1 "\t" $2 }'
