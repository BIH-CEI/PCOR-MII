**PROMIS®** (Patient-Reported Outcomes Measurement Information System) ist ein vom US National Institutes of Health (NIH) gegründetes Instrumentariums-Framework zur standardisierten Erfassung patientenberichteter Gesundheitszustände über mehrere Domänen hinweg (z.B. Physical Function, Anxiety, Depression, Fatigue, Sleep Disturbance, Pain Interference, Social Function, Cognitive Function).

Die PROMIS Health Organization (PHO) pflegt die Item-Banken und Profile international; das **PROMIS National Center Deutschland** (CPCOR Charité, Leitung Felix Fischer) verantwortet die validierten deutschen Übersetzungen.

### PROMIS-Instrumente in PCOR-MII

PCOR-MII referenziert die im MII PRO-Modul gepflegten PROMIS-Questionnaires — kein eigener Nachbau:

- [**PROMIS-33 Profile v2.1**](PROMIS-33.html) — Multi-Domain HRQoL inkl. Cognitive Function, 33 Items über 8 Domänen (*geplant, noch nicht im MII PRO-Modul implementiert*)
- [**PROMIS-29 Profile v2.1**](PROMIS-29.html) — Multi-Domain HRQoL, 29 Items über 7 Domänen + Schmerzintensität
- [**PROMIS Cognitive Function SF 4a**](PROMIS-Cognitive-Function.html) — kognitive Funktion (Selbstauskunft), 4 Items
- [**PROMIS-16 Profile v2.1 (PROPr)**](PROMIS-16.html) — ultrakurz, 16 Items über 8 Domänen (inkl. Cognitive Function)

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

- Übergeordneter IG: [MII PRO-Modul (Simplifier)](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.pros/2026.4.1)
- PROMIS Health Organization: [healthmeasures.net](https://www.healthmeasures.net/explore-measurement-systems/promis)
- PROMIS National Center Deutschland (CPCOR Charité): Felix Fischer
