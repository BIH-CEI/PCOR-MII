// ─────────────────────────────────────────────────────────────────────────────
// Beispiel-Questionnaire für PCOR-MII.
//
// Demonstriert die Konventionen:
//   - Konformanz zum PRO-Q-Profil aus dem MII PRO-Modul 2026.4.1 via meta.profile
//   - Sprache: deutsch (language = de-DE)
//   - Codierte Antworten via answerValueSet (KEIN valueString!)
//   - Item-Typen: group, choice, date, string
//
// Als Vorlage gedacht: kopieren, umbenennen und mit eigenen Inhalten füllen.
// ─────────────────────────────────────────────────────────────────────────────
Instance: PcorExampleQuestionnaire
InstanceOf: Questionnaire
Usage: #definition
Title: "PCOR Beispiel-Fragebogen"
Description: "Beispielhafter PCOR-Fragebogen zur Erfassung patientenberichteter Angaben. Dient als Vorlage für eigene Questionnaires; ist konform zum PRO-Q-Profil aus dem MII PRO-Modul 2026.4.1."

* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire|2026.4.1"
* language = #de-DE

* url = "https://bih-cei.github.io/PCOR-MII/Questionnaire/PcorExampleQuestionnaire"
* version = "0.1.0"
* name = "PcorExampleQuestionnaire"
* title = "PCOR Beispiel-Fragebogen"
* status = #draft
* experimental = true
* subjectType = #Patient
* date = "2026-06-16"
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
    * answerValueSet = "https://bih-cei.github.io/PCOR-MII/ValueSet/pcor-example-general-health"
  * item[+]
    * linkId = "pro.comment"
    * text = "Weitere Anmerkungen"
    * type = #string
    * required = false
