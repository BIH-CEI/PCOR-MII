# DEM — Demographics & Medical History - PCOR-MII Implementation Guide v0.1.0

## Questionnaire: DEM — Demographics & Medical History (Experimentell) 

 
Screening-Fragebogen zu Soziodemographie und medizinischer Vorgeschichte (DEM). Items aus MASTER_3EntitiesOverview.xlsx / Sheet Demo+MedHis. Folgt den Konventionen des MII-PRO-Moduls (SDC-Basis); ist selbst kein PRO-Instrument. 

*  [Baumansicht](#tabs-tree) 
*  [Beispielanzeige](#tabs-sample) 
*  [Formularlogik](#tabs-logic) 

### Diesen Fragebogen testen

### Antworten zu diesem Fragebogen

Es sind derzeit keine QuestionnaireResponse-Instanzen für diesen Fragebogen in diesem IG definiert.



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "DEM",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire"]
  },
  "url" : "https://bih-cei.github.io/PCOR-MII/Questionnaire/DEM",
  "version" : "0.1.0",
  "name" : "DEM",
  "title" : "DEM — Demographics & Medical History",
  "status" : "draft",
  "experimental" : true,
  "subjectType" : ["Patient"],
  "date" : "2026-06-09",
  "publisher" : "BIH-CEI",
  "contact" : [{
    "name" : "BIH-CEI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.bihealth.org/"
    }]
  }],
  "description" : "Screening-Fragebogen zu Soziodemographie und medizinischer Vorgeschichte (DEM). Items aus MASTER_3EntitiesOverview.xlsx / Sheet Demo+MedHis. Folgt den Konventionen des MII-PRO-Moduls (SDC-Basis); ist selbst kein PRO-Instrument.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "item" : [{
    "linkId" : "anthropometrie",
    "text" : "Körpermaße",
    "type" : "group",
    "item" : [{
      "linkId" : "Q_WB151",
      "code" : [{
        "system" : "http://loinc.org",
        "code" : "29463-7",
        "display" : "Körpergewicht"
      }],
      "text" : "Wie viel wiegen Sie? (kg)",
      "type" : "decimal"
    },
    {
      "linkId" : "Q_WB152",
      "code" : [{
        "system" : "http://loinc.org",
        "code" : "8302-2",
        "display" : "Körpergröße"
      }],
      "text" : "Wie gross sind Sie? (cm)",
      "type" : "decimal"
    }]
  },
  {
    "linkId" : "soziodemographie",
    "text" : "Soziodemographische Angaben",
    "type" : "group",
    "item" : [{
      "linkId" : "Q_ISCED",
      "code" : [{
        "system" : "http://loinc.org",
        "code" : "82589-3",
        "display" : "Highest level of education"
      }],
      "text" : "Was ist der höchste Bildungsabschluss, den Sie erreicht haben?",
      "type" : "choice",
      "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/dem-isced-vs"
    },
    {
      "linkId" : "Q_SEX",
      "code" : [{
        "system" : "http://loinc.org",
        "code" : "76691-5",
        "display" : "Gender identity"
      }],
      "text" : "Welcher der folgenden Begriffe trifft am besten auf Sie zu?",
      "type" : "choice",
      "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/dem-geschlecht-vs"
    },
    {
      "linkId" : "Q_GENDERID",
      "text" : "Entspricht Ihre Geschlechtsidentität dem Geschlecht, das Ihnen bei Geburt zugewiesen wurde?",
      "type" : "choice",
      "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/dem-ja-nein-ka-vs"
    },
    {
      "linkId" : "Q_OECDLIT5a",
      "code" : [{
        "system" : "http://loinc.org",
        "code" : "67875-5",
        "display" : "Employment status - current"
      }],
      "text" : "Welcher der folgenden Begriffe beschreibt am besten Ihre derzeitige Arbeitssituation?",
      "type" : "choice",
      "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/dem-erwerbsstatus-vs"
    },
    {
      "linkId" : "Q_OECDLIT7a",
      "code" : [{
        "system" : "http://loinc.org",
        "code" : "108248-6",
        "display" : "Household income"
      }],
      "text" : "In welche dieser Kategorien fällt Ihr Netto-Haushaltseinkommen normalerweise?",
      "type" : "choice",
      "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/dem-einkommen-vs"
    },
    {
      "linkId" : "Q_MONMED",
      "text" : "Hatten Sie in den vergangenen 12 Monaten Schwierigkeiten, Rechnungen für medizinische Leistungen zu bezahlen bzw. konnten diese nicht bezahlen?",
      "type" : "choice",
      "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/dem-ja-nein-nz-vs"
    },
    {
      "linkId" : "Q_MON",
      "text" : "Wie oft haben Sie sich in den letzten 12 Monaten über folgende Dinge Sorgen gemacht oder waren deswegen gestresst?",
      "type" : "group",
      "item" : [{
        "linkId" : "MONMEAL",
        "code" : [{
          "system" : "http://loinc.org",
          "code" : "88122-7",
          "display" : "Within the past 12 months we worried whether our food would run out before we got money to buy more"
        }],
        "text" : "Genug Geld zu haben, um gesunde Mahlzeiten bezahlen zu können",
        "type" : "choice",
        "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/dem-haeufigkeit-5-vs"
      },
      {
        "linkId" : "MONRENT",
        "text" : "Genug Geld zu haben, um die Miete oder einen Kredit bezahlen zu können",
        "type" : "choice",
        "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/dem-haeufigkeit-5-vs"
      },
      {
        "linkId" : "MONBILLS",
        "text" : "Genug Geld zu haben, um monatliche Rechnungen bezahlen zu können, z. B. für Strom, Heizung und Telefon",
        "type" : "choice",
        "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/dem-haeufigkeit-5-vs"
      }]
    },
    {
      "linkId" : "MEDHIMS6",
      "code" : [{
        "system" : "http://loinc.org",
        "code" : "78746-5",
        "display" : "Country of birth [Location]"
      }],
      "text" : "Sind Sie in Deutschland geboren?",
      "type" : "choice",
      "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/dem-ja-nein"
    },
    {
      "linkId" : "MEDHIMS6.land",
      "text" : "Wenn nein: In welchem Land sind Sie geboren?",
      "type" : "string",
      "enableWhen" : [{
        "question" : "MEDHIMS6",
        "operator" : "=",
        "answerCoding" : {
          "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-antwort",
          "code" : "nein",
          "display" : "Nein"
        }
      }]
    },
    {
      "linkId" : "MEDHIMS7",
      "code" : [{
        "system" : "http://loinc.org",
        "code" : "66476-3",
        "display" : "Country of citizenship"
      }],
      "text" : "Sind Sie Deutsche/r Staatsbürger/in?",
      "type" : "choice",
      "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/dem-ja-nein"
    },
    {
      "linkId" : "MEDHIMS7.staat",
      "text" : "Wenn nein: Welche Staatsbürgerschaft besitzen Sie?",
      "type" : "string",
      "enableWhen" : [{
        "question" : "MEDHIMS7",
        "operator" : "=",
        "answerCoding" : {
          "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-antwort",
          "code" : "nein",
          "display" : "Nein"
        }
      }]
    },
    {
      "linkId" : "Q_OECDLITii",
      "text" : "Welche Bezeichnung beschreibt den Ort, an dem Sie leben, am besten?",
      "type" : "choice",
      "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/dem-urbanizitaet-vs"
    },
    {
      "linkId" : "Zipcode",
      "text" : "Postleitzahl",
      "type" : "string"
    },
    {
      "linkId" : "OECDLIT2a",
      "code" : [{
        "system" : "http://loinc.org",
        "code" : "104078-1",
        "display" : "Number of underage persons in household"
      }],
      "text" : "Wie viele Kinder unter 18 Jahren leben mit Ihnen in Ihrem Haushalt?",
      "type" : "integer"
    },
    {
      "linkId" : "OECDLIT2b",
      "text" : "Wie viele Personen im Alter von 18 Jahren oder älter leben mit Ihnen in Ihrem Haushalt? (ohne Sie selbst)",
      "type" : "integer"
    },
    {
      "linkId" : "WHODIS",
      "text" : "Wenn Sie Hilfe benötigen, wie einfach ist es für Sie, Hilfe von den folgenden Personen zu erhalten?",
      "type" : "group",
      "item" : [{
        "linkId" : "WHODIS1",
        "text" : "Ein enges Familienmitglied (einschliesslich Ihrer Partnerin/Ihres Partners)",
        "type" : "choice",
        "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/dem-leichtigkeit-6-vs"
      },
      {
        "linkId" : "WHODIS2",
        "text" : "Freundinnen/Freunde, Nachbarinnen/Nachbarn und Arbeitskolleginnen/Arbeitskollegen?",
        "type" : "choice",
        "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/dem-leichtigkeit-6-vs"
      }]
    }]
  },
  {
    "linkId" : "medhist",
    "text" : "Weitere Angaben",
    "type" : "group",
    "item" : [{
      "linkId" : "GIPS04",
      "code" : [{
        "system" : "http://loinc.org",
        "code" : "45404-1",
        "display" : "Marital status"
      }],
      "text" : "Partnerschaft",
      "type" : "choice",
      "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/dem-beziehungsstatus-vs"
    },
    {
      "linkId" : "GIPS10",
      "text" : "Rente",
      "type" : "choice",
      "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/dem-rentenstatus-vs"
    },
    {
      "linkId" : "GIPS57a",
      "code" : [{
        "system" : "http://loinc.org",
        "code" : "72166-2",
        "display" : "Raucherstatus"
      }],
      "text" : "Rauchen Sie (einschließlich E-Zigaretten)?",
      "type" : "choice",
      "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/dem-ja-nein"
    },
    {
      "linkId" : "GIPS57b",
      "code" : [{
        "system" : "http://loinc.org",
        "code" : "64218-1",
        "display" : "How many cigarettes do you smoke per day now [PhenX]"
      }],
      "text" : "Wenn ja: Wie viele Zigaretten rauchen Sie pro Tag?",
      "type" : "choice",
      "enableWhen" : [{
        "question" : "GIPS57a",
        "operator" : "=",
        "answerCoding" : {
          "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-antwort",
          "code" : "ja",
          "display" : "Ja"
        }
      }],
      "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/dem-zigaretten-band-vs"
    },
    {
      "linkId" : "GIPS56a",
      "code" : [{
        "system" : "http://loinc.org",
        "code" : "11331-6",
        "display" : "History of Alcohol use"
      }],
      "text" : "Trinken Sie Alkohol?",
      "type" : "choice",
      "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/dem-ja-nein"
    },
    {
      "linkId" : "GIPS56b1",
      "text" : "Wenn ja: Haben Sie jemals daran gedacht, weniger zu trinken? (CAGE 1)",
      "type" : "choice",
      "enableWhen" : [{
        "question" : "GIPS56a",
        "operator" : "=",
        "answerCoding" : {
          "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-antwort",
          "code" : "ja",
          "display" : "Ja"
        }
      }],
      "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/dem-ja-nein"
    },
    {
      "linkId" : "GIPS56b2",
      "text" : "Haben Sie sich schon einmal darüber geärgert, dass Sie von anderen wegen Ihres Alkoholkonsums kritisiert wurden? (CAGE 2)",
      "type" : "choice",
      "enableWhen" : [{
        "question" : "GIPS56a",
        "operator" : "=",
        "answerCoding" : {
          "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-antwort",
          "code" : "ja",
          "display" : "Ja"
        }
      }],
      "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/dem-ja-nein"
    },
    {
      "linkId" : "GIPS56b3",
      "text" : "Haben Sie sich jemals wegen Ihres Trinkens schuldig gefühlt? (CAGE 3)",
      "type" : "choice",
      "enableWhen" : [{
        "question" : "GIPS56a",
        "operator" : "=",
        "answerCoding" : {
          "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-antwort",
          "code" : "ja",
          "display" : "Ja"
        }
      }],
      "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/dem-ja-nein"
    },
    {
      "linkId" : "GIPS56b4",
      "text" : "Haben Sie jemals morgens als erstes Alkohol getrunken, um sich nervlich zu stabilisieren oder einen Kater loszuwerden? (CAGE 4 — Eye-opener)",
      "type" : "choice",
      "enableWhen" : [{
        "question" : "GIPS56a",
        "operator" : "=",
        "answerCoding" : {
          "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-antwort",
          "code" : "ja",
          "display" : "Ja"
        }
      }],
      "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/dem-ja-nein"
    },
    {
      "linkId" : "GIPS58",
      "code" : [{
        "system" : "http://loinc.org",
        "code" : "96873-5",
        "display" : "Illegal or recreational drug(s) used in past 3 months"
      }],
      "text" : "Nutzen Sie hin und wieder eine der folgenden Substanzen: Cannabis, Ecstasy, Kokain, Amphetamine, Anabolika, Crystal?",
      "type" : "choice",
      "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/dem-ja-nein"
    }]
  }]
}

```
