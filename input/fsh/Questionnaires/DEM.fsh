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
* insert PR_CS_VS_Version
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* #ja "Ja"
  * ^designation[+].language = #en
  * ^designation[=].value = "Yes"
* #nein "Nein"
  * ^designation[+].language = #en
  * ^designation[=].value = "No"
* #nicht-zutreffend "Nicht zutreffend"
  * ^designation[+].language = #en
  * ^designation[=].value = "Not applicable"
* #keine-angabe "Möchte ich nicht sagen"
  * ^designation[+].language = #en
  * ^designation[=].value = "Prefer not to say"

CodeSystem: DemHaeufigkeit5CS
Id: dem-haeufigkeit-5
Title: "DEM Häufigkeit (5-stufig) (Codes)"
Description: "5-stufige Häufigkeitsskala für finanzielle Sorgen (MONMEAL/MONRENT/MONBILLS). Quelle: Commonwealth Fund 2017."
* insert PR_CS_VS_Version
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* #staendig "Always"
  * ^designation[+].language = #de-DE
  * ^designation[=].value = "Ständig"
* #meistens "Often"
  * ^designation[+].language = #de-DE
  * ^designation[=].value = "Meistens"
* #manchmal "Sometimes"
  * ^designation[+].language = #de-DE
  * ^designation[=].value = "Manchmal"
* #selten "Rarely"
  * ^designation[+].language = #de-DE
  * ^designation[=].value = "Selten"
* #nie "Never"
  * ^designation[+].language = #de-DE
  * ^designation[=].value = "Nie"

CodeSystem: DemLeichtigkeit6CS
Id: dem-leichtigkeit-6
Title: "DEM Leichtigkeit Unterstützung (6-stufig) (Codes)"
Description: "Skala zur erlebten Leichtigkeit, Unterstützung zu erhalten (WHODIS1/WHODIS2)."
* insert PR_CS_VS_Version
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* #sehr-einfach "Very easy"
  * ^designation[+].language = #de-DE
  * ^designation[=].value = "Sehr einfach"
* #einfach "Easy"
  * ^designation[+].language = #de-DE
  * ^designation[=].value = "Einfach"
* #weder-noch "Neither easy nor difficult"
  * ^designation[+].language = #de-DE
  * ^designation[=].value = "Weder einfach noch schwierig"
* #schwierig "Difficult"
  * ^designation[+].language = #de-DE
  * ^designation[=].value = "Schwierig"
* #sehr-schwierig "Very difficult"
  * ^designation[+].language = #de-DE
  * ^designation[=].value = "Sehr schwierig"
* #nicht-zutreffend "Not applicable"
  * ^designation[+].language = #de-DE
  * ^designation[=].value = "Nicht zutreffend"

CodeSystem: DemIscedCS
Id: dem-isced-de
Title: "DEM Bildungsabschluss (ISCED-2011/KMK)"
Description: "Höchster Bildungsabschluss nach ISCED-2011 / KMK-Systematik (Q_ISCED)."
* insert PR_CS_VS_Version
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
* insert PR_CS_VS_Version
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* #selbststaendig "Self-employed [work for yourself]"
  * ^designation[+].language = #de
  * ^designation[=].value = "Selbstständigerwerbend"
* #angestellt "In paid employment [work for someone else]"
  * ^designation[+].language = #de
  * ^designation[=].value = "Angestellt"
* #arbeitssuchend "Looking for work"
  * ^designation[+].language = #de
  * ^designation[=].value = "Arbeitssuchend"
* #haushalt "Looking after the home"
  * ^designation[+].language = #de
  * ^designation[=].value = "Hausfrau/Hausmann"
* #arbeitsunfaehig "Unable to work due to sickness or ill-health"
  * ^designation[+].language = #de
  * ^designation[=].value = "Krankheitsbedingte Arbeitsunfähigkeit"
* #pensioniert "Retired"
  * ^designation[+].language = #de
  * ^designation[=].value = "Pensioniert"
* #student "Student"
  * ^designation[+].language = #de
  * ^designation[=].value = "Student/in"
* #nicht-arbeitend "Not working and not looking for work"
  * ^designation[+].language = #de
  * ^designation[=].value = "Nicht arbeitend und nicht arbeitssuchend"
* #lernende "Apprentice"
  * ^designation[+].language = #de
  * ^designation[=].value = "Lernende/r"
* #anderes "Other"
  * ^designation[+].language = #de
  * ^designation[=].value = "Anderes"
* #weiss-nicht "Don't know"
  * ^designation[+].language = #de
  * ^designation[=].value = "Ich weiss es nicht"

CodeSystem: DemEinkommenCS
Id: dem-einkommen
Title: "DEM Haushaltseinkommen (Bänder)"
Description: "Netto-Haushaltseinkommen in Kategorien (Q_OECDLIT7a). Die ursprüngliche deutsche Übersetzung liegt in de-CH vor (Schweizer PaRIS-Fassung, Bänder bis CHF 3630 / zwischen CHF 3630 und CHF 6050 / ab CHF 6050 pro Monat). Für PCOR-MII sind die Bänder auf deutsche Gehaltsdaten angepasst: EUR-Terzile nach IW Köln (Institut der deutschen Wirtschaft, Niehues/Stockhausen). Das ist KEINE Währungsumrechnung, sondern eine eigenständige Skala — CHF 3630 entspräche grob 3.800 EUR, nicht 2.300 EUR. Weil der Wortlaut damit deutsch und nicht schweizerisch ist, tragen die Designations hier de-DE; die übrigen DEM-Antwortskalen behalten ihren Schweizer Wortlaut nach ADR-005 bewusst bei."
* insert PR_CS_VS_Version
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* #band-niedrig "Up to €2,300 a month"
  * ^designation[+].language = #de-DE
  * ^designation[=].value = "Bis zu 2.300 € pro Monat"
