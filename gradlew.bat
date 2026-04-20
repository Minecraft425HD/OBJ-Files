@echo off
setlocal enabledelayedexpansion

set GRADLE_VERSION=8.14.3
set SCRIPT_DIR=%~dp0
set WRAPPER_DIR=%SCRIPT_DIR%.gradle-wrapper
set DIST_DIR=%WRAPPER_DIR%\gradle-%GRADLE_VERSION%
set ZIP_PATH=%WRAPPER_DIR%\gradle-%GRADLE_VERSION%-bin.zip
set GRADLE_BIN=%DIST_DIR%\bin\gradle.bat

if not exist "%WRAPPER_DIR%" mkdir "%WRAPPER_DIR%"

if not exist "%GRADLE_BIN%" (
  if not exist "%ZIP_PATH%" (
    echo Lade Gradle %GRADLE_VERSION% herunter...
    powershell -NoProfile -ExecutionPolicy Bypass -Command "$urls=@('https://services.gradle.org/distributions/gradle-%GRADLE_VERSION%-bin.zip','https://downloads.gradle.org/distributions/gradle-%GRADLE_VERSION%-bin.zip'); $ok=$false; foreach($u in $urls){ try { Invoke-WebRequest -UseBasicParsing -Uri $u -OutFile '%ZIP_PATH%'; $ok=$true; break } catch {} }; if(-not $ok){ throw 'Gradle-Download fehlgeschlagen' }"
  )

  echo Entpacke Gradle %GRADLE_VERSION%...
  powershell -NoProfile -ExecutionPolicy Bypass -Command "Expand-Archive -Path '%ZIP_PATH%' -DestinationPath '%WRAPPER_DIR%' -Force"
)

cd /d "%SCRIPT_DIR%\forge-test-1.20.1"
call "%GRADLE_BIN%" %*
