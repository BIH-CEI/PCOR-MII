This page collects **every example of the IG in one place**: three synthetic example patients, four visit bundles and 46 example responses. The use-case pages [PSS](PSS.html), [AN](AN.html) and [NTx](NTx.html) point here; their tables name, per questionnaire, the example response that exercises it.

The examples are not unconnected test data but **coherent data sets**: every response belongs to one person and one assessment visit, and the answer values are coordinated, not rolled. What is not collected at a visit is **absent** from its bundle rather than present but empty — that is how the `TIMING` column of the Item Level Dictionary becomes visible, which is deliberately not modelled in the questionnaires.

### The three example patients

| Patient | Use case | Profile | Visits |
|---|---|---|---|
| [pcor-mii-exa-patient-an](Patient-pcor-mii-exa-patient-an.html) | AN | female, born 1985. Anorexia nervosa, restricting type, first signs around 2018, in treatment since 2020, weight partially restored | initial/screening visit 18 June 2026, monitoring visit 30 July 2026 |
| [pcor-mii-exa-patient-pss](Patient-pcor-mii-exa-patient-pss.html) | PSS | male, born 1977. Persistent somatic symptoms for about two years (exhaustion, back and gastrointestinal complaints); moderate somatic symptom burden (PHQ-15 = 12, SSD-12 = 22), mild depressive (PHQ-8 = 9) and anxious (GAD-7 = 7) symptoms, moderately reduced work ability (WAI 6/10) | screening visit 25 June 2026 |
| [pcor-mii-exa-patient-ntx](Patient-pcor-mii-exa-patient-ntx.html) | NTx | male, born 1968. Recipient of a living-donor kidney on 14 November 2024, first graft, haemodialysis in a dialysis practice before transplantation; under immunosuppression with tremor and diarrhoea as the most distressing side effects, occasionally missed doses | initial assessment 6 October 2026 (screening and first quarterly monitoring at one visit) |

The patients carry only gender, birth date and language; everything else is in the responses. The generic questionnaires (DEM, MHI, PROMIS, PHQ, WHODAS …) are answered by the AN and PSS patients; the NTx patient shows only the NTx-specific questionnaires.

### The four visit bundles

One `Bundle` of type `collection` per assessment visit, with the patient resource and all responses of that visit. The bundles are generated from the individual responses by `scripts/build-example-bundles.py` and checked in; the visit assignment is maintained explicitly there — whoever adds a response enters it there and rebuilds.

| Bundle | Patient | Visit | Entries | Content |
|---|---|---|--:|---|
| [AN — initial](Bundle-pcor-mii-exa-bundle-an-initial.html) | AN | 2026-06-18 | 13 | DEM, MHI, the five AN instruments and five UKHD questionnaires; UKHD-ND is deliberately absent because none of its items is collected at the initial visit |
| [AN — monitoring](Bundle-pcor-mii-exa-bundle-an-monitoring.html) | AN | 2026-07-30 | 10 | nine follow-up responses six weeks later, slightly improved, not remitted: ERQ-6, EDE-Q6, ANSOCQ-2, SSUK-2, UKHD-PT (only `bdkm16`), UKHD-CT, UKHD-LE, the **first UKHD-ND response** and the metadata-only response to UKHD-EDP. ACE, UKHD-ANB, UKHD-D and `bdkm15` are initial items and are not repeated |
| [PSS — screening](Bundle-pcor-mii-exa-bundle-pss-screening.html) | PSS | 2026-06-25 | 21 | the complete PSS battery: DEM, MHI, OPD-SFK, GSLTPAQ, EXPECT, IPQ-S, WAI and PHQ-D panic block as PCOR-MII questionnaires plus twelve responses to MII PRO questionnaires (PHQ-9, GAD-7, PHQ-15, SSD-12, WHODAS-12, EURONET-SOMA, WI-7, SCOFF, ISR-Z, PC-PTSD, PROMIS-16, PROMIS Cognitive Function). The full PHQ-9 is answered because the screening visit is an on-site visit with an immediate physician contact |
| [NTx — initial assessment](Bundle-pcor-mii-exa-bundle-ntx-erstbefragung.html) | NTx | 2026-10-06 | 6 | MHI-NTx (screening), NTx follow-up questionnaire and the three **metadata-only responses** to BAASIS, ABQ and MTSOSD-R59 (only `linkId`s and codes, no wording) |

