**IPQ-S** ist eine einzelne **offene Frage nach den subjektiven Ursachen** der Körperbeschwerden — die Befragten nennen die drei aus ihrer Sicht wichtigsten Gründe im Freitext.

> **Wichtig — das ist nicht der B-IPQ:** PCOR-MII erhebt **nicht** den Brief Illness Perception Questionnaire, sondern ausschließlich dessen offene Ursachenfrage (Item 9) in angelehnter Formulierung. Die DIZ-Implementierungsliste PCOR-MII hält das ausdrücklich fest.

### Verwendung in PCOR-MII

Die Frage stammt aus dem Item Level Dictionary (Entität PSS, Kategorie DCH, Item `IPQ_S1`) und wird in PCOR-MII gepflegt — nicht im MII-PRO-Modul. Erhoben wird sie nur im Szenario [PSS](PSS.html).

Konsequenz für die Modellierung: Die Ressource ist bewusst **kein B-IPQ-Questionnaire**. Sie trägt weder dessen Namen noch dessen Scoring, und ein **B-IPQ-Score ist aus diesem einen Item nicht berechenbar** — er beruht auf den acht geschlossenen Items des Instruments und darf hieraus nicht abgeleitet werden.

### Artefakte

- **Fragebogen:** [Questionnaire-IPQS](Questionnaire-IPQS.html)

### Canonical

`https://bih-cei.github.io/PCOR-MII/Questionnaire/IPQS`

### Item

| `linkId` | Typ | Frage |
|---|---|---|
| `IPQ_S1` | `text` | Bitte führen Sie nun die drei wichtigsten Gründe auf, die Ihrer Meinung nach Ihre vorher genannten körperlichen Beschwerden verursacht haben. Die wichtigsten Ursachen meiner Beschwerden sind: |

Das Dictionary sieht **ein** Textfeld für alle drei Nennungen vor, nicht drei getrennte Felder; die Ressource bildet das genauso ab, damit Struktur und Erhebung übereinstimmen.

### Terminologie

Recherche via fhir-terminology MCP (LOINC 2.83, SNOMED CT 2026-05-01): LOINC führt keine Codes für *illness perception*. SNOMED CT kennt `423549006` *Chronic illness perception assessment scale*, das aber ein vollständiges Assessment-Instrument meint und nicht eine einzelne offene Ursachenfrage — analog zur Entscheidung beim [GSLTPAQ](GSLTPAQ.html) wurde kein Code eines fremden Instruments vergeben.

### Quellen

- Originalinstrument: Broadbent E, Petrie KJ, Main J, Weinman J. *The Brief Illness Perception Questionnaire*. J Psychosom Res. 2006;60(6):631–637. [doi:10.1016/j.jpsychores.2005.10.020](https://doi.org/10.1016/j.jpsychores.2005.10.020)
- Deutsche Fassung: Gaab J. *Deutsche Version des Brief Illness Perception Questionnaire*. Z Gesundheitspsychol. 2009;17(4):158–165. [doi:10.1026/0943-8149.17.4.158](https://doi.org/10.1026/0943-8149.17.4.158)

Die Rechte am B-IPQ verbleiben bei den Autor:innen; nur der PCOR-MII-eigene FHIR-Inhalt steht unter der Repository-Lizenz.

Hinweise zum Lebenszyklus von `Questionnaire` zu `QuestionnaireResponse` siehe [Anwendung](Implementation.html); alle Artefakte unter [Artefakte](artifacts.html).
