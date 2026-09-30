Der **PHQ** (Patient Health Questionnaire) ist keine einzelne Skala, sondern eine **Familie modular aufgebauter Fragebögen**, die sich aus derselben Item-Bank speisen. In der deutschen Fassung (**PHQ-D**, Löwe, Spitzer, Zipfel & Herzog 2002) sind die Items in Blöcke gegliedert; einzelne Instrumente (PHQ-9, PHQ-15, …) greifen jeweils auf einen Ausschnitt dieser Blöcke zu. Diese Seite bündelt die **instrumentenübergreifenden** Aspekte der PHQ-Familie; die einzelnen Instrumente sind auf den Seiten [PHQ-9](PHQ-9.html) und [PHQ-15](PHQ-15.html) beschrieben.

Wer nur ein einzelnes Instrument umsetzt, muss sich mit dem gemeinsamen Namespace nicht befassen — der fertige Questionnaire und das QR-Beispiel auf der jeweiligen Instrumentseite genügen. Relevant ist diese Übersicht nur bei **gemeinsamer Verarbeitung mehrerer PHQ-Instrumente** oder bei der **Migration von Alt-Daten**.

### PHQ-Instrumente in PCOR-MII

PCOR-MII referenziert die im MII PRO-Modul gepflegten Questionnaires — kein eigener Nachbau. Stand des referenzierten Pakets: `de.medizininformatikinitiative.kerndatensatz.pros` 2026.7.0.

