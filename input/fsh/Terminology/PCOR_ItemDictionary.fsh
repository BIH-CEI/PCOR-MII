// ─────────────────────────────────────────────────────────────────────────────
// PCOR-MII Item Level Dictionary — Variablen-IDs als CodeSystem
//
// GENERIERT. Nicht von Hand pflegen — Quelle ist das Item Level Dictionary
// (MASTER_3EntitiesOverview.xlsx, Blaetter PSS/AN/NTx). Enthalten sind genau
// die Variablen, die in einem PCOR-MII-Questionnaire per item.code
// referenziert werden.
//
// WOZU: Damit sich ein flach erhobener Studiendatensatz maschinell auf die
//   Instrumenten-Questionnaires verteilen laesst (ADR-011). Die Zuordnung
//   laeuft NICHT ueber linkIds — die sind nur INNERHALB eines Questionnaire
//   eindeutig. Genau daran scheitert der ERQ: Dictionary-"erq6" und
//   FHIR-linkId "erq6" bezeichnen VERSCHIEDENE Items, und ein Mapping ueber
//   Namensgleichheit ordnet dort still falsch zu. Ein Code ist global
//   eindeutig, ein linkId nicht.
//
// WIE ES BENUTZT WIRD: Jedes Item traegt seine Dictionary-Variable in
//   Questionnaire.item.code. Das Element ist 0..*, ein Item kann also
//   gleichzeitig den semantischen LOINC-Code und die Dictionary-Variable
//   tragen — bei ACE, DEM und MHI ist genau das der Fall.
//
//   Damit werden aus zwei Fragen zwei Nachschlage-Operationen:
//     "Zu welchem Instrument gehoert Variable X?"
//        -> das Questionnaire, das ein Item mit item.code = X hat
//     "Wie heisst sie dort?"
//        -> der linkId genau dieses Items
//   Eine ConceptMap ist dafuer nicht mehr erforderlich. pcor-cm-erq-s-linkids
//   bleibt als vorgerechnete Lesehilfe und als Warnung vor der Kollision
//   bestehen, ist aber nicht mehr der Mechanismus.
//
// CONTENT = FRAGMENT, BEWUSST: Das Dictionary fuehrt 454 Variablen ueber drei
//   Entitaeten. Hier stehen nur die modellierten. #complete waere eine
//   Falschaussage; das CodeSystem waechst mit der Modellierung.
//
// PROPERTY "instrument": der INSTRUMENT-Wert des Dictionary, nicht die
//   Questionnaire-ID. Beides laeuft auseinander (Dictionary "ERQ-6" gegen
//   Questionnaire "ERQ6"), und das Dictionary ist hier die Quelle.
// ─────────────────────────────────────────────────────────────────────────────

CodeSystem: PcorItemDictionaryCS
Id: pcor-item-dictionary
Title: "PCOR-MII Item Level Dictionary — Variablen-IDs"
Description: "Variablen-IDs des PCOR-MII Item Level Dictionary als Codes, damit sich ein flach erhobener Datensatz maschinell auf die Instrumenten-Questionnaires verteilen lässt (ADR-011). Jedes Item trägt seine Variable in `item.code`; die Zuordnung ist damit eine Nachschlage-Operation und keine Abbildung. Enthält nur die modellierten Variablen — `content = fragment`."
* insert PR_CS_VS_Version
* ^url = "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary"
* ^status = #draft
* ^experimental = true
* ^date = "2026-09-30"
* ^publisher = "BIH-CEI"
* ^caseSensitive = true
* ^content = #fragment
* ^property[+].code = #instrument
* ^property[=].uri = "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary#instrument"
* ^property[=].description = "INSTRUMENT-Spalte des Item Level Dictionary."
* ^property[=].type = #string
* ^property[+].code = #category
* ^property[=].uri = "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary#category"
* ^property[=].description = "CATEGORY ID des Item Level Dictionary (GHS, DEM, MHI, MHA, DCH, TCH, EFA, MSE)."
* ^property[=].type = #string
* ^property[+].code = #entity
* ^property[=].uri = "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary#entity"
* ^property[=].description = "Entität(en), in denen die Variable erhoben wird."
* ^property[=].type = #string

// ── ACE ──
* #ace1 "ace1 — Hat ein Elternteil oder ein anderer Erwachsener in Ihrem Haushalt …"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "ACE"
  * ^property[+].code = #category
  * ^property[=].valueString = "EFA"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN"
* #ace2 "ace2 — Hat ein Elternteil oder ein anderer Erwachsener in Ihrem Haushalt …"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "ACE"
  * ^property[+].code = #category
  * ^property[=].valueString = "EFA"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN"
* #ace3 "ace3 — Hat ein Erwachsener oder eine Person, die mindestens 5 Jahre älter …"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "ACE"
  * ^property[+].code = #category
  * ^property[=].valueString = "EFA"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN"
* #ace4 "ace4 — Haben Sie oft oder sehr oft empfunden, dass niemand in Ihrer …"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "ACE"
  * ^property[+].code = #category
  * ^property[=].valueString = "EFA"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN"
