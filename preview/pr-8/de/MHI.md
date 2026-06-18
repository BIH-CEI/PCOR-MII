# MHI - PCOR-MII Implementation Guide v0.1.0

## MHI

Der **MHI**-Fragebogen (**Medical History**) erfasst die medizinische Vorgeschichte: Anthropometrie, Diagnosen und chronische Erkrankungen, Lifestyle (Rauchen, Alkohol, Substanzen), aktuelle Medikation sowie – im Szenario Anorexia nervosa – den Gewichtsverlauf. Quelle ist das **Item Level Dictionary** (Kategorie `MHI`). MHI folgt der SDC-Basis und ist selbst **kein PRO-Instrument**.

> **Verbindlich für alle Datenintegrationszentren (DIZ):** MHI ist – zusammen mit DEM und PROMIS – Bestandteil des Meilensteins **„First 50 Patients"** und muss von jedem Datenintegrationszentrum ausgefüllt und bereitgestellt werden.

### Artefakte

* **Fragebogen:** [Questionnaire-MHI](Questionnaire-MHI.md) — vollständige Definition inkl. Formularvorschau, Items und Antwortoptionen.
* **Beispielantwort:** [QuestionnaireResponse MHIResponse](QuestionnaireResponse-MHIResponse.md) — ausgefülltes Beispiel zum MHI-Fragebogen.

### Szenario-spezifische Items

Einige MHI-Items sind nicht in allen drei Szenarien (PSS, NTx, AN) zu erheben:

* **Gewichtsverlauf** (`weight_outpatient_1/2`, `weight_inpatient`, `weight_discharge`) und **`AN_subtyp`** — nur im Szenario **Anorexia nervosa**.
* **`GIPS13`** (chronische Erkrankungen) — in AN und NTx, nicht in PSS.

Hinweise zum Lebenszyklus von `Questionnaire` zu `QuestionnaireResponse` siehe [Anwendung](Implementation.md); alle Artefakte unter [Artefakte](artifacts.md).

