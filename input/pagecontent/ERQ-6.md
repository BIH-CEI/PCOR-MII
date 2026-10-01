**ERQ-6** erfasst die **Emotionsregulation** über sechs Items des *Emotion Regulation Questionnaire* (ERQ) auf einer 7-stufigen Likert-Skala (1 = stimmt überhaupt nicht … 7 = stimmt vollkommen). Es ist ein **projektspezifischer Zuschnitt** des ERQ — die ERQ-Items 1, 2, 3, 6, 8 und 9 im unveränderten Originalwortlaut.

> **Korrektur vom 01.10.2026.** Dieser Bogen war in PCOR-MII bis Release 0.3.0 als die offizielle Kurzform **ERQ-S** ausgewiesen, mit zwei validierten Subskalen-Scores. **Das war falsch.** Der ERQ-S besteht aus anderen ERQ-Items; die Scores sind deshalb zurückgezogen. Einzelheiten im nächsten Abschnitt.

### Verwendung in PCOR-MII — und warum das nicht der ERQ-S ist

Erhoben wird der Bogen nur im Szenario [AN](AN.html). Gepflegt wird er **vorläufig in PCOR-MII**; eine spätere Aufnahme ins MII-PRO-Modul ist vorgesehen (siehe [ADR-003](Designentscheidungen.html)).

Die Verwechslung mit dem ERQ-S lag nahe, und die DIZ-Implementierungsliste legt sie sogar nahe: Sie nennt in der Zeile „ERQ-6" als Entwicklungspaper [doi:10.1016/j.jad.2023.08.076](https://doi.org/10.1016/j.jad.2023.08.076) — also die ERQ-S-Publikation. Die Items im Item Level Dictionary sind aber **andere**.

**Tabelle 1 der Publikation gibt die Zuordnung an**, und sie ist eindeutig:

| | Cognitive Reappraisal | Expressive Suppression |
|---|---|---|
| **ERQ-S** (Preece et al. 2023) | ERQ-Items **7, 8, 10** | ERQ-Items **2, 6, 9** |
| **PCOR-MII ERQ-6** | ERQ-Items **1, 3, 8** | ERQ-Items **2, 6, 9** |

Vier der sechs Items überschneiden sich, und die **Unterdrückungs-Items sind sogar identisch**. Die **Neubewertungs-Items sind es nicht**: PCOR-MII führt die Items 1 und 3 („*ändere ich, woran ich denke*"), der ERQ-S die Items 7 und 10 („*versuche ich über die Situation anders zu denken*"). Das sind im ERQ zwei verschiedene Itempaare, nicht zwei Schreibweisen desselben.

Es handelt sich also um **zwei verschiedene Zuschnitte desselben Instruments**. Der PCOR-MII-Bogen ist keiner der publizierten Kurzformen.

**Was daraus folgt, und was nicht.** Die `linkId`s bleiben richtig — sie sind die Original-ERQ-Itemnummern, und die Items sind wortgleich aus dem Item Level Dictionary übernommen. Der Wortlaut bleibt unverändert. Weg fällt der **Score**: Die publizierten ERQ-S-Kennwerte gelten für dessen Itemsatz, nicht für diesen. Bezogen auf das Vollinstrument ist der Satz ohnehin ein Zuschnitt — drei der sechs Neubewertungs- und drei der vier Unterdrückungs-Items des ERQ-10 —, für den keine Scoring-Vorschrift publiziert ist. Nach [ADR-003](Designentscheidungen.html) Punkt 3 gibt es daher keinen Score.

**Wie der Fehler entstanden ist**, weil es ein lehrreicher Fall ist: Die Scoring Instructions des ERQ-S nennen *„Cognitive reappraisal: sum items 1, 3, and 5"* — das sind **ERQ-S-Itemnummern**. Diese Nummern wurden hier zunächst als ERQ-Nummern gelesen und über eine *angenommene* Zuordnung übersetzt, statt gegen Tabelle 1 der Publikation geprüft zu werden. Zwei Nummernsysteme, die sich teilweise überlappen, sind genau die Konstellation, in der ein Abgleich „sieht ja passend aus" ergibt und trotzdem falsch ist — dieselbe Falle wie bei `erq6` im Dictionary gegen `erq6` im Questionnaire.