* #ace5 "ace5 — Haben Sie oft oder sehr oft empfunden, dass Sie nicht genug zu …"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "ACE"
  * ^property[+].code = #category
  * ^property[=].valueString = "EFA"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN"

// ── ANSOCQ-2 ──
* #ansocq3 "ansocq3 — Die folgenden Feststellungen beziehen sich auf Körperteile, über …"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "ANSOCQ-2"
  * ^property[+].code = #category
  * ^property[=].valueString = "TCH"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN"
* #ansocq14 "ansocq14 — Die folgenden Feststellungen beziehen sich auf die Zeit, die mit …"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "ANSOCQ-2"
  * ^property[+].code = #category
  * ^property[=].valueString = "TCH"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN"

// ── CPCOR-AGE ──
* #AGE "AGE — Bitte geben Sie Ihr Geburtsdatum an"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "CPCOR-AGE"
  * ^property[+].code = #category
  * ^property[=].valueString = "DEM"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN, NTx, PSS"

// ── CPCOR-DIAG ──
* #CPCOR-DIAG "CPCOR-DIAG — Zu welcher Gruppe würden Sie sich zuordnen?"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "CPCOR-DIAG"
  * ^property[+].code = #category
  * ^property[=].valueString = "MHI"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN, NTx, PSS"

// ── CPCOR-ONSET ──
* #CPCOR_ONSET "CPCOR_ONSET — Bitte geben Sie an, in welchem Jahr Sie Ihre Diagnose erhalten haben"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "CPCOR-ONSET"
  * ^property[+].code = #category
  * ^property[=].valueString = "MHI"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN, NTx, PSS"

// ── CPCOR-REQ ──
* #CPCOR_REQ "CPCOR_REQ — Möchten Sie kontaktiert werden, um den aktuellen Gesundheitsstatus …"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "CPCOR-REQ"
  * ^property[+].code = #category
  * ^property[=].valueString = "DEM"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN, NTx, PSS"

// ── EDE-Q6 ──
* #edeq1 "edeq1 — AN WIE VIELEN DER LETZTEN 28 TAGE Haben Sie bewusst versucht, die …"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "EDE-Q6"
  * ^property[+].code = #category
  * ^property[=].valueString = "DCH"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN"
* #edeq7 "edeq7 — AN WIE VIELEN DER LETZTEN 28 TAGE Hat das Nachdenken über Nahrung, …"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "EDE-Q6"
  * ^property[+].code = #category
  * ^property[=].valueString = "DCH"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN"
* #edeq12 "edeq12 — AN WIE VIELEN DER LETZTEN 28 TAGE Hatten Sie einen starken Wunsch …"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "EDE-Q6"
  * ^property[+].code = #category
  * ^property[=].valueString = "DCH"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN"
* #edeq27 "edeq27 — WÄHREND DER LETZTEN VIER WOCHEN (28 TAGE) Wie unwohl haben Sie sich …"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "EDE-Q6"
  * ^property[+].code = #category
  * ^property[=].valueString = "DCH"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN"
* #edeq29 "edeq29 — Ist Ihre Regelblutung während der letzten drei bis vier Monate …"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "EDE-Q6"
  * ^property[+].code = #category
  * ^property[=].valueString = "DCH"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN"
* #edeq30 "edeq30 — Wenn ja, wie viele Regelblutungen sind ausgeblieben?"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "EDE-Q6"
  * ^property[+].code = #category
  * ^property[=].valueString = "DCH"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN"

// ── ERQ-6 ──
* #erq1 "erq1 — Wenn ich mehr positive Gefühle (wie Freude oder Heiterkeit) …"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "ERQ-6"
  * ^property[+].code = #category
  * ^property[=].valueString = "DCH"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN"
* #erq2 "erq2 — Ich behalte meine Gefühle für mich."
  * ^property[+].code = #instrument
  * ^property[=].valueString = "ERQ-6"
  * ^property[+].code = #category
  * ^property[=].valueString = "DCH"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN"
* #erq3 "erq3 — Wenn ich weniger negative Gefühle (wie Traurigkeit oder Ärger) …"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "ERQ-6"
  * ^property[+].code = #category
  * ^property[=].valueString = "DCH"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN"
* #erq4 "erq4 — Ich halte meine Gefühle unter Kontrolle, indem ich sie nicht nach …"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "ERQ-6"
  * ^property[+].code = #category
  * ^property[=].valueString = "DCH"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN"
* #erq5 "erq5 — Ich halte meine Gefühle unter Kontrolle, indem ich über meine …"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "ERQ-6"
  * ^property[+].code = #category
  * ^property[=].valueString = "DCH"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN"
* #erq6 "erq6 — Wenn ich negative Gefühle empfinde, sorge ich dafür, sie nicht nach …"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "ERQ-6"
  * ^property[+].code = #category
  * ^property[=].valueString = "DCH"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN"

