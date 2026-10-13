Diese Seite kündigt an, **was sich mit dem Wechsel auf das MII-PRO-Modul 2027 ändert** — damit Implementierer nicht erst im Migrations-Release davon erfahren. Grundlage ist der veröffentlichte Ballot-Stand `de.medizininformatikinitiative.kerndatensatz.pros` **2027.0.0-ballot.1** (Stand 2026-10; der Vergleich läuft gegen die aktuelle Abhängigkeit **2026.7.0**). Bis zum finalen 2027-Release kann sich alles hier noch ändern — genau dafür ist ein Ballot da.

> **Noch ist nichts davon wirksam.** PCOR-MII erbt weiterhin von 2026.7.0 mit SDC 3.0.0; alle Beispiele und der [Validierungs-Container](Bereitstellung.html) sind darauf gepinnt. Der Umstieg wird ein eigenes, als `breaking` markiertes Release.

### Was der Ballot ändert — und was das für PCOR-MII heißt

| Änderung upstream (2027-Ballot) | Folge für PCOR-MII |
|---|---|
| **SDC 3.0.0 → 4.0.0** | Unsere Questionnaires referenzieren `sdc-questionnaire` unversioniert — die Auflösung springt mit der Abhängigkeit um. SDC 4.0.0 bringt neue **Invarianten** mit: `sdc-base-1`/`sdc-base-2` (jedes `answerOption.valueCoding` braucht `code` oder `display`, und `code` erzwingt `system`), `sdc-behave-2` (`enableWhen` und `enableWhenExpression` schließen sich aus), `sdc-rend-1` (`page`-Control nur auf Wurzelebene). Unsere Bögen erfüllen das heute schon — wir binden Antworten über `answerValueSet`, nicht `answerOption` —, aber der Migrations-PR validiert das komplett durch. |
| **`itemWeight` statt `ordinalValue`** — die Antwortgewichte hängen im Ballot als `http://hl7.org/fhir/StructureDefinition/itemWeight` (R5-Backport) an den `answerOption`-Codings; 17 Upstream-Dateien nutzen das bereits | **Die größte Migrationsaufgabe.** PCOR-MII trägt `ordinalValue` heute in den Antwort-CodeSystems (per `^property`); beim Umstieg ziehen die Gewichte auf `itemWeight` um. Das ist dieselbe Richtung wie unsere Ballot-Einreichung **HDB-972** — der Umstieg wartet bewusst auf das finale 2027-Release statt zwei Konventionen parallel zu pflegen. Betroffen sind alle Bögen mit gewichteten Antwortskalen (u. a. DEM, MHI, EDE-Q6, OPD-SFK, UKHD-PT). |
| **EORTC QLQ-C30 Varianten A/B entfallen** (`eortc-qlq-c30-variant-a`/`-b`) | Keine — PCOR-MII nutzt die Varianten nicht. |
| **Neues LOINC-Supplement** `mii-cs-pro-loinc-supplement` | Prüfen, ob unsere LOINC-Verweise (ACE-Items, PHQ-Antwortcodes) darauf umgestellt werden sollen. |
| **QR-Profil erweitert**: `translation`-Extension jetzt auch auf `item.text` und `item.answer.valueCoding.display` der `QuestionnaireResponse`; `ordinalValue`-Slice auf `item.answer.extension` | Antworten **dürfen** künftig mehrsprachige Item-Texte tragen; für unsere Beispiele bleibt das optional (sie führen bewusst keine Itemtexte). Der `ordinalValue`-Slice am Answer ist zu beobachten — er steht in Spannung zur `itemWeight`-Umstellung und ist ein Kandidat für einen Ballot-Kommentar. |
| **Neue Paket-Abhängigkeiten**: `hl7.fhir.uv.crmi 2.0.0`, `hl7.fhir.uv.extensions.r4 5.2.0`, `de.basisprofil.r4 1.6.0`, `de.gematik.isik 6.0.0`, `hl7.terminology.r4 7.3.0`, `xver-r5.r4 0.1.0` | Build- und Container-Umstellung (`sushi-config.yaml`, `docker/`): mehr Pakete im Preload, längere Cold-Builds. `$package` ([Bereitstellung](Bereitstellung.html), Weg 4) profitiert von CRMI 2.0.0. |

### Was PCOR-MII beim Umstieg selbst ändert

1. **Abhängigkeit und Pins:** `sushi-config.yaml` auf das finale 2027-Release, alle `|2026.7.0`-Pins in den Beispielantworten, der [Validierungs-Container](Bereitstellung.html) (Dockerfile, compose, `application.yaml`) und die Validator-Kommandos auf [Validierung](Validierung.html).
2. **`ordinalValue` → `itemWeight`** in den eigenen Antwort-CodeSystems — mit unveränderten Gewichten; die Entscheidungen, *welche* Skalen überhaupt Gewichte tragen (nur ordinale — siehe [UKHD-Zusatzitems](UKHD-Zusatzitems.html)), bleiben bestehen.
3. **Komplettvalidierung** aller 20 Bögen, >30 Antworten und drei Bundles gegen SDC 4.0.0.
4. **Upstream-Abgleich der AN-Langformen:** Mit dem 2027-Zyklus ist auch die geplante PR der AN-Langformen gegen das PRO-Modul neu zu bewerten (Instrument- und Score-Katalog-Einträge, Literaturreferenzen).

### Was ausdrücklich *nicht* ansteht

- **Kein Wechsel auf FHIR R5.** Das Modul bleibt R4; `itemWeight` und `artifact-version` sind R5-Backports als Extensions.
- **Keine Änderung an `linkId`s oder Wortlauten** der PCOR-MII-Bögen durch den Umstieg — Bestandsantworten bleiben gültig, weil die `questionnaire`-Referenzen versioniert sind.
- **Die PHQ-SADS-Recall-Frage** (geteilte Items, 4 vs. 2 Wochen) ist Roadmap 2027 des PRO-Moduls und wird dort gelöst, nicht hier.

Änderungen am Ballot-Stand werden auf dieser Seite nachgeführt; was umgesetzt ist, wandert in die [Release Notes](Release-Notes.html).
