# PROMIS-29 Profile v2.1 - PCOR-MII Implementation Guide v0.1.0

## PROMIS-29 Profile v2.1

**Translated page. Original language: German.**

PROMIS®-29 Profile v2.1 ist das umfassende Multi-Domain-Instrument zur Erfassung der gesundheitsbezogenen Lebensqualität. 29 Items decken sieben Domänen (Physical Function, Anxiety, Depression, Fatigue, Sleep Disturbance, Ability to Participate in Social Roles and Activities, Pain Interference) plus ein Schmerzintensitäts-Single-Item ab.

### Verwendung in PCOR-MII

PCOR-MII referenziert den im MII PRO-Modul gepflegten Questionnaire — kein eigener Nachbau. Damit gilt automatisch die offizielle deutsche PHO-Übersetzung mit allen Korrekturen aus v2026.4.x (Wording-Migration, Antwortskalen-Fix, Pain-Interference Verb-Tempus etc.).

### Canonical

`https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-29`

### Quellen

* Definition im MII PRO-Modul: [PROMIS-29 (Simplifier)](https://simplifier.net/guide/mii-pro-v2026-de/MIIIGModulPRO/PRO-Bibliothek/PROMIS/PROMIS-29)
* Lizenz & Copyright (4-Schichten-Modell PHO / CPCOR / LOINC / MII): [PROMIS-Lizenzierung](https://simplifier.net/guide/mii-pro-v2026-de/MIIIGModulPRO/PRO-Bibliothek/PROMIS)
* Offizielle deutsche Quelle: PHO PDF "PROMIS-29 Profile v2.1 German, 06 April 2020"

### Eigenschaften

* **Items**: 29 (28 × 5-Punkt-Likert + 1 × 11-Punkt-NRS Schmerzintensität)
* **Primärsprache**: Englisch mit deutscher `translation`-Extension
* **Scoring**: Raw Score + T-Score je Domäne (FHIR Variables Pattern, ohne CQL)
* **Capabilities**: displayable, collectable, calculatable, extractable

### Hinweise

* Eine separate DE-primary-Darstellungsvariante (`mii-qst-pro-promis-29-de`) existiert für Renderer, die die `translation`-Extension nicht auswerten; inhaltlich ist sie mit der Hauptversion identisch und wird nicht eigenständig gepflegt.
* Score-Berechnung erfolgt im Questionnaire selbst über FHIR-Variables-Variable, eine separate CQL Library ist nicht erforderlich.

