# NTx (Nierentransplantation) - PCOR-MII Implementation Guide v0.9.0

## NTx (Nierentransplantation)

**Translated page. Original language: German.**

**NTx** (**kidney transplantation**) is the third entity in PCOR-MII — alongside [PSS](PSS.md) (Persistent Somatic Syndrome) and [AN](AN.md) (Anorexia Nervosa). The data collection plan separates two use cases with their own priority profiles: **recipients (NTXr)** and **living donors (NTXd)**. Collected are the generic battery (identical across all entities) and, for recipients, additionally medication adherence, symptom burden of immunosuppression, transplant history and a quarterly follow-up questionnaire of the Hannover site (MHH). Donors have no specific instrument and no monitoring according to the plan.

The cross-entity view is on [Instruments](Instrumente.md); this page describes the NTx battery and says, for every questionnaire, where its FHIR resource lives. The details of the NTx-specific questionnaires (items, scales, conditions, scoring) are on [NTx instruments](NTx-Instrumente.md) (German). **Machine-readable**, the compilations are [Library/use-case-ntxr](Library-use-case-ntxr.md) (17 questionnaires) and [Library/use-case-ntxd](Library-use-case-ntxd.md) (12 questionnaires, generic only). Rights and status of all instruments are collected on [Rights and open points](Rechtelage.md).

### The NTx battery

The **Resource** column links to the resource itself: **PCOR-MII** — the `Questionnaire` is defined in this IG; **MII PRO** — the `Questionnaire` arrives through the package dependency `de.medizininformatikinitiative.kerndatensatz.pros` 2027.0.0-ballot.2, PCOR-MII does not rebuild it, the link goes to the artefact page of the published module; **open** — no artefact exists yet. The **NTXr / NTXd** column says in which of the two manifests the questionnaire is pinned. Priorities and frequencies are in the **Domain Overview** sheet of the Item Level Dictionary and in the `display` of the manifest entries.

**Generic core — identical in PSS, AN and NTx**

| | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- |
| Demographics (DEM) | DEM | 23¹ | • / • | **PCOR-MII**→[`DEM`](Questionnaire-DEM.md) | [Demographics](Demographie.md) |
| Medical History (MHI) | MHI | 48¹ | • / • | **PCOR-MII**→[`MHI`](Questionnaire-MHI.md) | [MHI](MHI.md) |
| PROMIS Scale v1.2 — Global Health (Global01, Global02) | GHS | 2 | • / • | **PCOR-MII**→[`PROMISGH`](Questionnaire-PROMISGH.md)— 2-item subset,`derivedFrom`the module's 10-item scale | [PROMIS](PROMIS.md) |
| PROMIS-16 Profile v2.1 — site variant | GHS | 16 | • / • | **MII PRO**→[PROMIS-16](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-promis-16.html) | [PROMIS-16](PROMIS-16.md) |
| PROMIS-29 + Cognitive Function SF 4a (the plan's "8 domains") — site variant | GHS | 29 + 4 | • / • | **MII PRO**→[PROMIS-29](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-promis-29.html)and[Cognitive Function SF 4a](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-promis-cognitive-function-sf4a.html) | [PROMIS-29](PROMIS-29.md),[Cognitive Function](PROMIS-Cognitive-Function.md) |
| PROMIS NRS — Pain Intensity 1a | GHS | 3 | — | **open**as a stand-alone instrument; the item is inside PROMIS-29 (`promis-global07`) | [PROMIS-29](PROMIS-29.md) |
| WHODAS 2.0, 12-item | GHS | 14 | • / • | **MII PRO**→[WHODAS 2.0](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-whodas-whodas12.html) | [WHODAS 2.0](WHODAS-12.md) |
| PHQ-8 —**default**in all use cases; PHQ-SI is not part of the NTx dictionary | GHS | 8 | • / • | **MII PRO**→[PHQ-9](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-phq-9.html)(PHQ-8 = subset) | [PHQ-9](PHQ-9.md),[PHQ overview](PHQ.md) |
| PHQ-15 | GHS | 13 | **open** | **MII PRO**available,**not pinned**in NTx: the Domain Overview lists PHQ-15 for PSS only, the NTx dictionary sheet includes it — to be settled by the use-case lead | [PHQ-15](PHQ-15.md) |
| GAD-7 (also GAD-2 / PHQ-4 as subsets) | GHS | 7 | • / • | **MII PRO**→[GAD-7](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-gad-7.html) | [GAD-7](GAD-7.md) |
| EURONET-SOMA 1 + 2 | GHS | 2 | • / • | **MII PRO**→[EURONET-SOMA](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-euronet-soma.html) | [EURONET-SOMA](EURONET-SOMA.md) |
| EQ-5D-5L — outcome only, priority A, yearly | GHS | 6 | • / • | **MII PRO**→[EQ-5D-5L](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-euroqol-eq5d5l-collectable.html), collectable variant | — |
| WAI / Work Ability Score — priority A in NTx | GHS | 3 | • / • | **PCOR-MII**→[`WAI`](Questionnaire-WAI.md)—**metadata-only**, no item texts | [WAI](WAI.md) |

¹ For DEM and MHI this is the number of leaf items of the PCOR-MII questionnaire, not a dictionary instrument count: both bundle single items from several sources (OECD, GI-PS, CPCOR) into one questionnaire each. For all other rows the number is the item count according to the Item Level Dictionary.

Not in NTx: OPD-SFK (PSS and AN only) and PHQ-SI. PROMIS-16 and PROMIS-29 + Cognitive Function are **site variants** (either/or); both are in the manifests so that receivers can resolve responses of both site types.

**NTx-specific instruments (recipients only)**

| | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| MHI-NTx — transplant history (`MHH-DON`,`MHH-Tx-DATE`,`MHH-PRIOR-TX`) | TCH | 3 | Screening, priority A | **PCOR-MII**→[`MHINTX`](Questionnaire-MHINTX.md)— supplement to the MHI | [NTx instruments](NTx-Instrumente.md#mhi-ntx-transplantationsanamnese) | [MHINTXResponse](QuestionnaireResponse-MHINTXResponse.md) |
| NTx follow-up questionnaire (MHH) — eight`MHH-*`groups as one questionnaire | DCH, TCH | 18 | Quarterly monitoring, priority A/B | **PCOR-MII**→[`NTXVERLAUF`](Questionnaire-NTXVERLAUF.md) | [NTx instruments](NTx-Instrumente.md#ntx-verlaufsbefragung-mhh) | [NTXVERLAUFResponse](QuestionnaireResponse-NTXVERLAUFResponse.md) |
| BAASIS — adherence to immunosuppression | TCH | 10 | Quarterly monitoring, priority A | **PCOR-MII**→[`BAASIS`](Questionnaire-BAASIS.md)—**metadata-only** | [NTx instruments](NTx-Instrumente.md#baasis) | [BAASISResponse](QuestionnaireResponse-BAASISResponse.md) |
| ABQ — adherence barriers | TCH | 16 | Only on indication of non-adherence in the BAASIS, priority A | **PCOR-MII**→[`ABQ`](Questionnaire-ABQ.md)—**metadata-only**, sum score 16–64 | [NTx instruments](NTx-Instrumente.md#abq) | [ABQResponse](QuestionnaireResponse-ABQResponse.md) |
| MTSOSD-R59 — symptom burden of immunosuppression | MSE | 126 | Quarterly monitoring; scope open (full questionnaire or tremor/diarrhoea only) | **PCOR-MII**→[`MTSOSDR59`](Questionnaire-MTSOSDR59.md)—**metadata-only**, no score (cohort-relative ridit analysis) | [NTx instruments](NTx-Instrumente.md#mtsosd-r59) | [MTSOSDR59Response](QuestionnaireResponse-MTSOSDR59Response.md) |

BAASIS and ABQ are linked: the ABQ is collected only when the BAASIS indicates non-adherence — a condition between two questionnaires that is not modelled as `enableWhen` but drives the calling process. The three licensed instruments are set up as **variant pairs** per [ADR-014](Designentscheidungen.md): the public definition here carries structure, `linkId`s, answer formats and conditions without the original wording; the collectable variant with wording lives outside the IG and is delivered to licensed centres only.

**Scores**

| | | |
| :--- | :--- | :--- |
| ABQ sum score 16–64 | **PCOR-MII**— calculated item`abq-summe`in the questionnaire | [NTx instruments](NTx-Instrumente.md#abq) |
| BAASIS — three phases (implementation, persistence, initiation) | documented only, no expression | [NTx instruments](NTx-Instrumente.md#baasis) |
| MTSOSD-R59 — ridit analysis | deliberately no artefact: cohort-dependent, belongs to the analysis | [NTx instruments](NTx-Instrumente.md#mtsosd-r59) |
| PROPr, PROMIS T-scores, EQ-5D-5L index | as in[PSS](PSS.md)and[AN](AN.md) | — |

### Recipients and donors

| | | |
| :--- | :--- | :--- |
| Manifest | [use-case-ntxr](Library-use-case-ntxr.md), 17 questionnaires | [use-case-ntxd](Library-use-case-ntxd.md), 12 questionnaires |
| Generic battery | yes | yes |
| MHI-NTx, follow-up questionnaire, BAASIS, ABQ, MTSOSD-R59 | yes | no |
| Monitoring | quarterly (follow-up questionnaire, BAASIS, MTSOSD-R59) | no monitoring according to the plan |

The MHI has no entity switch; which questionnaires a use case collects is determined by its manifest. The recipient manifest therefore pins MHI **and** MHI-NTx, the donor manifest only the MHI ([ADR-011](Designentscheidungen.md)).

### Example data set

The NTx example patient ([pcor-mii-exa-patient-ntx](Patient-pcor-mii-exa-patient-ntx.md)) is the recipient of a living-donor kidney; the [bundle NTx — initial assessment](Bundle-pcor-mii-exa-bundle-ntx-erstbefragung.md) (6 October 2026) combines screening and the first quarterly monitoring, with the three metadata-only responses to BAASIS, ABQ and MTSOSD-R59. Profile, values and what each response demonstrates: [Examples](Beispiele.md).

### Rights and status

BAASIS (© University of Basel), MTSOSD-R59 (© KU Leuven) and ABQ are free for research use, but their items and answer options must not be published; every centre needs its own licence agreement, for the BAASIS with data sharing to the validation project of the University of Basel. The MHH site items (MHI-NTx, follow-up questionnaire) have no documented clearance. Sources, licence conditions and the open questions (licensee per project or per centre, rate scale BAASIS 2_a, ABQ polarity, MTSOSD scope, MAPI version): [Rights and open points](Rechtelage.md#ntx).

Sources of this page: sheets `Item Level Dictionary NTx` and `Domain Overview` of the Item Level Dictionary (not part of this repository), DIZ implementation list PCOR-MII; the assignment matches the manifests [use-case-ntxr](Library-use-case-ntxr.md) and [use-case-ntxd](Library-use-case-ntxd.md). Notes on the lifecycle from `Questionnaire` to `QuestionnaireResponse` are under [Implementation](Implementation.md); all artefacts under [Artifacts](artifacts.md).

