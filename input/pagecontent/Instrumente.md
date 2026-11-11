Diese Seite gibt den **Gesamtüberblick über alle Instrumente**, die PCOR-MII abdeckt — quer über die drei Entitäten und unabhängig davon, ob die FHIR-Ressource in PCOR-MII selbst oder im MII-PRO-Modul gepflegt wird.

### Die drei Entitäten

PCOR-MII erhebt patientenberichtete Daten in drei klinischen Entitäten:

| Kürzel | Entität |
|---|---|
| **PSS** | Persistent Somatic Syndrome — siehe [PSS](PSS.html) |
| **AN** | Anorexia Nervosa — siehe [AN](AN.html) |
| **NTx** | Nierentransplantation — siehe [NTx](NTx.html); Empfänger (NTXr) und Spender (NTXd) mit eigenen Manifesten |

Fachliche Referenz für Instrumentenauswahl und Item-Zuschnitt ist das **Item Level Dictionary** (`MASTER_3EntitiesOverview.xlsx`, je ein Blatt pro Entität; nicht Teil dieses Repositories). Die Rechte- und Lizenzangaben stammen aus der **DIZ-Implementierungsliste PCOR-MII**.

### Kategorien

Jedes Item ist im Dictionary einer von acht Kategorien zugeordnet:

| ID | Kategorie |
|---|---|
| GHS | Generic Health Status |
| DEM | Demographics |
| MHI | Medical History |
| MHA | Mental Health Assessment |
| DCH | Disease Characteristics |
| TCH | Treatment Characteristics |
| EFA | Environmental Factors |
| MSE | Medication Side Effects |

**DEM** und **MHI** sind in PCOR-MII nicht als Einzelinstrumente modelliert, sondern zu je einem Fragebogen zusammengefasst: [Demographie](Demographie.html) bündelt die OECD-, GIPS- und CPCOR-Einzelitems der Kategorie DEM, [MHI](MHI.html) die der Kategorie MHI. Beide sind in **allen drei Entitäten** identisch zu erheben (MHI mit AN-spezifischen Zusatzitems).

### Instrumentenübersicht

Ein • markiert, dass das Instrument in der jeweiligen Entität erhoben wird; die Zahl ist die Item-Anzahl laut Dictionary. Beim PHQ ist in **allen Entitäten der PHQ-8 der Standard**; der vollständige PHQ-9 ist nur zulässig, wenn auf die Erhebung unmittelbar ein Arztkontakt vor Ort folgt — kein Einsatz im Monitoring (siehe [PHQ-Übersicht](PHQ.html)).

