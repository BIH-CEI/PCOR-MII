// ─────────────────────────────────────────────────────────────────────────────
// ANSOCQ-2 — Beispiel-QuestionnaireResponse (vollstaendig ausgefuellt)
//
// SZENARIO: siehe ERQ-6-Response.fsh — dieselbe Patientin, derselbe
//   Erhebungstermin 18.06.2026.
//
// LANGUAGE = de-CH, OBWOHL DER QUESTIONNAIRE #en TRAEGT — das ist Absicht und
//   der inhaltlich interessanteste Punkt an diesem Beispiel. Der Questionnaire
//   fuehrt den englischen Originalwortlaut als item.text (Rieger et al. 2002)
//   und haengt die deutschen Fassungen als translation-Extension bzw.
//   CodeSystem-designation daran. Vorgelegt wurde der Patientin die
//   VALIDIERTE SCHWEIZER Fassung — nach ADR-005 ist sie fuer die Erhebung
//   massgeblich, weil nur unter ihrem Wortlaut die publizierten
//   psychometrischen Kennwerte gelten. Genau das haelt language = #de-CH fest:
//   welche Sprachebene tatsaechlich administriert wurde. Die #de-Ebene ist
//   NICHT validiert und darf hier nicht stehen.
//
// ANTWORTMUSTER — mittlere Veraenderungsmotivation, passend zu einer
//   Patientin in laufender Behandlung, und bewusst NICHT auf beiden Items
//   gleich:
//     ansocq3  = Stadium 3 (Decision)     "I have decided that I am prepared
//                                          to gain weight on these body parts"
//     ansocq14 = Stadium 4 (Action)       "I am using strategies to help me
//                                          reduce the amount of time..."
//   Die Faktoren der deutschen Validierung laufen also auseinander: Bei den
//   Gedanken ist die Patientin bereits in der Umsetzung, bei der
//   Gewichtszunahme erst bei der Entscheidung. Das ist klinisch der typische
//   Verlauf und zeigt, warum die beiden Items ueberhaupt getrennt erhoben
//   werden.
//
// ANSWER.VALUECODING TRAEGT DEN ENGLISCHEN DISPLAY, weil display den
//   CodeSystem-display spiegelt. Der deutsche Wortlaut steht nicht in der
//   Antwort, sondern als designation am Code — er wird beim Rendern aufgeloest,
//   nicht in der QuestionnaireResponse dupliziert.
//
// EINFACHAUSWAHL: je Item genau eine Antwort (ADR-Begruendung im Questionnaire:
//   Pauli et al. 2017, Scorebereich 20-100 bei 20 Items).
//
// MII-PRO-PROFIL AUF DER ANTWORT: Die AN-Instrumente sind Patient-Reported
//   Outcomes, deshalb traegt die Antwort mii-pr-pro-questionnaire-response
//   (Basis: SDC QuestionnaireResponse). DEM und MHI tun das bewusst NICHT —
//   sie sind keine PROs. Die Version ist absichtlich nicht angepinnt; sie loest
//   sich aus der Abhaengigkeit in sushi-config.yaml auf. Die drei aelteren
//   Handbeispiele unter input/examples/ pinnen noch |2026.4.1 und laufen damit
//   der Abhaengigkeit (2026.7.0) hinterher.
// ─────────────────────────────────────────────────────────────────────────────

Instance: ANSOCQ2Response
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "ANSOCQ-2 — Beispielantwort"
Description: "Vollständig ausgefüllte Beispielantwort zum ANSOCQ-2-Questionnaire. `language` ist `de-CH`, weil die validierte Schweizer Fassung vorgelegt wurde — der Questionnaire selbst führt den englischen Originalwortlaut."
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response"
* language = #de-CH
* insert QuestionnaireRef(https://bih-cei.github.io/PCOR-MII/Questionnaire/ANSOCQ2)
* status = #completed
* subject = Reference(pcor-mii-exa-patient-an)
* authored = "2026-06-18T09:30:00+02:00"

// ── Item 3 — Körperteile bei Gewichtszunahme (Stadium 3: Decision) ────────────
* item[+]
  * linkId = "ansocq3"
  * answer.valueCoding = AnsocqKoerperteileCS#3 "I have decided that I am prepared to gain weight on these body parts."

// ── Item 14 — Zeit mit Gedanken an Nahrung und Gewicht (Stadium 4: Action) ────
* item[+]
  * linkId = "ansocq14"
  * answer.valueCoding = AnsocqGedankenCS#4 "I am using strategies to help me reduce the amount of time I spend thinking about food and my weight."
