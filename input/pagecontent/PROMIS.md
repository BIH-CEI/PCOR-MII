**PROMIS®** (Patient-Reported Outcomes Measurement Information System) ist ein vom US National Institutes of Health (NIH) gegründetes Instrumentariums-Framework zur standardisierten Erfassung patientenberichteter Gesundheitszustände über mehrere Domänen hinweg (z.B. Physical Function, Anxiety, Depression, Fatigue, Sleep Disturbance, Pain Interference, Social Function, Cognitive Function).

Die PROMIS Health Organization (PHO) pflegt die Item-Banken und Profile international; das **PROMIS National Center Deutschland** (CPCOR Charité, Leitung Felix Fischer) verantwortet die validierten deutschen Übersetzungen.

### PROMIS-Instrumente in PCOR-MII

PCOR-MII referenziert die im MII PRO-Modul gepflegten PROMIS-Questionnaires — kein eigener Nachbau:

- [**PROMIS-33 Profile v2.1**](PROMIS-33.html) — Multi-Domain HRQoL inkl. Cognitive Function, 33 Items über 8 Domänen (*geplant, noch nicht im MII PRO-Modul implementiert*)
- [**PROMIS-29 Profile v2.1**](PROMIS-29.html) — Multi-Domain HRQoL, 29 Items über 7 Domänen + Schmerzintensität
- [**PROMIS Cognitive Function SF 4a**](PROMIS-Cognitive-Function.html) — kognitive Funktion (Selbstauskunft), 4 Items
- [**PROMIS-16 Profile v2.1 (PROPr)**](PROMIS-16.html) — ultrakurz, 16 Items über 8 Domänen (inkl. Cognitive Function)

#### Ausnahme: PROMIS Global Health (Global01/Global02)

Zwei Einzelitems der **PROMIS Scale v1.2 – Global Health** werden in PCOR-MII erhoben, sind im MII PRO-Modul (geprüft gegen `2026.5.2`) aber nicht abgebildet — weder als Questionnaire noch als Katalogeintrag:

| Variable | LOINC | Item (DE) |
|---|---|---|
| `Global01` | [`61577-3`](https://loinc.org/61577-3) | Wie würden Sie Ihren Gesundheitszustand insgesamt beschreiben? |
| `Global02` | [`61578-1`](https://loinc.org/61578-1) | Wie würden Sie Ihre Lebensqualität insgesamt beschreiben? |

Antwortskala beider Items ist die LOINC-Answerlist [`LL4280-5`](https://loinc.org/LL4280-5) (5 = Ausgezeichnet · 4 = Sehr gut · 3 = Gut · 2 = Einigermaßen · 1 = Schlecht), abgebildet im ValueSet [`promis-global-skala-5-vs`](ValueSet-promis-global-skala-5-vs.html).

Als **Übergangslösung** stellt PCOR-MII dafür den lokalen Questionnaire [`PROMISGH`](Questionnaire-PROMISGH.html) mit exakt diesen zwei Items bereit. Ziel ist, die vollständige 10-Item-Skala (LOINC-Panel [`85524-7`](https://loinc.org/85524-7) „PROMIS short form - global - version 1.2") ins MII PRO-Modul aufzunehmen; danach wird der lokale Questionnaire durch die Upstream-Referenz ersetzt.

Die PROMIS-Scores Global Physical Health (`71972-4`) und Global Mental Health (`71970-8`) sind aus diesen beiden Items **nicht** berechenbar — sie setzen je vier Items der Gesamtskala voraus. Global01 und Global02 werden daher als Einzelindikatoren verwendet.

Das dritte GHS-Einzelitem `Global07` („PROMIS Numeric Rating Scale – Pain Intensity 1a", LOINC `61583-1`) braucht kein eigenes Artefakt: es ist als `promis-global07` im referenzierten [PROMIS-29](PROMIS-29.html) enthalten.

### Lizenz & Copyright

PROMIS-Ressourcen unterliegen dem 4-Schichten-Modell aus dem MII PRO-Modul:

1. **FHIR-Resource-Struktur** © Medizininformatik-Initiative (CC-BY 4.0)
2. **PROMIS-Items** © PROMIS Health Organization (Northwestern University)
3. **Offizielle deutsche Übersetzungen** bereitgestellt durch PCOR-MII, kuratiert durch PROMIS National Center Deutschland
4. **LOINC-Codes** © Regenstrief Institute

Details und Nutzungsanfragen: [PROMIS-Lizenzierung im MII PRO-Modul](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.pros/2026.4.1).

### Item-Überlapp

PROMIS-29 und PROMIS-16 überlappen sich in 14 Items (PROMIS-16 ist quasi ein PROMIS-29-Subset plus 2 Cognitive-Function-Items). Bei kombinierter Erfassung sollten Items nicht doppelt erhoben werden — eine Item-basierte Score-Architektur ist im MII PRO-Modul für 2027 geplant.

### Quellen

- Übergeordneter IG: [MII PRO-Modul IG-Doku (Simplifier)](https://simplifier.net/guide/modul-pro-v2026/MIIIGModulPRO/Index.page.md?version=current) · [PRO-Bibliothek PROMIS-Sektion](https://simplifier.net/guide/modul-pro-v2026/MIIIGModulPRO/PRO-Bibliothek/PROMIS/Index.page.md?version=current) · [Raw-Package](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.pros/2026.4.1)
- PROMIS Health Organization: [healthmeasures.net](https://www.healthmeasures.net/explore-measurement-systems/promis)
- PROMIS National Center Deutschland (CPCOR Charité): Felix Fischer
