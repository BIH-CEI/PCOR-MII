Entscheidungslog für den PCOR-MII IG — die Architektur-Entscheidungen (ADRs), neueste zuerst. Diese Seite enthält nur **Entschiedenes**; was noch auf Rückmeldung wartet, steht gesammelt auf [Rechtelage und offene Punkte](Rechtelage.html), und was umgesetzt ist, in den [Release Notes](Release-Notes.html). Die frühere Datei `docs/decisions.md` im Repository verweist nur noch hierher.

| ADR | Entscheidung | Datum |
|---|---|---|
| ADR-014 | Lizenzierte Bögen als Variantenpaar: öffentliche Definition, private erfassbare Variante | 2026-11-10 |
| ADR-013 | Ja/Nein nach der Best-Practice-Empfehlung des TC Terminologien | 2026-11-05 |
| ADR-012 | Use-Case-spezifische Instrumente bleiben in PCOR-MII, auch wenn sie frei wären | 2026-11-05 |
| ADR-011 | Erhebungseinheit und Instrumenteneinheit trennen; die Zuordnung läuft über `item.code` | 2026-09-30 |
| ADR-010 | Sprachliche Anpassung einer deutschen Fassung: nur als zusätzliche Ebene, nie am übernommenen Wortlaut | 2026-09-30 |
| ADR-009 | Fremdübersetzungen: Herkunft über `derivedFrom`, aber nur auf auflösbare Questionnaires | 2026-09-30 |
| ADR-008 | Short Forms: Original-`linkId`s, Wortlaut aus der autorisierten Langform-Quelle, Langform mitmodellieren | 2026-09-30 |
| ADR-007 | Zwei unabhängige Übersetzungen werden zwei Questionnaires, nicht zwei Sprachen und nicht zwei Versionen | 2026-09-30 |
| ADR-006 | EDE-Q6: Wortlaut aufnehmen, gestützt auf die freie Bereitstellung des Verlags | 2026-09-29 |
| ADR-005 | Übernommenen Wortlaut unverändert lassen; Sprachen über Designations trennen | 2026-09-25 |
| ADR-004 | Score-`Observation`s nur über das MII-PRO-Modul | 2026-09-23 |
| ADR-003 | AN-Instrumente vorerst als PCOR-MII-eigene Ressourcen | 2026-09-23 |
| ADR-002 | Questionnaires vom MII-PRO-Modul erben statt selbst generieren | 2026-06-04 |
| ADR-001 | Repo-Setup analog T-CABS | 2026-06-04 |

### Die Entscheidungen


#### ✅ ADR-014 — Lizenzierte Bögen als Variantenpaar: öffentliche Definition, private erfassbare Variante
**Entschieden 2026-11-10 (Maintainer).** Anlass: MTSOSD-R59, BAASIS und ABQ sollen auf dem Fragebogen-Server mit Originalwortlaut erfassbar sein, obwohl ADR-012 die Veröffentlichung der Items ausschließt. Die erste Idee, zwei Kopien unter einer Canonical zu führen (öffentlich ohne, auf dem Server mit Wortlaut), wurde verworfen: Gleiche Canonical bei verschiedenem Inhalt bricht den Versionspin, und ein Validator kann nicht mehr sagen, gegen welche Fassung eine Antwort geprüft wurde.

**Regel.** Lizenzierte Bögen folgen dem Variantenmodell des MII-PRO-Moduls (`derivedFrom` plus Capabilities-Extension `mii-ex-pro-questionnaire-capabilities`), verteilt auf zwei Projekte:

- **Öffentliche Definition in PCOR-MII** (z. B. `…/Questionnaire/MTSOSDR59`): Struktur, `linkId`s, `item.code`, Antwortformate mit `itemWeight`, `enableWhen` und `required`. Bedingungen bleiben hier, weil sie Austauschsemantik sind: Ein Empfänger muss wissen, warum ein Belastungsitem fehlt. Keine Display-Items, neutrale Texte, Capabilities durchgehend `false`.
- **Private erfassbare Variante** `…/PCOR-MII-collectable/Questionnaire/<Id>-collectable` im getrennten Projekt *PCOR-MII-collectable* (eigener Canonical-Namensraum, eigenes Package, Dependency auf `pcor-mii`). `derivedFrom` zeigt auf die öffentliche Definition. Die Antwort-Items sind **identisch** (`linkId`, `type`, `code`, Antwortcodes, `enableWhen`); hinzu kommen Wortlaut, Antwortlabels, Display-Items (Instruktion, Beispiel, Recall) und Capabilities `displayable` + `collectable`. Antwortlabels entstehen über ValueSets, die die öffentlichen Konzepte `stufe-0…4` mit Display-Override einschließen; es gibt keine zweiten CodeSystems. Rechteinhaber im `copyright`, Quelle als `artifact-relatedArtifact` (R4 hat kein `Questionnaire.relatedArtifact`). Als Haken für eine spätere Lizenzschranke trägt die Variante `meta.tag` `pcor-verteilung#lizenzpflichtig` und `meta.security` `v3-Confidentiality#R`; der Server wertet beides heute nicht aus.
- **Verteilung.** Das private Package erreicht nur den Fragebogen-Server (Loader aus einem gemounteten Verzeichnis) und von dort nur lizenzierte Standorte. Nie gh-pages, nie Registry, nie das öffentliche Server-Repo oder -Image.
- **Austauschregel.** Eine `QuestionnaireResponse` referenziert beim Export die **öffentliche Definition** (mit Versionspin), nicht die Variante, und führt `item.text` leer oder neutral. Damit ist jede Antwort gegen das öffentliche Package validierbar und trägt keinen geschützten Wortlaut.
- **Prüfregel.** Vor jedem Release ein Strukturvergleich der Antwort-Items beider Fassungen; Abweichungen außer `text` und Display-Items sind ein Fehler.

**Geltung.** MTSOSD-R59 (umgesetzt), BAASIS und ABQ (vorgesehen), WAI bis zur Klärung des deutschen Wortlauts. Bögen mit freiem Wortlaut bleiben eine Ressource. Präzisiert ADR-012: „nie in einem Package" heißt nie in einem *veröffentlichten* Package.

**Offen.** Lizenzschranke je Standort im Proxy des Fragebogen-Servers (Regel über `meta.tag` oder den Canonical-Namensraum der Variante); Build-Skript für das private Package; Seiten Bereitstellung und Validierung nachziehen.

#### ✅ ADR-013 — Ja/Nein nach der Best-Practice-Empfehlung des TC Terminologien
**Entschieden 2026-11-05 (Maintainer).** Anlass: der erste neue Anamnese-Bogen für NTx.

**Geltung.** Alle Bögen. Zuerst NTx-Verlaufsbefragung und BAASIS, seit 2026-11-10 auch die sieben Bestandsbögen (siehe erledigter Punkt oben).

**Regel.** Generische Ja/Nein-Antworten werden als SNOMED CT `373066001` (Yes) und `373067005` (No) kodiert, inline als `answerOption` über das RuleSet `JaNeinSnomed` (`input/fsh/rulesets/antwortskalen.fsh`), ohne hartkodierte deutsche Übersetzung, weil SNOMED CT die Designations selbst führt. Das ist die Empfehlung des Leitfadens *Best Practice bei der Implementierung und Spezifizierung mit HL7* (TC Terminologien, HL7 Deutschland / Interop Council), und das MII-PRO-Modul setzt sie seit 2026.6.0 so um (SCOFF, PC-PTSD, WI-7, SSD-12). Ein eigenes CodeSystem für Ja/Nein ist eine Doppelung standardisierter Terminologie.

**Bestand.** Die sieben Bestandsbögen mit dem lokalen `dem-ja-nein` (CodeSystem `dem-antwort`) sind am 2026-11-10 für Release 0.9.0 migriert; das CodeSystem ist entfernt. „Nicht zutreffend“ und „Möchte ich nicht sagen“ sind als Level-0- bzw. Level-1-Konzepte derselben Empfehlung kodiert (`385432009`, `LA31066-6`), nicht als Projektcodes.

#### ✅ ADR-012 — Use-Case-spezifische Instrumente bleiben in PCOR-MII, auch wenn sie frei wären
**Entschieden 2026-11-05 (Maintainer des MII-PRO-Moduls).** Anlass: Für den PHQ-D-Panik-Block und die drei NTx-Instrumente BAASIS, ABQ und MTSOSD-R59 lagen Entwürfe für das MII-PRO-Modul vor.

