// ─────────────────────────────────────────────────────────────────────────────
// BAASIS — Basel Assessment of Adherence to Immunosuppressive Medications Scale (Entität NTx)
// Quelle: PCOR Item Level Dictionary, Blatt NTx (Kategorie TCH), Variablen BAASIS1A … BAASIS5_a
// (10 Variablen). Instrument: Fragebogen zur Adhärenz gegenüber immunsuppressiver Medikation.
//
// ⚠️ METADATA-ONLY. Rechteinhaber ist die Universität Basel. Eine Veröffentlichung der
//    konkreten Items einschließlich Antwortmöglichkeiten ist nicht erlaubt; wissenschaftliche
//    Nutzung ohne Pharma-Beteiligung ist kostenfrei, jedes Zentrum benötigt eine eigene
//    Lizenzvereinbarung (Bezug: https://baasis.nursing.unibas.ch/how-to-obtain). Diese
//    Instanz bildet daher NUR Struktur, linkIds, Typen und Bedingungen ab:
//      - Item-Texte sind NEUTRALE Labels ("Erfasst: …"), KEIN Originalwortlaut.
//      - Häufigkeits-Teilfragen (_a) nutzen die neutrale Skala "Stufe 1" … "Stufe 5"
//        (ordinalValue 1-5; Stufe n = n-te Antwortoption in aufsteigender Reihenfolge).
//      - Ja/Nein über DemJaNeinVS (projektweit, siehe DEM.fsh).
//    Muster: WAI.fsh und UKHD-EDP.fsh im selben Verzeichnis. Die wortgleiche Vollversion
//    kommt nie in dieses Package.
//
// STRUKTUR: 10 Variablen. Rückblick: Items 4 und 5 beziehen sich auf 1 Jahr.
//
// BEDINGUNGEN: 1A_a nur bei 1A = ja; 1B nur bei 1A = ja; 1B_a nur bei 1B = ja; 2_a nur bei
//   2 = ja; 5_a nur bei 5 = ja.
//
// SCORING: Kein Summenscore. Die Klassifikation "nicht adhärent" ergibt sich dichotom, wenn
//   eines der Items 1A, 2, 3 oder 4 mit "ja" beantwortet wurde. Nur dokumentiert, NICHT als
//   Ausdruck ausgeliefert (calculatable = false). Folge: Der ABQ wird bei Nonadhärenz erhoben
//   (Cross-Questionnaire-Bedingung, siehe ABQ.fsh).
//
// Terminologie-Recherche: nicht durchgeführt — Terminologie-MCP in der Session nicht
//   verfügbar. Keine LOINC-/SNOMED-Instrumentencodes verifiziert; Questionnaire.code trägt
//   nur den PCOR-Katalogcode.
// ─────────────────────────────────────────────────────────────────────────────

CodeSystem: BaasisHaeufigkeit5CS
Id: baasis-haeufigkeit-5
Title: "BAASIS Häufigkeit 5-stufig (Codes)"
Description: "Neutral benannte 5-stufige Häufigkeitsskala der BAASIS-Teilfragen (Stufe 1 bis Stufe 5). METADATA-ONLY: Die Originalbezeichnungen der Antwortstufen dürfen nicht veröffentlicht werden. ordinalValue-Property je Konzept (1-5) ermöglicht Scoring bzw. spätere Auswertung."
* ^url = "https://bih-cei.github.io/PCOR-MII/CodeSystem/baasis-haeufigkeit-5"
* insert PR_CS_VS_Version
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* ^content = #complete
* ^property[+].code = #ordinalValue
* ^property[=].uri = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* ^property[=].description = "Numerischer Ordinalwert (1-5); Stufe n = n-te Antwortoption in aufsteigender Reihenfolge."
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

