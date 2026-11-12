# OPD-SFK — OPD-Strukturfragebogen, 12-Item-Kurzversion - PCOR-MII Implementation Guide v0.9.0

## Questionnaire: OPD-SFK — OPD-Strukturfragebogen, 12-Item-Kurzversion (Experimental) 

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
  "id" : "OPDSFK",
  "meta" : {
    "profile" : ["https://gematik.de/fhir/isik/StructureDefinition/ISiKFormularDefinition"]
  },
  "language" : "de-DE",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-versionAlgorithm",
    "valueCoding" : {
      "system" : "http://hl7.org/fhir/version-algorithm",
      "code" : "semver",
      "display" : "SemVer"
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/variable",
    "valueExpression" : {
      "name" : "opdSfkSumme",
      "language" : "text/fhirpath",
      "expression" : "%resource.item.where(linkId.matches('^opdsf(3|27|32|81|41|49|50|73|78|79|40|90)$')).answer.value.weight().sum()"
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/variable",
    "valueExpression" : {
      "name" : "opdSfkSelbstwahrnehmung",
      "language" : "text/fhirpath",
      "expression" : "%resource.item.where(linkId.matches('^opdsf(3|27|41|73)$')).answer.value.weight().sum()"
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/variable",
    "valueExpression" : {
      "name" : "opdSfkBeziehungsmodell",
      "language" : "text/fhirpath",
      "expression" : "%resource.item.where(linkId.matches('^opdsf(32|50|78|90)$')).answer.value.weight().sum()"
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/variable",
    "valueExpression" : {
      "name" : "opdSfkKontaktgestaltung",
      "language" : "text/fhirpath",
      "expression" : "%resource.item.where(linkId.matches('^opdsf(81|49|79|40)$')).answer.value.weight().sum()"
    }
  }],
  "url" : "https://bih-cei.github.io/PCOR-MII/Questionnaire/OPDSFK",
  "version" : "0.9.0",
  "name" : "OPDSFK",
  "title" : "OPD-SFK — OPD-Strukturfragebogen, 12-Item-Kurzversion",
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
  "description" : "OPD-Strukturfragebogen Kurzform (OPD-SFK): 12 Items, 5-stufige Skala (trifft gar nicht zu ... trifft völlig zu). Screeninginstrument für strukturelle Persönlichkeitsfunktion (Ehrenthal et al. 2015). Globalwert = Summe über alle 12 Items (0-48); die drei Subskalen (Selbstwahrnehmung, Beziehungsmodell, Kontaktgestaltung; je 4 Items, 0-16) sind laut Autor:innen nur explorativ und als zusätzliche berechnete Items umgesetzt. linkIds = OPD-SF-Itemnummern der Langform. Rechtehinweise siehe `copyright`.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "copyright" : "Quelle: Ehrenthal JC, Dinger U, Schauenburg H, Horsch L, Dahlbender RW, Gierk B. Entwicklung einer Zwölf-Item-Version des OPD-Strukturfragebogens (OPD-SFK). Z Psychosom Med Psychother 2015; 61(3):262-274. doi:10.13109/zptm.2015.61.3.262. Verlagsrechte: © 2015 Vandenhoeck & Ruprecht GmbH & Co. KG, Göttingen. Der Artikel ist beim Verlag als Open Access verfügbar; eine explizite Creative-Commons-Lizenz ist dort nicht ausgewiesen. Nutzungsstatus laut DIZ-Implementierungsliste PCOR-MII: frei verfügbar, nach erfolgter Rücksprache mit den Autor:innen. Die Rechte an Instrument und Item-Formulierungen verbleiben bei den Autor:innen bzw. beim Verlag; Nachnutzende müssen die Nutzungsbedingungen für den eigenen Anwendungsfall eigenständig prüfen. Nur der PCOR-MII-eigene FHIR-Inhalt (Profile, Codes, Kodierung) unterliegt der Repository-Lizenz (CC-BY-4.0).",
  "code" : [{
    "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-questionnaire-catalogue",
    "code" : "opd-sfk",
    "display" : "OPD-SFK"
  }],
  "item" : [{
    "linkId" : "opd-sfk-intro",
    "text" : "Auf der folgenden Seite finden Sie eine Reihe von Aussagen, mit denen verschiedene Eigenschaften von Personen beschrieben werden. Bitte geben Sie an, wie sehr diese Aussagen auf Sie zutreffen. Kreuzen Sie bitte diejenige Antwort an, die im Allgemeinen auf Sie am besten zutrifft. Dabei gibt es keine richtigen oder falschen Antworten, weil jeder Mensch im Erleben anders ist.",
    "type" : "display"
  },
  {
    "linkId" : "opdsf3",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "OPDSFK01"
    }],
    "prefix" : "1",
    "text" : "Ich erlebe mich manchmal wie eine fremde Person.",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/opd-sfk-antwort-vs"
  },
  {
    "linkId" : "opdsf27",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "OPDSFK02"
    }],
    "prefix" : "2",
    "text" : "Wenn ich viel über mich nachdenke, gerate ich eher in Verwirrung.",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/opd-sfk-antwort-vs"
  },
  {
    "linkId" : "opdsf32",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "OPDSFK03"
    }],
    "prefix" : "3",
    "text" : "Wenn man andere zu nahe an sich heran lässt, kann das gefährlich werden.",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/opd-sfk-antwort-vs"
  },
  {
    "linkId" : "opdsf81",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "OPDSFK04"
    }],
    "prefix" : "4",
    "text" : "Ich kann mich anderen oft schwer verständlich machen.",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/opd-sfk-antwort-vs"
  },
  {
    "linkId" : "opdsf41",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "OPDSFK05"
    }],
    "prefix" : "5",
    "text" : "In mir herrscht oft ein solches Gefühlschaos, dass ich es gar nicht beschreiben könnte.",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/opd-sfk-antwort-vs"
  },
  {
    "linkId" : "opdsf49",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "OPDSFK06"
    }],
    "prefix" : "6",
    "text" : "Ich schätze manchmal falsch ein, wie mein Verhalten auf andere wirkt.",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/opd-sfk-antwort-vs"
  },
  {
    "linkId" : "opdsf50",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "OPDSFK07"
    }],
    "prefix" : "7",
    "text" : "Wenn andere viel über mich wissen, fühle ich mich oft irgendwie kontrolliert oder beobachtet.",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/opd-sfk-antwort-vs"
  },
  {
    "linkId" : "opdsf73",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "OPDSFK08"
    }],
    "prefix" : "8",
    "text" : "Meine Gefühle sind manchmal so intensiv, dass ich Angst bekomme.",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/opd-sfk-antwort-vs"
  },
  {
    "linkId" : "opdsf78",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "OPDSFK09"
    }],
    "prefix" : "9",
    "text" : "Ich bin schon sehr verletzt worden, weil ich mich in einem Menschen getäuscht hatte.",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/opd-sfk-antwort-vs"
  },
  {
    "linkId" : "opdsf79",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "OPDSFK10"
    }],
    "prefix" : "10",
    "text" : "Es fällt mir schwer, zu anderen Kontakt aufzunehmen.",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/opd-sfk-antwort-vs"
  },
  {
    "linkId" : "opdsf40",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "OPDSFK11"
    }],
    "prefix" : "11",
    "text" : "Ich habe kein gutes Selbstbewusstsein.",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/opd-sfk-antwort-vs"
  },
  {
    "linkId" : "opdsf90",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "OPDSFK12"
    }],
    "prefix" : "12",
    "text" : "Meine Erfahrung ist: Wenn man Menschen zu sehr vertraut, kann man böse Überraschungen erleben.",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/opd-sfk-antwort-vs"
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression",
      "valueExpression" : {
        "name" : "opdSfkGlobalwert",
        "language" : "text/fhirpath",
        "expression" : "%opdSfkSumme"
      }
    }],
    "linkId" : "opd-sfk-globalwert",
    "text" : "OPD-SFK Globalwert (Summenwert, 0-48)",
    "type" : "decimal",
    "readOnly" : true
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression",
      "valueExpression" : {
        "name" : "opdSfkSelbstwahrnehmungScore",
        "language" : "text/fhirpath",
        "expression" : "%opdSfkSelbstwahrnehmung"
      }
    }],
    "linkId" : "opd-sfk-selbstwahrnehmung",
    "text" : "OPD-SFK Subskala Selbstwahrnehmung (Summenwert, 0-16; explorativ)",
    "type" : "decimal",
    "readOnly" : true
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression",
      "valueExpression" : {
        "name" : "opdSfkBeziehungsmodellScore",
        "language" : "text/fhirpath",
        "expression" : "%opdSfkBeziehungsmodell"
      }
    }],
    "linkId" : "opd-sfk-beziehungsmodell",
    "text" : "OPD-SFK Subskala Beziehungsmodell (Summenwert, 0-16; explorativ)",
    "type" : "decimal",
    "readOnly" : true
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression",
      "valueExpression" : {
        "name" : "opdSfkKontaktgestaltungScore",
        "language" : "text/fhirpath",
        "expression" : "%opdSfkKontaktgestaltung"
      }
    }],
    "linkId" : "opd-sfk-kontaktgestaltung",
    "text" : "OPD-SFK Subskala Kontaktgestaltung (Summenwert, 0-16; explorativ)",
    "type" : "decimal",
    "readOnly" : true
  }]
}

```
