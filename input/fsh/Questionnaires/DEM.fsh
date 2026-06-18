// ─────────────────────────────────────────────────────────────────────────────
// DEM — Demographics + Medical History (Screening)
// Quelle: PCOR Item Level Dictionary (Kategorie DEM).
// Terminologie-Mapping: docs/DEM-Terminology-Mapping.md (Stand 2026-06-09).
//
// ANTWORT-MUSTER: item.answerValueSet -> lokale (Top-Level) ValueSets.
//   = das Muster des SDC-PHQ9-Beispiels. NUR so expandiert der IG-Publisher
//   die Antworten in der Formular-Vorschau zu echten Dropdowns; inline
//   answerOption rendert dort nur einen "??"-Platzhalter.
//   Jede choice-Frage bindet an genau ein VS (siehe VALUE SETS unten).
//
// Die lokalen CodeSystems/ValueSets bleiben als wiederverwendbare Artefakte.
//
// Ja/Nein: EIN gemeinsames CodeSystem DemAntwortCS (ja/nein/nicht-zutreffend/
//   keine-angabe). Frage-spezifische Subsets via DemJaNeinVS / DemJaNeinNzVS /
//   DemJaNeinKaVS. SNOMED-Mapping (373066001 Yes / 373067005 No) im VS.
//
// OFFENE PUNKTE (siehe Mapping-Doc):
//   - Q_SEX: Geschlecht-VS ggf. an MII-Person-Modul angleichen.
//   - CAGE (GIPS56b1-4): in LOINC nicht vorhanden -> lokale Codes.
//
// EINKOMMEN (Q_OECDLIT7a): EUR-Bänder nach IW Köln (Item Level Dictionary),
//   NICHT die CHF-Werte aus dem "Demo+MedHis"-Layoutblatt.
// ─────────────────────────────────────────────────────────────────────────────


// ═════════════════════════════════════════════════════════════════════════════
//  LOKALE CODE SYSTEMS
// ═════════════════════════════════════════════════════════════════════════════

CodeSystem: DemAntwortCS
Id: dem-antwort
Title: "DEM Antwortoptionen (Ja/Nein/Nicht zutreffend/Keine Angabe)"
Description: "Gemeinsames CodeSystem für die Ja/Nein-Items des DEM. Frage-spezifische Subsets über ValueSets (DemJaNeinVS / DemJaNeinNzVS / DemJaNeinKaVS). SNOMED-Mapping: ja=373066001 (Yes), nein=373067005 (No)."
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* #ja "Ja"
* #nein "Nein"
* #nicht-zutreffend "Nicht zutreffend"
* #keine-angabe "Möchte ich nicht sagen"

CodeSystem: DemHaeufigkeit5CS
Id: dem-haeufigkeit-5
Title: "DEM Häufigkeit (5-stufig) (Codes)"
Description: "5-stufige Häufigkeitsskala für finanzielle Sorgen (MONMEAL/MONRENT/MONBILLS). Quelle: Commonwealth Fund 2017."
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* #staendig "Ständig"
* #meistens "Meistens"
* #manchmal "Manchmal"
* #selten "Selten"
* #nie "Nie"

CodeSystem: DemLeichtigkeit6CS
Id: dem-leichtigkeit-6
Title: "DEM Leichtigkeit Unterstützung (6-stufig) (Codes)"
Description: "Skala zur erlebten Leichtigkeit, Unterstützung zu erhalten (WHODIS1/WHODIS2)."
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* #sehr-einfach "Sehr einfach"
* #einfach "Einfach"
* #weder-noch "Weder einfach noch schwierig"
* #schwierig "Schwierig"
* #sehr-schwierig "Sehr schwierig"
* #nicht-zutreffend "Nicht zutreffend"

