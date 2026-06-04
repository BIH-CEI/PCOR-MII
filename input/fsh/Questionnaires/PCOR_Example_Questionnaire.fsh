// ─────────────────────────────────────────────────────────────────────────────
// Beispiel-Questionnaire für PCOR-MII.
// Demonstriert mehrere Item-Typen (group, choice mit answerOption, string, date).
// Self-contained — ohne externe Package-Abhängigkeit, damit der Build grün bleibt.
// Als Vorlage gedacht: kopieren, umbenennen und mit eigenen Inhalten füllen.
// ─────────────────────────────────────────────────────────────────────────────
Instance: PcorExampleQuestionnaire
InstanceOf: Questionnaire
Usage: #definition
Title: "PCOR Beispiel-Fragebogen"
Description: "Beispielhafter PCOR-Fragebogen zur Erfassung patientenberichteter Angaben. Dient als Vorlage für eigene Questionnaires."
* url = "https://bih-cei.github.io/PCOR-MII/Questionnaire/PcorExampleQuestionnaire"
* name = "PcorExampleQuestionnaire"
* title = "PCOR Beispiel-Fragebogen"
* status = #draft
* experimental = true
* subjectType = #Patient
* date = "2026-06-04"
* publisher = "BIH-CEI"
* description = "Beispielhafter PCOR-Fragebogen zur Erfassung patientenberichteter Angaben."

// ── Gruppe: Allgemeine Angaben ────────────────────────────────────────────────
* item[+]
  * linkId = "general"
  * text = "Allgemeine Angaben"
  * type = #group
  * item[+]
    * linkId = "general.assessment-date"
    * text = "Datum der Erhebung"
    * type = #date
    * required = true
  * item[+]
    * linkId = "general.sex"
    * text = "Geschlecht"
    * type = #choice
    * required = true
    * answerOption[+].valueCoding = $administrative-gender#female "Female"
    * answerOption[+].valueCoding = $administrative-gender#male "Male"
    * answerOption[+].valueCoding = $administrative-gender#other "Other"
    * answerOption[+].valueCoding = $administrative-gender#unknown "Unknown"

// ── Gruppe: Patientenberichtete Outcomes ──────────────────────────────────────
* item[+]
  * linkId = "pro"
  * text = "Patientenberichtete Outcomes"
  * type = #group
  * item[+]
    * linkId = "pro.general-health"
    * text = "Wie würden Sie Ihren allgemeinen Gesundheitszustand beschreiben?"
    * type = #choice
    * required = true
    * answerOption[+].valueString = "Ausgezeichnet"
    * answerOption[+].valueString = "Sehr gut"
    * answerOption[+].valueString = "Gut"
    * answerOption[+].valueString = "Weniger gut"
    * answerOption[+].valueString = "Schlecht"
  * item[+]
    * linkId = "pro.comment"
    * text = "Weitere Anmerkungen"
    * type = #string
    * required = false
