# ERQ-6 — Emotion Regulation Questionnaire, 6-Item-Zuschnitt - PCOR-MII Implementation Guide v0.3.0

## Questionnaire: ERQ-6 — Emotion Regulation Questionnaire, 6-Item-Zuschnitt (Experimentell) 

 
Projektspezifischer 6-Item-Zuschnitt des Emotion Regulation Questionnaire (ERQ; Gross & John 2003): die ERQ-Items 1, 2, 3, 6, 8 und 9 im unveränderten Originalwortlaut, 7-stufige Likert-Skala (1 = stimmt überhaupt nicht … 7 = stimmt vollkommen). NICHT der ERQ-S: Dieser besteht laut Preece et al. (2023, Tabelle 1) aus den ERQ-Items 2, 6, 7, 8, 9 und 10. Vier Items überschneiden sich, die Neubewertungs-Items nicht — PCOR-MII hat 1 und 3, der ERQ-S hat 7 und 10. Daher KEIN Score — die publizierten ERQ-S-Kennwerte gelten für den ERQ-S-Wortlaut, nicht für diesen Satz. linkIds sind die Original-ERQ-Itemnummern; deutsche Wortlaute aus der autorisierten Fassung von Abler & Kessler (2009), englische aus dem ERQ-Originalbogen (Gross & John). Jedes Item trägt in `item.code` seine PCOR-MII-Dictionary-Variable — das ist der PCOR-MII-Code des Items. ACHTUNG: Sie ist hier NICHT die Itemnummer. Dictionary erq4/erq5/erq6 liegen auf den ERQ-Items 6/8/9; die Original-Itemnummer steht im linkId. 

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
      "display" : "SemVer"
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/designNote",
    "valueMarkdown" : "**Designentscheidungen (ADR-003):** (0) **NICHT der ERQ-S — korrigiert am 2026-10-01.** Dieser Bogen wurde zuvor als die offizielle Kurzform ERQ-S (Preece et al. 2023) ausgewiesen. Das ist falsch. Deren Tabelle 1 gibt die Zuordnung an: Der **ERQ-S besteht aus den ERQ-Items 2, 6, 7, 8, 9 und 10** — Cognitive Reappraisal 7, 8, 10 und Expressive Suppression 2, 6, 9. PCOR-MII führt dagegen die **ERQ-Items 1, 2, 3, 6, 8 und 9**. Vier Items überschneiden sich, und die Unterdrückungs-Items sind sogar identisch (2, 6, 9) — die **Neubewertungs-Items aber nicht**: PCOR-MII hat 1 und 3, der ERQ-S hat 7 und 10. Es sind also zwei verschiedene Zuschnitte desselben Instruments. (1) **Kein Score — Folge daraus.** Die publizierten ERQ-S-Kennwerte gelten für dessen Itemsatz, nicht für diesen. Bezogen auf das Vollinstrument ist der Satz ohnehin ein Zuschnitt — drei der sechs Neubewertungs- und drei der vier Unterdrückungs-Items des ERQ-10 —, für den keine Scoring-Vorschrift publiziert ist. Nach ADR-003 Punkt 3 gibt es daher keinen Score: Die beiden ObservationDefinitions, die Beispiel-Observations, die Katalogcodes und die FHIRPath-Variablen sind zurückgezogen. (2) `linkId`s = Original-ERQ-Itemnummern; die Dictionary-Variablen-IDs laufen sequenziell — Mapping: erq4→`erq6`, erq5→`erq8`, erq6→`erq9`. (3) **Scoring vorhanden:** Neubewertung = `erq1`+`erq3`+`erq8`, Unterdrückung = `erq2`+`erq6`+`erq9`, je 3–21; kein Gesamtscore. Als `ObservationDefinition` modelliert. (4) US-Normwerte bewusst nicht als Referenzintervalle hinterlegt — es sind keine deutschen Normen. (5a) **Englisch primär** (ADR-005): `item.text` trägt den englischen Originalwortlaut (Gross & John 2003), die autorisierte deutsche Fassung von Abler & Kessler (2009) hängt als `translation`-Extension mit `lang = de` daran. Beide Bögen stellt das Stanford Psychophysiology Laboratory frei bereit. **Nur die sechs ERQ-S-Items sind modelliert, nicht der ERQ-10.** Die Langform darf nach ADR-008 mitmodelliert werden und ist vollständig beschafft, ist aber nicht Bestandteil dieses Release; für diesen Bogen ist sie vor allem die **Quelle des deutschen Wortlauts**, den die Kurzform-Publikation nicht enthält. (5) Keine Terminologie-Codes: LOINC und SNOMED CT kennen den ERQ nicht. (6) **`item.code` trägt die PCOR-MII-Dictionary-Variable** gegen [`pcor-item-dictionary`](CodeSystem-pcor-item-dictionary.html) — das ist der PCOR-MII-Code des Items, ein weiteres lokales CodeSystem gibt es dafür bewusst nicht. Er bezeichnet das **Erhebungsfeld**, nicht die Itemnummer, und bei diesem Bogen fällt beides auseinander: Dictionary `erq4`, `erq5` und `erq6` liegen auf den ERQ-Items **6, 8 und 9**. Wer den Code für eine Itemnummer nimmt, ordnet falsch zu — die Original-Itemnummer steht im `linkId` (ADR-008), die Abbildung zusätzlich in der ConceptMap `pcor-cm-erq-s-linkids`. Wozu der Code gut ist: das maschinelle Verteilen eines flach erhobenen Datensatzes auf die Instrumenten-Questionnaires (ADR-011). Details: <https://bih-cei.github.io/PCOR-MII/Designentscheidungen.html>"
  }],
  "url" : "https://bih-cei.github.io/PCOR-MII/Questionnaire/ERQ6",
  "version" : "0.3.0",
  "name" : "ERQ6",
  "title" : "ERQ-6 — Emotion Regulation Questionnaire, 6-Item-Zuschnitt",
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
  "description" : "Projektspezifischer 6-Item-Zuschnitt des Emotion Regulation Questionnaire (ERQ; Gross & John 2003): die ERQ-Items 1, 2, 3, 6, 8 und 9 im unveränderten Originalwortlaut, 7-stufige Likert-Skala (1 = stimmt überhaupt nicht ... 7 = stimmt vollkommen). NICHT der ERQ-S: Dieser besteht laut Preece et al. (2023, Tabelle 1) aus den ERQ-Items 2, 6, 7, 8, 9 und 10. Vier Items überschneiden sich, die Neubewertungs-Items nicht — PCOR-MII hat 1 und 3, der ERQ-S hat 7 und 10. Daher KEIN Score — die publizierten ERQ-S-Kennwerte gelten für den ERQ-S-Wortlaut, nicht für diesen Satz. linkIds sind die Original-ERQ-Itemnummern; deutsche Wortlaute aus der autorisierten Fassung von Abler & Kessler (2009), englische aus dem ERQ-Originalbogen (Gross & John). Jedes Item trägt in `item.code` seine PCOR-MII-Dictionary-Variable — das ist der PCOR-MII-Code des Items. ACHTUNG: Sie ist hier NICHT die Itemnummer. Dictionary erq4/erq5/erq6 liegen auf den ERQ-Items 6/8/9; die Original-Itemnummer steht im linkId.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "copyright" : "Die sechs Items sind die Items 1, 2, 3, 6, 8 und 9 des Emotion Regulation Questionnaire (ERQ; Gross & John 2003, J Pers Soc Psychol 85:348-362), im unveränderten Wortlaut. Der ERQ-Originalbogen und die von Gross und John autorisierte deutsche Übersetzung von Abler & Kessler (2009, Diagnostica 55(3):144-152) sind frei über das Stanford Psychophysiology Laboratory bereitgestellt. Dieser Zuschnitt ist NICHT die offizielle Kurzform ERQ-S (Preece, Petrova, Mehta & Gross 2023, doi:10.1016/j.jad.2023.08.076): Diese besteht laut deren Tabelle 1 aus den ERQ-Items 2, 6, 7, 8, 9 und 10. Nutzungsstatus laut DIZ-Implementierungsliste PCOR-MII: frei. Die Rechte an Instrument und Item-Formulierungen verbleiben bei den Autor:innen; Nachnutzende müssen die Nutzungsbedingungen für den eigenen Anwendungsfall eigenständig prüfen. Nur der PCOR-MII-eigene FHIR-Inhalt unterliegt der Repository-Lizenz (CC-BY-4.0).",
  "code" : [{
    "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-questionnaire-catalogue",
    "code" : "erq-6",
    "display" : "ERQ-6"
  }],
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
