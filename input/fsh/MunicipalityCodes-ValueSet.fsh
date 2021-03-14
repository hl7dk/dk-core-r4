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