Diese Seite führt **alle Beispiele des IG an einer Stelle**: drei synthetische Beispielpatient:innen, vier Termin-Bundles und 46 Beispielantworten. Die Use-Case-Seiten [PSS](PSS.html), [AN](AN.html) und [NTx](NTx.html) verweisen hierher; die Tabellen dort nennen je Bogen die Beispielantwort, die ihn belegt.

Die Beispiele sind keine unverbundenen Testdaten, sondern **zusammenhängende Datensätze**: Jede Antwort gehört zu einer Person und einem Erhebungstermin, und die Antwortwerte sind aufeinander abgestimmt, nicht gewürfelt. Was zu einem Termin nicht erhoben wird, **fehlt** in dessen Bundle, statt leer dazustehen — so wird die `TIMING`-Spalte des Item Level Dictionary sichtbar, die in den Questionnaires bewusst nicht modelliert ist.

### Die drei Beispielpatient:innen

| Patient | Use Case | Profil | Termine |
|---|---|---|---|
| [pcor-mii-exa-patient-an](Patient-pcor-mii-exa-patient-an.html) | AN | Patientin, geboren 1985. Anorexia nervosa, restriktiver Typ, erste Anzeichen um 2018, seit 2020 in Behandlung, Gewicht teilrestituiert | Initial-/Screening-Termin 18.06.2026, Monitoring-Termin 30.07.2026 |
| [pcor-mii-exa-patient-pss](Patient-pcor-mii-exa-patient-pss.html) | PSS | Patient, geboren 1977. Persistierende somatische Symptome seit etwa zwei Jahren (Erschöpfung, Rücken- und Magen-Darm-Beschwerden); mittelgradige somatische Belastung (PHQ-15 = 12, SSD-12 = 22), leichte depressive (PHQ-8 = 9) und ängstliche (GAD-7 = 7) Symptomatik, mäßig reduzierte Arbeitsfähigkeit (WAI 6/10) | Screening-Termin 25.06.2026 |
| [pcor-mii-exa-patient-ntx](Patient-pcor-mii-exa-patient-ntx.html) | NTx | Patient, geboren 1968. Empfänger einer Lebendspende am 14.11.2024, erste Spenderniere, vor Transplantation Hämodialyse in der Dialysepraxis; unter Immunsuppression mit Tremor und Durchfall als belastendsten Nebenwirkungen, gelegentlich vergessene Einnahmen | Erstbefragung 06.10.2026 (Screening und erstes Quartals-Monitoring an einem Termin) |

Die Patient:innen tragen nur Geschlecht, Geburtsdatum und Sprache; alles Weitere steht in den Antworten. Die generischen Bögen (DEM, MHI, PROMIS, PHQ, WHODAS …) sind bei der AN-Patientin und beim PSS-Patienten beantwortet; der NTx-Patient zeigt nur die NTx-eigenen Bögen.

### Die vier Termin-Bundles

Je Erhebungstermin ein `Bundle` vom Typ `collection` mit der Patientenressource und allen Antworten des Termins. Die Bundles werden mit `scripts/build-example-bundles.py` aus den Einzelantworten erzeugt und eingecheckt; die Termin-Zuordnung ist dort explizit gepflegt — wer eine Antwort ergänzt, trägt sie dort ein und baut neu.

| Bundle | Patient | Termin | Entries | Inhalt |
|---|---|---|--:|---|
| [AN — Initial](Bundle-pcor-mii-exa-bundle-an-initial.html) | AN | 18.06.2026 | 13 | DEM, MHI, die fünf AN-Instrumente und fünf UKHD-Zusatzbögen; UKHD-ND fehlt bewusst, weil keines seiner Items zum Initial-Termin erhoben wird |
| [AN — Monitoring](Bundle-pcor-mii-exa-bundle-an-monitoring.html) | AN | 30.07.2026 | 10 | neun Verlaufsantworten sechs Wochen später, leicht gebessert, nicht remittiert: ERQ-6, EDE-Q6, ANSOCQ-2, SSUK-2, UKHD-PT (nur `bdkm16`), UKHD-CT, UKHD-LE, die **erste UKHD-ND-Antwort** und die metadata-only-Antwort zu UKHD-EDP. ACE, UKHD-ANB, UKHD-D und `bdkm15` sind Initial-Items und werden nicht wiederholt |
| [PSS — Screening](Bundle-pcor-mii-exa-bundle-pss-screening.html) | PSS | 25.06.2026 | 21 | die vollständige PSS-Batterie: DEM, MHI, OPD-SFK, GSLTPAQ, EXPECT, IPQ-S, WAI und PHQ-D Panik-Block als PCOR-MII-Bögen plus zwölf Antworten auf MII-PRO-Questionnaires (PHQ-9, GAD-7, PHQ-15, SSD-12, WHODAS-12, EURONET-SOMA, WI-7, SCOFF, ISR-Z, PC-PTSD, PROMIS-16, PROMIS Cognitive Function). Der vollständige PHQ-9 ist beantwortet, weil der Screening-Termin ein Vor-Ort-Termin mit unmittelbarem Arztkontakt ist |
| [NTx — Erstbefragung](Bundle-pcor-mii-exa-bundle-ntx-erstbefragung.html) | NTx | 06.10.2026 | 6 | MHI-NTx (Screening), NTx-Verlaufsbefragung und die drei **metadata-only-Antworten** zu BAASIS, ABQ und MTSOSD-R59 (nur `linkId`s und Codes, kein Wortlaut) |

