#!/bin/bash
#
# print taxonomic table header
#
# usage:
#    cat SYST.TEXT | ./taxonomy-header.sh 
#
#
# example output: 
#   .KF	.FA	.SF	.TR	.ST	.IT	.GE	.SG	.GR	.SR	.SC	.SS	.VN	.FU	.OR	.AU	.CO	
#
# 

tr '\r' '\n'\
 | head -n1\
 | tr '\t' '\n'\
 | grep -oE "[.][A-Z]{2}"\
 | tr '\n' '\t'\
 | sed 's/$/\n/g'
