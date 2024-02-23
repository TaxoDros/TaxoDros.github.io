#!/bin/bash
#
# Articles in Biodiversity Literature Repository with DOI related to taxonomic families:
#
# Drosophilidae Asteiidae Aulacigastridae Camillidae Cryptochaetidae Curtonotidae Diastatidae Periscelididae Xenasteiidae Chloropidae Neurochaetidae Heleomyzidae Tunisimyidae
# 
# Query provided by Donat Agosti on 2024-02-22 via https://github.com/TaxoDros/TaxoDros.github.io/issues/17 .
#
#
# https://tb.plazi.org/GgServer/srsStats/stats?outputFields=doc.articleUuid+bib.year+bib.source+pubLnk.articleDoi+pubLnk.articleZenodoDepId+tax.familyEpithet&groupingFields=bib.year+bib.source+pubLnk.articleDoi+pubLnk.articleZenodoDepId+tax.familyEpithet&FP-pubLnk.articleDoi=1-&FP-pubLnk.articleZenodoDepId=1-&FP-tax.familyEpithet=Drosophilidae%20Asteiidae%20Aulacigastridae%20Camillidae%20Cryptochaetidae%20Curtonotidae%20Diastatidae%20Periscelididae%20Xenasteiidae%20Chloropidae%20Neurochaetidae%20Heleomyzidae%20Tunisimyidae&format=HTML
#
#

curl "https://tb.plazi.org/GgServer/srsStats/stats?outputFields=doc.articleUuid+bib.year+bib.source+pubLnk.articleDoi+pubLnk.articleZenodoDepId+tax.familyEpithet&groupingFields=bib.year+bib.source+pubLnk.articleDoi+pubLnk.articleZenodoDepId+tax.familyEpithet&FP-pubLnk.articleDoi=1-&FP-pubLnk.articleZenodoDepId=1-&FP-tax.familyEpithet=Drosophilidae%20Asteiidae%20Aulacigastridae%20Camillidae%20Cryptochaetidae%20Curtonotidae%20Diastatidae%20Periscelididae%20Xenasteiidae%20Chloropidae%20Neurochaetidae%20Heleomyzidae%20Tunisimyidae&format=CSV&separator=%2C"
