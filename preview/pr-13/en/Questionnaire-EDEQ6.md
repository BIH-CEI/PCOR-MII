# EDE-Q6 — Essstörungspathologie (6-Item-Zuschnitt des EDE-Q) - PCOR-MII Implementation Guide v0.2.0

## Questionnaire: EDE-Q6 — Essstörungspathologie (6-Item-Zuschnitt des EDE-Q) (Experimental) 

 
Sechs Items aus dem Eating Disorder Examination-Questionnaire (EDE-Q): drei 28-Tage-Häufigkeitsitems (Restriktion, gedankliche Beschäftigung, Abnehmwunsch), ein Item zum Körperunbehagen (0-6) sowie zwei Zusatzfragen zur Regelblutung. Kein Score — für den Zuschnitt liegt keine validierte Scoring-Vorschrift vor. Quelle: PCOR-MII Item Level Dictionary (Entität AN). 

*  [Tree view](#tabs-tree) 
*  [Sample Rendering](#tabs-sample) 
*  [Form Logic](#tabs-logic) 

### Test this Questionnaire

### Responses for this Questionnaire

* [Vollständig ausgefüllte Beispielantwort zum EDE-Q6-Questionnaire, einschließlich der über `enableWhen` abhängigen Frage `edeq30`. Antwortmuster: residuelle Essstörungspathologie bei teilrestituiertem Gewicht.](QuestionnaireResponse-EDEQ6Response.md)



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "EDEQ6",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/designNote",
    "valueMarkdown" : "**Designentscheidungen (ADR-003):** (0) **Auswahlregel des Zuschnitts** laut DIZ-Implementierungsliste, Spalte *„verkürzte Version?“*: *„nicht vollständig verwendet, sondern nur das Item mit der höchsten Trennschärfe pro Skala“*. Gegen die Standardzusammensetzung des EDE-Q nachgeprüft — die vier Skalen-Items sind je eines pro Subskala (Restraint, Eating Concern, Weight Concern, Shape Concern). Der Zuschnitt ist damit nach einem psychometrischen Kriterium gebildet, nicht willkürlich gekürzt; ein trennschärfstes Item bildet die Skala aber nicht ab, daher kein Score. (1) `linkId`s = Original-EDE-Q-Itemnummern (1, 7, 12, 27, 29, 30) — **verifiziert** über die Subskalen-zuordnung: Die vier Skalen-Items sind je eines pro Subskala (Restraint `edeq1`, Eating Concern `edeq7`, Weight Concern `edeq12`, Shape Concern `edeq27`), was die Angabe „ein Item je Skala“ der DIZ-Liste wörtlich bestätigt. (1a) **Keine offizielle Kurzform:** Vom EDE-Q gibt es zwar validierte Kurzfassungen (EDE-QS, EDE-Q-13, EDE-Q-8), aber keine 4-Item-Version je Subskala — anders als beim ERQ-S ist dieser Zuschnitt projektspezifisch, daher kein Score. (2) Kein Score: Der EDE-Q wird über Subskalen-/Global-Mittelwerte ausgewertet; für den 6-Item-Zuschnitt liegt keine validierte Scoring-Vorschrift vor, `edeq29`/`edeq30` sind nicht skalenbildend. (3) Kein `Questionnaire.code`: SNOMED `446825002` bezeichnet das Vollinstrument und wird dem Zuschnitt nicht zugewiesen. (4) `edeq27` als integer+Slider nach dem Original-Antwortblock (0 = überhaupt nicht … 6 = deutlich). Details: <https://bih-cei.github.io/PCOR-MII/Designentscheidungen.html>"
  }],
  "url" : "https://bih-cei.github.io/PCOR-MII/Questionnaire/EDEQ6",
  "version" : "0.2.0",
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
    "text" : "Die folgenden Fragen beziehen sich ausschließlich auf die letzten vier Wochen (28 Tage).",
    "type" : "display"
  },
  {
    "linkId" : "edeq1",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "edeq1"
    }],
    "text" : "AN WIE VIELEN DER LETZTEN 28 TAGE ... Haben Sie bewusst versucht, die Nahrungsmenge, die Sie essen, zu begrenzen, um Ihre Figur oder Ihr Gewicht zu beeinflussen (unabhängig davon, ob es Ihnen tatsächlich gelungen ist)?",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/ede-q6-tage-vs"
  },
  {
    "linkId" : "edeq7",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "edeq7"
    }],
    "text" : "AN WIE VIELEN DER LETZTEN 28 TAGE ... Hat das Nachdenken über Nahrung, Essen oder Kalorien es Ihnen sehr schwer gemacht, sich auf Dinge zu konzentrieren, die Sie interessieren (z. B. arbeiten, einem Gespräch folgen oder lesen)?",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/ede-q6-tage-vs"
  },
  {
    "linkId" : "edeq12",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "edeq12"
    }],
    "text" : "AN WIE VIELEN DER LETZTEN 28 TAGE ... Hatten Sie einen starken Wunsch abzunehmen?",
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
    "text" : "WÄHREND DER LETZTEN VIER WOCHEN (28 TAGE) ... Wie unwohl haben Sie sich gefühlt, wenn Sie Ihren Körper gesehen haben (z. B. im Spiegel, Ihr Spiegelbild im Schaufenster, beim Ausziehen, Baden oder Duschen)?",
    "type" : "integer",
    "item" : [{
      "linkId" : "edeq27-anchors",
      "text" : "0 = überhaupt nicht, 1–2 = leicht, 3–4 = mäßig, 5–6 = deutlich",
      "type" : "display"
    }]
  },
  {
    "linkId" : "edeq-frauen-intro",
    "text" : "Für Frauen:",
    "type" : "display"
  },
  {
    "linkId" : "edeq29",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "edeq29"
    }],
    "text" : "Ist Ihre Regelblutung während der letzten drei bis vier Monate ausgeblieben?",
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
    "text" : "Wenn ja, wie viele Regelblutungen sind ausgeblieben?",
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