* #band-mittel "Between €2,300 and €5,200 a month"
  * ^designation[+].language = #de-DE
  * ^designation[=].value = "Zwischen 2.300 € und 5.200 € pro Monat"
* #band-hoch "€5,200 a month or more"
  * ^designation[+].language = #de-DE
  * ^designation[=].value = "5.200 € pro Monat oder mehr"
* #weiss-nicht "Don't know"
  * ^designation[+].language = #de-DE
  * ^designation[=].value = "Ich weiß es nicht"
* #keine-angabe "Prefer not to say"
  * ^designation[+].language = #de-DE
  * ^designation[=].value = "Möchte ich nicht sagen"

CodeSystem: DemUrbanizitaetCS
Id: dem-urbanizitaet
Title: "DEM Urbanizität (Codes)"
Description: "Beschreibung des Wohnorts (Q_OECDLITii)."
* insert PR_CS_VS_Version
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* #stadt "City"
  * ^designation[+].language = #de
  * ^designation[=].value = "Stadt"
* #dorf-vorort "Town or suburb"
  * ^designation[+].language = #de
  * ^designation[=].value = "Dorf oder Vorort"
* #laendlich "Rural area"
  * ^designation[+].language = #de
  * ^designation[=].value = "Ländliche Region"
* #weiss-nicht "Don't know"
  * ^designation[+].language = #de
  * ^designation[=].value = "Ich weiss es nicht"

CodeSystem: DemRentenstatusCS
Id: dem-rentenstatus
Title: "DEM Rentenstatus (Codes)"
Description: "Rentenstatus (GIPS10)."
* insert PR_CS_VS_Version
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
* insert PR_CS_VS_Version
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
* insert PR_CS_VS_Version
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* #keine-feste "Keine feste Partnerschaft"
* #feste "Feste Partnerschaft"

CodeSystem: DemGeschlechtCS
Id: dem-geschlecht
Title: "DEM Geschlecht (Selbstbeschreibung)"
Description: "Selbstbeschriebenes Geschlecht (Q_SEX). HINWEIS: Im MII-Kontext bevorzugt an das MII-Person-Modul (Geschlecht / gender-amtlich-de) angleichen."
* insert PR_CS_VS_Version
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* #weiblich "Female"
  * ^designation[+].language = #de-DE
  * ^designation[=].value = "Weiblich"
* #maennlich "Male"
  * ^designation[+].language = #de-DE
  * ^designation[=].value = "Männlich"
* #nicht-binaer "Non-binary"
  * ^designation[+].language = #de-DE
  * ^designation[=].value = "Nicht-binär"
* #andere "Other"
  * ^designation[+].language = #de-DE
  * ^designation[=].value = "Andere"
* #keine-angabe "Prefer not to say"
  * ^designation[+].language = #de-DE
  * ^designation[=].value = "Möchte ich nicht sagen"


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
* insert PR_CS_VS_Version
* ^status = #draft
* ^experimental = true
* DemAntwortCS#ja "Ja"
* DemAntwortCS#nein "Nein"
* ^expansion.timestamp = "2026-06-10T00:00:00Z"
* ^expansion.parameter[0].name = "used-codesystem"
* ^expansion.parameter[0].valueUri = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-antwort|0.3.0"
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
* insert PR_CS_VS_Version
* ^status = #draft
* ^experimental = true
* DemAntwortCS#ja "Ja"
* DemAntwortCS#nein "Nein"
* DemAntwortCS#nicht-zutreffend "Nicht zutreffend"
* ^expansion.timestamp = "2026-06-10T00:00:00Z"
* ^expansion.parameter[0].name = "used-codesystem"
* ^expansion.parameter[0].valueUri = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-antwort|0.3.0"
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
* insert PR_CS_VS_Version
* ^status = #draft
* ^experimental = true
* DemAntwortCS#ja "Ja"
* DemAntwortCS#nein "Nein"
* DemAntwortCS#keine-angabe "Möchte ich nicht sagen"
* ^expansion.timestamp = "2026-06-10T00:00:00Z"
* ^expansion.parameter[0].name = "used-codesystem"
* ^expansion.parameter[0].valueUri = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-antwort|0.3.0"
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
* insert PR_CS_VS_Version
* ^status = #draft
* ^experimental = true
* include codes from system DemHaeufigkeit5CS
* ^expansion.timestamp = "2026-06-10T00:00:00Z"
* ^expansion.parameter[0].name = "used-codesystem"
* ^expansion.parameter[0].valueUri = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-haeufigkeit-5|0.3.0"
* ^expansion.contains[0].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-haeufigkeit-5"
* ^expansion.contains[0].code = #staendig
* ^expansion.contains[0].display = "Always"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-haeufigkeit-5"
* ^expansion.contains[=].code = #meistens
* ^expansion.contains[=].display = "Often"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-haeufigkeit-5"
* ^expansion.contains[=].code = #manchmal
* ^expansion.contains[=].display = "Sometimes"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-haeufigkeit-5"
* ^expansion.contains[=].code = #selten
* ^expansion.contains[=].display = "Rarely"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-haeufigkeit-5"
* ^expansion.contains[=].code = #nie
* ^expansion.contains[=].display = "Never"

