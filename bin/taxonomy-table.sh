#!/bin/bash
#
# print taxonomy table derived from SYST.TEXT
#
#  usage:
#	taxonomy-table.sh > taxonomy.tsv
#

bin_dir=$(dirname $0)



print_header() {
  tr '\r' '\n'\
   | head -n1\
   | tr '\t' '\n'\
   | grep -oE "[.][A-Z]{2}"\
   | tr '\n' '\t'\
   | sed 's/$/\n/g'
}

print_data() {
  tr '\r' '\n'\
    | sed -E 's/[.][A-Z]{2}=[ .]*//g'
}

src="${bin_dir}/../SYST.TEXT"

cat <(cat "${src}" | print_header)\
  <(cat "${src}" | print_data)
