// ─────────────────────────────────────────────────────────────────────────────
// ACE — Beispiel-QuestionnaireResponse (vollstaendig ausgefuellt)
//
// SZENARIO: siehe ERQ-6-Response.fsh — dieselbe Patientin, derselbe
//   Erhebungstermin 18.06.2026.
//
// ZUR WAHL DER ANTWORTEN — HIER MIT MEHR BEDACHT ALS BEI DEN ANDEREN VIER:
//   Das Beispiel bejaht die beiden Items zur emotionalen Dimension (ace1
//   emotionale Misshandlung, ace4 emotionale Vernachlaessigung) und verneint
//   die uebrigen drei. Das ergibt ein plausibles Profil — die emotionalen
//   Belastungen sind die haeufigsten ACE-Kategorien und in AN-Stichproben
//   ueberrepraesentiert — und belegt technisch beides: bejahte und verneinte
//   Items, beide ueber dasselbe DemJaNeinVS.
//
//   ace3 (sexueller Missbrauch) steht ABSICHTLICH auf "nein". Alle fuenf Items
//   nutzen dasselbe ValueSet und denselben Datentyp, technisch belegt eine
//   Ja-Antwort hier also nichts, was ace1 nicht schon belegt. Ein
//   veroeffentlichtes Beispiel im Implementation Guide wird von vielen
//   Menschen gelesen und in Praesentationen gezeigt; die schwerwiegendste
//   Missbrauchsangabe ohne jeden Erkenntnisgewinn hineinzuschreiben waere
//   gedankenlos. Das ist eine redaktionelle Entscheidung, keine technische.
//
// KEIN SCORE: Der ACE-Score des Vollinstruments ist die Anzahl der Ja-Antworten
//   ueber ALLE ZEHN Fragen (0-10). Dieses Beispiel hat zwei Ja-Antworten von
//   fuenf gestellten Fragen — das ist KEIN ACE-Score von 2. Die Items 6-10
//   (Haushalts-Dysfunktion) sind nicht erhoben, ihr Beitrag ist unbekannt, und
//   der Wert waere nach oben offen. Deshalb tragen weder Questionnaire noch
//   diese Antwort ein Summenitem.
//
// SENSIBILITAET: Die Items betreffen Missbrauch und Vernachlaessigung. Die
//   Governance der Auswertung (analog PHQ-SI) ist fachlich offen und auf der
//   Instrumentenseite vermerkt — dieses Beispiel nimmt ihr nichts vorweg.
//
// MII-PRO-PROFIL AUF DER ANTWORT: Die AN-Instrumente sind Patient-Reported
//   Outcomes, deshalb traegt die Antwort mii-pr-pro-questionnaire-response
//   (Basis: SDC QuestionnaireResponse). DEM und MHI tun das bewusst NICHT —
//   sie sind keine PROs. Die Version ist absichtlich nicht angepinnt; sie loest
//   sich aus der Abhaengigkeit in sushi-config.yaml auf. Die drei aelteren
//   Handbeispiele unter input/examples/ pinnen noch |2026.4.1 und laufen damit
//   der Abhaengigkeit (2026.7.0) hinterher.
// ─────────────────────────────────────────────────────────────────────────────

Instance: ACEResponse
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "ACE — Beispielantwort"
Description: "Vollständig ausgefüllte Beispielantwort zum ACE-Questionnaire (erste fünf ACE-Fragen). Zwei bejahte Items in der emotionalen Dimension; die Anzahl der Ja-Antworten ist kein ACE-Score, weil die Fragen 6–10 nicht erhoben werden."
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response"
* language = #de-DE
* questionnaire = Canonical(ACE)
* status = #completed
* subject = Reference(pcor-mii-exa-patient)
* authored = "2026-06-18T10:00:00+02:00"

// ── Emotionale Misshandlung ───────────────────────────────────────────────────
* item[+]
  * linkId = "ace1"
  * answer.valueCoding = DemAntwortCS#ja "Ja"

// ── Körperliche Misshandlung ──────────────────────────────────────────────────
* item[+]
  * linkId = "ace2"
  * answer.valueCoding = DemAntwortCS#nein "Nein"

// ── Sexueller Missbrauch (bewusst "nein", siehe Kopfkommentar) ────────────────
* item[+]
  * linkId = "ace3"
  * answer.valueCoding = DemAntwortCS#nein "Nein"

// ── Emotionale Vernachlässigung ───────────────────────────────────────────────
* item[+]
  * linkId = "ace4"
  * answer.valueCoding = DemAntwortCS#ja "Ja"

// ── Körperliche Vernachlässigung ──────────────────────────────────────────────
* item[+]
  * linkId = "ace5"
  * answer.valueCoding = DemAntwortCS#nein "Nein"