CodeSystem: DemIscedCS
Id: dem-isced-de
Title: "DEM Bildungsabschluss (ISCED-2011/KMK)"
Description: "Höchster Bildungsabschluss nach ISCED-2011 / KMK-Systematik (Q_ISCED)."
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* #primar "Primarstufe (inkl. 4-6 Jahre Grund- o. Förderschule)"
* #sek1 "Sekundarstufe I (inkl. Hauptschule, Realschule, Gymnasium, Gesamtschule)"
* #sek2 "Sekundarstufe II (inkl. gymnasiale Oberstufe, (Berufliches) Gymnasium, Berufsschule und Betrieb, Berufsfachschule, Fachoberschule)"
* #post-sek "Post-sekundäre, nicht-tertiäre Ausbildungen (inkl. einjährige Fachoberschule, zweijährige Berufsoberschule/Technische Oberschule, Kolleg, Abendgymnasium)"
* #bachelor "Bachelor oder berufsqualifizierender Studienabschluss (inkl. Berufsakademie, Abschluss einer beruflichen Aufstiegsfortbildung, Geprüfte:r Berufsspezialist:in)"
* #master "Master oder äquivalent (inkl. Diplom, staatl./kirchl. Prüfung)"
* #promotion "Promotion oder äquivalent"

CodeSystem: DemErwerbsstatusCS
Id: dem-erwerbsstatus
Title: "DEM Erwerbsstatus (OECD)"
Description: "Aktuelle Arbeitssituation nach OECD Measuring Financial Literacy (Q_OECDLIT5a)."
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* #selbststaendig "Selbstständigerwerbend"
* #angestellt "Angestellt"
* #arbeitssuchend "Arbeitssuchend"
* #haushalt "Hausfrau/Hausmann"
* #arbeitsunfaehig "Krankheitsbedingte Arbeitsunfähigkeit"
* #pensioniert "Pensioniert"
* #student "Student/in"
* #nicht-arbeitend "Nicht arbeitend und nicht arbeitssuchend"
* #lernende "Lernende/r"
* #anderes "Anderes"
* #weiss-nicht "Ich weiss es nicht"

CodeSystem: DemEinkommenCS
Id: dem-einkommen
Title: "DEM Haushaltseinkommen (Bänder)"
Description: "Netto-Haushaltseinkommen in Kategorien (Q_OECDLIT7a). EUR-Bänder nach IW Köln (Institut der deutschen Wirtschaft, Niehues/Stockhausen)."
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* #band-niedrig "Bis zu 2.300 € pro Monat"
* #band-mittel "Zwischen 2.300 € und 5.200 € pro Monat"
* #band-hoch "5.200 € pro Monat oder mehr"
* #weiss-nicht "Ich weiss es nicht"
* #keine-angabe "Möchte ich nicht sagen"

CodeSystem: DemUrbanizitaetCS
Id: dem-urbanizitaet
Title: "DEM Urbanizität (Codes)"
Description: "Beschreibung des Wohnorts (Q_OECDLITii)."
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* #stadt "Stadt"
* #dorf-vorort "Dorf oder Vorort"
* #laendlich "Ländliche Region"
* #weiss-nicht "Ich weiss es nicht"

CodeSystem: DemRentenstatusCS
Id: dem-rentenstatus
Title: "DEM Rentenstatus (Codes)"
Description: "Rentenstatus (GIPS10)."
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* #keine "Keine Rente"
* #laufend "Laufendes Rentenverfahren"
* #auf-zeit "Rente auf Zeit"
* #auf-dauer "Rente auf Dauer"

CodeSystem: DemZigarettenBandCS
Id: dem-zigaretten-band
Title: "DEM Zigaretten pro Tag (Bänder)"
Description: "Anzahl Zigaretten pro Tag in Bändern (GIPS57b)."
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* #b1 "1-10"
* #b2 "11-20"
* #b3 "21-30"
* #b4 "> 30"

CodeSystem: DemBeziehungsstatusCS
Id: dem-beziehungsstatus
Title: "DEM Beziehungsstatus (Codes)"
Description: "Partnerschaftsstatus (GIPS04)."
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* #keine-feste "Keine feste Partnerschaft"
* #feste "Feste Partnerschaft"

CodeSystem: DemGeschlechtCS
Id: dem-geschlecht
Title: "DEM Geschlecht (Selbstbeschreibung)"
Description: "Selbstbeschriebenes Geschlecht (Q_SEX). HINWEIS: Im MII-Kontext bevorzugt an das MII-Person-Modul (Geschlecht / gender-amtlich-de) angleichen."
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* #weiblich "Weiblich"
* #maennlich "Männlich"
* #nicht-binaer "Nicht-binär"
* #andere "Andere"
* #keine-angabe "Möchte ich nicht sagen"


