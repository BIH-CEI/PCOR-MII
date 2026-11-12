# Fragebogen-Bibliothek - PCOR-MII Implementation Guide v0.9.0

## Fragebogen-Bibliothek

**Translated page. Original language: German.**

This page is the **tabular entry point to all questionnaires** — following the pattern of the [MII PRO module's PRO library](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/pro-library.html). Per instrument: the documentation page, the `Questionnaire` definition (PCOR-MII artefact or MII PRO library), the example response and — where available — the score artefact.

Instrument selection and rights situation are covered on [Instruments](Instrumente.md); the use-case views follow [below](#use-cases).

### All questionnaires

Sorted project-wide collective questionnaires first, then by use-case breadth. • = collected in that use case.

| | | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| Demographics (DEM) | • | • | • | [Seite](Demographie.md) | [DEM](Questionnaire-DEM.md) | [✓ AN](QuestionnaireResponse-DEMResponse.md)·[✓ PSS](QuestionnaireResponse-DEMPSSResponse.md) | — |
| Medical History (MHI) | • | • | • | [Seite](MHI.md) | [MHI](Questionnaire-MHI.md) | [✓ AN](QuestionnaireResponse-MHIResponse.md)·[✓ PSS](QuestionnaireResponse-MHIPSSResponse.md) | — |
| PROMIS Global Health (subset: Global01/Global02) | • | • | • | [Page](PROMIS.md) | [PROMISGH](Questionnaire-PROMISGH.md)(2-item subset,`derivedFrom`the module's 10-item scale) | — | — |
| PROMIS-16 | • | • | • | [Seite](PROMIS-16.md) | [MII PRO](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-promis-16.html) | [✓](QuestionnaireResponse-pcor-mii-exa-promis-16-response.md) | [PROPr-ObsDef](ObservationDefinition-PcorObsDefProprUtility.md) |
| PROMIS SF 4a (8 domains) = PROMIS-29 + Cognitive Function | • | • | • | [PROMIS-33](PROMIS-33.md) | MII PRO:[PROMIS-29](PROMIS-29.md)+[Cognitive Function](PROMIS-Cognitive-Function.md) | [✓ Cognitive Function](QuestionnaireResponse-pcor-mii-exa-promis-cognitive-function-response.md) | — |
| WHODAS 2.0 (12-Item) | • | • | • | [Seite](WHODAS-12.md) | [MII PRO](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-whodas-whodas12.html) | [✓](QuestionnaireResponse-pcor-mii-exa-pss-whodas-12-response.md) | — |
| PHQ-Familie (PHQ-8 / PHQ-9 / PHQ-15, PHQ-SI) | • | • | • | [overview](PHQ.md),[PHQ-9](PHQ-9.md),[PHQ-15](PHQ-15.md) | [MII PRO](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-phq-9.html) | [✓](QuestionnaireResponse-pcor-mii-exa-pss-phq-9-response.md) | — |
| GAD-7 | • | • | • | [Seite](GAD-7.md) | [MII PRO](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-gad-7.html) | [✓](QuestionnaireResponse-pcor-mii-exa-pss-gad-7-response.md) | — |
| EURONET-SOMA | • | • | • | [Seite](EURONET-SOMA.md) | [MII PRO](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-euronet-soma.html) | [✓](QuestionnaireResponse-pcor-mii-exa-pss-euronet-soma-response.md) | — |
| WAI / Work Ability Score | • | • | • | [Seite](WAI.md) | [WAI](Questionnaire-WAI.md)(metadata-only) | [✓](QuestionnaireResponse-WAIResponse.md) | — |
| OPD-SFK | • | • | — | [Seite](OPD-SFK.md) | [OPDSFK](Questionnaire-OPDSFK.md) | [✓](QuestionnaireResponse-OPDSFKResponse.md) | — |
| SSD-12 | • | — | — | [Seite](SSD-12.md) | [MII PRO](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-ssd-12.html) | [✓](QuestionnaireResponse-pcor-mii-exa-pss-ssd-12-response.md) | — |
| Whiteley-7 | • | — | — | [Seite](WI-7.md) | [MII PRO](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-wi-7.html) | [✓](QuestionnaireResponse-pcor-mii-exa-pss-wi-7-response.md) | — |
| SCOFF | • | — | — | [Seite](SCOFF.md) | [MII PRO](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-scoff.html) | [✓](QuestionnaireResponse-pcor-mii-exa-pss-scoff-response.md) | — |
| ISR-Z | • | — | — | [Seite](ISR-Z.md) | [MII PRO](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-isr-z.html) | [✓](QuestionnaireResponse-pcor-mii-exa-pss-isr-z-response.md) | — |
| PC-PTSD | • | — | — | [Seite](PC-PTSD.md) | [MII PRO](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-pc-ptsd.html) | [✓](QuestionnaireResponse-pcor-mii-exa-pss-pc-ptsd-response.md) | — |
| EXPECT | • | — | — | [Seite](EXPECT.md) | [EXPECT](Questionnaire-EXPECT.md) | [✓](QuestionnaireResponse-EXPECTResponse.md) | — |
| PHQ-D panic block | • | — | — | [Page](PHQ-Panik.md) | [PHQPANIK](Questionnaire-PHQPANIK.md) | [✓](QuestionnaireResponse-PHQPANIKResponse.md) | — |
| BAASIS | — | — | • | [Page](NTx-Instrumente.md) | [BAASIS](Questionnaire-BAASIS.md)(metadata-only) | — | — |
| ABQ | — | — | • | [Page](NTx-Instrumente.md) | [ABQ](Questionnaire-ABQ.md)(metadata-only) | — | — |
| MTSOSD-R59 | — | — | • | [Page](NTx-Instrumente.md) | [MTSOSDR59](Questionnaire-MTSOSDR59.md)(metadata-only) | — | — |
| IPQ-S | • | — | — | [Seite](IPQ-S.md) | [IPQS](Questionnaire-IPQS.md) | [✓](QuestionnaireResponse-IPQSResponse.md) | — |
| GSLTPAQ | • | — | — | [Seite](GSLTPAQ.md) | [GSLTPAQ](Questionnaire-GSLTPAQ.md) | [✓](QuestionnaireResponse-GSLTPAQResponse.md) | — |
| ERQ-6 | — | • | — | [Seite](ERQ-6.md) | [ERQ6](Questionnaire-ERQ6.md) | [✓](QuestionnaireResponse-ERQ6Response.md)·[Monitoring](QuestionnaireResponse-ERQ6MonitoringResponse.md) | withdrawn — see[ERQ-6](ERQ-6.md) |
| EDE-Q6 | — | • | — | [Seite](EDE-Q6.md) | [EDEQ6](Questionnaire-EDEQ6.md) | [✓](QuestionnaireResponse-EDEQ6Response.md)·[Monitoring](QuestionnaireResponse-EDEQ6MonitoringResponse.md) | — |
| ANSOCQ-2 | — | • | — | [Seite](ANSOCQ-2.md) | [ANSOCQ2](Questionnaire-ANSOCQ2.md) | [✓](QuestionnaireResponse-ANSOCQ2Response.md)·[Monitoring](QuestionnaireResponse-ANSOCQ2MonitoringResponse.md) | — |
| SSUK-2 | — | • | — | [Seite](SSUK-2.md) | [SSUK2](Questionnaire-SSUK2.md) | [✓](QuestionnaireResponse-SSUK2Response.md)·[Monitoring](QuestionnaireResponse-SSUK2MonitoringResponse.md) | — |
| ACE + Zeitangaben | — | • | — | [Seite](ACE.md) | [ACE](Questionnaire-ACE.md) | [✓](QuestionnaireResponse-ACEResponse.md) | — |
| UKHD-PT | — | • | — | [Seite](UKHD-Zusatzitems.md) | [UKHDPT](Questionnaire-UKHDPT.md) | [✓](QuestionnaireResponse-UKHDPTResponse.md)·[Monitoring](QuestionnaireResponse-UKHDPTMonitoringResponse.md) | — |
| UKHD-ANB | — | • | — | [Seite](UKHD-Zusatzitems.md) | [UKHDANB](Questionnaire-UKHDANB.md) | [✓](QuestionnaireResponse-UKHDANBResponse.md) | — |
| UKHD-CT | — | • | — | [Seite](UKHD-Zusatzitems.md) | [UKHDCT](Questionnaire-UKHDCT.md) | [✓](QuestionnaireResponse-UKHDCTResponse.md)·[Monitoring](QuestionnaireResponse-UKHDCTMonitoringResponse.md) | — |
| UKHD-LE | — | • | — | [Seite](UKHD-Zusatzitems.md) | [UKHDLE](Questionnaire-UKHDLE.md) | [✓](QuestionnaireResponse-UKHDLEResponse.md)·[Monitoring](QuestionnaireResponse-UKHDLEMonitoringResponse.md) | — |
| UKHD-ND | — | • | — | [Seite](UKHD-Zusatzitems.md) | [UKHDND](Questionnaire-UKHDND.md) | [✓ monitoring](QuestionnaireResponse-UKHDNDMonitoringResponse.md)— deliberately none at the initial visit | — |
| UKHD-D | — | • | — | [Seite](UKHD-Zusatzitems.md) | [UKHDD](Questionnaire-UKHDD.md) | [✓](QuestionnaireResponse-UKHDDResponse.md) | — |
| UKHD-EDP | — | • | — | [Seite](UKHD-EDP.md) | [UKHDEDP](Questionnaire-UKHDEDP.md)(metadata-only) | [✓ Monitoring](QuestionnaireResponse-UKHDEDPMonitoringResponse.md) | — |

**On the score column:** score artefacts exist deliberately only where a **validated** scoring rule exists ([ADR-003](Designentscheidungen.md) item 3) — currently only the [PROPr](ObservationDefinition-PcorObsDefProprUtility.md) for PROMIS-16; all score codes are collected in the [score catalogue](CodeSystem-pcor-score-catalogue.md). No AN subset carries a score, and the two ERQ scores from release 0.3.0 have been withdrawn.

### Example patients and bundles

Three synthetic example patients (AN, PSS, NTx), four visit bundles and 46 example responses are described on the [Examples](Beispiele.md) page — with profile, visit, bundle contents and what each response demonstrates. The tables above list the example response per questionnaire.

### Use case PSS — persistent somatic symptoms

Clinical description: [PSS](PSS.md). **Machine-readable:** [Library/use-case-pss](Library-use-case-pss.md) pins all 23 questionnaires with versions (`asset-collection`; reverse lookup via `Library?composed-of=<canonical>`). PROMIS-16 and PROMIS-29 + Cognitive Function are marked as site variants (see the pilot section below).

| | | | |
| :--- | :--- | :--- | :--- |
| DEM, MHI | [Demographie](Demographie.md),[MHI](MHI.md) | [DEM](Questionnaire-DEM.md),[MHI](Questionnaire-MHI.md) | [✓](QuestionnaireResponse-DEMResponse.md)/[✓](QuestionnaireResponse-MHIResponse.md) |
| PROMIS-16, PROMIS-29 + Cognitive Function (SF 4a), Global Health | [PROMIS](PROMIS.md) | [MII PRO](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-promis-16.html) | [✓](QuestionnaireResponse-pcor-mii-exa-promis-16-response.md) |
| WHODAS 2.0, PHQ-8/-15, GAD-7, EURONET-SOMA | [WHODAS](WHODAS-12.md),[PHQ](PHQ.md),[GAD-7](GAD-7.md),[EURONET-SOMA](EURONET-SOMA.md) | MII PRO (see the full table) | — |
| SSD-12, Whiteley-7, SCOFF, ISR-Z, PC-PTSD | [SSD-12](SSD-12.md),[WI-7](WI-7.md),[SCOFF](SCOFF.md),[ISR-Z](ISR-Z.md),[PC-PTSD](PC-PTSD.md) | MII PRO (see the full table) | — |
| OPD-SFK, EXPECT, IPQ-S, GSLTPAQ, WAI | [OPD-SFK](OPD-SFK.md),[EXPECT](EXPECT.md),[IPQ-S](IPQ-S.md),[GSLTPAQ](GSLTPAQ.md),[WAI](WAI.md) | [OPDSFK](Questionnaire-OPDSFK.md),[EXPECT](Questionnaire-EXPECT.md),[IPQS](Questionnaire-IPQS.md),[GSLTPAQ](Questionnaire-GSLTPAQ.md),[WAI](Questionnaire-WAI.md) | — |

### Use case AN — anorexia nervosa

Clinical description and instrument table: [AN](AN.md). **Machine-readable:** [Library/use-case-an](Library-use-case-an.md) pins all 25 questionnaires with versions; PROMIS-16 and PROMIS-29 + Cognitive Function are marked as site variants. The AN example responses represent **one** coherent collection visit (2026-06-18, same patient).

| | | | |
| :--- | :--- | :--- | :--- |
| ERQ-6, EDE-Q6, ANSOCQ-2, SSUK-2 | [ERQ-6](ERQ-6.md),[EDE-Q6](EDE-Q6.md),[ANSOCQ-2](ANSOCQ-2.md),[SSUK-2](SSUK-2.md) | [ERQ6](Questionnaire-ERQ6.md),[EDEQ6](Questionnaire-EDEQ6.md),[ANSOCQ2](Questionnaire-ANSOCQ2.md),[SSUK2](Questionnaire-SSUK2.md) | [✓](QuestionnaireResponse-ERQ6Response.md)/[✓](QuestionnaireResponse-EDEQ6Response.md)/[✓](QuestionnaireResponse-ANSOCQ2Response.md)/[✓](QuestionnaireResponse-SSUK2Response.md) |
| ACE + timing items (composite) | [ACE](ACE.md) | [ACE](Questionnaire-ACE.md) | [✓](QuestionnaireResponse-ACEResponse.md) |
| UKHD supplementary items (6 questionnaires) | [Übersicht](UKHD-Zusatzitems.md) | [PT](Questionnaire-UKHDPT.md)·[ANB](Questionnaire-UKHDANB.md)·[CT](Questionnaire-UKHDCT.md)·[LE](Questionnaire-UKHDLE.md)·[ND](Questionnaire-UKHDND.md)·[D](Questionnaire-UKHDD.md) | five of six — see the full table |
| UKHD-EDP (metadata-only) | [UKHD-EDP](UKHD-EDP.md) | [UKHDEDP](Questionnaire-UKHDEDP.md) | — |
| PHQ-8, GAD-7, PROMIS, WHODAS, EURONET-SOMA, OPD-SFK, WAI | see the full table | see the full table | — |

### Use case NTx — kidney transplantation

Clinical description: [NTx](NTx.md). The Domain Overview separates **recipients (NTXr)** and **donors (NTXd)**; both have a manifest since 2026-11-05. **Machine-readable:** [Library/use-case-ntxr](Library-use-case-ntxr.md) pins the generic battery plus WAI (priority A in NTx), the metadata-only stubs [BAASIS, ABQ and MTSOSD-R59](NTx-Instrumente.md), the transplant history [MHI-NTx](NTx-Instrumente.md#mhi-ntx-transplantationsanamnese) and the [NTx follow-up questionnaire](NTx-Instrumente.md#ntx-verlaufsbefragung-mhh); [Library/use-case-ntxd](Library-use-case-ntxd.md) contains only the generic battery. PHQ-15 is not pinned: the Domain Overview lists it for PSS only, the NTx dictionary sheet does include it — to be settled by the use-case lead.

| | | | |
| :--- | :--- | :--- | :--- |
| BAASIS, ABQ, MTSOSD-R59 (metadata-only) | [NTx instruments](NTx-Instrumente.md) | [BAASIS](Questionnaire-BAASIS.md)·[ABQ](Questionnaire-ABQ.md)·[MTSOSDR59](Questionnaire-MTSOSDR59.md) | [BAASIS](QuestionnaireResponse-BAASISResponse.md)·[ABQ](QuestionnaireResponse-ABQResponse.md)·[MTSOSD-R59](QuestionnaireResponse-MTSOSDR59Response.md) |
| MHI-NTx — transplant history | [NTx instruments](NTx-Instrumente.md#mhi-ntx-transplantationsanamnese) | [MHINTX](Questionnaire-MHINTX.md) | [example](QuestionnaireResponse-MHINTXResponse.md) |
| NTx follow-up questionnaire (MHH) | [NTx instruments](NTx-Instrumente.md#ntx-verlaufsbefragung-mhh) | [NTXVERLAUF](Questionnaire-NTXVERLAUF.md) | [example](QuestionnaireResponse-NTXVERLAUFResponse.md) |
| DEM, MHI, WAI, PROMIS, WHODAS, PHQ-8, GAD-7, EURONET-SOMA, EQ-5D-5L | see the full table | see the full table | — |

### Pilot "50 First Patients" — common core of all use cases

The pilot is not a clinical use case but the programme of the first data exchange (workflow: [Deployment](Bereitstellung.md#pilot)). **Machine-readable:** [Library/pilot-50fp](Library-pilot-50fp.md) pins the **intersection** of the use cases with versions — exactly the 11 questionnaires marked in the PSS, AN **and** NTx columns of the full table for which an artefact exists: DEM, MHI, WAI, PROMIS-GH plus PROMIS-16, PROMIS-29 + Cognitive Function SF 4a (the "8 domains" of the survey plan), WHODAS 2.0, PHQ-9, GAD-7 and EURONET-SOMA. Not included: OPD-SFK (not in NTx), PHQ-15 (PSS only). The composition is a derivation rule from the table, not a separate selection — to change it, change the table. Consumers who need a complete battery load the manifest of the respective use case. **Site variants:** PROMIS-16 and PROMIS-29 + Cognitive Function SF 4a are alternatives a site chooses between. Both are in every manifest because receivers must resolve responses from both site types; the variant is marked per entry via the CRMI extension `crmi-intendedUsageContext` as text, deliberately without a CodeSystem of its own. Only a PlanDefinition with `selectionBehavior = exactly-one` could enforce the either-or; it is not part of this version.

Notes on the lifecycle from `Questionnaire` to `QuestionnaireResponse` are under [Implementation](Implementation.md); the machine-readable full list is under [Artifacts](artifacts.md).

