# MHI — Medical History - PCOR-MII Implementation Guide v0.1.0

## Questionnaire: MHI — Medical History (Experimentell) 

 
Medizinische Vorgeschichte (Kategorie MHI im PCOR-Item-Dictionary): Anthropometrie, Diagnosen/chronische Erkrankungen, Lifestyle (Rauchen/Alkohol/Substanzen), aktuelle Medikation und (AN-spezifisch) Gewichtsverlauf. SDC-Basis; kein PRO-Instrument. 

*  [Baumansicht](#tabs-tree) 
*  [Beispielanzeige](#tabs-sample) 
*  [Formularlogik](#tabs-logic) 

### Diesen Fragebogen testen

### Antworten zu diesem Fragebogen

* [Vollständig ausgefüllte Beispielantwort zum MHI-Questionnaire (Medical History).](QuestionnaireResponse-MHIResponse.md)



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "MHI",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire"]
  },
  "url" : "https://bih-cei.github.io/PCOR-MII/Questionnaire/MHI",
  "version" : "0.1.0",
  "name" : "MHI",
  "title" : "MHI — Medical History",
  "status" : "draft",
  "experimental" : true,
  "subjectType" : ["Patient"],
  "date" : "2026-06-17",
  "publisher" : "BIH-CEI",
  "contact" : [{
    "name" : "BIH-CEI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.bihealth.org/"
    }]
  }],
  "description" : "Medizinische Vorgeschichte (Kategorie MHI im PCOR-Item-Dictionary): Anthropometrie, Diagnosen/chronische Erkrankungen, Lifestyle (Rauchen/Alkohol/Substanzen), aktuelle Medikation und (AN-spezifisch) Gewichtsverlauf. SDC-Basis; kein PRO-Instrument.",
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
      "text" : "Wie viel wiegen Sie?",
      "type" : "choice",
      "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mhi-gewicht-angabe-vs"
    },
    {
      "linkId" : "Q_WB151a",
      "code" : [{
        "system" : "http://loinc.org",
        "code" : "29463-7",
        "display" : "Körpergewicht"
      }],
      "text" : "Wie viel wiegen Sie? (kg)",
      "type" : "decimal",
      "enableWhen" : [{
        "question" : "Q_WB151",
        "operator" : "=",
        "answerCoding" : {
          "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhi-gewicht-angabe",
          "code" : "kg",
          "display" : "kg"
        }
      }]
    },
    {
      "linkId" : "Q_WB152",
      "code" : [{
        "system" : "http://loinc.org",
        "code" : "8302-2",
        "display" : "Körpergröße"
      }],
      "text" : "Wie groß sind Sie?",
      "type" : "choice",
      "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mhi-groesse-angabe-vs"
    },
    {
      "linkId" : "Q_WB152a",
      "code" : [{
        "system" : "http://loinc.org",
        "code" : "8302-2",
        "display" : "Körpergröße"
      }],
      "text" : "Wie groß sind Sie? (cm)",
      "type" : "decimal",
      "enableWhen" : [{
        "question" : "Q_WB152",
        "operator" : "=",
        "answerCoding" : {
          "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhi-groesse-angabe",
          "code" : "cm",
          "display" : "cm"
        }
      }]
    }]
  },
  {
    "linkId" : "diagnose",
    "text" : "Diagnose & chronische Erkrankungen",
    "type" : "group",
    "item" : [{
      "linkId" : "CPCOR-DIAG",
      "text" : "Zu welcher Gruppe würden Sie sich zuordnen?",
      "type" : "choice",
      "repeats" : true,
      "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mhi-cpcor-diag-vs"
    },
    {
      "linkId" : "CPCOR_ONSET",
      "text" : "Bitte geben Sie an, in welchem Jahr Sie Ihre Diagnose erhalten haben",
      "type" : "integer"
    },
    {
      "linkId" : "GIPS13",
      "text" : "Welche chronischen Erkrankungen haben Sie?",
      "type" : "choice",
      "repeats" : true,
      "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mhi-chronisch-vs"
    }]
  },
  {
    "linkId" : "lifestyle",
    "text" : "Rauchen, Alkohol & Substanzen",
    "type" : "group",
    "item" : [{
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
      "text" : "Haben Sie jemals daran gedacht, weniger zu trinken? (CAGE 1)",
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
  },
  {
    "linkId" : "medikation",
    "text" : "Aktuelle Medikamente",
    "type" : "group",
    "item" : [{
      "linkId" : "medication1",
      "text" : "Nehmen Sie aktuell Medikamente (einschließlich der Pille) ein?",
      "type" : "choice",
      "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/dem-ja-nein"
    },
    {
      "linkId" : "medication_text",
      "text" : "Bitte nennen Sie alle Medikamente, die Sie aktuell regelmäßig oder bei Bedarf einnehmen.",
      "type" : "text",
      "enableWhen" : [{
        "question" : "medication1",
        "operator" : "=",
        "answerCoding" : {
          "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-antwort",
          "code" : "ja",
          "display" : "Ja"
        }
      }]
    },
    {
      "linkId" : "MEDI_01",
      "text" : "Wie viele Medikamente nehmen Sie insgesamt momentan ein?",
      "type" : "integer",
      "enableWhen" : [{
        "question" : "medication1",
        "operator" : "=",
        "answerCoding" : {
          "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-antwort",
          "code" : "ja",
          "display" : "Ja"
        }
      }]
    },
    {
      "linkId" : "medi_02_01",
      "text" : "Medikament 1",
      "type" : "group",
      "enableWhen" : [{
        "question" : "medication1",
        "operator" : "=",
        "answerCoding" : {
          "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-antwort",
          "code" : "ja",
          "display" : "Ja"
        }
      }],
      "item" : [{
        "linkId" : "medi_02_name_01",
        "text" : "Name des Medikaments",
        "type" : "string"
      },
      {
        "linkId" : "medi_02_onset_01",
        "text" : "Seit wann nehmen Sie dieses Medikament ein?",
        "type" : "string"
      },
      {
        "linkId" : "medi_02_dose_01",
        "text" : "Falls bekannt: Wie ist die Dosierung dieses Medikaments?",
        "type" : "string"
      },
      {
        "linkId" : "medi_02_time_01",
        "text" : "Wann nehmen Sie dieses Medikament ein?",
        "type" : "choice",
        "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mhi-einnahmezeit-vs"
      },
      {
        "linkId" : "medi_02_frequency_01",
        "text" : "Wie häufig nehmen Sie dieses Medikament pro Woche ein?",
        "type" : "string"
      }]
    },
    {
      "linkId" : "medi_02_02",
      "text" : "Medikament 2",
      "type" : "group",
      "enableWhen" : [{
        "question" : "medication1",
        "operator" : "=",
        "answerCoding" : {
          "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-antwort",
          "code" : "ja",
          "display" : "Ja"
        }
      }],
      "item" : [{
        "linkId" : "medi_02_name_02",
        "text" : "Name des Medikaments",
        "type" : "string"
      },
      {
        "linkId" : "medi_02_onset_02",
        "text" : "Seit wann nehmen Sie dieses Medikament ein?",
        "type" : "string"
      },
      {
        "linkId" : "medi_02_dose_02",
        "text" : "Falls bekannt: Wie ist die Dosierung dieses Medikaments?",
        "type" : "string"
      },
      {
        "linkId" : "medi_02_time_02",
        "text" : "Wann nehmen Sie dieses Medikament ein?",
        "type" : "choice",
        "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mhi-einnahmezeit-vs"
      },
      {
        "linkId" : "medi_02_frequency_02",
        "text" : "Wie häufig nehmen Sie dieses Medikament pro Woche ein?",
        "type" : "string"
      }]
    },
    {
      "linkId" : "medi_02_03",
      "text" : "Medikament 3",
      "type" : "group",
      "enableWhen" : [{
        "question" : "medication1",
        "operator" : "=",
        "answerCoding" : {
          "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-antwort",
          "code" : "ja",
          "display" : "Ja"
        }
      }],
      "item" : [{
        "linkId" : "medi_02_name_03",
        "text" : "Name des Medikaments",
        "type" : "string"
      },
      {
        "linkId" : "medi_02_onset_03",
        "text" : "Seit wann nehmen Sie dieses Medikament ein?",
        "type" : "string"
      },
      {
        "linkId" : "medi_02_dose_03",
        "text" : "Falls bekannt: Wie ist die Dosierung dieses Medikaments?",
        "type" : "string"
      },
      {
        "linkId" : "medi_02_time_03",
        "text" : "Wann nehmen Sie dieses Medikament ein?",
        "type" : "choice",
        "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mhi-einnahmezeit-vs"
      },
      {
        "linkId" : "medi_02_frequency_03",
        "text" : "Wie häufig nehmen Sie dieses Medikament pro Woche ein?",
        "type" : "string"
      }]
    },
    {
      "linkId" : "medi_02_04",
      "text" : "Medikament 4",
      "type" : "group",
      "enableWhen" : [{
        "question" : "medication1",
        "operator" : "=",
        "answerCoding" : {
          "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-antwort",
          "code" : "ja",
          "display" : "Ja"
        }
      }],
      "item" : [{
        "linkId" : "medi_02_name_04",
        "text" : "Name des Medikaments",
        "type" : "string"
      },
      {
        "linkId" : "medi_02_onset_04",
        "text" : "Seit wann nehmen Sie dieses Medikament ein?",
        "type" : "string"
      },
      {
        "linkId" : "medi_02_dose_04",
        "text" : "Falls bekannt: Wie ist die Dosierung dieses Medikaments?",
        "type" : "string"
      },
      {
        "linkId" : "medi_02_time_04",
        "text" : "Wann nehmen Sie dieses Medikament ein?",
        "type" : "choice",
        "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mhi-einnahmezeit-vs"
      },
      {
        "linkId" : "medi_02_frequency_04",
        "text" : "Wie häufig nehmen Sie dieses Medikament pro Woche ein?",
        "type" : "string"
      }]
    },
    {
      "linkId" : "medi_02_05",
      "text" : "Medikament 5",
      "type" : "group",
      "enableWhen" : [{
        "question" : "medication1",
        "operator" : "=",
        "answerCoding" : {
          "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-antwort",
          "code" : "ja",
          "display" : "Ja"
        }
      }],
      "item" : [{
        "linkId" : "medi_02_name_05",
        "text" : "Name des Medikaments",
        "type" : "string"
      },
      {
        "linkId" : "medi_02_onset_05",
        "text" : "Seit wann nehmen Sie dieses Medikament ein?",
        "type" : "string"
      },
      {
        "linkId" : "medi_02_dose_05",
        "text" : "Falls bekannt: Wie ist die Dosierung dieses Medikaments?",
        "type" : "string"
      },
      {
        "linkId" : "medi_02_time_05",
        "text" : "Wann nehmen Sie dieses Medikament ein?",
        "type" : "choice",
        "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mhi-einnahmezeit-vs"
      },
      {
        "linkId" : "medi_02_frequency_05",
        "text" : "Wie häufig nehmen Sie dieses Medikament pro Woche ein?",
        "type" : "string"
      }]
    }]
  },
  {
    "linkId" : "gewicht-an",
    "text" : "Gewichtsverlauf (Szenario Anorexia nervosa)",
    "type" : "group",
    "item" : [{
      "linkId" : "weight_outpatient_1",
      "code" : [{
        "system" : "http://loinc.org",
        "code" : "29463-7",
        "display" : "Körpergewicht"
      }],
      "text" : "Ambulant gemessenes Körpergewicht (kg) — empfohlen beim Hausarzt mit geeichter Waage",
      "type" : "decimal"
    },
    {
      "linkId" : "weight_outpatient_2",
      "text" : "Wie haben Sie das oben genannte Gewicht ermittelt?",
      "type" : "choice",
      "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mhi-gewichtsmethode-vs"
    },
    {
      "linkId" : "weight_inpatient",
      "code" : [{
        "system" : "http://loinc.org",
        "code" : "29463-7",
        "display" : "Körpergewicht"
      }],
      "text" : "Stationäres Körpergewicht — wie viel wiegen Sie aktuell in kg?",
      "type" : "decimal"
    },
    {
      "linkId" : "weight_discharge",
      "code" : [{
        "system" : "http://loinc.org",
        "code" : "29463-7",
        "display" : "Körpergewicht"
      }],
      "text" : "Körpergewicht bei Entlassung — wie viel wiegen Sie aktuell in kg?",
      "type" : "decimal"
    },
    {
      "linkId" : "AN_subtyp",
      "text" : "Welchem Subtyp der Anorexia nervosa würden Sie sich zuordnen?",
      "type" : "choice",
      "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mhi-an-subtyp-vs"
    }]
  }]
}

```
