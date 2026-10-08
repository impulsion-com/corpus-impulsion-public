---
name: impulsion-strategie
description: "Prépare une stratégie de media buying pour un NOUVEAU projet/client, de zéro. Recueille le contexte via un questionnaire interactif (secteur, offre, objectif, marché, budget, plateformes, maturité), lance une recherche marché (deep-research + firecrawl : concurrents, Ad Libraries, benchmarks), puis produit une stratégie + plan média (doc + plan visuel). Use when user says nouveau projet, prépare une stratégie, plan média, stratégie media buying, onboarding client, new project strategy, media plan from scratch."
argument-hint: "[secteur optionnel : saas | ecommerce | local | b2b | infoproduit | app | immo | sante | finance | agence]"
license: MIT (skill base) + impulsion.com (corpus content)
---

# impulsion-strategie — Stratégie & plan média pour un nouveau projet

> S'appuie sur le corpus impulsion embarqué dans `skills/references/`. Chemins relatifs depuis la racine du repo `corpus-impulsion/`.
> Objectif : partir d'un projet vierge et livrer une **stratégie de media buying actionnable** (positionnement → plateformes → budget → archi campagnes → créas → tracking → roadmap).

Ce skill est **interactif** : il pose des questions avant d'agir. Ne devine pas le contexte — collecte-le.

---

## Étape 1 — Intake interactif (AskUserQuestion)

Pose les questions ci-dessous avec l'outil **AskUserQuestion** (popup). Regroupe-les en **un seul appel de 4 questions**. Si l'utilisateur a déjà donné une info dans son message (ex. « stratégie pour ma boîte SaaS à 3k€/mois »), **pré-remplis** et ne la redemande pas.

