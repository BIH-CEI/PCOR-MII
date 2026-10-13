# ERQ-6: Dictionary-Variablen-IDs → FHIR-linkIds - PCOR-MII Implementation Guide v0.3.0

## ConceptMap: ERQ-6: Dictionary-Variablen-IDs → FHIR-linkIds (Experimental) 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "pcor-cm-erq-s-linkids",
  "url" : "https://bih-cei.github.io/PCOR-MII/ConceptMap/pcor-cm-erq-s-linkids",
  "version" : "0.3.0",
  "name" : "PcorCmErqSLinkIds",
  "title" : "ERQ-6: Dictionary-Variablen-IDs → FHIR-linkIds",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-09-29",
  "publisher" : "BIH-CEI",
  "contact" : [{
    "name" : "BIH-CEI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.bihealth.org/"
    }]
  }],
  "description" : "Bildet die sequenziellen Variablen-IDs des PCOR-MII Item Level Dictionary (erq1–erq6) auf die linkIds des ERQ-6-Questionnaire ab, die den Original-ERQ-Itemnummern entsprechen (1, 2, 3, 6, 8, 9). Erforderlich, weil drei IDs abweichen und `erq6` in beiden Systemen existiert, dort aber verschiedene Items bezeichnet — ein Mapping über Namensgleichheit führt zu einer stillen Fehlzuordnung. Hinweis: Die Id dieser ConceptMap enthält historisch „erq-s“; der Bogen ist jedoch nicht der ERQ-S (siehe [ERQ-6](ERQ-6.html)).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "purpose" : "Lesehilfe für die Übernahme von Studiendaten, die unter den Variablennamen des Item Level Dictionary erhoben wurden, in QuestionnaireResponses zum ERQ-6-Questionnaire.",
  "group" : [{
    "source" : "https://bih-cei.github.io/PCOR-MII/linkid/item-level-dictionary/ERQ-6",
    "target" : "https://bih-cei.github.io/PCOR-MII/linkid/Questionnaire/ERQ6",
    "element" : [{
      "code" : "erq1",
      "display" : "Dictionary erq1 — Mehr positive Gefühle: ändere, woran ich denke",
      "target" : [{
        "code" : "erq1",
        "display" : "ERQ-Item 1 (Neubewertung)",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "erq2",
      "display" : "Dictionary erq2 — Ich behalte meine Gefühle für mich",
      "target" : [{
        "code" : "erq2",
        "display" : "ERQ-Item 2 (Unterdrückung)",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "erq3",
      "display" : "Dictionary erq3 — Weniger negative Gefühle: ändere, woran ich denke",
      "target" : [{
        "code" : "erq3",
        "display" : "ERQ-Item 3 (Neubewertung)",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "erq4",
      "display" : "Dictionary erq4 — Kontrolle, indem ich Gefühle nicht nach außen zeige",
      "target" : [{
        "code" : "erq6",
        "display" : "ERQ-Item 6 (Unterdrückung)",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "erq5",
      "display" : "Dictionary erq5 — Kontrolle, indem ich über die Situation anders nachdenke",
      "target" : [{
        "code" : "erq8",
        "display" : "ERQ-Item 8 (Neubewertung)",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "erq6",
      "display" : "Dictionary erq6 — Bei negativen Gefühlen: sorge dafür, sie nicht zu zeigen (ACHTUNG: NICHT auf linkId erq6 abbilden)",
      "target" : [{
        "code" : "erq9",
        "display" : "ERQ-Item 9 (Unterdrückung)",
        "equivalence" : "equal"
      }]
    }]
  }]
}

```
