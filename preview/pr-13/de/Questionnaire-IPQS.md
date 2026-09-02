# IPQ-S — Subjektive Ursachen der Körperbeschwerden (offene Frage) - PCOR-MII Implementation Guide v0.2.0

## Questionnaire: IPQ-S — Subjektive Ursachen der Körperbeschwerden (offene Frage) (Experimentell) 

 
Eine offene Frage nach den drei wichtigsten subjektiven Ursachen der Körperbeschwerden, angelehnt an Item 9 des Brief Illness Perception Questionnaire (B-IPQ). PCOR-MII erhebt NICHT den B-IPQ selbst; ein B-IPQ-Score ist aus diesem Item nicht ableitbar. Quelle: PCOR-MII Item Level Dictionary (Entität PSS). 

*  [Baumansicht](#tabs-tree) 
*  [Beispielanzeige](#tabs-sample) 
*  [Formularlogik](#tabs-logic) 

### Diesen Fragebogen testen

### Antworten zu diesem Fragebogen

Es sind derzeit keine QuestionnaireResponse-Instanzen für diesen Fragebogen in diesem IG definiert.



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "IPQS",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire"]
  },
  "url" : "https://bih-cei.github.io/PCOR-MII/Questionnaire/IPQS",
  "version" : "0.2.0",
  "name" : "IPQS",
  "title" : "IPQ-S — Subjektive Ursachen der Körperbeschwerden (offene Frage)",
  "status" : "draft",
  "experimental" : true,
  "subjectType" : ["Patient"],
  "date" : "2026-09-02",
  "publisher" : "BIH-CEI",
  "contact" : [{
    "name" : "BIH-CEI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.bihealth.org/"
    }]
  }],
  "description" : "Eine offene Frage nach den drei wichtigsten subjektiven Ursachen der Körperbeschwerden, angelehnt an Item 9 des Brief Illness Perception Questionnaire (B-IPQ). PCOR-MII erhebt NICHT den B-IPQ selbst; ein B-IPQ-Score ist aus diesem Item nicht ableitbar. Quelle: PCOR-MII Item Level Dictionary (Entität PSS).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "copyright" : "Die erhobene Frage ist an Item 9 des Brief Illness Perception Questionnaire (B-IPQ) angelehnt: Broadbent E, Petrie KJ, Main J, Weinman J. The Brief Illness Perception Questionnaire. J Psychosom Res. 2006;60(6):631-637. doi:10.1016/j.jpsychores.2005.10.020. Deutsche Fassung: Gaab J. Deutsche Version des Brief Illness Perception Questionnaire. Z Gesundheitspsychol. 2009;17(4):158-165. doi:10.1026/0943-8149.17.4.158. PCOR-MII verwendet ausschließlich diese eine offene Frage und nicht das vollständige Instrument; Rechte am B-IPQ verbleiben bei den Autor:innen. Der PCOR-MII-eigene FHIR-Inhalt unterliegt der Repository-Lizenz (CC-BY-4.0).",
  "item" : [{
    "linkId" : "IPQ_S1",
    "text" : "Bitte führen Sie nun die drei wichtigsten Gründe auf, die Ihrer Meinung nach Ihre vorher genannten körperlichen Beschwerden verursacht haben. Die wichtigsten Ursachen meiner Beschwerden sind:",
    "type" : "text"
  }]
}

```
