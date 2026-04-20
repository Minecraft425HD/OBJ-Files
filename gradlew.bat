@echo off
where gradle >nul 2>nul
if errorlevel 1 (
  echo Error: gradle ist nicht installiert. Bitte Gradle 8.x installieren.
  exit /b 1
)
cd /d %~dp0\forge-test-1.20.1
gradle %*
