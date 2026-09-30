**EXPECT** erfasst die **Erwartung an den Verlauf der Körperbeschwerden** über drei numerische Rating-Items (0–10) mit Blick auf die kommenden sechs Monate: erwartete Gesamtstärke der Beschwerden, erwartete Beeinträchtigung und erwartete Bewältigung.

### Verwendung in PCOR-MII

EXPECT ist **kein publiziertes, standardisiertes Instrument**. Die DIZ-Implementierungsliste PCOR-MII führt es als „3 Einzelitems (Numerische Rating-Skala), kein standardisierter Fragebogen"; Entwicklungs- und Übersetzungspaper sind mit „NA" vermerkt. Die Items stammen direkt aus dem Item Level Dictionary (Entität PSS, Kategorie DCH) und werden in PCOR-MII gepflegt — nicht im MII-PRO-Modul. Erhoben werden sie nur im Szenario [PSS](PSS.html).

### Artefakte

- **Fragebogen:** [Questionnaire-EXPECT](Questionnaire-EXPECT.html)

Kodierte Antwortoptionen gibt es nicht; alle drei Items sind numerisch (`integer`, 0–10).

### Canonical

`https://bih-cei.github.io/PCOR-MII/Questionnaire/EXPECT`

### Items

| `linkId` | Frage | Anker |
|---|---|---|
| `EXPECT_01` | Welche Gesamtstärke Ihrer Körperbeschwerden erwarten Sie in 6 Monaten? | 0 = überhaupt keine Beschwerden … 10 = schlimmstmögliche Beschwerden |
| `EXPECT_02` | Wie sehr erwarten Sie in 6 Monaten durch Körperbeschwerden beeinträchtigt zu sein? | 0 = überhaupt nicht … 10 = extrem beeinträchtigt |
| `EXPECT_03` | Wie gut erwarten Sie, in 6 Monaten mit möglichen Körperbeschwerden umgehen zu können? | 0 = überhaupt nicht gut … 10 = bester vorstellbarer Umgang |

Die Fragetexte sind wortgleich aus dem Item Level Dictionary übernommen. Die Ankerbeschriftungen stehen als eigenständige `display`-Items unter dem jeweiligen Item, damit der Fragetext unverändert bleibt. Alle drei Items tragen `minValue` 0, `maxValue` 10, `sliderStepValue` 1 und `itemControl` = `slider` — im Dictionary sind sie als visuelle Skala geführt.

### Kein Gesamtscore

Für EXPECT wird **bewusst kein Summen- oder Mittelwert** gebildet. Zwei Gründe:

1. Die drei Items messen **unterschiedliche Konstrukte** (Beschwerdestärke, Beeinträchtigung, Bewältigung) und sind einzeln auszuwerten.
2. Sie sind **nicht gleichgerichtet**: Bei `EXPECT_01` und `EXPECT_02` ist ein hoher Wert ungünstig, bei `EXPECT_03` günstig. Ein Summenwert wäre ohne Umpolung inhaltlich falsch — und da keine Publikation vorliegt, gibt es für eine Umpolungsregel keine Grundlage.

### Terminologie

Recherche via fhir-terminology MCP (LOINC 2.83, SNOMED CT 2026-05-01): **keine passenden Codes**. Der einzige nahe SNOMED-Treffer, `110477003` *Unrealistic expectation from treatment*, ist ein Befund und kein Assessment und trifft inhaltlich nicht zu — daher nicht vergeben. Kein `Questionnaire.code`, keine `item.code`.

Hinweise zum Lebenszyklus von `Questionnaire` zu `QuestionnaireResponse` siehe [Anwendung](Implementation.html); alle Artefakte unter [Artefakte](artifacts.html).
