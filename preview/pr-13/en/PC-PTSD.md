# PC-PTSD (PTBS-Screening) - PCOR-MII Implementation Guide v0.2.0

## PC-PTSD (PTBS-Screening)

**Translated page. Original language: German.**

Der **PC-PTSD** (**Primary Care PTSD Screen**) ist ein **Screening auf posttraumatische Belastungsstörung** für die Primärversorgung: eine vorangestellte Frage nach einem traumatischen Erlebnis, dann vier Ja/Nein-Items.

### Verwendung in PCOR-MII

PCOR-MII **referenziert** den im MII-PRO-Modul gepflegten Questionnaire — kein eigener Nachbau ([ADR-002](Designentscheidungen.md)). Er kommt über die Paket-Abhängigkeit `de.medizininformatikinitiative.kerndatensatz.pros` (2026.7.0) mit; enthalten **seit 2026.6.0**.

Erhoben **nur im Szenario [PSS](PSS.md)**, Kategorie MHA, Priorität **B**.

**Hinweis zur Erhebung:** Die Items betreffen traumatische Erlebnisse. Wie beim [ACE](ACE.md) und beim PHQ-SI ist die Governance der Auswertung — wer sieht ein auffälliges Ergebnis, und was folgt daraus — fachlich zu klären und keine Frage der Modellierung.

### Canonical

`https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-pc-ptsd`

### Eigenschaften

* **Items**: 4 (`pc-ptsd-q01`–`pc-ptsd-q04`) plus das Instruktions-`display` mit der Trauma-Eingangsfrage und das berechnete `pc-ptsd-score-total`
* **Primärsprache**: **Deutsch** (`language = de`), Wortlaut nach Schäfer & Schulze 2010
* **Antwortmodellierung**: inline `answerOption`, SNOMED CT No/Yes mit Gewichten 0/1
* **Capabilities**: displayable, collectable, calculatable, extractable, domainAligned

### Score

Summe **0–4** — `mii-obsdef-pro-score-pc-ptsd`, Katalogcode `pc-ptsd-total`, Richtung `decrease`. Der Cut-off **≥ 3** ist als Referenzintervall dokumentiert: 0–2 unauffällig, 3–4 auffällig mit empfohlener weiterer Abklärung.

### Lizenz

PC-PTSD © Prins A, et al. 2003; deutsche Fassung Schäfer I, Schulze C, 2010. **Frei verfügbar**.

### Quellen

* Entwicklung: Prins A, Ouimette P, Kimerling R, et al.; validiert in Freedy JR, et al. **Assessing psychological trauma and PTSD.** J Anxiety Disord 2007. [doi:10.1016/j.janxdis.2007.02.010](https://doi.org/10.1016/j.janxdis.2007.02.010)
* Deutsche Fassung: Schäfer I, Schulze C. **Deutsche Version des „Primary Care Posttraumatic Stress Disorder Screening Questionnaire".** Universität Hamburg, 2010
* Raw-Package: [MII PRO Package 2026.7.0 (Simplifier)](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.pros/2026.7.0)

Hinweise zum Lebenszyklus von `Questionnaire` zu `QuestionnaireResponse` siehe [Anwendung](Implementation.md); alle Artefakte unter [Artefakte](artifacts.md).

