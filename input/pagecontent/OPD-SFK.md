Der **OPD-SFK** (*OPD-Strukturfragebogen, Kurzversion*) ist ein Selbstbeurteilungs-Screening zur **strukturellen Persönlichkeitsfunktion** im Sinne der Operationalisierten Psychodynamischen Diagnostik (OPD). PCOR-MII nutzt die **12-Item-Kurzversion** nach Ehrenthal et al. (2015): 12 Aussagen, fünfstufige Zustimmungsskala (0 = trifft gar nicht zu … 4 = trifft völlig zu).

### Verwendung in PCOR-MII

Der OPD-SFK ist **kein Instrument des MII-PRO-Moduls** — er wird in PCOR-MII eigenständig gepflegt (SDC-Basis, analog DEM und MHI). Die Item-Formulierungen entsprechen dem deutschen Originalwortlaut der Publikation.

Erhoben wird der OPD-SFK in PSS und AN **von einzelnen Standorten**; eine direkte Empfehlung der Use-Case-Leitung ist er nicht.

### Artefakte

- **Fragebogen:** [Questionnaire-OPDSFK](Questionnaire-OPDSFK.html) — vollständige Definition inkl. Items und Antwortoptionen.
- **linkId-Abbildung:** [ConceptMap pcor-cm-opd-sfk-linkids](ConceptMap-pcor-cm-opd-sfk-linkids.html) — Dictionary-Variablen-IDs `OPDSFK01`–`OPDSFK12` (zugleich die `linkId`s bis Version 0.3.0) auf die `linkId`s mit OPD-SF-Itemnummern.
- **Antwortskala:** [ValueSet opd-sfk-antwort-vs](ValueSet-opd-sfk-antwort-vs.html) · [CodeSystem opd-sfk-antwort](CodeSystem-opd-sfk-antwort.html) — fünf Konzepte mit `itemWeight` 0–4 für das Summenscoring.

### Canonical

`https://bih-cei.github.io/PCOR-MII/Questionnaire/OPDSFK`

### Eigenschaften

- **Items**: 12, `linkId` = Itemnummer der 95-Item-**Langform OPD-SF** (`opdsf3` … `opdsf90`, siehe Tabelle unten; linkId-Regel ADR-003/ADR-008), `prefix` = OPD-SFK-Nummer 1–12 in Formularreihenfolge, `item.code` = Dictionary-Variable `OPDSFK01`–`OPDSFK12` (ADR-011). Zusätzlich ein vorangestelltes `display`-Item mit dem für alle Items geltenden Instruktionstext
- **Sprache**: Deutsch (Fragebogensprache); keine englischen Designations, da keine belegte offizielle englische Übersetzung der Kurzskala vorliegt
- **Antwortmodellierung**: `answerValueSet` auf das lokale `opd-sfk-antwort-vs` mit `itemWeight`-Gewichten (Muster: `mii-cs-pro-whodas-12` im MII-PRO-Modul)
- **Scoring**: Globalwert als **Summenwert über alle 12 Items** (0–48), umgesetzt als readOnly-Item `opd-sfk-globalwert` mit SDC-`calculatedExpression` über `.weight().sum()`; dazu die drei **explorativen Subskalen** (je 4 Items, 0–16) als readOnly-Items `opd-sfk-selbstwahrnehmung`, `opd-sfk-beziehungsmodell`, `opd-sfk-kontaktgestaltung`

### Items und Subskalen

Quelle: Ehrenthal et al. 2015, Tabelle 2 (OPD-SF-Itemnummern) und Abbildung 1 (Faktorstruktur, Subskalenzuordnung).