// ═════════════════════════════════════════════════════════════════════════════
//  VALUE SETS (wiederverwendbare Wertebereiche)
// ═════════════════════════════════════════════════════════════════════════════
// WICHTIG — gebackene ^expansion je VS:
//   Jede VS trägt eine manuell gepflegte expansion.contains (Code + Display) plus
//   used-codesystem-Parameter. NUR damit zeigt die IG-Publisher-Formularvorschau
//   echte Display-Texte im Dropdown (statt Code/"??"). Muster wie SDC-PHQ9.
//   => Bei Änderung eines CS-Codes/Displays die zugehörige expansion mitpflegen.
//   Verbleibende QA-Warning "expansion has no parameters" ist advisory/benigne.

ValueSet: DemJaNeinVS
Id: dem-ja-nein
Title: "DEM Ja/Nein"
Description: "Ja/Nein (Subset von DemAntwortCS). SNOMED-Mapping: ja=373066001 (Yes), nein=373067005 (No)."
* ^status = #draft
* ^experimental = true
* DemAntwortCS#ja "Ja"
* DemAntwortCS#nein "Nein"
* ^expansion.timestamp = "2026-06-10T00:00:00Z"
* ^expansion.parameter[0].name = "used-codesystem"
* ^expansion.parameter[0].valueUri = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-antwort|0.1.0"
* ^expansion.contains[0].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-antwort"
* ^expansion.contains[0].code = #ja
* ^expansion.contains[0].display = "Ja"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-antwort"
* ^expansion.contains[=].code = #nein
* ^expansion.contains[=].display = "Nein"

ValueSet: DemJaNeinNzVS
Id: dem-ja-nein-nz-vs
Title: "DEM Ja/Nein/Nicht zutreffend"
Description: "Ja/Nein/Nicht zutreffend (Q_MONMED) – Subset von DemAntwortCS."
* ^status = #draft
* ^experimental = true
* DemAntwortCS#ja "Ja"
* DemAntwortCS#nein "Nein"
* DemAntwortCS#nicht-zutreffend "Nicht zutreffend"
* ^expansion.timestamp = "2026-06-10T00:00:00Z"
* ^expansion.parameter[0].name = "used-codesystem"
* ^expansion.parameter[0].valueUri = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-antwort|0.1.0"
* ^expansion.contains[0].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-antwort"
* ^expansion.contains[0].code = #ja
* ^expansion.contains[0].display = "Ja"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-antwort"
* ^expansion.contains[=].code = #nein
* ^expansion.contains[=].display = "Nein"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-antwort"
* ^expansion.contains[=].code = #nicht-zutreffend
* ^expansion.contains[=].display = "Nicht zutreffend"

ValueSet: DemJaNeinKaVS
Id: dem-ja-nein-ka-vs
Title: "DEM Ja/Nein/Keine Angabe"
Description: "Ja/Nein/Möchte ich nicht sagen (Q_GENDERID) – Subset von DemAntwortCS."
* ^status = #draft
* ^experimental = true
* DemAntwortCS#ja "Ja"
* DemAntwortCS#nein "Nein"
* DemAntwortCS#keine-angabe "Möchte ich nicht sagen"
* ^expansion.timestamp = "2026-06-10T00:00:00Z"
* ^expansion.parameter[0].name = "used-codesystem"
* ^expansion.parameter[0].valueUri = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-antwort|0.1.0"
* ^expansion.contains[0].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-antwort"
* ^expansion.contains[0].code = #ja
* ^expansion.contains[0].display = "Ja"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-antwort"
* ^expansion.contains[=].code = #nein
* ^expansion.contains[=].display = "Nein"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-antwort"
* ^expansion.contains[=].code = #keine-angabe
* ^expansion.contains[=].display = "Möchte ich nicht sagen"

ValueSet: DemHaeufigkeit5VS
Id: dem-haeufigkeit-5-vs
Title: "DEM Häufigkeit (5-stufig)"
Description: "5-stufige Häufigkeitsskala (MONMEAL/MONRENT/MONBILLS)."
* ^status = #draft
* ^experimental = true
* include codes from system DemHaeufigkeit5CS
* ^expansion.timestamp = "2026-06-10T00:00:00Z"
* ^expansion.parameter[0].name = "used-codesystem"
* ^expansion.parameter[0].valueUri = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-haeufigkeit-5|0.1.0"
* ^expansion.contains[0].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-haeufigkeit-5"
* ^expansion.contains[0].code = #staendig
* ^expansion.contains[0].display = "Ständig"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-haeufigkeit-5"
* ^expansion.contains[=].code = #meistens
* ^expansion.contains[=].display = "Meistens"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-haeufigkeit-5"
* ^expansion.contains[=].code = #manchmal
* ^expansion.contains[=].display = "Manchmal"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-haeufigkeit-5"
* ^expansion.contains[=].code = #selten
* ^expansion.contains[=].display = "Selten"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-haeufigkeit-5"
* ^expansion.contains[=].code = #nie
* ^expansion.contains[=].display = "Nie"

