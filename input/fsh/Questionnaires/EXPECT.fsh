// ─────────────────────────────────────────────────────────────────────────────
// EXPECT — Erwartung an den Verlauf der Körperbeschwerden (3 NRS-Einzelitems)
// Quelle: PCOR Item Level Dictionary, Entität PSS, Kategorie DCH,
//   Items EXPECT_01 / EXPECT_02 / EXPECT_03 (Typ "Visual Scale").
//
// KEIN STANDARDISIERTES INSTRUMENT: Die DIZ-Implementierungsliste PCOR-MII
//   führt EXPECT als "3 Einzelitems (Numerische Rating-Skala), kein
//   standardisierter Fragebogen"; Entwicklungs- und Übersetzungspaper sind mit
//   "NA" vermerkt, ebenso die Lizenz. Es gibt daher weder eine Publikation, an
//   der ein Wortlaut zu verifizieren wäre, noch eine Scoring-Vorschrift.
//
// SCORING: bewusst KEIN Summen- oder Mittelwert-Item. Die drei Items messen
//   unterschiedliche Konstrukte (erwartete Beschwerdestärke, erwartete
//   Beeinträchtigung, erwartete Bewältigung) und sind einzeln auszuwerten.
//   Zusätzlich sind sie nicht gleichgerichtet: bei EXPECT_01 und EXPECT_02 ist
//   ein hoher Wert ungünstig, bei EXPECT_03 günstig. Ein Summenwert wäre ohne
//   Umpolung inhaltlich falsch — und für eine Umpolung fehlt die Grundlage.
//
// SKALEN-ANKER: Die Ankerbeschriftungen stehen als eigenständige display-Items
//   unter dem jeweiligen Item, damit der Fragetext wortgleich aus dem Item
//   Level Dictionary übernommen bleibt.
//
// Terminologie-Recherche (mcp__fhir-terminology__search_codes, Stand 2026-09-02):
//   - LOINC 2.83: keine Codes für Behandlungs-/Verlaufserwartung bei
//     Körperbeschwerden gefunden.
//   - SNOMED CT 2026-05-01: einziger naher Treffer ist 110477003 |Unrealistic
//     expectation from treatment (finding)| — ein Befund, kein Assessment, und
//     inhaltlich nicht das hier Erfragte. NICHT vergeben.
//   Daher kein Questionnaire.code und keine item.code.
// ─────────────────────────────────────────────────────────────────────────────

Instance: EXPECT
InstanceOf: Questionnaire
Usage: #definition
Title: "EXPECT — Erwartung an den Verlauf der Körperbeschwerden"
Description: "Drei numerische Rating-Items (0-10) zur Erwartung an die kommenden 6 Monate: erwartete Gesamtstärke der Körperbeschwerden, erwartete Beeinträchtigung und erwartete Bewältigung. Kein standardisierter Fragebogen und kein Gesamtscore — die Items sind einzeln auszuwerten und nicht gleichgerichtet. Quelle: PCOR-MII Item Level Dictionary (Entität PSS)."
* meta.profile = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire"
* url = "https://bih-cei.github.io/PCOR-MII/Questionnaire/EXPECT"
* name = "EXPECT"
* version = "0.1.0"
* status = #draft
* experimental = true
* subjectType = #Patient
* date = "2026-09-02"
* publisher = "BIH-CEI"
* copyright = "Die drei EXPECT-Items stammen aus dem PCOR-MII Item Level Dictionary und bilden kein publiziertes, standardisiertes Instrument ab; die DIZ-Implementierungsliste PCOR-MII führt für EXPECT weder ein Entwicklungs- noch ein Übersetzungspaper und keine Lizenzangabe. Der PCOR-MII-eigene FHIR-Inhalt unterliegt der Repository-Lizenz (CC-BY-4.0)."

// ── Erwartete Gesamtstärke der Beschwerden ──────────────────────────────────
* item[+]
  * linkId = "EXPECT_01"
  * text = "Welche Gesamtstärke Ihrer Körperbeschwerden erwarten Sie in 6 Monaten?"
  * type = #integer
  * extension[+].url = "http://hl7.org/fhir/StructureDefinition/minValue"
  * extension[=].valueInteger = 0
  * extension[+].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
  * extension[=].valueInteger = 10
  * extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-sliderStepValue"
  * extension[=].valueInteger = 1
  * extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
  * extension[=].valueCodeableConcept = $questionnaire-item-control#slider "Slider"
  * item[+]
    * linkId = "EXPECT_01-anchors"
    * text = "0 = überhaupt keine Beschwerden, 10 = schlimmstmögliche Beschwerden"
    * type = #display

// ── Erwartete Beeinträchtigung ──────────────────────────────────────────────
* item[+]
  * linkId = "EXPECT_02"
  * text = "Wie sehr erwarten Sie in 6 Monaten durch Körperbeschwerden beeinträchtigt zu sein?"
  * type = #integer
  * extension[+].url = "http://hl7.org/fhir/StructureDefinition/minValue"
  * extension[=].valueInteger = 0
  * extension[+].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
  * extension[=].valueInteger = 10
  * extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-sliderStepValue"
  * extension[=].valueInteger = 1
  * extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
  * extension[=].valueCodeableConcept = $questionnaire-item-control#slider "Slider"
  * item[+]
    * linkId = "EXPECT_02-anchors"
    * text = "0 = überhaupt nicht, 10 = extrem beeinträchtigt"
    * type = #display

// ── Erwartete Bewältigung (umgekehrt gepolt) ────────────────────────────────
* item[+]
  * linkId = "EXPECT_03"
  * text = "Wie gut erwarten Sie, in 6 Monaten mit möglichen Körperbeschwerden umgehen zu können?"
  * type = #integer
  * extension[+].url = "http://hl7.org/fhir/StructureDefinition/minValue"
  * extension[=].valueInteger = 0
  * extension[+].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
  * extension[=].valueInteger = 10
  * extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-sliderStepValue"
  * extension[=].valueInteger = 1
  * extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
  * extension[=].valueCodeableConcept = $questionnaire-item-control#slider "Slider"
  * item[+]
    * linkId = "EXPECT_03-anchors"
    * text = "0 = überhaupt nicht gut, 10 = bester vorstellbarer Umgang"
    * type = #display
