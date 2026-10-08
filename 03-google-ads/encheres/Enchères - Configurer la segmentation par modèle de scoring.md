# Configurer la segmentation par scoring

> **Plateforme :** Google Ads
> **Catégorie :** Enchères
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Cette SOP configure une segmentation par scoring composite pour les campagnes Shopping à l'aide d'un modèle multi-variables pondéré.

> ❓ **La question clé :** Comment prioriser les produits selon plusieurs facteurs (performance, marge, stock, compétitivité) plutôt que sur le seul ROAS historique ?

Les modèles de scoring combinent plusieurs variables en un seul score de priorité. Cela donne une priorisation alignée sur le business qui va au-delà d'une segmentation basée uniquement sur la performance.

---

## Ce que cette SOP ne couvre PAS

Cette SOP ne couvre **pas :**

- Expliquer la méthode conceptuelle de segmentation (Voir : [Product Feed Segmentation Mental Model](<../flux-produit/Flux Produit - Choisir une segmentation.md>))
- Mettre en place une segmentation mono-variable (Voir : [SOP - Configurer la segmentation Shopping basee sur la performance](<../shopping/Shopping - Configurer la segmentation Shopping basée sur la performance.md>))
- Configurer les outils de gestion de flux de produits depuis zéro
- Mettre en place les flux de produits (Voir : [SOP - Configurer et optimiser le flux produits](<../flux-produit/Flux Produit - Configurer et optimiser le feed produit.md>))

## Quand utiliser cette SOP

**Exécuter quand :**

- La segmentation mono-variable (ROAS seul) ne capte pas le potentiel produit
- Vous avez des données fiables pour plusieurs variables (marge, stock, position prix)
- Des produits à bonne marge mais faible ROAS historique méritent plus de visibilité
- Vous voulez prioriser selon la stratégie business, pas seulement la performance passée
- Un outil de gestion de flux de produits est déjà en place

**NE PAS exécuter quand :**

- La qualité des données est mauvaise ou incohérente
- Vous n'avez pas d'outil de gestion de flux de produits capable de faire des calculs
- La segmentation basée sur la performance n'a pas encore été testée
- Le catalogue est petit (<100 SKU)
- Vous ne pouvez pas vous engager sur une calibration continue des pondérations

> ⚠️ **Commencer d'abord par la segmentation basée sur la performance :** Les modèles de scoring ajoutent de la complexité. À utiliser uniquement quand vous avez atteint les limites de la segmentation ROAS seul.

---

## Avant de commencer

### Requis

