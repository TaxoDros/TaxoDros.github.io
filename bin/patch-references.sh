#!/bin/bash
#
# attempt to patch unresolved references to their suspected pdf filenames 
#

tr '&' '_'\
| sed -f $(dirname $0)/reference2filename.sed