ValueSet: DemLeichtigkeit6VS
Id: dem-leichtigkeit-6-vs
Title: "DEM Leichtigkeit Unterstützung (6-stufig)"
Description: "Leichtigkeit, Unterstützung zu erhalten (WHODIS1/2)."
* ^status = #draft
* ^experimental = true
* include codes from system DemLeichtigkeit6CS
* ^expansion.timestamp = "2026-06-10T00:00:00Z"
* ^expansion.parameter[0].name = "used-codesystem"
* ^expansion.parameter[0].valueUri = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-leichtigkeit-6|0.1.0"
* ^expansion.contains[0].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-leichtigkeit-6"
* ^expansion.contains[0].code = #sehr-einfach
* ^expansion.contains[0].display = "Sehr einfach"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-leichtigkeit-6"
* ^expansion.contains[=].code = #einfach
* ^expansion.contains[=].display = "Einfach"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-leichtigkeit-6"
* ^expansion.contains[=].code = #weder-noch
* ^expansion.contains[=].display = "Weder einfach noch schwierig"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-leichtigkeit-6"
* ^expansion.contains[=].code = #schwierig
* ^expansion.contains[=].display = "Schwierig"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-leichtigkeit-6"
* ^expansion.contains[=].code = #sehr-schwierig
* ^expansion.contains[=].display = "Sehr schwierig"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-leichtigkeit-6"
* ^expansion.contains[=].code = #nicht-zutreffend
* ^expansion.contains[=].display = "Nicht zutreffend"

ValueSet: DemIscedVS
Id: dem-isced-vs
Title: "DEM Bildungsabschluss (ISCED)"
Description: "Höchster Bildungsabschluss (Q_ISCED)."
* ^status = #draft
* ^experimental = true
* include codes from system DemIscedCS
* ^expansion.timestamp = "2026-06-10T00:00:00Z"
* ^expansion.parameter[0].name = "used-codesystem"
* ^expansion.parameter[0].valueUri = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-isced-de|0.1.0"
* ^expansion.contains[0].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-isced-de"
* ^expansion.contains[0].code = #primar
* ^expansion.contains[0].display = "Primarstufe (inkl. 4-6 Jahre Grund- o. Förderschule)"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-isced-de"
* ^expansion.contains[=].code = #sek1
* ^expansion.contains[=].display = "Sekundarstufe I (inkl. Hauptschule, Realschule, Gymnasium, Gesamtschule)"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-isced-de"
* ^expansion.contains[=].code = #sek2
* ^expansion.contains[=].display = "Sekundarstufe II (inkl. gymnasiale Oberstufe, (Berufliches) Gymnasium, Berufsschule und Betrieb, Berufsfachschule, Fachoberschule)"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-isced-de"
* ^expansion.contains[=].code = #post-sek
* ^expansion.contains[=].display = "Post-sekundäre, nicht-tertiäre Ausbildungen (inkl. einjährige Fachoberschule, zweijährige Berufsoberschule/Technische Oberschule, Kolleg, Abendgymnasium)"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-isced-de"
* ^expansion.contains[=].code = #bachelor
* ^expansion.contains[=].display = "Bachelor oder berufsqualifizierender Studienabschluss (inkl. Berufsakademie, Abschluss einer beruflichen Aufstiegsfortbildung, Geprüfte:r Berufsspezialist:in)"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-isced-de"
* ^expansion.contains[=].code = #master
* ^expansion.contains[=].display = "Master oder äquivalent (inkl. Diplom, staatl./kirchl. Prüfung)"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-isced-de"
* ^expansion.contains[=].code = #promotion
* ^expansion.contains[=].display = "Promotion oder äquivalent"