**Regel.** Ins MII-PRO-Modul gehört, was modulweit nachgenutzt wird — ein vollständiges, publiziertes Instrument, das andere Use Cases unverändert übernehmen können (PROMIS Global Health als 10-Item-Skala ist dafür der Fall und wurde dort aufgenommen). Was nur **ein** Use Case erhebt, bleibt in dessen Schicht, unabhängig von der Rechtelage:

- **PHQ-D Panik-Block** (`PHQPANIK`): frei, aber nur in PSS erhoben und im Modul ohne Artefakt. Damit eine spätere Übernahme ohne Migration auskommt, tragen die Items die `linkId`s des PHQ-D-Namespace (`phq-phq3a`–`phq-phq3d`) statt der Dictionary-Variablen — die einzige bewusste Ausnahme von der Regel „`linkId` = Dictionary-Variable" für PCOR-MII-eigene Bögen; die Dictionary-Variable steht in `item.code` (ADR-011).
- **BAASIS, ABQ, MTSOSD-R59** (NTx): metadata-only nach dem Muster von [WAI](WAI.html) und [UKHD-EDP](UKHD-EDP.html) — Struktur, `linkId`s, Antwortformate mit `itemWeight`, Bedingungen und Bezugsweg, kein Originalwortlaut. Die wortgleichen Vollversionen werden ausschließlich über den zugriffsbeschränkten Form Server verteilt (Lizenz je Zentrum), nie in einem veröffentlichten Package — wie, regelt ADR-014.

**Folge für das Modul-Repo:** Die dort vorbereiteten Fassungen wurden nicht veröffentlicht; die Beads `py5.17` und `py5.18` sind auf PCOR-MII umgehängt.

#### ✅ ADR-011 — Erhebungseinheit und Instrumenteneinheit trennen; die Zuordnung läuft über `item.code`
**Entschieden 2026-09-30.** Anlass: die Folge aus ADR-008. Wenn jeder Zuschnitt eine eigene Ressource mit Original-`linkId`s wird, entstehen viele sehr kurze Instrumente — während die Daten in **einem** Bogen erhoben wurden, der kein FHIR kennt.

**Die Größenordnung, damit die Frage nicht abstrakt bleibt.** Das Item Level Dictionary führt für die Entität AN **224 Variablen in 74 Instrument-Gruppen**, davon **45 Gruppen mit einem einzigen Item**. Ein naives „ein Instrument, eine Ressource" ergäbe also 74 `Questionnaire`s für eine Entität, gut zwei Drittel davon mit einer Frage. Erhoben wurde das Ganze als **ein** Bogen je Entität — im Dictionary als Layout-Blätter dokumentiert.

**Zwei Einheiten, die man nicht verwechseln darf:**

| | Erhebungseinheit | Instrumenteneinheit |
|---|---|---|
| Was | der Bogen, der der Person vorlag | das nachnutzbare, auswertbare Instrument |
| Identität | Reihenfolge, gemeinsame Instruktionstexte, Layout | Itemnummern, Skala, Scoring-Vorschrift |
| Zweck | dokumentieren, was tatsächlich gefragt wurde | wiederverwenden, kodieren, auswerten |
| Granularität | eine (oder wenige) je Entität | eine je publiziertem Instrument |

Beide sind nötig, und keine ist die andere. **ADR-005 sagt „modelliere, was erhoben wurde" — das gilt für den *Wortlaut*, nicht für die Ressourcen-Granularität.** Diese Unterscheidung ist der Kern dieser Entscheidung.

**Entscheidung 1 — die Anti-Fragmentierungs-Grenze wird ausgesprochen.** Sie besteht faktisch schon, seit DEM und MHI Sammelbögen sind; ab jetzt ist sie eine Regel:

- **Eigene Ressource** bekommt ein Instrument, das **publiziert und mehritemig** ist und eine eigene Nummerierung oder Skalenstruktur mitbringt — auch dann, wenn PCOR-MII nur einen Zuschnitt davon erhebt.
- **In einen Sammelbogen** gehören **Einzelitems und unnummerierte Abschnitte** ohne eigene Instrumentenidentität: die OECD-, GI-PS- und CPCOR-Einzelfragen in [Demographie](Demographie.html), die Anamnese-Items in [MHI](MHI.html).
- Der Sammelbogen ist **keine Notlösung**, sondern die richtige Ressource für Material, das ohne den Bogen keine Identität hat. Eine 1-Item-Ressource für `OECD-NAT` wäre kein Gewinn an Präzision, sondern Rauschen.
- **Ergänzt am 01.10.2026 — Standort-Itemgruppen:** Für Itemgruppen, die ein Standort zusammengestellt hat und die kein publiziertes Instrument abbilden, ist die **Dictionary-Gruppe** die Ressourceneinheit — ein Questionnaire je Gruppe, auch wenn sie nur ein oder zwei Items hat. Begründung: Die Gruppe ist die Einheit, in der Herkunft und Rechte geklärt werden (und je Gruppe auf metadata-only umgestellt würde), die Gruppen bilden untereinander **kein** gemeinsames Instrument, und ihr Zusammenstellungs-Etikett (`UKHD-…`) darf nicht als Instrumentenidentität gelesen werden. Die Anti-Fragmentierungs-Grenze oben gilt unverändert für Einzelitems *innerhalb* von DEM und MHI — dort stiftet der Bogen die Identität; bei den Standortgruppen stiftet sie die Gruppe.

