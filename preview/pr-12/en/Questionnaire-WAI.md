# WAI — Work Ability Index / Work Ability Score (3-Item-Kurzfassung, Metadata-only) - PCOR-MII Implementation Guide v0.2.0

## Questionnaire: WAI — Work Ability Index / Work Ability Score (3-Item-Kurzfassung, Metadata-only) (Experimental) 

 
Work Ability Index / Work Ability Score, 3-Item-Kurzfassung (Kategorie PSS im PCOR-Item-Dictionary). METADATA-ONLY: Item-Texte und Antwortstufen sind neutral umschrieben, da die Publikationsrechte am Originalwortlaut ungeklärt sind (DIZ-Implementierungsliste PCOR-MII: 'wahrscheinlich nicht für die Veröffentlichung'). Struktur, linkIds und Wertebereiche entsprechen dem Original. 

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
  "id" : "WAI",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire"]
  },
  "url" : "https://bih-cei.github.io/PCOR-MII/Questionnaire/WAI",
  "version" : "0.2.0",
  "name" : "WAI",
  "title" : "WAI — Work Ability Index / Work Ability Score (3-Item-Kurzfassung, Metadata-only)",
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
  "description" : "Work Ability Index / Work Ability Score, 3-Item-Kurzfassung (Kategorie PSS im PCOR-Item-Dictionary). METADATA-ONLY: Item-Texte und Antwortstufen sind neutral umschrieben, da die Publikationsrechte am Originalwortlaut ungeklärt sind (DIZ-Implementierungsliste PCOR-MII: 'wahrscheinlich nicht für die Veröffentlichung'). Struktur, linkIds und Wertebereiche entsprechen dem Original.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "copyright" : "METADATA-ONLY: Diese Instanz bildet ausschließlich Struktur, linkIds, Wertebereiche und technische Metadaten des Work Ability Index (WAI) / Work Ability Score (3-Item-Kurzfassung) ab. Item-Texte und Antwortstufen-Bezeichnungen sind NICHT der Originalwortlaut, sondern neutrale, selbst formulierte Kurzbeschreibungen bzw. neutrale Codes (Stufe 1-5) — die Publikationsrechte am WAI sind ungeklärt (DIZ-Implementierungsliste PCOR-MII: 'wahrscheinlich nicht für die Veröffentlichung'). Rechteinhaber des Originalinstruments ist das Finnish Institute of Occupational Health (FIOH; Tuomi et al. 1998). Die vollständige, wortgleiche Originalversion des WAI/Work Ability Score darf ausschließlich über die berechtigte Bezugsquelle (FIOH bzw. deren lizenzierte Vertriebspartner) bezogen und genutzt werden.",
  "code" : [{
    "system" : "http://snomed.info/sct",
    "code" : "446174004",
    "display" : "Assessment using work ability index"
  }],
  "item" : [{
    "linkId" : "wai",
    "text" : "Selbsteinschätzung der aktuellen Arbeitsfähigkeit (WAI-Kurzfassung / Work Ability Score)",
    "type" : "group",
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
      }],
      "linkId" : "WAI01",
      "text" : "Selbsteinschätzung der derzeitigen Arbeitsfähigkeit im Vergleich zur besten je erreichten Arbeitsfähigkeit, Skala 0-10 (0 = keine Arbeitsfähigkeit, 10 = beste je erreichte Arbeitsfähigkeit).",
      "type" : "integer"
    },
    {
      "linkId" : "WAI02a",
      "text" : "Selbsteinschätzung der derzeitigen Arbeitsfähigkeit in Bezug auf die körperlichen Anforderungen der Arbeitstätigkeit, 5-stufig (Stufe 1 = schlechtester Wert, Stufe 5 = bester Wert).",
      "type" : "choice",
      "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/wai-skala-5-vs"
    },
    {
      "linkId" : "WAI02b",
      "text" : "Selbsteinschätzung der derzeitigen Arbeitsfähigkeit in Bezug auf die psychischen Anforderungen der Arbeitstätigkeit, 5-stufig (Stufe 1 = schlechtester Wert, Stufe 5 = bester Wert).",
      "type" : "choice",
      "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/wai-skala-5-vs"
    }]
  }]
}

```
