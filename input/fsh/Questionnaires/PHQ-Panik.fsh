// ─────────────────────────────────────────────────────────────────────────────
// PHQ-D Panik-Block — die vier Ja/Nein-Screeningfragen zu Angst-/Panikattacken
//   des Patient Health Questionnaire (PHQ, Block 3a–3d; im Brief PHQ Block 2a–2d).
//   Quelle: PCOR Item Level Dictionary, Entität PSS, Kategorie MHA, Instrument
//   "PHQ-D", Variablen phq3a–phq3d (Antwortoptionen 0 = nein, 1 = ja).
//
// WARUM IN PCOR-MII UND NICHT IM MII-PRO-MODUL (Maintainer-Entscheidung
//   2026-11-05, ADR-012): Der Block wird nur in PSS erhoben; das MII-PRO-Modul
//   führt dafür kein Artefakt. Eine Modul-Fassung lag als Entwurf vor und wurde
//   bewusst in die Use-Case-Schicht verschoben. Sollte das Modul den Block später
//   aufnehmen, wird diese Instanz durch die Upstream-Referenz ersetzt — die
//   linkIds sind dafür schon im PHQ-D-Block-Namespace gewählt (siehe unten).
//
// ORIGINAL (EN): Spitzer RL, Kroenke K, Williams JBW. Validation and utility of a
//   self-report version of PRIME-MD: the PHQ primary care study. JAMA 1999;
//   282(18):1737-1744. doi:10.1001/jama.282.18.1737. © Pfizer Inc. — frei
//   verfügbar, keine Genehmigung erforderlich (phqscreeners.com).
//   Englischer Wortlaut verifiziert 2026-11-05 gegen das Brief-PHQ-Formular
//   (Pfizer), Block 2 "Questions about anxiety", Items a–d; dort wortgleich mit
//   Block 3a–3d des vollständigen PHQ. Deutsche Fassung: PHQ-D (Löwe B, Spitzer
//   RL, Zipfel S, Herzog W. PHQ-D. Gesundheitsfragebogen für Patienten. Pfizer,
//   Karlsruhe 2002), Wortlaut wortgleich aus dem Item Level Dictionary.
//
// SPRACHE (ADR-005): Englisch primär (Original), Deutsch als translation —
//   wie beim ACE. Resource.language = en, weil alle vier Items englisch-primär sind.
//
// LINKIDS — bewusste Abweichung von „linkId = Dictionary-Variable": Der Block
//   gehört zur PHQ-Familie, deren Items im MII-PRO-Modul den gemeinsamen
//   PHQ-D-Block-Namespace tragen (phq-phq1*, phq-phq2*, phq-phq5*; siehe Seite
//   PHQ). Die vier Items heißen deshalb phq-phq3a…phq-phq3d; die
//   Dictionary-Variable (phq3a…) steht wie überall in item.code
//   (PcorItemDictionaryCS). Nimmt das Modul den Block auf, sind keine
//   linkId-Migration und keine ConceptMap nötig (vgl. PHQ-9 2026.5.0, GAD-7).
//   Die Symptomliste 4a–4k des vollständigen PHQ-Panikmoduls (phq-phq4a…k) wird
//   von PCOR-MII nicht erhoben und ist hier nicht modelliert.
//
// SPRUNGREGEL: Das Formular sagt bei 3a "If you checked 'NO', go to question 4"
//   (Brief PHQ: "go to question 3"). Modelliert als enableWhen: 3b–3d nur bei
//   3a = ja. Das Dictionary nennt keine Bedingung; die Regel ist die des
//   Originalformulars.
//
// ANTWORTEN: ja/nein als SNOMED CT inline, RuleSet JaNeinSnomed, ADR-013 (Dictionary 1 = ja /
//   0 = nein dokumentarisch, nicht strukturell) — wie ACE.
//
// SCORING: bewusst KEIN Score-Item. Der PHQ kennt für den Block keinen
//   Summenscore, sondern den Algorithmus "Panic Syndrome if #3a-d are all 'YES'
//   and 4 or more of #4a-k are 'YES'" (PHQ Instruction Manual, Pfizer). Ohne
//   4a–4k ist nur die Screening-Stufe ableitbar (alle vier ja = Screening
//   positiv) — das ist Auswertungslogik, keine Erhebung, und nach ADR-004 kein
//   Gegenstand dieses IG.
//
// TERMINOLOGIE: Für die Panik-Screeningitems des PHQ sind uns keine LOINC-
//   oder SNOMED-CT-Codes bekannt (die Terminologie-Suchwerkzeuge waren in der
//   Autorensitzung nicht verfügbar; per Lookup geprüfte Einzelcodes betrafen
//   andere PHQ-Items). Questionnaire.code trägt daher nur den PCOR-MII-
//   Katalogcode; ein späterer Code wird ergänzt, nicht ersetzt (ADR-004).
// ─────────────────────────────────────────────────────────────────────────────

