# Segmentation de flux produit

> **Plateforme :** Google Ads
> **Catégorie :** Flux Produit
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Liste les tactiques de segmentation de flux produit pour les campagnes Shopping (Standard Shopping et Performance Max Feed-only) utilisant les custom labels.

---

## Ce que c'est / Ce que ce n'est PAS

**Ce document :**

- Liste les tactiques de segmentation et leurs cas d'usage
- Fournit des exemples d'implémentation de custom labels
- Explique quand chaque tactique s'applique

**Ce document NE fait PAS :**

- Fournir la configuration étape par étape du flux (Voir : *SOP - Set Up Product Feed*)
- Expliquer les décisions de structure de campagne (Voir : *Shopping Campaign Structure Mental Model*)
- Fournir la configuration d'outils pour la segmentation par performance (Voir : *SOP - Set Up Performance-Based Shopping Segmentation*)
- Fournir la configuration du modèle de scoring (Voir : *SOP - Set Up Scoring Model Segmentation*)

---

## Vue d'ensemble des custom labels

| Label | Attribut flux | Utiliser pour |
|-------|-------------|---------------|
| Label 0 | `custom_label_0` | Segmentation primaire (ex : tier de performance) |
| Label 1 | `custom_label_1` | Segmentation secondaire (ex : tier de marge) |
| Label 2 | `custom_label_2` | Flags promotionnels (ex : on_sale) |
| Label 3 | `custom_label_3` | Statut d'inventaire (ex : low_stock) |
| Label 4 | `custom_label_4` | Saisonnier/cycle de vie (ex : summer, new) |

> 💡 **Vous avez 5 custom labels (0-4) :** Planifiez votre stratégie de labeling avant l'implémentation. Commencez avec une tactique, ajoutez des dimensions seulement quand nécessaire.

---

## Tactiques par tier de segmentation

| Tier | Approche primaire | Blocs constitutifs (empilables) | Infrastructure |
|------|-------------------|--------------------------------|----------------|
| **Tier 1** | Par catégorie | Bestsellers, Soldes, Saisonnalité, Inventaire, Cycle de vie, Compétitivité prix | Règles de flux uniquement |
| **Tier 2** | Par performance (Hero/Sidekick/Villain/Zombie) | Tous les blocs Tier 1 | Outil de labeling requis |
| **Tier 3** | Par score composite | Intègre plusieurs variables en un score unifié | Outil de gestion de flux + pipelines de données |

> ↪️ **Pour les recommandations de sélection de tier et le cadre de segmentation :** Voir [Product Feed Segmentation Mental Model](<Flux Produit - Choisir une segmentation.md>).

---

## Tactiques de segmentation

### 1️⃣ Par catégorie (Tier 1)

Segmenter les produits par type de produit pour différents objectifs ROAS.

| Catégorie exemple | Objectif ROAS | Justification |
|-------------------|-------------|---------------|
| Électronique | 400% | Faible marge, forte concurrence |
| Accessoires | 250% | Forte marge, achats impulsifs |
| Déstockage | 150% | Priorité de liquidation |

| Utiliser quand | Ignorer quand |
|---------------|---------------|
| Les catégories ont des marges différentes | Boutique mono-catégorie |
| Les catégories ont des audiences différentes | Les catégories performent de manière similaire |
| Besoin d'objectifs spécifiques par catégorie | Petit catalogue (<50 SKUs) |

**Fréquence de mise à jour :** Rarement (structurel)

---

### 2️⃣ Bestsellers vs. Réguliers (Bloc Tier 1)

Segmentation simple à deux tiers pour les performeurs prouvés.

| Segment | Critères | Stratégie |
|---------|----------|-----------|
| **bestseller** | Top 50 SKUs par unités vendues (90 jours) | Allocation budgétaire plus élevée |
| **regular** | Tout le reste | Optimisation standard |

| Utiliser quand | Ignorer quand |
|---------------|---------------|
| Des bestsellers clairs existent | Le revenu est réparti uniformément |
| Les bestsellers risquent la sous-diffusion | Déjà en tiers de performance |

