#!/bin/bash
#
# Lists references from DROS3.TEXT and DROS5.TEXT records
#
# example usage:
#   cat DROS3.TEXT | ./list-references.sh | head 
#
# example produces the first 10 selected references, in order of appearance:
#
#   abd el-halim et al., 2005
#   abdullah et al., 2009
#   aboim, 1945
#   aboim et al., 1949
#   abou, 1978
#   abou, 1979
#   abou et al., 1983
#   aboul-nasr, 1953
#   aboul-nasr, 1954a
#   aboul-nasr, 1954b
#

tr '\r' '\n'\
 | grep --no-group-separator --after 1 "^.TEXT;"\
 | grep -v "^.TEXT;"\
 | sort\
 | uniq

