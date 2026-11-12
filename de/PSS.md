# PSS (Persistent Somatic Syndrome) - PCOR-MII Implementation Guide v0.9.0

## PSS (Persistent Somatic Syndrome)

**PSS** (**Persistent Somatic Syndrome**) ist die psychosomatische Entität in PCOR-MII — neben [AN](AN.md) (Anorexia Nervosa) und [NTx](NTx.md) (Nierentransplantation). Erhoben wird eine Batterie aus generischen Instrumenten (identisch über alle drei Entitäten) und PSS-spezifischen Instrumenten zu somatischer Belastung, Gesundheitsangst, psychischer Komorbidität und Versorgungsinanspruchnahme.

Die entitätsübergreifende Sicht steht unter [Instrumente](Instrumente.md); diese Seite beschreibt die PSS-Batterie und sagt zu jedem Bogen, wo seine FHIR-Ressource liegt. **Maschinenlesbar** ist dieselbe Zusammenstellung als [Library/use-case-pss](Library-use-case-pss.md), die alle 23 Bögen versioniert pinnt. Rechtelage und Status aller Instrumente stehen gesammelt auf [Rechtelage und offene Punkte](Rechtelage.md).

### Die PSS-Batterie

Die Spalte **Ressource** führt zur Ressource selbst: **PCOR-MII** — der `Questionnaire` ist in diesem IG definiert; **MII PRO** — der `Questionnaire` kommt über die Paket-Abhängigkeit `de.medizininformatikinitiative.kerndatensatz.pros` 2027.0.0-ballot.2 mit, PCOR-MII baut ihn nicht nach; **offen** — für diese Zeile des Erhebungsplans existiert noch kein Artefakt. Die Spalte **Beispielantwort** zeigt die Antwort des PSS-Beispielpatienten zum Screening-Termin 25.06.2026 (siehe unten). Prioritäten und Frequenzen stehen im Blatt **Domain Overview** des Item Level Dictionary und im `display` der Manifest-Einträge.

**Generischer Kern — in PSS, AN und NTx identisch**

| | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- |
| Demographie (DEM) | DEM | 23¹ | **PCOR-MII**→[`DEM`](Questionnaire-DEM.md) | [Demographie](Demographie.md) | [DEMPSSResponse](QuestionnaireResponse-DEMPSSResponse.md) |
| Medical History (MHI) | MHI | 48¹ | **PCOR-MII**→[`MHI`](Questionnaire-MHI.md) | [MHI](MHI.md) | [MHIPSSResponse](QuestionnaireResponse-MHIPSSResponse.md) |
| PROMIS Scale v1.2 — Global Health (Global01, Global02) | GHS | 2 | **PCOR-MII**→[`PROMISGH`](Questionnaire-PROMISGH.md)— 2-Item-Zuschnitt,`derivedFrom`der 10-Item-Skala des Moduls | [PROMIS](PROMIS.md) | — |
| PROMIS-16 Profile v2.1 — Standortvariante | GHS | 16 | **MII PRO**→[PROMIS-16](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-promis-16.html) | [PROMIS-16](PROMIS-16.md) | [Beispiel](QuestionnaireResponse-pcor-mii-exa-promis-16-response.md) |
| PROMIS-29 + Cognitive Function SF 4a (die „8 Domänen“ des Erhebungsplans) — Standortvariante | GHS | 29 + 4 | **MII PRO**→ PROMIS-29 und Cognitive Function SF 4a | [PROMIS-29](PROMIS-29.md),[Cognitive Function](PROMIS-Cognitive-Function.md) | [Cognitive Function](QuestionnaireResponse-pcor-mii-exa-promis-cognitive-function-response.md) |
| PROMIS NRS — Pain Intensity 1a | GHS | 3 | **offen**als Einzelinstrument; das Item steckt im PROMIS-29 (`promis-global07`) | [PROMIS-29](PROMIS-29.md) | — |
| WHODAS 2.0, 12-Item | GHS | 14 | **MII PRO**→[WHODAS 2.0](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-whodas-whodas12.html) | [WHODAS 2.0](WHODAS-12.md) | [Beispiel](QuestionnaireResponse-pcor-mii-exa-pss-whodas-12-response.md) |
| PHQ-8 —**Standard**in allen Use Cases; vollständiger PHQ-9 nur bei unmittelbarem Arztkontakt vor Ort | GHS | 8 (9) | **MII PRO**→[PHQ-9](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-phq-9.html)(PHQ-8 = Teilmenge) | [PHQ-9](PHQ-9.md),[PHQ-Übersicht](PHQ.md) | [Beispiel](QuestionnaireResponse-pcor-mii-exa-pss-phq-9-response.md)(vollständiger PHQ-9, Vor-Ort-Termin) |
| PHQ-SI — Suizidalität, stationär | MHA | 1 | **MII PRO**— Item`phq-phq2i`des PHQ-9, kein eigener Bogen | [PHQ-9](PHQ-9.md) | im PHQ-9-Beispiel |
| PHQ-15 | GHS | 13 | **MII PRO**→[PHQ-15](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-phq-15.html) | [PHQ-15](PHQ-15.md) | [Beispiel](QuestionnaireResponse-pcor-mii-exa-pss-phq-15-response.md) |
| GAD-7 (auch GAD-2 / PHQ-4 als Teilmengen) | GHS | 7 | **MII PRO**→[GAD-7](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-gad-7.html) | [GAD-7](GAD-7.md) | [Beispiel](QuestionnaireResponse-pcor-mii-exa-pss-gad-7-response.md) |
| EURONET-SOMA 1 + 2 | GHS | 2 | **MII PRO**→[EURONET-SOMA](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-euronet-soma.html) | [EURONET-SOMA](EURONET-SOMA.md) | [Beispiel](QuestionnaireResponse-pcor-mii-exa-pss-euronet-soma-response.md) |
| EQ-5D-5L — nur Outcome, jährlich | GHS | 6 | **MII PRO**→[EQ-5D-5L](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-euroqol-eq5d5l-collectable.html), Variante collectable | — | — |
| WAI / Work Ability Score | GHS | 3 | **PCOR-MII**→[`WAI`](Questionnaire-WAI.md)—**metadata-only**, keine Itemtexte | [WAI](WAI.md) | [WAIResponse](QuestionnaireResponse-WAIResponse.md) |
| OPD-SFK — Persönlichkeitsfunktion; von einzelnen Standorten erhoben, keine Empfehlung der Use-Case-Leitung | MHA | 12 | **PCOR-MII**→[`OPDSFK`](Questionnaire-OPDSFK.md) | [OPD-SFK](OPD-SFK.md) | [OPDSFKResponse](QuestionnaireResponse-OPDSFKResponse.md) |

¹ Bei DEM und MHI sind das die Blatt-Items des PCOR-MII-Questionnaire, nicht eine Dictionary-Instrumentenzahl: Beide bündeln Einzelitems mehrerer Quellen (OECD, GI-PS, CPCOR) zu je einem Bogen. Bei allen übrigen Zeilen ist die Zahl die Item-Anzahl laut Item Level Dictionary.

PROMIS-16 und PROMIS-29 + Cognitive Function sind **Standortvarianten** (entweder/oder); beide stehen im Manifest, damit Empfänger Antworten beider Standorttypen auflösen können.

**PSS-spezifische Instrumente**

| | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| SSD-12 | DCH | 12 | B-Kriterien der somatischen Belastungsstörung | **MII PRO**→[SSD-12](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-ssd-12.html) | [SSD-12](SSD-12.md) | [Beispiel](QuestionnaireResponse-pcor-mii-exa-pss-ssd-12-response.md) |
| WI-7 | DCH | 7 | Gesundheitsangst (Whiteley-Index) | **MII PRO**→[Whiteley-7](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-wi-7.html) | [WI-7](WI-7.md) | [Beispiel](QuestionnaireResponse-pcor-mii-exa-pss-wi-7-response.md) |
| SCOFF | MHA | 5 | Essstörungs-Screening | **MII PRO**→[SCOFF](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-scoff.html) | [SCOFF](SCOFF.md) | [Beispiel](QuestionnaireResponse-pcor-mii-exa-pss-scoff-response.md) |
| ISR-Z | MHA | 3 | ICD-10-Symptom-Rating, Zusatzskala Zwang | **MII PRO**→[ISR-Z](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-isr-z.html) | [ISR-Z](ISR-Z.md) | [Beispiel](QuestionnaireResponse-pcor-mii-exa-pss-isr-z-response.md) |
| PC-PTSD | MHA | 4 | PTBS-Screening, Primärversorgung | **MII PRO**→[PC-PTSD](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-pc-ptsd.html) | [PC-PTSD](PC-PTSD.md) | [Beispiel](QuestionnaireResponse-pcor-mii-exa-pss-pc-ptsd-response.md) |
| PHQ-D Panik-Block | MHA | 4 | Angst-/Panikattacken (`phq3a`–`phq3d`, ja/nein) | **PCOR-MII**→[`PHQPANIK`](Questionnaire-PHQPANIK.md)— in PCOR-MII gepflegt ([ADR-012](Designentscheidungen.md)) | [PHQ-D Panik-Block](PHQ-Panik.md) | [PHQPANIKResponse](QuestionnaireResponse-PHQPANIKResponse.md) |
| GSLTPAQ | TCH | 6 | Körperliche Freizeitaktivität | **PCOR-MII**→[`GSLTPAQ`](Questionnaire-GSLTPAQ.md) | [GSLTPAQ](GSLTPAQ.md) | [GSLTPAQResponse](QuestionnaireResponse-GSLTPAQResponse.md) |
| EXPECT | DCH | 3 | Verlaufserwartung (drei NRS-Items, kein standardisierter Fragebogen) | **PCOR-MII**→[`EXPECT`](Questionnaire-EXPECT.md) | [EXPECT](EXPECT.md) | [EXPECTResponse](QuestionnaireResponse-EXPECTResponse.md) |
| IPQ-S | DCH | 1 | Subjektive Ursachenzuschreibung — offene Frage angelehnt an den B-IPQ | **PCOR-MII**→[`IPQS`](Questionnaire-IPQS.md) | [IPQ-S](IPQ-S.md) | [IPQSResponse](QuestionnaireResponse-IPQSResponse.md) |
| `UKE-HCU`,`UKE-HCU2`,`UKE-PSE`,`UKE-TR`,`UKE-DOT` | TCH | — | Versorgungsinanspruchnahme — standortspezifische Itemgruppen des UKE, kein publiziertes Instrument | **offen**— noch nicht modelliert | — | — |

**Scores**

