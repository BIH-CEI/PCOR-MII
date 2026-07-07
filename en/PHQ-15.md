# PHQ-15 - PCOR-MII Implementation Guide v0.1.0

## PHQ-15

**Translated page. Original language: German.**

Der **PHQ-15** (Patient Health Questionnaire-15) ist ein validiertes Screening-Instrument für die Schwere **somatischer Symptome**. 15 Items erfassen die Beeinträchtigung durch körperliche Beschwerden über vier Wochen auf einer dreistufigen Skala (0 = nicht, 1 = wenig, 2 = stark beeinträchtigt).

### Verwendung in PCOR-MII

PCOR-MII referenziert den im MII PRO-Modul gepflegten Questionnaire — kein eigener Nachbau. Zwei der 15 Items (Müdigkeit, Schlaf) stammen aus dem Depressionsmodul und teilen sich über den gemeinsamen **PHQ-D-Itembank-Namespace** dieselben linkIds wie im PHQ-9 (`phq-phq2d` Müdigkeit, `phq-phq2c` Schlaf).

### Canonical

`https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-phq-15`

### Quellen

* IG-Doku-Seite: [PHQ-15 im MII PRO IG (Simplifier)](https://simplifier.net/guide/modul-pro-v2026/MIIIGModulPRO/PRO-Bibliothek/PHQ-15.page.md?version=current)
* Raw-Resource: [MII PRO Package (Simplifier)](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.pros/2026.5.0)
* Lizenz: PHQ / PHQ-15 © Pfizer Inc. — **frei verfügbar** (public domain), keine Genehmigung für Reproduktion/Übersetzung/Nutzung erforderlich.
* Offizielle deutsche Quelle: PHQ-D (Löwe, Spitzer, Zipfel & Herzog 2002)

### Eigenschaften

* **Items**: 15 (3-Punkt-Skala 0–2)
* **Primärsprache**: Englisch mit deutscher `translation`-Extension (PHQ-D)
* **Antwortmodellierung**: `answerValueSet` (`mii-vs-pro-phq-15-answers`) mit ordinalValue-Gewichten auf den CodeSystem-Konzepten
* **Scoring**: Summenscore 0–30 mit Schweregrad-Kategorien (Kroenke et al. 2002: 0–4 / 5–9 / 10–14 / ≥15)
* **Capabilities**: displayable, collectable, calculatable, extractable, domain-aligned

### Hinweise

* Der Score wird als `ObservationDefinition` (`mii-obsdef-pro-score-phq-15`, LOINC `70273-8`, 0–30) mit Kroenke-Schweregrad-Referenzbereichen (`qualifiedInterval`) abgebildet.
* Die Simplifier-Links lösen auf, sobald **v2026.5.0** des MII PRO-Moduls nach Simplifier publiziert ist (PHQ-15 ist ab 2026.5.0 enthalten); die Canonical-URL ist stabil.

### Beispiel-QuestionnaireResponse

Das MII PRO-Modul liefert ein vollständiges QR-Beispiel mit — [`mii-exa-pro-phq-15-response`](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.pros/2026.5.0) (Upstream, Simplifier). Die Pflege erfolgt zentral im MII PRO-Modul und wird hier bewusst nicht dupliziert.

