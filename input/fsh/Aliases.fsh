Alias: $SCT = http://snomed.info/sct
Alias: $LOINC = http://loinc.org
Alias: $UCUM = http://unitsofmeasure.org
Alias: $questionnaire-item-control = http://hl7.org/fhir/questionnaire-item-control
Alias: $designNote = http://hl7.org/fhir/StructureDefinition/designNote
Alias: $translation = http://hl7.org/fhir/StructureDefinition/translation
Alias: $administrative-gender = http://hl7.org/fhir/administrative-gender

// ─────────────────────────────────────────────────────────────────────────────
// Profil-Canonicals für meta.profile — IMMER versionsgepinnt (url|version).
// Die Version MUSS der in sushi-config.yaml deklarierten Dependency entsprechen,
// sonst kann der Validator das Profil nicht auflösen und prüft es nicht:
//   de.gematik.isik: 5.1.1
//   de.medizininformatikinitiative.kerndatensatz.pros: 2026.6.0
// Bei einem Dependency-Bump müssen diese Pins mitgezogen werden.
// ─────────────────────────────────────────────────────────────────────────────
Alias: $isik-formulardefinition = https://gematik.de/fhir/isik/StructureDefinition/ISiKFormularDefinition
Alias: $isik-formulardaten = https://gematik.de/fhir/isik/StructureDefinition/ISiKFormularDaten
Alias: $mii-pro-questionnaire = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire
Alias: $mii-pro-questionnaire-response = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response

// Extension-URLs (nicht versionsgepinnt — Extension-Canonicals werden ohne
// Version referenziert, die Auflösung erfolgt über die Dependency).
Alias: $display = http://hl7.org/fhir/StructureDefinition/display
Alias: $mii-pro-capabilities = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-ex-pro-questionnaire-capabilities
