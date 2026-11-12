# PCOR-MII Item Level Dictionary — Variablen-IDs - PCOR-MII Implementation Guide v0.9.0

## CodeSystem: PCOR-MII Item Level Dictionary — Variablen-IDs (Experimental) 

This Code system is referenced in the definition of the following value sets:

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "pcor-item-dictionary",
  "url" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
  "version" : "0.9.0",
  "name" : "PcorItemDictionaryCS",
  "title" : "PCOR-MII Item Level Dictionary — Variablen-IDs",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-09-30",
  "publisher" : "BIH-CEI",
  "contact" : [{
    "name" : "BIH-CEI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.bihealth.org/"
    }]
  }],
  "description" : "Variablen-IDs des PCOR-MII Item Level Dictionary als Codes, damit sich ein flach erhobener Datensatz maschinell auf die Instrumenten-Questionnaires verteilen lässt (ADR-011). Jedes Item trägt seine Variable in `item.code`; die Zuordnung ist damit eine Nachschlage-Operation und keine Abbildung. Enthält nur die modellierten Variablen — `content = fragment`.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "caseSensitive" : true,
  "content" : "fragment",
  "property" : [{
    "code" : "instrument",
    "uri" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary#instrument",
    "description" : "INSTRUMENT-Spalte des Item Level Dictionary.",
    "type" : "string"
  },
  {
    "code" : "category",
    "uri" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary#category",
    "description" : "CATEGORY ID des Item Level Dictionary (GHS, DEM, MHI, MHA, DCH, TCH, EFA, MSE).",
    "type" : "string"
  },
  {
    "code" : "entity",
    "uri" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary#entity",
    "description" : "Entität(en), in denen die Variable erhoben wird.",
    "type" : "string"
  }],
  "concept" : [{
    "code" : "ace1",
    "display" : "ace1 — Hat ein Elternteil oder ein anderer Erwachsener in Ihrem Haushalt …",
    "property" : [{
      "code" : "instrument",
      "valueString" : "ACE"
    },
    {
      "code" : "category",
      "valueString" : "EFA"
    },
    {
      "code" : "entity",
      "valueString" : "AN"
    }]
  },
  {
    "code" : "ace2",
    "display" : "ace2 — Hat ein Elternteil oder ein anderer Erwachsener in Ihrem Haushalt …",
    "property" : [{
      "code" : "instrument",
      "valueString" : "ACE"
    },
    {
      "code" : "category",
      "valueString" : "EFA"
    },
    {
      "code" : "entity",
      "valueString" : "AN"
    }]
  },
  {
    "code" : "ace3",
    "display" : "ace3 — Hat ein Erwachsener oder eine Person, die mindestens 5 Jahre älter …",
    "property" : [{
      "code" : "instrument",
      "valueString" : "ACE"
    },
    {
      "code" : "category",
      "valueString" : "EFA"
    },
    {
      "code" : "entity",
      "valueString" : "AN"
    }]
  },
  {
    "code" : "ace4",
    "display" : "ace4 — Haben Sie oft oder sehr oft empfunden, dass niemand in Ihrer …",
    "property" : [{
      "code" : "instrument",
      "valueString" : "ACE"
    },
    {
      "code" : "category",
      "valueString" : "EFA"
    },
    {
      "code" : "entity",
      "valueString" : "AN"
    }]
  },
  {
    "code" : "ace5",
    "display" : "ace5 — Haben Sie oft oder sehr oft empfunden, dass Sie nicht genug zu …",
    "property" : [{
      "code" : "instrument",
      "valueString" : "ACE"
    },
    {
      "code" : "category",
      "valueString" : "EFA"
    },
    {
      "code" : "entity",
      "valueString" : "AN"
    }]
  },
  {
    "code" : "ansocq3",
    "display" : "ansocq3 — Die folgenden Feststellungen beziehen sich auf Körperteile, über …",
    "property" : [{
      "code" : "instrument",
      "valueString" : "ANSOCQ-2"
    },
    {
      "code" : "category",
      "valueString" : "TCH"
    },
    {
      "code" : "entity",
      "valueString" : "AN"
    }]
  },
  {
    "code" : "ansocq14",
    "display" : "ansocq14 — Die folgenden Feststellungen beziehen sich auf die Zeit, die mit …",
    "property" : [{
      "code" : "instrument",
      "valueString" : "ANSOCQ-2"
    },
    {
      "code" : "category",
      "valueString" : "TCH"
    },
    {
      "code" : "entity",
      "valueString" : "AN"
    }]
  },
  {
    "code" : "AGE",
    "display" : "AGE — Bitte geben Sie Ihr Geburtsdatum an",
    "property" : [{
      "code" : "instrument",
      "valueString" : "CPCOR-AGE"
    },
    {
      "code" : "category",
      "valueString" : "DEM"
    },
    {
      "code" : "entity",
      "valueString" : "AN, NTx, PSS"
    }]
  },
  {
    "code" : "CPCOR-DIAG",
    "display" : "CPCOR-DIAG — Zu welcher Gruppe würden Sie sich zuordnen?",
    "property" : [{
      "code" : "instrument",
      "valueString" : "CPCOR-DIAG"
    },
    {
      "code" : "category",
      "valueString" : "MHI"
    },
    {
      "code" : "entity",
      "valueString" : "AN, NTx, PSS"
    }]
  },
  {
    "code" : "CPCOR_ONSET",
    "display" : "CPCOR_ONSET — Bitte geben Sie an, in welchem Jahr Sie Ihre Diagnose erhalten haben",
    "property" : [{
      "code" : "instrument",
      "valueString" : "CPCOR-ONSET"
    },
    {
      "code" : "category",
      "valueString" : "MHI"
    },
    {
      "code" : "entity",
      "valueString" : "AN, NTx, PSS"
    }]
  },
  {
    "code" : "CPCOR_REQ",
    "display" : "CPCOR_REQ — Möchten Sie kontaktiert werden, um den aktuellen Gesundheitsstatus …",
    "property" : [{
      "code" : "instrument",
      "valueString" : "CPCOR-REQ"
    },
    {
      "code" : "category",
      "valueString" : "DEM"
    },
    {
      "code" : "entity",
      "valueString" : "AN, NTx, PSS"
    }]
  },
  {
    "code" : "edeq1",
    "display" : "edeq1 — AN WIE VIELEN DER LETZTEN 28 TAGE Haben Sie bewusst versucht, die …",
    "property" : [{
      "code" : "instrument",
      "valueString" : "EDE-Q6"
    },
    {
      "code" : "category",
      "valueString" : "DCH"
    },
    {
      "code" : "entity",
      "valueString" : "AN"
    }]
  },
  {
    "code" : "edeq7",
    "display" : "edeq7 — AN WIE VIELEN DER LETZTEN 28 TAGE Hat das Nachdenken über Nahrung, …",
    "property" : [{
      "code" : "instrument",
      "valueString" : "EDE-Q6"
    },
    {
      "code" : "category",
      "valueString" : "DCH"
    },
    {
      "code" : "entity",
      "valueString" : "AN"
    }]
  },
  {
    "code" : "edeq12",
    "display" : "edeq12 — AN WIE VIELEN DER LETZTEN 28 TAGE Hatten Sie einen starken Wunsch …",
    "property" : [{
      "code" : "instrument",
      "valueString" : "EDE-Q6"
    },
    {
      "code" : "category",
      "valueString" : "DCH"
    },
    {
      "code" : "entity",
      "valueString" : "AN"
    }]
  },
  {
    "code" : "edeq27",
    "display" : "edeq27 — WÄHREND DER LETZTEN VIER WOCHEN (28 TAGE) Wie unwohl haben Sie sich …",
    "property" : [{
      "code" : "instrument",
      "valueString" : "EDE-Q6"
    },
    {
      "code" : "category",
      "valueString" : "DCH"
    },
    {
      "code" : "entity",
      "valueString" : "AN"
    }]
  },
  {
    "code" : "edeq29",
    "display" : "edeq29 — Ist Ihre Regelblutung während der letzten drei bis vier Monate …",
    "property" : [{
      "code" : "instrument",
      "valueString" : "EDE-Q6"
    },
    {
      "code" : "category",
      "valueString" : "DCH"
    },
    {
      "code" : "entity",
      "valueString" : "AN"
    }]
  },
  {
    "code" : "edeq30",
    "display" : "edeq30 — Wenn ja, wie viele Regelblutungen sind ausgeblieben?",
    "property" : [{
      "code" : "instrument",
      "valueString" : "EDE-Q6"
    },
    {
      "code" : "category",
      "valueString" : "DCH"
    },
    {
      "code" : "entity",
      "valueString" : "AN"
    }]
  },
  {
    "code" : "erq1",
    "display" : "erq1 — Wenn ich mehr positive Gefühle (wie Freude oder Heiterkeit) …",
    "property" : [{
      "code" : "instrument",
      "valueString" : "ERQ-6"
    },
    {
      "code" : "category",
      "valueString" : "DCH"
    },
    {
      "code" : "entity",
      "valueString" : "AN"
    }]
  },
  {
    "code" : "erq2",
    "display" : "erq2 — Ich behalte meine Gefühle für mich.",
    "property" : [{
      "code" : "instrument",
      "valueString" : "ERQ-6"
    },
    {
      "code" : "category",
      "valueString" : "DCH"
    },
    {
      "code" : "entity",
      "valueString" : "AN"
    }]
  },
  {
    "code" : "erq3",
    "display" : "erq3 — Wenn ich weniger negative Gefühle (wie Traurigkeit oder Ärger) …",
    "property" : [{
      "code" : "instrument",
      "valueString" : "ERQ-6"
    },
    {
      "code" : "category",
      "valueString" : "DCH"
    },
    {
      "code" : "entity",
      "valueString" : "AN"
    }]
  },
  {
    "code" : "erq4",
    "display" : "erq4 — Ich halte meine Gefühle unter Kontrolle, indem ich sie nicht nach …",
    "property" : [{
      "code" : "instrument",
      "valueString" : "ERQ-6"
    },
    {
      "code" : "category",
      "valueString" : "DCH"
    },
    {
      "code" : "entity",
      "valueString" : "AN"
    }]
  },
  {
    "code" : "erq5",
    "display" : "erq5 — Ich halte meine Gefühle unter Kontrolle, indem ich über meine …",
    "property" : [{
      "code" : "instrument",
      "valueString" : "ERQ-6"
    },
    {
      "code" : "category",
      "valueString" : "DCH"
    },
    {
      "code" : "entity",
      "valueString" : "AN"
    }]
  },
  {
    "code" : "erq6",
    "display" : "erq6 — Wenn ich negative Gefühle empfinde, sorge ich dafür, sie nicht nach …",
    "property" : [{
      "code" : "instrument",
      "valueString" : "ERQ-6"
    },
    {
      "code" : "category",
      "valueString" : "DCH"
    },
    {
      "code" : "entity",
      "valueString" : "AN"
    }]
  },
  {
    "code" : "EXPECT_01",
    "display" : "EXPECT_01 — Welche Gesamtstärke Ihrer Körperbeschwerden erwarten Sie in 6 …",
    "property" : [{
      "code" : "instrument",
      "valueString" : "EXPECT"
    },
    {
      "code" : "category",
      "valueString" : "DCH"
    },
    {
      "code" : "entity",
      "valueString" : "PSS"
    }]
  },
  {
    "code" : "EXPECT_02",
    "display" : "EXPECT_02 — Wie sehr erwarten Sie in 6 Monaten durch Körperbeschwerden …",
    "property" : [{
      "code" : "instrument",
      "valueString" : "EXPECT"
    },
    {
      "code" : "category",
      "valueString" : "DCH"
    },
    {
      "code" : "entity",
      "valueString" : "PSS"
    }]
  },
  {
    "code" : "EXPECT_03",
    "display" : "EXPECT_03 — Wie gut erwarten Sie, in 6 Monaten mit möglichen Körperbeschwerden …",
    "property" : [{
      "code" : "instrument",
      "valueString" : "EXPECT"
    },
    {
      "code" : "category",
      "valueString" : "DCH"
    },
    {
      "code" : "entity",
      "valueString" : "PSS"
    }]
  },
  {
    "code" : "GIPS56a",
    "display" : "GIPS56a — Trinken Sie Alkohol ?",
    "property" : [{
      "code" : "instrument",
      "valueString" : "GIPS-ALC1"
    },
    {
      "code" : "category",
      "valueString" : "MHI"
    },
    {
      "code" : "entity",
      "valueString" : "AN, NTx, PSS"
    }]
  },
  {
    "code" : "GIPS56b1",
    "display" : "GIPS56b1 — Haben Sie jemals daran gedacht, weniger zu trinken?",
    "property" : [{
      "code" : "instrument",
      "valueString" : "GIPS-ALC2a"
    },
    {
      "code" : "category",
      "valueString" : "MHI"
    },
    {
      "code" : "entity",
      "valueString" : "AN, NTx, PSS"
    }]
  },
  {
    "code" : "GIPS56b2",
    "display" : "GIPS56b2 — Haben Sie sich schon einmal darüber geärgert, dass Sie von anderen …",
    "property" : [{
      "code" : "instrument",
      "valueString" : "GIPS-ALC2b"
    },
    {
      "code" : "category",
      "valueString" : "MHI"
    },
    {
      "code" : "entity",
      "valueString" : "AN, NTx, PSS"
    }]
  },
  {
    "code" : "GIPS56b3",
    "display" : "GIPS56b3 — Haben Sie sich jemals wegen Ihres Trinkens schuldig gefühlt?",
    "property" : [{
      "code" : "instrument",
      "valueString" : "GIPS-ALC2c"
    },
    {
      "code" : "category",
      "valueString" : "MHI"
    },
    {
      "code" : "entity",
      "valueString" : "AN, NTx, PSS"
    }]
  },
  {
    "code" : "GIPS56b4",
    "display" : "GIPS56b4 — Haben Sie jemals morgens als erstes Alkohol getrunken, um sich …",
    "property" : [{
      "code" : "instrument",
      "valueString" : "GIPS-ALC2d"
    },
    {
      "code" : "category",
      "valueString" : "MHI"
    },
    {
      "code" : "entity",
      "valueString" : "AN, NTx, PSS"
    }]
  },
  {
    "code" : "GIPS13",
    "display" : "GIPS13 — Chronische Erkrankung",
    "property" : [{
      "code" : "instrument",
      "valueString" : "GIPS-CD"
    },
    {
      "code" : "category",
      "valueString" : "MHI"
    },
    {
      "code" : "entity",
      "valueString" : "AN, NTx"
    }]
  },
  {
    "code" : "GIPS58",
    "display" : "GIPS58 — Nutzen Sie hin und wieder eine der folgenden Substanzen: Cannabis, …",
    "property" : [{
      "code" : "instrument",
      "valueString" : "GIPS-DR"
    },
    {
      "code" : "category",
      "valueString" : "MHI"
    },
    {
      "code" : "entity",
      "valueString" : "AN, NTx, PSS"
    }]
  },
  {
    "code" : "GIPS04",
    "display" : "GIPS04 — Partner",
    "property" : [{
      "code" : "instrument",
      "valueString" : "GIPS-REL"
    },
    {
      "code" : "category",
      "valueString" : "DEM"
    },
    {
      "code" : "entity",
      "valueString" : "AN, NTx, PSS"
    }]
  },
  {
    "code" : "GIPS10",
    "display" : "GIPS10 — Rente",
    "property" : [{
      "code" : "instrument",
      "valueString" : "GIPS-RET"
    },
    {
      "code" : "category",
      "valueString" : "DEM"
    },
    {
      "code" : "entity",
      "valueString" : "AN, NTx, PSS"
    }]
  },
  {
    "code" : "GIPS57a",
    "display" : "GIPS57a — Rauchen Sie (einschließlich E-Zigaretten)?",
    "property" : [{
      "code" : "instrument",
      "valueString" : "GIPS-SMO1"
    },
    {
      "code" : "category",
      "valueString" : "MHI"
    },
    {
      "code" : "entity",
      "valueString" : "AN, NTx, PSS"
    }]
  },
  {
    "code" : "GIPS57b",
    "display" : "GIPS57b — Wie viele Zigaretten rauchen Sie pro Tag?",
    "property" : [{
      "code" : "instrument",
      "valueString" : "GIPS-SMO2"
    },
    {
      "code" : "category",
      "valueString" : "MHI"
    },
    {
      "code" : "entity",
      "valueString" : "AN, NTx, PSS"
    }]
  },
  {
    "code" : "GSLTPAQ_01_w",
    "display" : "GSLTPAQ_01_w — Anstrengende körperliche Aktivität (erhöhte Anstrengung und …",
    "property" : [{
      "code" : "instrument",
      "valueString" : "GSLTPAQ"
    },
    {
      "code" : "category",
      "valueString" : "TCH"
    },
    {
      "code" : "entity",
      "valueString" : "PSS"
    }]
  },
  {
    "code" : "GSLTPAQ_01_m",
    "display" : "GSLTPAQ_01_m",
    "property" : [{
      "code" : "instrument",
      "valueString" : "GSLTPAQ"
    },
    {
      "code" : "category",
      "valueString" : "TCH"
    },
    {
      "code" : "entity",
      "valueString" : "PSS"
    }]
  },
  {
    "code" : "GSLTPAQ_02_w",
    "display" : "GSLTPAQ_02_w — Mäßige körperliche Aktivität (kaum erhöhte Anstrengung und leichtes …",
    "property" : [{
      "code" : "instrument",
      "valueString" : "GSLTPAQ"
    },
    {
      "code" : "category",
      "valueString" : "TCH"
    },
    {
      "code" : "entity",
      "valueString" : "PSS"
    }]
  },
  {
    "code" : "GSLTPAQ_02_m",
    "display" : "GSLTPAQ_02_m",
    "property" : [{
      "code" : "instrument",
      "valueString" : "GSLTPAQ"
    },
    {
      "code" : "category",
      "valueString" : "TCH"
    },
    {
      "code" : "entity",
      "valueString" : "PSS"
    }]
  },
  {
    "code" : "GSLTPAQ_03_w",
    "display" : "GSLTPAQ_03_w — Leichte körperliche Aktivität (keine erhöhte Anstrengung und kein …",
    "property" : [{
      "code" : "instrument",
      "valueString" : "GSLTPAQ"
    },
    {
      "code" : "category",
      "valueString" : "TCH"
    },
    {
      "code" : "entity",
      "valueString" : "PSS"
    }]
  },
  {
    "code" : "GSLTPAQ_03_m",
    "display" : "GSLTPAQ_03_m",
    "property" : [{
      "code" : "instrument",
      "valueString" : "GSLTPAQ"
    },
    {
      "code" : "category",
      "valueString" : "TCH"
    },
    {
      "code" : "entity",
      "valueString" : "PSS"
    }]
  },
  {
    "code" : "IPQ_S1",
    "display" : "IPQ_S1 — Bitte führen Sie nun die drei wichtigsten Gründe auf, die Ihrer …",
    "property" : [{
      "code" : "instrument",
      "valueString" : "IPQ-S"
    },
    {
      "code" : "category",
      "valueString" : "DCH"
    },
    {
      "code" : "entity",
      "valueString" : "PSS"
    }]
  },
  {
    "code" : "MEDHIMS6",
    "display" : "MEDHIMS6 — Sind Sie in Deutschland geboren?",
    "property" : [{
      "code" : "instrument",
      "valueString" : "OECD-COB"
    },
    {
      "code" : "category",
      "valueString" : "DEM"
    },
    {
      "code" : "entity",
      "valueString" : "AN, NTx, PSS"
    }]
  },
  {
    "code" : "MEDHIMS6_country",
    "display" : "MEDHIMS6_country — Bitte geben Sie an, in welchem Land Sie geboren sind",
    "property" : [{
      "code" : "instrument",
      "valueString" : "OECD-COB"
    },
    {
      "code" : "category",
      "valueString" : "DEM"
    },
    {
      "code" : "entity",
      "valueString" : "AN, NTx, PSS"
    }]
  },
  {
    "code" : "Q_ISCED",
    "display" : "Q_ISCED — Was ist der höchste Bildungsabschluss, den Sie erreicht haben?",
    "property" : [{
      "code" : "instrument",
      "valueString" : "OECD-ED"
    },
    {
      "code" : "category",
      "valueString" : "DEM"
    },
    {
      "code" : "entity",
      "valueString" : "AN, NTx, PSS"
    }]
  },
  {
    "code" : "Q_OECDLIT5a",
    "display" : "Q_OECDLIT5a — Welcher der folgenden Begriffe beschreibt am besten Ihre derzeitige …",
    "property" : [{
      "code" : "instrument",
      "valueString" : "OECD-EMPL"
    },
    {
      "code" : "category",
      "valueString" : "DEM"
    },
    {
      "code" : "entity",
      "valueString" : "AN, NTx, PSS"
    }]
  },
  {
    "code" : "Q_OECDLIT7a",
    "display" : "Q_OECDLIT7a — In welche dieser Kategorien fällt Ihr Netto-Haushaltseinkommen …",
    "property" : [{
      "code" : "instrument",
      "valueString" : "OECD-EMPL1"
    },
    {
      "code" : "category",
      "valueString" : "DEM"
    },
    {
      "code" : "entity",
      "valueString" : "AN, NTx, PSS"
    }]
  },
  {
    "code" : "Q_MONMED",
    "display" : "Q_MONMED — Hatten Sie in den vergangenen 12 Monaten Schwierigkeiten, …",
    "property" : [{
      "code" : "instrument",
      "valueString" : "OECD-FD"
    },
    {
      "code" : "category",
      "valueString" : "DEM"
    },
    {
      "code" : "entity",
      "valueString" : "AN, NTx, PSS"
    }]
  },
  {
    "code" : "MONMEAL",
    "display" : "MONMEAL — Genug Geld zu haben, um gesunde Mahlzeiten bezahlen zu können",
    "property" : [{
      "code" : "instrument",
      "valueString" : "OECD-FD"
    },
    {
      "code" : "category",
      "valueString" : "DEM"
    },
    {
      "code" : "entity",
      "valueString" : "AN, NTx, PSS"
    }]
  },
  {
    "code" : "MONRENT",
    "display" : "MONRENT — Genug Geld zu haben, um die Miete oder einen Kredit bezahlen zu …",
    "property" : [{
      "code" : "instrument",
      "valueString" : "OECD-FD"
    },
    {
      "code" : "category",
      "valueString" : "DEM"
    },
    {
      "code" : "entity",
      "valueString" : "AN, NTx, PSS"
    }]
  },
  {
    "code" : "MONBILLS",
    "display" : "MONBILLS — Genug Geld zu haben, um monatliche Rechnungen bezahlen zu können, …",
    "property" : [{
      "code" : "instrument",
      "valueString" : "OECD-FD"
    },
    {
      "code" : "category",
      "valueString" : "DEM"
    },
    {
      "code" : "entity",
      "valueString" : "AN, NTx, PSS"
    }]
  },
  {
    "code" : "Q_SEX",
    "display" : "Q_SEX — Welcher der folgenden Begriffe trifft am besten auf Sie zu?",
    "property" : [{
      "code" : "instrument",
      "valueString" : "OECD-G"
    },
    {
      "code" : "category",
      "valueString" : "DEM"
    },
    {
      "code" : "entity",
      "valueString" : "AN, NTx, PSS"
    }]
  },
  {
    "code" : "Q_GENDERID",
    "display" : "Q_GENDERID — Entspricht Ihre Geschlechtsidentität dem Geschlecht, das Ihnen bei …",
    "property" : [{
      "code" : "instrument",
      "valueString" : "OECD-G1"
    },
    {
      "code" : "category",
      "valueString" : "DEM"
    },
    {
      "code" : "entity",
      "valueString" : "AN, NTx, PSS"
    }]
  },
  {
    "code" : "Q_WB152a",
    "display" : "Q_WB152a — Wie gross sind Sie?",
    "property" : [{
      "code" : "instrument",
      "valueString" : "OECD-H"
    },
    {
      "code" : "category",
      "valueString" : "MHI"
    },
    {
      "code" : "entity",
      "valueString" : "AN, NTx, PSS"
    }]
  },
  {
    "code" : "OECDLIT2a",
    "display" : "OECDLIT2a — Wie viele Kinder unter 18 Jahren leben mit Ihnen in Ihrem Haushalt?",
    "property" : [{
      "code" : "instrument",
      "valueString" : "OECD-HS"
    },
    {
      "code" : "category",
      "valueString" : "DEM"
    },
    {
      "code" : "entity",
      "valueString" : "AN, NTx, PSS"
    }]
  },
  {
    "code" : "OECDLIT2b",
    "display" : "OECDLIT2b — Wie viele Personen im Alter von 18 Jahren oder älter leben mit …",
    "property" : [{
      "code" : "instrument",
      "valueString" : "OECD-HS1"
    },
    {
      "code" : "category",
      "valueString" : "DEM"
    },
    {
      "code" : "entity",
      "valueString" : "AN, NTx, PSS"
    }]
  },
  {
    "code" : "MEDHIMS7",
    "display" : "MEDHIMS7 — Sind Sie Deutsche/r Staatsbürger/in?",
    "property" : [{
      "code" : "instrument",
      "valueString" : "OECD-NAT"
    },
    {
      "code" : "category",
      "valueString" : "DEM"
    },
    {
      "code" : "entity",
      "valueString" : "AN, NTx, PSS"
    }]
  },
  {
    "code" : "MEDHIMS7_nationality",
    "display" : "MEDHIMS7_nationality — Bitte geben Sie an, welche Staatsbürgerschaft Sie besitzen",
    "property" : [{
      "code" : "instrument",
      "valueString" : "OECD-NAT"
    },
    {
      "code" : "category",
      "valueString" : "DEM"
    },
    {
      "code" : "entity",
      "valueString" : "AN, NTx, PSS"
    }]
  },
  {
    "code" : "WHODIS1",
    "display" : "WHODIS1 — Ein enges Familienmitglied (einschliesslich Ihrer Partnerin/Ihres …",
    "property" : [{
      "code" : "instrument",
      "valueString" : "OECD-S1"
    },
    {
      "code" : "category",
      "valueString" : "DEM"
    },
    {
      "code" : "entity",
      "valueString" : "AN, NTx, PSS"
    }]
  },
  {
    "code" : "WHODIS2",
    "display" : "WHODIS2 — Freundinnen/Freunde, Nachbarinnen/Nachbarn und …",
    "property" : [{
      "code" : "instrument",
      "valueString" : "OECD-S2"
    },
    {
      "code" : "category",
      "valueString" : "DEM"
    },
    {
      "code" : "entity",
      "valueString" : "AN, NTx, PSS"
    }]
  },
  {
    "code" : "Q_OECDLITii",
    "display" : "Q_OECDLITii — Welche Bezeichnung beschreibt den Ort an dem Sie leben am besten?",
    "property" : [{
      "code" : "instrument",
      "valueString" : "OECD-U"
    },
    {
      "code" : "category",
      "valueString" : "DEM"
    },
    {
      "code" : "entity",
      "valueString" : "AN, NTx, PSS"
    }]
  },
  {
    "code" : "Q_WB151a",
    "display" : "Q_WB151a — Wie viel wiegen Sie?",
    "property" : [{
      "code" : "instrument",
      "valueString" : "OECD-W"
    },
    {
      "code" : "category",
      "valueString" : "MHI"
    },
    {
      "code" : "entity",
      "valueString" : "AN, NTx, PSS"
    }]
  },
  {
    "code" : "OPDSFK01",
    "display" : "OPDSFK01 — Ich erlebe mich manchmal wie eine fremde Person.",
    "property" : [{
      "code" : "instrument",
      "valueString" : "OPD-SFK"
    },
    {
      "code" : "category",
      "valueString" : "MHA"
    },
    {
      "code" : "entity",
      "valueString" : "AN, PSS"
    }]
  },
  {
    "code" : "OPDSFK02",
    "display" : "OPDSFK02 — Wenn ich viel über mich nachdenke, gerate ich eher in Verwirrung.",
    "property" : [{
      "code" : "instrument",
      "valueString" : "OPD-SFK"
    },
    {
      "code" : "category",
      "valueString" : "MHA"
    },
    {
      "code" : "entity",
      "valueString" : "AN, PSS"
    }]
  },
  {
    "code" : "OPDSFK03",
    "display" : "OPDSFK03 — Wenn man andere zu nahe an sich heran lässt, kann das gefährlich …",
    "property" : [{
      "code" : "instrument",
      "valueString" : "OPD-SFK"
    },
    {
      "code" : "category",
      "valueString" : "MHA"
    },
    {
      "code" : "entity",
      "valueString" : "AN, PSS"
    }]
  },
  {
    "code" : "OPDSFK04",
    "display" : "OPDSFK04 — Ich kann mich anderen oft schwer verständlich machen.",
    "property" : [{
      "code" : "instrument",
      "valueString" : "OPD-SFK"
    },
    {
      "code" : "category",
      "valueString" : "MHA"
    },
    {
      "code" : "entity",
      "valueString" : "AN, PSS"
    }]
  },
  {
    "code" : "OPDSFK05",
    "display" : "OPDSFK05 — In mir herrscht oft ein solches Gefühlschaos, dass ich es gar nicht …",
    "property" : [{
      "code" : "instrument",
      "valueString" : "OPD-SFK"
    },
    {
      "code" : "category",
      "valueString" : "MHA"
    },
    {
      "code" : "entity",
      "valueString" : "AN, PSS"
    }]
  },
  {
    "code" : "OPDSFK06",
    "display" : "OPDSFK06 — Ich schätze manchmal falsch ein, wie mein Verhalten auf andere …",
    "property" : [{
      "code" : "instrument",
      "valueString" : "OPD-SFK"
    },
    {
      "code" : "category",
      "valueString" : "MHA"
    },
    {
      "code" : "entity",
      "valueString" : "AN, PSS"
    }]
  },
  {
    "code" : "OPDSFK07",
    "display" : "OPDSFK07 — Wenn andere viel über mich wissen, fühle ich mich oft irgendwie …",
    "property" : [{
      "code" : "instrument",
      "valueString" : "OPD-SFK"
    },
    {
      "code" : "category",
      "valueString" : "MHA"
    },
    {
      "code" : "entity",
      "valueString" : "AN, PSS"
    }]
  },
  {
    "code" : "OPDSFK08",
    "display" : "OPDSFK08 — Meine Gefühle sind manchmal so intensiv, dass ich Angst bekomme.",
    "property" : [{
      "code" : "instrument",
      "valueString" : "OPD-SFK"
    },
    {
      "code" : "category",
      "valueString" : "MHA"
    },
    {
      "code" : "entity",
      "valueString" : "AN, PSS"
    }]
  },
  {
    "code" : "OPDSFK09",
    "display" : "OPDSFK09 — Ich bin schon sehr verletzt worden, weil ich mich in einem Menschen …",
    "property" : [{
      "code" : "instrument",
      "valueString" : "OPD-SFK"
    },
    {
      "code" : "category",
      "valueString" : "MHA"
    },
    {
      "code" : "entity",
      "valueString" : "AN, PSS"
    }]
  },
  {
    "code" : "OPDSFK10",
    "display" : "OPDSFK10 — Es fällt mir schwer, zu anderen Kontakt aufzunehmen.",
    "property" : [{
      "code" : "instrument",
      "valueString" : "OPD-SFK"
    },
    {
      "code" : "category",
      "valueString" : "MHA"
    },
    {
      "code" : "entity",
      "valueString" : "AN, PSS"
    }]
  },
  {
    "code" : "OPDSFK11",
    "display" : "OPDSFK11 — Ich habe kein gutes Selbstbewusstsein.",
    "property" : [{
      "code" : "instrument",
      "valueString" : "OPD-SFK"
    },
    {
      "code" : "category",
      "valueString" : "MHA"
    },
    {
      "code" : "entity",
      "valueString" : "AN, PSS"
    }]
  },
  {
    "code" : "OPDSFK12",
    "display" : "OPDSFK12 — Meine Erfahrung ist: Wenn man Menschen zu sehr vertraut, kann man …",
    "property" : [{
      "code" : "instrument",
      "valueString" : "OPD-SFK"
    },
    {
      "code" : "category",
      "valueString" : "MHA"
    },
    {
      "code" : "entity",
      "valueString" : "AN, PSS"
    }]
  },
  {
    "code" : "ssuk14",
    "display" : "ssuk14 — Sie aufmuntert oder tröstet",
    "property" : [{
      "code" : "instrument",
      "valueString" : "SSUK-2"
    },
    {
      "code" : "category",
      "valueString" : "EFA"
    },
    {
      "code" : "entity",
      "valueString" : "AN"
    }]
  },
  {
    "code" : "ssuk10",
    "display" : "ssuk10 — die Auswirkung Ihrer Erkrankung herunterspielt.",
    "property" : [{
      "code" : "instrument",
      "valueString" : "SSUK-2"
    },
    {
      "code" : "category",
      "valueString" : "EFA"
    },
    {
      "code" : "entity",
      "valueString" : "AN"
    }]
  },
  {
    "code" : "MEDI_01",
    "display" : "MEDI_01 — Wie viele Medikamente nehmen Sie insgesamt momentan ein?",
    "property" : [{
      "code" : "instrument",
      "valueString" : "UKE-MEDI"
    },
    {
      "code" : "category",
      "valueString" : "MHI"
    },
    {
      "code" : "entity",
      "valueString" : "AN, NTx, PSS"
    }]
  },
  {
    "code" : "medi_02_name_01",
    "display" : "medi_02_name_01 — Name des Medikaments",
    "property" : [{
      "code" : "instrument",
      "valueString" : "UKE-MEDI2"
    },
    {
      "code" : "category",
      "valueString" : "MHI"
    },
    {
      "code" : "entity",
      "valueString" : "AN, NTx, PSS"
    }]
  },
  {
    "code" : "medi_02_onset_01",
    "display" : "medi_02_onset_01 — Seit wann nehmen Sie dieses Medikament ein ?",
    "property" : [{
      "code" : "instrument",
      "valueString" : "UKE-MEDI2"
    },
    {
      "code" : "category",
      "valueString" : "MHI"
    },
    {
      "code" : "entity",
      "valueString" : "AN, NTx, PSS"
    }]
  },
  {
    "code" : "medi_02_dose_01",
    "display" : "medi_02_dose_01 — Falls bekannt: Wie ist die Dosierung dieses Medikaments?",
    "property" : [{
      "code" : "instrument",
      "valueString" : "UKE-MEDI2"
    },
    {
      "code" : "category",
      "valueString" : "MHI"
    },
    {
      "code" : "entity",
      "valueString" : "AN, NTx, PSS"
    }]
  },
  {
    "code" : "medi_02_time_01",
    "display" : "medi_02_time_01 — Wann nehmen Sie dieses Medikament ein ?",
    "property" : [{
      "code" : "instrument",
      "valueString" : "UKE-MEDI2"
    },
    {
      "code" : "category",
      "valueString" : "MHI"
    },
    {
      "code" : "entity",
      "valueString" : "AN, NTx, PSS"
    }]
  },
  {
    "code" : "medi_02_frequency_01",
    "display" : "medi_02_frequency_01 — Wie häufig nehmen Sie dieses Medikament pro Woche ein ?",
    "property" : [{
      "code" : "instrument",
      "valueString" : "UKE-MEDI2"
    },
    {
      "code" : "category",
      "valueString" : "MHI"
    },
    {
      "code" : "entity",
      "valueString" : "AN, NTx, PSS"
    }]
  },
  {
    "code" : "medi_02_name_02",
    "display" : "medi_02_name_02 — Name des Medikaments",
    "property" : [{
      "code" : "instrument",
      "valueString" : "UKE-MEDI2"
    },
    {
      "code" : "category",
      "valueString" : "MHI"
    },
    {
      "code" : "entity",
      "valueString" : "AN, NTx, PSS"
    }]
  },
  {
    "code" : "medi_02_onset_02",
    "display" : "medi_02_onset_02 — Seit wann nehmen Sie dieses Medikament ein ?",
    "property" : [{
      "code" : "instrument",
      "valueString" : "UKE-MEDI2"
    },
    {
      "code" : "category",
      "valueString" : "MHI"
    },
    {
      "code" : "entity",
      "valueString" : "AN, NTx, PSS"
    }]
  },
  {
    "code" : "medi_02_dose_02",
    "display" : "medi_02_dose_02 — Falls bekannt: Wie ist die Dosierung dieses Medikaments?",
    "property" : [{
      "code" : "instrument",
      "valueString" : "UKE-MEDI2"
    },
    {
      "code" : "category",
      "valueString" : "MHI"
    },
    {
      "code" : "entity",
      "valueString" : "AN, NTx, PSS"
    }]
  },
  {
    "code" : "medi_02_time_02",
    "display" : "medi_02_time_02 — Wann nehmen Sie dieses Medikament ein ?",
    "property" : [{
      "code" : "instrument",
      "valueString" : "UKE-MEDI2"
    },
    {
      "code" : "category",
      "valueString" : "MHI"
    },
    {
      "code" : "entity",
      "valueString" : "AN, NTx, PSS"
    }]
  },
  {
    "code" : "medi_02_frequency_02",
    "display" : "medi_02_frequency_02 — Wie häufig nehmen Sie dieses Medikament pro Woche ein ?",
    "property" : [{
      "code" : "instrument",
      "valueString" : "UKE-MEDI2"
    },
    {
      "code" : "category",
      "valueString" : "MHI"
    },
    {
      "code" : "entity",
      "valueString" : "AN, NTx, PSS"
    }]
  },
  {
    "code" : "medi_02_name_03",
    "display" : "medi_02_name_03 — Name des Medikaments",
    "property" : [{
      "code" : "instrument",
      "valueString" : "UKE-MEDI2"
    },
    {
      "code" : "category",
      "valueString" : "MHI"
    },
    {
      "code" : "entity",
      "valueString" : "AN, NTx, PSS"
    }]
  },
  {
    "code" : "medi_02_onset_03",
    "display" : "medi_02_onset_03 — Seit wann nehmen Sie dieses Medikament ein ?",
    "property" : [{
      "code" : "instrument",
      "valueString" : "UKE-MEDI2"
    },
    {
      "code" : "category",
      "valueString" : "MHI"
    },
    {
      "code" : "entity",
      "valueString" : "AN, NTx, PSS"
    }]
  },
  {
    "code" : "medi_02_dose_03",
    "display" : "medi_02_dose_03 — Falls bekannt: Wie ist die Dosierung dieses Medikaments?",
    "property" : [{
      "code" : "instrument",
      "valueString" : "UKE-MEDI2"
    },
    {
      "code" : "category",
      "valueString" : "MHI"
    },
    {
      "code" : "entity",
      "valueString" : "AN, NTx, PSS"
    }]
  },
  {
    "code" : "medi_02_time_03",
    "display" : "medi_02_time_03 — Wann nehmen Sie dieses Medikament ein ?",
    "property" : [{
      "code" : "instrument",
      "valueString" : "UKE-MEDI2"
    },
    {
      "code" : "category",
      "valueString" : "MHI"
    },
    {
      "code" : "entity",
      "valueString" : "AN, NTx, PSS"
    }]
  },
  {
    "code" : "medi_02_frequency_03",
    "display" : "medi_02_frequency_03 — Wie häufig nehmen Sie dieses Medikament pro Woche ein ?",
    "property" : [{
      "code" : "instrument",
      "valueString" : "UKE-MEDI2"
    },
    {
      "code" : "category",
      "valueString" : "MHI"
    },
    {
      "code" : "entity",
      "valueString" : "AN, NTx, PSS"
    }]
  },
  {
    "code" : "medi_02_name_04",
    "display" : "medi_02_name_04 — Name des Medikaments",
    "property" : [{
      "code" : "instrument",
      "valueString" : "UKE-MEDI2"
    },
    {
      "code" : "category",
      "valueString" : "MHI"
    },
    {
      "code" : "entity",
      "valueString" : "AN, NTx, PSS"
    }]
  },
  {
    "code" : "medi_02_onset_04",
    "display" : "medi_02_onset_04 — Seit wann nehmen Sie dieses Medikament ein ?",
    "property" : [{
      "code" : "instrument",
      "valueString" : "UKE-MEDI2"
    },
    {
      "code" : "category",
      "valueString" : "MHI"
    },
    {
      "code" : "entity",
      "valueString" : "AN, NTx, PSS"
    }]
  },
  {
    "code" : "medi_02_dose_04",
    "display" : "medi_02_dose_04 — Falls bekannt: Wie ist die Dosierung dieses Medikaments?",
    "property" : [{
      "code" : "instrument",
      "valueString" : "UKE-MEDI2"
    },
    {
      "code" : "category",
      "valueString" : "MHI"
    },
    {
      "code" : "entity",
      "valueString" : "AN, NTx, PSS"
    }]
  },
  {
    "code" : "medi_02_time_04",
    "display" : "medi_02_time_04 — Wann nehmen Sie dieses Medikament ein ?",
    "property" : [{
      "code" : "instrument",
      "valueString" : "UKE-MEDI2"
    },
    {
      "code" : "category",
      "valueString" : "MHI"
    },
    {
      "code" : "entity",
      "valueString" : "AN, NTx, PSS"
    }]
  },
  {
    "code" : "medi_02_frequency_04",
    "display" : "medi_02_frequency_04 — Wie häufig nehmen Sie dieses Medikament pro Woche ein ?",
    "property" : [{
      "code" : "instrument",
      "valueString" : "UKE-MEDI2"
    },
    {
      "code" : "category",
      "valueString" : "MHI"
    },
    {
      "code" : "entity",
      "valueString" : "AN, NTx, PSS"
    }]
  },
  {
    "code" : "medi_02_name_05",
    "display" : "medi_02_name_05 — Name des Medikaments",
    "property" : [{
      "code" : "instrument",
      "valueString" : "UKE-MEDI2"
    },
    {
      "code" : "category",
      "valueString" : "MHI"
    },
    {
      "code" : "entity",
      "valueString" : "AN, NTx, PSS"
    }]
  },
  {
    "code" : "medi_02_onset_05",
    "display" : "medi_02_onset_05 — Seit wann nehmen Sie dieses Medikament ein ?",
    "property" : [{
      "code" : "instrument",
      "valueString" : "UKE-MEDI2"
    },
    {
      "code" : "category",
      "valueString" : "MHI"
    },
    {
      "code" : "entity",
      "valueString" : "AN, NTx, PSS"
    }]
  },
  {
    "code" : "medi_02_dose_05",
    "display" : "medi_02_dose_05 — Falls bekannt: Wie ist die Dosierung dieses Medikaments?",
    "property" : [{
      "code" : "instrument",
      "valueString" : "UKE-MEDI2"
    },
    {
      "code" : "category",
      "valueString" : "MHI"
    },
    {
      "code" : "entity",
      "valueString" : "AN, NTx, PSS"
    }]
  },
  {
    "code" : "medi_02_time_05",
    "display" : "medi_02_time_05 — Wann nehmen Sie dieses Medikament ein ?",
    "property" : [{
      "code" : "instrument",
      "valueString" : "UKE-MEDI2"
    },
    {
      "code" : "category",
      "valueString" : "MHI"
    },
    {
      "code" : "entity",
      "valueString" : "AN, NTx, PSS"
    }]
  },
  {
    "code" : "medi_02_frequency_05",
    "display" : "medi_02_frequency_05 — Wie häufig nehmen Sie dieses Medikament pro Woche ein ?",
    "property" : [{
      "code" : "instrument",
      "valueString" : "UKE-MEDI2"
    },
    {
      "code" : "category",
      "valueString" : "MHI"
    },
    {
      "code" : "entity",
      "valueString" : "AN, NTx, PSS"
    }]
  },
  {
    "code" : "AN_subtyp",
    "display" : "AN_subtyp — Welchem Subtyp der Anorexia nervosa würden Sie sich zu ordnen?",
    "property" : [{
      "code" : "instrument",
      "valueString" : "UKHD-AN"
    },
    {
      "code" : "category",
      "valueString" : "MHI"
    },
    {
      "code" : "entity",
      "valueString" : "AN"
    }]
  },
  {
    "code" : "AN_biography",
    "display" : "AN_biography — Wie lange sind Sie bereits von Ihrer Essstörung betroffen?",
    "property" : [{
      "code" : "instrument",
      "valueString" : "UKHD-ANB"
    },
    {
      "code" : "category",
      "valueString" : "DCH"
    },
    {
      "code" : "entity",
      "valueString" : "AN"
    }]
  },
  {
    "code" : "lowBMI",
    "display" : "lowBMI — Welches war Ihr niedrigter BMI?",
    "property" : [{
      "code" : "instrument",
      "valueString" : "UKHD-ANB"
    },
    {
      "code" : "category",
      "valueString" : "DCH"
    },
    {
      "code" : "entity",
      "valueString" : "AN"
    }]
  },
  {
    "code" : "treatment_outpatient",
    "display" : "treatment_outpatient — Sind Sie zurzeit in psychotherapeutischer Behandlung?",
    "property" : [{
      "code" : "instrument",
      "valueString" : "UKHD-CT"
    },
    {
      "code" : "category",
      "valueString" : "TCH"
    },
    {
      "code" : "entity",
      "valueString" : "AN"
    }]
  },
  {
    "code" : "traumaspecific1",
    "display" : "traumaspecific1 — Handelt es sich bei Ihrer Angabe um ein einmaliges oder um ein sich …",
    "property" : [{
      "code" : "instrument",
      "valueString" : "UKHD-CTT"
    },
    {
      "code" : "category",
      "valueString" : "EFA"
    },
    {
      "code" : "entity",
      "valueString" : "AN"
    }]
  },
  {
    "code" : "traumaspecific2",
    "display" : "traumaspecific2 — Passierte dieses Ereignis vor oder nach den ersten Anzeichen der …",
    "property" : [{
      "code" : "instrument",
      "valueString" : "UKHD-CTT"
    },
    {
      "code" : "category",
      "valueString" : "EFA"
    },
    {
      "code" : "entity",
      "valueString" : "AN"
    }]
  },
  {
    "code" : "traumaspecific3",
    "display" : "traumaspecific3 — Handelt es sich bei Ihrer Angabe um ein einmaliges oder um ein sich …",
    "property" : [{
      "code" : "instrument",
      "valueString" : "UKHD-CTT"
    },
    {
      "code" : "category",
      "valueString" : "EFA"
    },
    {
      "code" : "entity",
      "valueString" : "AN"
    }]
  },
  {
    "code" : "traumaspecific4",
    "display" : "traumaspecific4 — Passierte dieses Ereignis vor oder nach den ersten Anzeichen der …",
    "property" : [{
      "code" : "instrument",
      "valueString" : "UKHD-CTT"
    },
    {
      "code" : "category",
      "valueString" : "EFA"
    },
    {
      "code" : "entity",
      "valueString" : "AN"
    }]
  },
  {
    "code" : "traumaspecific5",
    "display" : "traumaspecific5 — Handelt es sich bei Ihrer Angabe um ein einmaliges oder um ein sich …",
    "property" : [{
      "code" : "instrument",
      "valueString" : "UKHD-CTT"
    },
    {
      "code" : "category",
      "valueString" : "EFA"
    },
    {
      "code" : "entity",
      "valueString" : "AN"
    }]
  },
  {
    "code" : "traumaspecific6",
    "display" : "traumaspecific6 — Passierte dieses Ereignis vor oder nach den ersten Anzeichen der …",
    "property" : [{
      "code" : "instrument",
      "valueString" : "UKHD-CTT"
    },
    {
      "code" : "category",
      "valueString" : "EFA"
    },
    {
      "code" : "entity",
      "valueString" : "AN"
    }]
  },
  {
    "code" : "edp1",
    "display" : "edp1 — Angst vor Gewichtszunahme (Schlankheitsstreben) [metadata-only: Originalwortlaut nicht abgebildet]",
    "property" : [{
      "code" : "instrument",
      "valueString" : "UKHD-EDP"
    },
    {
      "code" : "category",
      "valueString" : "DCH"
    },
    {
      "code" : "entity",
      "valueString" : "AN"
    }]
  },
  {
    "code" : "edp2",
    "display" : "edp2 — Essmenge vor anderen, Essanfaelle allein (Bulimie) [metadata-only: Originalwortlaut nicht abgebildet]",
    "property" : [{
      "code" : "instrument",
      "valueString" : "UKHD-EDP"
    },
    {
      "code" : "category",
      "valueString" : "DCH"
    },
    {
      "code" : "entity",
      "valueString" : "AN"
    }]
  },
  {
    "code" : "edp3",
    "display" : "edp3 — Unzufriedenheit mit Koerperstellen (Koerperunzufriedenheit) [metadata-only: Originalwortlaut nicht abgebildet]",
    "property" : [{
      "code" : "instrument",
      "valueString" : "UKHD-EDP"
    },
    {
      "code" : "category",
      "valueString" : "DCH"
    },
    {
      "code" : "entity",
      "valueString" : "AN"
    }]
  },
  {
    "code" : "edp4",
    "display" : "edp4 — geringe Selbstbewertung (Ineffektivitaet) [metadata-only: Originalwortlaut nicht abgebildet]",
    "property" : [{
      "code" : "instrument",
      "valueString" : "UKHD-EDP"
    },
    {
      "code" : "category",
      "valueString" : "DCH"
    },
    {
      "code" : "entity",
      "valueString" : "AN"
    }]
  },
  {
    "code" : "edp5",
    "display" : "edp5 — Anspruch, der/die Beste zu sein (Perfektionismus) [metadata-only: Originalwortlaut nicht abgebildet]",
    "property" : [{
      "code" : "instrument",
      "valueString" : "UKHD-EDP"
    },
    {
      "code" : "category",
      "valueString" : "DCH"
    },
    {
      "code" : "entity",
      "valueString" : "AN"
    }]
  },
  {
    "code" : "edp6",
    "display" : "edp6 — Naehe in Beziehungen (Misstrauen, invers) [metadata-only: Originalwortlaut nicht abgebildet]",
    "property" : [{
      "code" : "instrument",
      "valueString" : "UKHD-EDP"
    },
    {
      "code" : "category",
      "valueString" : "DCH"
    },
    {
      "code" : "entity",
      "valueString" : "AN"
    }]
  },
  {
    "code" : "edp7",
    "display" : "edp7 — Gefuehle benennen koennen (interozeptive Wahrnehmung) [metadata-only: Originalwortlaut nicht abgebildet]",
    "property" : [{
      "code" : "instrument",
      "valueString" : "UKHD-EDP"
    },
    {
      "code" : "category",
      "valueString" : "DCH"
    },
    {
      "code" : "entity",
      "valueString" : "AN"
    }]
  },
  {
    "code" : "edp8",
    "display" : "edp8 — Haltung zum Erwachsensein (Angst vor dem Erwachsenwerden, invers) [metadata-only: Originalwortlaut nicht abgebildet]",
    "property" : [{
      "code" : "instrument",
      "valueString" : "UKHD-EDP"
    },
    {
      "code" : "category",
      "valueString" : "DCH"
    },
    {
      "code" : "entity",
      "valueString" : "AN"
    }]
  },
  {
    "code" : "edp9",
    "display" : "edp9 — Genuss beim Essen als Schwaeche (Askese) [metadata-only: Originalwortlaut nicht abgebildet]",
    "property" : [{
      "code" : "instrument",
      "valueString" : "UKHD-EDP"
    },
    {
      "code" : "category",
      "valueString" : "DCH"
    },
    {
      "code" : "entity",
      "valueString" : "AN"
    }]
  },
  {
    "code" : "edp10",
    "display" : "edp10 — spontane Aeusserungen, die bereut werden (Impulsregulation) [metadata-only: Originalwortlaut nicht abgebildet]",
    "property" : [{
      "code" : "instrument",
      "valueString" : "UKHD-EDP"
    },
    {
      "code" : "category",
      "valueString" : "DCH"
    },
    {
      "code" : "entity",
      "valueString" : "AN"
    }]
  },
  {
    "code" : "edp11",
    "display" : "edp11 — Kontaktfreude (soziale Unsicherheit, invers) [metadata-only: Originalwortlaut nicht abgebildet]",
    "property" : [{
      "code" : "instrument",
      "valueString" : "UKHD-EDP"
    },
    {
      "code" : "category",
      "valueString" : "DCH"
    },
    {
      "code" : "entity",
      "valueString" : "AN"
    }]
  },
  {
    "code" : "life_event1_screening",
    "display" : "life_event1_screening — Gab es in Ihrem Leben prägende belastende Lebensereignisse, die Sie …",
    "property" : [{
      "code" : "instrument",
      "valueString" : "UKHD-LE"
    },
    {
      "code" : "category",
      "valueString" : "EFA"
    },
    {
      "code" : "entity",
      "valueString" : "AN"
    }]
  },
  {
    "code" : "life_event1_monitoring",
    "display" : "life_event1_monitoring — Gab es seit der letzten Befragung prägende belastende …",
    "property" : [{
      "code" : "instrument",
      "valueString" : "UKHD-LE"
    },
    {
      "code" : "category",
      "valueString" : "EFA"
    },
    {
      "code" : "entity",
      "valueString" : "AN"
    }]
  },
  {
    "code" : "lifev_discharge",
    "display" : "lifev_discharge — Gab es seit Ihrer Aufnahme prägende belastende Lebensereignisse, …",
    "property" : [{
      "code" : "instrument",
      "valueString" : "UKHD-LE"
    },
    {
      "code" : "category",
      "valueString" : "EFA"
    },
    {
      "code" : "entity",
      "valueString" : "AN"
    }]
  },
  {
    "code" : "lifev_text",
    "display" : "lifev_text — Bitte benennen Sie diese Lebensereignisse:",
    "property" : [{
      "code" : "instrument",
      "valueString" : "UKHD-LE"
    },
    {
      "code" : "category",
      "valueString" : "EFA"
    },
    {
      "code" : "entity",
      "valueString" : "AN"
    }]
  },
  {
    "code" : "medication1",
    "display" : "medication1 — Nehmen Sie aktuell Medikamente (einschließlich der Pille) ein?",
    "property" : [{
      "code" : "instrument",
      "valueString" : "UKHD-MEDI"
    },
    {
      "code" : "category",
      "valueString" : "MHI"
    },
    {
      "code" : "entity",
      "valueString" : "AN, NTx, PSS"
    }]
  },
  {
    "code" : "medication_text",
    "display" : "medication_text — Bitte nennen Sie alle Medikamente, die sie aktuell regelmäßig oder …",
    "property" : [{
      "code" : "instrument",
      "valueString" : "UKHD-MEDI2"
    },
    {
      "code" : "category",
      "valueString" : "MHI"
    },
    {
      "code" : "entity",
      "valueString" : "AN, NTx, PSS"
    }]
  },
  {
    "code" : "new_diagnosis_monitoring",
    "display" : "new_diagnosis_monitoring — Gab es seit der letzten Befragung weitere medizinische / psychische …",
    "property" : [{
      "code" : "instrument",
      "valueString" : "UKHD-ND"
    },
    {
      "code" : "category",
      "valueString" : "DCH"
    },
    {
      "code" : "entity",
      "valueString" : "AN"
    }]
  },
  {
    "code" : "new_diagnosis_discharge",
    "display" : "new_diagnosis_discharge — Gab es seit Ihrer Aufnahme weitere medizinische / psychische …",
    "property" : [{
      "code" : "instrument",
      "valueString" : "UKHD-ND"
    },
    {
      "code" : "category",
      "valueString" : "DCH"
    },
    {
      "code" : "entity",
      "valueString" : "AN"
    }]
  },
  {
    "code" : "new_diagnosis_text",
    "display" : "new_diagnosis_text — Bitte tragen Sie diese Diagnosen in das folgende Textfeld ein.",
    "property" : [{
      "code" : "instrument",
      "valueString" : "UKHD-ND"
    },
    {
      "code" : "category",
      "valueString" : "DCH"
    },
    {
      "code" : "entity",
      "valueString" : "AN"
    }]
  },
  {
    "code" : "bdkm15",
    "display" : "bdkm15 — Waren Sie früher oder sind Sie zurzeit in psychotherapeutischer …",
    "property" : [{
      "code" : "instrument",
      "valueString" : "UKHD-PT"
    },
    {
      "code" : "category",
      "valueString" : "TCH"
    },
    {
      "code" : "entity",
      "valueString" : "AN"
    }]
  },
  {
    "code" : "bdkm16",
    "display" : "bdkm16 — Wie oft haben Sie in den letzten 4 Wochen einen Arzt aufgesucht?",
    "property" : [{
      "code" : "instrument",
      "valueString" : "UKHD-PT"
    },
    {
      "code" : "category",
      "valueString" : "TCH"
    },
    {
      "code" : "entity",
      "valueString" : "AN"
    }]
  },
  {
    "code" : "weight_outpatient_1",
    "display" : "weight_outpatient_1 — Zur Messung des Körpergewichts empfehlen wir einen Kontrollbesuch …",
    "property" : [{
      "code" : "instrument",
      "valueString" : "UKHD-W"
    },
    {
      "code" : "category",
      "valueString" : "MHI"
    },
    {
      "code" : "entity",
      "valueString" : "AN"
    }]
  },
  {
    "code" : "weight_outpatient_2",
    "display" : "weight_outpatient_2 — Wie haben Sie das oben genannte Gewicht ermittelt?",
    "property" : [{
      "code" : "instrument",
      "valueString" : "UKHD-W"
    },
    {
      "code" : "category",
      "valueString" : "MHI"
    },
    {
      "code" : "entity",
      "valueString" : "AN"
    }]
  },
  {
    "code" : "weight_inpatient",
    "display" : "weight_inpatient — Wie viel wiegen Sie aktuell in kg?",
    "property" : [{
      "code" : "instrument",
      "valueString" : "UKHD-W"
    },
    {
      "code" : "category",
      "valueString" : "MHI"
    },
    {
      "code" : "entity",
      "valueString" : "AN"
    }]
  },
  {
    "code" : "weight_discharge",
    "display" : "weight_discharge — Wie viel wiegen Sie aktuell in kg?",
    "property" : [{
      "code" : "instrument",
      "valueString" : "UKHD-W"
    },
    {
      "code" : "category",
      "valueString" : "MHI"
    },
    {
      "code" : "entity",
      "valueString" : "AN"
    }]
  },
  {
    "code" : "diagnosis_admit",
    "display" : "diagnosis_admit — Welche Diagnose/-n sollen bei Ihnen hier behandelt werden?",
    "property" : [{
      "code" : "instrument",
      "valueString" : "UKHD_D"
    },
    {
      "code" : "category",
      "valueString" : "DCH"
    },
    {
      "code" : "entity",
      "valueString" : "AN"
    }]
  },
  {
    "code" : "comorbid1",
    "display" : "comorbid1 — Gibt es außer den zurvor genannten Diagnosen noch andere Diagnosen?",
    "property" : [{
      "code" : "instrument",
      "valueString" : "UKHD_D"
    },
    {
      "code" : "category",
      "valueString" : "DCH"
    },
    {
      "code" : "entity",
      "valueString" : "AN"
    }]
  },
  {
    "code" : "phq3a",
    "display" : "phq3a — Hatten Sie in den letzten 4 Wochen eine Angstattacke (plötzliches Gefühl der …",
    "property" : [{
      "code" : "instrument",
      "valueString" : "PHQ-D"
    },
    {
      "code" : "category",
      "valueString" : "MHA"
    },
    {
      "code" : "entity",
      "valueString" : "PSS"
    }]
  },
  {
    "code" : "phq3b",
    "display" : "phq3b — Ist dies bereits früher einmal vorgekommen?",
    "property" : [{
      "code" : "instrument",
      "valueString" : "PHQ-D"
    },
    {
      "code" : "category",
      "valueString" : "MHA"
    },
    {
      "code" : "entity",
      "valueString" : "PSS"
    }]
  },
  {
    "code" : "phq3c",
    "display" : "phq3c — Treten manche dieser Anfälle völlig unerwartet auf - d.h. in Situationen, in …",
    "property" : [{
      "code" : "instrument",
      "valueString" : "PHQ-D"
    },
    {
      "code" : "category",
      "valueString" : "MHA"
    },
    {
      "code" : "entity",
      "valueString" : "PSS"
    }]
  },
  {
    "code" : "phq3d",
    "display" : "phq3d — Empfinden Sie diese Anfälle als stark beeinträchtigend, und/oder haben Sie …",
    "property" : [{
      "code" : "instrument",
      "valueString" : "PHQ-D"
    },
    {
      "code" : "category",
      "valueString" : "MHA"
    },
    {
      "code" : "entity",
      "valueString" : "PSS"
    }]
  },
  {
    "code" : "WAI01",
    "display" : "WAI01 — Wenn Sie Ihre beste, je erreichte Arbeitsfähigkeit mit 10 Punkten …",
    "property" : [{
      "code" : "instrument",
      "valueString" : "WAI"
    },
    {
      "code" : "category",
      "valueString" : "GHS"
    },
    {
      "code" : "entity",
      "valueString" : "AN, NTx, PSS"
    }]
  },
  {
    "code" : "WAI02a",
    "display" : "WAI02a — Wie schätzen Sie Ihre derzeitige Arbeitsfähigkeit in Bezug auf die …",
    "property" : [{
      "code" : "instrument",
      "valueString" : "WAI"
    },
    {
      "code" : "category",
      "valueString" : "GHS"
    },
    {
      "code" : "entity",
      "valueString" : "AN, NTx, PSS"
    }]
  },
  {
    "code" : "WAI02b",
    "display" : "WAI02b — Wie schätzen Sie Ihre derzeitige Arbeitsfähigkeit in Bezug auf die …",
    "property" : [{
      "code" : "instrument",
      "valueString" : "WAI"
    },
    {
      "code" : "category",
      "valueString" : "GHS"
    },
    {
      "code" : "entity",
      "valueString" : "AN, NTx, PSS"
    }]
  },
  {
    "code" : "BAASIS1A",
    "display" : "BAASIS1A — Einnahme — Dosis ausgelassen, 4 Wochen — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "BAASIS"
    },
    {
      "code" : "category",
      "valueString" : "TCH"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "BAASIS1A_a",
    "display" : "BAASIS1A_a — Einnahme — Häufigkeit des Auslassens — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "BAASIS"
    },
    {
      "code" : "category",
      "valueString" : "TCH"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "BAASIS1B",
    "display" : "BAASIS1B — Einnahme — mehrere Dosen in Folge ausgelassen — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "BAASIS"
    },
    {
      "code" : "category",
      "valueString" : "TCH"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "BAASIS1B_a",
    "display" : "BAASIS1B_a — Einnahme — Häufigkeit des mehrfachen Auslassens — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "BAASIS"
    },
    {
      "code" : "category",
      "valueString" : "TCH"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "BAASIS2",
    "display" : "BAASIS2 — Timing — Einnahmezeitpunkt um mehr als 2 h verfehlt — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "BAASIS"
    },
    {
      "code" : "category",
      "valueString" : "TCH"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "BAASIS2_a",
    "display" : "BAASIS2_a — Timing — Häufigkeit der Zeitabweichung — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "BAASIS"
    },
    {
      "code" : "category",
      "valueString" : "TCH"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "BAASIS3",
    "display" : "BAASIS3 — Dosis — eigenmächtig geändert, 4 Wochen — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "BAASIS"
    },
    {
      "code" : "category",
      "valueString" : "TCH"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "BAASIS4",
    "display" : "BAASIS4 — Persistenz — eigenmächtig abgesetzt, 1 Jahr — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "BAASIS"
    },
    {
      "code" : "category",
      "valueString" : "TCH"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "BAASIS5",
    "display" : "BAASIS5 — Initiierung — Neuverordnung im letzten Jahr — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "BAASIS"
    },
    {
      "code" : "category",
      "valueString" : "TCH"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "BAASIS5_a",
    "display" : "BAASIS5_a — Initiierung — Neuverordnung eingelöst und begonnen — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "BAASIS"
    },
    {
      "code" : "category",
      "valueString" : "TCH"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "ABQ_01",
    "display" : "ABQ_01 — Adhärenzbarriere Item 01 (4 Stufen) — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "ABQ"
    },
    {
      "code" : "category",
      "valueString" : "TCH"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "ABQ_02",
    "display" : "ABQ_02 — Adhärenzbarriere Item 02 (4 Stufen) — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "ABQ"
    },
    {
      "code" : "category",
      "valueString" : "TCH"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "ABQ_03",
    "display" : "ABQ_03 — Adhärenzbarriere Item 03 (4 Stufen) — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "ABQ"
    },
    {
      "code" : "category",
      "valueString" : "TCH"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "ABQ_04",
    "display" : "ABQ_04 — Adhärenzbarriere Item 04 (4 Stufen) — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "ABQ"
    },
    {
      "code" : "category",
      "valueString" : "TCH"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "ABQ_05",
    "display" : "ABQ_05 — Adhärenzbarriere Item 05 (4 Stufen) — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "ABQ"
    },
    {
      "code" : "category",
      "valueString" : "TCH"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "ABQ_06",
    "display" : "ABQ_06 — Adhärenzbarriere Item 06 (4 Stufen) — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "ABQ"
    },
    {
      "code" : "category",
      "valueString" : "TCH"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "ABQ_07",
    "display" : "ABQ_07 — Adhärenzbarriere Item 07 (4 Stufen) — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "ABQ"
    },
    {
      "code" : "category",
      "valueString" : "TCH"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "ABQ_08",
    "display" : "ABQ_08 — Adhärenzbarriere Item 08 (4 Stufen) — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "ABQ"
    },
    {
      "code" : "category",
      "valueString" : "TCH"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "ABQ_09",
    "display" : "ABQ_09 — Adhärenzbarriere Item 09 (4 Stufen) — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "ABQ"
    },
    {
      "code" : "category",
      "valueString" : "TCH"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "ABQ_10",
    "display" : "ABQ_10 — Adhärenzbarriere Item 10 (4 Stufen) — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "ABQ"
    },
    {
      "code" : "category",
      "valueString" : "TCH"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "ABQ_11",
    "display" : "ABQ_11 — Adhärenzbarriere Item 11 (4 Stufen) — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "ABQ"
    },
    {
      "code" : "category",
      "valueString" : "TCH"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "ABQ_12",
    "display" : "ABQ_12 — Adhärenzbarriere Item 12 (4 Stufen) — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "ABQ"
    },
    {
      "code" : "category",
      "valueString" : "TCH"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "ABQ_13",
    "display" : "ABQ_13 — Adhärenzbarriere Item 13 (4 Stufen) — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "ABQ"
    },
    {
      "code" : "category",
      "valueString" : "TCH"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "ABQ_14",
    "display" : "ABQ_14 — Adhärenzbarriere Item 14 (4 Stufen) — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "ABQ"
    },
    {
      "code" : "category",
      "valueString" : "TCH"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "ABQ_15",
    "display" : "ABQ_15 — Adhärenzbarriere Item 15 (4 Stufen) — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "ABQ"
    },
    {
      "code" : "category",
      "valueString" : "TCH"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "ABQ_16",
    "display" : "ABQ_16 — Adhärenzbarriere Item 16 (4 Stufen) — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "ABQ"
    },
    {
      "code" : "category",
      "valueString" : "TCH"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_01",
    "display" : "MTSOSDR59_01 — Auftreten Symptom 01 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_01a",
    "display" : "MTSOSDR59_01a — Belastung Symptom 01 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_02",
    "display" : "MTSOSDR59_02 — Auftreten Symptom 02 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_02a",
    "display" : "MTSOSDR59_02a — Belastung Symptom 02 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_03",
    "display" : "MTSOSDR59_03 — Auftreten Symptom 03 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_03a",
    "display" : "MTSOSDR59_03a — Belastung Symptom 03 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_04",
    "display" : "MTSOSDR59_04 — Auftreten Symptom 04 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_04a",
    "display" : "MTSOSDR59_04a — Belastung Symptom 04 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_05",
    "display" : "MTSOSDR59_05 — Auftreten Symptom 05 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_05a",
    "display" : "MTSOSDR59_05a — Belastung Symptom 05 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_06",
    "display" : "MTSOSDR59_06 — Auftreten Symptom 06 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_06a",
    "display" : "MTSOSDR59_06a — Belastung Symptom 06 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_07",
    "display" : "MTSOSDR59_07 — Auftreten Symptom 07 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_07a",
    "display" : "MTSOSDR59_07a — Belastung Symptom 07 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_08",
    "display" : "MTSOSDR59_08 — Auftreten Symptom 08 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_08a",
    "display" : "MTSOSDR59_08a — Belastung Symptom 08 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_09",
    "display" : "MTSOSDR59_09 — Auftreten Symptom 09 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_09a",
    "display" : "MTSOSDR59_09a — Belastung Symptom 09 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_10",
    "display" : "MTSOSDR59_10 — Auftreten Symptom 10 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_10a",
    "display" : "MTSOSDR59_10a — Belastung Symptom 10 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_11",
    "display" : "MTSOSDR59_11 — Auftreten Symptom 11 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_11a",
    "display" : "MTSOSDR59_11a — Belastung Symptom 11 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_12",
    "display" : "MTSOSDR59_12 — Auftreten Symptom 12 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_12a",
    "display" : "MTSOSDR59_12a — Belastung Symptom 12 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_13",
    "display" : "MTSOSDR59_13 — Auftreten Symptom 13 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_13a",
    "display" : "MTSOSDR59_13a — Belastung Symptom 13 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_14",
    "display" : "MTSOSDR59_14 — Auftreten Symptom 14 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_14a",
    "display" : "MTSOSDR59_14a — Belastung Symptom 14 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_15",
    "display" : "MTSOSDR59_15 — Auftreten Symptom 15 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_15a",
    "display" : "MTSOSDR59_15a — Belastung Symptom 15 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_16",
    "display" : "MTSOSDR59_16 — Auftreten Symptom 16 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_16a",
    "display" : "MTSOSDR59_16a — Belastung Symptom 16 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_17",
    "display" : "MTSOSDR59_17 — Auftreten Symptom 17 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_17a",
    "display" : "MTSOSDR59_17a — Belastung Symptom 17 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_18",
    "display" : "MTSOSDR59_18 — Auftreten Symptom 18 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_18a",
    "display" : "MTSOSDR59_18a — Belastung Symptom 18 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_19",
    "display" : "MTSOSDR59_19 — Auftreten Symptom 19 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_19a",
    "display" : "MTSOSDR59_19a — Belastung Symptom 19 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_20",
    "display" : "MTSOSDR59_20 — Auftreten Symptom 20 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_20a",
    "display" : "MTSOSDR59_20a — Belastung Symptom 20 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_21",
    "display" : "MTSOSDR59_21 — Auftreten Symptom 21 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_21a",
    "display" : "MTSOSDR59_21a — Belastung Symptom 21 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_22",
    "display" : "MTSOSDR59_22 — Auftreten Symptom 22 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_22a",
    "display" : "MTSOSDR59_22a — Belastung Symptom 22 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_23",
    "display" : "MTSOSDR59_23 — Auftreten Symptom 23 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_23a",
    "display" : "MTSOSDR59_23a — Belastung Symptom 23 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_24",
    "display" : "MTSOSDR59_24 — Auftreten Symptom 24 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_24a",
    "display" : "MTSOSDR59_24a — Belastung Symptom 24 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_25",
    "display" : "MTSOSDR59_25 — Auftreten Symptom 25 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_25a",
    "display" : "MTSOSDR59_25a — Belastung Symptom 25 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_26",
    "display" : "MTSOSDR59_26 — Auftreten Symptom 26 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_26a",
    "display" : "MTSOSDR59_26a — Belastung Symptom 26 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_27_male",
    "display" : "MTSOSDR59_27_male — Auftreten Symptom 27 (männlich) — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_27a_male",
    "display" : "MTSOSDR59_27a_male — Belastung Symptom 27 (männlich) — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_27_female",
    "display" : "MTSOSDR59_27_female — Auftreten Symptom 27 (weiblich) — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_27a_female",
    "display" : "MTSOSDR59_27a_female — Belastung Symptom 27 (weiblich) — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_28",
    "display" : "MTSOSDR59_28 — Auftreten Symptom 28 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_28a",
    "display" : "MTSOSDR59_28a — Belastung Symptom 28 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_29",
    "display" : "MTSOSDR59_29 — Auftreten Symptom 29 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_29a",
    "display" : "MTSOSDR59_29a — Belastung Symptom 29 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_30",
    "display" : "MTSOSDR59_30 — Auftreten Symptom 30 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_30a",
    "display" : "MTSOSDR59_30a — Belastung Symptom 30 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_31",
    "display" : "MTSOSDR59_31 — Auftreten Symptom 31 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_31a",
    "display" : "MTSOSDR59_31a — Belastung Symptom 31 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_32",
    "display" : "MTSOSDR59_32 — Auftreten Symptom 32 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_32a",
    "display" : "MTSOSDR59_32a — Belastung Symptom 32 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_33",
    "display" : "MTSOSDR59_33 — Auftreten Symptom 33 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_33a",
    "display" : "MTSOSDR59_33a — Belastung Symptom 33 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_34",
    "display" : "MTSOSDR59_34 — Auftreten Symptom 34 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_34a",
    "display" : "MTSOSDR59_34a — Belastung Symptom 34 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_35",
    "display" : "MTSOSDR59_35 — Auftreten Symptom 35 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_35a",
    "display" : "MTSOSDR59_35a — Belastung Symptom 35 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_36",
    "display" : "MTSOSDR59_36 — Auftreten Symptom 36 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_36a",
    "display" : "MTSOSDR59_36a — Belastung Symptom 36 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_37",
    "display" : "MTSOSDR59_37 — Auftreten Symptom 37 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_37a",
    "display" : "MTSOSDR59_37a — Belastung Symptom 37 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_38",
    "display" : "MTSOSDR59_38 — Auftreten Symptom 38 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_38a",
    "display" : "MTSOSDR59_38a — Belastung Symptom 38 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_39",
    "display" : "MTSOSDR59_39 — Auftreten Symptom 39 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_39a",
    "display" : "MTSOSDR59_39a — Belastung Symptom 39 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_40",
    "display" : "MTSOSDR59_40 — Auftreten Symptom 40 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_40a",
    "display" : "MTSOSDR59_40a — Belastung Symptom 40 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_41",
    "display" : "MTSOSDR59_41 — Auftreten Symptom 41 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_41a",
    "display" : "MTSOSDR59_41a — Belastung Symptom 41 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_42",
    "display" : "MTSOSDR59_42 — Auftreten Symptom 42 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_42a",
    "display" : "MTSOSDR59_42a — Belastung Symptom 42 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_43",
    "display" : "MTSOSDR59_43 — Auftreten Symptom 43 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_43a",
    "display" : "MTSOSDR59_43a — Belastung Symptom 43 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_44",
    "display" : "MTSOSDR59_44 — Auftreten Symptom 44 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_44a",
    "display" : "MTSOSDR59_44a — Belastung Symptom 44 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_45",
    "display" : "MTSOSDR59_45 — Auftreten Symptom 45 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_45a",
    "display" : "MTSOSDR59_45a — Belastung Symptom 45 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_46",
    "display" : "MTSOSDR59_46 — Auftreten Symptom 46 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_46a",
    "display" : "MTSOSDR59_46a — Belastung Symptom 46 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_47",
    "display" : "MTSOSDR59_47 — Auftreten Symptom 47 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_47a",
    "display" : "MTSOSDR59_47a — Belastung Symptom 47 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_48",
    "display" : "MTSOSDR59_48 — Auftreten Symptom 48 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_48a",
    "display" : "MTSOSDR59_48a — Belastung Symptom 48 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_49",
    "display" : "MTSOSDR59_49 — Auftreten Symptom 49 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_49a",
    "display" : "MTSOSDR59_49a — Belastung Symptom 49 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_50",
    "display" : "MTSOSDR59_50 — Auftreten Symptom 50 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_50a",
    "display" : "MTSOSDR59_50a — Belastung Symptom 50 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_51",
    "display" : "MTSOSDR59_51 — Auftreten Symptom 51 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_51a",
    "display" : "MTSOSDR59_51a — Belastung Symptom 51 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_52",
    "display" : "MTSOSDR59_52 — Auftreten Symptom 52 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_52a",
    "display" : "MTSOSDR59_52a — Belastung Symptom 52 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_53",
    "display" : "MTSOSDR59_53 — Auftreten Symptom 53 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_53a",
    "display" : "MTSOSDR59_53a — Belastung Symptom 53 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_54",
    "display" : "MTSOSDR59_54 — Auftreten Symptom 54 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_54a",
    "display" : "MTSOSDR59_54a — Belastung Symptom 54 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_55",
    "display" : "MTSOSDR59_55 — Auftreten Symptom 55 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_55a",
    "display" : "MTSOSDR59_55a — Belastung Symptom 55 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_56",
    "display" : "MTSOSDR59_56 — Auftreten Symptom 56 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_56a",
    "display" : "MTSOSDR59_56a — Belastung Symptom 56 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_57",
    "display" : "MTSOSDR59_57 — Auftreten Symptom 57 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_57a",
    "display" : "MTSOSDR59_57a — Belastung Symptom 57 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_58",
    "display" : "MTSOSDR59_58 — Auftreten Symptom 58 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_58a",
    "display" : "MTSOSDR59_58a — Belastung Symptom 58 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_59",
    "display" : "MTSOSDR59_59 — Auftreten Symptom 59 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_59a",
    "display" : "MTSOSDR59_59a — Belastung Symptom 59 — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_60",
    "display" : "MTSOSDR59_60 — Auftreten Symptom 60 (Freitext) — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_60a",
    "display" : "MTSOSDR59_60a — Belastung Symptom 60 (Freitext) — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_61",
    "display" : "MTSOSDR59_61 — Auftreten Symptom 61 (Freitext) — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_61a",
    "display" : "MTSOSDR59_61a — Belastung Symptom 61 (Freitext) — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_62",
    "display" : "MTSOSDR59_62 — Auftreten Symptom 62 (Freitext) — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MTSOSDR59_62a",
    "display" : "MTSOSDR59_62a — Belastung Symptom 62 (Freitext) — metadata-only, Wortlaut nicht publizierbar",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MTSOSD-R59"
    },
    {
      "code" : "category",
      "valueString" : "MSE"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MHH_DON",
    "display" : "MHH_DON — Spendeart (Lebend-/Verstorbenenspende)",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MHH-DON"
    },
    {
      "code" : "category",
      "valueString" : "TCH"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MHH_TX_DATE",
    "display" : "MHH_TX_DATE — Datum der letzten Nierentransplantation",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MHH-Tx-DATE"
    },
    {
      "code" : "category",
      "valueString" : "TCH"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MHH_PRIOR_TX",
    "display" : "MHH_PRIOR_TX — wievielte Spenderniere aktuell",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MHH-PRIOR-TX"
    },
    {
      "code" : "category",
      "valueString" : "TCH"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MHH_DIAL1",
    "display" : "MHH_DIAL1 — wieder an der Dialyse (seit mindestens 4 Wochen)",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MHH-DIAL"
    },
    {
      "code" : "category",
      "valueString" : "DCH"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MHH_DIAL2",
    "display" : "MHH_DIAL2 — Form der Nierenersatztherapie zuletzt vor Transplantation",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MHH-DIAL"
    },
    {
      "code" : "category",
      "valueString" : "DCH"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MHH_PTX_DIAB",
    "display" : "MHH_PTX_DIAB — Diabetes mellitus nach Transplantation festgestellt",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MHH-PTx-DIAB"
    },
    {
      "code" : "category",
      "valueString" : "DCH"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MHH_T01",
    "display" : "MHH_T01 — Hauttumor nach Transplantation festgestellt",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MHH-T"
    },
    {
      "code" : "category",
      "valueString" : "DCH"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MHH_T02",
    "display" : "MHH_T02 — Hauttumor seit letzter Vorstellung in der Transplantationsambulanz",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MHH-T"
    },
    {
      "code" : "category",
      "valueString" : "DCH"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MHH_T03",
    "display" : "MHH_T03 — andere Tumore nach Transplantation festgestellt",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MHH-T"
    },
    {
      "code" : "category",
      "valueString" : "DCH"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MHH_UTI01",
    "display" : "MHH_UTI01 — Harnwegsinfektion seit letztem Kontakt in der Transplantationsambulanz",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MHH-UTI"
    },
    {
      "code" : "category",
      "valueString" : "DCH"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MHH_UTI02",
    "display" : "MHH_UTI02 — mindestens zwei Harnwegsinfektionen in den letzten 6 Monaten",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MHH-UTI"
    },
    {
      "code" : "category",
      "valueString" : "DCH"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MHH_UTI03",
    "display" : "MHH_UTI03 — Antibiotika-Prophylaxe gegen chronische Harnwegsinfekte",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MHH-UTI"
    },
    {
      "code" : "category",
      "valueString" : "DCH"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MHH_UTI04",
    "display" : "MHH_UTI04 — Impfung gegen Harnwegsinfekte seit Transplantation",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MHH-UTI"
    },
    {
      "code" : "category",
      "valueString" : "DCH"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MHH_Infekt1",
    "display" : "MHH_Infekt1 — Infektion mit Antibiotikagabe in den letzten 3 Monaten",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MHH-Infection"
    },
    {
      "code" : "category",
      "valueString" : "DCH"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MHH_Infekt2",
    "display" : "MHH_Infekt2 — mehr als 3-mal Antibiotika pro Jahr wegen Infekt",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MHH-Infection"
    },
    {
      "code" : "category",
      "valueString" : "DCH"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MHH_Infekt3",
    "display" : "MHH_Infekt3 — Intensivbehandlung wegen Infektionskomplikation seit Transplantation",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MHH-Infection"
    },
    {
      "code" : "category",
      "valueString" : "DCH"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MHH_BP",
    "display" : "MHH_BP — letzter Blutdruck (systolisch/diastolisch)",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MHH-BP"
    },
    {
      "code" : "category",
      "valueString" : "DCH"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MHH_Medi",
    "display" : "MHH_Medi — aktuelle Einnahme von Aspirin (ASS)",
    "property" : [{
      "code" : "instrument",
      "valueString" : "MHH-Medi"
    },
    {
      "code" : "category",
      "valueString" : "DCH"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MHH_PTH1",
    "display" : "MHH_PTH1 — Operation an der Nebenschilddrüse",
    "property" : [{
      "code" : "category",
      "valueString" : "DCH"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  },
  {
    "code" : "MHH_PTH2",
    "display" : "MHH_PTH2 — Einnahme von Cinacalcet",
    "property" : [{
      "code" : "category",
      "valueString" : "DCH"
    },
    {
      "code" : "entity",
      "valueString" : "NTx"
    }]
  }]
}

```
