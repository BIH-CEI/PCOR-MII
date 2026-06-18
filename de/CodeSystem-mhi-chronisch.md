# MHI Chronische Erkrankungen (GIPS13) (Codes) - PCOR-MII Implementation Guide v0.1.0

## CodeSystem: MHI Chronische Erkrankungen (GIPS13) (Codes) (Experimentell) 

 
Liste chronischer Erkrankungen (GIPS13, Mehrfachauswahl). 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [MhiChronischVS](ValueSet-mhi-chronisch-vs.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mhi-chronisch",
  "url" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhi-chronisch",
  "version" : "0.1.0",
  "name" : "MhiChronischCS",
  "title" : "MHI Chronische Erkrankungen (GIPS13) (Codes)",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-06-18T09:13:00+00:00",
  "publisher" : "BIH-CEI",
  "contact" : [{
    "name" : "BIH-CEI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.bihealth.org/"
    }]
  }],
  "description" : "Liste chronischer Erkrankungen (GIPS13, Mehrfachauswahl).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 25,
  "concept" : [{
    "code" : "0",
    "display" : "keine chronische Erkrankung"
  },
  {
    "code" : "1",
    "display" : "Herzerkrankung (z.B. Herzinfarkt)"
  },
  {
    "code" : "2",
    "display" : "Bluthochdruck"
  },
  {
    "code" : "3",
    "display" : "Beinschmerz bei Laufen"
  },
  {
    "code" : "4",
    "display" : "Lungenerkrankung (z.B. Asthma)"
  },
  {
    "code" : "5",
    "display" : "Diabetes"
  },
  {
    "code" : "6",
    "display" : "Nierenerkrankung"
  },
  {
    "code" : "7",
    "display" : "Lebererkrankung"
  },
  {
    "code" : "8",
    "display" : "Bluterkrankungen (z.B. Anämie)"
  },
  {
    "code" : "9",
    "display" : "Schlaganfall"
  },
  {
    "code" : "10",
    "display" : "Nervenerkrankung (z.B. Parkinson)"
  },
  {
    "code" : "11",
    "display" : "Krebs (in den letzten 5 Jahren)"
  },
  {
    "code" : "12",
    "display" : "Arthritis (z.B. Rheuma)"
  },
  {
    "code" : "13",
    "display" : "Arthrose (z.B. Gelenkabnutzung)"
  },
  {
    "code" : "14",
    "display" : "Magen-Darm-Erkrankungen"
  },
  {
    "code" : "15",
    "display" : "Hauterkrankungen"
  },
  {
    "code" : "16",
    "display" : "Rückenschmerzen"
  },
  {
    "code" : "17",
    "display" : "Chronische Schmerzerkrankung"
  },
  {
    "code" : "18",
    "display" : "Depression"
  },
  {
    "code" : "19",
    "display" : "Angststörung"
  },
  {
    "code" : "20",
    "display" : "Suchterkrankung"
  },
  {
    "code" : "21",
    "display" : "Somatoforme Störung (unerklärte körperliche Beschwerden)"
  },
  {
    "code" : "22",
    "display" : "Persönlichkeitsstörung"
  },
  {
    "code" : "23",
    "display" : "Schizophrenie"
  },
  {
    "code" : "24",
    "display" : "sonstige"
  }]
}

```
