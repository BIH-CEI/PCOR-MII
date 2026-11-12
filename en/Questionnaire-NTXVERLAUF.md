# NTx-Verlaufsbefragung — Verlaufsanamnese nach Nierentransplantation (MHH) - PCOR-MII Implementation Guide v0.9.0

## Questionnaire: NTx-Verlaufsbefragung — Verlaufsanamnese nach Nierentransplantation (MHH) (Experimental) 

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
  "id" : "NTXVERLAUF",
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
    "url" : "http://hl7.org/fhir/StructureDefinition/designNote",
    "valueMarkdown" : "**Designentscheidungen:** (1) **Ein Verlaufsbogen statt acht Gruppen-Questionnaires** (Maintainer, 2026-11-05): Die Standortgruppen-Regel aus [ADR-011](Designentscheidungen.html) gilt für Zuschnitte mit je eigener Herkunft; die MHH-Items sind dagegen eine zusammenhängende Verlaufsbefragung eines Standorts mit einheitlicher Rechtelage, wie der [MHI](MHI.html). Die Dictionary-Gruppen bleiben als Gruppen-Items erhalten, `item.code` trägt die Dictionary-Variable. (2) **Kein PRO-Instrument**, daher ISiKFormularDefinition wie beim MHI. (3) **Nur Monitoring:** alle Gruppen sind laut Erhebungsplan quartalsweise; die drei Screening-Items der MHH (Spendeart, Transplantationsdatum, Anzahl Spendernieren) liegen im Ergänzungsbogen [MHI-NTx](Questionnaire-MHINTX.html), weil Screening und Monitoring verschiedene Erhebungseinheiten sind. (4) **Ja/Nein** nach der Best-Practice-Empfehlung des TC Terminologien als SNOMED CT `373066001`/`373067005` inline ([ADR-013](Designentscheidungen.html)), wie im MII-PRO-Modul; das Dictionary kodiert „Nein“ uneinheitlich (0 bzw. 2), die SNOMED-Codes sind davon unabhängig. (5) **Blutdruck** als Gruppe mit zwei PCOR-MII-eigenen Integer-Items (systolisch, diastolisch, mmHg, LOINC), weil das Dictionary eine Variable mit zwei Werten führt. (6) **Wortlaut** unverändert bis auf zwei Tippfehler in Antwortoptionen und eine fehlende Klammer. (7) **Offen für MHH:** Gruppenlabel für `MHH_PTH1`/`MHH_PTH2`, Freigabe des Wortlauts, Erhebungseinheit der Monitoring-Gruppen. Details: <https://bih-cei.github.io/PCOR-MII/Designentscheidungen.html>"
  }],
  "url" : "https://bih-cei.github.io/PCOR-MII/Questionnaire/NTXVERLAUF",
  "version" : "0.9.0",
  "name" : "NTXVERLAUF",
  "title" : "NTx-Verlaufsbefragung — Verlaufsanamnese nach Nierentransplantation (MHH)",
  "status" : "draft",
  "experimental" : true,
  "subjectType" : ["Patient"],
  "date" : "2026-11-05",
  "publisher" : "BIH-CEI",
  "contact" : [{
    "name" : "BIH-CEI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.bihealth.org/"
    }]
  }],
  "description" : "Quartalsweise Verlaufsbefragung des Standorts Hannover (MHH) für den Use Case Nierentransplantation, 18 patient-reported Variablen aus dem NTx-Dictionary (Kategorie DCH): Dialyse, Post-Tx-Diabetes, Tumoren, Harnwegsinfekte, Infektionen, Blutdruck, ASS-Einnahme und Hyperparathyreoidismus. Ein Sammelbogen nach dem Muster des MHI; die drei Screening-Items der MHH (Spendeart, Transplantationsdatum, Anzahl Spendernieren) liegen im Ergänzungsbogen MHI-NTx. Kein PRO-Instrument, kein Score.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "copyright" : "Die Items dieses Bogens sind **vom Standort Hannover (MHH) für die PCOR-MII-Erhebung zusammengestellt** und stammen aus dem PCOR-MII Item Level Dictionary (Entität NTx, Gruppen `MHH-*`). Das `MHH`-Präfix ist ein Zusammenstellungs-Etikett des Dictionary, keine Autorenschaftsangabe: Woher der Wortlaut stammt, ist nicht belegt, und eine Freigabe zur Veröffentlichung ist nicht dokumentiert — die Gruppen kommen in der DIZ-Implementierungsliste nicht vor. Bis zur Klärung gilt derselbe Vorbehalt wie bei den UKHD-Zusatzitems; bei einer Einschränkung würde der Bogen auf metadata-only umgestellt. Der PCOR-MII-eigene FHIR-Inhalt (Struktur, Codes, Kodierung) unterliegt der Repository-Lizenz (CC-BY-4.0).",
  "code" : [{
    "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-questionnaire-catalogue",
    "code" : "ntx-verlauf",
    "display" : "NTx-Verlaufsbefragung (MHH)"
  }],
  "item" : [{
    "linkId" : "dialyse",
    "text" : "Dialyse",
    "type" : "group",
    "item" : [{
      "linkId" : "MHH_DIAL1",
      "code" : [{
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
        "code" : "MHH_DIAL1"
      }],
      "text" : "Befinden Sie sich wieder an der Dialyse (seit mindestens 4 Wochen)?",
      "type" : "choice",
      "answerOption" : [{
        "valueCoding" : {
          "system" : "http://snomed.info/sct",
          "code" : "373066001",
          "display" : "Yes"
        }
      },
      {
        "valueCoding" : {
          "system" : "http://snomed.info/sct",
          "code" : "373067005",
          "display" : "No"
        }
      }]
    },
    {
      "linkId" : "MHH_DIAL2",
      "code" : [{
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
        "code" : "MHH_DIAL2"
      }],
      "text" : "Welche Form der Nierenersatztherapie haben Sie zuletzt vor der Transplantation gemacht?",
      "type" : "choice",
      "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mhh-nierenersatz-vs"
    }]
  },
  {
    "linkId" : "diabetes",
    "text" : "Diabetes nach Transplantation",
    "type" : "group",
    "item" : [{
      "linkId" : "MHH_PTX_DIAB",
      "code" : [{
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
        "code" : "MHH_PTX_DIAB"
      }],
      "text" : "Wurde bei Ihnen nach der Transplantation ein Diabetes Mellitus festgestellt?",
      "type" : "choice",
      "answerOption" : [{
        "valueCoding" : {
          "system" : "http://snomed.info/sct",
          "code" : "373066001",
          "display" : "Yes"
        }
      },
      {
        "valueCoding" : {
          "system" : "http://snomed.info/sct",
          "code" : "373067005",
          "display" : "No"
        }
      }]
    }]
  },
  {
    "linkId" : "tumoren",
    "text" : "Tumoren",
    "type" : "group",
    "item" : [{
      "linkId" : "MHH_T01",
      "code" : [{
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
        "code" : "MHH_T01"
      }],
      "text" : "Wurde bei Ihnen nach der Transplantation ein Hauttumor festgestellt?",
      "type" : "choice",
      "answerOption" : [{
        "valueCoding" : {
          "system" : "http://snomed.info/sct",
          "code" : "373066001",
          "display" : "Yes"
        }
      },
      {
        "valueCoding" : {
          "system" : "http://snomed.info/sct",
          "code" : "373067005",
          "display" : "No"
        }
      }]
    },
    {
      "linkId" : "MHH_T02",
      "code" : [{
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
        "code" : "MHH_T02"
      }],
      "text" : "Wurde bei Ihnen seit der letzten Vorstellung in der Transplantationsambulanz ein Hauttumor festgestellt?",
      "type" : "choice",
      "answerOption" : [{
        "valueCoding" : {
          "system" : "http://snomed.info/sct",
          "code" : "373066001",
          "display" : "Yes"
        }
      },
      {
        "valueCoding" : {
          "system" : "http://snomed.info/sct",
          "code" : "373067005",
          "display" : "No"
        }
      }]
    },
    {
      "linkId" : "MHH_T03",
      "code" : [{
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
        "code" : "MHH_T03"
      }],
      "text" : "Wurden bei Ihnen nach der Transplantation andere Tumore festgestellt?",
      "type" : "choice",
      "answerOption" : [{
        "valueCoding" : {
          "system" : "http://snomed.info/sct",
          "code" : "373066001",
          "display" : "Yes"
        }
      },
      {
        "valueCoding" : {
          "system" : "http://snomed.info/sct",
          "code" : "373067005",
          "display" : "No"
        }
      }]
    }]
  },
  {
    "linkId" : "harnwegsinfekte",
    "text" : "Harnwegsinfekte",
    "type" : "group",
    "item" : [{
      "linkId" : "MHH_UTI01",
      "code" : [{
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
        "code" : "MHH_UTI01"
      }],
      "text" : "Bestand seit dem letzten Kontakt in der Transplantationsambulanz eine Infektion der Harnwege?",
      "type" : "choice",
      "answerOption" : [{
        "valueCoding" : {
          "system" : "http://snomed.info/sct",
          "code" : "373066001",
          "display" : "Yes"
        }
      },
      {
        "valueCoding" : {
          "system" : "http://snomed.info/sct",
          "code" : "373067005",
          "display" : "No"
        }
      }]
    },
    {
      "linkId" : "MHH_UTI02",
      "code" : [{
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
        "code" : "MHH_UTI02"
      }],
      "text" : "Bestand in den letzten 6 Monaten mindestens zwei Infektion der Harnwege mit typischen Beschwerden (z.B.  Fieber, Brennen beim Wasserlassen, Unterleibsschmerzen, häufiges Wasserlassen? usw.)",
      "type" : "choice",
      "answerOption" : [{
        "valueCoding" : {
          "system" : "http://snomed.info/sct",
          "code" : "373066001",
          "display" : "Yes"
        }
      },
      {
        "valueCoding" : {
          "system" : "http://snomed.info/sct",
          "code" : "373067005",
          "display" : "No"
        }
      }]
    },
    {
      "linkId" : "MHH_UTI03",
      "code" : [{
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
        "code" : "MHH_UTI03"
      }],
      "text" : "Erhalten Sie eine Antibiotika-Prophylaxe gegen chronische Harnwegsinfekte (z.B.: mehrmals wöchentlich Nitrofurantoin, Fosfomycin, Nitroxilin)?",
      "type" : "choice",
      "answerOption" : [{
        "valueCoding" : {
          "system" : "http://snomed.info/sct",
          "code" : "373066001",
          "display" : "Yes"
        }
      },
      {
        "valueCoding" : {
          "system" : "http://snomed.info/sct",
          "code" : "373067005",
          "display" : "No"
        }
      }]
    },
    {
      "linkId" : "MHH_UTI04",
      "code" : [{
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
        "code" : "MHH_UTI04"
      }],
      "text" : "Erfolgte seit Transplantation eine Impfung gegen Harnwegsinfekte (mit z.B: Strovac oder Urovaxom)?",
      "type" : "choice",
      "answerOption" : [{
        "valueCoding" : {
          "system" : "http://snomed.info/sct",
          "code" : "373066001",
          "display" : "Yes"
        }
      },
      {
        "valueCoding" : {
          "system" : "http://snomed.info/sct",
          "code" : "373067005",
          "display" : "No"
        }
      }]
    }]
  },
  {
    "linkId" : "infektionen",
    "text" : "Infektionen",
    "type" : "group",
    "item" : [{
      "linkId" : "MHH_Infekt1",
      "code" : [{
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
        "code" : "MHH_Infekt1"
      }],
      "text" : "Bestand in den letzten 3 Monaten eine Infektion mit Antibiotika Gabe?",
      "type" : "choice",
      "answerOption" : [{
        "valueCoding" : {
          "system" : "http://snomed.info/sct",
          "code" : "373066001",
          "display" : "Yes"
        }
      },
      {
        "valueCoding" : {
          "system" : "http://snomed.info/sct",
          "code" : "373067005",
          "display" : "No"
        }
      }]
    },
    {
      "linkId" : "MHH_Infekt2",
      "code" : [{
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
        "code" : "MHH_Infekt2"
      }],
      "text" : "Müssen Sie pro Jahre mehr als 3-mal Antibiotika, aufgrund eines Infekts, einnehmen?",
      "type" : "choice",
      "answerOption" : [{
        "valueCoding" : {
          "system" : "http://snomed.info/sct",
          "code" : "373066001",
          "display" : "Yes"
        }
      },
      {
        "valueCoding" : {
          "system" : "http://snomed.info/sct",
          "code" : "373067005",
          "display" : "No"
        }
      }]
    },
    {
      "linkId" : "MHH_Infekt3",
      "code" : [{
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
        "code" : "MHH_Infekt3"
      }],
      "text" : "Wurden Sie, seit Transplantation, aufgrund einer Infektions-Komplikation (z.B. Blutvergiftung/Sepsis) auf einer Intensivstation in Behandlung?",
      "type" : "choice",
      "answerOption" : [{
        "valueCoding" : {
          "system" : "http://snomed.info/sct",
          "code" : "373066001",
          "display" : "Yes"
        }
      },
      {
        "valueCoding" : {
          "system" : "http://snomed.info/sct",
          "code" : "373067005",
          "display" : "No"
        }
      }]
    }]
  },
  {
    "linkId" : "MHH_BP",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MHH_BP"
    }],
    "text" : "Was war ihr letzter Blutdruck?",
    "type" : "group",
    "item" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-unit",
        "valueCoding" : {
          "system" : "http://unitsofmeasure.org",
          "code" : "mm[Hg]"
        }
      }],
      "linkId" : "MHH_BP-systolisch",
      "code" : [{
        "system" : "http://loinc.org",
        "code" : "8480-6",
        "display" : "Systolischer Blutdruck"
      }],
      "text" : "Systolisch (mmHg)",
      "type" : "integer"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-unit",
        "valueCoding" : {
          "system" : "http://unitsofmeasure.org",
          "code" : "mm[Hg]"
        }
      }],
      "linkId" : "MHH_BP-diastolisch",
      "code" : [{
        "system" : "http://loinc.org",
        "code" : "8462-4",
        "display" : "Diastolischer Blutdruck"
      }],
      "text" : "Diastolisch (mmHg)",
      "type" : "integer"
    }]
  },
  {
    "linkId" : "medikation",
    "text" : "Medikation",
    "type" : "group",
    "item" : [{
      "linkId" : "MHH_Medi",
      "code" : [{
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
        "code" : "MHH_Medi"
      }],
      "text" : "Nehmen Sie aktuell Aspirin (ASS) ein?",
      "type" : "choice",
      "answerOption" : [{
        "valueCoding" : {
          "system" : "http://snomed.info/sct",
          "code" : "373066001",
          "display" : "Yes"
        }
      },
      {
        "valueCoding" : {
          "system" : "http://snomed.info/sct",
          "code" : "373067005",
          "display" : "No"
        }
      }]
    }]
  },
  {
    "linkId" : "nebenschilddruese",
    "text" : "Nebenschilddrüse",
    "type" : "group",
    "item" : [{
      "linkId" : "MHH_PTH1",
      "code" : [{
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
        "code" : "MHH_PTH1"
      }],
      "text" : "Erfolgte bei Ihnen eine Operation an ihrer Nebenschilddrüse?",
      "type" : "choice",
      "answerOption" : [{
        "valueCoding" : {
          "system" : "http://snomed.info/sct",
          "code" : "373066001",
          "display" : "Yes"
        }
      },
      {
        "valueCoding" : {
          "system" : "http://snomed.info/sct",
          "code" : "373067005",
          "display" : "No"
        }
      }]
    },
    {
      "linkId" : "MHH_PTH2",
      "code" : [{
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
        "code" : "MHH_PTH2"
      }],
      "text" : "Nehmen Sie Cinacalcet (z.B.Mimpara ®) ein?",
      "type" : "choice",
      "answerOption" : [{
        "valueCoding" : {
          "system" : "http://snomed.info/sct",
          "code" : "373066001",
          "display" : "Yes"
        }
      },
      {
        "valueCoding" : {
          "system" : "http://snomed.info/sct",
          "code" : "373067005",
          "display" : "No"
        }
      }]
    }]
  }]
}

```
