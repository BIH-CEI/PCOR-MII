**PSS** (*Persistent Somatic Syndrome*) ist die psychosomatische Entität in PCOR-MII — neben Anorexia Nervosa (AN) und Nierentransplantation (NTx). Erhoben wird eine Batterie aus generischen Instrumenten (identisch über alle drei Entitäten) und PSS-spezifischen Instrumenten zu somatischer Belastung, Gesundheitsangst, psychischer Komorbidität und Versorgungsinanspruchnahme.

Die entitätsübergreifende Sicht steht unter [Instrumente](Instrumente.html); diese Seite beschreibt die PSS-Batterie.

### Generischer Kern (alle Entitäten)

Diese Instrumente sind in PSS, AN und NTx identisch zu erheben:

- [Demographie](Demographie.html) (DEM) und [MHI](MHI.html) — Soziodemographie und medizinische Vorgeschichte
- [PROMIS](PROMIS.html) — Global Health (2 Items), Short Forms 4a, Pain Intensity NRS
- [WHODAS 2.0 (12-Item)](WHODAS-12.html) — Funktionsfähigkeit und Beeinträchtigung
- [PHQ-15](PHQ-15.html), PHQ-8 (siehe [PHQ-Übersicht](PHQ.html)), GAD-7 / GAD-2 / PHQ-4
- EURONET-SOMA 1 und 2 — je ein Item zu somatischen Symptomen
- [WAI](WAI.html) — Arbeitsfähigkeit (metadata-only)

> **GAD-7 folgt:** Der GAD-7 wird im MII-PRO-Modul gepflegt und ist in Version 2026.6.0 noch nicht enthalten. Sobald er upstream verfügbar ist, wird er hier und in der [PHQ-Übersicht](PHQ.html) verlinkt — PCOR-MII baut ihn nicht selbst nach.

### PSS-spezifische Instrumente

| Instrument | Kat. | Items | Erfasst | Status |
|---|---|--:|---|---|
| **SSD-12** | DCH | 12 | B-Kriterien der somatischen Belastungsstörung | MII PRO 2026.6.0 |
| **WI-7** | DCH | 7 | Gesundheitsangst (Whiteley-Index) | MII PRO 2026.6.0 |
| **SCOFF** | MHA | 5 | Essstörungs-Screening | MII PRO 2026.6.0 |
| **ISR-Z** | MHA | 3 | ICD-10-Symptom-Rating, Zusatzskala | MII PRO 2026.6.0 |
| **PC-PTSD** | MHA | 4 | Posttraumatische Belastungsstörung, Primärversorgungs-Screen | MII PRO 2026.6.0 |
| **PHQ-D** | MHA | 4 | Deutsche PHQ-Fassung, Teilmenge | offen |
| **PHQ-SI** | MHA | 1 | Suizidalität (Einzelitem) | offen |
| **OPD-SFK** | MHA | 12 | Strukturelle Persönlichkeitsfunktion | [Seite](OPD-SFK.html) |
| **GSLTPAQ** | TCH | 6 | Körperliche Freizeitaktivität | [Seite](GSLTPAQ.html) |
| **EXPECT** | DCH | 3 | Behandlungserwartung (drei NRS-Einzelitems, kein standardisierter Fragebogen) | offen — Modellierung zu klären |
| **IPQ-S** | DCH | 1 | Krankheitswahrnehmung — nur eine offene Frage angelehnt an den B-IPQ | offen — Modellierung zu klären |

Dazu die standortspezifischen Item-Gruppen zur Versorgungsinanspruchnahme (`UKE-HCU`, `UKE-HCU2`, `UKE-PSE`, `UKE-TR`, `UKE-DOT`, Kategorie TCH), die kein publiziertes Instrument abbilden und direkt aus dem Item Level Dictionary stammen.

### Was PSS von AN und NTx unterscheidet

- **Nur in PSS**: SSD-12, WI-7, SCOFF, ISR-Z, PC-PTSD, PHQ-D, EXPECT, IPQ-S, GSLTPAQ sowie die UKE-Versorgungsitems. In der PHQ-Familie wird in PSS der **PHQ-8** erhoben, in AN und NTx der **PHQ-9**.
- **PSS und AN gemeinsam**: OPD-SFK und PHQ-SI.
- **Nur in AN**: ERQ-6, EDE-Q6, ANSOCQ-2, SSUK-2, ACE sowie die UKHD-Items zu Körperbild, Essstörungspathologie und Umfeld.
- **Nur in NTx**: BAASIS, MTSOSD-R59, ABQ (alle metadata-only) sowie die MHH-Verlaufsparameter.

### Rechtelage

Die PSS-Batterie ist ganz überwiegend **frei publizierbar** — vollständige Questionnaires mit Itemtexten, Antwortoptionen und Scoring sind möglich. Zwei Ausnahmen:

- **WAI** — laut DIZ-Implementierungsliste „wahrscheinlich nicht für die Veröffentlichung geeignet"; deshalb [metadata-only](WAI.html) ohne Originalwortlaut.
- **OPD-SFK** — frei nach erfolgter Rücksprache mit den Autor:innen; die Rechte an Instrument und Formulierungen verbleiben bei Autor:innen bzw. Verlag (siehe [OPD-SFK](OPD-SFK.html)).

PROMIS und WHODAS 2.0 unterliegen ihren jeweiligen Nutzungsvereinbarungen (CPCOR bzw. WHO).

Hinweise zum Lebenszyklus von `Questionnaire` zu `QuestionnaireResponse` siehe [Anwendung](Implementation.html); alle Artefakte unter [Artefakte](artifacts.html).
