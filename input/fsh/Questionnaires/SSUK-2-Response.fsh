// ─────────────────────────────────────────────────────────────────────────────
// SSUK-2 — Beispiel-QuestionnaireResponse (vollstaendig ausgefuellt)
//
// SZENARIO: siehe ERQ-6-Response.fsh — dieselbe Patientin, derselbe
//   Erhebungstermin 18.06.2026.
//
// STRUKTUR: Beide Items haengen im Questionnaire unter der GRUPPE "ssuk-stamm",
//   weil sie einen gemeinsamen Fragestamm teilen ("Unter den Menschen, die
//   Ihnen nahe stehen, gibt es jemanden, der/die.."). Die
//   QuestionnaireResponse muss diese Verschachtelung spiegeln — ein
//   ssuk14/ssuk10 auf oberster Ebene waere strukturell falsch, auch wenn die
//   Werte stimmen.
//
// ANTWORTMUSTER — DIE BEIDEN ITEMS MESSEN GEGENLAEUFIGES, und genau das zeigt
//   das Beispiel:
//     ssuk14 = 3 "oft"     — "Sie aufmuntert oder troestet": UNTERSTUETZENDE
//                            Zuwendung, hoher Wert ist guenstig
//     ssuk10 = 1 "selten"  — "die Auswirkung Ihrer Erkrankung herunterspielt":
//                            BELASTENDE Interaktion, hoher Wert ist unguenstig
//   Ein guenstiges soziales Umfeld sieht also so aus: hoch bei ssuk14, niedrig
//   bei ssuk10. Wer die beiden Items unbesehen summiert, rechnet gegenlaeufige
//   Konstrukte gegeneinander — deshalb hat der Zuschnitt bewusst keinen Score.
//
// ITEMNUMMERN: 14 und 10 sind die Originalnummern der 26-Item-Langform,
//   verifiziert gegen Mueller, Mehnert & Koch, Z Med Psychol 2004 (Tabelle 2).
//
// ORTHOGRAFIE: "nahe stehen" im Gruppentext ist die Schreibung von 1996-2006
//   und bleibt als Teil des uebernommenen Wortlauts unveraendert. Es ist KEIN
//   Herkunftsindiz (anders als die Helvetismen in DEM und ANSOCQ-2) — die
//   Reform 1996 betraf das nicht.
//
// MII-PRO-PROFIL AUF DER ANTWORT: Die AN-Instrumente sind Patient-Reported
//   Outcomes, deshalb traegt die Antwort mii-pr-pro-questionnaire-response
//   (Basis: SDC QuestionnaireResponse). DEM und MHI tun das bewusst NICHT —
//   sie sind keine PROs. Die Version ist absichtlich nicht angepinnt; sie loest
//   sich aus der Abhaengigkeit in sushi-config.yaml auf. Die drei aelteren
//   Handbeispiele unter input/examples/ pinnen noch |2026.4.1 und laufen damit
//   der Abhaengigkeit (2026.7.0) hinterher.
// ─────────────────────────────────────────────────────────────────────────────

Instance: SSUK2Response
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "SSUK-2 — Beispielantwort"
Description: "Vollständig ausgefüllte Beispielantwort zum SSUK-2-Questionnaire. Antwortmuster eines günstigen sozialen Umfelds: hoch bei der unterstützenden Zuwendung (`ssuk14`), niedrig bei der belastenden Interaktion (`ssuk10`)."
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response"
* language = #de-DE
* insert QuestionnaireRef(https://bih-cei.github.io/PCOR-MII/Questionnaire/SSUK2)
* status = #completed
* subject = Reference(pcor-mii-exa-patient-an)
* authored = "2026-06-18T09:45:00+02:00"

// ── Gemeinsamer Fragestamm ────────────────────────────────────────────────────
* item[+]
  * linkId = "ssuk-stamm"
  // unterstützende Zuwendung — hoher Wert günstig
  * item[+]
    * linkId = "ssuk14"
    * answer.valueCoding = SsukAntwortCS#3 "oft"
  // belastende Interaktion — hoher Wert ungünstig
  * item[+]
    * linkId = "ssuk10"
    * answer.valueCoding = SsukAntwortCS#1 "selten"
