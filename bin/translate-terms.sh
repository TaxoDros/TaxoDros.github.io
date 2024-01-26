#!/bin/bash
#
# takes DROS3.TEXT and DROS5.TEXT 
# uses ALLORTE.TEXT, KEYWORDS.TEXT, TAXA_LIST 
# to insert lsids into json representations of DROS3.TEXT DROS5.TEXT

set -xe

TAXODROS_VERSION=hash://md5/d68c923002c43271cee07ba172c67b0b

BIN_DIR=$(dirname $0)
TRANSLATION_TABLE=$(mktemp)

taxodros_index_version() {
  preston history\
   --anchor ${TAXODROS_VERSION}\
   --algo md5\
   | tail -n+2\
   | head -n1\
   | preston cat
}

stream_records() {
  taxodros_index_version\
   | preston taxodros-stream
}

build_translation_table() {
  taxodros_index_version\
   | grep hasVersion\
   | grep ALLORTE.TEXT\
   | preston cat\
   | "${BIN_DIR}/lsid4ort.sh"

  taxodros_index_version\
   | grep hasVersion\
   | grep KEYWORDS.TEXT\
   | preston cat\
   | "${BIN_DIR}/lsid4keyword.sh"
 
  taxodros_index_version\
   | grep hasVersion\
   | grep TAXA_LIST\
   | preston cat\
   | "${BIN_DIR}/lsid4taxon.sh"
}

build_translation_table
