ValueSet: DK_Valid_Identifier
Id: dk-core-cpr-identifier-system
Title: "CPR Identifier"
Description: "This value set defines the set of codes that can be used to identify the danish CPR system."
* ^name = "DK Valid Identifier"
* ^version = "4.0.1"
* ^status = #active
* ^experimental = false
* ^date = "2019-11-01T09:29:23+11:00"
* $dk-core-cpr-identifier-system#urn:oid:1.2.208.176.1.2 "OID representation of CPR"

ValueSet: MunicipalityCodes
Id: dk-core-MunicipalityCodes
Description: "Municipality codes used in Denmark"
* ^version = "latest"
* ^status = #draft
* ^experimental = true
* ^date = "2019-02-02T00:00:00+00:00"
* ^publisher = "ehealth.sundhed.dk"
* include codes from system $dk-core-municipality-codes
* include codes from system $dk-core-municipality-codes-greenland

ValueSet: RegionalSubdivisionCodes
Id: dk-core-RegionalSubDivisionCodes
Description: "Subdivision codes (Regional codes) used in Denmark"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2019-02-02"
* ^publisher = "ehealth.sundhed.dk"
* ^jurisdiction[0] = urn:iso:std:iso:3166-2:DK-2#ISO
* include codes from system $dk-core-regional-subdivision-codes