// ── EXPECT ──
* #EXPECT_01 "EXPECT_01 — Welche Gesamtstärke Ihrer Körperbeschwerden erwarten Sie in 6 …"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "EXPECT"
  * ^property[+].code = #category
  * ^property[=].valueString = "DCH"
  * ^property[+].code = #entity
  * ^property[=].valueString = "PSS"
* #EXPECT_02 "EXPECT_02 — Wie sehr erwarten Sie in 6 Monaten durch Körperbeschwerden …"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "EXPECT"
  * ^property[+].code = #category
  * ^property[=].valueString = "DCH"
  * ^property[+].code = #entity
  * ^property[=].valueString = "PSS"
* #EXPECT_03 "EXPECT_03 — Wie gut erwarten Sie, in 6 Monaten mit möglichen Körperbeschwerden …"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "EXPECT"
  * ^property[+].code = #category
  * ^property[=].valueString = "DCH"
  * ^property[+].code = #entity
  * ^property[=].valueString = "PSS"

// ── GIPS-ALC1 ──
* #GIPS56a "GIPS56a — Trinken Sie Alkohol ?"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "GIPS-ALC1"
  * ^property[+].code = #category
  * ^property[=].valueString = "MHI"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN, NTx, PSS"

// ── GIPS-ALC2a ──
* #GIPS56b1 "GIPS56b1 — Haben Sie jemals daran gedacht, weniger zu trinken?"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "GIPS-ALC2a"
  * ^property[+].code = #category
  * ^property[=].valueString = "MHI"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN, NTx, PSS"

// ── GIPS-ALC2b ──
* #GIPS56b2 "GIPS56b2 — Haben Sie sich schon einmal darüber geärgert, dass Sie von anderen …"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "GIPS-ALC2b"
  * ^property[+].code = #category
  * ^property[=].valueString = "MHI"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN, NTx, PSS"

// ── GIPS-ALC2c ──
* #GIPS56b3 "GIPS56b3 — Haben Sie sich jemals wegen Ihres Trinkens schuldig gefühlt?"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "GIPS-ALC2c"
  * ^property[+].code = #category
  * ^property[=].valueString = "MHI"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN, NTx, PSS"

// ── GIPS-ALC2d ──
* #GIPS56b4 "GIPS56b4 — Haben Sie jemals morgens als erstes Alkohol getrunken, um sich …"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "GIPS-ALC2d"
  * ^property[+].code = #category
  * ^property[=].valueString = "MHI"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN, NTx, PSS"

// ── GIPS-CD ──
* #GIPS13 "GIPS13 — Chronische Erkrankung"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "GIPS-CD"
  * ^property[+].code = #category
  * ^property[=].valueString = "MHI"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN, NTx"

// ── GIPS-DR ──
* #GIPS58 "GIPS58 — Nutzen Sie hin und wieder eine der folgenden Substanzen: Cannabis, …"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "GIPS-DR"
  * ^property[+].code = #category
  * ^property[=].valueString = "MHI"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN, NTx, PSS"

// ── GIPS-REL ──
* #GIPS04 "GIPS04 — Partner"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "GIPS-REL"
  * ^property[+].code = #category
  * ^property[=].valueString = "DEM"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN, NTx, PSS"

// ── GIPS-RET ──
* #GIPS10 "GIPS10 — Rente"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "GIPS-RET"
  * ^property[+].code = #category
  * ^property[=].valueString = "DEM"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN, NTx, PSS"

// ── GIPS-SMO1 ──
* #GIPS57a "GIPS57a — Rauchen Sie (einschließlich E-Zigaretten)?"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "GIPS-SMO1"
  * ^property[+].code = #category
  * ^property[=].valueString = "MHI"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN, NTx, PSS"

// ── GIPS-SMO2 ──
* #GIPS57b "GIPS57b — Wie viele Zigaretten rauchen Sie pro Tag?"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "GIPS-SMO2"
  * ^property[+].code = #category
  * ^property[=].valueString = "MHI"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN, NTx, PSS"

// ── GSLTPAQ ──
* #GSLTPAQ_01_w "GSLTPAQ_01_w — Anstrengende körperliche Aktivität (erhöhte Anstrengung und …"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "GSLTPAQ"
  * ^property[+].code = #category
  * ^property[=].valueString = "TCH"
  * ^property[+].code = #entity
  * ^property[=].valueString = "PSS"
* #GSLTPAQ_01_m "GSLTPAQ_01_m"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "GSLTPAQ"
  * ^property[+].code = #category
  * ^property[=].valueString = "TCH"
  * ^property[+].code = #entity
  * ^property[=].valueString = "PSS"
* #GSLTPAQ_02_w "GSLTPAQ_02_w — Mäßige körperliche Aktivität (kaum erhöhte Anstrengung und leichtes …"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "GSLTPAQ"
  * ^property[+].code = #category
  * ^property[=].valueString = "TCH"
  * ^property[+].code = #entity
  * ^property[=].valueString = "PSS"
