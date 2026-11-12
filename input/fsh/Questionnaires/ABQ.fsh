// ─────────────────────────────────────────────────────────────────────────────
// ABQ — Adherence Barriers Questionnaire (Entität NTx)
// Quelle: PCOR Item Level Dictionary, Blatt NTx (Kategorie TCH), Variablen ABQ_01 … ABQ_16.
// Originalinstrument: Müller S, Kohlmann T, Wilke T. Adherence Barriers Questionnaire (ABQ), 2015.
//
// ⚠️ METADATA-ONLY. Eine Veröffentlichung der konkreten Items einschließlich Antwort-
//    möglichkeiten ist nicht erlaubt; wissenschaftliche Nutzung ohne Pharma-Beteiligung ist
//    kostenfrei, jedes Zentrum benötigt eine eigene Lizenzvereinbarung. Der Bezugsweg ist
//    zu klären. Diese Instanz bildet daher NUR Struktur, linkIds, Typen und Wertebereiche ab:
//      - Item-Texte sind NEUTRALE Labels ("Erfasst: …"), KEIN Originalwortlaut.
//      - Antworten heißen neutral "Stufe 1" … "Stufe 4" (itemWeight 1-4).
//    Muster: WAI.fsh und UKHD-EDP.fsh im selben Verzeichnis. Die wortgleiche Vollversion
//    kommt nie in dieses Package.
//
// STRUKTUR: 16 Items (ABQ_01 … ABQ_16), 4-stufige Antwortskala (AbqSkala4VS).
//
// CROSS-QUESTIONNAIRE-BEDINGUNG (nur dokumentiert, NICHT als enableWhen modelliert): Laut
//   Dictionary wird der ABQ nur erhoben, wenn BAASIS1A = ja ODER BAASIS2 = ja ODER
//   BAASIS3 = ja ODER BAASIS4 = ja. Für ABQ_01 nennt das Dictionary nur BAASIS1A = ja;
//   vermutlich eine Inkonsistenz, zu klären. Die Steuerung liegt im aufrufenden Prozess.
//
// SCORING: Summe der 16 Items (itemWeight 1-4), Bereich 16-64, als SDC calculatedExpression
//   über .weight().sum() (Muster OPD-SFK.fsh). Höhere Werte = mehr Adhärenzbarrieren (laut
//   Auftrag). OFFEN: Die Polung ist NICHT gegen das Originalinstrument verifiziert — das
//   Dictionary führt die volle Zustimmung als Stufe 1, und ob itemWeight 1-4 in Reihenfolge der Stufen
//   die Barrierenstärke abbildet, ist vor produktiver Nutzung zu prüfen. Keine Cut-offs.
//
// Terminologie-Recherche: nicht durchgeführt — Terminologie-MCP in der Session nicht
//   verfügbar. Keine LOINC-/SNOMED-Instrumentencodes verifiziert; Questionnaire.code trägt
//   nur den PCOR-Katalogcode.
// ─────────────────────────────────────────────────────────────────────────────

CodeSystem: AbqSkala4CS
Id: abq-skala-4
Title: "ABQ Antwortskala 4-stufig (Codes)"
Description: "Neutral benannte 4-stufige Antwortskala des ABQ (Stufe 1 bis Stufe 4). METADATA-ONLY: Die Originalbezeichnungen der Antwortstufen dürfen nicht veröffentlicht werden. Polung (welche Stufe die höchste Barriere abbildet) nicht gegen das Original verifiziert. itemWeight-Property je Konzept (1-4) ermöglicht Scoring bzw. spätere Auswertung."
* ^url = "https://bih-cei.github.io/PCOR-MII/CodeSystem/abq-skala-4"
* insert PR_CS_VS_Version
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* ^content = #complete
* ^property[+].code = #itemWeight
* ^property[=].uri = "http://hl7.org/fhir/concept-properties#itemWeight"
* ^property[=].description = "Numerischer Ordinalwert (1-4); Polung nicht gegen das Originalinstrument verifiziert."
* ^property[=].type = #decimal
* #stufe-1 "Stufe 1"
  * ^property[+].code = #itemWeight
  * ^property[=].valueDecimal = 1
