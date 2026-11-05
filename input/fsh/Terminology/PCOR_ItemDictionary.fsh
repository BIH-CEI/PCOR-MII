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
//
//   ACHTUNG BEI DEN UKHD-WERTEN: Fuer die UKHD-*-Zeilen ist der Wert KEIN
//   Instrument, sondern ein ZUSAMMENSTELLUNGS-ETIKETT — die Handanweisung des
//   Master-Excel definiert die INSTRUMENT-Spalte als Auswahl des
//   Erhebungswerkzeugs durch die Standorte. Aus dem Praefix darf weder
//   Autorenschaft noch Rechteinhaberschaft geschlossen werden; die Herkunft
//   des Wortlauts ist je Gruppe mit dem Standort zu klaeren (siehe Seite
//   UKHD-Zusatzitems). Die Property bleibt trotzdem die verlaessliche
//   GRUPPEN-Zuordnung — unabhaengig davon, in welcher Ressource ein Item
//   liegt (UKHD-CTT liegt im ACE, UKHD-AN/-W/-MEDI im MHI).
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

// ── UKHD-EDP ──
* #edp1 "edp1 — Angst vor Gewichtszunahme (Schlankheitsstreben) [metadata-only: Originalwortlaut nicht abgebildet]"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "UKHD-EDP"
  * ^property[+].code = #category
  * ^property[=].valueString = "DCH"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN"
* #edp2 "edp2 — Essmenge vor anderen, Essanfaelle allein (Bulimie) [metadata-only: Originalwortlaut nicht abgebildet]"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "UKHD-EDP"
  * ^property[+].code = #category
  * ^property[=].valueString = "DCH"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN"
* #edp3 "edp3 — Unzufriedenheit mit Koerperstellen (Koerperunzufriedenheit) [metadata-only: Originalwortlaut nicht abgebildet]"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "UKHD-EDP"
  * ^property[+].code = #category
  * ^property[=].valueString = "DCH"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN"
* #edp4 "edp4 — geringe Selbstbewertung (Ineffektivitaet) [metadata-only: Originalwortlaut nicht abgebildet]"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "UKHD-EDP"
  * ^property[+].code = #category
  * ^property[=].valueString = "DCH"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN"
* #edp5 "edp5 — Anspruch, der/die Beste zu sein (Perfektionismus) [metadata-only: Originalwortlaut nicht abgebildet]"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "UKHD-EDP"
  * ^property[+].code = #category
  * ^property[=].valueString = "DCH"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN"
* #edp6 "edp6 — Naehe in Beziehungen (Misstrauen, invers) [metadata-only: Originalwortlaut nicht abgebildet]"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "UKHD-EDP"
  * ^property[+].code = #category
  * ^property[=].valueString = "DCH"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN"
* #edp7 "edp7 — Gefuehle benennen koennen (interozeptive Wahrnehmung) [metadata-only: Originalwortlaut nicht abgebildet]"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "UKHD-EDP"
  * ^property[+].code = #category
  * ^property[=].valueString = "DCH"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN"
* #edp8 "edp8 — Haltung zum Erwachsensein (Angst vor dem Erwachsenwerden, invers) [metadata-only: Originalwortlaut nicht abgebildet]"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "UKHD-EDP"
  * ^property[+].code = #category
  * ^property[=].valueString = "DCH"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN"
* #edp9 "edp9 — Genuss beim Essen als Schwaeche (Askese) [metadata-only: Originalwortlaut nicht abgebildet]"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "UKHD-EDP"
  * ^property[+].code = #category
  * ^property[=].valueString = "DCH"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN"
* #edp10 "edp10 — spontane Aeusserungen, die bereut werden (Impulsregulation) [metadata-only: Originalwortlaut nicht abgebildet]"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "UKHD-EDP"
  * ^property[+].code = #category
  * ^property[=].valueString = "DCH"
  * ^property[+].code = #entity
  * ^property[=].valueString = "AN"
* #edp11 "edp11 — Kontaktfreude (soziale Unsicherheit, invers) [metadata-only: Originalwortlaut nicht abgebildet]"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "UKHD-EDP"
  * ^property[+].code = #category
  * ^property[=].valueString = "DCH"
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

