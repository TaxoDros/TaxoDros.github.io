#!/bin/bash
#
# Packaging script for TaxoDros using Preston (Elliott et al. 2020, Elliott et al. 2023, see also https://github.com/bio-guoda/preston) .
#
#  usage: 
#	bin/make.sh [hash type]
#
#  for instance:
#	bin/make.sh md5
#  or:
#       bin/make.sh sha256
#
# Assumes a recent copy of TaxoDros index files and associated pdfs at /var/cache/taxodros . For file structure, also see https://github.com/taxodros/taxodros.github.io .
#
### References
#
# Elliott M.J., Poelen J.H., Fortes J.A.B. (2020). Toward Reliable Biodiversity Dataset References. Ecological Informatics. https://doi.org/10.1016/j.ecoinf.2020.101132 https://linker.bio/hash://sha256/136c3c1808bcf463bb04b11622bb2e7b5fba28f5be1fc258c5ea55b3b84f482c
#
# Elliott M.J., Poelen, J.H. & Fortes, J.A.B. (2023) Signing data citations enables data verification and citation persistence. Sci Data. https://doi.org/10.1038/s41597-023-02230-y https://linker.bio/hash://sha256/f849c870565f608899f183ca261365dce9c9f1c5441b1c779e0db49df9c2a19d

set -xe

track_pdfs() {
  local hashtype=${1}

  find /var/cache/taxodros/pdf -type f\
   | grep -vE "[^/]+[.](md5|sha256)$"\
   | sed 's+^+file://+g'\
   | sed 's+[ ]+%20+g'\
   | sed 's+[,]+%2C+g'\
   | sed 's+[#]+%23+g'\
   | sort\
   | uniq\
   | xargs -L64 preston track --algo ${hashtype}
}

track_index() { 
  local hashtype=${1}
  
  ls -1 /var/cache/taxodros/\
   | grep -E "[A-Z]+"\
   | sed 's+^+file:///var/cache/taxodros/+g'\
   | sort\
   | uniq\
   | xargs preston track --algo ${hashtype}
}

package() {
  local hashtype=${1}
  track_index ${hashtype}
  #track_pdfs ${hashtype}
}

package ${1}
