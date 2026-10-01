# Resource PCOR-MII Implementation Guide



## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "pcor-mii",
  "language" : "de",
  "url" : "https://bih-cei.github.io/PCOR-MII/ImplementationGuide/pcor-mii",
  "version" : "0.3.0",
  "name" : "PCOR_MII",
  "title" : "PCOR-MII Implementation Guide",
  "status" : "draft",
  "date" : "2026-10-01T13:49:55+00:00",
  "publisher" : "BIH-CEI",
  "contact" : [{
    "name" : "BIH-CEI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.bihealth.org/"
    }]
  }],
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "packageId" : "pcor-mii",
  "license" : "CC-BY-4.0",
  "fhirVersion" : ["4.0.1"],
  "dependsOn" : [{
    "id" : "hl7tx",
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
      "valueMarkdown" : "Automatically added as a dependency - all IGs depend on HL7 Terminology"
    }],
    "uri" : "http://terminology.hl7.org/ImplementationGuide/hl7.terminology",
    "packageId" : "hl7.terminology.r4",
    "version" : "7.4.0"
  },
  {
    "id" : "hl7ext",
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
      "valueMarkdown" : "Automatically added as a dependency - all IGs depend on the HL7 Extension Pack"
    }],
    "uri" : "http://hl7.org/fhir/extensions/ImplementationGuide/hl7.fhir.uv.extensions",
    "packageId" : "hl7.fhir.uv.extensions.r4",
    "version" : "5.3.0"
  },
  {
    "id" : "de_medizininformatikinitiative_kerndatensatz_pros",
    "uri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ImplementationGuide/mii-ig-pro",
    "packageId" : "de.medizininformatikinitiative.kerndatensatz.pros",
    "version" : "2026.7.0"
  },
  {
    "id" : "hl7_fhir_uv_sdc",
    "uri" : "http://hl7.org/fhir/uv/sdc/ImplementationGuide/hl7.fhir.uv.sdc",
    "packageId" : "hl7.fhir.uv.sdc",
    "version" : "3.0.0"
  }],
  "definition" : {
    "extension" : [{
      "extension" : [{
        "url" : "code",
        "valueString" : "copyrightyear"
      },
      {
        "url" : "value",
        "valueString" : "2026+"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "releaselabel"
      },
      {
        "url" : "value",
        "valueString" : "draft"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "shownav"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "i18n-default-lang"
      },
      {
        "url" : "value",
        "valueString" : "de"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "i18n-lang"
      },
      {
        "url" : "value",
        "valueString" : "en"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "translation-sources"
      },
      {
        "url" : "value",
        "valueString" : "input/translations/en"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "excludettl"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "autoload-resources"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-liquid-template"
      },
      {
        "url" : "value",
        "valueString" : "template/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-liquid-template"
      },
      {
        "url" : "value",
        "valueString" : "input/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-qa"
      },
      {
        "url" : "value",
        "valueString" : "temp/qa"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-temp"
      },
      {
        "url" : "value",
        "valueString" : "temp/pages"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-output"
      },
      {
        "url" : "value",
        "valueString" : "output"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-suppressed-warnings"
      },
      {
        "url" : "value",
        "valueString" : "input/ignoreWarnings.txt"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-history"
      },
      {
        "url" : "value",
        "valueString" : "https://bih-cei.github.io/PCOR-MII/history.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "template-html"
      },
      {
        "url" : "value",
        "valueString" : "template-page.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "template-md"
      },
      {
        "url" : "value",
        "valueString" : "template-page-md.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-contact"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-context"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-copyright"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-jurisdiction"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-license"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-publisher"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-version"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-wg"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "active-tables"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "fmm-definition"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/fhir/versions.html#maturity"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "propagate-status"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "excludelogbinaryformat"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "tabbed-snapshots"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "wantGen-ttl"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "wantGen-ttl-html"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-internal-dependency",
      "valueCode" : "hl7.fhir.uv.tools.r4#1.1.2"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "copyrightyear"
      },
      {
        "url" : "value",
        "valueString" : "2026+"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "releaselabel"
      },
      {
        "url" : "value",
        "valueString" : "draft"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "shownav"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "i18n-default-lang"
      },
      {
        "url" : "value",
        "valueString" : "de"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "i18n-lang"
      },
      {
        "url" : "value",
        "valueString" : "en"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "translation-sources"
      },
      {
        "url" : "value",
        "valueString" : "input/translations/en"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "excludettl"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "autoload-resources"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-liquid-template"
      },
      {
        "url" : "value",
        "valueString" : "template/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-liquid-template"
      },
      {
        "url" : "value",
        "valueString" : "input/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-qa"
      },
      {
        "url" : "value",
        "valueString" : "temp/qa"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-temp"
      },
      {
        "url" : "value",
        "valueString" : "temp/pages"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-output"
      },
      {
        "url" : "value",
        "valueString" : "output"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-suppressed-warnings"
      },
      {
        "url" : "value",
        "valueString" : "input/ignoreWarnings.txt"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-history"
      },
      {
        "url" : "value",
        "valueString" : "https://bih-cei.github.io/PCOR-MII/history.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "template-html"
      },
      {
        "url" : "value",
        "valueString" : "template-page.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "template-md"
      },
      {
        "url" : "value",
        "valueString" : "template-page-md.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-contact"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-context"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-copyright"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-jurisdiction"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-license"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-publisher"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-version"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-wg"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "active-tables"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "fmm-definition"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/fhir/versions.html#maturity"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "propagate-status"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "excludelogbinaryformat"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "tabbed-snapshots"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "wantGen-ttl"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "wantGen-ttl-html"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    }],
    "resource" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-ACE.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/ACE"
      },
      "name" : "ACE + Zeitangaben — Belastende Kindheitserfahrungen (PCOR-MII-Komposit)",
      "description" : "**PCOR-MII-spezifisches Komposit**, nicht der ACE allein: die ersten fünf Fragen des Adverse Childhood Experiences Questionnaire (Felitti et al. 1998) plus sechs UKHD-Items zur zeitlichen Einordnung der berichteten Ereignisse. Die sechs Zeitangaben sind in drei Paare gegliedert; jedes Paar wird über `enableWhen` von einem bejahten ACE-Item freigeschaltet — `ace1`, `ace2` bzw. `ace3`, so wie das Item Level Dictionary es vorgibt. Die fünf ACE-Items im Einzelnen: emotionale und körperliche Misshandlung, sexueller Missbrauch, emotionale und körperliche Vernachlässigung vor dem 18. Lebensjahr, je ja/nein. Kein Score — die Summe über den 5-Item-Zuschnitt ist kein validierter ACE-Score. Quelle: PCOR-MII Item Level Dictionary (Entität AN). Jedes Item trägt in `item.code` seine PCOR-MII-Dictionary-Variable — das ist der PCOR-MII-Code des Items — und zusätzlich seinen LOINC-Code.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-ACEResponse.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/ACEResponse"
      },
      "name" : "ACE — Beispielantwort",
      "description" : "Vollständig ausgefüllte Beispielantwort zum PCOR-MII-Komposit aus den ersten fünf ACE-Fragen und den UKHD-Zeitangaben. Von den drei Zeitangabe-Gruppen ist nur die erste belegt — nur `ace1` ist bejaht, die beiden anderen Gruppen sind per `enableWhen` nicht freigeschaltet. Zwei bejahte Items in der emotionalen Dimension; die Anzahl der Ja-Antworten ist kein ACE-Score, weil die Fragen 6–10 nicht erhoben werden.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-ansocq-gedanken-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/ansocq-gedanken-vs"
      },
      "name" : "ANSOCQ Item 14 — Gedanken an Nahrung und Gewicht",
      "description" : "Fünf Feststellungen des ANSOCQ-Items 14 (Zeit mit Gedanken an Nahrung und Gewicht), Stadien 1-5.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-ansocq-gedanken.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/ansocq-gedanken"
      },
      "name" : "ANSOCQ Item 14 — Gedanken an Nahrung und Gewicht (Codes)",
      "description" : "Fünf Feststellungen des ANSOCQ-Items 14 (Zeit mit Gedanken an Nahrung und Gewicht), Stadien 1-5. ordinalValue-Property je Konzept.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-ansocq-koerperteile-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/ansocq-koerperteile-vs"
      },
      "name" : "ANSOCQ Item 3 — Körperteile",
      "description" : "Fünf Feststellungen des ANSOCQ-Items 3 (Körperteile bei Gewichtszunahme), Stadien 1-5.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-ansocq-koerperteile.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/ansocq-koerperteile"
      },
      "name" : "ANSOCQ Item 3 — Körperteile (Codes)",
      "description" : "Fünf Feststellungen des ANSOCQ-Items 3 (Körperteile bei Gewichtszunahme), Stadien 1-5. ordinalValue-Property je Konzept. Jedes Item trägt in `item.code` seine PCOR-MII-Dictionary-Variable — das ist der PCOR-MII-Code des Items. Hier stimmt sie mit der Itemnummer überein.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-ANSOCQ2Response.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/ANSOCQ2Response"
      },
      "name" : "ANSOCQ-2 — Beispielantwort",
      "description" : "Vollständig ausgefüllte Beispielantwort zum ANSOCQ-2-Questionnaire. `language` ist `de-CH`, weil die validierte Schweizer Fassung vorgelegt wurde — der Questionnaire selbst führt den englischen Originalwortlaut.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-ANSOCQ2.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/ANSOCQ2"
      },
      "name" : "ANSOCQ-2 — Veränderungsmotivation (2-Item-Zuschnitt des ANSOCQ)",
      "description" : "Zwei Items aus dem Anorexia Nervosa Stages of Change Questionnaire (ANSOCQ): Bereitschaft zur Gewichtszunahme an sorgenbesetzten Körperteilen (Item 3) und Umgang mit der Zeit für Gedanken an Nahrung und Gewicht (Item 14). Je fünf Feststellungen entsprechend den Stadien der Veränderungsbereitschaft (1-5). Kein Score — für den Zuschnitt liegt keine validierte Scoring-Vorschrift vor. Quelle: PCOR-MII Item Level Dictionary (Entität AN).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-pcor-mii-exa-patient.html"
      }],
      "reference" : {
        "reference" : "Patient/pcor-mii-exa-patient"
      },
      "name" : "Beispiel-Patientin (DEM)",
      "description" : "Minimale Beispiel-Patientin als subject der DEM-Beispielantwort.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-dem-antwort.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/dem-antwort"
      },
      "name" : "DEM Antwortoptionen (Ja/Nein/Nicht zutreffend/Keine Angabe)",
      "description" : "Gemeinsames CodeSystem für die Ja/Nein-Items des DEM. Frage-spezifische Subsets über ValueSets (DemJaNeinVS / DemJaNeinNzVS / DemJaNeinKaVS). SNOMED-Mapping: ja=373066001 (Yes), nein=373067005 (No).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-dem-beziehungsstatus-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/dem-beziehungsstatus-vs"
      },
      "name" : "DEM Beziehungsstatus",
      "description" : "Partnerschaftsstatus (GIPS04).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-dem-beziehungsstatus.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/dem-beziehungsstatus"
      },
      "name" : "DEM Beziehungsstatus (Codes)",
      "description" : "Partnerschaftsstatus (GIPS04).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-dem-isced-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/dem-isced-vs"
      },
      "name" : "DEM Bildungsabschluss (ISCED)",
      "description" : "Höchster Bildungsabschluss (Q_ISCED).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-dem-isced-de.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/dem-isced-de"
      },
      "name" : "DEM Bildungsabschluss (ISCED-2011/KMK)",
      "description" : "Höchster Bildungsabschluss nach ISCED-2011 / KMK-Systematik (Q_ISCED).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-dem-erwerbsstatus-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/dem-erwerbsstatus-vs"
      },
      "name" : "DEM Erwerbsstatus",
      "description" : "Aktuelle Arbeitssituation (Q_OECDLIT5a).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-dem-erwerbsstatus.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/dem-erwerbsstatus"
      },
      "name" : "DEM Erwerbsstatus (OECD)",
      "description" : "Aktuelle Arbeitssituation nach OECD Measuring Financial Literacy (Q_OECDLIT5a).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-dem-geschlecht-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/dem-geschlecht-vs"
      },
      "name" : "DEM Geschlecht",
      "description" : "Selbstbeschriebenes Geschlecht (Q_SEX).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-dem-geschlecht.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/dem-geschlecht"
      },
      "name" : "DEM Geschlecht (Selbstbeschreibung)",
      "description" : "Selbstbeschriebenes Geschlecht (Q_SEX). HINWEIS: Im MII-Kontext bevorzugt an das MII-Person-Modul (Geschlecht / gender-amtlich-de) angleichen.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-dem-einkommen-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/dem-einkommen-vs"
      },
      "name" : "DEM Haushaltseinkommen",
      "description" : "Einkommensbänder (Q_OECDLIT7a).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-dem-einkommen.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/dem-einkommen"
      },
      "name" : "DEM Haushaltseinkommen (Bänder)",
      "description" : "Netto-Haushaltseinkommen in Kategorien (Q_OECDLIT7a). Die ursprüngliche deutsche Übersetzung liegt in de-CH vor (Schweizer PaRIS-Fassung, Bänder bis CHF 3630 / zwischen CHF 3630 und CHF 6050 / ab CHF 6050 pro Monat). Für PCOR-MII sind die Bänder auf deutsche Gehaltsdaten angepasst: EUR-Terzile nach IW Köln (Institut der deutschen Wirtschaft, Niehues/Stockhausen). Das ist KEINE Währungsumrechnung, sondern eine eigenständige Skala — CHF 3630 entspräche grob 3.800 EUR, nicht 2.300 EUR. Weil der Wortlaut damit deutsch und nicht schweizerisch ist, tragen die Designations hier de-DE; die übrigen DEM-Antwortskalen behalten ihren Schweizer Wortlaut nach ADR-005 bewusst bei.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-dem-haeufigkeit-5-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/dem-haeufigkeit-5-vs"
      },
      "name" : "DEM Häufigkeit (5-stufig)",
      "description" : "5-stufige Häufigkeitsskala (MONMEAL/MONRENT/MONBILLS).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-dem-haeufigkeit-5.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/dem-haeufigkeit-5"
      },
      "name" : "DEM Häufigkeit (5-stufig) (Codes)",
      "description" : "5-stufige Häufigkeitsskala für finanzielle Sorgen (MONMEAL/MONRENT/MONBILLS). Quelle: Commonwealth Fund 2017.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-dem-ja-nein.html"
      }],
      "reference" : {
        "reference" : "ValueSet/dem-ja-nein"
      },
      "name" : "DEM Ja/Nein",
      "description" : "Ja/Nein (Subset von DemAntwortCS). SNOMED-Mapping: ja=373066001 (Yes), nein=373067005 (No).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-dem-ja-nein-ka-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/dem-ja-nein-ka-vs"
      },
      "name" : "DEM Ja/Nein/Keine Angabe",
      "description" : "Ja/Nein/Möchte ich nicht sagen (Q_GENDERID) – Subset von DemAntwortCS.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-dem-ja-nein-nz-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/dem-ja-nein-nz-vs"
      },
      "name" : "DEM Ja/Nein/Nicht zutreffend",
      "description" : "Ja/Nein/Nicht zutreffend (Q_MONMED) – Subset von DemAntwortCS.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-dem-leichtigkeit-6-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/dem-leichtigkeit-6-vs"
      },
      "name" : "DEM Leichtigkeit Unterstützung (6-stufig)",
      "description" : "Leichtigkeit, Unterstützung zu erhalten (WHODIS1/2).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-dem-leichtigkeit-6.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/dem-leichtigkeit-6"
      },
      "name" : "DEM Leichtigkeit Unterstützung (6-stufig) (Codes)",
      "description" : "Skala zur erlebten Leichtigkeit, Unterstützung zu erhalten (WHODIS1/WHODIS2).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-dem-rentenstatus-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/dem-rentenstatus-vs"
      },
      "name" : "DEM Rentenstatus",
      "description" : "Rentenstatus (GIPS10).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-dem-rentenstatus.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/dem-rentenstatus"
      },
      "name" : "DEM Rentenstatus (Codes)",
      "description" : "Rentenstatus (GIPS10).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-dem-urbanizitaet-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/dem-urbanizitaet-vs"
      },
      "name" : "DEM Urbanizität",
      "description" : "Wohnort-Typ (Q_OECDLITii).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-dem-urbanizitaet.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/dem-urbanizitaet"
      },
      "name" : "DEM Urbanizität (Codes)",
      "description" : "Beschreibung des Wohnorts (Q_OECDLITii).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-dem-zigaretten-band-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/dem-zigaretten-band-vs"
      },
      "name" : "DEM Zigaretten pro Tag",
      "description" : "Zigaretten/Tag in Bändern (GIPS57b).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-dem-zigaretten-band.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/dem-zigaretten-band"
      },
      "name" : "DEM Zigaretten pro Tag (Bänder)",
      "description" : "Anzahl Zigaretten pro Tag in Bändern (GIPS57b).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-DEMResponse.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/DEMResponse"
      },
      "name" : "DEM — Beispielantwort",
      "description" : "Ausgefülltes Beispiel zum DEM-Questionnaire (Demographie).",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-DEM.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/DEM"
      },
      "name" : "DEM — Demographics & Medical History",
      "description" : "Screening-Fragebogen zur Soziodemographie (Kategorie DEM). Folgt den Konventionen des MII-PRO-Moduls (SDC-Basis); ist selbst kein PRO-Instrument.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-ede-q6-tage-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/ede-q6-tage-vs"
      },
      "name" : "EDE-Q6 Häufigkeit in 28 Tagen",
      "description" : "7-stufige Häufigkeitsskala der EDE-Q-Items über die letzten 28 Tage (0 = kein Tag ... 6 = jeden Tag).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-ede-q6-tage.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/ede-q6-tage"
      },
      "name" : "EDE-Q6 Häufigkeit in 28 Tagen (Codes)",
      "description" : "7-stufige Häufigkeitsskala der EDE-Q-Items über die letzten 28 Tage (0 = kein Tag ... 6 = jeden Tag). ordinalValue-Property je Konzept für SDC-Scoring via .ordinal(). Jedes Item trägt in `item.code` seine PCOR-MII-Dictionary-Variable — das ist der PCOR-MII-Code des Items. Hier stimmt sie mit der Itemnummer überein.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-EDEQ6Response.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/EDEQ6Response"
      },
      "name" : "EDE-Q6 — Beispielantwort",
      "description" : "Vollständig ausgefüllte Beispielantwort zum EDE-Q6-Questionnaire, einschließlich der über `enableWhen` abhängigen Frage `edeq30`. Antwortmuster: residuelle Essstörungspathologie bei teilrestituiertem Gewicht.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-EDEQ6.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/EDEQ6"
      },
      "name" : "EDE-Q6 — Essstörungspathologie (6-Item-Zuschnitt des EDE-Q)",
      "description" : "Sechs Items aus dem Eating Disorder Examination-Questionnaire (EDE-Q): drei 28-Tage-Häufigkeitsitems (Restriktion, gedankliche Beschäftigung, Abnehmwunsch), ein Item zum Körperunbehagen (0-6) sowie zwei Zusatzfragen zur Regelblutung. Kein Score — für den Zuschnitt liegt keine validierte Scoring-Vorschrift vor. Quelle: PCOR-MII Item Level Dictionary (Entität AN).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-ERQ6Response.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/ERQ6Response"
      },
      "name" : "ERQ-6 — Beispielantwort",
      "description" : "Vollständig ausgefüllte Beispielantwort zum ERQ-6-Questionnaire. Antwortmuster: niedrige Neubewertung bei hoher Unterdrückung — das für Anorexia nervosa beschriebene Muster. Kein Score: Der Bogen ist nicht der ERQ-S — dieser besteht aus anderen ERQ-Items (2, 6, 7, 8, 9, 10), die publizierten Kennwerte gelten daher nicht.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-ERQ6.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/ERQ6"
      },
      "name" : "ERQ-6 — Emotion Regulation Questionnaire, 6-Item-Zuschnitt",
      "description" : "Projektspezifischer 6-Item-Zuschnitt des Emotion Regulation Questionnaire (ERQ; Gross & John 2003): die ERQ-Items 1, 2, 3, 6, 8 und 9 im unveränderten Originalwortlaut, 7-stufige Likert-Skala (1 = stimmt überhaupt nicht ... 7 = stimmt vollkommen). NICHT der ERQ-S: Dieser besteht laut Preece et al. (2023, Tabelle 1) aus den ERQ-Items 2, 6, 7, 8, 9 und 10. Vier Items überschneiden sich, die Neubewertungs-Items nicht — PCOR-MII hat 1 und 3, der ERQ-S hat 7 und 10. Daher KEIN Score — die publizierten ERQ-S-Kennwerte gelten für den ERQ-S-Wortlaut, nicht für diesen Satz. linkIds sind die Original-ERQ-Itemnummern; deutsche Wortlaute aus der autorisierten Fassung von Abler & Kessler (2009), englische aus dem ERQ-Originalbogen (Gross & John). Jedes Item trägt in `item.code` seine PCOR-MII-Dictionary-Variable — das ist der PCOR-MII-Code des Items. ACHTUNG: Sie ist hier NICHT die Itemnummer. Dictionary erq4/erq5/erq6 liegen auf den ERQ-Items 6/8/9; die Original-Itemnummer steht im linkId.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ConceptMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ConceptMap-pcor-cm-erq-s-linkids.html"
      }],
      "reference" : {
        "reference" : "ConceptMap/pcor-cm-erq-s-linkids"
      },
      "name" : "ERQ-6: Dictionary-Variablen-IDs → FHIR-linkIds",
      "description" : "Bildet die sequenziellen Variablen-IDs des PCOR-MII Item Level Dictionary (erq1–erq6) auf die linkIds des ERQ-6-Questionnaire ab, die den Original-ERQ-Itemnummern entsprechen (1, 2, 3, 6, 8, 9). Erforderlich, weil drei IDs abweichen und `erq6` in beiden Systemen existiert, dort aber verschiedene Items bezeichnet — ein Mapping über Namensgleichheit führt zu einer stillen Fehlzuordnung. Hinweis: Die Id dieser ConceptMap enthält historisch „erq-s“; der Bogen ist jedoch nicht der ERQ-S (siehe [ERQ-6](ERQ-6.html)).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-EXPECT.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/EXPECT"
      },
      "name" : "EXPECT — Erwartung an den Verlauf der Körperbeschwerden",
      "description" : "Drei numerische Rating-Items (0-10) zur Erwartung an die kommenden 6 Monate: erwartete Gesamtstärke der Körperbeschwerden, erwartete Beeinträchtigung und erwartete Bewältigung. Kein standardisierter Fragebogen und kein Gesamtscore — die Items sind einzeln auszuwerten und nicht gleichgerichtet. Quelle: PCOR-MII Item Level Dictionary (Entität PSS).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-GSLTPAQ.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/GSLTPAQ"
      },
      "name" : "GSLTPAQ — Godin-Shephard Leisure-Time Physical Activity Questionnaire",
      "description" : "Godin-Shephard Leisure-Time Physical Activity Questionnaire (GSLTPAQ): 3 Intensitätsstufen körperlicher Aktivität (anstrengend/mäßig/leicht) je mit Häufigkeit pro Woche und Dauer in Minuten. PCOR-MII-Eigenübersetzung aus dem Item Level Dictionary (siehe Kopfkommentar zur Abgrenzung von der validierten Übersetzung Lindner et al. 2026). SDC-Basis; kein PRO-Instrument im Sinne des MII-PRO-Moduls.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-IPQS.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/IPQS"
      },
      "name" : "IPQ-S — Subjektive Ursachen der Körperbeschwerden (offene Frage)",
      "description" : "Eine offene Frage nach den drei wichtigsten subjektiven Ursachen der Körperbeschwerden, angelehnt an Item 9 des Brief Illness Perception Questionnaire (B-IPQ). PCOR-MII erhebt NICHT den B-IPQ selbst; ein B-IPQ-Score ist aus diesem Item nicht ableitbar. Quelle: PCOR-MII Item Level Dictionary (Entität PSS).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mhi-an-subtyp-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mhi-an-subtyp-vs"
      },
      "name" : "MHI Anorexia-nervosa-Subtyp",
      "description" : "Subtyp der Anorexia nervosa (AN_subtyp).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mhi-an-subtyp.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mhi-an-subtyp"
      },
      "name" : "MHI Anorexia-nervosa-Subtyp (Codes)",
      "description" : "Subtyp der Anorexia nervosa (AN_subtyp).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mhi-chronisch-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mhi-chronisch-vs"
      },
      "name" : "MHI Chronische Erkrankungen (GIPS13)",
      "description" : "Liste chronischer Erkrankungen (GIPS13, Mehrfachauswahl).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mhi-chronisch.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mhi-chronisch"
      },
      "name" : "MHI Chronische Erkrankungen (GIPS13) (Codes)",
      "description" : "Liste chronischer Erkrankungen (GIPS13, Mehrfachauswahl).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mhi-cpcor-diag-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mhi-cpcor-diag-vs"
      },
      "name" : "MHI Diagnosegruppe (CPCOR)",
      "description" : "Diagnosegruppe zur Selbstzuordnung (CPCOR-DIAG).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mhi-cpcor-diag.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mhi-cpcor-diag"
      },
      "name" : "MHI Diagnosegruppe (CPCOR) (Codes)",
      "description" : "Diagnosegruppe zur Selbstzuordnung (CPCOR-DIAG).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mhi-einnahmezeit-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mhi-einnahmezeit-vs"
      },
      "name" : "MHI Einnahmezeitpunkt Medikament",
      "description" : "Tageszeit der Medikamenteneinnahme (medi_02_time).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mhi-einnahmezeit.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mhi-einnahmezeit"
      },
      "name" : "MHI Einnahmezeitpunkt Medikament (Codes)",
      "description" : "Tageszeit der Medikamenteneinnahme (medi_02_time).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mhi-gewicht-angabe-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mhi-gewicht-angabe-vs"
      },
      "name" : "MHI Gewichtsangabe",
      "description" : "Einheit/Angabe-Status für Gewicht (Q_WB151).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mhi-gewicht-angabe.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mhi-gewicht-angabe"
      },
      "name" : "MHI Gewichtsangabe (Codes)",
      "description" : "Einheit/Angabe-Status für Gewicht (Q_WB151).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mhi-gewichtsmethode-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mhi-gewichtsmethode-vs"
      },
      "name" : "MHI Gewichtsmessung Methode",
      "description" : "Wie wurde das Gewicht ermittelt? (weight_outpatient_2).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mhi-gewichtsmethode.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mhi-gewichtsmethode"
      },
      "name" : "MHI Gewichtsmessung Methode (Codes)",
      "description" : "Wie wurde das Gewicht ermittelt? (weight_outpatient_2).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mhi-groesse-angabe-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mhi-groesse-angabe-vs"
      },
      "name" : "MHI Größenangabe",
      "description" : "Einheit/Angabe-Status für Körpergröße (Q_WB152).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mhi-groesse-angabe.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mhi-groesse-angabe"
      },
      "name" : "MHI Größenangabe (Codes)",
      "description" : "Einheit/Angabe-Status für Körpergröße (Q_WB152).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-MHIResponse.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/MHIResponse"
      },
      "name" : "MHI — Beispielantwort",
      "description" : "Vollständig ausgefüllte Beispielantwort zum MHI-Questionnaire (Medical History).",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-MHI.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/MHI"
      },
      "name" : "MHI — Medical History",
      "description" : "Medizinische Vorgeschichte (Kategorie MHI im PCOR-Item-Dictionary): Anthropometrie, Diagnosen/chronische Erkrankungen, Lifestyle (Rauchen/Alkohol/Substanzen), aktuelle Medikation und (AN-spezifisch) Gewichtsverlauf. SDC-Basis; kein PRO-Instrument.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-opd-sfk-antwort-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/opd-sfk-antwort-vs"
      },
      "name" : "OPD-SFK Antwortskala",
      "description" : "5-stufige Antwortskala des OPD-SFK (0 = trifft gar nicht zu ... 4 = trifft völlig zu).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-opd-sfk-antwort.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/opd-sfk-antwort"
      },
      "name" : "OPD-SFK Antwortskala (Codes)",
      "description" : "5-stufige Antwortskala des OPD-SFK (0 = trifft gar nicht zu ... 4 = trifft völlig zu). ordinalValue-Property je Konzept für SDC-Summenscoring via .ordinal().",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-OPDSFK.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/OPDSFK"
      },
      "name" : "OPD-SFK — OPD-Strukturfragebogen, 12-Item-Kurzversion",
      "description" : "OPD-Strukturfragebogen Kurzform (OPD-SFK): 12 Items, 5-stufige Skala (trifft gar nicht zu ... trifft völlig zu). Screeninginstrument für strukturelle Persönlichkeitsfunktion (Ehrenthal et al. 2015). Globalwert = Summe über alle 12 Items (0-48); die drei Subskalen (Selbstwahrnehmung, Beziehungsmodell, Kontaktgestaltung) sind laut Autor:innen nur explorativ und hier nicht implementiert. Rechtehinweise siehe `copyright`.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-PcorExampleQuestionnaire.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/PcorExampleQuestionnaire"
      },
      "name" : "PCOR Beispiel-Fragebogen",
      "description" : "Beispielhafter PCOR-Fragebogen zur Erfassung patientenberichteter Angaben. Dient als Vorlage für eigene Questionnaires; ist konform zum PRO-Q-Profil aus dem MII PRO-Modul 2026.4.1.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-pcor-example-general-health.html"
      }],
      "reference" : {
        "reference" : "ValueSet/pcor-example-general-health"
      },
      "name" : "PCOR Example General Health Self-Assessment",
      "description" : "ValueSet, das alle 5 Stufen der Selbsteinschätzung der allgemeinen Gesundheit aus dem Beispiel-Questionnaire abdeckt.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-pcor-example-general-health.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/pcor-example-general-health"
      },
      "name" : "PCOR Example General Health Self-Assessment",
      "description" : "Lokales CodeSystem mit der 5-stufigen Selbsteinschätzung der allgemeinen Gesundheit. Dient ausschließlich dem Beispiel-Questionnaire.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-pcor-item-dictionary.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/pcor-item-dictionary"
      },
      "name" : "PCOR-MII Item Level Dictionary — Variablen-IDs",
      "description" : "Variablen-IDs des PCOR-MII Item Level Dictionary als Codes, damit sich ein flach erhobener Datensatz maschinell auf die Instrumenten-Questionnaires verteilen lässt (ADR-011). Jedes Item trägt seine Variable in `item.code`; die Zuordnung ist damit eine Nachschlage-Operation und keine Abbildung. Enthält nur die modellierten Variablen — `content = fragment`.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-pcor-questionnaire-catalogue.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/pcor-questionnaire-catalogue"
      },
      "name" : "PCOR-MII Questionnaire-Katalog",
      "description" : "Ein Code je PCOR-MII-eigenem Questionnaire, für `Questionnaire.code`. Anders als die Canonical, die das **Artefakt** identifiziert, bezeichnet der Katalogcode das **Instrument** — damit mehrere Fassungen desselben Bogens als solche erkennbar sind (ADR-007). Lokal vergeben, weil weder LOINC noch SNOMED CT noch der MII-Questionnaire-Katalog Codes für diese Bögen führen; `Questionnaire.code` ist `0..*`, ein späterer Code wird also ergänzt statt ersetzt (ADR-004).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-pcor-score-catalogue.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/pcor-score-catalogue"
      },
      "name" : "PCOR-MII Score-Katalog (Codes)",
      "description" : "Lokaler Score-Katalog für PCOR-MII. Enthält ausschließlich Scores, für die weder LOINC noch SNOMED CT noch der MII-Score-Katalog (mii-cs-pro-score-catalogue) einen Code führen. Sobald ein Score upstream einen Code erhält, wird dieser in der jeweiligen ObservationDefinition als zusätzliches code.coding ergänzt; der lokale Code bleibt als stabile Referenz bestehen.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-pcor-mii-exa-example-response.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/pcor-mii-exa-example-response"
      },
      "name" : "pcor-mii-exa-example-response",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-pcor-mii-exa-promis-16-response.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/pcor-mii-exa-promis-16-response"
      },
      "name" : "pcor-mii-exa-promis-16-response",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-pcor-mii-exa-promis-cognitive-function-response.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/pcor-mii-exa-promis-cognitive-function-response"
      },
      "name" : "pcor-mii-exa-promis-cognitive-function-response",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ObservationDefinition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ObservationDefinition-PcorObsDefProprUtility.html"
      }],
      "reference" : {
        "reference" : "ObservationDefinition/PcorObsDefProprUtility"
      },
      "name" : "PROPr — PROMIS-Preference Utility Score",
      "description" : "Präferenzbasierter Nutzwert (Utility) über sieben PROMIS-Domänen: Cognitive Function-Abilities, Depression, Fatigue, Pain Interference, Physical Function, Sleep Disturbance sowie Ability to Participate in Social Roles and Activities. Die Anxiety-Domäne geht NICHT ein. Wertebereich -0,022 bis 1,0 (0 = tot, 1 = bestmögliche Gesundheit); höhere Werte zeigen bessere Gesundheit an. Berechnet wird aus Domänen-T-Scores (theta = (T-50)/10), nicht aus Items — damit aus PROMIS-16, PROMIS-29+2 oder CATs gleichermaßen ableitbar. PROMIS-spezifisch, aber nicht an ein einzelnes PROMIS-Profil gebunden. Quelle: Dewitt et al., Med Decis Making 2018;38(6):683-698. Vorläufig in PCOR-MII gepflegt; die Zuständigkeit liegt beim MII-PRO-Modul.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-ssuk-antwort-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/ssuk-antwort-vs"
      },
      "name" : "SSUK Antwortskala",
      "description" : "5-stufige Häufigkeitsskala der SSUK (0 = nie ... 4 = immer).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-ssuk-antwort.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/ssuk-antwort"
      },
      "name" : "SSUK Antwortskala (Codes)",
      "description" : "5-stufige Häufigkeitsskala der SSUK (0 = nie ... 4 = immer). ordinalValue-Property je Konzept. Jedes Item trägt in `item.code` seine PCOR-MII-Dictionary-Variable — das ist der PCOR-MII-Code des Items. Hier stimmt sie mit der Itemnummer überein.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-SSUK2Response.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/SSUK2Response"
      },
      "name" : "SSUK-2 — Beispielantwort",
      "description" : "Vollständig ausgefüllte Beispielantwort zum SSUK-2-Questionnaire. Antwortmuster eines günstigen sozialen Umfelds: hoch bei der unterstützenden Zuwendung (`ssuk14`), niedrig bei der belastenden Interaktion (`ssuk10`).",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-SSUK2.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/SSUK2"
      },
      "name" : "SSUK-2 — Soziale Unterstützung bei Krankheit (2-Item-Zuschnitt)",
      "description" : "Zwei Items aus den Skalen zur Sozialen Unterstützung bei Krankheit (SSUK): je ein Item zur positiven Unterstützung (aufmuntern/trösten) und zur belastenden Interaktion (Auswirkung der Erkrankung herunterspielen), 5-stufige Häufigkeitsskala (0 = nie ... 4 = immer). Kein Score — die beiden Items sind gegenläufig gepolt und einzeln auszuwerten. Quelle: PCOR-MII Item Level Dictionary (Entität AN).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-ukhd-an-behandlungsstatus-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/ukhd-an-behandlungsstatus-vs"
      },
      "name" : "UKHD-AN Aktueller Behandlungsstatus",
      "description" : "Vier Stufen des aktuellen psychotherapeutischen Behandlungsstatus (`treatment_outpatient`).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-ukhd-an-behandlungsstatus.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/ukhd-an-behandlungsstatus"
      },
      "name" : "UKHD-AN Aktueller Behandlungsstatus (Codes)",
      "description" : "Vier Stufen des aktuellen psychotherapeutischen Behandlungsstatus (`treatment_outpatient`). Bewusst ohne `ordinalValue`: Die Skala mischt Behandlungsstatus (Stufen 1/2) und Setting (Stufen 3/4).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-ukhd-an-arztbesuche-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/ukhd-an-arztbesuche-vs"
      },
      "name" : "UKHD-AN Arztbesuche in den letzten 4 Wochen",
      "description" : "Vierstufige Häufigkeitsskala der Arztbesuche in den letzten vier Wochen (`bdkm16`), `ordinalValue` 1–4.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-ukhd-an-arztbesuche.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/ukhd-an-arztbesuche"
      },
      "name" : "UKHD-AN Arztbesuche in den letzten 4 Wochen (Codes)",
      "description" : "Vierstufige Häufigkeitsskala der Arztbesuche in den letzten vier Wochen (`bdkm16`). `ordinalValue`-Property je Konzept — die Werte sind die Dictionary-Codes 1–4 und damit Rangplätze, **nicht** Besuchszahlen (`gar nicht` = 1, nicht 0).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-ukhd-an-dauer-angabe-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/ukhd-an-dauer-angabe-vs"
      },
      "name" : "UKHD-AN Dauer der Essstoerung — Einheit/Angabe-Status",
      "description" : "Einheit bzw. Angabe-Status für die Dauer der Essstörung (`AN_biography`).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-ukhd-an-dauer-angabe.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/ukhd-an-dauer-angabe"
      },
      "name" : "UKHD-AN Dauer der Essstoerung — Einheit/Angabe-Status (Codes)",
      "description" : "Einheit bzw. Angabe-Status für die Dauer der Essstörung (`AN_biography`): Monate, Jahre oder „weiß ich nicht“. Der Zahlenwert steht im Hilfsitem `AN_biography-wert`.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-ukhd-an-ereignishaeufigkeit-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/ukhd-an-ereignishaeufigkeit-vs"
      },
      "name" : "UKHD-AN Ereignis einmalig oder wiederholt",
      "description" : "Einmaliges oder wiederholtes Ereignis (`traumaspecific1`, `traumaspecific3`, `traumaspecific5`).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-ukhd-an-ereignishaeufigkeit.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/ukhd-an-ereignishaeufigkeit"
      },
      "name" : "UKHD-AN Ereignis einmalig oder wiederholt (Codes)",
      "description" : "Einmaliges oder wiederholtes Ereignis (`traumaspecific1`, `traumaspecific3`, `traumaspecific5`), `ordinalValue` 1–2. Die Displays sind Satzfragmente, die den Itemtext fortsetzen — so im Item Level Dictionary.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-ukhd-an-ereigniszeitpunkt-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/ukhd-an-ereigniszeitpunkt-vs"
      },
      "name" : "UKHD-AN Ereignis vor oder nach Beginn der Essstoerung",
      "description" : "Zeitliche Lage des Ereignisses relativ zu den ersten Anzeichen der Essstörung (`traumaspecific2`, `traumaspecific4`, `traumaspecific6`).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-ukhd-an-ereigniszeitpunkt.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/ukhd-an-ereigniszeitpunkt"
      },
      "name" : "UKHD-AN Ereignis vor oder nach Beginn der Essstoerung (Codes)",
      "description" : "Zeitliche Lage des Ereignisses relativ zu den ersten Anzeichen der Essstörung (`traumaspecific2`, `traumaspecific4`, `traumaspecific6`). Nominal — bewusst ohne `ordinalValue`; Stufe 3 ist eine erhobene Nicht-Antwort.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-ukhd-an-bmi-angabe-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/ukhd-an-bmi-angabe-vs"
      },
      "name" : "UKHD-AN Niedrigster BMI — Angabe-Status",
      "description" : "Angabe-Status für den niedrigsten BMI (`lowBMI`).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-ukhd-an-bmi-angabe.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/ukhd-an-bmi-angabe"
      },
      "name" : "UKHD-AN Niedrigster BMI — Angabe-Status (Codes)",
      "description" : "Angabe-Status für den niedrigsten BMI (`lowBMI`): Wert wird angegeben oder „weiß ich nicht“. Der Zahlenwert steht im Hilfsitem `lowBMI-wert`.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-ukhd-an-psychotherapie-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/ukhd-an-psychotherapie-vs"
      },
      "name" : "UKHD-AN Psychotherapeutische Behandlung, frueher/aktuell",
      "description" : "Drei Zeitbezüge der psychotherapeutischen Behandlung (`bdkm15`).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-ukhd-an-psychotherapie.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/ukhd-an-psychotherapie"
      },
      "name" : "UKHD-AN Psychotherapeutische Behandlung, frueher/aktuell (Codes)",
      "description" : "Drei Zeitbezüge der psychotherapeutischen Behandlung (`bdkm15`): noch nie, früher, zurzeit. Nominale Skala — bewusst ohne `ordinalValue`.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-UKHDANBResponse.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/UKHDANBResponse"
      },
      "name" : "UKHD-ANB — Beispielantwort",
      "description" : "Beispielantwort zum UKHD-ANB-Questionnaire (Essstörungsanamnese): Erkrankungsdauer 8 Jahre, niedrigster BMI 14,8. Die Zahlenwerte stehen in den PCOR-MII-eigenen Hilfsitems; die Dezimalstelle bei `lowBMI-wert` belegt bewusst den `decimal`-Typ.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-UKHDANB.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/UKHDANB"
      },
      "name" : "UKHD-ANB — Essstörungsanamnese (UKHD-Zusatzitems AN)",
      "description" : "Zwei zusammengesetzte Items zur Essstörungsanamnese aus der Dictionary-Gruppe `UKHD-ANB`: Erkrankungsdauer (`AN_biography`) und niedrigster BMI (`lowBMI`), je als Auswahl plus PCOR-MII-eigenem Wert-Item aufgelöst (MHI-Muster `Q_WB151`/`Q_WB151a`). Eigenes Questionnaire je Dictionary-Gruppe; Übersicht auf der Seite [UKHD-Zusatzitems](UKHD-Zusatzitems.html). Kein Score. **Für den Wortlaut liegt keine dokumentierte Freigabe vor, seine Herkunft ist ungeklärt.**",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-UKHDCT.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/UKHDCT"
      },
      "name" : "UKHD-CT — Aktuelle Behandlung (UKHD-Zusatzitems AN)",
      "description" : "Ein Item zum aktuellen Behandlungsstatus aus der Dictionary-Gruppe `UKHD-CT` (`treatment_outpatient`). Eigenes Questionnaire je Dictionary-Gruppe; Übersicht auf der Seite [UKHD-Zusatzitems](UKHD-Zusatzitems.html). Kein Score. **Für den Wortlaut liegt keine dokumentierte Freigabe vor, seine Herkunft ist ungeklärt.**",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-UKHDCTResponse.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/UKHDCTResponse"
      },
      "name" : "UKHD-CT — Beispielantwort",
      "description" : "Beispielantwort zum UKHD-CT-Questionnaire (aktuelle Behandlung): ambulante psychotherapeutische Behandlung — konsistent mit `bdkm15` in der UKHD-PT-Antwort; die Überschneidung der beiden Items ist als Dictionary-Befund dokumentiert.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-UKHDDResponse.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/UKHDDResponse"
      },
      "name" : "UKHD-D — Beispielantwort",
      "description" : "Beispielantwort zum UKHD-D-Questionnaire (Diagnosen bei Aufnahme). `comorbid1` enthält Diagnosetext und kein „ja“, obwohl die Frage wörtlich eine Ja/Nein-Frage ist — das Dictionary sieht ein Textfeld vor; siehe die designNote am Item.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-UKHDD.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/UKHDD"
      },
      "name" : "UKHD-D — Diagnosen bei Aufnahme (UKHD-Zusatzitems AN)",
      "description" : "Zwei Freitextitems zu den Aufnahmediagnosen aus der Dictionary-Gruppe `UKHD_D` (Schreibweise mit Unterstrich so im Dictionary): Behandlungsdiagnosen (`diagnosis_admit`) und weitere Diagnosen (`comorbid1`). Eigenes Questionnaire je Dictionary-Gruppe; Übersicht auf der Seite [UKHD-Zusatzitems](UKHD-Zusatzitems.html). Kein Score. **Für den Wortlaut liegt keine dokumentierte Freigabe vor, seine Herkunft ist ungeklärt.**",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-ukhd-edp-stufe-6-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/ukhd-edp-stufe-6-vs"
      },
      "name" : "UKHD-EDP Antwortstufen (neutralisiert)",
      "description" : "Antwortstufen des UKHD-EDP in neutralisierter Form — siehe CodeSystem.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-ukhd-edp-stufe-6.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/ukhd-edp-stufe-6"
      },
      "name" : "UKHD-EDP Antwortstufen (neutralisiert, 6-stufig)",
      "description" : "Sechsstufige Zustimmungsskala des UKHD-EDP, **neutral benannt**. Die Originalbezeichnungen der Antwortstufen sind bewusst nicht abgebildet (metadata-only, siehe Questionnaire). `ordinalValue` 1–6 bildet die Stufenfolge ab, damit eine spätere Auswertung möglich bleibt.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-UKHDEDP.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/UKHDEDP"
      },
      "name" : "UKHD-EDP — Essstörungspathologie (11 Items, metadata-only)",
      "description" : "Elf Items zur Essstörungspathologie aus der AN-Batterie des UKHD. **Metadata-only:** Struktur, `linkId`s, Antwortformat und Wertebereiche sind abgebildet, der Originalwortlaut der Items und der Antwortstufen bewusst nicht. Grund: Der Block ist vermutlich ein Zuschnitt des EDI-2 (je ein Item pro Subskala) — eines Hogrefe-Testverfahrens —, und unabhängig davon liegt für die Standort-Itemgruppen keine dokumentierte Freigabe vor. Kein Score: Ein Item je Subskala bildet die Subskala nicht ab.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-UKHDLEResponse.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/UKHDLEResponse"
      },
      "name" : "UKHD-LE — Beispielantwort",
      "description" : "Beispielantwort zum UKHD-LE-Questionnaire (belastende Lebensereignisse) für einen Initial-/Screening-Termin: nur das Screening-Item ist beantwortet (`TIMING` i), das bejahte Item schaltet den Freitext frei. `life_event1_monitoring` und `lifev_discharge` fehlen, weil sie zu diesem Termin nicht erhoben werden. Der Freitext bleibt konsistent mit den zwei bejahten ACE-Items derselben Patientin.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-UKHDLE.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/UKHDLE"
      },
      "name" : "UKHD-LE — Belastende Lebensereignisse (UKHD-Zusatzitems AN)",
      "description" : "Vier Items zu belastenden Lebensereignissen aus der Dictionary-Gruppe `UKHD-LE`: dieselbe Ja/Nein-Frage für drei Erhebungszeitpunkte plus ein Freitextitem, das per `enableWhen` (`any`) an allen drei hängt. Eigenes Questionnaire je Dictionary-Gruppe; Übersicht auf der Seite [UKHD-Zusatzitems](UKHD-Zusatzitems.html). Kein Score. **Hochsensible Inhalte** — Governance der Auswertung fachlich zu klären (analog PHQ-SI und [ACE](ACE.html)). **Für den Wortlaut liegt keine dokumentierte Freigabe vor, seine Herkunft ist ungeklärt.**",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-UKHDND.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/UKHDND"
      },
      "name" : "UKHD-ND — Neue Diagnosen (UKHD-Zusatzitems AN)",
      "description" : "Drei Items zu neuen Diagnosen seit der letzten Befragung aus der Dictionary-Gruppe `UKHD-ND`: zwei Ja/Nein-Items für zwei Erhebungszeitpunkte plus ein Freitextitem per `enableWhen` (`any`). Kein Aufnahme-Item — bei Aufnahme erhebt stattdessen [UKHD-D](Questionnaire-UKHDD.html). Eigenes Questionnaire je Dictionary-Gruppe; Übersicht auf der Seite [UKHD-Zusatzitems](UKHD-Zusatzitems.html). Kein Score. **Für den Wortlaut liegt keine dokumentierte Freigabe vor, seine Herkunft ist ungeklärt.**",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-UKHDPTResponse.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/UKHDPTResponse"
      },
      "name" : "UKHD-PT — Beispielantwort",
      "description" : "Beispielantwort zum UKHD-PT-Questionnaire (Vorbehandlung): zurzeit in psychotherapeutischer Behandlung, zwei Arztbesuche in den letzten 4 Wochen.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-UKHDPT.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/UKHDPT"
      },
      "name" : "UKHD-PT — Vorbehandlung (UKHD-Zusatzitems AN)",
      "description" : "Zwei Items zur Vorbehandlung aus der Dictionary-Gruppe `UKHD-PT`: frühere oder aktuelle psychotherapeutische Behandlung (`bdkm15`) und Arztbesuche in den letzten 4 Wochen (`bdkm16`). Eigenes Questionnaire je Dictionary-Gruppe — die UKHD-Zusatzitems sind kein gemeinsames Instrument; Übersicht auf der Seite [UKHD-Zusatzitems](UKHD-Zusatzitems.html). Kein Score. **Für den Wortlaut liegt keine dokumentierte Freigabe vor, seine Herkunft ist ungeklärt** — gerade hier: Die `bdkm`-Variablen-IDs tragen ein fremdes, im Dictionary nicht erläutertes Kürzelschema.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-wai-skala-5-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/wai-skala-5-vs"
      },
      "name" : "WAI Antwortskala 5-stufig",
      "description" : "Neutral benannte 5-stufige Antwortskala für WAI02a/WAI02b. Stufe 5 = bester Wert, Stufe 1 = schlechtester Wert. Metadata-only, siehe WaiSkala5CS.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-wai-skala-5.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/wai-skala-5"
      },
      "name" : "WAI Antwortskala 5-stufig (Codes)",
      "description" : "Neutral benannte 5-stufige Antwortskala für WAI02a/WAI02b (Selbsteinschätzung der Arbeitsfähigkeit bzgl. körperlicher/psychischer Arbeitsanforderungen). METADATA-ONLY: Konzeptbezeichnungen sind bewusst neutral (Stufe 1-5) statt der Original-Itembezeichnungen, da die Publikationsrechte am WAI ungeklärt sind. Stufe 5 = bester Wert, Stufe 1 = schlechtester Wert. ordinalValue-Property je Konzept ermöglicht Scoring.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-WAI.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/WAI"
      },
      "name" : "WAI — Work Ability Index / Work Ability Score (3-Item-Kurzfassung, Metadata-only)",
      "description" : "Work Ability Index / Work Ability Score, 3-Item-Kurzfassung (Kategorie PSS im PCOR-Item-Dictionary). METADATA-ONLY: Item-Texte und Antwortstufen sind neutral umschrieben, da die Publikationsrechte am Originalwortlaut ungeklärt sind (DIZ-Implementierungsliste PCOR-MII: 'wahrscheinlich nicht für die Veröffentlichung'). Struktur, linkIds und Wertebereiche entsprechen dem Original.",
      "exampleBoolean" : false
    }],
    "page" : {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
        "valueUrl" : "toc.html"
      }],
      "nameUrl" : "toc.html",
      "title" : "Table of Contents",
      "generation" : "html",
      "page" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "index.html"
        }],
        "nameUrl" : "index.html",
        "title" : "Startseite",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "Instrumente.html"
        }],
        "nameUrl" : "Instrumente.html",
        "title" : "Instrumentenübersicht",
        "generation" : "markdown",
        "page" : [{
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "PSS.html"
          }],
          "nameUrl" : "PSS.html",
          "title" : "PSS (Persistent Somatic Syndrome)",
          "generation" : "markdown",
          "page" : [{
            "extension" : [{
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "SSD-12.html"
            }],
            "nameUrl" : "SSD-12.html",
            "title" : "SSD-12 (B-Kriterien somatische Belastungsstörung)",
            "generation" : "markdown"
          },
          {
            "extension" : [{
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "WI-7.html"
            }],
            "nameUrl" : "WI-7.html",
            "title" : "Whiteley-7 (Gesundheitsangst)",
            "generation" : "markdown"
          },
          {
            "extension" : [{
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "SCOFF.html"
            }],
            "nameUrl" : "SCOFF.html",
            "title" : "SCOFF (Essstörungs-Screening)",
            "generation" : "markdown"
          },
          {
            "extension" : [{
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "ISR-Z.html"
            }],
            "nameUrl" : "ISR-Z.html",
            "title" : "ISR-Z (Zwang)",
            "generation" : "markdown"
          },
          {
            "extension" : [{
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "PC-PTSD.html"
            }],
            "nameUrl" : "PC-PTSD.html",
            "title" : "PC-PTSD (PTBS-Screening)",
            "generation" : "markdown"
          }]
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "AN.html"
          }],
          "nameUrl" : "AN.html",
          "title" : "AN (Anorexia Nervosa)",
          "generation" : "markdown",
          "page" : [{
            "extension" : [{
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "AN-Instrumentenliste.html"
            }],
            "nameUrl" : "AN-Instrumentenliste.html",
            "title" : "AN — Instrumentenliste mit Links",
            "generation" : "markdown"
          },
          {
            "extension" : [{
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "ERQ-6.html"
            }],
            "nameUrl" : "ERQ-6.html",
            "title" : "ERQ-S (Emotionsregulation)",
            "generation" : "markdown"
          },
          {
            "extension" : [{
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "EDE-Q6.html"
            }],
            "nameUrl" : "EDE-Q6.html",
            "title" : "EDE-Q6 (Essstörungspathologie)",
            "generation" : "markdown"
          },
          {
            "extension" : [{
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "ANSOCQ-2.html"
            }],
            "nameUrl" : "ANSOCQ-2.html",
            "title" : "ANSOCQ-2 (Veränderungsmotivation)",
            "generation" : "markdown"
          },
          {
            "extension" : [{
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "SSUK-2.html"
            }],
            "nameUrl" : "SSUK-2.html",
            "title" : "SSUK-2 (Soziale Unterstützung)",
            "generation" : "markdown"
          },
          {
            "extension" : [{
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "ACE.html"
            }],
            "nameUrl" : "ACE.html",
            "title" : "ACE + Zeitangaben (Belastende Kindheitserfahrungen)",
            "generation" : "markdown"
          },
          {
            "extension" : [{
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "UKHD-Zusatzitems.html"
            }],
            "nameUrl" : "UKHD-Zusatzitems.html",
            "title" : "UKHD-Zusatzitems (sechs Bögen)",
            "generation" : "markdown"
          },
          {
            "extension" : [{
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "UKHD-EDP.html"
            }],
            "nameUrl" : "UKHD-EDP.html",
            "title" : "UKHD-EDP (Essstörungspathologie, metadata-only)",
            "generation" : "markdown"
          }]
        }]
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "Fragebogen-Bibliothek.html"
        }],
        "nameUrl" : "Fragebogen-Bibliothek.html",
        "title" : "Fragebogen-Bibliothek",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "Demographie.html"
        }],
        "nameUrl" : "Demographie.html",
        "title" : "Demographie",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "MHI.html"
        }],
        "nameUrl" : "MHI.html",
        "title" : "MHI",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "PROMIS.html"
        }],
        "nameUrl" : "PROMIS.html",
        "title" : "PROMIS",
        "generation" : "markdown",
        "page" : [{
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "PROMIS-33.html"
          }],
          "nameUrl" : "PROMIS-33.html",
          "title" : "PROMIS-33 Profile v2.1",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "PROMIS-29.html"
          }],
          "nameUrl" : "PROMIS-29.html",
          "title" : "PROMIS-29 Profile v2.1",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "PROMIS-Cognitive-Function.html"
          }],
          "nameUrl" : "PROMIS-Cognitive-Function.html",
          "title" : "PROMIS Cognitive Function SF 4a",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "PROMIS-16.html"
          }],
          "nameUrl" : "PROMIS-16.html",
          "title" : "PROMIS-16 Profile v2.1 (PROPr)",
          "generation" : "markdown"
        }]
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "PHQ.html"
        }],
        "nameUrl" : "PHQ.html",
        "title" : "PHQ (Patient Health Questionnaire)",
        "generation" : "markdown",
        "page" : [{
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "PHQ-9.html"
          }],
          "nameUrl" : "PHQ-9.html",
          "title" : "PHQ-9",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "PHQ-15.html"
          }],
          "nameUrl" : "PHQ-15.html",
          "title" : "PHQ-15",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "GAD-7.html"
          }],
          "nameUrl" : "GAD-7.html",
          "title" : "GAD-7",
          "generation" : "markdown"
        }]
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "WHODAS-12.html"
        }],
        "nameUrl" : "WHODAS-12.html",
        "title" : "WHODAS 2.0 (12-Item)",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "EURONET-SOMA.html"
        }],
        "nameUrl" : "EURONET-SOMA.html",
        "title" : "EURONET-SOMA (2 Einzelitems)",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "OPD-SFK.html"
        }],
        "nameUrl" : "OPD-SFK.html",
        "title" : "OPD-SFK (Strukturfragebogen, 12 Items)",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "WAI.html"
        }],
        "nameUrl" : "WAI.html",
        "title" : "WAI (Work Ability Score)",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "GSLTPAQ.html"
        }],
        "nameUrl" : "GSLTPAQ.html",
        "title" : "GSLTPAQ (Freizeitaktivität)",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "EXPECT.html"
        }],
        "nameUrl" : "EXPECT.html",
        "title" : "EXPECT (Verlaufserwartung)",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "IPQ-S.html"
        }],
        "nameUrl" : "IPQ-S.html",
        "title" : "IPQ-S (Ursachenzuschreibung)",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "Implementation.html"
        }],
        "nameUrl" : "Implementation.html",
        "title" : "Anwendung",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "Validierung.html"
        }],
        "nameUrl" : "Validierung.html",
        "title" : "Validierung",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "Bereitstellung.html"
        }],
        "nameUrl" : "Bereitstellung.html",
        "title" : "Bereitstellung",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "Designentscheidungen.html"
        }],
        "nameUrl" : "Designentscheidungen.html",
        "title" : "Designentscheidungen",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "Release-Notes.html"
        }],
        "nameUrl" : "Release-Notes.html",
        "title" : "Release Notes",
        "generation" : "markdown"
      }]
    },
    "parameter" : [{
      "code" : "path-resource",
      "value" : "input/capabilities"
    },
    {
      "code" : "path-resource",
      "value" : "input/examples"
    },
    {
      "code" : "path-resource",
      "value" : "input/extensions"
    },
    {
      "code" : "path-resource",
      "value" : "input/models"
    },
    {
      "code" : "path-resource",
      "value" : "input/operations"
    },
    {
      "code" : "path-resource",
      "value" : "input/profiles"
    },
    {
      "code" : "path-resource",
      "value" : "input/resources"
    },
    {
      "code" : "path-resource",
      "value" : "input/vocabulary"
    },
    {
      "code" : "path-resource",
      "value" : "input/maps"
    },
    {
      "code" : "path-resource",
      "value" : "input/testing"
    },
    {
      "code" : "path-resource",
      "value" : "input/history"
    },
    {
      "code" : "path-resource",
      "value" : "fsh-generated/resources"
    },
    {
      "code" : "path-pages",
      "value" : "template/config"
    },
    {
      "code" : "path-pages",
      "value" : "input/assets"
    },
    {
      "code" : "path-pages",
      "value" : "input/images"
    },
    {
      "code" : "path-tx-cache",
      "value" : "input-cache/txcache"
    }]
  }
}

```
