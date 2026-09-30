# Instrumentenübersicht - PCOR-MII Implementation Guide v0.3.0

## Instrumentenübersicht

**Translated page. Original language: German.**

This page gives the **overall view of every instrument** PCOR-MII covers — across all three entities, and regardless of whether the FHIR resource is maintained in PCOR-MII itself or in the MII PRO module.

### The three entities

PCOR-MII collects patient-reported data in three clinical entities:

| | |
| :--- | :--- |
| **PSS** | Persistent Somatic Syndrome — see[PSS](PSS.md) |
| **AN** | Anorexia Nervosa — see[AN](AN.md) |
| **NTx** | Kidney transplantation |

The authoritative reference for instrument selection and item subsetting is the **Item Level Dictionary** (`MASTER_3EntitiesOverview.xlsx`, one sheet per entity; not part of this repository). Rights and licence information comes from the **DIZ implementation list for PCOR-MII**.

Note that the data collection plan itself distinguishes **four** use cases rather than three: kidney transplantation splits into recipient (NTXr) and donor (NTXd) with separate priority profiles. See [Eating Disorders](Essstoerungen.md); the split is still to be reflected on this page.

### Categories

Every item in the dictionary belongs to one of eight categories:

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

**DEM** and **MHI** are not modelled as individual instruments but bundled into one questionnaire each: [Demographics](Demographie.md) collects the OECD, GI-PS and CPCOR single items of category DEM, [MHI](MHI.md) those of category MHI. Both are collected identically in **all three entities** (MHI with AN-specific additional items). Why single items are bundled rather than each becoming its own resource is set out in [ADR-011](Designentscheidungen.md).

### Instrument overview

A • marks that the instrument is collected in that entity; the number is the item count according to the dictionary.

| | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| PROMIS Scale v1.2 – Global Health (2 items) | GHS | • | • | • | CPCOR agreement | [PROMIS](PROMIS.md)(subset open) |
| PROMIS-16 | GHS | • | • | • | CPCOR agreement | [PROMIS-16](PROMIS-16.md) |
| PROMIS SF 4a (Physical Function, Cognitive Function, Fatigue, Sleep Disturbance, Anxiety, Depression, Pain Interference, Social Roles) | GHS | • | • | • | CPCOR agreement | partly via[PROMIS-29](PROMIS-29.md)/[Cognitive Function](PROMIS-Cognitive-Function.md) |
| PROMIS NRS – Pain Intensity 1a (3) | GHS | • | • | • | CPCOR agreement | open |
| WHODAS 2.0, 12-item (14) | GHS | • | • | • | WHO licence required | [WHODAS 2.0](WHODAS-12.md) |
| GAD-7 / GAD-2 / PHQ-4 (7) | GHS | • | • | • | free | [GAD-7](GAD-7.md)— since MII PRO 2026.7.0 |
| PHQ-15 (13) | GHS | • | • | • | free | [PHQ-15](PHQ-15.md) |
| PHQ-4 / PHQ-8 / PHQ-9 / PHQ-15 (8) | GHS | • (PHQ-8) | • (PHQ-9) | • (PHQ-9) | free | [PHQ overview](PHQ.md),[PHQ-9](PHQ-9.md) |
| EURONET-SOMA 1 + 2 (1 each) | GHS | • | • | • | free | [EURONET-SOMA](EURONET-SOMA.md)— since MII PRO 2026.6.0 |
| WAI / Work Ability Score (3) | GHS | • | • | • | **not publishable** | [WAI](WAI.md)— metadata-only |
| PHQ-SI (suicidality, 1) | MHA | • | • | — | free | `phq-phq2i`from[PHQ-9](PHQ-9.md) |
| PHQ-D panic block (4) | MHA | • | — | — | free | open — no upstream artefact (`phq3a`–`phq3d`) |
| PC-PTSD (4) | MHA | • | — | — | free | [PC-PTSD](PC-PTSD.md)— since MII PRO 2026.6.0 |
| OPD-SFK (12) | MHA | • | • | — | free (after consultation) | [OPD-SFK](OPD-SFK.md) |
| SCOFF (5) | MHA | • | — | — | free | [SCOFF](SCOFF.md)— since MII PRO 2026.6.0 |
| ISR-Z (3) | MHA | • | — | — | free | [ISR-Z](ISR-Z.md)— since MII PRO 2026.6.0 |
| SSD-12 (12) | DCH | • | — | — | free | [SSD-12](SSD-12.md)— since MII PRO 2026.6.0 |
| WI-7 (7) | DCH | • | — | — | free | [Whiteley-7](WI-7.md)— since MII PRO 2026.6.0 |
| EXPECT (3) | DCH | • | — | — | no statement — not a standardised scale | [EXPECT](EXPECT.md) |
| IPQ-S (1) | DCH | • | — | — | free — only the open B-IPQ causal question | [IPQ-S](IPQ-S.md) |
| GSLTPAQ (6) | TCH | • | — | — | free | [GSLTPAQ](GSLTPAQ.md) |
| ERQ-S (6) | DCH | — | • | — | free | [ERQ-S](ERQ-6.md)— the official ERQ short form, two subscale scores |
| EDE-Q6 (6) | DCH | — | • | — | provided free by the publisher; confirmation sought | [EDE-Q6](EDE-Q6.md)— one item per subscale plus two additional questions |
| ANSOCQ-2 (2) | TCH | — | • | — | free | [ANSOCQ-2](ANSOCQ-2.md)— most discriminating item per scale only |
| SSUK-2 (2) | EFA | — | • | — | free | [SSUK-2](SSUK-2.md)— most discriminating item per scale only |
| ACE (5) | EFA | — | • | — | free — but see the open point on the German ACE-D | [ACE](ACE.md)— first five questions |
| BAASIS (10) | TCH | — | — | • | © University of Basel, items not publishable | open — metadata-only planned |
| MTSOSD-R59 (126) | MSE | — | — | • | © KU Leuven, items not publishable | open — metadata-only planned |
| ABQ (16) | TCH | — | — | • | use without pharmaceutical-industry involvement | open — metadata-only planned |

