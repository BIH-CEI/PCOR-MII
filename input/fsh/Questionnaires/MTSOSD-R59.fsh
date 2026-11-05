// ─────────────────────────────────────────────────────────────────────────────
// MTSOSD-R59 — Symptomfragebogen zur Symptomlast (59 Symptome + 3 Freitext), Entität NTx
// GENERIERT durch scripts/generate-mtsosd-r59-stub.py — nicht von Hand ändern.
// Quelle: PCOR Item Level Dictionary, Blatt NTx (Kategorie MSE), Variablen
// MTSOSDR59_01 … MTSOSDR59_62a (126 Variablen).
//
// ⚠️ METADATA-ONLY. Rechteinhaber ist die KU Leuven (Kontakt: joke.willems@kuleuven.be).
//    Eine Veröffentlichung der konkreten Items einschließlich Antwortmöglichkeiten ist
//    nicht erlaubt; wissenschaftliche Nutzung ohne Pharma-Beteiligung ist kostenfrei, jedes
//    Zentrum benötigt eine eigene Lizenzvereinbarung. Diese Instanz bildet daher NUR
//    Struktur, linkIds, Typen, Wertebereiche und Bedingungen ab:
//      - Item-Texte sind NEUTRALE Labels ("Erfasst: …"), KEIN Originalwortlaut.
//      - Auftreten-Antworten heißen neutral "Stufe 0" … "Stufe 4" (ordinalValue 0-4).
//    Muster: WAI.fsh und UKHD-EDP.fsh im selben Verzeichnis. Die wortgleiche Vollversion
//    kommt nie in dieses Package, sondern über die berechtigte Bezugsquelle.
//
// STRUKTUR: je Symptom zwei Items — Auftreten (choice, 5 Stufen, MtsosdR59Auftreten5VS)
//   und Belastung (integer, Suffix "a"). Belastung nur anzeigen, wenn Auftreten != Stufe 0.
//   Zeitraum laut Dictionary: letzte 4 Wochen. Symptome 60-62 sind Freitext (type text);
//   ihre Belastung erscheint, sobald ein Text vorliegt (das Dictionary formuliert die
//   Bedingung dort unscharf).
//
// BEDINGUNGEN: Symptom 27 ist geschlechtsspezifisch (_male / _female). Die Steuerung über
//   das Geschlecht (Q_SEX) ist eine Cross-Questionnaire-Bedingung und hier NICHT als
//   enableWhen modelliert, sondern vom aufrufenden Prozess zu leisten.
//
// OFFEN: Die Stufenzahl der visuellen Belastungsskala ist im Dictionary NICHT dokumentiert
//   (leeres Bild-Blatt). Die Belastung ist deshalb als integer ohne min/max modelliert.
//
// SCORING: Kein Score ausgeliefert. Summen über Auftreten bzw. Belastung existieren in der
//   Literatur, ihre Definition ist hier nicht verifiziert (calculatable = false).
//
// Terminologie-Recherche: nicht durchgeführt — Terminologie-MCP in der Session nicht
//   verfügbar. Es sind keine LOINC-/SNOMED-Instrumentencodes verifiziert; Questionnaire.code
//   trägt nur den PCOR-Katalogcode.
// ─────────────────────────────────────────────────────────────────────────────

CodeSystem: MtsosdR59Auftreten5CS
Id: mtsosd-r59-auftreten-5
Title: "MTSOSD-R59 Auftreten 5-stufig (Codes)"
Description: "Neutral benannte 5-stufige Auftretensskala des MTSOSD-R59 (Stufe 0 bis Stufe 4). METADATA-ONLY: Die Originalbezeichnungen der Antwortstufen dürfen nicht veröffentlicht werden. Stufe 0 = Symptom nicht aufgetreten. ordinalValue-Property je Konzept (0-4) ermöglicht eine spätere Auswertung."
* ^url = "https://bih-cei.github.io/PCOR-MII/CodeSystem/mtsosd-r59-auftreten-5"
* insert PR_CS_VS_Version
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* ^content = #complete
* ^property[+].code = #ordinalValue
* ^property[=].uri = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* ^property[=].description = "Numerischer Ordinalwert (0-4); 0 = Symptom nicht aufgetreten."
* ^property[=].type = #decimal
* #stufe-0 "Stufe 0"
  * ^property[+].code = #ordinalValue
  * ^property[=].valueDecimal = 0
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

ValueSet: MtsosdR59Auftreten5VS
Id: mtsosd-r59-auftreten-5-vs
Title: "MTSOSD-R59 Auftreten 5-stufig"
Description: "Neutral benannte 5-stufige Auftretensskala des MTSOSD-R59 (Stufe 0 bis Stufe 4). Metadata-only, siehe MtsosdR59Auftreten5CS."
* ^url = "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-auftreten-5-vs"
* insert PR_CS_VS_Version
* ^status = #draft
* ^experimental = true
* include codes from system MtsosdR59Auftreten5CS
* ^expansion.timestamp = "2026-11-05T00:00:00Z"
* ^expansion.parameter[0].name = "used-codesystem"
* ^expansion.parameter[0].valueUri = "https://bih-cei.github.io/PCOR-MII/CodeSystem/mtsosd-r59-auftreten-5|0.3.0"
* ^expansion.contains[0].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/mtsosd-r59-auftreten-5"
* ^expansion.contains[=].code = #stufe-0
* ^expansion.contains[=].display = "Stufe 0"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/mtsosd-r59-auftreten-5"
* ^expansion.contains[=].code = #stufe-1
* ^expansion.contains[=].display = "Stufe 1"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/mtsosd-r59-auftreten-5"
* ^expansion.contains[=].code = #stufe-2
* ^expansion.contains[=].display = "Stufe 2"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/mtsosd-r59-auftreten-5"
* ^expansion.contains[=].code = #stufe-3
* ^expansion.contains[=].display = "Stufe 3"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/mtsosd-r59-auftreten-5"
* ^expansion.contains[=].code = #stufe-4
* ^expansion.contains[=].display = "Stufe 4"

// ─────────────────────────────────────────────────────────────────────────────
// MTSOSD-R59 — Questionnaire (metadata-only)
// ─────────────────────────────────────────────────────────────────────────────

