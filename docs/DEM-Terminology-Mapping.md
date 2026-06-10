# DEM-Fragebogen — Terminologie-Mapping (item.code + Antwort-ValueSets)

> Arbeitsdokument für die Kodierung des Questionnaire **DEM** (Demographics + Medical History).
> Quelle der Items: `MASTER_3EntitiesOverview.xlsx`, Sheet `Demo+MedHis` (31 Items).
> Recherche gegen **MII-Ontoserver** (LOINC 2.81, SNOMED CT, IEEE 11073-10101) via FHIR-Terminology-MCP.
> Stand: 2026-06-09.

## Legende — Reifegrad der Kodierung

| Symbol | Bedeutung |
|--------|-----------|
| 🟢 | Standardcode/ValueSet vorhanden und passend — direkt verwendbar |
| 🟡 | Standardcode vorhanden, aber **fachliche Prüfung** nötig (Konzept weicht leicht ab) |
| 🔴 | **Kein** passender Standard — **lokales ValueSet/CodeSystem** im IG erforderlich (instrumentenspezifische Skala) |
| #️⃣ | Numerisches Item (`integer`/`decimal`/`quantity`) — kein answerValueSet, ggf. Einheit (UCUM) + dataAbsentReason |

**Kernbefund:** Nur ein kleiner Teil der DEM-Items (Geschlecht, Familienstand, Rauchen, Geburtsland/Staatsbürgerschaft, Food Insecurity) hat **standardisierte Antwort-Listen**. Die Mehrzahl nutzt Skalen aus den Originalinstrumenten (OECD, ISCED, PISA-Wellbeing, Commonwealth Fund, MED-HIMS, GIPS, WHODAS), für die **keine offiziell kodierten ValueSets** existieren → diese werden als **lokale ValueSets** im IG definiert.

---

## Übersichtstabelle

