Der **SCOFF** ist ein **Screening auf Essstörungen** aus fünf Ja/Nein-Fragen. Er wurde bewusst kurz und einprägsam gehalten, damit er beim Erstkontakt ohne Spezialausbildung einsetzbar ist — der Name ist ein Akronym der englischen Schlüsselwörter: **S**ick, **C**ontrol, **O**ne stone, **F**at, **F**ood.

### Verwendung in PCOR-MII

PCOR-MII **referenziert** den im MII-PRO-Modul gepflegten Questionnaire — kein eigener Nachbau ([ADR-002](Designentscheidungen.html)). Er kommt über die Paket-Abhängigkeit `de.medizininformatikinitiative.kerndatensatz.pros` (2026.7.0) mit; enthalten **seit 2026.6.0**.

Erhoben wird der SCOFF **nur im Szenario [PSS](PSS.html)**, Kategorie MHA — nicht in AN. Das ist auf den ersten Blick überraschend, hat aber einen Grund: In der AN-Batterie steht die Essstörungspathologie nicht als Screening zur Frage, sondern wird mit [EDE-Q6](EDE-Q6.html) und den weiteren AN-Instrumenten differenziert erfasst. Ein Screening-Instrument wäre dort redundant.

### Canonical

`https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-scoff`

### Eigenschaften

- **Items**: 5 (`scoff-q01`–`scoff-q05`) plus ein `display`-Item mit dem Instruktionstext und das berechnete Score-Item `scoff-score-total`
- **Primärsprache**: **Englisch** (`language = en`) — das Original ist englisch (Morgan et al., St George's, London); der deutsche Wortlaut hängt als `translation`-Extension daran. Die deutsche Fassung stammt **aus PCOR-MII** (Item Level Dictionary, Entität PSS, Variablen `SCOFF01`–`SCOFF05`).
- **Antwortmodellierung**: inline `answerOption` mit SNOMED CT `373067005` / `373066001` (No/Yes) und den Gewichten 0/1
- **Instrumenten-Code**: keiner — es existiert weder ein LOINC- noch ein SNOMED-Code für das Instrument selbst; kodiert wird über den MII-Questionnaire-Katalog (`scoff`)
- **Capabilities**: displayable, collectable, calculatable, extractable, domainAligned

### Score

Ein Punkt je „Yes", Summe **0–5** — `mii-obsdef-pro-score-scoff`, Katalogcode `scoff-total`, Richtung `decrease` (höher = belastender).

Der publizierte Cut-off **≥ 2** (Morgan et al. 1999: Sensitivität 100 %, Spezifität 87,5 %) ist als **Referenzintervall** dokumentiert, nicht als ausführbare Auswertungslogik: 0–1 unauffällig, 2–5 auffällig mit empfohlener weiterer Abklärung. Zur Begründung dieser Trennung siehe [Designentscheidungen](Designentscheidungen.html).

### Lizenz

SCOFF © Morgan, Reid & Lacey 1999 (BMJ). **Frei verfügbar** — keine Genehmigung für Reproduktion, Übersetzung, Darstellung oder Nutzung erforderlich.

### Beispiel-QuestionnaireResponse

Das MII-PRO-Modul liefert ein vollständiges Beispiel mit (`mii-exa-pro-scoff-response`). Die Pflege erfolgt dort zentral und wird hier bewusst nicht dupliziert.

### Quellen

- Entwicklung: Morgan JF, Reid F, Lacey JH. *The SCOFF questionnaire: assessment of a new screening tool for eating disorders.* BMJ 1999;319(7223):1467–1468. [doi:10.1136/bmj.319.7223.1467](https://doi.org/10.1136/bmj.319.7223.1467)
- Deutscher Kontext: Hölling H, Schlack R. *Essstörungen im Kindes- und Jugendalter.* Bundesgesundheitsblatt 2007;50:794–799. [doi:10.1007/s00103-007-0242-6](https://doi.org/10.1007/s00103-007-0242-6)
- Raw-Package: [MII PRO Package 2026.7.0 (Simplifier)](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.pros/2026.7.0)

Hinweise zum Lebenszyklus von `Questionnaire` zu `QuestionnaireResponse` siehe [Anwendung](Implementation.html); alle Artefakte unter [Artefakte](artifacts.html).
