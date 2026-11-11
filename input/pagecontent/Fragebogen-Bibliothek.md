Diese Seite ist der **tabellarische Einstieg zu allen Fragebögen** — nach dem Muster der [PRO-Bibliothek des MII-PRO-Moduls](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/pro-library.html). Je Instrument: die Dokumentationsseite, die `Questionnaire`-Definition (PCOR-MII-Artefakt oder MII-PRO-Bibliothek), die Beispielantwort und — wo vorhanden — das Score-Artefakt.

Die fachliche Auswahl und Rechtelage steht auf [Instrumente](Instrumente.html); die Use-Case-Sichten folgen [unten](#use-cases).

### Alle Fragebögen

Sortierung: erst die projektübergreifenden Sammelbögen, dann nach Use-Case-Breite. • = im Use Case erhoben.

| Instrument | PSS | AN | NTx | Doku | `Questionnaire` | Beispielantwort | Score |
|---|:--:|:--:|:--:|---|---|---|---|
| Demographie (DEM) | • | • | • | [Seite](Demographie.html) | [DEM](Questionnaire-DEM.html) | [✓ AN](QuestionnaireResponse-DEMResponse.html) · [✓ PSS](QuestionnaireResponse-DEMPSSResponse.html) | — |
| Medical History (MHI) | • | • | • | [Seite](MHI.html) | [MHI](Questionnaire-MHI.html) | [✓ AN](QuestionnaireResponse-MHIResponse.html) · [✓ PSS](QuestionnaireResponse-MHIPSSResponse.html) | — |
| PROMIS Global Health (Subset: Global01/Global02) | • | • | • | [Seite](PROMIS.html) | [PROMISGH](Questionnaire-PROMISGH.html) (2-Item-Zuschnitt, `derivedFrom` der 10-Item-Skala des Moduls) | — | — |
| PROMIS-16 | • | • | • | [Seite](PROMIS-16.html) | [MII PRO](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-promis-16.html) | [✓](QuestionnaireResponse-pcor-mii-exa-promis-16-response.html) | [PROPr-ObsDef](ObservationDefinition-PcorObsDefProprUtility.html) |
| PROMIS SF 4a (8 Domänen) = PROMIS-29 + Cognitive Function | • | • | • | [PROMIS-33](PROMIS-33.html) | MII PRO: [PROMIS-29](PROMIS-29.html) + [Cognitive Function](PROMIS-Cognitive-Function.html) | [✓ Cognitive Function](QuestionnaireResponse-pcor-mii-exa-promis-cognitive-function-response.html) | — |
| WHODAS 2.0 (12-Item) | • | • | • | [Seite](WHODAS-12.html) | [MII PRO](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-whodas-whodas12.html) | [✓](QuestionnaireResponse-pcor-mii-exa-pss-whodas-12-response.html) | — |
| PHQ-Familie (PHQ-8 / PHQ-9 / PHQ-15, PHQ-SI) | • | • | • | [Übersicht](PHQ.html), [PHQ-9](PHQ-9.html), [PHQ-15](PHQ-15.html) | [MII PRO](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-phq-9.html) | [✓](QuestionnaireResponse-pcor-mii-exa-pss-phq-9-response.html) | — |
| GAD-7 | • | • | • | [Seite](GAD-7.html) | [MII PRO](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-gad-7.html) | [✓](QuestionnaireResponse-pcor-mii-exa-pss-gad-7-response.html) | — |
| EQ-5D-5L (Outcome, jährlich) | • | • | • | [MII PRO](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-euroqol-eq5d5l-collectable.html) | [MII PRO, Variante collectable](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-euroqol-eq5d5l-collectable.html) | — | MII PRO: Index, Profil, VAS |
| EURONET-SOMA | • | • | • | [Seite](EURONET-SOMA.html) | [MII PRO](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-euronet-soma.html) | [✓](QuestionnaireResponse-pcor-mii-exa-pss-euronet-soma-response.html) | — |
| WAI / Work Ability Score | • | • | • | [Seite](WAI.html) | [WAI](Questionnaire-WAI.html) (metadata-only) | [✓](QuestionnaireResponse-WAIResponse.html) | — |
| OPD-SFK | • | • | — | [Seite](OPD-SFK.html) | [OPDSFK](Questionnaire-OPDSFK.html) | [✓](QuestionnaireResponse-OPDSFKResponse.html) | — |
| SSD-12 | • | — | — | [Seite](SSD-12.html) | [MII PRO](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-ssd-12.html) | [✓](QuestionnaireResponse-pcor-mii-exa-pss-ssd-12-response.html) | — |
| Whiteley-7 | • | — | — | [Seite](WI-7.html) | [MII PRO](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-wi-7.html) | [✓](QuestionnaireResponse-pcor-mii-exa-pss-wi-7-response.html) | — |
| SCOFF | • | — | — | [Seite](SCOFF.html) | [MII PRO](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-scoff.html) | [✓](QuestionnaireResponse-pcor-mii-exa-pss-scoff-response.html) | — |
| ISR-Z | • | — | — | [Seite](ISR-Z.html) | [MII PRO](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-isr-z.html) | [✓](QuestionnaireResponse-pcor-mii-exa-pss-isr-z-response.html) | — |
| PC-PTSD | • | — | — | [Seite](PC-PTSD.html) | [MII PRO](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-pc-ptsd.html) | [✓](QuestionnaireResponse-pcor-mii-exa-pss-pc-ptsd-response.html) | — |
| EXPECT | • | — | — | [Seite](EXPECT.html) | [EXPECT](Questionnaire-EXPECT.html) | [✓](QuestionnaireResponse-EXPECTResponse.html) | — |
| PHQ-D Panik-Block | • | — | — | [Seite](PHQ-Panik.html) | [PHQPANIK](Questionnaire-PHQPANIK.html) | [✓](QuestionnaireResponse-PHQPANIKResponse.html) | — |
| BAASIS | — | — | • | [Seite](NTx-Instrumente.html) | [BAASIS](Questionnaire-BAASIS.html) (metadata-only) | [Beispiel](QuestionnaireResponse-BAASISResponse.html) | — |
| ABQ | — | — | • | [Seite](NTx-Instrumente.html) | [ABQ](Questionnaire-ABQ.html) (metadata-only) | [Beispiel](QuestionnaireResponse-ABQResponse.html) | — |
| MTSOSD-R59 | — | — | • | [Seite](NTx-Instrumente.html) | [MTSOSDR59](Questionnaire-MTSOSDR59.html) (metadata-only) | [Beispiel](QuestionnaireResponse-MTSOSDR59Response.html) | — |
| MHI-NTx — Transplantationsanamnese | — | — | • | [Seite](NTx-Instrumente.html#mhi-ntx-transplantationsanamnese) | [MHINTX](Questionnaire-MHINTX.html) | [Beispiel](QuestionnaireResponse-MHINTXResponse.html) | — |
| NTx-Verlaufsbefragung (MHH) | — | — | • | [Seite](NTx-Instrumente.html#ntx-verlaufsbefragung-mhh) | [NTXVERLAUF](Questionnaire-NTXVERLAUF.html) | [Beispiel](QuestionnaireResponse-NTXVERLAUFResponse.html) | — |
| IPQ-S | • | — | — | [Seite](IPQ-S.html) | [IPQS](Questionnaire-IPQS.html) | [✓](QuestionnaireResponse-IPQSResponse.html) | — |
| GSLTPAQ | • | — | — | [Seite](GSLTPAQ.html) | [GSLTPAQ](Questionnaire-GSLTPAQ.html) | [✓](QuestionnaireResponse-GSLTPAQResponse.html) | — |
| ERQ-6 | — | • | — | [Seite](ERQ-6.html) | [ERQ6](Questionnaire-ERQ6.html) | [✓](QuestionnaireResponse-ERQ6Response.html) · [Monitoring](QuestionnaireResponse-ERQ6MonitoringResponse.html) | zurückgezogen — s. [ERQ-6](ERQ-6.html) |
| EDE-Q6 | — | • | — | [Seite](EDE-Q6.html) | [EDEQ6](Questionnaire-EDEQ6.html) | [✓](QuestionnaireResponse-EDEQ6Response.html) · [Monitoring](QuestionnaireResponse-EDEQ6MonitoringResponse.html) | — |
| ANSOCQ-2 | — | • | — | [Seite](ANSOCQ-2.html) | [ANSOCQ2](Questionnaire-ANSOCQ2.html) | [✓](QuestionnaireResponse-ANSOCQ2Response.html) · [Monitoring](QuestionnaireResponse-ANSOCQ2MonitoringResponse.html) | — |
| SSUK-2 | — | • | — | [Seite](SSUK-2.html) | [SSUK2](Questionnaire-SSUK2.html) | [✓](QuestionnaireResponse-SSUK2Response.html) · [Monitoring](QuestionnaireResponse-SSUK2MonitoringResponse.html) | — |
| ACE + Zeitangaben | — | • | — | [Seite](ACE.html) | [ACE](Questionnaire-ACE.html) | [✓](QuestionnaireResponse-ACEResponse.html) | — |
| UKHD-PT | — | • | — | [Seite](UKHD-Zusatzitems.html) | [UKHDPT](Questionnaire-UKHDPT.html) | [✓](QuestionnaireResponse-UKHDPTResponse.html) · [Monitoring](QuestionnaireResponse-UKHDPTMonitoringResponse.html) | — |
| UKHD-ANB | — | • | — | [Seite](UKHD-Zusatzitems.html) | [UKHDANB](Questionnaire-UKHDANB.html) | [✓](QuestionnaireResponse-UKHDANBResponse.html) | — |
| UKHD-CT | — | • | — | [Seite](UKHD-Zusatzitems.html) | [UKHDCT](Questionnaire-UKHDCT.html) | [✓](QuestionnaireResponse-UKHDCTResponse.html) · [Monitoring](QuestionnaireResponse-UKHDCTMonitoringResponse.html) | — |
| UKHD-LE | — | • | — | [Seite](UKHD-Zusatzitems.html) | [UKHDLE](Questionnaire-UKHDLE.html) | [✓](QuestionnaireResponse-UKHDLEResponse.html) · [Monitoring](QuestionnaireResponse-UKHDLEMonitoringResponse.html) | — |
| UKHD-ND | — | • | — | [Seite](UKHD-Zusatzitems.html) | [UKHDND](Questionnaire-UKHDND.html) | [✓ Monitoring](QuestionnaireResponse-UKHDNDMonitoringResponse.html) — zum Initial-Termin bewusst keine | — |
| UKHD-D | — | • | — | [Seite](UKHD-Zusatzitems.html) | [UKHDD](Questionnaire-UKHDD.html) | [✓](QuestionnaireResponse-UKHDDResponse.html) | — |
| UKHD-EDP | — | • | — | [Seite](UKHD-EDP.html) | [UKHDEDP](Questionnaire-UKHDEDP.html) (metadata-only) | [✓ Monitoring](QuestionnaireResponse-UKHDEDPMonitoringResponse.html) | — |

**Zur Score-Spalte:** Score-Artefakte gibt es bewusst nur, wo eine **validierte** Auswertungsvorschrift existiert ([ADR-003](Designentscheidungen.html) Punkt 3) — derzeit allein der [PROPr](ObservationDefinition-PcorObsDefProprUtility.html) zum PROMIS-16; alle Score-Codes sammelt der [Score-Katalog](CodeSystem-pcor-score-catalogue.html). Kein AN-Zuschnitt trägt einen Score, und die beiden ERQ-Scores aus Release 0.3.0 sind zurückgezogen.

### Beispielpatienten und Bundles

Drei synthetische Beispielpatient:innen (AN, PSS, NTx), vier Termin-Bundles und 46 Beispielantworten sind auf der Seite [Beispiele](Beispiele.html) beschrieben — mit Profil, Termin, Inhalt der Bundles und dem, was jede Antwort belegt. In den Tabellen oben steht je Bogen die zugehörige Beispielantwort.

<a name="use-cases"></a>

### Use Case PSS — Persistierende somatische Symptome

Fachliche Beschreibung: [PSS](PSS.html). **Maschinenlesbar:** [Library/use-case-pss](Library-use-case-pss.html) pinnt alle 23 Bögen versioniert (`asset-collection`; Rückwärtssuche per `Library?composed-of=<canonical>`). PROMIS-16 und PROMIS-29 + Cognitive Function sind darin als Standortvarianten markiert (s. Pilot-Abschnitt unten).

| Instrument | Doku | `Questionnaire` | Beispielantwort |
|---|---|---|---|
| DEM, MHI | [Demographie](Demographie.html), [MHI](MHI.html) | [DEM](Questionnaire-DEM.html), [MHI](Questionnaire-MHI.html) | [✓](QuestionnaireResponse-DEMResponse.html) / [✓](QuestionnaireResponse-MHIResponse.html) |
| PROMIS-16, PROMIS-29 + Cognitive Function (SF 4a), Global Health | [PROMIS](PROMIS.html) | [MII PRO](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-promis-16.html) | [✓](QuestionnaireResponse-pcor-mii-exa-promis-16-response.html) |
| WHODAS 2.0, PHQ-8/-15, GAD-7, EURONET-SOMA | [WHODAS](WHODAS-12.html), [PHQ](PHQ.html), [GAD-7](GAD-7.html), [EURONET-SOMA](EURONET-SOMA.html) | MII PRO (s. Gesamttabelle) | — |
| SSD-12, Whiteley-7, SCOFF, ISR-Z, PC-PTSD | [SSD-12](SSD-12.html), [WI-7](WI-7.html), [SCOFF](SCOFF.html), [ISR-Z](ISR-Z.html), [PC-PTSD](PC-PTSD.html) | MII PRO (s. Gesamttabelle) | — |
| OPD-SFK, EXPECT, IPQ-S, GSLTPAQ, WAI, PHQ-D Panik-Block | [OPD-SFK](OPD-SFK.html), [EXPECT](EXPECT.html), [IPQ-S](IPQ-S.html), [GSLTPAQ](GSLTPAQ.html), [WAI](WAI.html), [PHQ-D Panik-Block](PHQ-Panik.html) | [OPDSFK](Questionnaire-OPDSFK.html), [EXPECT](Questionnaire-EXPECT.html), [IPQS](Questionnaire-IPQS.html), [GSLTPAQ](Questionnaire-GSLTPAQ.html), [WAI](Questionnaire-WAI.html), [PHQPANIK](Questionnaire-PHQPANIK.html) | — |

### Use Case AN — Anorexia nervosa

Fachliche Beschreibung und Instrumententabelle: [AN](AN.html). **Maschinenlesbar:** [Library/use-case-an](Library-use-case-an.html) pinnt alle 25 Bögen versioniert; PROMIS-16 und PROMIS-29 + Cognitive Function als Standortvarianten markiert. Die AN-Beispielantworten bilden **einen** zusammenhängenden Erhebungstermin ab (18.06.2026, dieselbe Patientin).

| Instrument | Doku | `Questionnaire` | Beispielantwort |
|---|---|---|---|
| ERQ-6, EDE-Q6, ANSOCQ-2, SSUK-2 | [ERQ-6](ERQ-6.html), [EDE-Q6](EDE-Q6.html), [ANSOCQ-2](ANSOCQ-2.html), [SSUK-2](SSUK-2.html) | [ERQ6](Questionnaire-ERQ6.html), [EDEQ6](Questionnaire-EDEQ6.html), [ANSOCQ2](Questionnaire-ANSOCQ2.html), [SSUK2](Questionnaire-SSUK2.html) | [✓](QuestionnaireResponse-ERQ6Response.html) / [✓](QuestionnaireResponse-EDEQ6Response.html) / [✓](QuestionnaireResponse-ANSOCQ2Response.html) / [✓](QuestionnaireResponse-SSUK2Response.html) |
| ACE + Zeitangaben (Komposit) | [ACE](ACE.html) | [ACE](Questionnaire-ACE.html) | [✓](QuestionnaireResponse-ACEResponse.html) |
| UKHD-Zusatzitems (6 Bögen) | [Übersicht](UKHD-Zusatzitems.html) | [PT](Questionnaire-UKHDPT.html) · [ANB](Questionnaire-UKHDANB.html) · [CT](Questionnaire-UKHDCT.html) · [LE](Questionnaire-UKHDLE.html) · [ND](Questionnaire-UKHDND.html) · [D](Questionnaire-UKHDD.html) | fünf von sechs — s. Gesamttabelle |
| UKHD-EDP (metadata-only) | [UKHD-EDP](UKHD-EDP.html) | [UKHDEDP](Questionnaire-UKHDEDP.html) | — |
| PHQ-8, GAD-7, PROMIS, WHODAS, EURONET-SOMA, OPD-SFK, WAI | s. Gesamttabelle | s. Gesamttabelle | — |

### Use Case NTx — Nierentransplantation

Fachliche Beschreibung: [NTx](NTx.html). Das Domain Overview trennt **Empfänger (NTXr)** und **Spender (NTXd)** mit eigenen Prioritätsprofilen; seit 2026-11-05 gibt es für beide ein Manifest.

**Maschinenlesbar:** [Library/use-case-ntxr](Library-use-case-ntxr.html) pinnt die generische Batterie plus WAI (in NTx Prio A), die metadata-only-Stubs [BAASIS, ABQ und MTSOSD-R59](NTx-Instrumente.html), die Transplantationsanamnese [MHI-NTx](NTx-Instrumente.html#mhi-ntx-transplantationsanamnese) und die [NTx-Verlaufsbefragung](NTx-Instrumente.html#ntx-verlaufsbefragung-mhh). [Library/use-case-ntxd](Library-use-case-ntxd.html) enthält nur die generische Batterie: Spender haben laut Plan kein spezifisches Instrument und kein Monitoring. Nicht gepinnt ist PHQ-15, weil das Domain Overview es nur für PSS führt, das Dictionary-Blatt NTx aber mit; die Klärung liegt bei der Use-Case-Leitung.

| Instrument | Doku | `Questionnaire` | Beispielantwort |
|---|---|---|---|
| BAASIS, ABQ, MTSOSD-R59 (metadata-only) | [NTx-Instrumente](NTx-Instrumente.html) | [BAASIS](Questionnaire-BAASIS.html) · [ABQ](Questionnaire-ABQ.html) · [MTSOSDR59](Questionnaire-MTSOSDR59.html) | [BAASIS](QuestionnaireResponse-BAASISResponse.html) · [ABQ](QuestionnaireResponse-ABQResponse.html) · [MTSOSD-R59](QuestionnaireResponse-MTSOSDR59Response.html) |
| MHI-NTx — Transplantationsanamnese | [NTx-Instrumente](NTx-Instrumente.html#mhi-ntx-transplantationsanamnese) | [MHINTX](Questionnaire-MHINTX.html) | [Beispiel](QuestionnaireResponse-MHINTXResponse.html) |
| NTx-Verlaufsbefragung (MHH) | [NTx-Instrumente](NTx-Instrumente.html#ntx-verlaufsbefragung-mhh) | [NTXVERLAUF](Questionnaire-NTXVERLAUF.html) | [Beispiel](QuestionnaireResponse-NTXVERLAUFResponse.html) |
| DEM, MHI, WAI, PROMIS, WHODAS, PHQ-8, GAD-7, EURONET-SOMA, EQ-5D-5L | s. Gesamttabelle | s. Gesamttabelle | — |

### Pilot „50 First Patients“ — gemeinsamer Kern aller Use Cases

Der Pilot ist kein klinischer Use Case, sondern das Programm des ersten Datenaustauschs (Ablauf: [Bereitstellung](Bereitstellung.html#pilot)). **Maschinenlesbar:** [Library/pilot-50fp](Library-pilot-50fp.html) pinnt die **Schnittmenge** der Use Cases versioniert — genau die 12 Bögen, die in den Spalten PSS, AN **und** NTx der Gesamttabelle markiert sind und für die ein Artefakt existiert: DEM, MHI, WAI, PROMIS-GH sowie PROMIS-16, PROMIS-29 + Cognitive Function SF 4a (die „8 Domänen“ des Erhebungsplans), WHODAS 2.0, PHQ-9, GAD-7, EURONET-SOMA und EQ-5D-5L. Nicht enthalten: OPD-SFK (nicht in NTx), PHQ-15 (nur PSS). Die Zusammenstellung ist eine Ableitungsregel aus der Tabelle, keine eigene Auswahl — wer sie ändern will, ändert die Tabelle. Konsumenten, die eine vollständige Batterie brauchen, laden das Manifest des jeweiligen Use Case. **Standortvarianten:** PROMIS-16 und PROMIS-29 + Cognitive Function SF 4a sind Alternativen, zwischen denen ein Standort wählt. Beide stehen in jedem Manifest, weil Empfänger Antworten beider Standorttypen auflösen müssen; die Variante ist je Eintrag über die CRMI-Extension `crmi-intendedUsageContext` markiert als Text, bewusst ohne eigenes CodeSystem. Ein Entweder-oder erzwingen kann erst eine PlanDefinition mit `selectionBehavior = exactly-one`; die ist nicht Teil dieser Version.

Hinweise zum Lebenszyklus von `Questionnaire` zu `QuestionnaireResponse` siehe [Anwendung](Implementation.html); maschinenlesbare Gesamtliste unter [Artefakte](artifacts.html).