Instance: MTSOSDR59
InstanceOf: Questionnaire
Usage: #definition
Title: "MTSOSD-R59 — Symptomlast, 59 Symptome und 3 Freitext (NTx, metadata-only)"
Description: "Symptomfragebogen mit 59 Symptomen und 3 Freitext-Symptomen aus dem NTx-Dictionary (Kategorie MSE). **Metadata-only:** Struktur, `linkId`s, Typen, Wertebereiche und Bedingungen sind abgebildet, Itemwortlaut und Antwortbezeichnungen bewusst nicht (Rechteinhaber KU Leuven). Je Symptom Auftreten (5 Stufen) und Belastung. Kein Score."
// Selbstauskunfts-PRO -> MII-PRO-Profil (nicht ISiKFormularDefinition, die nur für Nicht-PRO-Bögen gilt).
* meta.profile = $mii-pro-questionnaire
* url = "https://bih-cei.github.io/PCOR-MII/Questionnaire/MTSOSDR59"
* name = "MTSOSDR59"
* language = #de
* insert Version
* code[+] = PcorQuestionnaireCatalogueCS#mtsosd-r59 "MTSOSD-R59"
* status = #draft
* experimental = true
* subjectType = #Patient
* date = "2026-11-05"
* publisher = "BIH-CEI"
* copyright = "METADATA-ONLY: MTSOSD-R59 © KU Leuven. Diese Instanz bildet ausschließlich Struktur, linkIds, Typen, Wertebereiche und Bedingungen ab. Item-Texte sind neutrale, selbst formulierte Labels, die Antwortstufen sind neutral benannt (Stufe 0-4). Eine Veröffentlichung der konkreten Items einschließlich Antwortmöglichkeiten ist nicht erlaubt; wissenschaftliche Nutzung ohne Pharma-Beteiligung ist kostenfrei; jedes Zentrum benötigt eine eigene Lizenzvereinbarung. Bezug: Kontakt joke.willems@kuleuven.be. Nur der PCOR-MII-eigene FHIR-Inhalt unterliegt der Repository-Lizenz (CC-BY-4.0)."
// Vom MII-PRO-Profil gefordert: capabilities-Extension (1..1). Metadata-only -> nichts davon nutzbar.
* extension[+].url = $mii-pro-capabilities
* extension[=].extension[+].url = "displayable"
* extension[=].extension[=].valueBoolean = false
* extension[=].extension[+].url = "collectable"
* extension[=].extension[=].valueBoolean = false
* extension[=].extension[+].url = "calculatable"
* extension[=].extension[=].valueBoolean = false
* extension[=].extension[+].url = "extractable"
* extension[=].extension[=].valueBoolean = false
* extension[=].extension[+].url = "domainAligned"
* extension[=].extension[=].valueBoolean = false
// Designentscheidungen maschinenlesbar
* extension[+].url = $designNote
* extension[=].valueMarkdown = "**Designentscheidungen:** (1) **Metadata-only** nach dem Muster des [WAI](WAI.html): Struktur, `linkId`s, Typen, Wertebereiche und Bedingungen sind abgebildet; Item-Texte sind neutrale Labels, Antwortstufen neutral benannt (Rechteinhaber KU Leuven, Veröffentlichung der Items nicht erlaubt, jedes Zentrum braucht eine eigene Lizenzvereinbarung). (2) **Kein Score:** Summen über Auftreten oder Belastung sind nicht verifiziert; `ordinalValue` 0-4 ist gesetzt, damit eine spätere Auswertung möglich bleibt. (3) **Belastung** (Suffix `a`) erscheint nur bei Auftreten ungleich Stufe 0, bei Freitext sobald ein Text vorliegt; die Stufenzahl der visuellen Skala ist im Dictionary nicht dokumentiert und daher nicht begrenzt. (4) **Symptom 27** ist geschlechtsspezifisch; die Steuerung über Q_SEX ist eine Cross-Questionnaire-Bedingung und nicht als `enableWhen` modelliert. (5) **Keine Instrumenten-Codes verifiziert** (Terminologie-Recherche nicht durchgeführt). Details: <https://bih-cei.github.io/PCOR-MII/Designentscheidungen.html>"

* item[+]
  * linkId = "MTSOSDR59_01"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_01
  * text = "Erfasst: Auftreten von Symptom 01 (5 Stufen, Zeitraum 4 Wochen)."
  * type = #choice
  * answerValueSet = Canonical(MtsosdR59Auftreten5VS)
* item[+]
  * linkId = "MTSOSDR59_01a"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_01a
  * text = "Erfasst: Belastung durch Symptom 01."
  * type = #integer
  // Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert -> kein min/max
  * enableWhen[+]
    * question = "MTSOSDR59_01"
    * operator = #!=
    * answerCoding = MtsosdR59Auftreten5CS#stufe-0

* item[+]
  * linkId = "MTSOSDR59_02"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_02
  * text = "Erfasst: Auftreten von Symptom 02 (5 Stufen, Zeitraum 4 Wochen)."
  * type = #choice
  * answerValueSet = Canonical(MtsosdR59Auftreten5VS)
* item[+]
  * linkId = "MTSOSDR59_02a"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_02a
  * text = "Erfasst: Belastung durch Symptom 02."
  * type = #integer
  // Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert -> kein min/max
  * enableWhen[+]
    * question = "MTSOSDR59_02"
    * operator = #!=
    * answerCoding = MtsosdR59Auftreten5CS#stufe-0

* item[+]
  * linkId = "MTSOSDR59_03"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_03
  * text = "Erfasst: Auftreten von Symptom 03 (5 Stufen, Zeitraum 4 Wochen)."
  * type = #choice
  * answerValueSet = Canonical(MtsosdR59Auftreten5VS)
* item[+]
  * linkId = "MTSOSDR59_03a"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_03a
  * text = "Erfasst: Belastung durch Symptom 03."
  * type = #integer
  // Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert -> kein min/max
  * enableWhen[+]
    * question = "MTSOSDR59_03"
    * operator = #!=
    * answerCoding = MtsosdR59Auftreten5CS#stufe-0

* item[+]
  * linkId = "MTSOSDR59_04"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_04
  * text = "Erfasst: Auftreten von Symptom 04 (5 Stufen, Zeitraum 4 Wochen)."
  * type = #choice
  * answerValueSet = Canonical(MtsosdR59Auftreten5VS)
