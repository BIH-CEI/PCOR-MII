# ANSOCQ-2 — Veränderungsmotivation (2-Item-Zuschnitt des ANSOCQ) - PCOR-MII Implementation Guide v0.3.0

## Questionnaire: ANSOCQ-2 — Veränderungsmotivation (2-Item-Zuschnitt des ANSOCQ) (Experimental) 

 
Zwei Items aus dem Anorexia Nervosa Stages of Change Questionnaire (ANSOCQ): Bereitschaft zur Gewichtszunahme an sorgenbesetzten Körperteilen (Item 3) und Umgang mit der Zeit für Gedanken an Nahrung und Gewicht (Item 14). Je fünf Feststellungen entsprechend den Stadien der Veränderungsbereitschaft (1-5). Kein Score — für den Zuschnitt liegt keine validierte Scoring-Vorschrift vor. Quelle: PCOR-MII Item Level Dictionary (Entität AN). 

*  [Tree view](#tabs-tree) 
*  [Sample Rendering](#tabs-sample) 
*  [Form Logic](#tabs-logic) 

### Test this Questionnaire

### Responses for this Questionnaire

There are currently no QuestionnaireResponse instances for this Questionnaire defined in this IG.



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "ANSOCQ2",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire"]
  },
  "language" : "en",
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
    "valueMarkdown" : "**Designentscheidungen (ADR-003):** (0) **Auswahlregel des Zuschnitts** laut DIZ-Implementierungsliste, Spalte *„verkürzte Version?“*: *„nicht vollständig verwendet, sondern nur das Item mit der höchsten Trennschärfe pro Skala“*. Gegen die Faktorenstruktur der deutschen Validierung nachgeprüft (Pauli et al. 2017) — je ein hochladendes Item pro Faktor. Die „Skalen“ der DIZ-Angabe sind hier die Faktoren der deutschen Validierung, nicht Subskalen des Originals; das ANSOCQ wird im Original über einen Gesamtwert ausgewertet. (1) `linkId`s = Itemnummern der **20-Item-Fassung** (3, 14) — in beiden Sprachen identisch, verifiziert gegen den im Volltext abgedruckten Originalbogen bei Rieger et al. 2002 (doi:10.1002/eat.10056) und gegen Pauli et al. 2017. Zwei Fassungen existieren: Rieger 2000 mit 23 Items, Rieger 2002 mit 20 — die deutsche Übersetzung folgt der 20-Item-Revision. (1a) **Drei Sprachebenen** (ADR-005): `en` = Originalwortlaut (Rieger et al. 2002); `de-CH` = die validierte Schweizer Übersetzung, wortgleich übernommen — **bei der Erhebung maßgeblich**; `de` = eine PCOR-MII-eigene, orthografisch und grammatisch bereinigte Fassung für den Einsatz in Deutschland, **keine validierte Übersetzung**. Unterschiede de-CH → de: „Gesäss“→„Gesäß“, „Sie Sich“→„Sie sich“ sowie in Stufe 1 der Körperteile „bereit an … zunehmen“→„bereit, an … zuzunehmen“. Letzteres ist ein **editorialer Druckfehler der Vorlage** (Stufen 2–4 desselben Items sagen korrekt „zuzunehmen“): `de-CH` bildet bewusst ab, was den Befragten vorlag, und bleibt unverändert — korrigiert wird ausschließlich in `de`. (2) Kein Score: Das ANSOCQ wird über den Mittelwert der 20 Items ausgewertet; für den 2-Item-Zuschnitt liegt keine validierte Vorschrift vor. Die Antwortcodes tragen `ordinalValue` 1–5 (Stadienlogik). (3) **Einfachauswahl — bewusste Abweichung vom Original.** Das Original erlaubt ausdrücklich mehrere Feststellungen je Item und mittelt sie: „If the individual endorses more than one statement per item, the average score for the item is calculated“ (Rieger et al. 2002); Item 17 der Langform instruiert es sogar. Der Zusatz „oder mehrere Feststellungen“ im Instruktionstext ist damit eine getreue Übersetzung. Einfachauswahl ist hier dennoch umgesetzt, weil das Item Level Dictionary beide Items als „Single Answer“ führt und die Standorte sie so erheben — modelliert wird, was erhoben wird. Die Abweichung ist fachlich zu bestätigen; sie schränkt die Vergleichbarkeit mit Erhebungen nach Originalvorschrift ein, weil dort ein Item-Wert ein Mittelwert sein kann. Ein früher hier behauptetes arithmetisches Argument (Mehrfachauswahl sprenge den Bereich 20–100) ist **zurückgezogen** — die Mittelung innerhalb des Items hält jedes Item bei 1–5. (3a) Die deutsche Fassung ist die **Schweizer** Übersetzung (Zürich, Validierung an Schweizer Stichprobe; im Text sichtbar an „Gesäss“) — deshalb als `de-CH` ausgewiesen, nicht als `de`. (4) Kein `Questionnaire.code`: SNOMED `443321009` bezeichnet das Vollinstrument. (6) **`item.code` trägt die PCOR-MII-Dictionary-Variable** gegen [`pcor-item-dictionary`](CodeSystem-pcor-item-dictionary.html) — das ist der PCOR-MII-Code des Items, ein weiteres lokales CodeSystem gibt es dafür bewusst nicht. Er bezeichnet das **Erhebungsfeld**; hier stimmt es mit der Itemnummer überein. Zweck: das maschinelle Verteilen eines flach erhobenen Datensatzes auf die Instrumenten-Questionnaires (ADR-011). Details: <https://bih-cei.github.io/PCOR-MII/Designentscheidungen.html>"
  }],
  "url" : "https://bih-cei.github.io/PCOR-MII/Questionnaire/ANSOCQ2",
  "version" : "0.3.0",
  "name" : "ANSOCQ2",
  "title" : "ANSOCQ-2 — Veränderungsmotivation (2-Item-Zuschnitt des ANSOCQ)",
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
  "description" : "Zwei Items aus dem Anorexia Nervosa Stages of Change Questionnaire (ANSOCQ): Bereitschaft zur Gewichtszunahme an sorgenbesetzten Körperteilen (Item 3) und Umgang mit der Zeit für Gedanken an Nahrung und Gewicht (Item 14). Je fünf Feststellungen entsprechend den Stadien der Veränderungsbereitschaft (1-5). Kein Score — für den Zuschnitt liegt keine validierte Scoring-Vorschrift vor. Quelle: PCOR-MII Item Level Dictionary (Entität AN).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "copyright" : "Die Items entstammen dem Anorexia Nervosa Stages of Change Questionnaire (ANSOCQ; Rieger et al. 2000, Int J Eat Disord), im Zuschnitt des PCOR-MII Item Level Dictionary. Deutschsprachige Validierung: Pauli et al., J Eat Disord 2017, doi:10.1186/s40337-016-0125-z. Nutzungsstatus laut DIZ-Implementierungsliste PCOR-MII: frei. Die Rechte an Instrument und Item-Formulierungen verbleiben bei den Autor:innen; Nachnutzende müssen die Nutzungsbedingungen für den eigenen Anwendungsfall eigenständig prüfen. Nur der PCOR-MII-eigene FHIR-Inhalt unterliegt der Repository-Lizenz (CC-BY-4.0).",
  "code" : [{
    "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-questionnaire-catalogue",
    "code" : "ansocq-2",
    "display" : "ANSOCQ-2"
  }],
  "item" : [{
    "linkId" : "ansocq-intro",
    "text" : "Die beiden nächsten Fragen bestehen aus fünf Möglichkeiten. Lesen Sie bitte für jeden Abschnitt die fünf Feststellungen sorgfältig durch. Dann wählen Sie diejenige Feststellung (oder mehrere Feststellungen) aus, welche Ihre momentane Einstellung und Ihr momentanes Verhalten am besten beschreibt bzw. beschreiben (nicht wie Sie früher gewesen sind oder wie Sie gerne wären).",
    "type" : "display"
  },
  {
    "linkId" : "ansocq3",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "ansocq3"
    }],
    "text" : "The following statements refer to parts of your body which may particularly concern you in terms of weight gain (such as hips, thighs, stomach, or buttocks):",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de-CH"
        },
        {
          "url" : "content",
          "valueString" : "Die folgenden Feststellungen beziehen sich auf Körperteile, über die Sie Sich im Falle einer Gewichtszunahme möglicherweise besonders Sorgen machen (wie z.B. Hüften, Oberschenkel, Bauch oder Gesäss):"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      },
      {
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "Die folgenden Feststellungen beziehen sich auf Körperteile, über die Sie sich im Falle einer Gewichtszunahme möglicherweise besonders Sorgen machen (wie z.B. Hüften, Oberschenkel, Bauch oder Gesäß):"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/ansocq-koerperteile-vs"
  },
  {
    "linkId" : "ansocq14",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "ansocq14"
    }],
    "text" : "The following statements refer to time spent thinking about food and your weight (such as thoughts about becoming fat, counting the calories or fat content of food, or calculating the amount of energy used when exercising):",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de-CH"
        },
        {
          "url" : "content",
          "valueString" : "Die folgenden Feststellungen beziehen sich auf die Zeit, die mit Gedanken an Nahrung und Gewicht verbracht wird (z.B. Gedanken daran, dick zu werden, Kalorienzählen, Fettanteil von Nahrungsmitteln ausrechnen, Errechnen des Kalorienverbrauchs durch sportliche Betätigung):"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      },
      {
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "Die folgenden Feststellungen beziehen sich auf die Zeit, die mit Gedanken an Nahrung und Gewicht verbracht wird (z.B. Gedanken daran, dick zu werden, Kalorienzählen, Fettanteil von Nahrungsmitteln ausrechnen, Errechnen des Kalorienverbrauchs durch sportliche Betätigung):"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/ansocq-gedanken-vs"
  }]
}

```
