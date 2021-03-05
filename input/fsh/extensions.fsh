Extension: MunicipalityCodes
Id: dk-core-municipalityCodes
Title: "Danish Core Municipality codes"
//* ^status = #draft
* ^context[0].type = #element
* ^context[0].expression = "Patient.address"
* ^context[1].type = #element
* ^context[1].expression = "Address"
* value[x] only CodeableConcept
* value[x].coding from MunicipalityCodes (required)

Extension: RegionalSubDivisionCodes
Id: dk-core-RegionalSubDivisionCodes
Title: "Danish Core Regional Sub Division Codes Extension"
//* ^status = #draft
* ^context[0].type = #element
* ^context[0].expression = "Address"
* ^context[1].type = #element
* ^context[1].expression = "Patient.address"
* value[x] only CodeableConcept
* value[x].coding from RegionalSubdivisionCodes (required)