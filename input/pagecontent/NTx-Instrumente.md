Im Anwendungsfall **Nierentransplantation (NTx)** werden drei Instrumente zur **Medikamentenadhärenz** und **Symptomlast** erhoben: **BAASIS** (Selbstauskunft zur Einnahme immunsuppressiver Medikation), **ABQ** (Barrieren der Adhärenz) und **MTSOSD-R59** (Symptomlast mit Belastungsbewertung). BAASIS und ABQ hängen zusammen: Der ABQ wird nur bei Hinweis auf Nichtadhärenz im BAASIS erhoben. Quelle der Item-Auswahl ist das **Item Level Dictionary** (Blatt NTx, Kategorien TCH und MSE).

> **Metadata-only:** Alle drei Instrumente bilden **ausschließlich Struktur und Metadaten** ab, **nicht** den Originalwortlaut. Eine Veröffentlichung der konkreten Items einschließlich Antwortmöglichkeiten ist laut Rechteinhabern nicht erlaubt. Die wissenschaftliche Nutzung ohne Pharma-Beteiligung ist kostenfrei, **jedes Zentrum benötigt eine eigene Lizenzvereinbarung**.

### Verwendung in PCOR-MII

Die Instrumente sind NTx-spezifisch und gehören daher in die Use-Case-Schicht von PCOR-MII, wie auch [WAI](WAI.html) und [UKHD-EDP](UKHD-EDP.html). Alle drei sind Selbstauskunfts-PROs und tragen deshalb das Profil des MII-PRO-Moduls (nicht ISiKFormularDefinition). Metadata-only bedeutet konkret:

- **Item-Texte** sind neutrale, selbst formulierte Beschreibungen („Erfasst: …“), kein Originalwortlaut.
- **Antwortkonzepte** sind neutral benannt („Stufe 1“ … „Stufe n“) und tragen `ordinalValue`, damit eine spätere Auswertung möglich bleibt.
- **Struktur, `linkId`s, Typen, Wertebereiche und Bedingungen** sind lizenzfrei und vollständig angelegt. Die `linkId`s sind die Variablen-IDs des Item Level Dictionary.
- Alle Capabilities sind `false` (nicht displayable, collectable, extractable, domain-aligned), beim ABQ ist zusätzlich `calculatable` gesetzt.

Für die Erhebung ist der wortgleiche Originalbogen über die berechtigte Bezugsquelle zu beziehen; diese Ressourcen dienen der strukturell korrekten Ablage der Antworten.

### Lizenz und Bezugsweg

| Instrument | Rechteinhaber | Bezugsweg |
|---|---|---|
| BAASIS | Universität Basel | Nutzungserlaubnis: <https://baasis.nursing.unibas.ch/how-to-obtain> |
| ABQ | Müller S, Kohlmann T, Wilke T (2015) | Lizenzvereinbarung je Zentrum; Bezugsweg zu klären |
| MTSOSD-R59 | KU Leuven | Kontakt: joke.willems@kuleuven.be |

Die Hinweise sind maschinenlesbar im `copyright`-Element der Ressourcen hinterlegt. Nur der PCOR-MII-eigene FHIR-Inhalt unterliegt der Repository-Lizenz (CC-BY-4.0).

### BAASIS

*Basel Assessment of Adherence to Immunosuppressive Medications Scale*, Kategorie TCH.

**Artefakte:**

- **Fragebogen:** [Questionnaire-BAASIS](Questionnaire-BAASIS.html)
- **Häufigkeitsskala:** [ValueSet baasis-haeufigkeit-5-vs](ValueSet-baasis-haeufigkeit-5-vs.html) · [CodeSystem baasis-haeufigkeit-5](CodeSystem-baasis-haeufigkeit-5.html) — fünf neutral benannte Konzepte mit `ordinalValue` 1–5

**Canonical:** `https://bih-cei.github.io/PCOR-MII/Questionnaire/BAASIS`

**Eigenschaften:**

- **Items**: 10 Variablen (`BAASIS1A`, `BAASIS1A_a`, `BAASIS1B`, `BAASIS1B_a`, `BAASIS2`, `BAASIS2_a`, `BAASIS3`, `BAASIS4`, `BAASIS5`, `BAASIS5_a`). Ja/Nein über das projektweite ValueSet `dem-ja-nein`, die Teilfragen `_a` zu 1A, 1B und 2 über die Häufigkeitsskala. Items 4 und 5 beziehen sich auf einen Rückblick von einem Jahr.
- **Bedingungen**: 1A_a nur bei 1A = ja; 1B nur bei 1A = ja; 1B_a nur bei 1B = ja; 2_a nur bei 2 = ja; 5_a nur bei 5 = ja.
- **Scoring**: kein Summenscore. Als nicht adhärent gilt dichotom, wer bei Item 1A, 2, 3 oder 4 mit „ja“ antwortet. Das ist **nur dokumentiert**, nicht als Ausdruck ausgeliefert.

