# SSD-12 (B-Kriterien somatische Belastungsstörung) - PCOR-MII Implementation Guide v0.2.0

## SSD-12 (B-Kriterien somatische Belastungsstörung)

**Translated page. Original language: German.**

Der **SSD-12** erfasst die **B-Kriterien der somatischen Belastungsstörung** nach DSM-5 über zwölf Items — also nicht die Symptome selbst, sondern die **psychische Belastung durch** die Symptome: Gedanken, Sorgen und Aufmerksamkeitsbindung.

### Verwendung in PCOR-MII

PCOR-MII **referenziert** den im MII-PRO-Modul gepflegten Questionnaire — kein eigener Nachbau ([ADR-002](Designentscheidungen.md)). Er kommt über die Paket-Abhängigkeit `de.medizininformatikinitiative.kerndatensatz.pros` (2026.7.0) mit; enthalten **seit 2026.6.0**.

Erhoben **nur im Szenario [PSS](PSS.md)**, Kategorie DCH — **vollständig**. Die Abgrenzung zum [PHQ-15](PHQ-15.md) ist der eigentliche Punkt des Instruments: Der PHQ-15 zählt die Symptomlast, der SSD-12 die Belastung dadurch. Beide werden in PSS erhoben, weil erst zusammen die DSM-5-Kriterien A und B abgebildet sind.

### Canonical

`https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-ssd-12`

### Eigenschaften

* **Items**: 12 (`ssd12-q01`–`ssd12-q12`) plus Instruktions-`display` und das berechnete `ssd12-score-total`
* **Primärsprache**: **Deutsch** (`language = de`) — der SSD-12 wurde auf Deutsch entwickelt (Toussaint, Löwe et al., UKE Hamburg); hier ist Deutsch also das Original und nicht eine Übersetzung
* **Recall**: letzte **7 Tage**
* **Antwortskala**: fünfstufig über [`mii-vs-pro-ssd-12-answers`](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.pros/2026.7.0) — 0 = nie · 1 = selten · 2 = manchmal · 3 = oft · 4 = sehr oft
* **Capabilities**: displayable, collectable, calculatable, extractable, domainAligned

### Score

Summe **0–48** — `mii-obsdef-pro-score-ssd-12`, Katalogcode `ssd-12-total`, Richtung `decrease`. **Kein Cut-off als Referenzintervall hinterlegt**: Der SSD-12 ist als Schweregradmaß konzipiert, nicht als Screening mit Trennwert.

### Lizenz

SSD-12 © Toussaint, Löwe et al. **Frei verfügbar** für Forschung und klinische Nutzung.

### Quellen

* Entwicklung: Toussaint A, Murray AM, Voigt K, et al. **Development and Validation of the Somatic Symptom Disorder-B Criteria Scale (SSD-12).** Psychosom Med 2016;78(1):5–12. [doi:10.1097/PSY.0000000000000240](https://doi.org/10.1097/PSY.0000000000000240)
* Raw-Package: [MII PRO Package 2026.7.0 (Simplifier)](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.pros/2026.7.0)

Hinweise zum Lebenszyklus von `Questionnaire` zu `QuestionnaireResponse` siehe [Anwendung](Implementation.md); alle Artefakte unter [Artefakte](artifacts.md).

