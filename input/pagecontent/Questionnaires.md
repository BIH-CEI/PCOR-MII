Diese Seite gibt einen Überblick über die im PCOR-MII Implementation Guide definierten Fragebögen. Die vollständigen, maschinenlesbaren Definitionen finden sich unter [Artefakte](artifacts.html).

### Fragebögen nach Kategorie

#### Demographie

- [DEM — Demographics & Medical History](Questionnaire-DEM.html) — Soziodemographie und medizinische Vorgeschichte (Screening)

#### [Patient-Reported Outcomes (PROMIS)](PROMIS.html)

Aus dem [MII PRO-Modul](https://simplifier.net/guide/mii-pro-v2026-de) referenziert (Dependency `de.medizininformatikinitiative.kerndatensatz.pros@2026.4.1`, kein eigener Nachbau). Lizenz folgt dem [4-Schichten-Copyright-Modell](https://simplifier.net/guide/mii-pro-v2026-de/MIIIGModulPRO/PRO-Bibliothek/PROMIS) (PHO + CPCOR + LOINC + MII). Übersicht: [PROMIS-Sektion](PROMIS.html).

- [**PROMIS-33 Profile v2.1**](PROMIS-33.html) — Multi-Domain HRQoL inkl. Cognitive Function, 33 Items (*geplant, noch nicht im MII PRO-Modul implementiert*)
- [**PROMIS-29 Profile v2.1**](PROMIS-29.html) — Multi-Domain HRQoL, 29 Items über 7 Domänen + Schmerzintensität
- [**PROMIS Cognitive Function SF 4a**](PROMIS-Cognitive-Function.html) — kognitive Funktion (Selbstauskunft), 4 Items
- [**PROMIS-16 Profile v2.1 (PROPr)**](PROMIS-16.html) — ultrakurz, 16 Items über 8 Domänen (inkl. Cognitive Function)

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
