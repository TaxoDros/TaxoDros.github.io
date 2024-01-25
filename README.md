# TaxoDros - The Database on Taxonomy of Drosophilidae

Compiled by:
Gerhard Bächli 
Universität Zürich-Irchel, Institut für Evolutionsbiologie und Umweltforschung, Zürich, Switzerland.
https://orcid.org/0000-0002-8402-176X

## Citation

Bächli, G. (2024) TaxoDros: The Database on Taxonomy of Drosophilidae. 2024/1. Also available from: http://www.taxodros.unih.ch https://www.taxodros.uzh.ch/. https://doi.org/10.5281/zenodo.10565403 hash://sha256/3e41eec4c91598b8a2de96e1d1ed47d271a7560eb6ef350a17bc67cc61255302 hash://md5/d68c923002c43271cee07ba172c67b0b

This repository contains the TaxoDros source data of the provided by Gerhard Bächli via Donat Agosti in January 2024.

## Index Files 

 filename | description (click for details) | signature 
 --- | --- | ---
 [ALLORTE.TEXT](ALLORTE.TEXT) | [location information](#allortetext) | hash://md5/77e26a0a38a282bb551a90e49c09693c
 [ASHBURN.TEXT](ASHBURN.TEXT) | [journal names](#ashburntext) | hash://md5/dfb792282c3df43a4a4d3075b126087f
 [DROS3.TEXT](DROS3.TEXT) | [reference descriptors](#dros3text) | hash://md5/b7c2dc6accc3f41fa7eb4b37784d0dab
 [DROS5.TEXT](DROS5.TEXT) | [reference details](#dros5text) | hash://md5/42be783197504a12172920a7edc7cbfd
 [KEYWORDS.TEXT](KEYWORDS.TEXT) | [descriptors and country names](#keywordstext) | hash://md5/21884e43a0cc0728badd1b259e2f0191
 [README.md](README.md) | this file |
 [SPECIES-LIST_GE_SG](SPECIES-LIST_GE_SG) | [all Drosophilid-epithets (species, infra-specific names, such as "melanogaster")](#species-list_ge_sg), including the respective genus and  subgenus name | hash://md5/21884e43a0cc0728badd1b259e2f0191
 [SPECIES-LIST_GR_SR](SPECIES-LIST_GR_SR) | [(species-)groups and subgroups](#species-list_gr_sr) | hash://md5/0a9ebec3f9e7232de32984968323b0c2
 [SPECIES-LIST_GR_SR_SC](SPECIES-LIST_GR_SR_SC) |  [(species-)group, subgroup and species-complex](#species-list_gr_sr_sc) | hash://md5/f0f08d3680b7c2aedede94af3ae17b52
 [SYST.QE.TEXT](SYST.QE.TEXT) |  [copy of the SYST.TEXT as a mere text-file without header](#systqetext) | hash://md5/f0f08d3680b7c2aedede94af3ae17b52
 [SYST.TEXT](SYST.TEXT) |  [all systematic relationships, including synonymy](#systtext) | hash://md5/0ce19aa18040c8ea36b1a4e9ff29e376
 [TAXA_LIST](TAXA_LIST) | [all taxa (as abbreviation), for species with the currently accepted genus name, and the actual bibliographic reference](#taxalist) | hash://md5/0ce19aa18040c8ea36b1a4e9ff29e376


## PDF Files

TaxoDros keeps a library of associated pdfs. See [pdf](pdf/) for more information.

## Index File Details

Details based on German description provided by Bächli in Juni 2017 with English translations provided by Donat Agosti. 

Der Ordner enthält 10 Files. Mit Ausnahme von SYST.TEXT sind alles Text-Files mit der max. Länge 72; der Font ist fix-length, damit der Inhalt tabellarisch aussehen kann. Zu den einzelnen Files sind folgende Informationen wichtig:

This folder includes 10 files. With the exception of SYST.TEXT all the Text-files are size limited (72 Chars); the font is fix-length so that the content looks (pseudo)tabllaric [he uses something like Courier which makes it easier for him to look at the data in a text editor]. The following information is important to understand the individual files.
 
### History 
Version 20240112: Added DOI to .K in DROS5.TEXT and SYST.QE.TEXT

### ALLORTE.TEXT
Dieses Text-File enthält alle Fundorte, alphabetisch, mit geographischen Koordinaten (- am Ende bedeutet ziemlich genau) und die Schweizer Koordînaten. Anschliessend folgt der (abgekürzte) Ländername. die Abkürzungen sind in KEYWORDS.TEXT (erweitert) erläutert (und online erweitert gebraucht).

This file includes all location in alphabetical order, with geographic coordinates („-„ at the end means rather exact) und die Swiss coordinates [This is used for Swiss Topo maps]. Followed by the abbreviated name of the country. The abbreviations are explained and expanded in KEWWORDS.TEXT, and then in Taxodros online used.
 
### ASHBURN.TEXT
Dieses Text-File enthält die Namen der Zeitschriften:

```
*s = benützte Abkürzung in DROS5.TEXT
*u = formaler Name
```

This text-file includes the names of the journals:

```
*s = used abbreviation in DROS5.TEXT
*u = formal (full?) names
```  

### DROS3.TEXT
Diese Text-File enthält die beschreibenden Fakten je Quelle. Jedes Segment hat die zwei tags .TEXT; und .DESC;. Der tag .TEXT; enthält zuerst die Quelle-Identifikation und kann gefolgt werden von allfälligen Fundorten (=e=...). Der tag .DESC; wird gefolgt von der "short form" des Taxons (immer an erster Stelle) und den Deskriptoren; die Deskriptoren werden in KEYWORDS.TEXT erläutert. Ausser den tags ist allen in Kleinschrift.
 
This text-file incldues the descriptors (keywords) for each source. Each segment has two tags: .TEXT: and .DESC;. The tag .TEXT; includes first the source-identification and may be followed by collecting localities (=e=…). The tag .DESC; is followed by “short form” of the taxon (always in first place) and the descriptors (key workds); the keywords are explaind in KEYWORDS.TEXT. With the exception of the tags, all the reminder are in lower case.

Beispiel (Example):

```
.TEXT;
acurio et al., 2013    	Quelle-Identifikation
=e=san jose beach   	= Fundort collection location
.DESC;
machalilla    	= "short form" siehe File TAXA_LIST abbreviated form, see file TAXA_LIST
descr	= Deskriptor Key words
fig
malex
malin
femex
femin
typemat
typeloc
loc
distr$
ecuador
comp
affil
taxon
phyl
egg
pup
biol
.TEXT;
acurio et al., 2013
.DESC;
atalaia-gr
descr
taxaincl
affil
taxon
phyl
```

In jedem Segment können weitere Taxa ("short forms") vorkommen, für die dieselben Deskriptoren gelten.
Der Deskriptor descr wird auch für Figs und Larvenformen etc. gebraucht, welche als solche separat suchbar sind.

Additional tags („short forms“) can appear in each segment, whereby they have the same keywords. The keyword “descr” is also used for Figs and larval description, etc., which are searchable independently.
 
### DROS5.TEXT
Dieses Text-File enthält die Referenz-Fakten je Quelle. Jedes Segment enthält zuerst die Quelle-Identifikation und folgende tags: .TEXT;, .A , .J, .S, .Z, .K  und .P  in genau dieser Reihenfolge. Die tags .A und .S können Fortsetzungszeilen haben, ohne neue tags. Folgendes ist zu beachten:
 * Es gibt nur ein Segment pro Quelle.
 * Ausser der Quelle-Identifikation und dem pdf-Link werden normale Gross- und Kleinbuchstaben verwendet.
 * Die Quelle-Identifikation in DROS3.TEXT und DROS5.TEXT sind ein-eindeutig.

This text-file includes the bibliographic reference (details) for each source. Each element includes first the source identifier (pdf files name) followed by the tags “.TEXT;, .A , .J, .S, .Z, .K  und .P “ in the exact order. The tags .A and .S may have consecutive lines without new tags. The following has to be considered:
 * There is only one record per reference.
 * With the exceptions of the bibliographic reference identification and PDF file name, the usual capitalization (lowe/upper case) is used.
 * The bibliographic source identification [PDF file name] in DROS3.TEXT and DROS5.TEXT are an exact match.

```
.A author
.J publication year
.S title
.Z journal name [unfortunately not parsed into journal, volume, issue, last page, first page]
.Z. book
.K private comments, such as digital copy available, library numbers, and new also DOIs
.P identifier for the record
 ```
 
Beispiel (Example):
```
.TEXT;
acurio et al., 2013
.A Acurio, A., Rafael, V., Cespedes, D., and Ruiz, A.,
.J 2013
.S Description of a New Spotted Wing Drosophila
(Diptera: Drosophilidae) Species and Its Evolutionary
Relationships Inferred by a Cladistic Analysis of
Morphological Traits.
.Z Ann. ent. Soc. Am., 106:1-11.
.K pdf
.P Acurio et al., 2013
 ```
 
### KEYWORDS.TEXT
Dieses Text-File enthält die Deskriptoren ("keywords") und die Ländernamen.
This text-file includes the descriptors („keywords“) and the country names.
 
### SPECIES-LIST_GE_SG
Dieses Text-File enthält alle Drosophiliden-Epithete zur raschen Ûbersicht, mit den Gattungs-und Untergattungs-Zuweisung.
This text-file includes all Drosophilid-epithets [species, infra-specific names, such as „melanogaster“] for a quick overview, including the respective genus and  subgenus name.
 
### SPECIES-LIST_GR_SR
Dieses Text-File gibt die Zuweisungen je Gruppe und Untergruppe
This text-file provides the link to [species-]groups and subgroups
 
### SPECIES-LIST_GR_SR_SC
Dieses Text-File gibt die Zuweisungen je Gruppe, Untergruppe und Art-Konplex
This text-file provides the link [species-]group, subgroup and species-complex.
 
### SYST.TEXT
Dies ist ein EXCEL-File in Text-Format. Es enthält alle systematischen Beziehungen, auch der Synonyme etc., mit tags zur Sortierung. Auch "verwandte" Familien sind berücksichtigt.
In der ersten Kolonne ist die "short form" (tag .KF=) enhalten; sog. "Homonyme" sind durch Nummern unterschieden und ein-eindeutig identifiziert. Diese "short form" wird in DROS3.TEXT verwendet.

```
Der tag .VN= enthält die aktuell gültige Nomenklatur.
Der tag .FU= enthält das originale Zitat des Taxons.
Der tag .OR= enthält die originale Gattung.
Der tag .AU= enthält die originale Quelle zur Identifikation mit DROS5.TEXT (und DROS3.TEXT).
```

This is a XLS-file in text format. It includes all systematic relationships, including synonymy, etc., with tags for sorting. It includes also “related” families [other families beyond Drosophilidae]
The first colum includes the abbreviated form (tag “.KF=”). So called homonyms are separated by nummers and uniquely identified. These abbreviated forms are used in DROS3.TEXT.

```
The tag .VN=  includes the currently accepted name (nomenclature)
The tag .FU= the original combination of the name
The tag .OR= the original generic name
The tag .AU=  includes the original bibliographic reference to link with DROS5-TEXT (and DROS3.TEXT)
 ```

### SYST.QE.TEXT
Dies ist eine Kopie von SYST.TEXT als reines Text-File, also ohne XLS-Meta-Daten, dies auf Verlangen des Rechenzentrums. Alle Tabs - entsprechend den tags in SYST.TEXT  - sind erhalten.

This is a copy of the SYST.TEXT as a mere text-file without the XLS-Meta-Data (header) on request of the informatics department [hosting the taxodors DB at UNIZurich]. All tabs are retained, according to the tax in SYST.TEXT.

### TAXA_LIST
Dieses Text-File enthält alle Taxa (als "short form"), für Arten mit der aktuellen Gattung, und dem aktuellen Zitat.

This text-file includs all taxa (as abbreviation), for species with the currently accepted genus name, and the actual bibliographic reference.
 
### TAXODROS
TAXODROS (online) kann gebraucht werden zur Suche mit Deskriptoren oder zur taxonomischen Übersicht oder zur Verbreitung oder zur verwendeten Literatur.

TAXODROS (online) can be used to search with key words  or the taxonomic overview or the distribution or the respective references.


## References 

### Elliott2020 
Elliott M.J., Poelen J.H., Fortes J.A.B. (2020). Toward Reliable Biodiversity Dataset References. *Ecological Informatics*. https://doi.org/10.1016/j.ecoinf.2020.101132 [hash://sha256/136c3c1808bcf463bb04b11622bb2e7b5fba28f5be1fc258c5ea55b3b84f482c](https://linker.bio/hash://sha256/136c3c1808bcf463bb04b11622bb2e7b5fba28f5be1fc258c5ea55b3b84f482c) 

### Elliott2023
Elliott M.J., Poelen, J.H. & Fortes, J.A.B. (2023) Signing data citations enables data verification and citation persistence. *Sci Data*. https://doi.org/10.1038/s41597-023-02230-y [hash://sha256/f849c870565f608899f183ca261365dce9c9f1c5441b1c779e0db49df9c2a19d](https://linker.bio/hash://sha256/f849c870565f608899f183ca261365dce9c9f1c5441b1c779e0db49df9c2a19d) 

 
## Provenance 

This section details the provenance of the TaxoDros index files and associated pdf files. 

### for humans

The TaxoDros index files and associated pdfs where provided by Gerhard Bächlin January 2024. Following, the index files and associated pdf files were packaged, signed, and versioned using Preston ([Elliott et al. 2020](#elliott2020), [Elliott et al. 2023](#elliott2023)).

## for machines

The information below is intended for machines to increase the machine readability of this publication. 

```preston head``` produced the provenance anchor of this version:

```
hash://sha256/3e41eec4c91598b8a2de96e1d1ed47d271a7560eb6ef350a17bc67cc61255302
```

```
preston\
 history\
 --anchor hash://sha256/3e41eec4c91598b8a2de96e1d1ed47d271a7560eb6ef350a17bc67cc61255302\
 --remote https://linker.bio,https://softwareheritage.org
```

yields 

```
<hash://sha256/3e41eec4c91598b8a2de96e1d1ed47d271a7560eb6ef350a17bc67cc61255302> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/ee72b70df451082289193cdd8ff420495b3a24d230880613f9adddc71380fee6> .
<urn:uuid:0659a54f-b713-4f86-a917-5be166a14110> <http://purl.org/pav/hasVersion> <hash://sha256/ee72b70df451082289193cdd8ff420495b3a24d230880613f9adddc71380fee6> .
```

Similarly, in md5 hash space:

```preston head --algo md5``` yielded:

```
hash://md5/d68c923002c43271cee07ba172c67b0b
```

with

```
preston\
 history\
 --anchor hash://md5/d68c923002c43271cee07ba172c67b0b\
 --remote https://linker.bio,https://zenodo.org\
 --algo md5
```

produced:

```
<hash://md5/d68c923002c43271cee07ba172c67b0b> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://md5/1037a9c831005710dc9bf14ee9a2e053> .
<urn:uuid:0659a54f-b713-4f86-a917-5be166a14110> <http://purl.org/pav/hasVersion> <hash://md5/1037a9c831005710dc9bf14ee9a2e053> .
```
