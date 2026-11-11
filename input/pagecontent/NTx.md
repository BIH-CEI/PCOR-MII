**NTx** (*Nierentransplantation*) ist die dritte Entität in PCOR-MII — neben [PSS](PSS.html) (Persistent Somatic Syndrome) und [AN](AN.html) (Anorexia Nervosa). Der Erhebungsplan trennt zwei Use Cases mit eigenen Prioritätsprofilen: **Empfänger (NTXr)** und **Lebendspender (NTXd)**. Erhoben wird die generische Batterie (identisch über alle Entitäten) und bei Empfängern zusätzlich Medikamentenadhärenz, Symptomlast der Immunsuppression, Transplantationsanamnese und eine quartalsweise Verlaufsbefragung des Standorts Hannover (MHH). Spender haben laut Plan kein spezifisches Instrument und kein Monitoring.

Die entitätsübergreifende Sicht steht unter [Instrumente](Instrumente.html); diese Seite beschreibt die NTx-Batterie und sagt zu jedem Bogen, wo seine FHIR-Ressource liegt. Die Einzelheiten der NTx-eigenen Bögen (Items, Skalen, Bedingungen, Scoring) stehen auf [NTx-Instrumente](NTx-Instrumente.html). **Maschinenlesbar** sind die Zusammenstellungen als [Library/use-case-ntxr](Library-use-case-ntxr.html) (17 Bögen) und [Library/use-case-ntxd](Library-use-case-ntxd.html) (12 Bögen, nur generisch). Rechtelage und Status aller Instrumente stehen gesammelt auf [Rechtelage und offene Punkte](Rechtelage.html).

### Die NTx-Batterie

Die Spalte **Ressource** führt zur Ressource selbst: **PCOR-MII** — der `Questionnaire` ist in diesem IG definiert; **MII PRO** — der `Questionnaire` kommt über die Paket-Abhängigkeit `de.medizininformatikinitiative.kerndatensatz.pros` 2027.0.0-ballot.2 mit, PCOR-MII baut ihn nicht nach; **offen** — für diese Zeile existiert noch kein Artefakt. Die Spalte **NTXr / NTXd** sagt, in welchem der beiden Manifeste der Bogen gepinnt ist. Prioritäten und Frequenzen stehen im Blatt *Domain Overview* des Item Level Dictionary und im `display` der Manifest-Einträge.

**Generischer Kern — in PSS, AN und NTx identisch**

| Instrument | Kat. | Items | NTXr / NTXd | Ressource | Doku |
|---|---|--:|:--:|---|---|
| Demographie (DEM) | DEM | 23¹ | • / • | **PCOR-MII** → [`DEM`](Questionnaire-DEM.html) | [Demographie](Demographie.html) |
| Medical History (MHI) | MHI | 48¹ | • / • | **PCOR-MII** → [`MHI`](Questionnaire-MHI.html) | [MHI](MHI.html) |
| PROMIS Scale v1.2 — Global Health (Global01, Global02) | GHS | 2 | • / • | **PCOR-MII** → [`PROMISGH`](Questionnaire-PROMISGH.html) — 2-Item-Zuschnitt, `derivedFrom` der 10-Item-Skala des Moduls | [PROMIS](PROMIS.html) |
| PROMIS-16 Profile v2.1 — Standortvariante | GHS | 16 | • / • | **MII PRO** → [PROMIS-16](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-promis-16.html) | [PROMIS-16](PROMIS-16.html) |
| PROMIS-29 + Cognitive Function SF 4a (die „8 Domänen“ des Erhebungsplans) — Standortvariante | GHS | 29 + 4 | • / • | **MII PRO** → PROMIS-29 und Cognitive Function SF 4a | [PROMIS-29](PROMIS-29.html), [Cognitive Function](PROMIS-Cognitive-Function.html) |
| PROMIS NRS — Pain Intensity 1a | GHS | 3 | — | **offen** als Einzelinstrument; das Item steckt im PROMIS-29 (`promis-global07`) | [PROMIS-29](PROMIS-29.html) |
| WHODAS 2.0, 12-Item | GHS | 14 | • / • | **MII PRO** → [WHODAS 2.0](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-whodas-whodas12.html) | [WHODAS 2.0](WHODAS-12.html) |
| PHQ-8 — **Standard** in allen Use Cases; PHQ-SI ist im NTx-Dictionary nicht vorgesehen | GHS | 8 | • / • | **MII PRO** → [PHQ-9](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-phq-9.html) (PHQ-8 = Teilmenge) | [PHQ-9](PHQ-9.html), [PHQ-Übersicht](PHQ.html) |
| PHQ-15 | GHS | 13 | **offen** | **MII PRO** vorhanden, in NTx **nicht gepinnt**: Das Domain Overview führt PHQ-15 nur für PSS, das Dictionary-Blatt NTx aber mit — Klärung bei der Use-Case-Leitung | [PHQ-15](PHQ-15.html) |
| GAD-7 (auch GAD-2 / PHQ-4 als Teilmengen) | GHS | 7 | • / • | **MII PRO** → [GAD-7](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-gad-7.html) | [GAD-7](GAD-7.html) |
| EURONET-SOMA 1 + 2 | GHS | 2 | • / • | **MII PRO** → [EURONET-SOMA](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-euronet-soma.html) | [EURONET-SOMA](EURONET-SOMA.html) |
| EQ-5D-5L — nur Outcome, Prio A, jährlich | GHS | 6 | • / • | **MII PRO** → [EQ-5D-5L](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-euroqol-eq5d5l-collectable.html), Variante collectable | — |
| WAI / Work Ability Score — in NTx Prio A | GHS | 3 | • / • | **PCOR-MII** → [`WAI`](Questionnaire-WAI.html) — **metadata-only**, keine Itemtexte | [WAI](WAI.html) |

