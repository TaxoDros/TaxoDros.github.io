#!/bin/bash
#
# transforms TAXA_LIST to shortname lsid mapping
#
# usage:
#    cat TAXA_LIST | taxa2lsid 
#
#
# example input:
#   abarista                    Cladochaeta              1 abarista Grimaldi and Nguyen, 1999:254                           
#  
# example output: 
#   abarista{tab}urn:lsid:taxodros.uzh.ch:taxon:abarista
#
# 


tr '\r' '\n'\
 | tail -n+3\
 | awk\
 -v FIELDWIDTHS="28 22 5 65"\
 '{print $1 "\t" $2 "\t" $4}'\
 | sed -E 's/[ ]+\t/\t/g'\
 | sed -E 's/[ ]+$//g'\
 | awk -F '\t' '{ print $1 "\turn:lsid:taxodros.uzh.ch:tax:" $1 }'\
 | awk -F '\t' '{ { gsub(" ", "_", $2) } print $1 "\t" $2 }'
