**AN** (*Anorexia Nervosa*) ist die essstörungsbezogene Entität in PCOR-MII — neben [PSS](PSS.html) (Persistent Somatic Syndrome) und [NTx](NTx.html) (Nierentransplantation). Erhoben wird eine Batterie aus generischen Instrumenten (identisch über alle drei Entitäten) und AN-spezifischen Instrumenten zu Essstörungspathologie, Emotionsregulation, Veränderungsmotivation, sozialem Umfeld und Kindheitsbelastungen.

Die entitätsübergreifende Sicht steht unter [Instrumente](Instrumente.html); diese Seite beschreibt die AN-Batterie und sagt zu jedem Bogen, wo seine FHIR-Ressource liegt. **Maschinenlesbar** ist dieselbe Zusammenstellung als [Library/use-case-an](Library-use-case-an.html), die alle 25 Bögen versioniert pinnt. Rechtelage und Status aller Instrumente stehen gesammelt auf [Rechtelage und offene Punkte](Rechtelage.html).

### Die AN-Batterie

Die Spalte **Ressource** führt zur Ressource selbst: **PCOR-MII** — der `Questionnaire` ist in diesem IG definiert, der Link geht auf die Artefaktseite mit `linkId`s und Downloads; **MII PRO** — der `Questionnaire` kommt über die Paket-Abhängigkeit `de.medizininformatikinitiative.kerndatensatz.pros` 2027.0.0-ballot.2 mit, PCOR-MII baut ihn nicht nach; **offen** — für diese Zeile des Erhebungsplans existiert noch kein Artefakt. Die Spalte **Doku** verweist auf die PCOR-MII-Seite des Instruments. Prioritäten und Frequenzen des Erhebungsplans stehen im Blatt *Domain Overview* des Item Level Dictionary und im `display` der Manifest-Einträge.

**Generischer Kern — in PSS, AN und NTx identisch**

| Instrument | Kat. | Items | Ressource | Doku |
|---|---|--:|---|---|
| Demographie (DEM) | DEM | 23¹ | **PCOR-MII** → [`DEM`](Questionnaire-DEM.html) | [Demographie](Demographie.html) |
| Medical History (MHI) — **mit AN-Zusatzitems** zu Gewichtsverlauf und AN-Subtyp | MHI | 48¹ | **PCOR-MII** → [`MHI`](Questionnaire-MHI.html) | [MHI](MHI.html) |
| PROMIS Scale v1.2 — Global Health (Global01, Global02) | GHS | 2 | **PCOR-MII** → [`PROMISGH`](Questionnaire-PROMISGH.html) — 2-Item-Zuschnitt, `derivedFrom` der 10-Item-Skala des Moduls | [PROMIS](PROMIS.html) |
| PROMIS-16 Profile v2.1 — Standortvariante | GHS | 16 | **MII PRO** → [PROMIS-16](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-promis-16.html) | [PROMIS-16](PROMIS-16.html) |
| PROMIS-29 + Cognitive Function SF 4a (die „8 Domänen“ des Erhebungsplans) — Standortvariante | GHS | 29 + 4 | **MII PRO** → PROMIS-29 und Cognitive Function SF 4a | [PROMIS-29](PROMIS-29.html), [Cognitive Function](PROMIS-Cognitive-Function.html) |
| PROMIS NRS — Pain Intensity 1a | GHS | 3 | **offen** als Einzelinstrument; das Item steckt im PROMIS-29 (`promis-global07`) | [PROMIS-29](PROMIS-29.html) |
| WHODAS 2.0, 12-Item | GHS | 14 | **MII PRO** → [WHODAS 2.0](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-whodas-whodas12.html) | [WHODAS 2.0](WHODAS-12.html) |
| PHQ-8 — **Standard** in allen Use Cases; vollständiger PHQ-9 nur bei unmittelbarem Arztkontakt vor Ort | GHS | 8 (9) | **MII PRO** → [PHQ-9](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-phq-9.html) (PHQ-8 = Teilmenge) | [PHQ-9](PHQ-9.html), [PHQ-Übersicht](PHQ.html) |
| PHQ-SI — Suizidalität, stationär | MHA | 1 | **MII PRO** — Item `phq-phq2i` des PHQ-9, kein eigener Bogen | [PHQ-9](PHQ-9.html) |
| PHQ-15 | GHS | 13 | **MII PRO** → [PHQ-15](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-phq-15.html) | [PHQ-15](PHQ-15.html) |
| GAD-7 (auch GAD-2 / PHQ-4 als Teilmengen) | GHS | 7 | **MII PRO** → [GAD-7](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-gad-7.html) | [GAD-7](GAD-7.html) |
| EURONET-SOMA 1 + 2 | GHS | 2 | **MII PRO** → [EURONET-SOMA](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-euronet-soma.html) | [EURONET-SOMA](EURONET-SOMA.html) |
| EQ-5D-5L — nur Outcome, jährlich | GHS | 6 | **MII PRO** → [EQ-5D-5L](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-euroqol-eq5d5l-collectable.html), Variante collectable | — |
| WAI / Work Ability Score | GHS | 3 | **PCOR-MII** → [`WAI`](Questionnaire-WAI.html) — **metadata-only**, keine Itemtexte | [WAI](WAI.html) |
| OPD-SFK — Persönlichkeitsfunktion, Prio C; von einzelnen Standorten erhoben, keine Empfehlung der Use-Case-Leitung | MHA | 12 | **PCOR-MII** → [`OPDSFK`](Questionnaire-OPDSFK.html) | [OPD-SFK](OPD-SFK.html) |

