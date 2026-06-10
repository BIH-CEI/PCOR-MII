Diese Seite gibt einen Überblick über die im PCOR-MII Implementation Guide definierten Fragebögen. Die vollständigen, maschinenlesbaren Definitionen finden sich unter [Artefakte](artifacts.html).

### Fragebögen nach Kategorie

#### Demographie

- [DEM — Demographics & Medical History](Questionnaire-DEM.html) — Soziodemographie und medizinische Vorgeschichte (Screening)

> Weitere Fragebögen werden als FSH-Datei unter `input/fsh/Questionnaires/` angelegt und hier unter der passenden Kategorie verlinkt. Als Ausgangspunkt dient der [PCOR Beispiel-Fragebogen](Questionnaire-PcorExampleQuestionnaire.html) (Vorlage).

### Aufbau eines Questionnaires

Ein FHIR `Questionnaire` ist hierarchisch aus **Items** aufgebaut. Jedes Item besitzt:

- **`linkId`** – eindeutige, stabile Kennung des Items (Basis für die spätere Auswertung)
- **`text`** – die angezeigte Frage bzw. Gruppenüberschrift
- **`type`** – z. B. `group`, `string`, `date`, `choice`, `integer`, `boolean`, `decimal`
- **`required`** / **`repeats`** – Pflicht- bzw. Wiederholbarkeit
- **`answerOption`** oder **`answerValueSet`** – zulässige Antworten bei `choice`-Items

Items vom Typ `group` fassen inhaltlich zusammengehörige Fragen zusammen und können verschachtelt werden.

### Konventionen

- **Stabile `linkId`s**: einmal veröffentlichte `linkId`s werden nicht umbenannt, damit bereits erfasste `QuestionnaireResponse`s zuordenbar bleiben.
- **Sprechende, hierarchische `linkId`s** (z. B. `pro.general-health`) erleichtern Auswertung und Pflege.
- **Antwortoptionen**: kleine, geschlossene Auswahllisten direkt als `answerOption`; größere, wiederverwendbare Konzeptlisten als `answerValueSet` mit eigenem ValueSet.
- **Terminologie**: wo möglich kodierte Antworten (LOINC/SNOMED CT) statt Freitext, um Auswertbarkeit zu sichern.

Details zur Befüllung und Auswertung finden sich unter [Anwendung](Implementation.html).
