Invariant: authorization-id-format
Description: "Authorization ID consists of exactly 5 consonants and Y and or numbers in any order"
Severity: #error
Expression: "matches('^([b-df-hj-np-tv-zB-DF-HJ-NP-TV-Z0-9]){5}$')"

Invariant: min-digits-sor
Description: "SOR Identifiers are at minimum 15 digits long. See https://sundhedsdatastyrelsen.dk/-/media/sds/filer/rammer-og-retningslinjer/organisationsregistrering/adgang-til-sor/info-om-opbygningen-af-sor-ider.pdf"
Severity: #error
Expression: "matches('^([0-9]){15,}$')"

Invariant: cpr
Description: "Requirement of danish civil registration numbers"
Severity: #error
Expression: "matches('^(?:(?:31(?:0[13578]|1[02])|(?:30|29)(?:0[13-9]|1[0-2])|(?:0[1-9]|1[0-9]|2[0-8])(?:0[1-9]|1[0-2]))[0-9]{2}[0-9]|290200[4-9]|2902(?:(?!00)[02468][048]|[13579][26])[0-3])[0-9]{3}$')"

Invariant: marital-status-unknown-usage
Description: "Status in maritalStatus is unknown in a danish context. Consider mapping the value to UNK"
Severity: #warning
Expression: "maritalStatus.coding.where(code = 'P' and system = 'http://terminology.hl7.org/CodeSystem/v3-MaritalStatus').empty() or maritalStatus.coding.where(code = 'A' and system = 'http://terminology.hl7.org/CodeSystem/v3-MaritalStatus').empty()"

Invariant: uuid
Description: "LPR3 episode of care identifiers must conform to a UUID"
Severity: #error
Expression: "matches('[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}')"