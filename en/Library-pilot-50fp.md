# Manifest Pilot „50 First Patients“ — gemeinsamer Kern aller Use Cases - PCOR-MII Implementation Guide v0.3.0

## Library: Manifest Pilot „50 First Patients“ — gemeinsamer Kern aller Use Cases (Experimental) 

-------

**English**

-------

* Metadata: Title
  * ?: Manifest Pilot „50 First Patients“ — gemeinsamer Kern aller Use Cases
* Metadata: Version
  * ?: 0.3.0
* Metadata: Status
  * ?: Draft
* Metadata: Experimental
  * ?: true
* Metadata: Use Context
  * ?: [http://terminology.hl7.org/CodeSystem/usage-context-type](http://terminology.hl7.org/7.4.0/CodeSystem-usage-context-type.html)#program = Pilot „50 First Patients“ — gemeinsamer Kern aller Use Cases
* Metadata: Jurisdiction
  * ?: Germany
* Metadata: Steward (Publisher)
  * ?: BIH-CEI
* Metadata: Steward Contact
  * ?: BIH-CEI
* Metadata: Description
  * ?: Maschinenlesbare Instrumentenliste des Pilotprogramms „50 First Patients“: die Schnittmenge der Bögen, die laut Erhebungsplan (Domain Overview) in allen Use Cases — PSS, AN und NTx — erhoben werden, mit versionierter Canonical (PCOR-MII-eigene Bögen |0.3.0, MII-PRO-Bögen |2026.7.0). Ableitung aus den Use-Case-Spalten der Seite Fragebogen-Bibliothek; nicht enthalten: OPD-SFK (nicht in NTx), PHQ-15 (nur PSS) und PROMIS Global Health (Subset upstream noch offen, kein Artefakt). Der Pilot ist kein klinischer Use Case; wer eine vollständige Batterie braucht, nutzt das Manifest des jeweiligen Use Case. PROMIS-16 und PROMIS-29 + Cognitive Function SF 4a sind **Standortvarianten** (entweder/oder) — beide sind enthalten, damit Empfänger Antworten beider Standorttypen auflösen können; die Variante steht je Eintrag als Text in der CRMI-Extension `crmi-intendedUsageContext`.
* Metadata: Type
  * ?: [http://terminology.hl7.org/CodeSystem/library-type](http://terminology.hl7.org/7.4.0/CodeSystem-library-type.html)#asset-collection
* Metadata:  Parameters
* Metadata: Parameter
  * ?: None
* Metadata:  Citations and References
* Metadata: Component
  * ?: **Description**: DEM — Demographie-Sammelbogen**Resource**:[DEM — Demographics & Medical History](Questionnaire-DEM.md)version: 0.3.0**Canonical URL**:https://bih-cei.github.io/PCOR-MII/Questionnaire/DEM|0.3.0
* Metadata: Component
  * ?: **Description**: MHI — Medical History**Resource**:[MHI — Medical History](Questionnaire-MHI.md)version: 0.3.0**Canonical URL**:https://bih-cei.github.io/PCOR-MII/Questionnaire/MHI|0.3.0
* Metadata: Component
  * ?: **Description**: WAI — Work Ability Score [metadata-only]**Resource**:[WAI — Work Ability Index / Work Ability Score (3-Item-Kurzfassung, Metadata-only)](Questionnaire-WAI.md)version: 0.3.0**Canonical URL**:https://bih-cei.github.io/PCOR-MII/Questionnaire/WAI|0.3.0
* Metadata: Component
  * ?: **Description**: PROMIS-16 — Standortvariante kurz**Resource**:[MII QST PRO PROMIS-16 (Adults)](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.pros@2026.7.0&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-16)version: 2026.7.0**Canonical URL**:https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-16|2026.7.0
* Metadata: Component
  * ?: **Description**: PROMIS-29 — sieben Domänen als SF 4a plus Schmerzintensität; Standortvariante mittel**Resource**:[MII QST PRO PROMIS-29 (Adults)](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.pros@2026.7.0&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-29)version: 2026.7.0**Canonical URL**:https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-29|2026.7.0
* Metadata: Component
  * ?: **Description**: PROMIS Cognitive Function SF 4a — achte Domäne; mit PROMIS-29 die PROMIS-33-Abdeckung; Standortvariante mittel**Resource**:[MII QST PRO PROMIS Cognitive Function SF 4a](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.pros@2026.7.0&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-cognitive-function-sf4a)version: 2026.7.0**Canonical URL**:https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-cognitive-function-sf4a|2026.7.0
* Metadata: Component
  * ?: **Description**: WHODAS 2.0 12-Item**Resource**:[MII QST PRO WHODAS 2.0 12-Item](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.pros@2026.7.0&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-whodas-whodas12)version: 2026.7.0**Canonical URL**:https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-whodas-whodas12|2026.7.0
* Metadata: Component
  * ?: **Description**: PHQ-9 — in PSS als PHQ-8 + PHQ-SI erhoben**Resource**:[MII QST PRO PHQ-9](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.pros@2026.7.0&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-phq-9)version: 2026.7.0**Canonical URL**:https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-phq-9|2026.7.0
* Metadata: Component
  * ?: **Description**: GAD-7**Resource**:[MII QST PRO GAD-7](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.pros@2026.7.0&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-gad-7)version: 2026.7.0**Canonical URL**:https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-gad-7|2026.7.0
* Metadata: Component
  * ?: **Description**: EURONET-SOMA**Resource**:[MII QST PRO EURONET-SOMA](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.pros@2026.7.0&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-euronet-soma)version: 2026.7.0**Canonical URL**:https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-euronet-soma|2026.7.0
* Metadata: Generated using version 0.5.6 of the sample-content-ig Liquid templates



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "pilot-50fp",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-manifestlibrary|2.0.0"]
  },
  "url" : "https://bih-cei.github.io/PCOR-MII/Library/pilot-50fp",
  "version" : "0.3.0",
  "name" : "Pilot50FirstPatients",
  "title" : "Manifest Pilot „50 First Patients“ — gemeinsamer Kern aller Use Cases",
  "status" : "draft",
  "experimental" : true,
  "type" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/library-type",
      "code" : "asset-collection"
    }]
  },
  "date" : "2026-10-04",
  "publisher" : "BIH-CEI",
  "contact" : [{
    "name" : "BIH-CEI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.bihealth.org/"
    }]
  }],
  "description" : "Maschinenlesbare Instrumentenliste des Pilotprogramms „50 First Patients“: die Schnittmenge der Bögen, die laut Erhebungsplan (Domain Overview) in allen Use Cases — PSS, AN und NTx — erhoben werden, mit versionierter Canonical (PCOR-MII-eigene Bögen |0.3.0, MII-PRO-Bögen |2026.7.0). Ableitung aus den Use-Case-Spalten der Seite Fragebogen-Bibliothek; nicht enthalten: OPD-SFK (nicht in NTx), PHQ-15 (nur PSS) und PROMIS Global Health (Subset upstream noch offen, kein Artefakt). Der Pilot ist kein klinischer Use Case; wer eine vollständige Batterie braucht, nutzt das Manifest des jeweiligen Use Case. PROMIS-16 und PROMIS-29 + Cognitive Function SF 4a sind **Standortvarianten** (entweder/oder) — beide sind enthalten, damit Empfänger Antworten beider Standorttypen auflösen können; die Variante steht je Eintrag als Text in der CRMI-Extension `crmi-intendedUsageContext`.",
  "useContext" : [{
    "code" : {
      "system" : "http://terminology.hl7.org/CodeSystem/usage-context-type",
      "code" : "program"
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-use-case",
        "code" : "pilot-50fp",
        "display" : "Pilot „50 First Patients“ — gemeinsamer Kern aller Use Cases"
      }]
    }
  }],
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "relatedArtifact" : [{
    "type" : "composed-of",
    "display" : "DEM — Demographie-Sammelbogen",
    "resource" : "https://bih-cei.github.io/PCOR-MII/Questionnaire/DEM|0.3.0"
  },
  {
    "type" : "composed-of",
    "display" : "MHI — Medical History",
    "resource" : "https://bih-cei.github.io/PCOR-MII/Questionnaire/MHI|0.3.0"
  },
  {
    "type" : "composed-of",
    "display" : "WAI — Work Ability Score [metadata-only]",
    "resource" : "https://bih-cei.github.io/PCOR-MII/Questionnaire/WAI|0.3.0"
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-intendedUsageContext",
      "valueUsageContext" : {
        "code" : {
          "system" : "http://terminology.hl7.org/CodeSystem/usage-context-type",
          "code" : "workflow"
        },
        "valueCodeableConcept" : {
          "text" : "Standortvariante kurz: PROMIS-16"
        }
      }
    }],
    "type" : "composed-of",
    "display" : "PROMIS-16 — Standortvariante kurz",
    "resource" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-16|2026.7.0"
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-intendedUsageContext",
      "valueUsageContext" : {
        "code" : {
          "system" : "http://terminology.hl7.org/CodeSystem/usage-context-type",
          "code" : "workflow"
        },
        "valueCodeableConcept" : {
          "text" : "Standortvariante mittel: PROMIS-29 + Cognitive Function SF 4a"
        }
      }
    }],
    "type" : "composed-of",
    "display" : "PROMIS-29 — sieben Domänen als SF 4a plus Schmerzintensität; Standortvariante mittel",
    "resource" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-29|2026.7.0"
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-intendedUsageContext",
      "valueUsageContext" : {
        "code" : {
          "system" : "http://terminology.hl7.org/CodeSystem/usage-context-type",
          "code" : "workflow"
        },
        "valueCodeableConcept" : {
          "text" : "Standortvariante mittel: PROMIS-29 + Cognitive Function SF 4a"
        }
      }
    }],
    "type" : "composed-of",
    "display" : "PROMIS Cognitive Function SF 4a — achte Domäne; mit PROMIS-29 die PROMIS-33-Abdeckung; Standortvariante mittel",
    "resource" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-cognitive-function-sf4a|2026.7.0"
  },
  {
    "type" : "composed-of",
    "display" : "WHODAS 2.0 12-Item",
    "resource" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-whodas-whodas12|2026.7.0"
  },
  {
    "type" : "composed-of",
    "display" : "PHQ-9 — in PSS als PHQ-8 + PHQ-SI erhoben",
    "resource" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-phq-9|2026.7.0"
  },
  {
    "type" : "composed-of",
    "display" : "GAD-7",
    "resource" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-gad-7|2026.7.0"
  },
  {
    "type" : "composed-of",
    "display" : "EURONET-SOMA",
    "resource" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-euronet-soma|2026.7.0"
  }]
}

```
