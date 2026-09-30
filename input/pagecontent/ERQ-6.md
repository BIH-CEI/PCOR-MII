**ERQ-S** erfasst die **Emotionsregulation** über sechs Items auf einer 7-stufigen Likert-Skala (1 = stimmt überhaupt nicht … 7 = stimmt vollkommen). Die im Item Level Dictionary verwendete Bezeichnung „ERQ-6" ist projektintern — es handelt sich um die **offizielle Kurzform ERQ-S** des *Emotion Regulation Questionnaire*.

### Verwendung in PCOR-MII

Der ERQ-S ist die von den Original-Autor:innen publizierte 6-Item-Kurzform des ERQ (Preece, Petrova, Mehta & Gross 2023). Das ist **belegt, nicht erschlossen** — gleich zweifach:

1. Die **DIZ-Implementierungsliste PCOR-MII** nennt in der Zeile „ERQ-6" als Entwicklungspaper ausdrücklich [doi:10.1016/j.jad.2023.08.076](https://doi.org/10.1016/j.jad.2023.08.076), also die ERQ-S-Publikation, und als Übersetzungspaper [Abler & Kessler 2009](https://doi.org/10.1026/0012-1924.55.3.144). Der Zuschnitt wurde also bewusst als ERQ-S übernommen, nur anders benannt.
2. Ein **Item-Abgleich** gegen den von den Autor:innen publizierten Originalbogen (*ERQ-S: Copy of Questionnaire and Scoring Instructions*, © Stanford Psychophysiology Laboratory) bestätigt es unabhängig: Die sechs ERQ-S-Items sind der Reihe nach die ERQ-Items 1, 2, 3, 6, 8, 9 — exakt die hier modellierten `linkId`s.

Erhoben wird der Bogen nur im Szenario [AN](AN.html). Gepflegt wird er **vorläufig in PCOR-MII**; eine spätere Aufnahme ins MII-PRO-Modul ist vorgesehen (siehe [ADR-003](Designentscheidungen.html)).

**Eine Ungenauigkeit der DIZ-Liste am Rande:** In der Spalte *„verkürzte Version?“* steht beim ERQ-6 dieselbe Formel wie bei [EDE-Q6](EDE-Q6.html), [ANSOCQ-2](ANSOCQ-2.html) und [SSUK-2](SSUK-2.html) — *„nur das Item mit der höchsten Trennschärfe pro Skala“*. Im Singular trifft das hier nicht zu: Es sind **drei** Items je Subskala, nicht eines. Die Formel wirkt durchkopiert. Inhaltlich ist die Sache aber eher stärker als dort — der Zuschnitt ist keine projekteigene Auswahl, sondern die publizierte Kurzform, und deshalb der einzige der fünf AN-Zuschnitte mit validiertem Scoring.

### Artefakte

- **Fragebogen:** [Questionnaire-ERQ6](Questionnaire-ERQ6.html)
- **Beispielantwort:** [ERQ6Response](QuestionnaireResponse-ERQ6Response.html) — ausgefülltes Beispiel; Neubewertung 11, Unterdrückung 19
- **Beispiel-Scores:** [Neubewertung](Observation-ErqsReappraisalObservation.html), [Unterdrückung](Observation-ErqsSuppressionObservation.html) — beide `derivedFrom` die Beispielantwort

Kodierte Antwortoptionen gibt es nicht; alle sechs Items sind numerisch (`integer`, 1–7) mit Slider und Anker-`display`-Item — im Dictionary ist die Skala als Grafik geführt (Anker: 1 = stimmt überhaupt nicht, 4 = neutral, 7 = stimmt vollkommen).

### Canonical

`https://bih-cei.github.io/PCOR-MII/Questionnaire/ERQ6`

### Items

