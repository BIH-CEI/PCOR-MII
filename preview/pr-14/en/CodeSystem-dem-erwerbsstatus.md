# DEM Erwerbsstatus (OECD) - PCOR-MII Implementation Guide v0.3.0

## CodeSystem: DEM Erwerbsstatus (OECD) (Experimental) 

 
Aktuelle Arbeitssituation nach OECD Measuring Financial Literacy (Q_OECDLIT5a). 

This Code system is referenced in the definition of the following value sets:

* [DEM Erwerbsstatus](ValueSet-dem-erwerbsstatus-vs.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "dem-erwerbsstatus",
  "url" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-erwerbsstatus",
  "version" : "0.3.0",
  "name" : "DemErwerbsstatusCS",
  "title" : "DEM Erwerbsstatus (OECD)",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-09-30T09:08:36+00:00",
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
    "display" : "Self-employed [work for yourself]",
    "designation" : [{
      "language" : "de-CH",
      "value" : "Selbstständigerwerbend"
    }]
  },
  {
    "code" : "angestellt",
    "display" : "In paid employment [work for someone else]",
    "designation" : [{
      "language" : "de-CH",
      "value" : "Angestellt"
    }]
  },
  {
    "code" : "arbeitssuchend",
    "display" : "Looking for work",
    "designation" : [{
      "language" : "de-CH",
      "value" : "Arbeitssuchend"
    }]
  },
  {
    "code" : "haushalt",
    "display" : "Looking after the home",
    "designation" : [{
      "language" : "de-CH",
      "value" : "Hausfrau/Hausmann"
    }]
  },
  {
    "code" : "arbeitsunfaehig",
    "display" : "Unable to work due to sickness or ill-health",
    "designation" : [{
      "language" : "de-CH",
      "value" : "Krankheitsbedingte Arbeitsunfähigkeit"
    }]
  },
  {
    "code" : "pensioniert",
    "display" : "Retired",
    "designation" : [{
      "language" : "de-CH",
      "value" : "Pensioniert"
    }]
  },
  {
    "code" : "student",
    "display" : "Student",
    "designation" : [{
      "language" : "de-CH",
      "value" : "Student/in"
    }]
  },
  {
    "code" : "nicht-arbeitend",
    "display" : "Not working and not looking for work",
    "designation" : [{
      "language" : "de-CH",
      "value" : "Nicht arbeitend und nicht arbeitssuchend"
    }]
  },
  {
    "code" : "lernende",
    "display" : "Apprentice",
    "designation" : [{
      "language" : "de-CH",
      "value" : "Lernende/r"
    }]
  },
  {
    "code" : "anderes",
    "display" : "Other",
    "designation" : [{
      "language" : "de-CH",
      "value" : "Anderes"
    }]
  },
  {
    "code" : "weiss-nicht",
    "display" : "Don't know",
    "designation" : [{
      "language" : "de-CH",
      "value" : "Ich weiss es nicht"
    }]
  }]
}

```
