# SAÉ BUT3 GEII Troyes — Supervision et Suivi de Projet

Système de supervision et de suivi d'avancement pour la SAÉ BUT3 GEII (Véhicule Autonome et Domotique LTG - Promo 2025-2026).

---

## Accès à la Plateforme

Lien d'accès à l'application de supervision :

[https://bouraschihab1-star.github.io/sae-supervision-geii/](https://bouraschihab1-star.github.io/sae-supervision-geii/)

### Équipe Projet

- Chihabedinne Bouras
- Damou
- Diouf
- Al Gahzouani
- Locko

---

## Installation du Raccourci et de l'Icône sur le Bureau

### 1. Sur Linux (Ubuntu / Postes IUT)

Exécutez la commande suivante dans un terminal :

```bash
curl -sSL https://raw.githubusercontent.com/bouraschihab1-star/sae-supervision-geii/main/install_shortcut_ubuntu.sh | bash
```

Cette commande télécharge l'icône dans `~/.local/share/icons/sae-geii.svg`, génère le lanceur `Supervision-SAE.desktop` sur votre Bureau et configure les droits d'exécution.

---

### 2. Sur Windows

Dans une invite de commande (CMD) ou PowerShell :

```cmd
curl.exe -sSL https://raw.githubusercontent.com/bouraschihab1-star/sae-supervision-geii/main/install_shortcut_windows.bat -o install_sae.bat && install_sae.bat && del install_sae.bat
```

Ou en téléchargeant directement le script [install_shortcut_windows.bat](https://raw.githubusercontent.com/bouraschihab1-star/sae-supervision-geii/main/install_shortcut_windows.bat) et en l'exécutant.

---

## Fonctionnalités

- Tableau Kanban : Suivi par statuts (À faire, En cours, Validé).
- Travail en binôme : Multi-assignation sur les tâches.
- Gestion des sous-branches Git : Création de branches normalisées par tâche et commandes d'extraction prêtes à copier.
- Journal de bord : Comptes-rendus quotidiens et consultation de documents PDF intégrée.
- Suivi des jalons : Échéancier officiel (L0 à L4) et suivi du calendrier.