* #GSLTPAQ_02_m "GSLTPAQ_02_m"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "GSLTPAQ"
  * ^property[+].code = #category
  * ^property[=].valueString = "TCH"
  * ^property[+].code = #entity
  * ^property[=].valueString = "PSS"
* #GSLTPAQ_03_w "GSLTPAQ_03_w — Leichte körperliche Aktivität (keine erhöhte Anstrengung und kein …"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "GSLTPAQ"
  * ^property[+].code = #category
  * ^property[=].valueString = "TCH"
  * ^property[+].code = #entity
  * ^property[=].valueString = "PSS"
* #GSLTPAQ_03_m "GSLTPAQ_03_m"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "GSLTPAQ"
  * ^property[+].code = #category
  * ^property[=].valueString = "TCH"
  * ^property[+].code = #entity
  * ^property[=].valueString = "PSS"

// ── IPQ-S ──
* #IPQ_S1 "IPQ_S1 — Bitte führen Sie nun die drei wichtigsten Gründe auf, die Ihrer …"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "IPQ-S"
  * ^property[+].code = #category
  * ^property[=].valueString = "DCH"
  * ^property[+].code = #entity
  * ^property[=].valueString = "PSS"

// ── OECD-COB ──
* #MEDHIMS6 "MEDHIMS6 — Sind Sie in Deutschland geboren?"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "OECD-COB"
  * ^property[+].code = #category
  * ^property[=].valueString = "DEM"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN, NTx, PSS"
* #MEDHIMS6_country "MEDHIMS6_country — Bitte geben Sie an, in welchem Land Sie geboren sind"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "OECD-COB"
  * ^property[+].code = #category
  * ^property[=].valueString = "DEM"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN, NTx, PSS"

// ── OECD-ED ──
* #Q_ISCED "Q_ISCED — Was ist der höchste Bildungsabschluss, den Sie erreicht haben?"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "OECD-ED"
  * ^property[+].code = #category
  * ^property[=].valueString = "DEM"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN, NTx, PSS"

// ── OECD-EMPL ──
* #Q_OECDLIT5a "Q_OECDLIT5a — Welcher der folgenden Begriffe beschreibt am besten Ihre derzeitige …"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "OECD-EMPL"
  * ^property[+].code = #category
  * ^property[=].valueString = "DEM"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN, NTx, PSS"

// ── OECD-EMPL1 ──
* #Q_OECDLIT7a "Q_OECDLIT7a — In welche dieser Kategorien fällt Ihr Netto-Haushaltseinkommen …"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "OECD-EMPL1"
  * ^property[+].code = #category
  * ^property[=].valueString = "DEM"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN, NTx, PSS"

// ── OECD-FD ──
* #Q_MONMED "Q_MONMED — Hatten Sie in den vergangenen 12 Monaten Schwierigkeiten, …"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "OECD-FD"
  * ^property[+].code = #category
  * ^property[=].valueString = "DEM"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN, NTx, PSS"
* #MONMEAL "MONMEAL — Genug Geld zu haben, um gesunde Mahlzeiten bezahlen zu können"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "OECD-FD"
  * ^property[+].code = #category
  * ^property[=].valueString = "DEM"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN, NTx, PSS"
* #MONRENT "MONRENT — Genug Geld zu haben, um die Miete oder einen Kredit bezahlen zu …"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "OECD-FD"
  * ^property[+].code = #category
  * ^property[=].valueString = "DEM"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN, NTx, PSS"
* #MONBILLS "MONBILLS — Genug Geld zu haben, um monatliche Rechnungen bezahlen zu können, …"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "OECD-FD"
  * ^property[+].code = #category
  * ^property[=].valueString = "DEM"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN, NTx, PSS"

// ── OECD-G ──
* #Q_SEX "Q_SEX — Welcher der folgenden Begriffe trifft am besten auf Sie zu?"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "OECD-G"
  * ^property[+].code = #category
  * ^property[=].valueString = "DEM"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN, NTx, PSS"

// ── OECD-G1 ──
* #Q_GENDERID "Q_GENDERID — Entspricht Ihre Geschlechtsidentität dem Geschlecht, das Ihnen bei …"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "OECD-G1"
  * ^property[+].code = #category
  * ^property[=].valueString = "DEM"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN, NTx, PSS"

// ── OECD-H ──
* #Q_WB152a "Q_WB152a — Wie gross sind Sie?"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "OECD-H"
  * ^property[+].code = #category
  * ^property[=].valueString = "MHI"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN, NTx, PSS"

// ── OECD-HS ──
* #OECDLIT2a "OECDLIT2a — Wie viele Kinder unter 18 Jahren leben mit Ihnen in Ihrem Haushalt?"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "OECD-HS"
  * ^property[+].code = #category
  * ^property[=].valueString = "DEM"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN, NTx, PSS"

// ── OECD-HS1 ──
* #OECDLIT2b "OECDLIT2b — Wie viele Personen im Alter von 18 Jahren oder älter leben mit …"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "OECD-HS1"
  * ^property[+].code = #category
  * ^property[=].valueString = "DEM"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN, NTx, PSS"

