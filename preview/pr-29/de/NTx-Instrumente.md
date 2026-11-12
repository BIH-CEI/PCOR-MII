# NTx-Instrumente — BAASIS, ABQ, MTSOSD-R59 (metadata-only), MHI-NTx und Verlaufsbefragung - PCOR-MII Implementation Guide v0.9.0

## NTx-Instrumente — BAASIS, ABQ, MTSOSD-R59 (metadata-only), MHI-NTx und Verlaufsbefragung

Im Anwendungsfall **Nierentransplantation (NTx)** werden drei Instrumente zur **Medikamentenadhärenz** und **Symptomlast** erhoben, dazu die [Transplantationsanamnese MHI-NTx](#mhi-ntx-transplantationsanamnese) und die [NTx-Verlaufsbefragung](#ntx-verlaufsbefragung-mhh) des Standorts Hannover: **BAASIS** (Selbstauskunft zur Einnahme immunsuppressiver Medikation), **ABQ** (Barrieren der Adhärenz) und **MTSOSD-R59** (Symptomlast mit Belastungsbewertung). BAASIS und ABQ hängen zusammen: Der ABQ wird nur bei Hinweis auf Nichtadhärenz im BAASIS erhoben. Quelle der Item-Auswahl ist das **Item Level Dictionary** (Blatt NTx, Kategorien TCH und MSE).

> **Metadata-only:** Alle drei Instrumente bilden **ausschließlich Struktur und Metadaten** ab, **nicht** den Originalwortlaut. Eine Veröffentlichung der konkreten Items einschließlich Antwortmöglichkeiten ist laut Rechteinhabern nicht erlaubt. Die wissenschaftliche Nutzung ohne Pharma-Beteiligung ist kostenfrei, **jedes Zentrum benötigt eine eigene Lizenzvereinbarung**.

### Verwendung in PCOR-MII

Die Instrumente sind NTx-spezifisch und gehören daher in die Use-Case-Schicht von PCOR-MII, wie auch [WAI](WAI.md) und [UKHD-EDP](UKHD-EDP.md). Alle drei sind Selbstauskunfts-PROs und tragen deshalb das Profil des MII-PRO-Moduls (nicht ISiKFormularDefinition). Metadata-only bedeutet konkret:

* **Item-Texte** sind neutrale, selbst formulierte Beschreibungen („Erfasst: …“), kein Originalwortlaut.
* **Antwortkonzepte** sind neutral benannt („Stufe 1“ … „Stufe n“) und tragen `itemWeight`, damit eine spätere Auswertung möglich bleibt.
* **Struktur, `linkId`s, Typen, Wertebereiche und Bedingungen** sind lizenzfrei und vollständig angelegt. Die `linkId`s sind die Variablen-IDs des Item Level Dictionary.
* Alle Capabilities sind `false` (nicht displayable, collectable, extractable, domain-aligned), beim ABQ ist zusätzlich `calculatable` gesetzt.

Für die Erhebung ist der wortgleiche Originalbogen über die berechtigte Bezugsquelle zu beziehen; diese Ressourcen dienen der strukturell korrekten Ablage der Antworten.

### Lizenz und Bezugsweg

Rechteinhaber, Bezugswege, Lizenzbedingungen und die offenen Fragen zu allen drei Instrumenten stehen gesammelt auf [Rechtelage und offene Punkte](Rechtelage.md#ntx); die Hinweise sind maschinenlesbar im `copyright`-Element der Ressourcen hinterlegt. Nur der PCOR-MII-eigene FHIR-Inhalt unterliegt der Repository-Lizenz (CC-BY-4.0).

### BAASIS

**Basel Assessment of Adherence to Immunosuppressive Medications Scale**, Kategorie TCH.

**Artefakte:**

* **Fragebogen:** [Questionnaire-BAASIS](Questionnaire-BAASIS.md) · Beispielantwort [BAASISResponse](QuestionnaireResponse-BAASISResponse.md) (nur `linkId`s und Codes)
* **Häufigkeitsskala (Anzahl, 1A_a/1B_a):** [ValueSet baasis-haeufigkeit-5-vs](ValueSet-baasis-haeufigkeit-5-vs.md) · [CodeSystem baasis-haeufigkeit-5](CodeSystem-baasis-haeufigkeit-5.md) — fünf neutral benannte Konzepte mit `itemWeight` 1–5
* **Häufigkeitsskala (Rate, 2_a):** [ValueSet baasis-haeufigkeit-zeit-5-vs](ValueSet-baasis-haeufigkeit-zeit-5-vs.md) · [CodeSystem baasis-haeufigkeit-zeit-5](CodeSystem-baasis-haeufigkeit-zeit-5.md) — fünf neutral benannte Konzepte mit `itemWeight` 1–5

**Canonical:** `https://bih-cei.github.io/PCOR-MII/Questionnaire/BAASIS`

**Eigenschaften:**

* **Items**: 10 Variablen (`BAASIS1A`, `BAASIS1A_a`, `BAASIS1B`, `BAASIS1B_a`, `BAASIS2`, `BAASIS2_a`, `BAASIS3`, `BAASIS4`, `BAASIS5`, `BAASIS5_a`). Ja/Nein als SNOMED CT `373066001`/`373067005` inline ([ADR-013](Designentscheidungen.md)), die Teilfragen `_a` zu 1A und 1B über die Anzahl-Skala, 2_a über die Raten-Skala. Items 1A–3 blicken vier Wochen zurück, 4 und 5 ein Jahr.
* **Fassung und Aufbau**: Written self-report der Version 2021, ohne die Medikationstabelle der Interview-Fassung. Die Items folgen der ABC-Taxonomie (Vrijens et al. 2012), nach der die offizielle Erläuterung der Uni Basel das Instrument gliedert: **Implementierung** (1A Einnahme, 1B Drug Holiday, 2 Timing, 3 Dosisänderung), **Persistenz** (4) und **Initiierung** (5, 5_a).

| | | |
| :--- | :--- | :--- |
| `BAASIS1A`/`BAASIS1A_a` | Einnahme: Dosis ausgelassen (4 Wochen) / Häufigkeit | ja/nein; Stufe 1–5 |
| `BAASIS1B`/`BAASIS1B_a` | Einnahme: zwei oder mehr Dosen in Folge ausgelassen / Häufigkeit | ja/nein; Stufe 1–5 |
| `BAASIS2`/`BAASIS2_a` | Timing: Einnahmezeitpunkt um mehr als zwei Stunden verfehlt / Häufigkeit | ja/nein; Stufe 1–5 |
| `BAASIS3` | Dosis eigenmächtig geändert (4 Wochen) | ja/nein |
| `BAASIS4` | Persistenz: Medikament eigenmächtig abgesetzt (1 Jahr) | ja/nein |
| `BAASIS5`/`BAASIS5_a` | Initiierung: Neuverordnung im letzten Jahr / eingelöst und begonnen | ja/nein; ja/nein |

Die Konstruktzuordnung folgt der ABC-Gliederung des BAASIS und beschreibt, **was** erfragt wird — nicht **wie**. **Korrektur 2026-11-05:** `BAASIS5`/`BAASIS5_a` wurden zunächst als PCOR-MII-Zusatz geführt; laut Erläuterung der Uni Basel ist Item 5 seit der Version 2020 offizieller Bestandteil des BAASIS und misst die Phase Initiierung.

* **Zwei Häufigkeitsskalen**: Das Dictionary gibt für 1A_a und 1B_a fünf Anzahl-Kategorien an, für 2_a dagegen fünf Raten-Kategorien (von einmalig bis fast täglich). Beide sind als getrennte ValueSets modelliert, damit „Stufe 2“ nicht in beiden als dasselbe gelesen wird. Die offizielle Erläuterung nennt für alle drei Teilfragen dieselben Anzahl-Kategorien; ob die Raten-Skala bei 2_a dem lizenzierten deutschen Bogen entspricht oder eine lokale Abweichung ist, ist mit MHH zu prüfen ([offener Punkt](Rechtelage.md#ntx)).
* **Bedingungen**: 1A_a nur bei 1A = ja; 1B nur bei 1A = ja; 1B_a nur bei 1B = ja; 2_a nur bei 2 = ja; 5_a nur bei 5 = ja.
* **Scoring**: kein Gesamtscore; die offizielle Auswertung bewertet die drei Phasen getrennt. **Implementierungsproblem** bei „ja“ in 1A, 1B, 2 oder 3; **Nicht-Persistenz** bei „ja“ in 4; **Nicht-Initiierung** bei „ja“ in 5 und „nein“ in 5_a, der Anteil wird nur unter den Neuverordneten berechnet. Das ist **nur dokumentiert**, nicht als Ausdruck ausgeliefert. Der PCOR-MII-Auslöser für den ABQ („ja“ in 1A, 2, 3 oder 4) entspricht Implementierungs- oder Persistenzproblem, da 1B ein „ja“ in 1A voraussetzt.
* **Lizenzbedingungen** (Website): Erlaubnis je Projekt über das Online-Formular, keine Gebühr genannt, wortgleiche Veröffentlichung von Items oder Skala untersagt. Publikationen müssen Denhaerynck et al. 2023, Haupenthal et al. 2025 und die Website zitieren. **Die Nutzung verpflichtet zur Weitergabe der Daten an das laufende Validierungsprojekt der Uni Basel** (Term IV), das sollte das Konsortium vor der Lizenzanfrage kennen. Eine deutsche Fassung der Version 2021 ist offiziell verfügbar.

### ABQ

**Adherence Barriers Questionnaire**, Kategorie TCH.

**Artefakte:**

* **Fragebogen:** [Questionnaire-ABQ](Questionnaire-ABQ.md) · Beispielantwort [ABQResponse](QuestionnaireResponse-ABQResponse.md) (Summe 26 im berechneten Item)
* **Antwortskala:** [ValueSet abq-skala-4-vs](ValueSet-abq-skala-4-vs.md) · [CodeSystem abq-skala-4](CodeSystem-abq-skala-4.md) — vier neutral benannte Konzepte mit `itemWeight` 1–4

**Canonical:** `https://bih-cei.github.io/PCOR-MII/Questionnaire/ABQ`

**Eigenschaften:**

* **Items**: 16 Items (`ABQ_01` … `ABQ_16`) auf der 4-stufigen Skala, dazu das berechnete Summen-Item `abq-summe`.
* **Bedingung (Cross-Questionnaire)**: Laut Item Level Dictionary wird der ABQ nur erhoben, wenn BAASIS1A, BAASIS2, BAASIS3 oder BAASIS4 mit „ja“ beantwortet wurde. Das ist **nicht als `enableWhen`** modelliert, sondern nur dokumentiert; der aufrufende Prozess steuert es. Für `ABQ_01` nennt das Dictionary nur BAASIS1A, vermutlich eine Inkonsistenz, die zu klären ist.
* **Scoring**: Summe der 16 Items als SDC `calculatedExpression` über `.weight().sum()`, Bereich **16–64**, höhere Werte bedeuten mehr Adhärenzbarrieren. Es werden keine Cut-offs ausgeliefert.

> **Offen:** Polung der Gewichte und Bezugsweg — siehe [Rechtelage und offene Punkte](Rechtelage.md#ntx).

### MTSOSD-R59

Symptomfragebogen mit 59 Symptomen und 3 Freitext-Symptomen, Kategorie MSE.

**Artefakte:**

* **Fragebogen:** [Questionnaire-MTSOSDR59](Questionnaire-MTSOSDR59.md) · Beispielantwort [MTSOSDR59Response](QuestionnaireResponse-MTSOSDR59Response.md) (11 aufgetretene Symptome, Belastung nur dort)
* **Auftretensskala:** [ValueSet mtsosd-r59-auftreten-5-vs](ValueSet-mtsosd-r59-auftreten-5-vs.md) · [CodeSystem mtsosd-r59-auftreten-5](CodeSystem-mtsosd-r59-auftreten-5.md) — fünf neutral benannte Konzepte mit `itemWeight` 0–4
* **Belastungsskala:** [ValueSet mtsosd-r59-belastung-5-vs](ValueSet-mtsosd-r59-belastung-5-vs.md) · [CodeSystem mtsosd-r59-belastung-5](CodeSystem-mtsosd-r59-belastung-5.md) — fünf neutral benannte Konzepte mit `itemWeight` 0–4

**Canonical:** `https://bih-cei.github.io/PCOR-MII/Questionnaire/MTSOSDR59`

**Eigenschaften:**

* **Items**: 126 Variablen, flach. Je Symptom zwei Items: **Auftreten** (`MTSOSDR59_NN`, Stufe 0–4) und **Belastung** (`MTSOSDR59_NNa`, Stufe 0–4). Symptom 27 gibt es geschlechtsspezifisch (`_male`, `_female`), die Symptome 60–62 sind Freitext.
* **Bedingungen**: Belastung nur bei Auftreten ungleich Stufe 0, bei Freitext sobald ein Text vorliegt. Die Steuerung von Symptom 27 über das Geschlecht (`Q_SEX`) ist eine Cross-Questionnaire-Bedingung und nicht als `enableWhen` modelliert.
* **Scoring**: kein Score, und zwar bewusst. Die Originalpublikation (Dobbels et al. 2008) hält eine Summe über die Items für nicht gerechtfertigt, weil keine Faktorstruktur vorliegt, und nennt als einzig korrekten Weg zu einem Gesamtwert die **Ridit-Analyse** (**Relative to an Identified Distribution**, Sermeus & Delesie 1996): Je Item wird die Antwortverteilung der Kohorte als Referenz genommen; der Ridit einer Person oder Teilgruppe ist die Wahrscheinlichkeit (0–1), dass sie höher antwortet als eine zufällig gezogene Person der Referenz, getrennt für Auftreten und Belastung. Ein Ridit ist damit kohortenabhängig und kein Attribut einer einzelnen Antwort; er gehört in die Auswertung, nicht in den Bogen. `itemWeight` 0–4 bleibt gesetzt, für die Deskription je Item und als Eingabe der Ridit-Berechnung.
* **Aufbau im FSH**: Die Wiederholung über die 59 Symptome läuft über drei parametrisierte RuleSets (`Symptom`, `SymptomGeschlecht`, `Freitext`) in `MTSOSD-R59.fsh`; der Aufbau eines Symptompaars steht genau einmal, die Instanz ruft ihn je Nummer auf.
* **Belastungsskala**: Das Dictionary verweist auf das Blatt **Visual Scale MTSOSD-R59** des Master-Excels. Die dort eingebettete Grafik zeigt eine Linie mit den Stufen 0 bis 4 und zwei verbalen Ankern an den Enden, also die fünfstufige Likert-Skala des Originals (Dobbels et al. 2008), keine kontinuierliche VAS. Sie ist als eigene neutral benannte Skala modelliert; die Ankertexte werden nicht veröffentlicht.
* **Herkunft**: Der MTSOSD-R59 ist die 59-Item-Revision der **Modified Transplant Symptom Occurrence and Symptom Distress Scale** (Dobbels et al. 2008) für alle soliden Organe. Laut Originalpublikation sind beide Skalen fünfstufig (0–4): Auftreten „never“ bis „always“ in vertikalem Layout, Belastung „not at all distressing“ bis „extremely distressing“ in horizontalem Layout; die unterschiedliche Anordnung ist bewusst gewählt, damit beide Urteile unabhängig voneinander ausfallen. Eine **deutsche Fassung existiert offiziell**: Die Übersetzung wurde vom MAPI Research Institute nach den ISPOR-Grundsätzen linguistisch validiert (neben Niederländisch, Englisch, Französisch, Spanisch u. a.), Copyright KU Leuven, Bezug über die Erstautorinnen. Eine psychometrische Validierung der deutschen Fassung gibt es nicht; in Deutschland ist das Instrument seit den Hannoveraner Studien zur Symptomlast nach Organtransplantation (Kugler et al. 2009) in Gebrauch. Ob MHH die MAPI-Fassung einsetzt, ist zu bestätigen.

> **Offen:** Erhebungsumfang (kompletter Bogen oder Tremor/Diarrhoe) und MAPI-Fassung bei MHH — siehe [Rechtelage und offene Punkte](Rechtelage.md#ntx).

### MHI-NTx (Transplantationsanamnese)

Ergänzung zur [Medical History](MHI.md) für **Empfänger** einer Nierentransplantation: Spendeart, Datum der letzten Transplantation und wievielte Spenderniere, die Dictionary-Gruppen `MHH-DON`, `MHH-Tx-DATE` und `MHH-PRIOR-TX` (Kategorie TCH, Screening, Prio A). **Eigener Bogen statt Gruppe im MHI:** Der MHI ist allen Use Cases gemeinsam und hat keinen Entitätsschalter; welche Bögen ein Use Case erhebt, legt sein Manifest fest, und das Empfänger-Manifest pinnt MHI und MHI-NTx, das Spender-Manifest nur den MHI. Kein PRO-Instrument, Profil ISiKFormularDefinition wie der MHI.

**Artefakte:** [Questionnaire-MHINTX](Questionnaire-MHINTX.md) · Beispielantwort [MHINTXResponse](QuestionnaireResponse-MHINTXResponse.md) · [Spendeart](ValueSet-mhi-ntx-spendeart-vs.md) · [Anzahl Spendernieren](ValueSet-mhi-ntx-spendernieren-vs.md) (`itemWeight` 1–4, Stufe 4 offen nach oben)

**Canonical:** `https://bih-cei.github.io/PCOR-MII/Questionnaire/MHINTX`

Rechtelage wie bei der Verlaufsbefragung: Standortitems der MHH ohne dokumentierte Freigabe, triviale Faktenfragen wie die Standortitems im MHI.

### NTx-Verlaufsbefragung (MHH)

Quartalsweise Verlaufsanamnese nach Nierentransplantation des Standorts Hannover, **kein Instrument und kein PRO**, sondern 18 patient-reported Standortitems der Dictionary-Gruppen `MHH-*` als ein Sammelbogen nach dem Muster des [MHI](MHI.md). Die drei **Screening**-Items der MHH liegen nicht hier, sondern im Ergänzungsbogen [MHI-NTx](#mhi-ntx-transplantationsanamnese). Voller Wortlaut aus dem Dictionary; die Rechtelage entspricht den [UKHD-Zusatzitems](UKHD-Zusatzitems.md): Standortitems ohne dokumentierte Freigabe, in der DIZ-Liste nicht geführt.

**Artefakte:**

* **Fragebogen:** [Questionnaire-NTXVERLAUF](Questionnaire-NTXVERLAUF.md) — Profil ISiKFormularDefinition wie der MHI · Beispielantwort [NTXVERLAUFResponse](QuestionnaireResponse-NTXVERLAUFResponse.md)
* **Antwortskala:** [Nierenersatztherapie vor Transplantation](ValueSet-mhh-nierenersatz-vs.md); Ja/Nein als SNOMED CT `373066001`/`373067005` inline ([ADR-013](Designentscheidungen.md))

**Canonical:** `https://bih-cei.github.io/PCOR-MII/Questionnaire/NTXVERLAUF`

**Aufbau** (Gruppen = Dictionary-Gruppen, alle quartalsweises Monitoring laut Erhebungsplan):

| | | | |
| :--- | :--- | :--- | :--- |
| Dialyse | `MHH-DIAL` | wieder an Dialyse, Nierenersatztherapie vor Tx | Disease Progress, Prio A |
| Diabetes nach Transplantation | `MHH-PTx-DIAB` | 1 Ja/Nein | Prio A |
| Tumoren | `MHH-T` | 3 Ja/Nein | Prio A |
| Harnwegsinfekte | `MHH-UTI` | 4 Ja/Nein | Treatment Effects, Prio A |
| Infektionen | `MHH-Infection` | 3 Ja/Nein | Prio A |
| Blutdruck | `MHH-BP` | systolisch, diastolisch (mmHg, LOINC) | Prio B |
| Medikation | `MHH-Medi` | ASS-Einnahme | Prio A |
| Nebenschilddrüse | **ohne Label** | Operation, Cinacalcet | Prio A |

**Entscheidungen:** ein Bogen statt acht Gruppen-Questionnaires (Ergänzung zu [ADR-011](Designentscheidungen.md), 2026-11-05); Screening-Items im MHI-NTx, Monitoring-Items hier, weil die Erhebungseinheit die Ressource bestimmt; Blutdruck als Gruppe mit zwei PCOR-MII-eigenen Wert-Items, weil das Dictionary eine Variable mit zwei Werten führt; Wortlaut unverändert bis auf eine fehlende Klammer in einer Antwortoption. Das Dictionary kodiert „Nein“ uneinheitlich (0 oder 2), beim Einspielen von Rohdaten sind beide Kodierungen abzubilden.

> **Offen für MHH:** Gruppenlabel, Freigabe des Wortlauts, Erhebung als ein Bogen oder getrennt — siehe [Rechtelage und offene Punkte](Rechtelage.md#standortgruppen).

### Terminologie-Recherche

Für den ABQ nicht durchgeführt (Terminologie-MCP in der Session nicht verfügbar). Für BAASIS und MTSOSD-R59 am 2026-11-05 gegen LOINC 2.83 und SNOMED CT International (Stand 2026-10) recherchiert: kein Panel und kein Konzept für eines der Instrumente. LOINC `71799-1` „Adherence to prescribed medication instructions [Reported]“ ist ein generisches Einzelkonzept, kein BAASIS-Code, und wird nicht gesetzt. `Questionnaire.code` trägt bei allen dreien nur den PCOR-Katalogcode (`baasis`, `abq`, `mtsosd-r59`).

### Quellen

* Universität Basel. BAASIS — Basel Assessment of Adherence to Immunosuppressive Medications Scale. [https://baasis.nursing.unibas.ch](https://baasis.nursing.unibas.ch) — darin „Explanation of scale, scoring & validity“ (Version 7.10.2026) und Terms of Use.
* Denhaerynck K, Dobbels F, Košťálová B, De Geest S; BAASIS consortium. Psychometric properties of the BAASIS: a meta-analysis of individual participant data. Transplantation. 2023. doi:10.1097/TP.0000000000004574
* Haupenthal F, Doberer K, Kapps S, et al. Self-reported non-adherence to immunosuppressive medication detected by the BAASIS predicts allograft rejections in kidney transplant recipients. Nephrol Dial Transplant. 2025. doi:10.1093/ndt/gfaf078
* Vrijens B, De Geest S, Hughes DA, et al. A new taxonomy for describing and defining adherence to medications. Br J Clin Pharmacol. 2012;73(5):691-705.
* Müller S, Kohlmann T, Wilke T. Adherence Barriers Questionnaire (ABQ). 2015.
* KU Leuven. MTSOSD-R59. Kontakt: joke.willems@kuleuven.be
* Dobbels F, Moons P, Abraham I, Larsen CP, Dupont L, De Geest S. Measuring symptom experience of side-effects of immunosuppressive drugs: the Modified Transplant Symptom Occurrence and Distress Scale. Transpl Int. 2008;21(8):764-73. doi:10.1111/j.1432-2277.2008.00674.x
* Kugler C, Geyer S, Gottlieb J, Simon A, Haverich A, Dracup K. Symptom experience after solid organ transplantation. J Psychosom Res. 2009;66(2):101-10.
* PCOR-MII Item Level Dictionary, Blatt NTx (Strukturquelle; Wortlaut bewusst nicht übernommen).

Hinweise zum Lebenszyklus von `Questionnaire` zu `QuestionnaireResponse` siehe [Anwendung](Implementation.md); alle Artefakte unter [Artefakte](artifacts.md).

