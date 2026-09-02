// ─────────────────────────────────────────────────────────────────────────────
// WAI — Work Ability Index / Work Ability Score (3-Item-Kurzfassung)
// Quelle: PCOR Item Level Dictionary (Kategorie PSS), Items WAI01 / WAI02a / WAI02b.
// Originalinstrument: Work Ability Index (WAI), Finnish Institute of Occupational
// Health (Tuomi K, Ilmarinen J, Jahkola A, Katajarinne L, Tulkki A. Work Ability
// Index. 2nd ed. Helsinki: FIOH, 1998). Die hier abgebildeten 3 Items entsprechen
// der Kurzfassung, die üblicherweise als "Work Ability Score" bezeichnet wird
// (Item 1 der WAI-Vollversion, ergänzt um zwei weitere Anforderungs-Items).
//
// ⚠️ METADATA-ONLY — die DIZ-Implementierungsliste PCOR-MII vermerkt für WAI:
// "wahrscheinlich nicht für die Veröffentlichung". Die Publikationsrechte am
// Originalwortlaut sind ungeklärt. Diese Instanz bildet daher bewusst NUR
// Struktur und Metadaten ab:
//   - Item-Texte sind NEUTRALE, selbst formulierte Kurzbeschreibungen dessen,
//     was erfragt wird — KEIN Originalwortlaut der WAI-Fragen.
//   - Antwortkonzepte (WAI02a/WAI02b) sind neutral benannt ("Stufe 1" … "Stufe 5")
//     statt der Original-Bezeichnungen der Antwortstufen.
//   - Struktur, linkIds, Wertebereiche (0-10 bzw. 1-5) und technische Metadaten
//     sind lizenzfrei und daher vollständig angelegt.
// Siehe `* copyright` auf der Instance unten für den vollständigen Hinweis. Die
// vollständige, wortgleiche Originalversion des WAI/Work Ability Score darf nur
// über die berechtigte Bezugsquelle bezogen und genutzt werden.
//
// Terminologie-Recherche (mcp__fhir-terminology__search_codes, Stand 2026-09-01):
//   - LOINC: keine Item- oder Panel-Codes für WAI / Work Ability Score gefunden
//     (Suchen nach "work ability index", "work ability score" u.ä. liefern nur
//     thematisch unpassende Treffer).
//   - SNOMED CT führt zwei passende Konzepte:
//       446174004 |Assessment using work ability index (procedure)| — für das
//         Instrument/Assessment selbst (verwendet auf Questionnaire.code unten).
//       446059004 |Work ability index score (observable entity)| — für einen
//         Summenscore; wird hier NICHT vergeben, da unklar ist, ob dieses
//         Konzept den 7-Item-WAI-Summenscore oder die 3-Item-Kurzfassung meint
//         (offene Frage, siehe Rückgabe an Orchestrator).
//   Keine Lizenzaussage zu SNOMED CT/LOINC selbst wird hier getroffen — nur das
//   Rechercheergebnis (welche Codes existieren) wird dokumentiert.
// ─────────────────────────────────────────────────────────────────────────────

CodeSystem: WaiSkala5CS
Id: wai-skala-5
Title: "WAI Antwortskala 5-stufig (Codes)"
Description: "Neutral benannte 5-stufige Antwortskala für WAI02a/WAI02b (Selbsteinschätzung der Arbeitsfähigkeit bzgl. körperlicher/psychischer Arbeitsanforderungen). METADATA-ONLY: Konzeptbezeichnungen sind bewusst neutral (Stufe 1-5) statt der Original-Itembezeichnungen, da die Publikationsrechte am WAI ungeklärt sind. Stufe 5 = bester Wert, Stufe 1 = schlechtester Wert. ordinalValue-Property je Konzept ermöglicht Scoring."
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* ^property[+].code = #ordinalValue
* ^property[=].uri = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* ^property[=].description = "Numerischer Ordinalwert (1-5); 5 = bester Wert."
* ^property[=].type = #decimal
* #stufe-1 "Stufe 1"
  * ^property[+].code = #ordinalValue
  * ^property[=].valueDecimal = 1
* #stufe-2 "Stufe 2"
  * ^property[+].code = #ordinalValue
  * ^property[=].valueDecimal = 2
* #stufe-3 "Stufe 3"
  * ^property[+].code = #ordinalValue
  * ^property[=].valueDecimal = 3
* #stufe-4 "Stufe 4"
  * ^property[+].code = #ordinalValue
  * ^property[=].valueDecimal = 4
* #stufe-5 "Stufe 5"
  * ^property[+].code = #ordinalValue
  * ^property[=].valueDecimal = 5

