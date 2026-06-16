# DEM Erwerbsstatus (OECD) - PCOR-MII Implementation Guide v0.1.0

## CodeSystem: DEM Erwerbsstatus (OECD) (Experimental) 

 
Aktuelle Arbeitssituation nach OECD Measuring Financial Literacy (Q_OECDLIT5a). 

This Code system is referenced in the definition of the following value sets:

* [DemErwerbsstatusVS](ValueSet-dem-erwerbsstatus-vs.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "dem-erwerbsstatus",
  "url" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-erwerbsstatus",
  "version" : "0.1.0",
  "name" : "DemErwerbsstatusCS",
  "title" : "DEM Erwerbsstatus (OECD)",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-06-16T12:31:51+00:00",
  "publisher" : "BIH-CEI",
  "contact" : [{
    "name" : "BIH-CEI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.bihealth.org/"
    }]
  }],
  "description" : "Aktuelle Arbeitssituation nach OECD Measuring Financial Literacy (Q_OECDLIT5a).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 11,
  "concept" : [{
    "code" : "selbststaendig",
    "display" : "Selbstständigerwerbend"
  },
  {
    "code" : "angestellt",
    "display" : "Angestellt"
  },
  {
    "code" : "arbeitssuchend",
    "display" : "Arbeitssuchend"
  },
  {
    "code" : "haushalt",
    "display" : "Hausfrau/Hausmann"
  },
  {
    "code" : "arbeitsunfaehig",
    "display" : "Krankheitsbedingte Arbeitsunfähigkeit"
  },
  {
    "code" : "pensioniert",
    "display" : "Pensioniert"
  },
  {
    "code" : "student",
    "display" : "Student/in"
  },
  {
    "code" : "nicht-arbeitend",
    "display" : "Nicht arbeitend und nicht arbeitssuchend"
  },
  {
    "code" : "lernende",
    "display" : "Lernende/r"
  },
  {
    "code" : "anderes",
    "display" : "Anderes"
  },
  {
    "code" : "weiss-nicht",
    "display" : "Ich weiss es nicht"
  }]
}

```
