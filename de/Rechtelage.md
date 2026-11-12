# Rechtelage und offene Punkte - PCOR-MII Implementation Guide v0.9.0

## Rechtelage und offene Punkte

Diese Seite führt **für alle Instrumente zusammen**, was über ihre Rechtelage bekannt ist, wie sie deshalb modelliert sind, und welche Fragen dazu noch offen sind — einschließlich der fachlichen Punkte, die nicht in FHIR zu lösen sind, sondern im Item Level Dictionary, mit einem Standort oder mit der Use-Case-Leitung. Die Use-Case-Seiten [PSS](PSS.md), [AN](AN.md) und [NTx](NTx.md) verweisen hierher statt die Lage je Bogen zu wiederholen; die [Designentscheidungen](Designentscheidungen.md) enthalten nur noch das Entschiedene.

Beantwortete Fragen verschwinden von dieser Seite: Sie werden zu einem ADR, zu einem Absatz auf der Instrumentenseite oder zu einem Eintrag in den [Release Notes](Release-Notes.md).

### Wie die Rechtelage die Modellierung bestimmt

Die Rechtelage bestimmt, **wie** ein Instrument modelliert wird — nicht, wie wichtig es ist:

* **frei** — vollständiger Questionnaire mit Itemtexten, Antwortoptionen und Scoring.
* **Nutzungsvereinbarung** (PROMIS via CPCOR, WHODAS via WHO, EQ-5D-5L via EuroQol) — vollständig, aber unter der jeweiligen Vereinbarung; Bedingungen im `copyright`-Element.
* **metadata-only** — keine wortgleichen Items oder Antworten im publizierten Package. Nur Struktur, `linkId`s, Wertebereiche, Score-Definition und Bezugsweg. Betrifft [WAI](WAI.md), [UKHD-EDP](UKHD-EDP.md) sowie [BAASIS, ABQ und MTSOSD-R59](NTx-Instrumente.md). Für die drei lizenzierten NTx-Bögen kommt nach [ADR-014](Designentscheidungen.md) eine **private erfassbare Variante** hinzu, die nur an lizenzierte Zentren ausgeliefert wird.
* **Freigabe offen** — der Wortlaut ist aufgenommen, aber **keine dokumentierte Erlaubnis liegt vor**. Das ist kein eigener Rechtestatus, sondern ein Wissensstand: Die DIZ-Implementierungsliste führt nur publizierte Instrumente und sagt über die standortspezifischen Itemgruppen gar nichts. Betrifft die [UKHD-Zusatzitems](UKHD-Zusatzitems.md), die MHH-Bögen [MHI-NTx und NTx-Verlaufsbefragung](NTx-Instrumente.md) sowie die bereits im [MHI](MHI.md) publizierten 34 Standort-Items. Bei einer Einschränkung ist metadata-only das vorgesehene Mittel, je Gruppe.

Quelle der Rechteangaben ist die **DIZ-Implementierungsliste PCOR-MII** (Stand 24.07.2026). Ihre Lizenzspalte erfasst erkennbar die **Beschaffbarkeit für die Forschung**, nicht die Frage, ob der Wortlaut in einer Spezifikation weitergegeben werden darf; bei jedem Instrument mit verlegter deutscher Fassung ist die Angabe daher eigenständig geprüft. Das ist eine Arbeitsregel dieses Projekts, keine Rechtsauskunft.

### Publiziert ist nicht verlegt

Mehrere der offenen Rechtepunkte hängen an derselben Unterscheidung, die in der DIZ-Implementierungsliste nicht vorkommt:

**Publiziert** heißt: Über das Instrument wurde berichtet — typischerweise in einem Fachartikel, der Konstruktion, Psychometrie oder Validierung beschreibt. Der Artikel ist zitierbar und oft frei zugänglich. Ob der **Fragebogen selbst** nachgenutzt werden darf, sagt das noch nicht.

**Verlegt** heißt: Das Instrument ist ein **Produkt eines Verlags** — Manual, Fragebogen und Auswertungsbogen werden als Werk vertrieben. Hier ist der Wortlaut nicht Beiwerk einer Publikation, sondern die Ware selbst. Entsprechend stehen dort Rechtevorbehalte, die eine Weiterverwendung des Wortlauts ausdrücklich erfassen.

Praktisch folgt daraus: **Frei zugänglich ist nicht frei nachnutzbar.** Dass ein Verlag eine PDF zum Download anbietet, ist Service, keine Lizenz. Umgekehrt kann ein Instrument formal „nur“ in einer Zeitschrift publiziert sein und trotzdem frei nutzbar, wenn die Autor:innen den Bogen selbst bereitstellen.

### Status je Instrument

