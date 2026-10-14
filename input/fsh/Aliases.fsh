Alias: $SCT = http://snomed.info/sct
Alias: $LOINC = http://loinc.org
Alias: $UCUM = http://unitsofmeasure.org
Alias: $questionnaire-item-control = http://hl7.org/fhir/questionnaire-item-control
Alias: $designNote = http://hl7.org/fhir/StructureDefinition/designNote
Alias: $translation = http://hl7.org/fhir/StructureDefinition/translation
Alias: $administrative-gender = http://hl7.org/fhir/administrative-gender

// ─────────────────────────────────────────────────────────────────────────────
// Profil-Canonicals für meta.profile — BEWUSST OHNE Versionspin (Konvention
// aus dem Bereitstellungs-Review, #26): Die Auflösung läuft über die in
// sushi-config.yaml deklarierte Paketversion (de.gematik.isik 5.1.1,
// kerndatensatz.pros 2026.7.0). Ein Pin, der von der Dependency abweicht, ist
// für den Validator unauflösbar und lässt die Instanz ungeprüft (so geschehen
// mit |2026.4.1). Wer pinnt, pinnt zentral hier und zieht bei jedem Bump nach.
// ─────────────────────────────────────────────────────────────────────────────
Alias: $isik-formulardefinition = https://gematik.de/fhir/isik/StructureDefinition/ISiKFormularDefinition
Alias: $isik-formulardaten = https://gematik.de/fhir/isik/StructureDefinition/ISiKFormularDaten
Alias: $mii-pro-questionnaire = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire
Alias: $mii-pro-questionnaire-response = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response

// Extension-URLs (nicht versionsgepinnt — Extension-Canonicals werden ohne
// Version referenziert, die Auflösung erfolgt über die Dependency).
Alias: $display = http://hl7.org/fhir/StructureDefinition/display
Alias: $mii-pro-capabilities = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-ex-pro-questionnaire-capabilities
