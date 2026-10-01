// ─────────────────────────────────────────────────────────────────────────────
// UKHD-PT — Vorbehandlung (UKHD-Zusatzitems AN)
// Quelle: PCOR-MII Item Level Dictionary, Entitaet AN, Gruppe UKHD-PT
//   (DOMAIN *Past Treatment*, Kategorie TCH).
//
// EINER VON SECHS BOEGEN DER UKHD-ZUSATZITEMS AN. Jede Dictionary-Gruppe ist
//   ein eigenes Questionnaire (entschieden 01.10.2026, vorher ein Sammelbogen
//   UKHD-AN): Die Gruppen sind kein gemeinsames Instrument — das UKHD-Praefix
//   ist ein ZUSAMMENSTELLUNGS-ETIKETT des Dictionary, keine Instrumenten- oder
//   Autorenschaftsangabe. Die Handanweisung des Master-Excel definiert die
//   INSTRUMENT-Spalte als Auswahl des Erhebungswerkzeugs durch die Standorte;
//   die Gruppe ist zugleich die Einheit, in der Herkunft und Rechte geklaert
//   werden. Gemeinsame Entscheidungen (Sprache, TIMING, Wortlauttreue,
//   linkId-Regel) stehen auf der Seite UKHD-Zusatzitems; Gruppenspezifisches
//   in der designNote dieser Instanz.
//
// RECHTELAGE: keine dokumentierte Freigabe, Herkunft des Wortlauts ungeklaert —
//   siehe copyright. status = draft, experimental = true; bei Einschraenkung
//   Umstellung auf metadata-only (Muster WAI).
// ─────────────────────────────────────────────────────────────────────────────

// ── UKHD-PT: bdkm15 ──────────────────────────────────────────────────────────
// KEIN ordinalValue — NOMINAL, und zwar aus zwei Gruenden. Erstens sind die
//   drei Stufen keine Menge, sondern ZEITBEZUEGE (nie / frueher / jetzt); „2"
//   ist nicht doppelt so viel Behandlung wie „1". Zweitens ist die Skala nicht
//   erschoepfend geordnet: Wer frueher UND jetzt in Behandlung ist, findet
//   keine eigene Stufe und muss sich fuer „zurzeit" entscheiden — damit faellt
//   genau die Information weg, die eine Ordnung tragen muesste.
CodeSystem: UkhdAnPsychotherapieCS
Id: ukhd-an-psychotherapie
Title: "UKHD-AN Psychotherapeutische Behandlung, frueher/aktuell (Codes)"
Description: "Drei Zeitbezüge der psychotherapeutischen Behandlung (`bdkm15`): noch nie, früher, zurzeit. Nominale Skala — bewusst ohne `ordinalValue`."
* insert PR_CS_VS_Version
* ^url = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-an-psychotherapie"
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* #0 "noch nie"
* #1 "früher"
* #2 "zurzeit in Behandlung"

ValueSet: UkhdAnPsychotherapieVS
Id: ukhd-an-psychotherapie-vs
Title: "UKHD-AN Psychotherapeutische Behandlung, frueher/aktuell"
Description: "Drei Zeitbezüge der psychotherapeutischen Behandlung (`bdkm15`)."
* insert PR_CS_VS_Version
* ^url = "https://bih-cei.github.io/PCOR-MII/ValueSet/ukhd-an-psychotherapie-vs"
* ^status = #draft
* ^experimental = true
* include codes from system UkhdAnPsychotherapieCS
* ^expansion.timestamp = "2026-10-01T00:00:00Z"
* ^expansion.parameter[0].name = "used-codesystem"
* ^expansion.parameter[0].valueUri = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-an-psychotherapie|0.3.0"
* ^expansion.contains[0].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-an-psychotherapie"
* ^expansion.contains[=].code = #0
* ^expansion.contains[=].display = "noch nie"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-an-psychotherapie"
* ^expansion.contains[=].code = #1
* ^expansion.contains[=].display = "früher"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-an-psychotherapie"
* ^expansion.contains[=].code = #2
* ^expansion.contains[=].display = "zurzeit in Behandlung"

