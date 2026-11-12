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
//      - Häufigkeits-Teilfragen (_a) nutzen neutrale Skalen "Stufe 1" … "Stufe 5"
//        (itemWeight 1-5; Stufe n = n-te Antwortoption in aufsteigender Reihenfolge).
//        ZWEI Skalen: 1A_a und 1B_a zählen Ereignisse (BaasisHaeufigkeit5VS), 2_a ist laut
//        Dictionary eine Raten-Skala (BaasisHaeufigkeitZeit5VS). Die offizielle Erläuterung
//        nennt für alle drei dieselben fünf Anzahl-Kategorien; die Abweichung bei 2_a ist
//        gegen den lizenzierten deutschen Bogen (Version 2021) zu prüfen.
//      - Ja/Nein als SNOMED CT 373066001/373067005 inline (RuleSet JaNeinSnomed, ADR-013);
//        der Bogen ist neu und nie mit dem lokalen dem-ja-nein veröffentlicht worden.
//    Muster: WAI.fsh und UKHD-EDP.fsh im selben Verzeichnis. Die wortgleiche Vollversion
//    kommt nie in dieses Package.
//
// STRUKTUR (BAASIS-Erläuterung, Uni Basel, Version 7.10.2026): 10 Variablen, Fassung
//   "Written self-report" der Version 2021 (ohne Medikationstabelle des Interviews). Die
//   Items folgen der ABC-Taxonomie (Vrijens et al. 2012):
//     - Implementierung: 1A Einnahme, 1B Drug Holiday (zwei+ Dosen in Folge), 2 Timing,
//       3 Dosisänderung — Rückblick 4 Wochen; 1A, 1B und 2 mit Häufigkeits-Teilfrage.
//     - Persistenz: 4 Absetzen — Rückblick 1 Jahr.
//     - Initiierung: 5 Neuverordnung im letzten Jahr, 5_a eingelöst und begonnen — seit der
//       Version 2020 OFFIZIELLER Bestandteil des BAASIS (kein PCOR-MII-Zusatz; frühere
//       Annahme korrigiert am 2026-11-05).
//
// BEDINGUNGEN: 1A_a nur bei 1A = ja; 1B nur bei 1A = ja; 1B_a nur bei 1B = ja; 2_a nur bei
//   2 = ja; 5_a nur bei 5 = ja.
//
// SCORING (offiziell): Kein Gesamtscore; die drei Phasen werden getrennt bewertet.
//   Implementierungsproblem = "ja" bei 1A, 1B, 2 oder 3. Nicht-Persistenz = "ja" bei 4.
//   Nicht-Initiierung = "ja" bei 5 und "nein" bei 5_a (Anteil nur unter Neuverordneten).
//   Nur dokumentiert, NICHT als Ausdruck ausgeliefert (calculatable = false).
//   PCOR-MII-Auslöser für den ABQ laut Dictionary: "ja" bei 1A, 2, 3 oder 4 — das ist
//   Implementierungs- ODER Persistenzproblem (1B setzt 1A = ja voraus), siehe ABQ.fsh.
//
// LIZENZ (Website, Terms of Use): Erlaubnis je Projekt über das Formular; keine Gebühr
//   genannt; wortgleiche Veröffentlichung von Items oder Skala untersagt; Publikationen
//   müssen Denhaerynck et al. 2023, Haupenthal et al. 2025 und die Website zitieren; Nutzung
//   verpflichtet zur Datenweitergabe für das laufende Validierungsprojekt (Term IV) —
//   relevant für das Konsortium. Deutsche Fassung der Version 2021 offiziell verfügbar.
//
// Terminologie-Recherche (2026-11-05, LOINC 2.83 / SNOMED CT INT 2026-10): kein Code für
//   das Instrument. LOINC 71799-1 "Adherence to prescribed medication instructions
//   [Reported]" ist ein generisches Einzelkonzept, kein BAASIS-Panel, und wird nicht gesetzt.
//   Questionnaire.code trägt nur den PCOR-Katalogcode.
// ─────────────────────────────────────────────────────────────────────────────

CodeSystem: BaasisHaeufigkeit5CS
Id: baasis-haeufigkeit-5
Title: "BAASIS Häufigkeit 5-stufig (Codes)"
Description: "Neutral benannte 5-stufige Anzahl-Skala der BAASIS-Teilfragen 1A_a und 1B_a (Stufe 1 bis Stufe 5; offiziell fünf Kategorien von einmal bis mehr als viermal). METADATA-ONLY: Die Originalbezeichnungen der Antwortstufen dürfen nicht veröffentlicht werden. itemWeight-Property je Konzept (1-5) ermöglicht eine spätere Auswertung. Teilfrage 2_a nutzt die eigene Skala BaasisHaeufigkeitZeit5CS."
* ^url = "https://bih-cei.github.io/PCOR-MII/CodeSystem/baasis-haeufigkeit-5"
* insert PR_CS_VS_Version
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* ^content = #complete
* ^property[+].code = #itemWeight
* ^property[=].uri = "http://hl7.org/fhir/concept-properties#itemWeight"
* ^property[=].description = "Numerischer Ordinalwert (1-5); Stufe n = n-te Antwortoption in aufsteigender Reihenfolge."
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
* #stufe-5 "Stufe 5"
  * ^property[+].code = #itemWeight
  * ^property[=].valueDecimal = 5