// ── OECD-NAT ──
* #MEDHIMS7 "MEDHIMS7 — Sind Sie Deutsche/r Staatsbürger/in?"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "OECD-NAT"
  * ^property[+].code = #category
  * ^property[=].valueString = "DEM"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN, NTx, PSS"
* #MEDHIMS7_nationality "MEDHIMS7_nationality — Bitte geben Sie an, welche Staatsbürgerschaft Sie besitzen"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "OECD-NAT"
  * ^property[+].code = #category
  * ^property[=].valueString = "DEM"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN, NTx, PSS"

// ── OECD-S1 ──
* #WHODIS1 "WHODIS1 — Ein enges Familienmitglied (einschliesslich Ihrer Partnerin/Ihres …"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "OECD-S1"
  * ^property[+].code = #category
  * ^property[=].valueString = "DEM"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN, NTx, PSS"

// ── OECD-S2 ──
* #WHODIS2 "WHODIS2 — Freundinnen/Freunde, Nachbarinnen/Nachbarn und …"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "OECD-S2"
  * ^property[+].code = #category
  * ^property[=].valueString = "DEM"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN, NTx, PSS"

// ── OECD-U ──
* #Q_OECDLITii "Q_OECDLITii — Welche Bezeichnung beschreibt den Ort an dem Sie leben am besten?"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "OECD-U"
  * ^property[+].code = #category
  * ^property[=].valueString = "DEM"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN, NTx, PSS"

// ── OECD-W ──
* #Q_WB151a "Q_WB151a — Wie viel wiegen Sie?"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "OECD-W"
  * ^property[+].code = #category
  * ^property[=].valueString = "MHI"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN, NTx, PSS"

// ── OPD-SFK ──
* #OPDSFK01 "OPDSFK01 — Ich erlebe mich manchmal wie eine fremde Person."
  * ^property[+].code = #instrument
  * ^property[=].valueString = "OPD-SFK"
  * ^property[+].code = #category
  * ^property[=].valueString = "MHA"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN, PSS"
* #OPDSFK02 "OPDSFK02 — Wenn ich viel über mich nachdenke, gerate ich eher in Verwirrung."
  * ^property[+].code = #instrument
  * ^property[=].valueString = "OPD-SFK"
  * ^property[+].code = #category
  * ^property[=].valueString = "MHA"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN, PSS"
* #OPDSFK03 "OPDSFK03 — Wenn man andere zu nahe an sich heran lässt, kann das gefährlich …"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "OPD-SFK"
  * ^property[+].code = #category
  * ^property[=].valueString = "MHA"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN, PSS"
* #OPDSFK04 "OPDSFK04 — Ich kann mich anderen oft schwer verständlich machen."
  * ^property[+].code = #instrument
  * ^property[=].valueString = "OPD-SFK"
  * ^property[+].code = #category
  * ^property[=].valueString = "MHA"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN, PSS"
* #OPDSFK05 "OPDSFK05 — In mir herrscht oft ein solches Gefühlschaos, dass ich es gar nicht …"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "OPD-SFK"
  * ^property[+].code = #category
  * ^property[=].valueString = "MHA"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN, PSS"
* #OPDSFK06 "OPDSFK06 — Ich schätze manchmal falsch ein, wie mein Verhalten auf andere …"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "OPD-SFK"
  * ^property[+].code = #category
  * ^property[=].valueString = "MHA"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN, PSS"
* #OPDSFK07 "OPDSFK07 — Wenn andere viel über mich wissen, fühle ich mich oft irgendwie …"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "OPD-SFK"
  * ^property[+].code = #category
  * ^property[=].valueString = "MHA"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN, PSS"
* #OPDSFK08 "OPDSFK08 — Meine Gefühle sind manchmal so intensiv, dass ich Angst bekomme."
  * ^property[+].code = #instrument
  * ^property[=].valueString = "OPD-SFK"
  * ^property[+].code = #category
  * ^property[=].valueString = "MHA"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN, PSS"
* #OPDSFK09 "OPDSFK09 — Ich bin schon sehr verletzt worden, weil ich mich in einem Menschen …"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "OPD-SFK"
  * ^property[+].code = #category
  * ^property[=].valueString = "MHA"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN, PSS"
* #OPDSFK10 "OPDSFK10 — Es fällt mir schwer, zu anderen Kontakt aufzunehmen."
  * ^property[+].code = #instrument
  * ^property[=].valueString = "OPD-SFK"
  * ^property[+].code = #category
  * ^property[=].valueString = "MHA"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN, PSS"
* #OPDSFK11 "OPDSFK11 — Ich habe kein gutes Selbstbewusstsein."
  * ^property[+].code = #instrument
  * ^property[=].valueString = "OPD-SFK"
  * ^property[+].code = #category
  * ^property[=].valueString = "MHA"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN, PSS"
* #OPDSFK12 "OPDSFK12 — Meine Erfahrung ist: Wenn man Menschen zu sehr vertraut, kann man …"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "OPD-SFK"
  * ^property[+].code = #category
  * ^property[=].valueString = "MHA"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN, PSS"

