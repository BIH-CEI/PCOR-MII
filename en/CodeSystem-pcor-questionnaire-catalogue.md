# PCOR-MII Questionnaire-Katalog - PCOR-MII Implementation Guide v0.3.0

## CodeSystem: PCOR-MII Questionnaire-Katalog (Experimental) 

 
Ein Code je PCOR-MII-eigenem Questionnaire, für `Questionnaire.code`. Anders als die Canonical, die das **Artefakt** identifiziert, bezeichnet der Katalogcode das **Instrument** — damit mehrere Fassungen desselben Bogens als solche erkennbar sind (ADR-007). Lokal vergeben, weil weder LOINC noch SNOMED CT noch der MII-Questionnaire-Katalog Codes für diese Bögen führen; `Questionnaire.code` ist `0..*`, ein späterer Code wird also ergänzt statt ersetzt (ADR-004). 

This Code system is referenced in the definition of the following value sets:

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "pcor-questionnaire-catalogue",
  "url" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-questionnaire-catalogue",
  "version" : "0.3.0",
  "name" : "PcorQuestionnaireCatalogueCS",
  "title" : "PCOR-MII Questionnaire-Katalog",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-10-01",
  "publisher" : "BIH-CEI",
  "contact" : [{
    "name" : "BIH-CEI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.bihealth.org/"
    }]
  }],
  "description" : "Ein Code je PCOR-MII-eigenem Questionnaire, für `Questionnaire.code`. Anders als die Canonical, die das **Artefakt** identifiziert, bezeichnet der Katalogcode das **Instrument** — damit mehrere Fassungen desselben Bogens als solche erkennbar sind (ADR-007). Lokal vergeben, weil weder LOINC noch SNOMED CT noch der MII-Questionnaire-Katalog Codes für diese Bögen führen; `Questionnaire.code` ist `0..*`, ein späterer Code wird also ergänzt statt ersetzt (ADR-004).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 14,
  "concept" : [{
    "code" : "dem",
    "display" : "PCOR-MII Demographie (DEM) — Sammelbogen aus OECD-, GI-PS- und CPCOR-Einzelitems"
  },
  {
    "code" : "mhi",
    "display" : "PCOR-MII Medical History (MHI) — Sammelbogen, mit AN-spezifischen Zusatzitems"
  },
  {
    "code" : "opd-sfk",
    "display" : "OPD-SFK — Strukturfragebogen, 12 Items"
  },
  {
    "code" : "wai",
    "display" : "WAI / Work Ability Score — 3-Item-Kurzfassung (metadata-only)"
  },
  {
    "code" : "gsltpaq",
    "display" : "GSLTPAQ — Godin-Shephard Leisure-Time Physical Activity Questionnaire, PCOR-MII-Eigenübersetzung"
  },
  {
    "code" : "expect",
    "display" : "EXPECT — drei NRS-Einzelitems zur Verlaufserwartung, kein standardisierter Fragebogen"
  },
  {
    "code" : "ipq-s",
    "display" : "IPQ-S — die offene Ursachenfrage des B-IPQ, Einzelitem"
  },
  {
    "code" : "erq-6",
    "display" : "ERQ-6 — 6-Item-Zuschnitt des Emotion Regulation Questionnaire (ERQ-Items 1, 2, 3, 6, 8, 9); nicht der ERQ-S"
  },
  {
    "code" : "ede-q6",
    "display" : "EDE-Q6 — 6-Item-Zuschnitt des Eating Disorder Examination-Questionnaire"
  },
  {
    "code" : "ansocq-2",
    "display" : "ANSOCQ-2 — 2-Item-Zuschnitt des Anorexia Nervosa Stages of Change Questionnaire"
  },
  {
    "code" : "ssuk-2",
    "display" : "SSUK-2 — 2-Item-Zuschnitt der Skalen zur Sozialen Unterstützung bei Krankheit"
  },
  {
    "code" : "ace",
    "display" : "ACE + Zeitangaben — die ersten fünf Fragen des Adverse Childhood Experiences Questionnaire plus die sechs UKHD-Items zur zeitlichen Einordnung (PCOR-MII-Komposit)"
  },
  {
    "code" : "ukhd-an",
    "display" : "UKHD-AN — Sammelbogen der standortspezifischen AN-Zusatzitems des Universitätsklinikums Heidelberg, sechs Dictionary-Gruppen"
  },
  {
    "code" : "ukhd-edp",
    "display" : "UKHD-EDP — 11 Items zur Essstörungspathologie, vermutlich EDI-2-Zuschnitt (metadata-only)"
  }]
}

```