ValueSet: DemErwerbsstatusVS
Id: dem-erwerbsstatus-vs
Title: "DEM Erwerbsstatus"
Description: "Aktuelle Arbeitssituation (Q_OECDLIT5a)."
* ^status = #draft
* ^experimental = true
* include codes from system DemErwerbsstatusCS
* ^expansion.timestamp = "2026-06-10T00:00:00Z"
* ^expansion.parameter[0].name = "used-codesystem"
* ^expansion.parameter[0].valueUri = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-erwerbsstatus|0.1.0"
* ^expansion.contains[0].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-erwerbsstatus"
* ^expansion.contains[0].code = #selbststaendig
* ^expansion.contains[0].display = "Selbstständigerwerbend"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-erwerbsstatus"
* ^expansion.contains[=].code = #angestellt
* ^expansion.contains[=].display = "Angestellt"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-erwerbsstatus"
* ^expansion.contains[=].code = #arbeitssuchend
* ^expansion.contains[=].display = "Arbeitssuchend"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-erwerbsstatus"
* ^expansion.contains[=].code = #haushalt
* ^expansion.contains[=].display = "Hausfrau/Hausmann"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-erwerbsstatus"
* ^expansion.contains[=].code = #arbeitsunfaehig
* ^expansion.contains[=].display = "Krankheitsbedingte Arbeitsunfähigkeit"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-erwerbsstatus"
* ^expansion.contains[=].code = #pensioniert
* ^expansion.contains[=].display = "Pensioniert"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-erwerbsstatus"
* ^expansion.contains[=].code = #student
* ^expansion.contains[=].display = "Student/in"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-erwerbsstatus"
* ^expansion.contains[=].code = #nicht-arbeitend
* ^expansion.contains[=].display = "Nicht arbeitend und nicht arbeitssuchend"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-erwerbsstatus"
* ^expansion.contains[=].code = #lernende
* ^expansion.contains[=].display = "Lernende/r"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-erwerbsstatus"
* ^expansion.contains[=].code = #anderes
* ^expansion.contains[=].display = "Anderes"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-erwerbsstatus"
* ^expansion.contains[=].code = #weiss-nicht
* ^expansion.contains[=].display = "Ich weiss es nicht"

ValueSet: DemEinkommenVS
Id: dem-einkommen-vs
Title: "DEM Haushaltseinkommen"
Description: "Einkommensbänder (Q_OECDLIT7a)."
* ^status = #draft
* ^experimental = true
* include codes from system DemEinkommenCS
* ^expansion.timestamp = "2026-06-10T00:00:00Z"
* ^expansion.parameter[0].name = "used-codesystem"
* ^expansion.parameter[0].valueUri = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-einkommen|0.1.0"
* ^expansion.contains[0].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-einkommen"
* ^expansion.contains[0].code = #band-niedrig
* ^expansion.contains[0].display = "Bis zu 2.300 € pro Monat"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-einkommen"
* ^expansion.contains[=].code = #band-mittel
* ^expansion.contains[=].display = "Zwischen 2.300 € und 5.200 € pro Monat"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-einkommen"
* ^expansion.contains[=].code = #band-hoch
* ^expansion.contains[=].display = "5.200 € pro Monat oder mehr"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-einkommen"
* ^expansion.contains[=].code = #weiss-nicht
* ^expansion.contains[=].display = "Ich weiss es nicht"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-einkommen"
* ^expansion.contains[=].code = #keine-angabe
* ^expansion.contains[=].display = "Möchte ich nicht sagen"

ValueSet: DemUrbanizitaetVS
Id: dem-urbanizitaet-vs
Title: "DEM Urbanizität"
Description: "Wohnort-Typ (Q_OECDLITii)."
* ^status = #draft
* ^experimental = true
* include codes from system DemUrbanizitaetCS
* ^expansion.timestamp = "2026-06-10T00:00:00Z"
* ^expansion.parameter[0].name = "used-codesystem"
* ^expansion.parameter[0].valueUri = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-urbanizitaet|0.1.0"
* ^expansion.contains[0].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-urbanizitaet"
* ^expansion.contains[0].code = #stadt
* ^expansion.contains[0].display = "Stadt"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-urbanizitaet"
* ^expansion.contains[=].code = #dorf-vorort
* ^expansion.contains[=].display = "Dorf oder Vorort"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-urbanizitaet"
* ^expansion.contains[=].code = #laendlich
* ^expansion.contains[=].display = "Ländliche Region"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-urbanizitaet"
* ^expansion.contains[=].code = #weiss-nicht
* ^expansion.contains[=].display = "Ich weiss es nicht"

