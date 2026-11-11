**PSS** (*Persistent Somatic Syndrome*) is the psychosomatic entity in PCOR-MII — alongside [AN](AN.html) (Anorexia Nervosa) and [NTx](NTx.html) (kidney transplantation). The battery consists of generic instruments (identical across all three entities) and PSS-specific instruments on somatic symptom burden, health anxiety, mental comorbidity and healthcare utilisation.

The cross-entity view is on [Instruments](Instrumente.html); this page describes the PSS battery and says, for every questionnaire, where its FHIR resource lives. **Machine-readable**, the same compilation is [Library/use-case-pss](Library-use-case-pss.html), which pins all 23 questionnaires with versions. Rights and status of all instruments are collected on [Rights and open points](Rechtelage.html).

### The PSS battery

The **Resource** column links to the resource itself: **PCOR-MII** — the `Questionnaire` is defined in this IG; **MII PRO** — the `Questionnaire` arrives through the package dependency `de.medizininformatikinitiative.kerndatensatz.pros` 2027.0.0-ballot.2, PCOR-MII does not rebuild it, the link goes to the artefact page of the published module; **open** — no artefact exists yet for this row of the data collection plan. The **Example response** column shows the PSS example patient's response at the screening visit of 25 June 2026 (see below). Priorities and frequencies are in the *Domain Overview* sheet of the Item Level Dictionary and in the `display` of the manifest entries.

**Generic core — identical in PSS, AN and NTx**