### Sprachebenen

`Questionnaire.language` steht auf **`en`**: Das ERQ-Original ist englisch (Gross & John 2003), also trägt `item.text` den englischen Originalwortlaut und die autorisierte deutsche Fassung von **Abler & Kessler (2009)** hängt als `translation`-Extension mit `lang = de` daran — bei allen sechs Items und den sechs Skalenankern. Beide Bögen stellt das [Stanford Psychophysiology Laboratory](https://spl.stanford.edu/resources) frei bereit; die deutsche Fassung ist dort ausdrücklich als *„autorisiert von den Autoren der englischen Originalversion“* ausgewiesen.

Das folgt [ADR-005](Designentscheidungen.html) und ist gleichzeitig Voraussetzung für eine Aufnahme ins MII-PRO-Modul, das durchgehend so arbeitet.

**Nur sechs der zehn ERQ-Items sind modelliert.** Die Langform darf nach [ADR-008](Designentscheidungen.html) mitmodelliert werden und ist inzwischen vollständig beschafft — englischer Originalbogen und autorisierte deutsche Fassung, jeweils zehn Items —, ist aber nicht Bestandteil dieses Release. Für diesen Bogen ist sie vor allem die **Quelle des deutschen Wortlauts**: Die Kurzform-Publikation nennt nur Itemnummern und Psychometrie, keinen übersetzten Text.

### Artefakte

- **Fragebogen:** [Questionnaire-ERQ6](Questionnaire-ERQ6.html)
- **Beispielantwort:** [ERQ6Response](QuestionnaireResponse-ERQ6Response.html) — ausgefülltes Beispiel

Kodierte Antwortoptionen gibt es nicht; alle sechs Items sind numerisch (`integer`, 1–7) mit Slider und Anker-`display`-Item — im Dictionary ist die Skala als Grafik geführt (Anker: 1 = stimmt überhaupt nicht, 4 = neutral, 7 = stimmt vollkommen).

### Der PCOR-MII-Code eines Items ist die Dictionary-Variable

Jedes Item trägt in `item.code` seine Variable aus dem Item Level Dictionary, gegen das CodeSystem [pcor-item-dictionary](CodeSystem-pcor-item-dictionary.html). **Das ist der PCOR-MII-Code des Items** — ein zweites lokales CodeSystem für dieselben Items gibt es bewusst nicht, weil es nur Ambiguität stiften würde.

**Bei diesem Bogen ist dabei eine Falle**, und sie ist die einzige ihrer Art im Projekt: Der Code bezeichnet das **Erhebungsfeld**, nicht die Itemnummer — und hier fällt beides auseinander.

| `linkId` (= ERQ-Itemnummer) | `item.code` (Dictionary-Variable) |
|---|---|
| `erq1` | `erq1` |
| `erq2` | `erq2` |
| `erq3` | `erq3` |
| `erq6` | **`erq4`** |
| `erq8` | **`erq5`** |
| `erq9` | **`erq6`** |

Wer den Code für eine Itemnummer nimmt, ordnet also falsch zu — und zwar unauffällig, weil `erq6` in beiden Spalten vorkommt und dort Verschiedenes bezeichnet. Die Original-Itemnummer steht im `linkId` ([ADR-008](Designentscheidungen.html)), die Abbildung zusätzlich maschinenlesbar in der ConceptMap [pcor-cm-erq-s-linkids](ConceptMap-pcor-cm-erq-s-linkids.html).

Wozu der Code überhaupt dient: Ein flach erhobener Studiendatensatz lässt sich damit maschinell auf die Instrumenten-Questionnaires verteilen — Nachschlagen statt Abbilden, siehe [ADR-011](Designentscheidungen.html).

### Canonical

`https://bih-cei.github.io/PCOR-MII/Questionnaire/ERQ6`

### Items

Die `linkId`s sind die **Original-ERQ-Itemnummern** (`linkId`-Regel, [ADR-003](Designentscheidungen.html)) — verifiziert gegen den von Gross/John autorisierten [deutschen Originalbogen](https://spl.stanford.edu/sites/g/files/sbiybj19321/files/media/file/german.pdf) (Abler/Kessler, Universität Ulm): alle sechs Fragetexte wortgleich. Die Dictionary-Variablen-IDs laufen dagegen sequenziell durch:

| `linkId` (= ERQ-Item) | `item.code` (Dictionary-Variable) | Frage | Skala |
|---|---|---|---|
| `erq1` | `erq1` | Wenn ich mehr positive Gefühle (wie Freude oder Heiterkeit) empfinden möchte, ändere ich, woran ich denke. | Neubewertung |
| `erq2` | `erq2` | Ich behalte meine Gefühle für mich. | Unterdrückung |
| `erq3` | `erq3` | Wenn ich weniger negative Gefühle (wie Traurigkeit oder Ärger) empfinden möchte, ändere ich, woran ich denke. | Neubewertung |
| `erq6` | `erq4` | Ich halte meine Gefühle unter Kontrolle, indem ich sie nicht nach außen zeige. | Unterdrückung |
| `erq8` | `erq5` | Ich halte meine Gefühle unter Kontrolle, indem ich über meine aktuelle Situation anders nachdenke. | Neubewertung |
| `erq9` | `erq6` | Wenn ich negative Gefühle empfinde, sorge ich dafür, sie nicht nach außen zu zeigen. | Unterdrückung |

**Beim Mapping in die Studiendatenhaltung** ist die Spalte „Dictionary-Variable" maßgeblich — insbesondere `erq6` bezeichnet im Dictionary ein anderes Item als im Questionnaire.

### Kein Score

Für diesen Zuschnitt liegt **keine validierte Scoring-Vorschrift** vor, und bis Release 0.3.0 war hier fälschlich eine ausgewiesen.

Das Vollinstrument bildet zwei Subskalen — Neubewertung (ERQ-Items 1, 3, 5, 7, 8, 10) und Unterdrückung (2, 4, 6, 9). Dieser Bogen enthält davon **drei der sechs** Neubewertungs- und **drei der vier** Unterdrückungs-Items. Für keine der beiden Teilmengen gibt es publizierte Kennwerte.

Die Kennwerte des **ERQ-S** gelten dafür nicht: Dessen Neubewertungs-Skala besteht aus den ERQ-Items 7, 8 und 10, nicht aus 1, 3 und 8. Nur die Unterdrückungs-Items stimmen überein — ein Score aus der einen Hälfte eines Instruments, dessen andere Hälfte abweicht, wäre keine Übertragung, sondern eine Behauptung.

**Zurückgezogen wurden am 01.10.2026:** die beiden `ObservationDefinition`s, die beiden Beispiel-`Observation`s, die Katalogcodes `erq-s-reappraisal` und `erq-s-suppression` sowie die FHIRPath-`variable`s im Questionnaire. Die Antwortwerte bleiben als `integer` 1–7 erhalten, eine spätere Auswertung ist damit jederzeit möglich — sie ist nur keine validierte.

Falls ein validierter Score gewünscht ist, gibt es zwei saubere Wege: den **ERQ-S** als eigenen Bogen mit seinen Items 2, 6, 7, 8, 9, 10 modellieren, oder den **vollständigen ERQ-10**. Wortlaut und Scoring beider liegen beschafft vor (siehe [ADR-008](Designentscheidungen.html)); beides würde aber von dem abweichen, was laut Item Level Dictionary tatsächlich erhoben wird.

### Terminologie

Recherche via fhir-terminology MCP (LOINC 2.83, SNOMED CT 2026-05-01): **keine Codes** für den ERQ. Kein `Questionnaire.code`, keine `item.code`.

Hinweise zum Lebenszyklus von `Questionnaire` zu `QuestionnaireResponse` siehe [Anwendung](Implementation.html); alle Artefakte unter [Artefakte](artifacts.html).