**Fréquence de mise à jour :** Mensuelle

---

### 3️⃣ Soldes vs. Prix régulier (Bloc Tier 1)

Séparer les produits promotionnels pour un boost de visibilité.

| Segment | Signal flux | Stratégie |
|---------|-----------|-----------|
| **on_sale** | `sale_price` renseigné | Allocation budgétaire plus élevée, maximiser la visibilité |
| **regular_price** | Pas de `sale_price` | Optimisation standard |

| Utiliser quand | Ignorer quand |
|---------------|---------------|
| Promotions à durée limitée | Pricing permanent |
| Les articles en promo ont besoin d'un boost de visibilité | Promotions site-wide |

**Fréquence de mise à jour :** Au rythme des promotions

> Quand `sale_price` < `price`, Google affiche le badge soldes automatiquement. Les custom labels fournissent un contrôle de segmentation additionnel.

---

### 4️⃣ Par saisonnalité (Bloc Tier 1)

Segmenter les produits saisonniers pour aligner les budgets avec les cycles de demande.

| Segment | Produits exemples | Période active |
|---------|-------------------|----------------|
| **summer** | Plage, outdoor, temps chaud | Avr-Sep |
| **winter** | Temps froid, fêtes | Oct-Mar |
| **holiday** | Cadeaux, décoration saisonnière | Nov-Déc |
| **evergreen** | Pertinence toute l'année | Toujours |

| Utiliser quand | Ignorer quand |
|---------------|---------------|
| Patterns saisonniers clairs | Catalogue evergreen |
| Mode, fêtes, dépendant de la météo | Demande constante toute l'année |

**Fréquence de mise à jour :** Saisonnière

---

### 5️⃣ Par niveau d'inventaire (Bloc Tier 1)

Segmenter par disponibilité du stock pour gérer la logistique.

| Segment | Seuil | Stratégie |
|---------|-------|-----------|
| **high_stock** | >100 unités | Pousser agressivement, écouler l'inventaire |
| **normal_stock** | 20-100 unités | Optimisation standard |
| **low_stock** | <20 unités | Réduire le budget, surveiller |
| **out_of_stock** | 0 unités | Exclure du flux |

| Utiliser quand | Ignorer quand |
|---------------|---------------|
| Les niveaux de stock varient significativement | Dropship/sur commande |
| La survente est problématique | Inventaire illimité |

**Fréquence de mise à jour :** Quotidienne (rotation rapide) à hebdomadaire (rotation lente)

---

### 6️⃣ Par stade du cycle de vie (Bloc Tier 1)

Segmenter par âge du produit pour les stratégies de lancement et déstockage.

| Segment | Critères | Stratégie |
|---------|----------|-----------|
| **new** | Ajouté il y a <30 jours | Budget découverte, collecter des données |
| **core** | 30-180 jours, performant | Optimiser pour l'efficacité |
| **mature** | 180-365 jours | Maintenir, surveiller le déclin |
| **end_of_life** | >365 jours OU discontinué | Déstockage, réductions agressives |

| Utiliser quand | Ignorer quand |
|---------------|---------------|
| Lancements fréquents de nouveaux produits | Catalogue statique |
| Les produits vieillissants ont besoin de déstockage | Pas de patterns de cycle de vie |

**Fréquence de mise à jour :** Hebdomadaire à mensuelle

---

### 7️⃣ Par compétitivité prix (Bloc Tier 1)

Segmenter par position de prix sur le marché.

| Segment | Critères | Stratégie |
|---------|----------|-----------|
| **cheapest** | Prix le plus bas du marché | Budget plus élevé : taux de victoire attendu élevé |
| **competitive** | À moins de 5% du prix le plus bas | Budget standard |
| **parity** | 5-15% au-dessus du plus bas | Surveiller de près |
| **overpriced** | >15% au-dessus du plus bas | Budget réduit OU corriger le pricing |