¹ Bei DEM und MHI sind das die Blatt-Items des PCOR-MII-Questionnaire, nicht eine Dictionary-Instrumentenzahl: Beide bündeln Einzelitems mehrerer Quellen (OECD, GI-PS, CPCOR) zu je einem Bogen. Bei allen übrigen Zeilen ist die Zahl die Item-Anzahl laut Item Level Dictionary.

Nicht in NTx: OPD-SFK (nur PSS und AN) und PHQ-SI. PROMIS-16 und PROMIS-29 + Cognitive Function sind **Standortvarianten** (entweder/oder); beide stehen in den Manifesten, damit Empfänger Antworten beider Standorttypen auflösen können.

**NTx-spezifische Instrumente (nur Empfänger)**

| Instrument | Kat. | Items | Erhebungsplan | Ressource | Doku | Beispielantwort |
|---|---|--:|---|---|---|---|
| MHI-NTx — Transplantationsanamnese (`MHH-DON`, `MHH-Tx-DATE`, `MHH-PRIOR-TX`) | TCH | 3 | Screening, Prio A | **PCOR-MII** → [`MHINTX`](Questionnaire-MHINTX.html) — Ergänzungsbogen zum MHI | [NTx-Instrumente](NTx-Instrumente.html#mhi-ntx-transplantationsanamnese) | [MHINTXResponse](QuestionnaireResponse-MHINTXResponse.html) |
| NTx-Verlaufsbefragung (MHH) — acht `MHH-*`-Gruppen als ein Sammelbogen | DCH, TCH | 18 | Monitoring quartalsweise, Prio A/B | **PCOR-MII** → [`NTXVERLAUF`](Questionnaire-NTXVERLAUF.html) | [NTx-Instrumente](NTx-Instrumente.html#ntx-verlaufsbefragung-mhh) | [NTXVERLAUFResponse](QuestionnaireResponse-NTXVERLAUFResponse.html) |
| BAASIS — Adhärenz zur Immunsuppression | TCH | 10 | Monitoring quartalsweise, Prio A | **PCOR-MII** → [`BAASIS`](Questionnaire-BAASIS.html) — **metadata-only** | [NTx-Instrumente](NTx-Instrumente.html#baasis) | [BAASISResponse](QuestionnaireResponse-BAASISResponse.html) |
| ABQ — Adhärenzbarrieren | TCH | 16 | nur bei Hinweis auf Nonadhärenz im BAASIS, Prio A | **PCOR-MII** → [`ABQ`](Questionnaire-ABQ.html) — **metadata-only**, Summenscore 16–64 | [NTx-Instrumente](NTx-Instrumente.html#abq) | [ABQResponse](QuestionnaireResponse-ABQResponse.html) |
| MTSOSD-R59 — Symptomlast der Immunsuppression | MSE | 126 | Monitoring quartalsweise; Umfang offen (kompletter Bogen oder nur Tremor/Diarrhoe) | **PCOR-MII** → [`MTSOSDR59`](Questionnaire-MTSOSDR59.html) — **metadata-only**, kein Score (Ridit-Analyse kohortenrelativ) | [NTx-Instrumente](NTx-Instrumente.html#mtsosd-r59) | [MTSOSDR59Response](QuestionnaireResponse-MTSOSDR59Response.html) |

BAASIS und ABQ hängen zusammen: Der ABQ wird nur erhoben, wenn der BAASIS auf Nichtadhärenz hinweist — eine Bedingung zwischen zwei Bögen, die nicht als `enableWhen` modelliert ist, sondern den aufrufenden Prozess steuert. Die drei lizenzierten Instrumente sind als **Variantenpaar** nach [ADR-014](Designentscheidungen.html) angelegt: Die öffentliche Definition hier trägt Struktur, `linkId`s, Antwortformate und Bedingungen ohne Originalwortlaut; die erfassbare Variante mit Wortlaut liegt außerhalb des IG und wird nur an lizenzierte Zentren ausgeliefert.

**Scores**

| Score | Ressource | Doku |
|---|---|---|
| ABQ Summenscore 16–64 | **PCOR-MII** — berechnetes Item `abq-summe` im Bogen | [NTx-Instrumente](NTx-Instrumente.html#abq) |
| BAASIS — drei Phasen (Implementierung, Persistenz, Initiierung) | nur dokumentiert, kein Ausdruck | [NTx-Instrumente](NTx-Instrumente.html#baasis) |
| MTSOSD-R59 — Ridit-Analyse | bewusst kein Artefakt: kohortenabhängig, gehört in die Auswertung | [NTx-Instrumente](NTx-Instrumente.html#mtsosd-r59) |
| PROPr, PROMIS-T-Scores, EQ-5D-5L Index | wie in [PSS](PSS.html) und [AN](AN.html) | — |

### Empfänger und Spender

| | NTXr — Empfänger | NTXd — Spender |
|---|---|---|
| Manifest | [use-case-ntxr](Library-use-case-ntxr.html), 17 Bögen | [use-case-ntxd](Library-use-case-ntxd.html), 12 Bögen |
| Generische Batterie | ja | ja |
| MHI-NTx, Verlaufsbefragung, BAASIS, ABQ, MTSOSD-R59 | ja | nein |
| Monitoring | quartalsweise (Verlaufsbefragung, BAASIS, MTSOSD-R59) | kein Monitoring laut Plan |

Der MHI hat keinen Entitätsschalter; welche Bögen ein Use Case erhebt, legt sein Manifest fest. Das Empfänger-Manifest pinnt deshalb MHI **und** MHI-NTx, das Spender-Manifest nur den MHI ([ADR-011](Designentscheidungen.html)).

### Beispieldatensatz

Der NTx-Beispielpatient ([pcor-mii-exa-patient-ntx](Patient-pcor-mii-exa-patient-ntx.html)) ist Empfänger einer Lebendspende; das [Bundle NTx — Erstbefragung](Bundle-pcor-mii-exa-bundle-ntx-erstbefragung.html) (06.10.2026) fasst Screening und erstes Quartals-Monitoring zusammen, mit den drei metadata-only-Antworten zu BAASIS, ABQ und MTSOSD-R59. Profil, Werte und was jede Antwort belegt: [Beispiele](Beispiele.html).

### Rechtelage und Status

BAASIS (© Universität Basel), MTSOSD-R59 (© KU Leuven) und ABQ sind für die Forschung frei nutzbar, ihre Items und Antwortoptionen dürfen aber nicht publiziert werden; jedes Zentrum braucht eine eigene Lizenzvereinbarung, beim BAASIS mit Datenweitergabe an das Validierungsprojekt der Uni Basel. Die MHH-Standortitems (MHI-NTx, Verlaufsbefragung) haben keine dokumentierte Freigabe. Bezugswege, Lizenzbedingungen und die offenen Fragen (Lizenznehmer je Projekt oder Zentrum, Raten-Skala BAASIS 2_a, ABQ-Polung, MTSOSD-Umfang, MAPI-Fassung): [Rechtelage und offene Punkte](Rechtelage.html#ntx).

Quellen dieser Seite: Blatt `Item Level Dictionary NTx` und `Domain Overview` des Item Level Dictionary (nicht Teil dieses Repositories), DIZ-Implementierungsliste PCOR-MII; die Zuordnung entspricht den Manifesten [use-case-ntxr](Library-use-case-ntxr.html) und [use-case-ntxd](Library-use-case-ntxd.html). Hinweise zum Lebenszyklus von `Questionnaire` zu `QuestionnaireResponse` siehe [Anwendung](Implementation.html); alle Artefakte unter [Artefakte](artifacts.html).
