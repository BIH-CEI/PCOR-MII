# Fragebogen-Bibliothek - PCOR-MII Implementation Guide v0.9.0

## Fragebogen-Bibliothek

Diese Seite ist der **tabellarische Einstieg zu allen Fragebögen** — nach dem Muster der [PRO-Bibliothek des MII-PRO-Moduls](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/pro-library.html). Je Instrument: die Dokumentationsseite, die `Questionnaire`-Definition (PCOR-MII-Artefakt oder MII-PRO-Bibliothek), die Beispielantwort und — wo vorhanden — das Score-Artefakt.

Die fachliche Auswahl und Rechtelage steht auf [Instrumente](Instrumente.md); die Use-Case-Sichten folgen [unten](#use-cases).

### Alle Fragebögen

Sortierung: erst die projektübergreifenden Sammelbögen, dann nach Use-Case-Breite. • = im Use Case erhoben.

| | | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| Demographie (DEM) | • | • | • | [Seite](Demographie.md) | [DEM](Questionnaire-DEM.md) | [✓ AN](QuestionnaireResponse-DEMResponse.md)·[✓ PSS](QuestionnaireResponse-DEMPSSResponse.md) | — |
| Medical History (MHI) | • | • | • | [Seite](MHI.md) | [MHI](Questionnaire-MHI.md) | [✓ AN](QuestionnaireResponse-MHIResponse.md)·[✓ PSS](QuestionnaireResponse-MHIPSSResponse.md) | — |
| PROMIS Global Health (Subset: Global01/Global02) | • | • | • | [Seite](PROMIS.md) | [PROMISGH](Questionnaire-PROMISGH.md)(2-Item-Zuschnitt,`derivedFrom`der 10-Item-Skala des Moduls) | — | — |
| PROMIS-16 | • | • | • | [Seite](PROMIS-16.md) | [MII PRO](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-promis-16.html) | [✓](QuestionnaireResponse-pcor-mii-exa-promis-16-response.md) | [PROPr-ObsDef](ObservationDefinition-PcorObsDefProprUtility.md) |
| PROMIS SF 4a (8 Domänen) = PROMIS-29 + Cognitive Function | • | • | • | [PROMIS-33](PROMIS-33.md) | MII PRO:[PROMIS-29](PROMIS-29.md)+[Cognitive Function](PROMIS-Cognitive-Function.md) | [✓ Cognitive Function](QuestionnaireResponse-pcor-mii-exa-promis-cognitive-function-response.md) | — |
| WHODAS 2.0 (12-Item) | • | • | • | [Seite](WHODAS-12.md) | [MII PRO](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-whodas-whodas12.html) | [✓](QuestionnaireResponse-pcor-mii-exa-pss-whodas-12-response.md) | — |
| PHQ-Familie (PHQ-8 / PHQ-9 / PHQ-15, PHQ-SI) | • | • | • | [Übersicht](PHQ.md),[PHQ-9](PHQ-9.md),[PHQ-15](PHQ-15.md) | [MII PRO](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-phq-9.html) | [✓](QuestionnaireResponse-pcor-mii-exa-pss-phq-9-response.md) | — |
| GAD-7 | • | • | • | [Seite](GAD-7.md) | [MII PRO](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-gad-7.html) | [✓](QuestionnaireResponse-pcor-mii-exa-pss-gad-7-response.md) | — |
| EQ-5D-5L (Outcome, jährlich) | • | • | • | [MII PRO](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-euroqol-eq5d5l-collectable.html) | [MII PRO, Variante collectable](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-euroqol-eq5d5l-collectable.html) | — | MII PRO: Index, Profil, VAS |
| EURONET-SOMA | • | • | • | [Seite](EURONET-SOMA.md) | [MII PRO](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-euronet-soma.html) | [✓](QuestionnaireResponse-pcor-mii-exa-pss-euronet-soma-response.md) | — |
| WAI / Work Ability Score | • | • | • | [Seite](WAI.md) | [WAI](Questionnaire-WAI.md)(metadata-only) | [✓](QuestionnaireResponse-WAIResponse.md) | — |
| OPD-SFK | • | • | — | [Seite](OPD-SFK.md) | [OPDSFK](Questionnaire-OPDSFK.md) | [✓](QuestionnaireResponse-OPDSFKResponse.md) | — |
| SSD-12 | • | — | — | [Seite](SSD-12.md) | [MII PRO](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-ssd-12.html) | [✓](QuestionnaireResponse-pcor-mii-exa-pss-ssd-12-response.md) | — |
| Whiteley-7 | • | — | — | [Seite](WI-7.md) | [MII PRO](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-wi-7.html) | [✓](QuestionnaireResponse-pcor-mii-exa-pss-wi-7-response.md) | — |
| SCOFF | • | — | — | [Seite](SCOFF.md) | [MII PRO](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-scoff.html) | [✓](QuestionnaireResponse-pcor-mii-exa-pss-scoff-response.md) | — |
| ISR-Z | • | — | — | [Seite](ISR-Z.md) | [MII PRO](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-isr-z.html) | [✓](QuestionnaireResponse-pcor-mii-exa-pss-isr-z-response.md) | — |
| PC-PTSD | • | — | — | [Seite](PC-PTSD.md) | [MII PRO](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-pc-ptsd.html) | [✓](QuestionnaireResponse-pcor-mii-exa-pss-pc-ptsd-response.md) | — |
| EXPECT | • | — | — | [Seite](EXPECT.md) | [EXPECT](Questionnaire-EXPECT.md) | [✓](QuestionnaireResponse-EXPECTResponse.md) | — |
| PHQ-D Panik-Block | • | — | — | [Seite](PHQ-Panik.md) | [PHQPANIK](Questionnaire-PHQPANIK.md) | [✓](QuestionnaireResponse-PHQPANIKResponse.md) | — |
| BAASIS | — | — | • | [Seite](NTx-Instrumente.md) | [BAASIS](Questionnaire-BAASIS.md)(metadata-only) | [Beispiel](QuestionnaireResponse-BAASISResponse.md) | — |
| ABQ | — | — | • | [Seite](NTx-Instrumente.md) | [ABQ](Questionnaire-ABQ.md)(metadata-only) | [Beispiel](QuestionnaireResponse-ABQResponse.md) | — |
| MTSOSD-R59 | — | — | • | [Seite](NTx-Instrumente.md) | [MTSOSDR59](Questionnaire-MTSOSDR59.md)(metadata-only) | [Beispiel](QuestionnaireResponse-MTSOSDR59Response.md) | — |
| MHI-NTx — Transplantationsanamnese | — | — | • | [Seite](NTx-Instrumente.md#mhi-ntx-transplantationsanamnese) | [MHINTX](Questionnaire-MHINTX.md) | [Beispiel](QuestionnaireResponse-MHINTXResponse.md) | — |
| NTx-Verlaufsbefragung (MHH) | — | — | • | [Seite](NTx-Instrumente.md#ntx-verlaufsbefragung-mhh) | [NTXVERLAUF](Questionnaire-NTXVERLAUF.md) | [Beispiel](QuestionnaireResponse-NTXVERLAUFResponse.md) | — |
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

Drei synthetische Beispielpatient:innen (AN, PSS, NTx), vier Termin-Bundles und 46 Beispielantworten sind auf der Seite [Beispiele](Beispiele.md) beschrieben — mit Profil, Termin, Inhalt der Bundles und dem, was jede Antwort belegt. In den Tabellen oben steht je Bogen die zugehörige Beispielantwort.

### Use Case PSS — Persistierende somatische Symptome

Fachliche Beschreibung: [PSS](PSS.md). **Maschinenlesbar:** [Library/use-case-pss](Library-use-case-pss.md) pinnt alle 23 Bögen versioniert (`asset-collection`; Rückwärtssuche per `Library?composed-of=<canonical>`). PROMIS-16 und PROMIS-29 + Cognitive Function sind darin als Standortvarianten markiert (s. Pilot-Abschnitt unten).

| | | | |
| :--- | :--- | :--- | :--- |
| DEM, MHI | [Demographie](Demographie.md),[MHI](MHI.md) | [DEM](Questionnaire-DEM.md),[MHI](Questionnaire-MHI.md) | [✓](QuestionnaireResponse-DEMResponse.md)/[✓](QuestionnaireResponse-MHIResponse.md) |
| PROMIS-16, PROMIS-29 + Cognitive Function (SF 4a), Global Health | [PROMIS](PROMIS.md) | [MII PRO](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-promis-16.html) | [✓](QuestionnaireResponse-pcor-mii-exa-promis-16-response.md) |
| WHODAS 2.0, PHQ-8/-15, GAD-7, EURONET-SOMA | [WHODAS](WHODAS-12.md),[PHQ](PHQ.md),[GAD-7](GAD-7.md),[EURONET-SOMA](EURONET-SOMA.md) | MII PRO (s. Gesamttabelle) | — |
| SSD-12, Whiteley-7, SCOFF, ISR-Z, PC-PTSD | [SSD-12](SSD-12.md),[WI-7](WI-7.md),[SCOFF](SCOFF.md),[ISR-Z](ISR-Z.md),[PC-PTSD](PC-PTSD.md) | MII PRO (s. Gesamttabelle) | — |
| OPD-SFK, EXPECT, IPQ-S, GSLTPAQ, WAI, PHQ-D Panik-Block | [OPD-SFK](OPD-SFK.md),[EXPECT](EXPECT.md),[IPQ-S](IPQ-S.md),[GSLTPAQ](GSLTPAQ.md),[WAI](WAI.md),[PHQ-D Panik-Block](PHQ-Panik.md) | [OPDSFK](Questionnaire-OPDSFK.md),[EXPECT](Questionnaire-EXPECT.md),[IPQS](Questionnaire-IPQS.md),[GSLTPAQ](Questionnaire-GSLTPAQ.md),[WAI](Questionnaire-WAI.md),[PHQPANIK](Questionnaire-PHQPANIK.md) | — |

### Use Case AN — Anorexia nervosa

Fachliche Beschreibung und Instrumententabelle: [AN](AN.md). **Maschinenlesbar:** [Library/use-case-an](Library-use-case-an.md) pinnt alle 25 Bögen versioniert; PROMIS-16 und PROMIS-29 + Cognitive Function als Standortvarianten markiert. Die AN-Beispielantworten bilden **einen** zusammenhängenden Erhebungstermin ab (18.06.2026, dieselbe Patientin).

| | | | |
| :--- | :--- | :--- | :--- |
| ERQ-6, EDE-Q6, ANSOCQ-2, SSUK-2 | [ERQ-6](ERQ-6.md),[EDE-Q6](EDE-Q6.md),[ANSOCQ-2](ANSOCQ-2.md),[SSUK-2](SSUK-2.md) | [ERQ6](Questionnaire-ERQ6.md),[EDEQ6](Questionnaire-EDEQ6.md),[ANSOCQ2](Questionnaire-ANSOCQ2.md),[SSUK2](Questionnaire-SSUK2.md) | [✓](QuestionnaireResponse-ERQ6Response.md)/[✓](QuestionnaireResponse-EDEQ6Response.md)/[✓](QuestionnaireResponse-ANSOCQ2Response.md)/[✓](QuestionnaireResponse-SSUK2Response.md) |
| ACE + Zeitangaben (Komposit) | [ACE](ACE.md) | [ACE](Questionnaire-ACE.md) | [✓](QuestionnaireResponse-ACEResponse.md) |
| UKHD-Zusatzitems (6 Bögen) | [Übersicht](UKHD-Zusatzitems.md) | [PT](Questionnaire-UKHDPT.md)·[ANB](Questionnaire-UKHDANB.md)·[CT](Questionnaire-UKHDCT.md)·[LE](Questionnaire-UKHDLE.md)·[ND](Questionnaire-UKHDND.md)·[D](Questionnaire-UKHDD.md) | fünf von sechs — s. Gesamttabelle |
| UKHD-EDP (metadata-only) | [UKHD-EDP](UKHD-EDP.md) | [UKHDEDP](Questionnaire-UKHDEDP.md) | — |
| PHQ-8, GAD-7, PROMIS, WHODAS, EURONET-SOMA, OPD-SFK, WAI | s. Gesamttabelle | s. Gesamttabelle | — |

### Use Case NTx — Nierentransplantation

Fachliche Beschreibung: [NTx](NTx.md). Das Domain Overview trennt **Empfänger (NTXr)** und **Spender (NTXd)** mit eigenen Prioritätsprofilen; seit 2026-11-05 gibt es für beide ein Manifest.

**Maschinenlesbar:** [Library/use-case-ntxr](Library-use-case-ntxr.md) pinnt die generische Batterie plus WAI (in NTx Prio A), die metadata-only-Stubs [BAASIS, ABQ und MTSOSD-R59](NTx-Instrumente.md), die Transplantationsanamnese [MHI-NTx](NTx-Instrumente.md#mhi-ntx-transplantationsanamnese) und die [NTx-Verlaufsbefragung](NTx-Instrumente.md#ntx-verlaufsbefragung-mhh). [Library/use-case-ntxd](Library-use-case-ntxd.md) enthält nur die generische Batterie: Spender haben laut Plan kein spezifisches Instrument und kein Monitoring. Nicht gepinnt ist PHQ-15, weil das Domain Overview es nur für PSS führt, das Dictionary-Blatt NTx aber mit; die Klärung liegt bei der Use-Case-Leitung.

| | | | |
| :--- | :--- | :--- | :--- |
| BAASIS, ABQ, MTSOSD-R59 (metadata-only) | [NTx-Instrumente](NTx-Instrumente.md) | [BAASIS](Questionnaire-BAASIS.md)·[ABQ](Questionnaire-ABQ.md)·[MTSOSDR59](Questionnaire-MTSOSDR59.md) | [BAASIS](QuestionnaireResponse-BAASISResponse.md)·[ABQ](QuestionnaireResponse-ABQResponse.md)·[MTSOSD-R59](QuestionnaireResponse-MTSOSDR59Response.md) |
| MHI-NTx — Transplantationsanamnese | [NTx-Instrumente](NTx-Instrumente.md#mhi-ntx-transplantationsanamnese) | [MHINTX](Questionnaire-MHINTX.md) | [Beispiel](QuestionnaireResponse-MHINTXResponse.md) |
| NTx-Verlaufsbefragung (MHH) | [NTx-Instrumente](NTx-Instrumente.md#ntx-verlaufsbefragung-mhh) | [NTXVERLAUF](Questionnaire-NTXVERLAUF.md) | [Beispiel](QuestionnaireResponse-NTXVERLAUFResponse.md) |
| DEM, MHI, WAI, PROMIS, WHODAS, PHQ-8, GAD-7, EURONET-SOMA, EQ-5D-5L | s. Gesamttabelle | s. Gesamttabelle | — |

### Pilot „50 First Patients“ — gemeinsamer Kern aller Use Cases

Der Pilot ist kein klinischer Use Case, sondern das Programm des ersten Datenaustauschs (Ablauf: [Bereitstellung](Bereitstellung.md#pilot)). **Maschinenlesbar:** [Library/pilot-50fp](Library-pilot-50fp.md) pinnt die **Schnittmenge** der Use Cases versioniert — genau die 12 Bögen, die in den Spalten PSS, AN **und** NTx der Gesamttabelle markiert sind und für die ein Artefakt existiert: DEM, MHI, WAI, PROMIS-GH sowie PROMIS-16, PROMIS-29 + Cognitive Function SF 4a (die „8 Domänen“ des Erhebungsplans), WHODAS 2.0, PHQ-9, GAD-7, EURONET-SOMA und EQ-5D-5L. Nicht enthalten: OPD-SFK (nicht in NTx), PHQ-15 (nur PSS). Die Zusammenstellung ist eine Ableitungsregel aus der Tabelle, keine eigene Auswahl — wer sie ändern will, ändert die Tabelle. Konsumenten, die eine vollständige Batterie brauchen, laden das Manifest des jeweiligen Use Case. **Standortvarianten:** PROMIS-16 und PROMIS-29 + Cognitive Function SF 4a sind Alternativen, zwischen denen ein Standort wählt. Beide stehen in jedem Manifest, weil Empfänger Antworten beider Standorttypen auflösen müssen; die Variante ist je Eintrag über die CRMI-Extension `crmi-intendedUsageContext` markiert als Text, bewusst ohne eigenes CodeSystem. Ein Entweder-oder erzwingen kann erst eine PlanDefinition mit `selectionBehavior = exactly-one`; die ist nicht Teil dieser Version.

Hinweise zum Lebenszyklus von `Questionnaire` zu `QuestionnaireResponse` siehe [Anwendung](Implementation.md); maschinenlesbare Gesamtliste unter [Artefakte](artifacts.md).

