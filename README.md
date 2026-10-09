# Corpus Impulsion

Base de connaissances pour Media Buyers — par [impulsion.com](https://impulsion.com)

314 documents opérationnels (Stratégie, Site Web, Google Ads, Meta Ads, TikTok Ads) conçus pour être lisibles par un humain et exploitables par un agent IA (Claude, ChatGPT, etc.). Un dossier `00-contexte/` accueille le contexte de chaque client/projet à remplir.

> Voir [CHANGELOG.md](CHANGELOG.md) pour la dernière mise à jour.

---

## Comment l'utiliser

### Pour un humain

Convention de nommage : `Catégorie - [Tag optionnel] Nom.md`. La plateforme est dans le dossier parent.

Exemples :
- `03-google-ads/search/Search - Lancer une campagne Search.md` → SOP (verbe d'action, pas de tag)
- `03-google-ads/search/Search - Niveau de qualité.md` → fiche technique (concept, pas de tag)
- `03-google-ads/search/Search - [Review] Lancement Search.md` → checklist
- `03-google-ads/encheres/Enchères - Stratégie d'enchères.md` → framework (pas de tag, frontmatter `Type: Framework`)
- `04-meta-ads/suivi/Suivi - Configurer le Conversions API (CAPI).md` → SOP Meta

### Pour un agent IA (Claude Code, etc.)

```bash
git clone https://github.com/impulsion-com/corpus-impulsion-public.git corpus-impulsion
```

Le repo contient un fichier [`CLAUDE.md`](CLAUDE.md) prêt à l'emploi : Claude Code le lit automatiquement et comprend la structure du corpus, les conventions de nommage et la terminologie. Tu peux aussi le copier dans le `CLAUDE.md` global (`~/.claude/CLAUDE.md`) si tu veux y accéder depuis n'importe quel projet.

Ensuite, demande à l'agent :
> Suis le doc Suivi - Configurer le suivi des conversions pour mon client plombier à Lyon.

L'agent ouvrira le bon document et suivra les étapes.

### Comme plugin Claude Code (alternative)

Le dossier est aussi un **plugin** : installé une fois, ses skills et ses documents sont disponibles dans tous vos projets, sans le copier dans chacun. Voir [`INSTALL-PLUGIN.md`](INSTALL-PLUGIN.md).

---

## Architecture

```
corpus-impulsion/
│
├── 00-contexte/                 ⚠️ à remplir OBLIGATOIREMENT avant d'utiliser le corpus
│   ├── comptes-pubs.md          identifiants de comptes & accès
│   └── projet-1/       (7)      entreprise, finance, marché, offre, recherche, cible, acquisition
│                                (dupliquer en projet-2/… pour un autre client)
│
├── 01-strategie/
│   ├── fondamentaux/   (22)     concepts business, push/pull, lexique KPI
│   ├── reporting/      (8)      reporting hebdo, mensuel et trimestriel
│   ├── offre/          (7)      audit, offre, angles, mécanismes, croyances, brief d'offre
│   ├── redaction/      (4)      niveaux de conscience, sophistication du marché, Cialdini, méthodes de copie
│   ├── analyse/        (3)      rentabilité, budget, veille concurrentielle
│   ├── objectifs/      (2)      modèles et checklist pour les objectifs et KPIs
│   ├── experimentation/(2)      suivi des tests
│   └── cible/          (3)      recherche voix du client, avatar (ICP), checklist qualité
│
├── 02-site-web/
│   ├── construction/   (6)      LP conversion, e-commerce, page produit, tunnel, site vitrine
│   ├── audit/          (5)      audit LP, A/B test, suivi de perf, checklists qualité
│   ├── exemples/       (4)      CTA, titres, sections (dont e-commerce)
│   └── methodes/       (3)      hiérarchie LP, amplificateur & moteur de conversion
│
├── 03-google-ads/
│   ├── search/         (46)     RSA, mots-clés, DSA, AI Max, niveau de qualité
│   ├── suivi/          (28)     conversions, server-side, outils tiers, suivi avancé des conversions
│   ├── strategie/      (25)     vision compte, structure, panorama des types de campagnes
│   ├── encheres/       (22)     stratégies d'enchères intelligentes, budgets, scaling
│   ├── optimisation/   (15)     santé compte, alertes, recommandations Google
│   ├── audiences/      (15)     signaux, ciblage, liste de clients
│   ├── pmax/           (14)     structure, paramètres, optimisation
│   ├── flux-produit/   (10)     Google Merchant Center, segmentation
│   ├── shopping/       (9)      structure, paramètres, optimisation
│   ├── display/        (7)      Display + contenus partagés avec Video
│   ├── composants/     (5)      extraits structurés, liens annexes
│   ├── demand-gen/     (4)      structure, paramètres, optimisation
│   ├── creatives/      (4)      qualité créatives, cycle de test, création image
│   ├── video/          (3)      campagnes Video YouTube
│   └── compte/         (2)      compte administrateur (MCC), création de compte client
│
├── 04-meta-ads/
│   ├── kpi/            (2)      benchmarks, seuils, modèle KPI
│   ├── lancement/      (4)      types de campagnes
│   ├── suivi/          (2)      conversions API (CAPI), suivi server-side
│   ├── creatives/      (1)      optimisation et test des créatives
│   ├── optimisation/   (2)      diagnostic, matrice, cadence, règles automatiques
│   ├── reporting/      (1)      analyse des performances, cadence d'analyse
│   └── scaling/        (1)      scaler une campagne performante
│
└── 05-tiktok-ads/
    ├── suivi/          (5)      pixel, événements de conversion, Shopify, WordPress
    ├── audiences/      (4)      audience similaire, retargeting, analyse d'audience
    ├── lancement/      (4)      conversions, Lead Gen, dynamique, structure
    ├── creatives/      (3)      stratégie créative, brief UGC, analyse
    ├── optimisation/   (3)      règles automatisées, commentaires, optimisation
    └── compte/         (2)      création de compte, politiques publicitaires
```

---

## Convention de nommage des fichiers

Format : `Catégorie - [Tag optionnel] Nom du document.md`

| Tag dans le nom | Type | Frontmatter | Quand l'utiliser |
|---|---|---|---|
| _(aucun, verbe d'action)_ | **SOP** | `Type: SOP` | Pour exécuter une tâche pas à pas |
| _(aucun, nom de concept)_ | **Fiche technique** | _(pas de Type)_ | Pour consulter une info de référence (Niveau de qualité, Types de correspondance…) |
| _(aucun, nom de concept)_ | **Framework** | `Type: Framework` | Pour décider entre plusieurs options |
| _(aucun, nom de concept)_ | **Exemples** | `Type: Exemples` | Pour réutiliser des modèles copiables |
| `[Review]` | **Checklist** | `Type: Checklist` | Pour valider avant ou après une action |

**Comment l'IA distingue les types** :
- Le tag `[Review]` est explicite dans le nom → checklist
- Pour les autres : se référer au champ `Type` dans le frontmatter
- Pas de champ `Type` = fiche technique de référence

Cas particuliers :
- `01-strategie/fondamentaux/` : type "Fondamental" (concepts business profonds)
- `Guide Meta.md`, `Guide TikTok.md` : guides d'introduction à la plateforme

---

## Structure du frontmatter

Chaque fichier commence par :

```markdown
# Titre du document

> **Plateforme :** Google Ads
> **Catégorie :** Search
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif
...
```

Suivi de la section **"Ce que ce document fait / ne fait pas"** avec liens vers les documents complémentaires.

---

## Statistiques

| Plateforme | Documents |
|---|---|
| 00-contexte/ | gabarits à remplir |
| 01-strategie/ | 51 |
| 02-site-web/ | 18 |
| 03-google-ads/ | 209 |
| 04-meta-ads/ | 14 |
| 05-tiktok-ads/ | 22 |
| **Total (opérationnels)** | **314** |

---

## Licence

Tous droits réservés © impulsion.com. Ce dépôt est la version publique du Corpus Impulsion : vous pouvez le consulter et l'utiliser pour votre propre activité de media buying. Toute reproduction, redistribution ou revente du contenu, en tout ou partie, demande un accord écrit d'impulsion.com. Voir [LICENSE](LICENSE).

La base des skills d'audit est adaptée de [claude-ads](https://github.com/AgriciDaniel/claude-ads) par AgriciDaniel, sous licence MIT.
