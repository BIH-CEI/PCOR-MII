// ─────────────────────────────────────────────────────────────────────────────
// MTSOSD-R59 — Symptomfragebogen zur Symptomlast (59 Symptome + 3 Freitext), Entität NTx
// Handgepflegtes FSH: die Wiederholung über 59 Symptome läuft über parametrisierte RuleSets
//   (Symptom, SymptomGeschlecht, Freitext) am Ende der Datei — eine Stelle für den Aufbau.
// Quelle: PCOR Item Level Dictionary, Blatt NTx (Kategorie MSE), Variablen
// MTSOSDR59_01 … MTSOSDR59_62a (126 Variablen).
//
// ⚠️ METADATA-ONLY. Rechteinhaber ist die KU Leuven (Kontakt: joke.willems@kuleuven.be).
//    Eine Veröffentlichung der konkreten Items einschließlich Antwortmöglichkeiten ist
//    nicht erlaubt; wissenschaftliche Nutzung ohne Pharma-Beteiligung ist kostenfrei, jedes
//    Zentrum benötigt eine eigene Lizenzvereinbarung. Diese Instanz bildet daher NUR
//    Struktur, linkIds, Typen, Wertebereiche und Bedingungen ab:
//      - Item-Texte sind NEUTRALE Labels ("Erfasst: …"), KEIN Originalwortlaut.
//      - Auftreten-Antworten heißen neutral "Stufe 0" … "Stufe 4" (itemWeight 0-4).
//    Muster: WAI.fsh und UKHD-EDP.fsh im selben Verzeichnis. Die wortgleiche Vollversion
//    kommt nie in dieses Package, sondern über die berechtigte Bezugsquelle.
//
// STRUKTUR: je Symptom zwei Items — Auftreten (choice, 5 Stufen, MtsosdR59Auftreten5VS)
//   und Belastung (choice, 5 Stufen, MtsosdR59Belastung5VS, Suffix "a"). Belastung nur
//   anzeigen, wenn Auftreten != Stufe 0.
//   Zeitraum laut Dictionary: letzte 4 Wochen. Symptome 60-62 sind Freitext (type text);
//   ihre Belastung erscheint, sobald ein Text vorliegt (das Dictionary formuliert die
//   Bedingung dort unscharf).
//
// BEDINGUNGEN: Symptom 27 ist geschlechtsspezifisch (_male / _female). Die Steuerung über
//   das Geschlecht (Q_SEX) ist eine Cross-Questionnaire-Bedingung und hier NICHT als
//   enableWhen modelliert, sondern vom aufrufenden Prozess zu leisten.
//
// BELASTUNGSSKALA: Das Dictionary verweist für die Belastung auf das Blatt "Visual Scale
//   MTSOSD-R59" des Master-Excels. Die dort eingebettete Grafik zeigt eine Linie mit den
//   Stufen 0 bis 4 und zwei verbalen Ankern an den Enden — also die 5-stufige Likert-Skala
//   des Originals (Dobbels et al. 2008), keine kontinuierliche VAS. Modelliert als eigene
//   neutral benannte Skala (itemWeight 0-4); die Ankertexte werden nicht veröffentlicht.
//
// ERHEBUNGSPLAN: Laut Dictionary wurde der KOMPLETTE Bogen erhoben. Das Blatt Domain
//   Overview führt unter "Medication Side Effects" nur die Domänen Tremor und Diarrhoe
//   (Prio A, quartalsweise, Telemonitoring wöchentlich) plus drei TBD-Zeilen; ob der ganze
//   Bogen oder nur diese zwei Symptome (Nr. 16 und 30) ins Monitoring gehen, ist dort offen
//   ("komplette Nebenwirkungen? Oder trennen?", Blatt Comments and Questions). Diese
//   Ressource ist in beiden Fällen die Basis; ein Zuschnitt würde per derivedFrom abgeleitet.
//
// SCORING: Kein Score ausgeliefert (calculatable = false), und zwar bewusst: Die
//   Originalpublikation (Dobbels et al. 2008, Transpl Int 21:764) hält eine Summe über die
//   Items für nicht gerechtfertigt (keine Faktorstruktur) und nennt als einzig korrekten
//   Weg zu einem Gesamtwert die Ridit-Analyse ("Relative to an Identified Distribution",
//   Sermeus & Delesie 1996): je Item und Patient ein Wert 0-1, der angibt, mit welcher
//   Wahrscheinlichkeit eine zufällig gezogene Person der Referenzstichprobe niedriger
//   antwortet. Ein Ridit hängt damit von der Kohorte ab und kann nicht als Ausdruck am
//   Bogen stehen. itemWeight 0-4 bleibt gesetzt: für Deskription je Item und als
//   Eingabe einer Ridit-Berechnung in der Auswertung.
//
// Terminologie-Recherche (2026-11-05, LOINC 2.83 / SNOMED CT INT 2026-10 via MII-Ontoserver):
//   kein LOINC-Panel und kein SNOMED-Konzept für das Instrument vorhanden. Questionnaire.code
//   trägt deshalb nur den PCOR-Katalogcode.
// ─────────────────────────────────────────────────────────────────────────────