- **Ergänzt am 05.11.2026 — Anamnese-Bögen eines Standorts:** Die Standortgruppen-Regel gilt für Zuschnitte mit je eigener Herkunft. Stellt ein Standort dagegen einen zusammenhängenden **Anamnese- oder Verlaufsbogen** zusammen, dessen Gruppen dieselbe Herkunft und Rechtelage teilen, ist die **Erhebungseinheit** die Ressource, wie beim MHI. Erster Fall: die MHH-Items für NTx — die drei Screening-Items als Ergänzungsbogen [MHI-NTx](NTx-Instrumente.html#mhi-ntx-transplantationsanamnese) zum MHI — **nicht** als Gruppe im MHI, weil der MHI allen Use Cases gemeinsam ist und keinen Entitätsschalter hat; die Zusammenstellung je Use Case leisten die Manifeste —, die 18 quartalsweisen Items als [NTx-Verlaufsbefragung](NTx-Instrumente.html#ntx-verlaufsbefragung-mhh), jeweils mit den Dictionary-Gruppen als Gruppen-Items und `item.code` je Variable.

**Entscheidung 2 — die Zuordnung läuft über `Questionnaire.item.code`, nicht über `linkId`s und nicht über eine ConceptMap.**

Der Grund ist grundsätzlich, nicht praktisch: **`linkId`s sind nur *innerhalb* eines Questionnaire eindeutig.** Sie können die Frage „zu welchem Instrument gehört diese Variable?" also gar nicht beantworten. Der ERQ zeigt, was dabei schiefgeht — Dictionary-`erq6` und FHIR-`linkId` `erq6` bezeichnen **verschiedene** Items, beide sind Unterdrückungs-Items, sie klingen ähnlich, und ein Abgleich über Namensgleichheit ordnet dort still falsch zu, ohne dass es bei einer Sichtprüfung auffällt. Ein **Code** ist global eindeutig, ein `linkId` nicht.

Deshalb trägt **jedes Item seine Dictionary-Variable in `Questionnaire.item.code`**, gegen das CodeSystem [`pcor-item-dictionary`](CodeSystem-pcor-item-dictionary.html). Das Element ist `0..*` — ein Item kann also gleichzeitig den semantischen LOINC-Code und die Dictionary-Variable tragen, und bei ACE, DEM und MHI ist genau das der Fall. Das Muster ist außerdem Hauskonvention: Das MII-PRO-Modul nutzt `item.code` in 22 Questionnaires für 210 Items.

Damit werden aus zwei Fragen **zwei Nachschlage-Operationen**:

| Frage | Antwort |
|---|---|
| Zu welchem Instrument gehört Variable `X`? | das Questionnaire, das ein Item mit `item.code` = `X` hat |
| Wie heißt sie dort? | der `linkId` genau dieses Items |

Der Rename fällt also **gratis** mit ab, und es gibt keine zweite Quelle der Wahrheit, die auseinanderlaufen könnte. Eine ConceptMap ist dafür **nicht mehr erforderlich**; [`pcor-cm-erq-s-linkids`](ConceptMap-pcor-cm-erq-s-linkids.html) bleibt als vorgerechnete Lesehilfe und als ausdrückliche Warnung vor der Kollision bestehen, ist aber nicht mehr der Mechanismus.

**Stand der Umsetzung (2026-10-01):** In allen dreizehn PCOR-MII-Questionnaires gesetzt — **134 Items** tragen ihre Dictionary-Variable (zuletzt die 20 UKHD-Items — 14 im [UKHD-Zusatzitems](UKHD-Zusatzitems.html), 6 im [ACE](ACE.html)). Ohne Code bleiben genau die Items, die **keine** Dictionary-Variablen sind: Gruppen-Items, berechnete Score-Items und die PCOR-MII-eigenen Hilfsitems (etwa die Einheitenauswahl `Q_WB151`/`Q_WB152` im [MHI](MHI.html) und die Wert-Items `AN_biography-wert`/`lowBMI-wert` im [UKHD-ANB](Questionnaire-UKHDANB.html), die es im Dictionary nicht gibt). Dass diese Liste genau so aussieht, ist die Kontrolle, dass die Zuordnung stimmt.

**Die UKHD-Zusatzitems haben diese Grenze dann zweimal getestet — in beide Richtungen.** Der erste Wurf (sechs Dictionary-Gruppen als **ein** Sammelbogen `UKHD-AN`) wandte die Anti-Fragmentierungs-Grenze auf Standortgruppen an und ist noch vor der Veröffentlichung zurückgenommen worden: Die Gruppen sind kein gemeinsames Instrument, der Sammelbogen behauptete eine Einheit, die es nicht gibt — sichtbar an einer Namenskollision, denn die Dictionary-Gruppe `UKHD-AN` existiert wirklich, besteht aus genau einem Item (`AN_subtyp`) und liegt im [MHI](MHI.html). Daraus die Standortgruppen-Ergänzung in Entscheidung 1: je Dictionary-Gruppe ein Questionnaire — [UKHD-Zusatzitems](UKHD-Zusatzitems.html).

**Was dabei in beiden Richtungen hielt, ist Entscheidung 2.** `UKHD-CTT` liegt seit dem 01.10.2026 im [ACE](ACE.html) — das Item Level Dictionary nennt in der Spalte `ADDITIONAL INFORMATION` ausdrücklich den Bezug ihrer drei Item-Paare auf `ace1`, `ace2` und `ace3`, und `enableWhen.question` nimmt laut R4 eine `linkId` **innerhalb desselben Questionnaire**. Die Items mussten also dorthin, wo ihre Bedingung steht. Ob eine Gruppe in einem Sammelbogen, einem eigenen Questionnaire oder einem fremden Komposit liegt: `item.code` und die Property `instrument` finden sie unverändert — die Zuordnung hängt am Code, nicht an der Ressourcengrenze. Der Preis beim ACE ist offen benannt: Er ist kein Instrumenten-Zuschnitt mehr, sondern ein **PCOR-MII-Komposit mit zwei Rechtequellen**, und Titel, `description` und `copyright` sagen das.

Das CodeSystem ist **generiert** und trägt `content = #fragment`: Es enthält nur die modellierten Variablen, während das Dictionary 454 über drei Entitäten führt. `#complete` wäre eine Falschaussage, und das CodeSystem wächst mit der Modellierung. Jedes Konzept trägt die Properties `instrument`, `category` und `entity` aus dem Dictionary — so ist auch ohne Questionnaire-Lookup erkennbar, wohin eine Variable gehört.

**Warum `item.code` und nicht `item.definition` — und wann sich das ändern sollte.** FHIR hat für „dieses Item *ist* jenes Datenelement" ein eigenes Element, und das ist nicht `item.code`, sondern **`item.definition`**. Es wäre der SDC-idiomatische Weg, und er ist ausdrücklich offengehalten.

Nur genügt dafür kein Canonical, das man sich ausdenkt. R4 verlangt eine auflösbare Element-Definition:

> „The uri refers to an ElementDefinition in a StructureDefinition and always starts with the canonical URL for the target resource. […] a fragment identifier is used to specify the element definition by its id."

Eine URL wie `…/PCOR-MII/item#erq4` ohne StructureDefinition dahinter wäre also wirkungslos — und würde den Zweck verfehlen, denn laut Spec **dürfen** Consumer aus der Element-Definition `code`, `type` und `required` ableiten, wenn das Item sie nicht selbst trägt.

Richtig gemacht heißt: ein **Logical Model** für das Item Level Dictionary (`StructureDefinition`, `kind = logical`), eine Element-Definition je Variable, und dann `item.definition = "…/StructureDefinition/pcor-item-dictionary-model#PcorItemDictionary.erq4"`. Was das bringt: Es ist die Grundlage für definitionsbasiertes `$populate` und `$extract`, es gibt dafür den SDC-Suchparameter `definition`, und `type` sowie `required` müssten nicht mehr an jedem Item wiederholt werden.

Was dagegen spricht, es jetzt zu tun: Ein Logical Model mit über 114 Elementen wäre parallel zum Dictionary zu pflegen, und der Nutzen entsteht erst, wenn Extraktion und Vorbefüllung real werden — beides ist laut [Anwendung](Implementation.html) bisher ausdrücklich Zukunft.

**Die beiden Mechanismen schließen sich nicht aus.** Die Spec sagt zu `item.code`: *„The value may come from the ElementDefinition referred to by .definition."* Ein späteres Logical Model würde die Codes also **ergänzen**, nicht ersetzen — die jetzt gesetzten 114 `item.code`s bleiben gültig und wären dann der Terminologie-Anteil derselben Aussage.

**Entscheidung 3 — ein Erhebungsereignis wird zu N `QuestionnaireResponse`s, zusammengehalten über Encounter und Zeitstempel.** `QuestionnaireResponse` hat in R4 **kein `partOf`**, es gibt also keinen eingebauten Elternknoten. Die Zusammengehörigkeit wird deshalb so ausgedrückt:

1. identische `subject`-Referenz,
2. identischer `authored`-Zeitstempel für alle Antworten **eines** Erhebungstermins,
3. dieselbe `encounter`-Referenz, wo ein Encounter vorliegt,
4. wo nicht: ein gemeinsamer `identifier` mit einem Erhebungsereignis-System, oder Übertragung als **ein** `Bundle` je Ereignis.

Der [AN-Beispieldatensatz](AN.html) macht das vor — fünf Antworten, eine Patientin, ein Termin, gestaffelte Uhrzeiten.

**Was sich daraus für die Reihenfolge der Arbeit ergibt.** Die Codes sind keine Nacharbeit, sondern Voraussetzung: Ohne sie ist jede Übernahme von Studiendaten Handarbeit mit stillen Fehlerquellen. Jedes neu modellierte Item bekommt seinen `item.code` deshalb **sofort** — nicht in einem späteren Durchgang. Das CodeSystem ist generiert, das Nachziehen also billig; teuer wird nur das Vergessen.

**Ausblick, ausdrücklich keine Festlegung.** SDC kennt mit `sub-questionnaire` und der `$assemble`-Operation einen Mechanismus, den administrierten Bogen als **modulare** Ressource abzubilden, die die Instrumenten-Questionnaires einbindet. Das MII-PRO-Modul führt modulare Questionnaires auf seiner Roadmap (erster Anwendungsfall dort: PROMIS-33). Eine Einschränkung, die gegen eine frühe Festlegung spricht: Die SDC-Bestandteile sind im Ballot-Stand und können sich ändern. Für die Zuordnung ist das aber ohnehin nachrangig — `item.code` reist mit den Teil-Questionnaires mit, ein zusammengesetzter Bogen trägt die Dictionary-Variablen also automatisch. Der Mechanismus aus Entscheidung 2 funktioniert mit und ohne Assembly.

#### ✅ ADR-010 — Sprachliche Anpassung einer deutschen Fassung: nur als zusätzliche Ebene, nie am übernommenen Wortlaut
**Entschieden 2026-09-30.** Präzisiert ADR-005 für den Fall, dass eine Bereinigung tatsächlich gebraucht wird. Anlass: [ANSOCQ-2](ANSOCQ-2.html) (Schweizer Fassung mit Helvetismen und einem Satzfehler), [Demographie](Demographie.html) (Schweizer PaRIS-Fassung).

ADR-005 sagt: übernommener Wortlaut bleibt unverändert. Das gilt weiter und ohne Ausnahme. Diese Entscheidung regelt, was man stattdessen tun darf, wenn eine deutsche Fassung für den Einsatz in Deutschland sprachlich nicht trägt.

**Grundregel.** Die übernommene Fassung bleibt **Bit für Bit** stehen und behält ihr Sprachtag. Eine Bereinigung entsteht **nur als zusätzliche Ebene** daneben — als weitere `translation`-Extension bzw. `designation` mit eigenem Sprachtag — und wird ausdrücklich als **nicht validiert** gekennzeichnet. Die übernommene Fassung bleibt **für die Erhebung maßgeblich**.

**Vier Fälle, sauber getrennt.** Sie sehen ähnlich aus und sind verschieden zu behandeln:

| Fall | Beispiel | Behandlung |
|---|---|---|
| **Helvetismus** | „Gesäss" → „Gesäß", „einschliesslich", „Ich weiss es nicht" | belastbares Herkunftsindiz. Bereinigung in einer `de`-Ebene erlaubt; `de-CH` bleibt unverändert und maßgeblich |
| **Reformschreibung 1996** | ß nach kurzem Vokal → ss | **kein** Herkunftsindiz und meist gar nicht betroffen: Nach langem Vokal oder Diphthong bleibt ß bis heute. Vor jeder Änderung prüfen, ob das Wort überhaupt reformbetroffen ist |
| **Getrennt-/Zusammenschreibung** | „nahe stehen" (1996–2006) vs. „nahestehen" (seit 2006) | datiert einen Text grob, taugt **nicht** als Herkunftsindiz. **Nicht anfassen** — es ist korrekte Schreibung ihrer Zeit, kein Fehler |
| **Editorialer Druckfehler** | [ANSOCQ-2](ANSOCQ-2.html), Stufe 1: „bereit **an** … **zunehmen"** statt „bereit**,** … **zu**zunehmen" | wird **nicht** in der übernommenen Fassung repariert. Sie bildet ab, was den Befragten vorlag, und unter genau diesem Wortlaut gelten die psychometrischen Kennwerte. Korrektur ausschließlich in der Zusatzebene |

**Woran man einen Druckfehler von einem Übertragungsfehler unterscheidet** — die Frage entscheidet, *welche* Ebene zu korrigieren ist:

- Ist das Item Level Dictionary an allen anderen geprüften Stellen wortgenau, ist ein Abschreibfehler an genau einer Stelle unwahrscheinlich; dann liegt der Fehler in der Vorlage.
- Fehlen **mehrere** Dinge zusammen (etwa Komma *und* „zu"), sieht das nach einem einzelnen Setzfehler aus, nicht nach einer Abschrift.
- Bildet das Original dieselbe Stelle strukturgleich, gibt es keinen inhaltlichen Grund für die Abweichung.

Bei **Druckfehler in der Vorlage** bleibt die übernommene Fassung unverändert. Bei **Übertragungsfehler ins Dictionary** ist die übernommene Fassung selbst zu korrigieren, weil sie dann nie die Vorlage war.

**Was nie passiert.** Keine stille Korrektur. Jede Abweichung zwischen übernommener und bereinigter Ebene wird **einzeln und vollständig** aufgelistet — auf der Instrumentenseite und im `designNote` — mit Grund je Stelle. Eine Bereinigung, die man nicht Zeile für Zeile nachvollziehen kann, ist keine Bereinigung, sondern eine unbelegte Variante.

**Warum der Aufwand.** Drei Gründe, dieselben wie in ADR-005 und jeweils hinreichend: Bei einem Erhebungsinstrument ist die Formulierung **Teil des Instruments**, nicht Kosmetik. Eine Bearbeitung macht PCOR-MII zum Urheber einer **Adaption** und damit rechtlich zur schlechteren Position. Und die publizierten Kennwerte gelten für den publizierten Wortlaut — wer ihn ändert, verliert den Bezug darauf.

**Konsequenz, die man aussprechen muss:** Wer die bereinigte Ebene erhebt, erhebt **nicht** das validierte Instrument. Das ist zulässig, muss aber in der Auswertung bekannt sein.

#### ✅ ADR-009 — Fremdübersetzungen: Herkunft über `derivedFrom`, aber nur auf auflösbare Questionnaires
**Entschieden 2026-09-30.** Anlass: die Frage, ob eine deutsche Fassung via `derivedFrom` auf das englische Original zeigen soll.

**Die Antwort ist: ja — aber nur, wenn das Original als `Questionnaire`-Ressource existiert.**

`Questionnaire.derivedFrom` ist in R4 `0..*` vom Typ **`canonical(Questionnaire)`**. Das Ziel muss also eine auflösbare Questionnaire-Ressource sein. Ein Zeitschriftenartikel ist keine — auf Gross & John 2003 oder Rieger et al. 2002 kann `derivedFrom` **nicht** zeigen, so naheliegend das klingt.

**Daraus folgen drei Fälle:**

| Herkunft | Wohin damit |
|---|---|
| Das Original liegt als Questionnaire vor (typisch: die Langform im MII-PRO-Modul) | `derivedFrom` auf dessen Canonical |
| Das Original ist nur publiziert (Artikel, Verlagsbogen, Autoren-PDF) | **nicht** `derivedFrom`. Zitation in `copyright`, Begründung im `designNote`, Einzelheiten auf der Instrumentenseite |
| Zwei Fassungen desselben Instruments stehen nebeneinander | gemeinsamer **Katalogcode** in `Questionnaire.code` aus [`pcor-questionnaire-catalogue`](CodeSystem-pcor-questionnaire-catalogue.html) — siehe ADR-007 |

**Was `derivedFrom` nicht leistet.** Es sagt *dass* abgeleitet wurde, nicht *wie*. Übersetzung, Kurzform, Adaption und Teilmenge sind alle „based on" und im Element nicht unterscheidbar. R4 hat für `Questionnaire` **kein** eigenes Element für eine Übersetzungsbeziehung und auch kein `relatedArtifact`. Die **Art** der Ableitung gehört deshalb zwingend in den `designNote` — sonst ist die Angabe kaum interpretierbar.

**Wichtige Abgrenzung: eine Übersetzung ist kein `derivedFrom` auf eine andere Übersetzung.** Zwei Übersetzungen desselben Instruments sind **Geschwister**, nicht Eltern und Kind — beide leiten sich vom Original ab, nicht voneinander. Beim [GSLTPAQ](GSLTPAQ.html) heißt das: Die UKE/SOMACROSS-Übersetzung zeigt **nicht** auf die validierte deutsch-österreichische Fassung und umgekehrt auch nicht; beide zeigen, sobald es sie als Ressource gibt, auf das englische Original.

**Und der Wortlaut folgt der Rechtekette, nicht der Zitationskette.** Wo die Übersetzung herkommt, ist eine andere Frage als wo das Instrument herkommt, und die DIZ-Implementierungsliste vermischt beides in einer Zelle. Zwei Beispiele aus diesem Projekt: Beim [EDE-Q6](EDE-Q6.html) nennt die Liste als Übersetzungspaper die psychometrische *Evaluation* — der Wortlaut stammt aber aus der dgvt-Publikation. Beim [ERQ-6](ERQ-6.html) liefert das Übersetzungspaper (Abler & Kessler 2009) die **Langform**, aus der die sechs Items entnommen sind — während das dort genannte *Entwicklungspaper* ein anderes Instrument beschreibt als das erhobene. In beiden Fällen ist die Wortlautquelle in `copyright` zu nennen, nicht bloß das Paper, das die Liste angibt.

#### ✅ ADR-008 — Short Forms: Original-`linkId`s, Wortlaut aus der autorisierten Langform-Quelle, Langform mitmodellieren
**Entschieden 2026-09-30.** Erweitert ADR-003 Punkt 6 (`linkId`-Regel) um die beiden Hälften, die dort fehlten: woher der Wortlaut kommt und was mit der Langform passiert.

Ein Zuschnitt oder eine Short Form ist in PCOR-MII nach drei Regeln zu modellieren. Sie hängen zusammen — einzeln angewandt ergeben sie eine Ressource, die technisch stimmt und fachlich in die Irre führt.

**Regel 1 — `linkId`s sind die Original-Itemnummern.** Unverändert aus ADR-003 Punkt 6: Hat der Bogen eine offizielle Nummerierung, tragen die `linkId`s sie (`edeq1/7/12/27/29/30`, `ansocq3/14`, `ssuk14/10`, `ace1`–`ace5`, ERQ-6 `erq1/2/3/6/8/9`, seit 2026-11-05 auch OPD-SFK `opdsf3/27/32/81/41/49/50/73/78/79/40/90` = Nummern der OPD-SF-Langform aus Tabelle 2 der Publikation). Nur Einzelfragen ohne eigene Nummerierung dürfen Dictionary-IDs behalten.

Weicht das Item Level Dictionary davon ab, ist die Abbildung **maschinenlesbar** zu hinterlegen, nicht nur als Tabelle auf der Seite. Beim ERQ-S tut das [`pcor-cm-erq-s-linkids`](ConceptMap-pcor-cm-erq-s-linkids.html), und zwar aus einem konkreten Grund: Dictionary-`erq6` und FHIR-`erq6` bezeichnen **verschiedene Items**, beide sind Unterdrückungs-Items, sie klingen ähnlich, und ein Mapping über Namensgleichheit fällt bei einer Sichtprüfung nicht auf. Wo eine solche Kollision möglich ist, ist die ConceptMap Pflicht.

**Regel 2 — der Wortlaut kommt aus der autorisierten Quelle der Langform, nicht aus der Kurzform-Publikation.** Das ist die Regel, die am leichtesten übersehen wird, weil sie kontraintuitiv ist: Die Publikation, die eine Short Form definiert, nennt typischerweise nur die **Itemnummern** und die Psychometrie — den übersetzten Wortlaut enthält sie nicht.

Beim [ERQ-6](ERQ-6.html) sieht man das: Der deutsche Wortlaut steht nicht in einer Kurzform-Publikation, sondern in der von Gross und John **autorisierten** Übersetzung von Abler & Kessler 2009 — also im Bogen der **Langform**, aus dem die sechs Items entnommen sind.

Derselbe Bogen liefert auch das Gegenbeispiel, warum die Auswahlquelle getrennt zu führen ist: Die DIZ-Implementierungsliste nennt dort als Entwicklungspaper die ERQ-S-Publikation, obwohl die erhobenen Items **nicht** die des ERQ-S sind. Wer die Auswahlquelle ungeprüft übernimmt, modelliert ein anderes Instrument, als er zu modellieren glaubt — genau das ist hier bis Release 0.3.0 passiert.

Praktisch heißt das: Für jeden Zuschnitt sind **zwei** Quellen zu führen und beide in `copyright` zu nennen — die Quelle der **Auswahl** (welche Items, nach welchem Kriterium) und die Quelle des **Wortlauts**. Sie fallen selten zusammen.

**Regel 3 — die Langform wird mitmodelliert, soweit Wortlaut und Scoring beschaffbar sind.** Und zwar **upstream im MII-PRO-Modul**, nicht in PCOR-MII, mit `derivedFrom` von der Kurzform auf die Langform (ADR-009).

Vier Gründe, und der letzte ist der eigentliche:

1. Die Original-`linkId`s der Kurzform werden **überprüfbar**: Liegt die Langform daneben, ist die Zuordnung nachvollziehbar statt behauptet.
2. Die **Scoring-Vorschrift bekommt ein Zuhause.** Sie gilt für die Langform, nicht für den Zuschnitt — steht sie nur im Fließtext, geht sie verloren.
3. Die Kurzform ist als **Teilmenge** dokumentiert und nicht als eigenes Instrument, das sie nicht ist.
4. Der Zuschnitt lässt sich **ablösen**, sobald ein Standort das Itembudget hat. Ohne Langform bleibt die Wahl zwischen zwei Items und nichts.

**Grenze der Regel: Nicht-Beschaffbarkeit ist ein legitimes Ergebnis, kein Rückstand.** Wo der Wortlaut der Langform nicht öffentlich zugänglich ist, wird sie **nicht** modelliert — und das ist dann zu dokumentieren, nicht zu überbrücken. Der Stand in diesem Projekt (30.09.2026):

| Langform | Wortlaut | Status |
|---|---|---|
| **ERQ-10** | Original und autorisierte deutsche Fassung vollständig beschafft (Stanford Psychophysiology Laboratory) | modellierbar — und seit der ERQ-S-Korrektur der einzige Weg zu einem validierten ERQ-Score |
| **ANSOCQ-20** | Englisch vollständig (Rieger et al. 2002); deutsch nur 2 von 20 | nur englisch-primär modellierbar |
| **ACE-10** | deutsche ACE-D-Fassung **nur über den Rechteinhaber beziehbar** | nicht modellierbar, siehe offener Punkt |
| **EDE-Q-28** | vorhanden, aber dgvt-Rechtevorbehalt | nicht ohne Zustimmung |
| **SSUK** | deutsch nur 2 Items; Quelle identifiziert (Ramm & Hasenbring 2003) | offen |

**Und kein Score ohne validierte Grundlage** — ADR-003 Punkt 3 gilt unverändert. Die Langform bringt ihre Scoring-Vorschrift mit; auf den Zuschnitt überträgt sie sich **nicht**. Ein trennschärfstes Item je Skala bildet die Skala nicht ab, und eine Summe über fünf von zehn ACE-Fragen ist kein ACE-Score. Eine Ausnahme gibt es im Projekt **nicht**. Bis zum 01.10.2026 galt der ERQ-6 als eine — er war fälschlich als publizierte Kurzform ERQ-S ausgewiesen. Nach der Korrektur trägt **kein** AN-Instrument einen Score.

#### ✅ ADR-007 — Zwei unabhängige Übersetzungen werden zwei Questionnaires, nicht zwei Sprachen und nicht zwei Versionen
**Entschieden 2026-09-30.** Anlass: [GSLTPAQ](GSLTPAQ.html).

**Die Lage.** PCOR-MII bildet beim GSLTPAQ eine nicht validierte deutsche Übersetzung ab — die vorhandenen Studiendaten wurden mit ihr erhoben. *(Ursprünglich als „hausinterne Eigenübersetzung" geführt; Herkunft inzwischen geklärt, siehe Nachtrag unten.)* Seit kurzem existiert eine **linguistisch validierte** deutsch-österreichische Übersetzung (Lindner, Bamberger, Crutzen & Kulnik, *Measurement and Evaluations in Cancer Care* 2026, [doi:10.1016/j.ymecc.2026.100027](https://doi.org/10.1016/j.ymecc.2026.100027)), die perspektivisch im MII-PRO-Modul gepflegt werden soll. Beide Wortlaute werden also gebraucht. Die Frage ist, wie man sie unterscheidet.

**Entscheidung: zwei getrennte `Questionnaire`-Ressourcen mit eigenen Canonicals und eigenen Maintainern.** Nicht zwei Sprachebenen auf einer Ressource, nicht zwei Versionen derselben Ressource.

**Warum nicht Sprachebenen.** Ein Sprachtag kodiert eine sprachliche **Varietät**, keinen **Validierungsstatus**. `de` neben `de-AT` sagt „deutsches vs. österreichisches Deutsch"; es sagt nicht, dass eine der beiden nicht validiert ist. Wer Designations auflöst, darf sich legitim für eine beliebige entscheiden — und würde dabei unbemerkt zwischen validiertem und nicht validiertem Wortlaut wechseln.

Der Fall sieht ADR-005 (unten) und dem [ANSOCQ-2](ANSOCQ-2.html) ähnlich, ist aber anders gelagert. Dort beschreiben `de-CH` und `de` **dieselbe** Messung: Die `de`-Ebene ist eine rein orthografische Bereinigung der validierten Schweizer Fassung, ausdrücklich nicht für die Erhebung gedacht, und das Regionaltag entspricht tatsächlich der Herkunft der Übersetzung. Beim GSLTPAQ stehen dagegen **zwei unabhängig entstandene Übersetzungen** nebeneinander — also zwei Messungen, nicht zwei Schreibweisen einer.

**Warum nicht Versionen.** Ein Versionssprung behauptet **Ablösung**: Consumer lesen ihn als „die neue Fassung ersetzt die alte". Genau das soll hier nicht gesagt werden. Die Eigenübersetzung bleibt gültig, weil die bestehende Zeitreihe mit ihr erhoben wurde und ein Wortlautwechsel die Vergleichbarkeit bricht. Eine Version, die zum Wechsel auffordert, wäre für Bestandsdaten eine falsche Anweisung.

**Warum zwei Ressourcen passen.**

- **Eigentum und Lebenszyklus** unterscheiden sich: eine projekteigene Übersetzung gegen eine publizierte Fremdübersetzung, die ins Kernmodul gehört.
- **Rechte** unterscheiden sich: Die erste Übersetzung hat eigene Urheber (UKE, siehe Nachtrag), Lindner et al. bringen wieder andere Bedingungen mit.
- **Validierungsstatus ist eine Eigenschaft des Instruments**, nicht der Sprache — und gehört daher auf die Ressourcenebene.
- Entscheidend: **`QuestionnaireResponse.questionnaire` wird eindeutig.** Aus der Antwort allein ist ablesbar, welchen Wortlaut die Person vorgelegt bekam. Für die Auswertung ist das die wichtigste Eigenschaft überhaupt — und sie ist bei Sprachebenen wie bei Versionen ohne `|version`-Pin nicht gegeben.

**Wie es umzusetzen ist.**

1. **Identische `linkId`s in beiden Ressourcen.** Dann braucht es keine ConceptMap, und eine Zusammenführung auf Item-Ebene ist technisch möglich — sie bleibt aber eine bewusste Entscheidung der Auswertung und wird nicht stillschweigend ermöglicht.
2. **Derselbe Katalogcode** in `Questionnaire.code`, damit beide als zwei Fassungen **eines** Instruments erkennbar sind und nicht als zwei Instrumente. Dafür genügt die Canonical nicht: Sie identifiziert laut R4 das **Artefakt** (“a literal address at which an authoritative instance of this questionnaire is found”), während `code` das **Konzept** bezeichnet, das der Bogen repräsentiert — und genau das ist bei zwei Fassungen dasselbe. Hier stand zunächst „aus dem MII-Questionnaire-Katalog“; der führt aber weder den GSLTPAQ noch einen der AN-Bögen, womit die Regel im eigenen Anwendungsfall nicht umsetzbar war. Seit dem 01.10.2026 gibt es dafür [`pcor-questionnaire-catalogue`](CodeSystem-pcor-questionnaire-catalogue.html); ein späterer MII-Code wird ergänzt, nicht ersetzt (ADR-004).
3. Die PCOR-MII-Fassung trägt `experimental = true` und einen `designNote`, der die validierte Fassung benennt und sagt, warum die Eigenübersetzung fortbesteht.
4. **Kein Retire bei Ankunft der Upstream-Fassung.** Die PCOR-MII-Fassung bleibt `active`, solange mit ihr erhoben wird, und geht erst auf `status = retired`, wenn die Erhebung endet. `retired` bleibt auflösbar — genau das brauchen Alt-`QuestionnaireResponse`s.
5. **Vergleichbarkeit ausdrücklich ausweisen**, nicht voraussetzen: Antworten aus beiden Fassungen sind nicht ohne Weiteres poolbar.

**Ein zweiter Haken, der beim Wechsel zu bedenken ist:** Die validierte Übersetzung ist deutsch-**österreichisch**. Für eine Erhebung in Deutschland ist damit auch sie nicht im strengen Sinn kontextvalidiert. Das ist kein Grund, sie nicht zu bevorzugen — sie ist linguistisch validiert und die erste Übersetzung nicht —, aber es ist ein Punkt für die Dokumentation und nicht zu verschweigen.

**Nachtrag (2026-10-06) — Herkunft geklärt, Entscheidung bestätigt.** Die erste Übersetzung ist **keine PCOR-MII-Eigenübersetzung**: Sie stammt aus **SOMACROSS 2.0**, Übersetzer ist das **UKE** (Universitätsklinikum Hamburg-Eppendorf) — PCOR-MII war an ihr nicht beteiligt. Das `copyright`-Element des [GSLTPAQ](Questionnaire-GSLTPAQ.html) weist das UKE seither als Übersetzer aus. Zugleich hat die Use-Case-Leitung das Vorgehen dieser ADR bestätigt: **Beide Fassungen werden abgebildet**; Metadaten und Versionierung machen die Unterscheidung klar, jede `QuestionnaireResponse` weist eindeutig aus, mit welcher Definition sie erhoben wurde, und die `linkId`s bleiben identisch, solange keine strukturellen Änderungen nötig werden. Das Argument „Eigentum: projekteigene Übersetzung" oben ist damit hinfällig — die übrigen Gründe (Validierungsstatus als Ressourceneigenschaft, eindeutige `questionnaire`-Referenz, getrennte Rechte und Lebenszyklen) tragen die Entscheidung unverändert.

**Geltungsbereich.** Die Regel gilt über den GSLTPAQ hinaus für jeden Fall, in dem eine projekteigene und eine publizierte Übersetzung desselben Instruments nebeneinander bestehen. Sie gilt **nicht** für regionale Varianten derselben Übersetzung — dort bleibt ADR-005 (unten) maßgeblich (Sprachtags, eine Ressource).

#### ✅ ADR-006 — EDE-Q6: Wortlaut aufnehmen, gestützt auf die freie Bereitstellung des Verlags
**Datum:** 2026-09-29

**Kontext:** Beim Wortlautabgleich des [EDE-Q6](EDE-Q6.html) ist ein Widerspruch aufgefallen. Die DIZ-Implementierungsliste führt das Instrument als „frei verfügbar"; die Quellpublikation — **Hilbert A, Tuschen-Caffier B,** *Eating Disorder Examination-Questionnaire. Deutschsprachige Übersetzung*, 2. Auflage, Tübingen: dgvt-Verlag 2016 — stellt dagegen ausdrücklich alle Rechte vor und benennt dabei wörtlich „die Einspeicherung und Verarbeitung in elektronischen Systemen". Das beschreibt genau das, was ein FHIR-`Questionnaire` tut.

**Abwägung:** Dem Vorbehalt steht eine gewichtige Tatsache gegenüber: Verlag und Copyrightinhaberin stellen den vollständigen Fragebogen samt Auswertungsbogen **selbst frei zum Download** bereit — ohne Registrierung, ohne Bezahlschranke. Das ist ein bewusster Akt der Bereitstellung. Bei deutschsprachigen Testverfahren ist dieses Muster verbreitet: der Bogen frei, Manual und Auswertungslogik als Verlagsware.

**Entscheidung:** Der Wortlaut wird **aufgenommen**, unter ausdrücklichem Verweis auf diese Bereitstellung und mit vollständiger Quellenangabe im `copyright`-Element. Die Bereitstellung wird als der aussagekräftigere Akt gewertet; der Rechtevorbehalt bleibt ausgewiesen, nicht verschwiegen. Die Lizenzspalte der [Instrumentenübersicht](Instrumente.html) nennt entsprechend „vom Verlag frei bereitgestellt; Bestätigung angestrebt".

**Nächster Schritt:** Eine kurze Bestätigung der Rechteinhaberin einholen (Prof. Anja Hilbert, Universitätsmedizin Leipzig) — denselben Weg hat der [OPD-SFK](OPD-SFK.html) bereits erfolgreich genommen. Damit wäre die Abwägung durch eine Zusage ersetzt. Bis dahin ist es eine begründete Entscheidung, keine Freigabe.

**Abgrenzung:** Diese Begründung trägt **nicht** für GI-PS. Dort gibt es keine vergleichbare freie Bereitstellung durch die Rechteinhaber:innen, sondern einen Nutzungsvorbehalt, dem man beim Download ausdrücklich zustimmt. Jener Punkt bleibt offen.

**Nebenbefund:** Die DIZ-Liste nennt als Übersetzungspaper die *Diagnostica*-Publikation von 2007 — das ist die psychometrische Evaluation, nicht die Übersetzung selbst. Für Wortlautfragen ist die dgvt-Ausgabe maßgeblich.

#### ✅ ADR-005 — Übernommenen Wortlaut unverändert lassen; Sprachen über Designations trennen
**Datum:** 2026-09-25

**Kontext:** Der deutsche Wortlaut der PaRIS-Blöcke in [DEM](Demographie.html) stammt aus der **Schweizer** PaRIS-Fassung und enthält entsprechend Helvetismen („einschliesslich", sechsmal „Ich weiss es nicht"). Naheliegend wäre, ihn für einen deutschen IG einzudeutschen.

**Entscheidung 1 — Wortlaut bleibt unverändert.** Die Helvetismen werden **nicht** korrigiert. Drei Gründe:

1. **Validierung.** Der Wortlaut ist im TRAPD-Verfahren sprachlich validiert. Wer ihn ändert, erhebt nicht mehr das validierte Item — bei einem Erhebungsinstrument ist die Formulierung Teil des Instruments, nicht Kosmetik.
2. **Rechte.** Eine unveränderte Übernahme bleibt Nachnutzung von OECD-Material. Eine Bearbeitung machte PCOR-MII zum Urheber einer **Adaption** und löste den Adaptions-Disclaimer der OECD-Bedingungen aus — die schlechtere Position.
3. **Vergleichbarkeit.** Der Wortlaut entspricht dem, unter dem die Schweizer PaRIS-Daten erhoben wurden.

**Entscheidung 2 — Zielbild der Mehrsprachigkeit: Englisch als `item.text`, deutsche Fassungen als Designations.** Statt den Schweizer Text unbenannt als primäres Deutsch zu führen, wird er als eigene Sprachvariante ausgewiesen:

- `item.text` trägt den **englischen Originalwortlaut** aus dem publizierten PaRIS-PQ,
- die deutschen Fassungen hängen als `translation`-Extension (`http://hl7.org/fhir/StructureDefinition/translation` mit `lang`/`content`) daran — `de-CH` für den Schweizer Wortlaut, `de-DE` nur dort, wo eine eigene deutsche Fassung tatsächlich existiert,
- Antwortkonzepte in CodeSystems und ValueSets entsprechend über `designation` mit `language`.

**Begründung:** Das ist exakt die Konvention des MII-PRO-Moduls (englische Primärdisplays, deutsche Übersetzungen als Extension bzw. Designation; dort stehen dafür die RuleSets `Translation`, `ConceptIntl` und `DisplayItemIntl` bereit). Damit entfällt bei einer späteren Übernahme ins Modul (siehe ADR-003) jede Umstellung. Rechtlich ist es zudem die sauberste Form: Der englische Text ist das OECD-Original, `de-CH` die offizielle TRAPD-Übersetzung — beides OECD-Material, für das PCOR-MII gar nicht als Übersetzer auftritt.

**Ausnahme:** Die **GI-PS-Items** bleiben deutschsprachig-primär. Ihre Lizenz untersagt eine Übersetzung ausdrücklich („dürfen … nicht modifiziert, **übersetzt** oder an Dritte weitergegeben werden"), eine englische Fassung ist dort also nicht zulässig. DEM bleibt damit bewusst gemischt-sprachig; eine pauschale English-first-Regel ist nicht möglich.

**Status der Umsetzung: umgesetzt (2026-09-29).** In [DEM](Demographie.html) tragen 19 Items den englischen PaRIS-Originalwortlaut als `item.text` mit der Schweizer Fassung als `de-CH`-Übersetzung; die sechs DEM-eigenen Antwortskalen tragen englische Displays mit `de-CH`-Designation (36 Konzepte).

**Bewusst deutsch-primär geblieben** — und jeweils aus einem anderen Grund:

| Element | Grund |
|---|---|
| `AGE` | In PCOR-MII auf **Geburtsdatum** umgestellt; entspricht damit nicht mehr dem PaRIS-Altersband und ist keine Übersetzung eines PaRIS-Items |
| `Q_GENDERID` | Im PaRIS-PQ nur als länderspezifische Frage ohne Wortlaut geführt |
| `Zipcode`, `CPCOR_REQ` | Nicht aus PaRIS, PCOR-MII-eigen |
| `GIPS04`, `GIPS10` samt Antwortskalen | GI-PS — die Lizenz untersagt eine Übersetzung ausdrücklich |
| `DemIscedCS` | Bildungsabschlüsse nach deutschem KMK-System — eigenständige Anpassung, keine Übersetzung des PaRIS-Wortlauts |
| `DemAntwortCS` | Projektweit von MHI, ACE und EDE-Q6 mitgenutzt; dort nur **englische Designations ergänzt**, eine Umstellung des Displays wäre ein IG-weiter Schritt |

#### ✅ ADR-004 — Score-`Observation`s nur über das MII-PRO-Modul
**Datum:** 2026-09-23

**Kontext:** Wo ein Score berechenbar ist, sollen dazu auch `Observation`s entstehen — nicht nur `QuestionnaireResponse`s. Im MII-PRO-Modul ist dafür bereits eine vollständige Infrastruktur etabliert (Muster: SCOFF, WHODAS-12, PHQ-9).

**Entscheidung:** **Score-Artefakte werden nicht in PCOR-MII angelegt, sondern im MII-PRO-Modul.** Der Grund ist nicht nur Governance, sondern technisch bindend: Jede Score-`ObservationDefinition` upstream trägt ihren Code aus dem **`mii-cs-pro-score-catalogue`** — einem CodeSystem im MII-Namespace, das PCOR-MII nicht erweitern kann — und konformiert gegen das Profil **`mii-pr-pro-score-blueprint`**. Ein in PCOR-MII gemünzter Score-Code wäre ein Parallel-Namespace, der bei der Übernahme ins Modul erneut migriert werden müsste. „Score bauen" und „ins PRO-Modul geben" sind damit **ein** Arbeitspaket, nicht zwei.

**Vollständiges Artefakt-Set je Instrument upstream:** `Questionnaire` · Score-`ObservationDefinition` (`mii-pr-pro-score-blueprint`, Code aus dem Score-Katalog, `permittedDataType`, `quantitativeDetails.unit`, `qualifiedInterval` für Messbereich und Referenzkategorien, `ScoreHealthCorrelation` für die Scoring-Richtung) · `Observation`-Profil · Beispiel-Response und Beispiel-Score.

**Welche AN-Instrumente kommen überhaupt in Frage?** Nur solche mit validierter Scoring-Vorschrift für **den erhobenen Zuschnitt** — andernfalls entstünde genau die Scheinvalidität, die ADR-003 vermeidet:

| Instrument | Score berechenbar? |
|---|---|
| **ERQ-6** | **nein — korrigiert 2026-10-01.** Zuvor als validiert ausgewiesen; der Bogen ist nicht der ERQ-S, die Scores sind zurückgezogen |
| EDE-Q6 | nein — Subskalen-/Global-Mittelwerte gelten für das Vollinstrument |
| ANSOCQ-2 | nein — Mittelwert über 20 Items |
| SSUK-2 | nein — zwei gegenläufig gepolte Items |
| ACE | nein — Score ist die Ja-Anzahl über alle 10 Fragen |

Damit trägt **kein** AN-Instrument einen Score. Was zuvor als Gate für die erste Upstream-Einreichung galt — der vermeintlich validierte ERQ-S-Score — ist entfallen.

**MDR-Abgrenzung (upstream-Vorgabe, gilt mit):** Cut-offs und Schweregradkategorien werden als Referenzintervalle **dokumentiert**, aber **nicht als ausführbare Interpretationslogik** ausgeliefert — Software, die PRO-Antworten verrechnet *und klinisch interpretiert*, kann als Medizinprodukt-Software gelten (MDCG 2019-11, Regel 11 Anhang VIII MDR). Für die sensiblen AN-Instrumente (ACE, EDE-Q6) ist das besonders zu beachten.

**Nachtrag 2026-09-29 — der Katalogcode ist keine harte Sperre.** Die Prüfung des Blueprint-Profils `mii-pr-pro-score-blueprint` (im Dependency-Paket enthalten und damit hier verwendbar) ergibt ein klareres Bild, als ein „extensible" Binding es wäre:

| Ebene | Befund |
|---|---|
| `ObservationDefinition.code` | Das Blueprint setzt **kein eigenes Binding**. Es gilt allein das ererbte FHIR-Basisbinding der Stärke **`example`** (`observation-codes`) — die schwächste Stufe, rein illustrativ |
| Score-Katalog | **Nicht** per Binding eingebunden, sondern als Slice mit `fixedUri` auf `coding.system` |
| `code.coding` | Slicing `rules = open`, Diskriminator `value` auf `system`; die Slices `snomed`/`loinc`/`mii` sind sämtlich `0..1`, verpflichtend ist allein `code.coding 1..*` |

Codings mit einem anderen System sind damit nicht bloß geduldet, sondern durch das offene Slicing ausdrücklich vorgesehen. Und weil `code.coding` mehrfach belegbar ist, lässt sich ein künftiger MII-Code später **ergänzen statt ersetzen** — Migration durch Hinzufügen, ohne Bruch bestehender Referenzen.

**Präzisierte Entscheidung:** Ein Score-Artefakt darf in PCOR-MII entstehen, wenn (a) eine validierte Berechnungsvorschrift publiziert vorliegt und (b) weder LOINC noch SNOMED CT noch der MII-Katalog einen Code führen. Es trägt dann einen Code aus dem lokalen [`pcor-score-catalogue`](CodeSystem-pcor-score-catalogue.html), gilt als **arbeitsfähige Vorwegnahme** und ist upstream nachzuziehen. Umgesetzt für [PROPr](PROMIS-16.html#propr) — den bislang einzigen Fall.

**Zuständigkeit bleibt upstream.** PROPr ist ein **PROMIS-spezifischer** Score (er beruht auf den PROMIS-Domänenkalibrierungen), nur eben nicht profilspezifisch. Da das MII-PRO-Modul die PROMIS-Artefakte pflegt, gehört er dorthin. Nachzuziehen sind dort:

1. Code **`promis-propr-utility`** im `mii-cs-pro-score-catalogue` — die Instrumentenfamilie gehört nach dortiger Konvention in den Code (vgl. `promis-29-anxiety-tscore`, `promis-cognitive-function-sf4a-raw`)
2. **`mii-obsdef-pro-score-promis-propr-utility`** nach dem Muster des EQ-5D-5L-Index
3. Verweis vom PROMIS-16-Questionnaire auf den Score

Der lokale Code in PCOR-MII trägt bereits denselben Namen `promis-propr-utility`, damit die spätere Ergänzung ein reines Hinzufügen bleibt.

**Unverändert gilt:** Für Scores ohne validierte Vorschrift (die AN-Zuschnitte aus ADR-003) entsteht weiterhin nichts, und die MDR-Abgrenzung bleibt bestehen — definiert wird, *was* der Score ist und in welchem Bereich er liegt, nicht *wie* er ausgerechnet wird.

#### ✅ ADR-003 — AN-Instrumente vorerst als PCOR-MII-eigene Ressourcen
**Datum:** 2026-09-23

**Kontext:** Die Entität AN erhebt fünf spezifische Instrumente, alle als projektspezifische Zuschnitte publizierter Instrumente: ERQ-6, EDE-Q6, ANSOCQ-2, SSUK-2 (je „trennschärfstes Item je Skala") und ACE (erste 5 der 10 Fragen). Im MII-PRO-Modul existieren dafür keine Artefakte.

**Entscheidung:**

1. **Pflege vorerst in PCOR-MII** (analog EXPECT/IPQ-S) — ausdrücklich **vorläufig, zum Testen**. Sobald die Instrumente offiziell abgestimmt sind, können Teile ins **MII-PRO-Modul** aufgenommen werden; PCOR-MII würde sie dann referenzieren statt selbst pflegen (Muster SCOFF/SSD-12/WI-7 seit MII PRO 2026.6.0). Bei einer Übernahme ändern sich die kanonischen URLs — dann ist eine Migrations-ConceptMap bzw. ein Seitenhinweis vorzusehen (Vorbild: `mii-cm-pro-gad-7-linkids`).
2. **Keine Instrument-Codes des Vollinstruments an Zuschnitte:** SNOMED CT kennt Konzepte für ANSOCQ (`443321009`) und EDE-Q (`446825002`), LOINC ein Panel für ACE (`82813-7`) — alle bezeichnen das jeweilige Vollinstrument. Ein 2-, 5- oder 6-Item-Zuschnitt ist nicht das validierte Instrument; diese Codes werden daher **nicht** vergeben und sind nur in den FSH-Kommentaren dokumentiert. **Präzisiert am 01.10.2026:** `Questionnaire.code` bleibt deshalb nicht leer, sondern trägt einen **lokalen Katalogcode** aus [`pcor-questionnaire-catalogue`](CodeSystem-pcor-questionnaire-catalogue.html), der ausdrücklich den *Zuschnitt* bezeichnet und nicht das Vollinstrument — `ansocq-2` ist der Zweiitem-Zuschnitt, nicht das ANSOCQ. Das Verbot betrifft die Vollinstrument-Codes, nicht die Kodierung überhaupt.
3. **Kein Score ohne validierte Grundlage:** Für keinen der Zuschnitte existiert eine publizierte Scoring-Vorschrift; SSUK-2 ist zudem gegenläufig gepolt (Begründungsmuster wie EXPECT). Antwortcodes tragen `itemWeight`, damit eine spätere Auswertung möglich bleibt.
4. **Wortlaut und Kodierung aus dem Dictionary:** Antwortcodes = numerische Dictionary-Codes; Ja/Nein-Items nutzen das projektweite `DemJaNeinVS`. Visuelle Skalen werden nach dem EXPECT-Muster als `integer` + Slider mit Anker-`display`-Item umgesetzt.
5. **Entscheidungen in der Ressource selbst:** Jedes AN-Questionnaire trägt seine Designentscheidungen zusätzlich maschinenlesbar in der [`designNote`-Extension](http://hl7.org/fhir/StructureDefinition/designNote) (`valueMarkdown`) — bogenweite Entscheidungen auf Questionnaire-Ebene, punktuelle direkt am `item` (z. B. das `edeq30`-Erratum). So reisen die Begründungen mit, wenn eine Ressource ins MII-PRO-Modul übernommen wird; diese Seite bleibt das ausführliche Log.
6. **`linkId`-Regel:** Hat der Bogen eine offizielle Fragebogen-Nummerierung — insbesondere als destillierte Short Form oder aus einer Item-Bank konsolidierte Version —, werden die **Original-ItemIDs als `linkId`** verwendet (so bereits bei EDE-Q6 `edeq1/7/12/27/29/30`, ANSOCQ-2 `ansocq3/14`, SSUK-2 `ssuk14/10`, ACE `ace1–ace5`). Handelt es sich nur um **Einzelfragen oder Abschnitte** aus PROMs ohne eigene Nummerierung, dürfen sie als PCOR-MII-eigene Ressourcen mit Dictionary-IDs abgebildet werden. Für die spätere Aufnahme ins MII-PRO-Modul ist die Original-Nummerierung Voraussetzung eines stabilen, geteilten `linkId`-Namespace. **Erweitert durch ADR-008** (oben): Dort stehen die beiden Hälften, die hier fehlten — woher der *Wortlaut* eines Zuschnitts kommt (aus der autorisierten Quelle der **Langform**, nicht aus der Kurzform-Publikation) und dass die Langform mitmodelliert wird, soweit beschaffbar. Die Granularitätsfrage — wann ein eigener Questionnaire und wann ein Sammelbogen — regelt **ADR-011**.

**Begründung:** Erhebungsfähigkeit jetzt (Testing), ohne dem MII-PRO-Modul vorzugreifen; keine Scheinvalidität durch geliehene Instrument-Codes oder erfundene Scores; maximale Dictionary-Treue für das Mapping zurück in die Studiendatenhaltung.

#### ✅ ADR-002 — Questionnaires vom MII-PRO-Modul erben statt selbst generieren
**Datum:** 2026-06-04

**Kontext:** Es existiert ein umfangreiches PRO-Daten-Dictionary (`MASTER_3EntitiesOverview.xlsx`, 454 Items / 100 Instrumente). Erwogen wurde, daraus FSH-Questionnaires automatisch zu generieren.

**Entscheidung:** Stattdessen **am [MII-PRO-Modul](https://www.medizininformatik-initiative.de/Kerndatensatz/KDS_PRO/) erben** — Paket `de.medizininformatikinitiative.kerndatensatz.pros` (FHIR R4). Die dort **bereits spezifizierten** Questionnaires (inkl. LOINC-kodierter Answer-ValueSets, z. B. PHQ-9) werden wiederverwendet. Das Excel bleibt **fachliche Auswahl-/Mapping-Referenz**, nicht technische Quelle.

**Begründung:** Interoperabilität & Konformität zur MII; keine Doppelpflege; weniger Fehlerquellen; geringerer Aufwand als ein eigener Generator.

**Hinweis (FHIR):** `Questionnaire` ist eine Instanz-Ressource, kein StructureDefinition — es wird nicht „profiliert". Wiederverwendung erfolgt über direkte Referenz der kanonischen URL oder über `Questionnaire.derivedFrom`.

#### ✅ ADR-001 — Repo-Setup analog T-CABS
**Datum:** 2026-06-04

**Entscheidung:** IG-Gerüst, BIH-Corporate-Design-Template, CI/CD-Pipeline und Mehrsprachigkeit 1:1 vom Schwester-Repo [`BIH-CEI/T-CABS`](https://bih-cei.github.io/T-CABS/) übernommen.

**Abweichungen von T-CABS:**

- **Standardsprache Deutsch** (T-CABS: Englisch) + Englisch als Übersetzung.
- **Branding nur BIH + Charité** (kein Projektlogo).
- Repo auf **public** gestellt, damit GitHub Pages auf dem Plan funktioniert.
