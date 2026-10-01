// ─────────────────────────────────────────────────────────────────────────────
// UKHD-D — Diagnosen bei Aufnahme (UKHD-Zusatzitems AN)
// Quelle: PCOR-MII Item Level Dictionary, Entitaet AN, Gruppe UKHD-D
//   (DOMAIN *Diagnosis*, Kategorie DCH).
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

Instance: UKHDD
InstanceOf: Questionnaire
Usage: #definition
Title: "UKHD-D — Diagnosen bei Aufnahme (UKHD-Zusatzitems AN)"
Description: "Zwei Freitextitems zu den Aufnahmediagnosen aus der Dictionary-Gruppe `UKHD_D` (Schreibweise mit Unterstrich so im Dictionary): Behandlungsdiagnosen (`diagnosis_admit`) und weitere Diagnosen (`comorbid1`). Eigenes Questionnaire je Dictionary-Gruppe; Übersicht auf der Seite [UKHD-Zusatzitems](UKHD-Zusatzitems.html). Kein Score. **Für den Wortlaut liegt keine dokumentierte Freigabe vor, seine Herkunft ist ungeklärt.**"
* meta.profile = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire"
* url = "https://bih-cei.github.io/PCOR-MII/Questionnaire/UKHDD"
* name = "UKHDD"
* code[+] = PcorQuestionnaireCatalogueCS#ukhd-d "UKHD-D"
* language = #de
* insert Version
* status = #draft
* experimental = true
* subjectType = #Patient
* date = "2026-10-01"
* publisher = "BIH-CEI"
* copyright = "Die Items dieses Bogens sind **vom Standort Heidelberg für die PCOR-MII-Erhebung zusammengestellt** und stammen aus dem PCOR-MII Item Level Dictionary (Entität AN). **Das `UKHD`-Präfix der Dictionary-Gruppe ist ein Zusammenstellungs-Etikett, keine Autorenschaftsangabe: Woher der Wortlaut stammt — eigene Formulierung des Standorts, klinikinterne Dokumentationsbögen oder ein publiziertes Instrument —, ist nicht dokumentiert. Eine Freigabe für die Veröffentlichung liegt ebenfalls nicht dokumentiert vor; beides ist mit dem Standort zu klären.** Die DIZ-Implementierungsliste PCOR-MII führt ausschließlich publizierte Instrumente; die standortspezifischen Itemgruppen von UKHD, UKE und MHH kommen dort nicht vor — es gibt für sie damit weder eine dokumentierte Erlaubnis noch eine dokumentierte Einschränkung. Dass der Wortlaut hier aufgenommen ist, ist eine bewusste Projektentscheidung zur Erprobung und keine geklärte Rechtslage; die Ressource trägt deshalb `status = draft` und `experimental = true`. Ergibt die Rückmeldung des Standorts eine Einschränkung, ist eine Umstellung auf metadata-only vorgesehen (Muster WAI). Nachnutzende müssen die Nutzungsbedingungen für den eigenen Anwendungsfall eigenständig prüfen. Nur der PCOR-MII-eigene FHIR-Inhalt (Struktur, Codes, Kodierung) unterliegt der Repository-Lizenz (CC-BY-4.0)."
* extension[+].url = $designNote
* extension[=].valueMarkdown = "Dictionary-Gruppe `UKHD_D` — **mit Unterstrich**, während alle sechs anderen Gruppen einen Bindestrich tragen (`UKHD-PT`, `UKHD-ANB`, …). Im Dictionary zu vereinheitlichen; die `linkId` des Gruppen-Items folgt der Hauskonvention. DOMAIN *Diagnosis*, Kategorie DCH, beide Items `TIMING` i. **Überschneidung mit [MHI](MHI.html):** Dort erheben `CPCOR-DIAG` (Diagnosegruppe zur Selbstzuordnung) und `GIPS13` (Liste chronischer Erkrankungen) kodiert, was hier als Freitext erhoben wird. Welche der beiden Darstellungen für die Auswertung maßgeblich ist, ist fachlich zu klären. **Rechtelage und Herkunft:** siehe `copyright` — das `UKHD`-Präfix ist ein Zusammenstellungs-Etikett, keine Autorenschaftsangabe; die Frage an den Standort ist eine Herkunftsfrage. Gemeinsame Entscheidungen aller sechs UKHD-Zusatzbögen (Sprache `de` ohne Übersetzungsebene, `TIMING` nicht als FHIR-Struktur, Wortlauttreue nach ADR-010, `linkId` = Dictionary-Variablen-ID nach ADR-008, kein Score, Ja/Nein über `DemJaNeinVS`) stehen auf der Seite [UKHD-Zusatzitems](UKHD-Zusatzitems.html)."

* item[+]
  * linkId = "diagnosis_admit"
  * code[+] = PcorItemDictionaryCS#diagnosis_admit
  * text = "Welche Diagnose/-n sollen bei Ihnen hier behandelt werden?"
  * type = #text
* item[+]
  * linkId = "comorbid1"
  * code[+] = PcorItemDictionaryCS#comorbid1
  * text = "Gibt es außer den zurvor genannten Diagnosen noch andere Diagnosen?"
  * type = #text
  * extension[+].url = $designNote
  * extension[=].valueMarkdown = "**Zwei Befunde.** (a) Wortlaut unverändert übernommen, einschließlich des Fehlers: Das Dictionary schreibt „den zurvor genannten“ statt „zuvor“ — im Dictionary zu korrigieren. (b) **Fragesatz und Antwortformat passen formal nicht zusammen — entschieden am 01.10.2026, bleibt so.** Die Frage ist wörtlich eine Ja/Nein-Frage („Gibt es … noch andere Diagnosen?“), das Dictionary sieht aber ein Textfeld vor (TYPE *Text*, OPTIONS *Textfeld*). **Gemeint ist das Textfeld:** Dort sollen die weiteren Diagnosen eingetragen werden, nicht ein „ja“. `type = text` bildet damit die tatsächliche Erhebung korrekt ab. Die Formulierung ist formal unsauber, wird aber **bewusst nicht geändert** — der Wortlaut bleibt dictionary-treu (ADR-010: Was in der Vorlage steht, wird nicht in der Spezifikation repariert). Wer das Feld auswertet, erwartet Diagnosetext."
