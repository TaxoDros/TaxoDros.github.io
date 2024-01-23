#!/bin/bash
#
# list pdf filenames in the pdf/ folder.
#

find -type f | grep -Eo "[^/]+[.][Pp][Dd][Ff]$" | sort | uniq