ValueSet: BaasisHaeufigkeit5VS
Id: baasis-haeufigkeit-5-vs
Title: "BAASIS Häufigkeit 5-stufig"
Description: "Neutral benannte 5-stufige Anzahl-Skala der BAASIS-Teilfragen 1A_a und 1B_a (Stufe 1 bis Stufe 5). Metadata-only, siehe BaasisHaeufigkeit5CS."
* ^url = "https://bih-cei.github.io/PCOR-MII/ValueSet/baasis-haeufigkeit-5-vs"
* insert PR_CS_VS_Version
* ^status = #draft
* ^experimental = true
* include codes from system BaasisHaeufigkeit5CS
* ^expansion.timestamp = "2026-11-05T00:00:00Z"
* ^expansion.parameter[0].name = "used-codesystem"
* ^expansion.parameter[0].valueUri = "https://bih-cei.github.io/PCOR-MII/CodeSystem/baasis-haeufigkeit-5|0.9.0"
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

CodeSystem: BaasisHaeufigkeitZeit5CS
Id: baasis-haeufigkeit-zeit-5
Title: "BAASIS Häufigkeit Zeitabweichung 5-stufig (Codes)"
Description: "Neutral benannte 5-stufige Häufigkeitsskala der BAASIS-Teilfrage 2_a (Stufe 1 bis Stufe 5). Laut Item Level Dictionary ist diese Skala nicht die Anzahl-Skala der Teilfragen 1A_a/1B_a, sondern eine Raten-Skala (von einmalig bis fast täglich); deshalb ein eigenes CodeSystem, damit die Stufen nicht als dieselbe Skala ausgewertet werden. Die offizielle BAASIS-Erläuterung nennt für alle drei Teilfragen dieselben fünf Anzahl-Kategorien — die Abweichung ist gegen den lizenzierten deutschen Bogen (Version 2021) zu prüfen. METADATA-ONLY: Die Originalbezeichnungen der Antwortstufen dürfen nicht veröffentlicht werden. itemWeight-Property je Konzept (1-5)."
* ^url = "https://bih-cei.github.io/PCOR-MII/CodeSystem/baasis-haeufigkeit-zeit-5"
* insert PR_CS_VS_Version
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* ^content = #complete
* ^property[+].code = #itemWeight
* ^property[=].uri = "http://hl7.org/fhir/concept-properties#itemWeight"
* ^property[=].description = "Numerischer Ordinalwert (1-5); Stufe n = n-te Antwortoption in aufsteigender Häufigkeit."
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
* #stufe-5 "Stufe 5"
  * ^property[+].code = #itemWeight
  * ^property[=].valueDecimal = 5

ValueSet: BaasisHaeufigkeitZeit5VS
Id: baasis-haeufigkeit-zeit-5-vs
Title: "BAASIS Häufigkeit Zeitabweichung 5-stufig"
Description: "Neutral benannte 5-stufige Häufigkeitsskala der BAASIS-Teilfrage 2_a (Stufe 1 bis Stufe 5). Metadata-only, siehe BaasisHaeufigkeitZeit5CS."
* ^url = "https://bih-cei.github.io/PCOR-MII/ValueSet/baasis-haeufigkeit-zeit-5-vs"
* insert PR_CS_VS_Version
* ^status = #draft
* ^experimental = true
* include codes from system BaasisHaeufigkeitZeit5CS
* ^expansion.timestamp = "2026-11-05T00:00:00Z"
* ^expansion.parameter[0].name = "used-codesystem"
* ^expansion.parameter[0].valueUri = "https://bih-cei.github.io/PCOR-MII/CodeSystem/baasis-haeufigkeit-zeit-5|0.9.0"
* ^expansion.contains[0].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/baasis-haeufigkeit-zeit-5"
* ^expansion.contains[=].code = #stufe-1
* ^expansion.contains[=].display = "Stufe 1"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/baasis-haeufigkeit-zeit-5"
* ^expansion.contains[=].code = #stufe-2
* ^expansion.contains[=].display = "Stufe 2"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/baasis-haeufigkeit-zeit-5"
* ^expansion.contains[=].code = #stufe-3
* ^expansion.contains[=].display = "Stufe 3"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/baasis-haeufigkeit-zeit-5"
* ^expansion.contains[=].code = #stufe-4
* ^expansion.contains[=].display = "Stufe 4"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/baasis-haeufigkeit-zeit-5"
* ^expansion.contains[=].code = #stufe-5
* ^expansion.contains[=].display = "Stufe 5"

