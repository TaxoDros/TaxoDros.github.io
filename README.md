# TaxoDros - The Database on Taxonomy of Drosophilidae

Compiled by:
Gerhard Bächli 
Universität Zürich-Irchel, Institut für Evolutionsbiologie und Umweltforschung, Zürich, Switzerland.
https://orcid.org/0000-0002-8402-176X   
covers: Asteiidae Aulacigastridae Camillidae Cryptochaetidae Curtonotidae Diastatidae Periscelididae Xenasteiidae Drosophilidae   
## Citation

Bächli, G. (2024) TaxoDros: The Database on Taxonomy of Drosophilidae. 2024/9. Also available from: [https://www.taxodros.uzh.ch/](https://www.taxodros.uzh.ch/). https://doi.org/10.5281/zenodo.13841002 hash://md5/b3ead19ea211a66e4f59a6842e097c7b hash://sha256/a6e757007c04215cafa537c09a06a0e8a68be70cbc9c965c857c7a9058ceeb16  

This repository contains the TaxoDros source data for [Taxodros](https://www.taxodros.uzh.ch/): The database on Taxonomy of Drosophilidae as provided by Gerhard Bächli, the database maintainer, in August/September 2024.

TaxoDros forms the basis of the [Zenodo TaxoDros Community](https://zenodo.org/communities/taxodros). See also [https://zenodo.org/communities/taxodros/about](https://zenodo.org/communities/taxodros/about) .   

## Index Files 

| filename | description (click for details) | signature |
| --- | --- | --- |
| ALLORTE.TEXT | location information | hash://md5/9f31fe295591c47b7d82e9871fa0db85 |
| ASHBURN.TEXT | journal names | hash://md5/225fa584ea602b27de1bcf9ac7edcf68 |
| DROS3.TEXT | reference descriptors | hash://md5/9ae8095ab8fee928b4d0b78fbf937ba0 |
| DROS5.TEXT | reference details | hash://md5/1e07c7a2567d0431f94e799f5e3db252 |
| KEYWORDS.TEXT | descriptors and country names | hash://md5/a115d0559dfd3ea75b758fee71246775 |
| README.md | this file |   |
| SPECIES-LIST_GE_SG | all Drosophilid-epithets (species, infra-specific names, such as “melanogaster”), including the respective genus and subgenus name | hash://md5/be40d900cf2651cb84e0c1efeca04078 |
| SPECIES-LIST_GR_SR | (species-)groups and subgroups | hash://md5/0a9ebec3f9e7232de32984968323b0c2 |
| SPECIES-LIST_GR_SR_SC | (species-)group, subgroup and species-complex | hash://md5/f0f08d3680b7c2aedede94af3ae17b52 |
| SYST.QE.TEXT | copy of the SYST.TEXT as a mere text-file without header | hash://md5/4609142e8ed4994c673316c280e20af5 |
| SYST.TEXT | all systematic relationships, including synonymy | hash://md5/5f4f55df4ba69a2c4c251b5c3f4166dc |
| TAXA_LIST | all taxa (as abbreviation), for species with the currently accepted genus name, and the actual bibliographic reference | hash://md5/0ef01d88281c8a0adff9a974a2087338 |

## PDF Files

TaxoDros keeps a library of associated pdfs. See [pdf](pdf/) for more information.

### History 
Version 20240112: Added DOI to .K in DROS5.TEXT and SYST.QE.TEXT
Version 20240926: Scheduled update of index files with new/updated pdfs.

## Index File Details

Details based on description provided by Bächli in January 2024.

The TaxoDros Index includes 12 files. With the exception of SYST.TEXT all files are strict size-limited (72 Chars, some lines with continuations in DROS5.TEXT). The font used is Monaco, a fix-length font on Mac, which in a text editor makes the data looking (pseudo)tabellaric. The following information is important to understand the individual files.

### ALLORTE.TEXT

This file includes all collection sites in alphabetical order, with geographic coordinates, first geographic longitude, then geographic latitude („-„ at the end means rather exact data) und die Swiss coordinates [This is used for Swiss Topo maps], followed by the (abbreviated) name of the country. The abbreviations are explained and expanded in KEYWORDS.TEXT and used in Taxodros online.


### ASHBURN.TEXT

This text-file containes the names of the journals:
	*s = abbreviation of names used in DROS5.TEXT
	*u = full (formal) names of journals


### DROS3.TEXT

This text-file includes the descriptors (keywords) used for each source. Each segment has two tags: .TEXT; and .DESC;. The tag .TEXT; includes first the source identification and may be followed by collecting localities (each beginning with =e=…). The tag .DESC; is followed by the “short name” of the taxon (always in first place) followed by the descriptors (key words), The keywords used are explained in KEYWORDS.TEXT. With the exception of the tags, all the following lines are in lower case. Addional “short names” can follow in each segment, in case that the keywords also apply. The keyword “descr” is also used in connection with the keywords fig, egg, larv, pup. Multiple segments are used for each source, when needed.

Example (copy of two segments in DROS3.TEXT:

```
.TEXT;	tag
acurio et al., 2013	(source identification)
=e=san jose beach	(collection site)
.DESC;	tag
machalilla	(“short name”)
descr		keyword, followed by additional 
			descriptors)
fig		
malex
malin
femex
femin
typemat
typeloc
loc
distr$
Ecuador	country of collections site
comp
affil
taxon
phyl
egg
pup
biol
.TEXT;	tag
acurio et al., 2013	(source information)
.DESC;	tag
atalaia-gr	(“short name“)
descr	(keyword)
taxaincl	(keyword)
affil	(keyword)
taxon	(keyword)
phyl	(keyword)
```

### DROS5.TEXT

This text-file contains segments with the bibliographic details for each source of information. Each segment begins with the tag .TEXT; strictly followed by the following tags: .A , .J , .S , .Z or .Z., .K , .P . All tags are fix length (max. 72 chars), excepting the tags .A and .S which may have consecutive lines without new tags.

The following is important:
 * There is only one segment for each source of information.
 * Excepting the source identification (in lowercase), all tags may contain text with the usual capitalization.
 * The lines “source identification” in DROS3.TEXT and DROS5.TEXT are in exact match, connecting the two files.

Explanation of the tags used within each segment:

```
.TEXT;	Segment delimiter
.A 		source identification
.J 		year of publication
.S 		title
.Z		Journal name (abbreviated), volume(issue):first 
		page-last page
		or
.Z.		for Books: editor etc.
.K 		comments: library codes, pdf quality, DOI
.P 		name of respective pdf, if available
```

Example: (copy of segment in DROS5.TEXT)

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
.K ocr++ / DOI:10.1603.AN13028
.P Acurio et al., 2013
```

### KEYWORDS.TEXT

This text-file includes the descriptors (keywords) used in DROS3.TEXT and the (abbreviated) names of countries used in ALLORTE.TEXT and DROS5.TEXT, all used in online TAXODROS.

### SPECIES-List_GE_SG

In this text-file, all taxon names (short names, epithets) are listed with their affiliation to genus and subgenus.

### SPECIES-List_GR_SG

In this text-file, all taxon names (short names, epithets) are listed with their affiliation to genus, subgenus, specie-groups and specie-subgroups.

### SPECIES-List_GR_SR_SC

In this text-file, all taxon names (short names, epithets) are listed with their affiliation to genus, subgenus, species-group, species-subgroup and species-complex.

### SYST.TEXT

This is a XLS-file in text/tab format. It includes all systematic relationships, including comments on synonymy and homonymy, etc., with tags for sorting. 
Some tags:

```
.KF 	“short name“, used in DROS3.TEXT (e.g., atterima) 
        So called homonyms are separated by nummers and 
        uniquely identified (e.g., attenuata 1).
.VN 	the currently accepted name (taxonomy). (e.g., aterrima)
.FU 	the original form of the name, with author(s), etc.,. (e.g., atterima Patterson and Wheeler, 1949:218)
.OR 	the original generic affiliation of the name (e.g., Drosophila)
.AU 	the original source to link with DROS5.TEXT (e.g., patterson & wheeler, 1949)

.FA 	family (e.g., Drosophilidae)
.SF     subfamily (e.g., Drosophilinae)
.TR     tribe (e.g., Drosophilini)
.ST     subtribe (e.g., Drosophilina)
.IT     infratribe (e.g., Drosophiliti)
.GE     genus (e.g., Scaptomyza)
.SG     subgenus (e.g., Macroscaptomyza)
.GR     species group (e.g., mesophragmatica)
.SR     species subgroup (e.g., mesophragmatica)
.SC     species complex (e.g., altissima)
.SS     subspecies (e.g., avittata)

.CO     any comments (status, etc.) 
```

### SYST.QE.TEXT

This is a text-file, actually an exact copy of the file SYST.TEXT without connection with xls.

### TAXA-LIST

This text-file lists all “short names” with actual genus affiliation and author(s) combination.


### TAXODROS
The link [https://www.taxodros.uzh.ch](https://www.taxodros.uzh.ch) allows search with keywords, search for distribution and contains lists for taxonomic overviews.





## References 

### Elliott2020 
Elliott M.J., Poelen J.H., Fortes J.A.B. (2020). Toward Reliable Biodiversity Dataset References. *Ecological Informatics*. https://doi.org/10.1016/j.ecoinf.2020.101132 [hash://sha256/136c3c1808bcf463bb04b11622bb2e7b5fba28f5be1fc258c5ea55b3b84f482c](https://linker.bio/hash://sha256/136c3c1808bcf463bb04b11622bb2e7b5fba28f5be1fc258c5ea55b3b84f482c) 

### Elliott2023
Elliott M.J., Poelen, J.H. & Fortes, J.A.B. (2023) Signing data citations enables data verification and citation persistence. *Sci Data*. https://doi.org/10.1038/s41597-023-02230-y [hash://sha256/f849c870565f608899f183ca261365dce9c9f1c5441b1c779e0db49df9c2a19d](https://linker.bio/hash://sha256/f849c870565f608899f183ca261365dce9c9f1c5441b1c779e0db49df9c2a19d) 

 
## Provenance 

This section details the provenance of the TaxoDros index files and associated pdf files. 

### for humans

The TaxoDros index files and associated pdfs where provided by Gerhard Bächlin January 2024. Following, the index files and associated pdf files were packaged, signed, and versioned using Preston ([Elliott et al. 2020](#elliott2020), [Elliott et al. 2023](#elliott2023)). 

The TaxoDros index files (e.g., DROS5.TEXT, DROS3.TEXT) were versioned and packaged using a workflow outlined in the [bin/package.sh](bin/package.sh) script.

This versioning workflow has the following steps:

1. list all TaxoDros index files and their pdf file associates.
2. track (or version) these files using [Preston](https://github.com/bio-guoda/preston)
3. translating (or transforming) TaxoDros index files to line-json using the ```preston stream-taxodros``` command. 
4. annotating the line-json with references to their associated pdf content (see e.g., [bin/translate-terms.sh](bin/translate-terms.sh)
5. attempt to publish the resulting annotated records using the ```preston zenodo``` command (see e.g., https://github.com/bio-guoda/preston/releases/tag/0.8.2)

With steps 1-2, a TaxoDros version is created. 

Following, Preston can be used to deposit the records, and their associated pdf files, in Zenodo.

This publication workflow continues after step 2.

If a new version of TaxoDros is needed, run [bin/package.sh](bin/package.sh) to create a TaxoDros corpus version.

Link, stream and deposit a versioned TaxoDros corpus into Zenodo by running [bin/stream.sh](bin/stream.sh) using:

```
bin/stream.sh\
 | preston zenodo --endpoint https://sandbox.zenodo.org --access-token "[add token]"
```

In the package.sh and stream.sh workflow scripts, you'll find Preston comments alike: ```preston track``` for tracking an versioned the listed content in ```ls -1```, ```preston taxodros-stream``` translates TaxoDros index files into line-json.

## for machines

The information below is intended for machines to increase the machine readability of this publication. 

```preston head``` produced the provenance anchor of this version:

```
hash://sha256/a6e757007c04215cafa537c09a06a0e8a68be70cbc9c965c857c7a9058ceeb16
```

```
preston\
 history\
 --anchor hash://sha256/a6e757007c04215cafa537c09a06a0e8a68be70cbc9c965c857c7a9058ceeb16\
 --remote https://linker.bio,https://softwareheritage.org
```

yields 

```
<hash://sha256/a6e757007c04215cafa537c09a06a0e8a68be70cbc9c965c857c7a9058ceeb16> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/8de04aee9df5564648414dfe7d6a2fd147c26f211ceda439ccc79468aedae44a> .
<hash://sha256/8de04aee9df5564648414dfe7d6a2fd147c26f211ceda439ccc79468aedae44a> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/ca86d74b318a334bddbc7c6a387a09530a083b8617718f5369ad548744c602d3> .
<hash://sha256/ca86d74b318a334bddbc7c6a387a09530a083b8617718f5369ad548744c602d3> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/1953f4ef164ae47fb22a8ee8bba1d95fa17463a38432d4e48b9e9cf0f91dadcf> .
<hash://sha256/1953f4ef164ae47fb22a8ee8bba1d95fa17463a38432d4e48b9e9cf0f91dadcf> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/8c9cb7b31a0a5aec41be569199e3c2aa5f38fff604204914a0cae0a6239e4769> .
<hash://sha256/8c9cb7b31a0a5aec41be569199e3c2aa5f38fff604204914a0cae0a6239e4769> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/e05466f33c755f11bd1c2fa30eef2388bf24ff7989931bae1426daff0200af19> .
<hash://sha256/e05466f33c755f11bd1c2fa30eef2388bf24ff7989931bae1426daff0200af19> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/dc11cb282d103aa4541c8b406502ab5721bfc41edb662b7b44ef91a76b60dfb8> .
<hash://sha256/dc11cb282d103aa4541c8b406502ab5721bfc41edb662b7b44ef91a76b60dfb8> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/3e41eec4c91598b8a2de96e1d1ed47d271a7560eb6ef350a17bc67cc61255302> .
<hash://sha256/3e41eec4c91598b8a2de96e1d1ed47d271a7560eb6ef350a17bc67cc61255302> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://sha256/ee72b70df451082289193cdd8ff420495b3a24d230880613f9adddc71380fee6> .
<urn:uuid:0659a54f-b713-4f86-a917-5be166a14110> <http://purl.org/pav/hasVersion> <hash://sha256/ee72b70df451082289193cdd8ff420495b3a24d230880613f9adddc71380fee6> .
```

Similarly, in md5 hash space:

```preston head --algo md5``` yielded:

```
hash://md5/b3ead19ea211a66e4f59a6842e097c7b
```

with

```
preston\
 history\
 --anchor hash://md5/b3ead19ea211a66e4f59a6842e097c7b\
 --remote https://linker.bio,https://zenodo.org\
 --algo md5
```

produced:

```
<hash://md5/b3ead19ea211a66e4f59a6842e097c7b> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://md5/b2c36e8284ac51b7a65dfc97c0ef0f74> .
<hash://md5/b2c36e8284ac51b7a65dfc97c0ef0f74> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://md5/26a67012dde325cf2a3a058cc2f9c1b8> .
<hash://md5/26a67012dde325cf2a3a058cc2f9c1b8> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://md5/40c28eb355268787eca4eba676a6fdf6> .
<hash://md5/40c28eb355268787eca4eba676a6fdf6> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://md5/3793ab3633d3e94a40d3ab442b6cff7d> .
<hash://md5/3793ab3633d3e94a40d3ab442b6cff7d> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://md5/4fa9eeed1c8cff2490483a48c718df02> .
<hash://md5/4fa9eeed1c8cff2490483a48c718df02> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://md5/b8c3a1e1acdfaf8e0bb3c69d220709d8> .
<hash://md5/b8c3a1e1acdfaf8e0bb3c69d220709d8> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://md5/d68c923002c43271cee07ba172c67b0b> .
<hash://md5/d68c923002c43271cee07ba172c67b0b> <http://www.w3.org/ns/prov#wasDerivedFrom> <hash://md5/1037a9c831005710dc9bf14ee9a2e053> .
<urn:uuid:0659a54f-b713-4f86-a917-5be166a14110> <http://purl.org/pav/hasVersion> <hash://md5/1037a9c831005710dc9bf14ee9a2e053> .
```