ValueSet: DemLeichtigkeit6VS
Id: dem-leichtigkeit-6-vs
Title: "DEM Leichtigkeit Unterstützung (6-stufig)"
Description: "Leichtigkeit, Unterstützung zu erhalten (WHODIS1/2)."
* insert PR_CS_VS_Version
* ^status = #draft
* ^experimental = true
* include codes from system DemLeichtigkeit6CS
* ^expansion.timestamp = "2026-06-10T00:00:00Z"
* ^expansion.parameter[0].name = "used-codesystem"
* ^expansion.parameter[0].valueUri = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-leichtigkeit-6|0.3.0"
* ^expansion.contains[0].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-leichtigkeit-6"
* ^expansion.contains[0].code = #sehr-einfach
* ^expansion.contains[0].display = "Very easy"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-leichtigkeit-6"
* ^expansion.contains[=].code = #einfach
* ^expansion.contains[=].display = "Easy"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-leichtigkeit-6"
* ^expansion.contains[=].code = #weder-noch
* ^expansion.contains[=].display = "Neither easy nor difficult"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-leichtigkeit-6"
* ^expansion.contains[=].code = #schwierig
* ^expansion.contains[=].display = "Difficult"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-leichtigkeit-6"
* ^expansion.contains[=].code = #sehr-schwierig
* ^expansion.contains[=].display = "Very difficult"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-leichtigkeit-6"
* ^expansion.contains[=].code = #nicht-zutreffend
* ^expansion.contains[=].display = "Not applicable"

ValueSet: DemIscedVS
Id: dem-isced-vs
Title: "DEM Bildungsabschluss (ISCED)"
Description: "Höchster Bildungsabschluss (Q_ISCED)."
* insert PR_CS_VS_Version
* ^status = #draft
* ^experimental = true
* include codes from system DemIscedCS
* ^expansion.timestamp = "2026-06-10T00:00:00Z"
* ^expansion.parameter[0].name = "used-codesystem"
* ^expansion.parameter[0].valueUri = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-isced-de|0.3.0"
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
* insert PR_CS_VS_Version
* ^status = #draft
* ^experimental = true
* include codes from system DemErwerbsstatusCS
* ^expansion.timestamp = "2026-06-10T00:00:00Z"
* ^expansion.parameter[0].name = "used-codesystem"
* ^expansion.parameter[0].valueUri = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-erwerbsstatus|0.3.0"
* ^expansion.contains[0].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-erwerbsstatus"
* ^expansion.contains[0].code = #selbststaendig
* ^expansion.contains[0].display = "Self-employed [work for yourself]"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-erwerbsstatus"
* ^expansion.contains[=].code = #angestellt
* ^expansion.contains[=].display = "In paid employment [work for someone else]"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-erwerbsstatus"
* ^expansion.contains[=].code = #arbeitssuchend
* ^expansion.contains[=].display = "Looking for work"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-erwerbsstatus"
* ^expansion.contains[=].code = #haushalt
* ^expansion.contains[=].display = "Looking after the home"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-erwerbsstatus"
* ^expansion.contains[=].code = #arbeitsunfaehig
* ^expansion.contains[=].display = "Unable to work due to sickness or ill-health"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-erwerbsstatus"
* ^expansion.contains[=].code = #pensioniert
* ^expansion.contains[=].display = "Retired"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-erwerbsstatus"
* ^expansion.contains[=].code = #student
* ^expansion.contains[=].display = "Student"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-erwerbsstatus"
* ^expansion.contains[=].code = #nicht-arbeitend
* ^expansion.contains[=].display = "Not working and not looking for work"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-erwerbsstatus"
* ^expansion.contains[=].code = #lernende
* ^expansion.contains[=].display = "Apprentice"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-erwerbsstatus"
* ^expansion.contains[=].code = #anderes
* ^expansion.contains[=].display = "Other"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-erwerbsstatus"
* ^expansion.contains[=].code = #weiss-nicht
* ^expansion.contains[=].display = "Don't know"

ValueSet: DemEinkommenVS
Id: dem-einkommen-vs
Title: "DEM Haushaltseinkommen"
Description: "Einkommensbänder (Q_OECDLIT7a)."
* insert PR_CS_VS_Version
* ^status = #draft
* ^experimental = true
* include codes from system DemEinkommenCS
* ^expansion.timestamp = "2026-06-10T00:00:00Z"
* ^expansion.parameter[0].name = "used-codesystem"
* ^expansion.parameter[0].valueUri = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-einkommen|0.3.0"
* ^expansion.contains[0].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-einkommen"
* ^expansion.contains[0].code = #band-niedrig
* ^expansion.contains[0].display = "Up to €2,300 a month"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-einkommen"
* ^expansion.contains[=].code = #band-mittel
* ^expansion.contains[=].display = "Between €2,300 and €5,200 a month"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-einkommen"
* ^expansion.contains[=].code = #band-hoch
* ^expansion.contains[=].display = "€5,200 a month or more"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-einkommen"
* ^expansion.contains[=].code = #weiss-nicht
* ^expansion.contains[=].display = "Don't know"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-einkommen"
* ^expansion.contains[=].code = #keine-angabe
* ^expansion.contains[=].display = "Prefer not to say"