// ── PHQ-D (Panik-Block) ──
* #phq3a "phq3a — Hatten Sie in den letzten 4 Wochen eine Angstattacke (plötzliches Gefühl der …"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "PHQ-D"
  * ^property[+].code = #category
  * ^property[=].valueString = "MHA"
  * ^property[+].code = #entity
  * ^property[=].valueString = "PSS"
* #phq3b "phq3b — Ist dies bereits früher einmal vorgekommen?"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "PHQ-D"
  * ^property[+].code = #category
  * ^property[=].valueString = "MHA"
  * ^property[+].code = #entity
  * ^property[=].valueString = "PSS"
* #phq3c "phq3c — Treten manche dieser Anfälle völlig unerwartet auf - d.h. in Situationen, in …"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "PHQ-D"
  * ^property[+].code = #category
  * ^property[=].valueString = "MHA"
  * ^property[+].code = #entity
  * ^property[=].valueString = "PSS"
* #phq3d "phq3d — Empfinden Sie diese Anfälle als stark beeinträchtigend, und/oder haben Sie …"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "PHQ-D"
  * ^property[+].code = #category
  * ^property[=].valueString = "MHA"
  * ^property[+].code = #entity
  * ^property[=].valueString = "PSS"
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

// ── BAASIS ──
* #BAASIS1A "BAASIS1A — Einnahme — Dosis ausgelassen, 4 Wochen — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "BAASIS"
  * ^property[+].code = #category
  * ^property[=].valueString = "TCH"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #BAASIS1A_a "BAASIS1A_a — Einnahme — Häufigkeit des Auslassens — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "BAASIS"
  * ^property[+].code = #category
  * ^property[=].valueString = "TCH"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #BAASIS1B "BAASIS1B — Einnahme — mehrere Dosen in Folge ausgelassen — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "BAASIS"
  * ^property[+].code = #category
  * ^property[=].valueString = "TCH"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #BAASIS1B_a "BAASIS1B_a — Einnahme — Häufigkeit des mehrfachen Auslassens — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "BAASIS"
  * ^property[+].code = #category
  * ^property[=].valueString = "TCH"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #BAASIS2 "BAASIS2 — Timing — Einnahmezeitpunkt um mehr als 2 h verfehlt — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "BAASIS"
  * ^property[+].code = #category
  * ^property[=].valueString = "TCH"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #BAASIS2_a "BAASIS2_a — Timing — Häufigkeit der Zeitabweichung — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "BAASIS"
  * ^property[+].code = #category
  * ^property[=].valueString = "TCH"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #BAASIS3 "BAASIS3 — Dosis — eigenmächtig geändert, 4 Wochen — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "BAASIS"
  * ^property[+].code = #category
  * ^property[=].valueString = "TCH"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #BAASIS4 "BAASIS4 — Persistenz — eigenmächtig abgesetzt, 1 Jahr — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "BAASIS"
  * ^property[+].code = #category
  * ^property[=].valueString = "TCH"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #BAASIS5 "BAASIS5 — Neuverordnung im letzten Jahr (Zusatzitem) — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "BAASIS"
  * ^property[+].code = #category
  * ^property[=].valueString = "TCH"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #BAASIS5_a "BAASIS5_a — Neuverordnung — eingelöst und begonnen — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "BAASIS"
  * ^property[+].code = #category
  * ^property[=].valueString = "TCH"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"