* item[+]
  * linkId = "MTSOSDR59_04a"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_04a
  * text = "Erfasst: Belastung durch Symptom 04."
  * type = #integer
  // Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert -> kein min/max
  * enableWhen[+]
    * question = "MTSOSDR59_04"
    * operator = #!=
    * answerCoding = MtsosdR59Auftreten5CS#stufe-0

* item[+]
  * linkId = "MTSOSDR59_05"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_05
  * text = "Erfasst: Auftreten von Symptom 05 (5 Stufen, Zeitraum 4 Wochen)."
  * type = #choice
  * answerValueSet = Canonical(MtsosdR59Auftreten5VS)
* item[+]
  * linkId = "MTSOSDR59_05a"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_05a
  * text = "Erfasst: Belastung durch Symptom 05."
  * type = #integer
  // Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert -> kein min/max
  * enableWhen[+]
    * question = "MTSOSDR59_05"
    * operator = #!=
    * answerCoding = MtsosdR59Auftreten5CS#stufe-0

* item[+]
  * linkId = "MTSOSDR59_06"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_06
  * text = "Erfasst: Auftreten von Symptom 06 (5 Stufen, Zeitraum 4 Wochen)."
  * type = #choice
  * answerValueSet = Canonical(MtsosdR59Auftreten5VS)
* item[+]
  * linkId = "MTSOSDR59_06a"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_06a
  * text = "Erfasst: Belastung durch Symptom 06."
  * type = #integer
  // Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert -> kein min/max
  * enableWhen[+]
    * question = "MTSOSDR59_06"
    * operator = #!=
    * answerCoding = MtsosdR59Auftreten5CS#stufe-0

* item[+]
  * linkId = "MTSOSDR59_07"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_07
  * text = "Erfasst: Auftreten von Symptom 07 (5 Stufen, Zeitraum 4 Wochen)."
  * type = #choice
  * answerValueSet = Canonical(MtsosdR59Auftreten5VS)
* item[+]
  * linkId = "MTSOSDR59_07a"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_07a
  * text = "Erfasst: Belastung durch Symptom 07."
  * type = #integer
  // Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert -> kein min/max
  * enableWhen[+]
    * question = "MTSOSDR59_07"
    * operator = #!=
    * answerCoding = MtsosdR59Auftreten5CS#stufe-0

* item[+]
  * linkId = "MTSOSDR59_08"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_08
  * text = "Erfasst: Auftreten von Symptom 08 (5 Stufen, Zeitraum 4 Wochen)."
  * type = #choice
  * answerValueSet = Canonical(MtsosdR59Auftreten5VS)
* item[+]
  * linkId = "MTSOSDR59_08a"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_08a
  * text = "Erfasst: Belastung durch Symptom 08."
  * type = #integer
  // Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert -> kein min/max
  * enableWhen[+]
    * question = "MTSOSDR59_08"
    * operator = #!=
    * answerCoding = MtsosdR59Auftreten5CS#stufe-0

* item[+]
  * linkId = "MTSOSDR59_09"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_09
  * text = "Erfasst: Auftreten von Symptom 09 (5 Stufen, Zeitraum 4 Wochen)."
  * type = #choice
  * answerValueSet = Canonical(MtsosdR59Auftreten5VS)
* item[+]
  * linkId = "MTSOSDR59_09a"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_09a
  * text = "Erfasst: Belastung durch Symptom 09."
  * type = #integer
  // Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert -> kein min/max
  * enableWhen[+]
    * question = "MTSOSDR59_09"
    * operator = #!=
    * answerCoding = MtsosdR59Auftreten5CS#stufe-0

* item[+]
  * linkId = "MTSOSDR59_10"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_10
  * text = "Erfasst: Auftreten von Symptom 10 (5 Stufen, Zeitraum 4 Wochen)."
  * type = #choice
  * answerValueSet = Canonical(MtsosdR59Auftreten5VS)
* item[+]
  * linkId = "MTSOSDR59_10a"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_10a
  * text = "Erfasst: Belastung durch Symptom 10."
  * type = #integer
  // Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert -> kein min/max
  * enableWhen[+]
    * question = "MTSOSDR59_10"
    * operator = #!=
    * answerCoding = MtsosdR59Auftreten5CS#stufe-0

* item[+]
  * linkId = "MTSOSDR59_11"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_11
  * text = "Erfasst: Auftreten von Symptom 11 (5 Stufen, Zeitraum 4 Wochen)."
  * type = #choice
  * answerValueSet = Canonical(MtsosdR59Auftreten5VS)
* item[+]
  * linkId = "MTSOSDR59_11a"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_11a
  * text = "Erfasst: Belastung durch Symptom 11."
  * type = #integer
  // Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert -> kein min/max
  * enableWhen[+]
    * question = "MTSOSDR59_11"
    * operator = #!=
    * answerCoding = MtsosdR59Auftreten5CS#stufe-0

* item[+]
  * linkId = "MTSOSDR59_12"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_12
  * text = "Erfasst: Auftreten von Symptom 12 (5 Stufen, Zeitraum 4 Wochen)."
  * type = #choice
  * answerValueSet = Canonical(MtsosdR59Auftreten5VS)
* item[+]
  * linkId = "MTSOSDR59_12a"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_12a
  * text = "Erfasst: Belastung durch Symptom 12."
  * type = #integer
  // Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert -> kein min/max
  * enableWhen[+]
    * question = "MTSOSDR59_12"
    * operator = #!=
    * answerCoding = MtsosdR59Auftreten5CS#stufe-0

* item[+]
  * linkId = "MTSOSDR59_13"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_13
  * text = "Erfasst: Auftreten von Symptom 13 (5 Stufen, Zeitraum 4 Wochen)."
  * type = #choice
  * answerValueSet = Canonical(MtsosdR59Auftreten5VS)
* item[+]
  * linkId = "MTSOSDR59_13a"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_13a
  * text = "Erfasst: Belastung durch Symptom 13."
  * type = #integer
  // Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert -> kein min/max
  * enableWhen[+]
    * question = "MTSOSDR59_13"
    * operator = #!=
    * answerCoding = MtsosdR59Auftreten5CS#stufe-0

* item[+]
  * linkId = "MTSOSDR59_14"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_14
  * text = "Erfasst: Auftreten von Symptom 14 (5 Stufen, Zeitraum 4 Wochen)."
  * type = #choice
  * answerValueSet = Canonical(MtsosdR59Auftreten5VS)
