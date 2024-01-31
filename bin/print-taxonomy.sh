#!/bin/bash
#
# print taxonomy table derived from SYST.TEXT
#

bin_dir=$(dirname $0)

print_header="${bin_dir}/taxonomy-header.sh"
print_data="${bin_dir}/taxonomy-tail.sh"
src="${bin_dir}/../SYST.TEXT"

cat <(cat "${src}" | "${print_header}")\
  <(cat "${src}" | "${print_data}")
