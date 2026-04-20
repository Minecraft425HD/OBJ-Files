# Direkter Test in Minecraft 1.20.1 (Forge 47.0.4)

Dieses Unterprojekt ist eine minimale Forge-Mod, die das vorhandene OBJ als platzierbaren Block (`destillery`) registriert.

## Voraussetzungen
- Java 17
- Gradle (oder Wrapper)

## Starten
```bash
cd forge-test-1.20.1
# optional, falls gradle-wrapper fehlt:
gradle wrapper
./gradlew runClient
```

## Im Spiel testen
1. Welt im Creative-Modus öffnen.
2. Im Inventar nach `destillery` suchen.
3. Block platzieren.

## Eigene Textur einsetzen
Lege lokal (nicht im PR) diese Datei an:
`src/main/resources/assets/objfilesmod/textures/block/destillery.png`

Hinweis: Binärdateien werden im aktuellen PR-Flow nicht unterstützt.

## Wichtige Dateien
- Block-Registrierung: `src/main/java/de/objfiles/mod/registry/ModBlocks.java`
- Mod-Einstieg: `src/main/java/de/objfiles/mod/ObjFilesMod.java`
- OBJ-Model: `src/main/resources/assets/objfilesmod/models/block/destillery.obj`
- OBJ Loader JSON: `src/main/resources/assets/objfilesmod/models/block/destillery.json`
