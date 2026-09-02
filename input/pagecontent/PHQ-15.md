Der **PHQ-15** (Patient Health Questionnaire-15) ist ein validiertes Screening-Instrument für die Schwere **somatischer Symptome** (15 Items, vier Wochen Recall, dreistufige Skala 0–2).

### Verwendung in PCOR-MII

PCOR-MII referenziert den im MII PRO-Modul gepflegten Questionnaire — kein eigener Nachbau. Er kommt über die Paket-Abhängigkeit `de.medizininformatikinitiative.kerndatensatz.pros` (2026.6.0) mit; der Score wird als `Observation` abgelegt (LOINC `70273-8`, Summenscore 0–30 mit Kroenke-Schweregraden 0–4 / 5–9 / 10–14 / ≥15). Die vollständige Spezifikation (Items, Antwortoptionen, Scoring-Logik) ist im MII PRO-Modul gepflegt (Paket 2026.6.0) und wird hier bewusst nicht dupliziert; eine eigene Doku-Seite im veröffentlichten MII-PRO-IG folgt mit dessen nächster Publikation.

### Canonical

`https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-phq-15`

### Hinweise

- PHQ-15 teilt zwei Items mit dem PHQ-9 über einen gemeinsamen Item-`linkId`-Namespace. Für die reine PHQ-15-Umsetzung ist das ohne Belang — relevant nur bei gemeinsamer Verarbeitung beider Instrumente. Details: [PHQ-Übersicht](PHQ.html).

### Beispiel-QuestionnaireResponse

Das MII PRO-Modul liefert ein vollständiges QR-Beispiel mit — [`mii-exa-pro-phq-15-response`](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.pros/2026.6.0) (Upstream, Simplifier). Die Pflege erfolgt zentral im MII PRO-Modul und wird hier bewusst nicht dupliziert.

### Quellen

- [MII PRO Package 2026.6.0 (Simplifier)](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.pros/2026.6.0)
- Lizenz: PHQ / PHQ-15 © Pfizer Inc. — frei verfügbar (public domain), keine Genehmigung erforderlich. Deutsche Fassung: PHQ-D (Löwe, Spitzer, Zipfel & Herzog 2002).
- Referenz: Kroenke K, Spitzer RL, Williams JBW. The PHQ-15. *Psychosom Med.* 2002;64(2):258–266.
