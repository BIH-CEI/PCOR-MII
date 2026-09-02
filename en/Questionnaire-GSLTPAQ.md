# GSLTPAQ — Godin-Shephard Leisure-Time Physical Activity Questionnaire - PCOR-MII Implementation Guide v0.2.0

## Questionnaire: GSLTPAQ — Godin-Shephard Leisure-Time Physical Activity Questionnaire (Experimental) 

 
Godin-Shephard Leisure-Time Physical Activity Questionnaire (GSLTPAQ): 3 Intensitätsstufen körperlicher Aktivität (anstrengend/mäßig/leicht) je mit Häufigkeit pro Woche und Dauer in Minuten. PCOR-MII-Eigenübersetzung aus dem Item Level Dictionary (siehe Kopfkommentar zur Abgrenzung von der validierten Übersetzung Lindner et al. 2026). SDC-Basis; kein PRO-Instrument im Sinne des MII-PRO-Moduls. 

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
  "id" : "GSLTPAQ",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire"]
  },
  "url" : "https://bih-cei.github.io/PCOR-MII/Questionnaire/GSLTPAQ",
  "version" : "0.2.0",
  "name" : "GSLTPAQ",
  "title" : "GSLTPAQ — Godin-Shephard Leisure-Time Physical Activity Questionnaire",
  "status" : "draft",
  "experimental" : true,
  "subjectType" : ["Patient"],
  "date" : "2026-09-01",
  "publisher" : "BIH-CEI",
  "contact" : [{
    "name" : "BIH-CEI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.bihealth.org/"
    }]
  }],
  "description" : "Godin-Shephard Leisure-Time Physical Activity Questionnaire (GSLTPAQ): 3 Intensitätsstufen körperlicher Aktivität (anstrengend/mäßig/leicht) je mit Häufigkeit pro Woche und Dauer in Minuten. PCOR-MII-Eigenübersetzung aus dem Item Level Dictionary (siehe Kopfkommentar zur Abgrenzung von der validierten Übersetzung Lindner et al. 2026). SDC-Basis; kein PRO-Instrument im Sinne des MII-PRO-Moduls.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "item" : [{
    "linkId" : "gsltpaq-intro",
    "text" : "Wie oft haben Sie im letzten Monat die folgenden körperlichen Aktivitäten ausgeübt?",
    "type" : "display"
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
      "valueInteger" : 0
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-unit",
      "valueCoding" : {
        "system" : "http://unitsofmeasure.org",
        "code" : "{count}/wk",
        "display" : "-mal pro Woche"
      }
    }],
    "linkId" : "GSLTPAQ_01_w",
    "text" : "Anstrengende körperliche Aktivität (erhöhte Anstrengung und Schwitzen) z.B. intensives Schwimmen, Jogging, Fußballspielen, Radsport",
    "type" : "integer"
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
      "valueInteger" : 0
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-unit",
      "valueCoding" : {
        "system" : "http://unitsofmeasure.org",
        "code" : "min",
        "display" : "Minuten"
      }
    }],
    "linkId" : "GSLTPAQ_01_m",
    "text" : "Anstrengende körperliche Aktivität (erhöhte Anstrengung und Schwitzen) z.B. intensives Schwimmen, Jogging, Fußballspielen, Radsport",
    "type" : "integer"
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
      "valueInteger" : 0
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-unit",
      "valueCoding" : {
        "system" : "http://unitsofmeasure.org",
        "code" : "{count}/wk",
        "display" : "-mal pro Woche"
      }
    }],
    "linkId" : "GSLTPAQ_02_w",
    "text" : "Mäßige körperliche Aktivität (kaum erhöhte Anstrengung und leichtes Schwitzen) z.B. schnelles Gehen, langsames Radfahren, langsames Schwimmen",
    "type" : "integer"
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
      "valueInteger" : 0
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-unit",
      "valueCoding" : {
        "system" : "http://unitsofmeasure.org",
        "code" : "min",
        "display" : "Minuten"
      }
    }],
    "linkId" : "GSLTPAQ_02_m",
    "text" : "Mäßige körperliche Aktivität (kaum erhöhte Anstrengung und leichtes Schwitzen) z.B. schnelles Gehen, langsames Radfahren, langsames Schwimmen",
    "type" : "integer"
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
      "valueInteger" : 0
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-unit",
      "valueCoding" : {
        "system" : "http://unitsofmeasure.org",
        "code" : "{count}/wk",
        "display" : "-mal pro Woche"
      }
    }],
    "linkId" : "GSLTPAQ_03_w",
    "text" : "Leichte körperliche Aktivität (keine erhöhte Anstrengung und kein Schwitzen) z.B. Golf, leichtes Gehen, Angeln",
    "type" : "integer"
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
      "valueInteger" : 0
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-unit",
      "valueCoding" : {
        "system" : "http://unitsofmeasure.org",
        "code" : "min",
        "display" : "Minuten"
      }
    }],
    "linkId" : "GSLTPAQ_03_m",
    "text" : "Leichte körperliche Aktivität (keine erhöhte Anstrengung und kein Schwitzen) z.B. Golf, leichtes Gehen, Angeln",
    "type" : "integer"
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression",
      "valueExpression" : {
        "language" : "text/fhirpath",
        "expression" : "(9 * %resource.item.where(linkId='GSLTPAQ_01_w').answer.value) + (5 * %resource.item.where(linkId='GSLTPAQ_02_w').answer.value) + (3 * %resource.item.where(linkId='GSLTPAQ_03_w').answer.value)"
      }
    }],
    "linkId" : "gsltpaq-score",
    "text" : "Godin Leisure Score Index (Weekly Leisure-Time Activity Score)",
    "type" : "integer",
    "readOnly" : true
  }]
}

```
