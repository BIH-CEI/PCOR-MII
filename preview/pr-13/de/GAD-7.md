# GAD-7 - PCOR-MII Implementation Guide v0.2.0

## GAD-7

Der **GAD-7** (**Generalized Anxiety Disorder Scale-7**, Spitzer et al. 2006) erfasst **Ängstlichkeit** über sieben Items mit 14-Tage-Recall und vierstufiger Häufigkeitsskala (0 = überhaupt nicht … 3 = beinahe jeden Tag), Summenscore 0–21. Er gehört zur [PHQ-Familie](PHQ.md): in der deutschen Fassung ist er Block 5 des PHQ-D.

### Verwendung in PCOR-MII

PCOR-MII referenziert den im MII PRO-Modul gepflegten Questionnaire — kein eigener Nachbau. Er kommt über die Paket-Abhängigkeit `de.medizininformatikinitiative.kerndatensatz.pros` (2026.7.0) mit; enthalten ist er **ab 2026.7.0**. Der Score wird als `Observation` abgelegt (LOINC `70274-6`, Summenscore 0–21).

Erhoben wird der GAD-7 in **allen drei Entitäten** (PSS, AN, NTx) — siehe [Instrumente](Instrumente.md).

### Canonical

`https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-gad-7`

### Eigenschaften

* **Items**: 7 (`phq-phq5a`–`phq-phq5g`) plus ein vorangestelltes `display`-Item mit dem Instruktionstext und ein berechnetes Score-Item `phq-gad7-score-total` („GAD-7 Summenwert (0–21)“)
* **Instrumenten-Code**: LOINC `69737-5` **Generalized anxiety disorder 7 item (GAD-7)**
* **Primärsprache**: Englisch mit deutschen Translations (`_text`-Extension), z.B. `phq-phq5a` = „Nervosität, Ängstlichkeit oder Anspannung"
* **Antwortmodellierung**: inline `answerOption` mit LOINC-Codes `LA6568-5` / `LA6569-3` / `LA6570-1` / `LA6571-9` (nicht at all … nearly every day) und ordinalen Gewichten 0–3
* **Scoring**: Summenscore 0–21 als `calculatedExpression`, mit `observationExtract` für die Score-`Observation` (`mii-obsdef-pro-score-gad-7`, LOINC `70274-6`)
* **Capabilities**: displayable, collectable, calculatable, extractable, domain-aligned

### linkIds im PHQ-D-Namespace

Der GAD-7 nutzt **keine instrumentspezifischen `linkId`s**, sondern die des PHQ-D-Blocks 5 (`phq-phq5a`–`phq-phq5g`). Folgen daraus:

* Die beiden **GAD-2**-Items (und damit die GAD-Hälfte des **PHQ-4**) sind `phq-phq5a` und `phq-phq5b` — dieselben Items, dieselben `linkId`s.
* Wer GAD-7 und weitere PHQ-Instrumente derselben Person gemeinsam verarbeitet, muss die geteilten `linkId`s berücksichtigen; siehe [PHQ-Übersicht](PHQ.md).

Für Alt-Daten mit instrumentspezifischen `linkId`s (`gad7-q01`–`gad7-q07`) liefert das MII PRO-Modul die ConceptMap [`mii-cm-pro-gad-7-linkids`](https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ConceptMap/mii-cm-pro-gad-7-linkids); die Zuordnung ist 1:1 (`gad7-q0n` → `phq-phq5a…g`).

### Lizenz

GAD-7 © Pfizer Inc., entwickelt von Robert L. Spitzer, Kurt Kroenke, Janet B.W. Williams und Bernd Löwe. **Frei verfügbar** — keine Genehmigung für Reproduktion, Übersetzung, Darstellung oder Nutzung erforderlich. Deutsche Fassung: PHQ-D (Löwe, Spitzer, Zipfel & Herzog 2002).

### Beispiel-QuestionnaireResponse

Das MII PRO-Modul liefert ein vollständiges QR-Beispiel mit (`mii-exa-pro-gad-7-response`) sowie die zugehörige Score-`Observation` (`mii-exa-pro-gad-7-score`). Die Pflege erfolgt zentral im MII PRO-Modul und wird hier bewusst nicht dupliziert.

### Quellen

* Entwicklung: Spitzer RL, Kroenke K, Williams JBW, Löwe B. **A brief measure for assessing generalized anxiety disorder: the GAD-7**. Arch Intern Med. 2006;166(10):1092–1097. [doi:10.1001/archinte.166.10.1092](https://doi.org/10.1001/archinte.166.10.1092)
* Deutsche Validierung: Löwe B et al. **Validation and standardization of the Generalized Anxiety Disorder Screener (GAD-7) in the general population**. Med Care. 2008;46(3):266–274. [doi:10.1097/MLR.0b013e318160d093](https://doi.org/10.1097/MLR.0b013e318160d093)
* Raw-Package: [MII PRO Package 2026.7.0 (Simplifier)](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.pros/2026.7.0)