| Instrument | Kat. | PSS | AN | NTx | Lizenz | Umsetzung |
|---|---|:--:|:--:|:--:|---|---|
| PROMIS Scale v1.2 – Global Health (2 Items) | GHS | • | • | • | CPCOR-Vereinbarung | [PROMIS](PROMIS.html) — `PROMISGH`, 2-Item-Zuschnitt (`derivedFrom` der 10-Item-Skala des Moduls) |
| PROMIS-16 | GHS | • | • | • | CPCOR-Vereinbarung | [PROMIS-16](PROMIS-16.html) |
| PROMIS SF 4a (Physical Function, Cognitive Function, Fatigue, Sleep Disturbance, Anxiety, Depression, Pain Interference, Social Roles) | GHS | • | • | • | CPCOR-Vereinbarung | teils über [PROMIS-29](PROMIS-29.html) / [Cognitive Function](PROMIS-Cognitive-Function.html) |
| PROMIS NRS – Pain Intensity 1a (3) | GHS | • | • | • | CPCOR-Vereinbarung | offen |
| WHODAS 2.0, 12-Item (14) | GHS | • | • | • | WHO-lizenzpflichtig | [WHODAS 2.0](WHODAS-12.html) |
| GAD-7 / GAD-2 / PHQ-4 (7) | GHS | • | • | • | frei | [GAD-7](GAD-7.html) — seit MII PRO 2026.7.0 |
| PHQ-15 (13) | GHS | • | • | • | frei | [PHQ-15](PHQ-15.html) |
| PHQ-4 / PHQ-8 / PHQ-9 / PHQ-15 (8) | GHS | • (PHQ-8) | • (PHQ-8) | • (PHQ-8) | frei | [PHQ-Übersicht](PHQ.html), [PHQ-9](PHQ-9.html) |
| EQ-5D-5L (6) | GHS | • | • | • | EuroQol-Registrierung, nicht-kommerziell gebührenfrei | MII PRO, Variante collectable — nur Outcome, seit 2026-11-05 in allen Manifesten |
| EURONET-SOMA 1 + 2 (je 1) | GHS | • | • | • | frei | [EURONET-SOMA](EURONET-SOMA.html) — MII PRO seit 2026.6.0 |
| WAI / Work Ability Score (3) | GHS | • | • | • | **nicht veröffentlichbar** | [WAI](WAI.html) — metadata-only |
| PHQ-SI (Suizidalität, 1) | MHA | • | • | — | frei | `phq-phq2i` aus [PHQ-9](PHQ-9.html) |
| PHQ-D Panik-Block (4) | MHA | • | — | — | frei | [PHQ-D Panik-Block](PHQ-Panik.html) — in PCOR-MII gepflegt (ADR-012) |
| PC-PTSD (4) | MHA | • | — | — | frei | [PC-PTSD](PC-PTSD.html) — MII PRO seit 2026.6.0 |
| OPD-SFK (12) | MHA | • | • | — | frei (nach Rücksprache) | [OPD-SFK](OPD-SFK.html) |
| SCOFF (5) | MHA | • | — | — | frei | [SCOFF](SCOFF.html) — MII PRO seit 2026.6.0 |
| ISR-Z (3) | MHA | • | — | — | frei | [ISR-Z](ISR-Z.html) — MII PRO seit 2026.6.0 |
| SSD-12 (12) | DCH | • | — | — | frei | [SSD-12](SSD-12.html) — MII PRO seit 2026.6.0 |
| WI-7 (7) | DCH | • | — | — | frei | [Whiteley-7](WI-7.html) — MII PRO seit 2026.6.0 |
| EXPECT (3) | DCH | • | — | — | keine Angabe — keine standardisierte Skala | [EXPECT](EXPECT.html) |
| IPQ-S (1) | DCH | • | — | — | frei — nur die offene B-IPQ-Ursachenfrage | [IPQ-S](IPQ-S.html) |
| GSLTPAQ (6) | TCH | • | — | — | frei | [GSLTPAQ](GSLTPAQ.html) |
| ERQ-6 (6) | DCH | — | • | — | frei | [ERQ-6](ERQ-6.html) — 6-Item-Zuschnitt des ERQ, kein Score |
| EDE-Q6 (6) | DCH | — | • | — | vom Verlag frei bereitgestellt; Bestätigung angestrebt | [EDE-Q6](EDE-Q6.html) — je 1 Item pro Subskala + 2 Zusatzfragen |
| ANSOCQ-2 (2) | TCH | — | • | — | frei | [ANSOCQ-2](ANSOCQ-2.html) — nur trennschärfstes Item je Skala |
| SSUK-2 (2) | EFA | — | • | — | frei | [SSUK-2](SSUK-2.html) — nur trennschärfstes Item je Skala |
| ACE + Zeitangaben (11) | EFA | — | • | — | ACE frei; die 6 UKHD-Items **Freigabe offen** | [ACE](ACE.html) — erste 5 ACE-Fragen plus `UKHD-CTT` (PCOR-MII-Komposit) |
| UKHD-EDP (11) | DCH | — | • | — | **keine dokumentierte Freigabe**; vermutlich EDI-2-Zuschnitt | [UKHD-EDP](UKHD-EDP.html) — metadata-only |
| BAASIS (10) | TCH | — | — | • | © Uni Basel, Items nicht publizierbar | [NTx-Instrumente](NTx-Instrumente.html) — metadata-only |
| MTSOSD-R59 (126) | MSE | — | — | • | © KU Leuven, Items nicht publizierbar | [NTx-Instrumente](NTx-Instrumente.html) — metadata-only |
| ABQ (16) | TCH | — | — | • | Nutzung ohne Pharma-Beteiligung | [NTx-Instrumente](NTx-Instrumente.html) — metadata-only |

Dazu kommen **standortspezifische Item-Gruppen**, die kein publiziertes Instrument abbilden und direkt aus dem Dictionary stammen — etwa `UKE-HCU/PSE/TR/DOT` (Versorgungsinanspruchnahme, PSS), die `UKHD-*`-Gruppen (AN) und `MHH-DIAL/UTI/T/BP` (Verlaufsparameter, NTx). Sie stehen in der Tabelle oben nicht, weil die Tabelle Instrumente auflistet und diese Gruppen keine sind.

Für AN und NTx sind diese Gruppen inzwischen modelliert — für AN sechs als je ein eigenes Questionnaire plus `UKHD-CTT` im ACE, für NTx als ein Sammelbogen ([ADR-011](Designentscheidungen.html)):

