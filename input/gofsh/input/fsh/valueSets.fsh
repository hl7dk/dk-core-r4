ValueSet: MunicipalityCodes
Id: dk-core-MunicipalityCodes
Description: "Municipality codes used in Denmark"
* ^version = "0.9.0"
* ^status = #draft
* ^experimental = true
* ^date = "2019-02-02T00:00:00+00:00"
* ^publisher = "HL7 Denmark"
* ^contact[0].name = "HL7 Denmark"
* ^contact[0].telecom[0].system = #url
* ^contact[0].telecom[0].value = "https://www.hl7.dk/"
* ^jurisdiction[0] = urn:iso:std:iso:3166#DK
* ^copyright = "CC-BY-SA-4.0"
* include codes from system $dk-core-municipality-codes
* include codes from system $dk-core-municipality-codes-greenland

ValueSet: RegionalSubdivisionCodes
Id: dk-core-RegionalSubDivisionCodes
Description: "Subdivision codes (Regional codes) used in Denmark"
* ^version = "0.9.0"
* ^status = #draft
* ^experimental = true
* ^date = "2019-02-02"
* ^publisher = "HL7 Denmark"
* ^contact[0].name = "HL7 Denmark"
* ^contact[0].telecom[0].system = #url
* ^contact[0].telecom[0].value = "https://www.hl7.dk/"
* ^jurisdiction[0] = urn:iso:std:iso:3166#DK
* ^copyright = "CC-BY-SA-4.0"
* include codes from system $dk-core-regional-subdivision-codes

ValueSet: DK Valid Identifier
Id: dk-core-cpr-identifier-system
Title: "CPR Identifier"
Description: "This value set defines the set of codes that can be used to identify the danish CPR system."
* ^version = "0.9.0"
* ^status = #active
* ^experimental = false
* ^date = "2019-11-01T09:29:23+11:00"
* ^publisher = "HL7 Denmark"
* ^contact[0].name = "HL7 Denmark"
* ^contact[0].telecom[0].system = #url
* ^contact[0].telecom[0].value = "https://www.hl7.dk/"
* ^jurisdiction[0] = urn:iso:std:iso:3166#DK
* ^copyright = "CC-BY-SA-4.0"
* $dk-core-cpr-identifier-system#urn:oid:1.2.208.176.1.2 "OID representation of CPR"