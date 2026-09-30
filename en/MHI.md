# MHI - PCOR-MII Implementation Guide v0.3.0

## MHI

**Translated page. Original language: German.**

Der **MHI**-Fragebogen (**Medical History**) erfasst die medizinische Vorgeschichte: Anthropometrie, Diagnosen und chronische Erkrankungen, Lifestyle (Rauchen, Alkohol, Substanzen), aktuelle Medikation sowie – im Szenario Anorexia nervosa – den Gewichtsverlauf. Quelle ist das **Item Level Dictionary** (Kategorie `MHI`). MHI folgt der SDC-Basis und ist selbst **kein PRO-Instrument**.

> **Verbindlich für alle Datenintegrationszentren (DIZ):** MHI ist – zusammen mit DEM und PROMIS – Bestandteil des Meilensteins **„First 50 Patients"** und muss von jedem Datenintegrationszentrum ausgefüllt und bereitgestellt werden.

### Artefakte

* **Fragebogen:** [Questionnaire-MHI](Questionnaire-MHI.md) — vollständige Definition inkl. Formularvorschau, Items und Antwortoptionen.
* **Beispielantwort:** [QuestionnaireResponse MHIResponse](QuestionnaireResponse-MHIResponse.md) — ausgefülltes Beispiel zum MHI-Fragebogen.

### Szenario-spezifische Items

Einige MHI-Items sind nicht in allen drei Szenarien (PSS, NTx, AN) zu erheben:

* **Gewichtsverlauf** (`weight_outpatient_1/2`, `weight_inpatient`, `weight_discharge`) und **`AN_subtyp`** — nur im Szenario **Anorexia nervosa**.

### Standortspezifische Items — Freigabe nicht dokumentiert

34 der MHI-Items stammen nicht aus einem publizierten Instrument, sondern sind **Eigenentwicklungen der Standorte**: Körpergewichtsverlauf und AN-Subtyp aus Heidelberg (`UKHD-W`, `UKHD-AN`), die Medikationsfragen aus Heidelberg und Hamburg (`UKHD-MEDI`, `UKE-MEDI`). Die DIZ-Implementierungsliste führt ausschließlich publizierte Instrumente und **kennt diese Gruppen nicht** — es gibt für sie also keine dokumentierte Freigabe.

Aufgenommen sind sie trotzdem, weil es durchweg **triviale Faktenfragen** sind („Wie viel wiegen Sie aktuell in kg?", „Name des Medikaments") — keine schutzfähigen Schöpfungen, und ohne den Wortlaut könnten die Datenintegrationszentren sie nicht einheitlich implementieren. Für die **entworfenen Item-Batterien** derselben Standorte (etwa `UKHD-EDP`, `UKHD-CTT`) gilt das ausdrücklich nicht; sie sind bis zu einer Freigabe nicht aufgenommen. Beides steht als [offener Punkt](Designentscheidungen.md) im Entscheidungslog und ist mit den Standorten zu bestätigen.

Hinweise zum Lebenszyklus von `Questionnaire` zu `QuestionnaireResponse` siehe [Anwendung](Implementation.md); alle Artefakte unter [Artefakte](artifacts.md).