| Sammelbogen | Kat. | PSS | AN | NTx | Lizenz | Umsetzung |
|---|---|:--:|:--:|:--:|---|---|
| UKHD-Zusatzitems (6 Bögen, 14 Items) — `UKHD-PT`, `UKHD-ANB`, `UKHD-CT`, `UKHD-LE`, `UKHD-ND`, `UKHD-D` | DCH, TCH, EFA | — | • | — | **Freigabe offen** — in der DIZ-Liste nicht geführt; Herkunft des Wortlauts ungeklärt | [UKHD-Zusatzitems](UKHD-Zusatzitems.html) |
| NTx-Verlaufsbefragung (1 Bogen, 18 Items) — `MHH-DIAL`, `MHH-PTx-DIAB`, `MHH-T`, `MHH-UTI`, `MHH-Infection`, `MHH-BP`, `MHH-Medi` + 2 Items ohne Label; die Screening-Items `MHH-DON`, `MHH-Tx-DATE`, `MHH-PRIOR-TX` im Ergänzungsbogen [MHI-NTx](NTx-Instrumente.html#mhi-ntx-transplantationsanamnese) | DCH, TCH | — | — | • | **Freigabe offen** — in der DIZ-Liste nicht geführt | [NTx-Verlaufsbefragung](NTx-Instrumente.html#ntx-verlaufsbefragung-mhh) — Sammelbogen nach MHI-Muster |

**Die Lizenzangabe ist hier eine andere Art von Angabe als in der Tabelle oben.** Dort steht, was die DIZ-Implementierungsliste über ein publiziertes Instrument sagt. Die Standort-Itemgruppen kommen in der Liste **gar nicht vor** — für sie ist also weder eine Erlaubnis noch eine Einschränkung dokumentiert. Dass der Wortlaut von UKHD-AN aufgenommen ist, ist eine bewusste Projektentscheidung zur Erprobung; die Bestätigung des Standorts ist einzuholen (siehe [UKHD-Zusatzitems](UKHD-Zusatzitems.html) und [Rechtelage und offene Punkte](Rechtelage.html#standortgruppen)).

Nicht modelliert bleibt für AN `UKHD-BI` (Körperbild, 3 Items — visuelle Bildskala, Erhebung läuft noch nicht damit, Bildvorlage fehlt im Dictionary); `UKHD-EDP` ist als eigener Bogen metadata-only modelliert. Für NTx sind die acht quartalsweisen MHH-Gruppen als **ein** Verlaufsbogen modelliert (siehe Tabelle), die drei MHH-Screening-Items als Ergänzungsbogen MHI-NTx; für PSS sind die Standortgruppen noch nicht modelliert.

### Woher kommt welche Ressource?

- **MII-PRO-Modul** (`de.medizininformatikinitiative.kerndatensatz.pros`, aktuell 2027.0.0-ballot.2): alle Instrumente, die modulweit nachgenutzt werden — PHQ-Familie, WHODAS, PROMIS, seit 2026.6.0 EURONET-SOMA, ISR-Z, PC-PTSD, SCOFF, SSD-12 und WI-7 sowie seit 2026.7.0 der GAD-7. PCOR-MII referenziert sie und baut sie nicht nach.
- **PCOR-MII selbst**: DEM und MHI (projektspezifische Zusammenstellungen), OPD-SFK, WAI, GSLTPAQ, EXPECT, IPQ-S und den PHQ-D-Panik-Block, die NTx-Stubs BAASIS, ABQ und MTSOSD-R59 (metadata-only, ADR-012) sowie — vorläufig, bis zur möglichen Aufnahme ins MII-PRO-Modul — die AN-Instrumente ERQ-6, EDE-Q6, ANSOCQ-2, SSUK-2 und ACE (siehe [ADR-003](Designentscheidungen.html)).

### Lizenz-Tiers

Die Rechtelage bestimmt, wie ein Instrument modelliert wird (frei · Nutzungsvereinbarung · metadata-only · Freigabe offen). Die Tiers, der Status je Instrument, die Bezugswege lizenzierter Bögen und alle offenen Rechtefragen stehen gesammelt auf [Rechtelage und offene Punkte](Rechtelage.html).

Hinweise zum Lebenszyklus von `Questionnaire` zu `QuestionnaireResponse` siehe [Anwendung](Implementation.html); alle Artefakte unter [Artefakte](artifacts.html).
