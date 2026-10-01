# UKHD-EDP — Essstörungspathologie (11 Items, metadata-only) - PCOR-MII Implementation Guide v0.3.0

## Questionnaire: UKHD-EDP — Essstörungspathologie (11 Items, metadata-only) (Experimentell) 

 
Elf Items zur Essstörungspathologie aus der AN-Batterie des UKHD. **Metadata-only:** Struktur, `linkId`s, Antwortformat und Wertebereiche sind abgebildet, der Originalwortlaut der Items und der Antwortstufen bewusst nicht. Grund: Der Block ist vermutlich ein Zuschnitt des EDI-2 (je ein Item pro Subskala) — eines Hogrefe-Testverfahrens —, und unabhängig davon liegt für die Standort-Itemgruppen keine dokumentierte Freigabe vor. Kein Score: Ein Item je Subskala bildet die Subskala nicht ab. 

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
  "id" : "UKHDEDP",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire"]
  },
  "language" : "de",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-versionAlgorithm",
    "valueCoding" : {
      "system" : "http://hl7.org/fhir/version-algorithm",
      "code" : "semver",
      "display" : "SemVer"
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/designNote",
    "valueMarkdown" : "**Designentscheidungen:** (1) **Metadata-only** nach dem Muster des [WAI](WAI.html): Struktur, `linkId`s, Itemzahl, Antwortformat und Wertebereiche sind abgebildet; Item-Texte sind neutrale Beschreibungen des erfragten Konstrukts, Antwortstufen neutral benannt. (2) **Zwei unabhängige Gründe dafür** — der Block ist vermutlich ein EDI-2-Zuschnitt (Hogrefe-Testverfahren), und für die Standort-Itemgruppen liegt ohnehin keine dokumentierte Freigabe vor. Metadata-only ist unter beiden Lesarten richtig; die Entscheidung hängt nicht daran, die Identifikation vorher aufzulösen. (3) **Die Identifikation ist nicht bestätigt** — sie stützt sich auf Inhalt und auf das sechsstufige Antwortformat (das EDI-2 nutzt sechs Stufen), nicht auf einen Wortlautabgleich. Der Abgleich gegen den deutschen EDI-2-Bogen ist der erste zu prüfende Schritt. (4) **Kein Score:** Ein Item je Subskala bildet die Subskala nicht ab (ADR-003 Punkt 3); `ordinalValue` 1–6 ist gesetzt, damit eine spätere Auswertung möglich bleibt. (5) **Kein `Questionnaire.code`** und **keine Instrumenten-`linkId`s**: Beides wäre eine Behauptung über die Instrumentenidentität, solange sie nicht bestätigt ist. Bestätigt sie sich, sind die `linkId`s nach ADR-008 Regel 1 auf die EDI-2-Itemnummern umzustellen. Details: <https://bih-cei.github.io/PCOR-MII/Designentscheidungen.html>"
  }],
  "url" : "https://bih-cei.github.io/PCOR-MII/Questionnaire/UKHDEDP",
  "version" : "0.3.0",
  "name" : "UKHDEDP",
  "title" : "UKHD-EDP — Essstörungspathologie (11 Items, metadata-only)",
  "status" : "draft",
  "experimental" : true,
  "subjectType" : ["Patient"],
  "date" : "2026-10-01",
  "publisher" : "BIH-CEI",
  "contact" : [{
    "name" : "BIH-CEI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.bihealth.org/"
    }]
  }],
  "description" : "Elf Items zur Essstörungspathologie aus der AN-Batterie des UKHD. **Metadata-only:** Struktur, `linkId`s, Antwortformat und Wertebereiche sind abgebildet, der Originalwortlaut der Items und der Antwortstufen bewusst nicht. Grund: Der Block ist vermutlich ein Zuschnitt des EDI-2 (je ein Item pro Subskala) — eines Hogrefe-Testverfahrens —, und unabhängig davon liegt für die Standort-Itemgruppen keine dokumentierte Freigabe vor. Kein Score: Ein Item je Subskala bildet die Subskala nicht ab.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "copyright" : "⚠️ Metadata-only. Dieser Questionnaire bildet bewusst KEINEN Originalwortlaut ab — die Item-Texte sind neutrale, selbst formulierte Beschreibungen des erfragten Konstrukts, die Antwortstufen sind neutral benannt. Zwei Gründe, die unabhängig voneinander tragen: (1) Der Block ist vermutlich ein Zuschnitt des Eating Disorder Inventory-2 (EDI-2; Garner 1991, deutsche Fassung Paul & Thiel, Hogrefe) — je ein Item pro Subskala —, also eines verlegten Testverfahrens; die Identifikation stützt sich auf Inhalt und das sechsstufige Antwortformat, nicht auf einen Wortlautabgleich und ist daher nicht bestätigt. (2) Unabhängig davon führt die DIZ-Implementierungsliste PCOR-MII die standortspezifischen Itemgruppen gar nicht; eine Freigabe des Universitätsklinikums Heidelberg liegt nicht dokumentiert vor. Der vollständige Wortlaut ist über den Rechteinhaber zu beziehen. Nur der PCOR-MII-eigene FHIR-Inhalt unterliegt der Repository-Lizenz (CC-BY-4.0).",
  "code" : [{
    "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-questionnaire-catalogue",
    "code" : "ukhd-edp",
    "display" : "UKHD-EDP"
  }],
  "item" : [{
    "linkId" : "ukhd-edp-intro",
    "text" : "Elf Aussagen zu Gefühlen, Gedanken und Verhalten in Bezug auf Essen, Körper und allgemeine Selbsteinschätzung. Die Häufigkeit des Zutreffens wird auf einer sechsstufigen Skala eingeschätzt. Der Originalwortlaut ist in dieser Spezifikation bewusst nicht abgebildet.",
    "type" : "display"
  },
  {
    "linkId" : "edp1",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "edp1"
    }],
    "text" : "Erfasst: Angst vor einer Gewichtszunahme (Konstrukt Schlankheitsstreben).",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/ukhd-edp-stufe-6-vs"
  },
  {
    "linkId" : "edp2",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "edp2"
    }],
    "text" : "Erfasst: eingeschränkte Nahrungsaufnahme in Gegenwart anderer mit Essanfällen im Alleinsein (Konstrukt Bulimie).",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/ukhd-edp-stufe-6-vs"
  },
  {
    "linkId" : "edp3",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "edp3"
    }],
    "text" : "Erfasst: Unzufriedenheit mit einzelnen Körperstellen (Konstrukt Körperunzufriedenheit).",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/ukhd-edp-stufe-6-vs"
  },
  {
    "linkId" : "edp4",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "edp4"
    }],
    "text" : "Erfasst: geringe Selbstbewertung (Konstrukt Ineffektivität).",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/ukhd-edp-stufe-6-vs"
  },
  {
    "linkId" : "edp5",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "edp5"
    }],
    "text" : "Erfasst: Anspruch, der oder die Beste zu sein (Konstrukt Perfektionismus).",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/ukhd-edp-stufe-6-vs"
  },
  {
    "linkId" : "edp6",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "edp6"
    }],
    "text" : "Erfasst: Nähe in Beziehungen zu anderen (Konstrukt Misstrauen, invers formuliert).",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/ukhd-edp-stufe-6-vs"
  },
  {
    "linkId" : "edp7",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "edp7"
    }],
    "text" : "Erfasst: Schwierigkeit, eigene Gefühle zu benennen (Konstrukt interozeptive Wahrnehmung).",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/ukhd-edp-stufe-6-vs"
  },
  {
    "linkId" : "edp8",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "edp8"
    }],
    "text" : "Erfasst: Haltung zum Erwachsensein (Konstrukt Angst vor dem Erwachsenwerden, invers formuliert).",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/ukhd-edp-stufe-6-vs"
  },
  {
    "linkId" : "edp9",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "edp9"
    }],
    "text" : "Erfasst: Bewertung von Genuss beim Essen als Schwäche (Konstrukt Askese).",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/ukhd-edp-stufe-6-vs"
  },
  {
    "linkId" : "edp10",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "edp10"
    }],
    "text" : "Erfasst: spontane Äußerungen, die später bereut werden (Konstrukt Impulsregulation).",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/ukhd-edp-stufe-6-vs"
  },
  {
    "linkId" : "edp11",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "edp11"
    }],
    "text" : "Erfasst: Kontaktfreude im Umgang mit anderen (Konstrukt soziale Unsicherheit, invers formuliert).",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/ukhd-edp-stufe-6-vs"
  }]
}

```