ValueSet: DemUrbanizitaetVS
Id: dem-urbanizitaet-vs
Title: "DEM Urbanizität"
Description: "Wohnort-Typ (Q_OECDLITii)."
* insert PR_CS_VS_Version
* ^status = #draft
* ^experimental = true
* include codes from system DemUrbanizitaetCS
* ^expansion.timestamp = "2026-06-10T00:00:00Z"
* ^expansion.parameter[0].name = "used-codesystem"
* ^expansion.parameter[0].valueUri = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-urbanizitaet|0.3.0"
* ^expansion.contains[0].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-urbanizitaet"
* ^expansion.contains[0].code = #stadt
* ^expansion.contains[0].display = "City"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-urbanizitaet"
* ^expansion.contains[=].code = #dorf-vorort
* ^expansion.contains[=].display = "Town or suburb"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-urbanizitaet"
* ^expansion.contains[=].code = #laendlich
* ^expansion.contains[=].display = "Rural area"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-urbanizitaet"
* ^expansion.contains[=].code = #weiss-nicht
* ^expansion.contains[=].display = "Don't know"

ValueSet: DemRentenstatusVS
Id: dem-rentenstatus-vs
Title: "DEM Rentenstatus"
Description: "Rentenstatus (GIPS10)."
* insert PR_CS_VS_Version
* ^status = #draft
* ^experimental = true
* include codes from system DemRentenstatusCS
* ^expansion.timestamp = "2026-06-10T00:00:00Z"
* ^expansion.parameter[0].name = "used-codesystem"
* ^expansion.parameter[0].valueUri = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-rentenstatus|0.3.0"
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
* insert PR_CS_VS_Version
* ^status = #draft
* ^experimental = true
* include codes from system DemZigarettenBandCS
* ^expansion.timestamp = "2026-06-10T00:00:00Z"
* ^expansion.parameter[0].name = "used-codesystem"
* ^expansion.parameter[0].valueUri = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-zigaretten-band|0.3.0"
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
* insert PR_CS_VS_Version
* ^status = #draft
* ^experimental = true
* include codes from system DemBeziehungsstatusCS
* ^expansion.timestamp = "2026-06-10T00:00:00Z"
* ^expansion.parameter[0].name = "used-codesystem"
* ^expansion.parameter[0].valueUri = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-beziehungsstatus|0.3.0"
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
* insert PR_CS_VS_Version
* ^status = #draft
* ^experimental = true
* include codes from system DemGeschlechtCS
* ^expansion.timestamp = "2026-06-10T00:00:00Z"
* ^expansion.parameter[0].name = "used-codesystem"
* ^expansion.parameter[0].valueUri = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-geschlecht|0.3.0"
* ^expansion.contains[0].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-geschlecht"
* ^expansion.contains[0].code = #weiblich
* ^expansion.contains[0].display = "Female"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-geschlecht"
* ^expansion.contains[=].code = #maennlich
* ^expansion.contains[=].display = "Male"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-geschlecht"
* ^expansion.contains[=].code = #nicht-binaer
* ^expansion.contains[=].display = "Non-binary"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-geschlecht"
* ^expansion.contains[=].code = #andere
* ^expansion.contains[=].display = "Other"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-geschlecht"
* ^expansion.contains[=].code = #keine-angabe
* ^expansion.contains[=].display = "Prefer not to say"

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
// SPRACHE — en, weil der PaRIS-Anteil primaer englisch ist: 19 der 27 Items
//   tragen den englischen Originalwortlaut als item.text mit der Schweizer
//   Fassung als de-CH-translation (ADR-005). DEM ist bewusst GEMISCHT —
//   deutsch-primaer bleiben die Nicht-PaRIS-Items (AGE, Q_GENDERID, Zipcode,
//   CPCOR_REQ) sowie die GI-PS-Items, deren Lizenz eine Uebersetzung
//   ausdruecklich untersagt. Resource.language nennt die BASISSPRACHE, und das
//   ist hier mit Mehrheit Englisch.
* language = #en
* insert Version
* code[+] = PcorQuestionnaireCatalogueCS#dem "PCOR-MII Demographie (DEM)"
* status = #draft
* experimental = true
* subjectType = #Patient
* date = "2026-06-09"
* publisher = "BIH-CEI"

