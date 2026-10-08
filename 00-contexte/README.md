# 00 — Contexte client / projet

> **Dossier :** 00-contexte
> **Rôle :** contexte à **remplir obligatoirement** puis à consulter **avant** toute tâche de media buying.

Ce dossier centralise le contexte de chaque client / projet. L'objectif : que l'agent IA (et l'humain) disposent de tout le contexte business — entreprise, finance, marché, offre, cible, système d'acquisition — avant de lancer, optimiser ou analyser des campagnes.

---

## Structure

```
00-contexte/
├── comptes-pubs.md             identifiants de comptes & accès
└── projet-1/                   ⚠️ à compléter obligatoirement
    ├── entreprise.md           descriptif du projet, organigramme
    ├── finance.md              objectifs CA/ventes, croissance, rentabilité
    ├── marché.md               réglementation, concurrents
    ├── offre.md                services, prix, avantages concurrentiels
    ├── cible.md                ICP & persona, style d'écriture et ton
    └── systeme-acquisition.md  parcours client, tunnel, outils, plateformes

(Pour plusieurs clients : dupliquer projet-1/ en projet-2/, projet-3/…)
```

## Comment l'utiliser

1. **Remplis `projet-1/` en priorité — c'est OBLIGATOIRE.** Tout le corpus s'appuie sur ce contexte : sans lui, l'agent IA (et l'humain) travaille à l'aveugle. Renseigne chaque section (chaque `##` est un champ — remplace `_À compléter._`).
2. **Passe le statut** de `⬜ À compléter` à `✅ Complété` dans l'en-tête de chaque fichier quand il est prêt.
3. **Renseigne `comptes-pubs.md`** avec les identifiants de comptes du projet.
4. **Plusieurs clients ?** Duplique `projet-1/` en `projet-2/`, etc. (et ajoute un bloc dans `comptes-pubs.md`).

## ⚠️ Confidentialité

Une fois rempli, ce dossier contient des **données confidentielles** (finances, identifiants de comptes, accès). Ne pousse pas de contexte client rempli sur un dépôt partagé ou public. Les gabarits (vides) peuvent être partagés ; les copies remplies doivent rester privées.
