# OBJ-Files

Sammlung von `.obj`/`.mtl` Modellen für eine Minecraft-Mod.

## Ziel
Dieses Repository dient als zentrale Ablage für mehrere 3D-Modelle, die nach und nach in die Mod integriert werden.

## Aktueller Inhalt
- `Destillery/`
  - `Destillery.obj`
  - `Destillery.mtl`

## Empfohlene Struktur für weitere Modelle
Für jedes neue Modell einen eigenen Ordner anlegen:

```text
<Modellname>/
  <Modellname>.obj
  <Modellname>.mtl
  textures/
    ...
```

## Integration in Minecraft (kurz)
Je nach Modloader gibt es kleine Unterschiede, aber grundsätzlich:

1. Modell und MTL nach `resources/assets/<modid>/models/` (oder in einen klaren Unterordner) kopieren.
2. Prüfen, dass Pfade in der `.mtl` korrekt auf Texturen zeigen (`map_Kd ...`).
3. Texturen nach `resources/assets/<modid>/textures/` legen.
4. Block-/Item-JSON so konfigurieren, dass das OBJ-Modell referenziert wird.
5. Im Spiel testen und ggf. Skalierung/Rotation im JSON oder Code anpassen.

## Hinweise
- Verwende möglichst konsistente Dateinamen (z. B. nur Kleinbuchstaben, keine Leerzeichen).
- Achte auf eine einheitliche Ausrichtung und Skalierung der Modelle.
- Committe neue Modelle immer mit `.obj`, `.mtl` und den zugehörigen Texturen.
