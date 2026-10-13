// ─────────────────────────────────────────────────────────────────────────────
// UKHD-ANB — Essstoerungsanamnese (UKHD-Zusatzitems AN)
// Quelle: PCOR-MII Item Level Dictionary, Entitaet AN, Gruppe UKHD-ANB
//   (DOMAIN *AN Biography*, Kategorie DCH).
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

// ── UKHD-ANB: AN_biography (Einheitenauswahl) ────────────────────────────────
// KEIN ordinalValue — die drei Werte sind EINHEITEN und eine Nicht-Angabe,
//   keine Stufen. Der Messwert steckt im Hilfsitem AN_biography-wert.
CodeSystem: UkhdAnDauerAngabeCS
Id: ukhd-an-dauer-angabe
Title: "UKHD-AN Dauer der Essstoerung — Einheit/Angabe-Status (Codes)"
Description: "Einheit bzw. Angabe-Status für die Dauer der Essstörung (`AN_biography`): Monate, Jahre oder „weiß ich nicht“. Der Zahlenwert steht im Hilfsitem `AN_biography-wert`."
* insert PR_CS_VS_Version
* ^url = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-an-dauer-angabe"
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* #1 "seit … Monaten"
* #2 "seit … Jahren"
* #3 "weiß ich nicht"

ValueSet: UkhdAnDauerAngabeVS
Id: ukhd-an-dauer-angabe-vs
Title: "UKHD-AN Dauer der Essstoerung — Einheit/Angabe-Status"
Description: "Einheit bzw. Angabe-Status für die Dauer der Essstörung (`AN_biography`)."
* insert PR_CS_VS_Version
* ^url = "https://bih-cei.github.io/PCOR-MII/ValueSet/ukhd-an-dauer-angabe-vs"
* ^status = #draft
* ^experimental = true
* include codes from system UkhdAnDauerAngabeCS
* ^expansion.timestamp = "2026-10-01T00:00:00Z"
* ^expansion.parameter[0].name = "used-codesystem"
* ^expansion.parameter[0].valueUri = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-an-dauer-angabe|0.3.0"
* ^expansion.contains[0].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-an-dauer-angabe"
* ^expansion.contains[=].code = #1
* ^expansion.contains[=].display = "seit … Monaten"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-an-dauer-angabe"
* ^expansion.contains[=].code = #2
* ^expansion.contains[=].display = "seit … Jahren"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-an-dauer-angabe"
* ^expansion.contains[=].code = #3
* ^expansion.contains[=].display = "weiß ich nicht"

// ── UKHD-ANB: lowBMI (Angabe-Status) ─────────────────────────────────────────
// KEIN ordinalValue — „Wert folgt" gegen „weiss nicht" ist keine Stufung.
CodeSystem: UkhdAnBmiAngabeCS
Id: ukhd-an-bmi-angabe
Title: "UKHD-AN Niedrigster BMI — Angabe-Status (Codes)"
Description: "Angabe-Status für den niedrigsten BMI (`lowBMI`): Wert wird angegeben oder „weiß ich nicht“. Der Zahlenwert steht im Hilfsitem `lowBMI-wert`."
* insert PR_CS_VS_Version
* ^url = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-an-bmi-angabe"
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* #1 "BMI-Wert"
* #2 "weiß ich nicht"

ValueSet: UkhdAnBmiAngabeVS
Id: ukhd-an-bmi-angabe-vs
Title: "UKHD-AN Niedrigster BMI — Angabe-Status"
Description: "Angabe-Status für den niedrigsten BMI (`lowBMI`)."
* insert PR_CS_VS_Version
* ^url = "https://bih-cei.github.io/PCOR-MII/ValueSet/ukhd-an-bmi-angabe-vs"
* ^status = #draft
* ^experimental = true
* include codes from system UkhdAnBmiAngabeCS
* ^expansion.timestamp = "2026-10-01T00:00:00Z"
* ^expansion.parameter[0].name = "used-codesystem"
* ^expansion.parameter[0].valueUri = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-an-bmi-angabe|0.3.0"
* ^expansion.contains[0].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-an-bmi-angabe"
* ^expansion.contains[=].code = #1
* ^expansion.contains[=].display = "BMI-Wert"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-an-bmi-angabe"
* ^expansion.contains[=].code = #2
* ^expansion.contains[=].display = "weiß ich nicht"

