// ─────────────────────────────────────────────────────────────────────────────
// UKHD-CT — Aktuelle Behandlung (UKHD-Zusatzitems AN)
// Quelle: PCOR-MII Item Level Dictionary, Entitaet AN, Gruppe UKHD-CT
//   (DOMAIN *Current Treatment*, Kategorie TCH).
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

// ── UKHD-CT: treatment_outpatient ────────────────────────────────────────────
// KEIN ordinalValue — die Skala MISCHT ZWEI ACHSEN. Stufen 1 und 2 sagen
//   beide „nein" und unterscheiden sich nur darin, ob eine Behandlung gesucht
//   oder geplant ist; Stufen 3 und 4 sagen beide „ja" und unterscheiden das
//   SETTING (ambulant gegen stationaer/teilstationaer). Eine Zahl kann das
//   nicht tragen: Der Schritt 2->3 ist ein Statuswechsel, der Schritt 3->4 ein
//   Settingwechsel. Eine Dichotomisierung (1,2 = nein / 3,4 = ja) ist aus den
//   Codes jederzeit ableitbar und inhaltlich belastbar — ein Summenwert nicht.
//
// Die Displays uebernehmen den Wortlaut des Dictionary UNVERAENDERT,
//   einschliesslich der dort uneinheitlichen Gross-/Kleinschreibung von
//   „Ja" (Stufe 3) und „ja" (Stufe 4).
CodeSystem: UkhdAnBehandlungsstatusCS
Id: ukhd-an-behandlungsstatus
Title: "UKHD-AN Aktueller Behandlungsstatus (Codes)"
Description: "Vier Stufen des aktuellen psychotherapeutischen Behandlungsstatus (`treatment_outpatient`). Bewusst ohne `ordinalValue`: Die Skala mischt Behandlungsstatus (Stufen 1/2) und Setting (Stufen 3/4)."
* insert PR_CS_VS_Version
* ^url = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-an-behandlungsstatus"
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* #1 "nein"
* #2 "nein, aber es ist eine Behandlung geplant oder ich befinde mich noch auf der Suche"
* #3 "Ja, ich befinde mich zurzeit in ambulanter psychotherapeutischer Behandlung"
* #4 "ja, ich befinde mich aktuell in einer klinischen (stationären) oder tagesklinischen (teilstationären) Behandlung"

ValueSet: UkhdAnBehandlungsstatusVS
Id: ukhd-an-behandlungsstatus-vs
Title: "UKHD-AN Aktueller Behandlungsstatus"
Description: "Vier Stufen des aktuellen psychotherapeutischen Behandlungsstatus (`treatment_outpatient`)."
* insert PR_CS_VS_Version
* ^url = "https://bih-cei.github.io/PCOR-MII/ValueSet/ukhd-an-behandlungsstatus-vs"
* ^status = #draft
* ^experimental = true
* include codes from system UkhdAnBehandlungsstatusCS
* ^expansion.timestamp = "2026-10-01T00:00:00Z"
* ^expansion.parameter[0].name = "used-codesystem"
* ^expansion.parameter[0].valueUri = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-an-behandlungsstatus|0.3.0"
* ^expansion.contains[0].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-an-behandlungsstatus"
* ^expansion.contains[=].code = #1
* ^expansion.contains[=].display = "nein"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-an-behandlungsstatus"
* ^expansion.contains[=].code = #2
* ^expansion.contains[=].display = "nein, aber es ist eine Behandlung geplant oder ich befinde mich noch auf der Suche"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-an-behandlungsstatus"
* ^expansion.contains[=].code = #3
* ^expansion.contains[=].display = "Ja, ich befinde mich zurzeit in ambulanter psychotherapeutischer Behandlung"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-an-behandlungsstatus"
* ^expansion.contains[=].code = #4
* ^expansion.contains[=].display = "ja, ich befinde mich aktuell in einer klinischen (stationären) oder tagesklinischen (teilstationären) Behandlung"