| OPD-SFK | `linkId` (OPD-SF-Nr.) | Subskala |
|---|---|---|
| 1 | `opdsf3` | Selbstwahrnehmung |
| 2 | `opdsf27` | Selbstwahrnehmung |
| 3 | `opdsf32` | Beziehungsmodell |
| 4 | `opdsf81` | Kontaktgestaltung |
| 5 | `opdsf41` | Selbstwahrnehmung |
| 6 | `opdsf49` | Kontaktgestaltung |
| 7 | `opdsf50` | Beziehungsmodell |
| 8 | `opdsf73` | Selbstwahrnehmung |
| 9 | `opdsf78` | Beziehungsmodell |
| 10 | `opdsf79` | Kontaktgestaltung |
| 11 | `opdsf40` | Kontaktgestaltung |
| 12 | `opdsf90` | Beziehungsmodell |

Die Item-Formulierungen im Questionnaire sind wortgleich mit Tabelle 2 der Publikation (abgeglichen am 2026-11-05). Dass dasselbe Item in Kurz- und Langform denselben `linkId` trägt, erlaubt später eine Langform `OPDSF` ohne Umschlüsselung (Itembank-Prinzip).

### Scoring-Entscheidung

Ehrenthal et al. empfehlen primär den **Globalwert**; die drei Subskalen (Selbstwahrnehmung, Beziehungsmodell, Kontaktgestaltung, je 4 Items) sind laut Autor:innen nur explorativ auszuwerten. Der Globalwert wird als **Summe**, nicht als Mittelwert gebildet — belegt durch Tabelle 2 der Publikation (Summenwert 18,32 bzw. 21,82 bei Item-Mittelwerten von ca. 1,0–2,1) sowie das Fazit (S. 271).

Die **Subskalen sind als explorative Zusatzwerte implementiert** (Summenwert je 0–16, ohne Normwerte). Ihre Itemzuordnung steht nicht im Fließtext der Publikation, sondern nur in Abbildung 1 (Faktorstruktur, S. 268): Selbstwahrnehmung = Items 1, 2, 5, 8; Beziehungsmodell = Items 3, 7, 9, 12; Kontaktgestaltung = Items 4, 6, 10, 11. Die Abbildung wurde am 2026-11-05 aus dem Original-PDF abgelesen; die Zuordnung ist inhaltlich plausibel (Selbstwahrnehmung: Identität/Affekttoleranz, Beziehungsmodell: Vertrauen/Objektwahrnehmung, Kontaktgestaltung: Selbstwert/Kontaktaufnahme) und bleibt bis zu einer Rückmeldung der Autor:innen als abgelesen gekennzeichnet. Primäre Auswertung bleibt der Globalwert.

### Lizenz

> **Wichtig:** Die Rechte an Instrument und Item-Formulierungen verbleiben bei den Autor:innen bzw. beim Verlag.

- Quelle: Ehrenthal JC, Dinger U, Schauenburg H, Horsch L, Dahlbender RW, Gierk B. *Entwicklung einer Zwölf-Item-Version des OPD-Strukturfragebogens (OPD-SFK)*. Z Psychosom Med Psychother 2015; 61(3):262–274. [doi:10.13109/zptm.2015.61.3.262](https://doi.org/10.13109/zptm.2015.61.3.262)
- Verlagsrechte: © 2015 Vandenhoeck & Ruprecht GmbH & Co. KG, Göttingen. Der Artikel ist beim Verlag als Open Access verfügbar; eine explizite Creative-Commons-Lizenz ist dort nicht ausgewiesen.
- Nutzungsstatus laut DIZ-Implementierungsliste PCOR-MII: **frei verfügbar, nach erfolgter Rücksprache mit den Autor:innen**. Nachnutzende müssen die Nutzungsbedingungen für den eigenen Anwendungsfall eigenständig prüfen.
- Nur der PCOR-MII-eigene FHIR-Inhalt (Profile, Codes, Kodierung) unterliegt der Repository-Lizenz (CC-BY-4.0). Die Bedingungen sind maschinenlesbar im `copyright`-Element hinterlegt.

Hinweise zum Lebenszyklus von `Questionnaire` zu `QuestionnaireResponse` siehe [Anwendung](Implementation.html); alle Artefakte unter [Artefakte](artifacts.html).