// ─────────────────────────────────────────────────────────────────────────────
// BAASIS — Questionnaire (metadata-only)
// ─────────────────────────────────────────────────────────────────────────────

Instance: BAASIS
InstanceOf: Questionnaire
Usage: #definition
Title: "BAASIS — Adhärenz gegenüber immunsuppressiver Medikation (NTx, metadata-only)"
Description: "Basel Assessment of Adherence to Immunosuppressive Medications Scale, 10 Variablen aus dem NTx-Dictionary (Kategorie TCH), Fassung Written self-report der Version 2021 mit den drei Phasen der ABC-Taxonomie: Implementierung (1A, 1B, 2, 3), Persistenz (4), Initiierung (5, 5_a). **Metadata-only:** Struktur, `linkId`s, Typen und Bedingungen sind abgebildet, Itemwortlaut und Antwortbezeichnungen bewusst nicht (Rechteinhaber Universität Basel). Kein Gesamtscore; die drei Phasen werden getrennt bewertet."
// Selbstauskunfts-PRO -> MII-PRO-Profil (nicht ISiKFormularDefinition, die nur für Nicht-PRO-Bögen gilt).
* meta.profile = $mii-pro-questionnaire
* url = "https://bih-cei.github.io/PCOR-MII/Questionnaire/BAASIS"
* name = "BAASIS"
* language = #de-DE
* insert Version
* code[+] = PcorQuestionnaireCatalogueCS#baasis "BAASIS"
* status = #draft
* experimental = true
* subjectType = #Patient
* date = "2026-11-05"
* publisher = "BIH-CEI"
* copyright = "METADATA-ONLY: BAASIS © Universität Basel. Diese Instanz bildet ausschließlich Struktur, linkIds, Typen und Bedingungen ab. Item-Texte sind neutrale, selbst formulierte Labels, die Antwortstufen sind neutral benannt (Stufe 1-5). Eine Veröffentlichung der konkreten Items einschließlich Antwortmöglichkeiten ist nicht erlaubt; wissenschaftliche Nutzung ohne Pharma-Beteiligung ist kostenfrei; jedes Zentrum benötigt eine eigene Lizenzvereinbarung. Bezug: https://baasis.nursing.unibas.ch/how-to-obtain (Erlaubnis je Projekt; Publikationen zitieren Denhaerynck et al. 2023, Haupenthal et al. 2025 und die Website; Nutzung verpflichtet zur Datenweitergabe für das Validierungsprojekt der Uni Basel). Nur der PCOR-MII-eigene FHIR-Inhalt unterliegt der Repository-Lizenz (CC-BY-4.0)."
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
* extension[=].valueMarkdown = "**Designentscheidungen:** (1) **Metadata-only** nach dem Muster des [WAI](WAI.html): Struktur, `linkId`s, Typen und Bedingungen sind abgebildet; Item-Texte sind neutrale Labels, Antwortstufen neutral benannt (Rechteinhaber Universität Basel, Veröffentlichung der Items nicht erlaubt, jedes Zentrum braucht eine eigene Lizenzvereinbarung). (2) **Kein Gesamtscore:** Die offizielle Auswertung bewertet die drei Phasen der ABC-Taxonomie getrennt — Implementierungsproblem bei „ja“ in 1A, 1B, 2 oder 3, Nicht-Persistenz bei „ja“ in 4, Nicht-Initiierung bei „ja“ in 5 und „nein“ in 5_a; nur dokumentiert, nicht als Ausdruck ausgeliefert. Der PCOR-MII-Auslöser für den ABQ („ja“ in 1A, 2, 3 oder 4) entspricht Implementierungs- oder Persistenzproblem. (3) **Bedingungen:** 1A_a bei 1A = ja, 1B bei 1A = ja, 1B_a bei 1B = ja, 2_a bei 2 = ja, 5_a bei 5 = ja; Items 1A–3 blicken 4 Wochen zurück, 4 und 5 ein Jahr. (4) **Item 5 ist seit der Version 2020 offizieller Bestandteil** (Initiierung), kein PCOR-MII-Zusatz. (5) **Zwei Häufigkeitsskalen:** 1A_a/1B_a zählen Ereignisse, 2_a ist laut Dictionary eine Raten-Skala und hat deshalb ein eigenes ValueSet; die offizielle Erläuterung nennt für alle drei dieselben Anzahl-Kategorien, die Abweichung ist gegen den lizenzierten deutschen Bogen zu prüfen. (6) **Keine Instrumenten-Codes:** Recherche in LOINC 2.83 und SNOMED CT (2026-11-05) ohne Treffer; LOINC 71799-1 ist ein generisches Adhärenz-Konzept, kein BAASIS-Panel. Details: <https://bih-cei.github.io/PCOR-MII/Designentscheidungen.html>"

