# Release Notes - PCOR-MII Implementation Guide v0.3.0

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

**`fix`** **Bereitstellungs-Review:** Die Seiten [Validierung](Validierung.md), [Anwendung](Implementation.md) und [Bereitstellung](Bereitstellung.md) sind gegen den tatsächlichen Stand geprüft und nachgezogen — veraltete Simplifier-Links (2026.4.1 auf 2026.7.0), die HAPI-Containerversion (v8.4.0 auf v8.12.0), die Übersichtstabelle der Bereitstellung (5 auf 20 eigene Bögen; Terminologie-, Bundle- und Score-Zeile neu), die Beispiel-Abschnitte (jetzt über die drei Bundles organisiert) und die Checkliste: **`meta.profile` bewusst ohne Versionspin**, die `questionnaire`-Referenz dagegen immer versioniert. Die beiden PROMIS-Altbeispiele trugen noch den Profil-Pin `|2026.4.1` und eine unversionierte Questionnaire-Referenz — beides umgedreht.

**`feature`** **Beispielpatienten je Use Case, mit Bundles und Zeitachse.** Zwei synthetische Personen tragen zusammenhängende Datensätze: [Patientin AN](Patient-pcor-mii-exa-patient-an.md) (umbenannt aus `pcor-mii-exa-patient`; alle bestehenden Antworten zeigen jetzt auf die neue Id) mit **zwei Terminen** — Initial 18.06.2026 und Monitoring 30.07.2026 — und der neue [Patient PSS](Patient-pcor-mii-exa-patient-pss.md) mit einem Screening-Termin 25.06.2026. Je Termin bündelt ein `Bundle` (type `collection`) Patient und Antworten: [AN-Initial](Bundle-pcor-mii-exa-bundle-an-initial.md) (13 Entries), [AN-Monitoring](Bundle-pcor-mii-exa-bundle-an-monitoring.md) (10), [PSS-Screening](Bundle-pcor-mii-exa-bundle-pss-screening.md) (20); erzeugt mit `scripts/build-example-bundles.py`, Termin-Zuordnung dort explizit gepflegt.

**Der Monitoring-Termin belegt die `TIMING`-Logik in der Gegenrichtung:** die **erste [UKHD-ND-Antwort](QuestionnaireResponse-UKHDNDMonitoringResponse.md)** überhaupt, eine bewusste Teilantwort zu UKHD-PT (nur `bdkm16`), ein verneintes UKHD-LE-Monitoring-Item mit gesperrtem Freitext — und keine Wiederholung der Initial-Items (ACE, UKHD-ANB, UKHD-D, `bdkm15`). Die Verlaufswerte sind leicht gebessert, nicht remittiert.

**Die vertagten Beispielantworten sind damit nachgeliefert:** [OPD-SFK](QuestionnaireResponse-OPDSFKResponse.md), [GSLTPAQ](QuestionnaireResponse-GSLTPAQResponse.md), [EXPECT](QuestionnaireResponse-EXPECTResponse.md), [IPQ-S](QuestionnaireResponse-IPQSResponse.md) sowie — als Beleg, dass metadata-only die Nachnutzung von Antworten nicht behindert — [WAI](QuestionnaireResponse-WAIResponse.md) und [UKHD-EDP](QuestionnaireResponse-UKHDEDPMonitoringResponse.md): nur `linkId`s und Werte, kein Wortlaut. Dazu **zwölf Antworten auf MII-PRO-Questionnaires** (PHQ-9, GAD-7, PHQ-15, SSD-12, WHODAS-12, EURONET-SOMA, WI-7, SCOFF, ISR-Z, PC-PTSD und die beiden PROMIS-Beispiele, letztere dem PSS-Patienten zugeordnet) — referenziert gegen die Upstream-Canonicals mit Versionspin `|2026.7.0`. Alle drei Bundles validieren mit 0 Errors.

**`documentation`** **Neue Seite [Fragebogen-Bibliothek](Fragebogen-Bibliothek.md)** (de/en) nach dem Muster der MII-PRO-Bibliothek: eine Tabelle über alle Fragebögen mit Use-Case-Markierung, Doku-Seite, `Questionnaire`-Definition (PCOR-MII oder MII PRO), Beispielantwort und Score-Artefakt, dazu je Use Case eine gefilterte Sicht. **Das Fragebögen-Menü ist dafür von 24 Einträgen auf einen eingedampft** — die Instrumentenseiten bleiben bestehen und sind über die Tabelle erreichbar.

