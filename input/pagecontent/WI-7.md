Der **Whiteley-7** (WI-7) erfasst **Gesundheitsangst** über sieben Ja/Nein-Fragen. Er ist die Kurzform des Whiteley-Index und geht auf Pilowskys Hypochondrie-Dimensionen zurück.

### Verwendung in PCOR-MII

PCOR-MII **referenziert** den im MII-PRO-Modul gepflegten Questionnaire — kein eigener Nachbau ([ADR-002](Designentscheidungen.html)). Er kommt über die Paket-Abhängigkeit `de.medizininformatikinitiative.kerndatensatz.pros` (2026.7.0) mit; enthalten **seit 2026.6.0**.

Erhoben **nur im Szenario [PSS](PSS.html)**, Kategorie DCH — **vollständig**, ohne Zuschnitt. Das ist der Normalfall bei den PSS-spezifischen Instrumenten und der Unterschied zur AN-Batterie, wo vier von fünf Instrumenten gekürzt erhoben werden (siehe [AN](AN.html)).

### Canonical

`https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-wi-7`

### Eigenschaften

- **Items**: 7 (`wi7-q01`–`wi7-q07`) plus Instruktions-`display` und das berechnete `wi7-score-total`
- **Primärsprache**: **Englisch** (`language = en`); deutsche Fassung als `translation`-Extension, Wortlaut aus PCOR-MII
- **Antwortmodellierung**: inline `answerOption`, SNOMED CT No/Yes mit Gewichten 0/1
- **Capabilities**: displayable, collectable, calculatable, extractable, domainAligned

### Score

Summe **0–7** — `mii-obsdef-pro-score-wi-7`, Katalogcode `wi-7-total`, Richtung `decrease`.

Besonderheit: Fink et al. geben **zwei** Cut-offs an, und beide sind als Referenzintervall dokumentiert, weil sie unterschiedliche Zwecke bedienen:

| Cut-off | unauffällig | auffällig | Kennwerte (ICD-10) |
|---|---|---|---|
| **0/1** | 0 | 1–7 | Sensitivität 1,00 · Spezifität 0,65 |
| **1/2** | 0–1 | 2–7 | Sensitivität 0,65 · Spezifität 0,84 |

Der erste maximiert die Sensitivität (nichts übersehen), der zweite die Spezifität. Welcher gilt, ist eine fachliche Entscheidung der Auswertung — deshalb liefert das Modul beide als Dokumentation und keine Regel, die selbst entscheidet.

### Lizenz

Whiteley-7 — Fink, Ewald, Jensen, Sørensen, Engberg, Holm & Munk-Jørgensen 1999 (Journal of Psychosomatic Research). In der Originalpublikation ist **keine ausdrückliche Lizenzbeschränkung** genannt; behandelt als frei verfügbar für Klinik und Forschung.

### Quellen

- Ursprung: Pilowsky I. *Dimensions of hypochondriasis.* Br J Psychiatry 1967;113:89–93
- WI-7: Fink P, Ewald H, Jensen J, et al. *Screening for somatization and hypochondriasis in primary care and neurological in-patients.* J Psychosom Res 1999;46(3):261–273. [doi:10.1016/S0022-3999(98)00092-0](https://doi.org/10.1016/S0022-3999(98)00092-0)
- Deutsche Fassung: Rief W, Hiller W, Geissner E, Fichter MM. *Hypochondrie: Erfassung und erste klinische Ergebnisse.* Z Klin Psychol 1994;23(1):34–42
- Raw-Package: [MII PRO Package 2026.7.0 (Simplifier)](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.pros/2026.7.0)

Hinweise zum Lebenszyklus von `Questionnaire` zu `QuestionnaireResponse` siehe [Anwendung](Implementation.html); alle Artefakte unter [Artefakte](artifacts.html).