On top of these come **site-specific item groups** that do not correspond to any published instrument and come straight from the dictionary — for example `UKE-HCU/PSE/TR/DOT` (healthcare utilisation, PSS), `UKHD-BI/EDP/CTT/LE` (body image, eating disorder psychopathology, environment, AN) and `MHH-DIAL/UTI/T/BP` (follow-up parameters, NTx). For these the DIZ implementation list carries **no entry at all**, so no clearance is documented; see the open points in [Design Decisions](Designentscheidungen.md).

### Where does each resource come from?

* **MII PRO module** (`de.medizininformatikinitiative.kerndatensatz.pros`, currently 2026.7.0): every instrument reused module-wide — the PHQ family, WHODAS, PROMIS, and since 2026.6.0 EURONET-SOMA, ISR-Z, PC-PTSD, SCOFF, SSD-12 and WI-7, plus the GAD-7 since 2026.7.0. PCOR-MII references them rather than rebuilding them ([ADR-002](Designentscheidungen.md)).
* **PCOR-MII itself**: DEM and MHI (project-specific compilations), OPD-SFK, WAI, GSLTPAQ, EXPECT and IPQ-S, and — provisionally, pending possible adoption into the MII PRO module — the AN instruments ERQ-S, EDE-Q6, ANSOCQ-2, SSUK-2 and ACE (see [ADR-003](Designentscheidungen.md)).

### Licence tiers

The rights situation determines how an instrument is modelled — not how important it is:

* **free** — complete questionnaire with item texts, answer options and scoring.
* **Usage agreement** (PROMIS via CPCOR, WHODAS via WHO) — complete, but under the respective agreement; conditions are stated in the `copyright` element.
* **metadata-only** — no verbatim items or answers in the published package. Structure, `linkId`s, value ranges, score definition and how to obtain the instrument only. Applies to WAI (implemented) and, on the NTx side, to BAASIS, MTSOSD-R59 and ABQ.

Notes on the lifecycle from `Questionnaire` to `QuestionnaireResponse` are under [Implementation](Implementation.md); all artefacts are listed under [Artifacts](artifacts.md).

