**AN** (*Anorexia Nervosa*) is the eating-disorder entity in PCOR-MII — alongside [PSS](PSS.html) (Persistent Somatic Syndrome) and [NTx](NTx.html) (kidney transplantation). The battery consists of generic instruments (identical across all three entities) and AN-specific instruments on eating-disorder psychopathology, emotion regulation, motivation to change, social environment and adverse childhood experiences.

The cross-entity view is on [Instruments](Instrumente.html); this page describes the AN battery and says, for every questionnaire, where its FHIR resource lives. **Machine-readable**, the same compilation is [Library/use-case-an](Library-use-case-an.html), which pins all 25 questionnaires with versions. Rights and status of all instruments are collected on [Rights and open points](Rechtelage.html).

### The AN battery

The **Resource** column links to the resource itself: **PCOR-MII** — the `Questionnaire` is defined in this IG, the link goes to the artefact page with `linkId`s and downloads; **MII PRO** — the `Questionnaire` arrives through the package dependency `de.medizininformatikinitiative.kerndatensatz.pros` 2027.0.0-ballot.2, PCOR-MII does not rebuild it; **open** — no artefact exists yet for this row of the data collection plan. The **Docs** column points to the instrument's PCOR-MII page. Priorities and frequencies of the plan are in the *Domain Overview* sheet of the Item Level Dictionary and in the `display` of the manifest entries.

**Generic core — identical in PSS, AN and NTx**

