// ─────────────────────────────────────────────────────────────────────────────
// MHI — Beispiel-QuestionnaireResponse
// Konsistentes Beispiel inkl. enableWhen-Kette:
//   Q_WB151 ("Wie viel wiegen Sie?") = "kg" -> aktiviert Q_WB151a
//   Q_WB151a ("Wie viel wiegen Sie? (kg)") = 50
// Subject: vorhandene Beispiel-Patientin (pcor-mii-exa-patient, siehe DEM-Response.fsh).
// ─────────────────────────────────────────────────────────────────────────────

Instance: MHIResponse
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "MHI — Beispielantwort"
Description: "Beispielantwort zum MHI-Questionnaire (Medical History)."
* language = #de-DE
* questionnaire = Canonical(MHI)
* status = #completed
* subject = Reference(pcor-mii-exa-patient)
* authored = "2026-06-17T10:00:00+02:00"

* item[+]
  * linkId = "anthropometrie"
  * item[+]
    * linkId = "Q_WB151"
    * answer.valueCoding = MhiGewichtAngabeCS#kg "kg"
  * item[+]
    * linkId = "Q_WB151a"
    * answer.valueDecimal = 50
