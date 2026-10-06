# GSLTPAQ (Freizeitaktivität) - PCOR-MII Implementation Guide v0.3.0

## GSLTPAQ (Freizeitaktivität)

Der **GSLTPAQ** (**Godin-Shephard Leisure-Time Physical Activity Questionnaire**) erfasst **körperliche Aktivität in der Freizeit** über drei Intensitätsstufen (anstrengend, mäßig, leicht). Quelle der erhobenen Fassung ist das **Item Level Dictionary** (Kategorie `GSLTPAQ`, 6 Items).

### Verwendung in PCOR-MII

Der GSLTPAQ ist **kein Instrument des MII-PRO-Moduls** — er wird in PCOR-MII eigenständig gepflegt (SDC-Basis) und ist selbst kein PRO-Instrument im Sinne des Moduls.

### Artefakte

* **Fragebogen:** [Questionnaire-GSLTPAQ](Questionnaire-GSLTPAQ.md) — vollständige Definition inkl. Items und Einheiten.

Kodierte Antwortoptionen gibt es nicht: alle sechs Items sind rein numerisch (`integer`), daher kein eigenes CodeSystem/ValueSet.

### Canonical

`https://bih-cei.github.io/PCOR-MII/Questionnaire/GSLTPAQ`

### Eigenschaften

* **Items**: 6 — je Intensitätsstufe zwei Felder: Häufigkeit pro Woche (`GSLTPAQ_0n_w`, UCUM `{count}/wk`) und Dauer je Einheit in Minuten (`GSLTPAQ_0n_m`, UCUM `min`); dazu ein vorangestelltes `display`-Item mit der Einleitungsfrage
* **Item-Texte der `_m`-Felder** sind bewusst identisch mit dem zugehörigen `_w`-Item: Das Item Level Dictionary liefert für die Dauer-Felder keinen eigenen Text („numeric Minuten"), was auf ein Matrix-/Tabellen-Item mit geteilter Aktivitätsbeschreibung hindeutet. Unterschieden werden die Felder über `linkId`-Suffix und `questionnaire-unit`.
* **Scoring**: Godin Leisure Score Index = 9 × `GSLTPAQ_01_w` + 5 × `GSLTPAQ_02_w` + 3 × `GSLTPAQ_03_w`, als readOnly-Item `gsltpaq-score` mit SDC-`calculatedExpression`

### Übersetzung — bewusste Abweichung vom validierten Wortlaut

> **Wichtig:** PCOR-MII bildet die deutsche Übersetzung aus dem Item Level Dictionary ab — **nicht** die sprachlich validierte deutsch-österreichische Übersetzung.

**Herkunft — geklärt (Use-Case-Leitung, 2026-10-06):** Die Übersetzung ist **keine PCOR-MII-Eigenübersetzung** (so wurde sie hier zunächst geführt), sondern stammt aus **SOMACROSS 2.0**; Übersetzer ist das **UKE** (Universitätsklinikum Hamburg-Eppendorf). Das `copyright`-Element weist das UKE entsprechend als Übersetzer aus.

Grund für die Beibehaltung: Die vorliegenden Studiendaten wurden bereits mit dieser Fassung erhoben; ein nachträglicher Wortlautwechsel würde die Vergleichbarkeit der Zeitreihe brechen. Die UKE/SOMACROSS-Übersetzung ist **nicht linguistisch validiert**.

Die validierte Fassung — Lindner A, Bamberger EM, Crutzen R, Kulnik ST. **Translation to German (Austrian) and qualitative linguistic validation of the Godin-Shephard Leisure-Time Physical Activity Questionnaire.** Measurement and Evaluations in Cancer Care 2026;4:100027. [doi:10.1016/j.ymecc.2026.100027](https://doi.org/10.1016/j.ymecc.2026.100027) — soll perspektivisch **separat als kanonische GSLTPAQ-Version im MII-PRO-Modul** gepflegt werden, dort mit dem validierten Wortlaut, nicht in PCOR-MII.

**Wie die beiden Fassungen auseinandergehalten werden — entschieden und von der Use-Case-Leitung bestätigt (2026-10-06: beide Fassungen werden abgebildet; Metadaten und Versionierung machen die Unterscheidung klar, jede `QuestionnaireResponse` weist eindeutig aus, mit welcher Definition sie erhoben wurde, `linkId`s bleiben identisch):** als **zwei getrennte `Questionnaire`-Ressourcen** mit eigenen Canonicals, nicht als zwei Sprachebenen einer Ressource und nicht als zwei Versionen. Ein Sprachtag würde eine sprachliche Varietät behaupten statt eines Validierungsunterschieds; ein Versionssprung würde Ablösung behaupten, obwohl die Eigenübersetzung für die bestehende Zeitreihe gültig bleibt. Beide Fassungen tragen **dieselben `linkId`s** und denselben Katalogcode, sodass sie als zwei Fassungen eines Instruments erkennbar sind; die Zusammenführung von Antworten aus beiden bleibt eine bewusste Entscheidung der Auswertung. Begründung und Umsetzungsregeln in [ADR-007](Designentscheidungen.md).

**Zu bedenken beim Wechsel:** Die validierte Übersetzung ist deutsch-**österreichisch**. Für eine Erhebung in Deutschland ist auch sie damit nicht im strengen Sinn kontextvalidiert — sie ist linguistisch validiert, die Eigenübersetzung ist es nicht, aber ein Restunterschied bleibt.

### Scoring-Entscheidungen

* Die **Dauer-Items (`_m`) gehen nicht in den Score ein**: Sie sind nicht Teil des offiziellen Godin-Scores (die Dauer wird im Original-GSLTPAQ gar nicht erhoben). Ihre Aufnahme ins Item Level Dictionary ist eine PCOR-MII-spezifische Erweiterung für explorative Zwecke.
* Die **Kategorisierung** „active" (≥ 24) / „moderately active" (14–23) / „insufficiently active" (< 14) ist in der Literatur beschrieben, hier aber **nicht** als zusätzliches kategoriales Item umgesetzt. Bei Bedarf als weiteres readOnly-Item mit eigenem `calculatedExpression` ergänzbar.

### Terminologie

Recherche via fhir-terminology MCP (LOINC 2.83, SNOMED CT 2026-05-01): **kein LOINC- oder SNOMED-Code** für den GSLTPAQ selbst oder seine Items gefunden. Codes verwandter, aber **nicht inhaltsgleicher** Instrumente (IPAQ: LOINC `77592-4`/`77593-2`, SNOMED `1382098002`/`1382099005`; Baecke Leisure-time index: LOINC `112947-7`) wurden bewusst **nicht** vergeben, da sie ein anderes Instrument mit anderer Fragenstruktur und anderen Schwellenwerten referenzieren würden. Daher kein `Questionnaire.code` und keine `item.code`.

### Quelle

Godin G. **The Godin-Shephard leisure-time physical activity questionnaire**. Health Fit J Can. 2011;4:18–22. [doi:10.14288/hfjc.v4i1.82](https://doi.org/10.14288/hfjc.v4i1.82)

Hinweise zum Lebenszyklus von `Questionnaire` zu `QuestionnaireResponse` siehe [Anwendung](Implementation.md); alle Artefakte unter [Artefakte](artifacts.md).