ValueSet: DemRentenstatusVS
Id: dem-rentenstatus-vs
Title: "DEM Rentenstatus"
Description: "Rentenstatus (GIPS10)."
* ^status = #draft
* ^experimental = true
* include codes from system DemRentenstatusCS
* ^expansion.timestamp = "2026-06-10T00:00:00Z"
* ^expansion.parameter[0].name = "used-codesystem"
* ^expansion.parameter[0].valueUri = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-rentenstatus|0.1.0"
* ^expansion.contains[0].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-rentenstatus"
* ^expansion.contains[0].code = #keine
* ^expansion.contains[0].display = "Keine Rente"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-rentenstatus"
* ^expansion.contains[=].code = #laufend
* ^expansion.contains[=].display = "Laufendes Rentenverfahren"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-rentenstatus"
* ^expansion.contains[=].code = #auf-zeit
* ^expansion.contains[=].display = "Rente auf Zeit"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-rentenstatus"
* ^expansion.contains[=].code = #auf-dauer
* ^expansion.contains[=].display = "Rente auf Dauer"

ValueSet: DemZigarettenBandVS
Id: dem-zigaretten-band-vs
Title: "DEM Zigaretten pro Tag"
Description: "Zigaretten/Tag in Bändern (GIPS57b)."
* ^status = #draft
* ^experimental = true
* include codes from system DemZigarettenBandCS
* ^expansion.timestamp = "2026-06-10T00:00:00Z"
* ^expansion.parameter[0].name = "used-codesystem"
* ^expansion.parameter[0].valueUri = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-zigaretten-band|0.1.0"
* ^expansion.contains[0].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-zigaretten-band"
* ^expansion.contains[0].code = #b1
* ^expansion.contains[0].display = "1-10"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-zigaretten-band"
* ^expansion.contains[=].code = #b2
* ^expansion.contains[=].display = "11-20"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-zigaretten-band"
* ^expansion.contains[=].code = #b3
* ^expansion.contains[=].display = "21-30"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-zigaretten-band"
* ^expansion.contains[=].code = #b4
* ^expansion.contains[=].display = "> 30"

ValueSet: DemBeziehungsstatusVS
Id: dem-beziehungsstatus-vs
Title: "DEM Beziehungsstatus"
Description: "Partnerschaftsstatus (GIPS04)."
* ^status = #draft
* ^experimental = true
* include codes from system DemBeziehungsstatusCS
* ^expansion.timestamp = "2026-06-10T00:00:00Z"
* ^expansion.parameter[0].name = "used-codesystem"
* ^expansion.parameter[0].valueUri = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-beziehungsstatus|0.1.0"
* ^expansion.contains[0].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-beziehungsstatus"
* ^expansion.contains[0].code = #keine-feste
* ^expansion.contains[0].display = "Keine feste Partnerschaft"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-beziehungsstatus"
* ^expansion.contains[=].code = #feste
* ^expansion.contains[=].display = "Feste Partnerschaft"

ValueSet: DemGeschlechtVS
Id: dem-geschlecht-vs
Title: "DEM Geschlecht"
Description: "Selbstbeschriebenes Geschlecht (Q_SEX)."
* ^status = #draft
* ^experimental = true
* include codes from system DemGeschlechtCS
* ^expansion.timestamp = "2026-06-10T00:00:00Z"
* ^expansion.parameter[0].name = "used-codesystem"
* ^expansion.parameter[0].valueUri = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-geschlecht|0.1.0"
* ^expansion.contains[0].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-geschlecht"
* ^expansion.contains[0].code = #weiblich
* ^expansion.contains[0].display = "Weiblich"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-geschlecht"
* ^expansion.contains[=].code = #maennlich
* ^expansion.contains[=].display = "Männlich"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-geschlecht"
* ^expansion.contains[=].code = #nicht-binaer
* ^expansion.contains[=].display = "Nicht-binär"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-geschlecht"
* ^expansion.contains[=].code = #andere
* ^expansion.contains[=].display = "Andere"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-geschlecht"
* ^expansion.contains[=].code = #keine-angabe
* ^expansion.contains[=].display = "Möchte ich nicht sagen"

// ═════════════════════════════════════════════════════════════════════════════
//  QUESTIONNAIRE
// ═════════════════════════════════════════════════════════════════════════════

