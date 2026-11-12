// ─────────────────────────────────────────────────────────────────────────────
// MHI-NTx — Transplantationsanamnese, Ergänzung zum MHI für Empfänger (Entität NTx)
// Quelle: PCOR-MII Item Level Dictionary, Blatt NTx, Dictionary-Gruppen MHH-DON, MHH-Tx-DATE,
//   MHH-PRIOR-TX (Kategorie TCH). Drei Variablen, REPORTING SOURCE "Patient-reported";
//   laut Erhebungsplan (Blatt Domain Overview, NTXr) SCREENING, Prio A, Frequenz i.
//
// WARUM EIN EIGENER BOGEN UND KEINE GRUPPE IM MHI (Maintainer, 2026-11-05): Der MHI ist ein
//   Bogen für alle drei Use Cases. Eine entitätsspezifische Gruppe darin hat keinen
//   Schalter, der sie bei PSS oder AN ausblendet — der AN-Gewichtsverlauf (gewicht-an) hat
//   genau dieses Problem und ist kein Vorbild. Die Zusammenstellung je Use Case leistet
//   das Manifest (Library, UseCases.fsh): use-case-ntxr pinnt MHI UND MHI-NTx, use-case-ntxd
//   nur den MHI. Entitätsspezifisches gehört deshalb in eigene Ressourcen.
//
// WARUM NICHT IN DER VERLAUFSBEFRAGUNG: andere Erhebungseinheit — Screening statt
//   quartalsweises Monitoring (ADR-011, Ergänzung 05.11.2026).
//
// KEIN PRO-INSTRUMENT: Anamnese wie der MHI -> ISiKFormularDefinition.
//
// WORTLAUT: unverändert aus dem Dictionary (ADR-005), zwei orthografische Korrekturen in
//   Antwortoptionen ("lebendpende" -> "Lebendspende", "verstorbenen Spende" ->
//   "Verstorbenenspende").
//
// RECHTELAGE: Standortitems der MHH, in der DIZ-Implementierungsliste nicht geführt; keine
//   dokumentierte Freigabe (Muster UKHD-Zusatzitems). status = draft, experimental = true.
// ─────────────────────────────────────────────────────────────────────────────

CodeSystem: MhiNtxSpendeartCS
Id: mhi-ntx-spendeart
Title: "MHI-NTx Spendeart (Codes)"
Description: "Art der erhaltenen Nierenspende (`MHH_DON`): Lebendspende oder Verstorbenenspende. Nominal, Dictionary-Codes 1–2."
* insert PR_CS_VS_Version
* ^url = "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhi-ntx-spendeart"
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* #1 "Lebendspende"
* #2 "Verstorbenenspende"

ValueSet: MhiNtxSpendeartVS
Id: mhi-ntx-spendeart-vs
Title: "MHI-NTx Spendeart"
Description: "Art der erhaltenen Nierenspende (`MHH_DON`)."
* insert PR_CS_VS_Version
* ^url = "https://bih-cei.github.io/PCOR-MII/ValueSet/mhi-ntx-spendeart-vs"
* ^status = #draft
* ^experimental = true
* include codes from system MhiNtxSpendeartCS
* ^expansion.timestamp = "2026-11-05T00:00:00Z"
* ^expansion.parameter[0].name = "used-codesystem"
* ^expansion.parameter[0].valueUri = "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhi-ntx-spendeart|0.9.0"
* ^expansion.contains[0].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhi-ntx-spendeart"
* ^expansion.contains[=].code = #1
* ^expansion.contains[=].display = "Lebendspende"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhi-ntx-spendeart"
* ^expansion.contains[=].code = #2
* ^expansion.contains[=].display = "Verstorbenenspende"

// MIT itemWeight — die Stufen sind eine monoton steigende Anzahl (eine < zwei < drei <
//   mehr als drei), die letzte Stufe offen nach oben. Hier stimmt der Dictionary-Code mit
//   der Anzahl überein (1 = eine Niere), anders als bei bdkm16 im UKHD-PT; Dictionary-Gruppe MHH-PRIOR-TX.
CodeSystem: MhiNtxSpendernierenCS
Id: mhi-ntx-spendernieren
Title: "MHI-NTx Anzahl Spendernieren (Codes)"
Description: "Die wievielte Spenderniere aktuell (`MHH_PRIOR_TX`): eine, zwei, drei, mehr als drei. Ordinal; `itemWeight` = Dictionary-Code = Anzahl bis drei, Stufe 4 offen nach oben."
* insert PR_CS_VS_Version
* ^url = "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhi-ntx-spendernieren"
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* ^property[+].code = #itemWeight
* ^property[=].uri = "http://hl7.org/fhir/concept-properties#itemWeight"
* ^property[=].description = "Numerischer Ordinalwert (1-4); 1-3 = Anzahl, 4 = mehr als drei."
* ^property[=].type = #decimal
* #1 "eine"
  * ^property[+].code = #itemWeight
  * ^property[=].valueDecimal = 1
* #2 "zwei"
  * ^property[+].code = #itemWeight
  * ^property[=].valueDecimal = 2
* #3 "drei"
  * ^property[+].code = #itemWeight
  * ^property[=].valueDecimal = 3
* #4 "mehr als 3"
  * ^property[+].code = #itemWeight
  * ^property[=].valueDecimal = 4

