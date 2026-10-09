# Changelog

Toutes les évolutions notables du Corpus Impulsion. Format basé sur [Keep a Changelog](https://keepachangelog.com/fr/1.1.0/).

---

## [2.5.0] - 2026-10-09

### Ajouté
- **Fondations du message : recherche, mécanismes, croyances, brief d'offre.** Six documents dans `01-strategie/`, qui portent le corpus de 308 à **314 documents** :
  - `cible/Cible - Mener la recherche voix du client.md` (SOP) : sources internes et publiques, 18 questions de recherche, journal de citations sourcées, prompt de recherche approfondie.
  - `cible/Cible - [Review] Qualité de l'avatar.md` (checklist) : refuse toute citation sans source.
  - `redaction/Rédaction - Sophistication du marché.md` (fiche) : les 5 stades, le diagnostic et le croisement avec les niveaux de conscience.
  - `offre/Offre - Mécanisme du problème et de la solution.md` (fiche).
  - `offre/Offre - Définir les croyances nécessaires.md` (SOP) : six croyances au maximum, chacune reliée à une preuve et à un emplacement, utilisable comme grille d'audit.
  - `offre/Offre - Rédiger le brief d'offre.md` (SOP).
- `00-contexte/projet-1/recherche.md` : gabarit du journal de recherche.

### Modifié
- `00-contexte/projet-1/cible.md` : niveau de conscience, solutions déjà essayées, banque de citations avec source, parcours émotionnel, points à vérifier.
- `00-contexte/projet-1/offre.md` : devient le brief d'offre (sophistication, idée directrice, mécanismes, objections et réponses, croyances, ce qu'il ne faut jamais promettre).
- `00-contexte/projet-1/marché.md` : section « Solutions déjà utilisées par le marché ».
- `Cible - Définir l'avatar (ICP).md` : règle de la source, renvoi vers la recherche et la checklist.
- Skill `impulsion-strategie` : recherche voix du client en étape 2, remplissage de `recherche.md`, `cible.md` et `offre.md`, sections « Avatar & voix du client » et « Positionnement & message » dans le gabarit de stratégie.
- Skill `impulsion-creer-campagne-meta` : les angles partent des croyances nécessaires, une croyance par créative.

---

## [2.4.0] - 2026-07-29

### Ajouté
- **Packaging en plugin Claude Code.** Le corpus est désormais installable comme plugin (`.claude-plugin/plugin.json` + `.claude-plugin/marketplace.json`) : une fois installé, ses skills et ses documents sont disponibles dans **toutes** les sessions Claude Code, quel que soit le dossier de travail. Le dossier reste aussi utilisable « posé dans un projet » comme avant : un seul artefact couvre les deux usages.
- **13e skill `impulsion-corpus` (routeur).** Localise la racine du corpus depuis n'importe quel dossier, cadre le contexte client, trouve le bon document et délègue aux 12 skills spécialisées. C'est ce qui permet d'utiliser les skills hors du dossier du corpus (elles supposaient jusqu'ici que le corpus était le dossier courant).
- **Outillage d'installation et de distribution** : `INSTALL-PLUGIN.md` (guide), `installer-plugin.ps1` (lien local sous Windows) et `construire-zip.py` (archive partageable, encapsulée dans un dossier avec des séparateurs `/`).
- `skills/impulsion-corpus/scripts/generer_index.py` et `references/index-corpus.md` : index navigable régénérable des 308 documents, utilisé par le routeur.

### Modifié
- Comptage des skills porté de 12 à **13** (`README.md`, `skills/README.md`, `CLAUDE.md`, `skills/install.sh` ; ajout d'`impulsion-corpus` à l'installeur).

---

## [2.3.0] - 2026-07-20