* item[+]
  * linkId = "MTSOSDR59_14a"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_14a
  * text = "Erfasst: Belastung durch Symptom 14."
  * type = #integer
  // Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert -> kein min/max
  * enableWhen[+]
    * question = "MTSOSDR59_14"
    * operator = #!=
    * answerCoding = MtsosdR59Auftreten5CS#stufe-0

* item[+]
  * linkId = "MTSOSDR59_15"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_15
  * text = "Erfasst: Auftreten von Symptom 15 (5 Stufen, Zeitraum 4 Wochen)."
  * type = #choice
  * answerValueSet = Canonical(MtsosdR59Auftreten5VS)
* item[+]
  * linkId = "MTSOSDR59_15a"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_15a
  * text = "Erfasst: Belastung durch Symptom 15."
  * type = #integer
  // Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert -> kein min/max
  * enableWhen[+]
    * question = "MTSOSDR59_15"
    * operator = #!=
    * answerCoding = MtsosdR59Auftreten5CS#stufe-0

* item[+]
  * linkId = "MTSOSDR59_16"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_16
  * text = "Erfasst: Auftreten von Symptom 16 (5 Stufen, Zeitraum 4 Wochen)."
  * type = #choice
  * answerValueSet = Canonical(MtsosdR59Auftreten5VS)
* item[+]
  * linkId = "MTSOSDR59_16a"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_16a
  * text = "Erfasst: Belastung durch Symptom 16."
  * type = #integer
  // Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert -> kein min/max
  * enableWhen[+]
    * question = "MTSOSDR59_16"
    * operator = #!=
    * answerCoding = MtsosdR59Auftreten5CS#stufe-0

* item[+]
  * linkId = "MTSOSDR59_17"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_17
  * text = "Erfasst: Auftreten von Symptom 17 (5 Stufen, Zeitraum 4 Wochen)."
  * type = #choice
  * answerValueSet = Canonical(MtsosdR59Auftreten5VS)
* item[+]
  * linkId = "MTSOSDR59_17a"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_17a
  * text = "Erfasst: Belastung durch Symptom 17."
  * type = #integer
  // Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert -> kein min/max
  * enableWhen[+]
    * question = "MTSOSDR59_17"
    * operator = #!=
    * answerCoding = MtsosdR59Auftreten5CS#stufe-0

* item[+]
  * linkId = "MTSOSDR59_18"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_18
  * text = "Erfasst: Auftreten von Symptom 18 (5 Stufen, Zeitraum 4 Wochen)."
  * type = #choice
  * answerValueSet = Canonical(MtsosdR59Auftreten5VS)
* item[+]
  * linkId = "MTSOSDR59_18a"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_18a
  * text = "Erfasst: Belastung durch Symptom 18."
  * type = #integer
  // Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert -> kein min/max
  * enableWhen[+]
    * question = "MTSOSDR59_18"
    * operator = #!=
    * answerCoding = MtsosdR59Auftreten5CS#stufe-0

* item[+]
  * linkId = "MTSOSDR59_19"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_19
  * text = "Erfasst: Auftreten von Symptom 19 (5 Stufen, Zeitraum 4 Wochen)."
  * type = #choice
  * answerValueSet = Canonical(MtsosdR59Auftreten5VS)
* item[+]
  * linkId = "MTSOSDR59_19a"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_19a
  * text = "Erfasst: Belastung durch Symptom 19."
  * type = #integer
  // Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert -> kein min/max
  * enableWhen[+]
    * question = "MTSOSDR59_19"
    * operator = #!=
    * answerCoding = MtsosdR59Auftreten5CS#stufe-0

* item[+]
  * linkId = "MTSOSDR59_20"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_20
  * text = "Erfasst: Auftreten von Symptom 20 (5 Stufen, Zeitraum 4 Wochen)."
  * type = #choice
  * answerValueSet = Canonical(MtsosdR59Auftreten5VS)
* item[+]
  * linkId = "MTSOSDR59_20a"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_20a
  * text = "Erfasst: Belastung durch Symptom 20."
  * type = #integer
  // Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert -> kein min/max
  * enableWhen[+]
    * question = "MTSOSDR59_20"
    * operator = #!=
    * answerCoding = MtsosdR59Auftreten5CS#stufe-0

* item[+]
  * linkId = "MTSOSDR59_21"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_21
  * text = "Erfasst: Auftreten von Symptom 21 (5 Stufen, Zeitraum 4 Wochen)."
  * type = #choice
  * answerValueSet = Canonical(MtsosdR59Auftreten5VS)
* item[+]
  * linkId = "MTSOSDR59_21a"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_21a
  * text = "Erfasst: Belastung durch Symptom 21."
  * type = #integer
  // Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert -> kein min/max
  * enableWhen[+]
    * question = "MTSOSDR59_21"
    * operator = #!=
    * answerCoding = MtsosdR59Auftreten5CS#stufe-0

* item[+]
  * linkId = "MTSOSDR59_22"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_22
  * text = "Erfasst: Auftreten von Symptom 22 (5 Stufen, Zeitraum 4 Wochen)."
  * type = #choice
  * answerValueSet = Canonical(MtsosdR59Auftreten5VS)
* item[+]
  * linkId = "MTSOSDR59_22a"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_22a
  * text = "Erfasst: Belastung durch Symptom 22."
  * type = #integer
  // Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert -> kein min/max
  * enableWhen[+]
    * question = "MTSOSDR59_22"
    * operator = #!=
    * answerCoding = MtsosdR59Auftreten5CS#stufe-0

* item[+]
  * linkId = "MTSOSDR59_23"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_23
  * text = "Erfasst: Auftreten von Symptom 23 (5 Stufen, Zeitraum 4 Wochen)."
  * type = #choice
  * answerValueSet = Canonical(MtsosdR59Auftreten5VS)
* item[+]
  * linkId = "MTSOSDR59_23a"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_23a
  * text = "Erfasst: Belastung durch Symptom 23."
  * type = #integer
  // Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert -> kein min/max
  * enableWhen[+]
    * question = "MTSOSDR59_23"
    * operator = #!=
    * answerCoding = MtsosdR59Auftreten5CS#stufe-0