| Instrument | Erfasst | Im MII PRO-Modul | PCOR-MII-Seite |
|---|---|---|---|
| **PHQ-9** | Depressivität (9 Items) | enthalten | [PHQ-9](PHQ-9.html) |
| **PHQ-15** | somatische Symptomlast (15 Items) | enthalten (ab 2026.5.0) | [PHQ-15](PHQ-15.html) |
| PHQ-8 | Depressivität ohne Suizid-Item | kein eigener Questionnaire — vollständig im PHQ-9 enthalten | → [PHQ-9](PHQ-9.html) |
| **GAD-7** | Ängstlichkeit (7 Items) | enthalten (ab 2026.7.0) | [GAD-7](GAD-7.html) |
| PHQ-4 | Ultrakurz-Screening (PHQ-2 + GAD-2) | kein eigener Questionnaire — PHQ-2-Items im PHQ-9, GAD-2-Items im GAD-7 | → [PHQ-9](PHQ-9.html), [GAD-7](GAD-7.html) |
| PHQ-SADS | Somatik + Angst + Depression kombiniert | kein eigener Questionnaire — Vereinigung von PHQ-15, GAD-7 und PHQ-9 | → siehe [PHQ-SADS](#phq-sads) |

Für den **PHQ-8** existiert kein eigener Questionnaire — er ist aber auch nicht nötig: Alle acht Items sind identisch im PHQ-9 enthalten (`phq-phq2a…h`; der PHQ-8 ist der PHQ-9 ohne das Suizid-Item `phq-phq2i`). Wer PHQ-8 erheben will, nutzt die PHQ-9-Definition und wertet die Items `phq-phq2a…h` aus.

Für den **PHQ-4** existiert ebenfalls kein eigener Questionnaire. Er besteht aus PHQ-2 (`phq-phq2a`, `phq-phq2b`) und GAD-2 (`phq-phq5a`, `phq-phq5b`) — alle vier Items sind über die PHQ-9- bzw. GAD-7-Definition verfügbar. Wer PHQ-4 erheben will, wertet diese vier `linkId`s aus; ein eigener Questionnaire wäre im MII PRO-Modul anzumelden, falls ein eigenständiges Artefakt gebraucht wird.

### Gemeinsamer PHQ-D-Namespace

Die Items der PHQ-Instrumente tragen `linkId`s aus einem gemeinsamen PHQ-D-Namespace (`phq-…`), statt pro Fragebogen neu vergebener IDs. Items, die in mehreren Instrumenten vorkommen, haben dadurch überall dieselbe `linkId`. Die Überlappungen innerhalb der Familie (Items aus dem Depressions-Block):

| `linkId` | Item | PHQ-9 | PHQ-8 | PHQ-4 | PHQ-15 |
|---|---|---|---|---|---|
| `phq-phq2a` | Interessen-/Freudlosigkeit / little interest or pleasure | enthalten | enthalten | enthalten (PHQ-2) | — |
| `phq-phq2b` | Niedergeschlagenheit / feeling down, depressed, hopeless | enthalten | enthalten | enthalten (PHQ-2) | — |
| `phq-phq2c` | Schlafstörungen / trouble sleeping | enthalten | enthalten | — | enthalten |
| `phq-phq2d` | Müdigkeit / feeling tired, low energy | enthalten | enthalten | — | enthalten |

Der **GAD-7** nutzt seit 2026.7.0 den Angst-Block des PHQ-D (`phq-phq5a`–`phq-phq5g`). Seine sieben Items sind zugleich die Item-Basis für GAD-2, PHQ-4 und den Angst-Teil des PHQ-SADS:

| `linkId` | Item (deutsche Fassung) | GAD-7 | GAD-2 | PHQ-4 | PHQ-SADS |
|---|---|---|---|---|---|
| `phq-phq5a` | Nervosität, Ängstlichkeit oder Anspannung | enthalten | enthalten | enthalten | enthalten |
| `phq-phq5b` | Nicht in der Lage sein, Sorgen zu stoppen oder zu kontrollieren | enthalten | enthalten | enthalten | enthalten |
| `phq-phq5c` | Übermäßige Sorgen bezüglich verschiedener Angelegenheiten | enthalten | — | — | enthalten |
| `phq-phq5d` | Schwierigkeiten zu entspannen | enthalten | — | — | enthalten |
| `phq-phq5e` | Rastlosigkeit, so dass Stillsitzen schwer fällt | enthalten | — | — | enthalten |
| `phq-phq5f` | Schnelle Verärgerung oder Gereiztheit | enthalten | — | — | enthalten |
| `phq-phq5g` | Gefühl der Angst, so als würde etwas Schlimmes passieren | enthalten | — | — | enthalten |

Darüber hinaus: Der **PHQ-8** besteht vollständig aus PHQ-9-Items (`phq-phq2a…h`, siehe oben), und der **PHQ-4** setzt sich aus PHQ-2 (`phq-phq2a`, `phq-phq2b`) und GAD-2 (`phq-phq5a`, `phq-phq5b`) zusammen — alle vier Items existieren im Namespace, ohne dass es einen eigenen PHQ-4-Questionnaire gibt.

### PHQ-SADS

Der **PHQ-SADS** (*Somatic, Anxiety and Depressive Symptoms*, Kroenke et al. 2010) ist kein eigener Fragebogen, sondern die gemeinsame Auswertung der drei Skalen **PHQ-15**, **GAD-7** und **PHQ-9** mit ihren jeweiligen Summenscores — es gibt bewusst keinen Gesamtscore über alle drei.

Im geteilten Namespace ist er damit vollständig abgedeckt, ohne dass ein viertes Artefakt nötig wäre:

| Skala | `linkId`s | Items | Score |
|---|---|--:|---|
| PHQ-15 (somatisch) | `phq-phq1a`–`phq-phq1m`, `phq-phq2c`, `phq-phq2d` | 15 | 0–30 |
| GAD-7 (Angst) | `phq-phq5a`–`phq-phq5g` | 7 | 0–21 |
| PHQ-9 (Depression) | `phq-phq2a`–`phq-phq2i` | 9 | 0–27 |

Die drei Skalen umfassen zusammen **31 Items, aber nur 29 verschiedene `linkId`s**: `phq-phq2c` (Schlafstörungen) und `phq-phq2d` (Müdigkeit) gehören sowohl zum PHQ-15 als auch zum PHQ-9. Genau hier zahlt der geteilte Namespace ein — die beiden Items werden **einmal erhoben und in beide Scores eingerechnet**, statt sie doppelt abzufragen. Wer PHQ-SADS umsetzt, erhebt also 29 Items und berechnet daraus die drei Summenscores.

Ob PHQ-SADS und PHQ-4 zusätzlich als **eigene abgeleitete Questionnaires** ausgeprägt werden (Subset-Definition mit `derivedFrom` auf die drei Basis-Questionnaires, statt sie nur über `linkId`s auszuwerten), ist offen. Nötig ist es für die Erhebung nicht — beide sind über die vorhandenen Definitionen vollständig abgedeckt.

Zu beachten: Der PHQ-15 hat einen **4-Wochen-Recall**, PHQ-9 und GAD-7 einen **2-Wochen-Recall**. Die beiden geteilten Items stehen im PHQ-15 damit unter einem anderen Zeitbezug als im PHQ-9 — bei gemeinsamer Erhebung ist festzulegen, welcher Recall gilt, und die Abweichung zu dokumentieren.

Werden mehrere PHQ-Instrumente derselben Person verarbeitet und die QuestionnaireResponses allein über `item.linkId` zusammengeführt, kollidieren die geteilten Items. Bei getrennter Verarbeitung (Regelfall) hat der geteilte Namespace keine Auswirkung.

### linkId-Migration PHQ-9 (2026.4.x → ab 2026.5.0)

Mit 2026.5.0 wurden die PHQ-9-Item-`linkId`s vom alten, instrumentspezifischen Schema (`phq-phq9-q01…q10`) auf den geteilten PHQ-D-Block-Namespace (`phq-phq2a…i` sowie `phq-phq9-difficulty`) umgestellt. Standorte, die PHQ-9-Antworten vor 2026.5.0 erfasst haben, halten `QuestionnaireResponse`s mit den alten `linkId`s vor, die nicht mehr zur aktuellen Questionnaire-Definition passen.

Das MII PRO-Modul liefert dafür die ConceptMap [`mii-cm-pro-phq-9-linkid-migration`](https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ConceptMap/mii-cm-pro-phq-9-linkid-migration). Angewendet auf bestehende PHQ-9-`QuestionnaireResponse`s bringt sie deren `item.linkId` wieder mit dem aktuellen Questionnaire in Einklang:

| Alt (`linkId` ≤ 2026.4.x) | Neu (`linkId` ab 2026.5.0) | Äquivalenz | Item |
|---|---|---|---|
| `phq-phq9-q01` | `phq-phq2a` | `equal` | Little interest or pleasure in doing things |
| `phq-phq9-q02` | `phq-phq2b` | `equal` | Feeling down, depressed, or hopeless |
| `phq-phq9-q03` | `phq-phq2c` | `equal` | Trouble falling/staying asleep, sleeping too much |
| `phq-phq9-q04` | `phq-phq2d` | `equal` | Feeling tired or having little energy |
| `phq-phq9-q05` | `phq-phq2e` | `equal` | Poor appetite or overeating |
| `phq-phq9-q06` | `phq-phq2f` | `equal` | Feeling bad about yourself / being a failure |
| `phq-phq9-q07` | `phq-phq2g` | `equal` | Trouble concentrating |
| `phq-phq9-q08` | `phq-phq2h` | `equal` | Moving or speaking noticeably slowly / restless |
| `phq-phq9-q09` | `phq-phq2i` | `equal` | Thoughts of being better off dead / self-harm |
| `phq-phq9-q10` | `phq-phq9-difficulty` | `equal` | Difficulty attributed to the symptoms (functional impairment) |

Alle Zuordnungen sind 1:1 und `equal` — es ändert sich ausschließlich die `linkId`, nicht die Bedeutung, die Antwortoptionen oder die ordinalen Gewichte. Die berechneten Items (`phq-phq9-score-total`, `phq-phq9-promis-tscore`) sind nicht Teil der Migration, da sie in Antworten nicht patientenseitig erhoben werden.

### linkId-Migration GAD-7 (instrumentspezifisch → PHQ-D-Namespace)

Der GAD-7 kommt mit 2026.7.0 direkt im PHQ-D-Namespace ins Modul. Für Alt-Daten, die mit instrumentspezifischen `linkId`s (`gad7-q01`–`gad7-q07`) erfasst wurden, liefert das MII PRO-Modul die ConceptMap [`mii-cm-pro-gad-7-linkids`](https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ConceptMap/mii-cm-pro-gad-7-linkids):

| Alt (`linkId`) | Neu (`linkId`) | Item |
|---|---|---|
| `gad7-q01` | `phq-phq5a` | Nervosität, Ängstlichkeit oder Anspannung |
| `gad7-q02` | `phq-phq5b` | Nicht in der Lage sein, Sorgen zu stoppen oder zu kontrollieren |
| `gad7-q03` | `phq-phq5c` | Übermäßige Sorgen bezüglich verschiedener Angelegenheiten |
| `gad7-q04` | `phq-phq5d` | Schwierigkeiten zu entspannen |
| `gad7-q05` | `phq-phq5e` | Rastlosigkeit, so dass Stillsitzen schwer fällt |
| `gad7-q06` | `phq-phq5f` | Schnelle Verärgerung oder Gereiztheit |
| `gad7-q07` | `phq-phq5g` | Gefühl der Angst, so als würde etwas Schlimmes passieren |

Auch hier sind alle Zuordnungen 1:1; es ändert sich ausschließlich die `linkId`.

### Quellen

- Raw-Package: [MII PRO Package 2026.7.0 (Simplifier)](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.pros/2026.7.0)
- Lizenz: PHQ / PHQ-D © Pfizer Inc. — frei verfügbar (public domain), keine Genehmigung für Reproduktion/Übersetzung/Nutzung erforderlich.
- Offizielle deutsche Quelle: PHQ-D (Löwe, Spitzer, Zipfel & Herzog 2002)
- PHQ-SADS: Kroenke K, Spitzer RL, Williams JBW, Löwe B. *The Patient Health Questionnaire Somatic, Anxiety, and Depressive Symptom Scales: a systematic review*. Gen Hosp Psychiatry. 2010;32(4):345–359. [doi:10.1016/j.genhosppsych.2010.03.006](https://doi.org/10.1016/j.genhosppsych.2010.03.006)