Die Antworten auf MII-PRO-Questionnaires liegen als JSON unter `input/examples/` und referenzieren die Upstream-Canonicals mit Versionspin `|2027.0.0-ballot.2`; die Antworten auf PCOR-MII-Bögen sind FHIR-Shorthand-Instanzen mit Pin `|0.9.0`. Beide Formen stehen gleichberechtigt im Bundle.

### Alle Beispielantworten

Die Spalte **Zeigt** nennt, was die Antwort über die bloße Gültigkeit hinaus belegt. Die Begründung der Werte steht je Beispiel im Kopfkommentar der FSH-Datei.

**AN — Initial-/Screening-Termin 18.06.2026**

| Beispielantwort | Bogen | Zeigt |
|---|---|---|
| [DEMResponse](QuestionnaireResponse-DEMResponse.html) | [DEM](Questionnaire-DEM.html) | Soziodemographie als ISiKFormularDaten (kein PRO); Ja/Nein als SNOMED CT inline |
| [MHIResponse](QuestionnaireResponse-MHIResponse.html) | [MHI](Questionnaire-MHI.html) | Vorgeschichte mit der AN-Gruppe `gewicht-an` (Gewichtsverlauf, AN-Subtyp) |
| [ERQ6Response](QuestionnaireResponse-ERQ6Response.html) | [ERQ6](Questionnaire-ERQ6.html) | niedrige Neubewertung bei hoher Unterdrückung — das für AN beschriebene Muster; Items in Bogenreihenfolge, nicht nach Subskala gruppiert |
| [EDEQ6Response](QuestionnaireResponse-EDEQ6Response.html) | [EDEQ6](Questionnaire-EDEQ6.html) | residuelle Pathologie; belegt die per `enableWhen` abhängige Frage `edeq30` |
| [ANSOCQ2Response](QuestionnaireResponse-ANSOCQ2Response.html) | [ANSOCQ2](Questionnaire-ANSOCQ2.html) | mittlere Veränderungsmotivation; `language` = `de-CH`, weil die validierte Schweizer Fassung vorgelegt wurde |
| [SSUK2Response](QuestionnaireResponse-SSUK2Response.html) | [SSUK2](Questionnaire-SSUK2.html) | gegenläufige Items: hoch bei der unterstützenden, niedrig bei der belastenden Interaktion — ein mittleres Profil hätte das verdeckt |
| [ACEResponse](QuestionnaireResponse-ACEResponse.html) | [ACE](Questionnaire-ACE.html) | zwei bejahte Items der emotionalen Dimension; von den drei Zeitangabe-Gruppen ist nur die erste belegt, weil nur `ace1` bejaht ist |
| [UKHDPTResponse](QuestionnaireResponse-UKHDPTResponse.html) | [UKHDPT](Questionnaire-UKHDPT.html) | Vorbehandlung, beide Items (`bdkm15` ist ein Initial-Item) |
| [UKHDANBResponse](QuestionnaireResponse-UKHDANBResponse.html) | [UKHDANB](Questionnaire-UKHDANB.html) | Essstörungsanamnese mit Einheitenauswahl |
| [UKHDCTResponse](QuestionnaireResponse-UKHDCTResponse.html) | [UKHDCT](Questionnaire-UKHDCT.html) | aktueller Behandlungsstatus |
| [UKHDLEResponse](QuestionnaireResponse-UKHDLEResponse.html) | [UKHDLE](Questionnaire-UKHDLE.html) | belastende Lebensereignisse zum Screening |
| [UKHDDResponse](QuestionnaireResponse-UKHDDResponse.html) | [UKHDD](Questionnaire-UKHDD.html) | Diagnosen bei Aufnahme als Freitext |

**AN — Monitoring-Termin 30.07.2026**

