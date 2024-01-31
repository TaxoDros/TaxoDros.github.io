#!/bin/bash
#
# print taxonomic data in tab-separated values
#
# usage:
#    cat SYST.TEXT | ./taxonomy-tail.sh 
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
 | sed -E 's/[.][A-Z]{2}=[ .]*//g'
