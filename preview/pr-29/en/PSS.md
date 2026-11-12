# PSS (Persistent Somatic Syndrome) - PCOR-MII Implementation Guide v0.9.0

## PSS (Persistent Somatic Syndrome)

**Translated page. Original language: German.**

**PSS** (**Persistent Somatic Syndrome**) is the psychosomatic entity in PCOR-MII — alongside [AN](AN.md) (Anorexia Nervosa) and [NTx](NTx.md) (kidney transplantation). The battery consists of generic instruments (identical across all three entities) and PSS-specific instruments on somatic symptom burden, health anxiety, mental comorbidity and healthcare utilisation.

The cross-entity view is on [Instruments](Instrumente.md); this page describes the PSS battery and says, for every questionnaire, where its FHIR resource lives. **Machine-readable**, the same compilation is [Library/use-case-pss](Library-use-case-pss.md), which pins all 23 questionnaires with versions. Rights and status of all instruments are collected on [Rights and open points](Rechtelage.md).

### The PSS battery

The **Resource** column links to the resource itself: **PCOR-MII** — the `Questionnaire` is defined in this IG; **MII PRO** — the `Questionnaire` arrives through the package dependency `de.medizininformatikinitiative.kerndatensatz.pros` 2027.0.0-ballot.2, PCOR-MII does not rebuild it, the link goes to the artefact page of the published module; **open** — no artefact exists yet for this row of the data collection plan. The **Example response** column shows the PSS example patient's response at the screening visit of 25 June 2026 (see below). Priorities and frequencies are in the **Domain Overview** sheet of the Item Level Dictionary and in the `display` of the manifest entries.

**Generic core — identical in PSS, AN and NTx**

| | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- |
| Demographics (DEM) | DEM | 23¹ | **PCOR-MII**→[`DEM`](Questionnaire-DEM.md) | [Demographics](Demographie.md) | [DEMPSSResponse](QuestionnaireResponse-DEMPSSResponse.md) |
| Medical History (MHI) | MHI | 48¹ | **PCOR-MII**→[`MHI`](Questionnaire-MHI.md) | [MHI](MHI.md) | [MHIPSSResponse](QuestionnaireResponse-MHIPSSResponse.md) |
| PROMIS Scale v1.2 — Global Health (Global01, Global02) | GHS | 2 | **PCOR-MII**→[`PROMISGH`](Questionnaire-PROMISGH.md)— 2-item subset,`derivedFrom`the module's 10-item scale | [PROMIS](PROMIS.md) | — |
| PROMIS-16 Profile v2.1 — site variant | GHS | 16 | **MII PRO**→[PROMIS-16](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-promis-16.html) | [PROMIS-16](PROMIS-16.md) | [example](QuestionnaireResponse-pcor-mii-exa-promis-16-response.md) |
| PROMIS-29 + Cognitive Function SF 4a (the plan's "8 domains") — site variant | GHS | 29 + 4 | **MII PRO**→[PROMIS-29](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-promis-29.html)and[Cognitive Function SF 4a](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-promis-cognitive-function-sf4a.html) | [PROMIS-29](PROMIS-29.md),[Cognitive Function](PROMIS-Cognitive-Function.md) | [Cognitive Function](QuestionnaireResponse-pcor-mii-exa-promis-cognitive-function-response.md) |
| PROMIS NRS — Pain Intensity 1a | GHS | 3 | **open**as a stand-alone instrument; the item is inside PROMIS-29 (`promis-global07`) | [PROMIS-29](PROMIS-29.md) | — |
| WHODAS 2.0, 12-item | GHS | 14 | **MII PRO**→[WHODAS 2.0](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-whodas-whodas12.html) | [WHODAS 2.0](WHODAS-12.md) | [example](QuestionnaireResponse-pcor-mii-exa-pss-whodas-12-response.md) |
| PHQ-8 —**default**in all use cases; full PHQ-9 only with an immediate on-site physician contact | GHS | 8 (9) | **MII PRO**→[PHQ-9](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-phq-9.html)(PHQ-8 = subset) | [PHQ-9](PHQ-9.md),[PHQ overview](PHQ.md) | [example](QuestionnaireResponse-pcor-mii-exa-pss-phq-9-response.md)(full PHQ-9, on-site visit) |
| PHQ-SI — suicidality, inpatient | MHA | 1 | **MII PRO**— item`phq-phq2i`of the PHQ-9, no questionnaire of its own | [PHQ-9](PHQ-9.md) | in the PHQ-9 example |
| PHQ-15 | GHS | 13 | **MII PRO**→[PHQ-15](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-phq-15.html) | [PHQ-15](PHQ-15.md) | [example](QuestionnaireResponse-pcor-mii-exa-pss-phq-15-response.md) |
| GAD-7 (also GAD-2 / PHQ-4 as subsets) | GHS | 7 | **MII PRO**→[GAD-7](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-gad-7.html) | [GAD-7](GAD-7.md) | [example](QuestionnaireResponse-pcor-mii-exa-pss-gad-7-response.md) |
| EURONET-SOMA 1 + 2 | GHS | 2 | **MII PRO**→[EURONET-SOMA](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-euronet-soma.html) | [EURONET-SOMA](EURONET-SOMA.md) | [example](QuestionnaireResponse-pcor-mii-exa-pss-euronet-soma-response.md) |
| EQ-5D-5L — outcome only, yearly | GHS | 6 | **MII PRO**→[EQ-5D-5L](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-euroqol-eq5d5l-collectable.html), collectable variant | — | — |
| WAI / Work Ability Score | GHS | 3 | **PCOR-MII**→[`WAI`](Questionnaire-WAI.md)—**metadata-only**, no item texts | [WAI](WAI.md) | [WAIResponse](QuestionnaireResponse-WAIResponse.md) |
| OPD-SFK — personality functioning; collected by individual sites, no recommendation of the use-case lead | MHA | 12 | **PCOR-MII**→[`OPDSFK`](Questionnaire-OPDSFK.md) | [OPD-SFK](OPD-SFK.md) | [OPDSFKResponse](QuestionnaireResponse-OPDSFKResponse.md) |

¹ For DEM and MHI this is the number of leaf items of the PCOR-MII questionnaire, not a dictionary instrument count: both bundle single items from several sources (OECD, GI-PS, CPCOR) into one questionnaire each. For all other rows the number is the item count according to the Item Level Dictionary.

PROMIS-16 and PROMIS-29 + Cognitive Function are **site variants** (either/or); both are in the manifest so that receivers can resolve responses of both site types.

**PSS-specific instruments**

| | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| SSD-12 | DCH | 12 | B criteria of somatic symptom disorder | **MII PRO**→[SSD-12](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-ssd-12.html) | [SSD-12](SSD-12.md) | [example](QuestionnaireResponse-pcor-mii-exa-pss-ssd-12-response.md) |
| WI-7 | DCH | 7 | Health anxiety (Whiteley Index) | **MII PRO**→[Whiteley-7](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-wi-7.html) | [WI-7](WI-7.md) | [example](QuestionnaireResponse-pcor-mii-exa-pss-wi-7-response.md) |
| SCOFF | MHA | 5 | Eating-disorder screening | **MII PRO**→[SCOFF](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-scoff.html) | [SCOFF](SCOFF.md) | [example](QuestionnaireResponse-pcor-mii-exa-pss-scoff-response.md) |
| ISR-Z | MHA | 3 | ICD-10 Symptom Rating, supplementary scale compulsion | **MII PRO**→[ISR-Z](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-isr-z.html) | [ISR-Z](ISR-Z.md) | [example](QuestionnaireResponse-pcor-mii-exa-pss-isr-z-response.md) |
| PC-PTSD | MHA | 4 | PTSD screen, primary care | **MII PRO**→[PC-PTSD](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-pc-ptsd.html) | [PC-PTSD](PC-PTSD.md) | [example](QuestionnaireResponse-pcor-mii-exa-pss-pc-ptsd-response.md) |
| PHQ-D panic block | MHA | 4 | Anxiety/panic attacks (`phq3a`–`phq3d`, yes/no) | **PCOR-MII**→[`PHQPANIK`](Questionnaire-PHQPANIK.md)— maintained in PCOR-MII ([ADR-012](Designentscheidungen.md)) | [PHQ-D panic block](PHQ-Panik.md) | [PHQPANIKResponse](QuestionnaireResponse-PHQPANIKResponse.md) |
| GSLTPAQ | TCH | 6 | Leisure-time physical activity | **PCOR-MII**→[`GSLTPAQ`](Questionnaire-GSLTPAQ.md) | [GSLTPAQ](GSLTPAQ.md) | [GSLTPAQResponse](QuestionnaireResponse-GSLTPAQResponse.md) |
| EXPECT | DCH | 3 | Expected course (three NRS items, not a standardised questionnaire) | **PCOR-MII**→[`EXPECT`](Questionnaire-EXPECT.md) | [EXPECT](EXPECT.md) | [EXPECTResponse](QuestionnaireResponse-EXPECTResponse.md) |
| IPQ-S | DCH | 1 | Subjective causal attribution — open question modelled on the B-IPQ | **PCOR-MII**→[`IPQS`](Questionnaire-IPQS.md) | [IPQ-S](IPQ-S.md) | [IPQSResponse](QuestionnaireResponse-IPQSResponse.md) |
| `UKE-HCU`,`UKE-HCU2`,`UKE-PSE`,`UKE-TR`,`UKE-DOT` | TCH | — | Healthcare utilisation — site-specific item groups of UKE, no published instrument | **open**— not modelled yet | — | — |

**Scores**

| | | |
| :--- | :--- | :--- |
| PHQ-9/-8, PHQ-15, GAD-7 sum scores, SSD-12, WI-7 | **MII PRO**—`ObservationDefinition`s and score items in the package | [PHQ overview](PHQ.md),[SSD-12](SSD-12.md),[WI-7](WI-7.md) |
| PROPr — PROMIS Preference utility | **PCOR-MII**→[`PcorObsDefProprUtility`](ObservationDefinition-PcorObsDefProprUtility.md)— provisional, responsibility upstream | [PROMIS-16](PROMIS-16.md#propr) |
| PROMIS domain T-scores (PROMIS-29) | **MII PRO**— eight`ObservationDefinition`s in the package | [PROMIS-29](PROMIS-29.md) |
| PROMIS domain T-scores (PROMIS-16) | **open**— upstream roadmap 2027 | [PROMIS-16](PROMIS-16.md) |
| OPD-SFK global score and three exploratory subscales | **PCOR-MII**— calculated items`opd-sfk-globalwert`,`opd-sfk-selbstwahrnehmung`,`opd-sfk-beziehungsmodell`,`opd-sfk-kontaktgestaltung`in the questionnaire | [OPD-SFK](OPD-SFK.md) |
| EQ-5D-5L index | **MII PRO**— index score and CQL upstream | — |

### The PHQ family in PSS

The **PHQ-8 is the default — in PSS as in every use case**: the eight depression items without the suicide item. That item is **kept separately as `PHQ-SI`**. The full PHQ-9 may only be collected when **an on-site physician contact follows immediately** — never in remote monitoring (see [PHQ overview](PHQ.md)). Both are items of the same PHQ-9 definition:

| | | |
| :--- | :--- | :--- |
| PHQ-8 | `phq-phq2a`–`phq-phq2h` | Depressiveness without the suicide item |
| PHQ-SI | `phq-phq2i` | Suicidality — exactly the item that distinguishes PHQ-9 from PHQ-8 |

Whoever collects both effectively collects the full PHQ-9 — permissible only in a setting with an immediately following on-site physician contact. The split in the dictionary is an analysis and governance decision (never suicidality without a management plan or alert), not a content deviation. See [PHQ overview](PHQ.md).

The **PHQ-D panic block** (`phq3a`–`phq3d`) is something different from PHQ-4: four yes/no items on anxiety/panic attacks with a 4-week recall from block 3 of the PHQ-D. The MII PRO module has **no artefact** for it; PCOR-MII therefore maintains the block itself as [`PHQPANIK`](PHQ-Panik.md) (ADR-012) — with `linkId`s in the PHQ-D namespace (`phq-phq3a`–`phq-phq3d`), so that a later adoption into the module needs no migration.

### What distinguishes PSS from AN and NTx

* **PSS only**: SSD-12, WI-7, SCOFF, ISR-Z, PC-PTSD, the PHQ-D panic block, EXPECT, IPQ-S, GSLTPAQ and the UKE healthcare-utilisation items. The Domain Overview lists PHQ-15 for PSS only (the NTx dictionary sheet includes it too — see [NTx](NTx.md)).
* **PSS and AN**: OPD-SFK (collected by individual sites, no direct recommendation of the use-case lead) and PHQ-SI.
* **AN only**: ERQ-6, EDE-Q6, ANSOCQ-2, SSUK-2, ACE and the UKHD supplementary questionnaires — see [AN](AN.md).
* **NTx only**: BAASIS, ABQ, MTSOSD-R59, MHI-NTx and the NTx follow-up questionnaire — see [NTx](NTx.md).

### Example data set

The PSS example patient ([pcor-mii-exa-patient-pss](Patient-pcor-mii-exa-patient-pss.md)) has one screening visit on 25 June 2026, bundled as a [Bundle](Bundle-pcor-mii-exa-bundle-pss-screening.md) with the complete battery: eight PCOR-MII questionnaires as FHIR Shorthand instances and twelve responses to MII PRO questionnaires. Profile, values and what each response demonstrates: [Examples](Beispiele.md).

### Rights and status

The PSS battery is for the most part freely publishable; the MII PRO instruments are governed there. Exceptions in PCOR-MII: [WAI](WAI.md) stays metadata-only until the German WAI network clears the German wording; [OPD-SFK](OPD-SFK.md) is free after consultation with the authors; in [DEM](Demographie.md) and [MHI](MHI.md) the GI-PS items and four PaRIS third-party instruments are open. PROMIS and WHODAS 2.0 are subject to their usage agreements (CPCOR and WHO). The full situation per instrument and the open questions: [Rights and open points](Rechtelage.md).

Notes on the lifecycle from `Questionnaire` to `QuestionnaireResponse` are under [Implementation](Implementation.md); all artefacts under [Artifacts](artifacts.md).

