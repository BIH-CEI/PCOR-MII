### Versionierung

Dieser IG folgt [Semantic Versioning 2.0.0](https://semver.org/):

- **MAJOR** — inkompatible Änderungen an normativem Inhalt (Item-Struktur, `linkId`s, Terminologie-Bindungen)
- **MINOR** — neue Questionnaires, Items, Beispiele oder abwärtskompatible Verbesserungen
- **PATCH** — Korrekturen von Fehlern in normativem Inhalt (falsche Codes, fehlerhafte Constraints)

Versionen `0.x.y` kennzeichnen die frühe Entwicklung — die Spezifikation ist noch nicht stabil. Version `1.0.0` markiert das erste stabile Release nach fachlicher Abstimmung und formaler Veröffentlichung.

Jede Änderung ist einer der folgenden Kategorien zugeordnet:

- **`feature`** — neuer Inhalt (Questionnaires, Items, ValueSets, Beispiele)
- **`improve`** — Verfeinerung oder Erweiterung bestehenden normativen Inhalts
- **`fix`** — Korrektur von Fehlern in normativem Inhalt
- **`documentation`** — Dokumentationsänderungen ohne Auswirkung auf normative Aspekte

---

### Unveröffentlicht

*(noch keine Einträge)*

### v0.3.0 (2026-09-30) — AN-Batterie, Designentscheidungen und Item-Zuordnung

**`documentation`** Bei allen fünf AN-Instrumenten ist jetzt in `designNote`, `Questionnaire.description` und auf der Instrumentenseite festgehalten, dass der **PCOR-MII-Code eines Items die Dictionary-Variable ist** — ein zweites lokales CodeSystem für dieselben Items gibt es bewusst nicht. Der Code bezeichnet das **Erhebungsfeld**, nicht die Itemnummer. Beim [ERQ-S](ERQ-6.html) fällt beides auseinander, und das ist die einzige Falle dieser Art im Projekt: Dictionary `erq4`, `erq5` und `erq6` liegen auf den ERQ-Items **6, 8 und 9**. Weil `erq6` in beiden Spalten vorkommt und dort Verschiedenes bezeichnet, fällt eine Fehlzuordnung nicht auf — die Seite zeigt die Zuordnung deshalb als Tabelle. Beim ACE stehen Dictionary-Variable und LOINC-Code nebeneinander; genau dafür ist `item.code` `0..*`

**`improve`** ERQ-S, EDE-Q6 und ACE auf **Englisch als Primärsprache** umgestellt (ADR-005) — alle drei haben ein englisches Original, waren aber deutsch-primär ohne Übersetzungsebene. `item.text` trägt jetzt den Originalwortlaut, die deutsche Fassung hängt als `translation` mit `lang = de` daran; beim EDE-Q6 zusätzlich die sieben Antwortkonzepte mit `designation`. Damit sind fünf der dreizehn Bögen englisch-primär (dazu DEM und ANSOCQ-2). Deutsch-primär bleiben die deutsch entwickelten und die projekteigenen Instrumente — beim [SSUK-2](SSUK-2.html) ausdrücklich begründet, weil sich die Items nicht als wörtliche ISSS-Items belegen lassen.

Die englischen Wortlaute sind **beschafft, nicht erinnert**: ERQ aus dem Originalbogen des [Stanford Psychophysiology Laboratory](https://spl.stanford.edu/resources), EDE-Q aus dem autorisierten Bogen EDE-Q 6.0 (© Fairburn and Beglin 2008, CREDO Oxford), ACE aus einem an Felitti et al. 1998 zitierenden Exemplar.

**Bei zwei Instrumenten verbessert das zugleich die Rechtelage**, weil sie nicht symmetrisch ist: Beim EDE-Q6 ist der englische Wortlaut frei bereitgestellt und der deutsche dgvt-verlegt; beim ACE ist das englische Original ein frei verwendetes Public-Health-Instrument, während die Freigabe der deutschen ACE-D-Fassung offen ist. Englisch primär verschiebt den jeweils heikleren Teil in eine Übersetzungsebene, statt ihn zum Hauptinhalt zu machen.

**`fix`** Zwei Funde beim Abgleich des EDE-Q6 gegen den Originalbogen. Item 12 heißt dort *„strong desire to lose weight“*, nicht „definite desire“ — die deutsche Fassung („starken Wunsch“) war richtig, meine frühere Notiz nicht. Und `edeq29`/`edeq30` sind im englischen EDE-Q 6.0 **gar nicht nummeriert**: Sie stehen in einem unnummerierten Schlussblock nach Item 28. Die Nummern stammen aus der deutschen Ausgabe; die `linkId`s folgen damit der deutschen Zählung, nicht dem Originalbogen. Beides jetzt im `designNote` und auf der Seite dokumentiert

**`documentation`** Wortlaut und Scoring des **ERQ-10** vollständig beschafft — englischer Originalbogen und autorisierte deutsche Fassung, je zehn Items. Die Langform wird nach ADR-008 **nicht in diesem Release** modelliert; gebraucht werden zunächst die Short Forms. Für den ERQ-S ist sie vor allem die Quelle des deutschen Wortlauts, den die Kurzform-Publikation nicht enthält

**`improve`** Zentrale Versionsverwaltung über RuleSets eingeführt (`input/fsh/rulesets/version.fsh`, Muster aus dem MII-PRO-Modul). Beim Release wird nur noch diese Datei angehoben. Vorher stand die Version in jeder Instanz hart drin — und war auseinandergelaufen: Der IG ging 0.1.0 → 0.2.0, während **alle 13 Questionnaires auf 0.1.0 stehen blieben**, darunter solche mit substanziell geändertem Inhalt (DEM: 19 Items auf Englisch als Primärsprache umgestellt; MHI: `copyright` und 46 `item.code`s ergänzt). Wer `canonical|0.1.0` gepinnt hatte, bekam für dieselbe Versionsangabe anderen Inhalt.

Dabei drei Lücken geschlossen, die vorher gar keine Version hatten: **26 CodeSystems und 27 ValueSets** (jetzt über `PR_CS_VS_Version`), die drei **ObservationDefinitions** (R4 hat dort kein `version`-Element — Backport über die `artifact-version`-Extension) und die eingebackenen ValueSet-**Expansions**, die ein `|0.1.0` am CodeSystem referenzierten, das dort nie deklariert war. Die Questionnaires deklarieren zusätzlich `versionAlgorithm = semver`, passend zur Versionierungsregel dieses IG.

Die sieben `QuestionnaireResponse`s referenzieren ihren Questionnaire jetzt **versioniert** (`…/Questionnaire/ERQ6|0.3.0`). Ohne Pin ist aus einer Antwort nicht ablesbar, welcher Wortlaut vorlag — bei mehreren Sprachebenen und bei Zuschnitten ist das die entscheidende Information. Validator nach der Umstellung: weiterhin 0 errors.

**`feature`** Dictionary-Variablen als `item.code` in allen zwölf PCOR-MII-Questionnaires hinterlegt (114 Items), gegen das neue generierte CodeSystem `pcor-item-dictionary` (`content = fragment`). Damit lässt sich ein flach erhobener Studiendatensatz maschinell auf die Instrumenten-Questionnaires verteilen. Der Mechanismus ist bewusst **nicht** der `linkId` und **nicht** eine ConceptMap: `linkId`s sind nur *innerhalb* eines Questionnaire eindeutig und können die Frage, zu welchem Instrument eine Variable gehört, grundsätzlich nicht beantworten — beim ERQ ordnet ein Abgleich über Namensgleichheit sogar still falsch zu. Ohne Code bleiben genau die Items, die keine Dictionary-Variablen sind: Gruppen-Items, berechnete Scores und PCOR-MII-eigene Hilfsitems wie die Einheitenauswahl `Q_WB151`/`Q_WB152` im MHI

**`documentation`** Fünf neue Designentscheidungen. **ADR-007**: Zwei unabhängige Übersetzungen werden zwei Questionnaires — ein Sprachtag behauptete eine sprachliche Varietät statt eines Validierungsunterschieds, ein Versionssprung behauptete Ablösung. **ADR-008**: Short Forms tragen Original-`linkId`s, ihr Wortlaut kommt aus der autorisierten Quelle der **Langform** (nicht aus der Kurzform-Publikation, die typischerweise nur Itemnummern nennt), und die Langform wird mitmodelliert, soweit beschaffbar. **ADR-009**: `derivedFrom` ist `canonical(Questionnaire)` und kann daher nicht auf einen Artikel zeigen; zwei Übersetzungen desselben Instruments sind Geschwister, nicht Eltern und Kind. **ADR-010**: sprachliche Anpassung nur als zusätzliche Ebene, mit vier getrennt behandelten Fällen — Helvetismus, Reform 1996, Getrennt-/Zusammenschreibung (nicht anfassen) und editorialer Druckfehler. **ADR-011**: Erhebungseinheit ist nicht Instrumenteneinheit — eigene Ressource nur für publizierte mehritemige Instrumente, Einzelitems in Sammelbögen

**`documentation`** Vier Rechte-Befunde aufgenommen, alle als offen markiert. **`UKHD-EDP`** ist trotz Standort-Präfix vermutlich kein Eigenbau, sondern ein EDI-2-Zuschnitt (je ein Item pro Subskala) — deutsch ein Hogrefe-Testverfahren, in der DIZ-Liste gar nicht geführt; die Zuordnung stützt sich auf Inhalt und Antwortformat, nicht auf einen Wortlautabgleich. Der Planungseintrag „EDEQ/EDP (UKHD)“ mit 17 Items sind damit **zwei** Instrumente, nicht eines. Die **deutsche ACE-D-Fassung ist nicht frei publizierbar** — das *Deutsche Ärzteblatt* druckt nur zwei von zehn Items und verweist für den Gesamtbogen auf den Rechteinhaber; das betrifft rückwirkend die fünf publizierten Items. Die **Standort-Itemgruppen** von UKHD, UKE und MHH führt die DIZ-Liste überhaupt nicht, 34 davon publiziert PCOR-MII bereits

**`fix`** ANSOCQ-2: Die Begründung der Einfachauswahl korrigiert. Rieger et al. 2002 erlauben ausdrücklich mehrere Feststellungen je Item und mitteln sie; Item 17 der Langform instruiert es sogar. Das frühere Argument, Mehrfachauswahl sprenge den Scorebereich 20–100, ist damit **zurückgezogen** — die Mittelung innerhalb des Items hält jedes Item bei 1–5. Einfachauswahl bleibt umgesetzt, aber als bewusste Abweichung vom Original, weil das Dictionary beide Items als „Single Answer“ führt

**`feature`** Beispieldatensatz für die AN-Batterie: fünf `QuestionnaireResponse`s und zwei ERQ-S-Score-`Observation`s als ein zusammenhängendes Szenario — dieselbe Beispiel-Patientin, die DEM und MHI schon nutzen, ein Erhebungstermin, gestaffelte Uhrzeiten. Die Antwortwerte sind begründet gewählt, nicht zufällig; ein durchgängig mittleres Profil hätte beim ERQ-S beide Subskalen-Summen auf denselben Wert gelegt und beim SSUK-2 die Gegenläufigkeit der Items verdeckt. Alle sieben mit dem FHIR-Validator geprüft: 0 errors

**`fix`** Beim Validieren ein Strukturfehler gefunden und behoben: Die ERQ-S-Beispielantwort hatte ihre Items nach Subskala gruppiert, was der Validator zurückweist („Elemente in falscher Reihenfolge“) — eine `QuestionnaireResponse` muss die Reihenfolge des Questionnaire einhalten. SUSHI fängt das nicht; jetzt auf der Validierungsseite dokumentiert

**`documentation`** Sechs neue Seiten für die upstream gepflegten spezifischen Instrumente: SCOFF, Whiteley-7, SSD-12, ISR-Z, PC-PTSD und EURONET-SOMA — referenziert, nicht nachgebaut (ADR-002). Drei Eigenheiten dabei festgehalten: Der **ISR-Z bildet einen Mittelwert** (0–4), keine Summe — die einzige Abweichung unter den sechs; der **Whiteley-7 hat zwei Cut-offs** (0/1 und 1/2), beide als Referenzintervall, weil der eine Sensitivität und der andere Spezifität maximiert; **EURONET-SOMA** setzt `calculatable = false`, weil zwei Einzelitems keine Skala sind und nicht summiert werden dürfen

**`documentation`** Neue Seite Essstörungen — der Erhebungsplan der AN-Batterie, ausgewertet aus dem Blatt `Domain Overview` des Item Level Dictionary: drei Phasen, Prioritäten A/B/C, Frequenzen, Itembudget, die Datenquellen PRO/CRO/EHR und die geplanten Scores. Zwei Befunde ordnen den Umsetzungsstand neu: Es sind **vier** Use Cases, nicht drei (NTx spaltet in Empfänger und Spender), und die „Langformen“ des Plans sind **nicht** die Vollinstrumente — ERQ-6 und ACE-5 *sind* bereits die größte vorgesehene Variante, ein EDE-Q-28, SSUK-26 oder ACE-10 kommt im Plan nirgends vor

**`documentation`** Die Auswahlregel der Zuschnitte („trennschärfstes Item je Skala“ laut DIZ-Implementierungsliste) auf allen betroffenen Seiten und maschinenlesbar in allen fünf `designNote`s hinterlegt — bisher stand sie nur bei EDE-Q6 und ANSOCQ-2. Für drei der vier ist sie gegen die publizierte Struktur des Originalinstruments nachgeprüft. Beim ERQ-S trifft der Singular nicht zu (drei Items je Subskala), beim ACE gilt stattdessen „die ersten 5 Fragen“; beides ist jetzt ausdrücklich vermerkt

**`documentation`** Wortlaut und Scoring des **ERQ-10** vollständig beschafft — englisches Original und die von Gross und John autorisierte deutsche Fassung (Abler & Kessler 2009), beide über das Stanford Psychophysiology Laboratory. Der offizielle Bogen nennt „no reversals“ und die Item-Zuordnung, aber **nicht** die Aggregation; er schreibt zudem die **Itemreihenfolge normativ** fest, weil Items 1 und 3 die Begriffe „positive“ und „negative emotion“ definieren

**`improve`** GSLTPAQ trägt jetzt `language = de` — bisher war es nicht gesetzt, obwohl der Text deutsch ist. Mit ausdrücklicher Begründung, warum hier von ADR-005 abgewichen wird: Die hausinterne Eigenübersetzung ist keine getreue Wiedergabe eines autorisierten Wortlauts, also ist Deutsch hier das Primäre und keine Übersetzungsebene

**`feature`** ANSOCQ-2 um eine `de`-Ebene ergänzt: orthografisch und grammatisch bereinigte deutsche Fassung neben der validierten `de-CH`-Übersetzung, ausdrücklich als nicht-validiert gekennzeichnet. Dabei ein **editorialer Druckfehler der Schweizer Vorlage** eingeordnet (Stufe 1 der Körperteile: „bereit an … zunehmen“ statt „zuzunehmen“): `de-CH` bleibt bewusst unverändert, weil es abbildet, was den Befragten vorlag — korrigiert wird ausschließlich in `de`

**`improve`** ANSOCQ-2 auf Englisch als Primärsprache umgestellt (ADR-005): `item.text` und die zehn Antwortkonzepte tragen den englischen Originalwortlaut aus Rieger et al. 2002, die Schweizer Fassung hängt als `de-CH`-Übersetzung bzw. -Designation daran

**`documentation`** ANSOCQ-2: Wortlaut und Nummerierung gegen den im Volltext abgedruckten Originalbogen verifiziert. Zwei Fassungen aufgeklärt — Rieger 2000 mit 23 Items, Rieger 2002 mit 20; die deutsche Übersetzung folgt der 20-Item-Revision, die Nummern 3 und 14 gelten in beiden Sprachen

**`documentation`** ANSOCQ-2: Auswahllogik und Nummerierung verifiziert — Pauli et al. (*J Eat Disord* 2017) nennen `item 3` als hochladend auf Faktor „weight gain and control" und `item 14` auf Faktor „attitudes and feelings"; die „Skalen" der DIZ-Angabe sind damit die Faktoren der deutschen Validierung. Dazu die Vergleichsarbeit von Wietersheim & Hoffmann (2011) als Kontext zur Instrumentenwahl ergänzt

**`documentation`** SSUK-2: Itemnummerierung verifiziert statt nur festgelegt — Müller, Mehnert & Koch (*Z Med Psychol* 2004) belegen in Tabelle 2 Item 14 („aufmuntert oder tröstet") und Item 10 („Auswirkung der Erkrankung herunterspielt"). Langfassung umfasst 26 Items (17 Positive Unterstützung + 9 Belastende Interaktion)

**`fix`** ACE: Wortlaut aller fünf Items gegen die deutsche Fassung ACE-D verifiziert — wortgleich; die Anführungszeichen um „high" in `ace5` an die typografische Form des Originals angeglichen. Nummerierung bestätigt: `ace1`–`ace5` sind die Items 1–5 des zehnteiligen Bogens

**`fix`** EDE-Q6: Wortlaut aller sechs Items und der Antwortskala gegen die autorisierte deutsche Übersetzung (Hilbert & Tuschen-Caffier, dgvt-Verlag 2016) verifiziert — wortgleich. Quellenkorrektur: Die DIZ-Liste nennt die *Diagnostica*-Evaluation von 2007, maßgeblich für den Wortlaut ist die dgvt-Ausgabe

**`documentation`** ADR-006: Der EDE-Q6-Wortlaut wird aufgenommen, gestützt auf die freie Bereitstellung des Fragebogens durch den Verlag selbst; der Rechtevorbehalt der Publikation bleibt im `copyright` ausgewiesen, eine Bestätigung der Rechteinhaberin wird angestrebt. Trägt ausdrücklich nicht für GI-PS

**`documentation`** EDE-Q6: Auswahllogik verifiziert — die vier Skalen-Items sind je eines pro Subskala (Restraint, Eating Concern, Weight Concern, Shape Concern); damit sind die `linkId`s als Original-EDE-Q-Nummern belegt

**`feature`** ConceptMap `pcor-cm-erq-s-linkids`: bildet die sequenziellen Dictionary-Variablen-IDs des ERQ auf die FHIR-`linkId`s ab. Nötig wegen einer Kollision — `erq6` existiert in beiden Systemen und bezeichnet dort verschiedene Items

**`documentation`** Quellenlage aller AN-Instrumente verifiziert: Entwicklungs- und Übersetzungspaper je Instrument aufgelöst und in `copyright` sowie auf den Seiten nachgetragen. Zwei Korrekturen — die **SSUK** ist die deutsche Adaptation der englischen *Illness-specific Social Support Scale* (Revenson et al. 1991), kein deutsches Original; beim **ANSOCQ-2** verweist die DIZ-Liste auf das Stadienmodell (Prochaska & DiClemente 1982) statt auf das Instrument (Rieger et al. 2000). Außer dem ERQ-S ist keiner der Zuschnitte eine offizielle Kurzform

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