| linkId (Item Code) | Item (gekürzt) | Typ | item.code (empfohlen) | Antwort-Binding | Reife |
|---|---|---|---|---|---|
| Q_WB151 | Wie viel wiegen Sie? | decimal/quantity | LOINC `29463-7` Body weight | kg (UCUM `kg`) + „weiß nicht/keine Angabe" via dataAbsentReason | #️⃣🟢 |
| Q_WB152 | Wie groß sind Sie? | decimal/quantity | LOINC `8302-2` Body height | cm (UCUM `cm`) + dataAbsentReason | #️⃣🟢 |
| Q_ISCED | Höchster Bildungsabschluss | choice | LOINC `82589-3` Highest level of education ✅ | 🔴 lokales VS „ISCED-2011-DE" (7 Stufen) | 🟢/🔴 |
| Q_SEX | Geschlecht (Selbstbeschreibung) | choice | LOINC `76691-5` Gender identity | MII Person `Geschlecht` VS bzw. LOINC `LL3322-6` | 🟡 |
| Q_GENDERID | Geschlechtsidentität = Geburtsgeschlecht? | choice | s.u. (Transgender/Cisgender-Status) | 🔴 lokales VS (Ja/Nein/keine Angabe) | 🔴 |
| Q_OECDLIT5a | Aktuelle Arbeitssituation | choice | LOINC `67875-5` Employment status - current | 🔴 lokales VS (11 OECD-Kategorien) | 🟡/🔴 |
| Q_OECDLIT7a | Netto-Haushaltseinkommen (Kategorie) | choice | LOINC `108248-6` Household income | 🔴 lokales VS (CHF-Bänder) | 🔴 |
| Q_MONMED | Schwierigkeiten Arztrechnungen zu zahlen | choice | LOINC: kein direkter — s.u. | 🔴 lokales VS (Ja/Nein/n.z.) | 🔴 |
| Q_MON | *(Intro/Gruppe: finanzielle Sorgen)* | group | — | — | — |
| MONMEAL | Geld für gesunde Mahlzeiten | choice | LOINC `88122-7` (Hunger Vital Sign) — 🟡 Wortlaut prüfen | 🔴 lokales VS (Ständig…Nie, 5-stufig) | 🟡/🔴 |
| MONRENT | Geld für Miete/Kredit | choice | LOINC: kein direkter | 🔴 lokales VS (5-stufig) | 🔴 |
| MONBILLS | Geld für monatl. Rechnungen | choice | LOINC: kein direkter | 🔴 lokales VS (5-stufig) | 🔴 |
| MEDHIMS6 | In Deutschland geboren? | choice | LOINC `78746-5` Country of birth | Ja/Nein + Freitext Land (ISO 3166) | 🟢 |
| MEDHIMS7 | Deutsche/r Staatsbürger/in? | choice | LOINC `66476-3` Country of citizenship | Ja/Nein + Freitext (ISO 3166) | 🟢 |
| Q_OECDLITii | Urbanizität (Stadt/Dorf/Land) | choice | LOINC: kein direkter | 🔴 lokales VS (4 Kategorien) | 🔴 |
| (Zipcode) | Postleitzahl | string | — (Datenelement, kein Konzeptcode) | Freitext/PLZ-Pattern | #️⃣ |
| OECDLIT2a | Anzahl Kinder <18 im Haushalt | integer | LOINC `104078-1` Number of underage persons in household | Ganzzahl | #️⃣🟢 |
| OECDLIT2b | Anzahl Erwachsene ≥18 im Haushalt | integer | LOINC: **kein** dedizierter Code (geprüft) → lokal/generisch | Ganzzahl | #️⃣🔴 |
| WHODIS | *(Intro/Gruppe: soziale Unterstützung)* | group | — | — | — |
| WHODIS1 | Hilfe durch Familienmitglied | choice | LOINC: kein direkter (WHODAS-nah) | 🔴 lokales VS (sehr einfach…sehr schwierig + n.z.) | 🔴 |
| WHODIS2 | Hilfe durch Freunde/Nachbarn/Kollegen | choice | LOINC: kein direkter | 🔴 lokales VS (6-stufig) | 🔴 |
| GIPS04 | Beziehungsstatus (Partnerschaft) | choice | LOINC `45404-1` Marital status | HL7 `marital-status` (gekürzt) o. lokales VS (2 Werte) | 🟡 |
| GIPS10 | Rentenstatus | choice | LOINC: kein direkter | 🔴 lokales VS (4 Werte) | 🔴 |
| GIPS57a | Rauchen Sie? | choice (bool) | LOINC `72166-2` Tobacco smoking status | SNOMED Ja/Nein o. LOINC `LL2201-3` | 🟢 |
| GIPS57b | Zigaretten pro Tag | choice | LOINC `64218-1` „cigarettes per day now" [PhenX] ✅ (alt. `8663-7` pack/day) | 🔴 lokales VS (1-10/11-20/21-30/>30) | 🟢/🔴 |
| GIPS56a | Trinken Sie Alkohol? | choice (bool) | LOINC `11331-6` History of alcohol use | SNOMED Ja/Nein | 🟡 |
| GIPS56b1 | CAGE 1 — weniger trinken? | choice (bool) | 🔴 CAGE — kein LOINC-Code (s.u.) | SNOMED/lokal Ja/Nein | 🔴 |
| GIPS56b2 | CAGE 2 — kritisiert/geärgert? | choice (bool) | 🔴 CAGE — kein LOINC-Code | SNOMED/lokal Ja/Nein | 🔴 |
| GIPS56b3 | CAGE 3 — schuldig gefühlt? | choice (bool) | 🔴 CAGE — kein LOINC-Code | SNOMED/lokal Ja/Nein | 🔴 |
| GIPS56b4 | CAGE 4 — morgens Alkohol (Eye-opener)? | choice (bool) | 🔴 CAGE — kein LOINC-Code | SNOMED/lokal Ja/Nein | 🔴 |
| GIPS58 | Substanzkonsum (Cannabis, Ecstasy…) | choice (bool) | LOINC `96873-5` Illegal/recreational drug(s) used past 3mo | SNOMED/lokal Ja/Nein | 🟡 |

---

## Detail je Item

### Anthropometrie

**Q_WB151 — Gewicht** #️⃣🟢
- `item.code`: LOINC **`29463-7`** „Body weight" (de: „Körpergewicht")
- Typ `decimal`/`quantity`, Einheit UCUM `kg`. Antwortoptionen „2 = weiß nicht / 3 = möchte nicht sagen" → über `dataAbsentReason` (asked-but-unknown / asked-declined), **nicht** als answerOption kodieren.

**Q_WB152 — Größe** #️⃣🟢
- `item.code`: LOINC **`8302-2`** „Body height" (de: „Körpergröße")
- Typ `quantity`, UCUM `cm`; „weiß nicht/keine Angabe" analog via dataAbsentReason.

