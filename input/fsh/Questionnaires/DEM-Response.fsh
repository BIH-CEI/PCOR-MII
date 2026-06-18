// ─────────────────────────────────────────────────────────────────────────────
// DEM — Beispiel-QuestionnaireResponse (+ minimaler Patient als subject)
// Ausgefülltes Beispiel zum DEM-Questionnaire (siehe DEM.fsh). Wird auf der
// Seite Demographie.md zusätzlich zur leeren Form gerendert.
// Hinweis: nur Items mit erfüllter enableWhen-Bedingung sind beantwortet.
// DEM ist kein PRO -> kein MII-PRO-Profil auf der QR.
// ─────────────────────────────────────────────────────────────────────────────

Instance: pcor-mii-exa-patient
InstanceOf: Patient
Usage: #example
Title: "Beispiel-Patientin (DEM)"
Description: "Minimale Beispiel-Patientin als subject der DEM-Beispielantwort."
* language = #de-DE
* gender = #female
* birthDate = "1985-03-12"


Instance: DEMResponse
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "DEM — Beispielantwort"
Description: "Ausgefülltes Beispiel zum DEM-Questionnaire (Demographie)."
* language = #de-DE
* questionnaire = Canonical(DEM)
* status = #completed
* subject = Reference(pcor-mii-exa-patient)
* authored = "2026-06-16T10:00:00+02:00"

// ── Soziodemographie ──────────────────────────────────────────────────────────
* item[+]
  * linkId = "soziodemographie"
  * item[+]
    * linkId = "AGE"
    * answer.valueDate = "1985-03-12"
  * item[+]
    * linkId = "Q_ISCED"
    * answer.valueCoding = DemIscedCS#master "Master oder äquivalent (inkl. Diplom, staatl./kirchl. Prüfung)"
  * item[+]
    * linkId = "Q_SEX"
    * answer.valueCoding = DemGeschlechtCS#weiblich "Weiblich"
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
    * answer.valueString = "10117"
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
