#!/bin/bash
#
# Lists references from DROS3.TEXT and DROS5.TEXT records
#
# example usage:
#   cat DROS5.TEXT | bin/list-references.sh | head 
#
# example produces the first 10 selected references, in order of appearance:
#i
#/
#?
# Abd El-Halim et al., 2005M.pdf
# Abdullah et al., 2009.pdf
# Aboim, 1945.pdf
# Aboim et al., 1949.pdf
# Abou, 1978.pdf
# Abou, 1979.pdf
# Abou et al., 1983.pdf
# Aboul-Nasr, 1953.pdf

tr '\r' '\n'\
 | grep -E "^[.]P.*"\
 | sed 's/[.]P[ ]//g'\
 | sort\
 | uniq
