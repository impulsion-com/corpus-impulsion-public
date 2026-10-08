---
name: impulsion-creer-campagne-meta
description: "Produit tous les ASSETS de création d'une campagne Meta Ads (Facebook & Instagram) prêts à l'emploi, à partir du brief projet : sélection des angles marketing et des concepts créatifs mappés au persona, textes publicitaires (3 variantes primary text + headline + description couvrant 3 angles pour l'A/B test), et visuels (safe zone Meta, 4 formats 1:1 / 4:5 / 9:16 / 1.91:1). Use when user says créer une campagne Meta, lancer une pub Facebook/Instagram, écrire les textes pub Meta, générer les créatives, choisir les angles, create Meta campaign, ad copy, creatives, angles, hooks."
argument-hint: "[angles | textes | visuel | tout]  (défaut : tout)"
license: MIT (skill base) + impulsion.com (corpus content)
---

# impulsion-creer-campagne-meta — Produire les assets d'une campagne Meta Ads

> S'appuie sur les SOP du corpus impulsion. Chemins relatifs depuis la racine du repo `corpus-impulsion/`.
> Conçu pour être invoqué quand le corpus est cloné dans le projet courant (le brief client vit dans `00-contexte/`).
> Objectif : transformer un brief projet en **créatives et textes prêts à produire**, alignés angle / concept / format.

Ce skill **produit du livrable**. Il ne remplace pas la stratégie (`impulsion-strategie`) ni l'audit (`impulsion-audit-meta-ads`) : il exécute la **création** des annonces une fois le cadre posé.

---

## Étape 0 — Charger le brief + compléter les champs tactiques

1. **Lis le brief projet** dans `00-contexte/projet-N/` (par défaut `projet-1/`) : `entreprise.md`, `offre.md`, `cible.md`, `finance.md`. Récupère : secteur, offre précise, persona (douleurs, désirs), objectif de la pub + KPI.
   - Si un champ critique porte encore `_À compléter._`, **arrête-toi et demande l'info** avant de produire.
2. **Complète les champs manquants** (en **un seul appel `AskUserQuestion`**, ou une relance texte si l'outil n'est pas disponible) :
   - **Différenciateurs réels** : preuves, chiffres, garanties (rien d'inventé).
   - **Preuve sociale disponible** : avis, résultats clients, nombre de clients, notes.
   - **Offre d'appel / promotion** s'il y en a une.
   - **Ton de marque** et **charte** (couleurs, typo, logo) — pour la cohérence visuelle.

> **Règle d'or :** n'invente jamais un chiffre, un témoignage, un résultat ou une garantie absent du brief. S'il manque une preuve, produis un gabarit « à compléter » et signale-le.

Selon l'argument (`angles`, `textes`, `visuel`), ne produis que le bloc demandé. Sans argument (`tout`), enchaîne les blocs 1 à 3.

---

## Bloc 1 — Angles marketing + concepts créatifs

**Docs :** `01-strategie/offre/Offre - Travailler vos angles d'offre.md`, `01-strategie/redaction/Rédaction - Niveaux de conscience.md`, `04-meta-ads/lancement/Lancement - Les 5 typologies de campagne.md`.

**Sélectionne les angles et concepts** pertinents pour CE persona (ne coche pas tout : 3 à 5 angles priorisés).

**Angles marketing** (choisir parmi) : douleur, désir, avant/après, comparaison, preuve sociale, autorité, urgence, économie, peur/FOMO, curiosité, identification, storytelling.

**Concepts créatifs** (choisir parmi) : facecam UGC, micro-trottoir, démo produit, storytelling fondateur, avant/après, comparaison, témoignage, tutoriel, unboxing, réaction/POV, listicle, behind the scenes.

**Livrable** — un tableau `Angle | Pourquoi il colle à ce persona | Concept créatif servant l'angle | Niveau de conscience visé`. Priorise du plus chaud (douleur/preuve sociale, souvent le plus performant en acquisition) au plus froid. Ces angles/concepts alimentent ensuite les textes (bloc 2) et les visuels (bloc 3) : **garde la cohérence**.

---

## Bloc 2 — Textes publicitaires (3 variantes)

**Docs :** `01-strategie/redaction/Rédaction - Méthodes de copie (AIDA, PAS, BAB, 4U).md`, `Rédaction - Niveaux de conscience.md`, `Rédaction - Principes de persuasion (Cialdini).md`.

Génère **3 variantes**, chacune sur un **angle différent** (pour permettre l'A/B test). Pour chaque variante :
1. **Angle + concept** choisis (et pourquoi ils collent à la cible).
2. **Texte principal (primary text)** — 3-5 lignes max, **accroche forte dès la 1re ligne** (question, stat choc, affirmation forte qui stoppe le scroll).
3. **Titre (headline)** — 5-8 mots max.
4. **Description** — 1 ligne.

**Règles :** commence par une accroche qui stoppe le scroll ; emojis avec parcimonie (2-3 max) ; CTA clair à la fin ; pas de majuscules abusives ; **n'invente aucun chiffre ni témoignage** (uniquement les preuves du brief). Les 3 variantes couvrent 3 angles distincts.

Présente en tableau ou en blocs copiables (primary text / headline / description séparés), prêts à coller dans le gestionnaire de publicités Meta.

---

## Bloc 3 — Visuels (créatives)

**Docs :** `04-meta-ads/creatives/Creatives - Optimiser les créatives.md`, `01-strategie/specs-creatives/Specs - Spécifications créatives cross-plateforme.md` (si présent dans les références).

Pour chaque visuel : **rappelle l'angle et le concept** retenus (bloc 1) et **décris la composition** (sujet, ambiance, texte affiché si statique, ordre de lecture).

**Contraintes de production :**
- Reprendre la **charte du site** (couleurs, typographies, logo, ton visuel) pour la cohérence de marque.
- **Safe zone Meta** : garder le texte clé, le logo et les éléments importants au centre. Éviter le haut, le bas et les bords (~10 % de marge), masqués par les UI (nom de profil, CTA, barre de progression, mention sponsorisée).
- Éviter un visuel **surchargé de texte** (nuit à la diffusion et à la lisibilité mobile).

**Formats à livrer :**
- 1:1 (1080 × 1080) — fil d'actualité
- 4:5 (1080 × 1350) — fil mobile
- 9:16 (1080 × 1920) — story / reel
- 1.91:1 (1200 × 628) — paysage (colonne de droite, Audience Network, in-stream)

**Production :** si un outil de génération d'images est disponible dans l'environnement, génère les visuels ; sinon, **livre le prompt image finalisé** (par format) prêt à coller dans un générateur (gpt-image, Gemini/Nano Banana, Midjourney…), ou un brief de tournage si le concept est vidéo (UGC, facecam…).

---

## Livrable global

Sans argument (`tout`), écris un document **`CAMPAGNE-META-<projet>.md`** à la racine du projet courant, regroupant : angles/concepts priorisés, 3 variantes de textes, plan visuel par format. Avec un argument précis, produis uniquement ce bloc.

## Garde-fous

- **Cohérence angle → texte → visuel** : les 3 blocs racontent la même histoire, pas trois directions décorrélées.
- **Zéro invention** : chiffres, témoignages, résultats, garanties → uniquement le brief. Sinon, gabarit « à compléter » signalé.
- **Cite** chaque doc du corpus utilisé (chemin relatif).
- Ce skill **crée** ; pour vérifier la qualité des créatives d'un compte existant (fatigue, diversité), enchaîne avec `impulsion-audit-meta-ads` ou `impulsion-audit-creatives`.
