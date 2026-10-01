// ─────────────────────────────────────────────────────────────────────────────
// MHI — Beispielantwort fuer den PSS-Patienten (Screening 25.06.2026)
// Abgeleitet aus MHIResponse (AN); AN-Gruppe gewicht-an weggelassen, Diagnose,
// Anthropometrie und Medikation der PSS-Geschichte angepasst. Szenario siehe
// PSS-Responses.fsh.
// ─────────────────────────────────────────────────────────────────────────────

Instance: DEMPSSResponse
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "DEM — Beispielantwort (PSS)"
Description: "Ausgefülltes Beispiel zum DEM-Questionnaire für den PSS-Beispielpatienten (Screening-Termin 25.06.2026)."
* language = #de-DE
* insert QuestionnaireRef(https://bih-cei.github.io/PCOR-MII/Questionnaire/DEM)
* status = #completed
* subject = Reference(pcor-mii-exa-patient-pss)
* authored = "2026-06-25T09:00:00+02:00"

// ── Soziodemographie ──────────────────────────────────────────────────────────
* item[+]
  * linkId = "soziodemographie"
  * item[+]
    * linkId = "AGE"
    * answer.valueDate = "1977-09-03"
  * item[+]
    * linkId = "Q_ISCED"
    * answer.valueCoding = DemIscedCS#post-sek "Post-sekundäre, nicht-tertiäre Ausbildungen (inkl. einjährige Fachoberschule, zweijährige Berufsoberschule/Technische Oberschule, Kolleg, Abendgymnasium)"
  * item[+]
    * linkId = "Q_SEX"
    * answer.valueCoding = DemGeschlechtCS#maennlich "Männlich"
  * item[+]
    * linkId = "Q_GENDERID"
    * answer.valueCoding = DemAntwortCS#ja "Ja"
  * item[+]
    * linkId = "Q_OECDLIT5a"
    * answer.valueCoding = DemErwerbsstatusCS#angestellt "Angestellt"
  * item[+]
    * linkId = "Q_OECDLIT7a"
    * answer.valueCoding = DemEinkommenCS#band-mittel "Zwischen 2.300 € und 5.200 € pro Monat"
  * item[+]
    * linkId = "Q_MONMED"
    * answer.valueCoding = DemAntwortCS#nein "Nein"
  * item[+]
    * linkId = "Q_MON"
    * item[+]
      * linkId = "MONMEAL"
      * answer.valueCoding = DemHaeufigkeit5CS#selten "Selten"
    * item[+]
      * linkId = "MONRENT"
      * answer.valueCoding = DemHaeufigkeit5CS#nie "Nie"
    * item[+]
      * linkId = "MONBILLS"
      * answer.valueCoding = DemHaeufigkeit5CS#selten "Selten"
  * item[+]
    * linkId = "MEDHIMS6"
    * answer.valueCoding = DemAntwortCS#ja "Ja"
  * item[+]
    * linkId = "MEDHIMS7"
    * answer.valueCoding = DemAntwortCS#ja "Ja"
  * item[+]
    * linkId = "Q_OECDLITii"
    * answer.valueCoding = DemUrbanizitaetCS#stadt "Stadt"
  * item[+]
    * linkId = "Zipcode"
    * answer.valueString = "69115"
  * item[+]
    * linkId = "OECDLIT2a"
    * answer.valueInteger = 1
  * item[+]
    * linkId = "OECDLIT2b"
    * answer.valueInteger = 1
  * item[+]
    * linkId = "WHODIS"
    * item[+]
      * linkId = "WHODIS1"
      * answer.valueCoding = DemLeichtigkeit6CS#einfach "Einfach"
    * item[+]
      * linkId = "WHODIS2"
      * answer.valueCoding = DemLeichtigkeit6CS#weder-noch "Weder einfach noch schwierig"

// ── Weitere Angaben ───────────────────────────────────────────────────────────
* item[+]
  * linkId = "weitere"
  * item[+]
    * linkId = "GIPS04"
    * answer.valueCoding = DemBeziehungsstatusCS#feste "Feste Partnerschaft"
  * item[+]
    * linkId = "GIPS10"
    * answer.valueCoding = DemRentenstatusCS#keine "Keine Rente"
  * item[+]
    * linkId = "CPCOR_REQ"
    * answer.valueCoding = DemAntwortCS#ja "Ja"

Instance: MHIPSSResponse
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "MHI — Beispielantwort (PSS)"
Description: "Ausgefülltes Beispiel zum MHI-Questionnaire für den PSS-Beispielpatienten (Screening-Termin 25.06.2026). Die AN-spezifische Gruppe `gewicht-an` ist nicht enthalten — sie wird nur im Szenario AN erhoben; genau dafür ist sie im Questionnaire als eigene Gruppe geführt."
* language = #de-DE
* insert QuestionnaireRef(https://bih-cei.github.io/PCOR-MII/Questionnaire/MHI)
* status = #completed
* subject = Reference(pcor-mii-exa-patient-pss)
* authored = "2026-06-25T09:15:00+02:00"

// ── Körpermaße ────────────────────────────────────────────────────────────────
* item[+]
  * linkId = "anthropometrie"
  * item[+]
    * linkId = "Q_WB151"
    * answer.valueCoding = MhiGewichtAngabeCS#kg "kg"
  * item[+]
    * linkId = "Q_WB151a"
    * answer.valueDecimal = 88
  * item[+]
    * linkId = "Q_WB152"
    * answer.valueCoding = MhiGroesseAngabeCS#cm "cm"
  * item[+]
    * linkId = "Q_WB152a"
    * answer.valueDecimal = 181

// ── Diagnose & chronische Erkrankungen ────────────────────────────────────────
* item[+]
  * linkId = "diagnose"
  * item[+]
    * linkId = "CPCOR-DIAG"
    * answer.valueCoding = MhiCpcorDiagCS#4 "Anhaltende körperliche Beschwerden"
  * item[+]
    * linkId = "CPCOR_ONSET"
    * answer.valueInteger = 2024
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
    * answer.valueString = "Ibuprofen 600 mg bei Bedarf; Pantoprazol 20 mg morgens"
  * item[+]
    * linkId = "MEDI_01"
    * answer.valueInteger = 2
  * item[+]
    * linkId = "medi_02_01"
    * item[+]
      * linkId = "medi_02_name_01"
      * answer.valueString = "Pantoprazol"
    * item[+]
      * linkId = "medi_02_onset_01"
      * answer.valueString = "seit 2024"
    * item[+]
      * linkId = "medi_02_dose_01"
      * answer.valueString = "20 mg"
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
      * answer.valueString = "600 mg"
    * item[+]
      * linkId = "medi_02_time_02"
      * answer.valueCoding = MhiEinnahmezeitCS#4 "bei Bedarf"
    * item[+]
      * linkId = "medi_02_frequency_02"
      * answer.valueString = "ca. 2x pro Woche"

// ── Gewichtsverlauf (Szenario Anorexia nervosa) ───────────────────────────────