// ── ABQ ──
* #ABQ_01 "ABQ_01 — Adhärenzbarriere Item 01 (4 Stufen) — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "ABQ"
  * ^property[+].code = #category
  * ^property[=].valueString = "TCH"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #ABQ_02 "ABQ_02 — Adhärenzbarriere Item 02 (4 Stufen) — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "ABQ"
  * ^property[+].code = #category
  * ^property[=].valueString = "TCH"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #ABQ_03 "ABQ_03 — Adhärenzbarriere Item 03 (4 Stufen) — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "ABQ"
  * ^property[+].code = #category
  * ^property[=].valueString = "TCH"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #ABQ_04 "ABQ_04 — Adhärenzbarriere Item 04 (4 Stufen) — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "ABQ"
  * ^property[+].code = #category
  * ^property[=].valueString = "TCH"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #ABQ_05 "ABQ_05 — Adhärenzbarriere Item 05 (4 Stufen) — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "ABQ"
  * ^property[+].code = #category
  * ^property[=].valueString = "TCH"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #ABQ_06 "ABQ_06 — Adhärenzbarriere Item 06 (4 Stufen) — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "ABQ"
  * ^property[+].code = #category
  * ^property[=].valueString = "TCH"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #ABQ_07 "ABQ_07 — Adhärenzbarriere Item 07 (4 Stufen) — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "ABQ"
  * ^property[+].code = #category
  * ^property[=].valueString = "TCH"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #ABQ_08 "ABQ_08 — Adhärenzbarriere Item 08 (4 Stufen) — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "ABQ"
  * ^property[+].code = #category
  * ^property[=].valueString = "TCH"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #ABQ_09 "ABQ_09 — Adhärenzbarriere Item 09 (4 Stufen) — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "ABQ"
  * ^property[+].code = #category
  * ^property[=].valueString = "TCH"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #ABQ_10 "ABQ_10 — Adhärenzbarriere Item 10 (4 Stufen) — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "ABQ"
  * ^property[+].code = #category
  * ^property[=].valueString = "TCH"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #ABQ_11 "ABQ_11 — Adhärenzbarriere Item 11 (4 Stufen) — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "ABQ"
  * ^property[+].code = #category
  * ^property[=].valueString = "TCH"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #ABQ_12 "ABQ_12 — Adhärenzbarriere Item 12 (4 Stufen) — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "ABQ"
  * ^property[+].code = #category
  * ^property[=].valueString = "TCH"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #ABQ_13 "ABQ_13 — Adhärenzbarriere Item 13 (4 Stufen) — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "ABQ"
  * ^property[+].code = #category
  * ^property[=].valueString = "TCH"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #ABQ_14 "ABQ_14 — Adhärenzbarriere Item 14 (4 Stufen) — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "ABQ"
  * ^property[+].code = #category
  * ^property[=].valueString = "TCH"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #ABQ_15 "ABQ_15 — Adhärenzbarriere Item 15 (4 Stufen) — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "ABQ"
  * ^property[+].code = #category
  * ^property[=].valueString = "TCH"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #ABQ_16 "ABQ_16 — Adhärenzbarriere Item 16 (4 Stufen) — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "ABQ"
  * ^property[+].code = #category
  * ^property[=].valueString = "TCH"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"

