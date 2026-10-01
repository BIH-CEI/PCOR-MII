# UKHD-AN Psychotherapeutische Behandlung, frueher/aktuell (Codes) - PCOR-MII Implementation Guide v0.3.0

## CodeSystem: UKHD-AN Psychotherapeutische Behandlung, frueher/aktuell (Codes) (Experimental) 

 
Drei Zeitbezüge der psychotherapeutischen Behandlung (`bdkm15`): noch nie, früher, zurzeit. Nominale Skala — bewusst ohne `ordinalValue`. 

This Code system is referenced in the definition of the following value sets:

* [UKHD-AN Psychotherapeutische Behandlung, frueher/aktuell](ValueSet-ukhd-an-psychotherapie-vs.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ukhd-an-psychotherapie",
  "url" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-an-psychotherapie",
  "version" : "0.3.0",
  "name" : "UkhdAnPsychotherapieCS",
  "title" : "UKHD-AN Psychotherapeutische Behandlung, frueher/aktuell (Codes)",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-10-01T11:25:34+00:00",
  "publisher" : "BIH-CEI",
  "contact" : [{
    "name" : "BIH-CEI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.bihealth.org/"
    }]
  }],
  "description" : "Drei Zeitbezüge der psychotherapeutischen Behandlung (`bdkm15`): noch nie, früher, zurzeit. Nominale Skala — bewusst ohne `ordinalValue`.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "0",
    "display" : "noch nie"
  },
  {
    "code" : "1",
    "display" : "früher"
  },
  {
    "code" : "2",
    "display" : "zurzeit in Behandlung"
  }]
}

```