// RECHTE — WICHTIG: Der soziodemographische Block übernimmt Items und
//   Variablennamen aus dem OECD PaRIS Patient Questionnaire (PaRIS-PQ).
//   Der PaRIS-PQ ist selbst eine ZUSAMMENSTELLUNG: er zitiert je Item ein
//   Quellinstrument mit eigener Rechtelage. Die Rechtefrage ist deshalb
//   PRO ITEMBLOCK zu beantworten, nicht pauschal "ist PaRIS":
//     Q_OECDLIT5a/7a/ii, OECDLIT2a/2b -> OECD Measuring Financial Literacy
//        (OECD INFE 2011) = OECD-eigenes Material. Die OECD Terms and
//        Conditions erlauben nicht-kommerzielle Nutzung UND Übersetzung ohne
//        ausdrückliche Genehmigung (Nennung + Link + Übersetzungs-Disclaimer).
//     Q_MONMED                        -> National Health Interview Survey (NHIS)
//     Q_MON, MONMEAL/RENT/BILLS       -> Commonwealth Fund IHP Surveys 2016/2017
//     MEDHIMS6/7                      -> MED-HIMS (Europäische Union 2019)
//     WHODIS, WHODIS1/2               -> WHO/World Bank Model Disability Survey
//     GIPS04, GIPS10                  -> GI-PS, Weitergabevorbehalt (offen)
//   Die OECD schließt Drittinhalte in ihren T&C ausdrücklich aus ("Some content
//   in the Material may be owned by third parties"), die OECD-Erlaubnis deckt
//   die Nicht-OECD-Blöcke also NICHT. Deren Einzelprüfung ist offen —
//   siehe Designentscheidungen.
//
// WORTLAUT NICHT ANFASSEN: Der deutsche Text stammt aus der SCHWEIZER
//   PaRIS-Fassung (Belege: "einschliesslich" in WHODIS1, 6x "Ich weiss es
//   nicht", CHF-Einkommensbänder im Layoutblatt des Item Level Dictionary).
//   Die Helvetismen werden BEWUSST BEIBEHALTEN und NICHT eingedeutscht —
//   Begründung siehe designNote unten. Wer hier "weiss" -> "weiß" korrigiert,
//   macht aus einer Übernahme eine Bearbeitung. Bitte nicht ohne Rücksprache.
//
// SPRACHEN (umgesetzt 2026-09-29): item.text = englischer PaRIS-Originalwortlaut,
//   Schweizer Fassung als translation-Extension mit de-CH. Antwortskalen ebenso
//   (englisches Display + de-CH-Designation). Ausnahmen siehe designNote.
* copyright = "Der soziodemographische Block übernimmt Items und Variablennamen aus dem OECD Patient-Reported Indicator Surveys Patient Questionnaire (PaRIS-PQ), © OECD 2024 — Original: https://www.oecd.org/content/dam/oecd/en/about/programmes/patient-reported-indicator-surveys/PaRIS%20patient%20questionnaire.pdf, Nutzung nach den OECD Terms and Conditions (https://www.oecd.org/termsandconditions). Der PaRIS-PQ ist seinerseits eine Zusammenstellung und weist je Itemblock ein Quellinstrument aus; die Rechtelage ist daher je Block zu beurteilen:\n\n**OECD-eigenes Material** — `Q_OECDLIT5a`, `Q_OECDLIT7a`, `Q_OECDLITii`, `OECDLIT2a`, `OECDLIT2b` aus OECD INFE (2011), Measuring Financial Literacy: Core Questionnaire. Nutzung und Übersetzung zu nicht-kommerziellen Forschungszwecken sind nach den OECD Terms and Conditions ohne ausdrückliche Genehmigung zulässig. Die deutschen Fassungen sind Übersetzungen; dafür gilt der von der OECD vorgegebene Hinweis: „Diese Übersetzung wurde nicht von der OECD erstellt und ist nicht als offizielle OECD-Übersetzung anzusehen. Die Qualität der Übersetzung und ihre Übereinstimmung mit dem Originaltext des Werkes liegen allein in der Verantwortung der Verfasser der Übersetzung. Im Falle von Abweichungen zwischen dem Originalwerk und der Übersetzung ist allein der Text des Originalwerks maßgeblich.\" Eine Verbindung zur OECD oder deren Billigung wird nicht behauptet.\n\n**Drittinstrumente** — die OECD schließt fremde Inhalte von ihrer Nutzungserlaubnis aus; für die folgenden Blöcke gelten die Bedingungen der jeweiligen Rechteinhaber, deren Prüfung noch aussteht: `Q_MONMED` (National Health Interview Survey, NHIS); `Q_MON`, `MONMEAL`, `MONRENT`, `MONBILLS` (Commonwealth Fund International Health Policy Surveys 2016/2017); `MEDHIMS6`, `MEDHIMS7` (Mediterranean Household International Migration Survey, Europäische Union 2019); `WHODIS`, `WHODIS1`, `WHODIS2` (WHO/World Bank Model Disability Survey, WHO 2017).\n\n**GI-PS** — `GIPS04` und `GIPS10` stammen aus dem GI-PS (doi:10.13109/zptm.2023.69.1.56). Eigentums-, Urheber-, Weitergabe- und Veröffentlichungsrechte verbleiben bei den Testautor:innen; eine Weitergabe an Dritte bedarf deren Zustimmung, die noch nicht dokumentiert ist.\n\nEinzelheiten und Stand der offenen Prüfungen: https://bih-cei.github.io/PCOR-MII/Designentscheidungen.html. Der PCOR-MII-eigene FHIR-Inhalt (Struktur, Codes, Kodierung) unterliegt der Repository-Lizenz (CC-BY-4.0)."