1. **Secteur (vertical)** — header `Secteur`. ⚠️ `AskUserQuestion` plafonne à **4 options** : présente 4 buckets larges — **E-commerce** · **SaaS / B2B** · **Service local** · **Infoproduit / Coaching** (l'option « Autre » automatique couvre le reste). Puis, via la relance texte ci-dessous, **mappe** vers le template précis parmi les 12 : `Vertical - {SaaS, E-commerce, E-commerce Creative, Service local, B2B Entreprise, Infoproduits, App mobile, Immobilier, Sante, Finance, Agence, Generique}.md`.
2. **Objectif principal** — header `Objectif` : Ventes / e-commerce · Leads / RDV · Notoriété · Installs app · Appels. + **marché géographique & langue** (via l'option « Autre » ou une relance courte).
3. **Budget mensuel** — header `Budget` : < 1 000 € · 1 000–3 000 € · 3 000–10 000 € · > 10 000 €. → détermine le nombre de plateformes viables (cf. minimums).
4. **Plateformes + maturité** — header `Plateformes`, **multiSelect** : Google Ads · Meta Ads · TikTok Ads · Aucune idée (à recommander) · Déjà actif (préciser perfs). → capte les plateformes envisagées et le statut pub actuel.

Après le popup, pose **une relance texte courte** pour les champs libres essentiels non couverts :
- Description de l'**offre / produit** (1-2 phrases) + **URL du site** si dispo.
- **Concurrents** connus (2-3 noms/URLs) — utile pour la recherche.

⚠️ Si un champ critique reste vide (offre, marché, budget), redemande-le avant de continuer. Tout le reste du skill en dépend.

---

## Étape 2 — Recherche marché (deep-research + firecrawl)

Lance **les deux** en parallèle, avec les infos de l'intake :

**A. deep-research** (skill `deep-research`) — question construite dynamiquement :
> « Marché du [secteur/offre] en [marché géo] en 2026 : taille & dynamique, audience cible et intentions d'achat, saisonnalité, canaux publicitaires dominants, benchmarks CPM/CPC/CPA/ROAS observés, contraintes réglementaires (RGPD, secteurs sensibles). »

**B. firecrawl** (skills `firecrawl-search` / `firecrawl-scrape`) — reconnaissance concurrentielle :
- Sites & pages de prix des concurrents cités (positionnement, offre, promesses).
- **Meta Ad Library** (`facebook.com/ads/library`) et **Google Ads Transparency Center** pour le secteur/concurrents : formats, angles, volume de créas actives.
- Requêtes du secteur pour repérer les acteurs qui enchérissent.

**Synthèse** : extrais 5-8 insights actionnables (opportunités, angles sous-exploités, niveau de concurrence par plateforme, fourchettes de coûts réalistes). Croise avec les benchmarks du corpus :
- `skills/references/01-strategie/benchmarks/Benchmarks - Repères de performance 2026.md`
- `skills/references/01-strategie/benchmarks/Benchmarks - Budgets minimums viables.md`

---

## Étape 3 — Synthèse stratégique (corpus)

1. **Template vertical** — charge `skills/references/01-strategie/verticals/Vertical - <secteur>.md` (Generique si non listé).
2. **Sélection des plateformes** — `skills/references/01-strategie/analyse/Analyse - Méthode allocation et scaling.md`. Recoupe : audience par plateforme, adéquation offre, **minimums de budget** (ne recommande pas une plateforme sous son seuil viable), cycle de vente & attribution.
3. **Budget 70/20/10** — Proven 70 % / Scaling 20 % / Testing 10 %, réparti sur les plateformes retenues, avec pacing mois 1→6.
4. **Architecture de campagnes** — nomenclature `[Plateforme]_[Objectif]_[Audience]_[Geo]_[Date]` + structure Brand / Prospecting (tunnel haut→bas) / Retargeting / Testing. (Réutilise les patterns de `impulsion-plan-media`.)
5. **Stratégie créative** — piliers (douleur, preuve sociale, démo, offre, éducation) + plan de production par priorité. Réfs : `skills/references/01-strategie/redaction/Rédaction - Méthodes publicitaires.md`, `skills/references/01-strategie/specs-creatives/Specs - Spécifications créatives cross-plateforme.md`.
6. **Tracking & conformité** — `skills/references/01-strategie/conformite/Conformité - Suivi cross-plateforme.md` + `Conformité - Confidentialité et RGPD 2026.md`. Client-side + server-side (Enhanced Conversions, CAPI, Events API) à poser AVANT lancement.
7. **Roadmap** — Phase 1 Fondations (S1-2) · Phase 2 Lancement (S3-4) · Phase 3 Optimisation (S5-8, règle des 3x kill) · Phase 4 Scaling (S9-12, règle des 20 %).

> Pour la planification détaillée (KPI cibles, pacing, roadmap complète), tu peux **déléguer à `impulsion-plan-media`** avec le secteur détecté, puis enrichir avec les insights de la recherche marché.

---

## Étape 4 — Livrables

### A. Document `STRATEGIE-<projet>.md`
Écris-le à la racine du projet courant, en suivant `references/template-strategie.md` (bundle de ce skill). Il contient : synthèse exécutive, contexte & marché (recherche citée), positionnement, plateformes retenues + justification, budget 70/20/10, architecture de campagnes, stratégie créative, plan tracking/conformité, roadmap 90 jours, KPI cibles, risques.

### B. Plan média **visuel** (Artifact)
Charge d'abord le skill **`artifact-design`**, puis génère un Artifact HTML autonome :
- Vue **structure de campagnes** (arbre par plateforme) + **répartition budget 70/20/10** + **roadmap 4 phases** sur une timeline.
- Thème clair/sombre, responsive, autonome (CSS/JS inline). Titre stable, favicon 🎯.

---

## Garde-fous

- **Cite** chaque doc du corpus utilisé (chemin relatif) pour que l'utilisateur puisse le rouvrir.
- **Vérifie budget vs minimums** : mieux vaut 1 plateforme bien financée que 3 sous-alimentées.
- **RGPD 2026** : consent mode + server-side non négociables ; signale les secteurs sensibles (santé, finance).
- Reste **factuel** : distingue ce qui vient de la recherche (cité) de ce qui vient des heuristiques du corpus. Pas d'invention de chiffres marché — si non trouvés, dis-le.
- Le contexte client détaillé peut vivre dans `00-contexte/projet-N/` — propose de l'y consigner pour les futures tâches.