### Soziodemographie

**Q_ISCED — Bildungsabschluss** 🟢 / 🔴
- `item.code`: LOINC **`82589-3`** „Highest level of education" ✅ **gegen Ontoserver bestätigt** (LOINC 2.81). Alternativ SNOMED `224276008` „Educational achievement".
- Antworten: 🔴 **Lokales VS** „ISCED-2011-DE". Die 7 Stufen (Primar … Promotion) folgen ISCED/KMK — es existiert kein fertiges FHIR-VS. Map-Option: SNOMED-Bildungs-Konzepte je Stufe.

**Q_SEX — Geschlecht** 🟡
- `item.code`: LOINC **`76691-5`** „Gender identity" (Frage erfragt Selbstbeschreibung, nicht Verwaltungsgeschlecht).
- Antworten (Weiblich/Männlich/Nicht-binär/Andere/Möchte nicht sagen):
  - **Empfehlung (MII-Kontext):** Bindung an MII-Person-Modul `Geschlecht`-VS (enthält female/male/other/unknown + `gender-amtlich-de` „D/divers").
  - **Alternativ LOINC** Answer-List `http://loinc.org/vs/LL3322-6` — verifizierte Mitglieder u. a.: `LA22878-5` „Identifies as male", `LA22882-7` „Identifies as non-conforming", (weibl. Pendant `LA22877-7`), `LA46-8` „Other"/decline.
  - FHIR `administrative-gender` (male/female/other/unknown) deckt „nicht-binär" nur unzureichend ab → nicht erste Wahl.

**Q_GENDERID — Geschlechtsidentität entspricht Geburtsgeschlecht?** 🔴
- Konzept = Cisgender/Transgender-Status. LOINC `transgender` lieferte **0 Treffer**. SNOMED-Option: `407377005` „Female-to-male transsexual" etc. existiert, aber als **Ja/Nein-Frage** am besten:
  - `item.code`: ggf. LOINC `76689-9` „Sex assigned at birth" in Kombination, oder lokaler Code.
  - Antworten: 🔴 **Lokales VS** Ja/Nein/keine Angabe (SNOMED `373066001`/`373067005`).

**Q_OECDLIT5a — Arbeitssituation** 🟡 / 🔴
- `item.code`: LOINC **`67875-5`** „Employment status - current" 🟢 (de-Designation via Ontoserver vorhanden).
- Antworten: 🔴 **Lokales VS** (11 OECD-Kategorien: Selbstständig, Angestellt, Arbeitssuchend, Hausfrau/-mann, Arbeitsunfähig, Pensioniert, Student, …). PROMIS-Liste `LL6507-9` / PhenX `LL7180-4` decken die OECD-Kategorien nicht deckungsgleich ab.

**Q_OECDLIT7a — Haushaltseinkommen** 🔴
- `item.code`: LOINC **`108248-6`** „Household income".
- Antworten: 🔴 **Lokales VS** — CHF-Bänder (bis 3630 / 3630–6050 / ≥6050 / weiß nicht / keine Angabe). ⚠️ Quelle ist CH-spezifisch (CHF) → für DE auf EUR-Bänder anpassen.

**Q_MONMED — Finanzielle Belastung Arztrechnungen** 🔴
- LOINC „medical bills" → kein direkter Code (Treffer leer). SDOH-nah, aber kein passender Standard.
- `item.code`: lokaler Code o. SNOMED SDOH-Konzept. Antworten 🔴 lokales VS (Ja/Nein/Nicht zutreffend).

**MONMEAL / MONRENT / MONBILLS — finanzielle Sorgen (5-stufig)** 🟡 / 🔴
- **MONMEAL** (Geld für gesunde Mahlzeiten): LOINC **`88122-7`** „…worried whether our food would run out…" (Hunger Vital Sign) — 🟡 inhaltlich nah, aber Originalskala dort 3-stufig (Often/Sometimes/Never true), hier 5-stufig (Ständig…Nie). Wortlaut/Skala prüfen.
- **MONRENT** (Miete/Kredit), **MONBILLS** (monatl. Rechnungen): kein direkter LOINC-Frage-Code.
- Antworten aller drei: 🔴 **Lokales VS** „Häufigkeit 5-stufig" (Ständig/Meistens/Manchmal/Selten/Nie). Quelle: Commonwealth Fund 2017.

**MEDHIMS6 — In Deutschland geboren?** 🟢
- `item.code`: LOINC **`78746-5`** „Country of birth [Location]".
- Antworten: Ja/Nein; bei „Nein" Freitext Geburtsland → ISO 3166 (`urn:iso:std:iso:3166`) als coded fallback.

**MEDHIMS7 — Deutsche Staatsbürgerschaft?** 🟢
- `item.code`: LOINC **`66476-3`** „Country of citizenship".
- Antworten: Ja/Nein; bei „Nein" Staatsbürgerschaft → ISO 3166.

**Q_OECDLITii — Urbanizität** 🔴
- Kein LOINC-Code. `item.code`: lokal. Antworten 🔴 lokales VS (Stadt / Dorf-Vorort / Ländlich / weiß nicht).

**(Zipcode) — Postleitzahl** #️⃣
- Datenelement, kein Konzeptcode. Typ `string`, ggf. Validierungs-Pattern. (Im FHIR-Datenmodell eher `Address.postalCode` als Questionnaire-Item.)

**OECDLIT2a — Kinder <18 im Haushalt** #️⃣🟢
- `item.code`: LOINC **`104078-1`** „Number of underage persons in household". Typ `integer`.

**OECDLIT2b — Erwachsene ≥18 im Haushalt** #️⃣🔴
- LOINC hat **keinen** dedizierten Code für „Anzahl Erwachsene im Haushalt" (Suche „adults in household" → nur Rauschen). Optionen: lokalen Code definieren, oder generisch `104078-1` (underage) spiegeln. Typ `integer`.

