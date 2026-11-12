# Kommende Änderungen (2027 / SDC 4.0.0) - PCOR-MII Implementation Guide v0.9.0

## Kommende Änderungen (2027 / SDC 4.0.0)

Diese Seite begleitet **den Wechsel von PCOR-MII auf das MII-PRO-Modul 2027**. Mit Release 0.9.0 ist der Umstieg vollzogen: PCOR-MII erbt von `de.medizininformatikinitiative.kerndatensatz.pros` **2027.0.0-ballot.2** (SDC 4.0.0, ISiK 6.0.0) statt von 2026.7.0. Die Seite hält fest, was damit erledigt ist und was bis zum **finalen 2027-Release** noch offen bleibt — ein Ballot kann sich bis dahin noch ändern, genau dafür ist er da.

> **Stand 0.9.0:** Abhängigkeit, alle Pins, der [Validierungs-Container](Bereitstellung.md) und die Validator-Kommandos auf [Validierung](Validierung.md) stehen auf 2027.0.0-ballot.2; die Antwortgewichte heißen `itemWeight`. Der Schritt auf das finale 2027-Release ist ein reiner Versionswechsel, sofern der Ballot-Stand hält.

### Was der Umstieg geändert hat

| | |
| :--- | :--- |
| **SDC 3.0.0 → 4.0.0**— neue Invarianten`sdc-base-1`/`sdc-base-2`(jedes`answerOption.valueCoding`braucht`code`oder`display`, und`code`erzwingt`system`),`sdc-behave-2`(`enableWhen`und`enableWhenExpression`schließen sich aus),`sdc-rend-1`(`page`-Control nur auf Wurzelebene) | Erfüllt. Die inline`answerOption`s (SNOMED-Ja/Nein nach[ADR-013](Designentscheidungen.md)) tragen`system`und`code`; alle übrigen Antworten binden über`answerValueSet`. Komplettvalidierung mit dem IG Publisher gegen SDC 4.0.0 ohne neue Fehler. |
| **`itemWeight` statt `ordinalValue`**— Gewichte als Extension an`answerOption`(fremde Terminologie) oder als Concept-Property`http://hl7.org/fhir/concept-properties#itemWeight`am eigenen CodeSystem; das Modul schreibt sie nur noch über die RuleSets`WeightedOption`,`WeightedConcept`,`ItemWeightProperty` | Umgesetzt: 15 Antwort-CodeSystems, 72 Konzepte, Gewichte und Codes unverändert; die Score-Ausdrücke von OPD-SFK und ABQ rechnen mit`.weight().sum()`. Dieselbe Richtung wie unsere Ballot-Einreichung**HDB-972**. Welche Skalen überhaupt Gewichte tragen (nur ordinale — siehe[UKHD-Zusatzitems](UKHD-Zusatzitems.md)), blieb unverändert. |
| **PROMIS Scale v1.2 – Global Health**neu im Modul (`mii-qst-pro-promis-global-health`, 10 Items, Status`draft`) | [`PROMISGH`](Questionnaire-PROMISGH.md)ist per`derivedFrom`als 2-Item-Zuschnitt davon ausgewiesen;`linkId`-Angleichung und Fortbestand des lokalen Bogens sind offen (siehe[PROMIS](PROMIS.md)). |
| **PROMIS-29 bereinigt**(HDB-1007/-1008/-1009): Gewichte, T-Score-Tabellen und LOINC-Codes der Scores korrigiert, Varianten`-de`und`-minimal`stillgelegt (bleiben als leere Hüllen auflösbar) | Keine Änderung an PCOR-MII-Artefakten; die Manifeste pinnen`mii-qst-pro-promis-29|2027.0.0-ballot.2`. Seite[PROMIS-29](PROMIS-29.md)nachgezogen. |
| **QR-Profil**:`translation`-Extension auch auf`item.text`und`item.answer.valueCoding.display`; der im ersten Ballot noch enthaltene`ordinalValue`-Slice am Answer ist in ballot.2 nicht mehr da | Antworten**dürfen**mehrsprachige Item-Texte tragen; unsere Beispiele führen bewusst keine. Der Ballot-Kommentar zum`ordinalValue`-Slice erübrigt sich. |
| **EORTC QLQ-C30 Varianten A/B entfallen**(`eortc-qlq-c30-variant-a`/`-b`) | Keine — PCOR-MII nutzt die Varianten nicht. |
| **Paket-Abhängigkeiten**:`hl7.fhir.uv.extensions.r4 5.2.0`,`de.basisprofil.r4 1.6.0`,`de.gematik.isik 6.0.0`,`hl7.terminology.r4 7.3.0`,`xver-r5.r4 0.1.0`,`crmi 2.0.0` | `sushi-config.yaml`pinnt SDC 4.0.0 und ISiK 6.0.0 passend zum Modul, der Rest kommt transitiv; der Container lädt entsprechend mehr Pakete. |

### Was bis zum finalen 2027-Release offen bleibt

1. **Versionswechsel**`2027.0.0-ballot.2`→ final:`sushi-config.yaml`, alle`|2027.0.0-ballot.2`-Pins (Manifeste, Beispielantworten, Bundles), Container (`docker/`) und Validator-Kommandos — derselbe Lauf wie beim Umstieg, ohne Strukturänderung.
1. **LOINC-Supplement**`mii-cs-pro-loinc-supplement`: prüfen, ob unsere LOINC-Verweise (ACE-Items, PHQ-Antwortcodes) darauf umgestellt werden sollen.
1. **PROMIS-GH**:`linkId`s nach[ADR-008](Designentscheidungen.md)an die Upstream-IDs angleichen oder den lokalen Bogen zugunsten der Modul-Definition aufgeben — hängt am Erhebungsplan (2 oder 10 Items).
1. **Upstream-Abgleich der AN-Langformen:**Mit dem 2027-Zyklus ist auch die geplante PR der AN-Langformen gegen das PRO-Modul neu zu bewerten (Instrument- und Score-Katalog-Einträge, Literaturreferenzen).

### Was ausdrücklich nicht ansteht

* **Kein Wechsel auf FHIR R5.** Das Modul bleibt R4; `itemWeight` und `artifact-version` sind R5-Backports als Extensions.
* **Keine Änderung an `linkId`s oder Wortlauten** der PCOR-MII-Bögen durch den Umstieg — Bestandsantworten bleiben gültig, weil die `questionnaire`-Referenzen versioniert sind. (Die einzige Ausnahme steht oben als offener Punkt: PROMIS-GH.)
* **Die PHQ-SADS-Recall-Frage** (geteilte Items, 4 vs. 2 Wochen) ist Roadmap 2027 des PRO-Moduls und wird dort gelöst, nicht hier.

Änderungen am Ballot-Stand werden auf dieser Seite nachgeführt; was umgesetzt ist, steht in den [Release Notes](Release-Notes.md).

