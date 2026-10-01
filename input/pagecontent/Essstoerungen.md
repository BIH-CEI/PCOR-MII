Diese Seite erklärt den **Erhebungsplan für den Use Case Essstörungen** (Anorexia Nervosa, AN): welche Domänen wann mit welcher Priorität erhoben werden, welche Instrumente dafür vorgesehen sind und wie sich der Plan zu dem verhält, was in PCOR-MII bereits als FHIR-Ressource vorliegt.

Die FHIR-Artefakte der AN-Batterie stehen auf der Seite [AN](AN.html); dort geht es um `Questionnaire`s, `linkId`s und Beispielantworten. Die reine Nachschlagetabelle „welches Instrument liegt wo“ ist die [AN — Instrumentenliste](AN-Instrumentenliste.html). Hier geht es um das **Studienvorhaben dahinter**.

Quelle ist das Blatt **Domain Overview** des Item Level Dictionary (`MASTER_3EntitiesOverview.xlsx`, nicht Teil dieses Repositories) samt seiner Handanweisung. Alle Prioritäten, Frequenzen und Itemzahlen unten sind daraus abgelesen, nicht interpretiert.

### Vier Use Cases, nicht drei

Der Plan unterscheidet **vier** klinische Use Cases:

| Kürzel | Use Case |
|---|---|
| **PSS** | Persistent Somatic Syndrome |
| **AN** | Anorexia Nervosa |
| **NTXr** | Nierentransplantation — *receiver* (Empfänger:in) |
| **NTXd** | Nierentransplantation — *donor* (Spender:in) |

Die übrigen Seiten dieses IG sprechen bisher von drei Entitäten und fassen NTx zusammen. Für PSS und AN macht das keinen Unterschied; für die Nierentransplantation schon, weil Empfänger- und Spenderseite eigene Prioritätenprofile haben — die Spenderseite hat auf der B-Stufe des Screenings etwa nur ein einziges Item. Das ist auf der Seite [Instrumente](Instrumente.html) nachzuziehen.

### Drei Erhebungsphasen

Der Plan gliedert die Erhebung nicht nach Instrumenten, sondern nach **Phasen** — und je Phase nach Konstrukt:

| Phase | Konstrukte | Frequenz in AN |
|---|---|---|
| **Screening** | Generic Health Status · Mental Health Assessment | **i** — Initial Consultation |
| **Monitoring** | Treatment Effects · Disease Characteristics | **hp** — nach Heilungsverlauf; Soziodemographie **y** |
| **Outcome** | Generic Health Status · Mental Health Assessment | **y** — jährlich |

