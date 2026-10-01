// ─────────────────────────────────────────────────────────────────────────────
// UKHD-ND — Neue Diagnosen (UKHD-Zusatzitems AN)
// Quelle: PCOR-MII Item Level Dictionary, Entitaet AN, Gruppe UKHD-ND
//   (DOMAIN *New Diagnosis*, Kategorie DCH).
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

Instance: UKHDND
InstanceOf: Questionnaire
Usage: #definition
Title: "UKHD-ND — Neue Diagnosen (UKHD-Zusatzitems AN)"
Description: "Drei Items zu neuen Diagnosen seit der letzten Befragung aus der Dictionary-Gruppe `UKHD-ND`: zwei Ja/Nein-Items für zwei Erhebungszeitpunkte plus ein Freitextitem per `enableWhen` (`any`). Kein Aufnahme-Item — bei Aufnahme erhebt stattdessen [UKHD-D](Questionnaire-UKHDD.html). Eigenes Questionnaire je Dictionary-Gruppe; Übersicht auf der Seite [UKHD-Zusatzitems](UKHD-Zusatzitems.html). Kein Score. **Für den Wortlaut liegt keine dokumentierte Freigabe vor, seine Herkunft ist ungeklärt.**"
* meta.profile = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire"
* url = "https://bih-cei.github.io/PCOR-MII/Questionnaire/UKHDND"
* name = "UKHDND"
* code[+] = PcorQuestionnaireCatalogueCS#ukhd-nd "UKHD-ND"
* language = #de
* insert Version
* status = #draft
* experimental = true
* subjectType = #Patient
* date = "2026-10-01"
* publisher = "BIH-CEI"
* copyright = "Die Items dieses Bogens sind **vom Standort Heidelberg für die PCOR-MII-Erhebung zusammengestellt** und stammen aus dem PCOR-MII Item Level Dictionary (Entität AN). **Das `UKHD`-Präfix der Dictionary-Gruppe ist ein Zusammenstellungs-Etikett, keine Autorenschaftsangabe: Woher der Wortlaut stammt — eigene Formulierung des Standorts, klinikinterne Dokumentationsbögen oder ein publiziertes Instrument —, ist nicht dokumentiert. Eine Freigabe für die Veröffentlichung liegt ebenfalls nicht dokumentiert vor; beides ist mit dem Standort zu klären.** Die DIZ-Implementierungsliste PCOR-MII führt ausschließlich publizierte Instrumente; die standortspezifischen Itemgruppen von UKHD, UKE und MHH kommen dort nicht vor — es gibt für sie damit weder eine dokumentierte Erlaubnis noch eine dokumentierte Einschränkung. Dass der Wortlaut hier aufgenommen ist, ist eine bewusste Projektentscheidung zur Erprobung und keine geklärte Rechtslage; die Ressource trägt deshalb `status = draft` und `experimental = true`. Ergibt die Rückmeldung des Standorts eine Einschränkung, ist eine Umstellung auf metadata-only vorgesehen (Muster WAI). Nachnutzende müssen die Nutzungsbedingungen für den eigenen Anwendungsfall eigenständig prüfen. Nur der PCOR-MII-eigene FHIR-Inhalt (Struktur, Codes, Kodierung) unterliegt der Repository-Lizenz (CC-BY-4.0)."
* extension[+].url = $designNote
* extension[=].valueMarkdown = "Dictionary-Gruppe `UKHD-ND`, DOMAIN *New Diagnosis*, Kategorie DCH. Dieselbe Zeitfenster-Konstruktion wie `UKHD-LE`, aber mit **zwei** statt drei Ja/Nein-Items: Ein Aufnahme-Item fehlt, und das ist konsistent — bei Aufnahme gibt es definitionsgemäß keine „weiteren“ Diagnosen seit der letzten Befragung, und die Aufnahmediagnosen erhebt stattdessen `UKHD_D`. **Rechtelage und Herkunft:** siehe `copyright` — das `UKHD`-Präfix ist ein Zusammenstellungs-Etikett, keine Autorenschaftsangabe; die Frage an den Standort ist eine Herkunftsfrage. Gemeinsame Entscheidungen aller sechs UKHD-Zusatzbögen (Sprache `de` ohne Übersetzungsebene, `TIMING` nicht als FHIR-Struktur, Wortlauttreue nach ADR-010, `linkId` = Dictionary-Variablen-ID nach ADR-008, kein Score, Ja/Nein über `DemJaNeinVS`) stehen auf der Seite [UKHD-Zusatzitems](UKHD-Zusatzitems.html)."

* item[+]
  * linkId = "new_diagnosis_monitoring"
  * code[+] = PcorItemDictionaryCS#new_diagnosis_monitoring
  * text = "Gab es seit der letzten Befragung weitere medizinische / psychische Diagnosen?"
  * type = #choice
  * answerValueSet = Canonical(DemJaNeinVS)
* item[+]
  * linkId = "new_diagnosis_discharge"
  * code[+] = PcorItemDictionaryCS#new_diagnosis_discharge
  * text = "Gab es seit Ihrer Aufnahme weitere medizinische / psychische Diagnosen?"
  * type = #choice
  * answerValueSet = Canonical(DemJaNeinVS)
* item[+]
  * linkId = "new_diagnosis_text"
  * code[+] = PcorItemDictionaryCS#new_diagnosis_text
  * text = "Bitte tragen Sie diese Diagnosen in das folgende Textfeld ein."
  * type = #text
  * extension[+].url = $designNote
  * extension[=].valueMarkdown = "`enableWhen` auf **beide** Ja/Nein-Items der Gruppe mit `enableBehavior = any` — gleiche Begründung wie bei `lifev_text`, nur mit zwei statt drei Vorbedingungen, weil `UKHD-ND` kein Aufnahme-Item hat."
  * enableWhen[+].question = "new_diagnosis_monitoring"
  * enableWhen[=].operator = #=
  * enableWhen[=].answerCoding = DemAntwortCS#ja "Ja"
  * enableWhen[+].question = "new_diagnosis_discharge"
  * enableWhen[=].operator = #=
  * enableWhen[=].answerCoding = DemAntwortCS#ja "Ja"
  * enableBehavior = #any
