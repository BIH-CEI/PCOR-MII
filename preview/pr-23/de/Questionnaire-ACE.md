# ACE + Zeitangaben — Belastende Kindheitserfahrungen (PCOR-MII-Komposit) - PCOR-MII Implementation Guide v0.3.0

## Questionnaire: ACE + Zeitangaben — Belastende Kindheitserfahrungen (PCOR-MII-Komposit) (Experimentell) 

 
**PCOR-MII-spezifisches Komposit**, nicht der ACE allein: die ersten fünf Fragen des Adverse Childhood Experiences Questionnaire (Felitti et al. 1998) plus sechs UKHD-Items zur zeitlichen Einordnung der berichteten Ereignisse. Die sechs Zeitangaben sind in drei Paare gegliedert; jedes Paar wird über `enableWhen` von einem bejahten ACE-Item freigeschaltet — `ace1`, `ace2` bzw. `ace3`, so wie das Item Level Dictionary es vorgibt. Die fünf ACE-Items im Einzelnen: emotionale und körperliche Misshandlung, sexueller Missbrauch, emotionale und körperliche Vernachlässigung vor dem 18. Lebensjahr, je ja/nein. Kein Score — die Summe über den 5-Item-Zuschnitt ist kein validierter ACE-Score. Quelle: PCOR-MII Item Level Dictionary (Entität AN). Jedes Item trägt in `item.code` seine PCOR-MII-Dictionary-Variable — das ist der PCOR-MII-Code des Items — und zusätzlich seinen LOINC-Code. 

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
  "id" : "ACE",
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
    "valueMarkdown" : "**Designentscheidungen (ADR-003):** (-1) **Dies ist ein PCOR-MII-Komposit, nicht der ACE.** Zu den fünf ACE-Items kommen sechs Items der Dictionary-Gruppe `UKHD-CTT` (`traumaspecific1`–`6`), die die berichteten Ereignisse zeitlich einordnen. Das Dictionary nennt deren Bezug ausdrücklich — Paare auf `ace1`, `ace2` und `ace3` —, und `enableWhen.question` nimmt laut R4 eine `linkId` **innerhalb desselben Questionnaire**. Die Items mussten also dorthin, wo ihre Bedingung steht. Dass die Gruppe im Dictionary `UKHD-CTT` heißt, bleibt über `item.code` und die Property `instrument` in [`pcor-item-dictionary`](CodeSystem-pcor-item-dictionary.html) lesbar: Die Gruppenzugehörigkeit hängt am Code, nicht an der Ressourcengrenze ([ADR-011](Designentscheidungen.html)). Die Rechtelage ist dadurch **doppelt** — ACE frei, UKHD-Wortlaut ohne dokumentierte Freigabe; siehe `copyright`. (0) **Auswahlregel des Zuschnitts:** Die DIZ-Implementierungsliste nennt in der Spalte *„verkürzte Version?“* hier **nicht** die Trennschärfe-Formel der übrigen AN-Zuschnitte, sondern *„die ersten 5 Fragen“*. Der Zuschnitt ist also der vordere Block des Instruments (Misshandlung und Vernachlässigung) ohne die Haushalts-Dysfunktions-Fragen 6-10, keine psychometrische Auswahl. (1) `linkId`s = Original-ACE-Fragennummern (1–5); die Haushalts-Dysfunktions-Fragen 6–10 sind nicht enthalten. (1a) **Englisch primär** (ADR-005): `item.text` trägt den englischen Originalwortlaut nach Felitti et al. 1998, die deutsche Fassung ACE-D hängt als `translation` mit `lang = de` daran. Das ist hier auch rechtlich die bessere Anordnung, denn die Rechtelage ist **nicht symmetrisch**: Das englische Original ist ein frei verwendetes Public-Health-Instrument, für die deutsche ACE-D-Fassung ist die Freigabe dagegen offen. (2) Kein Score: Der ACE-Score ist die Anzahl der Ja-Antworten über alle 10 Fragen — eine Summe über den 5-Fragen-Zuschnitt ist kein validierter ACE-Score. (3) **Kein LOINC-Panel-Code:** `82813-7` bezeichnet das 10-Fragen-Vollinstrument und wird dem Zuschnitt nicht zugewiesen. `Questionnaire.code` trägt stattdessen den lokalen Katalogcode `ace` aus [`pcor-questionnaire-catalogue`](CodeSystem-pcor-questionnaire-catalogue.html), der ausdrücklich dieses PCOR-MII-Komposit bezeichnet und nicht den ACE (ADR-003 Punkt 2, ADR-004). (4) Ja/Nein über das projektweite `DemJaNeinVS`; Dictionary-Kodierung 1 = ja / 0 = nein nur dokumentarisch. (5) Governance der Auswertung (hochsensible Inhalte, analog PHQ-SI) fachlich zu klären. (5) **`item.code` trägt zwei Codings:** die PCOR-MII-Dictionary-Variable gegen [`pcor-item-dictionary`](CodeSystem-pcor-item-dictionary.html) — das ist der PCOR-MII-Code des Items — und den item-genauen LOINC-Code. Genau dafür ist `item.code` `0..*`. Die Dictionary-Variable bezeichnet das **Erhebungsfeld** und stimmt hier mit der Itemnummer überein; ein weiteres lokales CodeSystem gibt es bewusst nicht. Zweck: das maschinelle Verteilen eines flach erhobenen Datensatzes auf die Instrumenten-Questionnaires (ADR-011). Details: <https://bih-cei.github.io/PCOR-MII/Designentscheidungen.html>"
  }],
  "url" : "https://bih-cei.github.io/PCOR-MII/Questionnaire/ACE",
  "version" : "0.3.0",
  "name" : "ACE",
  "title" : "ACE + Zeitangaben — Belastende Kindheitserfahrungen (PCOR-MII-Komposit)",
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
  "description" : "**PCOR-MII-spezifisches Komposit**, nicht der ACE allein: die ersten fünf Fragen des Adverse Childhood Experiences Questionnaire (Felitti et al. 1998) plus sechs UKHD-Items zur zeitlichen Einordnung der berichteten Ereignisse. Die sechs Zeitangaben sind in drei Paare gegliedert; jedes Paar wird über `enableWhen` von einem bejahten ACE-Item freigeschaltet — `ace1`, `ace2` bzw. `ace3`, so wie das Item Level Dictionary es vorgibt. Die fünf ACE-Items im Einzelnen: emotionale und körperliche Misshandlung, sexueller Missbrauch, emotionale und körperliche Vernachlässigung vor dem 18. Lebensjahr, je ja/nein. Kein Score — die Summe über den 5-Item-Zuschnitt ist kein validierter ACE-Score. Quelle: PCOR-MII Item Level Dictionary (Entität AN). Jedes Item trägt in `item.code` seine PCOR-MII-Dictionary-Variable — das ist der PCOR-MII-Code des Items — und zusätzlich seinen LOINC-Code.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "copyright" : "Dieser Bogen ist ein PCOR-MII-spezifisches Komposit aus zwei Quellen mit unterschiedlicher Rechtelage. (1) Die fünf ACE-Items: Die Fragen entstammen dem Adverse-Childhood-Experiences-Fragebogen (ACE; Felitti et al., Am J Prev Med 1998, doi:10.1016/S0749-3797(98)00017-8), deutsche Fassung Wingenfeld et al., PPmP 2010, doi:10.1055/s-0030-1263161, im Zuschnitt des PCOR-MII Item Level Dictionary (erste 5 der 10 Fragen). Nutzungsstatus laut DIZ-Implementierungsliste PCOR-MII: frei. Die Rechte an Instrument und Item-Formulierungen verbleiben bei den Autor:innen; Nachnutzende müssen die Nutzungsbedingungen für den eigenen Anwendungsfall eigenständig prüfen. Nur der PCOR-MII-eigene FHIR-Inhalt unterliegt der Repository-Lizenz (CC-BY-4.0). (2) Die sechs Items zur zeitlichen Einordnung (traumaspecific1–6) stammen aus dem Item Level Dictionary des Universitätsklinikums Heidelberg. Die DIZ-Implementierungsliste PCOR-MII führt die standortspezifischen Itemgruppen nicht; eine Freigabe liegt nicht dokumentiert vor — siehe den offenen Punkt auf der Seite Designentscheidungen.",
  "code" : [{
    "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-questionnaire-catalogue",
    "code" : "ace",
    "display" : "ACE + Zeitangaben"
  }],
  "item" : [{
    "linkId" : "ace-intro",
    "text" : "The next questions are about difficult experiences during your childhood (before the age of 18).",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "Die nächsten Fragen beziehen sich auf schwierige Lebenserfahrungen aus Ihrer Kindheit (vor dem 18. Lebensjahr), die Sie machen mussten. Lesen Sie sich bitte auch hier die Fragestellungen sorgfältig durch und beantworten Sie alle Fragen. Vielen Dank!"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
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
    "text" : "Did a parent or other adult in the household often or very often… Swear at you, insult you, put you down, or humiliate you? Or act in a way that made you afraid that you might be physically hurt?",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "Hat ein Elternteil oder ein anderer Erwachsener in Ihrem Haushalt Sie oft oder sehr oft… ...beschimpft, beleidigt, erniedrigt oder gedemütigt? Oder ...so gehandelt, dass Sie Angst hatten, Sie könnten körperlich verletzt werden?"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
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
    "text" : "Did a parent or other adult in the household often or very often… Push, grab, slap, or throw something at you? Or ever hit you so hard that you had marks or were injured?",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "Hat ein Elternteil oder ein anderer Erwachsener in Ihrem Haushalt Sie oft oder sehr oft… ...gestoßen, gepackt, geschlagen oder etwas nach Ihnen geworfen? Oder ...Sie jemals so stark geschlagen, dass Sie Spuren davon aufwiesen oder verletzt wurden?"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
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
    "text" : "Did an adult or person at least 5 years older than you ever… Touch or fondle you or have you touch their body in a sexual way? Or attempt or actually have oral, anal, or vaginal intercourse with you?",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "Hat ein Erwachsener oder eine Person, die mindestens 5 Jahre älter war Sie jemals… ...auf sexuelle Art und Weise angefasst oder gestreichelt oder Sie veranlasst deren Körper in sexueller Art und Weise zu berühren? Oder ...oralen, analen oder vaginalen Geschlechtsverkehr versucht mit Ihnen zu haben oder tatsächlich gehabt?"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
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
    "text" : "Did you often or very often feel that… No one in your family loved you or thought you were important or special? Or your family didn’t look out for each other, feel close to each other, or support each other?",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "Haben Sie oft oder sehr oft empfunden, dass … ...niemand in Ihrer Familie Sie liebte oder dachte, Sie seien wichtig oder etwas Besonderes? Oder ...Ihre Familienangehörigen nicht aufeinander aufpassten, sich einander nicht nahe fühlten oder sich gegenseitig nicht unterstützten?"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
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
    "text" : "Did you often or very often feel that… You didn’t have enough to eat, had to wear dirty clothes, and had no one to protect you? Or your parents were too drunk or high to take care of you or take you to the doctor if you needed it?",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "Haben Sie oft oder sehr oft empfunden, dass … ...Sie nicht genug zu essen hatten, Sie schmutzige Kleidung tragen mussten und niemanden hatten, der Sie beschützte? Oder ...Ihre Eltern zu betrunken oder “high” waren, um sich um Sie zu kümmern oder Sie zum Arzt zu bringen, wenn Sie es benötigten?"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/dem-ja-nein"
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/designNote",
      "valueMarkdown" : "**Die Zuordnung steht im Dictionary, sie ist nicht erschlossen.** Spalte `ADDITIONAL INFORMATION` sagt für `traumaspecific1` und `traumaspecific2` wörtlich *`ACE Abfrage ace1, Antwort Ja = 1`*, für `traumaspecific3`/`4` entsprechend `ace2` und für `traumaspecific5`/`6` `ace3`. Jedes Paar charakterisiert das Ereignis **einer** bejahten ACE-Frage — eine Angabe zur Häufigkeit, eine zur zeitlichen Lage relativ zum Beginn der Essstörung. Das ist die Bedeutung von `Ihre Angabe` in beiden Itemtexten. **Warum die Items hier liegen und nicht bei den UKHD-Zusatzbögen:** `enableWhen.question` nimmt laut R4 eine `linkId` **innerhalb desselben Questionnaire**. Eine Abhängigkeit über Bogengrenzen hinweg ist in FHIR nicht ausdrückbar — die Items mussten also dorthin, wo ihre Bedingung steht. Dadurch wird aus dem ACE-Zuschnitt ein PCOR-MII-Komposit; der Bogen ist nicht mehr *der ACE*, und Titel, Beschreibung und `copyright` sagen das. **Nur `ace1` bis `ace3` haben Paare**, `ace4` und `ace5` nicht — passend dazu, dass die ersten drei abgrenzbare Ereignisse beschreiben (Misshandlung, Missbrauch), die letzten beiden andauernde Vernachlässigung, für die *einmalig oder wiederholt* kaum sinnvoll wäre."
    }],
    "linkId" : "ctt-ereignis-1",
    "text" : "Zeitliche Einordnung des Ereignisses aus Frage 1",
    "type" : "group",
    "enableWhen" : [{
      "question" : "ace1",
      "operator" : "=",
      "answerCoding" : {
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-antwort",
        "code" : "ja"
      }
    }],
    "item" : [{
      "linkId" : "traumaspecific1",
      "code" : [{
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
        "code" : "traumaspecific1"
      }],
      "text" : "Handelt es sich bei Ihrer Angabe um ein einmaliges oder um ein sich wiederholendes Ereignis?",
      "type" : "choice",
      "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/ukhd-an-ereignishaeufigkeit-vs"
    },
    {
      "linkId" : "traumaspecific2",
      "code" : [{
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
        "code" : "traumaspecific2"
      }],
      "text" : "Passierte dieses Ereignis vor oder nach den ersten Anzeichen der Essstörung? Passierte der Beginn dieser Ereignisse vor oder nach den ersten Anzeichen der Essstörung?",
      "type" : "choice",
      "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/ukhd-an-ereigniszeitpunkt-vs"
    }]
  },
  {
    "linkId" : "ctt-ereignis-2",
    "text" : "Zeitliche Einordnung des Ereignisses aus Frage 2",
    "type" : "group",
    "enableWhen" : [{
      "question" : "ace2",
      "operator" : "=",
      "answerCoding" : {
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-antwort",
        "code" : "ja"
      }
    }],
    "item" : [{
      "linkId" : "traumaspecific3",
      "code" : [{
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
        "code" : "traumaspecific3"
      }],
      "text" : "Handelt es sich bei Ihrer Angabe um ein einmaliges oder um ein sich wiederholendes Ereignis?",
      "type" : "choice",
      "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/ukhd-an-ereignishaeufigkeit-vs"
    },
    {
      "linkId" : "traumaspecific4",
      "code" : [{
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
        "code" : "traumaspecific4"
      }],
      "text" : "Passierte dieses Ereignis vor oder nach den ersten Anzeichen der Essstörung? Passierte der Beginn dieser Ereignisse vor oder nach den ersten Anzeichen der Essstörung?",
      "type" : "choice",
      "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/ukhd-an-ereigniszeitpunkt-vs"
    }]
  },
  {
    "linkId" : "ctt-ereignis-3",
    "text" : "Zeitliche Einordnung des Ereignisses aus Frage 3",
    "type" : "group",
    "enableWhen" : [{
      "question" : "ace3",
      "operator" : "=",
      "answerCoding" : {
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-antwort",
        "code" : "ja"
      }
    }],
    "item" : [{
      "linkId" : "traumaspecific5",
      "code" : [{
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
        "code" : "traumaspecific5"
      }],
      "text" : "Handelt es sich bei Ihrer Angabe um ein einmaliges oder um ein sich wiederholendes Ereignis?",
      "type" : "choice",
      "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/ukhd-an-ereignishaeufigkeit-vs"
    },
    {
      "linkId" : "traumaspecific6",
      "code" : [{
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
        "code" : "traumaspecific6"
      }],
      "text" : "Passierte dieses Ereignis vor oder nach den ersten Anzeichen der Essstörung? Passierte der Beginn dieser Ereignisse vor oder nach den ersten Anzeichen der Essstörung?",
      "type" : "choice",
      "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/ukhd-an-ereigniszeitpunkt-vs"
    }]
  }]
}

```