* #stufe-2 "Stufe 2"
  * ^property[+].code = #itemWeight
  * ^property[=].valueDecimal = 2
* #stufe-3 "Stufe 3"
  * ^property[+].code = #itemWeight
  * ^property[=].valueDecimal = 3
* #stufe-4 "Stufe 4"
  * ^property[+].code = #itemWeight
  * ^property[=].valueDecimal = 4

ValueSet: AbqSkala4VS
Id: abq-skala-4-vs
Title: "ABQ Antwortskala 4-stufig"
Description: "Neutral benannte 4-stufige Antwortskala des ABQ (Stufe 1 bis Stufe 4). METADATA-ONLY: Die Originalbezeichnungen der Antwortstufen dürfen nicht veröffentlicht werden. Polung (welche Stufe die höchste Barriere abbildet) nicht gegen das Original verifiziert. Metadata-only, siehe AbqSkala4CS."
* ^url = "https://bih-cei.github.io/PCOR-MII/ValueSet/abq-skala-4-vs"
* insert PR_CS_VS_Version
* ^status = #draft
* ^experimental = true
* include codes from system AbqSkala4CS
* ^expansion.timestamp = "2026-11-05T00:00:00Z"
* ^expansion.parameter[0].name = "used-codesystem"
* ^expansion.parameter[0].valueUri = "https://bih-cei.github.io/PCOR-MII/CodeSystem/abq-skala-4|0.9.0"
* ^expansion.contains[0].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/abq-skala-4"
* ^expansion.contains[=].code = #stufe-1
* ^expansion.contains[=].display = "Stufe 1"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/abq-skala-4"
* ^expansion.contains[=].code = #stufe-2
* ^expansion.contains[=].display = "Stufe 2"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/abq-skala-4"
* ^expansion.contains[=].code = #stufe-3
* ^expansion.contains[=].display = "Stufe 3"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/abq-skala-4"
* ^expansion.contains[=].code = #stufe-4
* ^expansion.contains[=].display = "Stufe 4"

// ─────────────────────────────────────────────────────────────────────────────
// ABQ — Questionnaire (metadata-only)
// ─────────────────────────────────────────────────────────────────────────────