// ── UKHD-PT: bdkm16 ──────────────────────────────────────────────────────────
// MIT ordinalValue — ORDINAL. Die vier Stufen sind eine monoton steigende
//   Haeufigkeit (gar nicht < einmalig < zweimalig < drei oder mehrfach), und
//   die letzte Stufe ist offen nach oben. Das ist eine echte Rangskala.
//
// ACHTUNG BEI DER AUSWERTUNG: ordinalValue traegt die DICTIONARY-CODES 1-4,
//   nicht die Besuchszahl. „gar nicht" ist also 1, nicht 0. Wer die Werte als
//   Anzahl Arztbesuche liest, verschiebt die Skala um eins; eine
//   zaehlbasierte Auswertung braucht die Abbildung 1->0, 2->1, 3->2, 4->3+.
CodeSystem: UkhdAnArztbesucheCS
Id: ukhd-an-arztbesuche
Title: "UKHD-AN Arztbesuche in den letzten 4 Wochen (Codes)"
Description: "Vierstufige Häufigkeitsskala der Arztbesuche in den letzten vier Wochen (`bdkm16`). `ordinalValue`-Property je Konzept — die Werte sind die Dictionary-Codes 1–4 und damit Rangplätze, **nicht** Besuchszahlen (`gar nicht` = 1, nicht 0)."
* insert PR_CS_VS_Version
* ^url = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-an-arztbesuche"
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* ^property[+].code = #ordinalValue
* ^property[=].uri = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* ^property[=].description = "Numerischer Ordinalwert (1-4, Dictionary-Codes — kein Besuchszaehler)."
* ^property[=].type = #decimal
* #1 "gar nicht"
  * ^property[+].code = #ordinalValue
  * ^property[=].valueDecimal = 1
* #2 "einmalig"
  * ^property[+].code = #ordinalValue
  * ^property[=].valueDecimal = 2
* #3 "zweimalig"
  * ^property[+].code = #ordinalValue
  * ^property[=].valueDecimal = 3
* #4 "drei oder mehrfach"
  * ^property[+].code = #ordinalValue
  * ^property[=].valueDecimal = 4

ValueSet: UkhdAnArztbesucheVS
Id: ukhd-an-arztbesuche-vs
Title: "UKHD-AN Arztbesuche in den letzten 4 Wochen"
Description: "Vierstufige Häufigkeitsskala der Arztbesuche in den letzten vier Wochen (`bdkm16`), `ordinalValue` 1–4."
* insert PR_CS_VS_Version
* ^url = "https://bih-cei.github.io/PCOR-MII/ValueSet/ukhd-an-arztbesuche-vs"
* ^status = #draft
* ^experimental = true
* include codes from system UkhdAnArztbesucheCS
* ^expansion.timestamp = "2026-10-01T00:00:00Z"
* ^expansion.parameter[0].name = "used-codesystem"
* ^expansion.parameter[0].valueUri = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-an-arztbesuche|0.3.0"
* ^expansion.contains[0].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-an-arztbesuche"
* ^expansion.contains[=].code = #1
* ^expansion.contains[=].display = "gar nicht"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-an-arztbesuche"
* ^expansion.contains[=].code = #2
* ^expansion.contains[=].display = "einmalig"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-an-arztbesuche"
* ^expansion.contains[=].code = #3
* ^expansion.contains[=].display = "zweimalig"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-an-arztbesuche"
* ^expansion.contains[=].code = #4
* ^expansion.contains[=].display = "drei oder mehrfach"

