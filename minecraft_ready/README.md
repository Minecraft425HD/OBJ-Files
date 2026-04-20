# Minecraft-ready Asset-Paket (Forge)

Dieses Paket macht das vorhandene OBJ-Modell als platzierbaren Block nutzbar.

## Enthalten
- `assets/examplemod/models/block/destillery.obj`
- `assets/examplemod/models/block/destillery.mtl`
- `assets/examplemod/models/block/destillery.json` (Forge OBJ Loader)
- `assets/examplemod/blockstates/destillery.json`
- `assets/examplemod/models/item/destillery.json`
- `assets/examplemod/textures/block/.gitkeep`

## Wichtig
1. Lege deine Textur als `assets/examplemod/textures/block/destillery.png` ab.
2. Ersetze überall `examplemod` durch deine echte `modid`.
3. Stelle sicher, dass Forge OBJ Loader verfügbar ist (Forge/NeoForge abhängig von deiner Version).

## Einbindung in die Mod
- Registriere einen Block `destillery` und das passende BlockItem.
- Verwende die Registry-Namen exakt passend zu den JSON-Dateien (`destillery`).
- Danach ist der Block im Spiel platzierbar.

## Optional (empfohlen)
- Eigene VoxelShape im Block-Code definieren, da OBJ-Geometrie nicht automatisch als Collision-Shape genutzt wird.
