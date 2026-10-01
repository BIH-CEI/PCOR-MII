# DEM Erwerbsstatus (OECD) - PCOR-MII Implementation Guide v0.3.0

## CodeSystem: DEM Erwerbsstatus (OECD) (Experimentell) 

 
Aktuelle Arbeitssituation nach OECD Measuring Financial Literacy (Q_OECDLIT5a). 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [DEM Erwerbsstatus](ValueSet-dem-erwerbsstatus-vs.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



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
  "date" : "2026-10-01T07:15:04+00:00",
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
      "language" : "de",
      "value" : "Selbstständigerwerbend"
    }]
  },
  {
    "code" : "angestellt",
    "display" : "In paid employment [work for someone else]",
    "designation" : [{
      "language" : "de",
      "value" : "Angestellt"
    }]
  },
  {
    "code" : "arbeitssuchend",
    "display" : "Looking for work",
    "designation" : [{
      "language" : "de",
      "value" : "Arbeitssuchend"
    }]
  },
  {
    "code" : "haushalt",
    "display" : "Looking after the home",
    "designation" : [{
      "language" : "de",
      "value" : "Hausfrau/Hausmann"
    }]
  },
  {
    "code" : "arbeitsunfaehig",
    "display" : "Unable to work due to sickness or ill-health",
    "designation" : [{
      "language" : "de",
      "value" : "Krankheitsbedingte Arbeitsunfähigkeit"
    }]
  },
  {
    "code" : "pensioniert",
    "display" : "Retired",
    "designation" : [{
      "language" : "de",
      "value" : "Pensioniert"
    }]
  },
  {
    "code" : "student",
    "display" : "Student",
    "designation" : [{
      "language" : "de",
      "value" : "Student/in"
    }]
  },
  {
    "code" : "nicht-arbeitend",
    "display" : "Not working and not looking for work",
    "designation" : [{
      "language" : "de",
      "value" : "Nicht arbeitend und nicht arbeitssuchend"
    }]
  },
  {
    "code" : "lernende",
    "display" : "Apprentice",
    "designation" : [{
      "language" : "de",
      "value" : "Lernende/r"
    }]
  },
  {
    "code" : "anderes",
    "display" : "Other",
    "designation" : [{
      "language" : "de",
      "value" : "Anderes"
    }]
  },
  {
    "code" : "weiss-nicht",
    "display" : "Don't know",
    "designation" : [{
      "language" : "de",
      "value" : "Ich weiss es nicht"
    }]
  }]
}

```