¹ Bei DEM und MHI sind das die Blatt-Items des PCOR-MII-Questionnaire, nicht eine Dictionary-Instrumentenzahl: Beide bündeln Einzelitems mehrerer Quellen (OECD, GI-PS, CPCOR) zu je einem Bogen, im MHI kommen die beiden PCOR-MII-eigenen Hilfsitems zur Einheitenauswahl hinzu. Bei allen übrigen Zeilen ist die Zahl die Item-Anzahl laut Item Level Dictionary.

PROMIS-16 und PROMIS-29 + Cognitive Function sind **Standortvarianten** (entweder/oder); beide stehen im Manifest, damit Empfänger Antworten beider Standorttypen auflösen können (Lesart der „8 Domänen“ bestätigt durch die Use-Case-Leitung, 2026-10-13). Auch in AN ist der **PHQ-8 der Standard**; der vollständige PHQ-9 mit dem Suizidalitäts-Item `phq-phq2i` darf nur eingesetzt werden, wenn auf die Erhebung unmittelbar ein Arztkontakt vor Ort folgt — kein Einsatz im Monitoring (siehe [PHQ-Übersicht](PHQ.html)).

**AN-spezifische Instrumente**

Alle fünf sind **projektspezifische Zuschnitte** publizierter Instrumente (beim ACE die ersten fünf Fragen), vorläufig in PCOR-MII gepflegt ([ADR-003](Designentscheidungen.html)), und **keiner** von ihnen trägt einen Score. Der ERQ-6 galt bis Release 0.3.0 als Ausnahme — er war fälschlich als die offizielle Kurzform ERQ-S ausgewiesen; die Korrektur steht auf der [ERQ-6-Seite](ERQ-6.html).