| Beispielantwort | Bogen | Zeigt |
|---|---|---|
| [ERQ6MonitoringResponse](QuestionnaireResponse-ERQ6MonitoringResponse.html) | [ERQ6](Questionnaire-ERQ6.html) | Unterdrückung sinkt leicht, Neubewertung steigt leicht — Verlauf um ein bis zwei Stufen |
| [EDEQ6MonitoringResponse](QuestionnaireResponse-EDEQ6MonitoringResponse.html) | [EDEQ6](Questionnaire-EDEQ6.html) | Essstörungspathologie geht etwas zurück |
| [ANSOCQ2MonitoringResponse](QuestionnaireResponse-ANSOCQ2MonitoringResponse.html) | [ANSOCQ2](Questionnaire-ANSOCQ2.html) | Veränderungsmotivation nimmt zu — genau dafür ist die Kurzform das Monitoring-Instrument des Erhebungsplans |
| [SSUK2MonitoringResponse](QuestionnaireResponse-SSUK2MonitoringResponse.html) | [SSUK2](Questionnaire-SSUK2.html) | soziale Unterstützung im Verlauf |
| [UKHDPTMonitoringResponse](QuestionnaireResponse-UKHDPTMonitoringResponse.html) | [UKHDPT](Questionnaire-UKHDPT.html) | **Teilantwort**: nur `bdkm16` (Arztbesuche, „at“); ein leeres `bdkm15` wäre falsch |
| [UKHDCTMonitoringResponse](QuestionnaireResponse-UKHDCTMonitoringResponse.html) | [UKHDCT](Questionnaire-UKHDCT.html) | Behandlungsstatus im Verlauf |
| [UKHDLEMonitoringResponse](QuestionnaireResponse-UKHDLEMonitoringResponse.html) | [UKHDLE](Questionnaire-UKHDLE.html) | nur das Monitoring-Item, verneint — `lifev_text` bleibt per `enableWhen` gesperrt |
| [UKHDNDMonitoringResponse](QuestionnaireResponse-UKHDNDMonitoringResponse.html) | [UKHDND](Questionnaire-UKHDND.html) | die **erste ND-Antwort überhaupt** (bejaht, mit Freitext) — die Gruppe wird nur zwischen Aufnahme und Entlassung erhoben |
| [UKHDEDPMonitoringResponse](QuestionnaireResponse-UKHDEDPMonitoringResponse.html) | [UKHDEDP](Questionnaire-UKHDEDP.html) | Antwort auf einen **metadata-only-Bogen**: nur `linkId`s und Stufenwerte — der Beleg, dass metadata-only die Nachnutzung von Antworten nicht behindert |

**PSS — Screening-Termin 25.06.2026**

| Beispielantwort | Bogen | Zeigt |
|---|---|---|
| [DEMPSSResponse](QuestionnaireResponse-DEMPSSResponse.html) | [DEM](Questionnaire-DEM.html) | Soziodemographie des PSS-Patienten |
| [MHIPSSResponse](QuestionnaireResponse-MHIPSSResponse.html) | [MHI](Questionnaire-MHI.html) | Vorgeschichte **ohne** die AN-Gruppe; Diagnose, Anthropometrie und Medikation der PSS-Geschichte |
| [OPDSFKResponse](QuestionnaireResponse-OPDSFKResponse.html) | [OPDSFK](Questionnaire-OPDSFK.html) | zwölf Items, der berechnete Globalwert (Summe 26 von 48; bis 0.9.0 stand hier fälschlich ein Mittelwert) und die drei explorativen Subskalen (11, 8, 7) |
| [GSLTPAQResponse](QuestionnaireResponse-GSLTPAQResponse.html) | [GSLTPAQ](Questionnaire-GSLTPAQ.html) | Freizeitaktivität |
| [EXPECTResponse](QuestionnaireResponse-EXPECTResponse.html) | [EXPECT](Questionnaire-EXPECT.html) | drei NRS-Werte zur Verlaufserwartung |
| [IPQSResponse](QuestionnaireResponse-IPQSResponse.html) | [IPQS](Questionnaire-IPQS.html) | offene Ursachenfrage als Freitext |
| [WAIResponse](QuestionnaireResponse-WAIResponse.html) | [WAI](Questionnaire-WAI.html) | Antwort auf den metadata-only-Bogen WAI (6/10) |
| [PHQPANIKResponse](QuestionnaireResponse-PHQPANIKResponse.html) | [PHQPANIK](Questionnaire-PHQPANIK.html) | Panik-Block mit Sprungregel: `phq-phq3a` bejaht, damit sind die Folgeitems freigeschaltet und beantwortet (3b ja, 3c nein, 3d ja); der Auszug auf [Anwendung](Implementation.html) stammt hieraus |
| [PHQ-9](QuestionnaireResponse-pcor-mii-exa-pss-phq-9-response.html) | MII PRO | vollständiger PHQ-9 (PHQ-8 = 9 plus Suizidalitäts-Item), zulässig nur am Vor-Ort-Termin |
| [GAD-7](QuestionnaireResponse-pcor-mii-exa-pss-gad-7-response.html) | MII PRO | GAD-7 = 7 |
| [PHQ-15](QuestionnaireResponse-pcor-mii-exa-pss-phq-15-response.html) | MII PRO | PHQ-15 = 12, Displays aus den deutschen Designations des Modul-CodeSystems |
| [SSD-12](QuestionnaireResponse-pcor-mii-exa-pss-ssd-12-response.html) | MII PRO | SSD-12 = 22 |
| [WHODAS-12](QuestionnaireResponse-pcor-mii-exa-pss-whodas-12-response.html) | MII PRO | Funktionsfähigkeit |
| [EURONET-SOMA](QuestionnaireResponse-pcor-mii-exa-pss-euronet-soma-response.html) | MII PRO | zwei Einzelitems |
| [WI-7](QuestionnaireResponse-pcor-mii-exa-pss-wi-7-response.html) | MII PRO | Gesundheitsangst |
| [SCOFF](QuestionnaireResponse-pcor-mii-exa-pss-scoff-response.html) | MII PRO | Essstörungs-Screening negativ |
| [ISR-Z](QuestionnaireResponse-pcor-mii-exa-pss-isr-z-response.html) | MII PRO | Zwangssymptomatik |
| [PC-PTSD](QuestionnaireResponse-pcor-mii-exa-pss-pc-ptsd-response.html) | MII PRO | PTBS-Screen: ein bejahtes Item, Score 1 |
| [PROMIS-16](QuestionnaireResponse-pcor-mii-exa-promis-16-response.html) | MII PRO | acht Domänen; Standortvariante kurz |
| [PROMIS Cognitive Function](QuestionnaireResponse-pcor-mii-exa-promis-cognitive-function-response.html) | MII PRO | SF 4a als achte Domäne der Standortvariante PROMIS-29 + Cognitive Function |