The responses to MII PRO questionnaires are JSON files under `input/examples/` and reference the upstream canonicals with the version pin `|2027.0.0-ballot.2`; the responses to PCOR-MII questionnaires are FHIR Shorthand instances with the pin `|0.9.0`. Both forms sit side by side in the bundle.

### All example responses

The **Shows** column names what the response demonstrates beyond mere validity. The rationale for the values is in the header comment of each FSH file.

**AN — initial/screening visit 18 June 2026**

| Example response | Questionnaire | Shows |
|---|---|---|
| [DEMResponse](QuestionnaireResponse-DEMResponse.html) | [DEM](Questionnaire-DEM.html) | demographics as ISiKFormularDaten (not a PRO); yes/no as inline SNOMED CT |
| [MHIResponse](QuestionnaireResponse-MHIResponse.html) | [MHI](Questionnaire-MHI.html) | medical history with the AN group `gewicht-an` (weight history, AN subtype) |
| [ERQ6Response](QuestionnaireResponse-ERQ6Response.html) | [ERQ6](Questionnaire-ERQ6.html) | low reappraisal with high suppression — the pattern described for AN; items in questionnaire order, not grouped by subscale |
| [EDEQ6Response](QuestionnaireResponse-EDEQ6Response.html) | [EDEQ6](Questionnaire-EDEQ6.html) | residual pathology; exercises the `enableWhen`-dependent question `edeq30` |
| [ANSOCQ2Response](QuestionnaireResponse-ANSOCQ2Response.html) | [ANSOCQ2](Questionnaire-ANSOCQ2.html) | moderate motivation to change; `language` = `de-CH` because the validated Swiss version was presented |
| [SSUK2Response](QuestionnaireResponse-SSUK2Response.html) | [SSUK2](Questionnaire-SSUK2.html) | opposing items: high on supportive, low on problematic interaction — a medium profile would have hidden that |
| [ACEResponse](QuestionnaireResponse-ACEResponse.html) | [ACE](Questionnaire-ACE.html) | two affirmed items of the emotional dimension; of the three timing groups only the first is filled because only `ace1` is affirmed |
| [UKHDPTResponse](QuestionnaireResponse-UKHDPTResponse.html) | [UKHDPT](Questionnaire-UKHDPT.html) | prior treatment, both items (`bdkm15` is an initial item) |
| [UKHDANBResponse](QuestionnaireResponse-UKHDANBResponse.html) | [UKHDANB](Questionnaire-UKHDANB.html) | eating-disorder history with unit selection |
| [UKHDCTResponse](QuestionnaireResponse-UKHDCTResponse.html) | [UKHDCT](Questionnaire-UKHDCT.html) | current treatment status |
| [UKHDLEResponse](QuestionnaireResponse-UKHDLEResponse.html) | [UKHDLE](Questionnaire-UKHDLE.html) | stressful life events at screening |
| [UKHDDResponse](QuestionnaireResponse-UKHDDResponse.html) | [UKHDD](Questionnaire-UKHDD.html) | diagnoses at admission as free text |

**AN — monitoring visit 30 July 2026**

