#!/bin/bash
#
# Prepares a dist/ folder with a Zenodo compatible file list. 
#
#

dist=dist/$(date --iso-8601)

mkdir -p "${dist}" 

copy-content-based() {
  find data/ -type f\
   | awk '{print $1 "\t" $1}'\
   | sed -E 's/([^\t]+)([a-f0-9]{32,64})$/\2/g'\
   | parallel --colsep '\t' cp {1} ${dist}/{2} 
}

copy-name-based() {
  ls -1\
   | grep -E "[A-Z]+"\
   | parallel cp {1} ${dist}/{1}
}

copy-content-based
copy-name-based

echo created distribution at ${dist}