### ABQ

*Adherence Barriers Questionnaire*, Kategorie TCH.

**Artefakte:**

- **Fragebogen:** [Questionnaire-ABQ](Questionnaire-ABQ.html)
- **Antwortskala:** [ValueSet abq-skala-4-vs](ValueSet-abq-skala-4-vs.html) · [CodeSystem abq-skala-4](CodeSystem-abq-skala-4.html) — vier neutral benannte Konzepte mit `ordinalValue` 1–4

**Canonical:** `https://bih-cei.github.io/PCOR-MII/Questionnaire/ABQ`

**Eigenschaften:**

- **Items**: 16 Items (`ABQ_01` … `ABQ_16`) auf der 4-stufigen Skala, dazu das berechnete Summen-Item `abq-summe`.
- **Bedingung (Cross-Questionnaire)**: Laut Item Level Dictionary wird der ABQ nur erhoben, wenn BAASIS1A, BAASIS2, BAASIS3 oder BAASIS4 mit „ja“ beantwortet wurde. Das ist **nicht als `enableWhen`** modelliert, sondern nur dokumentiert; der aufrufende Prozess steuert es. Für `ABQ_01` nennt das Dictionary nur BAASIS1A, vermutlich eine Inkonsistenz, die zu klären ist.
- **Scoring**: Summe der 16 Items als SDC `calculatedExpression` über `.ordinal().sum()`, Bereich **16–64**, höhere Werte bedeuten mehr Adhärenzbarrieren. Es werden keine Cut-offs ausgeliefert.

> **Offen:** Die Polung der Gewichte 1–4 ist nicht gegen das Originalinstrument verifiziert. Das Dictionary führt die Zustimmungsstufe mit dem Wert 1 als erste Option; ob die Stufenfolge die Barrierenstärke in der erwarteten Richtung abbildet, ist vor produktiver Nutzung zu prüfen.

### MTSOSD-R59

Symptomfragebogen mit 59 Symptomen und 3 Freitext-Symptomen, Kategorie MSE.

**Artefakte:**

- **Fragebogen:** [Questionnaire-MTSOSDR59](Questionnaire-MTSOSDR59.html)
- **Auftretensskala:** [ValueSet mtsosd-r59-auftreten-5-vs](ValueSet-mtsosd-r59-auftreten-5-vs.html) · [CodeSystem mtsosd-r59-auftreten-5](CodeSystem-mtsosd-r59-auftreten-5.html) — fünf neutral benannte Konzepte mit `ordinalValue` 0–4

**Canonical:** `https://bih-cei.github.io/PCOR-MII/Questionnaire/MTSOSDR59`

**Eigenschaften:**

- **Items**: 126 Variablen, flach. Je Symptom zwei Items: **Auftreten** (`MTSOSDR59_NN`, Stufe 0–4) und **Belastung** (`MTSOSDR59_NNa`, Integer). Symptom 27 gibt es geschlechtsspezifisch (`_male`, `_female`), die Symptome 60–62 sind Freitext.
- **Bedingungen**: Belastung nur bei Auftreten ungleich Stufe 0, bei Freitext sobald ein Text vorliegt. Die Steuerung von Symptom 27 über das Geschlecht (`Q_SEX`) ist eine Cross-Questionnaire-Bedingung und nicht als `enableWhen` modelliert.
- **Scoring**: kein Score. Summen über Auftreten oder Belastung existieren in der Literatur, ihre Definition ist hier nicht verifiziert.
- **Erzeugung**: Der Questionnaire wird per Skript `scripts/generate-mtsosd-r59-stub.py` erzeugt und nicht von Hand geändert.

> **Offen:** Die Stufenzahl der visuellen Belastungsskala ist im Item Level Dictionary nicht dokumentiert; die Belastung ist daher ohne Minimum und Maximum modelliert.

### Terminologie-Recherche

Nicht durchgeführt; der Terminologie-MCP stand in der Session nicht zur Verfügung. Für keines der drei Instrumente ist ein LOINC- oder SNOMED-CT-Code verifiziert. `Questionnaire.code` trägt nur den PCOR-Katalogcode (`baasis`, `abq`, `mtsosd-r59`).

### Quellen

- Universität Basel. BAASIS — Basel Assessment of Adherence to Immunosuppressive Medications Scale. <https://baasis.nursing.unibas.ch>
- Müller S, Kohlmann T, Wilke T. Adherence Barriers Questionnaire (ABQ). 2015.
- KU Leuven. MTSOSD-R59. Kontakt: joke.willems@kuleuven.be
- PCOR-MII Item Level Dictionary, Blatt NTx (Strukturquelle; Wortlaut bewusst nicht übernommen).

Hinweise zum Lebenszyklus von `Questionnaire` zu `QuestionnaireResponse` siehe [Anwendung](Implementation.html); alle Artefakte unter [Artefakte](artifacts.html).
