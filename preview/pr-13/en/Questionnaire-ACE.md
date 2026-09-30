# ACE — Belastende Kindheitserfahrungen (erste 5 Fragen) - PCOR-MII Implementation Guide v0.3.0

## Questionnaire: ACE — Belastende Kindheitserfahrungen (erste 5 Fragen) (Experimental) 

 
Die ersten fünf Fragen des Adverse-Childhood-Experiences-Fragebogens (ACE): emotionale und körperliche Misshandlung, sexueller Missbrauch, emotionale und körperliche Vernachlässigung vor dem 18. Lebensjahr, je ja/nein. Kein Score — die Summe über den 5-Item-Zuschnitt ist kein validierter ACE-Score. Quelle: PCOR-MII Item Level Dictionary (Entität AN). 

*  [Tree view](#tabs-tree) 
*  [Sample Rendering](#tabs-sample) 
*  [Form Logic](#tabs-logic) 

### Test this Questionnaire

### Responses for this Questionnaire

* [Vollständig ausgefüllte Beispielantwort zum ACE-Questionnaire (erste fünf ACE-Fragen). Zwei bejahte Items in der emotionalen Dimension; die Anzahl der Ja-Antworten ist kein ACE-Score, weil die Fragen 6–10 nicht erhoben werden.](QuestionnaireResponse-ACEResponse.md)



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "ACE",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/designNote",
    "valueMarkdown" : "**Designentscheidungen (ADR-003):** (0) **Auswahlregel des Zuschnitts:** Die DIZ-Implementierungsliste nennt in der Spalte *„verkürzte Version?“* hier **nicht** die Trennschärfe-Formel der übrigen AN-Zuschnitte, sondern *„die ersten 5 Fragen“*. Der Zuschnitt ist also der vordere Block des Instruments (Misshandlung und Vernachlässigung) ohne die Haushalts-Dysfunktions-Fragen 6-10, keine psychometrische Auswahl. (1) `linkId`s = Original-ACE-Fragennummern (1–5); die Haushalts-Dysfunktions-Fragen 6–10 sind nicht enthalten. (2) Kein Score: Der ACE-Score ist die Anzahl der Ja-Antworten über alle 10 Fragen — eine Summe über den 5-Fragen-Zuschnitt ist kein validierter ACE-Score. (3) Kein `Questionnaire.code`: LOINC `82813-7` bezeichnet das 10-Fragen-Panel. (4) Ja/Nein über das projektweite `DemJaNeinVS`; Dictionary-Kodierung 1 = ja / 0 = nein nur dokumentarisch. (5) Governance der Auswertung (hochsensible Inhalte, analog PHQ-SI) fachlich zu klären. Details: <https://bih-cei.github.io/PCOR-MII/Designentscheidungen.html>"
  }],
  "url" : "https://bih-cei.github.io/PCOR-MII/Questionnaire/ACE",
  "version" : "0.3.0",
  "name" : "ACE",
  "title" : "ACE — Belastende Kindheitserfahrungen (erste 5 Fragen)",
  "status" : "draft",
  "experimental" : true,
  "subjectType" : ["Patient"],
  "date" : "2026-09-23",
  "publisher" : "BIH-CEI",
  "contact" : [{
    "name" : "BIH-CEI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.bihealth.org/"
    }]
  }],
  "description" : "Die ersten fünf Fragen des Adverse-Childhood-Experiences-Fragebogens (ACE): emotionale und körperliche Misshandlung, sexueller Missbrauch, emotionale und körperliche Vernachlässigung vor dem 18. Lebensjahr, je ja/nein. Kein Score — die Summe über den 5-Item-Zuschnitt ist kein validierter ACE-Score. Quelle: PCOR-MII Item Level Dictionary (Entität AN).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "copyright" : "Die Fragen entstammen dem Adverse-Childhood-Experiences-Fragebogen (ACE; Felitti et al., Am J Prev Med 1998, doi:10.1016/S0749-3797(98)00017-8), deutsche Fassung Wingenfeld et al., PPmP 2010, doi:10.1055/s-0030-1263161, im Zuschnitt des PCOR-MII Item Level Dictionary (erste 5 der 10 Fragen). Nutzungsstatus laut DIZ-Implementierungsliste PCOR-MII: frei. Die Rechte an Instrument und Item-Formulierungen verbleiben bei den Autor:innen; Nachnutzende müssen die Nutzungsbedingungen für den eigenen Anwendungsfall eigenständig prüfen. Nur der PCOR-MII-eigene FHIR-Inhalt unterliegt der Repository-Lizenz (CC-BY-4.0).",
  "item" : [{
    "linkId" : "ace-intro",
    "text" : "Die nächsten Fragen beziehen sich auf schwierige Lebenserfahrungen aus Ihrer Kindheit (vor dem 18. Lebensjahr), die Sie machen mussten. Lesen Sie sich bitte auch hier die Fragestellungen sorgfältig durch und beantworten Sie alle Fragen. Vielen Dank!",
    "type" : "display"
  },
  {
    "linkId" : "ace1",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "ace1"
    },
    {
      "system" : "http://loinc.org",
      "code" : "82814-5",
      "display" : "Emotional abuse--before 18 years old [ACE]"
    }],
    "text" : "Hat ein Elternteil oder ein anderer Erwachsener in Ihrem Haushalt Sie oft oder sehr oft… ...beschimpft, beleidigt, erniedrigt oder gedemütigt? Oder ...so gehandelt, dass Sie Angst hatten, Sie könnten körperlich verletzt werden?",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/dem-ja-nein"
  },
  {
    "linkId" : "ace2",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "ace2"
    },
    {
      "system" : "http://loinc.org",
      "code" : "82815-2",
      "display" : "Physical abuse--before 18 years old [ACE]"
    }],
    "text" : "Hat ein Elternteil oder ein anderer Erwachsener in Ihrem Haushalt Sie oft oder sehr oft… ...gestoßen, gepackt, geschlagen oder etwas nach Ihnen geworfen? Oder ...Sie jemals so stark geschlagen, dass Sie Spuren davon aufwiesen oder verletzt wurden?",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/dem-ja-nein"
  },
  {
    "linkId" : "ace3",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "ace3"
    },
    {
      "system" : "http://loinc.org",
      "code" : "82816-0",
      "display" : "Sexual abuse--before 18 years old [ACE]"
    }],
    "text" : "Hat ein Erwachsener oder eine Person, die mindestens 5 Jahre älter war Sie jemals… ...auf sexuelle Art und Weise angefasst oder gestreichelt oder Sie veranlasst deren Körper in sexueller Art und Weise zu berühren? Oder ...oralen, analen oder vaginalen Geschlechtsverkehr versucht mit Ihnen zu haben oder tatsächlich gehabt?",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/dem-ja-nein"
  },
  {
    "linkId" : "ace4",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "ace4"
    },
    {
      "system" : "http://loinc.org",
      "code" : "82817-8",
      "display" : "Emotional neglect--before 18 years old [ACE]"
    }],
    "text" : "Haben Sie oft oder sehr oft empfunden, dass … ...niemand in Ihrer Familie Sie liebte oder dachte, Sie seien wichtig oder etwas Besonderes? Oder ...Ihre Familienangehörigen nicht aufeinander aufpassten, sich einander nicht nahe fühlten oder sich gegenseitig nicht unterstützten?",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/dem-ja-nein"
  },
  {
    "linkId" : "ace5",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "ace5"
    },
    {
      "system" : "http://loinc.org",
      "code" : "82818-6",
      "display" : "Physical neglect--before 18 years old [ACE]"
    }],
    "text" : "Haben Sie oft oder sehr oft empfunden, dass … ...Sie nicht genug zu essen hatten, Sie schmutzige Kleidung tragen mussten und niemanden hatten, der Sie beschützte? Oder ...Ihre Eltern zu betrunken oder “high” waren, um sich um Sie zu kümmern oder Sie zum Arzt zu bringen, wenn Sie es benötigten?",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/dem-ja-nein"
  }]
}

```
