# Mehrsprachigkeit / Multi-Language Support

Dieses Verzeichnis enthält Übersetzungen für den PCOR-MII-IG. Konventionen folgen der
[FHIR Multi-Language Guidance](https://build.fhir.org/ig/FHIR/ig-guidance/languages.html).

## Standardsprache & Layout

Standardsprache des IG ist **Deutsch**. Englisch wird als Übersetzung gepflegt.

```
input/
├── pagecontent/                 # Default-Sprache (Deutsch): narrative Seiten
└── translations/
    └── en/                      # Englische Übersetzung
        ├── pagecontent/         # Übersetzte Seiten — Dateiname identisch zur deutschen Version
        └── *.po                 # Übersetzte Resource-Felder (Title, Description, Element-Definitionen)
```

## sushi-config.yaml

```yaml
parameters:
  i18n-default-lang: de
  i18n-lang:
    - en
  translation-sources:
    - input/translations/en
```

Der Sprach-Switcher kommt vom Template `fhir2.base.template#current` (siehe `ig.ini`).

## Workflow: Seiten übersetzen

Eine Kopie der deutschen Seite unter `input/translations/en/pagecontent/` mit **identischem
Dateinamen** ablegen. Der Publisher matcht automatisch. Fehlende Übersetzungen fallen
automatisch auf die deutsche Default-Version zurück.

## Workflow: Resourcen übersetzen

1. Einmal bauen (`./_genonce.sh`). Der IG Publisher generiert PO-Templates unter `translations/en/`
   (neben `output/`, **nicht** in `input/`).
2. Relevante `.po`-Datei nach `input/translations/en/` kopieren und die `msgstr ""`-Zeilen mit
   englischem Text füllen — beliebiger Texteditor oder [Poedit](https://poedit.net/).
3. Erneut bauen — der IG rendert mit englischen Overlays.
