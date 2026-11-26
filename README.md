# ⚡ SAÉ BUT3 GEII Troyes — Plateforme de Supervision & Avancement

> **Système centralisé de supervision, suivi de projet et collaboration Git pour la SAÉ BUT3 GEII (Véhicule Autonome & Domotique LTG - Promo 2025-2026).**

---

## 🌐 Accès direct à l'Application

Cliquez sur le lien ci-dessous pour accéder directement à la page de connexion de la supervision :

👉 **[https://bouraschihab1-star.github.io/sae-supervision-geii/](https://bouraschihab1-star.github.io/sae-supervision-geii/)**

### 🔐 Identifiants de connexion (Login)

| Rôle | Membre | Identifiant | Mot de passe | Droits & Accès |
| :--- | :--- | :--- | :--- | :--- |
| **Coordinateur / Admin** | Chihabedinne Bouras | `bouras` | `root` | Gestion globale, token GitHub, suppression de toutes les tâches |
| **Membre équipe** | Damou | `damou` | `geii` | Création de tâches, rapports journaliers, suppression de ses tâches |
| **Membre équipe** | Diouf | `diouf` | `geii` | Création de tâches, rapports journaliers, suppression de ses tâches |
| **Membre équipe** | Al Gahzouani | `elghazouani` | `geii` | Création de tâches, rapports journaliers, suppression de ses tâches |
| **Membre équipe** | Locko | `locko` | `geii` | Création de tâches, rapports journaliers, suppression de ses tâches |

---

## 💻 Installation du Raccourci & Icône sur le Bureau

Pour installer en 1 clic le raccourci officiel avec l'icône GEII personnalisée sur le Bureau de votre machine :

### 🐧 1. Sur Linux (Ubuntu / Postes de l'IUT)

Ouvrez un terminal (`Ctrl + Alt + T`) et collez la commande suivante :

```bash
curl -sSL https://raw.githubusercontent.com/bouraschihab1-star/sae-supervision-geii/main/install_shortcut_ubuntu.sh | bash
```

**Ce que fait cette commande :**
- Télécharge l'icône officielle GEII SVG dans `~/.local/share/icons/sae-geii.svg`.
- Crée le lanceur `Supervision-SAE.desktop` directement sur votre `~/Bureau` (ou `~/Desktop`).
- Active les permissions d'exécution GNOME (`gio set metadata::trusted true`).

---

### 🪟 2. Sur Windows (PC Personnel / Portable)

#### Option A : En 1 seule ligne dans l'invite de commande (CMD ou PowerShell)

Ouvrez l'invite de commande ou PowerShell et collez :

```cmd
curl.exe -sSL https://raw.githubusercontent.com/bouraschihab1-star/sae-supervision-geii/main/install_shortcut_windows.bat -o install_sae.bat && install_sae.bat && del install_sae.bat
```

#### Option B : Téléchargement direct
1. Téléchargez le fichier [install_shortcut_windows.bat](https://raw.githubusercontent.com/bouraschihab1-star/sae-supervision-geii/main/install_shortcut_windows.bat).
2. Double-cliquez dessus.
3. Le raccourci **« Supervision SAE BUT3 »** apparaît sur votre Bureau avec son icône `.ico` haute résolution.

---

## 🛠️ Fonctionnalités du Système

- **Tableau Kanban Dynamique :** Suivi des tâches en 3 colonnes (*À faire*, *En cours*, *Validé*).
- **Assignation Multiple :** Possibilité d'assigner des binômes ou trinômes sur une même tâche avec calcul proportionnel de la progression individuelle.
- **Gestion Automatique des Sous-Branches Git :**
  - Création automatique de branches normalisées (`task/T...-slug`) depuis l'interface via l'API GitHub.
  - Commande prête à copier en un clic pour les développeurs (`git fetch origin && git checkout task/...`).
  - Bouton direct pour générer la *Pull Request* vers `main` à la validation.
- **Journal de Bord Quotidien & Visionneuse PDF :**
  - Dépôt de comptes-rendus avec liaison directe aux tâches.
  - Upload et prévisualisation inline des documents techniques et schémas PDF sans quitter le tableau de bord.
- **Suivi des Jalons Officiels :**
  - **L0 (25 Nov)** : Présentation CDC *(Validé)*
  - **L1 (06 Déc)** : Analyse préliminaire & Choix matériel *(En cours, compte à rebours actif)*
  - **L2 (20 Déc)** : Chiffrage & Planning final
  - **L3 (24 Janv)** : Soutenance S5 & Démonstration banc d'essai
  - **L4 (14 Mars)** : Soutenance Finale S6
- **Audit Quotidien Automatisé :** Cron récurrent chaque soir à 20h00 avec reporting automatique sur l'avancement et les éventuels blocages.