* item[+]
  * linkId = "MTSOSDR59_24"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_24
  * text = "Erfasst: Auftreten von Symptom 24 (5 Stufen, Zeitraum 4 Wochen)."
  * type = #choice
  * answerValueSet = Canonical(MtsosdR59Auftreten5VS)
* item[+]
  * linkId = "MTSOSDR59_24a"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_24a
  * text = "Erfasst: Belastung durch Symptom 24."
  * type = #integer
  // Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert -> kein min/max
  * enableWhen[+]
    * question = "MTSOSDR59_24"
    * operator = #!=
    * answerCoding = MtsosdR59Auftreten5CS#stufe-0

* item[+]
  * linkId = "MTSOSDR59_25"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_25
  * text = "Erfasst: Auftreten von Symptom 25 (5 Stufen, Zeitraum 4 Wochen)."
  * type = #choice
  * answerValueSet = Canonical(MtsosdR59Auftreten5VS)
* item[+]
  * linkId = "MTSOSDR59_25a"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_25a
  * text = "Erfasst: Belastung durch Symptom 25."
  * type = #integer
  // Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert -> kein min/max
  * enableWhen[+]
    * question = "MTSOSDR59_25"
    * operator = #!=
    * answerCoding = MtsosdR59Auftreten5CS#stufe-0

* item[+]
  * linkId = "MTSOSDR59_26"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_26
  * text = "Erfasst: Auftreten von Symptom 26 (5 Stufen, Zeitraum 4 Wochen)."
  * type = #choice
  * answerValueSet = Canonical(MtsosdR59Auftreten5VS)
* item[+]
  * linkId = "MTSOSDR59_26a"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_26a
  * text = "Erfasst: Belastung durch Symptom 26."
  * type = #integer
  // Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert -> kein min/max
  * enableWhen[+]
    * question = "MTSOSDR59_26"
    * operator = #!=
    * answerCoding = MtsosdR59Auftreten5CS#stufe-0

* item[+]
  * linkId = "MTSOSDR59_27_male"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_27_male
  * text = "Erfasst: Auftreten von Symptom 27 (männlich) (5 Stufen, Zeitraum 4 Wochen)."
  * type = #choice
  * answerValueSet = Canonical(MtsosdR59Auftreten5VS)
* item[+]
  * linkId = "MTSOSDR59_27a_male"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_27a_male
  * text = "Erfasst: Belastung durch Symptom 27 (männlich)."
  * type = #integer
  // Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert -> kein min/max
  * enableWhen[+]
    * question = "MTSOSDR59_27_male"
    * operator = #!=
    * answerCoding = MtsosdR59Auftreten5CS#stufe-0

* item[+]
  * linkId = "MTSOSDR59_27_female"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_27_female
  * text = "Erfasst: Auftreten von Symptom 27 (weiblich) (5 Stufen, Zeitraum 4 Wochen)."
  * type = #choice
  * answerValueSet = Canonical(MtsosdR59Auftreten5VS)
* item[+]
  * linkId = "MTSOSDR59_27a_female"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_27a_female
  * text = "Erfasst: Belastung durch Symptom 27 (weiblich)."
  * type = #integer
  // Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert -> kein min/max
  * enableWhen[+]
    * question = "MTSOSDR59_27_female"
    * operator = #!=
    * answerCoding = MtsosdR59Auftreten5CS#stufe-0

* item[+]
  * linkId = "MTSOSDR59_28"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_28
  * text = "Erfasst: Auftreten von Symptom 28 (5 Stufen, Zeitraum 4 Wochen)."
  * type = #choice
  * answerValueSet = Canonical(MtsosdR59Auftreten5VS)
* item[+]
  * linkId = "MTSOSDR59_28a"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_28a
  * text = "Erfasst: Belastung durch Symptom 28."
  * type = #integer
  // Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert -> kein min/max
  * enableWhen[+]
    * question = "MTSOSDR59_28"
    * operator = #!=
    * answerCoding = MtsosdR59Auftreten5CS#stufe-0

* item[+]
  * linkId = "MTSOSDR59_29"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_29
  * text = "Erfasst: Auftreten von Symptom 29 (5 Stufen, Zeitraum 4 Wochen)."
  * type = #choice
  * answerValueSet = Canonical(MtsosdR59Auftreten5VS)
* item[+]
  * linkId = "MTSOSDR59_29a"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_29a
  * text = "Erfasst: Belastung durch Symptom 29."
  * type = #integer
  // Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert -> kein min/max
  * enableWhen[+]
    * question = "MTSOSDR59_29"
    * operator = #!=
    * answerCoding = MtsosdR59Auftreten5CS#stufe-0

* item[+]
  * linkId = "MTSOSDR59_30"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_30
  * text = "Erfasst: Auftreten von Symptom 30 (5 Stufen, Zeitraum 4 Wochen)."
  * type = #choice
  * answerValueSet = Canonical(MtsosdR59Auftreten5VS)
* item[+]
  * linkId = "MTSOSDR59_30a"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_30a
  * text = "Erfasst: Belastung durch Symptom 30."
  * type = #integer
  // Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert -> kein min/max
  * enableWhen[+]
    * question = "MTSOSDR59_30"
    * operator = #!=
    * answerCoding = MtsosdR59Auftreten5CS#stufe-0

* item[+]
  * linkId = "MTSOSDR59_31"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_31
  * text = "Erfasst: Auftreten von Symptom 31 (5 Stufen, Zeitraum 4 Wochen)."
  * type = #choice
  * answerValueSet = Canonical(MtsosdR59Auftreten5VS)
* item[+]
  * linkId = "MTSOSDR59_31a"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_31a
  * text = "Erfasst: Belastung durch Symptom 31."
  * type = #integer
  // Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert -> kein min/max
  * enableWhen[+]
    * question = "MTSOSDR59_31"
    * operator = #!=
    * answerCoding = MtsosdR59Auftreten5CS#stufe-0

* item[+]
  * linkId = "MTSOSDR59_32"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_32
  * text = "Erfasst: Auftreten von Symptom 32 (5 Stufen, Zeitraum 4 Wochen)."
  * type = #choice
  * answerValueSet = Canonical(MtsosdR59Auftreten5VS)
* item[+]
  * linkId = "MTSOSDR59_32a"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_32a
  * text = "Erfasst: Belastung durch Symptom 32."
  * type = #integer
  // Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert -> kein min/max
  * enableWhen[+]
    * question = "MTSOSDR59_32"
    * operator = #!=
    * answerCoding = MtsosdR59Auftreten5CS#stufe-0

