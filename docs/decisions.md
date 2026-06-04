# Architektur-Entscheidungen & offene Punkte

Kurzes Entscheidungslog für den PCOR-MII IG. Neueste Einträge oben.

---

## Offen — wartet auf Rückmeldung

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