| Instrument | Kat. | Items | Erfasst | Ressource | Doku | Beispielantwort |
|---|---|--:|---|---|---|---|
| ERQ-6 | DCH | 6 | Emotionsregulation — sechs ERQ-Items | **PCOR-MII** → [`ERQ6`](Questionnaire-ERQ6.html) | [ERQ-6](ERQ-6.html) | [ERQ6Response](QuestionnaireResponse-ERQ6Response.html) |
| EDE-Q6 | DCH | 6 | Essstörungspathologie inkl. Regelblutung | **PCOR-MII** → [`EDEQ6`](Questionnaire-EDEQ6.html) | [EDE-Q6](EDE-Q6.html) | [EDEQ6Response](QuestionnaireResponse-EDEQ6Response.html) |
| ANSOCQ-2 | TCH | 2 | Veränderungsmotivation (Stages of Change) | **PCOR-MII** → [`ANSOCQ2`](Questionnaire-ANSOCQ2.html) | [ANSOCQ-2](ANSOCQ-2.html) | [ANSOCQ2Response](QuestionnaireResponse-ANSOCQ2Response.html) |
| SSUK-2 | EFA | 2 | Soziale Unterstützung / belastende Interaktion | **PCOR-MII** → [`SSUK2`](Questionnaire-SSUK2.html) | [SSUK-2](SSUK-2.html) | [SSUK2Response](QuestionnaireResponse-SSUK2Response.html) |
| ACE + Zeitangaben | EFA | 5 + 6 | Belastende Kindheitserfahrungen; die sechs `UKHD-CTT`-Zeitangaben per `enableWhen` an `ace1`–`ace3` gebunden (PCOR-MII-Komposit) | **PCOR-MII** → [`ACE`](Questionnaire-ACE.html) | [ACE](ACE.html) | [ACEResponse](QuestionnaireResponse-ACEResponse.html) |
| UKHD-EDP | DCH | 11 | Essstörungspathologie — vermutlich EDI-2-Zuschnitt | **PCOR-MII** → [`UKHDEDP`](Questionnaire-UKHDEDP.html) — **metadata-only** | [UKHD-EDP](UKHD-EDP.html) | [UKHDEDPMonitoringResponse](QuestionnaireResponse-UKHDEDPMonitoringResponse.html) |

**UKHD-Zusatzbögen** — Itemgruppen, die kein publiziertes Instrument abbilden und vom Standort Heidelberg für die Erhebung zusammengestellt sind, sämtlich Priorität A. Sechs sind als **je ein eigenes Questionnaire** modelliert, eines je Dictionary-Gruppe ([UKHD-Zusatzitems](UKHD-Zusatzitems.html)); `UKHD-CTT` steht im ACE (siehe oben), `UKHD-BI` ist bewusst nicht modelliert.

| Bogen | Kat. | Items | Erfasst | Ressource | Beispielantwort |
|---|---|--:|---|---|---|
| UKHD-PT | TCH | 2 | Vorbehandlung: Psychotherapie, Arztbesuche | [`UKHDPT`](Questionnaire-UKHDPT.html) | [UKHDPTResponse](QuestionnaireResponse-UKHDPTResponse.html) |
| UKHD-ANB | DCH | 2 (+2) | Essstörungsanamnese: Dauer, niedrigster BMI | [`UKHDANB`](Questionnaire-UKHDANB.html) | [UKHDANBResponse](QuestionnaireResponse-UKHDANBResponse.html) |
| UKHD-CT | TCH | 1 | Aktueller Behandlungsstatus | [`UKHDCT`](Questionnaire-UKHDCT.html) | [UKHDCTResponse](QuestionnaireResponse-UKHDCTResponse.html) |
| UKHD-LE | EFA | 4 | Belastende Lebensereignisse | [`UKHDLE`](Questionnaire-UKHDLE.html) | [UKHDLEResponse](QuestionnaireResponse-UKHDLEResponse.html) |
| UKHD-ND | DCH | 3 | Neue Diagnosen seit letzter Befragung | [`UKHDND`](Questionnaire-UKHDND.html) | [UKHDNDMonitoringResponse](QuestionnaireResponse-UKHDNDMonitoringResponse.html) — zum Initial-Termin nicht erhoben |
| UKHD-D | DCH | 2 | Diagnosen bei Aufnahme | [`UKHDD`](Questionnaire-UKHDD.html) | [UKHDDResponse](QuestionnaireResponse-UKHDDResponse.html) |
| `UKHD-BI` | — | 3 | Körperbild — visuelle Bildskala; die Erhebung läuft noch nicht damit, die Bildvorlage fehlt im Dictionary | **offen** — bewusst nicht modelliert | — |