### Ajouté
- **Deux skills de création de campagne**, qui portent le corpus de 10 à **12 skills** et complètent le cycle de vie stratégie → création → audit :
  - `skills/impulsion-creer-campagne-google-ads/` : produit les assets Search / PMax / Demand Gen prêts à coller (mots-clés avec règle 80/20 et colonnes sans géo / avec géo, mots-clés à exclure, annonces RSA avec socle identitaire épinglé, composants d'annonce, signaux d'audience PMax vs Demand Gen, visuels). Argument modulaire : `mots-cles | negatifs | annonces | composants | audiences | visuel | tout`.
  - `skills/impulsion-creer-campagne-meta/` : produit les assets Meta (angles + concepts mappés au persona, 3 variantes de textes pour l'A/B test, visuels safe zone en 4 formats). Argument modulaire : `angles | textes | visuel | tout`.
  - Les deux s'appuient sur les SOP du corpus (`03-google-ads/`, `04-meta-ads/`, `01-strategie/`) et sur le brief projet (`00-contexte/`). Ils reprennent l'intelligence tactique des prompts du Hub du Media Buyer.

### Modifié
- `skills/README.md`, `skills/install.sh`, `CLAUDE.md` : mise à jour à **12 skills**, ajout de la famille « création ».

---

## [2.2.3] - 2026-07-15

### Modifié
- `02-site-web/construction/Construction - Créer un site vitrine de Media Buyer avec Claude Code.md` : le doc SOP est aligné sur le skill. Le design se fait en **vraies maquettes HTML** (pages autonomes, sans WordPress), le **nombre de directions est demandé** (2 à 5, avec avertissement sur le temps), **FlyingPress retiré** (le cache n'est plus imposé au lancement ; LiteSpeed Cache si besoin plus tard). Section « Stack recommandé » = stack de départ minimal et gratuit (Kadence + Rank Math + GTM).

---

## [2.2.2] - 2026-07-15

### Modifié
- `skills/impulsion-site-vitrine/` : simplification du stack. Retrait de **FlyingPress** (payante). Le **cache n'est plus une extension imposée au lancement** (l'hébergeur le gère souvent ; Hostinger tourne sur LiteSpeed) ; si besoin plus tard, **LiteSpeed Cache** (gratuit). Stack de départ minimal et 100 % gratuit : **Kadence** (thème) + **Rank Math** (SEO) + conteneur GTM.

---

## [2.2.1] - 2026-07-15

### Modifié
- `skills/impulsion-site-vitrine/` : l'intake passe désormais par des **prompts interactifs** (`AskUserQuestion`, popups) en plusieurs vagues, au lieu de questions en texte. Le design est proposé sous forme de **vraies maquettes HTML** (pages autonomes à ouvrir dans le navigateur, styles nettement différents, sans WordPress). Le **nombre de directions (2 à 5) est demandé en popup**, avec un avertissement sur le temps de génération ; le choix final se fait via popup.

---

## [2.2.0] - 2026-07-15

Ajout du skill Claude Code pour la création de site vitrine.

### Ajouté
- `skills/impulsion-site-vitrine/` : skill Claude Code (`/impulsion-site-vitrine`) qui pilote la création d'un site vitrine Media Buyer WordPress de façon interactive (intake, 5 propositions de design validées avant déploiement, montage, relecture). Reprend la SOP `02-site-web/construction/Construction - Créer un site vitrine de Media Buyer avec Claude Code.md`. Stack : Kadence, FlyingPress, Rank Math.

### Modifié
- `skills/README.md` et `skills/install.sh` : 10 skills au total (ajout de `impulsion-site-vitrine`).

---

## [2.1.0] — 2026-07-14

Ajout d'une SOP de création de site vitrine avec Claude Code.

### Ajouté
- `02-site-web/construction/Construction - Créer un site vitrine de Media Buyer avec Claude Code.md` : SOP + prompt prêt à copier-coller pour monter un site vitrine WordPress complet (accueil, une page par service, contact, pages légales, SEO, tracking) en pilotant Claude Code. Le design se valide avant déploiement (5 propositions).

---

## [2.0.2] — 2026-07-09

Ajustements de l'arbre d'architecture.

### Modifié
- `00-contexte/` : fichier d'identifiants renommé `ID des comptes pubs.md` → `comptes pubs.md` (alignement de l'arbre).
- Arbre d'architecture : lignes `Guide Meta.md` et `Guide TikTok.md` retirées (les guides restent à la racine de leurs dossiers).

---

## [2.0.1] — 2026-07-09

Uniformisation de l'arbre d'architecture (`README.md`, `CLAUDE.md`).

### Modifié
- `00-contexte/` : `ID des comptes pubs.md` listé avant les dossiers projet.
- Descriptions des sous-dossiers reformulées et passées en minuscules (les acronymes et noms de produits sont conservés : PMax, RSA, KPI, Consent Mode, etc.).

---

## [2.0.0] — 2026-07-09

Refonte structurelle : renumérotation des dossiers, nouveau dossier de contexte client, réorganisation de Meta Ads.

### Ajouté
- **`00-contexte/`** : dossier de contexte client à remplir (gabarits). Un dossier par projet (`Projet 1/2/3`) avec 6 sections — entreprise, finance, marché, offre, cible, système d'acquisition — plus `ID des comptes pubs.md` pour centraliser les identifiants de comptes.
- L'agent IA est désormais invité à consulter ce contexte **avant** toute tâche (voir `CLAUDE.md`).

### Modifié (structure)
- **Renumérotation et réordonnancement des dossiers** :
  - `05-landing-pages/` → `02-site-web/`
  - `02-google-ads/` → `03-google-ads/`
  - `03-meta-ads/` → `04-meta-ads/`
  - `04-tiktok-ads/` → `05-tiktok-ads/`
- **Meta Ads** : passage de 9 documents à plat à 7 sous-dossiers thématiques (kpi, lancement, tracking, creatives, optimisation, reporting, scaling) ; `Guide Meta.md` reste à la racine.
- Arbre d'architecture (`README.md`) détaillé pour Meta, TikTok et Site Web (annotations par sous-dossier).

### Corrigé
- **87 liens internes cassés** réparés (références résiduelles à d'anciens dossiers `mental-models/`, `theory/`, `checklists/` jamais mis à jour après la traduction FR).
- Tous les liens inter-dossiers (`../../0X-…`) mis à jour suite à la renumérotation. **0 lien cassé** sur 4 147 liens vérifiés.

### Note
- Le contenu opérationnel reste de **292 documents**. Le dossier `00-contexte/` fournit des gabarits (non comptés dans le total).

---

## [1.0.0] — 2026-05-08

Première version publique du Corpus Impulsion.

### Contenu
- **292 documents** opérationnels en français
- **5 zones thématiques** : Stratégie cross-plateforme, Google Ads, Meta Ads, TikTok Ads, Landing Pages
- **32 sous-dossiers** organisés par sujet (Search, PMax, Tracking, Bidding, Audiences, etc.)

### Conventions
- **Nommage** : `Catégorie - [Tag optionnel] Nom.md`
  - Verbe d'action → SOP
  - Concept → Fiche technique / Framework / Exemples
  - `[Review]` → Checklist de validation
- **Frontmatter standard** (4 champs) : `Plateforme`, `Catégorie`, `Type`, `Mis à jour`
- **Terminologie Google Ads** alignée sur la documentation officielle française (Niveau de qualité, Mots-clés à exclure, Stratégies d'enchères intelligentes, Insights sur les enchères, etc.)

### Versioning
- **Major (X.0.0)** : refonte structurelle
- **Minor (1.X.0)** : ajout d'une plateforme ou d'un nouveau bloc thématique (>10 documents)
- **Patch (1.0.X)** : ajouts ou mises à jour ponctuels