| Instrument | Cat. | Items | Resource | Docs |
|---|---|--:|---|---|
| Demographics (DEM) | DEM | 23¹ | **PCOR-MII** → [`DEM`](Questionnaire-DEM.html) | [Demographics](Demographie.html) |
| Medical History (MHI) — **with AN supplementary items** on weight history and AN subtype | MHI | 48¹ | **PCOR-MII** → [`MHI`](Questionnaire-MHI.html) | [MHI](MHI.html) |
| PROMIS Scale v1.2 — Global Health (Global01, Global02) | GHS | 2 | **PCOR-MII** → [`PROMISGH`](Questionnaire-PROMISGH.html) — 2-item subset, `derivedFrom` the module's 10-item scale | [PROMIS](PROMIS.html) |
| PROMIS-16 Profile v2.1 — site variant | GHS | 16 | **MII PRO** → [PROMIS-16](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-promis-16.html) | [PROMIS-16](PROMIS-16.html) |
| PROMIS-29 + Cognitive Function SF 4a (the plan's "8 domains") — site variant | GHS | 29 + 4 | **MII PRO** → PROMIS-29 and Cognitive Function SF 4a | [PROMIS-29](PROMIS-29.html), [Cognitive Function](PROMIS-Cognitive-Function.html) |
| PROMIS NRS — Pain Intensity 1a | GHS | 3 | **open** as a stand-alone instrument; the item is inside PROMIS-29 (`promis-global07`) | [PROMIS-29](PROMIS-29.html) |
| WHODAS 2.0, 12-item | GHS | 14 | **MII PRO** → [WHODAS 2.0](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-whodas-whodas12.html) | [WHODAS 2.0](WHODAS-12.html) |
| PHQ-8 — **default** in all use cases; full PHQ-9 only with an immediate on-site physician contact | GHS | 8 (9) | **MII PRO** → [PHQ-9](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-phq-9.html) (PHQ-8 = subset) | [PHQ-9](PHQ-9.html), [PHQ overview](PHQ.html) |
| PHQ-SI — suicidality, inpatient | MHA | 1 | **MII PRO** — item `phq-phq2i` of the PHQ-9, no questionnaire of its own | [PHQ-9](PHQ-9.html) |
| PHQ-15 | GHS | 13 | **MII PRO** → [PHQ-15](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-phq-15.html) | [PHQ-15](PHQ-15.html) |
| GAD-7 (also GAD-2 / PHQ-4 as subsets) | GHS | 7 | **MII PRO** → [GAD-7](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-gad-7.html) | [GAD-7](GAD-7.html) |
| EURONET-SOMA 1 + 2 | GHS | 2 | **MII PRO** → [EURONET-SOMA](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-euronet-soma.html) | [EURONET-SOMA](EURONET-SOMA.html) |
| EQ-5D-5L — outcome only, yearly | GHS | 6 | **MII PRO** → [EQ-5D-5L](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-euroqol-eq5d5l-collectable.html), collectable variant | — |
| WAI / Work Ability Score | GHS | 3 | **PCOR-MII** → [`WAI`](Questionnaire-WAI.html) — **metadata-only**, no item texts | [WAI](WAI.html) |
| OPD-SFK — personality functioning, priority C; collected by individual sites, no recommendation of the use-case lead | MHA | 12 | **PCOR-MII** → [`OPDSFK`](Questionnaire-OPDSFK.html) | [OPD-SFK](OPD-SFK.html) |

¹ For DEM and MHI this is the number of leaf items of the PCOR-MII questionnaire, not a dictionary instrument count: both bundle single items from several sources (OECD, GI-PS, CPCOR) into one questionnaire each, and the MHI adds the two PCOR-MII helper items for unit selection. For all other rows the number is the item count according to the Item Level Dictionary.

PROMIS-16 and PROMIS-29 + Cognitive Function are **site variants** (either/or); both are in the manifest so that receivers can resolve responses of both site types (reading of the "8 domains" confirmed by the use-case lead, 2026-10-13). In AN too, the **PHQ-8 is the default**; the full PHQ-9 with the suicidality item `phq-phq2i` may only be used when the assessment is immediately followed by an on-site physician contact — never in remote monitoring (see [PHQ overview](PHQ.html)).

**AN-specific instruments**

All five are **project-specific subsets** of published instruments (for the ACE the first five questions), provisionally maintained in PCOR-MII ([ADR-003](Designentscheidungen.html)), and **none** of them carries a score. Until release 0.3.0 the ERQ-6 counted as the exception — it was wrongly identified as the official short form ERQ-S; the correction is on the [ERQ-6 page](ERQ-6.html).

| Instrument | Cat. | Items | Captures | Resource | Docs | Example response |
|---|---|--:|---|---|---|---|
| ERQ-6 | DCH | 6 | Emotion regulation — six ERQ items | **PCOR-MII** → [`ERQ6`](Questionnaire-ERQ6.html) | [ERQ-6](ERQ-6.html) | [ERQ6Response](QuestionnaireResponse-ERQ6Response.html) |
| EDE-Q6 | DCH | 6 | Eating-disorder psychopathology incl. menstruation | **PCOR-MII** → [`EDEQ6`](Questionnaire-EDEQ6.html) | [EDE-Q6](EDE-Q6.html) | [EDEQ6Response](QuestionnaireResponse-EDEQ6Response.html) |
| ANSOCQ-2 | TCH | 2 | Motivation to change (stages of change) | **PCOR-MII** → [`ANSOCQ2`](Questionnaire-ANSOCQ2.html) | [ANSOCQ-2](ANSOCQ-2.html) | [ANSOCQ2Response](QuestionnaireResponse-ANSOCQ2Response.html) |
| SSUK-2 | EFA | 2 | Social support / problematic interaction | **PCOR-MII** → [`SSUK2`](Questionnaire-SSUK2.html) | [SSUK-2](SSUK-2.html) | [SSUK2Response](QuestionnaireResponse-SSUK2Response.html) |
| ACE + timing items | EFA | 5 + 6 | Adverse childhood experiences; the six `UKHD-CTT` timing items bound to `ace1`–`ace3` via `enableWhen` (PCOR-MII composite) | **PCOR-MII** → [`ACE`](Questionnaire-ACE.html) | [ACE](ACE.html) | [ACEResponse](QuestionnaireResponse-ACEResponse.html) |
| UKHD-EDP | DCH | 11 | Eating-disorder psychopathology — probably an EDI-2 subset | **PCOR-MII** → [`UKHDEDP`](Questionnaire-UKHDEDP.html) — **metadata-only** | [UKHD-EDP](UKHD-EDP.html) | [UKHDEDPMonitoringResponse](QuestionnaireResponse-UKHDEDPMonitoringResponse.html) |

**UKHD supplementary questionnaires** — item groups that do not correspond to any published instrument and were compiled by the Heidelberg site for data collection, all priority A. Six are modelled as **one Questionnaire each**, one per dictionary group ([UKHD supplementary items](UKHD-Zusatzitems.html)); `UKHD-CTT` is inside the ACE (see above), `UKHD-BI` is deliberately not modelled.

| Questionnaire | Cat. | Items | Captures | Resource | Example response |
|---|---|--:|---|---|---|
| UKHD-PT | TCH | 2 | Prior treatment: psychotherapy, physician visits | [`UKHDPT`](Questionnaire-UKHDPT.html) | [UKHDPTResponse](QuestionnaireResponse-UKHDPTResponse.html) |
| UKHD-ANB | DCH | 2 (+2) | Eating-disorder history: duration, lowest BMI | [`UKHDANB`](Questionnaire-UKHDANB.html) | [UKHDANBResponse](QuestionnaireResponse-UKHDANBResponse.html) |
| UKHD-CT | TCH | 1 | Current treatment status | [`UKHDCT`](Questionnaire-UKHDCT.html) | [UKHDCTResponse](QuestionnaireResponse-UKHDCTResponse.html) |
| UKHD-LE | EFA | 4 | Stressful life events | [`UKHDLE`](Questionnaire-UKHDLE.html) | [UKHDLEResponse](QuestionnaireResponse-UKHDLEResponse.html) |
| UKHD-ND | DCH | 3 | New diagnoses since the last assessment | [`UKHDND`](Questionnaire-UKHDND.html) | [UKHDNDMonitoringResponse](QuestionnaireResponse-UKHDNDMonitoringResponse.html) — not collected at the initial visit |
| UKHD-D | DCH | 2 | Diagnoses at admission | [`UKHDD`](Questionnaire-UKHDD.html) | [UKHDDResponse](QuestionnaireResponse-UKHDDResponse.html) |
| `UKHD-BI` | — | 3 | Body image — visual picture scale; data collection does not use it yet, the picture template is missing in the dictionary | **open** — deliberately not modelled | — |

For these groups no documented clearance exists, and the origin of their wording is unresolved — the `UKHD` prefix is a compilation label of the dictionary, not a statement of authorship. Modelling them is a deliberate project decision for piloting; details under [Rights and open points](Rechtelage.html#standortgruppen).

**Scores**

| Score | Resource | Docs |
|---|---|---|
| PROPr — PROMIS Preference utility | **PCOR-MII** → [`PcorObsDefProprUtility`](ObservationDefinition-PcorObsDefProprUtility.html) — provisional, responsibility upstream | [PROMIS-16](PROMIS-16.html#propr) |
| PROMIS domain T-scores (PROMIS-29) | **MII PRO** — eight `ObservationDefinition`s in the package | [PROMIS-29](PROMIS-29.html) |
| PROMIS domain T-scores (PROMIS-16) | **open** — upstream roadmap 2027; the eight PROMIS-29 codes do **not** apply to PROMIS-16 | [PROMIS-16](PROMIS-16.html) |
| Physical / Mental Health Summary (PHS, PCS, MHS, MCS) | **open** — priority A in the plan, no artefact | *Domain Overview* of the Item Level Dictionary |
| EQ-5D-5L index | **MII PRO** — index score and CQL upstream | — |
| OPD-SFK global score | **PCOR-MII** — calculated item `opd-sfk-globalwert` in the questionnaire | [OPD-SFK](OPD-SFK.html) |

The five AN subsets and the UKHD questionnaires carry no score (see below).

### The subsets follow a documented selection rule

Four of the five AN instruments are subsets, and the DIZ implementation list names the rule behind them in its column *"shortened version?"* — identically for ERQ-6, EDE-Q6, ANSOCQ-2 and SSUK-2:

> "not used in full, but only the item with the highest discriminatory power per scale"

That matters more than it looks: the subsets are **not arbitrarily shortened** but built on a stated psychometric criterion — the most discriminating item per scale or factor. For three of the four, PCOR-MII has checked this rule against the published structure of the original instrument: for [EDE-Q6](EDE-Q6.html) against the four EDE-Q subscales, for [ANSOCQ-2](ANSOCQ-2.html) against the two factors of the German validation, for [SSUK-2](SSUK-2.html) against the two opposing SSUK dimensions. It holds in each case.

**One exception to know about:** for the [ERQ-6](ERQ-6.html) the singular wording *"the item … per scale"* does not fit — there it is **three** items per subscale of the full instrument. Until release 0.3.0 this page said the questionnaire was the published short form ERQ-S and therefore the only one with a validated scoring. **That was wrong** — the ERQ-S consists of different ERQ items; the score has been withdrawn.

The [ACE](ACE.html) carries a different entry in the same column — *"the first 5 questions"* — so it is not a discrimination-based selection but the front block of the instrument (abuse and neglect without the household-dysfunction questions).

For the analysis the consequence is the same throughout: **one most discriminating item per scale does not represent the scale.** That is why **none** of these subsets carries a score — details on the respective instrument pages and in [ADR-003](Designentscheidungen.html). The answer codes carry `itemWeight` as a precaution so that an evaluation remains possible once a rule is agreed ([open point](Rechtelage.html#an-scoring)).

### One coherent example data set

For the five AN instruments and the [UKHD supplementary items](UKHD-Zusatzitems.html) there are filled-in example responses — **not** as unconnected test data, but as one assessment visit (18 June 2026) of **the same example patient** that [DEM](Demographie.html) and [MHI](MHI.html) already use ([pcor-mii-exa-patient-an](Patient-pcor-mii-exa-patient-an.html)): anorexia nervosa, restricting type, since 2020, in treatment, weight partially restored. The data set can therefore be read as a whole.

| Example response | Shows |
|---|---|
| [ERQ6Response](QuestionnaireResponse-ERQ6Response.html) | low reappraisal with high suppression — the pattern described for AN |
| [EDEQ6Response](QuestionnaireResponse-EDEQ6Response.html) | residual pathology; exercises the `enableWhen`-dependent question `edeq30` |
| [ANSOCQ2Response](QuestionnaireResponse-ANSOCQ2Response.html) | moderate motivation to change; `language` = `de-CH` because the validated Swiss version was presented |
| [SSUK2Response](QuestionnaireResponse-SSUK2Response.html) | opposing items: high on supportive, low on problematic interaction |
| [ACEResponse](QuestionnaireResponse-ACEResponse.html) | two affirmed items in the emotional dimension; of the three timing groups **only the first** is filled, because only `ace1` is affirmed — the other two are not enabled by `enableWhen` |
| [UKHDPTResponse](QuestionnaireResponse-UKHDPTResponse.html), [UKHDANBResponse](QuestionnaireResponse-UKHDANBResponse.html), [UKHDCTResponse](QuestionnaireResponse-UKHDCTResponse.html), [UKHDLEResponse](QuestionnaireResponse-UKHDLEResponse.html), [UKHDDResponse](QuestionnaireResponse-UKHDDResponse.html) | one **initial/screening visit** across five UKHD questionnaires; for [UKHD-ND](Questionnaire-UKHDND.html) there is deliberately **no** response at this visit — the first ND response belongs to the monitoring visit |

**Since 30 July 2026 there is a second visit:** the [monitoring bundle](Bundle-pcor-mii-exa-bundle-an-monitoring.html) collects nine follow-up responses of the same patient six weeks after the initial visit — slightly improved, not remitted. It contains the **first [UKHD-ND response](QuestionnaireResponse-UKHDNDMonitoringResponse.html)** (the group is only collected between admission and discharge), a deliberate **partial response** to UKHD-PT (only `bdkm16` — `bdkm15` is an initial item) and the first response to the metadata-only questionnaire [UKHD-EDP](QuestionnaireResponse-UKHDEDPMonitoringResponse.html). Both visits as bundles: [initial](Bundle-pcor-mii-exa-bundle-an-initial.html) · [monitoring](Bundle-pcor-mii-exa-bundle-an-monitoring.html).

The UKHD responses make a statement none of the others makes: the `TIMING` column of the Item Level Dictionary is deliberately not modelled in the questionnaires — it becomes visible in the **resource cut of the responses**: five responses for six questionnaires, because [UKHD-ND](Questionnaire-UKHDND.html) is not collected at the initial visit (rationale on [UKHD supplementary items](UKHD-Zusatzitems.html)).

**There are no score Observations in the AN block.** Until release 0.3.0 two ERQ scores were included; they were withdrawn on 1 October 2026 because the questionnaire is not the ERQ-S and therefore has no validated scoring rule (see [ERQ-6](ERQ-6.html)).

The answer values are chosen deliberately, not at random: a uniformly medium profile would have put both ERQ-6 item groups on the same value and hidden the opposition of the SSUK-2 items. The rationale is in the header comment of each FSH file. All instances are checked with the FHIR validator: **0 errors** (details under [Validation](Validierung.html)).

### Not collected in AN

For delimitation, because these instruments exist in PCOR-MII and sit next to the AN ones in the overall table: **PSS-only** are [PHQ-D panic block](PHQ-Panik.html), [PC-PTSD](PC-PTSD.html), [SCOFF](SCOFF.html), [ISR-Z](ISR-Z.html), [SSD-12](SSD-12.html), [Whiteley-7](WI-7.html), [EXPECT](EXPECT.html), [IPQ-S](IPQ-S.html), [GSLTPAQ](GSLTPAQ.html) and the UKE healthcare-utilisation items. **NTx-only** are [BAASIS, ABQ, MTSOSD-R59, MHI-NTx and the NTx follow-up questionnaire](NTx.html).

### Rights and status

According to the DIZ implementation list the five AN instruments are freely publishable; for [EDE-Q6](EDE-Q6.html) (published German version) and the German version of the [ACE](ACE.html) (ACE-D) the rights holders' consent is nevertheless to be obtained. The UKHD groups have no documented clearance, [UKHD-EDP](UKHD-EDP.html) is metadata-only. All AN-specific resources are **provisionally maintained in PCOR-MII** until they are officially agreed and parts can be adopted into the MII PRO module ([ADR-003](Designentscheidungen.html)). The full situation per instrument, the open questions and who has to answer them: [Rights and open points](Rechtelage.html).

Sources of this page: sheets `Item Level Dictionary AN` and `Domain Overview` of the Item Level Dictionary (`MASTER_3EntitiesOverview.xlsx`, not part of this repository), DIZ implementation list PCOR-MII; the PCOR-MII/MII PRO assignment matches the manifest [use-case-an](Library-use-case-an.html). Notes on the lifecycle from `Questionnaire` to `QuestionnaireResponse` are under [Implementation](Implementation.html); all artefacts under [Artifacts](artifacts.html).