ValueSet: MhiNtxSpendernierenVS
Id: mhi-ntx-spendernieren-vs
Title: "MHI-NTx Anzahl Spendernieren"
Description: "Die wievielte Spenderniere aktuell (`MHH_PRIOR_TX`), `itemWeight` 1–4."
* insert PR_CS_VS_Version
* ^url = "https://bih-cei.github.io/PCOR-MII/ValueSet/mhi-ntx-spendernieren-vs"
* ^status = #draft
* ^experimental = true
* include codes from system MhiNtxSpendernierenCS
* ^expansion.timestamp = "2026-11-05T00:00:00Z"
* ^expansion.parameter[0].name = "used-codesystem"
* ^expansion.parameter[0].valueUri = "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhi-ntx-spendernieren|0.9.0"
* ^expansion.contains[0].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhi-ntx-spendernieren"
* ^expansion.contains[=].code = #1
* ^expansion.contains[=].display = "eine"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhi-ntx-spendernieren"
* ^expansion.contains[=].code = #2
* ^expansion.contains[=].display = "zwei"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhi-ntx-spendernieren"
* ^expansion.contains[=].code = #3
* ^expansion.contains[=].display = "drei"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhi-ntx-spendernieren"
* ^expansion.contains[=].code = #4
* ^expansion.contains[=].display = "mehr als 3"

// ─────────────────────────────────────────────────────────────────────────────
// MHI-NTx — Questionnaire
// ─────────────────────────────────────────────────────────────────────────────

Instance: MHINTX
InstanceOf: Questionnaire
Usage: #definition
Title: "MHI-NTx — Transplantationsanamnese (Ergänzung zum MHI, Nierentransplantation)"
Description: "Ergänzung zur Medical History für Empfänger einer Nierentransplantation: Spendeart, Datum der letzten Transplantation und wievielte Spenderniere (Dictionary-Gruppen `MHH-DON`, `MHH-Tx-DATE`, `MHH-PRIOR-TX`, Kategorie TCH; Screening, Prio A). Eigener Bogen statt Gruppe im MHI, weil der MHI allen Use Cases gemeinsam ist und die Zusammenstellung je Use Case über die Manifeste läuft. Kein PRO-Instrument, kein Score."
* meta.profile = $isik-formulardefinition
* url = "https://bih-cei.github.io/PCOR-MII/Questionnaire/MHINTX"
* name = "MHINTX"
* language = #de-DE
* insert Version
* code[+] = PcorQuestionnaireCatalogueCS#mhi-ntx "MHI-NTx — Transplantationsanamnese"
* status = #draft
* experimental = true
* subjectType = #Patient
* date = "2026-11-05"
* publisher = "BIH-CEI"
* copyright = "Die Items dieses Bogens sind **vom Standort Hannover (MHH) für die PCOR-MII-Erhebung zusammengestellt** und stammen aus dem PCOR-MII Item Level Dictionary (Entität NTx, Gruppen `MHH-DON`, `MHH-Tx-DATE`, `MHH-PRIOR-TX`). Das `MHH`-Präfix ist ein Zusammenstellungs-Etikett des Dictionary, keine Autorenschaftsangabe; eine Freigabe zur Veröffentlichung ist nicht dokumentiert, die Gruppen kommen in der DIZ-Implementierungsliste nicht vor. Es sind triviale Faktenfragen ohne schutzfähige Schöpfungshöhe, wie die Standortitems im MHI. Der PCOR-MII-eigene FHIR-Inhalt (Struktur, Codes, Kodierung) unterliegt der Repository-Lizenz (CC-BY-4.0)."
* extension[+].url = $designNote
* extension[=].valueMarkdown = "**Designentscheidungen:** (1) **Eigener Ergänzungsbogen statt Szenario-Gruppe im MHI** (Maintainer, 2026-11-05): Der MHI ist allen Use Cases gemeinsam und hat keinen Entitätsschalter; die Zusammenstellung je Use Case leisten die Manifeste, die für Empfänger MHI und MHI-NTx pinnen. Der AN-Gewichtsverlauf im MHI ist eine Altlast, kein Vorbild. (2) **Nicht in der [NTx-Verlaufsbefragung](NTx-Instrumente.html#ntx-verlaufsbefragung-mhh)**, weil Screening und quartalsweises Monitoring verschiedene Erhebungseinheiten sind ([ADR-011](Designentscheidungen.html)). (3) **Kein PRO-Instrument**, daher ISiKFormularDefinition wie der MHI. (4) **Anzahl Spendernieren** mit `itemWeight` 1–4, Stufe 4 offen nach oben. Details: <https://bih-cei.github.io/PCOR-MII/Designentscheidungen.html>"

* item[+]
  * linkId = "transplantation"
  * text = "Spende und Transplantation"
  * type = #group
  * item[+]
    * linkId = "MHH_DON"
    * code[+] = PcorItemDictionaryCS#MHH_DON
    * text = "Welche Art der Spende haben Sie erhalten?"
    * type = #choice
    * answerValueSet = Canonical(MhiNtxSpendeartVS)
  * item[+]
    * linkId = "MHH_TX_DATE"
    * code[+] = PcorItemDictionaryCS#MHH_TX_DATE
    * text = "Bitte geben Sie das Datum ihrer letzten Nierentransplantation an."
    * type = #date
  * item[+]
    * linkId = "MHH_PRIOR_TX"
    * code[+] = PcorItemDictionaryCS#MHH_PRIOR_TX
    * text = "Die wievielte Spenderniere haben Sie aktuell?"
    * type = #choice
    * answerValueSet = Canonical(MhiNtxSpendernierenVS)
