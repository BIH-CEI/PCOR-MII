# UKHD-EDP (Essstörungspathologie, metadata-only) - PCOR-MII Implementation Guide v0.3.0

## UKHD-EDP (Essstörungspathologie, metadata-only)

**UKHD-EDP** erfasst **Essstörungspathologie** über elf Items auf einer sechsstufigen Zustimmungsskala. Der Block gehört zur AN-Batterie und stammt aus dem Item Level Dictionary (Entität AN, Kategorie DCH, Variablen `edp1`–`edp11`).

> 

### ⚠️ Metadata-only

Dieser Bogen bildet **bewusst keinen Originalwortlaut** ab. Abgebildet sind Struktur, `linkId`s, Itemzahl, Antwortformat und Wertebereiche. Die Item-Texte auf dieser Seite und im Questionnaire sind **neutrale, selbst formulierte Beschreibungen des erfragten Konstrukts** — sie sagen, **was** erfragt wird, nicht **wie**. Die Antwortstufen sind neutral als „Stufe 1" bis „Stufe 6" benannt. Muster: [WAI](WAI.md).

### Warum metadata-only — zwei Gründe, die unabhängig voneinander tragen

**Erstens: vermutlich ein EDI-2-Zuschnitt.** Das `UKHD`-Präfix legt eine Eigenentwicklung des Standorts nahe, aber die elf Items bilden je genau ein Konstrukt ab — und die Liste entspricht den **elf Subskalen des EDI-2** (**Eating Disorder Inventory-2**, Garner 1991; deutsche Fassung Paul & Thiel, Hogrefe):

| | |
| :--- | :--- |
| `edp1` | Schlankheitsstreben |
| `edp2` | Bulimie |
| `edp3` | Unzufriedenheit mit dem Körper |
| `edp4` | Ineffektivität |
| `edp5` | Perfektionismus |
| `edp6` | Misstrauen**(invers formuliert)** |
| `edp7` | interozeptive Wahrnehmung |
| `edp8` | Angst vor dem Erwachsenwerden**(invers)** |
| `edp9` | Askese |
| `edp10` | Impulsregulation |
| `edp11` | soziale Unsicherheit**(invers)** |

Das ist dasselbe Zuschnittmuster wie bei [EDE-Q6](EDE-Q6.md), [ANSOCQ-2](ANSOCQ-2.md) und [SSUK-2](SSUK-2.md): ein Item je Skala.

**Ein zweites Indiz liefert das Antwortformat:** eine **sechsstufige** Zustimmungsskala. Das EDI-2 nutzt genau sechs Stufen — die übrigen Instrumente der AN-Batterie nutzen vier, fünf oder sieben. Das ist kein Beweis, aber es passt.

Das EDI-2 ist in der deutschen Fassung ein **Hogrefe-Testverfahren**, also verlegte Ware wie das BDI-II. Für das BDI-II zieht das MII-PRO-Modul genau diese Konsequenz: **„commercial (Pearson) — data + scoring only, not displayable."**

**Zweitens: auch ohne das fehlt jede dokumentierte Freigabe.** Die DIZ-Implementierungsliste führt ausschließlich publizierte Instrumente; weder „EDI" noch `UKHD-EDP` kommen dort vor. Für entworfene Item-Batterien der Standorte gilt nach dem [offenen Punkt](Designentscheidungen.md): ohne Freigabe kein Wortlaut.

**Das ist der eigentliche Grund, jetzt zu entscheiden statt zu warten.** Metadata-only ist unter **beiden** Lesarten richtig — ist es das EDI-2, verbietet der Verlagsvorbehalt den Wortlaut; ist es ein Standort-Original, fehlt die Freigabe. Die Entscheidung hängt nicht daran, die Identifikation vorher aufzulösen.

### Was nicht bestätigt ist

Die Zuordnung zum EDI-2 stützt sich auf **Inhalt und Antwortformat**, nicht auf einen Wortlautabgleich mit dem deutschen EDI-2-Bogen. Das ist der erste zu prüfende Schritt, und erst danach lassen sich zwei Folgefragen beantworten:

* ob der Bogen einen `Questionnaire.code` bekommt,
* ob die `linkId`s nach [ADR-008](Designentscheidungen.md) Regel 1 auf die **EDI-2-Itemnummern** umzustellen sind. Derzeit tragen sie die Dictionary-Variablen-IDs, weil eine Instrumenten-Nummerierung nicht bekannt ist.

### Artefakte

* **Fragebogen:** [Questionnaire-UKHDEDP](Questionnaire-UKHDEDP.md)
* **CodeSystem:** [ukhd-edp-stufe-6](CodeSystem-ukhd-edp-stufe-6.md) — sechs Stufen, **neutral benannt**, mit `ordinalValue` 1–6
* **ValueSet:** [ukhd-edp-stufe-6-vs](ValueSet-ukhd-edp-stufe-6-vs.md)

Eine Beispielantwort gibt es bewusst **nicht**: Sie würde Antwortwerte zu Items zeigen, deren Wortlaut nicht abgebildet ist, und damit mehr Verwirrung stiften als Nutzen.

### Canonical

`https://bih-cei.github.io/PCOR-MII/Questionnaire/UKHDEDP`

### Items

| | | |
| :--- | :--- | :--- |
| `edp1` | `edp1` | Angst vor einer Gewichtszunahme |
| `edp2` | `edp2` | eingeschränkte Nahrungsaufnahme vor anderen, Essanfälle im Alleinsein |
| `edp3` | `edp3` | Unzufriedenheit mit einzelnen Körperstellen |
| `edp4` | `edp4` | geringe Selbstbewertung |
| `edp5` | `edp5` | Anspruch, der oder die Beste zu sein |
| `edp6` | `edp6` | Nähe in Beziehungen zu anderen |
| `edp7` | `edp7` | Schwierigkeit, eigene Gefühle zu benennen |
| `edp8` | `edp8` | Haltung zum Erwachsensein |
| `edp9` | `edp9` | Bewertung von Genuss beim Essen als Schwäche |
| `edp10` | `edp10` | spontane Äußerungen, die später bereut werden |
| `edp11` | `edp11` | Kontaktfreude im Umgang mit anderen |

Auch die Displays im CodeSystem [pcor-item-dictionary](CodeSystem-pcor-item-dictionary.md) sind für diese elf Variablen **neutralisiert** — sonst hätte das Dictionary veröffentlicht, was der Questionnaire zurückhält. Das ist leicht zu übersehen, weil die Displays dort sonst aus dem Itemtext generiert werden.

### Kein Score

Das EDI-2 wertet über Subskalen aus, die aus mehreren Items bestehen. **Ein Item je Subskala bildet die Subskala nicht ab** — dieselbe Logik wie bei [EDE-Q6](EDE-Q6.md), [ANSOCQ-2](ANSOCQ-2.md) und [SSUK-2](SSUK-2.md), festgehalten in [ADR-003](Designentscheidungen.md) Punkt 3. Die Antwortcodes tragen `ordinalValue` 1–6, damit eine spätere Auswertung möglich bleibt.

### Einordnung im Erhebungsplan

Der [Erhebungsplan](Essstoerungen.md) führt für die Domäne **Eating Disorder Psychopathology** 17 Items unter dem Eintrag „EDEQ/EDP (UKHD)". Das sind **zwei Instrumente, nicht eines**: die sechs Items des [EDE-Q6](EDE-Q6.md) (Recall 28 Tage, Häufigkeitsskala 0–6) und diese elf (zeitlose Zustimmung, sechsstufig). Verschmelzen lassen sie sich nicht — unterschiedlicher Recall und unterschiedliches Antwortformat.

Hinweise zum Lebenszyklus von `Questionnaire` zu `QuestionnaireResponse` siehe [Anwendung](Implementation.md); alle Artefakte unter [Artefakte](artifacts.md).

