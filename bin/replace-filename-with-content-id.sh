#!/bin/bash
#
#  create translation table for url encoded filenames to their associated hashes
#
#    

grep hasVersion\
 | tr ' ' '\t'\
 | cut -f1,3\
 | tr -d '<'\
 | tr -d '>'\
 | sed -E 's|^.*pdf/[A-Z]/|urn:lsid:taxodros.uzh.ch:filename:|g'\
 | sed 's/,/%2C/g'\
 | sed 's/?/%3F/g'\
 | sed 's/&/%26/g'\
 | grep -v ^file://