**WHODIS1 / WHODIS2 — Soziale Unterstützung** 🔴
- WHODAS-naher Itemtext, aber kein passender LOINC-Frage-Code. `item.code`: lokal.
- Antworten: 🔴 **Lokales VS** (Sehr einfach / Einfach / Weder noch / Schwierig / Sehr schwierig / Nicht zutreffend).

### Medical History (GIPS)

**GIPS04 — Beziehungsstatus** 🟡
- `item.code`: LOINC **`45404-1`** „Marital status".
- Antworten (keine feste / feste Partnerschaft): HL7 `http://hl7.org/fhir/ValueSet/marital-status` ist umfangreicher (married/divorced/…). Die 2-Wert-Skala → **lokales VS** oder Reduktion auf `U`(unmarried)/`T`(domestic partner). 🟡 fachlich entscheiden.

**GIPS10 — Rentenstatus** 🔴
- LOINC nur `87510-4` „Date of retirement" / `LA34985-4` „Retirement pension" — kein Status-Frage-Code. `item.code`: lokal.
- Antworten: 🔴 **Lokales VS** (keine Rente / laufendes Verfahren / Rente auf Zeit / Rente auf Dauer).

**GIPS57a — Rauchen** 🟢
- `item.code`: LOINC **`72166-2`** „Tobacco smoking status" (de: „Raucherstatus", via Ontoserver bestätigt).
- Antworten: Ja/Nein → SNOMED `373066001`/`373067005`. Für die volle Raucher-Statuslogik LOINC Answer-List `LL2201-3` o. SNOMED `77176002`/`8517006`/`266919005`.

**GIPS57b — Zigaretten pro Tag** 🟢 / 🔴
- `item.code`: LOINC **`64218-1`** „How many cigarettes do you smoke per day now" [PhenX] ✅ — **passt** (Anzahl Zigaretten/Tag). Alternativ `8663-7` „Cigarettes smoked current (**pack** per day) - Reported" ✅ (aber Packung/Tag statt Stück).
- Antworten: 🔴 **Lokales VS** (Bänder 1-10 / 11-20 / 21-30 / >30) — da Bänder statt Zahl. Alternativ Item als `integer` führen.

**GIPS56a — Alkohol (ja/nein)** 🟡
- `item.code`: LOINC **`11331-6`** „History of Alcohol use" (🟡 „Trinken Sie Alkohol?" ist enger; alt. SNOMED `219006` „Current drinker of alcohol").
- Antworten: Ja/Nein → SNOMED `373066001`/`373067005`.

