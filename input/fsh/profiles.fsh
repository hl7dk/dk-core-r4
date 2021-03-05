Profile: AuthorizationIdentifier
Parent: Identifier
Id: AuthorizationIdentifier
//* ^url = "http://hl7.dk/fhir/core/StructureDefinition/dk-core-authorization-identifier"
* ^status = #draft
* system 1..
* system = "https://autregweb.sst.dk" (exactly)
* value 1..
* value obeys authorization-id-format
* value ^maxLength = 5
// WARNING: The constraint index in the following rule (e.g., constraint[0]) may be incorrect.
// Please compare with the constraint array in the original definition's snapshot and adjust as necessary.
* value ^constraint[0].source = "https://stps.dk/da/autorisation/om-autorisationer/autorisations-id/"

Profile: SORIdentifier
Parent: Identifier
Id: dk-core-sor-identifier
* ^status = #draft
* use = #official (exactly)
* system 1..
* system = "urn:oid:1.2.208.176.1.1" (exactly)
* value 1..
* value obeys min-digits-sor
// WARNING: The constraint index in the following rule (e.g., constraint[0]) may be incorrect.
// Please compare with the constraint array in the original definition's snapshot and adjust as necessary.
* value ^constraint[0].requirements = "SOR Identifiers are at minimum 15 digits long"

Profile: DkCoreCprIdentifier
Parent: Identifier
Id: dk-core-cpr-identifier
Title: "Danish Core Central Person Register Extension"
Description: "This structure holds the danish *Central Person Register* (CPR) identifier"
* ^version = "latest"
* ^status = #draft
* ^date = "2019-11-02"
* ^publisher = "ehealth.sundhed.dk"
* use = #official (exactly)
* type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203" (exactly)
* type.coding.code = #NNDNK (exactly)
* system 1..
* system from $dk-core-cpr-identifier-system_1 (required)
* value 1..
* value obeys cpr
* value ^maxLength = 10
// WARNING: The constraint index in the following rule (e.g., constraint[0]) may be incorrect.
// Please compare with the constraint array in the original definition's snapshot and adjust as necessary.
* value ^constraint[0].requirements = "Requirement of danish civil registration numbers"
// WARNING: The constraint index in the following rule (e.g., constraint[0]) may be incorrect.
// Please compare with the constraint array in the original definition's snapshot and adjust as necessary.
* value ^constraint[0].source = "https://cpr.dk/cpr-systemet/opbygning-af-cpr-nummeret/#:~:text=5%20%2D%206%20position%20angiver%20personens,i%20personnummeret%20angiver%20personens%20k%C3%B8n."
* value ^mustSupport = false

Profile: DkCorePatient
Parent: Patient
Id: dk-core-patient
Title: "Danish Core Patient Profile"
* ^version = "1.0.0"
* ^date = "2020-02-04"
* obeys marital-status-unknown-usage
// WARNING: The constraint index in the following rule (e.g., constraint[0]) may be incorrect.
// Please compare with the constraint array in the original definition's snapshot and adjust as necessary.
* . ^constraint[0].requirements = "Marital status is legally unknown in Denmark"
// WARNING: The constraint index in the following rule (e.g., constraint[0]) may be incorrect.
// Please compare with the constraint array in the original definition's snapshot and adjust as necessary.
* . ^constraint[0].source = "https://cpr.dk/borgere/hvad-staar-der-om-mig-i-cpr-registerindsigt/hvad-og-hvem-er-registreret-i-cpr-og-hvem-opdaterer-oplysninger-om-dig-i-cpr/"
* identifier 1.. MS
* identifier ^slicing.discriminator[0].type = #value
* identifier ^slicing.discriminator[0].path = "system"
* identifier ^slicing.rules = #open
* identifier contains cpr ..1
* identifier[cpr] only DkCoreCprIdentifier
* name 1.. MS
* name ^slicing.discriminator[0].type = #value
* name ^slicing.discriminator[0].path = "use"
* name ^slicing.rules = #open
* name contains official ..1
* name[official].use = #official (exactly)
* name[official].family 1..
* address ^definition = "An address for the individual. Danish addresses must comply with directions issued by https://dawa.aws.dk/ and underlying authorities"
//* address.extension ^slicing.discriminator[0].type = #value
//* address.extension ^slicing.discriminator[0].path = "url"
//* address.extension ^slicing.rules = #open
* address.extension contains MunicipalityCodes named municipalityCode ..1 and RegionalSubDivisionCodes named regionalSubDivisionCodes ..1
* address.extension[municipalityCode] only MunicipalityCodes
* address.extension[municipalityCode] ^sliceName = "municipalityCode"
* address.extension[regionalSubDivisionCodes] only RegionalSubDivisionCodes
* address.extension[regionalSubDivisionCodes] ^sliceName = "regionalSubDivisionCodes"
* maritalStatus from $dk-marital-status_1 (extensible)
* generalPractitioner ^slicing.discriminator[0].type = #value
* generalPractitioner ^slicing.discriminator[0].path = "identifier.system"
* generalPractitioner ^slicing.rules = #open
* generalPractitioner contains referencedSORUnit 0..*
* generalPractitioner[referencedSORUnit].identifier only SORIdentifier

Profile: Lpr3Identifier
Parent: Identifier
Id: lpr3-Identifier
* ^status = #draft
* system 1..
* system = "https://www.esundhed.dk/Registre/Landspatientsregisteret" (exactly)
* value 1..
* value obeys uuid
// WARNING: The constraint index in the following rule (e.g., constraint[0]) may be incorrect.
// Please compare with the constraint array in the original definition's snapshot and adjust as necessary.
* value ^constraint[0].requirements = "LPR3 episode of care identifiers must conform to a UUID"
// WARNING: The constraint index in the following rule (e.g., constraint[0]) may be incorrect.
// Please compare with the constraint array in the original definition's snapshot and adjust as necessary.
* value ^constraint[0].source = "https://scandihealth.github.io/lpr3-docs/"