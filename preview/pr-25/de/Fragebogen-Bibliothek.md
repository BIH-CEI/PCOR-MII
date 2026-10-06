# Fragebogen-Bibliothek - PCOR-MII Implementation Guide v0.3.0

## Fragebogen-Bibliothek

Diese Seite ist der **tabellarische Einstieg zu allen Fragebögen** — nach dem Muster der [PRO-Bibliothek des MII-PRO-Moduls](https://simplifier.net/guide/modul-pro-v2026/MIIIGModulPRO/PRO-Bibliothek?version=current). Je Instrument: die Dokumentationsseite, die `Questionnaire`-Definition (PCOR-MII-Artefakt oder MII-PRO-Bibliothek), die Beispielantwort und — wo vorhanden — das Score-Artefakt.

Die fachliche Auswahl und Rechtelage steht auf [Instrumente](Instrumente.md); die Use-Case-Sichten folgen [unten](#use-cases).

### Alle Fragebögen

Sortierung: erst die projektübergreifenden Sammelbögen, dann nach Use-Case-Breite. • = im Use Case erhoben.

| | | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| Demographie (DEM) | • | • | • | [Seite](Demographie.md) | [DEM](Questionnaire-DEM.md) | [✓ AN](QuestionnaireResponse-DEMResponse.md)·[✓ PSS](QuestionnaireResponse-DEMPSSResponse.md) | — |
| Medical History (MHI) | • | • | • | [Seite](MHI.md) | [MHI](Questionnaire-MHI.md) | [✓ AN](QuestionnaireResponse-MHIResponse.md)·[✓ PSS](QuestionnaireResponse-MHIPSSResponse.md) | — |
| PROMIS Global Health (Subset) | • | • | • | [Seite](PROMIS.md) | offen | — | — |
| PROMIS-16 | • | • | • | [Seite](PROMIS-16.md) | [MII PRO](https://simplifier.net/guide/modul-pro-v2026/MIIIGModulPRO/PRO-Bibliothek/PROMIS/PROMIS-16.page.md?version=current) | [✓](QuestionnaireResponse-pcor-mii-exa-promis-16-response.md) | [PROPr-ObsDef](ObservationDefinition-PcorObsDefProprUtility.md) |
| PROMIS SF 4a (8 Domänen) | • | • | • | [Seite](PROMIS-Cognitive-Function.md) | teilw. MII PRO — s.[PROMIS](PROMIS.md) | [✓ Cognitive Function](QuestionnaireResponse-pcor-mii-exa-promis-cognitive-function-response.md) | — |
| WHODAS 2.0 (12-Item) | • | • | • | [Seite](WHODAS-12.md) | [MII PRO](https://simplifier.net/guide/modul-pro-v2026/MIIIGModulPRO/PRO-Bibliothek/WHODAS-2.0?version=current) | [✓](QuestionnaireResponse-pcor-mii-exa-pss-whodas-12-response.md) | — |
| PHQ-Familie (PHQ-8 / PHQ-9 / PHQ-15, PHQ-SI) | • | • | • | [Übersicht](PHQ.md),[PHQ-9](PHQ-9.md),[PHQ-15](PHQ-15.md) | [MII PRO](https://simplifier.net/guide/modul-pro-v2026/MIIIGModulPRO/PRO-Bibliothek/PHQ-9?version=current) | [✓](QuestionnaireResponse-pcor-mii-exa-pss-phq-9-response.md) | — |
| GAD-7 | • | • | • | [Seite](GAD-7.md) | [MII PRO](https://simplifier.net/guide/modul-pro-v2026/MIIIGModulPRO/PRO-Bibliothek/GAD-7?version=current) | [✓](QuestionnaireResponse-pcor-mii-exa-pss-gad-7-response.md) | — |
| EURONET-SOMA | • | • | • | [Seite](EURONET-SOMA.md) | [MII PRO](https://simplifier.net/guide/modul-pro-v2026/MIIIGModulPRO/PRO-Bibliothek/EURONET-SOMA?version=current) | [✓](QuestionnaireResponse-pcor-mii-exa-pss-euronet-soma-response.md) | — |
| WAI / Work Ability Score | • | • | • | [Seite](WAI.md) | [WAI](Questionnaire-WAI.md)(metadata-only) | [✓](QuestionnaireResponse-WAIResponse.md) | — |
| OPD-SFK | • | • | — | [Seite](OPD-SFK.md) | [OPDSFK](Questionnaire-OPDSFK.md) | [✓](QuestionnaireResponse-OPDSFKResponse.md) | — |
| SSD-12 | • | — | — | [Seite](SSD-12.md) | [MII PRO](https://simplifier.net/guide/modul-pro-v2026/MIIIGModulPRO/PRO-Bibliothek/SSD-12?version=current) | [✓](QuestionnaireResponse-pcor-mii-exa-pss-ssd-12-response.md) | — |
| Whiteley-7 | • | — | — | [Seite](WI-7.md) | [MII PRO](https://simplifier.net/guide/modul-pro-v2026/MIIIGModulPRO/PRO-Bibliothek/WI-7?version=current) | [✓](QuestionnaireResponse-pcor-mii-exa-pss-wi-7-response.md) | — |
| SCOFF | • | — | — | [Seite](SCOFF.md) | [MII PRO](https://simplifier.net/guide/modul-pro-v2026/MIIIGModulPRO/PRO-Bibliothek/SCOFF?version=current) | [✓](QuestionnaireResponse-pcor-mii-exa-pss-scoff-response.md) | — |
| ISR-Z | • | — | — | [Seite](ISR-Z.md) | [MII PRO](https://simplifier.net/guide/modul-pro-v2026/MIIIGModulPRO/PRO-Bibliothek/ISR-Z?version=current) | [✓](QuestionnaireResponse-pcor-mii-exa-pss-isr-z-response.md) | — |
| PC-PTSD | • | — | — | [Seite](PC-PTSD.md) | [MII PRO](https://simplifier.net/guide/modul-pro-v2026/MIIIGModulPRO/PRO-Bibliothek/PC-PTSD?version=current) | [✓](QuestionnaireResponse-pcor-mii-exa-pss-pc-ptsd-response.md) | — |
| EXPECT | • | — | — | [Seite](EXPECT.md) | [EXPECT](Questionnaire-EXPECT.md) | [✓](QuestionnaireResponse-EXPECTResponse.md) | — |
| IPQ-S | • | — | — | [Seite](IPQ-S.md) | [IPQS](Questionnaire-IPQS.md) | [✓](QuestionnaireResponse-IPQSResponse.md) | — |
| GSLTPAQ | • | — | — | [Seite](GSLTPAQ.md) | [GSLTPAQ](Questionnaire-GSLTPAQ.md) | [✓](QuestionnaireResponse-GSLTPAQResponse.md) | — |
| ERQ-6 | — | • | — | [Seite](ERQ-6.md) | [ERQ6](Questionnaire-ERQ6.md) | [✓](QuestionnaireResponse-ERQ6Response.md)·[Monitoring](QuestionnaireResponse-ERQ6MonitoringResponse.md) | zurückgezogen — s.[ERQ-6](ERQ-6.md) |
| EDE-Q6 | — | • | — | [Seite](EDE-Q6.md) | [EDEQ6](Questionnaire-EDEQ6.md) | [✓](QuestionnaireResponse-EDEQ6Response.md)·[Monitoring](QuestionnaireResponse-EDEQ6MonitoringResponse.md) | — |
| ANSOCQ-2 | — | • | — | [Seite](ANSOCQ-2.md) | [ANSOCQ2](Questionnaire-ANSOCQ2.md) | [✓](QuestionnaireResponse-ANSOCQ2Response.md)·[Monitoring](QuestionnaireResponse-ANSOCQ2MonitoringResponse.md) | — |
| SSUK-2 | — | • | — | [Seite](SSUK-2.md) | [SSUK2](Questionnaire-SSUK2.md) | [✓](QuestionnaireResponse-SSUK2Response.md)·[Monitoring](QuestionnaireResponse-SSUK2MonitoringResponse.md) | — |
| ACE + Zeitangaben | — | • | — | [Seite](ACE.md) | [ACE](Questionnaire-ACE.md) | [✓](QuestionnaireResponse-ACEResponse.md) | — |
| UKHD-PT | — | • | — | [Seite](UKHD-Zusatzitems.md) | [UKHDPT](Questionnaire-UKHDPT.md) | [✓](QuestionnaireResponse-UKHDPTResponse.md)·[Monitoring](QuestionnaireResponse-UKHDPTMonitoringResponse.md) | — |
| UKHD-ANB | — | • | — | [Seite](UKHD-Zusatzitems.md) | [UKHDANB](Questionnaire-UKHDANB.md) | [✓](QuestionnaireResponse-UKHDANBResponse.md) | — |
| UKHD-CT | — | • | — | [Seite](UKHD-Zusatzitems.md) | [UKHDCT](Questionnaire-UKHDCT.md) | [✓](QuestionnaireResponse-UKHDCTResponse.md)·[Monitoring](QuestionnaireResponse-UKHDCTMonitoringResponse.md) | — |
| UKHD-LE | — | • | — | [Seite](UKHD-Zusatzitems.md) | [UKHDLE](Questionnaire-UKHDLE.md) | [✓](QuestionnaireResponse-UKHDLEResponse.md)·[Monitoring](QuestionnaireResponse-UKHDLEMonitoringResponse.md) | — |
| UKHD-ND | — | • | — | [Seite](UKHD-Zusatzitems.md) | [UKHDND](Questionnaire-UKHDND.md) | [✓ Monitoring](QuestionnaireResponse-UKHDNDMonitoringResponse.md)— zum Initial-Termin bewusst keine | — |
| UKHD-D | — | • | — | [Seite](UKHD-Zusatzitems.md) | [UKHDD](Questionnaire-UKHDD.md) | [✓](QuestionnaireResponse-UKHDDResponse.md) | — |
| UKHD-EDP | — | • | — | [Seite](UKHD-EDP.md) | [UKHDEDP](Questionnaire-UKHDEDP.md)(metadata-only) | [✓ Monitoring](QuestionnaireResponse-UKHDEDPMonitoringResponse.md) | — |

**Zur Score-Spalte:** Score-Artefakte gibt es bewusst nur, wo eine **validierte** Auswertungsvorschrift existiert ([ADR-003](Designentscheidungen.md) Punkt 3) — derzeit allein der [PROPr](ObservationDefinition-PcorObsDefProprUtility.md) zum PROMIS-16; alle Score-Codes sammelt der [Score-Katalog](CodeSystem-pcor-score-catalogue.md). Kein AN-Zuschnitt trägt einen Score, und die beiden ERQ-Scores aus Release 0.3.0 sind zurückgezogen.

### Beispielpatienten und Bundles

Zwei synthetische Beispielpatienten tragen zusammenhängende **Use-Case-Datensätze**; je Erhebungstermin bündelt ein `Bundle` (type `collection`) den Patient mit allen Antworten des Termins:

| | | | |
| :--- | :--- | :--- | :--- |
| [AN — Initial](Bundle-pcor-mii-exa-bundle-an-initial.md) | [Patientin AN](Patient-pcor-mii-exa-patient-an.md) | 18.06.2026 | DEM, MHI und die zehn AN-Antworten des Screening-Termins |
| [AN — Monitoring](Bundle-pcor-mii-exa-bundle-an-monitoring.md) | [Patientin AN](Patient-pcor-mii-exa-patient-an.md) | 30.07.2026 | neun Verlaufsantworten — darunter die**erste UKHD-ND-Antwort**und die metadata-only-Antwort zu UKHD-EDP |
| [PSS — Screening](Bundle-pcor-mii-exa-bundle-pss-screening.md) | [Patient PSS](Patient-pcor-mii-exa-patient-pss.md) | 25.06.2026 | die vollständige PSS-Batterie: DEM, MHI, OPD-SFK, GSLTPAQ, EXPECT, IPQ-S, WAI plus zwölf Antworten auf MII-PRO-Questionnaires (PHQ-9, GAD-7, PHQ-15, SSD-12, WHODAS-12, EURONET-SOMA, WI-7, SCOFF, ISR-Z, PC-PTSD, PROMIS-16, PROMIS Cognitive Function) |

Die Bundles werden mit `scripts/build-example-bundles.py` aus den Einzelantworten erzeugt und eingecheckt; die Termin-Zuordnung ist dort explizit gepflegt. Die `TIMING`-Logik wird am Terminvergleich sichtbar: Was zu einem Termin nicht erhoben wird, **fehlt** in dessen Bundle, statt leer dazustehen.

### Use Case PSS — Persistierende somatische Symptome

Fachliche Beschreibung: [PSS](PSS.md). **Maschinenlesbar:** [Library/use-case-pss](Library-use-case-pss.md) pinnt alle 20 Bögen versioniert (`asset-collection`; Rückwärtssuche per `Library?composed-of=<canonical>`).

| | | | |
| :--- | :--- | :--- | :--- |
| DEM, MHI | [Demographie](Demographie.md),[MHI](MHI.md) | [DEM](Questionnaire-DEM.md),[MHI](Questionnaire-MHI.md) | [✓](QuestionnaireResponse-DEMResponse.md)/[✓](QuestionnaireResponse-MHIResponse.md) |
| PROMIS-16, SF 4a, Global Health | [PROMIS](PROMIS.md) | [MII PRO](https://simplifier.net/guide/modul-pro-v2026/MIIIGModulPRO/PRO-Bibliothek/PROMIS/PROMIS-16.page.md?version=current) | [✓](QuestionnaireResponse-pcor-mii-exa-promis-16-response.md) |
| WHODAS 2.0, PHQ-8/-15, GAD-7, EURONET-SOMA | [WHODAS](WHODAS-12.md),[PHQ](PHQ.md),[GAD-7](GAD-7.md),[EURONET-SOMA](EURONET-SOMA.md) | MII PRO (s. Gesamttabelle) | — |
| SSD-12, Whiteley-7, SCOFF, ISR-Z, PC-PTSD | [SSD-12](SSD-12.md),[WI-7](WI-7.md),[SCOFF](SCOFF.md),[ISR-Z](ISR-Z.md),[PC-PTSD](PC-PTSD.md) | MII PRO (s. Gesamttabelle) | — |
| OPD-SFK, EXPECT, IPQ-S, GSLTPAQ, WAI | [OPD-SFK](OPD-SFK.md),[EXPECT](EXPECT.md),[IPQ-S](IPQ-S.md),[GSLTPAQ](GSLTPAQ.md),[WAI](WAI.md) | [OPDSFK](Questionnaire-OPDSFK.md),[EXPECT](Questionnaire-EXPECT.md),[IPQS](Questionnaire-IPQS.md),[GSLTPAQ](Questionnaire-GSLTPAQ.md),[WAI](Questionnaire-WAI.md) | — |

### Use Case AN — Anorexia nervosa

Fachliche Beschreibung: [AN](AN.md); vollständige Nachschlagetabelle mit Rechtestatus: [AN — Instrumentenliste](AN-Instrumentenliste.md). **Maschinenlesbar:** [Library/use-case-an](Library-use-case-an.md) pinnt alle 23 Bögen versioniert. Die AN-Beispielantworten bilden **einen** zusammenhängenden Erhebungstermin ab (18.06.2026, dieselbe Patientin).

| | | | |
| :--- | :--- | :--- | :--- |
| ERQ-6, EDE-Q6, ANSOCQ-2, SSUK-2 | [ERQ-6](ERQ-6.md),[EDE-Q6](EDE-Q6.md),[ANSOCQ-2](ANSOCQ-2.md),[SSUK-2](SSUK-2.md) | [ERQ6](Questionnaire-ERQ6.md),[EDEQ6](Questionnaire-EDEQ6.md),[ANSOCQ2](Questionnaire-ANSOCQ2.md),[SSUK2](Questionnaire-SSUK2.md) | [✓](QuestionnaireResponse-ERQ6Response.md)/[✓](QuestionnaireResponse-EDEQ6Response.md)/[✓](QuestionnaireResponse-ANSOCQ2Response.md)/[✓](QuestionnaireResponse-SSUK2Response.md) |
| ACE + Zeitangaben (Komposit) | [ACE](ACE.md) | [ACE](Questionnaire-ACE.md) | [✓](QuestionnaireResponse-ACEResponse.md) |
| UKHD-Zusatzitems (6 Bögen) | [Übersicht](UKHD-Zusatzitems.md) | [PT](Questionnaire-UKHDPT.md)·[ANB](Questionnaire-UKHDANB.md)·[CT](Questionnaire-UKHDCT.md)·[LE](Questionnaire-UKHDLE.md)·[ND](Questionnaire-UKHDND.md)·[D](Questionnaire-UKHDD.md) | fünf von sechs — s. Gesamttabelle |
| UKHD-EDP (metadata-only) | [UKHD-EDP](UKHD-EDP.md) | [UKHDEDP](Questionnaire-UKHDEDP.md) | — |
| PHQ-8, GAD-7, PROMIS, WHODAS, EURONET-SOMA, OPD-SFK, WAI | s. Gesamttabelle | s. Gesamttabelle | — |

### Use Case NTx — Nierentransplantation

Zurückgestellt — kein Manifest (die Codes `ntxr`/`ntxd` führt [pcor-use-case](CodeSystem-pcor-use-case.md) bereits; das Domain Overview trennt Empfänger und Spender). Noch keine Artefakte: BAASIS, MTSOSD-R59 und ABQ sind rechtlich nicht publizierbar und als metadata-only **vorgesehen** (s. [Instrumente](Instrumente.md)). Die entitätsübergreifenden Bögen (DEM, MHI, PROMIS, PHQ-8, …) gelten auch hier.

Hinweise zum Lebenszyklus von `Questionnaire` zu `QuestionnaireResponse` siehe [Anwendung](Implementation.md); maschinenlesbare Gesamtliste unter [Artefakte](artifacts.md).