// Designentscheidungen direkt am Questionnaire (designNote)
* extension[+].url = $designNote
* extension[=].valueMarkdown = "**Wortlaut wird unverändert übernommen.** Der deutsche Text der PaRIS-Blöcke stammt aus der **Schweizer** PaRIS-Fassung (Belege: „einschliesslich“ in `WHODIS1`, sechsmal „Ich weiss es nicht“, CHF-Einkommensbänder im Layoutblatt des Item Level Dictionary). Die Helvetismen werden **bewusst beibehalten** und nicht eingedeutscht. Drei Gründe: (1) **Validierung** — der Wortlaut ist im TRAPD-Verfahren sprachlich validiert; eine Änderung macht aus dem validierten Item ein anderes. (2) **Rechte** — eine unveränderte Übernahme bleibt Nachnutzung von OECD-Material; eine Bearbeitung würde PCOR-MII zum Urheber einer Adaption machen und den Adaptions-Disclaimer der OECD-Bedingungen auslösen. (3) **Vergleichbarkeit** — der Wortlaut entspricht dem, unter dem die Schweizer PaRIS-Daten erhoben wurden.\n\n**Mehrsprachigkeit — umgesetzt (2026-09-29):** `item.text` trägt den englischen Originalwortlaut aus dem publizierten PaRIS-PQ; die Schweizer Fassung hängt als `translation`-Extension mit `de-CH` daran (19 Items). Ebenso tragen die sechs DEM-eigenen Antwortskalen englische Displays mit `de-CH`-Designation (36 Konzepte). Muster und RuleSets stammen aus dem MII-PRO-Modul.\n\n**Bewusst deutsch-primär geblieben:** `AGE` (in PCOR-MII auf Geburtsdatum umgestellt, entspricht nicht mehr dem PaRIS-Altersband), `Q_GENDERID` (im PaRIS-PQ nur als länderspezifische Frage ohne Wortlaut geführt), `Zipcode` und `CPCOR_REQ` (nicht aus PaRIS), `GIPS04`/`GIPS10` samt ihrer Antwortskalen (GI-PS — dessen Lizenz untersagt eine Übersetzung ausdrücklich), `DemIscedCS` (Bildungsabschlüsse nach deutschem KMK-System, keine Übersetzung des PaRIS-Wortlauts, sondern eigenständige Anpassung) sowie `DemAntwortCS` (projektweit von MHI, ACE und EDE-Q6 mitgenutzt; dort nur englische Designations ergänzt, eine Umstellung wäre ein IG-weiter Schritt). Siehe <https://bih-cei.github.io/PCOR-MII/Designentscheidungen.html>."

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
    * code[+] = PcorItemDictionaryCS#AGE
    * text = "Bitte geben Sie Ihr Geburtsdatum an"
    * type = #date
    * code[+] = $LOINC#21112-8 "Geburtsdatum"
  * item[+]
    * linkId = "Q_ISCED"
    * code[+] = PcorItemDictionaryCS#Q_ISCED
    * text = "What is the highest educational level that you have attained?"
    * text.extension[+].url = $translation
    * text.extension[=].extension[+].url = "lang"
    * text.extension[=].extension[=].valueCode = #de-CH
    * text.extension[=].extension[+].url = "content"
    * text.extension[=].extension[=].valueString = "Was ist der höchste Bildungsabschluss, den Sie erreicht haben?"
    * type = #choice
    * code[+] = $LOINC#82589-3 "Highest level of education"
    * answerValueSet = Canonical(DemIscedVS)
  * item[+]
    * linkId = "Q_SEX"
    * code[+] = PcorItemDictionaryCS#Q_SEX
    * text = "Which of the following best describes you?"
    * text.extension[+].url = $translation
    * text.extension[=].extension[+].url = "lang"
    * text.extension[=].extension[=].valueCode = #de-CH
    * text.extension[=].extension[+].url = "content"
    * text.extension[=].extension[=].valueString = "Welcher der folgenden Begriffe trifft am besten auf Sie zu?"
    * type = #choice
    * code[+] = $LOINC#76691-5 "Gender identity"
    * answerValueSet = Canonical(DemGeschlechtVS)
  * item[+]
    * linkId = "Q_GENDERID"
    * code[+] = PcorItemDictionaryCS#Q_GENDERID
    * text = "Entspricht Ihre Geschlechtsidentität dem Geschlecht, das Ihnen bei Geburt zugewiesen wurde?"
    * type = #choice
    * answerValueSet = Canonical(DemJaNeinKaVS)
  * item[+]
    * linkId = "Q_OECDLIT5a"
    * code[+] = PcorItemDictionaryCS#Q_OECDLIT5a
    * text = "Which of these terms best describes your current work situation?"
    * text.extension[+].url = $translation
    * text.extension[=].extension[+].url = "lang"
    * text.extension[=].extension[=].valueCode = #de-CH
    * text.extension[=].extension[+].url = "content"
    * text.extension[=].extension[=].valueString = "Welcher der folgenden Begriffe beschreibt am besten Ihre derzeitige Arbeitssituation?"
    * type = #choice
    * code[+] = $LOINC#67875-5 "Employment status - current"
    * answerValueSet = Canonical(DemErwerbsstatusVS)
  * item[+]
    * linkId = "Q_OECDLIT7a"
    * code[+] = PcorItemDictionaryCS#Q_OECDLIT7a
    * text = "Which of these categories does your household net income usually fall into?"
    * text.extension[+].url = $translation
    * text.extension[=].extension[+].url = "lang"
    * text.extension[=].extension[=].valueCode = #de-CH
    * text.extension[=].extension[+].url = "content"
    * text.extension[=].extension[=].valueString = "In welche dieser Kategorien fällt Ihr Netto-Haushaltseinkommen normalerweise?"
    * type = #choice
    * code[+] = $LOINC#108248-6 "Household income"
    * answerValueSet = Canonical(DemEinkommenVS)
  * item[+]
    * linkId = "Q_MONMED"
    * code[+] = PcorItemDictionaryCS#Q_MONMED
    * text = "In the past 12 months, did you have problems paying or were unable to pay any medical bills?"
    * text.extension[+].url = $translation
    * text.extension[=].extension[+].url = "lang"
    * text.extension[=].extension[=].valueCode = #de-CH
    * text.extension[=].extension[+].url = "content"
    * text.extension[=].extension[=].valueString = "Hatten Sie in den vergangenen 12 Monaten Schwierigkeiten, Rechnungen für medizinische Leistungen zu bezahlen bzw. konnten diese nicht bezahlen?"
    * type = #choice
    * answerValueSet = Canonical(DemJaNeinNzVS)

  // ── Untergruppe: Finanzielle Sorgen (Q_MON) ─────────────────────────────────
  * item[+]
    * linkId = "Q_MON"
    * text = "How often in the past 12 months would you say you were worried or stressed about the following things?"
    * text.extension[+].url = $translation
    * text.extension[=].extension[+].url = "lang"
    * text.extension[=].extension[=].valueCode = #de-CH
    * text.extension[=].extension[+].url = "content"
    * text.extension[=].extension[=].valueString = "Wie oft haben Sie sich in den letzten 12 Monaten über folgende Dinge Sorgen gemacht oder waren deswegen gestresst?"
    * type = #group
    * item[+]
      * linkId = "MONMEAL"
      * code[+] = PcorItemDictionaryCS#MONMEAL
      * text = "Having enough money to buy healthy meals?"
      * text.extension[+].url = $translation
      * text.extension[=].extension[+].url = "lang"
      * text.extension[=].extension[=].valueCode = #de-CH
      * text.extension[=].extension[+].url = "content"
      * text.extension[=].extension[=].valueString = "Genug Geld zu haben, um gesunde Mahlzeiten bezahlen zu können"
      * type = #choice
      * code[+] = $LOINC#88122-7 "Within the past 12 months we worried whether our food would run out before we got money to buy more"
      * answerValueSet = Canonical(DemHaeufigkeit5VS)
    * item[+]
      * linkId = "MONRENT"
      * code[+] = PcorItemDictionaryCS#MONRENT
      * text = "Having enough money to pay your rent or mortgage?"
      * text.extension[+].url = $translation
      * text.extension[=].extension[+].url = "lang"
      * text.extension[=].extension[=].valueCode = #de-CH
      * text.extension[=].extension[+].url = "content"
      * text.extension[=].extension[=].valueString = "Genug Geld zu haben, um die Miete oder einen Kredit bezahlen zu können"
      * type = #choice
      * answerValueSet = Canonical(DemHaeufigkeit5VS)
    * item[+]
      * linkId = "MONBILLS"
      * code[+] = PcorItemDictionaryCS#MONBILLS
      * text = "Having enough money to pay for other monthly bills, like electricity, heat, and your telephone?"
      * text.extension[+].url = $translation
      * text.extension[=].extension[+].url = "lang"
      * text.extension[=].extension[=].valueCode = #de-CH
      * text.extension[=].extension[+].url = "content"
      * text.extension[=].extension[=].valueString = "Genug Geld zu haben, um monatliche Rechnungen bezahlen zu können, z. B. für Strom, Heizung und Telefon"
      * type = #choice
      * answerValueSet = Canonical(DemHaeufigkeit5VS)

  * item[+]
    * linkId = "MEDHIMS6"
    * code[+] = PcorItemDictionaryCS#MEDHIMS6
    * text = "Were you born in Germany?"
    * text.extension[+].url = $translation
    * text.extension[=].extension[+].url = "lang"
    * text.extension[=].extension[=].valueCode = #de-CH
    * text.extension[=].extension[+].url = "content"
    * text.extension[=].extension[=].valueString = "Sind Sie in Deutschland geboren?"
    * type = #choice
    * code[+] = $LOINC#78746-5 "Country of birth [Location]"
    * answerValueSet = Canonical(DemJaNeinVS)
  * item[+]
    * linkId = "MEDHIMS6_country"
    * code[+] = PcorItemDictionaryCS#MEDHIMS6_country
    * text = "Please state the country you were born in"
    * text.extension[+].url = $translation
    * text.extension[=].extension[+].url = "lang"
    * text.extension[=].extension[=].valueCode = #de-CH
    * text.extension[=].extension[+].url = "content"
    * text.extension[=].extension[=].valueString = "Bitte geben Sie an, in welchem Land Sie geboren sind"
    * type = #string
    * enableWhen[+].question = "MEDHIMS6"
    * enableWhen[=].operator = #=
    * enableWhen[=].answerCoding = DemAntwortCS#nein "Nein"
  * item[+]
    * linkId = "MEDHIMS7"
    * code[+] = PcorItemDictionaryCS#MEDHIMS7
    * text = "Are you a citizen of Germany?"
    * text.extension[+].url = $translation
    * text.extension[=].extension[+].url = "lang"
    * text.extension[=].extension[=].valueCode = #de-CH
    * text.extension[=].extension[+].url = "content"
    * text.extension[=].extension[=].valueString = "Sind Sie Deutsche/r Staatsbürger/in?"
    * type = #choice
    * code[+] = $LOINC#66476-3 "Country of citizenship"
    * answerValueSet = Canonical(DemJaNeinVS)
  * item[+]
    * linkId = "MEDHIMS7_nationality"
    * code[+] = PcorItemDictionaryCS#MEDHIMS7_nationality
    * text = "Please state what country you are a citizen of"
    * text.extension[+].url = $translation
    * text.extension[=].extension[+].url = "lang"
    * text.extension[=].extension[=].valueCode = #de-CH
    * text.extension[=].extension[+].url = "content"
    * text.extension[=].extension[=].valueString = "Bitte geben Sie an, welche Staatsbürgerschaft Sie besitzen"
    * type = #string
    * enableWhen[+].question = "MEDHIMS7"
    * enableWhen[=].operator = #=
    * enableWhen[=].answerCoding = DemAntwortCS#nein "Nein"
  * item[+]
    * linkId = "Q_OECDLITii"
    * code[+] = PcorItemDictionaryCS#Q_OECDLITii
    * text = "Which of these best describes the type of area in which you live?"
    * text.extension[+].url = $translation
    * text.extension[=].extension[+].url = "lang"
    * text.extension[=].extension[=].valueCode = #de-CH
    * text.extension[=].extension[+].url = "content"
    * text.extension[=].extension[=].valueString = "Welche Bezeichnung beschreibt den Ort, an dem Sie leben, am besten?"
    * type = #choice
    * answerValueSet = Canonical(DemUrbanizitaetVS)
  * item[+]
    * linkId = "Zipcode"
    * text = "Postleitzahl"
    * type = #string
  * item[+]
    * linkId = "OECDLIT2a"
    * code[+] = PcorItemDictionaryCS#OECDLIT2a
    * text = "How many children under the age of 18 live with you, in your household?"
    * text.extension[+].url = $translation
    * text.extension[=].extension[+].url = "lang"
    * text.extension[=].extension[=].valueCode = #de-CH
    * text.extension[=].extension[+].url = "content"
    * text.extension[=].extension[=].valueString = "Wie viele Kinder unter 18 Jahren leben mit Ihnen in Ihrem Haushalt?"
    * type = #integer
    * code[+] = $LOINC#104078-1 "Number of underage persons in household"
  * item[+]
    * linkId = "OECDLIT2b"
    * code[+] = PcorItemDictionaryCS#OECDLIT2b
    * text = "How many people aged 18 and over live with you, in your household? Please do not count yourself"
    * text.extension[+].url = $translation
    * text.extension[=].extension[+].url = "lang"
    * text.extension[=].extension[=].valueCode = #de-CH
    * text.extension[=].extension[+].url = "content"
    * text.extension[=].extension[=].valueString = "Wie viele Personen im Alter von 18 Jahren oder älter leben mit Ihnen in Ihrem Haushalt? (ohne Sie selbst)"
    * type = #integer

  // ── Untergruppe: Soziale Unterstützung (WHODIS) ─────────────────────────────
  * item[+]
    * linkId = "WHODIS"
    * text = "Should you need help, how easy is it for you to get help from the following people?"
    * text.extension[+].url = $translation
    * text.extension[=].extension[+].url = "lang"
    * text.extension[=].extension[=].valueCode = #de-CH
    * text.extension[=].extension[+].url = "content"
    * text.extension[=].extension[=].valueString = "Wenn Sie Hilfe benötigen, wie einfach ist es für Sie, Hilfe von den folgenden Personen zu erhalten?"
    * type = #group
    * item[+]
      * linkId = "WHODIS1"
      * code[+] = PcorItemDictionaryCS#WHODIS1
      * text = "A close family member (including your partner)?"
      * text.extension[+].url = $translation
      * text.extension[=].extension[+].url = "lang"
      * text.extension[=].extension[=].valueCode = #de-CH
      * text.extension[=].extension[+].url = "content"
      * text.extension[=].extension[=].valueString = "Ein enges Familienmitglied (einschliesslich Ihrer Partnerin/Ihres Partners)"
      * type = #choice
      * answerValueSet = Canonical(DemLeichtigkeit6VS)
    * item[+]
      * linkId = "WHODIS2"
      * code[+] = PcorItemDictionaryCS#WHODIS2
      * text = "Friends, neighbours and co-workers?"
      * text.extension[+].url = $translation
      * text.extension[=].extension[+].url = "lang"
      * text.extension[=].extension[=].valueCode = #de-CH
      * text.extension[=].extension[+].url = "content"
      * text.extension[=].extension[=].valueString = "Freundinnen/Freunde, Nachbarinnen/Nachbarn und Arbeitskolleginnen/Arbeitskollegen?"
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
    * code[+] = PcorItemDictionaryCS#GIPS04
    * text = "Partnerschaft"
    * type = #choice
    * code[+] = $LOINC#45404-1 "Marital status"
    * answerValueSet = Canonical(DemBeziehungsstatusVS)
  * item[+]
    * linkId = "GIPS10"
    * code[+] = PcorItemDictionaryCS#GIPS10
    * text = "Rente"
    * type = #choice
    * answerValueSet = Canonical(DemRentenstatusVS)
  * item[+]
    * linkId = "CPCOR_REQ"
    * code[+] = PcorItemDictionaryCS#CPCOR_REQ
    * text = "Möchten Sie kontaktiert werden, um den aktuellen Gesundheitsstatus zu besprechen?"
    * type = #choice
    * answerValueSet = Canonical(DemJaNeinVS)
