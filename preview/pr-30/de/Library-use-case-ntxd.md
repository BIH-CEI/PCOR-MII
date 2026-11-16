# Use-Case-Manifest NTXd — Nierentransplantation, Spender - PCOR-MII Implementation Guide v0.9.0

## Library: Use-Case-Manifest NTXd — Nierentransplantation, Spender (Experimentell) 

-------

**German**

-------

* Metadata: Title
  * ?: Use-Case-Manifest NTXd — Nierentransplantation, Spender
* Metadata: Version
  * ?: 0.9.0
* Metadata: Status
  * ?: Draft
* Metadata: Experimental
  * ?: true
* Metadata: Use Context
  * ?: [http://terminology.hl7.org/CodeSystem/usage-context-type](http://terminology.hl7.org/7.5.0/CodeSystem-usage-context-type.html)#program = NTXd — Nierentransplantation, Spender
* Metadata: Jurisdiction
  * ?: Germany
* Metadata: Steward (Publisher)
  * ?: BIH-CEI
* Metadata: Steward Contact
  * ?: BIH-CEI
* Metadata: Description
  * ?: Maschinenlesbare Instrumentenliste des Use Case NTXd (Lebendspender einer Niere): alle Questionnaire-Definitionen mit versionierter Canonical — PCOR-MII-eigene Bögen mit |0.9.0, MII-PRO-Bögen mit |2027.0.0-ballot.2. Quelle: Erhebungsplan (Domain Overview, Spalten NTXd). Spender erheben laut Plan ausschließlich die generische Batterie: Screening mit denselben Prioritäten wie Empfänger, kein spezifisches Instrument, kein Monitoring, Outcome jährlich ohne eigene Prioritätsangabe. Das Manifest ist damit identisch mit dem Pilot-Kern plus WAI mit Prio A. PROMIS-16 und PROMIS-29 + Cognitive Function SF 4a sind Standortvarianten (entweder/oder), beide enthalten.
* Metadata: Type
  * ?: [http://terminology.hl7.org/CodeSystem/library-type](http://terminology.hl7.org/7.5.0/CodeSystem-library-type.html)#asset-collection
* Metadata:  Parameters
* Metadata: Parameter
  * ?: None
* Metadata:  Citations and References
* Metadata: Component
  * ?: **Description**: DEM — Demographie-Sammelbogen**Resource**:[DEM — Demographics & Medical History](Questionnaire-DEM.md)version: 0.9.0**Canonical URL**:https://bih-cei.github.io/PCOR-MII/Questionnaire/DEM|0.9.0
* Metadata: Component
  * ?: **Description**: MHI — Medical History**Resource**:[MHI — Medical History](Questionnaire-MHI.md)version: 0.9.0**Canonical URL**:https://bih-cei.github.io/PCOR-MII/Questionnaire/MHI|0.9.0
* Metadata: Component
  * ?: **Description**: WAI — Work Ability Score [metadata-only; in NTx Prio A]**Resource**:[WAI — Work Ability Index / Work Ability Score (3-Item-Kurzfassung, Metadata-only)](Questionnaire-WAI.md)version: 0.9.0**Canonical URL**:https://bih-cei.github.io/PCOR-MII/Questionnaire/WAI|0.9.0
* Metadata: Component
  * ?: **Description**: PROMIS-GH — Global Health Global01/Global02 [2-Item-Zuschnitt; Übergangslösung bis zur Aufnahme der 10-Item-Skala ins PRO-Modul]**Resource**:[PROMIS-GH — PROMIS Global Health (2-Item-ShortForm)](Questionnaire-PROMISGH.md)version: 0.9.0**Canonical URL**:https://bih-cei.github.io/PCOR-MII/Questionnaire/PROMISGH|0.9.0
* Metadata: Component
  * ?: **Description**: PROMIS-16 — Standortvariante kurz**Resource**:[MII QST PRO PROMIS-16 (Adults)](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/2027.0.0-ballot.2/Questionnaire-mii-qst-pro-promis-16.html)version: 2027.0.0-ballot.2**Canonical URL**:https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-16|2027.0.0-ballot.2
* Metadata: Component
  * ?: **Description**: PROMIS-29 — sieben Domänen als SF 4a plus Schmerzintensität; Standortvariante mittel**Resource**:[MII QST PRO PROMIS-29 (Adults)](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/2027.0.0-ballot.2/Questionnaire-mii-qst-pro-promis-29.html)version: 2027.0.0-ballot.2**Canonical URL**:https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-29|2027.0.0-ballot.2
* Metadata: Component
  * ?: **Description**: PROMIS Cognitive Function SF 4a — achte Domäne; mit PROMIS-29 die PROMIS-33-Abdeckung; Standortvariante mittel**Resource**:[MII QST PRO PROMIS Cognitive Function SF 4a](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/2027.0.0-ballot.2/Questionnaire-mii-qst-pro-promis-cognitive-function-sf4a.html)version: 2027.0.0-ballot.2**Canonical URL**:https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-cognitive-function-sf4a|2027.0.0-ballot.2
* Metadata: Component
  * ?: **Description**: WHODAS 2.0 12-Item [Prio A]**Resource**:[MII QST PRO WHODAS 2.0 12-Item](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/2027.0.0-ballot.2/Questionnaire-mii-qst-pro-whodas-whodas12.html)version: 2027.0.0-ballot.2**Canonical URL**:https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-whodas-whodas12|2027.0.0-ballot.2
* Metadata: Component
  * ?: **Description**: PHQ-9 — in NTx als PHQ-8 erhoben; PHQ-SI nicht im NTx-Dictionary**Resource**:[MII QST PRO PHQ-9](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/2027.0.0-ballot.2/Questionnaire-mii-qst-pro-phq-9.html)version: 2027.0.0-ballot.2**Canonical URL**:https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-phq-9|2027.0.0-ballot.2
* Metadata: Component
  * ?: **Description**: GAD-7**Resource**:[MII QST PRO GAD-7](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/2027.0.0-ballot.2/Questionnaire-mii-qst-pro-gad-7.html)version: 2027.0.0-ballot.2**Canonical URL**:https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-gad-7|2027.0.0-ballot.2
* Metadata: Component
  * ?: **Description**: EURONET-SOMA**Resource**:[MII QST PRO EURONET-SOMA](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/2027.0.0-ballot.2/Questionnaire-mii-qst-pro-euronet-soma.html)version: 2027.0.0-ballot.2**Canonical URL**:https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-euronet-soma|2027.0.0-ballot.2
* Metadata: Component
  * ?: **Description**: EQ-5D-5L — Erhebungsvariante „collectable“ [Outcome, Prio A, jährlich; Index-Score upstream]**Resource**:[MII QST PRO EQ-5D-5L Collectable](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/2027.0.0-ballot.2/Questionnaire-mii-qst-pro-euroqol-eq5d5l-collectable.html)version: 2027.0.0-ballot.2**Canonical URL**:https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-euroqol-eq5d5l-collectable|2027.0.0-ballot.2
* Metadata: Generated using version 0.5.6 of the sample-content-ig Liquid templates



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "use-case-ntxd",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-manifestlibrary|2.0.0"]
  },
  "url" : "https://bih-cei.github.io/PCOR-MII/Library/use-case-ntxd",
  "version" : "0.9.0",
  "name" : "UseCaseNTXd",
  "title" : "Use-Case-Manifest NTXd — Nierentransplantation, Spender",
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
  "description" : "Maschinenlesbare Instrumentenliste des Use Case NTXd (Lebendspender einer Niere): alle Questionnaire-Definitionen mit versionierter Canonical — PCOR-MII-eigene Bögen mit |0.9.0, MII-PRO-Bögen mit |2027.0.0-ballot.2. Quelle: Erhebungsplan (Domain Overview, Spalten NTXd). Spender erheben laut Plan ausschließlich die generische Batterie: Screening mit denselben Prioritäten wie Empfänger, kein spezifisches Instrument, kein Monitoring, Outcome jährlich ohne eigene Prioritätsangabe. Das Manifest ist damit identisch mit dem Pilot-Kern plus WAI mit Prio A. PROMIS-16 und PROMIS-29 + Cognitive Function SF 4a sind Standortvarianten (entweder/oder), beide enthalten.",
  "useContext" : [{
    "code" : {
      "system" : "http://terminology.hl7.org/CodeSystem/usage-context-type",
      "code" : "program"
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-use-case",
        "code" : "ntxd",
        "display" : "NTXd — Nierentransplantation, Spender"
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
    "resource" : "https://bih-cei.github.io/PCOR-MII/Questionnaire/DEM|0.9.0"
  },
  {
    "type" : "composed-of",
    "display" : "MHI — Medical History",
    "resource" : "https://bih-cei.github.io/PCOR-MII/Questionnaire/MHI|0.9.0"
  },
  {
    "type" : "composed-of",
    "display" : "WAI — Work Ability Score [metadata-only; in NTx Prio A]",
    "resource" : "https://bih-cei.github.io/PCOR-MII/Questionnaire/WAI|0.9.0"
  },
  {
    "type" : "composed-of",
    "display" : "PROMIS-GH — Global Health Global01/Global02 [2-Item-Zuschnitt; Übergangslösung bis zur Aufnahme der 10-Item-Skala ins PRO-Modul]",
    "resource" : "https://bih-cei.github.io/PCOR-MII/Questionnaire/PROMISGH|0.9.0"
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
    "resource" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-16|2027.0.0-ballot.2"
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
    "resource" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-29|2027.0.0-ballot.2"
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
    "resource" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-cognitive-function-sf4a|2027.0.0-ballot.2"
  },
  {
    "type" : "composed-of",
    "display" : "WHODAS 2.0 12-Item [Prio A]",
    "resource" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-whodas-whodas12|2027.0.0-ballot.2"
  },
  {
    "type" : "composed-of",
    "display" : "PHQ-9 — in NTx als PHQ-8 erhoben; PHQ-SI nicht im NTx-Dictionary",
    "resource" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-phq-9|2027.0.0-ballot.2"
  },
  {
    "type" : "composed-of",
    "display" : "GAD-7",
    "resource" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-gad-7|2027.0.0-ballot.2"
  },
  {
    "type" : "composed-of",
    "display" : "EURONET-SOMA",
    "resource" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-euronet-soma|2027.0.0-ballot.2"
  },
  {
    "type" : "composed-of",
    "display" : "EQ-5D-5L — Erhebungsvariante „collectable“ [Outcome, Prio A, jährlich; Index-Score upstream]",
    "resource" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-euroqol-eq5d5l-collectable|2027.0.0-ballot.2"
  }]
}

```
