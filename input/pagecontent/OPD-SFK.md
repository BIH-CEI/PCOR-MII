Der **OPD-SFK** (*OPD-Strukturfragebogen, Kurzversion*) ist ein Selbstbeurteilungs-Screening zur **strukturellen Persönlichkeitsfunktion** im Sinne der Operationalisierten Psychodynamischen Diagnostik (OPD). PCOR-MII nutzt die **12-Item-Kurzversion** nach Ehrenthal et al. (2015): 12 Aussagen, fünfstufige Zustimmungsskala (0 = trifft gar nicht zu … 4 = trifft völlig zu).

### Verwendung in PCOR-MII

Der OPD-SFK ist **kein Instrument des MII-PRO-Moduls** — er wird in PCOR-MII eigenständig gepflegt (SDC-Basis, analog DEM und MHI). Die Item-Formulierungen entsprechen dem deutschen Originalwortlaut der Publikation.

### Artefakte

- **Fragebogen:** [Questionnaire-OPDSFK](Questionnaire-OPDSFK.html) — vollständige Definition inkl. Items und Antwortoptionen.
- **Antwortskala:** [ValueSet opd-sfk-antwort-vs](ValueSet-opd-sfk-antwort-vs.html) · [CodeSystem opd-sfk-antwort](CodeSystem-opd-sfk-antwort.html) — fünf Konzepte mit `ordinalValue` 0–4 für das Summenscoring.

### Canonical

`https://bih-cei.github.io/PCOR-MII/Questionnaire/OPDSFK`

### Eigenschaften

- **Items**: 12 (`OPDSFK01`–`OPDSFK12`), zusätzlich ein vorangestelltes `display`-Item mit dem für alle Items geltenden Instruktionstext
- **Sprache**: Deutsch (Fragebogensprache); keine englischen Designations, da keine belegte offizielle englische Übersetzung der Kurzskala vorliegt
- **Antwortmodellierung**: `answerValueSet` auf das lokale `opd-sfk-antwort-vs` mit `ordinalValue`-Gewichten (Muster: `mii-cs-pro-whodas-12` im MII-PRO-Modul)
- **Scoring**: Globalwert als **Summenwert über alle 12 Items** (0–48), umgesetzt als readOnly-Item `opd-sfk-globalwert` mit SDC-`calculatedExpression` über `.ordinal().sum()`

### Scoring-Entscheidung

Ehrenthal et al. empfehlen primär den **Globalwert**; die drei Subskalen (Selbstwahrnehmung, Beziehungsmodell, Kontaktgestaltung, je 4 Items) sind laut Autor:innen nur explorativ auszuwerten. Der Globalwert wird als **Summe**, nicht als Mittelwert gebildet — belegt durch Tabelle 2 der Publikation (Summenwert 18,32 bzw. 21,82 bei Item-Mittelwerten von ca. 1,0–2,1) sowie das Fazit (S. 271).

Die **Subskalen sind bewusst nicht implementiert**: Eine explizite Zuordnung von Item-Nummern zu Subskalen liegt im Fließtext der Publikation nicht vor, die zugehörige Faktorladungs-Abbildung ist eine Grafik. Falls Subskalen später benötigt werden, ist die Zuordnung zuvor anhand von Abbildung 1 des Original-PDFs zu verifizieren.

### Lizenz

> **Wichtig:** Die Rechte an Instrument und Item-Formulierungen verbleiben bei den Autor:innen bzw. beim Verlag.

- Quelle: Ehrenthal JC, Dinger U, Schauenburg H, Horsch L, Dahlbender RW, Gierk B. *Entwicklung einer Zwölf-Item-Version des OPD-Strukturfragebogens (OPD-SFK)*. Z Psychosom Med Psychother 2015; 61(3):262–274. [doi:10.13109/zptm.2015.61.3.262](https://doi.org/10.13109/zptm.2015.61.3.262)
- Verlagsrechte: © 2015 Vandenhoeck & Ruprecht GmbH & Co. KG, Göttingen. Der Artikel ist beim Verlag als Open Access verfügbar; eine explizite Creative-Commons-Lizenz ist dort nicht ausgewiesen.
- Nutzungsstatus laut DIZ-Implementierungsliste PCOR-MII: **frei verfügbar, nach erfolgter Rücksprache mit den Autor:innen**. Nachnutzende müssen die Nutzungsbedingungen für den eigenen Anwendungsfall eigenständig prüfen.
- Nur der PCOR-MII-eigene FHIR-Inhalt (Profile, Codes, Kodierung) unterliegt der Repository-Lizenz (CC-BY-4.0). Die Bedingungen sind maschinenlesbar im `copyright`-Element hinterlegt.

Hinweise zum Lebenszyklus von `Questionnaire` zu `QuestionnaireResponse` siehe [Anwendung](Implementation.html); alle Artefakte unter [Artefakte](artifacts.html).
