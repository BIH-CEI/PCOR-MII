# DEM — Demographics & Medical History - PCOR-MII Implementation Guide v0.3.0

## Questionnaire: DEM — Demographics & Medical History (Experimental) 

 
Screening-Fragebogen zur Soziodemographie (Kategorie DEM). Folgt den Konventionen des MII-PRO-Moduls (SDC-Basis); ist selbst kein PRO-Instrument. 

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
  "id" : "DEM",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire"]
  },
  "language" : "en",
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
    "valueMarkdown" : "**Wortlaut wird unverändert übernommen.** Der deutsche Text der PaRIS-Blöcke stammt aus der **Schweizer** PaRIS-Fassung (Belege: „einschliesslich“ in `WHODIS1`, sechsmal „Ich weiss es nicht“, CHF-Einkommensbänder im Layoutblatt des Item Level Dictionary). Die Helvetismen werden **bewusst beibehalten** und nicht eingedeutscht. Drei Gründe: (1) **Validierung** — der Wortlaut ist im TRAPD-Verfahren sprachlich validiert; eine Änderung macht aus dem validierten Item ein anderes. (2) **Rechte** — eine unveränderte Übernahme bleibt Nachnutzung von OECD-Material; eine Bearbeitung würde PCOR-MII zum Urheber einer Adaption machen und den Adaptions-Disclaimer der OECD-Bedingungen auslösen. (3) **Vergleichbarkeit** — der Wortlaut entspricht dem, unter dem die Schweizer PaRIS-Daten erhoben wurden.\n\n**Mehrsprachigkeit — umgesetzt (2026-09-29):** `item.text` trägt den englischen Originalwortlaut aus dem publizierten PaRIS-PQ; die Schweizer Fassung hängt als `translation`-Extension mit `de-CH` daran (19 Items). Ebenso tragen die sechs DEM-eigenen Antwortskalen englische Displays mit `de-CH`-Designation (36 Konzepte). Muster und RuleSets stammen aus dem MII-PRO-Modul.\n\n**Bewusst deutsch-primär geblieben:** `AGE` (in PCOR-MII auf Geburtsdatum umgestellt, entspricht nicht mehr dem PaRIS-Altersband), `Q_GENDERID` (im PaRIS-PQ nur als länderspezifische Frage ohne Wortlaut geführt), `Zipcode` und `CPCOR_REQ` (nicht aus PaRIS), `GIPS04`/`GIPS10` samt ihrer Antwortskalen (GI-PS — dessen Lizenz untersagt eine Übersetzung ausdrücklich), `DemIscedCS` (Bildungsabschlüsse nach deutschem KMK-System, keine Übersetzung des PaRIS-Wortlauts, sondern eigenständige Anpassung) sowie `DemAntwortCS` (projektweit von MHI, ACE und EDE-Q6 mitgenutzt; dort nur englische Designations ergänzt, eine Umstellung wäre ein IG-weiter Schritt). Siehe <https://bih-cei.github.io/PCOR-MII/Designentscheidungen.html>."
  }],
  "url" : "https://bih-cei.github.io/PCOR-MII/Questionnaire/DEM",
  "version" : "0.3.0",
  "name" : "DEM",
  "title" : "DEM — Demographics & Medical History",
  "status" : "draft",
  "experimental" : true,
  "subjectType" : ["Patient"],
  "date" : "2026-06-09",
  "publisher" : "BIH-CEI",
  "contact" : [{
    "name" : "BIH-CEI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.bihealth.org/"
    }]
  }],
  "description" : "Screening-Fragebogen zur Soziodemographie (Kategorie DEM). Folgt den Konventionen des MII-PRO-Moduls (SDC-Basis); ist selbst kein PRO-Instrument.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "copyright" : "Der soziodemographische Block übernimmt Items und Variablennamen aus dem OECD Patient-Reported Indicator Surveys Patient Questionnaire (PaRIS-PQ), © OECD 2024 — Original: https://www.oecd.org/content/dam/oecd/en/about/programmes/patient-reported-indicator-surveys/PaRIS%20patient%20questionnaire.pdf, Nutzung nach den OECD Terms and Conditions (https://www.oecd.org/termsandconditions). Der PaRIS-PQ ist seinerseits eine Zusammenstellung und weist je Itemblock ein Quellinstrument aus; die Rechtelage ist daher je Block zu beurteilen:\n\n**OECD-eigenes Material** — `Q_OECDLIT5a`, `Q_OECDLIT7a`, `Q_OECDLITii`, `OECDLIT2a`, `OECDLIT2b` aus OECD INFE (2011), Measuring Financial Literacy: Core Questionnaire. Nutzung und Übersetzung zu nicht-kommerziellen Forschungszwecken sind nach den OECD Terms and Conditions ohne ausdrückliche Genehmigung zulässig. Die deutschen Fassungen sind Übersetzungen; dafür gilt der von der OECD vorgegebene Hinweis: „Diese Übersetzung wurde nicht von der OECD erstellt und ist nicht als offizielle OECD-Übersetzung anzusehen. Die Qualität der Übersetzung und ihre Übereinstimmung mit dem Originaltext des Werkes liegen allein in der Verantwortung der Verfasser der Übersetzung. Im Falle von Abweichungen zwischen dem Originalwerk und der Übersetzung ist allein der Text des Originalwerks maßgeblich.\" Eine Verbindung zur OECD oder deren Billigung wird nicht behauptet.\n\n**Drittinstrumente** — die OECD schließt fremde Inhalte von ihrer Nutzungserlaubnis aus; für die folgenden Blöcke gelten die Bedingungen der jeweiligen Rechteinhaber, deren Prüfung noch aussteht: `Q_MONMED` (National Health Interview Survey, NHIS); `Q_MON`, `MONMEAL`, `MONRENT`, `MONBILLS` (Commonwealth Fund International Health Policy Surveys 2016/2017); `MEDHIMS6`, `MEDHIMS7` (Mediterranean Household International Migration Survey, Europäische Union 2019); `WHODIS`, `WHODIS1`, `WHODIS2` (WHO/World Bank Model Disability Survey, WHO 2017).\n\n**GI-PS** — `GIPS04` und `GIPS10` stammen aus dem GI-PS (doi:10.13109/zptm.2023.69.1.56). Eigentums-, Urheber-, Weitergabe- und Veröffentlichungsrechte verbleiben bei den Testautor:innen; eine Weitergabe an Dritte bedarf deren Zustimmung, die noch nicht dokumentiert ist.\n\nEinzelheiten und Stand der offenen Prüfungen: https://bih-cei.github.io/PCOR-MII/Designentscheidungen.html. Der PCOR-MII-eigene FHIR-Inhalt (Struktur, Codes, Kodierung) unterliegt der Repository-Lizenz (CC-BY-4.0).",
  "code" : [{
    "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-questionnaire-catalogue",
    "code" : "dem",
    "display" : "PCOR-MII Demographie (DEM)"
  }],
  "item" : [{
    "linkId" : "soziodemographie",
    "text" : "Soziodemographische Angaben",
    "type" : "group",
    "item" : [{
      "linkId" : "AGE",
      "code" : [{
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
        "code" : "AGE"
      },
      {
        "system" : "http://loinc.org",
        "code" : "21112-8",
        "display" : "Geburtsdatum"
      }],
      "text" : "Bitte geben Sie Ihr Geburtsdatum an",
      "type" : "date"
    },
    {
      "linkId" : "Q_ISCED",
      "code" : [{
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
        "code" : "Q_ISCED"
      },
      {
        "system" : "http://loinc.org",
        "code" : "82589-3",
        "display" : "Highest level of education"
      }],
      "text" : "What is the highest educational level that you have attained?",
      "_text" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-CH"
          },
          {
            "url" : "content",
            "valueString" : "Was ist der höchste Bildungsabschluss, den Sie erreicht haben?"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "type" : "choice",
      "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/dem-isced-vs"
    },
    {
      "linkId" : "Q_SEX",
      "code" : [{
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
        "code" : "Q_SEX"
      },
      {
        "system" : "http://loinc.org",
        "code" : "76691-5",
        "display" : "Gender identity"
      }],
      "text" : "Which of the following best describes you?",
      "_text" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-CH"
          },
          {
            "url" : "content",
            "valueString" : "Welcher der folgenden Begriffe trifft am besten auf Sie zu?"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "type" : "choice",
      "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/dem-geschlecht-vs"
    },
    {
      "linkId" : "Q_GENDERID",
      "code" : [{
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
        "code" : "Q_GENDERID"
      }],
      "text" : "Entspricht Ihre Geschlechtsidentität dem Geschlecht, das Ihnen bei Geburt zugewiesen wurde?",
      "type" : "choice",
      "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/dem-ja-nein-ka-vs"
    },
    {
      "linkId" : "Q_OECDLIT5a",
      "code" : [{
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
        "code" : "Q_OECDLIT5a"
      },
      {
        "system" : "http://loinc.org",
        "code" : "67875-5",
        "display" : "Employment status - current"
      }],
      "text" : "Which of these terms best describes your current work situation?",
      "_text" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-CH"
          },
          {
            "url" : "content",
            "valueString" : "Welcher der folgenden Begriffe beschreibt am besten Ihre derzeitige Arbeitssituation?"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "type" : "choice",
      "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/dem-erwerbsstatus-vs"
    },
    {
      "linkId" : "Q_OECDLIT7a",
      "code" : [{
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
        "code" : "Q_OECDLIT7a"
      },
      {
        "system" : "http://loinc.org",
        "code" : "108248-6",
        "display" : "Household income"
      }],
      "text" : "Which of these categories does your household net income usually fall into?",
      "_text" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-CH"
          },
          {
            "url" : "content",
            "valueString" : "In welche dieser Kategorien fällt Ihr Netto-Haushaltseinkommen normalerweise?"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "type" : "choice",
      "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/dem-einkommen-vs"
    },
    {
      "linkId" : "Q_MONMED",
      "code" : [{
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
        "code" : "Q_MONMED"
      }],
      "text" : "In the past 12 months, did you have problems paying or were unable to pay any medical bills?",
      "_text" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-CH"
          },
          {
            "url" : "content",
            "valueString" : "Hatten Sie in den vergangenen 12 Monaten Schwierigkeiten, Rechnungen für medizinische Leistungen zu bezahlen bzw. konnten diese nicht bezahlen?"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "type" : "choice",
      "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/dem-ja-nein-nz-vs"
    },
    {
      "linkId" : "Q_MON",
      "text" : "How often in the past 12 months would you say you were worried or stressed about the following things?",
      "_text" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-CH"
          },
          {
            "url" : "content",
            "valueString" : "Wie oft haben Sie sich in den letzten 12 Monaten über folgende Dinge Sorgen gemacht oder waren deswegen gestresst?"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "type" : "group",
      "item" : [{
        "linkId" : "MONMEAL",
        "code" : [{
          "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
          "code" : "MONMEAL"
        },
        {
          "system" : "http://loinc.org",
          "code" : "88122-7",
          "display" : "Within the past 12 months we worried whether our food would run out before we got money to buy more"
        }],
        "text" : "Having enough money to buy healthy meals?",
        "_text" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de-CH"
            },
            {
              "url" : "content",
              "valueString" : "Genug Geld zu haben, um gesunde Mahlzeiten bezahlen zu können"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "type" : "choice",
        "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/dem-haeufigkeit-5-vs"
      },
      {
        "linkId" : "MONRENT",
        "code" : [{
          "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
          "code" : "MONRENT"
        }],
        "text" : "Having enough money to pay your rent or mortgage?",
        "_text" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de-CH"
            },
            {
              "url" : "content",
              "valueString" : "Genug Geld zu haben, um die Miete oder einen Kredit bezahlen zu können"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "type" : "choice",
        "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/dem-haeufigkeit-5-vs"
      },
      {
        "linkId" : "MONBILLS",
        "code" : [{
          "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
          "code" : "MONBILLS"
        }],
        "text" : "Having enough money to pay for other monthly bills, like electricity, heat, and your telephone?",
        "_text" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de-CH"
            },
            {
              "url" : "content",
              "valueString" : "Genug Geld zu haben, um monatliche Rechnungen bezahlen zu können, z. B. für Strom, Heizung und Telefon"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "type" : "choice",
        "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/dem-haeufigkeit-5-vs"
      }]
    },
    {
      "linkId" : "MEDHIMS6",
      "code" : [{
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
        "code" : "MEDHIMS6"
      },
      {
        "system" : "http://loinc.org",
        "code" : "78746-5",
        "display" : "Country of birth [Location]"
      }],
      "text" : "Were you born in Germany?",
      "_text" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-CH"
          },
          {
            "url" : "content",
            "valueString" : "Sind Sie in Deutschland geboren?"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "type" : "choice",
      "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/dem-ja-nein"
    },
    {
      "linkId" : "MEDHIMS6_country",
      "code" : [{
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
        "code" : "MEDHIMS6_country"
      }],
      "text" : "Please state the country you were born in",
      "_text" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-CH"
          },
          {
            "url" : "content",
            "valueString" : "Bitte geben Sie an, in welchem Land Sie geboren sind"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "type" : "string",
      "enableWhen" : [{
        "question" : "MEDHIMS6",
        "operator" : "=",
        "answerCoding" : {
          "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-antwort",
          "code" : "nein",
          "display" : "Nein"
        }
      }]
    },
    {
      "linkId" : "MEDHIMS7",
      "code" : [{
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
        "code" : "MEDHIMS7"
      },
      {
        "system" : "http://loinc.org",
        "code" : "66476-3",
        "display" : "Country of citizenship"
      }],
      "text" : "Are you a citizen of Germany?",
      "_text" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-CH"
          },
          {
            "url" : "content",
            "valueString" : "Sind Sie Deutsche/r Staatsbürger/in?"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "type" : "choice",
      "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/dem-ja-nein"
    },
    {
      "linkId" : "MEDHIMS7_nationality",
      "code" : [{
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
        "code" : "MEDHIMS7_nationality"
      }],
      "text" : "Please state what country you are a citizen of",
      "_text" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-CH"
          },
          {
            "url" : "content",
            "valueString" : "Bitte geben Sie an, welche Staatsbürgerschaft Sie besitzen"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "type" : "string",
      "enableWhen" : [{
        "question" : "MEDHIMS7",
        "operator" : "=",
        "answerCoding" : {
          "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-antwort",
          "code" : "nein",
          "display" : "Nein"
        }
      }]
    },
    {
      "linkId" : "Q_OECDLITii",
      "code" : [{
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
        "code" : "Q_OECDLITii"
      }],
      "text" : "Which of these best describes the type of area in which you live?",
      "_text" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-CH"
          },
          {
            "url" : "content",
            "valueString" : "Welche Bezeichnung beschreibt den Ort, an dem Sie leben, am besten?"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "type" : "choice",
      "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/dem-urbanizitaet-vs"
    },
    {
      "linkId" : "Zipcode",
      "text" : "Postleitzahl",
      "type" : "string"
    },
    {
      "linkId" : "OECDLIT2a",
      "code" : [{
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
        "code" : "OECDLIT2a"
      },
      {
        "system" : "http://loinc.org",
        "code" : "104078-1",
        "display" : "Number of underage persons in household"
      }],
      "text" : "How many children under the age of 18 live with you, in your household?",
      "_text" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-CH"
          },
          {
            "url" : "content",
            "valueString" : "Wie viele Kinder unter 18 Jahren leben mit Ihnen in Ihrem Haushalt?"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "type" : "integer"
    },
    {
      "linkId" : "OECDLIT2b",
      "code" : [{
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
        "code" : "OECDLIT2b"
      }],
      "text" : "How many people aged 18 and over live with you, in your household? Please do not count yourself",
      "_text" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-CH"
          },
          {
            "url" : "content",
            "valueString" : "Wie viele Personen im Alter von 18 Jahren oder älter leben mit Ihnen in Ihrem Haushalt? (ohne Sie selbst)"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "type" : "integer"
    },
    {
      "linkId" : "WHODIS",
      "text" : "Should you need help, how easy is it for you to get help from the following people?",
      "_text" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-CH"
          },
          {
            "url" : "content",
            "valueString" : "Wenn Sie Hilfe benötigen, wie einfach ist es für Sie, Hilfe von den folgenden Personen zu erhalten?"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "type" : "group",
      "item" : [{
        "linkId" : "WHODIS1",
        "code" : [{
          "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
          "code" : "WHODIS1"
        }],
        "text" : "A close family member (including your partner)?",
        "_text" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de-CH"
            },
            {
              "url" : "content",
              "valueString" : "Ein enges Familienmitglied (einschliesslich Ihrer Partnerin/Ihres Partners)"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "type" : "choice",
        "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/dem-leichtigkeit-6-vs"
      },
      {
        "linkId" : "WHODIS2",
        "code" : [{
          "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
          "code" : "WHODIS2"
        }],
        "text" : "Friends, neighbours and co-workers?",
        "_text" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de-CH"
            },
            {
              "url" : "content",
              "valueString" : "Freundinnen/Freunde, Nachbarinnen/Nachbarn und Arbeitskolleginnen/Arbeitskollegen?"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "type" : "choice",
        "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/dem-leichtigkeit-6-vs"
      }]
    }]
  },
  {
    "linkId" : "weitere",
    "text" : "Weitere Angaben",
    "type" : "group",
    "item" : [{
      "linkId" : "GIPS04",
      "code" : [{
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
        "code" : "GIPS04"
      },
      {
        "system" : "http://loinc.org",
        "code" : "45404-1",
        "display" : "Marital status"
      }],
      "text" : "Partnerschaft",
      "type" : "choice",
      "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/dem-beziehungsstatus-vs"
    },
    {
      "linkId" : "GIPS10",
      "code" : [{
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
        "code" : "GIPS10"
      }],
      "text" : "Rente",
      "type" : "choice",
      "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/dem-rentenstatus-vs"
    },
    {
      "linkId" : "CPCOR_REQ",
      "code" : [{
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
        "code" : "CPCOR_REQ"
      }],
      "text" : "Möchten Sie kontaktiert werden, um den aktuellen Gesundheitsstatus zu besprechen?",
      "type" : "choice",
      "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/dem-ja-nein"
    }]
  }]
}

```