**`documentation`** **Englische Fassung der Seite [UKHD-Zusatzitems](UKHD-Zusatzitems.md)** ergänzt; die Seite **Essstörungen — Erhebungsplan ist entfernt**. Sie spiegelte das Blatt **Domain Overview** des Item Level Dictionary — eine zweite Quelle der Wahrheit für einen Plan, der im Excel gepflegt wird und sich dort weiterentwickelt. Die Nachschlagefunktion („wo liegt der Fragebogen?") übernimmt vollständig die [AN-Instrumentenliste](AN-Instrumentenliste.md); Verweise zeigen jetzt direkt auf das Quellblatt.

**`breaking`** **Der [ACE](ACE.md) ist jetzt ein PCOR-MII-Komposit, nicht mehr der ACE-Zuschnitt.** Zu den fünf ACE-Items sind die sechs Items der Dictionary-Gruppe `UKHD-CTT` (`traumaspecific1`–`6`) gekommen, die die berichteten Ereignisse zeitlich einordnen — in drei `group`-Items mit `enableWhen` auf `ace1`, `ace2` beziehungsweise `ace3`.

**Der Anlass stand die ganze Zeit im Dictionary.** Die Spalte `ADDITIONAL INFORMATION` sagt für `traumaspecific1`/`2` wörtlich **„ACE Abfrage ace1, Antwort Ja = 1"**, für `3`/`4` entsprechend `ace2` und für `5`/`6` `ace3`. Damit war der Bezugspunkt von „Ihre Angabe" — bis dahin der größte offene Punkt des [UKHD-Zusatzitems](UKHD-Zusatzitems.md) — nie offen, sondern bloß übersehen. Er ist aber nur ausdrückbar, wo beide Seiten zusammenliegen: `enableWhen.question` nimmt laut R4 eine `linkId` **innerhalb desselben Questionnaire**. Die Items sind deshalb aus dem Sammelbogen in den ACE gezogen, statt die Bedingung nur zu dokumentieren.

**Was das kostet, steht im Bogen:** Titel (**„ACE + Zeitangaben"**), `description` und `copyright` weisen ihn als Komposit mit **zwei Rechtequellen** aus — ACE frei, der UKHD-Wortlaut ohne dokumentierte Freigabe. `Questionnaire.language` wechselt von `en` auf `de`, weil der Bogen nur auf Deutsch vollständig lesbar ist (11 von 11 Items gegen 5 von 11); die fünf ACE-Items bleiben nach [ADR-005](Designentscheidungen.md) auf Itemebene englisch-primär.

**Was es nicht kostet:** Die sechs Items behalten ihre `item.code`-Codings und dort die Property `instrument = UKHD-CTT`. Die Gruppe hat die Ressource gewechselt, nicht die Gruppenzugehörigkeit — damit ist die Behauptung von [ADR-011](Designentscheidungen.md) erstmals an einem echten Fall geprüft: Zugehörigkeit hängt am Code, nicht am Dateinamen. Die Beispielantwort [ACEResponse](QuestionnaireResponse-ACEResponse.md) belegt die Verzweigung in beide Richtungen: `ace1` ist bejaht, also ist `ctt-ereignis-1` gefüllt; `ace2` und `ace3` sind verneint, also fehlen deren Gruppen ganz.

**`fix`** **Der ERQ-6 ist nicht der ERQ-S — Identifikation und Scores zurückgezogen.** Bis Release 0.3.0 war der Bogen als die offizielle Kurzform ERQ-S (Preece et al. 2023) ausgewiesen und trug zwei validierte Subskalen-Scores. Beides war falsch.

Tabelle 1 der Publikation gibt die Zuordnung an: Der **ERQ-S besteht aus den ERQ-Items 2, 6, 7, 8, 9 und 10** (Cognitive Reappraisal 7, 8, 10; Expressive Suppression 2, 6, 9). PCOR-MII führt die **ERQ-Items 1, 2, 3, 6, 8 und 9**. Vier Items überschneiden sich, die Unterdrückungs-Items sind sogar identisch — die **Neubewertungs-Items aber nicht**: PCOR-MII hat 1 und 3, der ERQ-S hat 7 und 10. Es sind zwei verschiedene Zuschnitte desselben Instruments.

Wie der Fehler entstand: Die ERQ-S-Scoring-Angabe nennt „sum items 1, 3, and 5“ in **ERQ-S-Zählung**. Diese Nummern wurden als ERQ-Nummern gelesen und über eine **angenommene** Zuordnung übersetzt, statt gegen Tabelle 1 geprüft zu werden. Zwei teilweise überlappende Nummernsysteme sind genau die Konstellation, in der ein Abgleich plausibel aussieht und trotzdem falsch ist — dieselbe Falle wie bei `erq6` im Dictionary gegen `erq6` im Questionnaire.

**Zurückgezogen:** die beiden `ObservationDefinition`s `PcorObsDefErqsReappraisal` und `PcorObsDefErqsSuppression`, die beiden Beispiel-`Observation`s, die Katalogcodes `erq-s-reappraisal` und `erq-s-suppression` sowie die beiden FHIRPath-`variable`s im Questionnaire. Damit trägt **kein** AN-Instrument mehr einen Score.

**Unverändert geblieben** — und das ist der Punkt: der Bogen selbst. Wortlaut, `linkId`s, `item.code`s und Sprachebenen sind dictionary-treu und korrekt; die `linkId`s sind nach wie vor die Original-ERQ-Itemnummern. Falsch war nur, was über den Bogen behauptet wurde.

**`documentation`** Titel und Beschreibungen auf „ERQ-6“ umgestellt (zuvor „ERQ-S“), auf allen betroffenen Seiten und in `designNote`, `Description` und `copyright`. Die Id der ConceptMap `pcor-cm-erq-s-linkids` bleibt dagegen unverändert: Sie ist eine in 0.3.0 veröffentlichte Canonical, und eine Id ist ein Identifikator, keine Aussage — die Aussage steht in Titel und Beschreibung

**`feature`** Die **UKHD-Zusatzitems AN** sind modelliert — als **sechs eigenständige Questionnaires, eines je Dictionary-Gruppe** ([UKHD-PT](Questionnaire-UKHDPT.md) Vorbehandlung, [UKHD-ANB](Questionnaire-UKHDANB.md) Essstörungsanamnese, [UKHD-CT](Questionnaire-UKHDCT.md) aktuelle Behandlung, [UKHD-LE](Questionnaire-UKHDLE.md) belastende Lebensereignisse, [UKHD-ND](Questionnaire-UKHDND.md) neue Diagnosen, [UKHD-D](Questionnaire-UKHDD.md) Diagnosen bei Aufnahme; Übersicht auf [UKHD-Zusatzitems](UKHD-Zusatzitems.md)). Ein erster Wurf als Sammelbogen `UKHD-AN` ist noch vor der Veröffentlichung aufgegeben: Die Gruppen sind **kein gemeinsames Instrument**, die Rechte- und Herkunftsfrage wird je Gruppe beantwortet, und der Sammelbogen-Name kollidierte mit der echten Dictionary-Gruppe `UKHD-AN` (`AN_subtyp`, liegt im [MHI](MHI.md)).

**Das `UKHD`-Präfix ist ein Zusammenstellungs-Etikett, keine Autorenschaftsangabe** — die Handanweisung des Master-Excel definiert die `INSTRUMENT`-Spalte als Auswahl des Erhebungswerkzeugs durch die Standorte, und im AN-Blatt ist die UKHD-Timing-Spalte auch bei ERQ-6 und ACE gefüllt. Woher der Wortlaut je Gruppe stammt, ist nicht dokumentiert; die Frage an den Standort ist eine **Herkunftsfrage**, keine bloße Freigabefrage. Hinweise geben die Variablennamen: überwiegend sprechende Studiendatenbank-Namen, aber `bdkm15`/`bdkm16`, `erwEV24`–`26` und `edp1`–`11` tragen fremde Kürzelschemata — dort kann ein Verlag betroffen sein. Alle sechs Ressourcen tragen `status = draft`, `experimental = true` und ein `copyright`, das genau das ausweist; bei einer Einschränkung wird **je Gruppe** auf metadata-only umgestellt (Muster [WAI](WAI.md)).

Sieben eigene Antwortskalen als CodeSystem + ValueSet — fünf hier, zwei beim ACE —, mit **`ordinalValue` nur dort, wo die Skala wirklich ordinal ist**: gesetzt bei `bdkm16` (monotone Häufigkeit, letzte Stufe offen) und `traumaspecific1/3/5` (einmalig < mehrfach), bewusst **nicht** bei `bdkm15` (drei Zeitbezüge, nicht erschöpfend geordnet), `treatment_outpatient` (mischt Behandlungsstatus und Setting) und `traumaspecific2/4/6` (nominale Zeitrelation plus erhobene Nicht-Antwort). Die Ja/Nein-Items nutzen das projektweite [`DemJaNeinVS`](ValueSet-dem-ja-nein.md).

**Die `TIMING`-Spalte des Dictionary ist bewusst nicht als FHIR-Struktur modelliert** — und wird durch den Ressourcenzuschnitt trotzdem sichtbar: Zum Initial-/Screening-Termin der Beispiel-Patientin existieren **fünf** Antworten für **sechs** Bögen, weil [UKHD-ND](Questionnaire-UKHDND.md) zu diesem Termin nicht erhoben wird. Im Sammelbogen hätte dieselbe Tatsache als bewusst leere Gruppe erklärt werden müssen.

**`UKHD-BI`** (Körperbild, 3 Items) bleibt **nicht modelliert** (visuelle Bildskala, Erhebung läuft noch nicht damit, Bildvorlage fehlt im Dictionary); **`UKHD-EDP`** ist ein eigener metadata-only-Bogen — siehe den Eintrag weiter unten.

**`documentation`** Neun Befunde zum **Item Level Dictionary**, aufgefallen beim Modellieren von [UKHD-Zusatzitems](UKHD-Zusatzitems.md) und dort einzeln als `designNote` am betroffenen Item hinterlegt. Der gewichtigste: **`UKHD-CTT` hat drei identische Itempaare, deren Bezugspunkt nirgends benannt ist.** Die Itemtexte verweisen auf „Ihre Angabe", also auf ein vorangehendes Item, das nicht zur Gruppe gehört — naheliegend wären die bejahten [ACE](ACE.md)-Items, aber der ACE hat fünf Items, nicht drei. Konsequenz: **kein `enableWhen` und keine Wiederholungslogik**, weil ein erfundener Bezug eine Behauptung über die Erhebungslogik wäre. Dazu: `traumaspecific2/4/6` enthalten **zwei Fragesätze in einem Item** (vermutlich numerus-abhängige Alternativen, Wortlaut unverändert übernommen); `bdkm15` und `treatment_outpatient` fragen fast dasselbe in zwei Gruppen mit zwei Skalen; der Variablenname **`treatment_outpatient` ist irreführend**, weil Stufe 4 ausdrücklich stationäre und teilstationäre Behandlung erfasst; `comorbid1` ist wörtlich eine Ja/Nein-Frage, hat aber ein Textfeld als Antwortformat; `UKHD-LE` führt zwei Variablenpräfixe (`life_event1_*` gegen `lifev_*`) ohne ein `life_event2`; die Gruppen-ID `UKHD_D` trägt einen Unterstrich, alle sechs anderen einen Bindestrich; das Präfix `bdkm` ist nicht erläutert und `bdkm16` fragt nach Arztbesuchen statt nach Psychotherapie; und `UKHD_D` erhebt als Freitext, was [MHI](MHI.md) über `CPCOR-DIAG` und `GIPS13` kodiert erhebt.

Außerdem **fünf sprachliche Fehler der Vorlage**, die nach [ADR-010](Designentscheidungen.md) **unverändert stehen bleiben** und vollständig aufgelistet sind: `lowBMI` „Ihr **niedrigter** BMI", `comorbid1` „den **zurvor** genannten", in `UKHD-LE` „Auflösung einer **Partnerschaften**" und „Verlust **ihres** Zuhauses", in `treatment_outpatient` „Ja" gegen „ja". Eine Bereinigungsebene ist hier — anders als beim [ANSOCQ-2](ANSOCQ-2.md) — **bewusst gar nicht angelegt**: Dort gibt es eine publizierte Vorlage, gegen die sich Druckfehler und Abschreibfehler unterscheiden lassen; hier **ist das Dictionary die Vorlage**, und damit gehört die Korrektur dorthin und nicht in eine FHIR-Ebene daneben **`feature`** **Questionnaire-Katalog** [`pcor-questionnaire-catalogue`](CodeSystem-pcor-questionnaire-catalogue.md) — ein Code je PCOR-MII-eigenem Bogen, gesetzt auf `Questionnaire.code` bei allen dreizehn. Zuvor trugen zwölf von vierzehn Bögen **gar keinen** Code; nur der WAI hatte einen (SNOMED `446174004`).

Die Canonical ersetzt das nicht: Sie identifiziert laut R4 das **Artefakt** (“a literal address at which an authoritative instance of this questionnaire is found”), `code` dagegen das **Konzept, das der Bogen repräsentiert**. Dieselbe Achse wie `linkId` gegen `item.code` — das eine artefaktgebunden, das andere teilbar.

**Der Anlass war hausgemacht:** ADR-007 Punkt 2 verlangt, dass zwei Fassungen desselben Instruments denselben Katalogcode tragen, und verwies dafür auf den MII-Questionnaire-Katalog. Der führt aber weder den GSLTPAQ noch einen der AN-Bögen — die Regel war damit genau in dem Fall nicht umsetzbar, für den sie geschrieben wurde. ADR-007, ADR-009 und ADR-003 Punkt 2 sind entsprechend nachgezogen.

**Nachgezogen:** Die sechs UKHD-Zusatzbögen tragen je einen eigenen Katalogcode (`ukhd-pt` … `ukhd-d`) — bei Bögen ohne publiziertes Instrument ist genau das der Fall, für den ADR-004 den lokalen Code vorsieht, und die Codes bezeichnen exakt die Dictionary-Gruppe. Der zwischenzeitliche Sammelcode `ukhd-an` ist entfallen; `ace` bezeichnet jetzt das Komposit aus ACE-Items und UKHD-Zeitangaben, nicht mehr den ACE-Zuschnitt allein.

Die Codes bezeichnen ausdrücklich den **Zuschnitt**, nicht das Vollinstrument (`ansocq-2` ist der Zweiitem-Zuschnitt). ADR-003 Punkt 2 bleibt damit unberührt: Vollinstrument-Codes aus SNOMED oder LOINC werden Zuschnitten weiterhin nicht zugewiesen. Beim [WAI](WAI.md) stehen Katalogcode und SNOMED-Code nebeneinander — `Questionnaire.code` ist `0..*`, ein späterer MII-Code wird ergänzt statt ersetzt (ADR-004)

**`feature`** **UKHD-EDP als metadata-only-Bogen.** Elf Items zur Essstörungspathologie aus der AN-Batterie des UKHD — Struktur, `linkId`s, sechsstufiges Antwortformat und Wertebereiche vollständig, Item-Texte und Antwortstufen **neutralisiert** (Muster: [WAI](WAI.md)). Kein Score, kein `Questionnaire.code`.

Zwei Gründe tragen das unabhängig voneinander: Der Block ist vermutlich ein **EDI-2-Zuschnitt** (je ein Item pro Subskala) und damit ein Hogrefe-Testverfahren; und unabhängig davon fehlt für die Standort-Itemgruppen jede dokumentierte Freigabe. **Metadata-only ist unter beiden Lesarten richtig** — deshalb liess sich jetzt entscheiden, ohne die Identifikation vorher aufzulösen.

Ein beim Modellieren hinzugekommenes Indiz: Das Antwortformat ist **sechsstufig**, und das EDI-2 nutzt genau sechs Stufen. Nicht bestätigt bleibt der Wortlautabgleich gegen den deutschen EDI-2-Bogen; davon hängt ab, ob der Bogen einen `Questionnaire.code` bekommt und ob die `linkId`s auf EDI-2-Itemnummern umzustellen sind.

Mitgezogen: Die Displays der elf Variablen im CodeSystem `pcor-item-dictionary` sind ebenfalls neutralisiert — sonst hätte das Dictionary veröffentlicht, was der Questionnaire zurückhält

**(noch keine Einträge)**

**`feature`** Neue Seite **[AN — Instrumentenliste](AN-Instrumentenliste.md)**: eine Nachschlagetabelle für den Use Case AN, die je Instrument direkt auf die Ressource verlinkt — PCOR-MII-Artefaktseite oder MII-PRO-IG. Die drei bestehenden AN-Seiten beantworten die Frage „wo liegt der Fragebogen, den ich erheben soll" jeweils nur teilweise: [AN](AN.md) beschreibt die Batterie fachlich, [Instrumente](Instrumente.md) alle drei Entitäten gemischt. Die neue Seite trennt Ressource (wo liegt sie) von Doku (was steht drin) in eigene Spalten und weist die drei Zustände **PCOR-MII / MII PRO / offen** explizit aus, statt sie in Prosa zu verstecken. Enthält zusätzlich die Scores, die UKHD-Itemgruppen mit ihrem Freigabestatus und einen Abgrenzungsabschnitt, was in AN **nicht** erhoben wird

**`fix`** Toter Link auf [WHODAS 2.0](WHODAS-12.md) korrigiert. Die IG-Doku-Seite im MII-PRO-IG trug ein `.page.md` zu viel und lieferte **404**. Instrumentenseiten liegen dort als Abschnitts-URL ohne `.page.md` (`…/PRO-Bibliothek/WHODAS-2.0?version=current`), nur echte Unterseiten tragen das Suffix — deshalb funktioniert der PROMIS-16-Link (`…/PROMIS/PROMIS-16.page.md`) und der WHODAS-Link nicht. Alle Upstream-Links der neuen Instrumentenliste sind einzeln gegen den veröffentlichten Guide geprüft, nicht aus dem Muster abgeleitet

**`fix`** Falsche Angabe auf der [PROMIS](PROMIS.md)-Seite korrigiert: PROMIS-29 und PROMIS-16 überlappen sich in **11**, nicht 14 Items, und **PROMIS-16 ist kein PROMIS-29-Subset plus zwei Cognitive-Function-Items**. Gegen die Questionnaires im Dependency-Paket nachgezählt: Fünf PROMIS-16-Items sind spezifisch, und sie liegen in **drei** Domänen — `sleep25` und `sleep90` (die Sleep-Domäne teilt mit PROMIS-29 **kein einziges** Item), `srpper31-caps` (Social Roles) sowie `pc27r` und `pc-caps3r` (Cognitive Function). Die praktische Folge stand bisher nirgends: Wer PROMIS-29 + Cognitive Function SF 4a erhebt, kann daraus **keinen PROMIS-16 rekonstruieren** — auch nicht die Cognitive-Function-Domäne, weil die SF 4a vier andere Items nutzt. Die [PROMIS-33](PROMIS-33.md)-Abdeckung ersetzt also das PROMIS-33, nicht das PROMIS-16. Die richtige Zahl stand auf der PROMIS-16-Seite schon seit v0.3.0, auf der Übersichtsseite aber die alte

**`documentation`** [PROMIS-16](PROMIS-16.md) um einen Abschnitt **Domänen im Vergleich zu PROMIS-29** erweitert, weil die Frage „welche Domänen unterscheiden sich?" zwei verschiedene Antworten hat. Auf Domänenebene genau zwei Unterschiede (PROMIS-16 hat Cognitive Function, PROMIS-29 die Schmerzintensität als NRS). Auf **Score**-Ebene sind die Profile dagegen **durchweg** verschieden, auch in den sieben gemeinsamen Domänen: dieselbe Domäne, andere Kurzform — vier Items mit Summenscore gegen zwei Items mit Antwortmuster-Lookup. Ein `promis-29-…-tscore` steht damit **nicht** für den PROMIS-16-T-Score derselben Domäne. **Bei LOINC ist die Lage asymmetrisch**, und das ist der praktisch folgenreichste Befund: LOINC führt zwei Ebenen nebeneinander — bank-ebene Domänen-T-Scores (`PROMIS emotional distress - anxiety …`) und instrumentenspezifische (`PROMIS-29 Anxiety score T-score`). Für PROMIS-29 existiert der instrumentenspezifische Satz **vollständig** (`71955-9`–`71967-4`), für **PROMIS-16 gar nicht** (0 Treffer in LOINC 2.83, auch keine Item- oder Panel-Codes). Ein PROMIS-16-T-Score kann also nur den Bank-Code tragen — denselben, den ein PROMIS-29-T-Score derselben Domäne trägt. Wer beide Profile nur über `code.coding[loinc]` filtert, mischt sie unbemerkt; die Unterscheidung muss über MII-Katalogcode und `method.text` laufen

**`documentation`** Die **Sleep-Domäne des PROMIS-16** ist belegt zugeordnet. Sie irritiert, weil sie ein Item aus der Sleep-Disturbance- und eines aus der Sleep-Related-Impairment-Bank mischt — LOINC führt für beide getrennte T-Scores (`77860-5` vs. `77859-7`), und der Sektionstitel upstream lautet entsprechend zweideutig „Sleep-related Impairment / Sleep Disturbance". Die Entwicklungspublikation ist eindeutig: Die Domäne heißt **Sleep Disturbance**, und die Itemparameter des SRI-Items wurden auf die Sleep-Disturbance-Items kalibriert (Edelen et al. 2024). Ein PROMIS-16-Sleep-T-Score gehört damit unter `77860-5`. Nebenbefund derselben Stelle: Nur diese eine Domäne ist nicht auf eine reine Allgemeinbevölkerungsstichprobe zentriert, sondern auf eine kombinierte mit klinischer Stichprobe

**`documentation`** Zwei Inkonsistenzen in den **PROMIS-29-ObservationDefinitions upstream** dokumentiert, gefunden beim Durchgehen der LOINC-Zuordnung. Sechs der sieben Domänen-T-Scores nutzen den bank-ebenen Code, **Anxiety** dagegen als einzige den instrumentenspezifischen `71967-4`, obwohl mit `77862-1` ein Bank-Code vorliegt — unbegründet und für einen Cross-Walk zu PROMIS-16 hinderlich. Bei **Social Roles** ist die Bank-Wahl (`77854-8`) umgekehrt sachlich zwingend: Der instrumentenspezifische `71957-5` heißt „PROMIS-29 Satisfaction with participation in social roles score T-score" und benennt die Domäne des PROMIS-29 **v1.0** — ab v2.0 ist es **Ability to Participate in Social Roles and Activities**, eine andere Domäne mit eigener Kalibrierung, nicht bloß umbenannt. Für PCOR-MII derzeit folgenlos, weil hier keine PROMIS-Score-Observations modelliert werden

**`documentation`** Entscheidung festgehalten, die **acht PROMIS-16-Domänen-T-Scores nicht lokal in PCOR-MII anzulegen**, und begründet, warum das kein Widerspruch zum lokal geführten [PROPr](PROMIS-16.md#propr) ist: Der PROPr rechnet auf Domänen-θ und ist damit profilunabhängig — ein stabiles Artefakt unabhängig davon, welches PROMIS-Profil ihn speist. Die Domänen-T-Scores hängen dagegen an der 2-Item-Kurzform und damit an genau der Antwortmuster-Tabelle, die upstream erst für 2027 vorgesehen ist; acht lokale Codes mit noch offener Berechnungsvorschrift wären Migrationsschulden. Stattdessen steht die Lücke jetzt als siebenteilige, ticketfähige Liste auf der Seite — inklusive der LOINC-Zuordnung je Domäne und der fünf upstream noch offenen Item-Codes

### v0.3.0 (2026-09-30) — AN-Batterie, Designentscheidungen und Item-Zuordnung

**`documentation`** Bei allen fünf AN-Instrumenten ist jetzt in `designNote`, `Questionnaire.description` und auf der Instrumentenseite festgehalten, dass der **PCOR-MII-Code eines Items die Dictionary-Variable ist** — ein zweites lokales CodeSystem für dieselben Items gibt es bewusst nicht. Der Code bezeichnet das **Erhebungsfeld**, nicht die Itemnummer. Beim [ERQ-S](ERQ-6.md) fällt beides auseinander, und das ist die einzige Falle dieser Art im Projekt: Dictionary `erq4`, `erq5` und `erq6` liegen auf den ERQ-Items **6, 8 und 9**. Weil `erq6` in beiden Spalten vorkommt und dort Verschiedenes bezeichnet, fällt eine Fehlzuordnung nicht auf — die Seite zeigt die Zuordnung deshalb als Tabelle. Beim ACE stehen Dictionary-Variable und LOINC-Code nebeneinander; genau dafür ist `item.code` `0..*`

**`improve`** ERQ-S, EDE-Q6 und ACE auf **Englisch als Primärsprache** umgestellt (ADR-005) — alle drei haben ein englisches Original, waren aber deutsch-primär ohne Übersetzungsebene. `item.text` trägt jetzt den Originalwortlaut, die deutsche Fassung hängt als `translation` mit `lang = de` daran; beim EDE-Q6 zusätzlich die sieben Antwortkonzepte mit `designation`. Damit sind fünf der dreizehn Bögen englisch-primär (dazu DEM und ANSOCQ-2). Deutsch-primär bleiben die deutsch entwickelten und die projekteigenen Instrumente — beim [SSUK-2](SSUK-2.md) ausdrücklich begründet, weil sich die Items nicht als wörtliche ISSS-Items belegen lassen.

Die englischen Wortlaute sind **beschafft, nicht erinnert**: ERQ aus dem Originalbogen des [Stanford Psychophysiology Laboratory](https://spl.stanford.edu/resources), EDE-Q aus dem autorisierten Bogen EDE-Q 6.0 (© Fairburn and Beglin 2008, CREDO Oxford), ACE aus einem an Felitti et al. 1998 zitierenden Exemplar.

**Bei zwei Instrumenten verbessert das zugleich die Rechtelage**, weil sie nicht symmetrisch ist: Beim EDE-Q6 ist der englische Wortlaut frei bereitgestellt und der deutsche dgvt-verlegt; beim ACE ist das englische Original ein frei verwendetes Public-Health-Instrument, während die Freigabe der deutschen ACE-D-Fassung offen ist. Englisch primär verschiebt den jeweils heikleren Teil in eine Übersetzungsebene, statt ihn zum Hauptinhalt zu machen.

**`fix`** Zwei Funde beim Abgleich des EDE-Q6 gegen den Originalbogen. Item 12 heißt dort **„strong desire to lose weight“**, nicht „definite desire“ — die deutsche Fassung („starken Wunsch“) war richtig, meine frühere Notiz nicht. Und `edeq29`/`edeq30` sind im englischen EDE-Q 6.0 **gar nicht nummeriert**: Sie stehen in einem unnummerierten Schlussblock nach Item 28. Die Nummern stammen aus der deutschen Ausgabe; die `linkId`s folgen damit der deutschen Zählung, nicht dem Originalbogen. Beides jetzt im `designNote` und auf der Seite dokumentiert

**`documentation`** Wortlaut und Scoring des **ERQ-10** vollständig beschafft — englischer Originalbogen und autorisierte deutsche Fassung, je zehn Items. Die Langform wird nach ADR-008 **nicht in diesem Release** modelliert; gebraucht werden zunächst die Short Forms. Für den ERQ-S ist sie vor allem die Quelle des deutschen Wortlauts, den die Kurzform-Publikation nicht enthält

**`improve`** Zentrale Versionsverwaltung über RuleSets eingeführt (`input/fsh/rulesets/version.fsh`, Muster aus dem MII-PRO-Modul). Beim Release wird nur noch diese Datei angehoben. Vorher stand die Version in jeder Instanz hart drin — und war auseinandergelaufen: Der IG ging 0.1.0 → 0.2.0, während **alle 13 Questionnaires auf 0.1.0 stehen blieben**, darunter solche mit substanziell geändertem Inhalt (DEM: 19 Items auf Englisch als Primärsprache umgestellt; MHI: `copyright` und 46 `item.code`s ergänzt). Wer `canonical|0.1.0` gepinnt hatte, bekam für dieselbe Versionsangabe anderen Inhalt.

Dabei drei Lücken geschlossen, die vorher gar keine Version hatten: **26 CodeSystems und 27 ValueSets** (jetzt über `PR_CS_VS_Version`), die drei **ObservationDefinitions** (R4 hat dort kein `version`-Element — Backport über die `artifact-version`-Extension) und die eingebackenen ValueSet-**Expansions**, die ein `|0.1.0` am CodeSystem referenzierten, das dort nie deklariert war. Die Questionnaires deklarieren zusätzlich `versionAlgorithm = semver`, passend zur Versionierungsregel dieses IG.

Die sieben `QuestionnaireResponse`s referenzieren ihren Questionnaire jetzt **versioniert** (`…/Questionnaire/ERQ6|0.3.0`). Ohne Pin ist aus einer Antwort nicht ablesbar, welcher Wortlaut vorlag — bei mehreren Sprachebenen und bei Zuschnitten ist das die entscheidende Information. Validator nach der Umstellung: weiterhin 0 errors.

**`feature`** Dictionary-Variablen als `item.code` in allen zwölf PCOR-MII-Questionnaires hinterlegt (114 Items), gegen das neue generierte CodeSystem `pcor-item-dictionary` (`content = fragment`). Damit lässt sich ein flach erhobener Studiendatensatz maschinell auf die Instrumenten-Questionnaires verteilen. Der Mechanismus ist bewusst **nicht** der `linkId` und **nicht** eine ConceptMap: `linkId`s sind nur **innerhalb** eines Questionnaire eindeutig und können die Frage, zu welchem Instrument eine Variable gehört, grundsätzlich nicht beantworten — beim ERQ ordnet ein Abgleich über Namensgleichheit sogar still falsch zu. Ohne Code bleiben genau die Items, die keine Dictionary-Variablen sind: Gruppen-Items, berechnete Scores und PCOR-MII-eigene Hilfsitems wie die Einheitenauswahl `Q_WB151`/`Q_WB152` im MHI

**`documentation`** Fünf neue Designentscheidungen. **ADR-007**: Zwei unabhängige Übersetzungen werden zwei Questionnaires — ein Sprachtag behauptete eine sprachliche Varietät statt eines Validierungsunterschieds, ein Versionssprung behauptete Ablösung. **ADR-008**: Short Forms tragen Original-`linkId`s, ihr Wortlaut kommt aus der autorisierten Quelle der **Langform** (nicht aus der Kurzform-Publikation, die typischerweise nur Itemnummern nennt), und die Langform wird mitmodelliert, soweit beschaffbar. **ADR-009**: `derivedFrom` ist `canonical(Questionnaire)` und kann daher nicht auf einen Artikel zeigen; zwei Übersetzungen desselben Instruments sind Geschwister, nicht Eltern und Kind. **ADR-010**: sprachliche Anpassung nur als zusätzliche Ebene, mit vier getrennt behandelten Fällen — Helvetismus, Reform 1996, Getrennt-/Zusammenschreibung (nicht anfassen) und editorialer Druckfehler. **ADR-011**: Erhebungseinheit ist nicht Instrumenteneinheit — eigene Ressource nur für publizierte mehritemige Instrumente, Einzelitems in Sammelbögen

**`documentation`** Vier Rechte-Befunde aufgenommen, alle als offen markiert. **`UKHD-EDP`** ist trotz Standort-Präfix vermutlich kein Eigenbau, sondern ein EDI-2-Zuschnitt (je ein Item pro Subskala) — deutsch ein Hogrefe-Testverfahren, in der DIZ-Liste gar nicht geführt; die Zuordnung stützt sich auf Inhalt und Antwortformat, nicht auf einen Wortlautabgleich. Der Planungseintrag „EDEQ/EDP (UKHD)“ mit 17 Items sind damit **zwei** Instrumente, nicht eines. Die **deutsche ACE-D-Fassung ist nicht frei publizierbar** — das **Deutsche Ärzteblatt** druckt nur zwei von zehn Items und verweist für den Gesamtbogen auf den Rechteinhaber; das betrifft rückwirkend die fünf publizierten Items. Die **Standort-Itemgruppen** von UKHD, UKE und MHH führt die DIZ-Liste überhaupt nicht, 34 davon publiziert PCOR-MII bereits

**`fix`** ANSOCQ-2: Die Begründung der Einfachauswahl korrigiert. Rieger et al. 2002 erlauben ausdrücklich mehrere Feststellungen je Item und mitteln sie; Item 17 der Langform instruiert es sogar. Das frühere Argument, Mehrfachauswahl sprenge den Scorebereich 20–100, ist damit **zurückgezogen** — die Mittelung innerhalb des Items hält jedes Item bei 1–5. Einfachauswahl bleibt umgesetzt, aber als bewusste Abweichung vom Original, weil das Dictionary beide Items als „Single Answer“ führt

**`feature`** Beispieldatensatz für die AN-Batterie: fünf `QuestionnaireResponse`s und zwei ERQ-S-Score-`Observation`s als ein zusammenhängendes Szenario — dieselbe Beispiel-Patientin, die DEM und MHI schon nutzen, ein Erhebungstermin, gestaffelte Uhrzeiten. Die Antwortwerte sind begründet gewählt, nicht zufällig; ein durchgängig mittleres Profil hätte beim ERQ-S beide Subskalen-Summen auf denselben Wert gelegt und beim SSUK-2 die Gegenläufigkeit der Items verdeckt. Alle sieben mit dem FHIR-Validator geprüft: 0 errors

**`fix`** Beim Validieren ein Strukturfehler gefunden und behoben: Die ERQ-S-Beispielantwort hatte ihre Items nach Subskala gruppiert, was der Validator zurückweist („Elemente in falscher Reihenfolge“) — eine `QuestionnaireResponse` muss die Reihenfolge des Questionnaire einhalten. SUSHI fängt das nicht; jetzt auf der Validierungsseite dokumentiert

**`documentation`** Sechs neue Seiten für die upstream gepflegten spezifischen Instrumente: SCOFF, Whiteley-7, SSD-12, ISR-Z, PC-PTSD und EURONET-SOMA — referenziert, nicht nachgebaut (ADR-002). Drei Eigenheiten dabei festgehalten: Der **ISR-Z bildet einen Mittelwert** (0–4), keine Summe — die einzige Abweichung unter den sechs; der **Whiteley-7 hat zwei Cut-offs** (0/1 und 1/2), beide als Referenzintervall, weil der eine Sensitivität und der andere Spezifität maximiert; **EURONET-SOMA** setzt `calculatable = false`, weil zwei Einzelitems keine Skala sind und nicht summiert werden dürfen

**`documentation`** Neue Seite Essstörungen — der Erhebungsplan der AN-Batterie, ausgewertet aus dem Blatt `Domain Overview` des Item Level Dictionary: drei Phasen, Prioritäten A/B/C, Frequenzen, Itembudget, die Datenquellen PRO/CRO/EHR und die geplanten Scores. Zwei Befunde ordnen den Umsetzungsstand neu: Es sind **vier** Use Cases, nicht drei (NTx spaltet in Empfänger und Spender), und die „Langformen“ des Plans sind **nicht** die Vollinstrumente — ERQ-6 und ACE-5 **sind** bereits die größte vorgesehene Variante, ein EDE-Q-28, SSUK-26 oder ACE-10 kommt im Plan nirgends vor

**`documentation`** Die Auswahlregel der Zuschnitte („trennschärfstes Item je Skala“ laut DIZ-Implementierungsliste) auf allen betroffenen Seiten und maschinenlesbar in allen fünf `designNote`s hinterlegt — bisher stand sie nur bei EDE-Q6 und ANSOCQ-2. Für drei der vier ist sie gegen die publizierte Struktur des Originalinstruments nachgeprüft. Beim ERQ-S trifft der Singular nicht zu (drei Items je Subskala), beim ACE gilt stattdessen „die ersten 5 Fragen“; beides ist jetzt ausdrücklich vermerkt

**`documentation`** Wortlaut und Scoring des **ERQ-10** vollständig beschafft — englisches Original und die von Gross und John autorisierte deutsche Fassung (Abler & Kessler 2009), beide über das Stanford Psychophysiology Laboratory. Der offizielle Bogen nennt „no reversals“ und die Item-Zuordnung, aber **nicht** die Aggregation; er schreibt zudem die **Itemreihenfolge normativ** fest, weil Items 1 und 3 die Begriffe „positive“ und „negative emotion“ definieren

**`improve`** GSLTPAQ trägt jetzt `language = de` — bisher war es nicht gesetzt, obwohl der Text deutsch ist. Mit ausdrücklicher Begründung, warum hier von ADR-005 abgewichen wird: Die hausinterne Eigenübersetzung ist keine getreue Wiedergabe eines autorisierten Wortlauts, also ist Deutsch hier das Primäre und keine Übersetzungsebene

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

**`feature`** ERQ-S als offizielle ERQ-Kurzform identifiziert und mit validiertem Scoring modelliert — **diese Aussage war falsch und ist am 01.10.2026 zurückgezogen, siehe oben unter Unveröffentlicht.** Ursprünglicher Eintrag: zwei Subskalen-`ObservationDefinition`s (Neubewertung `erq1`+`erq3`+`erq8`, Unterdrückung `erq2`+`erq6`+`erq9`, je 3–21) sowie FHIRPath-`variable`s im Questionnaire. US-Normwerte bewusst nicht als Referenzintervalle hinterlegt

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

