# PROMIS Cognitive Function SF 4a - PCOR-MII Implementation Guide v0.1.0

## PROMIS Cognitive Function SF 4a

PROMIS® Cognitive Function Short Form 4a misst die subjektive kognitive Funktion (Konzentration, Erinnerung, klares Denken) mit 4 Items. Die Kurzform eignet sich für Studien, in denen kognitive Selbstauskunft als ein Domain unter mehreren erhoben werden soll, ohne den Fragebogen-Aufwand einer Long-Form.

### Verwendung in PCOR-MII

PCOR-MII referenziert den im MII PRO-Modul gepflegten Questionnaire — kein eigener Nachbau. Die deutsche Übersetzung folgt der validierten PCOR-MII-Kuration (CPCOR Charité, Leitung Felix Fischer) und wurde gegen das PHO-Wording verifiziert (MATCH=4, DIFF=0).

### Canonical

`https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-cognitive-function-sf4a`

### Quellen

* Definition im MII PRO-Modul: [PROMIS-Bibliothek (Simplifier)](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/dev/promis.html)
* Lizenz & Copyright (4-Schichten-Modell PHO / CPCOR / LOINC / MII): [PROMIS-Lizenzierung](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/dev/promis.html)

### Eigenschaften

* **Items**: 4 (5-Punkt-Likert, "In den letzten 7 Tagen")
* **Primärsprache**: Englisch mit deutscher `translation`-Extension
* **Scoring**: Raw Score + T-Score (FHIR Variables Pattern)
* **Capabilities**: displayable, collectable, calculatable, extractable, domain-aligned

### Hinweise

* Items überlappen mit den Cognitive-Function-Items aus PROMIS-16 — Score-Vergleich erfordert Aufmerksamkeit auf die jeweilige Itemzusammensetzung und Skalierung.
* Für umfassende Kognitions-Erfassung steht zusätzlich die Long-Form (PROMIS Cognitive Function) zur Verfügung, die jedoch derzeit nicht im MII PRO-Modul implementiert ist.

### Beispiel-QuestionnaireResponse

[**`pcor-mii-exa-promis-cognitive-function-response`**](QuestionnaireResponse-pcor-mii-exa-promis-cognitive-function-response.md) — vollständige Antwort eines hypothetischen Patienten über alle 4 Items, konform zum [`MII PR PRO QuestionnaireResponse`-Profil](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/dev/) (`meta.profile`: `mii-pr-pro-questionnaire-response|2026.4.1`).

Im **50-First-Patients Pilot-Datenaustausch** ist dieses Instrument zusammen mit PROMIS-29 Teil der PROMIS-33-Abdeckung — siehe [PROMIS-33](PROMIS-33.md).

### Item-Tabelle

**Auto-generiert aus `mii-qst-pro-promis-cognitive-function-sf4a` v2026.4.1 (de.medizininformatikinitiative.kerndatensatz.pros).**

Wo Translation-Extensions auf den `text`-Feldern fehlen, wird die Sprache der Quelle über eine Heuristik bestimmt — leere EN-Spalten weisen auf upstream noch ausstehende EN/DE-Architektur-Migration hin.

### PROMIS Kognitive Funktion SF 4a

**Sektion `PROMIS-CognitiveFunction-SF4a`**

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| `promis-cognition-pc2r` | 81461-6 | My thinking has been slow | Ich war langsam beim Denken | **5** · Nie / Not at all (`LA6568-5`)**4** · Selten (einmal) / Rarely (`LA10066-1`)**3** · Manchmal (zwei- oder dreimal) / Sometimes (`LA10082-8`)**2** · Oft (ungefähr einmal täglich) / Often (`LA10044-8`)**1** · Sehr oft (mehrmals täglich) / Always (`LA9933-8`) |
| `promis-cognition-pc35r` | 81478-0 | It has seemed like my brain was not working as well as usual | Es kam mir so vor, als ob mein Gehirn nicht so gut wie sonst funktionierte | **5** · Nie / Not at all (`LA6568-5`)**4** · Selten (einmal) / Rarely (`LA10066-1`)**3** · Manchmal (zwei- oder dreimal) / Sometimes (`LA10082-8`)**2** · Oft (ungefähr einmal täglich) / Often (`LA10044-8`)**1** · Sehr oft (mehrmals täglich) / Always (`LA9933-8`) |
| `promis-cognition-pc36r` | 81479-8 | I have had to work harder than usual to keep track of what I was doing | Ich musste mir größere Mühe geben als sonst, um den Überblick über das zu bewahren, womit ich gerade beschäftigt war | **5** · Nie / Not at all (`LA6568-5`)**4** · Selten (einmal) / Rarely (`LA10066-1`)**3** · Manchmal (zwei- oder dreimal) / Sometimes (`LA10082-8`)**2** · Oft (ungefähr einmal täglich) / Often (`LA10044-8`)**1** · Sehr oft (mehrmals täglich) / Always (`LA9933-8`) |
| `promis-cognition-pc42r` | 81485-5 | I have had trouble shifting back and forth between different activities that require thinking | Ich hatte Schwierigkeiten, zwischen verschiedenen Aktivitäten, die ein gewisses Nachdenken erfordern, hin und her zu wechseln | **5** · Nie / Not at all (`LA6568-5`)**4** · Selten (einmal) / Rarely (`LA10066-1`)**3** · Manchmal (zwei- oder dreimal) / Sometimes (`LA10082-8`)**2** · Oft (ungefähr einmal täglich) / Often (`LA10044-8`)**1** · Sehr oft (mehrmals täglich) / Always (`LA9933-8`) |