// ── MTSOSD-R59 ──
* #MTSOSDR59_01 "MTSOSDR59_01 — Auftreten Symptom 01 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_01a "MTSOSDR59_01a — Belastung Symptom 01 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_02 "MTSOSDR59_02 — Auftreten Symptom 02 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_02a "MTSOSDR59_02a — Belastung Symptom 02 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_03 "MTSOSDR59_03 — Auftreten Symptom 03 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_03a "MTSOSDR59_03a — Belastung Symptom 03 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_04 "MTSOSDR59_04 — Auftreten Symptom 04 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_04a "MTSOSDR59_04a — Belastung Symptom 04 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_05 "MTSOSDR59_05 — Auftreten Symptom 05 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_05a "MTSOSDR59_05a — Belastung Symptom 05 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_06 "MTSOSDR59_06 — Auftreten Symptom 06 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_06a "MTSOSDR59_06a — Belastung Symptom 06 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_07 "MTSOSDR59_07 — Auftreten Symptom 07 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_07a "MTSOSDR59_07a — Belastung Symptom 07 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_08 "MTSOSDR59_08 — Auftreten Symptom 08 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_08a "MTSOSDR59_08a — Belastung Symptom 08 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_09 "MTSOSDR59_09 — Auftreten Symptom 09 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_09a "MTSOSDR59_09a — Belastung Symptom 09 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_10 "MTSOSDR59_10 — Auftreten Symptom 10 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_10a "MTSOSDR59_10a — Belastung Symptom 10 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_11 "MTSOSDR59_11 — Auftreten Symptom 11 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_11a "MTSOSDR59_11a — Belastung Symptom 11 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_12 "MTSOSDR59_12 — Auftreten Symptom 12 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_12a "MTSOSDR59_12a — Belastung Symptom 12 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_13 "MTSOSDR59_13 — Auftreten Symptom 13 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_13a "MTSOSDR59_13a — Belastung Symptom 13 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_14 "MTSOSDR59_14 — Auftreten Symptom 14 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_14a "MTSOSDR59_14a — Belastung Symptom 14 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_15 "MTSOSDR59_15 — Auftreten Symptom 15 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_15a "MTSOSDR59_15a — Belastung Symptom 15 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_16 "MTSOSDR59_16 — Auftreten Symptom 16 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_16a "MTSOSDR59_16a — Belastung Symptom 16 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_17 "MTSOSDR59_17 — Auftreten Symptom 17 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_17a "MTSOSDR59_17a — Belastung Symptom 17 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_18 "MTSOSDR59_18 — Auftreten Symptom 18 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_18a "MTSOSDR59_18a — Belastung Symptom 18 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_19 "MTSOSDR59_19 — Auftreten Symptom 19 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_19a "MTSOSDR59_19a — Belastung Symptom 19 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_20 "MTSOSDR59_20 — Auftreten Symptom 20 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_20a "MTSOSDR59_20a — Belastung Symptom 20 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_21 "MTSOSDR59_21 — Auftreten Symptom 21 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_21a "MTSOSDR59_21a — Belastung Symptom 21 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_22 "MTSOSDR59_22 — Auftreten Symptom 22 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_22a "MTSOSDR59_22a — Belastung Symptom 22 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_23 "MTSOSDR59_23 — Auftreten Symptom 23 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_23a "MTSOSDR59_23a — Belastung Symptom 23 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_24 "MTSOSDR59_24 — Auftreten Symptom 24 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_24a "MTSOSDR59_24a — Belastung Symptom 24 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_25 "MTSOSDR59_25 — Auftreten Symptom 25 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_25a "MTSOSDR59_25a — Belastung Symptom 25 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_26 "MTSOSDR59_26 — Auftreten Symptom 26 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_26a "MTSOSDR59_26a — Belastung Symptom 26 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_27_male "MTSOSDR59_27_male — Auftreten Symptom 27 (männlich) — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_27a_male "MTSOSDR59_27a_male — Belastung Symptom 27 (männlich) — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_27_female "MTSOSDR59_27_female — Auftreten Symptom 27 (weiblich) — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_27a_female "MTSOSDR59_27a_female — Belastung Symptom 27 (weiblich) — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_28 "MTSOSDR59_28 — Auftreten Symptom 28 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_28a "MTSOSDR59_28a — Belastung Symptom 28 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_29 "MTSOSDR59_29 — Auftreten Symptom 29 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_29a "MTSOSDR59_29a — Belastung Symptom 29 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_30 "MTSOSDR59_30 — Auftreten Symptom 30 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_30a "MTSOSDR59_30a — Belastung Symptom 30 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_31 "MTSOSDR59_31 — Auftreten Symptom 31 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_31a "MTSOSDR59_31a — Belastung Symptom 31 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_32 "MTSOSDR59_32 — Auftreten Symptom 32 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_32a "MTSOSDR59_32a — Belastung Symptom 32 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_33 "MTSOSDR59_33 — Auftreten Symptom 33 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_33a "MTSOSDR59_33a — Belastung Symptom 33 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_34 "MTSOSDR59_34 — Auftreten Symptom 34 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_34a "MTSOSDR59_34a — Belastung Symptom 34 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_35 "MTSOSDR59_35 — Auftreten Symptom 35 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_35a "MTSOSDR59_35a — Belastung Symptom 35 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_36 "MTSOSDR59_36 — Auftreten Symptom 36 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_36a "MTSOSDR59_36a — Belastung Symptom 36 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_37 "MTSOSDR59_37 — Auftreten Symptom 37 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_37a "MTSOSDR59_37a — Belastung Symptom 37 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_38 "MTSOSDR59_38 — Auftreten Symptom 38 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_38a "MTSOSDR59_38a — Belastung Symptom 38 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_39 "MTSOSDR59_39 — Auftreten Symptom 39 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_39a "MTSOSDR59_39a — Belastung Symptom 39 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_40 "MTSOSDR59_40 — Auftreten Symptom 40 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_40a "MTSOSDR59_40a — Belastung Symptom 40 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_41 "MTSOSDR59_41 — Auftreten Symptom 41 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_41a "MTSOSDR59_41a — Belastung Symptom 41 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_42 "MTSOSDR59_42 — Auftreten Symptom 42 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_42a "MTSOSDR59_42a — Belastung Symptom 42 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_43 "MTSOSDR59_43 — Auftreten Symptom 43 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_43a "MTSOSDR59_43a — Belastung Symptom 43 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_44 "MTSOSDR59_44 — Auftreten Symptom 44 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_44a "MTSOSDR59_44a — Belastung Symptom 44 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_45 "MTSOSDR59_45 — Auftreten Symptom 45 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_45a "MTSOSDR59_45a — Belastung Symptom 45 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_46 "MTSOSDR59_46 — Auftreten Symptom 46 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_46a "MTSOSDR59_46a — Belastung Symptom 46 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_47 "MTSOSDR59_47 — Auftreten Symptom 47 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_47a "MTSOSDR59_47a — Belastung Symptom 47 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_48 "MTSOSDR59_48 — Auftreten Symptom 48 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_48a "MTSOSDR59_48a — Belastung Symptom 48 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_49 "MTSOSDR59_49 — Auftreten Symptom 49 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_49a "MTSOSDR59_49a — Belastung Symptom 49 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_50 "MTSOSDR59_50 — Auftreten Symptom 50 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_50a "MTSOSDR59_50a — Belastung Symptom 50 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_51 "MTSOSDR59_51 — Auftreten Symptom 51 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_51a "MTSOSDR59_51a — Belastung Symptom 51 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_52 "MTSOSDR59_52 — Auftreten Symptom 52 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_52a "MTSOSDR59_52a — Belastung Symptom 52 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_53 "MTSOSDR59_53 — Auftreten Symptom 53 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_53a "MTSOSDR59_53a — Belastung Symptom 53 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_54 "MTSOSDR59_54 — Auftreten Symptom 54 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_54a "MTSOSDR59_54a — Belastung Symptom 54 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_55 "MTSOSDR59_55 — Auftreten Symptom 55 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_55a "MTSOSDR59_55a — Belastung Symptom 55 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_56 "MTSOSDR59_56 — Auftreten Symptom 56 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_56a "MTSOSDR59_56a — Belastung Symptom 56 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_57 "MTSOSDR59_57 — Auftreten Symptom 57 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_57a "MTSOSDR59_57a — Belastung Symptom 57 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_58 "MTSOSDR59_58 — Auftreten Symptom 58 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_58a "MTSOSDR59_58a — Belastung Symptom 58 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_59 "MTSOSDR59_59 — Auftreten Symptom 59 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_59a "MTSOSDR59_59a — Belastung Symptom 59 — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_60 "MTSOSDR59_60 — Auftreten Symptom 60 (Freitext) — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_60a "MTSOSDR59_60a — Belastung Symptom 60 (Freitext) — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_61 "MTSOSDR59_61 — Auftreten Symptom 61 (Freitext) — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_61a "MTSOSDR59_61a — Belastung Symptom 61 (Freitext) — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_62 "MTSOSDR59_62 — Auftreten Symptom 62 (Freitext) — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
* #MTSOSDR59_62a "MTSOSDR59_62a — Belastung Symptom 62 (Freitext) — metadata-only, Wortlaut nicht publizierbar"
  * ^property[+].code = #instrument
  * ^property[=].valueString = "MTSOSD-R59"
  * ^property[+].code = #category
  * ^property[=].valueString = "MSE"
  * ^property[+].code = #entity
  * ^property[=].valueString = "NTx"