| Utiliser quand | Ignorer quand |
|---------------|---------------|
| Marché concurrentiel, acheteurs sensibles au prix | Produits uniques, pas de concurrents |
| Données de prix disponibles | Achats portés par la marque |

**Fréquence de mise à jour :** Quotidienne à hebdomadaire

**Sources de données :** Rapport de compétitivité prix Google Merchant Center, outils tiers (Prisync, Competera)

---

### 8️⃣ Par performance (Tier 2)

Segmenter les produits selon les données de performance historiques en utilisant un outil de labeling qui classifie les produits en tiers Hero, Sidekick, Villain et Zombie.

> ↪️ **Pour les définitions des tiers, les recommandations de part de budget, les stratégies par objectif et la règle ROAS cible :** Voir [Product Feed Segmentation Mental Model](<Flux Produit - Choisir une segmentation.md>) (section Tier 2).

**Implémentation custom label :**

| Tier | Valeur Custom Label | Traitement campagne |
|------|---------------------|---------------------|
| **Hero** | `custom_label_0 = "hero"` | Allocation budgétaire plus élevée |
| **Sidekick** | `custom_label_0 = "sidekick"` | Allocation budgétaire plus élevée |
| **Villain** | `custom_label_0 = "villain"` | Budget restreint |
| **Zombie** | `custom_label_0 = "zombie"` | Budget dédié (forcer la visibilité) |

> 💡 **Outil requis :** Cette tactique nécessite un outil de labeling (ProductHero Labelizer ou Profitmetrics Shopping Booster) pour classifier dynamiquement les produits et synchroniser les labels avec votre flux.

| Utiliser quand | Ignorer quand |
|---------------|---------------|
| 90+ jours de données de conversion | Nouvelle boutique, historique insuffisant |
| Différenciation de performance claire | Tous les produits performent de manière similaire |
| Les contraintes budgétaires exigent de l'efficacité | Budget illimité |
| Infrastructure outil/script disponible | Pas d'accès aux outils ou ressources techniques |

