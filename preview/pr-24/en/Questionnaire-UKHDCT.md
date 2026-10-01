# UKHD-CT — Aktuelle Behandlung (UKHD-Zusatzitems AN) - PCOR-MII Implementation Guide v0.3.0

## Questionnaire: UKHD-CT — Aktuelle Behandlung (UKHD-Zusatzitems AN) (Experimental) 

 
Ein Item zum aktuellen Behandlungsstatus aus der Dictionary-Gruppe `UKHD-CT` (`treatment_outpatient`). Eigenes Questionnaire je Dictionary-Gruppe; Übersicht auf der Seite [UKHD-Zusatzitems](UKHD-Zusatzitems.md). Kein Score. **Für den Wortlaut liegt keine dokumentierte Freigabe vor, seine Herkunft ist ungeklärt.** 

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
  "id" : "UKHDCT",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire"]
  },
  "language" : "de",
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
    "valueMarkdown" : "Dictionary-Gruppe `UKHD-CT`, DOMAIN *Current Treatment*, Kategorie TCH — ein Item. **Rechtelage und Herkunft:** siehe `copyright` — das `UKHD`-Präfix ist ein Zusammenstellungs-Etikett, keine Autorenschaftsangabe; die Frage an den Standort ist eine Herkunftsfrage. Gemeinsame Entscheidungen aller sechs UKHD-Zusatzbögen (Sprache `de` ohne Übersetzungsebene, `TIMING` nicht als FHIR-Struktur, Wortlauttreue nach ADR-010, `linkId` = Dictionary-Variablen-ID nach ADR-008, kein Score, Ja/Nein über `DemJaNeinVS`) stehen auf der Seite [UKHD-Zusatzitems](UKHD-Zusatzitems.html)."
  }],
  "url" : "https://bih-cei.github.io/PCOR-MII/Questionnaire/UKHDCT",
  "version" : "0.3.0",
  "name" : "UKHDCT",
  "title" : "UKHD-CT — Aktuelle Behandlung (UKHD-Zusatzitems AN)",
  "status" : "draft",
  "experimental" : true,
  "subjectType" : ["Patient"],
  "date" : "2026-10-01",
  "publisher" : "BIH-CEI",
  "contact" : [{
    "name" : "BIH-CEI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.bihealth.org/"
    }]
  }],
  "description" : "Ein Item zum aktuellen Behandlungsstatus aus der Dictionary-Gruppe `UKHD-CT` (`treatment_outpatient`). Eigenes Questionnaire je Dictionary-Gruppe; Übersicht auf der Seite [UKHD-Zusatzitems](UKHD-Zusatzitems.html). Kein Score. **Für den Wortlaut liegt keine dokumentierte Freigabe vor, seine Herkunft ist ungeklärt.**",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "copyright" : "Die Items dieses Bogens sind **vom Standort Heidelberg für die PCOR-MII-Erhebung zusammengestellt** und stammen aus dem PCOR-MII Item Level Dictionary (Entität AN). **Das `UKHD`-Präfix der Dictionary-Gruppe ist ein Zusammenstellungs-Etikett, keine Autorenschaftsangabe: Woher der Wortlaut stammt — eigene Formulierung des Standorts, klinikinterne Dokumentationsbögen oder ein publiziertes Instrument —, ist nicht dokumentiert. Eine Freigabe für die Veröffentlichung liegt ebenfalls nicht dokumentiert vor; beides ist mit dem Standort zu klären.** Die DIZ-Implementierungsliste PCOR-MII führt ausschließlich publizierte Instrumente; die standortspezifischen Itemgruppen von UKHD, UKE und MHH kommen dort nicht vor — es gibt für sie damit weder eine dokumentierte Erlaubnis noch eine dokumentierte Einschränkung. Dass der Wortlaut hier aufgenommen ist, ist eine bewusste Projektentscheidung zur Erprobung und keine geklärte Rechtslage; die Ressource trägt deshalb `status = draft` und `experimental = true`. Ergibt die Rückmeldung des Standorts eine Einschränkung, ist eine Umstellung auf metadata-only vorgesehen (Muster WAI). Nachnutzende müssen die Nutzungsbedingungen für den eigenen Anwendungsfall eigenständig prüfen. Nur der PCOR-MII-eigene FHIR-Inhalt (Struktur, Codes, Kodierung) unterliegt der Repository-Lizenz (CC-BY-4.0).",
  "code" : [{
    "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-questionnaire-catalogue",
    "code" : "ukhd-ct",
    "display" : "UKHD-CT"
  }],
  "item" : [{
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/designNote",
      "valueMarkdown" : "**Der Variablenname ist irreführend:** `treatment_outpatient` legt eine Frage nach ambulanter Behandlung nahe, aber Stufe 4 der Antwortskala erfasst ausdrücklich **klinische (stationäre) oder tagesklinische (teilstationäre)** Behandlung. Das Item fragt also den Behandlungsstatus insgesamt ab, nicht nur den ambulanten. Der Name bleibt als `linkId` und `item.code` stehen, weil er die Dictionary-Variable ist — **aber er darf nicht als Bedeutungsangabe gelesen werden.** Zur Überschneidung mit `bdkm15` siehe dort. Zur bewussten Entscheidung gegen `ordinalValue` siehe das CodeSystem `ukhd-an-behandlungsstatus`."
    }],
    "linkId" : "treatment_outpatient",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "treatment_outpatient"
    }],
    "text" : "Sind Sie zurzeit in psychotherapeutischer Behandlung?",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/ukhd-an-behandlungsstatus-vs"
  }]
}

```
