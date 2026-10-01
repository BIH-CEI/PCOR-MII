# Fragebogen-Bibliothek - PCOR-MII Implementation Guide v0.3.0

## Fragebogen-Bibliothek

**Translated page. Original language: German.**

This page is the **tabular entry point to all questionnaires** — following the pattern of the [MII PRO module's PRO library](https://simplifier.net/guide/modul-pro-v2026/MIIIGModulPRO/PRO-Bibliothek?version=current). Per instrument: the documentation page, the `Questionnaire` definition (PCOR-MII artefact or MII PRO library), the example response and — where available — the score artefact.

Instrument selection and rights situation are covered on [Instruments](Instrumente.md); the use-case views follow [below](#use-cases).

### All questionnaires

Sorted project-wide collective questionnaires first, then by use-case breadth. • = collected in that use case.

| | | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| Demographics (DEM) | • | • | • | [Seite](Demographie.md) | [DEM](Questionnaire-DEM.md) | [✓](QuestionnaireResponse-DEMResponse.md) | — |
| Medical History (MHI) | • | • | • | [Seite](MHI.md) | [MHI](Questionnaire-MHI.md) | [✓](QuestionnaireResponse-MHIResponse.md) | — |
| PROMIS Global Health (Subset) | • | • | • | [Seite](PROMIS.md) | offen | — | — |
| PROMIS-16 | • | • | • | [Seite](PROMIS-16.md) | [MII PRO](https://simplifier.net/guide/modul-pro-v2026/MIIIGModulPRO/PRO-Bibliothek/PROMIS/PROMIS-16.page.md?version=current) | [✓](QuestionnaireResponse-pcor-mii-exa-promis-16-response.md) | [PROPr-ObsDef](ObservationDefinition-PcorObsDefProprUtility.md) |
| PROMIS SF 4a (8 Domänen) | • | • | • | [Seite](PROMIS-Cognitive-Function.md) | teilw. MII PRO — s.[PROMIS](PROMIS.md) | [✓ Cognitive Function](QuestionnaireResponse-pcor-mii-exa-promis-cognitive-function-response.md) | — |
| WHODAS 2.0 (12-Item) | • | • | • | [Seite](WHODAS-12.md) | [MII PRO](https://simplifier.net/guide/modul-pro-v2026/MIIIGModulPRO/PRO-Bibliothek/WHODAS-2.0?version=current) | — | — |
| PHQ-Familie (PHQ-8 / PHQ-9 / PHQ-15, PHQ-SI) | • | • | • | [overview](PHQ.md),[PHQ-9](PHQ-9.md),[PHQ-15](PHQ-15.md) | [MII PRO](https://simplifier.net/guide/modul-pro-v2026/MIIIGModulPRO/PRO-Bibliothek/PHQ-9?version=current) | — | — |
| GAD-7 | • | • | • | [Seite](GAD-7.md) | [MII PRO](https://simplifier.net/guide/modul-pro-v2026/MIIIGModulPRO/PRO-Bibliothek/GAD-7?version=current) | — | — |
| EURONET-SOMA | • | • | • | [Seite](EURONET-SOMA.md) | [MII PRO](https://simplifier.net/guide/modul-pro-v2026/MIIIGModulPRO/PRO-Bibliothek/EURONET-SOMA?version=current) | — | — |
| WAI / Work Ability Score | • | • | • | [Seite](WAI.md) | [WAI](Questionnaire-WAI.md)(metadata-only) | — | — |
| OPD-SFK | • | • | — | [Seite](OPD-SFK.md) | [OPDSFK](Questionnaire-OPDSFK.md) | — | — |
| SSD-12 | • | — | — | [Seite](SSD-12.md) | [MII PRO](https://simplifier.net/guide/modul-pro-v2026/MIIIGModulPRO/PRO-Bibliothek/SSD-12?version=current) | — | — |
| Whiteley-7 | • | — | — | [Seite](WI-7.md) | [MII PRO](https://simplifier.net/guide/modul-pro-v2026/MIIIGModulPRO/PRO-Bibliothek/WI-7?version=current) | — | — |
| SCOFF | • | — | — | [Seite](SCOFF.md) | [MII PRO](https://simplifier.net/guide/modul-pro-v2026/MIIIGModulPRO/PRO-Bibliothek/SCOFF?version=current) | — | — |
| ISR-Z | • | — | — | [Seite](ISR-Z.md) | [MII PRO](https://simplifier.net/guide/modul-pro-v2026/MIIIGModulPRO/PRO-Bibliothek/ISR-Z?version=current) | — | — |
| PC-PTSD | • | — | — | [Seite](PC-PTSD.md) | [MII PRO](https://simplifier.net/guide/modul-pro-v2026/MIIIGModulPRO/PRO-Bibliothek/PC-PTSD?version=current) | — | — |
| EXPECT | • | — | — | [Seite](EXPECT.md) | [EXPECT](Questionnaire-EXPECT.md) | — | — |
| IPQ-S | • | — | — | [Seite](IPQ-S.md) | [IPQS](Questionnaire-IPQS.md) | — | — |
| GSLTPAQ | • | — | — | [Seite](GSLTPAQ.md) | [GSLTPAQ](Questionnaire-GSLTPAQ.md) | — | — |
| ERQ-6 | — | • | — | [Seite](ERQ-6.md) | [ERQ6](Questionnaire-ERQ6.md) | [✓](QuestionnaireResponse-ERQ6Response.md) | withdrawn — see[ERQ-6](ERQ-6.md) |
| EDE-Q6 | — | • | — | [Seite](EDE-Q6.md) | [EDEQ6](Questionnaire-EDEQ6.md) | [✓](QuestionnaireResponse-EDEQ6Response.md) | — |
| ANSOCQ-2 | — | • | — | [Seite](ANSOCQ-2.md) | [ANSOCQ2](Questionnaire-ANSOCQ2.md) | [✓](QuestionnaireResponse-ANSOCQ2Response.md) | — |
| SSUK-2 | — | • | — | [Seite](SSUK-2.md) | [SSUK2](Questionnaire-SSUK2.md) | [✓](QuestionnaireResponse-SSUK2Response.md) | — |
| ACE + Zeitangaben | — | • | — | [Seite](ACE.md) | [ACE](Questionnaire-ACE.md) | [✓](QuestionnaireResponse-ACEResponse.md) | — |
| UKHD-PT | — | • | — | [Seite](UKHD-Zusatzitems.md) | [UKHDPT](Questionnaire-UKHDPT.md) | [✓](QuestionnaireResponse-UKHDPTResponse.md) | — |
| UKHD-ANB | — | • | — | [Seite](UKHD-Zusatzitems.md) | [UKHDANB](Questionnaire-UKHDANB.md) | [✓](QuestionnaireResponse-UKHDANBResponse.md) | — |
| UKHD-CT | — | • | — | [Seite](UKHD-Zusatzitems.md) | [UKHDCT](Questionnaire-UKHDCT.md) | [✓](QuestionnaireResponse-UKHDCTResponse.md) | — |
| UKHD-LE | — | • | — | [Seite](UKHD-Zusatzitems.md) | [UKHDLE](Questionnaire-UKHDLE.md) | [✓](QuestionnaireResponse-UKHDLEResponse.md) | — |
| UKHD-ND | — | • | — | [Seite](UKHD-Zusatzitems.md) | [UKHDND](Questionnaire-UKHDND.md) | — deliberately none: not collected at the initial visit | — |
| UKHD-D | — | • | — | [Seite](UKHD-Zusatzitems.md) | [UKHDD](Questionnaire-UKHDD.md) | [✓](QuestionnaireResponse-UKHDDResponse.md) | — |
| UKHD-EDP | — | • | — | [Seite](UKHD-EDP.md) | [UKHDEDP](Questionnaire-UKHDEDP.md)(metadata-only) | — | — |

**On the score column:** score artefacts exist deliberately only where a **validated** scoring rule exists ([ADR-003](Designentscheidungen.md) item 3) — currently only the [PROPr](ObservationDefinition-PcorObsDefProprUtility.md) for PROMIS-16; all score codes are collected in the [score catalogue](CodeSystem-pcor-score-catalogue.md). No AN subset carries a score, and the two ERQ scores from release 0.3.0 have been withdrawn.

### Use case PSS — persistent somatic symptoms

Clinical description: [PSS](PSS.md).

| | | | |
| :--- | :--- | :--- | :--- |
| DEM, MHI | [Demographie](Demographie.md),[MHI](MHI.md) | [DEM](Questionnaire-DEM.md),[MHI](Questionnaire-MHI.md) | [✓](QuestionnaireResponse-DEMResponse.md)/[✓](QuestionnaireResponse-MHIResponse.md) |
| PROMIS-16, SF 4a, Global Health | [PROMIS](PROMIS.md) | [MII PRO](https://simplifier.net/guide/modul-pro-v2026/MIIIGModulPRO/PRO-Bibliothek/PROMIS/PROMIS-16.page.md?version=current) | [✓](QuestionnaireResponse-pcor-mii-exa-promis-16-response.md) |
| WHODAS 2.0, PHQ-8/-15, GAD-7, EURONET-SOMA | [WHODAS](WHODAS-12.md),[PHQ](PHQ.md),[GAD-7](GAD-7.md),[EURONET-SOMA](EURONET-SOMA.md) | MII PRO (see the full table) | — |
| SSD-12, Whiteley-7, SCOFF, ISR-Z, PC-PTSD | [SSD-12](SSD-12.md),[WI-7](WI-7.md),[SCOFF](SCOFF.md),[ISR-Z](ISR-Z.md),[PC-PTSD](PC-PTSD.md) | MII PRO (see the full table) | — |
| OPD-SFK, EXPECT, IPQ-S, GSLTPAQ, WAI | [OPD-SFK](OPD-SFK.md),[EXPECT](EXPECT.md),[IPQ-S](IPQ-S.md),[GSLTPAQ](GSLTPAQ.md),[WAI](WAI.md) | [OPDSFK](Questionnaire-OPDSFK.md),[EXPECT](Questionnaire-EXPECT.md),[IPQS](Questionnaire-IPQS.md),[GSLTPAQ](Questionnaire-GSLTPAQ.md),[WAI](Questionnaire-WAI.md) | — |

### Use case AN — anorexia nervosa

Clinical description: [AN](AN.md); full lookup table with rights status: [AN — instrument list](AN-Instrumentenliste.md). The AN example responses represent **one** coherent collection visit (2026-06-18, same patient).

| | | | |
| :--- | :--- | :--- | :--- |
| ERQ-6, EDE-Q6, ANSOCQ-2, SSUK-2 | [ERQ-6](ERQ-6.md),[EDE-Q6](EDE-Q6.md),[ANSOCQ-2](ANSOCQ-2.md),[SSUK-2](SSUK-2.md) | [ERQ6](Questionnaire-ERQ6.md),[EDEQ6](Questionnaire-EDEQ6.md),[ANSOCQ2](Questionnaire-ANSOCQ2.md),[SSUK2](Questionnaire-SSUK2.md) | [✓](QuestionnaireResponse-ERQ6Response.md)/[✓](QuestionnaireResponse-EDEQ6Response.md)/[✓](QuestionnaireResponse-ANSOCQ2Response.md)/[✓](QuestionnaireResponse-SSUK2Response.md) |
| ACE + timing items (composite) | [ACE](ACE.md) | [ACE](Questionnaire-ACE.md) | [✓](QuestionnaireResponse-ACEResponse.md) |
| UKHD supplementary items (6 questionnaires) | [Übersicht](UKHD-Zusatzitems.md) | [PT](Questionnaire-UKHDPT.md)·[ANB](Questionnaire-UKHDANB.md)·[CT](Questionnaire-UKHDCT.md)·[LE](Questionnaire-UKHDLE.md)·[ND](Questionnaire-UKHDND.md)·[D](Questionnaire-UKHDD.md) | five of six — see the full table |
| UKHD-EDP (metadata-only) | [UKHD-EDP](UKHD-EDP.md) | [UKHDEDP](Questionnaire-UKHDEDP.md) | — |
| PHQ-9, GAD-7, PROMIS, WHODAS, EURONET-SOMA, OPD-SFK, WAI | see the full table | see the full table | — |

### Use case NTx — kidney transplantation

No artefacts yet: BAASIS, MTSOSD-R59 and ABQ cannot be published for rights reasons and are **planned** as metadata-only (see [Instruments](Instrumente.md)). The cross-entity questionnaires (DEM, MHI, PROMIS, PHQ-9, …) apply here as well.

Notes on the lifecycle from `Questionnaire` to `QuestionnaireResponse` are under [Implementation](Implementation.md); the machine-readable full list is under [Artifacts](artifacts.md).