**Fréquence de mise à jour :** Hebdomadaire à mensuelle (l'outil gère la classification ; revoir les seuils mensuellement)

---

### 9️⃣ Par score composite (Tier 3)

Combiner plusieurs variables en un score pondéré unique pour une priorisation unifiée.

> ↪️ **Pour le cadre de scoring, les poids des variables et les définitions des buckets de priorité :** Voir [Product Feed Segmentation Mental Model](<Flux Produit - Choisir une segmentation.md>) (section Tier 3).

**Exemple de calcul :**

| Variable | Valeur | Points | Poids | Pondéré |
|----------|--------|--------|-------|---------|
| Performance | Sidekick | 7 | 35% | 2.45 |
| Compétitivité prix | En dessous du marché | 10 | 30% | 3.00 |
| Marge bénéficiaire | Moyenne | 5 | 20% | 1.00 |
| Inventaire | Élevé | 10 | 15% | 1.50 |
| **Total** |  |  |  | **7.95** |

**Buckets de priorité :**

| Score | Priorité | Traitement budget |
|-------|----------|-------------------|
| 7-10 | Haute | Allocation la plus élevée |
| 5-7 | Moyenne | Allocation standard |
| <5 | Basse | Allocation restreinte |

> 💡 **Tactique avancée :** Nécessite un outil de gestion de flux (Channable, DataFeedWatch, etc.) pour calculer les scores et synchroniser avec les custom labels. N'utilisez que quand vous avez des données fiables sur plusieurs dimensions.

| Utiliser quand | Ignorer quand |
|---------------|---------------|
| Plusieurs sources de données fiables disponibles | Une seule dimension suffit |
| Besoin de priorisation unifiée entre variables | Les variables doivent être traitées indépendamment |
| Compte mature avec pipelines de données stables | Qualité des données incertaine |
| Pondération spécifique au business requise | Les tactiques standard (performance seule) fonctionnent |

**Contraintes clés :**

- Aucune variable ne doit dominer (garder le poids max à ~35%)
- Mettre à jour les poids quand les priorités business changent
- Garbage in = garbage out (qualité des données critique)

**Fréquence de mise à jour :** Continue (l'outil calcule) ; revoir les poids trimestriellement

---

## Exemple de structure de flux

| product_id | title | custom_label_0 | custom_label_1 | custom_label_2 | custom_label_3 |
|-----------|-------|----------------|----------------|----------------|----------------|
| SKU001 | Oak Dining Table | hero | high_margin | regular_price | normal_stock |
| SKU002 | Walnut Dining Table | sidekick | high_margin | on_sale | low_stock |
| SKU003 | Pine Dining Table | villain | low_margin | regular_price | high_stock |
| SKU004 | Marble Coffee Table | zombie | high_margin | regular_price | normal_stock |
| SKU005 | Glass Side Table | hero | standard_margin | on_sale | normal_stock |

---

## Sélection de tactique par objectif

| Objectif | Tactique primaire | Tier |
|----------|-------------------|------|
| Objectifs ROAS spécifiques par catégorie | Par catégorie | Tier 1 |
| Protéger les bestsellers | Bestsellers vs. Réguliers | Tier 1 |
| Visibilité promotionnelle | Soldes vs. Réguliers | Tier 1 |
| Optimisation saisonnière | Par saisonnalité | Tier 1 |
| Écouler l'ancien inventaire | Par cycle de vie + inventaire | Tier 1 |
| Gagner les marchés concurrentiels | Par compétitivité prix | Tier 1 |
| Maximiser le ROAS avec données de performance | Par performance | Tier 2 |
| Priorisation unifiée multi-variables | Par score composite | Tier 3 |

---

## Méthodes de mise à jour des labels

| Méthode | Idéal pour | Outils |
|---------|-----------|--------|
| **Manuelle** | <100 SKUs, changements peu fréquents | Google Sheets, Merchant Center |
| **Basée sur des règles** | Logique simple (catégorie, seuil de prix) | Règles Merchant Center, outils de flux |
| **Automatisée** | Données de performance, synchronisation d'inventaire | Channable, ProductHero, Profitmetrics |

---

## Erreurs courantes

| Erreur | Problème | Correction |
|--------|----------|-----------|
| Sur-segmenter | Chaque segment est affamé en données | Consolider jusqu'à avoir un volume suffisant |
| Labels statiques sur données dynamiques | Labels d'inventaire/prix périmés | Automatiser les mises à jour de labels |
| Trop de dimensions en même temps | Complexité sans clarté | Commencer avec une tactique |
| Mêmes objectifs entre segments | Défait le but | Définir des objectifs adaptés par segment |
| ROAS cible différent par tier de performance | Les produits restent bloqués dans les tiers inférieurs | Utiliser le même ROAS cible, différencier via le budget (Voir : [Product Feed Segmentation Mental Model](<Flux Produit - Choisir une segmentation.md>)) |
| Sauter au Tier 2/3 sans données | Mauvaises classifications, effort gaspillé | Commencer au Tier 1, graduer quand les critères sont remplis |

---

## Documents liés

| Document | Relation |
|----------|----------|
| [Product Feed Segmentation Mental Model](<Flux Produit - Choisir une segmentation.md>) | En amont (sélection de tier, cadre de segmentation, règle ROAS cible) |
| [Standard Shopping Campaign Structure Mental Model](<../shopping/Shopping - Structure de campagne Shopping standard.md>) | En amont (paramètres spécifiques Standard Shopping) |
| [Shopping Campaign Type Mental Model](<../shopping/Shopping - Types de campagne Shopping.md>) | En amont (décision de type de campagne) |
| *SOP - Set Up Product Feed* | Exécution (configuration du flux) |
| *SOP - Set Up Performance-Based Shopping Segmentation* | Exécution (setup Tier 2) |
| *SOP - Set Up Scoring Model Segmentation* | Exécution (setup Tier 3) |
| *SOP - Set Up Standard Shopping Campaigns* | Exécution (setup campagne) |
| *SOP - Set Up Performance Max Campaigns* | Exécution (setup PMax) |