* item[+]
  * linkId = "MTSOSDR59_33"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_33
  * text = "Erfasst: Auftreten von Symptom 33 (5 Stufen, Zeitraum 4 Wochen)."
  * type = #choice
  * answerValueSet = Canonical(MtsosdR59Auftreten5VS)
* item[+]
  * linkId = "MTSOSDR59_33a"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_33a
  * text = "Erfasst: Belastung durch Symptom 33."
  * type = #integer
  // Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert -> kein min/max
  * enableWhen[+]
    * question = "MTSOSDR59_33"
    * operator = #!=
    * answerCoding = MtsosdR59Auftreten5CS#stufe-0

* item[+]
  * linkId = "MTSOSDR59_34"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_34
  * text = "Erfasst: Auftreten von Symptom 34 (5 Stufen, Zeitraum 4 Wochen)."
  * type = #choice
  * answerValueSet = Canonical(MtsosdR59Auftreten5VS)
* item[+]
  * linkId = "MTSOSDR59_34a"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_34a
  * text = "Erfasst: Belastung durch Symptom 34."
  * type = #integer
  // Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert -> kein min/max
  * enableWhen[+]
    * question = "MTSOSDR59_34"
    * operator = #!=
    * answerCoding = MtsosdR59Auftreten5CS#stufe-0

* item[+]
  * linkId = "MTSOSDR59_35"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_35
  * text = "Erfasst: Auftreten von Symptom 35 (5 Stufen, Zeitraum 4 Wochen)."
  * type = #choice
  * answerValueSet = Canonical(MtsosdR59Auftreten5VS)
* item[+]
  * linkId = "MTSOSDR59_35a"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_35a
  * text = "Erfasst: Belastung durch Symptom 35."
  * type = #integer
  // Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert -> kein min/max
  * enableWhen[+]
    * question = "MTSOSDR59_35"
    * operator = #!=
    * answerCoding = MtsosdR59Auftreten5CS#stufe-0

* item[+]
  * linkId = "MTSOSDR59_36"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_36
  * text = "Erfasst: Auftreten von Symptom 36 (5 Stufen, Zeitraum 4 Wochen)."
  * type = #choice
  * answerValueSet = Canonical(MtsosdR59Auftreten5VS)
* item[+]
  * linkId = "MTSOSDR59_36a"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_36a
  * text = "Erfasst: Belastung durch Symptom 36."
  * type = #integer
  // Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert -> kein min/max
  * enableWhen[+]
    * question = "MTSOSDR59_36"
    * operator = #!=
    * answerCoding = MtsosdR59Auftreten5CS#stufe-0

* item[+]
  * linkId = "MTSOSDR59_37"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_37
  * text = "Erfasst: Auftreten von Symptom 37 (5 Stufen, Zeitraum 4 Wochen)."
  * type = #choice
  * answerValueSet = Canonical(MtsosdR59Auftreten5VS)
* item[+]
  * linkId = "MTSOSDR59_37a"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_37a
  * text = "Erfasst: Belastung durch Symptom 37."
  * type = #integer
  // Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert -> kein min/max
  * enableWhen[+]
    * question = "MTSOSDR59_37"
    * operator = #!=
    * answerCoding = MtsosdR59Auftreten5CS#stufe-0

* item[+]
  * linkId = "MTSOSDR59_38"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_38
  * text = "Erfasst: Auftreten von Symptom 38 (5 Stufen, Zeitraum 4 Wochen)."
  * type = #choice
  * answerValueSet = Canonical(MtsosdR59Auftreten5VS)
* item[+]
  * linkId = "MTSOSDR59_38a"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_38a
  * text = "Erfasst: Belastung durch Symptom 38."
  * type = #integer
  // Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert -> kein min/max
  * enableWhen[+]
    * question = "MTSOSDR59_38"
    * operator = #!=
    * answerCoding = MtsosdR59Auftreten5CS#stufe-0

* item[+]
  * linkId = "MTSOSDR59_39"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_39
  * text = "Erfasst: Auftreten von Symptom 39 (5 Stufen, Zeitraum 4 Wochen)."
  * type = #choice
  * answerValueSet = Canonical(MtsosdR59Auftreten5VS)
* item[+]
  * linkId = "MTSOSDR59_39a"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_39a
  * text = "Erfasst: Belastung durch Symptom 39."
  * type = #integer
  // Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert -> kein min/max
  * enableWhen[+]
    * question = "MTSOSDR59_39"
    * operator = #!=
    * answerCoding = MtsosdR59Auftreten5CS#stufe-0

* item[+]
  * linkId = "MTSOSDR59_40"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_40
  * text = "Erfasst: Auftreten von Symptom 40 (5 Stufen, Zeitraum 4 Wochen)."
  * type = #choice
  * answerValueSet = Canonical(MtsosdR59Auftreten5VS)
* item[+]
  * linkId = "MTSOSDR59_40a"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_40a
  * text = "Erfasst: Belastung durch Symptom 40."
  * type = #integer
  // Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert -> kein min/max
  * enableWhen[+]
    * question = "MTSOSDR59_40"
    * operator = #!=
    * answerCoding = MtsosdR59Auftreten5CS#stufe-0

* item[+]
  * linkId = "MTSOSDR59_41"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_41
  * text = "Erfasst: Auftreten von Symptom 41 (5 Stufen, Zeitraum 4 Wochen)."
  * type = #choice
  * answerValueSet = Canonical(MtsosdR59Auftreten5VS)
* item[+]
  * linkId = "MTSOSDR59_41a"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_41a
  * text = "Erfasst: Belastung durch Symptom 41."
  * type = #integer
  // Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert -> kein min/max
  * enableWhen[+]
    * question = "MTSOSDR59_41"
    * operator = #!=
    * answerCoding = MtsosdR59Auftreten5CS#stufe-0

* item[+]
  * linkId = "MTSOSDR59_42"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_42
  * text = "Erfasst: Auftreten von Symptom 42 (5 Stufen, Zeitraum 4 Wochen)."
  * type = #choice
  * answerValueSet = Canonical(MtsosdR59Auftreten5VS)
