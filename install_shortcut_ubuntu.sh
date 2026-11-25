#!/usr/bin/env bash
# ==============================================================================
# Script d'installation du raccourci Bureau pour Ubuntu (GNOME / Linux)
# Plateforme de Supervision SAÉ BUT3 GEII Troyes
# ==============================================================================

set -e

echo "=== Installation du raccourci Supervision SAÉ BUT3 GEII ==="

# 1. Détection du dossier Bureau (français ou anglais)
if [ -d "$HOME/Bureau" ]; then
  DESKTOP_DIR="$HOME/Bureau"
elif [ -d "$HOME/Desktop" ]; then
  DESKTOP_DIR="$HOME/Desktop"
else
  DESKTOP_DIR="$HOME/Bureau"
  mkdir -p "$DESKTOP_DIR"
fi

# 2. Création du répertoire d'icônes local
ICON_DIR="$HOME/.local/share/icons"
mkdir -p "$ICON_DIR"

# 3. Téléchargement de l'icône SVG
ICON_PATH="$ICON_DIR/sae-geii.svg"
echo "[+] Téléchargement de l'icône..."
curl -sSL "https://raw.githubusercontent.com/bouraschihab1-star/sae-supervision-geii/main/sae-icon.svg" -o "$ICON_PATH"

# 4. Création du fichier .desktop
SHORTCUT_PATH="$DESKTOP_DIR/Supervision-SAE.desktop"
echo "[+] Création du lanceur sur le Bureau ($SHORTCUT_PATH)..."

cat <<EOF > "$SHORTCUT_PATH"
[Desktop Entry]
Version=1.0
Type=Application
Name=Supervision SAÉ BUT3
GenericName=Supervision GEII
Comment=Plateforme de supervision véhicule autonome et domotique GEII Troyes
Exec=xdg-open https://bouraschihab1-star.github.io/sae-supervision-geii/
Icon=$ICON_PATH
Terminal=false
Categories=Education;Development;
StartupNotify=true
EOF

# 5. Droits d'exécution et autorisation GNOME
chmod +x "$SHORTCUT_PATH"

# Autoriser le lancement sous GNOME (metadata trusted)
if command -v gio &> /dev/null; then
  gio set "$SHORTCUT_PATH" metadata::trusted true 2>/dev/null || true
fi

echo ""
echo "=========================================================="
echo " [✓] Installation réussie !"
echo " L'icône 'Supervision SAÉ BUT3' est maintenant sur le Bureau."
echo " Double-cliquez dessus pour ouvrir le tableau de bord."
echo "=========================================================="