// ── SSUK-2 ──
* #ssuk14 "ssuk14 — Sie aufmuntert oder tröstet"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "SSUK-2"
  * ^property[+].code = #category
  * ^property[=].valueString = "EFA"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN"
* #ssuk10 "ssuk10 — die Auswirkung Ihrer Erkrankung herunterspielt."
  * ^property[+].code = #instrument
  * ^property[=].valueString = "SSUK-2"
  * ^property[+].code = #category
  * ^property[=].valueString = "EFA"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN"

// ── UKE-MEDI ──
* #MEDI_01 "MEDI_01 — Wie viele Medikamente nehmen Sie insgesamt momentan ein?"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "UKE-MEDI"
  * ^property[+].code = #category
  * ^property[=].valueString = "MHI"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN, NTx, PSS"

// ── UKE-MEDI2 ──
* #medi_02_name_01 "medi_02_name_01 — Name des Medikaments"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "UKE-MEDI2"
  * ^property[+].code = #category
  * ^property[=].valueString = "MHI"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN, NTx, PSS"
* #medi_02_onset_01 "medi_02_onset_01 — Seit wann nehmen Sie dieses Medikament ein ?"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "UKE-MEDI2"
  * ^property[+].code = #category
  * ^property[=].valueString = "MHI"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN, NTx, PSS"
* #medi_02_dose_01 "medi_02_dose_01 — Falls bekannt: Wie ist die Dosierung dieses Medikaments?"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "UKE-MEDI2"
  * ^property[+].code = #category
  * ^property[=].valueString = "MHI"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN, NTx, PSS"
* #medi_02_time_01 "medi_02_time_01 — Wann nehmen Sie dieses Medikament ein ?"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "UKE-MEDI2"
  * ^property[+].code = #category
  * ^property[=].valueString = "MHI"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN, NTx, PSS"
* #medi_02_frequency_01 "medi_02_frequency_01 — Wie häufig nehmen Sie dieses Medikament pro Woche ein ?"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "UKE-MEDI2"
  * ^property[+].code = #category
  * ^property[=].valueString = "MHI"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN, NTx, PSS"
* #medi_02_name_02 "medi_02_name_02 — Name des Medikaments"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "UKE-MEDI2"
  * ^property[+].code = #category
  * ^property[=].valueString = "MHI"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN, NTx, PSS"
* #medi_02_onset_02 "medi_02_onset_02 — Seit wann nehmen Sie dieses Medikament ein ?"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "UKE-MEDI2"
  * ^property[+].code = #category
  * ^property[=].valueString = "MHI"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN, NTx, PSS"
* #medi_02_dose_02 "medi_02_dose_02 — Falls bekannt: Wie ist die Dosierung dieses Medikaments?"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "UKE-MEDI2"
  * ^property[+].code = #category
  * ^property[=].valueString = "MHI"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN, NTx, PSS"
* #medi_02_time_02 "medi_02_time_02 — Wann nehmen Sie dieses Medikament ein ?"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "UKE-MEDI2"
  * ^property[+].code = #category
  * ^property[=].valueString = "MHI"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN, NTx, PSS"
* #medi_02_frequency_02 "medi_02_frequency_02 — Wie häufig nehmen Sie dieses Medikament pro Woche ein ?"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "UKE-MEDI2"
  * ^property[+].code = #category
  * ^property[=].valueString = "MHI"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN, NTx, PSS"
* #medi_02_name_03 "medi_02_name_03 — Name des Medikaments"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "UKE-MEDI2"
  * ^property[+].code = #category
  * ^property[=].valueString = "MHI"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN, NTx, PSS"
* #medi_02_onset_03 "medi_02_onset_03 — Seit wann nehmen Sie dieses Medikament ein ?"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "UKE-MEDI2"
  * ^property[+].code = #category
  * ^property[=].valueString = "MHI"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN, NTx, PSS"
* #medi_02_dose_03 "medi_02_dose_03 — Falls bekannt: Wie ist die Dosierung dieses Medikaments?"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "UKE-MEDI2"
  * ^property[+].code = #category
  * ^property[=].valueString = "MHI"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN, NTx, PSS"
* #medi_02_time_03 "medi_02_time_03 — Wann nehmen Sie dieses Medikament ein ?"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "UKE-MEDI2"
  * ^property[+].code = #category
  * ^property[=].valueString = "MHI"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN, NTx, PSS"
* #medi_02_frequency_03 "medi_02_frequency_03 — Wie häufig nehmen Sie dieses Medikament pro Woche ein ?"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "UKE-MEDI2"
  * ^property[+].code = #category
  * ^property[=].valueString = "MHI"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN, NTx, PSS"
* #medi_02_name_04 "medi_02_name_04 — Name des Medikaments"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "UKE-MEDI2"
  * ^property[+].code = #category
  * ^property[=].valueString = "MHI"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN, NTx, PSS"