* item[+]
  * linkId = "MTSOSDR59_42a"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_42a
  * text = "Erfasst: Belastung durch Symptom 42."
  * type = #integer
  // Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert -> kein min/max
  * enableWhen[+]
    * question = "MTSOSDR59_42"
    * operator = #!=
    * answerCoding = MtsosdR59Auftreten5CS#stufe-0

* item[+]
  * linkId = "MTSOSDR59_43"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_43
  * text = "Erfasst: Auftreten von Symptom 43 (5 Stufen, Zeitraum 4 Wochen)."
  * type = #choice
  * answerValueSet = Canonical(MtsosdR59Auftreten5VS)
* item[+]
  * linkId = "MTSOSDR59_43a"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_43a
  * text = "Erfasst: Belastung durch Symptom 43."
  * type = #integer
  // Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert -> kein min/max
  * enableWhen[+]
    * question = "MTSOSDR59_43"
    * operator = #!=
    * answerCoding = MtsosdR59Auftreten5CS#stufe-0

* item[+]
  * linkId = "MTSOSDR59_44"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_44
  * text = "Erfasst: Auftreten von Symptom 44 (5 Stufen, Zeitraum 4 Wochen)."
  * type = #choice
  * answerValueSet = Canonical(MtsosdR59Auftreten5VS)
* item[+]
  * linkId = "MTSOSDR59_44a"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_44a
  * text = "Erfasst: Belastung durch Symptom 44."
  * type = #integer
  // Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert -> kein min/max
  * enableWhen[+]
    * question = "MTSOSDR59_44"
    * operator = #!=
    * answerCoding = MtsosdR59Auftreten5CS#stufe-0

* item[+]
  * linkId = "MTSOSDR59_45"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_45
  * text = "Erfasst: Auftreten von Symptom 45 (5 Stufen, Zeitraum 4 Wochen)."
  * type = #choice
  * answerValueSet = Canonical(MtsosdR59Auftreten5VS)
* item[+]
  * linkId = "MTSOSDR59_45a"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_45a
  * text = "Erfasst: Belastung durch Symptom 45."
  * type = #integer
  // Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert -> kein min/max
  * enableWhen[+]
    * question = "MTSOSDR59_45"
    * operator = #!=
    * answerCoding = MtsosdR59Auftreten5CS#stufe-0

* item[+]
  * linkId = "MTSOSDR59_46"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_46
  * text = "Erfasst: Auftreten von Symptom 46 (5 Stufen, Zeitraum 4 Wochen)."
  * type = #choice
  * answerValueSet = Canonical(MtsosdR59Auftreten5VS)
* item[+]
  * linkId = "MTSOSDR59_46a"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_46a
  * text = "Erfasst: Belastung durch Symptom 46."
  * type = #integer
  // Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert -> kein min/max
  * enableWhen[+]
    * question = "MTSOSDR59_46"
    * operator = #!=
    * answerCoding = MtsosdR59Auftreten5CS#stufe-0

* item[+]
  * linkId = "MTSOSDR59_47"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_47
  * text = "Erfasst: Auftreten von Symptom 47 (5 Stufen, Zeitraum 4 Wochen)."
  * type = #choice
  * answerValueSet = Canonical(MtsosdR59Auftreten5VS)
* item[+]
  * linkId = "MTSOSDR59_47a"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_47a
  * text = "Erfasst: Belastung durch Symptom 47."
  * type = #integer
  // Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert -> kein min/max
  * enableWhen[+]
    * question = "MTSOSDR59_47"
    * operator = #!=
    * answerCoding = MtsosdR59Auftreten5CS#stufe-0

* item[+]
  * linkId = "MTSOSDR59_48"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_48
  * text = "Erfasst: Auftreten von Symptom 48 (5 Stufen, Zeitraum 4 Wochen)."
  * type = #choice
  * answerValueSet = Canonical(MtsosdR59Auftreten5VS)
* item[+]
  * linkId = "MTSOSDR59_48a"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_48a
  * text = "Erfasst: Belastung durch Symptom 48."
  * type = #integer
  // Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert -> kein min/max
  * enableWhen[+]
    * question = "MTSOSDR59_48"
    * operator = #!=
    * answerCoding = MtsosdR59Auftreten5CS#stufe-0

* item[+]
  * linkId = "MTSOSDR59_49"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_49
  * text = "Erfasst: Auftreten von Symptom 49 (5 Stufen, Zeitraum 4 Wochen)."
  * type = #choice
  * answerValueSet = Canonical(MtsosdR59Auftreten5VS)
* item[+]
  * linkId = "MTSOSDR59_49a"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_49a
  * text = "Erfasst: Belastung durch Symptom 49."
  * type = #integer
  // Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert -> kein min/max
  * enableWhen[+]
    * question = "MTSOSDR59_49"
    * operator = #!=
    * answerCoding = MtsosdR59Auftreten5CS#stufe-0

* item[+]
  * linkId = "MTSOSDR59_50"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_50
  * text = "Erfasst: Auftreten von Symptom 50 (5 Stufen, Zeitraum 4 Wochen)."
  * type = #choice
  * answerValueSet = Canonical(MtsosdR59Auftreten5VS)
* item[+]
  * linkId = "MTSOSDR59_50a"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_50a
  * text = "Erfasst: Belastung durch Symptom 50."
  * type = #integer
  // Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert -> kein min/max
  * enableWhen[+]
    * question = "MTSOSDR59_50"
    * operator = #!=
    * answerCoding = MtsosdR59Auftreten5CS#stufe-0

* item[+]
  * linkId = "MTSOSDR59_51"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_51
  * text = "Erfasst: Auftreten von Symptom 51 (5 Stufen, Zeitraum 4 Wochen)."
  * type = #choice
  * answerValueSet = Canonical(MtsosdR59Auftreten5VS)
* item[+]
  * linkId = "MTSOSDR59_51a"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_51a
  * text = "Erfasst: Belastung durch Symptom 51."
  * type = #integer
  // Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert -> kein min/max
  * enableWhen[+]
    * question = "MTSOSDR59_51"
    * operator = #!=
    * answerCoding = MtsosdR59Auftreten5CS#stufe-0

* item[+]
  * linkId = "MTSOSDR59_52"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_52
  * text = "Erfasst: Auftreten von Symptom 52 (5 Stufen, Zeitraum 4 Wochen)."
  * type = #choice
  * answerValueSet = Canonical(MtsosdR59Auftreten5VS)