* item[+]
  * linkId = "BAASIS1A"
  * code[+] = PcorItemDictionaryCS#BAASIS1A
  * text = "Erfasst: Auslassen einer Dosis der immunsuppressiven Medikation in den letzten 4 Wochen (Konstrukt Einnahme-Adhärenz)."
  * type = #choice
  * insert JaNeinSnomed

* item[+]
  * linkId = "BAASIS1A_a"
  * code[+] = PcorItemDictionaryCS#BAASIS1A_a
  * text = "Erfasst: Häufigkeit des Auslassens in den letzten 4 Wochen, 5 Stufen (nur bei 1A = ja)."
  * type = #choice
  * answerValueSet = Canonical(BaasisHaeufigkeit5VS)
  * enableWhen[+]
    * question = "BAASIS1A"
    * operator = #=
    * answerCoding = $SCT#373066001

* item[+]
  * linkId = "BAASIS1B"
  * code[+] = PcorItemDictionaryCS#BAASIS1B
  * text = "Erfasst: Auslassen von zwei oder mehr aufeinanderfolgenden Dosen in den letzten 4 Wochen (nur bei 1A = ja)."
  * type = #choice
  * insert JaNeinSnomed
  * enableWhen[+]
    * question = "BAASIS1A"
    * operator = #=
    * answerCoding = $SCT#373066001

* item[+]
  * linkId = "BAASIS1B_a"
  * code[+] = PcorItemDictionaryCS#BAASIS1B_a
  * text = "Erfasst: Häufigkeit des mehrfachen Auslassens in Folge, 5 Stufen (nur bei 1B = ja)."
  * type = #choice
  * answerValueSet = Canonical(BaasisHaeufigkeit5VS)
  * enableWhen[+]
    * question = "BAASIS1B"
    * operator = #=
    * answerCoding = $SCT#373066001

* item[+]
  * linkId = "BAASIS2"
  * code[+] = PcorItemDictionaryCS#BAASIS2
  * text = "Erfasst: Abweichung vom vorgesehenen Einnahmezeitpunkt um mehr als zwei Stunden in den letzten 4 Wochen (Konstrukt Timing-Adhärenz)."
  * type = #choice
  * insert JaNeinSnomed

* item[+]
  * linkId = "BAASIS2_a"
  * code[+] = PcorItemDictionaryCS#BAASIS2_a
  * text = "Erfasst: Häufigkeit der Zeitabweichung in den letzten 4 Wochen, 5 Stufen als Raten-Skala (nur bei 2 = ja)."
  * type = #choice
  * answerValueSet = Canonical(BaasisHaeufigkeitZeit5VS)
  * enableWhen[+]
    * question = "BAASIS2"
    * operator = #=
    * answerCoding = $SCT#373066001

* item[+]
  * linkId = "BAASIS3"
  * code[+] = PcorItemDictionaryCS#BAASIS3
  * text = "Erfasst: eigenmächtige Änderung der verordneten Dosis in den letzten 4 Wochen (Konstrukt Dosis-Adhärenz)."
  * type = #choice
  * insert JaNeinSnomed

* item[+]
  * linkId = "BAASIS4"
  * code[+] = PcorItemDictionaryCS#BAASIS4
  * text = "Erfasst: eigenmächtiges Absetzen eines immunsuppressiven Medikaments im letzten Jahr (Konstrukt Persistenz)."
  * type = #choice
  * insert JaNeinSnomed

* item[+]
  * linkId = "BAASIS5"
  * code[+] = PcorItemDictionaryCS#BAASIS5
  * text = "Erfasst: Neuverordnung eines neuen Medikaments im letzten Jahr (Eingangsfrage zur Initiierung, Item 5 seit Version 2020)."
  * type = #choice
  * insert JaNeinSnomed

* item[+]
  * linkId = "BAASIS5_a"
  * code[+] = PcorItemDictionaryCS#BAASIS5_a
  * text = "Erfasst: Einlösen der Neuverordnung und Beginn der Einnahme (nur bei 5 = ja; Konstrukt Initiierung — „nein“ bedeutet Nicht-Initiierung)."
  * type = #choice
  * insert JaNeinSnomed
  * enableWhen[+]
    * question = "BAASIS5"
    * operator = #=
    * answerCoding = $SCT#373066001
