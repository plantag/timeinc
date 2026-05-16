@echo off
:: ============================================================
::  autopush.bat — Sauvegarde automatique Git toutes les 15 min
::  Fabrique de Paradoxes Temporels
:: ============================================================

title AutoPush - Timeinc [en cours...]

:: Se placer dans le bon répertoire (là où se trouve ce script)
cd /d "%~dp0"

:loop
echo.
echo [%date% %time%] Sauvegarde en cours...

git add .

:: Commit avec horodatage
git commit -m "Sauvegarde automatique — %date% %time%"

git push

echo [%date% %time%] Push termine. Prochain dans 15 minutes.
echo --------------------------------------------------------

:: Attendre 900 secondes (15 minutes)
timeout /t 900 /nobreak

goto loop
