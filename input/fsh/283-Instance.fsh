Instance: 283
InstanceOf: DkCorePatient
Title: "Example of valid patient with full address"
Description: "Example of valid patient with full address"
Usage: #example
* identifier[0].use = #official
* identifier[0].system = "urn:oid:1.2.208.176.1.2"
* identifier[0].value = "0506504005"
* name[0].use = #official
* name[0].family = "Lind"
* name[0].given[0] = "Torsteinn"
* gender = #male
* birthDate = "1950-06-04"
* address[0].extension[0].url = "http://hl7.dk/fhir/core/StructureDefinition/dk-core-municipalityCodes"
* address[0].extension[0].valueCodeableConcept = $dk-core-municipality-codes#0330
* address[0].extension[1].url = "http://hl7.dk/fhir/core/StructureDefinition/dk-core-RegionalSubDivisionCodes"
* address[0].extension[1].valueCodeableConcept = $dk-core-regional-subdivision-codes#DK-85
* address[0].use = #home
* address[0].type = #postal
* address[0].line[0] = "Nordre Ringgade 3"
* address[0].city = "Frederiksberg C"
* address[0].postalCode = "8000"
* address[0].country = "DK"
* maritalStatus = $v3-MaritalStatus#U "unmarried"
* generalPractitioner[0].identifier.system = "urn:oid:1.2.208.176.1.4"
* generalPractitioner[0].identifier.value = "79641000016006"
* generalPractitioner[0].display = "Peter Sønderby"