Instance: UKHDCT
InstanceOf: Questionnaire
Usage: #definition
Title: "UKHD-CT — Aktuelle Behandlung (UKHD-Zusatzitems AN)"
Description: "Ein Item zum aktuellen Behandlungsstatus aus der Dictionary-Gruppe `UKHD-CT` (`treatment_outpatient`). Eigenes Questionnaire je Dictionary-Gruppe; Übersicht auf der Seite [UKHD-Zusatzitems](UKHD-Zusatzitems.html). Kein Score. **Für den Wortlaut liegt keine dokumentierte Freigabe vor, seine Herkunft ist ungeklärt.**"
* meta.profile = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire"
* url = "https://bih-cei.github.io/PCOR-MII/Questionnaire/UKHDCT"
* name = "UKHDCT"
* code[+] = PcorQuestionnaireCatalogueCS#ukhd-ct "UKHD-CT"
* language = #de
* insert Version
* status = #draft
* experimental = true
* subjectType = #Patient
* date = "2026-10-01"
* publisher = "BIH-CEI"
* copyright = "Die Items dieses Bogens sind **vom Standort Heidelberg für die PCOR-MII-Erhebung zusammengestellt** und stammen aus dem PCOR-MII Item Level Dictionary (Entität AN). **Das `UKHD`-Präfix der Dictionary-Gruppe ist ein Zusammenstellungs-Etikett, keine Autorenschaftsangabe: Woher der Wortlaut stammt — eigene Formulierung des Standorts, klinikinterne Dokumentationsbögen oder ein publiziertes Instrument —, ist nicht dokumentiert. Eine Freigabe für die Veröffentlichung liegt ebenfalls nicht dokumentiert vor; beides ist mit dem Standort zu klären.** Die DIZ-Implementierungsliste PCOR-MII führt ausschließlich publizierte Instrumente; die standortspezifischen Itemgruppen von UKHD, UKE und MHH kommen dort nicht vor — es gibt für sie damit weder eine dokumentierte Erlaubnis noch eine dokumentierte Einschränkung. Dass der Wortlaut hier aufgenommen ist, ist eine bewusste Projektentscheidung zur Erprobung und keine geklärte Rechtslage; die Ressource trägt deshalb `status = draft` und `experimental = true`. Ergibt die Rückmeldung des Standorts eine Einschränkung, ist eine Umstellung auf metadata-only vorgesehen (Muster WAI). Nachnutzende müssen die Nutzungsbedingungen für den eigenen Anwendungsfall eigenständig prüfen. Nur der PCOR-MII-eigene FHIR-Inhalt (Struktur, Codes, Kodierung) unterliegt der Repository-Lizenz (CC-BY-4.0)."
* extension[+].url = $designNote
* extension[=].valueMarkdown = "Dictionary-Gruppe `UKHD-CT`, DOMAIN *Current Treatment*, Kategorie TCH — ein Item. **Rechtelage und Herkunft:** siehe `copyright` — das `UKHD`-Präfix ist ein Zusammenstellungs-Etikett, keine Autorenschaftsangabe; die Frage an den Standort ist eine Herkunftsfrage. Gemeinsame Entscheidungen aller sechs UKHD-Zusatzbögen (Sprache `de` ohne Übersetzungsebene, `TIMING` nicht als FHIR-Struktur, Wortlauttreue nach ADR-010, `linkId` = Dictionary-Variablen-ID nach ADR-008, kein Score, Ja/Nein über `DemJaNeinVS`) stehen auf der Seite [UKHD-Zusatzitems](UKHD-Zusatzitems.html)."

* item[+]
  * linkId = "treatment_outpatient"
  * code[+] = PcorItemDictionaryCS#treatment_outpatient
  * text = "Sind Sie zurzeit in psychotherapeutischer Behandlung?"
  * type = #choice
  * answerValueSet = Canonical(UkhdAnBehandlungsstatusVS)
  * extension[+].url = $designNote
  * extension[=].valueMarkdown = "**Der Variablenname ist irreführend:** `treatment_outpatient` legt eine Frage nach ambulanter Behandlung nahe, aber Stufe 4 der Antwortskala erfasst ausdrücklich **klinische (stationäre) oder tagesklinische (teilstationäre)** Behandlung. Das Item fragt also den Behandlungsstatus insgesamt ab, nicht nur den ambulanten. Der Name bleibt als `linkId` und `item.code` stehen, weil er die Dictionary-Variable ist — **aber er darf nicht als Bedeutungsangabe gelesen werden.** Zur Überschneidung mit `bdkm15` siehe dort. Zur bewussten Entscheidung gegen `ordinalValue` siehe das CodeSystem `ukhd-an-behandlungsstatus`."