Instance: PHQPANIK
InstanceOf: Questionnaire
Usage: #definition
Title: "PHQ-D Panik-Block — Angst-/Panikattacken (PHQ 3a–3d)"
Description: "Die vier Ja/Nein-Screeningfragen zu Angst- und Panikattacken des Patient Health Questionnaire (PHQ, Block 3a–3d; Spitzer, Kroenke & Williams 1999), deutsche Fassung PHQ-D (Löwe et al. 2002), 4-Wochen-Recall. Englisch primär, Deutsch als `translation`. linkIds im PHQ-D-Block-Namespace (`phq-phq3a`–`phq-phq3d`), Dictionary-Variablen `phq3a`–`phq3d` in `item.code`. Sprungregel des Formulars als `enableWhen` (3b–3d nur bei 3a = ja). Kein Score-Item: Der PHQ-Algorithmus für das Paniksyndrom braucht zusätzlich die hier nicht erhobene Symptomliste 4a–4k. In PCOR-MII gepflegt, weil das MII-PRO-Modul kein Artefakt dafür führt (ADR-012)."
// PHQ ist ein PRO-Instrument -> MII-PRO-Profil (nicht ISiKFormularDefinition).
* meta.profile = $mii-pro-questionnaire
* url = "https://bih-cei.github.io/PCOR-MII/Questionnaire/PHQPANIK"
* name = "PHQPANIK"
* language = #en
* insert Version
* code[+] = PcorQuestionnaireCatalogueCS#phq-panik "PHQ-D Panik-Block"
* status = #draft
* experimental = true
* subjectType = #Patient
* date = "2026-11-05"
* publisher = "BIH-CEI"
* copyright = "Patient Health Questionnaire (PHQ) © Pfizer Inc., entwickelt von Robert L. Spitzer, Janet B.W. Williams, Kurt Kroenke und Kolleg:innen (Spitzer et al., JAMA 1999, doi:10.1001/jama.282.18.1737). Frei verfügbar — keine Genehmigung für Reproduktion, Übersetzung, Darstellung oder Nutzung erforderlich (phqscreeners.com). Deutsche Fassung: PHQ-D (Löwe, Spitzer, Zipfel & Herzog 2002). Nutzungsstatus laut DIZ-Implementierungsliste PCOR-MII: frei. Nur der PCOR-MII-eigene FHIR-Inhalt (Struktur, linkIds, Kodierung) unterliegt der Repository-Lizenz (CC-BY-4.0)."
// Vom MII-PRO-Profil gefordert: capabilities-Extension (1..1).
// calculatable = false: kein Score-Item (siehe Kopfkommentar). extractable = false:
// keine SDC-Extraction definiert. domainAligned = false: PCOR-MII-Domänenmodell
// kennt die Panik-Domäne nicht als eigene Achse.
* extension[+].url = $mii-pro-capabilities
* extension[=].extension[+].url = "displayable"
* extension[=].extension[=].valueBoolean = true
* extension[=].extension[+].url = "collectable"
* extension[=].extension[=].valueBoolean = true
* extension[=].extension[+].url = "calculatable"
* extension[=].extension[=].valueBoolean = false
* extension[=].extension[+].url = "extractable"
* extension[=].extension[=].valueBoolean = false
* extension[=].extension[+].url = "domainAligned"
* extension[=].extension[=].valueBoolean = false
// Designentscheidungen direkt am Questionnaire (designNote, ADR-003)
* extension[+].url = $designNote
* extension[=].valueMarkdown = "**Designentscheidungen (ADR-012):** (1) **In PCOR-MII gepflegt, nicht im MII-PRO-Modul** — der Block wird nur in PSS erhoben, das Modul führt kein Artefakt; eine Modul-Fassung wurde bewusst hierher verschoben. Nimmt das Modul den Block später auf, ersetzt die Upstream-Referenz diese Instanz. (2) **linkIds im PHQ-D-Block-Namespace** (`phq-phq3a`–`phq-phq3d`) statt der Dictionary-Variablen: Der Block gehört zur PHQ-Familie, deren Items im Modul diesen Namespace tragen ([PHQ](PHQ.html)); so ist bei einer Übernahme keine linkId-Migration nötig. Die Dictionary-Variable steht in `item.code` gegen [`pcor-item-dictionary`](CodeSystem-pcor-item-dictionary.html) (ADR-011). (3) **Englisch primär** (ADR-005): Wortlaut des Brief PHQ (Pfizer), deutsche Fassung PHQ-D als `translation`. (4) **Sprungregel als `enableWhen`**: 3b–3d nur bei 3a = ja — so das Originalformular; das Dictionary nennt keine Bedingung. (5) **Kein Score:** Der PHQ definiert für den Block keinen Summenwert, sondern den Algorithmus *Paniksyndrom = 3a–3d alle ja UND ≥ 4 von 4a–4k ja*; ohne die Symptomliste ist nur die Screening-Stufe ableitbar, und Auswertung ist nach ADR-004 nicht Gegenstand dieses IG. (6) **Keine LOINC-/SNOMED-Codes** bekannt; nur der lokale Katalogcode `phq-panik`. Details: <https://bih-cei.github.io/PCOR-MII/Designentscheidungen.html>"

