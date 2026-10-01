Kurzes Entscheidungslog für den PCOR-MII IG — Architektur-Entscheidungen (ADRs) und offene Punkte. Neueste Einträge oben. Diese Seite ist die einzige gepflegte Fassung; die frühere Datei `docs/decisions.md` im Repository verweist nur noch hierher.

### Offen — wartet auf Rückmeldung

#### 📎 Begriffsklärung: publiziert vs. verlegt

Mehrere der offenen Rechtepunkte hängen an derselben Unterscheidung, die in der DIZ-Implementierungsliste nicht vorkommt:

**Publiziert** heißt: Über das Instrument wurde berichtet — typischerweise in einem Fachartikel, der Konstruktion, Psychometrie oder Validierung beschreibt. Der Artikel ist zitierbar und oft frei zugänglich. Ob der *Fragebogen selbst* nachgenutzt werden darf, sagt das noch nicht.

**Verlegt** heißt: Das Instrument ist ein **Produkt eines Verlags** — Manual, Fragebogen und Auswertungsbogen werden als Werk vertrieben. Hier ist der Wortlaut nicht Beiwerk einer Publikation, sondern die Ware selbst. Entsprechend stehen dort Rechtevorbehalte, die eine Weiterverwendung des Wortlauts ausdrücklich erfassen.

Praktisch folgt daraus: **Frei zugänglich ist nicht frei nachnutzbar.** Dass ein Verlag eine PDF zum Download anbietet, ist Service, keine Lizenz. Umgekehrt kann ein Instrument formal „nur" in einer Zeitschrift publiziert sein und trotzdem frei nutzbar, wenn die Autor:innen den Bogen selbst bereitstellen.

Auf die PCOR-MII-Instrumente angewandt:

| Instrument | Status | Folge |
|---|---|---|
| [ERQ-6](ERQ-6.html) | publiziert **und** von den Autor:innen selbst frei bereitgestellt (Stanford Psychophysiology Laboratory) | nutzbar |
| [ACE](ACE.html) — englisches Original | publiziert, Public-Health-Standard (Felitti 1998, Kaiser/CDC) | nutzbar |
| [ACE](ACE.html) — **deutsche Fassung ACE-D** | © Schäfer, Wingenfeld & Spitzer 2009; **Gesamtbogen nur über den Autor beziehbar** | Zustimmung nötig — siehe offener Punkt |
| [ANSOCQ-2](ANSOCQ-2.html) | publiziert; deutsche Fassung von den Validierungs-Autor:innen | nutzbar |
| [EDE-Q6](EDE-Q6.html) | **verlegt** (dgvt-Verlag, © Anja Hilbert, alle Rechte vorbehalten) | Zustimmung nötig |
| [OPD-SFK](OPD-SFK.html) | publiziert, Rechte bei Autor:innen/Verlag | frei **nach erfolgter Rücksprache** |
| GI-PS | Download mit ausdrücklichem Nutzungsvorbehalt | Zustimmung nötig |
| [WAI](WAI.html) | nicht veröffentlichbar | metadata-only |
| **Standort-Itemgruppen** (UKHD, UKE, MHH) | **in der DIZ-Liste gar nicht geführt** — keine Freigabe dokumentiert | siehe offener Punkt unten |
| [PROMIS](PROMIS.html), [WHODAS](WHODAS-12.html) | eigenes Lizenzregime | Nutzungsvereinbarung |

Die DIZ-Liste erfasst mit „frei verfügbar" offenkundig die *Beschaffbarkeit für die Forschung*, nicht die Frage, ob der Wortlaut in einer Spezifikation weitergegeben werden darf. Bei jedem Instrument, dessen deutsche Fassung aus einem Verlagsprodukt stammt, ist die Angabe daher eigenständig zu prüfen. (Das ist eine Arbeitsregel für dieses Projekt, keine Rechtsauskunft.)

#### ❓ Standortspezifische Itemgruppen (UKHD, UKE, MHH) — Freigabe fehlt
**Status:** offen, neu aufgenommen 2026-09-30

Die DIZ-Implementierungsliste führt ausschließlich **publizierte Instrumente**. Die standortspezifischen Itemgruppen — Heidelberg (`UKHD-*`), Hamburg (`UKE-*`), Hannover (`MHH-*`) — kommen dort **gar nicht vor**. Für sie ist damit weder eine Erlaubnis noch eine Einschränkung dokumentiert: Es ist keine Rechtsfrage, die sich aus der Liste beantworten ließe, sondern eine **Governance-Entscheidung der Standorte**.

Das Dictionary enthält 97 solche Variablen. **34 davon veröffentlicht PCOR-MII bereits mit vollem Wortlaut**, alle im [MHI](MHI.html):

| Gruppe | Items | `linkId`s |
|---|---|---|
| `UKHD-W` | 4 | `weight_outpatient_1`, `weight_outpatient_2`, `weight_inpatient`, `weight_discharge` |
| `UKHD-AN` | 1 | `AN_subtyp` |
| `UKHD-MEDI` | 2 | `medication1`, `medication_text` |
| `UKE-MEDI` | 27 | `MEDI_01`, `medi_02_*_01` … `medi_02_*_05` |

**Vorschlag: nicht pauschal zurückhalten, sondern zwei Sorten unterscheiden.**

*Triviale Faktenfragen* — Körpergewicht, AN-Subtyp, Medikamentenliste. „Wie viel wiegen Sie aktuell in kg?" ist keine schutzfähige Schöpfung, und ohne den Wortlaut können die DIZ die Items nicht einheitlich implementieren. Diese 34 bleiben publiziert.

*Entworfene Item-Batterien* — `UKHD-CTT` (6, Zeitangaben zu Kindheitstraumata), `UKHD-BI` (3, Körperbild), `UKHD-LE` (4, Lebensereignisse), `UKHD-ANB` (2), `UKHD-PT` (2), `UKHD-ND` (3). Hier steckt Autorenschaft aus Heidelberg, und diese Gruppen sind bisher **nicht** modelliert. Bis zu einer Freigabe durch den Standort werden sie **nicht mit Wortlaut aufgenommen** — bei Bedarf metadata-only wie beim [WAI](WAI.html).

`UKHD-EDP` gehört **nicht** in diese Liste, obwohl es das UKHD-Präfix trägt — siehe den eigenen Punkt unten.

**Zu klären:** Bestätigung durch UKHD (und analog UKE und MHH) für beide Gruppen — rückwirkend für die 34 publizierten Items und vorausschauend für die Batterien. Bis dahin ist der Status quo eine Annahme, keine Freigabe.

