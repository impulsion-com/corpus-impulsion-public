# Skills publicitaires (corpus impulsion)

13 skills Claude Code prêts à l'emploi pour **créer**, **auditer** et **planifier** des campagnes publicitaires multi-plateforme, définir une stratégie et construire un site vitrine, à partir des SOP du corpus et des références embarquées dans `skills/references/`.

## Contenu

| Skill (commande) | Rôle | Checks |
|---|---|---|
| `/impulsion-strategie` | **Nouveau projet** : intake interactif → recherche marché → stratégie + plan média (doc + visuel) | (interactif) |
| `/impulsion-creer-campagne-google-ads` | **Création Google Ads** : mots-clés, négatifs, RSA, composants, signaux d'audience, visuels prêts à coller | (création) |
| `/impulsion-creer-campagne-meta` | **Création Meta Ads** : angles, concepts, textes 3 variantes, visuels (safe zone, 4 formats) | (création) |
| `/impulsion-site-vitrine` | **Site vitrine** : monte un site WordPress Media Buyer (pages, SEO, tracking) avec design validé avant déploiement | (interactif) |
| `/impulsion-audit` | Orchestrateur : audit complet multi-plateforme | (délègue) |
| `/impulsion-audit-google-ads` | Audit Google Ads (Search, PMax, YouTube, Demand Gen) | 80 |
| `/impulsion-audit-meta-ads` | Audit Meta Ads (FB, IG, Advantage+, Andromeda) | 50 |
| `/impulsion-audit-tiktok-ads` | Audit TikTok Ads (Spark, Smart+, GMV Max) | 28 |
| `/impulsion-audit-creatives` | Audit des créatives, cross-plateforme | - |
| `/impulsion-audit-landing` | Audit qualité landing page pour ad campaigns | - |
| `/impulsion-audit-budget` | Allocation budgétaire et stratégie d'enchères | - |
| `/impulsion-plan-media` | Plan stratégique avec 12 templates verticals | - |

Le cycle de vie complet d'un compte est couvert : **stratégie** (`strategie`, `plan-media`) → **création** (`creer-campagne-*`) → **audit & optimisation** (`audit-*`).

Les skills sont **autonomes** : leurs documents de référence (benchmarks 2026, système de scoring, compliance, specs créatives, copy frameworks, verticals, checklists d'audit par plateforme) sont embarqués dans `skills/references/`. Le corpus de connaissances (`01-strategie/` … `05-tiktok-ads/`) n'est pas requis pour les faire tourner.

## Installation

### Méthode recommandée : Symlink vers `~/.claude/skills/`

```bash
cd corpus-impulsion
./skills/install.sh
```

Le script crée des symlinks vers `~/.claude/skills/<skill-name>/` pour chaque skill. Avantage : si vous mettez à jour le corpus (`git pull`), les skills sont automatiquement mis à jour.

### Méthode alternative : Copie

```bash
cp -r skills/* ~/.claude/skills/
```

Avantage : skills indépendants du corpus. Inconvénient : pas d'auto-update.

### Vérification

Dans Claude Code, tapez `/` pour voir si les skills apparaissent. Vous devriez voir `/impulsion-audit`, `/impulsion-audit-google-ads`, `/impulsion-audit-meta-ads`, etc.

## Prérequis

- Le corpus impulsion doit être **cloné dans le projet courant** ou accessible via un chemin connu de Claude
- Claude Code installé : https://claude.com/claude-code

## Utilisation

### Audit complet multi-plateforme

```
/impulsion-audit
```

Claude vous demandera le contexte (industrie, budget, plateformes actives), puis lancera les sous-skills en parallèle pour chaque plateforme et générera un rapport agrégé.

### Audit d'une plateforme spécifique

```
/impulsion-audit-google-ads   # Google Ads (80 checks)
/impulsion-audit-meta-ads     # Meta Ads (50 checks)
/impulsion-audit-tiktok-ads   # TikTok Ads (28 checks)
```

### Nouveau projet — stratégie de A à Z (interactif)

```
/impulsion-strategie
```

Claude pose un questionnaire (secteur, offre, objectif, marché, budget, plateformes, maturité), lance une **recherche marché** (deep-research + firecrawl : concurrents, Meta Ad Library, Google Transparency, benchmarks), puis produit une **stratégie complète** : un document `STRATEGIE-<projet>.md` **et** un plan média **visuel** (Artifact). Idéal pour onboarder un nouveau client depuis zéro.

### Créer une campagne — produire les assets prêts à coller

```
/impulsion-creer-campagne-google-ads          # tous les assets Search / PMax / Demand Gen
/impulsion-creer-campagne-google-ads mots-cles # un seul bloc (mots-cles | negatifs | annonces | composants | audiences | visuel)
/impulsion-creer-campagne-meta                 # angles + textes 3 variantes + visuels
/impulsion-creer-campagne-meta textes          # un seul bloc (angles | textes | visuel)
```

À partir du brief projet (`00-contexte/`), Claude produit les **assets de création prêts à coller** dans l'interface : côté Google Ads, les mots-clés (règle 80/20, colonnes sans géo / avec géo), les mots-clés à exclure, les annonces RSA (socle identitaire épinglé), les composants d'annonce et les signaux d'audience (distinction PMax vs Demand Gen) ; côté Meta, les angles et concepts mappés au persona, 3 variantes de textes (pour l'A/B test) et les visuels (safe zone, 4 formats). Ces skills **exécutent la création** ; enchaînez ensuite avec les skills d'audit pour vérifier la qualité.

### Créer un site vitrine Media Buyer (interactif)

```
/impulsion-site-vitrine
```

Claude pose le cadre (infos légales, services, design system), propose **5 directions de design** à valider **avant** tout déploiement, puis monte un site WordPress complet (accueil, une page par service, contact, pages légales), avec textes optimisés SEO et conteneur GTM. Stack recommandé : **Kadence** (thème) et **Rank Math** (SEO), plus une extension de cache selon l'hébergeur. Basé sur la SOP `02-site-web/construction/Construction - Créer un site vitrine de Media Buyer avec Claude Code.md`.

### Plan stratégique (référence, non interactif)

```
/impulsion-plan-media saas        # Plan SaaS B2B
/impulsion-plan-media ecommerce   # Plan E-commerce DTC
/impulsion-plan-media local       # Plan service local
```

### Autres workflows

```
/impulsion-audit-creatives   # Audit des créatives cross-plateforme
/impulsion-audit-landing     # Audit landing page
/impulsion-audit-budget      # Allocation budgétaire
```

## Origine

Skills adaptés depuis [claude-ads](https://github.com/AgriciDaniel/claude-ads) par AgriciDaniel (License MIT). Le contenu original des SKILL.md a été conservé en anglais pour préserver la précision des règles d'audit.

Adaptations pour impulsion :
- Renommage en commandes brandées `/impulsion-...`
- Documents de référence embarqués dans `skills/references/` (skills autonomes)
- Retrait des skills LinkedIn et Microsoft (plateformes non couvertes par le corpus)

Skills **natifs impulsion** (rédigés pour le corpus, en français) : `impulsion-strategie`, `impulsion-site-vitrine`, `impulsion-creer-campagne-google-ads`, `impulsion-creer-campagne-meta`. Les deux skills de création s'appuient directement sur les SOP du corpus (`03-google-ads/`, `04-meta-ads/`, `01-strategie/`) et reprennent l'intelligence tactique des prompts du Hub du Media Buyer.

## Licence

- Structure des skills : MIT (attribution AgriciDaniel)
- Contenu du corpus référencé : tous droits réservés © impulsion.com, voir `LICENSE` à la racine