Instance: ABQ
InstanceOf: Questionnaire
Usage: #definition
Title: "ABQ — Adherence Barriers Questionnaire (NTx, metadata-only)"
Description: "Adherence Barriers Questionnaire, 16 Items aus dem NTx-Dictionary (Kategorie TCH). **Metadata-only:** Struktur, `linkId`s, Typen und Wertebereiche sind abgebildet, Itemwortlaut und Antwortbezeichnungen bewusst nicht. Summenscore 16-64 über `itemWeight`; die Polung ist nicht gegen das Original verifiziert. Wird nur bei Hinweis auf Nonadhärenz im BAASIS erhoben."
// Selbstauskunfts-PRO -> MII-PRO-Profil (nicht ISiKFormularDefinition, die nur für Nicht-PRO-Bögen gilt).
* meta.profile = $mii-pro-questionnaire
* url = "https://bih-cei.github.io/PCOR-MII/Questionnaire/ABQ"
* name = "ABQ"
* language = #de-DE
* insert Version
* code[+] = PcorQuestionnaireCatalogueCS#abq "ABQ"
* status = #draft
* experimental = true
* subjectType = #Patient
* date = "2026-11-05"
* publisher = "BIH-CEI"
* copyright = "METADATA-ONLY: ABQ © Müller S, Kohlmann T, Wilke T (2015), Adherence Barriers Questionnaire. Diese Instanz bildet ausschließlich Struktur, linkIds, Typen und Wertebereiche ab. Item-Texte sind neutrale, selbst formulierte Labels, die Antwortstufen sind neutral benannt (Stufe 1-4). Eine Veröffentlichung der konkreten Items einschließlich Antwortmöglichkeiten ist nicht erlaubt; wissenschaftliche Nutzung ohne Pharma-Beteiligung ist kostenfrei; jedes Zentrum benötigt eine eigene Lizenzvereinbarung. Bezugsweg: zu klären. Nur der PCOR-MII-eigene FHIR-Inhalt unterliegt der Repository-Lizenz (CC-BY-4.0)."
// Vom MII-PRO-Profil gefordert: capabilities-Extension (1..1). calculatable = true, weil das
// Summenscore-Item unten per calculatedExpression über .weight().sum() berechnet wird.
* extension[+].url = $mii-pro-capabilities
* extension[=].extension[+].url = "displayable"
* extension[=].extension[=].valueBoolean = false
* extension[=].extension[+].url = "collectable"
* extension[=].extension[=].valueBoolean = false
* extension[=].extension[+].url = "calculatable"
* extension[=].extension[=].valueBoolean = true
* extension[=].extension[+].url = "extractable"
* extension[=].extension[=].valueBoolean = false
* extension[=].extension[+].url = "domainAligned"
* extension[=].extension[=].valueBoolean = false
// Designentscheidungen maschinenlesbar
* extension[+].url = $designNote
* extension[=].valueMarkdown = "**Designentscheidungen:** (1) **Metadata-only** nach dem Muster des [WAI](WAI.html): Struktur, `linkId`s, Typen und Wertebereiche sind abgebildet; Item-Texte sind neutrale Labels, Antwortstufen neutral benannt (Veröffentlichung der Items nicht erlaubt, jedes Zentrum braucht eine eigene Lizenzvereinbarung, Bezugsweg zu klären). (2) **Summenscore 16-64** über `itemWeight` 1-4 und `.weight().sum()` (Muster OPD-SFK); höhere Werte bedeuten mehr Adhärenzbarrieren. **Offen:** Die Polung ist nicht gegen das Originalinstrument verifiziert; keine Cut-offs. (3) **Cross-Questionnaire-Bedingung:** Der ABQ wird nur erhoben, wenn BAASIS1A, BAASIS2, BAASIS3 oder BAASIS4 = ja; nur dokumentiert, nicht als `enableWhen` modelliert. Für ABQ_01 nennt das Dictionary nur BAASIS1A, vermutlich eine Inkonsistenz. (4) **Keine Instrumenten-Codes verifiziert** (Terminologie-Recherche nicht durchgeführt). Details: <https://bih-cei.github.io/PCOR-MII/Designentscheidungen.html>"
// FHIR variable: Summe der 16 Item-Antworten (itemWeight 1-4), Bereich 16-64.
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "abqSumme"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "%resource.item.where(linkId.matches('^ABQ_(0[1-9]|1[0-6])$')).answer.value.weight().sum()"

* item[+]
  * linkId = "ABQ_01"
  * code[+] = PcorItemDictionaryCS#ABQ_01
  * text = "Erfasst: Barriere der Medikamenteneinnahme, Item 01 (4 Stufen)."
  * type = #choice
  * answerValueSet = Canonical(AbqSkala4VS)

* item[+]
  * linkId = "ABQ_02"
  * code[+] = PcorItemDictionaryCS#ABQ_02
  * text = "Erfasst: Barriere der Medikamenteneinnahme, Item 02 (4 Stufen)."
  * type = #choice
  * answerValueSet = Canonical(AbqSkala4VS)

* item[+]
  * linkId = "ABQ_03"
  * code[+] = PcorItemDictionaryCS#ABQ_03
  * text = "Erfasst: Barriere der Medikamenteneinnahme, Item 03 (4 Stufen)."
  * type = #choice
  * answerValueSet = Canonical(AbqSkala4VS)

* item[+]
  * linkId = "ABQ_04"
  * code[+] = PcorItemDictionaryCS#ABQ_04
  * text = "Erfasst: Barriere der Medikamenteneinnahme, Item 04 (4 Stufen)."
  * type = #choice
  * answerValueSet = Canonical(AbqSkala4VS)

* item[+]
  * linkId = "ABQ_05"
  * code[+] = PcorItemDictionaryCS#ABQ_05
  * text = "Erfasst: Barriere der Medikamenteneinnahme, Item 05 (4 Stufen)."
  * type = #choice
  * answerValueSet = Canonical(AbqSkala4VS)

