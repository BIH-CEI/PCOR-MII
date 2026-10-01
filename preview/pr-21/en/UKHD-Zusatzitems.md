# UKHD-Zusatzitems (sechs Bögen) - PCOR-MII Implementation Guide v0.3.0

## UKHD-Zusatzitems (sechs Bögen)

**Translated page. Original language: German.**

**UKHD-Zusatzitems AN** sind die Itemgruppen aus dem Item Level Dictionary, die kein publiziertes Instrument abbilden und in der Entität AN vom Standort Heidelberg für die Erhebung zusammengestellt wurden — modelliert als **sechs eigenständige Questionnaires, eines je Dictionary-Gruppe** (entschieden 01.10.2026; zuvor ein Sammelbogen `UKHD-AN`).

> **Das `UKHD`-Präfix ist ein Zusammenstellungs-Etikett, keine Autorenschaftsangabe.** Die Handanweisung des Master-Excel definiert die `INSTRUMENT`-Spalte als die Auswahl des Erhebungswerkzeugs durch die Standorte („Hier können die Standorte auswählen … mit welchem Instrument die jeweilige Domäne erfasst werden soll"), und die Standortspalten als Timing-Matrix — im AN-Blatt ist ausschließlich die UKHD-Spalte gefüllt, auch bei den publizierten Instrumenten wie [ERQ-6](ERQ-6.md) und [ACE](ACE.md). Das Präfix unterscheidet also nur **publiziertes Instrument gewählt** von **vom Standort eingebrachter Itemsatz** — es sagt **nicht**, dass der Standort die Items verfasst hat. Woher der Wortlaut je Gruppe stammt, ist nicht dokumentiert; siehe [Rechtelage](#rechtelage).

### Die sechs Questionnaires

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| [UKHD-PT](Questionnaire-UKHDPT.md) | `UKHD-PT` | 2 | Vorbehandlung: Psychotherapie früher/aktuell (`bdkm15`), Arztbesuche in 4 Wochen (`bdkm16`) | [UKHDPTResponse](QuestionnaireResponse-UKHDPTResponse.md) |
| [UKHD-ANB](Questionnaire-UKHDANB.md) | `UKHD-ANB` | 2 (+2) | Essstörungsanamnese: Erkrankungsdauer, niedrigster BMI — je Auswahl plus PCOR-MII-eigenem Wert-Item | [UKHDANBResponse](QuestionnaireResponse-UKHDANBResponse.md) |
| [UKHD-CT](Questionnaire-UKHDCT.md) | `UKHD-CT` | 1 | Aktueller Behandlungsstatus (`treatment_outpatient`) | [UKHDCTResponse](QuestionnaireResponse-UKHDCTResponse.md) |
| [UKHD-LE](Questionnaire-UKHDLE.md) | `UKHD-LE` | 4 | Belastende Lebensereignisse: dieselbe Frage für drei Erhebungszeitpunkte + Freitext (`enableWhen`,`any`) | [UKHDLEResponse](QuestionnaireResponse-UKHDLEResponse.md) |
| [UKHD-ND](Questionnaire-UKHDND.md) | `UKHD-ND` | 3 | Neue Diagnosen seit der letzten Befragung: zwei Zeitfenster + Freitext | — siehe[TIMING](#timing) |
| [UKHD-D](Questionnaire-UKHDD.md) | `UKHD_D` | 2 | Diagnosen bei Aufnahme, Freitext | [UKHDDResponse](QuestionnaireResponse-UKHDDResponse.md) |

Zwei weitere UKHD-Gruppen sind **anderswo** modelliert, eine ist **ausgenommen**:

* **`UKHD-CTT`** (6 Zeitangaben zu Kindheitsbelastungen) steht im [ACE](ACE.md): Das Dictionary nennt ihren `enableWhen`-Bezug auf `ace1`–`ace3` ausdrücklich, und `enableWhen.question` nimmt laut R4 eine `linkId` nur innerhalb desselben Questionnaire. Der ACE ist dadurch ein PCOR-MII-Komposit.
* **`UKHD-EDP`** (11 Items, vermutlich EDI-2-Zuschnitt) ist ein eigener [metadata-only-Bogen](UKHD-EDP.md).
* **`UKHD-BI`** (Körperbild, 3 Items) ist **nicht modelliert**: eine visuelle Bildskala, mit der die Erhebung noch nicht läuft und deren Bildvorlage im Dictionary fehlt — die Anker einer visuellen Skala sind hier der Messgegenstand, nicht Beschriftung.
* Die Faktenfragen-Gruppen **`UKHD-AN`** (`AN_subtyp`), **`UKHD-W`** (Gewichtsverlauf) und **`UKHD-MEDI`/`-MEDI2`** (Medikation) liegen im [MHI](MHI.md) — sie gehören zur Anamnese, nicht zur AN-Zusatzerhebung.

### Warum ein Questionnaire je Gruppe

Der erste Wurf war ein Sammelbogen (`UKHD-AN`, sechs `group`-Items). Er ist aus drei Gründen aufgegeben:

1. **Die Gruppen sind kein gemeinsames Instrument.**Das`UKHD`-Präfix etikettiert die Zusammenstellung, nicht eine Instrumentenidentität — ein Sammelbogen hätte eine Einheit behauptet, die es nicht gibt. Sichtbar wurde das an einer Namenskollision: Die Dictionary-Gruppe`UKHD-AN`existiert wirklich, besteht aus genau einem Item (`AN_subtyp`) und liegt im[MHI](MHI.md)— der Sammelbogen gleichen Namens enthielt sie nicht.
1. **Die Rechte- und Herkunftsfrage wird je Gruppe beantwortet.**`bdkm15`/`bdkm16`tragen ein fremdes Variablenschema,`UKHD-LE`wirkt wie eine entworfene Batterie,`UKHD_D`ist eine Verwaltungsfrage. Kommt die Rückmeldung des Standorts differenziert zurück, wird je Gruppe umgestellt (metadata-only, Muster[WAI](WAI.md)) — ohne veröffentlichte Canonicals zu zerschneiden.
1. **`TIMING` wird im Ressourcenzuschnitt sichtbar.**Die Gruppen haben verschiedene Erhebungszeitpunkte; je Bogen entsteht pro Termin eine Antwort — oder eben keine (siehe[TIMING](#timing)). Ein Sammelbogen musste dieselbe Tatsache als bewusst leere Gruppen erklären.

Der Preis ist bekannt und benannt: sechs Ressourcen für 14 Items, drei davon mit ein oder zwei Items. [ADR-011](Designentscheidungen.md) ist dafür um die Standortgruppen-Regel ergänzt — die Anti-Fragmentierungs-Grenze gilt unverändert für **publizierte** Instrumente; für Standort-Itemgruppen ist die **Dictionary-Gruppe** die Einheit, weil sie die Einheit der Herkunfts- und Rechtsklärung ist.

Die Gruppenzugehörigkeit bleibt unabhängig davon maschinenlesbar: Jedes Item trägt seine Dictionary-Variable als `item.code`, und die Property `instrument` in [pcor-item-dictionary](CodeSystem-pcor-item-dictionary.md) nennt die Gruppe — egal, in welcher Ressource das Item liegt (`UKHD-CTT` im ACE belegt das).

### Gemeinsame Entscheidungen aller sechs Bögen

**`linkId` = Dictionary-Variablen-ID** ([ADR-008](Designentscheidungen.md) Regel 1, zweiter Teil): Es gibt keine offizielle Itemnummerierung, die Variablen-ID ist die einzige Identität der Items.

**Sprache `de` ohne Übersetzungsebene** ([ADR-005](Designentscheidungen.md)): Ein englisches Original ist nicht dokumentiert; eine englische `item.text`-Ebene wäre eine unvalidierte PCOR-MII-Übersetzung an der Stelle, an der der erhobene Wortlaut steht.

**Wortlaut wortgleich übernommen** ([ADR-010](Designentscheidungen.md)), normalisiert nur Zeilenumbrüche und Mehrfach-Leerzeichen. **Sprachliche Fehler der Vorlage bleiben stehen** und sind einzeln ausgewiesen: `lowBMI` „Ihr niedrigter BMI", `comorbid1` „den zurvor genannten", in `UKHD-LE` „Auflösung einer Partnerschaften" und „Verlust ihres Zuhauses". Eine Bereinigung wäre nur als zusätzliche Ebene zulässig und ist bewusst nicht angelegt — das Dictionary **ist** hier die Vorlage, es gibt keine zweite Quelle, gegen die sich Druckfehler von Abschreibfehlern unterscheiden ließen; die Korrektur gehört ins Dictionary.

**Kein Score, keine Instrument-Codes:** Es gibt kein Instrument, das gescort werden könnte. LOINC 2.83 und SNOMED CT 2026-05-01 liefern für die tragenden Konzepte null Treffer (Recherche via fhir-terminology MCP, 2026-10-01); `Questionnaire.code` trägt je Bogen den lokalen Katalogcode aus [pcor-questionnaire-catalogue](CodeSystem-pcor-questionnaire-catalogue.md).

**Ja/Nein** über das projektweite [DemJaNeinVS](ValueSet-dem-ja-nein.md) (Dictionary-Kodierung 1 = ja / 0 = nein, dokumentarisch). Die übrigen Skalen sind eigene CodeSystems mit dem `ukhd-an-*`-Präfix in Id und Canonical — es benennt Standort und Entität, nicht eine Ressource.

### Antwortskalen — ordinalValue nur, wo die Skala ordinal ist

| | | |
| :--- | :--- | :--- |
| [ukhd-an-arztbesuche](CodeSystem-ukhd-an-arztbesuche.md)—`bdkm16`(UKHD-PT) | **ja**, 1–4 | monoton steigende Häufigkeit, letzte Stufe nach oben offen |
| [ukhd-an-psychotherapie](CodeSystem-ukhd-an-psychotherapie.md)—`bdkm15`(UKHD-PT) | **nein** | drei Zeitbezüge, keine Menge; wer früher**und**jetzt in Behandlung ist, findet keine Stufe |
| [ukhd-an-behandlungsstatus](CodeSystem-ukhd-an-behandlungsstatus.md)—`treatment_outpatient`(UKHD-CT) | **nein** | mischt zwei Achsen: 2→3 ist ein Statuswechsel, 3→4 ein Settingwechsel |
| [ukhd-an-dauer-angabe](CodeSystem-ukhd-an-dauer-angabe.md),[ukhd-an-bmi-angabe](CodeSystem-ukhd-an-bmi-angabe.md)(UKHD-ANB) | **nein** | Einheiten und ein Angabe-Status, keine Stufen; der Messwert steckt im Hilfsitem |

**Zur Falle bei `bdkm16`:** Der `ordinalValue` trägt die Dictionary-Codes 1–4 und damit Rangplätze, **nicht** Besuchszahlen — „gar nicht" ist 1, nicht 0. Eine zählbasierte Auswertung braucht die Abbildung 1→0, 2→1, 3→2, 4→3+.

### TIMING wird nicht modelliert — und ist trotzdem sichtbar

Die `TIMING`-Spalte des Dictionary sagt, zu welchem Erhebungszeitpunkt ein Item gestellt wird (i = Initial, a/at = alle, e = Entlassung). Das ist eine Eigenschaft des **Erhebungsplans**, nicht des Bogens — ein `Questionnaire` beschreibt, **was** gefragt wird, nicht **wann**. R4 hat dafür auch kein tragendes Element.

Sichtbar wird der Plan stattdessen in den **Antworten**, und der Ressourcenzuschnitt macht das schärfer als zuvor: Die Beispielantworten bilden einen Initial-/Screening-Termin ab, und es gibt **fünf, nicht sechs** — für [UKHD-ND](Questionnaire-UKHDND.md) existiert schlicht keine, weil keines seiner Items zum Initial-Termin erhoben wird. In [UKHD-LE](Questionnaire-UKHDLE.md) fehlen `life_event1_monitoring` und `lifev_discharge` aus demselben Grund.

### Rechtelage — eine Herkunftsfrage, keine bloße Freigabefrage

Die DIZ-Implementierungsliste führt ausschließlich **publizierte** Instrumente und kennt die standortbezogenen Itemgruppen von UKHD, UKE und MHH gar nicht — es gibt für sie weder eine dokumentierte Erlaubnis noch eine dokumentierte Einschränkung. Und weil das `UKHD`-Präfix nur die Zusammenstellung etikettiert, ist vor der Freigabefrage eine **Herkunftsfrage** zu klären: Woher stammt der Wortlaut je Gruppe — eigene Formulierung des Standorts, klinikinterne Dokumentationsbögen oder ein publiziertes Instrument?

Die Variablennamen geben dafür Hinweise: Die meisten sind sprechende Studiendatenbank-Namen (`weight_discharge`, `life_event1_screening`) — für solche Items ist das Risiko klein. Drei Gruppen tragen dagegen **fremde, opake Kürzelschemata**, die Signatur einer Fremdquelle: `bdkm15`/`bdkm16` ([UKHD-PT](Questionnaire-UKHDPT.md)), `erwEV24`–`erwEV26` (`UKHD-BI`, nicht modelliert) und `edp1`–`edp11` ([UKHD-EDP](UKHD-EDP.md), EDI-2-Verdacht). Dort kann ein Verlag betroffen sein.

Dass der Wortlaut dennoch aufgenommen ist, ist eine **bewusste Projektentscheidung zur Erprobung und keine geklärte Rechtslage.** Jede der sechs Ressourcen trägt `status = draft`, `experimental = true` und ein `copyright`, das genau das sagt. Ergibt die Rückmeldung des Standorts eine Einschränkung, wird **je Gruppe** auf metadata-only umgestellt (Muster [WAI](WAI.md)); die Beispielantworten wären nicht betroffen — sie enthalten keine Itemtexte.

### Offene Punkte zum Dictionary

Beim Modellieren sind Auffälligkeiten aufgefallen, die **nicht in FHIR zu lösen** sind, sondern im Item Level Dictionary oder mit dem Standort. Sie stehen zusätzlich als `designNote` am jeweiligen Item.

**1. Herkunft des Wortlauts je Gruppe ungeklärt** — siehe [Rechtelage](#rechtelage); konkret nachzufragen für `bdkm`, `erwEV` und `edp`.

**2. `bdkm15` und `treatment_outpatient` überschneiden sich.** Beide fragen nach aktueller psychotherapeutischer Behandlung — in zwei Bögen, mit zwei verschiedenen Antwortskalen. Sie unterscheiden sich im Zeitbezug (`bdkm15` nur zur Aufnahme und mit Vorgeschichte, `treatment_outpatient` zu jedem Termin und mit Setting), liefern zur Aufnahme aber teilweise dieselbe Information. Im Dictionary zu prüfen, ob das beabsichtigt ist.

**3. Der Variablenname `treatment_outpatient` ist irreführend.** Stufe 4 der Antwortskala erfasst ausdrücklich **stationäre oder teilstationäre** Behandlung; das Item fragt den Behandlungsstatus insgesamt ab. Der Name bleibt als `linkId` und `item.code` stehen, weil er die Dictionary-Variable ist — aber er darf nicht als Bedeutungsangabe gelesen werden.

**4. `comorbid1` — formal unsauber, bewusst so belassen (entschieden 01.10.2026).** Die Frage ist wörtlich eine Ja/Nein-Frage, das Dictionary sieht ein **Textfeld** vor. Gemeint ist das Textfeld: Dort sollen die weiteren **Diagnosen** stehen, nicht ein „ja". `type = text` bildet die Erhebung korrekt ab; der Wortlaut bleibt nach [ADR-010](Designentscheidungen.md) unverändert. Praktische Folge: **Das Feld enthält Diagnosetext, keine Ja/Nein-Angabe.**

**5. Uneinheitliche Variablennamen in `UKHD-LE`.** `life_event1_screening`/`life_event1_monitoring` gegen `lifev_discharge`/`lifev_text` — zwei Präfixe für eine Gruppe, und ein `life_event2` existiert nicht. Außerdem nennt die Beispielliste von `life_event1_screening` bloß „Partnerschaften", wo die beiden anderen „Auflösung einer Partnerschaften" sagen; dort fehlt offenbar der Kopf der Wendung.

**6. Die Gruppen-ID `UKHD_D` trägt einen Unterstrich**, während alle anderen Gruppen einen Bindestrich führen. Im Dictionary zu vereinheitlichen; Ressourcen-Id und Katalogcode folgen der Hauskonvention (`UKHD-D`/`ukhd-d`), die Dictionary-Schreibweise bleibt in der Property `instrument` erhalten.

**7. `bdkm16` fragt nach Arztbesuchen, steht aber in **Past Treatment**.** Inhaltlich gehört das Item eher zur Versorgungsinanspruchnahme (vgl. `UKE-HCU` in PSS).

**8. `UKHD-D` überschneidet sich mit dem [MHI](MHI.md).** Dort erheben `CPCOR-DIAG` (Diagnosegruppe zur Selbstzuordnung) und `GIPS13` (Liste chronischer Erkrankungen) **kodiert**, was hier als **Freitext** erhoben wird. Welche Darstellung für die Auswertung maßgeblich ist, ist fachlich zu klären.

### Hinweis zur Erhebung

[UKHD-LE](Questionnaire-UKHDLE.md) betrifft **hochsensible Inhalte** (Verlusterfahrungen, Missbrauch), ebenso die im [ACE](ACE.md) liegende Gruppe `UKHD-CTT` (Kindheitsbelastungen). Die Governance der Auswertung — analog zum PHQ-SI — ist fachlich zu klären.

Hinweise zum Lebenszyklus von `Questionnaire` zu `QuestionnaireResponse` siehe [Anwendung](Implementation.md); alle Artefakte unter [Artefakte](artifacts.md).

