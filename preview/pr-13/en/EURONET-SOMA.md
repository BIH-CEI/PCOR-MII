# EURONET-SOMA (2 Einzelitems) - PCOR-MII Implementation Guide v0.2.0

## EURONET-SOMA (2 Einzelitems)

**Translated page. Original language: German.**

**EURONET-SOMA** sind **zwei Einzelitems** zur somatischen Symptombelastung, jeweils als numerische Rating-Skala 0–10: die **Intensität** der körperlichen Beschwerden und ihre **Beeinträchtigung** des Alltags, beide mit 7-Tage-Recall.

### Verwendung in PCOR-MII

PCOR-MII **referenziert** den im MII-PRO-Modul gepflegten Questionnaire — kein eigener Nachbau ([ADR-002](Designentscheidungen.md)). Er kommt über die Paket-Abhängigkeit `de.medizininformatikinitiative.kerndatensatz.pros` (2026.7.0) mit; enthalten **seit 2026.6.0**.

Erhoben in **allen drei Entitäten** (PSS, AN, NTx), Kategorie GHS — gehört also zum generischen Kern und nicht zu den entitätsspezifischen Instrumenten.

Im Item Level Dictionary stehen sie als zwei getrennte Instrumente (`EURONET-SOMA1`, `EURONET-SOMA2`); upstream sind sie **ein** Questionnaire mit zwei Items.

### Canonical

`https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-euronet-soma`

### Eigenschaften

* **Items**: 2 (`euronet-soma-q01` Intensität, `euronet-soma-q02` Beeinträchtigung), Typ `integer` mit `minValue` 0 und `maxValue` 10
* Jedes Item trägt zwei `display`-Kinder als **Skalenanker** (`-anchor-min`, `-anchor-max`): „No symptoms at all" / „Worst possible symptoms" bzw. „Not at all" / „Interfered completely"
* **Primärsprache**: **Englisch** (`language = en`); deutscher Wortlaut als `translation`-Extension
* **Capabilities**: displayable, collectable, **calculatable = false**, extractable, domainAligned

### Kein Score — und zwar mit Ansage

`calculatable` steht ausdrücklich auf `false`. Es sind zwei Einzelitems, keine Skala: Intensität und Beeinträchtigung sind getrennt zu berichten und **nicht zu summieren**. Ausgewertet wird auf Item-Ebene.

### Lizenz

EURONET-SOMA-Items © Rief, Burton, Frostholm et al. 2017 (Psychosomatic Medicine, American Psychosomatic Society). Abbildung 1 der Publikation **empfiehlt diese beiden Items ausdrücklich** für die Verwendung in klinischen Studien; Übersetzungen in mehr als 20 Sprachen liegen als Supplement bei. Die deutsche Fassung ist in der Originalpublikation enthalten.

### Quellen

* Rief W, Burton C, Frostholm L, et al. **Core Outcome Domains for Clinical Trials on Somatic Symptom Disorder, Bodily Distress Disorder, and Functional Somatic Syndromes: European Network on Somatic Symptom Disorders Recommendations.** Psychosom Med 2017;79(9):1008–1015. [doi:10.1097/PSY.0000000000000502](https://doi.org/10.1097/PSY.0000000000000502)
* Raw-Package: [MII PRO Package 2026.7.0 (Simplifier)](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.pros/2026.7.0)

Hinweise zum Lebenszyklus von `Questionnaire` zu `QuestionnaireResponse` siehe [Anwendung](Implementation.md); alle Artefakte unter [Artefakte](artifacts.md).