**NTx — Erstbefragung 06.10.2026**

| Beispielantwort | Bogen | Zeigt |
|---|---|---|
| [MHINTXResponse](QuestionnaireResponse-MHINTXResponse.html) | [MHINTX](Questionnaire-MHINTX.html) | Transplantationsanamnese: Lebendspende, Datum, erste Spenderniere — ISiKFormularDaten wie der MHI |
| [NTXVERLAUFResponse](QuestionnaireResponse-NTXVERLAUFResponse.html) | [NTXVERLAUF](Questionnaire-NTXVERLAUF.html) | erstes Quartals-Monitoring: Dialysevorgeschichte, Blutdruck mit UCUM-Einheiten, Ja/Nein als SNOMED CT |
| [BAASISResponse](QuestionnaireResponse-BAASISResponse.html) | [BAASIS](Questionnaire-BAASIS.html) | gelegentlich vergessene Einnahmen; nur Items mit erfüllter `enableWhen`-Bedingung beantwortet — und damit der Auslöser für den ABQ |
| [ABQResponse](QuestionnaireResponse-ABQResponse.html) | [ABQ](Questionnaire-ABQ.html) | 16 Stufenwerte, Summe 26 im berechneten Item |
| [MTSOSDR59Response](QuestionnaireResponse-MTSOSDR59Response.html) | [MTSOSDR59](Questionnaire-MTSOSDR59.html) | elf aufgetretene Symptome, Belastung nur dort; Tremor und Durchfall am belastendsten; keine Freitext-Symptome |

Die Antworten zu BAASIS, ABQ und MTSOSD-R59 tragen nur `linkId`s und Codes, keinen Wortlaut — genau so, wie Antworten auf lizenzierte Bögen im Austausch ankommen ([ADR-014](Designentscheidungen.html)).

### Validierungsstand

Alle Beispiele und Bundles sind mit dem IG Publisher und dem HL7 Validator gegen das MII-PRO-Modul geprüft: **0 Errors**. Nicht warnungsfrei — die verbleibenden Warnungsklassen (`dom-6` fehlende Narrative, Display-Hinweise für Codes ohne deutsche Designation auf dem Terminologieserver, Sprache `de-DE` gegen Narrativ `de`) sind bekannt und akzeptiert; was sie bedeuten und wann sie nicht ignoriert werden dürfen, steht auf [Validierung](Validierung.html). Dort auch die drei Wege, eigene Bundles zu prüfen.

Hinweise zum Lebenszyklus von `Questionnaire` zu `QuestionnaireResponse` siehe [Anwendung](Implementation.html); alle Artefakte unter [Artefakte](artifacts.html).
