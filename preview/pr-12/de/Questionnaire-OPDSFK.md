# OPD-SFK — OPD-Strukturfragebogen, 12-Item-Kurzversion - PCOR-MII Implementation Guide v0.2.0

## Questionnaire: OPD-SFK — OPD-Strukturfragebogen, 12-Item-Kurzversion (Experimentell) 

 
OPD-Strukturfragebogen Kurzform (OPD-SFK): 12 Items, 5-stufige Skala (trifft gar nicht zu … trifft völlig zu). Screeninginstrument für strukturelle Persönlichkeitsfunktion (Ehrenthal et al. 2015). Globalwert = Summe über alle 12 Items (0-48); die drei Subskalen (Selbstwahrnehmung, Beziehungsmodell, Kontaktgestaltung) sind laut Autor:innen nur explorativ und hier nicht implementiert. Rechtehinweise siehe `copyright`. 

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
  "id" : "OPDSFK",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/variable",
    "valueExpression" : {
      "name" : "opdSfkSumme",
      "language" : "text/fhirpath",
      "expression" : "%resource.item.where(linkId.matches('^OPDSFK(0[1-9]|1[0-2])$')).answer.value.ordinal().sum()"
    }
  }],
  "url" : "https://bih-cei.github.io/PCOR-MII/Questionnaire/OPDSFK",
  "version" : "0.2.0",
  "name" : "OPDSFK",
  "title" : "OPD-SFK — OPD-Strukturfragebogen, 12-Item-Kurzversion",
  "status" : "draft",
  "experimental" : true,
  "subjectType" : ["Patient"],
  "date" : "2026-09-01",
  "publisher" : "BIH-CEI",
  "contact" : [{
    "name" : "BIH-CEI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.bihealth.org/"
    }]
  }],
  "description" : "OPD-Strukturfragebogen Kurzform (OPD-SFK): 12 Items, 5-stufige Skala (trifft gar nicht zu ... trifft völlig zu). Screeninginstrument für strukturelle Persönlichkeitsfunktion (Ehrenthal et al. 2015). Globalwert = Summe über alle 12 Items (0-48); die drei Subskalen (Selbstwahrnehmung, Beziehungsmodell, Kontaktgestaltung) sind laut Autor:innen nur explorativ und hier nicht implementiert. Rechtehinweise siehe `copyright`.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "copyright" : "Quelle: Ehrenthal JC, Dinger U, Schauenburg H, Horsch L, Dahlbender RW, Gierk B. Entwicklung einer Zwölf-Item-Version des OPD-Strukturfragebogens (OPD-SFK). Z Psychosom Med Psychother 2015; 61(3):262-274. doi:10.13109/zptm.2015.61.3.262. Verlagsrechte: © 2015 Vandenhoeck & Ruprecht GmbH & Co. KG, Göttingen. Der Artikel ist beim Verlag als Open Access verfügbar; eine explizite Creative-Commons-Lizenz ist dort nicht ausgewiesen. Nutzungsstatus laut DIZ-Implementierungsliste PCOR-MII: frei verfügbar, nach erfolgter Rücksprache mit den Autor:innen. Die Rechte an Instrument und Item-Formulierungen verbleiben bei den Autor:innen bzw. beim Verlag; Nachnutzende müssen die Nutzungsbedingungen für den eigenen Anwendungsfall eigenständig prüfen. Nur der PCOR-MII-eigene FHIR-Inhalt (Profile, Codes, Kodierung) unterliegt der Repository-Lizenz (CC-BY-4.0).",
  "item" : [{
    "linkId" : "opd-sfk-intro",
    "text" : "Auf der folgenden Seite finden Sie eine Reihe von Aussagen, mit denen verschiedene Eigenschaften von Personen beschrieben werden. Bitte geben Sie an, wie sehr diese Aussagen auf Sie zutreffen. Kreuzen Sie bitte diejenige Antwort an, die im Allgemeinen auf Sie am besten zutrifft. Dabei gibt es keine richtigen oder falschen Antworten, weil jeder Mensch im Erleben anders ist.",
    "type" : "display"
  },
  {
    "linkId" : "OPDSFK01",
    "text" : "Ich erlebe mich manchmal wie eine fremde Person.",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/opd-sfk-antwort-vs"
  },
  {
    "linkId" : "OPDSFK02",
    "text" : "Wenn ich viel über mich nachdenke, gerate ich eher in Verwirrung.",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/opd-sfk-antwort-vs"
  },
  {
    "linkId" : "OPDSFK03",
    "text" : "Wenn man andere zu nahe an sich heran lässt, kann das gefährlich werden.",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/opd-sfk-antwort-vs"
  },
  {
    "linkId" : "OPDSFK04",
    "text" : "Ich kann mich anderen oft schwer verständlich machen.",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/opd-sfk-antwort-vs"
  },
  {
    "linkId" : "OPDSFK05",
    "text" : "In mir herrscht oft ein solches Gefühlschaos, dass ich es gar nicht beschreiben könnte.",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/opd-sfk-antwort-vs"
  },
  {
    "linkId" : "OPDSFK06",
    "text" : "Ich schätze manchmal falsch ein, wie mein Verhalten auf andere wirkt.",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/opd-sfk-antwort-vs"
  },
  {
    "linkId" : "OPDSFK07",
    "text" : "Wenn andere viel über mich wissen, fühle ich mich oft irgendwie kontrolliert oder beobachtet.",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/opd-sfk-antwort-vs"
  },
  {
    "linkId" : "OPDSFK08",
    "text" : "Meine Gefühle sind manchmal so intensiv, dass ich Angst bekomme.",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/opd-sfk-antwort-vs"
  },
  {
    "linkId" : "OPDSFK09",
    "text" : "Ich bin schon sehr verletzt worden, weil ich mich in einem Menschen getäuscht hatte.",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/opd-sfk-antwort-vs"
  },
  {
    "linkId" : "OPDSFK10",
    "text" : "Es fällt mir schwer, zu anderen Kontakt aufzunehmen.",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/opd-sfk-antwort-vs"
  },
  {
    "linkId" : "OPDSFK11",
    "text" : "Ich habe kein gutes Selbstbewusstsein.",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/opd-sfk-antwort-vs"
  },
  {
    "linkId" : "OPDSFK12",
    "text" : "Meine Erfahrung ist: Wenn man Menschen zu sehr vertraut, kann man böse Überraschungen erleben.",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/opd-sfk-antwort-vs"
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression",
      "valueExpression" : {
        "name" : "opdSfkGlobalwert",
        "language" : "text/fhirpath",
        "expression" : "%opdSfkSumme"
      }
    }],
    "linkId" : "opd-sfk-globalwert",
    "text" : "OPD-SFK Globalwert (Summenwert, 0-48)",
    "type" : "decimal",
    "readOnly" : true
  }]
}

```