Für diese Gruppen liegt keine dokumentierte Freigabe vor, und die Herkunft ihres Wortlauts ist ungeklärt — das `UKHD`-Präfix ist ein Zusammenstellungs-Etikett des Dictionary, keine Autorenschaftsangabe. Die Modellierung ist eine bewusste Projektentscheidung zur Erprobung; Einzelheiten unter [Rechtelage und offene Punkte](Rechtelage.html#standortgruppen).

**Scores**

| Score | Ressource | Doku |
|---|---|---|
| PROPr — PROMIS-Preference Utility | **PCOR-MII** → [`PcorObsDefProprUtility`](ObservationDefinition-PcorObsDefProprUtility.html) — vorläufig, Zuständigkeit upstream | [PROMIS-16](PROMIS-16.html#propr) |
| PROMIS-Domänen-T-Scores (PROMIS-29) | **MII PRO** — acht `ObservationDefinition`s im Paket | [PROMIS-29](PROMIS-29.html) |
| PROMIS-Domänen-T-Scores (PROMIS-16) | **offen** — upstream Roadmap 2027; die acht Codes des PROMIS-29 gelten **nicht** für PROMIS-16 | [PROMIS-16](PROMIS-16.html) |
| Physical / Mental Health Summary (PHS, PCS, MHS, MCS) | **offen** — im Plan Prio A, kein Artefakt | *Domain Overview* des Item Level Dictionary |
| EQ-5D-5L Index | **MII PRO** — Index-Score und CQL upstream | — |
| OPD-SFK Globalwert | **PCOR-MII** — berechnetes Item `opd-sfk-globalwert` im Bogen | [OPD-SFK](OPD-SFK.html) |

Die fünf AN-Zuschnitte und die UKHD-Bögen tragen keinen Score (siehe unten).

### Die Zuschnitte folgen einer dokumentierten Auswahlregel

Vier der fünf AN-Instrumente sind Zuschnitte, und die DIZ-Implementierungsliste nennt in ihrer Spalte *„verkürzte Version?“* die Regel dahinter — bei ERQ-6, EDE-Q6, ANSOCQ-2 und SSUK-2 gleichlautend:

> „nicht vollständig verwendet, sondern nur das Item mit der höchsten Trennschärfe pro Skala“

Das ist wichtiger, als es aussieht: Die Zuschnitte sind damit **nicht willkürlich gekürzt**, sondern nach einem angegebenen psychometrischen Kriterium gebildet — je Skala oder Faktor das trennschärfste Item. Für drei der vier ist diese Regel in PCOR-MII gegen die publizierte Struktur des Originalinstruments nachgeprüft: beim [EDE-Q6](EDE-Q6.html) gegen die vier EDE-Q-Subskalen, beim [ANSOCQ-2](ANSOCQ-2.html) gegen die zwei Faktoren der deutschen Validierung, beim [SSUK-2](SSUK-2.html) gegen die zwei gegenläufigen SSUK-Dimensionen. Sie trifft jeweils zu.

**Eine Ausnahme, die man kennen muss:** Beim [ERQ-6](ERQ-6.html) passt die Formulierung *„das Item … pro Skala“* im Singular nicht — dort sind es **drei** Items je Subskala des Vollinstruments. Bis Release 0.3.0 stand hier, der Bogen sei die publizierte Kurzform ERQ-S und trage deshalb als einziger ein validiertes Scoring. **Das war falsch** — der ERQ-S besteht aus anderen ERQ-Items; der Score ist zurückgezogen.

Der [ACE](ACE.html) trägt in derselben Spalte eine andere Angabe — *„die ersten 5 Fragen“* —, ist also keine Trennschärfe-Auswahl, sondern der vordere Block des Instruments (Misshandlung und Vernachlässigung ohne die Haushalts-Dysfunktions-Fragen).

Für die Auswertung folgt daraus durchgehend dasselbe: **Ein trennschärfstes Item je Skala bildet die Skala nicht ab.** Deshalb trägt **keiner** dieser Zuschnitte einen Score — Einzelheiten auf den jeweiligen Instrumentenseiten und in [ADR-003](Designentscheidungen.html). Die Antwortcodes tragen vorsorglich `itemWeight`, damit eine spätere Auswertung möglich bleibt, sobald eine Regel fachlich abgestimmt ist ([offener Punkt](Rechtelage.html#an-scoring)).

### Beispieldatensatz

Die AN-Beispielantworten gehören zu **einer** Patientin ([pcor-mii-exa-patient-an](Patient-pcor-mii-exa-patient-an.html)) und zwei Terminen: dem Initial-/Screening-Termin 18.06.2026 ([Bundle](Bundle-pcor-mii-exa-bundle-an-initial.html), 13 Entries) und dem Monitoring-Termin 30.07.2026 ([Bundle](Bundle-pcor-mii-exa-bundle-an-monitoring.html), 10 Entries) — leicht gebessert, nicht remittiert, mit der ersten UKHD-ND-Antwort, einer bewussten Teilantwort zu UKHD-PT und der Antwort auf den metadata-only-Bogen UKHD-EDP. Was jede Antwort belegt, warum UKHD-ND zum Initial-Termin fehlt und wie die Werte gewählt sind, steht auf [Beispiele](Beispiele.html).

### Nicht in AN erhoben

Zur Abgrenzung, weil diese Instrumente in PCOR-MII vorhanden sind und in der Gesamtübersicht daneben stehen: **PSS-only** sind [PHQ-D Panik-Block](PHQ-Panik.html), [PC-PTSD](PC-PTSD.html), [SCOFF](SCOFF.html), [ISR-Z](ISR-Z.html), [SSD-12](SSD-12.html), [Whiteley-7](WI-7.html), [EXPECT](EXPECT.html), [IPQ-S](IPQ-S.html), [GSLTPAQ](GSLTPAQ.html) und die UKE-Versorgungsitems. **NTx-only** sind [BAASIS, ABQ, MTSOSD-R59, MHI-NTx und die NTx-Verlaufsbefragung](NTx.html).

### Rechtelage und Status

Die fünf AN-Instrumente sind laut DIZ-Implementierungsliste frei publizierbar; für [EDE-Q6](EDE-Q6.html) (verlegte deutsche Fassung) und die deutsche Fassung des [ACE](ACE.html) (ACE-D) ist die Zustimmung der Rechteinhaber:innen dennoch einzuholen. Die UKHD-Gruppen haben keine dokumentierte Freigabe, [UKHD-EDP](UKHD-EDP.html) ist metadata-only. Alle AN-eigenen Ressourcen sind **vorläufig in PCOR-MII** gepflegt, bis sie offiziell abgestimmt sind und Teile ins MII-PRO-Modul aufgenommen werden können ([ADR-003](Designentscheidungen.html)). Die vollständige Lage je Instrument, die offenen Fragen und wer sie beantworten muss: [Rechtelage und offene Punkte](Rechtelage.html).

Quellen dieser Seite: Blatt `Item Level Dictionary AN` und `Domain Overview` des Item Level Dictionary (`MASTER_3EntitiesOverview.xlsx`, nicht Teil dieses Repositories), DIZ-Implementierungsliste PCOR-MII; die Zuordnung PCOR-MII/MII PRO entspricht dem Manifest [use-case-an](Library-use-case-an.html). Hinweise zum Lebenszyklus von `Questionnaire` zu `QuestionnaireResponse` siehe [Anwendung](Implementation.html); alle Artefakte unter [Artefakte](artifacts.html).
