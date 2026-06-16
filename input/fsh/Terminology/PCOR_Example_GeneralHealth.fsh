// ─────────────────────────────────────────────────────────────────────────────
// CodeSystem + ValueSet für die 5-stufige Selbsteinschätzung der allgemeinen
// Gesundheit ("Excellent / Very good / Good / Fair / Poor") im Beispiel-
// Questionnaire. Lokal definiert, weil dieser Bogen rein illustrativ ist.
// Für ein produktives Instrument würde man hier z. B. die offizielle LOINC-
// Antwortliste LL5337-2 oder die SDC-Beispielcodes referenzieren.
// ─────────────────────────────────────────────────────────────────────────────

CodeSystem: PcorExampleGeneralHealthCS
Id: pcor-example-general-health
Title: "PCOR Example General Health Self-Assessment"
Description: "Lokales CodeSystem mit der 5-stufigen Selbsteinschätzung der allgemeinen Gesundheit. Dient ausschließlich dem Beispiel-Questionnaire."
* ^url = "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-example-general-health"
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* ^content = #complete
* #excellent  "Excellent"   "Ausgezeichneter Gesundheitszustand"
* #very-good  "Very good"   "Sehr guter Gesundheitszustand"
* #good       "Good"        "Guter Gesundheitszustand"
* #fair       "Fair"        "Weniger guter Gesundheitszustand"
* #poor       "Poor"        "Schlechter Gesundheitszustand"

ValueSet: PcorExampleGeneralHealthVS
Id: pcor-example-general-health
Title: "PCOR Example General Health Self-Assessment"
Description: "ValueSet, das alle 5 Stufen der Selbsteinschätzung der allgemeinen Gesundheit aus dem Beispiel-Questionnaire abdeckt."
* ^url = "https://bih-cei.github.io/PCOR-MII/ValueSet/pcor-example-general-health"
* ^status = #draft
* ^experimental = true
* include codes from system PcorExampleGeneralHealthCS
