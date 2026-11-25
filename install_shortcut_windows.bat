@echo off
chcp 65001 >nul
echo ==========================================================
echo  Installation du raccourci Supervision SAÉ BUT3 GEII Troyes
echo ==========================================================

set "TARGET_DIR=%USERPROFILE%\.sae-supervision"
if not exist "%TARGET_DIR%" mkdir "%TARGET_DIR%"

set "ICO_PATH=%TARGET_DIR%\sae-geii.ico"
set "DESKTOP_PATH=%USERPROFILE%\Desktop\Supervision SAE BUT3.url"

echo [+] Téléchargement de l'icône GEII...
powershell -Command "Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/bouraschihab1-star/sae-supervision-geii/main/sae-geii.ico' -OutFile '%ICO_PATH%'"

echo [+] Création du raccourci sur le Bureau...
(
echo [InternetShortcut]
echo URL=https://bouraschihab1-star.github.io/sae-supervision-geii/
echo IconFile=%ICO_PATH%
echo IconIndex=0
) > "%DESKTOP_PATH%"

echo.
echo ==========================================================
echo  [✓] Raccourci créé sur votre Bureau : Supervision SAE BUT3
echo ==========================================================
pause
