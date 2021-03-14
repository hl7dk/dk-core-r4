Invariant: uuid
Description: "LPR3 episode of care identifiers must conform to a UUID"
Severity: #error
Expression: "matches('[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}')"