ValueSet: WaiSkala5VS
Id: wai-skala-5-vs
Title: "WAI Antwortskala 5-stufig"
Description: "Neutral benannte 5-stufige Antwortskala für WAI02a/WAI02b. Stufe 5 = bester Wert, Stufe 1 = schlechtester Wert. Metadata-only, siehe WaiSkala5CS."
* ^status = #draft
* ^experimental = true
* include codes from system WaiSkala5CS
* ^expansion.timestamp = "2026-09-01T00:00:00Z"
* ^expansion.parameter[0].name = "used-codesystem"
* ^expansion.parameter[0].valueUri = "https://bih-cei.github.io/PCOR-MII/CodeSystem/wai-skala-5|0.1.0"
* ^expansion.contains[0].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/wai-skala-5"
* ^expansion.contains[=].code = #stufe-1
* ^expansion.contains[=].display = "Stufe 1"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/wai-skala-5"
* ^expansion.contains[=].code = #stufe-2
* ^expansion.contains[=].display = "Stufe 2"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/wai-skala-5"
* ^expansion.contains[=].code = #stufe-3
* ^expansion.contains[=].display = "Stufe 3"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/wai-skala-5"
* ^expansion.contains[=].code = #stufe-4
* ^expansion.contains[=].display = "Stufe 4"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/wai-skala-5"
* ^expansion.contains[=].code = #stufe-5
* ^expansion.contains[=].display = "Stufe 5"

// ─────────────────────────────────────────────────────────────────────────────
// WAI — Work Ability Index / Work Ability Score (3-Item-Kurzfassung, Metadata-only)
// ─────────────────────────────────────────────────────────────────────────────

Instance: WAI
InstanceOf: Questionnaire
Usage: #definition
Title: "WAI — Work Ability Index / Work Ability Score (3-Item-Kurzfassung, Metadata-only)"
Description: "Work Ability Index / Work Ability Score, 3-Item-Kurzfassung (Kategorie PSS im PCOR-Item-Dictionary). METADATA-ONLY: Item-Texte und Antwortstufen sind neutral umschrieben, da die Publikationsrechte am Originalwortlaut ungeklärt sind (DIZ-Implementierungsliste PCOR-MII: 'wahrscheinlich nicht für die Veröffentlichung'). Struktur, linkIds und Wertebereiche entsprechen dem Original."
* meta.profile = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire"
* url = "https://bih-cei.github.io/PCOR-MII/Questionnaire/WAI"
* name = "WAI"
* version = "0.1.0"
* status = #draft
* experimental = true
* subjectType = #Patient
* date = "2026-09-01"
* publisher = "BIH-CEI"
* code = $SCT#446174004 "Assessment using work ability index"
* copyright = "METADATA-ONLY: Diese Instanz bildet ausschließlich Struktur, linkIds, Wertebereiche und technische Metadaten des Work Ability Index (WAI) / Work Ability Score (3-Item-Kurzfassung) ab. Item-Texte und Antwortstufen-Bezeichnungen sind NICHT der Originalwortlaut, sondern neutrale, selbst formulierte Kurzbeschreibungen bzw. neutrale Codes (Stufe 1-5) — die Publikationsrechte am WAI sind ungeklärt (DIZ-Implementierungsliste PCOR-MII: 'wahrscheinlich nicht für die Veröffentlichung'). Rechteinhaber des Originalinstruments ist das Finnish Institute of Occupational Health (FIOH; Tuomi et al. 1998). Die vollständige, wortgleiche Originalversion des WAI/Work Ability Score darf ausschließlich über die berechtigte Bezugsquelle (FIOH bzw. deren lizenzierte Vertriebspartner) bezogen und genutzt werden."

* item[+]
  * linkId = "wai"
  * text = "Selbsteinschätzung der aktuellen Arbeitsfähigkeit (WAI-Kurzfassung / Work Ability Score)"
  * type = #group
  * item[+]
    * linkId = "WAI01"
    * text = "Selbsteinschätzung der derzeitigen Arbeitsfähigkeit im Vergleich zur besten je erreichten Arbeitsfähigkeit, Skala 0-10 (0 = keine Arbeitsfähigkeit, 10 = beste je erreichte Arbeitsfähigkeit)."
    * type = #integer
    * extension[+].url = "http://hl7.org/fhir/StructureDefinition/minValue"
    * extension[=].valueInteger = 0
    * extension[+].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
    * extension[=].valueInteger = 10
    * extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-sliderStepValue"
    * extension[=].valueInteger = 1
  * item[+]
    * linkId = "WAI02a"
    * text = "Selbsteinschätzung der derzeitigen Arbeitsfähigkeit in Bezug auf die körperlichen Anforderungen der Arbeitstätigkeit, 5-stufig (Stufe 1 = schlechtester Wert, Stufe 5 = bester Wert)."
    * type = #choice
    * answerValueSet = Canonical(WaiSkala5VS)
  * item[+]
    * linkId = "WAI02b"
    * text = "Selbsteinschätzung der derzeitigen Arbeitsfähigkeit in Bezug auf die psychischen Anforderungen der Arbeitstätigkeit, 5-stufig (Stufe 1 = schlechtester Wert, Stufe 5 = bester Wert)."
    * type = #choice
    * answerValueSet = Canonical(WaiSkala5VS)
