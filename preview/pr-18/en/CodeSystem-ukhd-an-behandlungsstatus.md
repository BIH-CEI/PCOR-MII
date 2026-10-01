# UKHD-AN Aktueller Behandlungsstatus (Codes) - PCOR-MII Implementation Guide v0.3.0

## CodeSystem: UKHD-AN Aktueller Behandlungsstatus (Codes) (Experimental) 

 
Vier Stufen des aktuellen psychotherapeutischen Behandlungsstatus (`treatment_outpatient`). Bewusst ohne `ordinalValue`: Die Skala mischt Behandlungsstatus (Stufen 1/2) und Setting (Stufen 3/4). 

This Code system is referenced in the definition of the following value sets:

* [UKHD-AN Aktueller Behandlungsstatus](ValueSet-ukhd-an-behandlungsstatus-vs.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ukhd-an-behandlungsstatus",
  "url" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-an-behandlungsstatus",
  "version" : "0.3.0",
  "name" : "UkhdAnBehandlungsstatusCS",
  "title" : "UKHD-AN Aktueller Behandlungsstatus (Codes)",
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
  "description" : "Vier Stufen des aktuellen psychotherapeutischen Behandlungsstatus (`treatment_outpatient`). Bewusst ohne `ordinalValue`: Die Skala mischt Behandlungsstatus (Stufen 1/2) und Setting (Stufen 3/4).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [{
    "code" : "1",
    "display" : "nein"
  },
  {
    "code" : "2",
    "display" : "nein, aber es ist eine Behandlung geplant oder ich befinde mich noch auf der Suche"
  },
  {
    "code" : "3",
    "display" : "Ja, ich befinde mich zurzeit in ambulanter psychotherapeutischer Behandlung"
  },
  {
    "code" : "4",
    "display" : "ja, ich befinde mich aktuell in einer klinischen (stationären) oder tagesklinischen (teilstationären) Behandlung"
  }]
}

```