Instance: UKHDPT
InstanceOf: Questionnaire
Usage: #definition
Title: "UKHD-PT — Vorbehandlung (UKHD-Zusatzitems AN)"
Description: "Zwei Items zur Vorbehandlung aus der Dictionary-Gruppe `UKHD-PT`: frühere oder aktuelle psychotherapeutische Behandlung (`bdkm15`) und Arztbesuche in den letzten 4 Wochen (`bdkm16`). Eigenes Questionnaire je Dictionary-Gruppe — die UKHD-Zusatzitems sind kein gemeinsames Instrument; Übersicht auf der Seite [UKHD-Zusatzitems](UKHD-Zusatzitems.html). Kein Score. **Für den Wortlaut liegt keine dokumentierte Freigabe vor, seine Herkunft ist ungeklärt** — gerade hier: Die `bdkm`-Variablen-IDs tragen ein fremdes, im Dictionary nicht erläutertes Kürzelschema."
* meta.profile = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire"
* url = "https://bih-cei.github.io/PCOR-MII/Questionnaire/UKHDPT"
* name = "UKHDPT"
* code[+] = PcorQuestionnaireCatalogueCS#ukhd-pt "UKHD-PT"
* language = #de
* insert Version
* status = #draft
* experimental = true
* subjectType = #Patient
* date = "2026-10-01"
* publisher = "BIH-CEI"
* copyright = "Die Items dieses Bogens sind **vom Standort Heidelberg für die PCOR-MII-Erhebung zusammengestellt** und stammen aus dem PCOR-MII Item Level Dictionary (Entität AN). **Das `UKHD`-Präfix der Dictionary-Gruppe ist ein Zusammenstellungs-Etikett, keine Autorenschaftsangabe: Woher der Wortlaut stammt — eigene Formulierung des Standorts, klinikinterne Dokumentationsbögen oder ein publiziertes Instrument —, ist nicht dokumentiert. Eine Freigabe für die Veröffentlichung liegt ebenfalls nicht dokumentiert vor; beides ist mit dem Standort zu klären.** Die DIZ-Implementierungsliste PCOR-MII führt ausschließlich publizierte Instrumente; die standortspezifischen Itemgruppen von UKHD, UKE und MHH kommen dort nicht vor — es gibt für sie damit weder eine dokumentierte Erlaubnis noch eine dokumentierte Einschränkung. Dass der Wortlaut hier aufgenommen ist, ist eine bewusste Projektentscheidung zur Erprobung und keine geklärte Rechtslage; die Ressource trägt deshalb `status = draft` und `experimental = true`. Ergibt die Rückmeldung des Standorts eine Einschränkung, ist eine Umstellung auf metadata-only vorgesehen (Muster WAI). Nachnutzende müssen die Nutzungsbedingungen für den eigenen Anwendungsfall eigenständig prüfen. Nur der PCOR-MII-eigene FHIR-Inhalt (Struktur, Codes, Kodierung) unterliegt der Repository-Lizenz (CC-BY-4.0)."
* extension[+].url = $designNote
* extension[=].valueMarkdown = "Dictionary-Gruppe `UKHD-PT`, DOMAIN *Past Treatment*, Kategorie TCH. **Zwei Auffälligkeiten, die eine fachliche Prüfung brauchen:** (a) Die Variablen-IDs `bdkm15`/`bdkm16` passen zu keiner anderen Variable dieser Gruppen und deuten auf ein anderes Erhebungsinstrument als Ursprung — das Präfix ist im Dictionary nicht erläutert. (b) `bdkm16` fragt nach **Arztbesuchen**, nicht nach Psychotherapie, steht aber in der Gruppe *Past Treatment* mit 4-Wochen-Recall; inhaltlich gehört es eher zur Versorgungsinanspruchnahme. **Rechtelage und Herkunft:** siehe `copyright` — das `UKHD`-Präfix ist ein Zusammenstellungs-Etikett, keine Autorenschaftsangabe; die Frage an den Standort ist eine Herkunftsfrage. Gemeinsame Entscheidungen aller sechs UKHD-Zusatzbögen (Sprache `de` ohne Übersetzungsebene, `TIMING` nicht als FHIR-Struktur, Wortlauttreue nach ADR-010, `linkId` = Dictionary-Variablen-ID nach ADR-008, kein Score, Ja/Nein über `DemJaNeinVS`) stehen auf der Seite [UKHD-Zusatzitems](UKHD-Zusatzitems.html)."

* item[+]
  * linkId = "bdkm15"
  * code[+] = PcorItemDictionaryCS#bdkm15
  * text = "Waren Sie früher oder sind Sie zurzeit in psychotherapeutischer Behandlung?"
  * type = #choice
  * answerValueSet = Canonical(UkhdAnPsychotherapieVS)
  * extension[+].url = $designNote
  * extension[=].valueMarkdown = "Überschneidet sich inhaltlich mit `treatment_outpatient` in `UKHD-CT` („Sind Sie zurzeit in psychotherapeutischer Behandlung?“). Beide Items bleiben erhalten, weil beide erhoben werden und sich im Zeitbezug unterscheiden: `bdkm15` nur zur Aufnahme (`TIMING` i) und mit Vorgeschichte, `treatment_outpatient` zu jedem Termin (`TIMING` a) und mit Setting. Für die Aufnahme liefern sie teilweise dieselbe Information in zwei Skalen — **im Dictionary zu prüfen**, ob das beabsichtigt ist."
* item[+]
  * linkId = "bdkm16"
  * code[+] = PcorItemDictionaryCS#bdkm16
  * text = "Wie oft haben Sie in den letzten 4 Wochen einen Arzt aufgesucht?"
  * type = #choice
  * answerValueSet = Canonical(UkhdAnArztbesucheVS)