- Compte Google Ads avec accès en modification
- Merchant Center avec flux de produits actif
- Outil de gestion de flux de produits (Channable, DataFeedWatch, Feedonomics ou équivalent)
- Sources de données pour chaque variable :
  - Données de performance (ROAS, taux de conversion)
  - Données de marge (depuis l'ERP, la plateforme e-commerce)
  - Données de stock (niveaux de stock)
  - Données de compétitivité prix (outil de surveillance des prix)
- 90+ jours de données de conversion

### Documents de référence (à garder ouverts)

| Document | Utilisé pour |
|----------|----------|
| [Product Feed Segmentation Mental Model](<../flux-produit/Flux Produit - Choisir une segmentation.md>) | Concepts de scoring Tier 3 |
| [Feed Segmentation Catalog](<../flux-produit/Flux Produit - Tactiques de segmentation.md>) | Implémentation des libellés personnalisés |

---

## Règles critiques

1. **Aucune variable ne doit dépasser ~35% de pondération :** Sur-pondérer va à l'encontre de l'objectif multi-variables.
2. **La qualité des données est non négociable :** De mauvaises données sur n'importe quelle variable corrompent tout le score.
3. **Normaliser toutes les variables sur la même échelle :** Impossible de comparer un ROAS (0-1000%) avec une marge (0-50%) sans normalisation.
4. **Commencer simple, ajouter de la complexité :** Débuter avec 2-3 variables. En ajouter uniquement après validation.
5. **Calibrer les pondérations chaque trimestre :** Les priorités business changent.
6. **Documenter la logique de votre modèle :** Le vous du futur aura besoin de comprendre pourquoi.

---

## Cadre d'exécution

| Phase | Objectif | Résultat |
|-------|---------|--------|
| **Phase 0️⃣ : Concevoir le modèle** | Définir les variables, échelles, pondérations | Spécification du modèle |
| **Phase 1️⃣ : Construire le modèle** | Implémenter dans l'outil de flux | Scores calculés |
| **Phase 2️⃣ : Créer les campagnes** | Construire la structure de campagne | Campagnes créées |
| **Phase 3️⃣ : Valider** | Vérifier le bon fonctionnement | Segmentation opérationnelle |

---

## Phase 0️⃣: Concevoir le modèle

### 0.1 Sélectionner vos variables

Choisir 2 à 5 variables selon la disponibilité des données et les priorités business.

**Variables de scoring courantes :**

| Variable | Ce qu'elle mesure | Source de données | Idéale pour |
|----------|------------------|-------------|----------|
| **ROAS** | Performance historique | Google Ads | Tous les comptes |
| **Marge %** | Profit par unité | ERP, plateforme | Focus rentabilité |
| **Niveau de stock** | Disponibilité en stock | ERP, plateforme | Contraintes de stock |
| **Position prix** | Compétitivité vs marché | Surveillance des prix | Marchés concurrentiels |
| **Vélocité de stock** | Jours avant rupture | Calcul | Stock à rotation rapide |
| **Nouveau produit** | Priorité de lancement | Âge du produit | Stratégie nouveautés |

**Modèles recommandés :**

| Complexité | Variables |
|------------|-----------|
| Minimum viable | ROAS + Marge |
| Recommandé | ROAS + Marge + Niveau de stock |
| Avancé | ROAS + Marge + Niveau de stock + Position prix |

**Documenter votre sélection :**

| Variable | Source de données | Inclure ? |
|----------|-------------|----------|
| ROAS | Google Ads | ✅ / ❌ |
| Marge % | | ✅ / ❌ |
| Niveau de stock | | ✅ / ❌ |
| Position prix | | ✅ / ❌ |
| Autre : | | ✅ / ❌ |

### 0.2 Définir les échelles de scoring

Normaliser chaque variable sur une échelle de 0 à 10.

**Exemples d'échelles de scoring :**

| Variable | 0 point | 5 points | 10 points |
|----------|----------|----------|-----------|
| **ROAS** | <100% | 200-400% | >600% |
| **Marge %** | <10% | 25-35% | >50% |
| **Niveau de stock** | <10 unités | 50-100 unités | >200 unités |
| **Position prix** | >20% au-dessus du marché | Au niveau du marché | >10% sous le marché |

**Documenter vos échelles :**

| Variable | 0 pt | 2.5 pts | 5 pts | 7.5 pts | 10 pts |
|----------|-------|---------|-------|---------|--------|
| | | | | | |

> 💡 Utiliser les données historiques pour définir les points de rupture. Récupérer les valeurs des 20e, 50e et 80e percentiles comme points de départ.

### 0.3 Attribuer les pondérations

Les pondérations doivent refléter les priorités business. Le total doit être égal à 100%.

**Exemples de répartition des pondérations :**

| Focus | ROAS | Marge | Stock | Prix |
|-------|------|--------|-------|-------|
| **Performance d'abord** | 35% | 25% | 25% | 15% |
| **Rentabilité d'abord** | 25% | 35% | 25% | 15% |
| **Stock d'abord** | 20% | 25% | 35% | 20% |
| **Équilibré** | 25% | 25% | 25% | 25% |

**Documenter vos pondérations :**

| Variable | Pondération | Justification |
|----------|--------|-----------|
| | ___% | |
| | ___% | |
| | ___% | |
| **Total** | 100% | |

### 0.4 Définir les buckets de priorité

Définir les seuils de score pour le regroupement en campagnes.

**Structure standard à 3 buckets :**

| Bucket | Plage de score | % typique | Part de budget |
|--------|-------------|-----------|--------------|
| **Priorité haute** | 7.0-10.0 | 15-25% | 50-60% |
| **Priorité moyenne** | 5.0-6.9 | 30-40% | 25-35% |
| **Priorité basse** | 0-4.9 | 35-50% | 10-20% |

**Alternative à 2 buckets :**

| Bucket | Plage de score | Part de budget |
|--------|-------------|--------------|
| **Prioritaire** | ≥6.0 | 70-80% |
| **Standard** | <6.0 | 20-30% |

---

## Phase 1️⃣: Construire le modèle de scoring

### 1.1 Préparer les sources de données

Pour chaque variable, s'assurer que les données remontent vers votre outil de gestion de flux de produits.

**Checklist d'intégration des données :**

| Variable | Système source | Format | Fréquence de mise à jour |
|----------|---------------|--------|------------------|
| ROAS | Google Ads | Pourcentage | Quotidienne |
| Marge | ERP / Plateforme | Pourcentage | Quotidienne/Hebdomadaire |
| Stock | ERP / Plateforme | Entier | Quotidienne |
| Position prix | Outil de surveillance | Pourcentage | Quotidienne |

**Vérifier pour chacune :**

- [ ] Les données remontent bien dans l'outil de flux
- [ ] Les valeurs sont au format attendu
- [ ] La fréquence de mise à jour répond aux besoins
- [ ] Les valeurs manquantes sont gérées

### 1.2 Créer les règles de scoring dans l'outil de flux

#### Étape 1️⃣ : Créer les champs de score normalisés

Pour chaque variable, créer un champ calculé qui convertit les valeurs brutes en 0-10.

**Exemple de logique (ROAS) :**

```
IF [ROAS] >= 600 THEN 10
ELSE IF [ROAS] >= 400 THEN 7.5
ELSE IF [ROAS] >= 200 THEN 5
ELSE IF [ROAS] >= 100 THEN 2.5
ELSE 0
```

**Répéter pour chaque variable.**

#### Étape 2️⃣ : Créer le champ de score pondéré

Combiner les scores normalisés avec les pondérations :

```
[total_score] =
  ([roas_score] × 0.25) +
  ([margin_score] × 0.35) +
  ([stock_score] × 0.25) +
  ([price_score] × 0.15)
```

#### Étape 3️⃣ : Créer le champ de bucket de priorité

Mapper le score total vers les labels de bucket :

```
IF [total_score] >= 7.0 THEN "high_priority"
ELSE IF [total_score] >= 5.0 THEN "medium_priority"
ELSE "low_priority"
```

#### Étape 4️⃣ : Mapper vers un libellé personnalisé

Envoyer le bucket de priorité vers `custom_label_1` (si `custom_label_0` est utilisé pour les labels de performance).

### 1.3 Valider la sortie du scoring

**Vérification de la distribution :**

| Bucket | % attendu | % réel | Statut |
|--------|------------|----------|--------|
| Priorité haute | 15-25% | ___% | ✅ / ⚠️ |
| Priorité moyenne | 30-40% | ___% | ✅ / ⚠️ |
| Priorité basse | 35-50% | ___% | ✅ / ⚠️ |

**Contrôle ponctuel de 10 produits au hasard dans chaque bucket :**

- [ ] Les produits en Priorité haute méritent vraiment la priorité
- [ ] Les produits en Priorité basse sont légitimement de faible valeur
- [ ] Pas d'erreur de classification évidente

**Cas limites :**

- [ ] Les produits avec des données manquantes sont gérés correctement
- [ ] Les nouveaux produits (sans ROAS) reçoivent une valeur par défaut appropriée
- [ ] Les produits en rupture de stock sont scorés correctement

### 1.4 Envoyer vers Merchant Center

1. Activer l'export du flux dans votre outil
2. Vérifier le mapping du libellé personnalisé
3. Lancer la synchronisation initiale
4. Confirmer dans Merchant Center → Produits

---

## Phase 2️⃣: Créer les campagnes

### 2.1 Planifier la structure de campagne

D'après vos définitions de buckets :

**3 buckets :**

| Campagne | Contient | Part de budget |
|----------|----------|--------------|
| [Produit] - Priorité haute | Score ≥7.0 | 50-60% |
| [Produit] - Priorité moyenne | Score 5.0-6.9 | 25-35% |
| [Produit] - Priorité basse | Score <5.0 | 10-20% |

### 2.2 Créer les campagnes

Suivre [SOP - Lancer une campagne Shopping standard](<../shopping/Shopping - Lancer une campagne Shopping standard.md>) ou [SOP - Lancer une campagne PMax feed-only](<../pmax/Pmax - Lancer une campagne PMax Feed-Only.md>), en utilisant votre libellé personnalisé basé sur le score au lieu des labels de tier de performance.

**Différences clés avec la segmentation basée sur la performance :**

| Paramètre | Basé sur la performance | Modèle de scoring |
|---------|-------------------|---------------|
| Valeurs du libellé personnalisé | hero, sidekick, etc. | high_priority, medium_priority, etc. |
| Source du label | Outil de labellisation | Outil de gestion de flux de produits |
| Approche ROAS cible | Identique partout | Identique partout |

### 2.3 Définir les exclusions

Exclure les produits labellisés par score des campagnes existantes :

1. Ouvrir chaque campagne Shopping/PMax existante
2. Subdiviser par votre libellé personnalisé
3. **Exclure** toutes les valeurs de priorité dans les campagnes dédiées

---

## Phase 3️⃣: Valider

### 3.1 Validation du modèle (avant lancement)

- [ ] Toutes les variables remontent correctement
- [ ] Les scores normalisés se calculent correctement
- [ ] Le score total se calcule correctement
- [ ] La distribution des buckets est raisonnable
- [ ] Le libellé personnalisé se synchronise vers MC
- [ ] Les cas limites sont gérés

### 3.2 Validation des campagnes (Jour 1)

- [ ] Toutes les campagnes créées et activées
- [ ] Même ROAS cible sur tous les buckets
- [ ] Budgets alloués selon la structure
- [ ] Les groupes de fiches filtrent par libellé personnalisé
- [ ] Chaque bucket dans exactement une campagne
- [ ] Exclusions posées

### 3.3 Validation semaine 1

- [ ] Les produits sont diffusés depuis les bonnes campagnes
- [ ] Le rythme de budget est conforme aux attentes
- [ ] La Priorité haute reçoit la majorité de la dépense
- [ ] Pas de mauvaise allocation évidente

### 3.4 Validation continue (Mensuel)

- [ ] Revérifier la distribution des buckets
- [ ] Contrôle ponctuel de 10 produits par bucket
- [ ] Examiner si des ajustements de pondération sont nécessaires
- [ ] Vérifier que les sources de données se mettent à jour

---

## Validation et critères de complétion

Cette SOP est terminée quand :

- [ ] Variables sélectionnées et échelles définies
- [ ] Pondérations assignées (total 100%, aucune >35%)
- [ ] Modèle de scoring construit dans l'outil de flux
- [ ] Validation du modèle réussie
- [ ] Libellé personnalisé synchronisé vers Merchant Center
- [ ] Tous les buckets de campagne créés
- [ ] Même ROAS cible sur tous les buckets
- [ ] Budgets alloués selon la stratégie
- [ ] Exclusions posées
- [ ] Validation semaine 1 réussie

---

## Passerelle de sortie

| Prochaine étape | Quand |
|-----------|------|
| Surveiller et optimiser | En continu (revue hebdomadaire des buckets) |
| Calibrer les pondérations | Trimestrielle ou après des changements business |
| Ajouter des variables | Quand de nouvelles sources de données sont disponibles |
| Simplifier le modèle | Si la complexité n'apporte pas de valeur |

---

## Maintenance continue

**Hebdomadaire :**

- Vérifier la distribution des buckets
- Vérifier que les sources de données se mettent à jour
- Examiner le rythme de budget

**Mensuel :**

- Contrôle ponctuel de 10 produits par bucket
- Comparer la performance des buckets
- Identifier les produits mal classés

**Trimestriel :**

- Revue complète des pondérations
- Revue des variables : ajouter/retirer ?
- Revue des seuils
- Documenter tout changement

---

## Exemple : calcul de scoring complet

**Produit :** Table à manger en chêne

| Variable | Valeur brute | Échelle | Points | Pondération | Pondéré |
|----------|-----------|-------|--------|--------|----------|
| ROAS | 450% | 400-600% = 7.5 | 7.5 | 25% | 1.875 |
| Marge | 42% | 35-50% = 7.5 | 7.5 | 35% | 2.625 |
| Stock | 85 unités | 50-100 = 7.5 | 7.5 | 25% | 1.875 |
| Position prix | 5% en dessous | 0-10% en dessous = 7.5 | 7.5 | 15% | 1.125 |
| **Total** | | | | 100% | **7.5** |

**Résultat :** Score 7.5 → bucket **Priorité haute**

---

## FAQ

**Q : Quand utiliser le scoring vs la segmentation basée sur la performance ?**

R : Commencer par la segmentation basée sur la performance. Passer au scoring quand : (1) vous avez des données fiables de marge/stock, (2) la performance seule ne capte pas le potentiel, (3) vous voulez des facteurs business au-delà du ROAS.

**Q : Combien de variables inclure ?**

R : Commencer avec 2-3. Plus de variables = plus de complexité = plus de maintenance.

**Q : Comment gérer les données manquantes ?**

R : Options : (1) score neutre (5/10), (2) exclure du scoring, (3) utiliser les moyennes de catégorie. Documenter votre approche.

**Q : À quelle fréquence recalibrer les pondérations ?**

R : Trimestrielle minimum. Aussi après des changements majeurs de stratégie ou de marché.

---

## Référence rapide : bibliothèque support

| Document | Type | Utilisé dans |
|----------|------|---------|
| [Product Feed Segmentation Mental Model](<../flux-produit/Flux Produit - Choisir une segmentation.md>) | Modèle Mental | Phase 0 |
| [Feed Segmentation Catalog](<../flux-produit/Flux Produit - Tactiques de segmentation.md>) | Catalogue | Phase 1 |

---

## Procédures liées

| SOP | Relation |
|-----|--------------|
| [SOP - Configurer la segmentation Shopping basee sur la performance](<../shopping/Shopping - Configurer la segmentation Shopping basée sur la performance.md>) | Prérequis / alternative plus simple |
| [SOP - Configurer et optimiser le flux produits](<../flux-produit/Flux Produit - Configurer et optimiser le feed produit.md>) | Prérequis (le flux de produits doit exister) |
| [SOP - Lancer une campagne Shopping standard](<../shopping/Shopping - Lancer une campagne Shopping standard.md>) | Utilisé en Phase 2 |
| [SOP - Lancer une campagne PMax feed-only](<../pmax/Pmax - Lancer une campagne PMax Feed-Only.md>) | Utilisé en Phase 2 |