| Example response | Questionnaire | Shows |
|---|---|---|
| [ERQ6MonitoringResponse](QuestionnaireResponse-ERQ6MonitoringResponse.html) | [ERQ6](Questionnaire-ERQ6.html) | suppression slightly down, reappraisal slightly up — a course of one or two levels |
| [EDEQ6MonitoringResponse](QuestionnaireResponse-EDEQ6MonitoringResponse.html) | [EDEQ6](Questionnaire-EDEQ6.html) | eating-disorder psychopathology somewhat reduced |
| [ANSOCQ2MonitoringResponse](QuestionnaireResponse-ANSOCQ2MonitoringResponse.html) | [ANSOCQ2](Questionnaire-ANSOCQ2.html) | motivation to change increases — exactly what the short form is the plan's monitoring instrument for |
| [SSUK2MonitoringResponse](QuestionnaireResponse-SSUK2MonitoringResponse.html) | [SSUK2](Questionnaire-SSUK2.html) | social support over time |
| [UKHDPTMonitoringResponse](QuestionnaireResponse-UKHDPTMonitoringResponse.html) | [UKHDPT](Questionnaire-UKHDPT.html) | **partial response**: only `bdkm16` (physician visits, "at"); an empty `bdkm15` would be wrong |
| [UKHDCTMonitoringResponse](QuestionnaireResponse-UKHDCTMonitoringResponse.html) | [UKHDCT](Questionnaire-UKHDCT.html) | treatment status over time |
| [UKHDLEMonitoringResponse](QuestionnaireResponse-UKHDLEMonitoringResponse.html) | [UKHDLE](Questionnaire-UKHDLE.html) | only the monitoring item, negated — `lifev_text` stays locked by `enableWhen` |
| [UKHDNDMonitoringResponse](QuestionnaireResponse-UKHDNDMonitoringResponse.html) | [UKHDND](Questionnaire-UKHDND.html) | the **first ND response at all** (affirmed, with free text) — the group is only collected between admission and discharge |
| [UKHDEDPMonitoringResponse](QuestionnaireResponse-UKHDEDPMonitoringResponse.html) | [UKHDEDP](Questionnaire-UKHDEDP.html) | response to a **metadata-only questionnaire**: only `linkId`s and level values — proof that metadata-only does not hinder the reuse of responses |

**PSS — screening visit 25 June 2026**

| Example response | Questionnaire | Shows |
|---|---|---|
| [DEMPSSResponse](QuestionnaireResponse-DEMPSSResponse.html) | [DEM](Questionnaire-DEM.html) | demographics of the PSS patient |
| [MHIPSSResponse](QuestionnaireResponse-MHIPSSResponse.html) | [MHI](Questionnaire-MHI.html) | medical history **without** the AN group; diagnosis, anthropometry and medication of the PSS history |
| [OPDSFKResponse](QuestionnaireResponse-OPDSFKResponse.html) | [OPDSFK](Questionnaire-OPDSFK.html) | twelve items, the calculated global score (sum 26 of 48; until 0.9.0 this wrongly held a mean) and the three exploratory subscales (11, 8, 7) |
| [GSLTPAQResponse](QuestionnaireResponse-GSLTPAQResponse.html) | [GSLTPAQ](Questionnaire-GSLTPAQ.html) | leisure-time activity |
| [EXPECTResponse](QuestionnaireResponse-EXPECTResponse.html) | [EXPECT](Questionnaire-EXPECT.html) | three NRS values on the expected course |
| [IPQSResponse](QuestionnaireResponse-IPQSResponse.html) | [IPQS](Questionnaire-IPQS.html) | open causal question as free text |
| [WAIResponse](QuestionnaireResponse-WAIResponse.html) | [WAI](Questionnaire-WAI.html) | response to the metadata-only questionnaire WAI (6/10) |
| [PHQPANIKResponse](QuestionnaireResponse-PHQPANIKResponse.html) | [PHQPANIK](Questionnaire-PHQPANIK.html) | panic block with skip rule: `phq-phq3a` affirmed, so the follow-up items are enabled and answered (3b yes, 3c no, 3d yes); the excerpt on [Implementation](Implementation.html) is taken from here |
| [PHQ-9](QuestionnaireResponse-pcor-mii-exa-pss-phq-9-response.html) | MII PRO | full PHQ-9 (PHQ-8 = 9 plus the suicidality item), permissible only at the on-site visit |
| [GAD-7](QuestionnaireResponse-pcor-mii-exa-pss-gad-7-response.html) | MII PRO | GAD-7 = 7 |
| [PHQ-15](QuestionnaireResponse-pcor-mii-exa-pss-phq-15-response.html) | MII PRO | PHQ-15 = 12, displays from the German designations of the module CodeSystem |
| [SSD-12](QuestionnaireResponse-pcor-mii-exa-pss-ssd-12-response.html) | MII PRO | SSD-12 = 22 |
| [WHODAS-12](QuestionnaireResponse-pcor-mii-exa-pss-whodas-12-response.html) | MII PRO | functioning |
| [EURONET-SOMA](QuestionnaireResponse-pcor-mii-exa-pss-euronet-soma-response.html) | MII PRO | two single items |
| [WI-7](QuestionnaireResponse-pcor-mii-exa-pss-wi-7-response.html) | MII PRO | health anxiety |
| [SCOFF](QuestionnaireResponse-pcor-mii-exa-pss-scoff-response.html) | MII PRO | eating-disorder screen negative |
| [ISR-Z](QuestionnaireResponse-pcor-mii-exa-pss-isr-z-response.html) | MII PRO | compulsive symptoms |
| [PC-PTSD](QuestionnaireResponse-pcor-mii-exa-pss-pc-ptsd-response.html) | MII PRO | PTSD screen: one affirmed item, score 1 |
| [PROMIS-16](QuestionnaireResponse-pcor-mii-exa-promis-16-response.html) | MII PRO | eight domains; short site variant |
| [PROMIS Cognitive Function](QuestionnaireResponse-pcor-mii-exa-promis-cognitive-function-response.html) | MII PRO | SF 4a as the eighth domain of the site variant PROMIS-29 + Cognitive Function |