Instance: DEM
InstanceOf: Questionnaire
Usage: #definition
Title: "DEM — Demographics & Medical History"
Description: "Screening-Fragebogen zur Soziodemographie (Kategorie DEM). Folgt den Konventionen des MII-PRO-Moduls (SDC-Basis); ist selbst kein PRO-Instrument."
// SDC-Base-Profil (wie die MII-PRO-Questionnaires, die auf SDC aufsetzen).
// NICHT mii-pr-pro-questionnaire: DEM ist Demographie/Anamnese, kein PRO.
* meta.profile = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire" //Isik!!!
* url = "https://bih-cei.github.io/PCOR-MII/Questionnaire/DEM"
* name = "DEM"
* version = "0.1.0"
* status = #draft
* experimental = true
* subjectType = #Patient
* date = "2026-06-09"
* publisher = "BIH-CEI"

// ── Gruppe: Medizinische Vorgeschichte (Anthropometrie) ───────────────────────
// Anthropometrie (Q_WB151/152) ist laut Item Level Dictionary Kategorie MHI
// und liegt nun im Questionnaire MHI (siehe MHI.fsh).

// ── Gruppe: Soziodemographie ──────────────────────────────────────────────────
* item[+]
  * linkId = "soziodemographie"
  * text = "Soziodemographische Angaben"
  * type = #group
  * item[+]
    * linkId = "AGE"
    * text = "Bitte geben Sie Ihr Geburtsdatum an"
    * type = #date
    * code = $LOINC#21112-8 "Geburtsdatum"
  * item[+]
    * linkId = "Q_ISCED"
    * text = "Was ist der höchste Bildungsabschluss, den Sie erreicht haben?"
    * type = #choice
    * code = $LOINC#82589-3 "Highest level of education"
    * answerValueSet = Canonical(DemIscedVS)
  * item[+]
    * linkId = "Q_SEX"
    * text = "Welcher der folgenden Begriffe trifft am besten auf Sie zu?"
    * type = #choice
    * code = $LOINC#76691-5 "Gender identity"
    * answerValueSet = Canonical(DemGeschlechtVS)
  * item[+]
    * linkId = "Q_GENDERID"
    * text = "Entspricht Ihre Geschlechtsidentität dem Geschlecht, das Ihnen bei Geburt zugewiesen wurde?"
    * type = #choice
    * answerValueSet = Canonical(DemJaNeinKaVS)
  * item[+]
    * linkId = "Q_OECDLIT5a"
    * text = "Welcher der folgenden Begriffe beschreibt am besten Ihre derzeitige Arbeitssituation?"
    * type = #choice
    * code = $LOINC#67875-5 "Employment status - current"
    * answerValueSet = Canonical(DemErwerbsstatusVS)
  * item[+]
    * linkId = "Q_OECDLIT7a"
    * text = "In welche dieser Kategorien fällt Ihr Netto-Haushaltseinkommen normalerweise?"
    * type = #choice
    * code = $LOINC#108248-6 "Household income"
    * answerValueSet = Canonical(DemEinkommenVS)
  * item[+]
    * linkId = "Q_MONMED"
    * text = "Hatten Sie in den vergangenen 12 Monaten Schwierigkeiten, Rechnungen für medizinische Leistungen zu bezahlen bzw. konnten diese nicht bezahlen?"
    * type = #choice
    * answerValueSet = Canonical(DemJaNeinNzVS)

  // ── Untergruppe: Finanzielle Sorgen (Q_MON) ─────────────────────────────────
  * item[+]
    * linkId = "Q_MON"
    * text = "Wie oft haben Sie sich in den letzten 12 Monaten über folgende Dinge Sorgen gemacht oder waren deswegen gestresst?"
    * type = #group
    * item[+]
      * linkId = "MONMEAL"
      * text = "Genug Geld zu haben, um gesunde Mahlzeiten bezahlen zu können"
      * type = #choice
      * code = $LOINC#88122-7 "Within the past 12 months we worried whether our food would run out before we got money to buy more"
      * answerValueSet = Canonical(DemHaeufigkeit5VS)
    * item[+]
      * linkId = "MONRENT"
      * text = "Genug Geld zu haben, um die Miete oder einen Kredit bezahlen zu können"
      * type = #choice
      * answerValueSet = Canonical(DemHaeufigkeit5VS)
    * item[+]
      * linkId = "MONBILLS"
      * text = "Genug Geld zu haben, um monatliche Rechnungen bezahlen zu können, z. B. für Strom, Heizung und Telefon"
      * type = #choice
      * answerValueSet = Canonical(DemHaeufigkeit5VS)

  * item[+]
    * linkId = "MEDHIMS6"
    * text = "Sind Sie in Deutschland geboren?"
    * type = #choice
    * code = $LOINC#78746-5 "Country of birth [Location]"
    * answerValueSet = Canonical(DemJaNeinVS)
  * item[+]
    * linkId = "MEDHIMS6_country"
    * text = "Bitte geben Sie an, in welchem Land Sie geboren sind"
    * type = #string
    * enableWhen[+].question = "MEDHIMS6"
    * enableWhen[=].operator = #=
    * enableWhen[=].answerCoding = DemAntwortCS#nein "Nein"
  * item[+]
    * linkId = "MEDHIMS7"
    * text = "Sind Sie Deutsche/r Staatsbürger/in?"
    * type = #choice
    * code = $LOINC#66476-3 "Country of citizenship"
    * answerValueSet = Canonical(DemJaNeinVS)
  * item[+]
    * linkId = "MEDHIMS7_nationality"
    * text = "Bitte geben Sie an, welche Staatsbürgerschaft Sie besitzen"
    * type = #string
    * enableWhen[+].question = "MEDHIMS7"
    * enableWhen[=].operator = #=
    * enableWhen[=].answerCoding = DemAntwortCS#nein "Nein"
  * item[+]
    * linkId = "Q_OECDLITii"
    * text = "Welche Bezeichnung beschreibt den Ort, an dem Sie leben, am besten?"
    * type = #choice
    * answerValueSet = Canonical(DemUrbanizitaetVS)
  * item[+]
    * linkId = "Zipcode"
    * text = "Postleitzahl"
    * type = #string
  * item[+]
    * linkId = "OECDLIT2a"
    * text = "Wie viele Kinder unter 18 Jahren leben mit Ihnen in Ihrem Haushalt?"
    * type = #integer
    * code = $LOINC#104078-1 "Number of underage persons in household"
  * item[+]
    * linkId = "OECDLIT2b"
    * text = "Wie viele Personen im Alter von 18 Jahren oder älter leben mit Ihnen in Ihrem Haushalt? (ohne Sie selbst)"
    * type = #integer

  // ── Untergruppe: Soziale Unterstützung (WHODIS) ─────────────────────────────
  * item[+]
    * linkId = "WHODIS"
    * text = "Wenn Sie Hilfe benötigen, wie einfach ist es für Sie, Hilfe von den folgenden Personen zu erhalten?"
    * type = #group
    * item[+]
      * linkId = "WHODIS1"
      * text = "Ein enges Familienmitglied (einschliesslich Ihrer Partnerin/Ihres Partners)"
      * type = #choice
      * answerValueSet = Canonical(DemLeichtigkeit6VS)
    * item[+]
      * linkId = "WHODIS2"
      * text = "Freundinnen/Freunde, Nachbarinnen/Nachbarn und Arbeitskolleginnen/Arbeitskollegen?"
      * type = #choice
      * answerValueSet = Canonical(DemLeichtigkeit6VS)

// Rauchen/Alkohol/CAGE/Substanzen (GIPS57/56/58) sind laut Item Level Dictionary
// Kategorie MHI und liegen nun im Questionnaire MHI (siehe MHI.fsh).

// ── Gruppe: Weitere Angaben ───────────────────────────────────────────────────
* item[+]
  * linkId = "weitere"
  * text = "Weitere Angaben"
  * type = #group
  * item[+]
    * linkId = "GIPS04"
    * text = "Partnerschaft"
    * type = #choice
    * code = $LOINC#45404-1 "Marital status"
    * answerValueSet = Canonical(DemBeziehungsstatusVS)
  * item[+]
    * linkId = "GIPS10"
    * text = "Rente"
    * type = #choice
    * answerValueSet = Canonical(DemRentenstatusVS)
  * item[+]
    * linkId = "CPCOR_REQ"
    * text = "Möchten Sie kontaktiert werden, um den aktuellen Gesundheitsstatus zu besprechen?"
    * type = #choice
    * answerValueSet = Canonical(DemJaNeinVS)