Die `linkId`s sind die **Original-ERQ-Itemnummern** (`linkId`-Regel, [ADR-003](Designentscheidungen.html)) — verifiziert gegen den von Gross/John autorisierten [deutschen Originalbogen](https://spl.stanford.edu/sites/g/files/sbiybj19321/files/media/file/german.pdf) (Abler/Kessler, Universität Ulm): alle sechs Fragetexte wortgleich. Die Dictionary-Variablen-IDs laufen dagegen sequenziell durch:

| `linkId` (= ERQ-Item) | Dictionary-Variable | Frage | Skala |
|---|---|---|---|
| `erq1` | `erq1` | Wenn ich mehr positive Gefühle (wie Freude oder Heiterkeit) empfinden möchte, ändere ich, woran ich denke. | Neubewertung |
| `erq2` | `erq2` | Ich behalte meine Gefühle für mich. | Unterdrückung |
| `erq3` | `erq3` | Wenn ich weniger negative Gefühle (wie Traurigkeit oder Ärger) empfinden möchte, ändere ich, woran ich denke. | Neubewertung |
| `erq6` | `erq4` | Ich halte meine Gefühle unter Kontrolle, indem ich sie nicht nach außen zeige. | Unterdrückung |
| `erq8` | `erq5` | Ich halte meine Gefühle unter Kontrolle, indem ich über meine aktuelle Situation anders nachdenke. | Neubewertung |
| `erq9` | `erq6` | Wenn ich negative Gefühle empfinde, sorge ich dafür, sie nicht nach außen zu zeigen. | Unterdrückung |

**Beim Mapping in die Studiendatenhaltung** ist die Spalte „Dictionary-Variable" maßgeblich — insbesondere `erq6` bezeichnet im Dictionary ein anderes Item als im Questionnaire.

### Scoring — zwei Subskalen

Die Scoring Instructions zum ERQ-S nennen zwei Skalenwerte, keinen Gesamtscore: *„Cognitive reappraisal: sum items 1, 3, and 5. Expressive suppression: sum items 2, 4, and 6."* Da die `linkId`s hier die **Original-ERQ-Nummern** tragen und nicht die ERQ-S-Zählung, ergibt sich:

| Subskala | Items (`linkId`) | Bereich | Richtung |
|---|---|--:|---|
| **Neubewertung** (Cognitive Reappraisal) | `erq1` + `erq3` + `erq8` | 3–21 | höher = häufigere Nutzung, laut Instrument mit besserem Wohlbefinden assoziiert |
| **Unterdrückung** (Expressive Suppression) | `erq2` + `erq6` + `erq9` | 3–21 | höher = häufigere Nutzung, mit schlechterem Wohlbefinden assoziiert |

Beide sind als Score-Definition modelliert: [ERQ-S Neubewertung](ObservationDefinition-PcorObsDefErqsReappraisal.html) und [ERQ-S Unterdrückung](ObservationDefinition-PcorObsDefErqsSuppression.html). Der Questionnaire trägt die beiden Summen zusätzlich als FHIRPath-`variable` (`erqsReappraisal`, `erqsSuppression`).

**Keine Referenzintervalle hinterlegt.** Die Scoring Instructions geben US-Normwerte an (General Community Sample, N = 508: Neubewertung M = 14,39 / SD = 4,06 / α = .87; Unterdrückung M = 12,25 / SD = 4,46 / α = .76) und definieren „hoch" als mindestens eine Standardabweichung über dem Mittelwert — nach diesen Normen 19+ bzw. 17+. Das ist hier bewusst **nicht** als Referenzintervall modelliert: Es sind US-Normen, die für eine deutsche Stichprobe nicht ohne Weiteres gelten; außerdem folgt es der MDR-Abgrenzung aus [ADR-004](Designentscheidungen.html).

### Terminologie

Recherche via fhir-terminology MCP (LOINC 2.83, SNOMED CT 2026-05-01): **keine Codes** für den ERQ. Kein `Questionnaire.code`, keine `item.code`.

Hinweise zum Lebenszyklus von `Questionnaire` zu `QuestionnaireResponse` siehe [Anwendung](Implementation.html); alle Artefakte unter [Artefakte](artifacts.html).
