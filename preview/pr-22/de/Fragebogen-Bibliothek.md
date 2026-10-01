# Fragebogen-Bibliothek - PCOR-MII Implementation Guide v0.3.0

## Fragebogen-Bibliothek

Diese Seite ist der **tabellarische Einstieg zu allen Fragebögen** — nach dem Muster der [PRO-Bibliothek des MII-PRO-Moduls](https://simplifier.net/guide/modul-pro-v2026/MIIIGModulPRO/PRO-Bibliothek?version=current). Je Instrument: die Dokumentationsseite, die `Questionnaire`-Definition (PCOR-MII-Artefakt oder MII-PRO-Bibliothek), die Beispielantwort und — wo vorhanden — das Score-Artefakt.

Die fachliche Auswahl und Rechtelage steht auf [Instrumente](Instrumente.md); die Use-Case-Sichten folgen [unten](#use-cases).

### Alle Fragebögen

Sortierung: erst die projektübergreifenden Sammelbögen, dann nach Use-Case-Breite. • = im Use Case erhoben.

| | | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| Demographie (DEM) | • | • | • | [Seite](Demographie.md) | [DEM](Questionnaire-DEM.md) | [✓](QuestionnaireResponse-DEMResponse.md) | — |
| Medical History (MHI) | • | • | • | [Seite](MHI.md) | [MHI](Questionnaire-MHI.md) | [✓](QuestionnaireResponse-MHIResponse.md) | — |
| PROMIS Global Health (Subset) | • | • | • | [Seite](PROMIS.md) | offen | — | — |
| PROMIS-16 | • | • | • | [Seite](PROMIS-16.md) | [MII PRO](https://simplifier.net/guide/modul-pro-v2026/MIIIGModulPRO/PRO-Bibliothek/PROMIS/PROMIS-16.page.md?version=current) | [✓](QuestionnaireResponse-pcor-mii-exa-promis-16-response.md) | [PROPr-ObsDef](ObservationDefinition-PcorObsDefProprUtility.md) |
| PROMIS SF 4a (8 Domänen) | • | • | • | [Seite](PROMIS-Cognitive-Function.md) | teilw. MII PRO — s.[PROMIS](PROMIS.md) | [✓ Cognitive Function](QuestionnaireResponse-pcor-mii-exa-promis-cognitive-function-response.md) | — |
| WHODAS 2.0 (12-Item) | • | • | • | [Seite](WHODAS-12.md) | [MII PRO](https://simplifier.net/guide/modul-pro-v2026/MIIIGModulPRO/PRO-Bibliothek/WHODAS-2.0?version=current) | — | — |
| PHQ-Familie (PHQ-8 / PHQ-9 / PHQ-15, PHQ-SI) | • | • | • | [Übersicht](PHQ.md),[PHQ-9](PHQ-9.md),[PHQ-15](PHQ-15.md) | [MII PRO](https://simplifier.net/guide/modul-pro-v2026/MIIIGModulPRO/PRO-Bibliothek/PHQ-9?version=current) | — | — |
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
| ERQ-6 | — | • | — | [Seite](ERQ-6.md) | [ERQ6](Questionnaire-ERQ6.md) | [✓](QuestionnaireResponse-ERQ6Response.md) | zurückgezogen — s.[ERQ-6](ERQ-6.md) |
| EDE-Q6 | — | • | — | [Seite](EDE-Q6.md) | [EDEQ6](Questionnaire-EDEQ6.md) | [✓](QuestionnaireResponse-EDEQ6Response.md) | — |
| ANSOCQ-2 | — | • | — | [Seite](ANSOCQ-2.md) | [ANSOCQ2](Questionnaire-ANSOCQ2.md) | [✓](QuestionnaireResponse-ANSOCQ2Response.md) | — |
| SSUK-2 | — | • | — | [Seite](SSUK-2.md) | [SSUK2](Questionnaire-SSUK2.md) | [✓](QuestionnaireResponse-SSUK2Response.md) | — |
| ACE + Zeitangaben | — | • | — | [Seite](ACE.md) | [ACE](Questionnaire-ACE.md) | [✓](QuestionnaireResponse-ACEResponse.md) | — |
| UKHD-PT | — | • | — | [Seite](UKHD-Zusatzitems.md) | [UKHDPT](Questionnaire-UKHDPT.md) | [✓](QuestionnaireResponse-UKHDPTResponse.md) | — |
| UKHD-ANB | — | • | — | [Seite](UKHD-Zusatzitems.md) | [UKHDANB](Questionnaire-UKHDANB.md) | [✓](QuestionnaireResponse-UKHDANBResponse.md) | — |
| UKHD-CT | — | • | — | [Seite](UKHD-Zusatzitems.md) | [UKHDCT](Questionnaire-UKHDCT.md) | [✓](QuestionnaireResponse-UKHDCTResponse.md) | — |
| UKHD-LE | — | • | — | [Seite](UKHD-Zusatzitems.md) | [UKHDLE](Questionnaire-UKHDLE.md) | [✓](QuestionnaireResponse-UKHDLEResponse.md) | — |
| UKHD-ND | — | • | — | [Seite](UKHD-Zusatzitems.md) | [UKHDND](Questionnaire-UKHDND.md) | — bewusst: zum Initial-Termin nicht erhoben | — |
| UKHD-D | — | • | — | [Seite](UKHD-Zusatzitems.md) | [UKHDD](Questionnaire-UKHDD.md) | [✓](QuestionnaireResponse-UKHDDResponse.md) | — |
| UKHD-EDP | — | • | — | [Seite](UKHD-EDP.md) | [UKHDEDP](Questionnaire-UKHDEDP.md)(metadata-only) | — | — |

**Zur Score-Spalte:** Score-Artefakte gibt es bewusst nur, wo eine **validierte** Auswertungsvorschrift existiert ([ADR-003](Designentscheidungen.md) Punkt 3) — derzeit allein der [PROPr](ObservationDefinition-PcorObsDefProprUtility.md) zum PROMIS-16; alle Score-Codes sammelt der [Score-Katalog](CodeSystem-pcor-score-catalogue.md). Kein AN-Zuschnitt trägt einen Score, und die beiden ERQ-Scores aus Release 0.3.0 sind zurückgezogen.

### Use Case PSS — Persistierende somatische Symptome

Fachliche Beschreibung: [PSS](PSS.md).

| | | | |
| :--- | :--- | :--- | :--- |
| DEM, MHI | [Demographie](Demographie.md),[MHI](MHI.md) | [DEM](Questionnaire-DEM.md),[MHI](Questionnaire-MHI.md) | [✓](QuestionnaireResponse-DEMResponse.md)/[✓](QuestionnaireResponse-MHIResponse.md) |
| PROMIS-16, SF 4a, Global Health | [PROMIS](PROMIS.md) | [MII PRO](https://simplifier.net/guide/modul-pro-v2026/MIIIGModulPRO/PRO-Bibliothek/PROMIS/PROMIS-16.page.md?version=current) | [✓](QuestionnaireResponse-pcor-mii-exa-promis-16-response.md) |
| WHODAS 2.0, PHQ-8/-15, GAD-7, EURONET-SOMA | [WHODAS](WHODAS-12.md),[PHQ](PHQ.md),[GAD-7](GAD-7.md),[EURONET-SOMA](EURONET-SOMA.md) | MII PRO (s. Gesamttabelle) | — |
| SSD-12, Whiteley-7, SCOFF, ISR-Z, PC-PTSD | [SSD-12](SSD-12.md),[WI-7](WI-7.md),[SCOFF](SCOFF.md),[ISR-Z](ISR-Z.md),[PC-PTSD](PC-PTSD.md) | MII PRO (s. Gesamttabelle) | — |
| OPD-SFK, EXPECT, IPQ-S, GSLTPAQ, WAI | [OPD-SFK](OPD-SFK.md),[EXPECT](EXPECT.md),[IPQ-S](IPQ-S.md),[GSLTPAQ](GSLTPAQ.md),[WAI](WAI.md) | [OPDSFK](Questionnaire-OPDSFK.md),[EXPECT](Questionnaire-EXPECT.md),[IPQS](Questionnaire-IPQS.md),[GSLTPAQ](Questionnaire-GSLTPAQ.md),[WAI](Questionnaire-WAI.md) | — |

### Use Case AN — Anorexia nervosa

Fachliche Beschreibung: [AN](AN.md); vollständige Nachschlagetabelle mit Rechtestatus: [AN — Instrumentenliste](AN-Instrumentenliste.md). Die AN-Beispielantworten bilden **einen** zusammenhängenden Erhebungstermin ab (18.06.2026, dieselbe Patientin).

| | | | |
| :--- | :--- | :--- | :--- |
| ERQ-6, EDE-Q6, ANSOCQ-2, SSUK-2 | [ERQ-6](ERQ-6.md),[EDE-Q6](EDE-Q6.md),[ANSOCQ-2](ANSOCQ-2.md),[SSUK-2](SSUK-2.md) | [ERQ6](Questionnaire-ERQ6.md),[EDEQ6](Questionnaire-EDEQ6.md),[ANSOCQ2](Questionnaire-ANSOCQ2.md),[SSUK2](Questionnaire-SSUK2.md) | [✓](QuestionnaireResponse-ERQ6Response.md)/[✓](QuestionnaireResponse-EDEQ6Response.md)/[✓](QuestionnaireResponse-ANSOCQ2Response.md)/[✓](QuestionnaireResponse-SSUK2Response.md) |
| ACE + Zeitangaben (Komposit) | [ACE](ACE.md) | [ACE](Questionnaire-ACE.md) | [✓](QuestionnaireResponse-ACEResponse.md) |
| UKHD-Zusatzitems (6 Bögen) | [Übersicht](UKHD-Zusatzitems.md) | [PT](Questionnaire-UKHDPT.md)·[ANB](Questionnaire-UKHDANB.md)·[CT](Questionnaire-UKHDCT.md)·[LE](Questionnaire-UKHDLE.md)·[ND](Questionnaire-UKHDND.md)·[D](Questionnaire-UKHDD.md) | fünf von sechs — s. Gesamttabelle |
| UKHD-EDP (metadata-only) | [UKHD-EDP](UKHD-EDP.md) | [UKHDEDP](Questionnaire-UKHDEDP.md) | — |
| PHQ-9, GAD-7, PROMIS, WHODAS, EURONET-SOMA, OPD-SFK, WAI | s. Gesamttabelle | s. Gesamttabelle | — |

### Use Case NTx — Nierentransplantation

Noch keine Artefakte: BAASIS, MTSOSD-R59 und ABQ sind rechtlich nicht publizierbar und als metadata-only **vorgesehen** (s. [Instrumente](Instrumente.md)). Die entitätsübergreifenden Bögen (DEM, MHI, PROMIS, PHQ-9, …) gelten auch hier.

Hinweise zum Lebenszyklus von `Questionnaire` zu `QuestionnaireResponse` siehe [Anwendung](Implementation.md); maschinenlesbare Gesamtliste unter [Artefakte](artifacts.md).