// ── Blocküberschrift des Formulars ───────────────────────────────────────────
* item[+]
  * linkId = "phq-panik-intro"
  * text = "Questions about anxiety."
  * text.extension[+].url = $translation
  * text.extension[=].extension[+].url = "lang"
  * text.extension[=].extension[=].valueCode = #de
  * text.extension[=].extension[+].url = "content"
  * text.extension[=].extension[=].valueString = "Fragen zum Thema \"Angst\""
  * type = #display

// ── 4 Items (linkId = PHQ-D-Block-Namespace, item.code = Dictionary-Variable) ─
* item[+]
  * linkId = "phq-phq3a"
  * code[+] = PcorItemDictionaryCS#phq3a
  * prefix = "a"
  * text = "In the last 4 weeks, have you had an anxiety attack — suddenly feeling fear or panic?"
  * text.extension[+].url = $translation
  * text.extension[=].extension[+].url = "lang"
  * text.extension[=].extension[=].valueCode = #de
  * text.extension[=].extension[+].url = "content"
  * text.extension[=].extension[=].valueString = "Hatten Sie in den letzten 4 Wochen eine Angstattacke (plötzliches Gefühl der Furcht oder Panik?)"
  * type = #choice
  * required = true
  * insert JaNeinSnomed
* item[+]
  * linkId = "phq-phq3b"
  * code[+] = PcorItemDictionaryCS#phq3b
  * prefix = "b"
  * text = "Has this ever happened before?"
  * text.extension[+].url = $translation
  * text.extension[=].extension[+].url = "lang"
  * text.extension[=].extension[=].valueCode = #de
  * text.extension[=].extension[+].url = "content"
  * text.extension[=].extension[=].valueString = "Ist dies bereits früher einmal vorgekommen?"
  * type = #choice
  * enableWhen[+].question = "phq-phq3a"
  * enableWhen[=].operator = #=
  * enableWhen[=].answerCoding = $SCT#373066001
  * insert JaNeinSnomed
* item[+]
  * linkId = "phq-phq3c"
  * code[+] = PcorItemDictionaryCS#phq3c
  * prefix = "c"
  * text = "Do some of these attacks come suddenly out of the blue — that is, in situations where you don't expect to be nervous or uncomfortable?"
  * text.extension[+].url = $translation
  * text.extension[=].extension[+].url = "lang"
  * text.extension[=].extension[=].valueCode = #de
  * text.extension[=].extension[+].url = "content"
  * text.extension[=].extension[=].valueString = "Treten manche dieser Anfälle völlig unerwartet auf - d.h. in Situationen, in denen Sie nicht damit rechnen, dass Sie angespannt oder beunruhigt reagieren?"
  * type = #choice
  * enableWhen[+].question = "phq-phq3a"
  * enableWhen[=].operator = #=
  * enableWhen[=].answerCoding = $SCT#373066001
  * insert JaNeinSnomed
* item[+]
  * linkId = "phq-phq3d"
  * code[+] = PcorItemDictionaryCS#phq3d
  * prefix = "d"
  * text = "Do these attacks bother you a lot or are you worried about having another attack?"
  * text.extension[+].url = $translation
  * text.extension[=].extension[+].url = "lang"
  * text.extension[=].extension[=].valueCode = #de
  * text.extension[=].extension[+].url = "content"
  * text.extension[=].extension[=].valueString = "Empfinden Sie diese Anfälle als stark beeinträchtigend, und/oder haben Sie Angst vor erneuten Anfällen?"
  * type = #choice
  * enableWhen[+].question = "phq-phq3a"
  * enableWhen[=].operator = #=
  * enableWhen[=].answerCoding = $SCT#373066001
  * insert JaNeinSnomed

// ── Beispielantwort für den PSS-Beispielpatienten (Screening-Termin) ─────────
// 3a ja, 3b ja, 3c nein, 3d ja: wiederkehrende, erwartbare Angstattacken mit
// Belastung — nach dem PHQ-Algorithmus NICHT Screening-positiv (3c = nein).
Instance: PHQPANIKResponse
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "PHQ-D Panik-Block — Beispielantwort"
Description: "Beispielantwort zu den vier Panik-Screeningitems für den PSS-Screening-Termin: wiederkehrende, situationsgebundene Angstattacken mit Belastung (3a ja, 3b ja, 3c nein, 3d ja); nach dem PHQ-Algorithmus nicht Screening-positiv."
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response"
* language = #de-DE
* insert QuestionnaireRef(https://bih-cei.github.io/PCOR-MII/Questionnaire/PHQPANIK)
* status = #completed
* subject = Reference(pcor-mii-exa-patient-pss)
* authored = "2026-06-25T12:05:00+02:00"
* item[+]
  * linkId = "phq-phq3a"
  * answer.valueCoding = $SCT#373066001 "Yes"
* item[+]
  * linkId = "phq-phq3b"
  * answer.valueCoding = $SCT#373066001 "Yes"
* item[+]
  * linkId = "phq-phq3c"
  * answer.valueCoding = $SCT#373067005 "No"
* item[+]
  * linkId = "phq-phq3d"
  * answer.valueCoding = $SCT#373066001 "Yes"
