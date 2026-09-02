Der **PHQ** (Patient Health Questionnaire) ist keine einzelne Skala, sondern eine **Familie modular aufgebauter Fragebögen**, die sich aus derselben Item-Bank speisen. In der deutschen Fassung (**PHQ-D**, Löwe, Spitzer, Zipfel & Herzog 2002) sind die Items in Blöcke gegliedert; einzelne Instrumente (PHQ-9, PHQ-15, …) greifen jeweils auf einen Ausschnitt dieser Blöcke zu. Diese Seite bündelt die **instrumentenübergreifenden** Aspekte der PHQ-Familie; die einzelnen Instrumente sind auf den Seiten [PHQ-9](PHQ-9.html) und [PHQ-15](PHQ-15.html) beschrieben.

Wer nur ein einzelnes Instrument umsetzt, muss sich mit dem gemeinsamen Namespace nicht befassen — der fertige Questionnaire und das QR-Beispiel auf der jeweiligen Instrumentseite genügen. Relevant ist diese Übersicht nur bei **gemeinsamer Verarbeitung mehrerer PHQ-Instrumente** oder bei der **Migration von Alt-Daten**.

### PHQ-Instrumente in PCOR-MII

PCOR-MII referenziert die im MII PRO-Modul gepflegten Questionnaires — kein eigener Nachbau. Stand des referenzierten Pakets: `de.medizininformatikinitiative.kerndatensatz.pros` 2026.6.0.

| Instrument | Erfasst | Im MII PRO-Modul | PCOR-MII-Seite |
|---|---|---|---|
| **PHQ-9** | Depressivität (9 Items) | enthalten | [PHQ-9](PHQ-9.html) |
| **PHQ-15** | somatische Symptomlast (15 Items) | enthalten (ab 2026.5.0) | [PHQ-15](PHQ-15.html) |
| PHQ-8 | Depressivität ohne Suizid-Item | kein eigener Questionnaire — vollständig im PHQ-9 enthalten | → [PHQ-9](PHQ-9.html) |
| PHQ-4 | Ultrakurz-Screening (PHQ-2 + GAD-2) | nicht enthalten (Stand 2026.6.0) | — |
| GAD-7 | Ängstlichkeit (7 Items) | nicht enthalten (Stand 2026.6.0) | — |

Für den **PHQ-8** existiert kein eigener Questionnaire — er ist aber auch nicht nötig: Alle acht Items sind identisch im PHQ-9 enthalten (`phq-phq2a…h`; der PHQ-8 ist der PHQ-9 ohne das Suizid-Item `phq-phq2i`). Wer PHQ-8 erheben will, nutzt die PHQ-9-Definition und wertet die Items `phq-phq2a…h` aus.

PHQ-4 und GAD-7 sind im MII PRO-Modul derzeit nicht enthalten — es existiert also weder ein Questionnaire noch eine Canonical-URL, auf die verwiesen werden könnte. Sie sind hier nur der Vollständigkeit halber genannt; Bedarf wäre an das MII PRO-Modul zu melden.

### Gemeinsamer PHQ-D-Namespace

Die Items der PHQ-Instrumente tragen `linkId`s aus einem gemeinsamen PHQ-D-Namespace (`phq-…`), statt pro Fragebogen neu vergebener IDs. Items, die in mehreren Instrumenten vorkommen, haben dadurch überall dieselbe `linkId`. Die Überlappungen innerhalb der Familie (Items aus dem Depressions-Block):

| `linkId` | Item | PHQ-9 | PHQ-8 | PHQ-4 | PHQ-15 |
|---|---|---|---|---|---|
| `phq-phq2a` | Interessen-/Freudlosigkeit / little interest or pleasure | enthalten | enthalten | enthalten (PHQ-2) | — |
| `phq-phq2b` | Niedergeschlagenheit / feeling down, depressed, hopeless | enthalten | enthalten | enthalten (PHQ-2) | — |
| `phq-phq2c` | Schlafstörungen / trouble sleeping | enthalten | enthalten | — | enthalten |
| `phq-phq2d` | Müdigkeit / feeling tired, low energy | enthalten | enthalten | — | enthalten |

Darüber hinaus: Der **PHQ-8** besteht vollständig aus PHQ-9-Items (`phq-phq2a…h`, siehe oben), und die beiden **GAD-2**-Items des PHQ-4 sind zugleich die ersten beiden Items des **GAD-7**. Da PHQ-4 und GAD-7 im MII PRO-Modul nicht enthalten sind, existieren für die GAD-Items derzeit keine `linkId`s im Namespace.

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

### Quellen

- Raw-Package: [MII PRO Package 2026.6.0 (Simplifier)](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.pros/2026.6.0)
- Lizenz: PHQ / PHQ-D © Pfizer Inc. — frei verfügbar (public domain), keine Genehmigung für Reproduktion/Übersetzung/Nutzung erforderlich.
- Offizielle deutsche Quelle: PHQ-D (Löwe, Spitzer, Zipfel & Herzog 2002)