* #medi_02_onset_04 "medi_02_onset_04 — Seit wann nehmen Sie dieses Medikament ein ?"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "UKE-MEDI2"
  * ^property[+].code = #category
  * ^property[=].valueString = "MHI"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN, NTx, PSS"
* #medi_02_dose_04 "medi_02_dose_04 — Falls bekannt: Wie ist die Dosierung dieses Medikaments?"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "UKE-MEDI2"
  * ^property[+].code = #category
  * ^property[=].valueString = "MHI"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN, NTx, PSS"
* #medi_02_time_04 "medi_02_time_04 — Wann nehmen Sie dieses Medikament ein ?"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "UKE-MEDI2"
  * ^property[+].code = #category
  * ^property[=].valueString = "MHI"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN, NTx, PSS"
* #medi_02_frequency_04 "medi_02_frequency_04 — Wie häufig nehmen Sie dieses Medikament pro Woche ein ?"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "UKE-MEDI2"
  * ^property[+].code = #category
  * ^property[=].valueString = "MHI"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN, NTx, PSS"
* #medi_02_name_05 "medi_02_name_05 — Name des Medikaments"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "UKE-MEDI2"
  * ^property[+].code = #category
  * ^property[=].valueString = "MHI"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN, NTx, PSS"
* #medi_02_onset_05 "medi_02_onset_05 — Seit wann nehmen Sie dieses Medikament ein ?"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "UKE-MEDI2"
  * ^property[+].code = #category
  * ^property[=].valueString = "MHI"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN, NTx, PSS"
* #medi_02_dose_05 "medi_02_dose_05 — Falls bekannt: Wie ist die Dosierung dieses Medikaments?"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "UKE-MEDI2"
  * ^property[+].code = #category
  * ^property[=].valueString = "MHI"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN, NTx, PSS"
* #medi_02_time_05 "medi_02_time_05 — Wann nehmen Sie dieses Medikament ein ?"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "UKE-MEDI2"
  * ^property[+].code = #category
  * ^property[=].valueString = "MHI"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN, NTx, PSS"
* #medi_02_frequency_05 "medi_02_frequency_05 — Wie häufig nehmen Sie dieses Medikament pro Woche ein ?"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "UKE-MEDI2"
  * ^property[+].code = #category
  * ^property[=].valueString = "MHI"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN, NTx, PSS"

// ── UKHD-AN ──
* #AN_subtyp "AN_subtyp — Welchem Subtyp der Anorexia nervosa würden Sie sich zu ordnen?"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "UKHD-AN"
  * ^property[+].code = #category
  * ^property[=].valueString = "MHI"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN"

// ── UKHD-ANB ──
* #AN_biography "AN_biography — Wie lange sind Sie bereits von Ihrer Essstörung betroffen?"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "UKHD-ANB"
  * ^property[+].code = #category
  * ^property[=].valueString = "DCH"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN"
* #lowBMI "lowBMI — Welches war Ihr niedrigter BMI?"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "UKHD-ANB"
  * ^property[+].code = #category
  * ^property[=].valueString = "DCH"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN"

// ── UKHD-CT ──
* #treatment_outpatient "treatment_outpatient — Sind Sie zurzeit in psychotherapeutischer Behandlung?"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "UKHD-CT"
  * ^property[+].code = #category
  * ^property[=].valueString = "TCH"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN"

// ── UKHD-CTT ──
* #traumaspecific1 "traumaspecific1 — Handelt es sich bei Ihrer Angabe um ein einmaliges oder um ein sich …"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "UKHD-CTT"
  * ^property[+].code = #category
  * ^property[=].valueString = "EFA"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN"
* #traumaspecific2 "traumaspecific2 — Passierte dieses Ereignis vor oder nach den ersten Anzeichen der …"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "UKHD-CTT"
  * ^property[+].code = #category
  * ^property[=].valueString = "EFA"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN"
* #traumaspecific3 "traumaspecific3 — Handelt es sich bei Ihrer Angabe um ein einmaliges oder um ein sich …"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "UKHD-CTT"
  * ^property[+].code = #category
  * ^property[=].valueString = "EFA"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN"
* #traumaspecific4 "traumaspecific4 — Passierte dieses Ereignis vor oder nach den ersten Anzeichen der …"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "UKHD-CTT"
  * ^property[+].code = #category
  * ^property[=].valueString = "EFA"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN"
* #traumaspecific5 "traumaspecific5 — Handelt es sich bei Ihrer Angabe um ein einmaliges oder um ein sich …"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "UKHD-CTT"
  * ^property[+].code = #category
  * ^property[=].valueString = "EFA"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN"
* #traumaspecific6 "traumaspecific6 — Passierte dieses Ereignis vor oder nach den ersten Anzeichen der …"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "UKHD-CTT"
  * ^property[+].code = #category
  * ^property[=].valueString = "EFA"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN"

// ── UKHD-LE ──
* #life_event1_screening "life_event1_screening — Gab es in Ihrem Leben prägende belastende Lebensereignisse, die Sie …"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "UKHD-LE"
  * ^property[+].code = #category
  * ^property[=].valueString = "EFA"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN"