* item[+]
  * linkId = "ABQ_06"
  * code[+] = PcorItemDictionaryCS#ABQ_06
  * text = "Erfasst: Barriere der Medikamenteneinnahme, Item 06 (4 Stufen)."
  * type = #choice
  * answerValueSet = Canonical(AbqSkala4VS)

* item[+]
  * linkId = "ABQ_07"
  * code[+] = PcorItemDictionaryCS#ABQ_07
  * text = "Erfasst: Barriere der Medikamenteneinnahme, Item 07 (4 Stufen)."
  * type = #choice
  * answerValueSet = Canonical(AbqSkala4VS)

* item[+]
  * linkId = "ABQ_08"
  * code[+] = PcorItemDictionaryCS#ABQ_08
  * text = "Erfasst: Barriere der Medikamenteneinnahme, Item 08 (4 Stufen)."
  * type = #choice
  * answerValueSet = Canonical(AbqSkala4VS)

* item[+]
  * linkId = "ABQ_09"
  * code[+] = PcorItemDictionaryCS#ABQ_09
  * text = "Erfasst: Barriere der Medikamenteneinnahme, Item 09 (4 Stufen)."
  * type = #choice
  * answerValueSet = Canonical(AbqSkala4VS)

* item[+]
  * linkId = "ABQ_10"
  * code[+] = PcorItemDictionaryCS#ABQ_10
  * text = "Erfasst: Barriere der Medikamenteneinnahme, Item 10 (4 Stufen)."
  * type = #choice
  * answerValueSet = Canonical(AbqSkala4VS)

* item[+]
  * linkId = "ABQ_11"
  * code[+] = PcorItemDictionaryCS#ABQ_11
  * text = "Erfasst: Barriere der Medikamenteneinnahme, Item 11 (4 Stufen)."
  * type = #choice
  * answerValueSet = Canonical(AbqSkala4VS)

* item[+]
  * linkId = "ABQ_12"
  * code[+] = PcorItemDictionaryCS#ABQ_12
  * text = "Erfasst: Barriere der Medikamenteneinnahme, Item 12 (4 Stufen)."
  * type = #choice
  * answerValueSet = Canonical(AbqSkala4VS)

* item[+]
  * linkId = "ABQ_13"
  * code[+] = PcorItemDictionaryCS#ABQ_13
  * text = "Erfasst: Barriere der Medikamenteneinnahme, Item 13 (4 Stufen)."
  * type = #choice
  * answerValueSet = Canonical(AbqSkala4VS)

* item[+]
  * linkId = "ABQ_14"
  * code[+] = PcorItemDictionaryCS#ABQ_14
  * text = "Erfasst: Barriere der Medikamenteneinnahme, Item 14 (4 Stufen)."
  * type = #choice
  * answerValueSet = Canonical(AbqSkala4VS)

* item[+]
  * linkId = "ABQ_15"
  * code[+] = PcorItemDictionaryCS#ABQ_15
  * text = "Erfasst: Barriere der Medikamenteneinnahme, Item 15 (4 Stufen)."
  * type = #choice
  * answerValueSet = Canonical(AbqSkala4VS)

* item[+]
  * linkId = "ABQ_16"
  * code[+] = PcorItemDictionaryCS#ABQ_16
  * text = "Erfasst: Barriere der Medikamenteneinnahme, Item 16 (4 Stufen)."
  * type = #choice
  * answerValueSet = Canonical(AbqSkala4VS)

// ── Summenscore ──────────────────────────────────────────────────────────────
* item[+]
  * linkId = "abq-summe"
  * text = "ABQ Summenscore (16-64, höhere Werte = mehr Adhärenzbarrieren; Polung nicht verifiziert)"
  * type = #decimal
  * readOnly = true
  * extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression"
  * extension[=].valueExpression.name = "abqSumme"
  * extension[=].valueExpression.language = #text/fhirpath
  * extension[=].valueExpression.expression = "%abqSumme"
