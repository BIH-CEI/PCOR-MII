// ─────────────────────────────────────────────────────────────────────────────
// Beispiel-Questionnaire für PCOR-MII.
//
// Demonstriert die Konventionen:
//   - Konformanz zum PRO-Q-Profil aus dem MII PRO-Modul via meta.profile,
//     versionsgepinnt auf die Dependency (siehe Aliases.fsh)
//   - die beiden Pflichtangaben dieses Profils: capabilities-Extension (1..1)
//     und Questionnaire.code (1..*)
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
Description: "Beispielhafter PCOR-Fragebogen zur Erfassung patientenberichteter Angaben. Dient als Vorlage für eigene Questionnaires; ist konform zum PRO-Q-Profil aus dem MII PRO-Modul 2026.6.0."

* meta.profile = $mii-pro-questionnaire
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

// Vom MII-PRO-Profil gefordert: capabilities-Extension (1..1).
// Ein Vorlagen-Fragebogen ist darstellbar und ausfüllbar, hat aber kein Scoring,
// keine SDC-Extraction und bildet keine PROMIS-Domäne ab.
* extension[+].url = $mii-pro-capabilities
* extension[=].extension[+].url = "displayable"
* extension[=].extension[=].valueBoolean = true
* extension[=].extension[+].url = "collectable"
* extension[=].extension[=].valueBoolean = true
* extension[=].extension[+].url = "calculatable"
* extension[=].extension[=].valueBoolean = false
* extension[=].extension[+].url = "extractable"
* extension[=].extension[=].valueBoolean = false
* extension[=].extension[+].url = "domainAligned"
* extension[=].extension[=].valueBoolean = false

// Vom MII-PRO-Profil gefordert: code (1..*). Der Bogen bildet kein konkretes
// Instrument ab, daher der generische SNOMED-Assessment-Code (snomed-Slice).
* code = $SCT#840297006 "Assessment of patient reported outcome measures"

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