| | | |
| :--- | :--- | :--- |
| PHQ-9/-8, PHQ-15, GAD-7 Summenscores, SSD-12, WI-7 | **MII PRO**—`ObservationDefinition`s und Score-Items im Paket | [PHQ-Übersicht](PHQ.md),[SSD-12](SSD-12.md),[WI-7](WI-7.md) |
| PROPr — PROMIS-Preference Utility | **PCOR-MII**→[`PcorObsDefProprUtility`](ObservationDefinition-PcorObsDefProprUtility.md)— vorläufig, Zuständigkeit upstream | [PROMIS-16](PROMIS-16.md#propr) |
| PROMIS-Domänen-T-Scores (PROMIS-29) | **MII PRO**— acht`ObservationDefinition`s im Paket | [PROMIS-29](PROMIS-29.md) |
| PROMIS-Domänen-T-Scores (PROMIS-16) | **offen**— upstream Roadmap 2027 | [PROMIS-16](PROMIS-16.md) |
| OPD-SFK Globalwert und drei explorative Subskalen | **PCOR-MII**— berechnete Items`opd-sfk-globalwert`,`opd-sfk-selbstwahrnehmung`,`opd-sfk-beziehungsmodell`,`opd-sfk-kontaktgestaltung`im Bogen | [OPD-SFK](OPD-SFK.md) |
| EQ-5D-5L Index | **MII PRO**— Index-Score und CQL upstream | — |

### PHQ-Familie in PSS

Der **PHQ-8 ist der Standard — in PSS wie in allen Use Cases**: die acht Depressions-Items ohne das Suizid-Item. Dieses wird **separat als `PHQ-SI`** geführt. Der vollständige PHQ-9 darf nur erhoben werden, wenn **unmittelbar ein Arztkontakt vor Ort folgt** — kein Einsatz im Monitoring (siehe [PHQ-Übersicht](PHQ.md)). Beides sind Items derselben PHQ-9-Definition:

| | | |
| :--- | :--- | :--- |
| PHQ-8 | `phq-phq2a`–`phq-phq2h` | Depressivität ohne Suizid-Item |
| PHQ-SI | `phq-phq2i` | Suizidalität — genau das Item, das PHQ-9 vom PHQ-8 unterscheidet |

Wer beide erhebt, erhebt faktisch den vollständigen PHQ-9 — zulässig nur im Setting mit unmittelbar folgendem Arztkontakt vor Ort. Die Trennung im Dictionary ist eine Auswertungs- und Governance-Entscheidung (Suizidalität nie ohne Management-Plan bzw. Alert), keine inhaltliche Abweichung. Siehe [PHQ-Übersicht](PHQ.md).

Der **PHQ-D-Panik-Block** (`phq3a`–`phq3d`) ist etwas anderes als PHQ-4: vier Ja/Nein-Items zu Angst-/Panikattacken mit 4-Wochen-Recall aus Block 3 des PHQ-D. Dafür gibt es im MII-PRO-Modul **kein Artefakt**; PCOR-MII pflegt den Block deshalb selbst als [`PHQPANIK`](PHQ-Panik.md) (ADR-012) — mit `linkId`s im PHQ-D-Namespace (`phq-phq3a`–`phq-phq3d`), damit eine spätere Übernahme ins Modul ohne Migration auskommt.

### Was PSS von AN und NTx unterscheidet

* **Nur in PSS**: SSD-12, WI-7, SCOFF, ISR-Z, PC-PTSD, der PHQ-D-Panik-Block, EXPECT, IPQ-S, GSLTPAQ sowie die UKE-Versorgungsitems. PHQ-15 führt das Domain Overview nur für PSS (das Dictionary-Blatt NTx aber auch — siehe [NTx](NTx.md)).
* **PSS und AN gemeinsam**: OPD-SFK (von einzelnen Standorten erhoben, keine direkte Empfehlung der Use-Case-Leitung) und PHQ-SI.
* **Nur in AN**: ERQ-6, EDE-Q6, ANSOCQ-2, SSUK-2, ACE sowie die UKHD-Zusatzbögen — siehe [AN](AN.md).
* **Nur in NTx**: BAASIS, ABQ, MTSOSD-R59, MHI-NTx und die NTx-Verlaufsbefragung — siehe [NTx](NTx.md).

### Beispieldatensatz

Der PSS-Beispielpatient ([pcor-mii-exa-patient-pss](Patient-pcor-mii-exa-patient-pss.md)) hat einen Screening-Termin 25.06.2026, gebündelt als [Bundle](Bundle-pcor-mii-exa-bundle-pss-screening.md) mit der vollständigen Batterie: acht PCOR-MII-Bögen als FHIR-Shorthand-Instanzen und zwölf Antworten auf MII-PRO-Questionnaires. Profil, Werte und was jede Antwort belegt: [Beispiele](Beispiele.md).

### Rechtelage und Status

Die PSS-Batterie ist ganz überwiegend frei publizierbar; die MII-PRO-Instrumente sind dort lizenzrechtlich geregelt. Ausnahmen in PCOR-MII: [WAI](WAI.md) bleibt metadata-only, bis das WAI-Netzwerk Deutschland den deutschen Wortlaut freigibt; [OPD-SFK](OPD-SFK.md) ist frei nach erfolgter Rücksprache mit den Autor:innen; in [DEM](Demographie.md) und [MHI](MHI.md) sind die GI-PS-Items und vier PaRIS-Drittinstrumente offen. PROMIS und WHODAS 2.0 unterliegen ihren Nutzungsvereinbarungen (CPCOR bzw. WHO). Die vollständige Lage je Instrument und die offenen Fragen: [Rechtelage und offene Punkte](Rechtelage.md).

Hinweise zum Lebenszyklus von `Questionnaire` zu `QuestionnaireResponse` siehe [Anwendung](Implementation.md); alle Artefakte unter [Artefakte](artifacts.md).