CodeSystem: MtsosdR59Auftreten5CS
Id: mtsosd-r59-auftreten-5
Title: "MTSOSD-R59 Auftreten 5-stufig (Codes)"
Description: "Neutral benannte 5-stufige Auftretensskala des MTSOSD-R59 (Stufe 0 bis Stufe 4). METADATA-ONLY: Die Originalbezeichnungen der Antwortstufen dürfen nicht veröffentlicht werden. Stufe 0 = Symptom nicht aufgetreten. itemWeight-Property je Konzept (0-4) ermöglicht eine spätere Auswertung."
* ^url = "https://bih-cei.github.io/PCOR-MII/CodeSystem/mtsosd-r59-auftreten-5"
* insert PR_CS_VS_Version
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* ^content = #complete
* ^property[+].code = #itemWeight
* ^property[=].uri = "http://hl7.org/fhir/concept-properties#itemWeight"
* ^property[=].description = "Numerischer Ordinalwert (0-4); 0 = Symptom nicht aufgetreten."
* ^property[=].type = #decimal
* #stufe-0 "Stufe 0"
  * ^property[+].code = #itemWeight
  * ^property[=].valueDecimal = 0
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
* ^expansion.parameter[0].valueUri = "https://bih-cei.github.io/PCOR-MII/CodeSystem/mtsosd-r59-auftreten-5|0.9.0"
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

CodeSystem: MtsosdR59Belastung5CS
Id: mtsosd-r59-belastung-5
Title: "MTSOSD-R59 Belastung 5-stufig (Codes)"
Description: "Neutral benannte 5-stufige Belastungsskala des MTSOSD-R59 (Stufe 0 bis Stufe 4). Quelle: Blatt Visual Scale MTSOSD-R59 des Item Level Dictionary — eine Linie mit den Stufen 0-4 und zwei verbalen Ankern, entsprechend der Originalskala (Dobbels et al. 2008). METADATA-ONLY: Die Ankertexte dürfen nicht veröffentlicht werden. Stufe 0 = keine Belastung. itemWeight-Property je Konzept (0-4)."
* ^url = "https://bih-cei.github.io/PCOR-MII/CodeSystem/mtsosd-r59-belastung-5"
* insert PR_CS_VS_Version
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* ^content = #complete
* ^property[+].code = #itemWeight
* ^property[=].uri = "http://hl7.org/fhir/concept-properties#itemWeight"
* ^property[=].description = "Numerischer Ordinalwert (0-4); 0 = keine Belastung, 4 = stärkste Belastung."
* ^property[=].type = #decimal
* #stufe-0 "Stufe 0"
  * ^property[+].code = #itemWeight
  * ^property[=].valueDecimal = 0
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

ValueSet: MtsosdR59Belastung5VS
Id: mtsosd-r59-belastung-5-vs
Title: "MTSOSD-R59 Belastung 5-stufig"
Description: "Neutral benannte 5-stufige Belastungsskala des MTSOSD-R59 (Stufe 0 bis Stufe 4). Metadata-only, siehe MtsosdR59Belastung5CS."
* ^url = "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-belastung-5-vs"
* insert PR_CS_VS_Version
* ^status = #draft
* ^experimental = true
* include codes from system MtsosdR59Belastung5CS
* ^expansion.timestamp = "2026-11-05T00:00:00Z"
* ^expansion.parameter[0].name = "used-codesystem"
* ^expansion.parameter[0].valueUri = "https://bih-cei.github.io/PCOR-MII/CodeSystem/mtsosd-r59-belastung-5|0.9.0"
* ^expansion.contains[0].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/mtsosd-r59-belastung-5"
* ^expansion.contains[=].code = #stufe-0
* ^expansion.contains[=].display = "Stufe 0"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/mtsosd-r59-belastung-5"
* ^expansion.contains[=].code = #stufe-1
* ^expansion.contains[=].display = "Stufe 1"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/mtsosd-r59-belastung-5"
* ^expansion.contains[=].code = #stufe-2
* ^expansion.contains[=].display = "Stufe 2"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/mtsosd-r59-belastung-5"
* ^expansion.contains[=].code = #stufe-3
* ^expansion.contains[=].display = "Stufe 3"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/mtsosd-r59-belastung-5"
* ^expansion.contains[=].code = #stufe-4
* ^expansion.contains[=].display = "Stufe 4"

