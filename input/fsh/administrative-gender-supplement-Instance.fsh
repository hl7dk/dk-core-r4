Instance: administrative-gender-supplement
InstanceOf: $shareablecodesystem
Description: "CodeSystem supplement with danish translations for administrative gender"
Usage: #definition
* url = "http://hl7.dk/fhir/core/CodeSystem/administrative-gender-supplement"
* version = "0.9.0"
* name = "AdministrativeGenderDkSupplement"
* status = #draft
* experimental = true
* date = "2020-07-27"
* publisher = "HL7 Denmark"
* contact[0].name = "HL7 Denmark"
* contact[0].telecom[0].system = #url
* contact[0].telecom[0].value = "https://www.hl7.dk/"
* description = "CodeSystem supplement with danish translations for administrative gender"
* jurisdiction[0] = urn:iso:std:iso:3166#DK
* copyright = "CC-BY-SA-4.0"
* content = #supplement
* supplements = "http://hl7.org/fhir/administrative-gender"
* concept[0].code = #male
* concept[0].designation[0].language = #da
* concept[0].designation[0].value = "Mand"
* concept[1].code = #female
* concept[1].designation[0].language = #da
* concept[1].designation[0].value = "Kvinde"
* concept[2].code = #other
* concept[2].designation[0].language = #da
* concept[2].designation[0].value = "Andet"
* concept[3].code = #unknown
* concept[3].designation[0].language = #da
* concept[3].designation[0].value = "Ukendt"