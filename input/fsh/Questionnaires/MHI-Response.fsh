// ─────────────────────────────────────────────────────────────────────────────
// MHI — Beispiel-QuestionnaireResponse (vollständig ausgefüllt)
// Konsistentes Szenario (Anorexia nervosa, 2 Medikamente). Alle enableWhen-
// Bedingungen sind erfüllt (kg/cm gesetzt, Rauchen/Alkohol = ja, Medikamente = ja).
// Medikamenten-Blöcke 3–5 bleiben leer (MEDI_01 = 2).
// Subject: vorhandene Beispiel-Patientin (pcor-mii-exa-patient, siehe DEM-Response.fsh).
// ─────────────────────────────────────────────────────────────────────────────

Instance: MHIResponse
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "MHI — Beispielantwort"
Description: "Vollständig ausgefüllte Beispielantwort zum MHI-Questionnaire (Medical History)."
* language = #de-DE
* questionnaire = Canonical(MHI)
* status = #completed
* subject = Reference(pcor-mii-exa-patient)
* authored = "2026-06-17T10:00:00+02:00"

// ── Körpermaße ────────────────────────────────────────────────────────────────
* item[+]
  * linkId = "anthropometrie"
  * item[+]
    * linkId = "Q_WB151"
    * answer.valueCoding = MhiGewichtAngabeCS#kg "kg"
  * item[+]
    * linkId = "Q_WB151a"
    * answer.valueDecimal = 62
  * item[+]
    * linkId = "Q_WB152"
    * answer.valueCoding = MhiGroesseAngabeCS#cm "cm"
  * item[+]
    * linkId = "Q_WB152a"
    * answer.valueDecimal = 170

// ── Diagnose & chronische Erkrankungen ────────────────────────────────────────
* item[+]
  * linkId = "diagnose"
  * item[+]
    * linkId = "CPCOR-DIAG"
    * answer.valueCoding = MhiCpcorDiagCS#1 "Essstörung"
  * item[+]
    * linkId = "CPCOR_ONSET"
    * answer.valueInteger = 2020
  * item[+]
    * linkId = "GIPS13"
    * answer.valueCoding = MhiChronischCS#18 "Depression"

// ── Rauchen, Alkohol & Substanzen ─────────────────────────────────────────────
* item[+]
  * linkId = "lifestyle"
  * item[+]
    * linkId = "GIPS57a"
    * answer.valueCoding = DemAntwortCS#ja "Ja"
  * item[+]
    * linkId = "GIPS57b"
    * answer.valueCoding = DemZigarettenBandCS#b1 "1-10"
  * item[+]
    * linkId = "GIPS56a"
    * answer.valueCoding = DemAntwortCS#ja "Ja"
  * item[+]
    * linkId = "GIPS56b1"
    * answer.valueCoding = DemAntwortCS#ja "Ja"
  * item[+]
    * linkId = "GIPS56b2"
    * answer.valueCoding = DemAntwortCS#nein "Nein"
  * item[+]
    * linkId = "GIPS56b3"
    * answer.valueCoding = DemAntwortCS#nein "Nein"
  * item[+]
    * linkId = "GIPS56b4"
    * answer.valueCoding = DemAntwortCS#nein "Nein"
  * item[+]
    * linkId = "GIPS58"
    * answer.valueCoding = DemAntwortCS#nein "Nein"

// ── Aktuelle Medikamente ──────────────────────────────────────────────────────
* item[+]
  * linkId = "medikation"
  * item[+]
    * linkId = "medication1"
    * answer.valueCoding = DemAntwortCS#ja "Ja"
  * item[+]
    * linkId = "medication_text"
    * answer.valueString = "Sertralin 50 mg morgens; Ibuprofen 400 mg bei Bedarf"
  * item[+]
    * linkId = "MEDI_01"
    * answer.valueInteger = 2
  * item[+]
    * linkId = "medi_02_01"
    * item[+]
      * linkId = "medi_02_name_01"
      * answer.valueString = "Sertralin"
    * item[+]
      * linkId = "medi_02_onset_01"
      * answer.valueString = "seit 2021"
    * item[+]
      * linkId = "medi_02_dose_01"
      * answer.valueString = "50 mg"
    * item[+]
      * linkId = "medi_02_time_01"
      * answer.valueCoding = MhiEinnahmezeitCS#0 "morgens"
    * item[+]
      * linkId = "medi_02_frequency_01"
      * answer.valueString = "7x pro Woche"
  * item[+]
    * linkId = "medi_02_02"
    * item[+]
      * linkId = "medi_02_name_02"
      * answer.valueString = "Ibuprofen"
    * item[+]
      * linkId = "medi_02_onset_02"
      * answer.valueString = "seit 2023"
    * item[+]
      * linkId = "medi_02_dose_02"
      * answer.valueString = "400 mg"
    * item[+]
      * linkId = "medi_02_time_02"
      * answer.valueCoding = MhiEinnahmezeitCS#4 "bei Bedarf"
    * item[+]
      * linkId = "medi_02_frequency_02"
      * answer.valueString = "ca. 2x pro Woche"

// ── Gewichtsverlauf (Szenario Anorexia nervosa) ───────────────────────────────
* item[+]
  * linkId = "gewicht-an"
  * item[+]
    * linkId = "weight_outpatient_1"
    * answer.valueDecimal = 61.5
  * item[+]
    * linkId = "weight_outpatient_2"
    * answer.valueCoding = MhiGewichtsmethodeCS#1 "Hausarzt"
  * item[+]
    * linkId = "weight_inpatient"
    * answer.valueDecimal = 60
  * item[+]
    * linkId = "weight_discharge"
    * answer.valueDecimal = 63
  * item[+]
    * linkId = "AN_subtyp"
    * answer.valueCoding = MhiAnSubtypCS#1 "restriktiver Typ (Kontrolle des Gewichts vorwiegend über geringe Nahrungsaufnahme und/oder Sport)"
