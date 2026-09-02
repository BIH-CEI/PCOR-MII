# EXPECT — Erwartung an den Verlauf der Körperbeschwerden - PCOR-MII Implementation Guide v0.2.0

## Questionnaire: EXPECT — Erwartung an den Verlauf der Körperbeschwerden (Experimental) 

 
Drei numerische Rating-Items (0-10) zur Erwartung an die kommenden 6 Monate: erwartete Gesamtstärke der Körperbeschwerden, erwartete Beeinträchtigung und erwartete Bewältigung. Kein standardisierter Fragebogen und kein Gesamtscore — die Items sind einzeln auszuwerten und nicht gleichgerichtet. Quelle: PCOR-MII Item Level Dictionary (Entität PSS). 

*  [Tree view](#tabs-tree) 
*  [Sample Rendering](#tabs-sample) 
*  [Form Logic](#tabs-logic) 

### Test this Questionnaire

### Responses for this Questionnaire

There are currently no QuestionnaireResponse instances for this Questionnaire defined in this IG.



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "EXPECT",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire"]
  },
  "url" : "https://bih-cei.github.io/PCOR-MII/Questionnaire/EXPECT",
  "version" : "0.2.0",
  "name" : "EXPECT",
  "title" : "EXPECT — Erwartung an den Verlauf der Körperbeschwerden",
  "status" : "draft",
  "experimental" : true,
  "subjectType" : ["Patient"],
  "date" : "2026-09-02",
  "publisher" : "BIH-CEI",
  "contact" : [{
    "name" : "BIH-CEI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.bihealth.org/"
    }]
  }],
  "description" : "Drei numerische Rating-Items (0-10) zur Erwartung an die kommenden 6 Monate: erwartete Gesamtstärke der Körperbeschwerden, erwartete Beeinträchtigung und erwartete Bewältigung. Kein standardisierter Fragebogen und kein Gesamtscore — die Items sind einzeln auszuwerten und nicht gleichgerichtet. Quelle: PCOR-MII Item Level Dictionary (Entität PSS).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "copyright" : "Die drei EXPECT-Items stammen aus dem PCOR-MII Item Level Dictionary und bilden kein publiziertes, standardisiertes Instrument ab; die DIZ-Implementierungsliste PCOR-MII führt für EXPECT weder ein Entwicklungs- noch ein Übersetzungspaper und keine Lizenzangabe. Der PCOR-MII-eigene FHIR-Inhalt unterliegt der Repository-Lizenz (CC-BY-4.0).",
  "item" : [{
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
      "valueInteger" : 0
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
      "valueInteger" : 10
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-sliderStepValue",
      "valueInteger" : 1
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://hl7.org/fhir/questionnaire-item-control",
          "code" : "slider",
          "display" : "Slider"
        }]
      }
    }],
    "linkId" : "EXPECT_01",
    "text" : "Welche Gesamtstärke Ihrer Körperbeschwerden erwarten Sie in 6 Monaten?",
    "type" : "integer",
    "item" : [{
      "linkId" : "EXPECT_01-anchors",
      "text" : "0 = überhaupt keine Beschwerden, 10 = schlimmstmögliche Beschwerden",
      "type" : "display"
    }]
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
      "valueInteger" : 0
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
      "valueInteger" : 10
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-sliderStepValue",
      "valueInteger" : 1
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://hl7.org/fhir/questionnaire-item-control",
          "code" : "slider",
          "display" : "Slider"
        }]
      }
    }],
    "linkId" : "EXPECT_02",
    "text" : "Wie sehr erwarten Sie in 6 Monaten durch Körperbeschwerden beeinträchtigt zu sein?",
    "type" : "integer",
    "item" : [{
      "linkId" : "EXPECT_02-anchors",
      "text" : "0 = überhaupt nicht, 10 = extrem beeinträchtigt",
      "type" : "display"
    }]
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
      "valueInteger" : 0
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
      "valueInteger" : 10
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-sliderStepValue",
      "valueInteger" : 1
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://hl7.org/fhir/questionnaire-item-control",
          "code" : "slider",
          "display" : "Slider"
        }]
      }
    }],
    "linkId" : "EXPECT_03",
    "text" : "Wie gut erwarten Sie, in 6 Monaten mit möglichen Körperbeschwerden umgehen zu können?",
    "type" : "integer",
    "item" : [{
      "linkId" : "EXPECT_03-anchors",
      "text" : "0 = überhaupt nicht gut, 10 = bester vorstellbarer Umgang",
      "type" : "display"
    }]
  }]
}

```