ValueSet: BaasisHaeufigkeit5VS
Id: baasis-haeufigkeit-5-vs
Title: "BAASIS Häufigkeit 5-stufig"
Description: "Neutral benannte 5-stufige Häufigkeitsskala der BAASIS-Teilfragen (Stufe 1 bis Stufe 5). METADATA-ONLY: Die Originalbezeichnungen der Antwortstufen dürfen nicht veröffentlicht werden. Metadata-only, siehe BaasisHaeufigkeit5CS."
* ^url = "https://bih-cei.github.io/PCOR-MII/ValueSet/baasis-haeufigkeit-5-vs"
* insert PR_CS_VS_Version
* ^status = #draft
* ^experimental = true
* include codes from system BaasisHaeufigkeit5CS
* ^expansion.timestamp = "2026-11-05T00:00:00Z"
* ^expansion.parameter[0].name = "used-codesystem"
* ^expansion.parameter[0].valueUri = "https://bih-cei.github.io/PCOR-MII/CodeSystem/baasis-haeufigkeit-5|0.3.0"
* ^expansion.contains[0].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/baasis-haeufigkeit-5"
* ^expansion.contains[=].code = #stufe-1
* ^expansion.contains[=].display = "Stufe 1"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/baasis-haeufigkeit-5"
* ^expansion.contains[=].code = #stufe-2
* ^expansion.contains[=].display = "Stufe 2"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/baasis-haeufigkeit-5"
* ^expansion.contains[=].code = #stufe-3
* ^expansion.contains[=].display = "Stufe 3"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/baasis-haeufigkeit-5"
* ^expansion.contains[=].code = #stufe-4
* ^expansion.contains[=].display = "Stufe 4"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/baasis-haeufigkeit-5"
* ^expansion.contains[=].code = #stufe-5
* ^expansion.contains[=].display = "Stufe 5"

// ─────────────────────────────────────────────────────────────────────────────
// BAASIS — Questionnaire (metadata-only)
// ─────────────────────────────────────────────────────────────────────────────

Instance: BAASIS
InstanceOf: Questionnaire
Usage: #definition
Title: "BAASIS — Adhärenz gegenüber immunsuppressiver Medikation (NTx, metadata-only)"
Description: "Basel Assessment of Adherence to Immunosuppressive Medications Scale, 10 Variablen aus dem NTx-Dictionary (Kategorie TCH). **Metadata-only:** Struktur, `linkId`s, Typen und Bedingungen sind abgebildet, Itemwortlaut und Antwortbezeichnungen bewusst nicht (Rechteinhaber Universität Basel). Kein Summenscore."
// Selbstauskunfts-PRO -> MII-PRO-Profil (nicht ISiKFormularDefinition, die nur für Nicht-PRO-Bögen gilt).
* meta.profile = $mii-pro-questionnaire
* url = "https://bih-cei.github.io/PCOR-MII/Questionnaire/BAASIS"
* name = "BAASIS"
* language = #de
* insert Version
* code[+] = PcorQuestionnaireCatalogueCS#baasis "BAASIS"
* status = #draft
* experimental = true
* subjectType = #Patient
* date = "2026-11-05"
* publisher = "BIH-CEI"
* copyright = "METADATA-ONLY: BAASIS © Universität Basel. Diese Instanz bildet ausschließlich Struktur, linkIds, Typen und Bedingungen ab. Item-Texte sind neutrale, selbst formulierte Labels, die Antwortstufen sind neutral benannt (Stufe 1-5). Eine Veröffentlichung der konkreten Items einschließlich Antwortmöglichkeiten ist nicht erlaubt; wissenschaftliche Nutzung ohne Pharma-Beteiligung ist kostenfrei; jedes Zentrum benötigt eine eigene Lizenzvereinbarung. Bezug: https://baasis.nursing.unibas.ch/how-to-obtain. Nur der PCOR-MII-eigene FHIR-Inhalt unterliegt der Repository-Lizenz (CC-BY-4.0)."
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
* extension[=].valueMarkdown = "**Designentscheidungen:** (1) **Metadata-only** nach dem Muster des [WAI](WAI.html): Struktur, `linkId`s, Typen und Bedingungen sind abgebildet; Item-Texte sind neutrale Labels, Antwortstufen neutral benannt (Rechteinhaber Universität Basel, Veröffentlichung der Items nicht erlaubt, jedes Zentrum braucht eine eigene Lizenzvereinbarung). (2) **Kein Summenscore:** Die dichotome Klassifikation als nicht adhärent (Items 1A, 2, 3 oder 4 = ja) ist nur dokumentiert, nicht als Ausdruck ausgeliefert. (3) **Bedingungen:** 1A_a bei 1A = ja, 1B bei 1A = ja, 1B_a bei 1B = ja, 2_a bei 2 = ja, 5_a bei 5 = ja; Items 4 und 5 beziehen sich auf einen Rückblick von einem Jahr. (4) **Keine Instrumenten-Codes verifiziert** (Terminologie-Recherche nicht durchgeführt). Details: <https://bih-cei.github.io/PCOR-MII/Designentscheidungen.html>"