**NTx — initial assessment 6 October 2026**

| Example response | Questionnaire | Shows |
|---|---|---|
| [MHINTXResponse](QuestionnaireResponse-MHINTXResponse.html) | [MHINTX](Questionnaire-MHINTX.html) | transplant history: living donation, date, first graft — ISiKFormularDaten like the MHI |
| [NTXVERLAUFResponse](QuestionnaireResponse-NTXVERLAUFResponse.html) | [NTXVERLAUF](Questionnaire-NTXVERLAUF.html) | first quarterly monitoring: dialysis history, blood pressure with UCUM units, yes/no as SNOMED CT |
| [BAASISResponse](QuestionnaireResponse-BAASISResponse.html) | [BAASIS](Questionnaire-BAASIS.html) | occasionally missed doses; only items with a satisfied `enableWhen` condition are answered — and thereby the trigger for the ABQ |
| [ABQResponse](QuestionnaireResponse-ABQResponse.html) | [ABQ](Questionnaire-ABQ.html) | 16 level values, sum 26 in the calculated item |
| [MTSOSDR59Response](QuestionnaireResponse-MTSOSDR59Response.html) | [MTSOSDR59](Questionnaire-MTSOSDR59.html) | eleven symptoms present, distress only there; tremor and diarrhoea most distressing; no free-text symptoms |

The responses to BAASIS, ABQ and MTSOSD-R59 carry only `linkId`s and codes, no wording — exactly as responses to licensed questionnaires arrive in exchange ([ADR-014](Designentscheidungen.html)).

### Validation status

All examples and bundles are checked with the IG Publisher and the HL7 validator against the MII PRO module: **0 errors**. Not warning-free — the remaining warning classes (`dom-6` missing narrative, display hints for codes without a German designation on the terminology server, language `de-DE` against narrative `de`) are known and accepted; what they mean and when they must not be ignored is on [Validation](Validierung.html), together with the three ways to check your own bundles.

Notes on the lifecycle from `Questionnaire` to `QuestionnaireResponse` are under [Implementation](Implementation.html); all artefacts under [Artifacts](artifacts.html).