* item[+]
  * linkId = "MTSOSDR59_52a"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_52a
  * text = "Erfasst: Belastung durch Symptom 52."
  * type = #integer
  // Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert -> kein min/max
  * enableWhen[+]
    * question = "MTSOSDR59_52"
    * operator = #!=
    * answerCoding = MtsosdR59Auftreten5CS#stufe-0

* item[+]
  * linkId = "MTSOSDR59_53"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_53
  * text = "Erfasst: Auftreten von Symptom 53 (5 Stufen, Zeitraum 4 Wochen)."
  * type = #choice
  * answerValueSet = Canonical(MtsosdR59Auftreten5VS)
* item[+]
  * linkId = "MTSOSDR59_53a"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_53a
  * text = "Erfasst: Belastung durch Symptom 53."
  * type = #integer
  // Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert -> kein min/max
  * enableWhen[+]
    * question = "MTSOSDR59_53"
    * operator = #!=
    * answerCoding = MtsosdR59Auftreten5CS#stufe-0

* item[+]
  * linkId = "MTSOSDR59_54"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_54
  * text = "Erfasst: Auftreten von Symptom 54 (5 Stufen, Zeitraum 4 Wochen)."
  * type = #choice
  * answerValueSet = Canonical(MtsosdR59Auftreten5VS)
* item[+]
  * linkId = "MTSOSDR59_54a"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_54a
  * text = "Erfasst: Belastung durch Symptom 54."
  * type = #integer
  // Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert -> kein min/max
  * enableWhen[+]
    * question = "MTSOSDR59_54"
    * operator = #!=
    * answerCoding = MtsosdR59Auftreten5CS#stufe-0

* item[+]
  * linkId = "MTSOSDR59_55"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_55
  * text = "Erfasst: Auftreten von Symptom 55 (5 Stufen, Zeitraum 4 Wochen)."
  * type = #choice
  * answerValueSet = Canonical(MtsosdR59Auftreten5VS)
* item[+]
  * linkId = "MTSOSDR59_55a"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_55a
  * text = "Erfasst: Belastung durch Symptom 55."
  * type = #integer
  // Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert -> kein min/max
  * enableWhen[+]
    * question = "MTSOSDR59_55"
    * operator = #!=
    * answerCoding = MtsosdR59Auftreten5CS#stufe-0

* item[+]
  * linkId = "MTSOSDR59_56"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_56
  * text = "Erfasst: Auftreten von Symptom 56 (5 Stufen, Zeitraum 4 Wochen)."
  * type = #choice
  * answerValueSet = Canonical(MtsosdR59Auftreten5VS)
* item[+]
  * linkId = "MTSOSDR59_56a"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_56a
  * text = "Erfasst: Belastung durch Symptom 56."
  * type = #integer
  // Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert -> kein min/max
  * enableWhen[+]
    * question = "MTSOSDR59_56"
    * operator = #!=
    * answerCoding = MtsosdR59Auftreten5CS#stufe-0

* item[+]
  * linkId = "MTSOSDR59_57"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_57
  * text = "Erfasst: Auftreten von Symptom 57 (5 Stufen, Zeitraum 4 Wochen)."
  * type = #choice
  * answerValueSet = Canonical(MtsosdR59Auftreten5VS)
* item[+]
  * linkId = "MTSOSDR59_57a"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_57a
  * text = "Erfasst: Belastung durch Symptom 57."
  * type = #integer
  // Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert -> kein min/max
  * enableWhen[+]
    * question = "MTSOSDR59_57"
    * operator = #!=
    * answerCoding = MtsosdR59Auftreten5CS#stufe-0

* item[+]
  * linkId = "MTSOSDR59_58"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_58
  * text = "Erfasst: Auftreten von Symptom 58 (5 Stufen, Zeitraum 4 Wochen)."
  * type = #choice
  * answerValueSet = Canonical(MtsosdR59Auftreten5VS)
* item[+]
  * linkId = "MTSOSDR59_58a"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_58a
  * text = "Erfasst: Belastung durch Symptom 58."
  * type = #integer
  // Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert -> kein min/max
  * enableWhen[+]
    * question = "MTSOSDR59_58"
    * operator = #!=
    * answerCoding = MtsosdR59Auftreten5CS#stufe-0

* item[+]
  * linkId = "MTSOSDR59_59"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_59
  * text = "Erfasst: Auftreten von Symptom 59 (5 Stufen, Zeitraum 4 Wochen)."
  * type = #choice
  * answerValueSet = Canonical(MtsosdR59Auftreten5VS)
* item[+]
  * linkId = "MTSOSDR59_59a"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_59a
  * text = "Erfasst: Belastung durch Symptom 59."
  * type = #integer
  // Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert -> kein min/max
  * enableWhen[+]
    * question = "MTSOSDR59_59"
    * operator = #!=
    * answerCoding = MtsosdR59Auftreten5CS#stufe-0

* item[+]
  * linkId = "MTSOSDR59_60"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_60
  * text = "Erfasst: Freitext-Angabe eines weiteren Symptoms (60)."
  * type = #text
* item[+]
  * linkId = "MTSOSDR59_60a"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_60a
  * text = "Erfasst: Belastung durch Symptom 60 (Freitext)."
  * type = #integer
  // Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert -> kein min/max
  * enableWhen[+]
    * question = "MTSOSDR59_60"
    * operator = #exists
    * answerBoolean = true

* item[+]
  * linkId = "MTSOSDR59_61"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_61
  * text = "Erfasst: Freitext-Angabe eines weiteren Symptoms (61)."
  * type = #text
* item[+]
  * linkId = "MTSOSDR59_61a"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_61a
  * text = "Erfasst: Belastung durch Symptom 61 (Freitext)."
  * type = #integer
  // Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert -> kein min/max
  * enableWhen[+]
    * question = "MTSOSDR59_61"
    * operator = #exists
    * answerBoolean = true

* item[+]
  * linkId = "MTSOSDR59_62"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_62
  * text = "Erfasst: Freitext-Angabe eines weiteren Symptoms (62)."
  * type = #text
* item[+]
  * linkId = "MTSOSDR59_62a"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_62a
  * text = "Erfasst: Belastung durch Symptom 62 (Freitext)."
  * type = #integer
  // Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert -> kein min/max
  * enableWhen[+]
    * question = "MTSOSDR59_62"
    * operator = #exists
    * answerBoolean = true