* item[+]
  * linkId = "BAASIS1A"
  * code[+] = PcorItemDictionaryCS#BAASIS1A
  * text = "Erfasst: Ja/Nein-Angabe zu Item 1A."
  * type = #choice
  * answerValueSet = Canonical(DemJaNeinVS)

* item[+]
  * linkId = "BAASIS1A_a"
  * code[+] = PcorItemDictionaryCS#BAASIS1A_a
  * text = "Erfasst: Häufigkeitsangabe zu Item 1A."
  * type = #choice
  * answerValueSet = Canonical(BaasisHaeufigkeit5VS)
  * enableWhen[+]
    * question = "BAASIS1A"
    * operator = #=
    * answerCoding = DemAntwortCS#ja

* item[+]
  * linkId = "BAASIS1B"
  * code[+] = PcorItemDictionaryCS#BAASIS1B
  * text = "Erfasst: Ja/Nein-Angabe zu Item 1B."
  * type = #choice
  * answerValueSet = Canonical(DemJaNeinVS)
  * enableWhen[+]
    * question = "BAASIS1A"
    * operator = #=
    * answerCoding = DemAntwortCS#ja

* item[+]
  * linkId = "BAASIS1B_a"
  * code[+] = PcorItemDictionaryCS#BAASIS1B_a
  * text = "Erfasst: Häufigkeitsangabe zu Item 1B."
  * type = #choice
  * answerValueSet = Canonical(BaasisHaeufigkeit5VS)
  * enableWhen[+]
    * question = "BAASIS1B"
    * operator = #=
    * answerCoding = DemAntwortCS#ja

* item[+]
  * linkId = "BAASIS2"
  * code[+] = PcorItemDictionaryCS#BAASIS2
  * text = "Erfasst: Ja/Nein-Angabe zu Item 2."
  * type = #choice
  * answerValueSet = Canonical(DemJaNeinVS)

* item[+]
  * linkId = "BAASIS2_a"
  * code[+] = PcorItemDictionaryCS#BAASIS2_a
  * text = "Erfasst: Häufigkeitsangabe zu Item 2."
  * type = #choice
  * answerValueSet = Canonical(BaasisHaeufigkeit5VS)
  * enableWhen[+]
    * question = "BAASIS2"
    * operator = #=
    * answerCoding = DemAntwortCS#ja

* item[+]
  * linkId = "BAASIS3"
  * code[+] = PcorItemDictionaryCS#BAASIS3
  * text = "Erfasst: Ja/Nein-Angabe zu Item 3."
  * type = #choice
  * answerValueSet = Canonical(DemJaNeinVS)

* item[+]
  * linkId = "BAASIS4"
  * code[+] = PcorItemDictionaryCS#BAASIS4
  * text = "Erfasst: Ja/Nein-Angabe zu Item 4 (Rückblick 1 Jahr)."
  * type = #choice
  * answerValueSet = Canonical(DemJaNeinVS)

* item[+]
  * linkId = "BAASIS5"
  * code[+] = PcorItemDictionaryCS#BAASIS5
  * text = "Erfasst: Ja/Nein-Angabe zu Item 5 (Rückblick 1 Jahr)."
  * type = #choice
  * answerValueSet = Canonical(DemJaNeinVS)

* item[+]
  * linkId = "BAASIS5_a"
  * code[+] = PcorItemDictionaryCS#BAASIS5_a
  * text = "Erfasst: Ja/Nein-Angabe zu Item 5, Teilfrage a."
  * type = #choice
  * answerValueSet = Canonical(DemJaNeinVS)
  * enableWhen[+]
    * question = "BAASIS5"
    * operator = #=
    * answerCoding = DemAntwortCS#ja