// ─────────────────────────────────────────────────────────────────────────────
// MTSOSD-R59 — Questionnaire (metadata-only)
// ─────────────────────────────────────────────────────────────────────────────

Instance: MTSOSDR59
InstanceOf: Questionnaire
Usage: #definition
Title: "MTSOSD-R59 — Symptomlast, 59 Symptome und 3 Freitext (NTx, metadata-only)"
Description: "Symptomfragebogen mit 59 Symptomen und 3 Freitext-Symptomen aus dem NTx-Dictionary (Kategorie MSE). **Metadata-only:** Struktur, `linkId`s, Typen, Wertebereiche und Bedingungen sind abgebildet, Itemwortlaut und Antwortbezeichnungen bewusst nicht (Rechteinhaber KU Leuven). Je Symptom Auftreten (5 Stufen) und Belastung (5 Stufen, Skala 0-4 laut Blatt Visual Scale MTSOSD-R59). Kein Score."
// Selbstauskunfts-PRO -> MII-PRO-Profil (nicht ISiKFormularDefinition, die nur für Nicht-PRO-Bögen gilt).
* meta.profile = $mii-pro-questionnaire
* url = "https://bih-cei.github.io/PCOR-MII/Questionnaire/MTSOSDR59"
* name = "MTSOSDR59"
* language = #de-DE
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
* extension[=].valueMarkdown = "**Designentscheidungen:** (1) **Metadata-only** nach dem Muster des [WAI](WAI.html): Struktur, `linkId`s, Typen, Wertebereiche und Bedingungen sind abgebildet; Item-Texte sind neutrale Labels, Antwortstufen neutral benannt (Rechteinhaber KU Leuven, Veröffentlichung der Items nicht erlaubt, jedes Zentrum braucht eine eigene Lizenzvereinbarung). (2) **Kein Score, bewusst:** Die Originalpublikation (Dobbels et al. 2008) hält eine Summe über die Items für nicht gerechtfertigt und sieht als einzig korrekte Auswertung die Ridit-Analyse vor, ein kohortenrelatives Maß 0–1 je Item, das erst aus einer Stichprobe entsteht und daher nicht als Ausdruck am Bogen stehen kann; `itemWeight` 0-4 ist gesetzt für Deskription und als Eingabe der Ridit-Berechnung. (3) **Belastung** (Suffix `a`) erscheint nur bei Auftreten ungleich Stufe 0, bei Freitext sobald ein Text vorliegt; die Skala ist laut Blatt *Visual Scale MTSOSD-R59* eine Linie mit den Stufen 0–4 und entspricht der Originalskala, modelliert als eigene neutral benannte Fünfer-Skala mit `itemWeight` 0–4. (4) **Symptom 27** ist geschlechtsspezifisch; die Steuerung über Q_SEX ist eine Cross-Questionnaire-Bedingung und nicht als `enableWhen` modelliert. (5) **Keine Instrumenten-Codes:** Recherche in LOINC 2.83 und SNOMED CT (2026-11-05) ohne Treffer für das Instrument. Details: <https://bih-cei.github.io/PCOR-MII/Designentscheidungen.html>"

