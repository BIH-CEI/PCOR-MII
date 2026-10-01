// ─────────────────────────────────────────────────────────────────────────────
// PCOR-MII Questionnaire-Katalog — ein Code je Bogen
//
// WOZU, UND WARUM DIE CANONICAL DAFUER NICHT GENUEGT: Beide identifizieren,
//   aber Verschiedenes. R4 sagt es deutlich —
//     Questionnaire.url  = "Canonical identifier for THIS questionnaire …
//                           SHOULD be a literal address at which an
//                           authoritative instance of this questionnaire is
//                           found"            -> identifiziert das ARTEFAKT
//     Questionnaire.code = "Concept that represents the overall
//                           questionnaire"    -> identifiziert das INSTRUMENT
//   Dieselbe Achse wie linkId gegen item.code: das eine lokal und artefakt-
//   gebunden, das andere teilbar.
//
// DER KONKRETE ANLASS ist hausgemacht, nicht theoretisch: ADR-007 Punkt 2
//   verlangt, dass zwei Fassungen desselben Instruments "denselben
//   Katalogcode" tragen, damit sie als zwei Fassungen EINES Instruments
//   erkennbar sind — und verweist dafuer auf den MII-Questionnaire-Katalog.
//   Der fuehrt aber weder den GSLTPAQ noch einen der AN-Boegen. Die Regel war
//   damit genau in dem Fall nicht umsetzbar, fuer den sie geschrieben wurde.
//   ADR-009 wiederholt dieselbe Anforderung.
//
// WARUM EIN LOKALER KATALOG ZULAESSIG IST: ADR-004 hat die Logik bereits
//   festgehalten — ein lokaler Code ist zulaessig, wo weder LOINC noch SNOMED
//   CT noch der MII-Katalog einen fuehrt. Questionnaire.code ist 0..*, ein
//   spaeterer MII- oder LOINC-Code wird also ERGAENZT, nicht ersetzt. Der WAI
//   zeigt das bereits: Er traegt SNOMED 446174004 UND bekommt hier einen
//   Katalogcode.
//
// WAS DAS *NICHT* IST: keine Aussage ueber Instrumentenidentitaet, wo sie
//   strittig ist. Die Codes bezeichnen den PCOR-MII-BOGEN, nicht das
//   Vollinstrument — "ansocq-2" ist der Zweiitem-Zuschnitt, nicht das ANSOCQ.
//   Damit bleibt ADR-003 Punkt 2 unberuehrt: Vollinstrument-Codes aus SNOMED
//   oder LOINC werden Zuschnitten weiterhin nicht zugewiesen.
//
// NICHT ENTHALTEN: der PCOR-Beispiel-Questionnaire. Er ist Geruest fuer
//   Nachnutzende, kein Erhebungsinstrument des Projekts.
// ─────────────────────────────────────────────────────────────────────────────

CodeSystem: PcorQuestionnaireCatalogueCS
Id: pcor-questionnaire-catalogue
Title: "PCOR-MII Questionnaire-Katalog"
Description: "Ein Code je PCOR-MII-eigenem Questionnaire, für `Questionnaire.code`. Anders als die Canonical, die das **Artefakt** identifiziert, bezeichnet der Katalogcode das **Instrument** — damit mehrere Fassungen desselben Bogens als solche erkennbar sind (ADR-007). Lokal vergeben, weil weder LOINC noch SNOMED CT noch der MII-Questionnaire-Katalog Codes für diese Bögen führen; `Questionnaire.code` ist `0..*`, ein späterer Code wird also ergänzt statt ersetzt (ADR-004)."
* ^url = "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-questionnaire-catalogue"
* insert PR_CS_VS_Version
* ^status = #draft
* ^experimental = true
* ^date = "2026-10-01"
* ^publisher = "BIH-CEI"
* ^caseSensitive = true
* ^content = #complete

// ── Projekteigene Sammelbögen ───────────────────────────────────────────────
* #dem "PCOR-MII Demographie (DEM) — Sammelbogen aus OECD-, GI-PS- und CPCOR-Einzelitems"
* #mhi "PCOR-MII Medical History (MHI) — Sammelbogen, mit AN-spezifischen Zusatzitems"

// ── PSS-spezifisch, in PCOR-MII gepflegt ────────────────────────────────────
* #opd-sfk "OPD-SFK — Strukturfragebogen, 12 Items"
* #wai "WAI / Work Ability Score — 3-Item-Kurzfassung (metadata-only)"
* #gsltpaq "GSLTPAQ — Godin-Shephard Leisure-Time Physical Activity Questionnaire, PCOR-MII-Eigenübersetzung"
* #expect "EXPECT — drei NRS-Einzelitems zur Verlaufserwartung, kein standardisierter Fragebogen"
* #ipq-s "IPQ-S — die offene Ursachenfrage des B-IPQ, Einzelitem"

// ── AN-spezifisch, in PCOR-MII gepflegt ─────────────────────────────────────
// Die Codes bezeichnen jeweils den PCOR-MII-ZUSCHNITT, nicht das Vollinstrument.
* #erq-6 "ERQ-6 — 6-Item-Zuschnitt des Emotion Regulation Questionnaire (ERQ-Items 1, 2, 3, 6, 8, 9); nicht der ERQ-S"
* #ede-q6 "EDE-Q6 — 6-Item-Zuschnitt des Eating Disorder Examination-Questionnaire"
* #ansocq-2 "ANSOCQ-2 — 2-Item-Zuschnitt des Anorexia Nervosa Stages of Change Questionnaire"
* #ssuk-2 "SSUK-2 — 2-Item-Zuschnitt der Skalen zur Sozialen Unterstützung bei Krankheit"
* #ace "ACE + Zeitangaben — die ersten fünf Fragen des Adverse Childhood Experiences Questionnaire plus die sechs UKHD-Items zur zeitlichen Einordnung (PCOR-MII-Komposit)"
* #ukhd-an "UKHD-AN — Sammelbogen der standortspezifischen AN-Zusatzitems des Universitätsklinikums Heidelberg, sechs Dictionary-Gruppen"
* #ukhd-edp "UKHD-EDP — 11 Items zur Essstörungspathologie, vermutlich EDI-2-Zuschnitt (metadata-only)"