Instance: UKHDANB
InstanceOf: Questionnaire
Usage: #definition
Title: "UKHD-ANB — Essstörungsanamnese (UKHD-Zusatzitems AN)"
Description: "Zwei zusammengesetzte Items zur Essstörungsanamnese aus der Dictionary-Gruppe `UKHD-ANB`: Erkrankungsdauer (`AN_biography`) und niedrigster BMI (`lowBMI`), je als Auswahl plus PCOR-MII-eigenem Wert-Item aufgelöst (MHI-Muster `Q_WB151`/`Q_WB151a`). Eigenes Questionnaire je Dictionary-Gruppe; Übersicht auf der Seite [UKHD-Zusatzitems](UKHD-Zusatzitems.html). Kein Score. **Für den Wortlaut liegt keine dokumentierte Freigabe vor, seine Herkunft ist ungeklärt.**"
* meta.profile = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire"
* url = "https://bih-cei.github.io/PCOR-MII/Questionnaire/UKHDANB"
* name = "UKHDANB"
* code[+] = PcorQuestionnaireCatalogueCS#ukhd-anb "UKHD-ANB"
* language = #de
* insert Version
* status = #draft
* experimental = true
* subjectType = #Patient
* date = "2026-10-01"
* publisher = "BIH-CEI"
* copyright = "Die Items dieses Bogens sind **vom Standort Heidelberg für die PCOR-MII-Erhebung zusammengestellt** und stammen aus dem PCOR-MII Item Level Dictionary (Entität AN). **Das `UKHD`-Präfix der Dictionary-Gruppe ist ein Zusammenstellungs-Etikett, keine Autorenschaftsangabe: Woher der Wortlaut stammt — eigene Formulierung des Standorts, klinikinterne Dokumentationsbögen oder ein publiziertes Instrument —, ist nicht dokumentiert. Eine Freigabe für die Veröffentlichung liegt ebenfalls nicht dokumentiert vor; beides ist mit dem Standort zu klären.** Die DIZ-Implementierungsliste PCOR-MII führt ausschließlich publizierte Instrumente; die standortspezifischen Itemgruppen von UKHD, UKE und MHH kommen dort nicht vor — es gibt für sie damit weder eine dokumentierte Erlaubnis noch eine dokumentierte Einschränkung. Dass der Wortlaut hier aufgenommen ist, ist eine bewusste Projektentscheidung zur Erprobung und keine geklärte Rechtslage; die Ressource trägt deshalb `status = draft` und `experimental = true`. Ergibt die Rückmeldung des Standorts eine Einschränkung, ist eine Umstellung auf metadata-only vorgesehen (Muster WAI). Nachnutzende müssen die Nutzungsbedingungen für den eigenen Anwendungsfall eigenständig prüfen. Nur der PCOR-MII-eigene FHIR-Inhalt (Struktur, Codes, Kodierung) unterliegt der Repository-Lizenz (CC-BY-4.0)."
* extension[+].url = $designNote
* extension[=].valueMarkdown = "Dictionary-Gruppe `UKHD-ANB`, DOMAIN *AN Biography*, Kategorie DCH. Beide Items sind im Dictionary **zusammengesetzt** (Auswahl + Zahlenwert in einem Feld) und hier nach dem MHI-Muster `Q_WB151`/`Q_WB151a` in je zwei Items aufgelöst. Die Auswahl trägt die Dictionary-Variable, das Wert-Item ist PCOR-MII-eigen und trägt **keinen** `item.code`. **Rechtelage und Herkunft:** siehe `copyright` — das `UKHD`-Präfix ist ein Zusammenstellungs-Etikett, keine Autorenschaftsangabe; die Frage an den Standort ist eine Herkunftsfrage. Gemeinsame Entscheidungen aller sechs UKHD-Zusatzbögen (Sprache `de` ohne Übersetzungsebene, `TIMING` nicht als FHIR-Struktur, Wortlauttreue nach ADR-010, `linkId` = Dictionary-Variablen-ID nach ADR-008, kein Score, Ja/Nein über `DemJaNeinVS`) stehen auf der Seite [UKHD-Zusatzitems](UKHD-Zusatzitems.html)."

