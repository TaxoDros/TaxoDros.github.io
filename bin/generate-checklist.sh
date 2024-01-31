#!/bin/bash
#
# generate (DwC) compatible checklist from SYST.TEXT
#

.KF     “short name“, used in DROS3.TEXT (e.g., atterima)
        So called homonyms are separated by nummers and
        uniquely identified (e.g., attenuata 1).
.VN     dwc:acceptedNameUsage the currently accepted name (taxonomy). (e.g., aterrima)
.FU     dwc:originalNameUsage the original form of the name, with author(s), etc.,. (e.g., atterima Patterson and Wheeler, 1949:218)
.OR     dwc:originalNameUsage the original generic affiliation of the name (e.g., Drosophila)
.AU     dwc:nameAccordingTo the original source to link with DROS5.TEXT (e.g., patterson & wheeler, 1949)

.FA     dwc:family (e.g., Drosophilidae)
.SF     dwc:subfamily (e.g., Drosophilinae)
.TR     dwc:tribe (e.g., Drosophilini)
.ST     dwc:subtribe (e.g., Drosophilina)
.IT     infratribe (e.g., Drosophiliti)
.GE     dwc:genus (e.g., Scaptomyza)
.SG     dwc:subgenus (e.g., Macroscaptomyza)
.GR     species group (e.g., mesophragmatica)
.SR     species subgroup (e.g., mesophragmatica)
.SC     species complex (e.g., altissima)
.SS     dwc:infraspecificEpithet subspecies (e.g., avittata)

