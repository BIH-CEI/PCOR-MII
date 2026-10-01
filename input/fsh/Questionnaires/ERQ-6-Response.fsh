// ─────────────────────────────────────────────────────────────────────────────
// ERQ-6 — Beispiel-QuestionnaireResponse (vollstaendig ausgefuellt)
//
// SZENARIO: Dieselbe Beispiel-Patientin wie in DEM-Response.fsh und
//   MHI-Response.fsh (pcor-mii-exa-patient) — Anorexia nervosa restriktiver
//   Typ seit 2020, in Behandlung, Gewicht teilrestituiert. Die fuenf
//   AN-Beispielantworten (ERQ-6, EDE-Q6, ANSOCQ-2, SSUK-2, ACE) bilden EINEN
//   Erhebungstermin am 18.06.2026 ab, zeitlich gestaffelt. So laesst sich der
//   Datensatz als Ganzes lesen und nicht als fuenf unverbundene Testdaten.
//
// ANTWORTMUSTER — BEWUSST GEWAEHLT, NICHT ZUFAELLIG: niedrige bis mittlere
//   Neubewertung bei hoher Unterdrueckung. Das ist das Muster, das die
//   Literatur bei Anorexia nervosa beschreibt, und es macht die beiden
//   Itemgruppen unterscheidbar — ein durchgaengig mittleres Antwortprofil
//   haette beide auf denselben Wert gelegt und damit nichts gezeigt.
//     Neubewertungs-Items (erq1, erq3, erq8): 4 + 3 + 4
//     Unterdrueckungs-Items (erq2, erq6, erq9): 6 + 6 + 7
//
// KEINE SCORE-OBSERVATIONS MEHR (zurueckgezogen 2026-10-01): Dieser Bogen ist
//   NICHT der ERQ-S. Dieser besteht laut Preece et al. 2023 (Tabelle 1) aus
//   den ERQ-Items 2, 6, 7, 8, 9 und 10; PCOR-MII fuehrt 1, 2, 3, 6, 8 und 9.
//   Die Unterdrueckungs-Items sind identisch, die Neubewertungs-Items nicht.
//   Die publizierten Kennwerte gelten daher nicht fuer diesen Satz, und ohne
//   validierte Grundlage gibt es nach ADR-003 Punkt 3 keinen Score. Die
//   Summen oben stehen nur zur Erlaeuterung des Antwortmusters.
//
// LINKIDS: Es gelten die NORMATIVEN ERQ-Itemnummern (1, 2, 3, 6, 8, 9), nicht
//   die sequenziellen Variablen-IDs des Item Level Dictionary — siehe
//   Mappings/ERQ-S-LinkIds.fsh. Achtung beim Nachbauen: "erq6" bezeichnet in
//   beiden Systemen VERSCHIEDENE Items.
//
// MII-PRO-PROFIL AUF DER ANTWORT: Die AN-Instrumente sind Patient-Reported
//   Outcomes, deshalb traegt die Antwort mii-pr-pro-questionnaire-response
//   (Basis: SDC QuestionnaireResponse). DEM und MHI tun das bewusst NICHT —
//   sie sind keine PROs. Die Version ist absichtlich nicht angepinnt; sie loest
//   sich aus der Abhaengigkeit in sushi-config.yaml auf. Die drei aelteren
//   Handbeispiele unter input/examples/ pinnen noch |2026.4.1 und laufen damit
//   der Abhaengigkeit (2026.7.0) hinterher.
// ─────────────────────────────────────────────────────────────────────────────

Instance: ERQ6Response
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "ERQ-6 — Beispielantwort"
Description: "Vollständig ausgefüllte Beispielantwort zum ERQ-6-Questionnaire. Antwortmuster: niedrige Neubewertung bei hoher Unterdrückung — das für Anorexia nervosa beschriebene Muster. Kein Score: Der Bogen ist nicht der ERQ-S — dieser besteht aus anderen ERQ-Items (2, 6, 7, 8, 9, 10), die publizierten Kennwerte gelten daher nicht."
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response"
* language = #de-DE
* insert QuestionnaireRef(https://bih-cei.github.io/PCOR-MII/Questionnaire/ERQ6)
* status = #completed
* subject = Reference(pcor-mii-exa-patient)
* authored = "2026-06-18T09:00:00+02:00"

// ── Antworten in QUESTIONNAIRE-REIHENFOLGE ────────────────────────────────────
// WICHTIG: Die Items MUESSEN in der Reihenfolge des Questionnaire stehen
//   (erq1, erq2, erq3, erq6, erq8, erq9). Eine Sortierung nach Subskala —
//   erst die drei Neubewertungs-, dann die drei Unterdrueckungs-Items — ist
//   verlockend, aber der FHIR-Validator lehnt sie ab: "Struktureller Fehler:
//   Elemente in falscher Reihenfolge". Die Zuordnung zur Subskala steht daher
//   als Kommentar an jedem Item, nicht in der Anordnung.
* item[+]
  * linkId = "erq1"          // Neubewertung
  * answer.valueInteger = 4
* item[+]
  * linkId = "erq2"          // Unterdrückung
  * answer.valueInteger = 6
* item[+]
  * linkId = "erq3"          // Neubewertung
  * answer.valueInteger = 3
* item[+]
  * linkId = "erq6"          // Unterdrückung
  * answer.valueInteger = 6
* item[+]
  * linkId = "erq8"          // Neubewertung
  * answer.valueInteger = 4
* item[+]
  * linkId = "erq9"          // Unterdrückung
  * answer.valueInteger = 7
