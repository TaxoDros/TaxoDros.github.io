#!/bin/bash
#
# Calculate md5/sha256 hashes of files ending with .PDF or .pdf.
#
# 

set -xe

write_hash() {
  hash_type=$1
  find -type f\
   | grep -E "(pdf|PDF)$"\
   | parallel -j1 ${hash_type}sum '{1}'\
   | sed "s/^/echo /g"\
   | sed "s+[ ][.]/+ >'./+g"\
   | sed "s+.pdf$+.pdf.${hash_type}'+g"\
   | sed "s+.PDF$+.PDF.${hash_type}'+g"\
   | bash
}

write_hash md5
write_hash sha256