**GIPS56b1–b4 — CAGE-Fragebogen** 🔴
- ⚠️ Die vier Items sind der validierte **CAGE**-Alkohol-Screening-Fragebogen (Cut down / Annoyed / Guilty / Eye-opener).
- **Befund:** In LOINC 2.81 existiert **kein CAGE-Panel/-Item** (Suche „CAGE" → nur „CAGE Ab"-Antikörper & Veterinär-„cage"). Verwandte Einzelitems existieren in anderen Instrumenten: SSAGA-II `63616-7` „…tried to stop or cut down on drinking", PROMIS `76914-1` „I felt that I should cut down…", TWEAK-Panel `71937-7`. Keines ist CAGE-identisch.
- **Empfehlung:** CAGE-Items als **lokale Codes** (z. B. `urn:dem:cage:1..4`) führen; Antworten Ja/Nein via SNOMED `373066001`/`373067005`. Optional Mapping-Hinweis auf SSAGA/PROMIS-Pendants.

**GIPS58 — Substanzkonsum** 🟡
- `item.code`: LOINC **`96873-5`** „Illegal or recreational drug(s) used in past 3 months" (🟡 Zeitbezug „letzte 3 Monate" vs. „hin und wieder" — prüfen).
- Antworten: Ja/Nein → SNOMED `373066001`/`373067005`. Die konkreten Substanzen (Cannabis, Ecstasy, Kokain, Amphetamine, Anabolika, Crystal) bei Bedarf als Mehrfachauswahl mit SNOMED-Substanzcodes.

---

## Wiederverwendbare ValueSets (zur Definition im IG)

| VS (lokal) | Verwendet von | Werte |
|---|---|---|
| `dem-vs-ja-nein` | MEDHIMS6/7, GIPS57a/56a/56b1-4/58, Q_GENDERID | SNOMED `373066001` Yes ✅ / `373067005` No ✅ (gegen Ontoserver bestätigt; + ggf. „keine Angabe") |
| `dem-vs-haeufigkeit-5` | MONMEAL/MONRENT/MONBILLS | Ständig / Meistens / Manchmal / Selten / Nie |
| `dem-vs-leichtigkeit-6` | WHODIS1/WHODIS2 | Sehr einfach … Sehr schwierig + Nicht zutreffend |
| `dem-vs-isced-de` | Q_ISCED | 7 ISCED-2011/KMK-Stufen |
| `dem-vs-erwerbsstatus` | Q_OECDLIT5a | 11 OECD-Kategorien |
| `dem-vs-einkommen` | Q_OECDLIT7a | Einkommensbänder (⚠️ CHF→EUR anpassen) |
| `dem-vs-urbanizitaet` | Q_OECDLITii | Stadt / Dorf-Vorort / Ländlich / weiß nicht |
| `dem-vs-rentenstatus` | GIPS10 | keine / laufend / auf Zeit / auf Dauer |
| `dem-vs-zigaretten-band` | GIPS57b | 1-10 / 11-20 / 21-30 / >30 |

---

## Offene Punkte

### ✅ Verifiziert (2026-06-09, gegen MII-Ontoserver, LOINC 2.81 / SNOMED 2025-07-01)
1. **Q_ISCED** `82589-3` „Highest level of education" — **gültig**.
2. **GIPS57b** — `8663-7` (pack/day) gültig; besserer Code **`64218-1`** „cigarettes per day now" [PhenX] gefunden & übernommen.
3. **Ja/Nein** SNOMED `373066001` „Yes" / `373067005` „No" — **gültig**.
4. **OECDLIT2b** „Anzahl Erwachsene im Haushalt" — **kein** dedizierter LOINC-Code vorhanden → lokal/generisch.

### ⏳ Noch fachlich/organisatorisch zu klären (nicht per Tool lösbar)
5. **MONMEAL** `88122-7` — Skalen-Diskrepanz (Original 3-stufig vs. DEM 5-stufig) fachlich klären.
6. **MII-Person-VS** für Geschlecht (Q_SEX) — exakte Canonical-URL aus dem MII-Person-Modul-IG übernehmen (nicht über Terminology-Server recherchierbar).
7. **Ja/Nein-Konvention** — projektweit entscheiden: SNOMED (`373066001/373067005`) vs. HL7 v2 `0136` vs. LOINC `LL` — einmal festlegen, überall referenzieren.

> Hinweis: Antwort-Listen-Tools (`get_answer_list`, `lookup_loinc_answer_code`) sind in der aktuellen MCP-Konfiguration **nicht** verfügbar (kein `LOINC_DIR`). LOINC-Answer-Listen wurden stattdessen über `http://loinc.org/vs/LL…`-Expansion am Ontoserver bezogen (gefilterte Suche).