| | | | |
| :--- | :--- | :--- | :--- |
| PHQ-9/-8, PHQ-15, GAD-7, EURONET-SOMA, SSD-12, WI-7, SCOFF, ISR-Z, PC-PTSD, WHODAS 2.0, PROMIS-16/-29/Cognitive Function, EQ-5D-5L | im**MII-PRO-Modul**geregelt (frei bzw. Nutzungsvereinbarung CPCOR, WHO, EuroQol) | referenziert, nicht nachgebaut ([ADR-002](Designentscheidungen.md)) | — |
| [PROMIS-GH](PROMIS.md)(Global01/02) | CPCOR-Vereinbarung | 2-Item-Zuschnitt,`derivedFrom`der Modul-Definition | `linkId`s und Fortbestand —[unten](#promis-gh) |
| [DEM](Demographie.md) | OECD-Items: Nutzung und Übersetzung nicht-kommerziell erlaubt ✅ · vier PaRIS-Drittinstrumente (NHIS, Commonwealth Fund, MED-HIMS, WHO Model Disability Survey): Prüfung offen · GI-PS (2 Items): Zustimmung nötig | vollständig,`copyright`mit Herkunftsaufschlüsselung und OECD-Disclaimer | [DEM/MHI-Herkunft](#dem-mhi) |
| [MHI](MHI.md) | GI-PS (9 Items): Zustimmung nötig · 34 Standort-Items (UKHD-W, UKHD-AN, UKHD-MEDI, UKE-MEDI): keine Freigabe dokumentiert, triviale Faktenfragen | vollständig | [DEM/MHI-Herkunft](#dem-mhi),[Standortgruppen](#standortgruppen) |
| [OPD-SFK](OPD-SFK.md) | publiziert, Rechte bei Autor:innen/Verlag — frei**nach erfolgter Rücksprache** | vollständig mit Summenscore | — |
| [WAI](WAI.md) | FIOH: Nutzung ohne Genehmigung, nicht verkaufen, zitieren; deutsche Fassung des WAI-Netzwerks Deutschland offen | **metadata-only**bis zur Klärung | [WAI](#wai) |
| [GSLTPAQ](GSLTPAQ.md),[EXPECT](EXPECT.md),[IPQ-S](IPQ-S.md),[PHQ-D Panik-Block](PHQ-Panik.md) | frei; EXPECT keine standardisierte Skala | vollständig | — |
| [ERQ-6](ERQ-6.md) | publiziert**und**von den Autor:innen frei bereitgestellt (Stanford Psychophysiology Laboratory) | vollständig, kein Score | [AN-Scoring](#an-scoring) |
| [ANSOCQ-2](ANSOCQ-2.md) | publiziert; deutsche Fassung von den Validierungs-Autor:innen (Schweiz) | vollständig,`en`primär mit`de-CH`, kein Score | [AN-Scoring](#an-scoring) |
| [SSUK-2](SSUK-2.md) | publiziert (Adaptation der ISSS) | vollständig, kein Score | [AN-Scoring](#an-scoring) |
| [EDE-Q6](EDE-Q6.md) | **verlegt**(dgvt-Verlag, © Anja Hilbert, alle Rechte vorbehalten) — DIZ-Liste sagt „frei“ | vollständig nach[ADR-006](Designentscheidungen.md),`copyright`weist den Vorbehalt aus | [EDE-Q6](#ede-q6) |
| [ACE](ACE.md) | englisches Original publiziert (Felitti 1998, Public-Health-Standard) ·**deutsche Fassung ACE-D**© Schäfer, Wingenfeld & Spitzer 2009, Gesamtbogen nur über den Autor | vollständig, Komposit mit`UKHD-CTT` | [ACE-D](#ace-d),[Standortgruppen](#standortgruppen) |
| [UKHD-Zusatzitems](UKHD-Zusatzitems.md)(6 Bögen) und`UKHD-CTT` | in der DIZ-Liste**nicht geführt**; Herkunft des Wortlauts je Gruppe ungeklärt | vollständig,`status = draft`,`experimental = true`,`copyright`mit Vorbehalt — bewusste Projektentscheidung zur Erprobung | [Standortgruppen](#standortgruppen) |
| `UKHD-BI` | wie UKHD-Zusatzitems | nicht modelliert: visuelle Bildskala ohne Bildvorlage | [Standortgruppen](#standortgruppen) |
| [UKHD-EDP](UKHD-EDP.md) | vermutlich EDI-2-Zuschnitt (Hogrefe-Testverfahren); in der DIZ-Liste weder „EDI“ noch „UKHD-EDP“ —**unbewertet** | **metadata-only** | [UKHD-EDP](#ukhd-edp) |
| [BAASIS](NTx-Instrumente.md#baasis) | © Universität Basel; Forschung ohne Pharma-Beteiligung kostenfrei, Erlaubnis je Projekt,**Items und Antwortoptionen nicht publizierbar**, Datenweitergabe an das Validierungsprojekt (Term IV) | **metadata-only**+ private erfassbare Variante ([ADR-014](Designentscheidungen.md)) | [NTx](#ntx) |
| [ABQ](NTx-Instrumente.md#abq) | Müller, Kohlmann & Wilke 2015; Lizenzvereinbarung je Zentrum, Items nicht publizierbar | **metadata-only**+ private Variante | [NTx](#ntx) |
| [MTSOSD-R59](NTx-Instrumente.md#mtsosd-r59) | © KU Leuven; deutsche Fassung (MAPI) über die Erstautorinnen, Items nicht publizierbar | **metadata-only**+ private Variante | [NTx](#ntx) |
| [MHI-NTx, NTx-Verlaufsbefragung](NTx-Instrumente.md)(MHH) | Standortitems, in der DIZ-Liste nicht geführt; triviale Faktenfragen | vollständig, Vorbehalt im`copyright` | [Standortgruppen](#standortgruppen) |
| `UKE-HCU/HCU2/PSE/TR/DOT`(PSS) | Standortitems, in der DIZ-Liste nicht geführt | nicht modelliert | [Standortgruppen](#standortgruppen) |

**Bezugswege der lizenzierten Instrumente** — maschinenlesbar auch im `copyright`-Element der Ressourcen; nur der PCOR-MII-eigene FHIR-Inhalt unterliegt der Repository-Lizenz (CC-BY-4.0):

| | | |
| :--- | :--- | :--- |
| BAASIS | Universität Basel | Nutzungserlaubnis:[https://baasis.nursing.unibas.ch/how-to-obtain](https://baasis.nursing.unibas.ch/how-to-obtain) |
| ABQ | Müller S, Kohlmann T, Wilke T (2015) | Lizenzvereinbarung je Zentrum; Bezugsweg zu klären |
| MTSOSD-R59 | KU Leuven | Kontakt: joke.willems@kuleuven.be |

### Offene Rechtefragen

#### WAI — Publikationsrechte neu bewerten

**Status:** offen, aufgenommen 2026-11-05 · **Antwort von:** WAI-Netzwerk Deutschland (wai@uni-wuppertal.de)

Der [WAI](WAI.md) ist metadata-only (Muster für ADR-012), weil die DIZ-Implementierungsliste „wahrscheinlich nicht für die Veröffentlichung geeignet“ vermerkt. Der Vermerk nennt keine Quelle. Die Nutzungsbedingungen des Urhebers, des Finnish Institute of Occupational Health ([ttl.fi](https://www.ttl.fi/en/themes/well-being-at-work-and-work-ability/tyokyky/using-the-work-ability-index-wai), abgerufen 2026-11-05), sagen das Gegenteil: **„The method is publicly available. You do not need permission from the Finnish Institute of Occupational Health to use the Work Ability Index.“** Nutzung für Forschung und eigenen Betrieb ist frei, eigene Bögen und Übersetzungen sind erlaubt. Bedingungen sind die Nennung der Autor:innen (Tuomi et al. 1998), kein Verkauf des Instruments als solchem und ein eigener Name für abgewandelte Fassungen; das FIOH vertreibt den Bogen nicht selbst.

Damit bleibt eine Frage: Der deutsche Wortlaut im Dictionary ist der Fragebogen des **WAI-Netzwerks Deutschland** (INQA, Bergische Universität Wuppertal, mit der BAuA). Nach dem verbreiteten Fragebogen-PDF ist die Einzelanwendung frei und nur die Anwendung in Unternehmen zustimmungspflichtig; ob die Übersetzung in einer Spezifikation weitergegeben werden darf, ist nicht belegt. Der WAI ist publiziert und vom Urheber freigegeben, nicht [verlegt](#publiziert-verlegt).

**Nächste Schritte:** (1) Anfrage an das WAI-Netzwerk Deutschland, ob der deutsche Wortlaut der drei Items im IG veröffentlicht werden darf. (2) Unabhängig davon kann der wortgleiche Bogen sofort auf dem Fragebogen-Server bereitgestellt werden — das ist Nutzung, keine Veröffentlichung, und von den FIOH-Bedingungen gedeckt. (3) Bei positiver Antwort Umstellung auf Vollfassung mit Zitat und FIOH-Nennung im `copyright`; die Kurzfassung bleibt als „Work Ability Score“ benannt, wie vom FIOH für abgewandelte Fassungen verlangt. (4) DIZ-Liste korrigieren.

#### Standortspezifische Itemgruppen (UKHD, UKE, MHH) — Freigabe fehlt

**Status:** offen, aufgenommen 2026-09-30, präzisiert 2026-10-01 und 2026-11-05 · **Antwort von:** Standorte Heidelberg, Hamburg, Hannover

Die DIZ-Implementierungsliste führt ausschließlich **publizierte Instrumente**. Die standortspezifischen Itemgruppen — Heidelberg (`UKHD-*`), Hamburg (`UKE-*`), Hannover (`MHH-*`) — kommen dort **gar nicht vor**. Für sie ist damit weder eine Erlaubnis noch eine Einschränkung dokumentiert: Es ist keine Rechtsfrage, die sich aus der Liste beantworten ließe, sondern eine **Governance-Entscheidung der Standorte**.

Das Dictionary enthält 97 solche Variablen. **34 davon veröffentlicht PCOR-MII bereits mit vollem Wortlaut**, alle im [MHI](MHI.md):

| | | |
| :--- | :--- | :--- |
| `UKHD-W` | 4 | `weight_outpatient_1`,`weight_outpatient_2`,`weight_inpatient`,`weight_discharge` |
| `UKHD-AN` | 1 | `AN_subtyp` |
| `UKHD-MEDI` | 2 | `medication1`,`medication_text` |
| `UKE-MEDI` | 27 | `MEDI_01`,`medi_02_*_01`…`medi_02_*_05` |

**Vorschlag: nicht pauschal zurückhalten, sondern zwei Sorten unterscheiden.** **Triviale Faktenfragen** — Körpergewicht, AN-Subtyp, Medikamentenliste. „Wie viel wiegen Sie aktuell in kg?“ ist keine schutzfähige Schöpfung, und ohne den Wortlaut können die DIZ die Items nicht einheitlich implementieren. Diese 34 bleiben publiziert; dasselbe gilt für die MHH-Items in [MHI-NTx und NTx-Verlaufsbefragung](NTx-Instrumente.md). **Entworfene Item-Batterien** — `UKHD-CTT` (6, Zeitangaben zu Kindheitstraumata), `UKHD-BI` (3, Körperbild), `UKHD-LE` (4, Lebensereignisse), `UKHD-ANB` (2), `UKHD-PT` (2), `UKHD-CT` (1), `UKHD-ND` (3), `UKHD_D` (2). Hier steckt Autorenschaft aus Heidelberg.

Sieben dieser Gruppen sind modelliert — sechs als **je ein eigenes Questionnaire** ([UKHD-Zusatzitems](UKHD-Zusatzitems.md), ein Bogen je Dictionary-Gruppe nach der Standortgruppen-Ergänzung in ADR-011) und `UKHD-CTT` im [ACE](ACE.md), der dadurch ein PCOR-MII-Komposit ist. Das ist eine **bewusste Projektentscheidung zur Erprobung und keine Freigabe**. Die Rechtefrage selbst ist präzisiert: Das `UKHD`-Präfix ist ein **Zusammenstellungs-Etikett** des Dictionary, keine Autorenschaftsangabe — die Handanweisung des Master-Excel definiert die `INSTRUMENT`-Spalte als Auswahl des Erhebungswerkzeugs durch die Standorte. Vor der Freigabefrage steht darum eine **Herkunftsfrage**: Woher stammt der Wortlaut je Gruppe — eigene Formulierung, klinikinterne Dokumentationsbögen oder ein publiziertes Instrument? Die Variablennamen geben Hinweise: Die meisten sind sprechende Studiendatenbank-Namen (`weight_discharge`, `life_event1_screening`), für solche Items ist das Risiko klein. Drei Gruppen tragen dagegen fremde, opake Kürzelschemata, die Signatur einer Fremdquelle: `bdkm15`/`bdkm16` ([UKHD-PT](Questionnaire-UKHDPT.md)), `erwEV24`–`erwEV26` (`UKHD-BI`) und `edp1`–`edp11` ([UKHD-EDP](UKHD-EDP.md), siehe eigener Punkt). Alle Ressourcen tragen `status = draft`, `experimental = true` und ein `copyright`, das den Vorbehalt ausweist. Ergibt die Rückmeldung eine Einschränkung, wird **je Gruppe** auf metadata-only umgestellt (Muster [WAI](WAI.md)); die Beispielantworten blieben davon unberührt, weil sie keine Itemtexte enthalten.

`UKHD-BI` ist bewusst nicht modelliert, und nicht aus Rechtegründen: Die Erhebung läuft noch nicht mit der visuellen Bildskala, und das Dictionary führt als Antwortoption nur einen Verweis auf einen Bilder-Reiter — ohne die Bildvorlage ist das Item nicht modellierbar, weil die Anker einer visuellen Skala hier der Messgegenstand sind und nicht Beschriftung.

Für **UKE** ist nichts modelliert (`UKE-HCU/HCU2/PSE/TR/DOT`, Versorgungsinanspruchnahme in PSS). Für **MHH** sind die drei Screening-Items als [MHI-NTx](NTx-Instrumente.md#mhi-ntx-transplantationsanamnese) und die 18 Monitoring-Items als [NTx-Verlaufsbefragung](NTx-Instrumente.md#ntx-verlaufsbefragung-mhh) mit vollem Wortlaut aus dem Dictionary modelliert; **offen für MHH** sind die Freigabe des Wortlauts, das Gruppenlabel für `MHH_PTH1`/`MHH_PTH2` im Dictionary und ob die Gruppen quartalsweise als ein Bogen oder getrennt erhoben werden.

**Zu klären:** Bestätigung durch UKHD, UKE und MHH für beide Sorten — rückwirkend für die publizierten Faktenitems und vorausschauend für die Batterien. Bis dahin ist der Status quo eine Annahme, keine Freigabe.

#### UKHD-EDP — vermutlich ein EDI-2-Zuschnitt, rechtlich unbewertet

**Status:** offen, aufgenommen 2026-09-30; als metadata-only modelliert 2026-10-01 · **Antwort von:** UKHD (Identifikation), dann Hogrefe

Der Erhebungsplan führt für die Domäne **Eating Disorder Psychopathology** 17 Items unter dem Eintrag „EDEQ/EDP (UKHD)“. Das sind **zwei Instrumente, nicht eines**: die 6 Items des [EDE-Q6](EDE-Q6.md) und 11 Items mit den Variablen-IDs `edp1`–`edp11`. Verschmelzen lassen sie sich nicht — der EDE-Q fragt „an wie vielen der letzten 28 Tage“ auf einer Häufigkeitsskala 0–6, die `edp`-Items fragen zeitlos nach Zustimmung („1 = Trifft nie zu“).

**Das UKHD-Präfix ist irreführend.** Die 11 Items bilden je ein Konstrukt ab — Schlankheitsstreben, Bulimie, Unzufriedenheit mit dem Körper, Ineffektivität, Perfektionismus, Misstrauen, interozeptive Wahrnehmung, Angst vor dem Erwachsenwerden, Askese, Impulsregulation, soziale Unsicherheit — und das sind **die elf Subskalen des EDI-2** (**Eating Disorder Inventory-2**, Garner 1991; deutsche Fassung Paul & Thiel, Hogrefe 2005), je ein Item pro Skala, also dasselbe Zuschnittmuster wie bei EDE-Q6, ANSOCQ-2 und SSUK-2. Ein zusätzliches Indiz: Das Antwortformat ist **sechsstufig**, wie beim EDI-2; die übrigen Instrumente der AN-Batterie nutzen vier, fünf oder sieben Stufen. Es handelt sich damit sehr wahrscheinlich **nicht** um eine Eigenentwicklung des Standorts, sondern um einen Zuschnitt eines verlegten Testverfahrens — verlegte Ware wie das BDI-II, das im MII-PRO-Modul genau deshalb nur „data + scoring, not displayable“ geführt wird. Die DIZ-Liste enthält weder eine Zeile „EDI“ noch „UKHD-EDP“; die Rechtelage ist also nicht „frei“, sondern **gar nicht bewertet**.

**Umgesetzt als metadata-only**, weil das unter beiden Lesarten richtig ist: Ist es das EDI-2, verbietet der Verlagsvorbehalt den Wortlaut; ist es ein Standort-Original, fehlt die Freigabe. Auch die Displays der elf Variablen im CodeSystem [pcor-item-dictionary](CodeSystem-pcor-item-dictionary.md) sind neutralisiert.

**Zu klären, in dieser Reihenfolge:** (1) Identifikation als EDI-2-Zuschnitt gegen den deutschen Originalbogen bestätigen — charakteristisch sind `edp8` und `edp5`. (2) Bei Bestätigung Eintrag in der DIZ-Liste nachziehen und die Rechtelage bei Hogrefe klären. (3) Erst dann `Questionnaire.code` oder EDI-2-`linkId`s vergeben ([ADR-008](Designentscheidungen.md)).

#### ACE-D — deutsche Fassung ist nicht frei publizierbar

**Status:** offen, aufgenommen 2026-09-30 — **betrifft rückwirkend fünf publizierte Items** · **Antwort von:** Prof. Dr. Ingo Schäfer (Universität Hamburg)

Die DIZ-Implementierungsliste führt den ACE als „Frei verfügbar“. Das trifft auf das **englische Original** zu (Felitti et al. 1998, Kaiser Permanente / CDC), aber die **deutsche Fassung ACE-D** ist etwas anderes. Belegt durch die Nutzungspraxis der Autor:innen selbst: Das **Deutsche Ärzteblatt** druckt in einer bevölkerungsrepräsentativen ACE-Studie (Witt et al., Dtsch Arztebl Int 2019;116:635–42, [doi:10.3238/arztebl.2019.0635](https://doi.org/10.3238/arztebl.2019.0635)) im Zusatzmaterial ausdrücklich nur **zwei Beispielfragen** von zehn ab, mit dem Hinweis: „Copyright und Zitierweise: Ingo Schäfer, Katja Wingenfeld und Carsten Spitzer (2009) ACE-D … **Der Gesamtfragebogen kann über Prof. Dr. Ingo Schäfer bezogen werden.**“ Das ist das Muster „auf Anfrage beziehbar“, nicht „frei publizierbar“ — dasselbe Muster wie beim [OPD-SFK](OPD-SFK.md), wo die Rücksprache bereits erfolgreich geführt wurde.

**Was daraus folgt:** (1) PCOR-MII publiziert die fünf deutschen ACE-Items bereits mit vollem Wortlaut; die Rücksprache ist einzuholen, nach dem Muster OPD-SFK. (2) Ein ACE-10 mit deutschem Wortlaut kann nicht aus öffentlichen Quellen modelliert werden; ohne Zustimmung wäre nur eine englisch-primäre Fassung oder metadata-only möglich. (3) Positiver Nebenbefund: Die abgedruckte Beispielfrage zur körperlichen Misshandlung ist wortgleich unser `ace2` — damit gegen eine peer-reviewte Quelle bestätigt.

#### EDE-Q6 — Rechte der deutschen Übersetzung klären

**Status:** offen, aufgenommen 2026-09-29 · **Antwort von:** Prof. Anja Hilbert (Universitätsmedizin Leipzig)

Die DIZ-Implementierungsliste führt das Instrument als „frei verfügbar“, die Quellpublikation stellt dagegen ausdrücklich alle Rechte vor. Der in PCOR-MII verwendete Wortlaut stammt — wortgleich, alle sechs Items und die Antwortskala — aus **Hilbert A, Tuschen-Caffier B,** **Eating Disorder Examination-Questionnaire. Deutschsprachige Übersetzung**, 2. Auflage, Tübingen: dgvt-Verlag 2016: „Alle Rechte vorbehalten. […] Dies gilt insbesondere für Vervielfältigungen, Übersetzungen, Mikroverfilmungen sowie die **Einspeicherung und Verarbeitung in elektronischen Systemen**.“ (© 2016 Anja Hilbert). Die letzte Klausel beschreibt genau das, was ein FHIR-`Questionnaire` tut; dass der dgvt-Verlag das PDF frei zum Download anbietet, ändert daran nichts.

Damit ist EDE-Q6 der dritte Fall dieser Art neben GI-PS und dem bereits geklärten OPD-SFK. Derselbe Weg: Zustimmung der Rechteinhaberin einholen, andernfalls metadata-only nach [WAI](WAI.md)-Muster. `Questionnaire.copyright` weist den Vorbehalt bis dahin aus; die Lizenzspalte der [Instrumentenübersicht](Instrumente.md) sagt „Bestätigung angestrebt“ ([ADR-006](Designentscheidungen.md)). Nebenbefund: Die DIZ-Liste nennt als Übersetzungspaper die **Diagnostica**-Publikation von 2007 — das ist die psychometrische Evaluation, nicht die Übersetzung; für Wortlautfragen ist die dgvt-Ausgabe maßgeblich.

#### Herkunftsrechte der DEM-/MHI-Items

**Status:** OECD-Anteil geklärt ✅ (2026-09-24) · vier PaRIS-Drittinstrumente und GI-PS offen · **Antwort von:** Rechteinhaber des GI-PS; Prüfung der Drittinstrumente durch das Projekt

**OECD (5 Items in DEM) — geklärt.** Die Items stammen aus dem **OECD PaRIS Patient Questionnaire**; die `linkId`s in DEM sind die PaRIS-Variablennamen (`Q_OECDLIT5a`, `Q_OECDLIT7a`, `Q_OECDLITii`, `OECDLIT2a`, `OECDLIT2b`), das Präfix steht für **OECD Measuring Financial **Lit**eracy**. Die OECD Terms and Conditions erlauben für nicht-kommerzielle Zwecke Nutzung **und Übersetzung ohne ausdrückliche Genehmigung**, sofern die OECD als Urheberin genannt, auf das Original verlinkt und der vorgegebene Übersetzungs-Disclaimer aufgenommen wird; PaRIS hat anders als PISA keine Sonderbedingungen. Die Einschränkung der DIZ-Liste („nicht veröffentlicht, for internal use only“) beschreibt den Status der Übersetzung, nicht die Rechtelage des Instruments. `Questionnaire.copyright` von [DEM](Demographie.md) trägt die Herkunftsaufschlüsselung, die OECD-Nennung und den Disclaimer. Der deutsche Wortlaut ist die **Schweizer PaRIS-Fassung** (Unisanté, Lausanne; erkennbar an Helvetismen wie „einschliesslich“ und „Ich weiss es nicht“), also eine offizielle TRAPD-Übersetzung, nach [ADR-005](Designentscheidungen.md) unverändert übernommen.

**Vier PaRIS-Drittinstrumente — Prüfung offen.** Der PaRIS-PQ ist selbst eine Zusammenstellung, und die OECD schließt Drittinhalte ausdrücklich von ihrer Erlaubnis aus: **„The User is responsible for verifying whether this is the case and, if so, securing the appropriate permissions.“**

| | | |
| :--- | :--- | :--- |
| `Q_MONMED` | National Health Interview Survey (NHIS) | US-Regierungswerk — üblicherweise frei, Prüfung offen |
| `Q_MON`,`MONMEAL`,`MONRENT`,`MONBILLS` | Commonwealth Fund International Health Policy Surveys 2016/2017 | private Stiftung — der unklarste Fall |
| `MEDHIMS6`,`MEDHIMS7` | MED-HIMS (Europäische Union 2019) | EU-Publikation — üblicherweise frei, Prüfung offen |
| `WHODIS`,`WHODIS1`,`WHODIS2` | WHO/World Bank Model Disability Survey (WHO 2017) —**nicht**der WHODAS 2.0 | WHO-Publikation — üblicherweise frei, Prüfung offen |

Sinnvoll bleibt außerdem, die offizielle deutsche PaRIS-Übersetzung (cApStAn, TRAPD, 16 Sprachen) gegen die verwendeten Formulierungen zu halten — dann entfiele der Disclaimer-Vorbehalt.

**GI-PS (2 Items in DEM, 9 Items in MHI) — echte Weitergabebeschränkung.** Zitat aus der DIZ-Liste: „Die Eigentums-, Urheber-, Weitergabe- und Veröffentlichungsrechte … verbleiben bei den jeweiligen Testautorinnen oder -autoren, d. h. das gi-ps oder dessen Teile dürfen ohne Zustimmung der Rechteinhaber nicht modifiziert, übersetzt oder an Dritte weitergegeben werden.“ (Entwicklungspaper: [10.13109/zptm.2023.69.1.56](https://doi.org/10.13109/zptm.2023.69.1.56)). Anders als bei der OECD gibt es keine allgemeine Erlaubnis: Eine **Zustimmung der Rechteinhaber** ist erforderlich, andernfalls sind die betroffenen Items auf metadata-only umzustellen. `Questionnaire.copyright` von DEM und MHI weist den Vorbehalt aus. Die Lizenz-Tabelle auf [Instrumente](Instrumente.md) führt OECD und GI-PS bisher nicht auf.

#### BAASIS, ABQ, MTSOSD-R59 — Lizenznehmer, Bezugswege, Fassungen

**Status:** offen, aufgenommen 2026-11-05 · **Antwort von:** Use-Case-Leitung NTx, MHH, Universität Basel, KU Leuven

Die drei Instrumente sind metadata-only mit privater erfassbarer Variante ([ADR-014](Designentscheidungen.md)); die Rechte stehen oben in der Tabelle. Offen ist Folgendes:

* **Lizenznehmer:** Die Uni Basel erteilt die BAASIS-Erlaubnis **je Projekt** über ihr Online-Formular, die DIZ-Liste spricht von einer Lizenzvereinbarung **je Zentrum**. Davon hängt ab, wie die Lizenzschranke auf dem Fragebogen-Server zu schneiden ist (Rolle je Standort oder je Projekt).
* **Datenweitergabe:** Die BAASIS-Nutzung verpflichtet zur Weitergabe der Daten an das laufende Validierungsprojekt der Uni Basel (Term IV). Das sollte die Use-Case-Leitung vor der Lizenzanfrage kennen. Publikationen müssen Denhaerynck et al. 2023, Haupenthal et al. 2025 und die Website zitieren.
* **BAASIS 2_a:** Das Dictionary gibt für die Teilfrage 2_a eine Raten-Skala an (von einmalig bis fast täglich), die offizielle Erläuterung für alle drei Teilfragen dieselben Anzahl-Kategorien. Ob die Raten-Skala dem lizenzierten deutschen Bogen (Version 2021) entspricht oder eine lokale Abweichung ist, ist mit MHH zu prüfen. Bis dahin sind beide Skalen getrennt modelliert.
* **ABQ:** Bezugsweg der Lizenzvereinbarung zu klären. Die **Polung** der Gewichte 1–4 ist nicht gegen das Originalinstrument verifiziert — das Dictionary führt die Zustimmungsstufe mit dem Wert 1 als erste Option; ob die Stufenfolge die Barrierenstärke in der erwarteten Richtung abbildet, ist vor produktiver Nutzung zu prüfen. Für `ABQ_01` nennt das Dictionary als Auslöser nur BAASIS1A, für alle anderen Items BAASIS1A/2/3/4 — vermutlich eine Inkonsistenz.
* **MTSOSD-R59:** Ob MHH die vom MAPI Research Institute linguistisch validierte deutsche Fassung einsetzt, ist zu bestätigen. Und der **Erhebungsumfang** ist offen: Laut Dictionary wurde der komplette Bogen erhoben, das Blatt **Domain Overview** führt im Monitoring nur die Domänen Tremor und Diarrhoe (Prio A, quartalsweise, Telemonitoring wöchentlich), das Blatt **Comments and Questions** fragt „komplette Nebenwirkungen? Oder trennen?“. Der Questionnaire ist in beiden Fällen die Basis; ein Telemonitoring-Zuschnitt aus den Symptomen 16 und 30 würde als eigene Ressource per `derivedFrom` abgeleitet ([ADR-008](Designentscheidungen.md)).
* **PHQ-15 in NTx:** Das Domain Overview führt PHQ-15 nur für PSS, das Dictionary-Blatt NTx aber mit; die NTx-Manifeste pinnen es deshalb nicht. Entscheidung der Use-Case-Leitung.

### Weitere offene Punkte

#### PROMIS-GH — linkIds und Fortbestand des 2-Item-Bogens

**Status:** offen, aufgenommen 2026-11-11 · **Entscheidung:** Maintainer und Use-Case-Leitung

Das MII-PRO-Modul führt seit 2027.0.0-ballot.2 die vollständige PROMIS Scale v1.2 – Global Health (`mii-qst-pro-promis-global-health`, 10 Items, Status `draft`; deutsche Übersetzung dort bisher nur für Global01, Global02 und Global07). [`PROMISGH`](Questionnaire-PROMISGH.md) ist per `derivedFrom` als 2-Item-Zuschnitt davon ausgewiesen. Zwei Fragen: (1) Die `linkId`s hier sind die Dictionary-Variablen `Global01`/`Global02`, upstream heißen dieselben Items `promis-global01`/`promis-global02` — [ADR-008](Designentscheidungen.md) spräche für die Upstream-IDs, das wäre ein Breaking Change für Bestandsantworten. (2) Entfällt der lokale Bogen zugunsten der Modul-Definition, erheben die Standorte zehn statt zwei Items — das entscheidet der Erhebungsplan, nicht die Technik.

#### AN-Instrumente — Scoring, visuelle Skalen, Dictionary-Erratum

**Status:** offen (Stand 2026-09-29; Quellenverifikation aller fünf Instrumente abgeschlossen) · **Entscheidung:** Use-Case-Leitung AN

* **Scoring:** Alle fünf sind Zuschnitte („trennschärfstes Item je Skala“ bzw. „erste 5 Fragen“), für die keine validierte Scoring-Vorschrift vorliegt. Bewusst kein Score-Item — bis eine Auswertungsregel fachlich abgestimmt ist; die Antwortcodes tragen vorsorglich `itemWeight`. Der frühere ERQ-Score ist zurückgezogen, weil der Bogen nicht der ERQ-S ist (siehe [ERQ-6](ERQ-6.md)).
* **Visuelle Skalen:** Die Antwortskalen von ERQ-6 (1–7) und EDE-Q-Item 27 (0–6) liegen im Dictionary nur als Grafik vor (Reiter „ERQ“ / „EDE-Q27“); die Anker wurden aus den Grafiken übernommen und sind gegen die Originalbögen zu prüfen.
* **EDE-Q6 — Erratum im Dictionary:** Die Bedingung für `edeq30` lautet dort „If edeq31 = 1“; eine Variable `edeq31` existiert im AN-Blatt nicht. Umgesetzt als `enableWhen` auf `edeq29` (die Ja/Nein-Frage direkt davor) — im Dictionary zu korrigieren.

#### UKHD-Zusatzitems — offene Punkte zum Dictionary

**Status:** offen, aufgenommen 2026-10-01 · **Entscheidung:** UKHD und Dictionary-Pflege

Beim Modellieren der [UKHD-Zusatzitems](UKHD-Zusatzitems.md) sind Auffälligkeiten aufgefallen, die nicht in FHIR zu lösen sind; sie stehen zusätzlich als `designNote` am jeweiligen Item.

1. **Herkunft des Wortlauts je Gruppe ungeklärt**— siehe[Standortgruppen](#standortgruppen); konkret nachzufragen für`bdkm`,`erwEV`und`edp`.
1. **`bdkm15` und `treatment_outpatient` überschneiden sich.**Beide fragen nach aktueller psychotherapeutischer Behandlung — in zwei Bögen, mit zwei Antwortskalen. Sie unterscheiden sich im Zeitbezug (`bdkm15`nur zur Aufnahme und mit Vorgeschichte,`treatment_outpatient`zu jedem Termin und mit Setting), liefern zur Aufnahme aber teilweise dieselbe Information.
1. **Der Variablenname `treatment_outpatient` ist irreführend.**Stufe 4 der Antwortskala erfasst ausdrücklich stationäre oder teilstationäre Behandlung; das Item fragt den Behandlungsstatus insgesamt ab. Der Name bleibt als`linkId`und`item.code`, darf aber nicht als Bedeutungsangabe gelesen werden.
1. **`comorbid1` — formal unsauber, bewusst so belassen (entschieden 01.10.2026).**Die Frage ist wörtlich eine Ja/Nein-Frage, das Dictionary sieht ein Textfeld vor; gemeint ist das Textfeld für weitere Diagnosen.`type = text`bildet die Erhebung korrekt ab, der Wortlaut bleibt nach[ADR-010](Designentscheidungen.md)unverändert.
1. **Uneinheitliche Variablennamen in `UKHD-LE`.**`life_event1_screening`/`life_event1_monitoring`gegen`lifev_discharge`/`lifev_text`— zwei Präfixe für eine Gruppe, und ein`life_event2`existiert nicht; in der Beispielliste von`life_event1_screening`fehlt offenbar der Kopf der Wendung „Auflösung einer Partnerschaft“.
1. **Die Gruppen-ID `UKHD_D` trägt einen Unterstrich**, alle anderen einen Bindestrich. Ressourcen-Id und Katalogcode folgen der Hauskonvention (`UKHD-D`/`ukhd-d`), die Dictionary-Schreibweise bleibt in der Property`instrument`erhalten.
1. **`bdkm16` fragt nach Arztbesuchen, steht aber in **Past Treatment**.**Inhaltlich gehört das Item eher zur Versorgungsinanspruchnahme (vgl.`UKE-HCU`in PSS).
1. **`UKHD-D` überschneidet sich mit dem [MHI](MHI.md).**Dort erheben`CPCOR-DIAG`und`GIPS13`kodiert, was hier als Freitext erhoben wird. Welche Darstellung für die Auswertung maßgeblich ist, ist fachlich zu klären.
1. **Hochsensible Inhalte:**[UKHD-LE](Questionnaire-UKHDLE.md)(Verlusterfahrungen, Missbrauch) und die im[ACE](ACE.md)liegende Gruppe`UKHD-CTT`(Kindheitsbelastungen) brauchen wie der PHQ-SI eine Governance der Auswertung.

#### PHQ-SADS — unterschiedlicher Recall bei geteilten Items

**Status:** offen, **Roadmap 2027 des MII-PRO-Moduls** (Stand 2026-09-02) · **Entscheidung:** MII-PRO-Modul

Der PHQ-SADS ist die gemeinsame Auswertung von PHQ-15, GAD-7 und PHQ-9. Im geteilten PHQ-D-Namespace sind das 31 Items, aber nur **29 verschiedene `linkId`s**: `phq-phq2c` (Schlafstörungen) und `phq-phq2d` (Müdigkeit) gehören zu PHQ-15 **und** PHQ-9. PHQ-15 hat einen 4-Wochen-Recall, PHQ-9 und GAD-7 einen 2-Wochen-Recall; das geteilte Item wird einmal beantwortet, fließt aber in zwei Scores mit unterschiedlichem Zeitbezug ein. Das ist auf Item-Ebene nicht lösbar und muss sich in der Score-Interpretation niederschlagen. Zuständig ist das MII-PRO-Modul, wo die PHQ-Questionnaires, der Namespace und die Score-`ObservationDefinition`s gepflegt werden; PCOR-MII dokumentiert den Konflikt im Abschnitt „PHQ-SADS“ der [PHQ-Übersicht](PHQ.md) und übernimmt die Lösung, sobald sie upstream getroffen ist.

#### Noch nicht modellierte Zeilen des Erhebungsplans

PROMIS NRS Pain Intensity 1a als Einzelinstrument (das Item steckt im PROMIS-29), die Summary-Scores PHS/PCS/MHS/MCS (Prio A, kein Artefakt), die PROMIS-16-Domänen-T-Scores (upstream Roadmap 2027), die UKE-Versorgungsitems in PSS und `UKHD-BI` in AN. Einzelheiten in den Tabellen der Use-Case-Seiten.

