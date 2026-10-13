**PSS** (*Persistent Somatic Syndrome*) ist die psychosomatische Entität in PCOR-MII — neben [Anorexia Nervosa (AN)](AN.html) und Nierentransplantation (NTx). Erhoben wird eine Batterie aus generischen Instrumenten (identisch über alle drei Entitäten) und PSS-spezifischen Instrumenten zu somatischer Belastung, Gesundheitsangst, psychischer Komorbidität und Versorgungsinanspruchnahme.

Die entitätsübergreifende Sicht steht unter [Instrumente](Instrumente.html); diese Seite beschreibt die PSS-Batterie.

### Generischer Kern (alle Entitäten)

Diese Instrumente sind in PSS, AN und NTx identisch zu erheben:

- [Demographie](Demographie.html) (DEM) und [MHI](MHI.html) — Soziodemographie und medizinische Vorgeschichte
- [PROMIS](PROMIS.html) — Global Health (2 Items), Short Forms 4a, Pain Intensity NRS
- [WHODAS 2.0 (12-Item)](WHODAS-12.html) — Funktionsfähigkeit und Beeinträchtigung
- [PHQ-15](PHQ-15.html), PHQ-8 (siehe [PHQ-Übersicht](PHQ.html)), [GAD-7](GAD-7.html) / GAD-2 / PHQ-4
- EURONET-SOMA 1 und 2 — je ein Item zu somatischen Symptomen
- [WAI](WAI.html) — Arbeitsfähigkeit (metadata-only)

Der **GAD-7** ist seit MII PRO 2026.7.0 enthalten und wird wie die übrigen PHQ-Instrumente referenziert, nicht nachgebaut — siehe [GAD-7](GAD-7.html).

### PSS-spezifische Instrumente

| Instrument | Kat. | Items | Erfasst | Status |
|---|---|--:|---|---|
| **SSD-12** | DCH | 12 | B-Kriterien der somatischen Belastungsstörung | [Seite](SSD-12.html) |
| **WI-7** | DCH | 7 | Gesundheitsangst (Whiteley-Index) | [Seite](WI-7.html) |
| **SCOFF** | MHA | 5 | Essstörungs-Screening | [Seite](SCOFF.html) |
| **ISR-Z** | MHA | 3 | ICD-10-Symptom-Rating, Zusatzskala | [Seite](ISR-Z.html) |
| **PC-PTSD** | MHA | 4 | Posttraumatische Belastungsstörung, Primärversorgungs-Screen | [Seite](PC-PTSD.html) |
| **PHQ-D Panik-Block** | MHA | 4 | Angst-/Panikattacken (`phq3a`–`phq3d`, ja/nein) | offen — kein Upstream-Artefakt |
| **PHQ-SI** | MHA | 1 | Suizidalität — das PHQ-9-Item `phq-phq2i` | über [PHQ-9](PHQ-9.html) abgedeckt |
| **OPD-SFK** | MHA | 12 | Strukturelle Persönlichkeitsfunktion | [Seite](OPD-SFK.html) |
| **GSLTPAQ** | TCH | 6 | Körperliche Freizeitaktivität | [Seite](GSLTPAQ.html) |
| **EXPECT** | DCH | 3 | Verlaufserwartung (drei NRS-Items, kein standardisierter Fragebogen) | [Seite](EXPECT.html) |
| **IPQ-S** | DCH | 1 | Subjektive Ursachenzuschreibung — offene Frage angelehnt an den B-IPQ | [Seite](IPQ-S.html) |

Dazu die standortspezifischen Item-Gruppen zur Versorgungsinanspruchnahme (`UKE-HCU`, `UKE-HCU2`, `UKE-PSE`, `UKE-TR`, `UKE-DOT`, Kategorie TCH), die kein publiziertes Instrument abbilden und direkt aus dem Item Level Dictionary stammen.

### PHQ-Familie in PSS

Der **PHQ-8 ist der Standard — in PSS wie in allen Use Cases**: die acht Depressions-Items ohne das Suizid-Item. Dieses wird **separat als `PHQ-SI`** geführt. Der vollständige PHQ-9 darf nur erhoben werden, wenn **unmittelbar ein Arztkontakt vor Ort folgt** — kein Einsatz im Monitoring (siehe [PHQ-Übersicht](PHQ.html)). Beides sind Items derselben PHQ-9-Definition:

| Dictionary | `linkId`s | Bedeutung |
|---|---|---|
| PHQ-8 | `phq-phq2a`–`phq-phq2h` | Depressivität ohne Suizid-Item |
| PHQ-SI | `phq-phq2i` | Suizidalität — genau das Item, das PHQ-9 vom PHQ-8 unterscheidet |