* item[+]
  * linkId = "AN_biography"
  * code[+] = PcorItemDictionaryCS#AN_biography
  * text = "Wie lange sind Sie bereits von Ihrer Essstörung betroffen?"
  * type = #choice
  * answerValueSet = Canonical(UkhdAnDauerAngabeVS)
* item[+]
  * linkId = "AN_biography-wert"
  * text = "Dauer — Anzahl (Einheit nach der Auswahl oben: Monate oder Jahre)"
  * type = #integer
  * extension[+].url = $designNote
  * extension[=].valueMarkdown = "**PCOR-MII-eigenes Hilfsitem**, keine Dictionary-Variable — daher kein `item.code` und kein übernommener Wortlaut. Trägt den Zahlenwert zu `AN_biography`; die Einheit steht in der Auswahl. `type = integer`, weil das Dictionary mit Monaten eine feinere Einheit anbietet und gebrochene Jahre damit nicht gebraucht werden. **Ein** Wert-Item für beide Einheiten, nicht zwei — zwei Felder könnten sich widersprechen."
  * enableWhen[+].question = "AN_biography"
  * enableWhen[=].operator = #=
  * enableWhen[=].answerCoding = UkhdAnDauerAngabeCS#1 "seit … Monaten"
  * enableWhen[+].question = "AN_biography"
  * enableWhen[=].operator = #=
  * enableWhen[=].answerCoding = UkhdAnDauerAngabeCS#2 "seit … Jahren"
  * enableBehavior = #any
* item[+]
  * linkId = "lowBMI"
  * code[+] = PcorItemDictionaryCS#lowBMI
  * text = "Welches war Ihr niedrigter BMI?"
  * type = #choice
  * answerValueSet = Canonical(UkhdAnBmiAngabeVS)
  * extension[+].url = $designNote
  * extension[=].valueMarkdown = "**Wortlaut unverändert übernommen, einschließlich des Fehlers:** Das Dictionary schreibt „Ihr niedrigter BMI“ statt „niedrigster“. Nach [ADR-010](Designentscheidungen.html) bleibt übernommener Wortlaut unverändert; eine Bereinigung wäre nur als zusätzliche Ebene zulässig und ist hier nicht angelegt, weil keine Vorlage existiert, gegen die sich Druckfehler und Abschreibfehler unterscheiden ließen. **Im Dictionary zu korrigieren.**"
* item[+]
  * linkId = "lowBMI-wert"
  * text = "Niedrigster BMI — Wert in kg/m²"
  * type = #decimal
  * extension[+].url = $designNote
  * extension[=].valueMarkdown = "**PCOR-MII-eigenes Hilfsitem**, keine Dictionary-Variable — daher kein `item.code` und kein übernommener Wortlaut (die Feldbezeichnung wiederholt den Schreibfehler von `lowBMI` deshalb auch nicht). `type = decimal`, weil ein BMI üblicherweise mit einer Dezimalstelle berichtet wird. Die Einheit kg/m² steht im Text; eine `quantity`-Modellierung wäre hier Aufwand ohne Gewinn, weil das Dictionary keine Einheitenwahl vorsieht."
  * enableWhen[+].question = "lowBMI"
  * enableWhen[=].operator = #=
  * enableWhen[=].answerCoding = UkhdAnBmiAngabeCS#1 "BMI-Wert"