Relevant wird das unmittelbar bei der Essstörungspathologie: Der [Erhebungsplan](Essstoerungen.html) sieht dort 17 Items vor, von denen 11 aus `UKHD-EDP` stammen. Der [EDE-Q6](EDE-Q6.html) deckt die übrigen 6 ab.

#### ❓ UKHD-EDP — vermutlich ein EDI-2-Zuschnitt, rechtlich unbewertet
**Status:** offen, neu aufgenommen 2026-09-30 — **vor einer Modellierung zu klären**

Der Erhebungsplan führt für die Domäne *Eating Disorder Psychopathology* 17 Items unter dem Eintrag „EDEQ/EDP (UKHD)". Das sind **zwei Instrumente, nicht eines**: die 6 Items des [EDE-Q6](EDE-Q6.html) und 11 Items mit den Variablen-IDs `edp1`–`edp11`. Verschmelzen lassen sie sich nicht — der EDE-Q fragt „an wie vielen der letzten 28 Tage" auf einer Häufigkeitsskala 0–6, die `edp`-Items fragen zeitlos nach Zustimmung („1 = Trifft nie zu").

**Das UKHD-Präfix ist irreführend.** Die 11 Items bilden je ein Konstrukt ab, und die Liste ist unverkennbar:

| Item | Konstrukt |
|---|---|
| `edp1` | Schlankheitsstreben |
| `edp2` | Bulimie |
| `edp3` | Unzufriedenheit mit dem Körper |
| `edp4` | Ineffektivität |
| `edp5` | Perfektionismus |
| `edp6` | Misstrauen (invers formuliert) |
| `edp7` | interozeptive Wahrnehmung |
| `edp8` | Angst vor dem Erwachsenwerden (invers) |
| `edp9` | Askese |
| `edp10` | Impulsregulation |
| `edp11` | soziale Unsicherheit (invers) |

Das sind **die elf Subskalen des EDI-2** (*Eating Disorder Inventory-2*, Garner 1991; deutsche Fassung Paul & Thiel, Hogrefe 2005) — je ein Item pro Skala, also dasselbe Zuschnittmuster wie bei [EDE-Q6](EDE-Q6.html), [ANSOCQ-2](ANSOCQ-2.html) und [SSUK-2](SSUK-2.html). Es handelt sich damit sehr wahrscheinlich **nicht** um eine Eigenentwicklung des Standorts, sondern um einen Zuschnitt eines verlegten Testverfahrens.

**Warum das die Rechtelage verschlechtert statt sie zu entspannen:** Das EDI-2 ist in der deutschen Fassung ein **Hogrefe-Testverfahren** — verlegte Ware wie das BDI-II, das im MII-PRO-Modul genau deshalb als „commercial (Pearson) — data + scoring only, not displayable" geführt wird. Die DIZ-Implementierungsliste enthält **weder eine Zeile „EDI" noch „UKHD-EDP"**; die Rechtelage ist also nicht „frei", sondern **gar nicht bewertet**.

**Zu klären, in dieser Reihenfolge:**

1. Die Identifikation als EDI-2-Zuschnitt gegen den deutschen Originalbogen bestätigen — die Zuordnung oben stützt sich auf Inhalt und Antwortformat, nicht auf einen Wortlautabgleich. Charakteristisch sind `edp8` („froh, dass ich kein Kind mehr bin") und `edp5` („verabscheue es, nicht der/die Beste zu sein").
2. Bei Bestätigung: Eintrag in der DIZ-Liste nachziehen und die Rechtelage bei Hogrefe klären.
3. Erst danach modellieren — voraussichtlich **metadata-only**, analog BDI-II und [WAI](WAI.html).

Bis dahin ist `UKHD-EDP` in PCOR-MII **nicht modelliert**, und das ist kein Rückstand, sondern die richtige Reihenfolge.

#### ❓ ACE-D — deutsche Fassung ist nicht frei publizierbar
**Status:** offen, neu aufgenommen 2026-09-30 — **betrifft rückwirkend fünf publizierte Items**

Die DIZ-Implementierungsliste führt den ACE als „Frei verfügbar". Das trifft auf das **englische Original** zu (Felitti et al. 1998, Kaiser Permanente / CDC — ein Public-Health-Instrument in breiter freier Verwendung), aber die **deutsche Fassung ACE-D** ist etwas anderes.

Belegt durch die Nutzungspraxis der Autor:innen selbst: Das *Deutsche Ärzteblatt* druckt in einer bevölkerungsrepräsentativen ACE-Studie (Witt, Sachser, Plener, Brähler & Fegert, Dtsch Arztebl Int 2019;116:635–42, [doi:10.3238/arztebl.2019.0635](https://doi.org/10.3238/arztebl.2019.0635)) im Zusatzmaterial ausdrücklich nur **zwei Beispielfragen** von zehn ab — mit dem Hinweis:

> „Copyright und Zitierweise: Ingo Schäfer, Katja Wingenfeld und Carsten Spitzer (2009) ACE-D; Deutsche Version des „Adverse Childhood Experiences Questionnaire" (ACE). Universität Hamburg. **Der Gesamtfragebogen kann über Prof. Dr. Ingo Schäfer bezogen werden.**"

Ein peer-reviewtes Journal beschränkt sich also bewusst auf zwei Items und verweist für den Rest auf den Rechteinhaber. Das ist das Muster „auf Anfrage beziehbar", nicht „frei publizierbar" — dasselbe Muster wie beim [OPD-SFK](OPD-SFK.html), wo die Rücksprache mit den Autor:innen bereits erfolgreich geführt wurde.

**Was daraus folgt:**

1. **Rückwirkend:** PCOR-MII publiziert die fünf deutschen ACE-Items bereits mit vollem Wortlaut (siehe [ACE](ACE.html)). Das ruht damit auf einer DIZ-Angabe, die für die deutsche Fassung nicht belastbar ist. Die Rücksprache mit **Prof. Dr. Ingo Schäfer (Universität Hamburg)** ist einzuholen — nach dem Muster OPD-SFK.
2. **Für die Langform:** Ein ACE-10 mit deutschem Wortlaut kann nicht aus öffentlich zugänglichen Quellen modelliert werden. Der Gesamtbogen ist über den Autor zu beziehen; ohne Zustimmung wäre nur eine englisch-primäre Fassung (Felitti et al.) oder metadata-only möglich.
3. **Positiver Nebenbefund:** Die abgedruckte Beispielfrage zur körperlichen Misshandlung ist wortgleich unser `ace2`. Dieses Item ist damit gegen eine **peer-reviewte** Quelle bestätigt, nicht mehr nur gegen ein Exemplar von einer Drittseite.

#### ❓ EDE-Q6 — Rechte der deutschen Übersetzung klären
**Status:** offen, **vor dem nächsten Release zu klären** (Stand 2026-09-29)

Beim Wortlautabgleich des [EDE-Q6](EDE-Q6.html) ist ein Widerspruch aufgefallen: Die DIZ-Implementierungsliste führt das Instrument als **„frei verfügbar"**, die Quellpublikation stellt dagegen ausdrücklich alle Rechte vor.

Der in PCOR-MII verwendete Wortlaut stammt — wortgleich, alle sechs Items und die Antwortskala — aus **Hilbert A, Tuschen-Caffier B,** *Eating Disorder Examination-Questionnaire. Deutschsprachige Übersetzung*, 2. Auflage, Tübingen: dgvt-Verlag 2016. Dort heißt es:

> „Alle Rechte vorbehalten. […] Jede Verwertung außerhalb der engen Grenzen des Urheberrechts ist ohne Zustimmung der Copyrightinhaberin unzulässig und strafbar. Dies gilt insbesondere für Vervielfältigungen, Übersetzungen, Mikroverfilmungen sowie die **Einspeicherung und Verarbeitung in elektronischen Systemen**." (© 2016 Anja Hilbert)

Die letzte Klausel beschreibt genau das, was ein FHIR-`Questionnaire` tut. Dass der dgvt-Verlag das PDF frei zum Download anbietet, ändert daran nichts — frei *zugänglich* ist nicht frei *nachnutzbar*.

**Damit ist EDE-Q6 der dritte Fall dieser Art** neben [GI-PS](Demographie.html) und dem bereits geklärten [OPD-SFK](OPD-SFK.html). Derselbe Weg bietet sich an: Zustimmung der Rechteinhaberin einholen (Prof. Anja Hilbert, Universitätsmedizin Leipzig), andernfalls metadata-only nach [WAI](WAI.html)-Muster. `Questionnaire.copyright` weist den Vorbehalt bis dahin aus, und die Lizenzspalte der [Instrumentenübersicht](Instrumente.html) ist von „frei" auf „Rechte offen" korrigiert.

**Nebenbefund:** Die DIZ-Liste nennt als Übersetzungspaper die *Diagnostica*-Publikation von 2007 — das ist die psychometrische Evaluation, nicht die Übersetzung selbst. Für Wortlautfragen ist die dgvt-Ausgabe maßgeblich.

#### ❓ Herkunftsrechte der DEM-/MHI-Items
**Status:** OECD-Anteil geklärt ✅ · vier PaRIS-Drittinstrumente und GI-PS offen — **vor dem nächsten Release zu klären** (Stand 2026-09-24)

Die DIZ-Implementierungsliste PCOR-MII (Stand 24.07.2026) führt zwei Item-Quellen mit einschränkenden Angaben, die in [Demographie](Demographie.html) und [MHI](MHI.html) **im Wortlaut** publiziert sind. Die beiden Fälle liegen unterschiedlich:

**OECD (5 Items in DEM) — geklärt: Nutzung und Übersetzung sind zulässig.** ✅
Die Items stammen aus dem **OECD PaRIS Patient Questionnaire** (PaRIS-PQ); die `linkId`s in DEM sind unverändert die PaRIS-Variablennamen (`Q_OECDLIT5a`, `Q_OECDLIT7a`, `Q_OECDLITii`, `OECDLIT2a`, `OECDLIT2b`). Der **englische Originalbogen ist von der OECD öffentlich publiziert** ([PaRIS-PQ, Version for scripting online survey, 2024](https://www.oecd.org/content/dam/oecd/en/about/programmes/patient-reported-indicator-surveys/PaRIS%20patient%20questionnaire.pdf), © OECD 2024, Nutzung nach den [OECD Terms and Conditions](https://www.oecd.org/termsandconditions)); das Entwicklungspaper ist Valderas et al., *BMJ Qual Saf* 2024 ([10.1136/bmjqs-2024-017301](https://doi.org/10.1136/bmjqs-2024-017301)). Die Einschränkung der DIZ-Liste bezieht sich ausweislich der Nachbarspalte **auf die deutsche Fassung**: Spalte „Übersetzungspaper DOI" trägt den Eintrag *„nicht veröffentlicht for internal use only"*, der in die Lizenzspalte übernommen wurde — die Angabe beschreibt also den Status der Übersetzung, nicht die Rechtelage des Instruments.

**Prüfung der OECD Terms and Conditions (Stand 2026-09-24):** Für nicht-kommerzielle Zwecke (ausdrücklich „private study, research, charitable and educational purposes") erlaubt die OECD Nutzung **und Übersetzung ohne ausdrückliche Genehmigung**, sofern die OECD als Urheberin genannt wird, auf das Original verlinkt wird und der vorgegebene Übersetzungs-Disclaimer aufgenommen wird („This translation was not created by the OECD …"). Untersagt sind lediglich das Einstellen vollständiger PDF-Kopien sowie jede behauptete Verbindung zur OECD. Dass die OECD Fragebogen-Items als nachnutzbaren Inhalt versteht, zeigt der PISA-Abschnitt derselben Bedingungen, der „questionnaires, individual questions, sample tasks" ausdrücklich unter eine Creative-Commons-Lizenz stellt; für PaRIS gelten keine abweichenden Sonderbedingungen.

**Läuft PaRIS unter den allgemeinen OECD-Bedingungen?** Ja — und das steht nicht nur im Umkehrschluss fest: Die Copyright-Seite des PaRIS-PQ verweist selbst ausdrücklich dorthin („© OECD 2024 The use of this work, whether digital or print, is governed by the Terms and Conditions to be found at oecd.org/termsandconditions"). Anders als PISA, das in Abschnitt (d) der Bedingungen eine eigene CC-Lizenz zugewiesen bekommt, hat PaRIS **keine Sonderbedingungen**.

**Aber: Die Rechtefrage ist je Itemblock zu beantworten, nicht pauschal.** Der PaRIS-PQ ist selbst eine **Zusammenstellung** und weist in einer Quellentabelle je Itemblock ein Ursprungsinstrument mit eigener Rechtelage aus (u. a. PROMIS®, WHO-5, P3CEQ „© University of Plymouth, All rights reserved"). Die OECD schließt solche Drittinhalte ausdrücklich von ihrer Nutzungserlaubnis aus: *„Some content in the Material may be owned by third parties. The User is responsible for verifying whether this is the case and, if so, securing the appropriate permissions."* Für die in DEM übernommenen Blöcke ergibt der Abgleich mit der PaRIS-Quellentabelle:

| DEM-`linkId`s | PaRIS-Quellinstrument | Rechtelage |
|---|---|---|
| `Q_OECDLIT5a`, `Q_OECDLIT7a`, `Q_OECDLITii`, `OECDLIT2a`, `OECDLIT2b` | OECD INFE (2011), *Measuring Financial Literacy: Core Questionnaire* | **OECD-eigenes Material** → Nutzung und Übersetzung nicht-kommerziell erlaubt ✅ |
| `Q_MONMED` | National Health Interview Survey (NHIS) | Drittinstrument — Prüfung offen |
| `Q_MON`, `MONMEAL`, `MONRENT`, `MONBILLS` | Commonwealth Fund International Health Policy Surveys 2016/2017 | Drittinstrument — Prüfung offen |
| `MEDHIMS6`, `MEDHIMS7` | MED-HIMS (Europäische Union 2019) | Drittinstrument — Prüfung offen |
| `WHODIS`, `WHODIS1`, `WHODIS2` | WHO/World Bank Model Disability Survey (WHO 2017) | Drittinstrument — Prüfung offen |

Damit ist auch das Präfix `OECDLIT` erklärt: es steht für *OECD Measuring Financial **Lit**eracy*, nicht allgemein für „OECD". Ebenso ist `WHODIS` **nicht** der WHODAS 2.0 (der steckt separat im Guide, siehe [WHODAS 2.0](WHODAS-12.html)): Die Quellenspalte nennt die Model Disability Survey, das PaRIS-Folgeitem heißt `WHOWB11` („WHO/World Bank"), und inhaltlich geht es um die Verfügbarkeit von Unterstützung, nicht um Funktionsfähigkeitsdomänen.

**Methodischer Hinweis zu Schreibvarianten.** Bei der Herkunftsbestimmung über die Orthografie ist zwischen zwei Dingen zu trennen, die leicht verwechselt werden:

- **Helvetismen** — die Schweiz hat das ß vollständig abgeschafft. „weiss", „einschliesslich", „Gesäss" sind daher Schweizer Schreibungen.
- **Alte vs. neue Rechtschreibung** — die Reform 1996 ersetzte ß nur nach **kurzem** Vokal durch ss („daß" → „dass"). Nach langem Vokal oder Diphthong bleibt das ß auch heute. „weiß", „einschließlich" und „Gesäß" sind davon also *nicht* betroffen.

Die Schweiz-Befunde zu [DEM](Demographie.html) und [ANSOCQ-2](ANSOCQ-2.html) stützen sich ausschließlich auf die erste Kategorie und sind damit belastbar. Umgekehrt taugt die Getrennt-/Zusammenschreibung (etwa „nahe stehen" vs. „nahestehen", von 1996 bis 2006 getrennt vorgeschrieben) **nicht** als Herkunftsindiz — sie datiert einen Text allenfalls grob, siehe [SSUK-2](SSUK-2.html).

**Herkunft des deutschen Wortlauts: die Schweizer PaRIS-Fassung.** Deutschland hat an der PaRIS-Erhebung **nicht** teilgenommen — es gibt also kein deutsches PaRIS-Team. Die Schweiz war dabei (nationale Leitung: Unisanté, Lausanne; Januar 2024, 119 Praxen, 4 178 Fragebögen), und der deutschsprachige PaRIS-Bogen entstand für diese Erhebung. Dass er die Vorlage für DEM war, zeigt der Text selbst: „einschliesslich" in `WHODIS1`, sechsmal „Ich weiss es nicht" (MHI schreibt an vier Stellen „Ich weiß es nicht"; DEM ist der einzige Fragebogen mit Schweizer Schreibung) sowie die CHF-Einkommensbänder des Layoutblatts, die im Kopfkommentar von DEM selbst vermerkt und für PCOR-MII durch EUR-Bänder ersetzt wurden. Rechtlich ist das günstig — der Wortlaut ist damit keine Behelfsübersetzung, sondern eine offizielle TRAPD-Übersetzung. Zugleich ein Qualitätsbefund: Für einen deutschen IG sind die **Helvetismen zu bereinigen** und die Schreibweise zwischen DEM und MHI zu vereinheitlichen (reine Textkorrektur; die Codes heißen ohnehin `weiss-nicht` und bleiben unberührt).

**Konsequenz — umgesetzt:** Für die OECD-Items ist weder English-only noch metadata-only erforderlich; die deutschen Formulierungen können bleiben. `Questionnaire.copyright` von [DEM](Demographie.html) trägt jetzt die vollständige Herkunftsaufschlüsselung, die OECD-Nennung mit Link auf den Originalbogen und den vorgeschriebenen Übersetzungs-Disclaimer (zuvor hatte DEM gar kein `copyright`-Element). **Neu offen:** die vier Drittinstrument-Blöcke oben. Erste Einschätzung ohne abschließende Prüfung: NHIS ist ein US-Regierungswerk, MED-HIMS eine EU-Publikation und die Model Disability Survey eine WHO-Publikation — alle drei üblicherweise großzügig nachnutzbar; der Commonwealth Fund als private Stiftung ist der unklarste Fall. Unabhängig davon bleibt sinnvoll, die offizielle deutsche PaRIS-Übersetzung (cApStAn, TRAPD-Verfahren, 16 Sprachen inkl. Deutsch) gegen die verwendeten Formulierungen zu halten — dann entfiele der Disclaimer-Vorbehalt.

**GI-PS (2 Items in DEM, 9 Items in MHI) — echte Weitergabebeschränkung.**
Zitat aus der Liste: „Die Eigentums-, Urheber-, Weitergabe- und Veröffentlichungsrechte … verbleiben bei den jeweiligen Testautorinnen oder -autoren, d. h. das gi-ps oder dessen Teile dürfen ohne Zustimmung der Rechteinhaber nicht modifiziert, übersetzt oder an Dritte weitergegeben werden." Das ist der Nutzungsvorbehalt des Instruments selbst (Entwicklungspaper: [10.13109/zptm.2023.69.1.56](https://doi.org/10.13109/zptm.2023.69.1.56), deutschsprachiges Original). Anders als bei der OECD gibt es hier keine allgemeine Erlaubnis für nicht-kommerzielle Nachnutzung: Eine **Zustimmung der Rechteinhaber** ist erforderlich; andernfalls sind die betroffenen Items auf **metadata-only** umzustellen (Muster: [WAI](WAI.html) — Struktur, `linkId`s und Wertebereiche ohne Originalwortlaut). Beim [OPD-SFK](OPD-SFK.html) ist eine solche Rücksprache bereits erfolgreich geführt worden; derselbe Weg bietet sich hier an. `Questionnaire.copyright` von [DEM](Demographie.html) und [MHI](MHI.html) weist den Vorbehalt bis dahin ausdrücklich aus.

Beide Angaben sind seit der Juni-Fassung der Liste unverändert. Die Lizenz-Tier-Übersicht auf der Seite [Instrumente](Instrumente.html) führt OECD und GI-PS bisher nicht auf und wäre entsprechend zu ergänzen.

Nicht betroffen: Die AN-Instrumente sind in der Liste sämtlich als „frei verfügbar" geführt (siehe ADR-003); die NTx-Instrumente BAASIS, MTSOSD-R59 und ABQ — bei denen die Juli-Fassung die Auflage „Eine Veröffentlichung der konkreten Items einschließlich Antwortmöglichkeiten ist nicht erlaubt" ausdrücklich ergänzt hat — sind bereits als metadata-only vorgesehen.

#### ❓ AN-Instrumente — Wortlaut-/Quellenverifikation und Scoring
**Status:** offen (Stand 2026-09-23)

Die fünf AN-spezifischen Instrumente ([ERQ-6](ERQ-6.html), [EDE-Q6](EDE-Q6.html), [ANSOCQ-2](ANSOCQ-2.html), [SSUK-2](SSUK-2.html), [ACE](ACE.html)) sind vorbereitet (siehe ADR-003), tragen aber dokumentierte offene Punkte:

- **Quellenverifikation — weitgehend abgeschlossen (Stand 2026-09-29).** Für drei der fünf Instrumente ist der Wortlaut gegen die maßgebliche Quelle geprüft: [ERQ-6](ERQ-6.html) gegen den ERQ-Originalbogen (Wortlaut wortgleich — die *Identifikation* als ERQ-S war allerdings falsch, siehe Eintrag unten), [EDE-Q6](EDE-Q6.html) gegen die dgvt-Ausgabe (alle sechs Items und die Antwortskala) und [ACE](ACE.html) gegen den ACE-D (alle fünf Items). Alle drei: wortgleich. Bei [SSUK-2](SSUK-2.html) ist die **Itemnummerierung** inzwischen ebenfalls verifiziert: Müller, Mehnert & Koch (*Z Med Psychol* 2004) listen in Tabelle 2 die Items der Langfassung mit Nummern — Item 14 ist „Sie aufmuntert oder tröstet", Item 10 „die Auswirkung Ihrer Erkrankung herunterspielt". Die frühere Festlegung ist damit durch die Primärquelle ersetzt. Bei [ANSOCQ-2](ANSOCQ-2.html) ist die **Auswahllogik und die Nummerierung** inzwischen ebenfalls belegt: Pauli et al. (*J Eat Disord* 2017, Open Access) nennen in ihrer Faktorenanalyse ausdrücklich „item 3" als hochladend auf Faktor 1 („weight gain and control") und „item 14" auf Faktor 2 („attitudes and feelings"). Damit ist auch hier die DIZ-Angabe „ein Item je Skala" wörtlich bestätigt — wobei die „Skalen" die Faktoren der deutschen Validierung sind, nicht Subskalen des Originals. **ANSOCQ-2 ebenfalls abgeschlossen (2026-09-29):** Der englische Originalbogen ist bei Rieger et al. 2002 ([doi:10.1002/eat.10056](https://doi.org/10.1002/eat.10056), Charité-Volltextzugang) im Wortlaut abgedruckt. Beide Items samt ihrer fünf Feststellungen stimmen mit der deutschen Fassung überein; die Nummern 3 und 14 gelten in beiden Sprachen. Damit ist auch die zwischenzeitlich vermutete Zählungsdifferenz erledigt: Es gibt zwei Fassungen — Rieger 2000 mit 23 Items, Rieger 2002 mit **20** —, und die deutsche Übersetzung folgt der 20-Item-Revision. [ANSOCQ-2](ANSOCQ-2.html) ist daraufhin auf Englisch als Primärsprache mit `de-CH`-Übersetzung umgestellt (ADR-005).

**Damit sind alle fünf AN-Instrumente quellenverifiziert.**

**Methodische Lehre aus dieser Runde:** Bei SSUK-2 und ANSOCQ-2 hatte die Recherche zunächst bei der einen in der DIZ-Liste genannten Publikation gehalten und „nicht beschaffbar" ergeben. Beide Fragen ließen sich dann über **andere Arbeiten derselben Forschungslinie** klären, die frei zugänglich waren. Die in der DIZ-Liste genannte Quelle ist ein Einstieg, nicht die Grenze der Recherche.
- **Quellenlage geklärt (2026-09-29).** Die DIZ-Implementierungsliste nennt je Instrument ein Entwicklungs- und ein Übersetzungspaper; alle DOIs wurden aufgelöst. Ergebnis:

  | Instrument | Original | Deutsche Fassung |
  |---|---|---|
  | **EDE-Q6** | EDE-Q (Fairburn & Beglin 1994), abgeleitet aus der EDE (Fairburn, Cooper & O'Connor 1993) | Hilbert, Tuschen-Caffier, Karwautz et al., *Diagnostica* 2007 |
  | **ANSOCQ-2** | ANSOCQ (Rieger et al. 2000) | Pauli et al., *J Eat Disord* 2017 |
  | **SSUK-2** | **Illness-specific Social Support Scale** (Revenson et al., *Soc Sci Med* 1991) | Ramm & Hasenbring, *Z Med Psychol* 2003 |
  | **ACE** | Felitti et al., *Am J Prev Med* 1998 | Wingenfeld et al., *PPmP* 2010 |

  Zwei Korrekturen ergaben sich dabei: Die **SSUK ist kein deutsches Originalinstrument**, sondern die deutsche Adaptation der englischen ISSS — die Annahme in ADR-005 war falsch. **Eine englische Primärsprache folgt daraus aber nicht** (geprüft 2026-09-29): Der Abgleich gegen die ISSS-8-Kurzversion zeigt, dass `ssuk10` dort keine Entsprechung hat und `ssuk14` nicht wörtlich übereinstimmt. **Deutsch bleibt primär** — Einzelheiten auf der [SSUK-2-Seite](SSUK-2.html). Ein Abgleich gegen das englische Original (Revenson et al. 1991, über den Charité-Zugang bei Elsevier verfügbar) wurde bewusst nicht weiterverfolgt: Die Arbeit ist eine empirische Studie, keine Instrumenten-Entwicklungsarbeit, und selbst bei einem Fund bliebe die Zuordnung Ermessenssache — Ramm & Hasenbring nennen ihre Arbeit im Titel eine *Adaptation*. Maßgeblich ist der Wortlaut, der tatsächlich erhoben wird. Nebenbei erklärt der Originaltitel *„Social support as a double-edged sword"* die Konstruktion des Instruments — positive und problematische Unterstützung als zwei gegenläufige Dimensionen — und stützt damit die Entscheidung, die beiden Items nicht zu summieren.

  Beim **ANSOCQ-2** ist die Angabe der DIZ-Liste ungenau: Der dort als Entwicklungspaper genannte DOI führt zu Prochaska & DiClemente (1982), also zum zugrundeliegenden Stadienmodell, nicht zum Instrument. Für eine Item-Verifikation ist Rieger et al. (2000) heranzuziehen. Ähnlich beim **EDE-Q6**, wo das Interview (EDE) statt des Fragebogens (EDE-Q) zitiert ist.

  **Keine weitere verborgene Kurzform.** Anders als beim ERQ verweist keines der vier auf eine offizielle Short-Form-Publikation — es sind echte projektspezifische Zuschnitte. Damit bleibt es bei ihnen bei der Regel aus ADR-003: kein Score ohne validierte Vorschrift.
- **ERQ-6 — Identifikation als ERQ-S war FALSCH, korrigiert am 2026-10-01 ❌.** Hier stand bis dahin, der als „ERQ-6“ geführte Bogen *sei* die offizielle Kurzform **ERQ-S**, belegt durch zwei unabhängige Quellen, und trage deshalb eine validierte Scoring-Vorschrift. Beides ist unzutreffend.

  **Tabelle 1 bei Preece et al. 2023** gibt die Zuordnung an: Der ERQ-S besteht aus den **ERQ-Items 2, 6, 7, 8, 9 und 10** — Cognitive Reappraisal 7, 8, 10 und Expressive Suppression 2, 6, 9. PCOR-MII führt die **ERQ-Items 1, 2, 3, 6, 8 und 9**. Vier Items überschneiden sich, die Unterdrückungs-Items sind sogar identisch — die Neubewertungs-Items aber nicht.

  **Keiner der beiden vermeintlichen Belege trug.** Die DIZ-Implementierungsliste nennt in der ERQ-Zeile zwar die ERQ-S-Publikation als Entwicklungspaper, aber die im Dictionary erhobenen Items sind andere — die Liste beschreibt also eine Absicht, nicht den Bestand. Und der angebliche *Item-Abgleich gegen den Originalbogen* war keiner: Die ERQ-S-Scoring-Angabe nennt *„sum items 1, 3, and 5“* in **ERQ-S-Zählung**; diese Nummern wurden als ERQ-Nummern gelesen und über eine angenommene Zuordnung übersetzt, statt gegen Tabelle 1 geprüft zu werden. Zwei teilweise überlappende Nummernsysteme sind genau die Konstellation, in der ein Abgleich plausibel aussieht und trotzdem falsch ist.

  **Folge:** Die beiden `ObservationDefinition`s, die beiden Beispiel-`Observation`s, die Katalogcodes und die FHIRPath-`variable`s sind zurückgezogen. Der Bogen selbst bleibt **unverändert** — Wortlaut und `linkId`s sind dictionary-treu und korrekt. Einzelheiten auf der [ERQ-6-Seite](ERQ-6.html).
- **Scoring:** Alle fünf sind Zuschnitte („trennschärfstes Item je Skala" bzw. „erste 5 Fragen"), für die keine validierte Scoring-Vorschrift vorliegt. Bewusst kein Score-Item — bis eine Auswertungsregel fachlich abgestimmt ist (Antwortcodes tragen vorsorglich `ordinalValue`).
- **ANSOCQ-2 — Einfachauswahl: entschieden ✅ (2026-09-29).** Die deutsche Validierung (Pauli et al., *J Eat Disord* 2017) beschreibt *„participants can choose between five answers"*, und der dort genannte Gesamtscore-Bereich 20–100 bei 20 Items geht nur bei genau einer Antwort je Item auf. Umgesetzt ist Einfachauswahl; der Zusatz „oder mehrere Feststellungen" bleibt als übernommener Wortlaut im Instruktionstext. **Nebenbefund:** Der deutsche ANSOCQ-Wortlaut stammt aus der **Schweizer** Fassung (Übersetzung Zürich, Schweizer Validierungsstichprobe; sichtbar an „Gesäss") — `language` ist auf `de-CH` gesetzt. Damit ist ANSOCQ-2 nach DEM der zweite Bogen mit Schweizer Herkunft.
- **EDE-Q6 — Erratum im Dictionary:** Die Bedingung für `edeq30` lautet dort „If edeq31 = 1"; eine Variable `edeq31` existiert im AN-Blatt nicht. Umgesetzt als `enableWhen` auf `edeq29` (die Ja/Nein-Frage direkt davor) — im Dictionary zu korrigieren.
- **Visuelle Skalen:** Die Antwortskalen von ERQ-6 (1–7) und EDE-Q-Item 27 (0–6) liegen im Dictionary nur als Grafik vor (Reiter „ERQ" / „EDE-Q27"); die Anker wurden aus den Grafiken übernommen und sind gegen die Originalbögen zu prüfen.

#### ❓ PHQ-SADS — unterschiedlicher Recall bei geteilten Items
**Status:** offen, **Roadmap 2027** (Stand 2026-09-02)

Der PHQ-SADS ist die gemeinsame Auswertung von PHQ-15, GAD-7 und PHQ-9. Im geteilten PHQ-D-Namespace sind das 31 Items, aber nur **29 verschiedene `linkId`s**: `phq-phq2c` (Schlafstörungen) und `phq-phq2d` (Müdigkeit) gehören zu PHQ-15 **und** PHQ-9.

**Problem:** PHQ-15 hat einen **4-Wochen-Recall**, PHQ-9 und GAD-7 einen **2-Wochen-Recall**. Das geteilte Item wird einmal beantwortet, fließt aber in zwei Scores mit unterschiedlichem Zeitbezug ein. Welchen Recall man dem Item auch gibt — eine der beiden Skalen erhält einen Wert unter einem Zeitfenster, für das sie nicht validiert ist.

**Konsequenz:** Das ist auf Item-Ebene nicht lösbar; es muss sich in der **Score-Interpretation** niederschlagen.

**Zuständigkeit: MII-PRO-Modul**, nicht PCOR-MII. Dort werden die PHQ-Questionnaires, der geteilte `linkId`-Namespace und die Score-`ObservationDefinition`s gepflegt — dort gehört auch die Regel hin, wie ein geteiltes Item unter zwei Recall-Zeiträumen zu werten ist. PCOR-MII dokumentiert den Konflikt nur und übernimmt die Lösung, sobald sie upstream getroffen ist. Offen bleibt dort zudem, ob PHQ-SADS und PHQ-4 als abgeleitete Subset-Questionnaires (`derivedFrom`) ausgeprägt werden oder nur über `linkId`s ausgewertet. Beschrieben im Abschnitt „PHQ-SADS" der [PHQ-Übersicht](PHQ.html).

#### ❓ Welche Questionnaires werden übernommen?
**Status:** teilweise erledigt (Stand 2026-09-23; ursprünglich 2026-06-04)

Ursprünglicher Punkt: Es werden nur wenige Fragebögen aus dem MII-PRO-Modul benötigt; je Fragebogen ist zu klären, ob **1:1 referenziert** oder **mit Anpassung (`derivedFrom`)** übernommen wird. Zwischenstand:

1. ✅ MII-PRO-Dependency aktiv (inzwischen `2026.7.0`).
2. ✅ Referenzierte Instrumente dokumentiert (PHQ-Familie, WHODAS, PROMIS u. a. — siehe [Instrumente](Instrumente.html)); PCOR-MII-eigene Instrumente modelliert (DEM, MHI, OPD-SFK, WAI, GSLTPAQ, EXPECT, IPQ-S sowie die AN-Instrumente aus ADR-003).
3. ⬜ Platzhalter `PcorExampleQuestionnaire` entfernen.
4. ⬜ Offene Referenzseiten (EURONET-SOMA, ISR-Z, PC-PTSD, SCOFF, SSD-12, WI-7) anlegen.

### Entschieden

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

**Entscheidung 2 — die Zuordnung läuft über `Questionnaire.item.code`, nicht über `linkId`s und nicht über eine ConceptMap.**

Der Grund ist grundsätzlich, nicht praktisch: **`linkId`s sind nur *innerhalb* eines Questionnaire eindeutig.** Sie können die Frage „zu welchem Instrument gehört diese Variable?" also gar nicht beantworten. Der ERQ zeigt, was dabei schiefgeht — Dictionary-`erq6` und FHIR-`linkId` `erq6` bezeichnen **verschiedene** Items, beide sind Unterdrückungs-Items, sie klingen ähnlich, und ein Abgleich über Namensgleichheit ordnet dort still falsch zu, ohne dass es bei einer Sichtprüfung auffällt. Ein **Code** ist global eindeutig, ein `linkId` nicht.

Deshalb trägt **jedes Item seine Dictionary-Variable in `Questionnaire.item.code`**, gegen das CodeSystem [`pcor-item-dictionary`](CodeSystem-pcor-item-dictionary.html). Das Element ist `0..*` — ein Item kann also gleichzeitig den semantischen LOINC-Code und die Dictionary-Variable tragen, und bei ACE, DEM und MHI ist genau das der Fall. Das Muster ist außerdem Hauskonvention: Das MII-PRO-Modul nutzt `item.code` in 22 Questionnaires für 210 Items.

Damit werden aus zwei Fragen **zwei Nachschlage-Operationen**:

| Frage | Antwort |
|---|---|
| Zu welchem Instrument gehört Variable `X`? | das Questionnaire, das ein Item mit `item.code` = `X` hat |
| Wie heißt sie dort? | der `linkId` genau dieses Items |

Der Rename fällt also **gratis** mit ab, und es gibt keine zweite Quelle der Wahrheit, die auseinanderlaufen könnte. Eine ConceptMap ist dafür **nicht mehr erforderlich**; [`pcor-cm-erq-s-linkids`](ConceptMap-pcor-cm-erq-s-linkids.html) bleibt als vorgerechnete Lesehilfe und als ausdrückliche Warnung vor der Kollision bestehen, ist aber nicht mehr der Mechanismus.

**Stand der Umsetzung (2026-09-30):** In allen zwölf PCOR-MII-Questionnaires gesetzt — **114 Items** tragen ihre Dictionary-Variable. Ohne Code bleiben genau die Items, die **keine** Dictionary-Variablen sind: Gruppen-Items, berechnete Score-Items und die PCOR-MII-eigenen Hilfsitems (etwa die Einheitenauswahl `Q_WB151`/`Q_WB152` im [MHI](MHI.html), die es im Dictionary nicht gibt). Dass diese Liste genau so aussieht, ist die Kontrolle, dass die Zuordnung stimmt.

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
| Zwei Fassungen desselben Instruments stehen nebeneinander | gemeinsamer **Katalogcode** in `Questionnaire.code` — siehe ADR-007 |

**Was `derivedFrom` nicht leistet.** Es sagt *dass* abgeleitet wurde, nicht *wie*. Übersetzung, Kurzform, Adaption und Teilmenge sind alle „based on" und im Element nicht unterscheidbar. R4 hat für `Questionnaire` **kein** eigenes Element für eine Übersetzungsbeziehung und auch kein `relatedArtifact`. Die **Art** der Ableitung gehört deshalb zwingend in den `designNote` — sonst ist die Angabe kaum interpretierbar.

**Wichtige Abgrenzung: eine Übersetzung ist kein `derivedFrom` auf eine andere Übersetzung.** Zwei Übersetzungen desselben Instruments sind **Geschwister**, nicht Eltern und Kind — beide leiten sich vom Original ab, nicht voneinander. Beim [GSLTPAQ](GSLTPAQ.html) heißt das: Die PCOR-MII-Eigenübersetzung zeigt **nicht** auf die validierte deutsch-österreichische Fassung und umgekehrt auch nicht; beide zeigen, sobald es sie als Ressource gibt, auf das englische Original.

**Und der Wortlaut folgt der Rechtekette, nicht der Zitationskette.** Wo die Übersetzung herkommt, ist eine andere Frage als wo das Instrument herkommt, und die DIZ-Implementierungsliste vermischt beides in einer Zelle. Zwei Beispiele aus diesem Projekt: Beim [EDE-Q6](EDE-Q6.html) nennt die Liste als Übersetzungspaper die psychometrische *Evaluation* — der Wortlaut stammt aber aus der dgvt-Publikation. Beim [ERQ-6](ERQ-6.html) liefert das Übersetzungspaper (Abler & Kessler 2009) die **Langform**, aus der die sechs Items entnommen sind — während das dort genannte *Entwicklungspaper* ein anderes Instrument beschreibt als das erhobene. In beiden Fällen ist die Wortlautquelle in `copyright` zu nennen, nicht bloß das Paper, das die Liste angibt.

#### ✅ ADR-008 — Short Forms: Original-`linkId`s, Wortlaut aus der autorisierten Langform-Quelle, Langform mitmodellieren
**Entschieden 2026-09-30.** Erweitert ADR-003 Punkt 6 (`linkId`-Regel) um die beiden Hälften, die dort fehlten: woher der Wortlaut kommt und was mit der Langform passiert.

Ein Zuschnitt oder eine Short Form ist in PCOR-MII nach drei Regeln zu modellieren. Sie hängen zusammen — einzeln angewandt ergeben sie eine Ressource, die technisch stimmt und fachlich in die Irre führt.

**Regel 1 — `linkId`s sind die Original-Itemnummern.** Unverändert aus ADR-003 Punkt 6: Hat der Bogen eine offizielle Nummerierung, tragen die `linkId`s sie (`edeq1/7/12/27/29/30`, `ansocq3/14`, `ssuk14/10`, `ace1`–`ace5`, ERQ-6 `erq1/2/3/6/8/9`). Nur Einzelfragen ohne eigene Nummerierung dürfen Dictionary-IDs behalten.

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

**Die Lage.** PCOR-MII bildet beim GSLTPAQ eine **hausinterne Eigenübersetzung** ab — die vorhandenen Studiendaten wurden mit ihr erhoben. Seit kurzem existiert eine **linguistisch validierte** deutsch-österreichische Übersetzung (Lindner, Bamberger, Crutzen & Kulnik, *Measurement and Evaluations in Cancer Care* 2026, [doi:10.1016/j.ymecc.2026.100027](https://doi.org/10.1016/j.ymecc.2026.100027)), die perspektivisch im MII-PRO-Modul gepflegt werden soll. Beide Wortlaute werden also gebraucht. Die Frage ist, wie man sie unterscheidet.

**Entscheidung: zwei getrennte `Questionnaire`-Ressourcen mit eigenen Canonicals und eigenen Maintainern.** Nicht zwei Sprachebenen auf einer Ressource, nicht zwei Versionen derselben Ressource.

**Warum nicht Sprachebenen.** Ein Sprachtag kodiert eine sprachliche **Varietät**, keinen **Validierungsstatus**. `de` neben `de-AT` sagt „deutsches vs. österreichisches Deutsch"; es sagt nicht, dass eine der beiden nicht validiert ist. Wer Designations auflöst, darf sich legitim für eine beliebige entscheiden — und würde dabei unbemerkt zwischen validiertem und nicht validiertem Wortlaut wechseln.

Der Fall sieht ADR-005 (unten) und dem [ANSOCQ-2](ANSOCQ-2.html) ähnlich, ist aber anders gelagert. Dort beschreiben `de-CH` und `de` **dieselbe** Messung: Die `de`-Ebene ist eine rein orthografische Bereinigung der validierten Schweizer Fassung, ausdrücklich nicht für die Erhebung gedacht, und das Regionaltag entspricht tatsächlich der Herkunft der Übersetzung. Beim GSLTPAQ stehen dagegen **zwei unabhängig entstandene Übersetzungen** nebeneinander — also zwei Messungen, nicht zwei Schreibweisen einer.

**Warum nicht Versionen.** Ein Versionssprung behauptet **Ablösung**: Consumer lesen ihn als „die neue Fassung ersetzt die alte". Genau das soll hier nicht gesagt werden. Die Eigenübersetzung bleibt gültig, weil die bestehende Zeitreihe mit ihr erhoben wurde und ein Wortlautwechsel die Vergleichbarkeit bricht. Eine Version, die zum Wechsel auffordert, wäre für Bestandsdaten eine falsche Anweisung.

**Warum zwei Ressourcen passen.**

- **Eigentum und Lebenszyklus** unterscheiden sich: eine projekteigene Übersetzung gegen eine publizierte Fremdübersetzung, die ins Kernmodul gehört.
- **Rechte** unterscheiden sich: Die Eigenübersetzung ist die des Projekts, Lindner et al. bringen eigene Bedingungen mit.
- **Validierungsstatus ist eine Eigenschaft des Instruments**, nicht der Sprache — und gehört daher auf die Ressourcenebene.
- Entscheidend: **`QuestionnaireResponse.questionnaire` wird eindeutig.** Aus der Antwort allein ist ablesbar, welchen Wortlaut die Person vorgelegt bekam. Für die Auswertung ist das die wichtigste Eigenschaft überhaupt — und sie ist bei Sprachebenen wie bei Versionen ohne `|version`-Pin nicht gegeben.

**Wie es umzusetzen ist.**

1. **Identische `linkId`s in beiden Ressourcen.** Dann braucht es keine ConceptMap, und eine Zusammenführung auf Item-Ebene ist technisch möglich — sie bleibt aber eine bewusste Entscheidung der Auswertung und wird nicht stillschweigend ermöglicht.
2. **Derselbe Katalogcode** (`Questionnaire.code` aus dem MII-Questionnaire-Katalog), damit beide als zwei Fassungen **eines** Instruments erkennbar sind und nicht als zwei Instrumente.
3. Die PCOR-MII-Fassung trägt `experimental = true` und einen `designNote`, der die validierte Fassung benennt und sagt, warum die Eigenübersetzung fortbesteht.
4. **Kein Retire bei Ankunft der Upstream-Fassung.** Die PCOR-MII-Fassung bleibt `active`, solange mit ihr erhoben wird, und geht erst auf `status = retired`, wenn die Erhebung endet. `retired` bleibt auflösbar — genau das brauchen Alt-`QuestionnaireResponse`s.
5. **Vergleichbarkeit ausdrücklich ausweisen**, nicht voraussetzen: Antworten aus beiden Fassungen sind nicht ohne Weiteres poolbar.

**Ein zweiter Haken, der beim Wechsel zu bedenken ist:** Die validierte Übersetzung ist deutsch-**österreichisch**. Für eine Erhebung in Deutschland ist damit auch sie nicht im strengen Sinn kontextvalidiert. Das ist kein Grund, sie nicht zu bevorzugen — sie ist linguistisch validiert und die Eigenübersetzung nicht —, aber es ist ein Punkt für die Dokumentation und nicht zu verschweigen.

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
2. **Keine Instrument-Codes des Vollinstruments an Zuschnitte:** SNOMED CT kennt Konzepte für ANSOCQ (`443321009`) und EDE-Q (`446825002`), LOINC ein Panel für ACE (`82813-7`) — alle bezeichnen das jeweilige Vollinstrument. Ein 2-, 5- oder 6-Item-Zuschnitt ist nicht das validierte Instrument; `Questionnaire.code` bleibt daher leer, die Codes sind in den FSH-Kommentaren dokumentiert.
3. **Kein Score ohne validierte Grundlage:** Für keinen der Zuschnitte existiert eine publizierte Scoring-Vorschrift; SSUK-2 ist zudem gegenläufig gepolt (Begründungsmuster wie EXPECT). Antwortcodes tragen `ordinalValue`, damit eine spätere Auswertung möglich bleibt.
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