* #life_event1_monitoring "life_event1_monitoring — Gab es seit der letzten Befragung prägende belastende …"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "UKHD-LE"
  * ^property[+].code = #category
  * ^property[=].valueString = "EFA"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN"
* #lifev_discharge "lifev_discharge — Gab es seit Ihrer Aufnahme prägende belastende Lebensereignisse, …"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "UKHD-LE"
  * ^property[+].code = #category
  * ^property[=].valueString = "EFA"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN"
* #lifev_text "lifev_text — Bitte benennen Sie diese Lebensereignisse:"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "UKHD-LE"
  * ^property[+].code = #category
  * ^property[=].valueString = "EFA"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN"

// ── UKHD-MEDI ──
* #medication1 "medication1 — Nehmen Sie aktuell Medikamente (einschließlich der Pille) ein?"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "UKHD-MEDI"
  * ^property[+].code = #category
  * ^property[=].valueString = "MHI"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN, NTx, PSS"

// ── UKHD-MEDI2 ──
* #medication_text "medication_text — Bitte nennen Sie alle Medikamente, die sie aktuell regelmäßig oder …"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "UKHD-MEDI2"
  * ^property[+].code = #category
  * ^property[=].valueString = "MHI"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN, NTx, PSS"

// ── UKHD-ND ──
* #new_diagnosis_monitoring "new_diagnosis_monitoring — Gab es seit der letzten Befragung weitere medizinische / psychische …"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "UKHD-ND"
  * ^property[+].code = #category
  * ^property[=].valueString = "DCH"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN"
* #new_diagnosis_discharge "new_diagnosis_discharge — Gab es seit Ihrer Aufnahme weitere medizinische / psychische …"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "UKHD-ND"
  * ^property[+].code = #category
  * ^property[=].valueString = "DCH"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN"
* #new_diagnosis_text "new_diagnosis_text — Bitte tragen Sie diese Diagnosen in das folgende Textfeld ein."
  * ^property[+].code = #instrument
  * ^property[=].valueString = "UKHD-ND"
  * ^property[+].code = #category
  * ^property[=].valueString = "DCH"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN"

// ── UKHD-PT ──
* #bdkm15 "bdkm15 — Waren Sie früher oder sind Sie zurzeit in psychotherapeutischer …"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "UKHD-PT"
  * ^property[+].code = #category
  * ^property[=].valueString = "TCH"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN"
* #bdkm16 "bdkm16 — Wie oft haben Sie in den letzten 4 Wochen einen Arzt aufgesucht?"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "UKHD-PT"
  * ^property[+].code = #category
  * ^property[=].valueString = "TCH"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN"

// ── UKHD-W ──
* #weight_outpatient_1 "weight_outpatient_1 — Zur Messung des Körpergewichts empfehlen wir einen Kontrollbesuch …"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "UKHD-W"
  * ^property[+].code = #category
  * ^property[=].valueString = "MHI"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN"
* #weight_outpatient_2 "weight_outpatient_2 — Wie haben Sie das oben genannte Gewicht ermittelt?"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "UKHD-W"
  * ^property[+].code = #category
  * ^property[=].valueString = "MHI"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN"
* #weight_inpatient "weight_inpatient — Wie viel wiegen Sie aktuell in kg?"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "UKHD-W"
  * ^property[+].code = #category
  * ^property[=].valueString = "MHI"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN"
* #weight_discharge "weight_discharge — Wie viel wiegen Sie aktuell in kg?"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "UKHD-W"
  * ^property[+].code = #category
  * ^property[=].valueString = "MHI"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN"

// ── UKHD_D ──
* #diagnosis_admit "diagnosis_admit — Welche Diagnose/-n sollen bei Ihnen hier behandelt werden?"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "UKHD_D"
  * ^property[+].code = #category
  * ^property[=].valueString = "DCH"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN"
* #comorbid1 "comorbid1 — Gibt es außer den zurvor genannten Diagnosen noch andere Diagnosen?"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "UKHD_D"
  * ^property[+].code = #category
  * ^property[=].valueString = "DCH"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN"

// ── WAI ──
* #WAI01 "WAI01 — Wenn Sie Ihre beste, je erreichte Arbeitsfähigkeit mit 10 Punkten …"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "WAI"
  * ^property[+].code = #category
  * ^property[=].valueString = "GHS"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN, NTx, PSS"
* #WAI02a "WAI02a — Wie schätzen Sie Ihre derzeitige Arbeitsfähigkeit in Bezug auf die …"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "WAI"
  * ^property[+].code = #category
  * ^property[=].valueString = "GHS"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN, NTx, PSS"
* #WAI02b "WAI02b — Wie schätzen Sie Ihre derzeitige Arbeitsfähigkeit in Bezug auf die …"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "WAI"
  * ^property[+].code = #category
  * ^property[=].valueString = "GHS"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN, NTx, PSS"
