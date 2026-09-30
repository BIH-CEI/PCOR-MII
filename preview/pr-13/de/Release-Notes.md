# Release Notes - PCOR-MII Implementation Guide v0.2.0

## Release Notes

### Versionierung

Dieser IG folgt [Semantic Versioning 2.0.0](https://semver.org/):

* **MAJOR** — inkompatible Änderungen an normativem Inhalt (Item-Struktur, `linkId`s, Terminologie-Bindungen)
* **MINOR** — neue Questionnaires, Items, Beispiele oder abwärtskompatible Verbesserungen
* **PATCH** — Korrekturen von Fehlern in normativem Inhalt (falsche Codes, fehlerhafte Constraints)

Versionen `0.x.y` kennzeichnen die frühe Entwicklung — die Spezifikation ist noch nicht stabil. Version `1.0.0` markiert das erste stabile Release nach fachlicher Abstimmung und formaler Veröffentlichung.

Jede Änderung ist einer der folgenden Kategorien zugeordnet:

* **`feature`** — neuer Inhalt (Questionnaires, Items, ValueSets, Beispiele)
* **`improve`** — Verfeinerung oder Erweiterung bestehenden normativen Inhalts
* **`fix`** — Korrektur von Fehlern in normativem Inhalt
* **`documentation`** — Dokumentationsänderungen ohne Auswirkung auf normative Aspekte

-------

### Unveröffentlicht

**`feature`** ANSOCQ-2 um eine `de`-Ebene ergänzt: orthografisch und grammatisch bereinigte deutsche Fassung neben der validierten `de-CH`-Übersetzung, ausdrücklich als nicht-validiert gekennzeichnet. Dabei ein **editorialer Druckfehler der Schweizer Vorlage** eingeordnet (Stufe 1 der Körperteile: „bereit an … zunehmen“ statt „zuzunehmen“): `de-CH` bleibt bewusst unverändert, weil es abbildet, was den Befragten vorlag — korrigiert wird ausschließlich in `de`

**`improve`** ANSOCQ-2 auf Englisch als Primärsprache umgestellt (ADR-005): `item.text` und die zehn Antwortkonzepte tragen den englischen Originalwortlaut aus Rieger et al. 2002, die Schweizer Fassung hängt als `de-CH`-Übersetzung bzw. -Designation daran

**`documentation`** ANSOCQ-2: Wortlaut und Nummerierung gegen den im Volltext abgedruckten Originalbogen verifiziert. Zwei Fassungen aufgeklärt — Rieger 2000 mit 23 Items, Rieger 2002 mit 20; die deutsche Übersetzung folgt der 20-Item-Revision, die Nummern 3 und 14 gelten in beiden Sprachen

**`documentation`** ANSOCQ-2: Auswahllogik und Nummerierung verifiziert — Pauli et al. (**J Eat Disord** 2017) nennen `item 3` als hochladend auf Faktor „weight gain and control" und `item 14` auf Faktor „attitudes and feelings"; die „Skalen" der DIZ-Angabe sind damit die Faktoren der deutschen Validierung. Dazu die Vergleichsarbeit von Wietersheim & Hoffmann (2011) als Kontext zur Instrumentenwahl ergänzt

**`documentation`** SSUK-2: Itemnummerierung verifiziert statt nur festgelegt — Müller, Mehnert & Koch (**Z Med Psychol** 2004) belegen in Tabelle 2 Item 14 („aufmuntert oder tröstet") und Item 10 („Auswirkung der Erkrankung herunterspielt"). Langfassung umfasst 26 Items (17 Positive Unterstützung + 9 Belastende Interaktion)

**`fix`** ACE: Wortlaut aller fünf Items gegen die deutsche Fassung ACE-D verifiziert — wortgleich; die Anführungszeichen um „high" in `ace5` an die typografische Form des Originals angeglichen. Nummerierung bestätigt: `ace1`–`ace5` sind die Items 1–5 des zehnteiligen Bogens

**`fix`** EDE-Q6: Wortlaut aller sechs Items und der Antwortskala gegen die autorisierte deutsche Übersetzung (Hilbert & Tuschen-Caffier, dgvt-Verlag 2016) verifiziert — wortgleich. Quellenkorrektur: Die DIZ-Liste nennt die **Diagnostica**-Evaluation von 2007, maßgeblich für den Wortlaut ist die dgvt-Ausgabe

**`documentation`** ADR-006: Der EDE-Q6-Wortlaut wird aufgenommen, gestützt auf die freie Bereitstellung des Fragebogens durch den Verlag selbst; der Rechtevorbehalt der Publikation bleibt im `copyright` ausgewiesen, eine Bestätigung der Rechteinhaberin wird angestrebt. Trägt ausdrücklich nicht für GI-PS

**`documentation`** EDE-Q6: Auswahllogik verifiziert — die vier Skalen-Items sind je eines pro Subskala (Restraint, Eating Concern, Weight Concern, Shape Concern); damit sind die `linkId`s als Original-EDE-Q-Nummern belegt

**`feature`** ConceptMap `pcor-cm-erq-s-linkids`: bildet die sequenziellen Dictionary-Variablen-IDs des ERQ auf die FHIR-`linkId`s ab. Nötig wegen einer Kollision — `erq6` existiert in beiden Systemen und bezeichnet dort verschiedene Items

**`documentation`** Quellenlage aller AN-Instrumente verifiziert: Entwicklungs- und Übersetzungspaper je Instrument aufgelöst und in `copyright` sowie auf den Seiten nachgetragen. Zwei Korrekturen — die **SSUK** ist die deutsche Adaptation der englischen **Illness-specific Social Support Scale** (Revenson et al. 1991), kein deutsches Original; beim **ANSOCQ-2** verweist die DIZ-Liste auf das Stadienmodell (Prochaska & DiClemente 1982) statt auf das Instrument (Rieger et al. 2000). Außer dem ERQ-S ist keiner der Zuschnitte eine offizielle Kurzform

**`feature`** ERQ-S als offizielle ERQ-Kurzform identifiziert und mit validiertem Scoring modelliert: zwei Subskalen-`ObservationDefinition`s (Neubewertung `erq1`+`erq3`+`erq8`, Unterdrückung `erq2`+`erq6`+`erq9`, je 3–21) sowie FHIRPath-`variable`s im Questionnaire. US-Normwerte bewusst nicht als Referenzintervalle hinterlegt

**`fix`** ACE: item-genaue LOINC-Codes ergänzt (`82814-5` bis `82818-6` aus den Panel-Komponenten von `82813-7`) — der Panel-Code selbst bleibt dem 5-Fragen-Zuschnitt weiterhin nicht zugewiesen

**`feature`** AN-Instrumente ERQ-S, EDE-Q6, ANSOCQ-2, SSUK-2 und ACE als PCOR-MII-eigene Questionnaires vorbereitet — vorläufig zum Testen, spätere Aufnahme ins MII-PRO-Modul möglich; ohne Vollinstrument-Codes und (außer beim ERQ-S) ohne Scores, da für die Zuschnitte keine validierte Vorschrift vorliegt (ADR-003)

**`documentation`** Neue Seiten: AN-Entitätsseite, je eine Seite pro AN-Instrument sowie Designentscheidungen (Entscheidungslog aus `docs/decisions.md` in den IG umgezogen)

**`documentation`** ADR-004: Score-Artefakte gehören der Zuständigkeit nach ins MII-PRO-Modul. Ein lokaler Katalogcode ist aber zulässig, wo weder LOINC noch SNOMED CT noch der MII-Katalog einen führt — das Blueprint-Profil bindet `code.coding` nicht, sondern sliced offen, sodass ein künftiger MII-Code ergänzt statt ersetzt wird

**`improve`** Designentscheidungen zusätzlich maschinenlesbar in den Questionnaires abgelegt (`designNote`-Extension, bogen- und itemweit)

**`feature`** PROPr (PROMIS-Preference Utility Score) als `ObservationDefinition` `PcorObsDefProprUtility` samt lokalem Score-Katalog `pcor-score-catalogue` — konform zum `mii-pr-pro-score-blueprint`, Wertebereich −0,022 bis 1,0, ohne ausführbare Berechnung (MDR-Abgrenzung). Vorläufig hier gepflegt; Zuständigkeit liegt beim MII-PRO-Modul

**`documentation`** PROMIS-16-Seite korrigiert: drei statt zwei Scores, PROPr nutzt nur sieben der acht Domänen (ohne Anxiety), kein Schmerzintensitäts-Item, Item-Überlapp mit PROMIS-29+2 sind 11 statt 14 Items; die Zusage „Scoring in MII PRO 2026.5.0" ist upstream inzwischen Roadmap 2027

**`improve`** DEM mehrsprachig nach MII-PRO-Konvention: 19 Items tragen den englischen PaRIS-Originalwortlaut als `item.text` mit der Schweizer Fassung als `de-CH`-`translation`; sechs DEM-eigene Antwortskalen englische Displays mit `de-CH`-Designation. Der übernommene Wortlaut bleibt dabei unverändert (ADR-005)

**`documentation`** ADR-005: Übernommener Wortlaut wird nicht eingedeutscht — Erhalt der TRAPD-Validierung, Nachnutzung statt Adaption; Schweizer Herkunft wird stattdessen als `de-CH` ausgewiesen

**`fix`** Rechteangaben ergänzt: DEM hatte bisher kein `copyright`-Element — jetzt mit OECD-PaRIS-Nennung, Link auf den Originalbogen und dem von der OECD vorgeschriebenen Übersetzungs-Disclaimer; MHI und DEM weisen zusätzlich den offenen GI-PS-Weitergabevorbehalt aus

**`improve`** MII-PRO-Abhängigkeit auf 2026.7.0 angehoben (GAD-7 im PHQ-D-Namespace)

**`feature`** Neue Seite GAD-7; PHQ-Übersicht um GAD-7, PHQ-4 und die ConceptMap `mii-cm-pro-gad-7-linkids` ergänzt

**`feature`** EXPECT und IPQ-S als PCOR-MII-eigene Ressourcen modelliert (beide nicht im MII-PRO-Modul); EXPECT bewusst ohne Gesamtscore, IPQ-S ausdrücklich als einzelne B-IPQ-Ursachenfrage und nicht als B-IPQ

**`documentation`** Neue Instrumentenübersicht über alle drei Entitäten und eigene PSS-Seite

**`documentation`** Neue Seiten für die PCOR-MII-eigenen Instrumente OPD-SFK, WAI und GSLTPAQ

**`improve`** MII-PRO-Abhängigkeit auf 2026.6.0 angehoben (rein additiv gegenüber 2026.5.2: neue Questionnaires EURONET-SOMA, ISR-Z, PC-PTSD, SCOFF, SSD-12, WI-7 samt Score-`ObservationDefinition`s)

**`feature`** OPD-SFK, WAI und GSLTPAQ als PCOR-MII-eigene Instrumente (nicht im MII-PRO-Modul enthalten)

### v0.2.0 (2026-08-05) — PHQ-Familie

**`improve`** MII-PRO-Abhängigkeit auf 2026.5.2 angehoben (PHQ-9 neues `linkId`-Schema, PHQ-15, Migrations-ConceptMap)

**`feature`** Neue Seite PHQ-9

**`feature`** Neue PHQ-Übersicht mit `linkId`-Migrationstabelle (2026.4.x → ab 2026.5.0)

**`documentation`** PHQ-15 und PHQ-9 als schlanke Referenzseiten (Details upstream statt dupliziert); toten Simplifier-Link entfernt

**`fix`** MHI: falschen Hinweis „GIPS13 nicht in PSS" entfernt — GIPS13 ist in allen drei Szenarien enthalten

### v0.1.0 (2026-06-04) — Initial Draft

**`feature`** Erstaufbau des PCOR-MII Implementation Guide mit BIH-Corporate-Design-Template, Mehrsprachigkeit (Deutsch als Standardsprache, Englisch als Übersetzung) und CI/CD-Pipeline (GitHub Actions → GitHub Pages)

**`feature`** Beispiel-Questionnaire `PcorExampleQuestionnaire` als Vorlage (Item-Typen `group`, `choice`, `date`, `string`)

**`documentation`** Seitenstruktur: Startseite, Fragebögen, Anwendung (QuestionnaireResponse, Population, Extraktion), Release Notes

**`documentation`** CC-BY-4.0-Lizenz