| Instrument | Cat. | Items | Resource | Docs | Example response |
|---|---|--:|---|---|---|
| Demographics (DEM) | DEM | 23¹ | **PCOR-MII** → [`DEM`](Questionnaire-DEM.html) | [Demographics](Demographie.html) | [DEMPSSResponse](QuestionnaireResponse-DEMPSSResponse.html) |
| Medical History (MHI) | MHI | 48¹ | **PCOR-MII** → [`MHI`](Questionnaire-MHI.html) | [MHI](MHI.html) | [MHIPSSResponse](QuestionnaireResponse-MHIPSSResponse.html) |
| PROMIS Scale v1.2 — Global Health (Global01, Global02) | GHS | 2 | **PCOR-MII** → [`PROMISGH`](Questionnaire-PROMISGH.html) — 2-item subset, `derivedFrom` the module's 10-item scale | [PROMIS](PROMIS.html) | — |
| PROMIS-16 Profile v2.1 — site variant | GHS | 16 | **MII PRO** → [PROMIS-16](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-promis-16.html) | [PROMIS-16](PROMIS-16.html) | [example](QuestionnaireResponse-pcor-mii-exa-promis-16-response.html) |
| PROMIS-29 + Cognitive Function SF 4a (the plan's "8 domains") — site variant | GHS | 29 + 4 | **MII PRO** → [PROMIS-29](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-promis-29.html) and [Cognitive Function SF 4a](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-promis-cognitive-function-sf4a.html) | [PROMIS-29](PROMIS-29.html), [Cognitive Function](PROMIS-Cognitive-Function.html) | [Cognitive Function](QuestionnaireResponse-pcor-mii-exa-promis-cognitive-function-response.html) |
| PROMIS NRS — Pain Intensity 1a | GHS | 3 | **open** as a stand-alone instrument; the item is inside PROMIS-29 (`promis-global07`) | [PROMIS-29](PROMIS-29.html) | — |
| WHODAS 2.0, 12-item | GHS | 14 | **MII PRO** → [WHODAS 2.0](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-whodas-whodas12.html) | [WHODAS 2.0](WHODAS-12.html) | [example](QuestionnaireResponse-pcor-mii-exa-pss-whodas-12-response.html) |
| PHQ-8 — **default** in all use cases; full PHQ-9 only with an immediate on-site physician contact | GHS | 8 (9) | **MII PRO** → [PHQ-9](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-phq-9.html) (PHQ-8 = subset) | [PHQ-9](PHQ-9.html), [PHQ overview](PHQ.html) | [example](QuestionnaireResponse-pcor-mii-exa-pss-phq-9-response.html) (full PHQ-9, on-site visit) |
| PHQ-SI — suicidality, inpatient | MHA | 1 | **MII PRO** — item `phq-phq2i` of the PHQ-9, no questionnaire of its own | [PHQ-9](PHQ-9.html) | in the PHQ-9 example |
| PHQ-15 | GHS | 13 | **MII PRO** → [PHQ-15](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-phq-15.html) | [PHQ-15](PHQ-15.html) | [example](QuestionnaireResponse-pcor-mii-exa-pss-phq-15-response.html) |
| GAD-7 (also GAD-2 / PHQ-4 as subsets) | GHS | 7 | **MII PRO** → [GAD-7](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-gad-7.html) | [GAD-7](GAD-7.html) | [example](QuestionnaireResponse-pcor-mii-exa-pss-gad-7-response.html) |
| EURONET-SOMA 1 + 2 | GHS | 2 | **MII PRO** → [EURONET-SOMA](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-euronet-soma.html) | [EURONET-SOMA](EURONET-SOMA.html) | [example](QuestionnaireResponse-pcor-mii-exa-pss-euronet-soma-response.html) |
| EQ-5D-5L — outcome only, yearly | GHS | 6 | **MII PRO** → [EQ-5D-5L](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-euroqol-eq5d5l-collectable.html), collectable variant | — | — |
| WAI / Work Ability Score | GHS | 3 | **PCOR-MII** → [`WAI`](Questionnaire-WAI.html) — **metadata-only**, no item texts | [WAI](WAI.html) | [WAIResponse](QuestionnaireResponse-WAIResponse.html) |
| OPD-SFK — personality functioning; collected by individual sites, no recommendation of the use-case lead | MHA | 12 | **PCOR-MII** → [`OPDSFK`](Questionnaire-OPDSFK.html) | [OPD-SFK](OPD-SFK.html) | [OPDSFKResponse](QuestionnaireResponse-OPDSFKResponse.html) |

¹ For DEM and MHI this is the number of leaf items of the PCOR-MII questionnaire, not a dictionary instrument count: both bundle single items from several sources (OECD, GI-PS, CPCOR) into one questionnaire each. For all other rows the number is the item count according to the Item Level Dictionary.

PROMIS-16 and PROMIS-29 + Cognitive Function are **site variants** (either/or); both are in the manifest so that receivers can resolve responses of both site types.

**PSS-specific instruments**

| Instrument | Cat. | Items | Captures | Resource | Docs | Example response |
|---|---|--:|---|---|---|---|
| SSD-12 | DCH | 12 | B criteria of somatic symptom disorder | **MII PRO** → [SSD-12](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-ssd-12.html) | [SSD-12](SSD-12.html) | [example](QuestionnaireResponse-pcor-mii-exa-pss-ssd-12-response.html) |
| WI-7 | DCH | 7 | Health anxiety (Whiteley Index) | **MII PRO** → [Whiteley-7](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-wi-7.html) | [WI-7](WI-7.html) | [example](QuestionnaireResponse-pcor-mii-exa-pss-wi-7-response.html) |
| SCOFF | MHA | 5 | Eating-disorder screening | **MII PRO** → [SCOFF](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-scoff.html) | [SCOFF](SCOFF.html) | [example](QuestionnaireResponse-pcor-mii-exa-pss-scoff-response.html) |
| ISR-Z | MHA | 3 | ICD-10 Symptom Rating, supplementary scale compulsion | **MII PRO** → [ISR-Z](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-isr-z.html) | [ISR-Z](ISR-Z.html) | [example](QuestionnaireResponse-pcor-mii-exa-pss-isr-z-response.html) |
| PC-PTSD | MHA | 4 | PTSD screen, primary care | **MII PRO** → [PC-PTSD](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-pc-ptsd.html) | [PC-PTSD](PC-PTSD.html) | [example](QuestionnaireResponse-pcor-mii-exa-pss-pc-ptsd-response.html) |
| PHQ-D panic block | MHA | 4 | Anxiety/panic attacks (`phq3a`–`phq3d`, yes/no) | **PCOR-MII** → [`PHQPANIK`](Questionnaire-PHQPANIK.html) — maintained in PCOR-MII ([ADR-012](Designentscheidungen.html)) | [PHQ-D panic block](PHQ-Panik.html) | [PHQPANIKResponse](QuestionnaireResponse-PHQPANIKResponse.html) |
| GSLTPAQ | TCH | 6 | Leisure-time physical activity | **PCOR-MII** → [`GSLTPAQ`](Questionnaire-GSLTPAQ.html) | [GSLTPAQ](GSLTPAQ.html) | [GSLTPAQResponse](QuestionnaireResponse-GSLTPAQResponse.html) |
| EXPECT | DCH | 3 | Expected course (three NRS items, not a standardised questionnaire) | **PCOR-MII** → [`EXPECT`](Questionnaire-EXPECT.html) | [EXPECT](EXPECT.html) | [EXPECTResponse](QuestionnaireResponse-EXPECTResponse.html) |
| IPQ-S | DCH | 1 | Subjective causal attribution — open question modelled on the B-IPQ | **PCOR-MII** → [`IPQS`](Questionnaire-IPQS.html) | [IPQ-S](IPQ-S.html) | [IPQSResponse](QuestionnaireResponse-IPQSResponse.html) |
| `UKE-HCU`, `UKE-HCU2`, `UKE-PSE`, `UKE-TR`, `UKE-DOT` | TCH | — | Healthcare utilisation — site-specific item groups of UKE, no published instrument | **open** — not modelled yet | — | — |

**Scores**

| Score | Resource | Docs |
|---|---|---|
| PHQ-9/-8, PHQ-15, GAD-7 sum scores, SSD-12, WI-7 | **MII PRO** — `ObservationDefinition`s and score items in the package | [PHQ overview](PHQ.html), [SSD-12](SSD-12.html), [WI-7](WI-7.html) |
| PROPr — PROMIS Preference utility | **PCOR-MII** → [`PcorObsDefProprUtility`](ObservationDefinition-PcorObsDefProprUtility.html) — provisional, responsibility upstream | [PROMIS-16](PROMIS-16.html#propr) |
| PROMIS domain T-scores (PROMIS-29) | **MII PRO** — eight `ObservationDefinition`s in the package | [PROMIS-29](PROMIS-29.html) |
| PROMIS domain T-scores (PROMIS-16) | **open** — upstream roadmap 2027 | [PROMIS-16](PROMIS-16.html) |
| OPD-SFK global score | **PCOR-MII** — calculated item `opd-sfk-globalwert` in the questionnaire | [OPD-SFK](OPD-SFK.html) |
| EQ-5D-5L index | **MII PRO** — index score and CQL upstream | — |

### The PHQ family in PSS

The **PHQ-8 is the default — in PSS as in every use case**: the eight depression items without the suicide item. That item is **kept separately as `PHQ-SI`**. The full PHQ-9 may only be collected when **an on-site physician contact follows immediately** — never in remote monitoring (see [PHQ overview](PHQ.html)). Both are items of the same PHQ-9 definition:

| Dictionary | `linkId`s | Meaning |
|---|---|---|
| PHQ-8 | `phq-phq2a`–`phq-phq2h` | Depressiveness without the suicide item |
| PHQ-SI | `phq-phq2i` | Suicidality — exactly the item that distinguishes PHQ-9 from PHQ-8 |

Whoever collects both effectively collects the full PHQ-9 — permissible only in a setting with an immediately following on-site physician contact. The split in the dictionary is an analysis and governance decision (never suicidality without a management plan or alert), not a content deviation. See [PHQ overview](PHQ.html).

The **PHQ-D panic block** (`phq3a`–`phq3d`) is something different from PHQ-4: four yes/no items on anxiety/panic attacks with a 4-week recall from block 3 of the PHQ-D. The MII PRO module has **no artefact** for it; PCOR-MII therefore maintains the block itself as [`PHQPANIK`](PHQ-Panik.html) (ADR-012) — with `linkId`s in the PHQ-D namespace (`phq-phq3a`–`phq-phq3d`), so that a later adoption into the module needs no migration.

### What distinguishes PSS from AN and NTx

- **PSS only**: SSD-12, WI-7, SCOFF, ISR-Z, PC-PTSD, the PHQ-D panic block, EXPECT, IPQ-S, GSLTPAQ and the UKE healthcare-utilisation items. The Domain Overview lists PHQ-15 for PSS only (the NTx dictionary sheet includes it too — see [NTx](NTx.html)).
- **PSS and AN**: OPD-SFK (collected by individual sites, no direct recommendation of the use-case lead) and PHQ-SI.
- **AN only**: ERQ-6, EDE-Q6, ANSOCQ-2, SSUK-2, ACE and the UKHD supplementary questionnaires — see [AN](AN.html).
- **NTx only**: BAASIS, ABQ, MTSOSD-R59, MHI-NTx and the NTx follow-up questionnaire — see [NTx](NTx.html).

### One coherent example data set

Since 1 October 2026 PSS has a **synthetic example patient** ([pcor-mii-exa-patient-pss](Patient-pcor-mii-exa-patient-pss.html)): 48 years old, persistent somatic symptoms for about two years (exhaustion, back and gastrointestinal complaints), moderate somatic symptom burden (PHQ-15 = 12, SSD-12 = 22), mild depressive (PHQ-8 = 9) and anxious (GAD-7 = 7) symptoms, moderately reduced work ability (WAI 6/10).

The screening visit of 25 June 2026 is bundled as a **[Bundle](Bundle-pcor-mii-exa-bundle-pss-screening.html)** and covers the **complete battery** — the PCOR-MII questionnaires (DEM, MHI, OPD-SFK, GSLTPAQ, EXPECT, IPQ-S, WAI, PHQ-D panic block) as FHIR Shorthand instances and twelve responses to **MII PRO questionnaires** (PHQ-9, GAD-7, PHQ-15, SSD-12, WHODAS-12, EURONET-SOMA, WI-7, SCOFF, ISR-Z, PC-PTSD, PROMIS-16, PROMIS Cognitive Function) as examples under `input/examples/`, referencing the upstream canonicals with the version pin `|2027.0.0-ballot.2`. That the full PHQ-9 is answered here is consistent with the usage rule: the screening visit is an on-site visit with an immediate physician contact. The values are coordinated, not rolled — details in the header of `PSS-Responses.fsh`.

### Rights and status

The PSS battery is for the most part freely publishable; the MII PRO instruments are governed there. Exceptions in PCOR-MII: [WAI](WAI.html) stays metadata-only until the German WAI network clears the German wording; [OPD-SFK](OPD-SFK.html) is free after consultation with the authors; in [DEM](Demographie.html) and [MHI](MHI.html) the GI-PS items and four PaRIS third-party instruments are open. PROMIS and WHODAS 2.0 are subject to their usage agreements (CPCOR and WHO). The full situation per instrument and the open questions: [Rights and open points](Rechtelage.html).

Notes on the lifecycle from `Questionnaire` to `QuestionnaireResponse` are under [Implementation](Implementation.html); all artefacts under [Artifacts](artifacts.html).
