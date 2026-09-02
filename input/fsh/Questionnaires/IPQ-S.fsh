// ─────────────────────────────────────────────────────────────────────────────
// IPQ-S — Subjektive Ursachenzuschreibung der Körperbeschwerden (1 offenes Item)
// Quelle: PCOR Item Level Dictionary, Entität PSS, Kategorie DCH, Item IPQ_S1
//   (Typ "Text").
//
// ABGRENZUNG ZUM B-IPQ (wichtig): PCOR-MII erhebt NICHT den Brief Illness
//   Perception Questionnaire, sondern ausschließlich dessen offene
//   Ursachenfrage (Item 9 des B-IPQ) in angelehnter Formulierung. Die
//   DIZ-Implementierungsliste PCOR-MII hält das ausdrücklich fest: "Es wird in
//   PCOR-MII eigentlich nicht der IPQ sondern nur eine offene Frage (9)
//   angelehnt an den B-IPQ verwendet."
//   Konsequenz für die Modellierung: Diese Ressource ist bewusst KEIN
//   B-IPQ-Questionnaire und trägt weder dessen Namen noch dessen Scoring. Ein
//   B-IPQ-Score (die acht geschlossenen Items) ist aus diesem einen Item nicht
//   berechenbar und darf daraus auch nicht abgeleitet werden.
//
// STRUKTUR: ein einzelnes Freitext-Item (type = text). Die Frage bittet um die
//   drei wichtigsten subjektiven Ursachen; das Dictionary sieht dafür ein
//   einzelnes Textfeld vor, keine drei getrennten Felder — daher hier ebenfalls
//   ein Feld, damit Struktur und Erhebung übereinstimmen.
//
// Terminologie-Recherche (mcp__fhir-terminology__search_codes, Stand 2026-09-02):
//   - LOINC 2.83: keine Treffer für "illness perception".
//   - SNOMED CT 2026-05-01: 423549006 |Chronic illness perception assessment
//     scale (assessment scale)| existiert, meint aber ein vollständiges
//     Assessment-Instrument und nicht eine einzelne offene Ursachenfrage.
//     NICHT vergeben — analog zur Entscheidung beim GSLTPAQ, keine Codes
//     fremder Instrumente zu setzen.
//   Daher kein Questionnaire.code und kein item.code.
// ─────────────────────────────────────────────────────────────────────────────

Instance: IPQS
InstanceOf: Questionnaire
Usage: #definition
Title: "IPQ-S — Subjektive Ursachen der Körperbeschwerden (offene Frage)"
Description: "Eine offene Frage nach den drei wichtigsten subjektiven Ursachen der Körperbeschwerden, angelehnt an Item 9 des Brief Illness Perception Questionnaire (B-IPQ). PCOR-MII erhebt NICHT den B-IPQ selbst; ein B-IPQ-Score ist aus diesem Item nicht ableitbar. Quelle: PCOR-MII Item Level Dictionary (Entität PSS)."
* meta.profile = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire"
* url = "https://bih-cei.github.io/PCOR-MII/Questionnaire/IPQS"
* name = "IPQS"
* version = "0.1.0"
* status = #draft
* experimental = true
* subjectType = #Patient
* date = "2026-09-02"
* publisher = "BIH-CEI"
* copyright = "Die erhobene Frage ist an Item 9 des Brief Illness Perception Questionnaire (B-IPQ) angelehnt: Broadbent E, Petrie KJ, Main J, Weinman J. The Brief Illness Perception Questionnaire. J Psychosom Res. 2006;60(6):631-637. doi:10.1016/j.jpsychores.2005.10.020. Deutsche Fassung: Gaab J. Deutsche Version des Brief Illness Perception Questionnaire. Z Gesundheitspsychol. 2009;17(4):158-165. doi:10.1026/0943-8149.17.4.158. PCOR-MII verwendet ausschließlich diese eine offene Frage und nicht das vollständige Instrument; Rechte am B-IPQ verbleiben bei den Autor:innen. Der PCOR-MII-eigene FHIR-Inhalt unterliegt der Repository-Lizenz (CC-BY-4.0)."

* item[+]
  * linkId = "IPQ_S1"
  * text = "Bitte führen Sie nun die drei wichtigsten Gründe auf, die Ihrer Meinung nach Ihre vorher genannten körperlichen Beschwerden verursacht haben. Die wichtigsten Ursachen meiner Beschwerden sind:"
  * type = #text
