PROMIS® Cognitive Function Short Form 4a misst die subjektive kognitive Funktion (Konzentration, Erinnerung, klares Denken) mit 4 Items. Die Kurzform eignet sich für Studien, in denen kognitive Selbstauskunft als ein Domain unter mehreren erhoben werden soll, ohne den Fragebogen-Aufwand einer Long-Form.

### Verwendung in PCOR-MII

PCOR-MII referenziert den im MII PRO-Modul gepflegten Questionnaire — kein eigener Nachbau. Die deutsche Übersetzung folgt der validierten PCOR-MII-Kuration (CPCOR Charité, Leitung Felix Fischer) und wurde gegen das PHO-Wording verifiziert (MATCH=4, DIFF=0).

### Canonical

`https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-cognitive-function-sf4a`

### Quellen

- Definition im MII PRO-Modul: [PROMIS-Bibliothek (Simplifier)](https://simplifier.net/guide/mii-pro-v2026-de/MIIIGModulPRO/PRO-Bibliothek/PROMIS)
- Lizenz & Copyright (4-Schichten-Modell PHO / CPCOR / LOINC / MII): [PROMIS-Lizenzierung](https://simplifier.net/guide/mii-pro-v2026-de/MIIIGModulPRO/PRO-Bibliothek/PROMIS)

### Eigenschaften

- **Items**: 4 (5-Punkt-Likert, "In den letzten 7 Tagen")
- **Primärsprache**: Englisch mit deutscher `translation`-Extension
- **Scoring**: Raw Score + T-Score (FHIR Variables Pattern)
- **Capabilities**: displayable, collectable, calculatable, extractable, domain-aligned

### Hinweise

- Items überlappen mit den Cognitive-Function-Items aus PROMIS-16 — Score-Vergleich erfordert Aufmerksamkeit auf die jeweilige Itemzusammensetzung und Skalierung.
- Für umfassende Kognitions-Erfassung steht zusätzlich die Long-Form (PROMIS Cognitive Function) zur Verfügung, die jedoch derzeit nicht im MII PRO-Modul implementiert ist.
