#!/usr/bin/env bash
set -euo pipefail

GRADLE_VERSION="8.14.3"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
WRAPPER_DIR="$SCRIPT_DIR/.gradle-wrapper"
DIST_DIR="$WRAPPER_DIR/gradle-$GRADLE_VERSION"
ZIP_PATH="$WRAPPER_DIR/gradle-$GRADLE_VERSION-bin.zip"
GRADLE_BIN="$DIST_DIR/bin/gradle"

mkdir -p "$WRAPPER_DIR"

if [ ! -x "$GRADLE_BIN" ]; then
  if [ ! -f "$ZIP_PATH" ]; then
    echo "Lade Gradle $GRADLE_VERSION herunter..."
    URLS=(
      "https://services.gradle.org/distributions/gradle-$GRADLE_VERSION-bin.zip"
      "https://downloads.gradle.org/distributions/gradle-$GRADLE_VERSION-bin.zip"
    )
    DOWNLOADED=0
    for u in "${URLS[@]}"; do
      if curl -fL "$u" -o "$ZIP_PATH"; then
        DOWNLOADED=1
        break
      fi
    done
    if [ "$DOWNLOADED" -ne 1 ]; then
      echo "Fehler: Gradle-Download fehlgeschlagen." >&2
      exit 1
    fi
  fi

  echo "Entpacke Gradle $GRADLE_VERSION..."
  rm -rf "$DIST_DIR"
  unzip -q -o "$ZIP_PATH" -d "$WRAPPER_DIR"
fi

cd "$SCRIPT_DIR/forge-test-1.20.1"
exec "$GRADLE_BIN" "$@"
