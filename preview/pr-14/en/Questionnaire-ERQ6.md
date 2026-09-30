# ERQ-S — Emotion Regulation Questionnaire, Kurzform (6 Items) - PCOR-MII Implementation Guide v0.3.0

## Questionnaire: ERQ-S — Emotion Regulation Questionnaire, Kurzform (6 Items) (Experimental) 

 
Offizielle Kurzform des Emotion Regulation Questionnaire (ERQ-S; Preece et al. 2023): sechs Items, 7-stufige Likert-Skala (1 = stimmt überhaupt nicht … 7 = stimmt vollkommen). Zwei Subskalen mit je drei Items, Wertebereich 3-21: Neubewertung (erq1, erq3, erq8) und Unterdrückung (erq2, erq6, erq9). Kein Gesamtscore. linkIds sind die Original-ERQ-Itemnummern; deutsche Wortlaute aus der autorisierten Fassung von Abler & Kessler (2009). 

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
  "id" : "ERQ6",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire"]
  },
  "language" : "en",
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
    "valueMarkdown" : "**Designentscheidungen (ADR-003):** (0) **Auswahlregel des Zuschnitts:** Die DIZ-Implementierungsliste nennt in der Spalte *„verkürzte Version?“* die Formel *„nicht vollständig verwendet, sondern nur das Item mit der höchsten Trennschärfe pro Skala“*. Im Singular trifft das hier **nicht** zu — es sind drei Items je Subskala; die Formel wirkt bei diesem Eintrag durchkopiert. Der Zuschnitt ist keine projekteigene Auswahl, sondern die publizierte Kurzform ERQ-S, und deshalb der einzige AN-Zuschnitt mit validiertem Scoring. (1) Dieser Bogen ist die **offizielle Kurzform ERQ-S** (Preece et al. 2023) — verifiziert am 2026-09-29 gegen den Originalbogen der Autor:innen: Die sechs ERQ-S-Items sind die ERQ-Items 1, 2, 3, 6, 8, 9, also exakt die hier modellierten `linkId`s. (2) `linkId`s = Original-ERQ-Itemnummern; die Dictionary-Variablen-IDs laufen sequenziell — Mapping: erq4→`erq6`, erq5→`erq8`, erq6→`erq9`. (3) **Scoring vorhanden:** Neubewertung = `erq1`+`erq3`+`erq8`, Unterdrückung = `erq2`+`erq6`+`erq9`, je 3–21; kein Gesamtscore. Als `ObservationDefinition` modelliert. (4) US-Normwerte bewusst nicht als Referenzintervalle hinterlegt — es sind keine deutschen Normen. (5a) **Englisch primär** (ADR-005): `item.text` trägt den englischen Originalwortlaut (Gross & John 2003), die autorisierte deutsche Fassung von Abler & Kessler (2009) hängt als `translation`-Extension mit `lang = de` daran. Beide Bögen stellt das Stanford Psychophysiology Laboratory frei bereit. **Nur die sechs ERQ-S-Items sind modelliert, nicht der ERQ-10.** Die Langform darf nach ADR-008 mitmodelliert werden und ist vollständig beschafft, ist aber nicht Bestandteil dieses Release; für diesen Bogen ist sie vor allem die **Quelle des deutschen Wortlauts**, den die Kurzform-Publikation nicht enthält. (5) Keine Terminologie-Codes: LOINC und SNOMED CT kennen den ERQ nicht. Details: <https://bih-cei.github.io/PCOR-MII/Designentscheidungen.html>"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/variable",
    "valueExpression" : {
      "name" : "erqsReappraisal",
      "language" : "text/fhirpath",
      "expression" : "%resource.item.where(linkId.matches('^erq(1|3|8)$')).answer.value.sum()"
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/variable",
    "valueExpression" : {
      "name" : "erqsSuppression",
      "language" : "text/fhirpath",
      "expression" : "%resource.item.where(linkId.matches('^erq(2|6|9)$')).answer.value.sum()"
    }
  }],
  "url" : "https://bih-cei.github.io/PCOR-MII/Questionnaire/ERQ6",
  "version" : "0.3.0",
  "name" : "ERQ6",
  "title" : "ERQ-S — Emotion Regulation Questionnaire, Kurzform (6 Items)",
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
  "description" : "Offizielle Kurzform des Emotion Regulation Questionnaire (ERQ-S; Preece et al. 2023): sechs Items, 7-stufige Likert-Skala (1 = stimmt überhaupt nicht ... 7 = stimmt vollkommen). Zwei Subskalen mit je drei Items, Wertebereich 3-21: Neubewertung (erq1, erq3, erq8) und Unterdrückung (erq2, erq6, erq9). Kein Gesamtscore. linkIds sind die Original-ERQ-Itemnummern; deutsche Wortlaute aus der autorisierten Fassung von Abler & Kessler (2009).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "copyright" : "Die sechs Items bilden die offizielle Kurzform ERQ-S (Preece, Petrova, Mehta & Gross 2023, doi:10.1016/j.jad.2023.08.076) des Emotion Regulation Questionnaire (ERQ; Gross & John 2003). Der ERQ-S-Originalbogen ist © Stanford Psychophysiology Laboratory; die deutschen Wortlaute stammen aus der von Gross und John autorisierten Übersetzung von Abler & Kessler (2009). Nutzungsstatus laut DIZ-Implementierungsliste PCOR-MII: frei. Die Rechte an Instrument und Item-Formulierungen verbleiben bei den Autor:innen; Nachnutzende müssen die Nutzungsbedingungen für den eigenen Anwendungsfall eigenständig prüfen. Nur der PCOR-MII-eigene FHIR-Inhalt unterliegt der Repository-Lizenz (CC-BY-4.0).",
  "item" : [{
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
      "valueInteger" : 1
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
      "valueInteger" : 7
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-sliderStepValue",
      "valueInteger" : 1
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://hl7.org/fhir/questionnaire-item-control",
          "code" : "slider",
          "display" : "Slider"
        }]
      }
    }],
    "linkId" : "erq1",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "erq1"
    }],
    "text" : "When I want to feel more positive emotion (such as joy or amusement), I change what I’m thinking about.",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "Wenn ich mehr positive Gefühle (wie Freude oder Heiterkeit) empfinden möchte, ändere ich, woran ich denke."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "integer",
    "item" : [{
      "linkId" : "erq1-anchors",
      "text" : "1 = strongly disagree, 4 = neutral, 7 = strongly agree",
      "_text" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "1 = stimmt überhaupt nicht, 4 = neutral, 7 = stimmt vollkommen"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "type" : "display"
    }]
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
      "valueInteger" : 1
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
      "valueInteger" : 7
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-sliderStepValue",
      "valueInteger" : 1
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://hl7.org/fhir/questionnaire-item-control",
          "code" : "slider",
          "display" : "Slider"
        }]
      }
    }],
    "linkId" : "erq2",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "erq2"
    }],
    "text" : "I keep my emotions to myself.",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "Ich behalte meine Gefühle für mich."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "integer",
    "item" : [{
      "linkId" : "erq2-anchors",
      "text" : "1 = strongly disagree, 4 = neutral, 7 = strongly agree",
      "_text" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "1 = stimmt überhaupt nicht, 4 = neutral, 7 = stimmt vollkommen"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "type" : "display"
    }]
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
      "valueInteger" : 1
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
      "valueInteger" : 7
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-sliderStepValue",
      "valueInteger" : 1
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://hl7.org/fhir/questionnaire-item-control",
          "code" : "slider",
          "display" : "Slider"
        }]
      }
    }],
    "linkId" : "erq3",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "erq3"
    }],
    "text" : "When I want to feel less negative emotion (such as sadness or anger), I change what I’m thinking about.",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "Wenn ich weniger negative Gefühle (wie Traurigkeit oder Ärger) empfinden möchte, ändere ich, woran ich denke."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "integer",
    "item" : [{
      "linkId" : "erq3-anchors",
      "text" : "1 = strongly disagree, 4 = neutral, 7 = strongly agree",
      "_text" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "1 = stimmt überhaupt nicht, 4 = neutral, 7 = stimmt vollkommen"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "type" : "display"
    }]
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
      "valueInteger" : 1
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
      "valueInteger" : 7
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-sliderStepValue",
      "valueInteger" : 1
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://hl7.org/fhir/questionnaire-item-control",
          "code" : "slider",
          "display" : "Slider"
        }]
      }
    }],
    "linkId" : "erq6",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "erq4"
    }],
    "text" : "I control my emotions by not expressing them.",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "Ich halte meine Gefühle unter Kontrolle, indem ich sie nicht nach außen zeige."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "integer",
    "item" : [{
      "linkId" : "erq6-anchors",
      "text" : "1 = strongly disagree, 4 = neutral, 7 = strongly agree",
      "_text" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "1 = stimmt überhaupt nicht, 4 = neutral, 7 = stimmt vollkommen"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "type" : "display"
    }]
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
      "valueInteger" : 1
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
      "valueInteger" : 7
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-sliderStepValue",
      "valueInteger" : 1
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://hl7.org/fhir/questionnaire-item-control",
          "code" : "slider",
          "display" : "Slider"
        }]
      }
    }],
    "linkId" : "erq8",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "erq5"
    }],
    "text" : "I control my emotions by changing the way I think about the situation I’m in.",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "Ich halte meine Gefühle unter Kontrolle, indem ich über meine aktuelle Situation anders nachdenke."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "integer",
    "item" : [{
      "linkId" : "erq8-anchors",
      "text" : "1 = strongly disagree, 4 = neutral, 7 = strongly agree",
      "_text" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "1 = stimmt überhaupt nicht, 4 = neutral, 7 = stimmt vollkommen"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "type" : "display"
    }]
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
      "valueInteger" : 1
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
      "valueInteger" : 7
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-sliderStepValue",
      "valueInteger" : 1
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://hl7.org/fhir/questionnaire-item-control",
          "code" : "slider",
          "display" : "Slider"
        }]
      }
    }],
    "linkId" : "erq9",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "erq6"
    }],
    "text" : "When I am feeling negative emotions, I make sure not to express them.",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "Wenn ich negative Gefühle empfinde, sorge ich dafür, sie nicht nach außen zu zeigen."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "integer",
    "item" : [{
      "linkId" : "erq9-anchors",
      "text" : "1 = strongly disagree, 4 = neutral, 7 = strongly agree",
      "_text" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "1 = stimmt überhaupt nicht, 4 = neutral, 7 = stimmt vollkommen"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "type" : "display"
    }]
  }]
}

```
