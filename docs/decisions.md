# Architektur-Entscheidungen & offene Punkte

Kurzes Entscheidungslog für den PCOR-MII IG. Neueste Einträge oben.

---

## Offen — wartet auf Rückmeldung

### ❓ PHQ-SADS — unterschiedlicher Recall bei geteilten Items
**Status:** offen, **Roadmap 2027** (Stand 2026-09-02)

Der PHQ-SADS ist die gemeinsame Auswertung von PHQ-15, GAD-7 und PHQ-9. Im geteilten
PHQ-D-Namespace sind das 31 Items, aber nur **29 verschiedene `linkId`s**: `phq-phq2c`
(Schlafstörungen) und `phq-phq2d` (Müdigkeit) gehören zu PHQ-15 **und** PHQ-9.

**Problem:** PHQ-15 hat einen **4-Wochen-Recall**, PHQ-9 und GAD-7 einen **2-Wochen-Recall**.
Das geteilte Item wird einmal beantwortet, fließt aber in zwei Scores mit unterschiedlichem
Zeitbezug ein. Welchen Recall man dem Item auch gibt — eine der beiden Skalen erhält einen Wert
unter einem Zeitfenster, für das sie nicht validiert ist.

**Konsequenz:** Das ist auf Item-Ebene nicht lösbar; es muss sich in der **Score-Interpretation**
niederschlagen.

**Zuständigkeit: MII-PRO-Modul**, nicht PCOR-MII. Dort werden die PHQ-Questionnaires, der geteilte
`linkId`-Namespace und die Score-`ObservationDefinition`s gepflegt — dort gehört auch die Regel hin,
wie ein geteiltes Item unter zwei Recall-Zeiträumen zu werten ist. PCOR-MII dokumentiert den
Konflikt nur und übernimmt die Lösung, sobald sie upstream getroffen ist. Offen bleibt dort zudem,
ob PHQ-SADS und PHQ-4 als abgeleitete Subset-Questionnaires (`derivedFrom`) ausgeprägt werden oder
nur über `linkId`s ausgewertet.

Beschrieben im Abschnitt „PHQ-SADS" in `input/pagecontent/PHQ.md`.

### ❓ Welche Questionnaires werden übernommen?
**Status:** offen (Stand 2026-06-04) — *„welche genau, kommt noch"*

Es werden **nur wenige** Fragebögen aus dem MII-PRO-Modul benötigt. Sobald die Liste vorliegt,
ist je Fragebogen zu klären: **1:1 referenzieren** oder **mit Anpassung (`derivedFrom`)**.

Nächste Schritte, sobald die Auswahl da ist:
1. `de.medizininformatikinitiative.kerndatensatz.pros: 2026.3.0` als Dependency in `sushi-config.yaml` aktivieren.
2. Benötigte Questionnaires referenzieren bzw. ableiten (`input/fsh/Questionnaires/`).
3. Platzhalter `PcorExampleQuestionnaire` entfernen.
4. Seiten `Questionnaires.md` / `Implementation.md` (DE + EN) mit den realen Fragebögen füllen.
5. Menü/`pages` in `sushi-config.yaml` ggf. anpassen.

---

## Entschieden

### ✅ ADR-002 — Questionnaires vom MII-PRO-Modul erben statt selbst generieren
**Datum:** 2026-06-04

**Kontext:** Es existiert ein umfangreiches PRO-Daten-Dictionary (`MASTER_3EntitiesOverview.xlsx`,
454 Items / 100 Instrumente). Erwogen wurde, daraus FSH-Questionnaires automatisch zu generieren.

**Entscheidung:** Stattdessen **am [MII-PRO-Modul](https://www.medizininformatik-initiative.de/Kerndatensatz/KDS_PRO/)
erben** — Paket `de.medizininformatikinitiative.kerndatensatz.pros` (2026.3.0, FHIR R4). Die dort
**bereits spezifizierten** Questionnaires (inkl. LOINC-kodierter Answer-ValueSets, z. B. PHQ-9)
werden wiederverwendet. Das Excel bleibt **fachliche Auswahl-/Mapping-Referenz**, nicht technische Quelle.

**Begründung:** Interoperabilität & Konformität zur MII; keine Doppelpflege; weniger Fehlerquellen;
geringerer Aufwand als ein eigener Generator.

**Hinweis (FHIR):** `Questionnaire` ist eine Instanz-Ressource, kein StructureDefinition — es wird
nicht „profiliert". Wiederverwendung erfolgt über direkte Referenz der kanonischen URL oder über
`Questionnaire.derivedFrom`.

### ✅ ADR-001 — Repo-Setup analog T-CABS
**Datum:** 2026-06-04

**Entscheidung:** IG-Gerüst, BIH-Corporate-Design-Template, CI/CD-Pipeline und Mehrsprachigkeit
1:1 vom Schwester-Repo [`BIH-CEI/T-CABS`](https://bih-cei.github.io/T-CABS/) übernommen.

**Abweichungen von T-CABS:**
- **Standardsprache Deutsch** (T-CABS: Englisch) + Englisch als Übersetzung.
- **Branding nur BIH + Charité** (kein Projektlogo).
- Repo auf **public** gestellt, damit GitHub Pages auf dem Plan funktioniert.
