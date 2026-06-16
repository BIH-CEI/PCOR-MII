# PCOR Beispiel-Fragebogen - PCOR-MII Implementation Guide v0.1.0

## Questionnaire: PCOR Beispiel-Fragebogen (Experimental) 

 
Beispielhafter PCOR-Fragebogen zur Erfassung patientenberichteter Angaben. 

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
  "id" : "PcorExampleQuestionnaire",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire|2026.4.1"]
  },
  "language" : "de-DE",
  "url" : "https://bih-cei.github.io/PCOR-MII/Questionnaire/PcorExampleQuestionnaire",
  "version" : "0.1.0",
  "name" : "PcorExampleQuestionnaire",
  "title" : "PCOR Beispiel-Fragebogen",
  "status" : "draft",
  "experimental" : true,
  "subjectType" : ["Patient"],
  "date" : "2026-06-16",
  "publisher" : "BIH-CEI",
  "contact" : [{
    "name" : "BIH-CEI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.bihealth.org/"
    }]
  }],
  "description" : "Beispielhafter PCOR-Fragebogen zur Erfassung patientenberichteter Angaben.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "item" : [{
    "linkId" : "general",
    "text" : "Allgemeine Angaben",
    "type" : "group",
    "item" : [{
      "linkId" : "general.assessment-date",
      "text" : "Datum der Erhebung",
      "type" : "date",
      "required" : true
    },
    {
      "linkId" : "general.sex",
      "text" : "Geschlecht",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueCoding" : {
          "system" : "http://hl7.org/fhir/administrative-gender",
          "code" : "female",
          "display" : "Female"
        }
      },
      {
        "valueCoding" : {
          "system" : "http://hl7.org/fhir/administrative-gender",
          "code" : "male",
          "display" : "Male"
        }
      },
      {
        "valueCoding" : {
          "system" : "http://hl7.org/fhir/administrative-gender",
          "code" : "other",
          "display" : "Other"
        }
      },
      {
        "valueCoding" : {
          "system" : "http://hl7.org/fhir/administrative-gender",
          "code" : "unknown",
          "display" : "Unknown"
        }
      }]
    }]
  },
  {
    "linkId" : "pro",
    "text" : "Patientenberichtete Outcomes",
    "type" : "group",
    "item" : [{
      "linkId" : "pro.general-health",
      "text" : "Wie würden Sie Ihren allgemeinen Gesundheitszustand beschreiben?",
      "type" : "choice",
      "required" : true,
      "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/pcor-example-general-health"
    },
    {
      "linkId" : "pro.comment",
      "text" : "Weitere Anmerkungen",
      "type" : "string",
      "required" : false
    }]
  }]
}

```
