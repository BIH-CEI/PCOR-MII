# ISR-Z (Zwang) - PCOR-MII Implementation Guide v0.2.0

## ISR-Z (Zwang)

Der **ISR-Z** ist die **Zwangsskala** des **ICD-10-Symptom-Ratings** (ISR) — drei Items zu Zwangsgedanken und Zwangshandlungen.

### Verwendung in PCOR-MII

PCOR-MII **referenziert** den im MII-PRO-Modul gepflegten Questionnaire — kein eigener Nachbau ([ADR-002](Designentscheidungen.md)). Er kommt über die Paket-Abhängigkeit `de.medizininformatikinitiative.kerndatensatz.pros` (2026.7.0) mit; enthalten **seit 2026.6.0**.

Erhoben **nur im Szenario [PSS](PSS.md)**, Kategorie MHA, mit Priorität **C** („nice to have") — die niedrigste Stufe im Erhebungsplan. Vom ISR wird **ausschließlich die Zusatzskala Zwang** verwendet, nicht das Gesamtinstrument. Das ist keine Kürzung im Sinne der AN-Zuschnitte, sondern die Übernahme einer eigenständigen ISR-Skala.

### Canonical

`https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-isr-z`

### Eigenschaften

* **Items**: 3 (`isr-z-q01`–`isr-z-q03`) plus Instruktions-`display` und das berechnete `isr-z-score-mean`
* **Primärsprache**: **Deutsch** (`language = de`) — das ISR wurde auf Deutsch entwickelt
* **Antwortskala**: fünfstufig, `mii-vs-pro-isr-z-answers` — 0 = trifft nicht zu · 1 = trifft kaum zu · 2 = trifft ziemlich zu · 3 = trifft deutlich zu · 4 = trifft extrem zu
* **Capabilities**: displayable, collectable, calculatable, extractable, domainAligned

### Score — ein Mittelwert, keine Summe

`mii-obsdef-pro-score-isr-z`, Katalogcode `isr-z-mean`, Bereich **0–4** mit `decimalPrecision` 2, Richtung `decrease`.

Das ist die Abweichung, die man sich merken muss: Alle übrigen hier dokumentierten Instrumente bilden **Summen**, der ISR-Z einen **Mittelwert**. Das ISR wertet seine Skalen so aus, damit Skalen unterschiedlicher Länge vergleichbar bleiben. Wer den Wert wie eine Summe behandelt, rechnet um den Faktor der Itemzahl falsch.

### Lizenz

ICD-10-Symptom-Rating (ISR) © Tritt, von Heymann, Zaudig, Zacharias, Söllner & Loew 2008. **Frei verfügbar** — keine Genehmigung für Reproduktion, Übersetzung, Darstellung oder Nutzung erforderlich.

### Quellen

* Entwicklung: Tritt K, von Heymann F, Zaudig M, et al. **Entwicklung des Fragebogens „ICD-10-Symptom-Rating" (ISR).** Z Psychosom Med Psychother 2008;54(4):409–418. [doi:10.13109/zptm.2008.54.4.409](https://doi.org/10.13109/zptm.2008.54.4.409)
* Raw-Package: [MII PRO Package 2026.7.0 (Simplifier)](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.pros/2026.7.0)

Hinweise zum Lebenszyklus von `Questionnaire` zu `QuestionnaireResponse` siehe [Anwendung](Implementation.md); alle Artefakte unter [Artefakte](artifacts.md).

