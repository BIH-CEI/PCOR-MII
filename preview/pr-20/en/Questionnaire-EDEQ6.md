# EDE-Q6 — Essstörungspathologie (6-Item-Zuschnitt des EDE-Q) - PCOR-MII Implementation Guide v0.3.0

## Questionnaire: EDE-Q6 — Essstörungspathologie (6-Item-Zuschnitt des EDE-Q) (Experimental) 

 
Sechs Items aus dem Eating Disorder Examination-Questionnaire (EDE-Q): drei 28-Tage-Häufigkeitsitems (Restriktion, gedankliche Beschäftigung, Abnehmwunsch), ein Item zum Körperunbehagen (0-6) sowie zwei Zusatzfragen zur Regelblutung. Kein Score — für den Zuschnitt liegt keine validierte Scoring-Vorschrift vor. Quelle: PCOR-MII Item Level Dictionary (Entität AN). 

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
  "id" : "EDEQ6",
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
    "valueMarkdown" : "**Designentscheidungen (ADR-003):** (0) **Auswahlregel des Zuschnitts** laut DIZ-Implementierungsliste, Spalte *„verkürzte Version?“*: *„nicht vollständig verwendet, sondern nur das Item mit der höchsten Trennschärfe pro Skala“*. Gegen die Standardzusammensetzung des EDE-Q nachgeprüft — die vier Skalen-Items sind je eines pro Subskala (Restraint, Eating Concern, Weight Concern, Shape Concern). Der Zuschnitt ist damit nach einem psychometrischen Kriterium gebildet, nicht willkürlich gekürzt; ein trennschärfstes Item bildet die Skala aber nicht ab, daher kein Score. (1) `linkId`s = Original-EDE-Q-Itemnummern (1, 7, 12, 27, 29, 30) — **verifiziert** über die Subskalen-zuordnung: Die vier Skalen-Items sind je eines pro Subskala (Restraint `edeq1`, Eating Concern `edeq7`, Weight Concern `edeq12`, Shape Concern `edeq27`), was die Angabe „ein Item je Skala“ der DIZ-Liste wörtlich bestätigt. (1a) **Keine offizielle Kurzform:** Vom EDE-Q gibt es zwar validierte Kurzfassungen (EDE-QS, EDE-Q-13, EDE-Q-8), aber keine 4-Item-Version je Subskala — anders als beim ERQ-S ist dieser Zuschnitt projektspezifisch, daher kein Score. (2) Kein Score: Der EDE-Q wird über Subskalen-/Global-Mittelwerte ausgewertet; für den 6-Item-Zuschnitt liegt keine validierte Scoring-Vorschrift vor, `edeq29`/`edeq30` sind nicht skalenbildend. (3a) **Englisch primär** (ADR-005): `item.text` und die sieben Antwortkonzepte tragen den Wortlaut des autorisierten Bogens EDE-Q 6.0 (© Fairburn and Beglin 2008, frei bereitgestellt von CREDO Oxford); die deutsche Fassung hängt als `translation` bzw. `designation` mit `lang = de` daran. Das verschiebt zugleich den rechtlich heikleren deutschen Wortlaut aus dem Hauptinhalt in eine Übersetzungsebene. (3b) **Zur Nummerierung von `edeq29` und `edeq30`:** Im englischen EDE-Q 6.0 sind diese beiden Fragen **nicht nummeriert** — sie stehen in einem unnummerierten Schlussblock nach Item 28, zusammen mit Gewicht, Größe und der Frage nach der Pille. Die Nummern 29 und 30 stammen aus der deutschen Ausgabe. Die `linkId`s folgen damit der deutschen Zählung, nicht dem Originalbogen. (3) Kein `Questionnaire.code`: SNOMED `446825002` bezeichnet das Vollinstrument und wird dem Zuschnitt nicht zugewiesen. (4) `edeq27` als integer+Slider nach dem Original-Antwortblock (0 = überhaupt nicht … 6 = deutlich). (5) **`item.code` trägt die PCOR-MII-Dictionary-Variable** gegen [`pcor-item-dictionary`](CodeSystem-pcor-item-dictionary.html) — das ist der PCOR-MII-Code des Items, ein weiteres lokales CodeSystem gibt es dafür bewusst nicht. Er bezeichnet das **Erhebungsfeld**; hier stimmt es mit der Itemnummer überein, anders als beim [ERQ-S](ERQ-6.html). Wozu der Code gut ist: das maschinelle Verteilen eines flach erhobenen Datensatzes auf die Instrumenten-Questionnaires (ADR-011). Details: <https://bih-cei.github.io/PCOR-MII/Designentscheidungen.html>"
  }],
  "url" : "https://bih-cei.github.io/PCOR-MII/Questionnaire/EDEQ6",
  "version" : "0.3.0",
  "name" : "EDEQ6",
  "title" : "EDE-Q6 — Essstörungspathologie (6-Item-Zuschnitt des EDE-Q)",
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
  "description" : "Sechs Items aus dem Eating Disorder Examination-Questionnaire (EDE-Q): drei 28-Tage-Häufigkeitsitems (Restriktion, gedankliche Beschäftigung, Abnehmwunsch), ein Item zum Körperunbehagen (0-6) sowie zwei Zusatzfragen zur Regelblutung. Kein Score — für den Zuschnitt liegt keine validierte Scoring-Vorschrift vor. Quelle: PCOR-MII Item Level Dictionary (Entität AN).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "copyright" : "Die Items entstammen wortgleich der autorisierten deutschen Übersetzung: Hilbert A, Tuschen-Caffier B. Eating Disorder Examination-Questionnaire. Deutschsprachige Übersetzung. 2. Auflage. Tübingen: dgvt-Verlag, 2016. © 2016 Anja Hilbert. Der Verlag stellt den vollständigen Fragebogen samt Auswertungsbogen selbst frei zum Download bereit (dgvt-verlag.de, ohne Registrierung oder Bezahlschranke); auf diese Bereitstellung stützt sich die Aufnahme des Wortlauts hier. Zugleich trägt die Publikation den Vorbehalt „Alle Rechte vorbehalten“, der ausdrücklich auch die Einspeicherung und Verarbeitung in elektronischen Systemen nennt. Eine ausdrückliche Zustimmung der Rechteinhaberin für die hiesige Verwendung liegt nicht vor und wird angestrebt — die Abwägung ist unter Designentscheidungen dokumentiert. Englisches Original: EDE-Q (Fairburn & Beglin 1994), abgeleitet aus der EDE (Fairburn, Cooper & O'Connor 1993). Zuschnitt nach dem PCOR-MII Item Level Dictionary. Nutzungsstatus laut DIZ-Implementierungsliste PCOR-MII: frei. Die Rechte an Instrument und Item-Formulierungen verbleiben bei den Autor:innen; Nachnutzende müssen die Nutzungsbedingungen für den eigenen Anwendungsfall eigenständig prüfen. Nur der PCOR-MII-eigene FHIR-Inhalt unterliegt der Repository-Lizenz (CC-BY-4.0).",
  "item" : [{
    "linkId" : "edeq-intro",
    "text" : "The following questions are concerned with the past four weeks (28 days) only.",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "Die folgenden Fragen beziehen sich ausschließlich auf die letzten vier Wochen (28 Tage)."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "display"
  },
  {
    "linkId" : "edeq1",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "edeq1"
    }],
    "text" : "ON HOW MANY OF THE PAST 28 DAYS … Have you been deliberately trying to limit the amount of food you eat to influence your shape or weight (whether or not you have succeeded)?",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "AN WIE VIELEN DER LETZTEN 28 TAGE ... Haben Sie bewusst versucht, die Nahrungsmenge, die Sie essen, zu begrenzen, um Ihre Figur oder Ihr Gewicht zu beeinflussen (unabhängig davon, ob es Ihnen tatsächlich gelungen ist)?"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/ede-q6-tage-vs"
  },
  {
    "linkId" : "edeq7",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "edeq7"
    }],
    "text" : "ON HOW MANY OF THE PAST 28 DAYS … Has thinking about food, eating or calories made it very difficult to concentrate on things you are interested in (for example, working, following a conversation, or reading)?",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "AN WIE VIELEN DER LETZTEN 28 TAGE ... Hat das Nachdenken über Nahrung, Essen oder Kalorien es Ihnen sehr schwer gemacht, sich auf Dinge zu konzentrieren, die Sie interessieren (z. B. arbeiten, einem Gespräch folgen oder lesen)?"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/ede-q6-tage-vs"
  },
  {
    "linkId" : "edeq12",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "edeq12"
    }],
    "text" : "ON HOW MANY OF THE PAST 28 DAYS … Have you had a strong desire to lose weight?",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "AN WIE VIELEN DER LETZTEN 28 TAGE ... Hatten Sie einen starken Wunsch abzunehmen?"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/ede-q6-tage-vs"
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
      "valueInteger" : 0
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
      "valueInteger" : 6
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
    "linkId" : "edeq27",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "edeq27"
    }],
    "text" : "OVER THE PAST 28 DAYS … How uncomfortable have you felt seeing your body (for example, seeing your shape in the mirror, in a shop window reflection, while undressing or taking a bath or shower)?",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "WÄHREND DER LETZTEN VIER WOCHEN (28 TAGE) ... Wie unwohl haben Sie sich gefühlt, wenn Sie Ihren Körper gesehen haben (z. B. im Spiegel, Ihr Spiegelbild im Schaufenster, beim Ausziehen, Baden oder Duschen)?"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "integer",
    "item" : [{
      "linkId" : "edeq27-anchors",
      "text" : "0 = not at all, 1–2 = slightly, 3–4 = moderately, 5–6 = markedly",
      "_text" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "0 = überhaupt nicht, 1–2 = leicht, 3–4 = mäßig, 5–6 = deutlich"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "type" : "display"
    }]
  },
  {
    "linkId" : "edeq-frauen-intro",
    "text" : "If female:",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "Für Frauen:"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "display"
  },
  {
    "linkId" : "edeq29",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "edeq29"
    }],
    "text" : "Over the past three-to-four months have you missed any menstrual periods?",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "Ist Ihre Regelblutung während der letzten drei bis vier Monate ausgeblieben?"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/dem-ja-nein"
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/designNote",
      "valueMarkdown" : "Das Item Level Dictionary nennt als Bedingung „If edeq31 = 1“; eine Variable `edeq31` existiert im AN-Blatt nicht (Erratum). Umgesetzt als `enableWhen` auf `edeq29` = ja — die Ja/Nein-Frage direkt davor."
    }],
    "linkId" : "edeq30",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "edeq30"
    }],
    "text" : "If so, how many?",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "Wenn ja, wie viele Regelblutungen sind ausgeblieben?"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "integer",
    "enableWhen" : [{
      "question" : "edeq29",
      "operator" : "=",
      "answerCoding" : {
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-antwort",
        "code" : "ja",
        "display" : "Ja"
      }
    }]
  }]
}

```
