# SSUK-2 — Soziale Unterstützung bei Krankheit (2-Item-Zuschnitt) - PCOR-MII Implementation Guide v0.3.0

## Questionnaire: SSUK-2 — Soziale Unterstützung bei Krankheit (2-Item-Zuschnitt) (Experimentell) 

 
Zwei Items aus den Skalen zur Sozialen Unterstützung bei Krankheit (SSUK): je ein Item zur positiven Unterstützung (aufmuntern/trösten) und zur belastenden Interaktion (Auswirkung der Erkrankung herunterspielen), 5-stufige Häufigkeitsskala (0 = nie … 4 = immer). Kein Score — die beiden Items sind gegenläufig gepolt und einzeln auszuwerten. Quelle: PCOR-MII Item Level Dictionary (Entität AN). 

*  [Baumansicht](#tabs-tree) 
*  [Beispielanzeige](#tabs-sample) 
*  [Formularlogik](#tabs-logic) 

### Diesen Fragebogen testen

### Antworten zu diesem Fragebogen

Es sind derzeit keine QuestionnaireResponse-Instanzen für diesen Fragebogen in diesem IG definiert.



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "SSUK2",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire"]
  },
  "language" : "de",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-versionAlgorithm",
    "valueCoding" : {
      "system" : "http://hl7.org/fhir/version-algorithm",
      "code" : "semver",
      "display" : "Semantic Versioning"
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/designNote",
    "valueMarkdown" : "**Designentscheidungen (ADR-003):** (0) **Auswahlregel des Zuschnitts** laut DIZ-Implementierungsliste, Spalte *„verkürzte Version?“*: *„nicht vollständig verwendet, sondern nur das Item mit der höchsten Trennschärfe pro Skala“*. Geht hier auf: Die SSUK hat zwei gegenläufige Dimensionen, und ssuk14 (unterstützend) und ssuk10 (belastend) bedienen genau je eine. Ein trennschärfstes Item bildet die Skala nicht ab, daher kein Score — und die beiden Items dürfen nicht summiert werden, weil sie Gegenläufiges messen. (1) `linkId`s = **Itemnummern der SSUK-Langfassung — verifiziert** gegen Tabelle 2 bei Müller, Mehnert & Koch (*Z Med Psychol* 2004, doi:10.3233/zmp-2004-13_4_03): Item 14 ist „Sie aufmuntert oder tröstet“ (Positive Unterstützung), Item 10 „die Auswirkung Ihrer Erkrankung herunterspielt“ (Belastende Interaktion). Die Langfassung hat 26 Items (17 + 9). **Verifiziert** ist dagegen, dass beide Items echte SSUK-Items sind: `ssuk14` wörtlich Item 3 der SSUK-8, `ssuk10` ein Item der 9-Item-Skala „Belastende Interaktion“ der Langfassung, das in der Kurzform entfiel. (2) Kein Score: Die beiden Items messen gegenläufige Konstrukte (positive Unterstützung vs. belastende Interaktion) — ein Summenwert wäre ohne Umpolung falsch, und für eine Umpolung des Zuschnitts fehlt die validierte Grundlage. (3) Gemeinsamer Fragestamm als `group`-Item, damit die Item-Texte wortgleich bleiben. (4) Keine Terminologie-Codes: LOINC/SNOMED kennen die SSUK nicht. Details: <https://bih-cei.github.io/PCOR-MII/Designentscheidungen.html>"
  }],
  "url" : "https://bih-cei.github.io/PCOR-MII/Questionnaire/SSUK2",
  "version" : "0.3.0",
  "name" : "SSUK2",
  "title" : "SSUK-2 — Soziale Unterstützung bei Krankheit (2-Item-Zuschnitt)",
  "status" : "draft",
  "experimental" : true,
  "subjectType" : ["Patient"],
  "date" : "2026-09-23",
  "publisher" : "BIH-CEI",
  "contact" : [{
    "name" : "BIH-CEI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.bihealth.org/"
    }]
  }],
  "description" : "Zwei Items aus den Skalen zur Sozialen Unterstützung bei Krankheit (SSUK): je ein Item zur positiven Unterstützung (aufmuntern/trösten) und zur belastenden Interaktion (Auswirkung der Erkrankung herunterspielen), 5-stufige Häufigkeitsskala (0 = nie ... 4 = immer). Kein Score — die beiden Items sind gegenläufig gepolt und einzeln auszuwerten. Quelle: PCOR-MII Item Level Dictionary (Entität AN).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "copyright" : "Die Items entstammen der SSUK, der deutschen Adaptation der Illness-specific Social Support Scale (Ramm & Hasenbring, Z Med Psychol 2003, doi:10.3233/ZMP-2003-12_1_06; englisches Original: Revenson et al., Soc Sci Med 1991, doi:10.1016/0277-9536(91)90385-P), im Zuschnitt des PCOR-MII Item Level Dictionary. Nutzungsstatus laut DIZ-Implementierungsliste PCOR-MII: frei. Die Rechte an Instrument und Item-Formulierungen verbleiben bei den Autor:innen; Nachnutzende müssen die Nutzungsbedingungen für den eigenen Anwendungsfall eigenständig prüfen. Nur der PCOR-MII-eigene FHIR-Inhalt unterliegt der Repository-Lizenz (CC-BY-4.0).",
  "item" : [{
    "linkId" : "ssuk-stamm",
    "text" : "Unter den Menschen, die Ihnen nahe stehen, gibt es jemanden, der/die..",
    "type" : "group",
    "item" : [{
      "linkId" : "ssuk14",
      "code" : [{
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
        "code" : "ssuk14"
      }],
      "text" : "Sie aufmuntert oder tröstet",
      "type" : "choice",
      "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/ssuk-antwort-vs"
    },
    {
      "linkId" : "ssuk10",
      "code" : [{
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
        "code" : "ssuk10"
      }],
      "text" : "die Auswirkung Ihrer Erkrankung herunterspielt.",
      "type" : "choice",
      "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/ssuk-antwort-vs"
    }]
  }]
}

```