// Items in Dictionary-Reihenfolge: 01–26, 27 (männlich/weiblich), 28–59, 60–62 Freitext.
* insert Symptom(01)
* insert Symptom(02)
* insert Symptom(03)
* insert Symptom(04)
* insert Symptom(05)
* insert Symptom(06)
* insert Symptom(07)
* insert Symptom(08)
* insert Symptom(09)
* insert Symptom(10)
* insert Symptom(11)
* insert Symptom(12)
* insert Symptom(13)
* insert Symptom(14)
* insert Symptom(15)
* insert Symptom(16)
* insert Symptom(17)
* insert Symptom(18)
* insert Symptom(19)
* insert Symptom(20)
* insert Symptom(21)
* insert Symptom(22)
* insert Symptom(23)
* insert Symptom(24)
* insert Symptom(25)
* insert Symptom(26)
* insert SymptomGeschlecht(male, männlich)
* insert SymptomGeschlecht(female, weiblich)
* insert Symptom(28)
* insert Symptom(29)
* insert Symptom(30)
* insert Symptom(31)
* insert Symptom(32)
* insert Symptom(33)
* insert Symptom(34)
* insert Symptom(35)
* insert Symptom(36)
* insert Symptom(37)
* insert Symptom(38)
* insert Symptom(39)
* insert Symptom(40)
* insert Symptom(41)
* insert Symptom(42)
* insert Symptom(43)
* insert Symptom(44)
* insert Symptom(45)
* insert Symptom(46)
* insert Symptom(47)
* insert Symptom(48)
* insert Symptom(49)
* insert Symptom(50)
* insert Symptom(51)
* insert Symptom(52)
* insert Symptom(53)
* insert Symptom(54)
* insert Symptom(55)
* insert Symptom(56)
* insert Symptom(57)
* insert Symptom(58)
* insert Symptom(59)
* insert Freitext(60)
* insert Freitext(61)
* insert Freitext(62)

// ─────────────────────────────────────────────────────────────────────────────
// Bausteine: je Symptom ein Paar aus Auftreten und Belastung. Der Aufbau steht
// genau einmal hier; die Instanz unten ruft ihn je Symptomnummer auf.
// ─────────────────────────────────────────────────────────────────────────────

// Reguläres Symptom nr (01–59 außer 27): Auftreten + Belastung, Belastung nur bei Auftreten != Stufe 0.
RuleSet: Symptom(nr)
* item[+]
  * linkId = "MTSOSDR59_{nr}"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_{nr}
  * text = "Erfasst: Auftreten von Symptom {nr} (5 Stufen, Zeitraum 4 Wochen)."
  * type = #choice
  * answerValueSet = Canonical(MtsosdR59Auftreten5VS)
* item[+]
  * linkId = "MTSOSDR59_{nr}a"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_{nr}a
  * text = "Erfasst: Belastung durch Symptom {nr} (5 Stufen, 0 = keine Belastung)."
  * type = #choice
  * answerValueSet = Canonical(MtsosdR59Belastung5VS)
  * enableWhen[+]
    * question = "MTSOSDR59_{nr}"
    * operator = #!=
    * answerCoding = MtsosdR59Auftreten5CS#stufe-0

// Symptom 27 in der Geschlechtsvariante sex (male/female); label ist die neutrale Bezeichnung.
// Die Steuerung über Q_SEX liegt außerhalb dieses Questionnaire (siehe Kopfkommentar).
RuleSet: SymptomGeschlecht(sex, label)
* item[+]
  * linkId = "MTSOSDR59_27_{sex}"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_27_{sex}
  * text = "Erfasst: Auftreten von Symptom 27 ({label}) (5 Stufen, Zeitraum 4 Wochen)."
  * type = #choice
  * answerValueSet = Canonical(MtsosdR59Auftreten5VS)
* item[+]
  * linkId = "MTSOSDR59_27a_{sex}"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_27a_{sex}
  * text = "Erfasst: Belastung durch Symptom 27 ({label}) (5 Stufen, 0 = keine Belastung)."
  * type = #choice
  * answerValueSet = Canonical(MtsosdR59Belastung5VS)
  * enableWhen[+]
    * question = "MTSOSDR59_27_{sex}"
    * operator = #!=
    * answerCoding = MtsosdR59Auftreten5CS#stufe-0

// Freitext-Symptom nr (60–62): Text + Belastung, Belastung sobald ein Text vorliegt.
RuleSet: Freitext(nr)
* item[+]
  * linkId = "MTSOSDR59_{nr}"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_{nr}
  * text = "Erfasst: Freitext-Angabe eines weiteren Symptoms ({nr})."
  * type = #text
* item[+]
  * linkId = "MTSOSDR59_{nr}a"
  * code[+] = PcorItemDictionaryCS#MTSOSDR59_{nr}a
  * text = "Erfasst: Belastung durch Symptom {nr} (Freitext) (5 Stufen, 0 = keine Belastung)."
  * type = #choice
  * answerValueSet = Canonical(MtsosdR59Belastung5VS)
  * enableWhen[+]
    * question = "MTSOSDR59_{nr}"
    * operator = #exists
    * answerBoolean = true
