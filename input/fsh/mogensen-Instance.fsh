Instance: mogensen
InstanceOf: DkCorePatient
Title: "Example of valid patient with danish marital status"
Description: "Example of valid patient with danish marital status"
Usage: #example
* identifier[0].system = "urn:oid:1.2.208.176.1.2"
* identifier[0].value = "1112640001"
* name[0].use = #official
* name[0].family = "Mogensen"
* name[0].given[0] = "Jan"
* name[0].prefix[0] = "Mr"
* gender = #male
* birthDate = "1964-12-11"
* maritalStatus = $dk-marital-status#P "Registreret partnerskab"