Wer beide erhebt, erhebt faktisch den vollständigen PHQ-9 — zulässig nur im Setting mit unmittelbar folgendem Arztkontakt vor Ort. Die Trennung im Dictionary ist eine Auswertungs- und Governance-Entscheidung (Suizidalität nie ohne Management-Plan bzw. Alert), keine inhaltliche Abweichung. Siehe [PHQ-Übersicht](PHQ.html).

Der **PHQ-D-Panik-Block** (`phq3a`–`phq3d`) ist etwas anderes als PHQ-4: vier Ja/Nein-Items zu Angst-/Panikattacken mit 4-Wochen-Recall aus Block 3 des PHQ-D. Dafür gibt es im MII-PRO-Modul **kein Artefakt** — weder Questionnaire noch `linkId`s im Namespace. Bedarf wäre dort anzumelden.

### Was PSS von AN und NTx unterscheidet

- **Nur in PSS**: SSD-12, WI-7, SCOFF, ISR-Z, PC-PTSD, der PHQ-D-Panik-Block, EXPECT, IPQ-S, GSLTPAQ sowie die UKE-Versorgungsitems.
- **PSS und AN gemeinsam**: OPD-SFK (von einzelnen Standorten erhoben, keine direkte Empfehlung der Use-Case-Leitung) und PHQ-SI.
- **Nur in AN**: ERQ-6, EDE-Q6, ANSOCQ-2, SSUK-2, ACE sowie die UKHD-Items zu Körperbild, Essstörungspathologie und Umfeld — siehe [AN](AN.html).
- **Nur in NTx**: BAASIS, MTSOSD-R59, ABQ (alle metadata-only) sowie die MHH-Verlaufsparameter.

### Rechtelage

Die PSS-Batterie ist ganz überwiegend **frei publizierbar** — vollständige Questionnaires mit Itemtexten, Antwortoptionen und Scoring sind möglich. Zwei Ausnahmen:

- **WAI** — laut DIZ-Implementierungsliste „wahrscheinlich nicht für die Veröffentlichung geeignet"; deshalb [metadata-only](WAI.html) ohne Originalwortlaut.
- **OPD-SFK** — frei nach erfolgter Rücksprache mit den Autor:innen; die Rechte an Instrument und Formulierungen verbleiben bei Autor:innen bzw. Verlag (siehe [OPD-SFK](OPD-SFK.html)).

PROMIS und WHODAS 2.0 unterliegen ihren jeweiligen Nutzungsvereinbarungen (CPCOR bzw. WHO).

### Ein zusammenhängender Beispieldatensatz

Für PSS gibt es seit dem 01.10.2026 einen **synthetischen Beispielpatienten** ([pcor-mii-exa-patient-pss](Patient-pcor-mii-exa-patient-pss.html)): 48 Jahre, persistierende somatische Symptome seit etwa zwei Jahren (Erschöpfung, Rücken- und Magen-Darm-Beschwerden), mittelgradige somatische Belastung (PHQ-15 = 12, SSD-12 = 22), leichte depressive (PHQ-8 = 9) und ängstliche (GAD-7 = 7) Symptomatik, mäßig reduzierte Arbeitsfähigkeit (WAI 6/10).

Der Screening-Termin 25.06.2026 ist als **[Bundle](Bundle-pcor-mii-exa-bundle-pss-screening.html)** gebündelt und umfasst die **vollständige Batterie** — die PCOR-MII-eigenen Bögen (DEM, MHI, OPD-SFK, GSLTPAQ, EXPECT, IPQ-S, WAI) als FHIR-Shorthand-Instanzen und zwölf Antworten auf **MII-PRO-Questionnaires** (PHQ-9, GAD-7, PHQ-15, SSD-12, WHODAS-12, EURONET-SOMA, WI-7, SCOFF, ISR-Z, PC-PTSD, PROMIS-16, PROMIS Cognitive Function) als Beispiele unter `input/examples/`, referenziert gegen die Upstream-Canonicals mit Versionspin `|2026.7.0`. Dass hier der vollständige PHQ-9 beantwortet ist, ist konsistent mit der Einsatzregel: Der Screening-Termin ist ein Vor-Ort-Termin mit unmittelbarem Arztkontakt. Die Werte sind aufeinander abgestimmt, nicht gewürfelt — Einzelheiten im Kopf von `PSS-Responses.fsh`. Alle Antworten einzeln: [Fragebogen-Bibliothek](Fragebogen-Bibliothek.html).

Hinweise zum Lebenszyklus von `Questionnaire` zu `QuestionnaireResponse` siehe [Anwendung](Implementation.html); alle Artefakte unter [Artefakte](artifacts.html).
