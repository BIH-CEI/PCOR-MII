This page is the **tabular entry point to all questionnaires** — following the pattern of the [MII PRO module's PRO library](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/pro-library.html). Per instrument: the documentation page, the `Questionnaire` definition (PCOR-MII artefact or MII PRO library), the example response and — where available — the score artefact.

Instrument selection and rights situation are covered on [Instruments](Instrumente.html); the use-case views follow [below](#use-cases).

### All questionnaires

Sorted project-wide collective questionnaires first, then by use-case breadth. • = collected in that use case.

| Instrument | PSS | AN | NTx | Docs | `Questionnaire` | Example response | Score |
|---|:--:|:--:|:--:|---|---|---|---|
| Demographics (DEM) | • | • | • | [Seite](Demographie.html) | [DEM](Questionnaire-DEM.html) | [✓ AN](QuestionnaireResponse-DEMResponse.html) · [✓ PSS](QuestionnaireResponse-DEMPSSResponse.html) | — |
| Medical History (MHI) | • | • | • | [Seite](MHI.html) | [MHI](Questionnaire-MHI.html) | [✓ AN](QuestionnaireResponse-MHIResponse.html) · [✓ PSS](QuestionnaireResponse-MHIPSSResponse.html) | — |
| PROMIS Global Health (subset: Global01/Global02) | • | • | • | [Page](PROMIS.html) | [PROMISGH](Questionnaire-PROMISGH.html) (interim, until the 10-item scale is upstream) | — | — |
| PROMIS-16 | • | • | • | [Seite](PROMIS-16.html) | [MII PRO](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-promis-16.html) | [✓](QuestionnaireResponse-pcor-mii-exa-promis-16-response.html) | [PROPr-ObsDef](ObservationDefinition-PcorObsDefProprUtility.html) |
| PROMIS SF 4a (8 domains) = PROMIS-29 + Cognitive Function | • | • | • | [PROMIS-33](PROMIS-33.html) | MII PRO: [PROMIS-29](PROMIS-29.html) + [Cognitive Function](PROMIS-Cognitive-Function.html) | [✓ Cognitive Function](QuestionnaireResponse-pcor-mii-exa-promis-cognitive-function-response.html) | — |
| WHODAS 2.0 (12-Item) | • | • | • | [Seite](WHODAS-12.html) | [MII PRO](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-whodas-whodas12.html) | [✓](QuestionnaireResponse-pcor-mii-exa-pss-whodas-12-response.html) | — |
| PHQ-Familie (PHQ-8 / PHQ-9 / PHQ-15, PHQ-SI) | • | • | • | [overview](PHQ.html), [PHQ-9](PHQ-9.html), [PHQ-15](PHQ-15.html) | [MII PRO](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-phq-9.html) | [✓](QuestionnaireResponse-pcor-mii-exa-pss-phq-9-response.html) | — |
| GAD-7 | • | • | • | [Seite](GAD-7.html) | [MII PRO](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-gad-7.html) | [✓](QuestionnaireResponse-pcor-mii-exa-pss-gad-7-response.html) | — |
| EURONET-SOMA | • | • | • | [Seite](EURONET-SOMA.html) | [MII PRO](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-euronet-soma.html) | [✓](QuestionnaireResponse-pcor-mii-exa-pss-euronet-soma-response.html) | — |
| WAI / Work Ability Score | • | • | • | [Seite](WAI.html) | [WAI](Questionnaire-WAI.html) (metadata-only) | [✓](QuestionnaireResponse-WAIResponse.html) | — |
| OPD-SFK | • | • | — | [Seite](OPD-SFK.html) | [OPDSFK](Questionnaire-OPDSFK.html) | [✓](QuestionnaireResponse-OPDSFKResponse.html) | — |
| SSD-12 | • | — | — | [Seite](SSD-12.html) | [MII PRO](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-ssd-12.html) | [✓](QuestionnaireResponse-pcor-mii-exa-pss-ssd-12-response.html) | — |
| Whiteley-7 | • | — | — | [Seite](WI-7.html) | [MII PRO](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-wi-7.html) | [✓](QuestionnaireResponse-pcor-mii-exa-pss-wi-7-response.html) | — |
| SCOFF | • | — | — | [Seite](SCOFF.html) | [MII PRO](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-scoff.html) | [✓](QuestionnaireResponse-pcor-mii-exa-pss-scoff-response.html) | — |
| ISR-Z | • | — | — | [Seite](ISR-Z.html) | [MII PRO](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-isr-z.html) | [✓](QuestionnaireResponse-pcor-mii-exa-pss-isr-z-response.html) | — |
| PC-PTSD | • | — | — | [Seite](PC-PTSD.html) | [MII PRO](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-pc-ptsd.html) | [✓](QuestionnaireResponse-pcor-mii-exa-pss-pc-ptsd-response.html) | — |
| EXPECT | • | — | — | [Seite](EXPECT.html) | [EXPECT](Questionnaire-EXPECT.html) | [✓](QuestionnaireResponse-EXPECTResponse.html) | — |
| PHQ-D panic block | • | — | — | [Page](PHQ-Panik.html) | [PHQPANIK](Questionnaire-PHQPANIK.html) | [✓](QuestionnaireResponse-PHQPANIKResponse.html) | — |
| BAASIS | — | — | • | [Page](NTx-Instrumente.html) | [BAASIS](Questionnaire-BAASIS.html) (metadata-only) | — | — |
| ABQ | — | — | • | [Page](NTx-Instrumente.html) | [ABQ](Questionnaire-ABQ.html) (metadata-only) | — | — |
| MTSOSD-R59 | — | — | • | [Page](NTx-Instrumente.html) | [MTSOSDR59](Questionnaire-MTSOSDR59.html) (metadata-only) | — | — |
| IPQ-S | • | — | — | [Seite](IPQ-S.html) | [IPQS](Questionnaire-IPQS.html) | [✓](QuestionnaireResponse-IPQSResponse.html) | — |
| GSLTPAQ | • | — | — | [Seite](GSLTPAQ.html) | [GSLTPAQ](Questionnaire-GSLTPAQ.html) | [✓](QuestionnaireResponse-GSLTPAQResponse.html) | — |
| ERQ-6 | — | • | — | [Seite](ERQ-6.html) | [ERQ6](Questionnaire-ERQ6.html) | [✓](QuestionnaireResponse-ERQ6Response.html) · [Monitoring](QuestionnaireResponse-ERQ6MonitoringResponse.html) | withdrawn — see [ERQ-6](ERQ-6.html) |
| EDE-Q6 | — | • | — | [Seite](EDE-Q6.html) | [EDEQ6](Questionnaire-EDEQ6.html) | [✓](QuestionnaireResponse-EDEQ6Response.html) · [Monitoring](QuestionnaireResponse-EDEQ6MonitoringResponse.html) | — |
| ANSOCQ-2 | — | • | — | [Seite](ANSOCQ-2.html) | [ANSOCQ2](Questionnaire-ANSOCQ2.html) | [✓](QuestionnaireResponse-ANSOCQ2Response.html) · [Monitoring](QuestionnaireResponse-ANSOCQ2MonitoringResponse.html) | — |
| SSUK-2 | — | • | — | [Seite](SSUK-2.html) | [SSUK2](Questionnaire-SSUK2.html) | [✓](QuestionnaireResponse-SSUK2Response.html) · [Monitoring](QuestionnaireResponse-SSUK2MonitoringResponse.html) | — |
| ACE + Zeitangaben | — | • | — | [Seite](ACE.html) | [ACE](Questionnaire-ACE.html) | [✓](QuestionnaireResponse-ACEResponse.html) | — |
| UKHD-PT | — | • | — | [Seite](UKHD-Zusatzitems.html) | [UKHDPT](Questionnaire-UKHDPT.html) | [✓](QuestionnaireResponse-UKHDPTResponse.html) · [Monitoring](QuestionnaireResponse-UKHDPTMonitoringResponse.html) | — |
| UKHD-ANB | — | • | — | [Seite](UKHD-Zusatzitems.html) | [UKHDANB](Questionnaire-UKHDANB.html) | [✓](QuestionnaireResponse-UKHDANBResponse.html) | — |
| UKHD-CT | — | • | — | [Seite](UKHD-Zusatzitems.html) | [UKHDCT](Questionnaire-UKHDCT.html) | [✓](QuestionnaireResponse-UKHDCTResponse.html) · [Monitoring](QuestionnaireResponse-UKHDCTMonitoringResponse.html) | — |
| UKHD-LE | — | • | — | [Seite](UKHD-Zusatzitems.html) | [UKHDLE](Questionnaire-UKHDLE.html) | [✓](QuestionnaireResponse-UKHDLEResponse.html) · [Monitoring](QuestionnaireResponse-UKHDLEMonitoringResponse.html) | — |
| UKHD-ND | — | • | — | [Seite](UKHD-Zusatzitems.html) | [UKHDND](Questionnaire-UKHDND.html) | [✓ monitoring](QuestionnaireResponse-UKHDNDMonitoringResponse.html) — deliberately none at the initial visit | — |
| UKHD-D | — | • | — | [Seite](UKHD-Zusatzitems.html) | [UKHDD](Questionnaire-UKHDD.html) | [✓](QuestionnaireResponse-UKHDDResponse.html) | — |
| UKHD-EDP | — | • | — | [Seite](UKHD-EDP.html) | [UKHDEDP](Questionnaire-UKHDEDP.html) (metadata-only) | [✓ Monitoring](QuestionnaireResponse-UKHDEDPMonitoringResponse.html) | — |

**On the score column:** score artefacts exist deliberately only where a **validated** scoring rule exists ([ADR-003](Designentscheidungen.html) item 3) — currently only the [PROPr](ObservationDefinition-PcorObsDefProprUtility.html) for PROMIS-16; all score codes are collected in the [score catalogue](CodeSystem-pcor-score-catalogue.html). No AN subset carries a score, and the two ERQ scores from release 0.3.0 have been withdrawn.

### Example patients and bundles

Three synthetic example patients (AN, PSS, NTx), four visit bundles and 46 example responses are described on the [Examples](Beispiele.html) page — with profile, visit, bundle contents and what each response demonstrates. The tables above list the example response per questionnaire.

<a name="use-cases"></a>

### Use case PSS — persistent somatic symptoms

Clinical description: [PSS](PSS.html). **Machine-readable:** [Library/use-case-pss](Library-use-case-pss.html) pins all 23 questionnaires with versions (`asset-collection`; reverse lookup via `Library?composed-of=<canonical>`). PROMIS-16 and PROMIS-29 + Cognitive Function are marked as site variants (see the pilot section below).

| Instrument | Docs | `Questionnaire` | Example response |
|---|---|---|---|
| DEM, MHI | [Demographie](Demographie.html), [MHI](MHI.html) | [DEM](Questionnaire-DEM.html), [MHI](Questionnaire-MHI.html) | [✓](QuestionnaireResponse-DEMResponse.html) / [✓](QuestionnaireResponse-MHIResponse.html) |
| PROMIS-16, PROMIS-29 + Cognitive Function (SF 4a), Global Health | [PROMIS](PROMIS.html) | [MII PRO](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-promis-16.html) | [✓](QuestionnaireResponse-pcor-mii-exa-promis-16-response.html) |
| WHODAS 2.0, PHQ-8/-15, GAD-7, EURONET-SOMA | [WHODAS](WHODAS-12.html), [PHQ](PHQ.html), [GAD-7](GAD-7.html), [EURONET-SOMA](EURONET-SOMA.html) | MII PRO (see the full table) | — |
| SSD-12, Whiteley-7, SCOFF, ISR-Z, PC-PTSD | [SSD-12](SSD-12.html), [WI-7](WI-7.html), [SCOFF](SCOFF.html), [ISR-Z](ISR-Z.html), [PC-PTSD](PC-PTSD.html) | MII PRO (see the full table) | — |
| OPD-SFK, EXPECT, IPQ-S, GSLTPAQ, WAI | [OPD-SFK](OPD-SFK.html), [EXPECT](EXPECT.html), [IPQ-S](IPQ-S.html), [GSLTPAQ](GSLTPAQ.html), [WAI](WAI.html) | [OPDSFK](Questionnaire-OPDSFK.html), [EXPECT](Questionnaire-EXPECT.html), [IPQS](Questionnaire-IPQS.html), [GSLTPAQ](Questionnaire-GSLTPAQ.html), [WAI](Questionnaire-WAI.html) | — |

### Use case AN — anorexia nervosa

Clinical description and instrument table: [AN](AN.html). **Machine-readable:** [Library/use-case-an](Library-use-case-an.html) pins all 25 questionnaires with versions; PROMIS-16 and PROMIS-29 + Cognitive Function are marked as site variants. The AN example responses represent **one** coherent collection visit (2026-06-18, same patient).

| Instrument | Doku | `Questionnaire` | Beispielantwort |
|---|---|---|---|
| ERQ-6, EDE-Q6, ANSOCQ-2, SSUK-2 | [ERQ-6](ERQ-6.html), [EDE-Q6](EDE-Q6.html), [ANSOCQ-2](ANSOCQ-2.html), [SSUK-2](SSUK-2.html) | [ERQ6](Questionnaire-ERQ6.html), [EDEQ6](Questionnaire-EDEQ6.html), [ANSOCQ2](Questionnaire-ANSOCQ2.html), [SSUK2](Questionnaire-SSUK2.html) | [✓](QuestionnaireResponse-ERQ6Response.html) / [✓](QuestionnaireResponse-EDEQ6Response.html) / [✓](QuestionnaireResponse-ANSOCQ2Response.html) / [✓](QuestionnaireResponse-SSUK2Response.html) |
| ACE + timing items (composite) | [ACE](ACE.html) | [ACE](Questionnaire-ACE.html) | [✓](QuestionnaireResponse-ACEResponse.html) |
| UKHD supplementary items (6 questionnaires) | [Übersicht](UKHD-Zusatzitems.html) | [PT](Questionnaire-UKHDPT.html) · [ANB](Questionnaire-UKHDANB.html) · [CT](Questionnaire-UKHDCT.html) · [LE](Questionnaire-UKHDLE.html) · [ND](Questionnaire-UKHDND.html) · [D](Questionnaire-UKHDD.html) | five of six — see the full table |
| UKHD-EDP (metadata-only) | [UKHD-EDP](UKHD-EDP.html) | [UKHDEDP](Questionnaire-UKHDEDP.html) | — |
| PHQ-8, GAD-7, PROMIS, WHODAS, EURONET-SOMA, OPD-SFK, WAI | see the full table | see the full table | — |

### Use case NTx — kidney transplantation

Clinical description: [NTx](NTx.html). The Domain Overview separates **recipients (NTXr)** and **donors (NTXd)**; both have a manifest since 2026-11-05. **Machine-readable:** [Library/use-case-ntxr](Library-use-case-ntxr.html) pins the generic battery plus WAI (priority A in NTx), the metadata-only stubs [BAASIS, ABQ and MTSOSD-R59](NTx-Instrumente.html), the transplant history [MHI-NTx](NTx-Instrumente.html#mhi-ntx-transplantationsanamnese) and the [NTx follow-up questionnaire](NTx-Instrumente.html#ntx-verlaufsbefragung-mhh); [Library/use-case-ntxd](Library-use-case-ntxd.html) contains only the generic battery. PHQ-15 is not pinned: the Domain Overview lists it for PSS only, the NTx dictionary sheet does include it — to be settled by the use-case lead.

| Instrument | Docs | `Questionnaire` | Example response |
|---|---|---|---|
| BAASIS, ABQ, MTSOSD-R59 (metadata-only) | [NTx instruments](NTx-Instrumente.html) | [BAASIS](Questionnaire-BAASIS.html) · [ABQ](Questionnaire-ABQ.html) · [MTSOSDR59](Questionnaire-MTSOSDR59.html) | [BAASIS](QuestionnaireResponse-BAASISResponse.html) · [ABQ](QuestionnaireResponse-ABQResponse.html) · [MTSOSD-R59](QuestionnaireResponse-MTSOSDR59Response.html) |
| MHI-NTx — transplant history | [NTx instruments](NTx-Instrumente.html#mhi-ntx-transplantationsanamnese) | [MHINTX](Questionnaire-MHINTX.html) | [example](QuestionnaireResponse-MHINTXResponse.html) |
| NTx follow-up questionnaire (MHH) | [NTx instruments](NTx-Instrumente.html#ntx-verlaufsbefragung-mhh) | [NTXVERLAUF](Questionnaire-NTXVERLAUF.html) | [example](QuestionnaireResponse-NTXVERLAUFResponse.html) |
| DEM, MHI, WAI, PROMIS, WHODAS, PHQ-8, GAD-7, EURONET-SOMA, EQ-5D-5L | see the full table | see the full table | — |

### Pilot "50 First Patients" — common core of all use cases

The pilot is not a clinical use case but the programme of the first data exchange (workflow: [Deployment](Bereitstellung.html#pilot)). **Machine-readable:** [Library/pilot-50fp](Library-pilot-50fp.html) pins the **intersection** of the use cases with versions — exactly the 11 questionnaires marked in the PSS, AN **and** NTx columns of the full table for which an artefact exists: DEM, MHI, WAI, PROMIS-GH plus PROMIS-16, PROMIS-29 + Cognitive Function SF 4a (the "8 domains" of the survey plan), WHODAS 2.0, PHQ-9, GAD-7 and EURONET-SOMA. Not included: OPD-SFK (not in NTx), PHQ-15 (PSS only). The composition is a derivation rule from the table, not a separate selection — to change it, change the table. Consumers who need a complete battery load the manifest of the respective use case. **Site variants:** PROMIS-16 and PROMIS-29 + Cognitive Function SF 4a are alternatives a site chooses between. Both are in every manifest because receivers must resolve responses from both site types; the variant is marked per entry via the CRMI extension `crmi-intendedUsageContext` as text, deliberately without a CodeSystem of its own. Only a PlanDefinition with `selectionBehavior = exactly-one` could enforce the either-or; it is not part of this version.

Notes on the lifecycle from `Questionnaire` to `QuestionnaireResponse` are under [Implementation](Implementation.html); the machine-readable full list is under [Artifacts](artifacts.html).
