# Instrumentenübersicht - PCOR-MII Implementation Guide v0.2.0

## Instrumentenübersicht

Diese Seite gibt den **Gesamtüberblick über alle Instrumente**, die PCOR-MII abdeckt — quer über die drei Entitäten und unabhängig davon, ob die FHIR-Ressource in PCOR-MII selbst oder im MII-PRO-Modul gepflegt wird.

### Die drei Entitäten

PCOR-MII erhebt patientenberichtete Daten in drei klinischen Entitäten:

| | |
| :--- | :--- |
| **PSS** | Persistent Somatic Syndrome — siehe[PSS](PSS.md) |
| **AN** | Anorexia Nervosa |
| **NTx** | Nierentransplantation |

Fachliche Referenz für Instrumentenauswahl und Item-Zuschnitt ist das **Item Level Dictionary** (`MASTER_3EntitiesOverview.xlsx`, je ein Blatt pro Entität; nicht Teil dieses Repositories). Die Rechte- und Lizenzangaben stammen aus der **DIZ-Implementierungsliste PCOR-MII**.

### Kategorien

Jedes Item ist im Dictionary einer von acht Kategorien zugeordnet:

| | |
| :--- | :--- |
| GHS | Generic Health Status |
| DEM | Demographics |
| MHI | Medical History |
| MHA | Mental Health Assessment |
| DCH | Disease Characteristics |
| TCH | Treatment Characteristics |
| EFA | Environmental Factors |
| MSE | Medication Side Effects |

**DEM** und **MHI** sind in PCOR-MII nicht als Einzelinstrumente modelliert, sondern zu je einem Fragebogen zusammengefasst: [Demographie](Demographie.md) bündelt die OECD-, GIPS- und CPCOR-Einzelitems der Kategorie DEM, [MHI](MHI.md) die der Kategorie MHI. Beide sind in **allen drei Entitäten** identisch zu erheben (MHI mit AN-spezifischen Zusatzitems).

### Instrumentenübersicht

Ein • markiert, dass das Instrument in der jeweiligen Entität erhoben wird; die Zahl ist die Item-Anzahl laut Dictionary.

| | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| PROMIS Scale v1.2 – Global Health (2 Items) | GHS | • | • | • | CPCOR-Vereinbarung | [PROMIS](PROMIS.md)(Subset offen) |
| PROMIS-16 | GHS | • | • | • | CPCOR-Vereinbarung | [PROMIS-16](PROMIS-16.md) |
| PROMIS SF 4a (Physical Function, Cognitive Function, Fatigue, Sleep Disturbance, Anxiety, Depression, Pain Interference, Social Roles) | GHS | • | • | • | CPCOR-Vereinbarung | teils über[PROMIS-29](PROMIS-29.md)/[Cognitive Function](PROMIS-Cognitive-Function.md) |
| PROMIS NRS – Pain Intensity 1a (3) | GHS | • | • | • | CPCOR-Vereinbarung | offen |
| WHODAS 2.0, 12-Item (14) | GHS | • | • | • | WHO-lizenzpflichtig | [WHODAS 2.0](WHODAS-12.md) |
| GAD-7 / GAD-2 / PHQ-4 (7) | GHS | • | • | • | frei | [GAD-7](GAD-7.md)— seit MII PRO 2026.7.0 |
| PHQ-15 (13) | GHS | • | • | • | frei | [PHQ-15](PHQ-15.md) |
| PHQ-4 / PHQ-8 / PHQ-9 / PHQ-15 (8) | GHS | • (PHQ-8) | • (PHQ-9) | • (PHQ-9) | frei | [PHQ-Übersicht](PHQ.md),[PHQ-9](PHQ-9.md) |
| EURONET-SOMA 1 + 2 (je 1) | GHS | • | • | • | frei | MII PRO seit 2026.6.0 — Seite offen |
| WAI / Work Ability Score (3) | GHS | • | • | • | **nicht veröffentlichbar** | [WAI](WAI.md)— metadata-only |
| PHQ-SI (Suizidalität, 1) | MHA | • | • | — | frei | offen |
| PHQ-D (4) | MHA | • | — | — | frei | offen |
| PC-PTSD (4) | MHA | • | — | — | frei | MII PRO seit 2026.6.0 — Seite offen |
| OPD-SFK (12) | MHA | • | • | — | frei (nach Rücksprache) | [OPD-SFK](OPD-SFK.md) |
| SCOFF (5) | MHA | • | — | — | frei | MII PRO seit 2026.6.0 — Seite offen |
| ISR-Z (3) | MHA | • | — | — | frei | MII PRO seit 2026.6.0 — Seite offen |
| SSD-12 (12) | DCH | • | — | — | frei | MII PRO seit 2026.6.0 — Seite offen |
| WI-7 (7) | DCH | • | — | — | frei | MII PRO seit 2026.6.0 — Seite offen |
| EXPECT (3) | DCH | • | — | — | ungeklärt | offen — keine standardisierte Skala, drei NRS-Einzelitems |
| IPQ-S (1) | DCH | • | — | — | frei (nur 1 offene Frage) | offen |
| GSLTPAQ (6) | TCH | • | — | — | frei | [GSLTPAQ](GSLTPAQ.md) |
| ERQ-6 (6) | DCH | — | • | — | frei | offen — nur trennschärfstes Item je Skala |
| EDE-Q6 (6) | DCH | — | • | — | frei | offen — nur trennschärfstes Item je Skala |
| ANSOCQ-2 (2) | TCH | — | • | — | frei | offen — nur trennschärfstes Item je Skala |
| SSUK-2 (2) | EFA | — | • | — | frei | offen — nur trennschärfstes Item je Skala |
| ACE (5) | EFA | — | • | — | frei | offen — erste 5 Fragen |
| BAASIS (10) | TCH | — | — | • | © Uni Basel, Items nicht publizierbar | offen — metadata-only vorgesehen |
| MTSOSD-R59 (126) | MSE | — | — | • | © KU Leuven, Items nicht publizierbar | offen — metadata-only vorgesehen |
| ABQ (16) | TCH | — | — | • | Nutzung ohne Pharma-Beteiligung | offen — metadata-only vorgesehen |

Dazu kommen **standortspezifische Item-Gruppen**, die kein publiziertes Instrument abbilden und direkt aus dem Dictionary stammen — etwa `UKE-HCU/PSE/TR/DOT` (Versorgungsinanspruchnahme, PSS), `UKHD-BI/EDP/CTT/LE` (Körperbild, Essstörungspathologie, Umfeld, AN) und `MHH-DIAL/UTI/T/BP` (Verlaufsparameter, NTx).

### Woher kommt welche Ressource?

* **MII-PRO-Modul** (`de.medizininformatikinitiative.kerndatensatz.pros`, aktuell 2026.7.0): alle Instrumente, die modulweit nachgenutzt werden — PHQ-Familie, WHODAS, PROMIS, seit 2026.6.0 EURONET-SOMA, ISR-Z, PC-PTSD, SCOFF, SSD-12 und WI-7 sowie seit 2026.7.0 der GAD-7. PCOR-MII referenziert sie und baut sie nicht nach.
* **PCOR-MII selbst**: DEM und MHI (projektspezifische Zusammenstellungen) sowie OPD-SFK, WAI und GSLTPAQ.

### Lizenz-Tiers

Die Rechtelage bestimmt, wie ein Instrument modelliert wird — nicht, wie wichtig es ist:

* **frei** — vollständiger Questionnaire mit Itemtexten, Antwortoptionen und Scoring.
* **Nutzungsvereinbarung** (PROMIS via CPCOR, WHODAS via WHO) — vollständig, aber unter der jeweiligen Vereinbarung; Bedingungen im `copyright`-Element.
* **metadata-only** — keine wortgleichen Items oder Antworten im publizierten Package. Nur Struktur, `linkId`s, Wertebereiche, Score-Definition und Bezugsweg. Betrifft WAI (umgesetzt) sowie BAASIS, MTSOSD-R59 und ABQ auf NTx-Seite.

Hinweise zum Lebenszyklus von `Questionnaire` zu `QuestionnaireResponse` siehe [Anwendung](Implementation.md); alle Artefakte unter [Artefakte](artifacts.md).

