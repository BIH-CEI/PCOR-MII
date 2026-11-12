# Use-Case-Manifest NTXr — Nierentransplantation, Empfänger - PCOR-MII Implementation Guide v0.9.0

## Library: Use-Case-Manifest NTXr — Nierentransplantation, Empfänger (Experimentell) 

-------

**German**

-------

* Metadata: Title
  * ?: Use-Case-Manifest NTXr — Nierentransplantation, Empfänger
* Metadata: Version
  * ?: 0.9.0
* Metadata: Status
  * ?: Draft
* Metadata: Experimental
  * ?: true
* Metadata: Use Context
  * ?: [http://terminology.hl7.org/CodeSystem/usage-context-type](http://terminology.hl7.org/7.5.0/CodeSystem-usage-context-type.html)#program = NTXr — Nierentransplantation, Empfänger
* Metadata: Jurisdiction
  * ?: Germany
* Metadata: Steward (Publisher)
  * ?: BIH-CEI
* Metadata: Steward Contact
  * ?: BIH-CEI
* Metadata: Description
  * ?: Maschinenlesbare Instrumentenliste des Use Case NTXr (Empfänger einer Nierentransplantation): alle Questionnaire-Definitionen mit versionierter Canonical — PCOR-MII-eigene Bögen mit |0.9.0, MII-PRO-Bögen mit |2027.0.0-ballot.2. Quelle: Erhebungsplan (Domain Overview, Spalten NTXr) und Dictionary-Blatt NTx. Enthält die generische Batterie aller Use Cases, dazu WAI (hier Prio A), die metadata-only-Stubs BAASIS, ABQ und MTSOSD-R59 (wortgleiche Vollversionen nur über den Form Server, Lizenz je Zentrum), die Transplantationsanamnese MHI-NTx (Screening) und die NTx-Verlaufsbefragung (quartalsweises Monitoring). Nicht enthalten: PHQ-15 (Domain Overview führt es nur für PSS, das Dictionary-Blatt NTx dagegen mit — Klärung durch die Use-Case-Leitung offen) und OPD-SFK (nicht in NTx). PROMIS-16 und PROMIS-29 + Cognitive Function SF 4a sind Standortvarianten (entweder/oder), beide enthalten. Ob der MTSOSD-R59 komplett oder nur mit Tremor und Diarrhoe ins Monitoring geht, ist im Erhebungsplan offen; gepinnt ist der komplette Bogen.
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
  * ?: **Description**: MHI-NTx — Transplantationsanamnese [Screening, Prio A; Freigabe offen]**Resource**:[MHI-NTx — Transplantationsanamnese (Ergänzung zum MHI, Nierentransplantation)](Questionnaire-MHINTX.md)version: 0.9.0**Canonical URL**:https://bih-cei.github.io/PCOR-MII/Questionnaire/MHINTX|0.9.0
* Metadata: Component
  * ?: **Description**: NTx-Verlaufsbefragung — MHH-Verlaufsitems [Monitoring quartalsweise; Freigabe offen]**Resource**:[NTx-Verlaufsbefragung — Verlaufsanamnese nach Nierentransplantation (MHH)](Questionnaire-NTXVERLAUF.md)version: 0.9.0**Canonical URL**:https://bih-cei.github.io/PCOR-MII/Questionnaire/NTXVERLAUF|0.9.0
* Metadata: Component
  * ?: **Description**: WAI — Work Ability Score [metadata-only; in NTx Prio A]**Resource**:[WAI — Work Ability Index / Work Ability Score (3-Item-Kurzfassung, Metadata-only)](Questionnaire-WAI.md)version: 0.9.0**Canonical URL**:https://bih-cei.github.io/PCOR-MII/Questionnaire/WAI|0.9.0
* Metadata: Component
  * ?: **Description**: PROMIS-GH — Global Health Global01/Global02 [2-Item-Zuschnitt; Übergangslösung bis zur Aufnahme der 10-Item-Skala ins PRO-Modul]**Resource**:[PROMIS-GH — PROMIS Global Health (2-Item-ShortForm)](Questionnaire-PROMISGH.md)version: 0.9.0**Canonical URL**:https://bih-cei.github.io/PCOR-MII/Questionnaire/PROMISGH|0.9.0
* Metadata: Component
  * ?: **Description**: BAASIS — Adhärenz Immunsuppression [metadata-only; Monitoring quartalsweise, Prio A]**Resource**:[BAASIS — Adhärenz gegenüber immunsuppressiver Medikation (NTx, metadata-only)](Questionnaire-BAASIS.md)version: 0.9.0**Canonical URL**:https://bih-cei.github.io/PCOR-MII/Questionnaire/BAASIS|0.9.0
* Metadata: Component
  * ?: **Description**: ABQ — Adhärenzbarrieren [metadata-only; nur bei BAASIS-Nonadhärenz, Prio A]**Resource**:[ABQ — Adherence Barriers Questionnaire (NTx, metadata-only)](Questionnaire-ABQ.md)version: 0.9.0**Canonical URL**:https://bih-cei.github.io/PCOR-MII/Questionnaire/ABQ|0.9.0
* Metadata: Component
  * ?: **Description**: MTSOSD-R59 — Symptomlast Immunsuppression [metadata-only; Monitoring quartalsweise, Umfang offen]**Resource**:[MTSOSD-R59 — Symptomlast, 59 Symptome und 3 Freitext (NTx, metadata-only)](Questionnaire-MTSOSDR59.md)version: 0.9.0**Canonical URL**:https://bih-cei.github.io/PCOR-MII/Questionnaire/MTSOSDR59|0.9.0
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
  "id" : "use-case-ntxr",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-manifestlibrary|2.0.0"]
  },
  "url" : "https://bih-cei.github.io/PCOR-MII/Library/use-case-ntxr",
  "version" : "0.9.0",
  "name" : "UseCaseNTXr",
  "title" : "Use-Case-Manifest NTXr — Nierentransplantation, Empfänger",
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
  "description" : "Maschinenlesbare Instrumentenliste des Use Case NTXr (Empfänger einer Nierentransplantation): alle Questionnaire-Definitionen mit versionierter Canonical — PCOR-MII-eigene Bögen mit |0.9.0, MII-PRO-Bögen mit |2027.0.0-ballot.2. Quelle: Erhebungsplan (Domain Overview, Spalten NTXr) und Dictionary-Blatt NTx. Enthält die generische Batterie aller Use Cases, dazu WAI (hier Prio A), die metadata-only-Stubs BAASIS, ABQ und MTSOSD-R59 (wortgleiche Vollversionen nur über den Form Server, Lizenz je Zentrum), die Transplantationsanamnese MHI-NTx (Screening) und die NTx-Verlaufsbefragung (quartalsweises Monitoring). Nicht enthalten: PHQ-15 (Domain Overview führt es nur für PSS, das Dictionary-Blatt NTx dagegen mit — Klärung durch die Use-Case-Leitung offen) und OPD-SFK (nicht in NTx). PROMIS-16 und PROMIS-29 + Cognitive Function SF 4a sind Standortvarianten (entweder/oder), beide enthalten. Ob der MTSOSD-R59 komplett oder nur mit Tremor und Diarrhoe ins Monitoring geht, ist im Erhebungsplan offen; gepinnt ist der komplette Bogen.",
  "useContext" : [{
    "code" : {
      "system" : "http://terminology.hl7.org/CodeSystem/usage-context-type",
      "code" : "program"
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-use-case",
        "code" : "ntxr",
        "display" : "NTXr — Nierentransplantation, Empfänger"
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
    "display" : "MHI-NTx — Transplantationsanamnese [Screening, Prio A; Freigabe offen]",
    "resource" : "https://bih-cei.github.io/PCOR-MII/Questionnaire/MHINTX|0.9.0"
  },
  {
    "type" : "composed-of",
    "display" : "NTx-Verlaufsbefragung — MHH-Verlaufsitems [Monitoring quartalsweise; Freigabe offen]",
    "resource" : "https://bih-cei.github.io/PCOR-MII/Questionnaire/NTXVERLAUF|0.9.0"
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
    "type" : "composed-of",
    "display" : "BAASIS — Adhärenz Immunsuppression [metadata-only; Monitoring quartalsweise, Prio A]",
    "resource" : "https://bih-cei.github.io/PCOR-MII/Questionnaire/BAASIS|0.9.0"
  },
  {
    "type" : "composed-of",
    "display" : "ABQ — Adhärenzbarrieren [metadata-only; nur bei BAASIS-Nonadhärenz, Prio A]",
    "resource" : "https://bih-cei.github.io/PCOR-MII/Questionnaire/ABQ|0.9.0"
  },
  {
    "type" : "composed-of",
    "display" : "MTSOSD-R59 — Symptomlast Immunsuppression [metadata-only; Monitoring quartalsweise, Umfang offen]",
    "resource" : "https://bih-cei.github.io/PCOR-MII/Questionnaire/MTSOSDR59|0.9.0"
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
