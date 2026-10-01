// ─────────────────────────────────────────────────────────────────────────────
// EDE-Q6 — Beispiel-QuestionnaireResponse (vollstaendig ausgefuellt)
//
// SZENARIO: siehe ERQ-6-Response.fsh — dieselbe Patientin, derselbe
//   Erhebungstermin 18.06.2026.
//
// ANTWORTMUSTER: residuelle Essstoerungspathologie bei teilrestituiertem
//   Gewicht. Je Subskala genau ein Item, daher bewusst abgestuft statt
//   uniform:
//     edeq1  Restraint       13-15 Tage  (Restriktion laesst nach, besteht fort)
//     edeq7  Eating Concern  16-22 Tage  (gedankliche Beschaeftigung noch hoch)
//     edeq12 Weight Concern  16-22 Tage  (Abnehmwunsch noch hoch)
//     edeq27 Shape Concern   4 von 0-6   (maessiges Koerperunbehagen)
//
// WARUM edeq29 = "ja": Nur dann greift die enableWhen-Bedingung von edeq30,
//   und nur dann zeigt das Beispiel BEIDE Zusatzfragen. Klinisch plausibel:
//   Eine fortbestehende Amenorrhoe trotz teilweiser Gewichtsrestitution ist
//   der Regelfall, nicht die Ausnahme. Haette das Beispiel hier "nein"
//   gesetzt, waere edeq30 unbeantwortet geblieben und die abhaengige Frage
//   im Beispiel nicht belegt.
//
// SKALENRICHTUNG BEACHTEN: edeq1, edeq7 und edeq12 zaehlen TAGE (0-6 ueber die
//   Codes von EdeQ6TageCS), edeq27 ist eine Auspraegungsskala 0-6 als integer.
//   Gleiche Zahlenspanne, verschiedene Bedeutung — deshalb auch verschiedene
//   Datentypen im Questionnaire.
//
// MII-PRO-PROFIL AUF DER ANTWORT: Die AN-Instrumente sind Patient-Reported
//   Outcomes, deshalb traegt die Antwort mii-pr-pro-questionnaire-response
//   (Basis: SDC QuestionnaireResponse). DEM und MHI tun das bewusst NICHT —
//   sie sind keine PROs. Die Version ist absichtlich nicht angepinnt; sie loest
//   sich aus der Abhaengigkeit in sushi-config.yaml auf. Die drei aelteren
//   Handbeispiele unter input/examples/ pinnen noch |2026.4.1 und laufen damit
//   der Abhaengigkeit (2026.7.0) hinterher.
// ─────────────────────────────────────────────────────────────────────────────

Instance: EDEQ6Response
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "EDE-Q6 — Beispielantwort"
Description: "Vollständig ausgefüllte Beispielantwort zum EDE-Q6-Questionnaire, einschließlich der über `enableWhen` abhängigen Frage `edeq30`. Antwortmuster: residuelle Essstörungspathologie bei teilrestituiertem Gewicht."
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response"
* language = #de-DE
* insert QuestionnaireRef(https://bih-cei.github.io/PCOR-MII/Questionnaire/EDEQ6)
* status = #completed
* subject = Reference(pcor-mii-exa-patient-an)
* authored = "2026-06-18T09:15:00+02:00"

// ── Die vier Skalen-Items (je eines pro EDE-Q-Subskala) ───────────────────────
* item[+]
  * linkId = "edeq1"
  * answer.valueCoding = EdeQ6TageCS#3 "13-15 days"
* item[+]
  * linkId = "edeq7"
  * answer.valueCoding = EdeQ6TageCS#4 "16-22 days"
* item[+]
  * linkId = "edeq12"
  * answer.valueCoding = EdeQ6TageCS#4 "16-22 days"
* item[+]
  * linkId = "edeq27"
  * answer.valueInteger = 4

// ── Zusatzfragen zur Regelblutung ─────────────────────────────────────────────
* item[+]
  * linkId = "edeq29"
  * answer.valueCoding = DemAntwortCS#ja "Ja"
// Drei ausgebliebene Regelblutungen — passend zum Zeitfenster von edeq29
// ("letzte 3-4 Monate"). Ein hoeherer Wert waere mit der Frage unvereinbar.
* item[+]
  * linkId = "edeq30"
  * answer.valueInteger = 3
