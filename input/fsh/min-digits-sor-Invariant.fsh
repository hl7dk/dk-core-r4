Invariant: min-digits-sor
Description: "SOR Identifiers are at minimum 11 digits long. See https://sundhedsdatastyrelsen.dk/-/media/sds/filer/rammer-og-retningslinjer/organisationsregistrering/adgang-til-sor/info-om-opbygningen-af-sor-ider.pdf"
Severity: #error
Expression: "matches('^([0-9]){11,}$')"