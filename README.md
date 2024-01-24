# TaxoDros - The Database on Taxonomy of Drosophilidae

Compiled by:
Gerhard Bächli 
Universität Zürich-Irchel, Institut für Evolutionsbiologie und Umweltforschung, Zürich, Switzerland.
https://orcid.org/0000-0002-8402-176X

## Citation

Bächli, G. (2024) TaxoDros: The Database on Taxonomy of Drosophilidae. 2024/1. Also available from: http://www.taxodros.unih.ch (accessed January 2024). hash://sha256/0656a11049593ab4d0007a8ee5869a56ae71ca83ab688b24dc3df9bc618e22b2 hash://md5/49c68b71c6b2526409fcc84c4637a869

:warning: this is a work in progress 

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

Beispiel:

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
[.A author
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

```hash://sha256/0656a11049593ab4d0007a8ee5869a56ae71ca83ab688b24dc3df9bc618e22b2```

```
preston\
 --anchor hash://sha256/0656a11049593ab4d0007a8ee5869a56ae71ca83ab688b24dc3df9bc618e22b2\
 --remote https://linker.bio,https://softwareheritage.org\
 history
```

yields 

```
<hash://sha256/0656a11049593ab4d0007a8ee5869a56ae71ca83ab688b24dc3df9bc618e22b2> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/c291f9c5a28215a987da48bdb4cb6815aa1ecc8405bf5b4af78abd5e79d44cd7> .
<hash://sha256/c291f9c5a28215a987da48bdb4cb6815aa1ecc8405bf5b4af78abd5e79d44cd7> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/c331b362e44e34536b70eee12770e46ab4e4cfbc84c1e3b048728a0c67831715> .
<hash://sha256/c331b362e44e34536b70eee12770e46ab4e4cfbc84c1e3b048728a0c67831715> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/d5cf95e8ac38d12ac28e66c14106d325b1299fa3229c6aa7655ccc55f2f198b3> .
<hash://sha256/d5cf95e8ac38d12ac28e66c14106d325b1299fa3229c6aa7655ccc55f2f198b3> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/8512ee300a42614dadc06d1bbdf5cf2bb2e1923443afcaae72dc923e6c41817e> .
<hash://sha256/8512ee300a42614dadc06d1bbdf5cf2bb2e1923443afcaae72dc923e6c41817e> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/4fecc90000d886bbff5bf0dc2146ced7d08c3101a7cc4d2da8cec78845f9870b> .
<hash://sha256/4fecc90000d886bbff5bf0dc2146ced7d08c3101a7cc4d2da8cec78845f9870b> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/d120869b3c4966ef5ae4b05143b9d34ad8402e054a1fd5f4e3a431ee549ab92f> .
<hash://sha256/d120869b3c4966ef5ae4b05143b9d34ad8402e054a1fd5f4e3a431ee549ab92f> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/5e73fbd411b256aec704ae6afe502f0048a02a62d06c08b4fda06a2094647002> .
<hash://sha256/5e73fbd411b256aec704ae6afe502f0048a02a62d06c08b4fda06a2094647002> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/f656dd8227810d1d4c02301074020c2244127a2c1daa9f3b7872af907c5f386e> .
<hash://sha256/f656dd8227810d1d4c02301074020c2244127a2c1daa9f3b7872af907c5f386e> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/b072e75b9e8472e8b8d5a894a4f1b63ad42440bb16fbb52e270b7f5912bea615> .
<hash://sha256/b072e75b9e8472e8b8d5a894a4f1b63ad42440bb16fbb52e270b7f5912bea615> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/5d196deb24c6961b4c7f7c9a623758c0ebf19f9accfcafc7122d92c87f68aba5> .
<hash://sha256/5d196deb24c6961b4c7f7c9a623758c0ebf19f9accfcafc7122d92c87f68aba5> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/21faf6124df764ee0ded84ba3dbffc82dfa891c9904d3db1365c25dd33a3fa14> .
<hash://sha256/21faf6124df764ee0ded84ba3dbffc82dfa891c9904d3db1365c25dd33a3fa14> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/addc94485c1e304c19673be6fabade65c7db9caca79a13fef3fe13b371447dbe> .
<hash://sha256/addc94485c1e304c19673be6fabade65c7db9caca79a13fef3fe13b371447dbe> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/94b2d7754d793c0ec92e7812e7b1b009964481640a47b0e065f6da282d302a2e> .
<hash://sha256/94b2d7754d793c0ec92e7812e7b1b009964481640a47b0e065f6da282d302a2e> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/caea9edf2d01d79aeec40f7d27415684ada98809415dd4c14be56e7db990749d> .
<hash://sha256/caea9edf2d01d79aeec40f7d27415684ada98809415dd4c14be56e7db990749d> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/816cf0d5183afc74a7b10043a6ca77b03166dae5b2281c1d46298d042a2ab04d> .
<hash://sha256/816cf0d5183afc74a7b10043a6ca77b03166dae5b2281c1d46298d042a2ab04d> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/3ac70e11c7a2662a6dac4a56cd890bb9123211f7b1efdff64ee294c696d0d433> .
<hash://sha256/3ac70e11c7a2662a6dac4a56cd890bb9123211f7b1efdff64ee294c696d0d433> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/d000b8ed6facada80fa5dc97747333a707d015e1ffccf0ea5d370f9f70fc50f3> .
<hash://sha256/d000b8ed6facada80fa5dc97747333a707d015e1ffccf0ea5d370f9f70fc50f3> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/b41a5851b598f093e023e2975e828fb32d7698815d2c90b151406935c9a3a576> .
<hash://sha256/b41a5851b598f093e023e2975e828fb32d7698815d2c90b151406935c9a3a576> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/f5a13ae30128de2ad95d9822e148f2e61393b24cd2a0030e1efcf387200ce644> .
<hash://sha256/f5a13ae30128de2ad95d9822e148f2e61393b24cd2a0030e1efcf387200ce644> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/b1603cfa5e856b222a04b745f096470a4278abeeb49b96172ee44d89b46497a0> .
<hash://sha256/b1603cfa5e856b222a04b745f096470a4278abeeb49b96172ee44d89b46497a0> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/e638b8201034c7f22aba773180551fc30ae23b7a273e4716dd1427a35fb5efbf> .
<hash://sha256/e638b8201034c7f22aba773180551fc30ae23b7a273e4716dd1427a35fb5efbf> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/ec4a657348876e6a6e13ddb14a402a4965465d68726dda507faf35002b4a69af> .
<hash://sha256/ec4a657348876e6a6e13ddb14a402a4965465d68726dda507faf35002b4a69af> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/7d07b7c64bca2d33e8711fa9c9984090caaa7d067c29e84594a41ce294743984> .
<hash://sha256/7d07b7c64bca2d33e8711fa9c9984090caaa7d067c29e84594a41ce294743984> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/f015bfec8897be40a5482784016c753bb6e83995f1b7078da7a38eabc3c09fa0> .
<hash://sha256/f015bfec8897be40a5482784016c753bb6e83995f1b7078da7a38eabc3c09fa0> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/6c72d91b994046d0e35f79eaa0d5e53373887365946b40ea5fa3c01b93164acd> .
<hash://sha256/6c72d91b994046d0e35f79eaa0d5e53373887365946b40ea5fa3c01b93164acd> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/af9f840afbf2b4b8a92b54242e51a56570b8fbc0d774cab3f51499348216c1e8> .
<hash://sha256/af9f840afbf2b4b8a92b54242e51a56570b8fbc0d774cab3f51499348216c1e8> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/db11dbb5e576af20e40ce073b3a0b837ab65603561477618317e91d3bf445197> .
<hash://sha256/db11dbb5e576af20e40ce073b3a0b837ab65603561477618317e91d3bf445197> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/26048577f7f091a445489d1b4711116b3df99ec9920dec54468874165f1103c8> .
<hash://sha256/26048577f7f091a445489d1b4711116b3df99ec9920dec54468874165f1103c8> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/e63ea47641c64d57131c77ba80f8a68a877c204b3f6aff09ae2fbbcbe80f47ac> .
<hash://sha256/e63ea47641c64d57131c77ba80f8a68a877c204b3f6aff09ae2fbbcbe80f47ac> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/7b5b586989fd3b9252f0e7075db767a7aeedfc63a703072ecfe09e8ff14fcd8f> .
<hash://sha256/7b5b586989fd3b9252f0e7075db767a7aeedfc63a703072ecfe09e8ff14fcd8f> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/77d002b36bdfabfd037638b53f986a17dddb07c8008bc819005ad742f5926383> .
<hash://sha256/77d002b36bdfabfd037638b53f986a17dddb07c8008bc819005ad742f5926383> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/19329103ba637a1e803df381fd2239ffe55620bfe59ee08db04c0739b6d97826> .
<hash://sha256/19329103ba637a1e803df381fd2239ffe55620bfe59ee08db04c0739b6d97826> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/1ffd3d9a3e97401e7b6afdcc84b561e8882f39a64ea7110e1228fedf33dab2e0> .
<hash://sha256/1ffd3d9a3e97401e7b6afdcc84b561e8882f39a64ea7110e1228fedf33dab2e0> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/183cde12dd58a28a0fd8d780cb0b3dc8b03e466146c3863ee7925c791a2e2914> .
<hash://sha256/183cde12dd58a28a0fd8d780cb0b3dc8b03e466146c3863ee7925c791a2e2914> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/5dced29614e528ba66b055ddaf6193bc8d27329f4b2f8e820e2d5771efefccba> .
<hash://sha256/5dced29614e528ba66b055ddaf6193bc8d27329f4b2f8e820e2d5771efefccba> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/3d7f5d58c7e00d582043ba8e1ce01714e52ce7a58bf557d4d70a895e06d30e52> .
<hash://sha256/3d7f5d58c7e00d582043ba8e1ce01714e52ce7a58bf557d4d70a895e06d30e52> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/c2599af2f5548c74e59b91f74a37c7898f6a6ffb1aa57d7dd22340ef02f78365> .
<hash://sha256/c2599af2f5548c74e59b91f74a37c7898f6a6ffb1aa57d7dd22340ef02f78365> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/1fcc6179662b4f39f016ceedaa9463f66d289f3526e2a56bbfe97aa14cb870e2> .
<hash://sha256/1fcc6179662b4f39f016ceedaa9463f66d289f3526e2a56bbfe97aa14cb870e2> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/de2958b6aca4eb3d338dc3d742f0b443ebee207acbe4d7854e0236f31f98f075> .
<hash://sha256/de2958b6aca4eb3d338dc3d742f0b443ebee207acbe4d7854e0236f31f98f075> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/8b50a1413acd13604fc1913a036479b3f1b6a08924596d158a6a98d810557f06> .
<hash://sha256/8b50a1413acd13604fc1913a036479b3f1b6a08924596d158a6a98d810557f06> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/3beda296c6d15fed464af8fce1be1cd037616128e7c753f83aab11a5fb89be3d> .
<hash://sha256/3beda296c6d15fed464af8fce1be1cd037616128e7c753f83aab11a5fb89be3d> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/d1adbf480af541b0a59b69a965c1b0da4c940f1c69bcfd8c086c83d184cd7b7e> .
<hash://sha256/d1adbf480af541b0a59b69a965c1b0da4c940f1c69bcfd8c086c83d184cd7b7e> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/2244795351de8b0d64463fdd2d007d450fd0d8732db8ae88cc00a5be7ca90820> .
<hash://sha256/2244795351de8b0d64463fdd2d007d450fd0d8732db8ae88cc00a5be7ca90820> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/42722e86199f901b39b39b336788bcd8bf86516b3e3f6c3a149d35d1cf6b38fb> .
<hash://sha256/42722e86199f901b39b39b336788bcd8bf86516b3e3f6c3a149d35d1cf6b38fb> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/b096da5c234e11dfb76be3f862f58c51589189d5b933ffa9f7eb36eb371b864e> .
<hash://sha256/b096da5c234e11dfb76be3f862f58c51589189d5b933ffa9f7eb36eb371b864e> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/27418a990c3c2d5af9fd863b4655aebb6ea193f22a76ebc28f09ab1befc72dfe> .
<hash://sha256/27418a990c3c2d5af9fd863b4655aebb6ea193f22a76ebc28f09ab1befc72dfe> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/08da40d8c051fea36dda689012c425bfb88529920a5a5c1d50fc20a690cf36f4> .
<hash://sha256/08da40d8c051fea36dda689012c425bfb88529920a5a5c1d50fc20a690cf36f4> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/81168825949ccb31e6ccb5079066d154ca41977e16b0cd30428be24a6ebd0d00> .
<hash://sha256/81168825949ccb31e6ccb5079066d154ca41977e16b0cd30428be24a6ebd0d00> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/45c0ea5cc6a587ed4ebbd66639cf84c181286e6ff4534273dd13df103917d39a> .
<hash://sha256/45c0ea5cc6a587ed4ebbd66639cf84c181286e6ff4534273dd13df103917d39a> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/df6bbcf9edeed6a266f4e7d216cbf4af7a113fe017b1b4d859027a13391fe966> .
<hash://sha256/df6bbcf9edeed6a266f4e7d216cbf4af7a113fe017b1b4d859027a13391fe966> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/2f6011ff25a2486f6b35537071f0848d510b25f8d526e17ca9c42b37c17a9255> .
<hash://sha256/2f6011ff25a2486f6b35537071f0848d510b25f8d526e17ca9c42b37c17a9255> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/23720f4e102a38da381b724d515a227ffc2f8cf0625c768346a87582e1cf62ee> .
<hash://sha256/23720f4e102a38da381b724d515a227ffc2f8cf0625c768346a87582e1cf62ee> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/31f053da8a5e4d40aa2d573f68e7f486a64487fe901839be8c090b919cf5cde7> .
<hash://sha256/31f053da8a5e4d40aa2d573f68e7f486a64487fe901839be8c090b919cf5cde7> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/7d7d9d074111efd05e0830a6b5ef0076a80a7e6fc9ab526f208a465f64b992fd> .
<hash://sha256/7d7d9d074111efd05e0830a6b5ef0076a80a7e6fc9ab526f208a465f64b992fd> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/ca422a95b7ff8a22b23851b3dfe3e32e94e85e44af79ceb1c46047645fedc4d6> .
<hash://sha256/ca422a95b7ff8a22b23851b3dfe3e32e94e85e44af79ceb1c46047645fedc4d6> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/35da9ead961844ded38c8f516d7d5f19988ee4ea562a892fa346ae2fc9da34ee> .
<hash://sha256/35da9ead961844ded38c8f516d7d5f19988ee4ea562a892fa346ae2fc9da34ee> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/36ac1af163d61bf36506884777003265ce9d61be60bc1aea8b33de8e35ee3233> .
<hash://sha256/36ac1af163d61bf36506884777003265ce9d61be60bc1aea8b33de8e35ee3233> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/b85796cbbb26090f0a0e5c7b74b66c8a75c8b5446971dd0080b95e16e1d096e0> .
<hash://sha256/b85796cbbb26090f0a0e5c7b74b66c8a75c8b5446971dd0080b95e16e1d096e0> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/bb83411d3163c299dce5bf043277fe5dbd37ab3f38b568e61a448e0fa0a2dceb> .
<hash://sha256/bb83411d3163c299dce5bf043277fe5dbd37ab3f38b568e61a448e0fa0a2dceb> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/531af9f4e1a04fa747a40ded654cff6218816d59e993bc5a1ab4e4dc7a29957f> .
<hash://sha256/531af9f4e1a04fa747a40ded654cff6218816d59e993bc5a1ab4e4dc7a29957f> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/e596c4698c3afe9767e7a10d7127416643542840aaf5160de23a0db9f4c7f58c> .
<hash://sha256/e596c4698c3afe9767e7a10d7127416643542840aaf5160de23a0db9f4c7f58c> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/b90d87db9788b18a31625e48b013eb821710ce4aa82270157b2cbeda6a6b6a59> .
<hash://sha256/b90d87db9788b18a31625e48b013eb821710ce4aa82270157b2cbeda6a6b6a59> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/e3366878a0083dc1de2c6a342402a693a0c1f7a0d41ae97959fe015405d615a4> .
<hash://sha256/e3366878a0083dc1de2c6a342402a693a0c1f7a0d41ae97959fe015405d615a4> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/88229b1828d226305e7c96eaeef372ac0d150bcbef9cb941821c00793e87b351> .
<hash://sha256/88229b1828d226305e7c96eaeef372ac0d150bcbef9cb941821c00793e87b351> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/2a19675495d6b2b44401c5fc926d7b3a8fde2365d332a29cf68a3bc8a5f882c8> .
<hash://sha256/2a19675495d6b2b44401c5fc926d7b3a8fde2365d332a29cf68a3bc8a5f882c8> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/db74d2eea6bc6418a0a071e34c03c7297ee82c2ab5f22f082d72cf7014abe977> .
<hash://sha256/db74d2eea6bc6418a0a071e34c03c7297ee82c2ab5f22f082d72cf7014abe977> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/35772d84458dc68c4e905c63040d1350c6c59314da95f216ba4cb8a27e153a30> .
<hash://sha256/35772d84458dc68c4e905c63040d1350c6c59314da95f216ba4cb8a27e153a30> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/c89f0df65f8c49893154e580822664bbb3ca3b966c7fd758462860a918e9d4b1> .
<hash://sha256/c89f0df65f8c49893154e580822664bbb3ca3b966c7fd758462860a918e9d4b1> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/0a00a25299372a387a60b5f626be825f9fc100388a602e4a354d5a9d4bfc44c0> .
<hash://sha256/0a00a25299372a387a60b5f626be825f9fc100388a602e4a354d5a9d4bfc44c0> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/7570bf60f492641b268bd46b32220e5f39e92269d4d7a294bfb322dc4e0b4dfe> .
<hash://sha256/7570bf60f492641b268bd46b32220e5f39e92269d4d7a294bfb322dc4e0b4dfe> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/b431656c4ec02a575548afe27283bce73afbc774da8b84f80e105adb9bf1b5d5> .
<hash://sha256/b431656c4ec02a575548afe27283bce73afbc774da8b84f80e105adb9bf1b5d5> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/ec0aeb3835ed1809311fed034cb089302f249d177114f2e5821f0f186b38ffbf> .
<hash://sha256/ec0aeb3835ed1809311fed034cb089302f249d177114f2e5821f0f186b38ffbf> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/2083496ce9934fe3ebf4e5787cce1f9bd7d8241ca71f4f79c7830c5ae1124d93> .
<hash://sha256/2083496ce9934fe3ebf4e5787cce1f9bd7d8241ca71f4f79c7830c5ae1124d93> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/2d7b6025492032e0aaf6239fea6330a6a166f94dbf8fa3e112e99e950220719f> .
<hash://sha256/2d7b6025492032e0aaf6239fea6330a6a166f94dbf8fa3e112e99e950220719f> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/6ac228c3b5d541b080af659b2d0cb68305f84f940eeba2d63e001d60d9b7e320> .
<hash://sha256/6ac228c3b5d541b080af659b2d0cb68305f84f940eeba2d63e001d60d9b7e320> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/4f3a0a71d26becb2d52963cccba0647551bb1156d0e0314e3300507425c278c9> .
<hash://sha256/4f3a0a71d26becb2d52963cccba0647551bb1156d0e0314e3300507425c278c9> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/6608ce96fa8e25347be32e7255d8363685280112f4f0ccf88467ed90c9d2a5d9> .
<hash://sha256/6608ce96fa8e25347be32e7255d8363685280112f4f0ccf88467ed90c9d2a5d9> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/38122bd3fffc814cb1a689f5c61a261428b5d39e8a8c6a7477c59f803057787c> .
<hash://sha256/38122bd3fffc814cb1a689f5c61a261428b5d39e8a8c6a7477c59f803057787c> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/4405c89f9ca58a9eacd231f6111ea5e18948c1799c1cce6f9b07e841ba2d85e4> .
<hash://sha256/4405c89f9ca58a9eacd231f6111ea5e18948c1799c1cce6f9b07e841ba2d85e4> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/82a4ea1153862b811149e4aa9f40b25547ad5d2eda1190fbb72c7274f8f16ff7> .
<hash://sha256/82a4ea1153862b811149e4aa9f40b25547ad5d2eda1190fbb72c7274f8f16ff7> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/d9d09aad7290e783539286bc9f7b5f6ccd86f9a79aca18a00895bc1113145e5b> .
<hash://sha256/d9d09aad7290e783539286bc9f7b5f6ccd86f9a79aca18a00895bc1113145e5b> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/6c7971c7c4ef2d155735f73772e3479c45f66172d8667026487c6e43b1495054> .
<hash://sha256/6c7971c7c4ef2d155735f73772e3479c45f66172d8667026487c6e43b1495054> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/c5fe300e188b905c75f92c3a1585bc0ebc5b4ed9c820fa07309fb17034b5bd24> .
<hash://sha256/c5fe300e188b905c75f92c3a1585bc0ebc5b4ed9c820fa07309fb17034b5bd24> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/7f18d1bc88fe74ce50f6039043752d9d5481d0c0ceffb3abdb9e8d3ebb6a7f59> .
<hash://sha256/7f18d1bc88fe74ce50f6039043752d9d5481d0c0ceffb3abdb9e8d3ebb6a7f59> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/f73cf042ef6e4ba540bbc88b8d1555307d9fa6aec84a95242c633788adce3d86> .
<hash://sha256/f73cf042ef6e4ba540bbc88b8d1555307d9fa6aec84a95242c633788adce3d86> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/2d46ef860dccf6662a6bb4bd07614b2a91fb220ec62669a9f164517d69bea879> .
<hash://sha256/2d46ef860dccf6662a6bb4bd07614b2a91fb220ec62669a9f164517d69bea879> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/dee0d950560dab61869a4e33b90e646a15e57e29bb92e66ef2f68fe97785cdab> .
<hash://sha256/dee0d950560dab61869a4e33b90e646a15e57e29bb92e66ef2f68fe97785cdab> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/3e936802229eab01390a08e2b2d9de9198c16c9eb600f5b97d0d56a21b0bb33b> .
<hash://sha256/3e936802229eab01390a08e2b2d9de9198c16c9eb600f5b97d0d56a21b0bb33b> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/a58ac8e2cd5570929fc7b4b05ff5f6d120643b36071a018cdc66f862e1bc2ec0> .
<hash://sha256/a58ac8e2cd5570929fc7b4b05ff5f6d120643b36071a018cdc66f862e1bc2ec0> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/3bac7fc507b0fe860e53c691dc1c84522f2cf94b0e4e870eed8063a230dcae65> .
<hash://sha256/3bac7fc507b0fe860e53c691dc1c84522f2cf94b0e4e870eed8063a230dcae65> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/62d0c5665978b00e491a095b92e18035d107b8b9535ae46ba8fbd26e3ccd4d53> .
<hash://sha256/62d0c5665978b00e491a095b92e18035d107b8b9535ae46ba8fbd26e3ccd4d53> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/79829dd64cacb4ffe9033215681ec5b9f44bdbbfc8d20d0bfb2416cf51186a6a> .
<hash://sha256/79829dd64cacb4ffe9033215681ec5b9f44bdbbfc8d20d0bfb2416cf51186a6a> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/56ca071d24b2ebec730087bc62b1838c31abd09de737a78ad726d5c7c3e4ab2e> .
<hash://sha256/56ca071d24b2ebec730087bc62b1838c31abd09de737a78ad726d5c7c3e4ab2e> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/b79c7c4d907f927799d846a220b36701ce5369ad8b672aa99103de2a32f4872f> .
<hash://sha256/b79c7c4d907f927799d846a220b36701ce5369ad8b672aa99103de2a32f4872f> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/cc1c8995ff5ccdf90c4b22a0fa4be135bb5b978cdce1b5fa78fd6495e2ec9b15> .
<hash://sha256/cc1c8995ff5ccdf90c4b22a0fa4be135bb5b978cdce1b5fa78fd6495e2ec9b15> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/ce7c5bb0e5b94dfcbc519c88cea7f273b18f3f6215b1b8712c97ddef2845c1b9> .
<hash://sha256/ce7c5bb0e5b94dfcbc519c88cea7f273b18f3f6215b1b8712c97ddef2845c1b9> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/4aeb0feabf9e7683f3270091fe07983a11d3937ae2002ab458246b3458eda5f8> .
<hash://sha256/4aeb0feabf9e7683f3270091fe07983a11d3937ae2002ab458246b3458eda5f8> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/f00a1379f96a6b9992190e950cf01ae56dce6198ab356a6fba75ccb071075a87> .
<hash://sha256/f00a1379f96a6b9992190e950cf01ae56dce6198ab356a6fba75ccb071075a87> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/91a1924734ce21a8d86d6f74db7ddfedfaaf86a1e68902060a06009995474c7e> .
<hash://sha256/91a1924734ce21a8d86d6f74db7ddfedfaaf86a1e68902060a06009995474c7e> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/3b787d1c3c046587e138aede8002efa211c9a288039d51be7671f0abc3be8d61> .
<hash://sha256/3b787d1c3c046587e138aede8002efa211c9a288039d51be7671f0abc3be8d61> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/294189fd9f8b07f685615ff08782a927d51c4fceb02265f7801fa85a79c94e5f> .
<hash://sha256/294189fd9f8b07f685615ff08782a927d51c4fceb02265f7801fa85a79c94e5f> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/fb1529e3112729f68664015b5e87ba5ae8276b5e39fbcb327f204849ab317115> .
<hash://sha256/fb1529e3112729f68664015b5e87ba5ae8276b5e39fbcb327f204849ab317115> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/fa36ae73c472ef33300fc2497abbe2d4c0222a3551c853b04f465f67e668a88a> .
<hash://sha256/fa36ae73c472ef33300fc2497abbe2d4c0222a3551c853b04f465f67e668a88a> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/48cac3b38f8592f661d90e371937d3b42573aabaec68b4b090532f48782f5be8> .
<hash://sha256/48cac3b38f8592f661d90e371937d3b42573aabaec68b4b090532f48782f5be8> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/f13bf064e144506898492cad50364e84f3045b9003bb72a6a280b05d32a6d22b> .
<hash://sha256/f13bf064e144506898492cad50364e84f3045b9003bb72a6a280b05d32a6d22b> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/aa6c2a81fc891733e1e780e4398975b30238fcbc215c4b28ac4072416f678349> .
<hash://sha256/aa6c2a81fc891733e1e780e4398975b30238fcbc215c4b28ac4072416f678349> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/bd2a4f8adaa36d2b4be680e5a913a20bc7c7027c589feb69e3c3ca5b70a49025> .
<hash://sha256/bd2a4f8adaa36d2b4be680e5a913a20bc7c7027c589feb69e3c3ca5b70a49025> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/82237b0854186b51794029b6b4bb05b0d84ceda5973d2d00e6987e359f6c1f28> .
<hash://sha256/82237b0854186b51794029b6b4bb05b0d84ceda5973d2d00e6987e359f6c1f28> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/be55f1d3ae2f3f2c9087cf2cae0accd4b0fe0afca9aa5fc0d8da3bca21903422> .
<hash://sha256/be55f1d3ae2f3f2c9087cf2cae0accd4b0fe0afca9aa5fc0d8da3bca21903422> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/56df711d5695dd374e0fbea627b8bdd45ad5a5ffcafcb8b61b87325f9c0b0c34> .
<hash://sha256/56df711d5695dd374e0fbea627b8bdd45ad5a5ffcafcb8b61b87325f9c0b0c34> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/ec6ef36806d8f54a91d9c3d323ecce4c58db21231392843b8ace78344d241f2e> .
<hash://sha256/ec6ef36806d8f54a91d9c3d323ecce4c58db21231392843b8ace78344d241f2e> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/776424d65959a2b28e4fe1375ec4b2322d5917bde134bf9100a9e681e753aa58> .
<hash://sha256/776424d65959a2b28e4fe1375ec4b2322d5917bde134bf9100a9e681e753aa58> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/7cc132e214b188479287957ad3622479366cbd5750987dc12e9bdae34d921b85> .
<hash://sha256/7cc132e214b188479287957ad3622479366cbd5750987dc12e9bdae34d921b85> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/7c46e3eecfaeefa9607381eb7b554546912eaa2256cf9bf107c932f24a667d90> .
<hash://sha256/7c46e3eecfaeefa9607381eb7b554546912eaa2256cf9bf107c932f24a667d90> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/d5e1139355f2aa52d51cbf780ff13f52aaee38b0b3e95f7c71a40844baed1b19> .
<hash://sha256/d5e1139355f2aa52d51cbf780ff13f52aaee38b0b3e95f7c71a40844baed1b19> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/fe6f3d00e51e3c728a47615ffa3c33f3ba1ebf76e01c0b3687cb91a3ce62cb39> .
<hash://sha256/fe6f3d00e51e3c728a47615ffa3c33f3ba1ebf76e01c0b3687cb91a3ce62cb39> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/0e75a957d991ee8a4c55e6d8f3b1e51bada65fd078bb8b089931fd1f7f82dd64> .
<hash://sha256/0e75a957d991ee8a4c55e6d8f3b1e51bada65fd078bb8b089931fd1f7f82dd64> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/3d21921de71d0501409c07fae0da16fe55e5960491b1e149a27f8458fbc5d998> .
<hash://sha256/3d21921de71d0501409c07fae0da16fe55e5960491b1e149a27f8458fbc5d998> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/ba15fbd32918fb5621487d1f548c7d94488b6f8138d9db35d5873ff735f050e8> .
<hash://sha256/ba15fbd32918fb5621487d1f548c7d94488b6f8138d9db35d5873ff735f050e8> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/92110d55d1428752aa57fd41d8c9dfcc4fe000f221aa79e9c6a8463078ff94e3> .
<hash://sha256/92110d55d1428752aa57fd41d8c9dfcc4fe000f221aa79e9c6a8463078ff94e3> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/4b255a86d2085454f37562b0406be78e261205966be328d1190f2e0640289948> .
<hash://sha256/4b255a86d2085454f37562b0406be78e261205966be328d1190f2e0640289948> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/d7173fac6a0f6b23e563baa4aa68316dabb91548c687e4c24f74c842aefa5cc2> .
<hash://sha256/d7173fac6a0f6b23e563baa4aa68316dabb91548c687e4c24f74c842aefa5cc2> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/214f925801f42efb4fdb610d11d5e26f49ca325c5aa079ababe19f0ff0e0b057> .
<hash://sha256/214f925801f42efb4fdb610d11d5e26f49ca325c5aa079ababe19f0ff0e0b057> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/004b423e2c86f801e8f42e3ef803a12dfc805b1d0d1899037c8dea3343e3f4c0> .
<hash://sha256/004b423e2c86f801e8f42e3ef803a12dfc805b1d0d1899037c8dea3343e3f4c0> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/a6bed316496c59a4bf3c1512dc0510d0732888f0ffe3a3454cda6ba1121e72ce> .
<hash://sha256/a6bed316496c59a4bf3c1512dc0510d0732888f0ffe3a3454cda6ba1121e72ce> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/a3d7a90bbb97e29547c69cac88d7ad8f9ccc6a45c2324282e085b09112abba85> .
<hash://sha256/a3d7a90bbb97e29547c69cac88d7ad8f9ccc6a45c2324282e085b09112abba85> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/7a7efd0712fe5e2eb76f925cd4922b336c725efc471582ee785f780cc8c747c2> .
<hash://sha256/7a7efd0712fe5e2eb76f925cd4922b336c725efc471582ee785f780cc8c747c2> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/38d46dd0ae9a5c1aa35e73f6abcaf2e091787f85897fa2dfea71c2d5fe9d4958> .
<hash://sha256/38d46dd0ae9a5c1aa35e73f6abcaf2e091787f85897fa2dfea71c2d5fe9d4958> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/1eeb549179eb25d6a7378474affe48cb8bd3a0b432c37b951a82637491555e54> .
<hash://sha256/1eeb549179eb25d6a7378474affe48cb8bd3a0b432c37b951a82637491555e54> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/496c85f07748283a4c94251cbdf45004daf1ed26dc200d6c18c43759d71260db> .
<hash://sha256/496c85f07748283a4c94251cbdf45004daf1ed26dc200d6c18c43759d71260db> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/194a4101c0c9a94f0362d2b700cbe1358781d43ee486899199084b1807b0985c> .
<hash://sha256/194a4101c0c9a94f0362d2b700cbe1358781d43ee486899199084b1807b0985c> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/2406426e28091e844e8df4d533ba9d3b8678ae698ee058a5a9c35c1f20fcc546> .
<hash://sha256/2406426e28091e844e8df4d533ba9d3b8678ae698ee058a5a9c35c1f20fcc546> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/cbfebaf38160a456278833ab41fc0659e1ab6594266fbb68d95b4edfb100239a> .
<hash://sha256/cbfebaf38160a456278833ab41fc0659e1ab6594266fbb68d95b4edfb100239a> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/8de0e423cf8706496fcd46ebfa5f452f8c8dd1c4ac32b3bb645548f3e233e62f> .
<hash://sha256/8de0e423cf8706496fcd46ebfa5f452f8c8dd1c4ac32b3bb645548f3e233e62f> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/5a069929a537ba6b8be5bf1f9ce2fbee1dd4503a967f383121ea723a493659bd> .
<hash://sha256/5a069929a537ba6b8be5bf1f9ce2fbee1dd4503a967f383121ea723a493659bd> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/cb85a6717a01f8cbda5a04a207d47122d98a6008ce79a29efb979f8d0141706f> .
<hash://sha256/cb85a6717a01f8cbda5a04a207d47122d98a6008ce79a29efb979f8d0141706f> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/8b76d0df57a9adfbb9b01a1ec90849c4987c7b6c0f7b9d85dd68054f26920a8e> .
<hash://sha256/8b76d0df57a9adfbb9b01a1ec90849c4987c7b6c0f7b9d85dd68054f26920a8e> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/98c8c2c6d9625f9ab4ebce2e9ef6251bc89c3daf574464fa875b2cb61547adfd> .
<hash://sha256/98c8c2c6d9625f9ab4ebce2e9ef6251bc89c3daf574464fa875b2cb61547adfd> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/5bcfd32c5a01050dc7f293b258ee3af2bdac4156807b90707b45417d7ff2c29d> .
<hash://sha256/5bcfd32c5a01050dc7f293b258ee3af2bdac4156807b90707b45417d7ff2c29d> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/7b3a3b7073a5d167e5b16164c1fbfb58f7dfb97b647ec890fdcae1d19c88d9c0> .
<hash://sha256/7b3a3b7073a5d167e5b16164c1fbfb58f7dfb97b647ec890fdcae1d19c88d9c0> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/06a1881853a254e9a2f40c27b7784daf72fd18ba783808d97d4ce39be0dc04c8> .
<hash://sha256/06a1881853a254e9a2f40c27b7784daf72fd18ba783808d97d4ce39be0dc04c8> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/32e0359e9db6acdbcad6f2a957a87a55c8725da26f9ac9e206132427a0db496a> .
<hash://sha256/32e0359e9db6acdbcad6f2a957a87a55c8725da26f9ac9e206132427a0db496a> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/84e14ec8d77febf4b98b49887955ecc759416f425eb4fa36e715651aa98a8670> .
<hash://sha256/84e14ec8d77febf4b98b49887955ecc759416f425eb4fa36e715651aa98a8670> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/4ff8c97813d79e8e7c60b4e1f0a43ecf4a393554c7227b4f42e5b2ee3d79d55d> .
<hash://sha256/4ff8c97813d79e8e7c60b4e1f0a43ecf4a393554c7227b4f42e5b2ee3d79d55d> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/405d8565e00a3ecd1717e7fd576c6a8645bb67516e0cf9e26c51cb3b14899cd6> .
<hash://sha256/405d8565e00a3ecd1717e7fd576c6a8645bb67516e0cf9e26c51cb3b14899cd6> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/f59f15b000f42201b8066424ed1ce764ac75553dc60fff02b6516bef854eb014> .
<hash://sha256/f59f15b000f42201b8066424ed1ce764ac75553dc60fff02b6516bef854eb014> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/4ac5d3cf4e614035ca58f6ceea9c78fb9461498532c92e2503ef9fd176544f45> .
<hash://sha256/4ac5d3cf4e614035ca58f6ceea9c78fb9461498532c92e2503ef9fd176544f45> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/e824c0d4fbb780a4a37e3a2a7fb6274e938f82cec55a810a082725ac7dc9faef> .
<hash://sha256/e824c0d4fbb780a4a37e3a2a7fb6274e938f82cec55a810a082725ac7dc9faef> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/af8da6fad85693096df8c5e1b8fbac53d301b9d2d3aa46c19ba224f8dee9352d> .
<hash://sha256/af8da6fad85693096df8c5e1b8fbac53d301b9d2d3aa46c19ba224f8dee9352d> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/77c93a8fded7aac0ff66976d6ceee725964de3659e99f2150293d88190caddcc> .
<hash://sha256/77c93a8fded7aac0ff66976d6ceee725964de3659e99f2150293d88190caddcc> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/c6d3e761af4fce90fe9146ad3ba42b2033031309fd3963339e63a9841e86d864> .
<hash://sha256/c6d3e761af4fce90fe9146ad3ba42b2033031309fd3963339e63a9841e86d864> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/bf64290b76d5595505eaeaa642f768828bb561063c946c82c58f83af17caf693> .
<hash://sha256/bf64290b76d5595505eaeaa642f768828bb561063c946c82c58f83af17caf693> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/9881bbc9e980b7b15a72fecac0e0cdf91bdd1d3ec649a7d53b10f36e061459f1> .
<hash://sha256/9881bbc9e980b7b15a72fecac0e0cdf91bdd1d3ec649a7d53b10f36e061459f1> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/eb403ff7a1655d4057d100fe7c5336de0b6fffc5ece416b38d62ef7d513bdb03> .
<hash://sha256/eb403ff7a1655d4057d100fe7c5336de0b6fffc5ece416b38d62ef7d513bdb03> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/dc6418026aeef6e5fbe2829fd523c2dc59f10e0409db4a051509c47e3e23202b> .
<hash://sha256/dc6418026aeef6e5fbe2829fd523c2dc59f10e0409db4a051509c47e3e23202b> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/f955576914d5704e8ee0b01b5a6a1c9aacd54a88de46d8741d143d0b285dc203> .
<hash://sha256/f955576914d5704e8ee0b01b5a6a1c9aacd54a88de46d8741d143d0b285dc203> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/224bfe883f1efc5d0e90f9f6dd4b6affc4f0dbab8066458bf4065f14e81a4775> .
<hash://sha256/224bfe883f1efc5d0e90f9f6dd4b6affc4f0dbab8066458bf4065f14e81a4775> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/244dd497e14faf104e45a8643193e7db1ac136a25be119b2d215e1b234d7432d> .
<hash://sha256/244dd497e14faf104e45a8643193e7db1ac136a25be119b2d215e1b234d7432d> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/cfa86a646ae0864651558886b4ba7dc55ef5d2b62cb456b083642c86c6f99a07> .
<hash://sha256/cfa86a646ae0864651558886b4ba7dc55ef5d2b62cb456b083642c86c6f99a07> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/d6b65cc012ca016128e0d76cfc17c9f346caf0ad8525fb7fae5c0efe189b5efc> .
<hash://sha256/d6b65cc012ca016128e0d76cfc17c9f346caf0ad8525fb7fae5c0efe189b5efc> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/29ee26b9da94e114217a52ba67e29a3c0c3f746b0406583a3dd2c48746b4c7f6> .
<hash://sha256/29ee26b9da94e114217a52ba67e29a3c0c3f746b0406583a3dd2c48746b4c7f6> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/7658ef052208567b8bfe6e4e4aaa76662a292ceb650518043c09421f5ccd383f> .
<hash://sha256/7658ef052208567b8bfe6e4e4aaa76662a292ceb650518043c09421f5ccd383f> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/94832e83a93239fe946551ca251616e42463c8037592e298fdde1cff51869255> .
<hash://sha256/94832e83a93239fe946551ca251616e42463c8037592e298fdde1cff51869255> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/eb81744921e788fad286993853d02ea7c4be0fe41b06ff2ab38d2224eaa70058> .
<hash://sha256/eb81744921e788fad286993853d02ea7c4be0fe41b06ff2ab38d2224eaa70058> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/2ab651d32420453097689368b06005e3765c636d65109be77edcba925fc32045> .
<hash://sha256/2ab651d32420453097689368b06005e3765c636d65109be77edcba925fc32045> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/97a5185194e9837f60ddc5b4017b0202552eeedc968fbde89521d21b90f9ff81> .
<hash://sha256/97a5185194e9837f60ddc5b4017b0202552eeedc968fbde89521d21b90f9ff81> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/98358432bf75bdb6a8edcd5bde3096730fe4274cbbc3c48b3d589e7c89512168> .
<hash://sha256/98358432bf75bdb6a8edcd5bde3096730fe4274cbbc3c48b3d589e7c89512168> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/ad11813f3cb42755fb0c4391db34ffb1d5b1745d95c239bd7bb1ab6b0eca76c6> .
<hash://sha256/ad11813f3cb42755fb0c4391db34ffb1d5b1745d95c239bd7bb1ab6b0eca76c6> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/3f2d59ca071d074711f046d805b7662af17da010aba0cbee9038aae12fd0b047> .
<hash://sha256/3f2d59ca071d074711f046d805b7662af17da010aba0cbee9038aae12fd0b047> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/695da3fe7cdde3d61aea13a087a9de95f57868690ff6c741589299d4693f863c> .
<hash://sha256/695da3fe7cdde3d61aea13a087a9de95f57868690ff6c741589299d4693f863c> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/5460d1c191990d9857db5436ed07563f4838b59af4e6deba144e82c301c8a79f> .
<hash://sha256/5460d1c191990d9857db5436ed07563f4838b59af4e6deba144e82c301c8a79f> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/bd0f159efef9a06a4f7d18927796e661e2d4d0a78ef7887133a47f0975e180f8> .
<hash://sha256/bd0f159efef9a06a4f7d18927796e661e2d4d0a78ef7887133a47f0975e180f8> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/0488d655d27b24804022f042c9e1522a0a15e49bd99b55190cb375e61bfba952> .
<hash://sha256/0488d655d27b24804022f042c9e1522a0a15e49bd99b55190cb375e61bfba952> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/67fb7e74ca5a07beab5eabc4b8ef0cc9191b2b212d3103bf7411615d73f1ee23> .
<hash://sha256/67fb7e74ca5a07beab5eabc4b8ef0cc9191b2b212d3103bf7411615d73f1ee23> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/e6f06b54d20cebc7048d550df83b85271e6ad6a0d625f45117fc1e7d67e331bc> .
<hash://sha256/e6f06b54d20cebc7048d550df83b85271e6ad6a0d625f45117fc1e7d67e331bc> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/b6894bf0982eafff90bd156bfd64408e4b444233336a23a512296f275ea22386> .
<hash://sha256/b6894bf0982eafff90bd156bfd64408e4b444233336a23a512296f275ea22386> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/3bd7cde10ba794c4085102d83d878a4b5b7bc2f3bfba9fba3cb8e034a575216a> .
<hash://sha256/3bd7cde10ba794c4085102d83d878a4b5b7bc2f3bfba9fba3cb8e034a575216a> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/b61cb62faaa494f10e6033e481679e2d0dda89f964354c93761f902023d08ac3> .
<hash://sha256/b61cb62faaa494f10e6033e481679e2d0dda89f964354c93761f902023d08ac3> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/43f55201332d35f0aa04eb3ec00b6707d59b9277abf9e4604ab00cd0fb38ba38> .
<hash://sha256/43f55201332d35f0aa04eb3ec00b6707d59b9277abf9e4604ab00cd0fb38ba38> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/ed970777a9cc209b9b5e2b9190524ec88db5cf920a3c60233b87898d4755b570> .
<hash://sha256/ed970777a9cc209b9b5e2b9190524ec88db5cf920a3c60233b87898d4755b570> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/524c71a92d80652163348626dd2ec483200b4260e6c4e1c5f70d3688663c9624> .
<hash://sha256/524c71a92d80652163348626dd2ec483200b4260e6c4e1c5f70d3688663c9624> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/2e53095c881c475ebb14f4d449d5bae501180392155fc71e32c5d37d767450ab> .
<hash://sha256/2e53095c881c475ebb14f4d449d5bae501180392155fc71e32c5d37d767450ab> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/b52b4a344358f9500cfa0b7aae0ede2de6fddcbcf0618f0355ce7ea0128cdd26> .
<hash://sha256/b52b4a344358f9500cfa0b7aae0ede2de6fddcbcf0618f0355ce7ea0128cdd26> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/80e8611a91a247dbb72351ff37d92c09c6180294ccf12006ac3c03561cbdfaba> .
<hash://sha256/80e8611a91a247dbb72351ff37d92c09c6180294ccf12006ac3c03561cbdfaba> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/83f86c4d964742aafa42672109f1b98e62bdc20153281677aae3731a205c1506> .
<hash://sha256/83f86c4d964742aafa42672109f1b98e62bdc20153281677aae3731a205c1506> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/a038267c46aae9f930e8439c3b8a54151475f775ac3bc9d3d1c1eecfa3ae3d25> .
<hash://sha256/a038267c46aae9f930e8439c3b8a54151475f775ac3bc9d3d1c1eecfa3ae3d25> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/a2b4e2369b51598e40b95260e93b4c3427ce8f7e4e90918cc4588dd6b83d9ba0> .
<hash://sha256/a2b4e2369b51598e40b95260e93b4c3427ce8f7e4e90918cc4588dd6b83d9ba0> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/d9a7ad8d12f90f29da985876498684b901b0b9e4e4b1081997c8ee878278f257> .
<hash://sha256/d9a7ad8d12f90f29da985876498684b901b0b9e4e4b1081997c8ee878278f257> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/f449d96099cfd266b797c924d96824439dcea3e60e46f11eca1e336ad5b2d3d9> .
<hash://sha256/f449d96099cfd266b797c924d96824439dcea3e60e46f11eca1e336ad5b2d3d9> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/f6b97eb1b4060a83eb4b2e61afae8e760296f1e83a4c4bed3a6e557c79b7f685> .
<hash://sha256/f6b97eb1b4060a83eb4b2e61afae8e760296f1e83a4c4bed3a6e557c79b7f685> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/e9fae4b8b3b4d1252adb8543e48551d07d394b031f1bb87ff05fdaf876c074d2> .
<hash://sha256/e9fae4b8b3b4d1252adb8543e48551d07d394b031f1bb87ff05fdaf876c074d2> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/dad90e7ab73f2b2a41964e71fd8a836a02d562232a73ff7e377c1db2d73899b7> .
<hash://sha256/dad90e7ab73f2b2a41964e71fd8a836a02d562232a73ff7e377c1db2d73899b7> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/5daf5d43eb3b060118aceb336930c53930afc76922543bf9848d6c5c3aafac4f> .
<hash://sha256/5daf5d43eb3b060118aceb336930c53930afc76922543bf9848d6c5c3aafac4f> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/6286ea1e71ea8bcd715a0e01d4f7c03018136c5d6d21970febfe86f2d474ccb6> .
<hash://sha256/6286ea1e71ea8bcd715a0e01d4f7c03018136c5d6d21970febfe86f2d474ccb6> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/dead795a44c40ad6edc06ac821a30ef5b3bee64e8c6fabac7756e2438cdead7b> .
<hash://sha256/dead795a44c40ad6edc06ac821a30ef5b3bee64e8c6fabac7756e2438cdead7b> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/a6ad79bc9f4814b3a5d06913aa1e9c9587374f54752baad322eeb0cf940240ba> .
<hash://sha256/a6ad79bc9f4814b3a5d06913aa1e9c9587374f54752baad322eeb0cf940240ba> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/939856c429b5307e8dba2ced59286977457001831d023182337d93e66c204d37> .
<hash://sha256/939856c429b5307e8dba2ced59286977457001831d023182337d93e66c204d37> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/56fcd608db1d845ec23850ff19ccf0e6d2a0ad04df17797b9243fe352ff8413a> .
<hash://sha256/56fcd608db1d845ec23850ff19ccf0e6d2a0ad04df17797b9243fe352ff8413a> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/0e4d0caddfdcf0816b221cf1f9dc57a84b3f037a9ede0cc9b205a3bbeca7a4d0> .
<hash://sha256/0e4d0caddfdcf0816b221cf1f9dc57a84b3f037a9ede0cc9b205a3bbeca7a4d0> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/35200800ec1d35d121f6678805e41a90a577e276fb2609d26de4b04dc60ad9d3> .
<hash://sha256/35200800ec1d35d121f6678805e41a90a577e276fb2609d26de4b04dc60ad9d3> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/23a67af69fb0d39ff4b1767fff386dbab039f2ff880a3390e42755feec906fa2> .
<hash://sha256/23a67af69fb0d39ff4b1767fff386dbab039f2ff880a3390e42755feec906fa2> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/eecbaa36ed1e4cf6b0f9eaed734a39bee8bc95b6f87b8c49a965a5b3dd1c864e> .
<hash://sha256/eecbaa36ed1e4cf6b0f9eaed734a39bee8bc95b6f87b8c49a965a5b3dd1c864e> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/40481e8520ccdaad86e3f2a3f8e0a5b5702fbcbffe212f6f74197135f9ca90c8> .
<hash://sha256/40481e8520ccdaad86e3f2a3f8e0a5b5702fbcbffe212f6f74197135f9ca90c8> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/ae900aea4e44789525978b5b5c13f3df6eb38a072a6fecc8f3354fc087a5078a> .
<hash://sha256/ae900aea4e44789525978b5b5c13f3df6eb38a072a6fecc8f3354fc087a5078a> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/4438d353bf3ac76414f39449dc74f75c8d60dc0f6b8a974fd6721b39006a3b07> .
<hash://sha256/4438d353bf3ac76414f39449dc74f75c8d60dc0f6b8a974fd6721b39006a3b07> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/b669281356c0ab97703ba9ba442f1f5ca7a1f6a8c879c7b9b5358e0e17517265> .
<hash://sha256/b669281356c0ab97703ba9ba442f1f5ca7a1f6a8c879c7b9b5358e0e17517265> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/0693ef3c6aff2a8016bffefc2ef90c4634f1d29b767fc5a8aada16ff77217fef> .
<hash://sha256/0693ef3c6aff2a8016bffefc2ef90c4634f1d29b767fc5a8aada16ff77217fef> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/137933c9b3718d21c9053b6ea5c845eab9e55205663df2e0e3b63bb0e73d1edc> .
<hash://sha256/137933c9b3718d21c9053b6ea5c845eab9e55205663df2e0e3b63bb0e73d1edc> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/0bfd6a261eb9aee930a81c1ab0db86511377b656e077b36908ebd00e55ea19bd> .
<hash://sha256/0bfd6a261eb9aee930a81c1ab0db86511377b656e077b36908ebd00e55ea19bd> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/a240f40749b970b7c2b53feb04ffa6bc2f7d08ceb9a210a95cb480e7df8021e4> .
<hash://sha256/a240f40749b970b7c2b53feb04ffa6bc2f7d08ceb9a210a95cb480e7df8021e4> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/9a454cb0268963de3db0aebf944cedca41a9f39fdfa6ce40e66b1609f0fe6eb6> .
<hash://sha256/9a454cb0268963de3db0aebf944cedca41a9f39fdfa6ce40e66b1609f0fe6eb6> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/97fe4d38d36e55b2a903bc4354be963e109b26ab7cf7a282525d6f372ff0c480> .
<hash://sha256/97fe4d38d36e55b2a903bc4354be963e109b26ab7cf7a282525d6f372ff0c480> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/ab4739624f35600a1b445224e25790f24460332d13a10ed3b1913e3a722ea9ac> .
<hash://sha256/ab4739624f35600a1b445224e25790f24460332d13a10ed3b1913e3a722ea9ac> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/75a1e5c360db7f44a6e04110f5db05722d840085cf5ec1fd49ceef8fd4f85160> .
<hash://sha256/75a1e5c360db7f44a6e04110f5db05722d840085cf5ec1fd49ceef8fd4f85160> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/f3f47a01f71cfad709718193f78ce9a2ca76d20d7c5e0b7954f790752a17decb> .
<hash://sha256/f3f47a01f71cfad709718193f78ce9a2ca76d20d7c5e0b7954f790752a17decb> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/28b08df9c1e4512277736be23f5d2616f1327fa4fc1903643eb9b9f0c9a5bf24> .
<hash://sha256/28b08df9c1e4512277736be23f5d2616f1327fa4fc1903643eb9b9f0c9a5bf24> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/1c1fbca0867f9fda3ba6cccf9e734575e253a8aca6859cbb1947fe946878e21c> .
<hash://sha256/1c1fbca0867f9fda3ba6cccf9e734575e253a8aca6859cbb1947fe946878e21c> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/33fc7e96677092db7ca88d44af2900074b1bb10bae99b1c68227881a76a319c8> .
<hash://sha256/33fc7e96677092db7ca88d44af2900074b1bb10bae99b1c68227881a76a319c8> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/5629e65a8555d4728a51937aade6534093834bbad71cf0454231a25d2ad07233> .
<hash://sha256/5629e65a8555d4728a51937aade6534093834bbad71cf0454231a25d2ad07233> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/c590659fc8c5f3f0aa386502a985c0ad4146201e96d90c58b26f305f12cb15c6> .
<hash://sha256/c590659fc8c5f3f0aa386502a985c0ad4146201e96d90c58b26f305f12cb15c6> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/34591ee70b58d4a4759567d0f73786818bc6c9a52fd757bf61c21159c7fad56e> .
<hash://sha256/34591ee70b58d4a4759567d0f73786818bc6c9a52fd757bf61c21159c7fad56e> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/e43a3e064a819718cc780b371ea74551df80844a02cc1da7eedc653e6e15fd09> .
<hash://sha256/e43a3e064a819718cc780b371ea74551df80844a02cc1da7eedc653e6e15fd09> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/ca6c234b5d68914b0aec04c5cb02cc6a3ed9195868805c9181c31fcee738dc23> .
<hash://sha256/ca6c234b5d68914b0aec04c5cb02cc6a3ed9195868805c9181c31fcee738dc23> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/304cfc001fb48f94ca468a5ed849051a08abbcbdc132b6db1313057df6c82111> .
<hash://sha256/304cfc001fb48f94ca468a5ed849051a08abbcbdc132b6db1313057df6c82111> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/cc3703d0f45554df19d04f58fea4b23d1af96c18091cb5242ce9e2d7230e0616> .
<hash://sha256/cc3703d0f45554df19d04f58fea4b23d1af96c18091cb5242ce9e2d7230e0616> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/814957469919767c331b38ddca71802ea19aec472870e3be8603daae5a2e77cf> .
<hash://sha256/814957469919767c331b38ddca71802ea19aec472870e3be8603daae5a2e77cf> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/7bbdecc8fb639388553be77c01b10fbc65c8f0e6d04860b8dabe79534d3c07e2> .
<hash://sha256/7bbdecc8fb639388553be77c01b10fbc65c8f0e6d04860b8dabe79534d3c07e2> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/fcfc444c6425098206ed0a33ef3de2876f2c7c4c28d40fbf0d1ae9725c3647e3> .
<hash://sha256/fcfc444c6425098206ed0a33ef3de2876f2c7c4c28d40fbf0d1ae9725c3647e3> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/76af0ff77600ba255916fe5f3c41d027af657f66a283c776242420d538f29648> .
<hash://sha256/76af0ff77600ba255916fe5f3c41d027af657f66a283c776242420d538f29648> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/a979ff96864a527b1139d971001d5eff85829a29111e1fce855e112bd74ccaa6> .
<hash://sha256/a979ff96864a527b1139d971001d5eff85829a29111e1fce855e112bd74ccaa6> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/dd6afa9b0e0e8e1015d743417107fdeca799a306e976dda8b2884728000aa491> .
<hash://sha256/dd6afa9b0e0e8e1015d743417107fdeca799a306e976dda8b2884728000aa491> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/3af9e10b1bc8a7af90b7d7996c7081ee6ddf03e4170bc5921969c30cc79000be> .
<hash://sha256/3af9e10b1bc8a7af90b7d7996c7081ee6ddf03e4170bc5921969c30cc79000be> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/1577be161000a64e1bae9cdd89680ed3e534cec529602b620fc85b0fd81b4c20> .
<hash://sha256/1577be161000a64e1bae9cdd89680ed3e534cec529602b620fc85b0fd81b4c20> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/481671985d969fd817c017a39d7d9f2fd057f5805af6b2e759a12586f553726b> .
<hash://sha256/481671985d969fd817c017a39d7d9f2fd057f5805af6b2e759a12586f553726b> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/0233a296dc7d609a2c7891230a10f815e1f8da38a5fc4d3ac1838d6e2d78194a> .
<hash://sha256/0233a296dc7d609a2c7891230a10f815e1f8da38a5fc4d3ac1838d6e2d78194a> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/ed00db7bb33eca681cef77fef39ba54e396e4070a30b16bfa764a112cabc9ec5> .
<hash://sha256/ed00db7bb33eca681cef77fef39ba54e396e4070a30b16bfa764a112cabc9ec5> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/3f0029936445b3c564ddf4c015b03a14a55b2fefdf0e7ffc979d4fb0a9a7989f> .
<hash://sha256/3f0029936445b3c564ddf4c015b03a14a55b2fefdf0e7ffc979d4fb0a9a7989f> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/caa64d485d59af8fbc7c5f5fc87d258a223995d4271d5efe48fe2091d17ecb5a> .
<hash://sha256/caa64d485d59af8fbc7c5f5fc87d258a223995d4271d5efe48fe2091d17ecb5a> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/61fb4b38c5beb132b5a2bbe873d0633fc1612aa67df499783fc55eafcea5c73f> .
<hash://sha256/61fb4b38c5beb132b5a2bbe873d0633fc1612aa67df499783fc55eafcea5c73f> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/06545842ecb14528a391524697739ae488d7b4950186196a7b6c3a707350befc> .
<hash://sha256/06545842ecb14528a391524697739ae488d7b4950186196a7b6c3a707350befc> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/efe30ee3eaacd811006ea1a4267f5ec09c8b295fb61d646e45d94375ba04bec9> .
<hash://sha256/efe30ee3eaacd811006ea1a4267f5ec09c8b295fb61d646e45d94375ba04bec9> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/7636d5eb2c7184cfaeae4c169038140c6647f8c4b33537e4a3244410fefad5aa> .
<hash://sha256/7636d5eb2c7184cfaeae4c169038140c6647f8c4b33537e4a3244410fefad5aa> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/3d1d1df94e5183f5acaf9930c760f93be4a685e1d636e27e934d240946e7f058> .
<hash://sha256/3d1d1df94e5183f5acaf9930c760f93be4a685e1d636e27e934d240946e7f058> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/583107eef572f0f1fd7bbfa704ac9f1a35e3e62366889281ac1ce5efc5707d5b> .
<hash://sha256/583107eef572f0f1fd7bbfa704ac9f1a35e3e62366889281ac1ce5efc5707d5b> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/09dcc7d99142126be5a8eea209482788bd444226e7835222af902e20f670a8d2> .
<hash://sha256/09dcc7d99142126be5a8eea209482788bd444226e7835222af902e20f670a8d2> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/769a67c7a749bbc1ec2419f9d9a094b42feac50e696c446730f3425bb2e067d4> .
<hash://sha256/769a67c7a749bbc1ec2419f9d9a094b42feac50e696c446730f3425bb2e067d4> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/8590f1c5a9b8fb86010e9e1e0e8df12110cd9c1ebe1b86db372c67c1d4dab7e7> .
<hash://sha256/8590f1c5a9b8fb86010e9e1e0e8df12110cd9c1ebe1b86db372c67c1d4dab7e7> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/9acdb9556eef476e7b9a15ce8233861534a6a6f8862a3d6579971c491d132a40> .
<hash://sha256/9acdb9556eef476e7b9a15ce8233861534a6a6f8862a3d6579971c491d132a40> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/5252591127d38d82d8ebf9cc35171aea22a1000cb2f7c37242dd4a6284a1e57c> .
<hash://sha256/5252591127d38d82d8ebf9cc35171aea22a1000cb2f7c37242dd4a6284a1e57c> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/50316647acf3f6f6aefda2b476c3c191e9d83771213082b3c47f032b09784666> .
<hash://sha256/50316647acf3f6f6aefda2b476c3c191e9d83771213082b3c47f032b09784666> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/0ca88e0aee36d58da751f6e85728dd676d9831950ea48eb03545fb77eeae3bef> .
<hash://sha256/0ca88e0aee36d58da751f6e85728dd676d9831950ea48eb03545fb77eeae3bef> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/bc6c23d976bf43de2e408c76ce01dc44fc0b63976a8a9b391db3f85fe1280712> .
<hash://sha256/bc6c23d976bf43de2e408c76ce01dc44fc0b63976a8a9b391db3f85fe1280712> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/129654649b13b976eb3d81efdfa02697513f9c12fc6956b1ee40d68994f39e41> .
<hash://sha256/129654649b13b976eb3d81efdfa02697513f9c12fc6956b1ee40d68994f39e41> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/6c2de50e0f4fd14bb3fc2d106418ae08d3b2e76de1eefd3e6b511a9e2b86edfe> .
<hash://sha256/6c2de50e0f4fd14bb3fc2d106418ae08d3b2e76de1eefd3e6b511a9e2b86edfe> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/b2f8398668bf882b77ecd75061c950d2908af1f8c7c5a29ea5df99b10eeb70bd> .
<hash://sha256/b2f8398668bf882b77ecd75061c950d2908af1f8c7c5a29ea5df99b10eeb70bd> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/9dc5eeac4a795ceef04bcfe3cefca9bfe2bcc1936caf2b9579591c94a5a19a2e> .
<hash://sha256/9dc5eeac4a795ceef04bcfe3cefca9bfe2bcc1936caf2b9579591c94a5a19a2e> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/bd4b0c23abd7944e7848b41e606b83a8c3d1517a4774b3219d97f4aabbd2606f> .
<hash://sha256/bd4b0c23abd7944e7848b41e606b83a8c3d1517a4774b3219d97f4aabbd2606f> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/fac4d42a5b617b73d9949074010db53847a4679de1756f9878f12f5018b7cfe4> .
<hash://sha256/fac4d42a5b617b73d9949074010db53847a4679de1756f9878f12f5018b7cfe4> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/8bd48ea2b7b0c8df0e6e30dc5ced614b4939342491210f405bfab9c74e2cda09> .
<hash://sha256/8bd48ea2b7b0c8df0e6e30dc5ced614b4939342491210f405bfab9c74e2cda09> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/a5c0e63e9b3f19c231f0e7e15593f5ba9120795b76e9bfc7591e4e861f2a3a75> .
<hash://sha256/a5c0e63e9b3f19c231f0e7e15593f5ba9120795b76e9bfc7591e4e861f2a3a75> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/0e813a82dd65769b4b19613bf38480ad71c4ff99b625e4c6cdddb01ebd1a515d> .
<hash://sha256/0e813a82dd65769b4b19613bf38480ad71c4ff99b625e4c6cdddb01ebd1a515d> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/c0503d9e8799b52a58d28e9c7f457fceae41df77b5f2eb20c6f020acccc21c76> .
<hash://sha256/c0503d9e8799b52a58d28e9c7f457fceae41df77b5f2eb20c6f020acccc21c76> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/d15d33e36b04e59355188a67931909092c23de7a013b5b70856fcdf3c8cd8aa8> .
<hash://sha256/d15d33e36b04e59355188a67931909092c23de7a013b5b70856fcdf3c8cd8aa8> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/c21f3981df7cb22b429b5286e0d9525f477daf4ce4c90af3df655cef2c6cb517> .
<hash://sha256/c21f3981df7cb22b429b5286e0d9525f477daf4ce4c90af3df655cef2c6cb517> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/d98bf0c0d9184eb046abc7cb98ab2f6e1a43649f45651f723bd96387ca6923b7> .
<hash://sha256/d98bf0c0d9184eb046abc7cb98ab2f6e1a43649f45651f723bd96387ca6923b7> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/987e41f7d8312044b89dd475ed51838e4a655a767f8e54154e2cd2ef115a4a7a> .
<hash://sha256/987e41f7d8312044b89dd475ed51838e4a655a767f8e54154e2cd2ef115a4a7a> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/bd1e04c2f6a2470040684c2440daa502c4dfefe0594609ddf3d5d449d5a2dbdc> .
<hash://sha256/bd1e04c2f6a2470040684c2440daa502c4dfefe0594609ddf3d5d449d5a2dbdc> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/2b00cb0b10d82b3afd557a648d6e6bb5ae11765a30aaaa3372bf65e4bf40e02e> .
<hash://sha256/2b00cb0b10d82b3afd557a648d6e6bb5ae11765a30aaaa3372bf65e4bf40e02e> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/948e5b799db9471c618ef4eacdb25321d0cb8a296dc79fc2e0c2b947b79d2d54> .
<hash://sha256/948e5b799db9471c618ef4eacdb25321d0cb8a296dc79fc2e0c2b947b79d2d54> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/03e77be44fdc6d630a594d21e10c730980cbb2de21bd723767b4ef1e2c17c359> .
<hash://sha256/03e77be44fdc6d630a594d21e10c730980cbb2de21bd723767b4ef1e2c17c359> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/9360220a1df3ea89423b0c61946e6309db3129c6a9d98342cd6965a9cb7af5f9> .
<hash://sha256/9360220a1df3ea89423b0c61946e6309db3129c6a9d98342cd6965a9cb7af5f9> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/5a2e8c244ff2c94eeb5dd47b1bf3fab9ef328bb79d823c65c39f7137bc68713c> .
<hash://sha256/5a2e8c244ff2c94eeb5dd47b1bf3fab9ef328bb79d823c65c39f7137bc68713c> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/5f728a4a68e3e5cc894acda7d10815c2c2939553d323ede21d4106ee13a60633> .
<hash://sha256/5f728a4a68e3e5cc894acda7d10815c2c2939553d323ede21d4106ee13a60633> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/25bd2ae3371cb721d28500df493d872d787fb39ec24438000af1bde419088fe7> .
<hash://sha256/25bd2ae3371cb721d28500df493d872d787fb39ec24438000af1bde419088fe7> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/c7eaee1d4c65b7828d5508bf335c610236b08d2ede05357b00d7b3640d601861> .
<hash://sha256/c7eaee1d4c65b7828d5508bf335c610236b08d2ede05357b00d7b3640d601861> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/fc68d08cb96e1a57ab6d7e67f1100ad354cdb497fa867589c7ebcaaca50e34a6> .
<hash://sha256/fc68d08cb96e1a57ab6d7e67f1100ad354cdb497fa867589c7ebcaaca50e34a6> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/376c06ef7deb3a0165173960b0456862943b1804baf4db106b961cd555c83532> .
<hash://sha256/376c06ef7deb3a0165173960b0456862943b1804baf4db106b961cd555c83532> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/e6035c7e9e64020ae9d21cf19fcb17031da0734593965c669dd4035c750fd49d> .
<hash://sha256/e6035c7e9e64020ae9d21cf19fcb17031da0734593965c669dd4035c750fd49d> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/002967ea654633d4bb2266fb47c8c1d9d1f0c104ff5cafcdd5fe84afdee5e5b0> .
<hash://sha256/002967ea654633d4bb2266fb47c8c1d9d1f0c104ff5cafcdd5fe84afdee5e5b0> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/5ee83fd76fae6c8b7bc15bbd1f7ad0ac7eabe81d8da4bf8d2420a03d88dd485c> .
<hash://sha256/5ee83fd76fae6c8b7bc15bbd1f7ad0ac7eabe81d8da4bf8d2420a03d88dd485c> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/40d9ee8c5f942a8b57f852e8e3f935927b541b595bb83678c02801b3111f6341> .
<hash://sha256/40d9ee8c5f942a8b57f852e8e3f935927b541b595bb83678c02801b3111f6341> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/019e1699fe46e1a336cf77115d6e860ab483b30983d85e2b5b67dd9a95402784> .
<hash://sha256/019e1699fe46e1a336cf77115d6e860ab483b30983d85e2b5b67dd9a95402784> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/49ae3a8d57467bd70afc880df5da8be822b6b87cd12a4b2cd9210444bcbfe49d> .
<hash://sha256/49ae3a8d57467bd70afc880df5da8be822b6b87cd12a4b2cd9210444bcbfe49d> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/7a13995a5e1081c8ae7f1c70ac2deddd9c6d2b0c7f141ee9b090c925f8361f55> .
<hash://sha256/7a13995a5e1081c8ae7f1c70ac2deddd9c6d2b0c7f141ee9b090c925f8361f55> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/8f25e60b80820d82a668aac9e5695ce7f69e07c07cfec8e69dd289bf073c7502> .
<hash://sha256/8f25e60b80820d82a668aac9e5695ce7f69e07c07cfec8e69dd289bf073c7502> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/88604098f6be802f9c5f67d952d0f871a5ee8320396637bf4c6de446c4ac2a71> .
<hash://sha256/88604098f6be802f9c5f67d952d0f871a5ee8320396637bf4c6de446c4ac2a71> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/f764f10fbbe296d09281b4f40bf2b0ea47580ba1cc61760d08cc2fa2f21ebd8b> .
<hash://sha256/f764f10fbbe296d09281b4f40bf2b0ea47580ba1cc61760d08cc2fa2f21ebd8b> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/a1ebcdf0518b51fba5aa27ec48cd88c97cb7ae9611c5cda72042140fd2b3fe69> .
<hash://sha256/a1ebcdf0518b51fba5aa27ec48cd88c97cb7ae9611c5cda72042140fd2b3fe69> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/2cbcff4d9a2351c7d674586c98ead60b98a702f6efd076d1872add6767d19a2b> .
<hash://sha256/2cbcff4d9a2351c7d674586c98ead60b98a702f6efd076d1872add6767d19a2b> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/3c5b7da6af2b005286047b4fa422050ba6e77a801ae19e5daf515420a2138f11> .
<hash://sha256/3c5b7da6af2b005286047b4fa422050ba6e77a801ae19e5daf515420a2138f11> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/a5126b1faa67a6aff9cf0a44cc3f9cef8ceebd718f956104b00d76ff2826596e> .
<hash://sha256/a5126b1faa67a6aff9cf0a44cc3f9cef8ceebd718f956104b00d76ff2826596e> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/d4d815f6abedc7caaeea463f1c402cd0ec29bd654361f374b82c3191bd22a6d8> .
<hash://sha256/d4d815f6abedc7caaeea463f1c402cd0ec29bd654361f374b82c3191bd22a6d8> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/496504bf8a16116bf7eb8958e5e7393c205bd6b2b9f72907b63342a7ad86ff17> .
<hash://sha256/496504bf8a16116bf7eb8958e5e7393c205bd6b2b9f72907b63342a7ad86ff17> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/52db1da08a542846fb6ff12888613f827e5749a676fb09404d4604e0e0f9b060> .
<hash://sha256/52db1da08a542846fb6ff12888613f827e5749a676fb09404d4604e0e0f9b060> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/33aa945c31a1c27a71f92eaa15ea26e067df96c8bf835a62809fbba90c83ea44> .
<hash://sha256/33aa945c31a1c27a71f92eaa15ea26e067df96c8bf835a62809fbba90c83ea44> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/6294352d5ccc8fbdfc1c76270a2b3f8d46ed46549e040f6d326afc79b0f5b423> .
<hash://sha256/6294352d5ccc8fbdfc1c76270a2b3f8d46ed46549e040f6d326afc79b0f5b423> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/d792d43803ec4d32f46f28c084ed785b7b17f05472e87c40a5bf80a3d021aad0> .
<hash://sha256/d792d43803ec4d32f46f28c084ed785b7b17f05472e87c40a5bf80a3d021aad0> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/eab496b75f5850d66c956b6427ce85896157249108a2c129e2bc3450445fbde3> .
<hash://sha256/eab496b75f5850d66c956b6427ce85896157249108a2c129e2bc3450445fbde3> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/38c8e2e938e35225f986e6c2f2f34a2a3ebe44516d147674b948519bda5e428a> .
<hash://sha256/38c8e2e938e35225f986e6c2f2f34a2a3ebe44516d147674b948519bda5e428a> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/89731be3dc6051c2029f6151e4aa9907aae93ead135051b2104af6b6937b038d> .
<hash://sha256/89731be3dc6051c2029f6151e4aa9907aae93ead135051b2104af6b6937b038d> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/9516992632ebc1c57f1ecd440baeadbe067bfa908e806f6657c7ffeb8cae5f20> .
<hash://sha256/9516992632ebc1c57f1ecd440baeadbe067bfa908e806f6657c7ffeb8cae5f20> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/c9eb827d5cb6ed9d0b410567f34b8c7292683c03f6801e9a9463e5de7fd7f01c> .
<hash://sha256/c9eb827d5cb6ed9d0b410567f34b8c7292683c03f6801e9a9463e5de7fd7f01c> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/7907671a1e3a593703647db4afe5e4d4ad7bbb921a7ec4cdcd90362be87a3e51> .
<hash://sha256/7907671a1e3a593703647db4afe5e4d4ad7bbb921a7ec4cdcd90362be87a3e51> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/df15a7f9c89ce01ebd1dd8ae46a94e0b0720c366fd15e5115b20733f7dc0fe5d> .
<hash://sha256/df15a7f9c89ce01ebd1dd8ae46a94e0b0720c366fd15e5115b20733f7dc0fe5d> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/591e26c8fb4a7ae011efb85003a623dfe439f3db6a89791a94c78f3354c3705a> .
<hash://sha256/591e26c8fb4a7ae011efb85003a623dfe439f3db6a89791a94c78f3354c3705a> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/60a8281c1381b5c5800f74936a9bc424a2596ce42899507597a169e2a3216f69> .
<hash://sha256/60a8281c1381b5c5800f74936a9bc424a2596ce42899507597a169e2a3216f69> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/33117f15a9109fc0a785b7d7064ef6b2620784a814bacfc2137b82ade4f460fb> .
<hash://sha256/33117f15a9109fc0a785b7d7064ef6b2620784a814bacfc2137b82ade4f460fb> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/b0d7da5a5f0f2256064a0bc76ca866b38ff63a4d763784f480fc97df627b9378> .
<hash://sha256/b0d7da5a5f0f2256064a0bc76ca866b38ff63a4d763784f480fc97df627b9378> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/e32106e05889df80fd2361ea79f90b27d6dcefc8a2d79a09bf55e07672074abd> .
<hash://sha256/e32106e05889df80fd2361ea79f90b27d6dcefc8a2d79a09bf55e07672074abd> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/9d305ba87491d4f9c358996e1f48b5c8a60bcf66c3bcb369b41daeebe1a47c57> .
<hash://sha256/9d305ba87491d4f9c358996e1f48b5c8a60bcf66c3bcb369b41daeebe1a47c57> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/f0fae289b2a147a1614fbfccb708d1ddd894a072c9ab30aedd055f88ef6c1f03> .
<hash://sha256/f0fae289b2a147a1614fbfccb708d1ddd894a072c9ab30aedd055f88ef6c1f03> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/3790cf9e4b55ef5f03f7cb4a8eeb22cf7547611d09d9c84caf59cc546e28d952> .
<hash://sha256/3790cf9e4b55ef5f03f7cb4a8eeb22cf7547611d09d9c84caf59cc546e28d952> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/6402bb05f32baed1b8253fd6dc03b784d3f71cc842576ba27051840fb0ddeceb> .
<urn:uuid:0659a54f-b713-4f86-a917-5be166a14110> <http://purl.org/pav/hasVersion> <hash://sha256/6402bb05f32baed1b8253fd6dc03b784d3f71cc842576ba27051840fb0ddeceb> .
```