Die Frequenz `hp` („according to healing process") ist die AN-Besonderheit: Wo PSS und die Nierentransplantation im Monitoring quartalsweise erheben (`q`), koppelt AN die Erhebung an den Behandlungsverlauf. Das hat eine Konsequenz für die Modellierung, die man nicht übersehen sollte: **Es gibt keinen festen Zeitraster**, an dem sich eine `QuestionnaireResponse` ausrichten ließe. Der Erhebungszeitpunkt ist ein klinisches Ereignis, kein Kalenderdatum.

Die vollständige Frequenz-Legende: `i` Initial Consultation · `w` weekly · `q` quarterly · `y` yearly · `t` telemonitoring (einzelne Zentren können häufiger erheben) · `hp` according to healing process.

### Drei Prioritätsstufen — und ein Itembudget

| Stufe | Bedeutung | Items im AN-Screening |
|---|---|--:|
| **A** | must have | 46–76 |
| **B** | really nice to have | 5–16 |
| **C** | nice to have | 2 |

Die Spannweite bei A entsteht daraus, dass **je Domäne mehrere Instrumentengrößen zur Wahl stehen**: Wer überall die Langform nimmt, landet bei 76 Items, wer überall die Kurzform nimmt, bei 46. Das Budget ist also eine Entwurfsentscheidung pro Standort, keine feste Zahl.

### Je Domäne drei Instrumentengrößen

Das ist die Kernmechanik des Plans und der Grund, warum in PCOR-MII überall „Zuschnitte" auftauchen. Für jede Domäne führt der Plan bis zu drei Alternativen:

| Spalte | Umfang | Zweck |
|---|---|---|
| **≥5** | Langform | vollständige Messung, wo Itembudget vorhanden ist |
| **3–4** | Mittelform | meist die PROMIS Short Forms 4a |
| **≤2** | Kurzform | Minimalvariante für enge Budgets oder häufige Wiederholung |

Ein Beispiel aus dem generischen Kern: Für *Anxiety* stehen GAD-7 (7 Items), PROMIS SF Anxiety 4a (4) und PROMIS Profile 16 (2 Items für diese Domäne) zur Wahl — drei Wege, dieselbe Skala zu bedienen.

### Die AN-spezifischen Domänen und ihre Instrumente

Alle mit Priorität **A** im Screening, sofern nicht anders vermerkt:

| Domäne | Langform (≥5) | Kurzform (≤2) | In PCOR-MII |
|---|---|---|---|
| Emotion Regulation | **ERQ-6** (6) | ERQ-2 (2) | [ERQ-6](ERQ-6.html) — **die Langform** |
| Eating Disorder Psychopathology | **EDE-Q6 (6) + EDP (11)** = 17 | — | [EDE-Q6](EDE-Q6.html) und [UKHD-EDP](UKHD-EDP.html) — letzterer metadata-only |
| Motivation to Change | **ANSOCQ** (20) | ANSOCQ-2 (2) | [ANSOCQ-2](ANSOCQ-2.html) — die Kurzform |
| Social Support | **SSUK-8** (8) | SSUK (2) | [SSUK-2](SSUK-2.html) — die Kurzform |
| Childhood Trauma | **ACE** (5) | — | [ACE](ACE.html) — **die Langform** |
| Body Image | UKHD-BI (3) | — | **bewusst nicht modelliert** — visuelle Bildskala, Erhebung läuft noch nicht damit; Freigabe UKHD offen |
| Childhood Trauma Time Specification | UKHD-CTT (6) | — | [ACE](ACE.html) — modelliert, dort per `enableWhen` an `ace1`–`ace3` gebunden; **Freigabe UKHD offen** |
| Life Events | UKHD-LE (2–4) | — | [UKHD-LE](Questionnaire-UKHDLE.html) — modelliert (4 Items), **Freigabe UKHD offen** |
| AN specific history | UKHD-ANB (2) | — | [UKHD-ANB](Questionnaire-UKHDANB.html) — modelliert, **Freigabe UKHD offen** |
| Past Treatment | UKHD-PT (2) | — | [UKHD-PT](Questionnaire-UKHDPT.html) — modelliert, **Freigabe UKHD offen** |
| Personality Functioning | OPD-SFK (12) — Prio **C** | — | [OPD-SFK](OPD-SFK.html) |
| Suicidality (nur stationär) | PHQ-9-Item (1) | — | über [PHQ-9](PHQ-9.html) |

**Zwei Befunde, die man leicht falsch herum liest:**

Erstens sind **ERQ-6 und ACE bereits die Langformen** des Plans, nicht Zuschnitte davon. Der ERQ-6 mit 6 Items *ist* die `≥5`-Variante der Domäne Emotion Regulation — daneben steht ein ERQ-2, das in PCOR-MII bisher nicht modelliert ist. Beim ACE ist die `≥5`-Variante genau die 5-Item-Fassung; eine 10-Item-Variante kommt im Plan nicht vor. Wer für diese beiden nach „der Langversion" sucht, hat sie schon.

Zweitens ist die Langform der Essstörungspathologie **nicht der EDE-Q-28**. Der Plan führt 17 Items, und das sind **zwei Instrumente, nicht eines**:

- die **6 EDE-Q-Items** (`edeq1`, `edeq7`, `edeq12`, `edeq27`, `edeq29`, `edeq30`) — Recall „letzte 28 Tage", Häufigkeitsskala 0–6
- **11 Items `edp1`–`edp11`** — zeitlose Zustimmungsskala („1 = Trifft nie zu")

Sie sind **additiv**, nicht verschmolzen: Unterschiedlicher Recall und unterschiedliches Antwortformat schließen einen gemeinsamen Bogen aus. Gemeinsam bedienen sie eine Domäne, das ist alles, was der Planungseintrag „EDEQ/EDP (UKHD)" bedeutet.

Ein vollständiger EDE-Q kommt im Plan an keiner Stelle vor — gebraucht werden sechs Items, nicht achtundzwanzig. Der dgvt-Rechtevorbehalt (siehe [EDE-Q6](EDE-Q6.html)) betrifft also einen kleineren Ausschnitt als zunächst angenommen.

**Der `edp`-Block ist dafür das eigentliche Rechteproblem.** Das UKHD-Präfix legt eine Eigenentwicklung des Standorts nahe, aber die elf Items bilden je genau ein Konstrukt ab — Schlankheitsstreben, Bulimie, Körperunzufriedenheit, Ineffektivität, Perfektionismus, Misstrauen, interozeptive Wahrnehmung, Angst vor dem Erwachsenwerden, Askese, Impulsregulation, soziale Unsicherheit. Das sind **die elf Subskalen des EDI-2**, je ein Item, also dasselbe Zuschnittmuster wie bei den übrigen AN-Instrumenten. Das EDI-2 ist in der deutschen Fassung ein Hogrefe-Testverfahren; die DIZ-Liste enthält dazu **keine Zeile**. Die Rechtelage ist damit nicht „frei", sondern **unbewertet** — Einzelheiten und das Vorgehen im [Entscheidungslog](Designentscheidungen.html).

### Wiederholt wird nicht alles

Die drei Phasen erheben unterschiedlich viel. Im **Monitoring** (Frequenz `hp`) bleiben von den AN-spezifischen Domänen:

- Emotion Regulation (ERQ-6 / ERQ-2), Eating Disorder Psychopathology (17), Body Image (3)
- **Motivation to Change — dann aber nur noch 2 Items**, nicht 20
- Social Support (SSUK-8 / SSUK-2), Life Events, New Diagnosis, AN Weight, aktuelle Behandlung und Medikation

Dazu aus dem generischen Kern Angst, Depression, Suizidalität sowie die PROMIS-Domänen. **Childhood Trauma und ACE erscheinen im Monitoring nicht** — biografische Belastungen werden einmal erhoben, nicht verlaufsbegleitend. Im **Outcome** (jährlich) kommt die AN-spezifische Liste wieder, ergänzt um die Perspektive der Therapeut:innen.

Dass die Veränderungsmotivation im Screening mit 20 Items und im Monitoring mit 2 Items geplant ist, erklärt den PCOR-MII-Zuschnitt [ANSOCQ-2](ANSOCQ-2.html) nachträglich: Er ist die **Verlaufsvariante**, nicht eine Sparversion des Screenings.

### Drei Datenquellen, nicht nur Fragebögen

Der Plan unterscheidet ausdrücklich:

- **PRO** (*patient-reported outcome*) — die Fragebögen. Direkt von den Patient:innen berichtet, ohne Übersetzung oder Interpretation durch Dritte; die Handanweisung begründet das mit der Minimierung eines Reporting Bias.
- **CRO** (*clinician-reported outcome*) — in AN zwei Blöcke: **Suizidalität im ambulanten Bereich** (1 Item, `suiz`, Prio A) und die **Perspektive der Therapeut:innen** (3 Items, `pT`, Prio A, im Outcome jährlich).
- **EHR-Daten** — Diagnosen (ICD-10), Prozeduren (OPS), Medikation, PLZ, Alter, Geschlecht.

Die Aufteilung der Suizidalität ist bemerkenswert und sollte bei der Modellierung nicht verwischt werden: **stationär als PRO** über das PHQ-9-Item, **ambulant als CRO** über ein eigenes UKHD-Item. Beides trägt denselben Namen, hat aber verschiedene Berichtsquellen — in FHIR wären das verschiedene `QuestionnaireResponse.author`-Rollen, nicht dasselbe Item.

### Geplante Scores

Der Plan führt Scores als eigene Zeilen mit Priorität **A**, im Screening und jährlich im Outcome:

| Score | Status in PCOR-MII |
|---|---|
| **PROPr** (PROMIS Preference Utility) | [ObservationDefinition](ObservationDefinition-PcorObsDefProprUtility.html) vorhanden |
| Physical Health Score (PHS) | offen |
| Physical Component Score (PCS) | offen |
| Mental Health Score (MHS) | offen |
| Mental Component Score (MCS) | offen |
| **EQ-5D** (nur Outcome) | offen — Instrument bisher nicht in PCOR-MII |

Damit ist der PROPr-Score nicht eine Zugabe, sondern ein `must have` des Plans — und vier weitere PROMIS-Summenscores stehen daneben, für die bisher keine `ObservationDefinition` existiert. Zum Verhältnis von Score-Definition und ausführbarer Auswertungslogik siehe [Designentscheidungen](Designentscheidungen.html); Interpretationsgrenzen werden als Referenzintervalle dokumentiert, nicht als Regelwerk ausgeliefert.

### Was daraus für PCOR-MII folgt

Der Plan ist breiter als der aktuelle Umsetzungsstand. Offen sind vor allem:

1. **Die Langformen ANSOCQ (20) und SSUK-8 (8)** — beide bisher nur in der Kurzform modelliert. Für das ANSOCQ liegt der englische Originalwortlaut vollständig vor (Rieger et al. 2002), für das SSUK-8 nicht.
2. **ERQ-2** — die Kurzvariante der Emotionsregulation, im Plan vorgesehen, nicht modelliert.
3. **Die UKHD-Itemgruppen** — sämtlich Prio A. Sie bilden kein publiziertes Instrument ab, **aber genau deshalb fehlt ihnen auch jede dokumentierte Freigabe**: Die DIZ-Implementierungsliste führt nur publizierte Instrumente und kennt diese Gruppen nicht. Ob ihr Wortlaut in eine Spezifikation darf, ist eine Entscheidung des Standorts Heidelberg, keine Rechtsfrage, die sich aus der Liste beantworten ließe.

   **Der Stand hat sich hier geändert, die Rechtefrage nicht — sie ist präziser geworden.** Sieben Gruppen sind inzwischen modelliert: `UKHD-PT` (2), `UKHD-ANB` (2), `UKHD-CT` (1), `UKHD-LE` (4), `UKHD-ND` (3) und `UKHD_D` (2) als **je ein eigenes Questionnaire** — die [UKHD-Zusatzitems](UKHD-Zusatzitems.html), ein Bogen je Dictionary-Gruppe —, dazu `UKHD-CTT` (6) im [ACE](ACE.html) — das Dictionary nennt deren `enableWhen`-Bezug auf `ace1` bis `ace3` ausdrücklich, und FHIR kann ihn nur innerhalb eines Questionnaire ausdrücken. Das ist eine **bewusste Projektentscheidung zur Erprobung und keine Freigabe**: Rechteinhaber bleibt das Universitätsklinikum Heidelberg, eine Freigabe liegt nicht dokumentiert vor, und die Bestätigung ist einzuholen. Die Ressource trägt `status = draft` und `experimental = true`; bei einer Einschränkung ist die Umstellung auf metadata-only vorgesehen (Muster [WAI](WAI.html)). Nicht modelliert bleibt `UKHD-BI` (3) — eine visuelle Bildskala, mit der die Erhebung noch nicht läuft und deren Bildvorlage im Dictionary fehlt. Der `edp`-Block wird ohnehin getrennt behandelt, weil er kein Standort-Original ist (siehe oben). Einzelheiten und die offenen Punkte zum Dictionary auf der [Seite UKHD-Zusatzitems](UKHD-Zusatzitems.html).
4. **Der CRO-Anteil** — Suizidalität ambulant und Therapeut:innen-Perspektive. Bisher betrachtet PCOR-MII nur PRO.
5. **Die vier PROMIS-Summenscores und das EQ-5D.**
6. **Die Vier-Use-Case-Struktur** — NTXr und NTXd sind im IG bisher als ein NTx geführt.

### Woher diese Seite ihre Angaben hat

Prioritäten, Frequenzen und Itemzahlen: Blatt `Domain Overview` des Item Level Dictionary, AN-Spalten je Phase, gelesen gegen die Legende im selben Blatt (Priorisierung A/B/C, Frequenz i/w/q/y/t/hp). Itemzahlen der AN-spezifischen Instrumente zusätzlich gegen das Blatt `Item Level Dictionary AN` gezählt. Begriffsabgrenzungen PRO/PROM/Domäne/Konstrukt: Blatt `Handanweisung`. Rechteangaben stammen aus der DIZ-Implementierungsliste und stehen je Instrument im `copyright`-Element des Questionnaire.

Was diese Seite **nicht** aus belegten Quellen hat und deshalb auch nicht behauptet: Kohortengrößen, Rekrutierungszeitraum, beteiligte Standorte über die im Dictionary genannten Kürzel (UKHD, UKE, MHH) hinaus, Förderkontext und Auswertungsplan.

Hinweise zum Lebenszyklus von `Questionnaire` zu `QuestionnaireResponse` siehe [Anwendung](Implementation.html); alle Artefakte unter [Artefakte](artifacts.html).
