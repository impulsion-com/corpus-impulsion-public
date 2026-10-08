# Structure PMax (E-commerce)

> **Plateforme :** Google Ads
> **Catégorie :** Pmax
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Ce document vous aide à structurer les campagnes Performance Max spécifiquement pour l'e-commerce, couvrant les approches Feed-Only et Full Assets.

> ❓ **La question centrale :** Comment structurer mes campagnes PMax pour l'e-commerce afin de maximiser la performance Shopping tout en contrôlant les dépenses cross-canal ?

Le PMax e-commerce est fondamentalement différent du PMax Lead Gen/SaaS. Pour l'e-commerce, votre flux produits est l'asset principal. La structure de campagne dépend de si vous utilisez Feed-Only (axé Shopping) ou Full Assets (cross-canal).

> 💡 **Prérequis :** Votre flux produits doit être optimisé avant de lancer PMax. Voir [Product Feed Quality Mental Model](<../flux-produit/Flux Produit - Qualité du flux produits.md>) et [SOP - Configurer et optimiser le flux produits](<../flux-produit/Flux Produit - Configurer et optimiser le feed produit.md>).

---

## Ce que ce modèle NE couvre PAS

Ce document NE couvre PAS :

- Le choix entre Shopping standard et PMax (Voir : [Shopping Campaign Type Mental Model](<../shopping/Shopping - Types de campagne Shopping.md>))
- Le PMax Lead Gen ou SaaS (Voir : [PMax Structure Mental Model (Lead Gen/SaaS)](<Pmax - Structure PMax (Lead Gen-SaaS).md>))
- La configuration du Shopping standard (Voir : [Standard Shopping Campaign Structure Mental Model](<../shopping/Shopping - Structure de campagne Shopping standard.md>))
- Le document de segmentation produits (Voir : [Product Feed Segmentation Mental Model](<../flux-produit/Flux Produit - Choisir une segmentation.md>))
- L'implémentation des custom labels (Voir : [Feed Segmentation Catalog](<../flux-produit/Flux Produit - Tactiques de segmentation.md>))
- Les seuils de volume de conversions (Voir : [Conversion Volume Thresholds Reference](<../suivi/Suivi - Seuils de volume de conversions.md>))

---

## Feed-Only vs Full Assets : deux stratégies distinctes

| **Aspect** | **PMax Feed-Only** | **PMax Full Assets** |
|------------|-------------------|---------------------|
| **Rôle stratégique** | Exécution Shopping automatisée | Croissance produit cross-canal |
| **Canal principal** | Shopping (avec fuite mineure) | Toutes les surfaces Google |
| **Source de données** | Flux produits uniquement | Flux produits + assets créatifs |
| **Investissement créatif** | Aucun | Élevé (images, vidéo, texte) |
| **Quand utiliser** | Veut l'automatisation Shopping sans travail créatif | Veut une portée au-delà du Shopping avec du créatif de qualité |
| **Exigence de volume** | 30+ conversions/mois | 50+ conversions/mois |

> 💡 **Le PMax Feed-Only est stratégiquement plus proche du Shopping standard que du PMax Full Assets :** Les deux opèrent sur la même surface Shopping avec la même source de données (votre flux produits). Le PMax Full Assets est un modèle de campagne fondamentalement différent.

---

## Structure PMax Feed-Only

Le PMax Feed-Only repose entièrement sur votre flux produits. La structure suit la même logique de segmentation que le Shopping standard.

### Principes de configuration Feed-Only

1. **ZÉRO asset créatif** (pas d'images, vidéos, titres, descriptions, logos)
2. **Le flux produits EST votre créatif**
3. **Les groupes de listing contrôlent quels produits apparaissent**
4. **Signaux d'audience non nécessaires** (votre flux est votre ciblage)

> ⚠️ **Si vous ajoutez UN asset créatif, PMax servira sur Display et YouTube :** Pour un comportement Feed-Only pur, laissez tous les champs d'assets vides et configurez uniquement les groupes de listing.

### Options de structure de campagne

| **Structure** | **Quand utiliser** | **Exemple** |
|---------------|-------------------|-------------|
| **Campagne unique** | Catalogue simple, marges cohérentes | Tous les produits dans une campagne PMax |
| **Par niveau de performance** | Utilisation de la segmentation Hero/Sidekick/Villain/Zombie | Campagne Heroes + Sidekicks + Campagne Zombie |
| **Par catégorie** | Les catégories nécessitent des budgets ou ROAS différents | PMax Électronique + PMax Accessoires |

### Guide de décision de segmentation

```
Avez-vous 90+ jours de données de conversion ?
│
├─ NON → Campagne unique (construire les données d'abord)
│
└─ OUI → Variance de performance claire entre les produits ?
          │
          ├─ NON → Campagne unique ou par catégorie
          │
          └─ OUI → Avez-vous un outil de labellisation (ProductHero, Profitmetrics) ?
                   │
                   ├─ NON → Structure par catégorie
                   │
                   └─ OUI → Par performance (Hero/Sidekick/Villain/Zombie)
```

> ↪️ **Pour le document de segmentation produits :** Voir [Product Feed Segmentation Mental Model](<../flux-produit/Flux Produit - Choisir une segmentation.md>).

> ↪️ **Pour l'implémentation des custom labels :** Voir [Feed Segmentation Catalog](<../flux-produit/Flux Produit - Tactiques de segmentation.md>).

### Structure des groupes de listing

Au sein de chaque campagne PMax, utilisez les groupes de listing pour contrôler quels produits apparaissent :

| **Niveau** | **Subdivisions courantes** | **Objectif** |
|-----------|--------------------------|-------------|
| Tous les produits |  - | Point de départ |
| Marque | Par marque | Séparer la performance par marque |
| Type de produit | Par hiérarchie de catégorie | Correspondre à la structure de votre catalogue |
| Custom label | Par niveau de performance, marge, etc. | Activer les stratégies de segmentation |
| ID d'article | Produits individuels | Exclure des produits spécifiques |

### Gestion des produits Zombie

Les produits Zombie (< 100 impressions en 90 jours) nécessitent un traitement spécial :

| **Approche** | **Configuration** | **Pourquoi** |
|--------------|-------------------|-------------|
| **Campagne Zombie séparée** | Zombies dans un PMax dédié avec Maximiser les conversions (sans objectif) | Donne aux produits non testés une chance de servir |
| **Mélangés avec les sidekicks** | Zombies + Sidekicks dans la même campagne | Les sidekicks apportent de la stabilité pendant que les zombies sont testés |

> ⚠️ **Les Zombies ne sont pas de mauvais produits, ce sont des produits non testés :** Vous ne pouvez pas savoir si un produit est bon tant qu'il n'a pas eu d'impressions.

---

## Structure PMax Full Assets

Le PMax Full Assets ajoute du créatif sur toutes les surfaces Google. Les décisions de structure incluent à la fois la segmentation du flux et la stratégie créative.

### Prérequis de configuration Full Assets

1. **Flux produits** (identique au Feed-Only)
2. **Assets image** (1200x628, 1200x1200, 960x1200)
3. **Assets vidéo** (optionnel mais recommandé)
4. **Assets texte** (titres, titres longs, descriptions)
5. **URLs finales** (landing pages)
6. **Signaux d'audience** (recommandé)

### Options de structure de campagne

| **Structure** | **Quand utiliser** | **Exemple** |
|---------------|-------------------|-------------|
| **Campagne unique, groupes d'assets multiples** | Catalogue simple, audience unifiée | Tous les produits, groupes d'assets par catégorie |
| **Par catégorie** | Les catégories nécessitent un créatif ou ROAS différent | PMax Chaussures de course + PMax Chaussures d'entraînement |
| **Par marque** | Différentes marques nécessitent un créatif ou des budgets différents | PMax Nike + PMax Adidas |

### Stratégie de groupe d'assets

Les groupes d'assets sont les conteneurs créatifs au sein du PMax Full Assets :

| **Approche** | **Structure** | **Idéal pour** |
|--------------|---------------|---------------|
| **Par catégorie de produit** | 1 groupe d'assets par catégorie avec du créatif spécifique à la catégorie | Différents produits nécessitent des messages différents |
| **Par marque** | 1 groupe d'assets par marque avec une identité visuelle spécifique à la marque | Différentes marques nécessitent une identité visuelle différente |
| **Par angle créatif** | 1 groupe d'assets par thème de message | Tester quelle approche créative convertit |

### Composition minimale du groupe d'assets (Full Assets uniquement)

| **Type d'asset** | **Minimum** | **Recommandé** | **Feed-Only** |
|------------------|-------------|-----------------|---------------|
| Titres (30 car.) | 3 | 5-11 | Aucun |
| Titres longs (90 car.) | 1 | 2-5 | Aucun |
| Descriptions (90 car.) | 2 | 4 | Aucun |
| Images (paysage 1.91:1) | 1 | 3+ | Aucun |
| Images (carré 1:1) | 1 | 3+ | Aucun |
| Images (portrait 4:5) | 0 | 1+ | Aucun |
| Logo (carré) | 1 | 1-2 | Aucun |
| Logo (paysage) | 0 | 1 | Aucun |
| Vidéo | 0 | 1+ (fortement recommandé) | Aucun |
| Groupes de listing | Oui | Segmentés | Oui (seul asset) |

> ⚠️ **Un créatif faible = des dépenses gaspillées :** Sans images et vidéo de qualité, le PMax Full Assets dépensera sur Display/YouTube avec de mauvais résultats. Si vous ne pouvez pas investir dans le créatif, utilisez Feed-Only à la place.

---

## Configuration PMax partagée (E-commerce)

### Séparation de marque

La séparation de marque est obligatoire pour le PMax e-commerce. Le trafic de marque gonfle les métriques et vous empêche de voir les vrais coûts d'acquisition.

**Implémentation :**

1. Aller dans les paramètres de la campagne PMax
2. Naviguer vers les exclusions de marque
3. Ajouter le(s) nom(s) de votre marque comme exclusions
4. Vérifier avec le rapport sur les termes de recherche que les requêtes de marque sont bloquées

> ↪️ **Pour l'implémentation de la séparation de marque :** Voir [Brand Separation Reference](<../search/Search - Séparation de marque.md>).

### Contrôle du remarketing

PMax peut surpondérer le trafic de remarketing, gonflant le ROAS. Contrôlez cela avec des exclusions de données :

**Quand exclure le remarketing :**

| **Scénario** | **Action** |
|--------------|------------|
| Le ROAS semble trop beau pour être vrai | Vérifier la part de remarketing, envisager des exclusions |
| Veut mesurer la vraie acquisition | Exclure les visiteurs du site et/ou les listes de clients |
| Test d'incrémentalité | Exclure pour voir la performance nouveaux clients |

**Comment exclure :**

1. Aller dans campagne PMax > Paramètres > Autres paramètres
2. Naviguer vers les exclusions "Vos données"
3. Ajouter les audiences de visiteurs du site ou les listes de clients à exclure

### Suivi de la valeur de conversion

PMax optimise pour la valeur, pas juste le volume. S'assurer que les valeurs de conversion sont suivies correctement :

| **Configuration** | **Ce que ça fait** | **Quand utiliser** |
|-------------------|-------------------|-------------------|
| Valeurs dynamiques | Suivre le revenu réel par transaction | Toujours pour l'e-commerce |
| Conversion with Cart Data | Suivre le revenu au niveau produit | Active le reporting de profit |
| Suivi du profit (ProfitMetrics) | Suivre le profit au lieu du revenu | Active l'optimisation POAS |

### Seuils de volume

| **Stratégie d'enchères** | **Conversions minimum/mois** |
|--------------------------|------------------------------|
| Maximiser la valeur de conversion (sans objectif) | Fonctionne à n'importe quel volume |
| ROAS cible | 50+ |

> ↪️ **Pour les seuils de volume complets :** Voir [Conversion Volume Thresholds Reference](<../suivi/Suivi - Seuils de volume de conversions.md>).

---

## Signaux d'audience pour le PMax e-commerce (Full Assets uniquement)

> ⚠️ **Les signaux d'audience s'appliquent uniquement au PMax Full Assets :** Pour le PMax Feed-Only, votre flux produits EST votre ciblage. N'ajoutez pas de signaux d'audience aux campagnes Feed-Only.

Les signaux d'audience indiquent à PMax où commencer à chercher. Ce sont des suggestions, pas des restrictions.

### Hiérarchie de qualité des signaux

| **Type de signal** | **Qualité** | **Utiliser pour** |
|--------------------|-------------|-------------------|
| **Customer Match (acheteurs)** | La plus haute | "Trouver plus de personnes comme mes acheteurs" |
| **Convertisseurs du site** | Haute | "Trouver plus de personnes qui convertissent" |
| **Visiteurs du site (pages haute intention)** | Modérée | "Trouver plus de personnes qui s'engagent" |
| **Segments personnalisés (URLs concurrents)** | Modérée | "Trouver des personnes qui consultent les concurrents" |
| **Audiences in-market** | Plus basse | Signaux de catégorie larges |

### Tailles minimales de liste

| **Type de liste** | **Minimum** | **Recommandé** |
|-------------------|-------------|-----------------|
| Customer Match | 1 000 matchés | 5 000+ |
| Visiteurs du site | 1 000 sur 30 jours | 5 000+ |
| Convertisseurs | 100 | 500+ |

> ↪️ **Pour l'implémentation détaillée des signaux d'audience :** Voir [Audience Signals Reference](<../audiences/Audiences - Signaux d'audience.md>).

---

## Feed-Only vs Full Assets : modes d'échec

### Modes d'échec Feed-Only

| **Échec** | **Pourquoi ça arrive** | **Comment prévenir** |
|-----------|----------------------|---------------------|
| Dépenses qui fuient vers Display/YouTube | Assets créatifs présents dans le groupe d'assets | Vérifier que zéro asset créatif n'est attaché aux groupes d'assets feed-only |
| Les produits Zombie ne servent pas | ROAS cible trop agressif pour les produits non testés | Démarrer les segments non testés sur Maximiser les conversions sans objectif |
| Produits désapprouvés | Problèmes de qualité du flux | Valider le flux avant le lancement avec [Product Feed Quality Checklist](<../flux-produit/Flux Produit - Qualité du flux produits.md>) |
| Mauvais matching de requêtes | Titres de produits faibles | Appliquer l'optimisation des titres depuis [Product Feed Optimization Guidelines](<../flux-produit/Flux Produit - Optimisation du flux produits.md>) avant le lancement |

### Modes d'échec Full Assets

| **Échec** | **Pourquoi ça arrive** | **Comment prévenir** |
|-----------|----------------------|---------------------|
| ROAS gonflé par le remarketing | Pas d'exclusions de données configurées | Configurer les exclusions "Vos données" lors de la configuration du lancement |
| Mauvaise performance sur Display/YouTube | Assets créatifs de faible qualité | Valider la qualité créative avant le lancement, ou utiliser l'approche Feed-Only |
| Budget consommé par le non-Shopping | L'algorithme préfère les canaux créatifs au Shopping | Surveiller la performance par canal dès la semaine 1, définir un seuil minimum de % Shopping |
| Trafic Search cannibalisé | Termes de marque non exclus | Ajouter les exclusions de marque lors de la configuration du lancement |

---

## Guide de décision : quelle approche PMax e-commerce ?

```
Avez-vous des assets créatifs de qualité (images, vidéo) ?
│
├─ NON → Utiliser PMax Feed-Only
│
└─ OUI → Voulez-vous une portée cross-canal au-delà du Shopping ?
          │
          ├─ NON → Utiliser PMax Feed-Only (plus simple)
          │
          └─ OUI → Avez-vous 50+ conversions/mois ?
                   │
                   ├─ NON → Utiliser PMax Feed-Only (construire le volume d'abord)
                   │
                   └─ OUI → Utiliser PMax Full Assets
```

---

## Principes clés

1. **La qualité du flux est la fondation :** PMax ne peut pas compenser un flux produits de mauvaise qualité. Optimisez votre flux d'abord.
2. **Feed-Only est l'automatisation du Shopping :** Il opère sur la même surface que le Shopping standard avec la même source de données.
3. **Full Assets est la croissance cross-canal :** Il nécessite un investissement créatif et des seuils de volume plus élevés.
4. **La séparation de marque est obligatoire :** Sans elle, le trafic de marque gonfle vos métriques.
5. **Même ROAS cible entre les segments :** Différenciez via le budget, pas les objectifs d'enchères.
6. **Les Zombies nécessitent un traitement spécial :** Utilisez Maximiser les conversions sans objectifs pour donner une chance aux produits non testés.
7. **La patience est requise :** PMax a besoin de 2-4 semaines pour apprendre. Ne le jugez pas la première semaine.

---

## Documents liés

| **Document** | **Relation** |
|--------------|-------------|
| [Product Feed Quality Mental Model](<../flux-produit/Flux Produit - Qualité du flux produits.md>) | Prérequis (fondations de qualité du flux) |
| [Shopping Campaign Type Mental Model](<../shopping/Shopping - Types de campagne Shopping.md>) | En amont (décision Shopping standard vs PMax) |
| [Product Feed Segmentation Mental Model](<../flux-produit/Flux Produit - Choisir une segmentation.md>) | Méthode (la segmentation s'applique à la fois au Shopping et au PMax) |
| [Standard Shopping Campaign Structure Mental Model](<../shopping/Shopping - Structure de campagne Shopping standard.md>) | Alternative (paramètres spécifiques Shopping standard) |
| [PMax Structure Mental Model (Lead Gen/SaaS)](<Pmax - Structure PMax (Lead Gen-SaaS).md>) | Parallèle (secteur différent) |
| [Feed Segmentation Catalog](<../flux-produit/Flux Produit - Tactiques de segmentation.md>) | Référence (tactiques de custom labels) |
| [Brand Separation Reference](<../search/Search - Séparation de marque.md>) | Référence (implémentation de l'exclusion de marque) |
| [Audience Signals Reference](<../audiences/Audiences - Signaux d'audience.md>) | Référence (types de signaux et implémentation) |
| [Conversion Volume Thresholds Reference](<../suivi/Suivi - Seuils de volume de conversions.md>) | Référence (seuils de volume par stratégie d'enchères) |
| [SOP - Configurer et optimiser le flux produits](<../flux-produit/Flux Produit - Configurer et optimiser le feed produit.md>) | Prérequis (configuration du flux) |
| [SOP - Lancer une campagne PMax feed-only](<Pmax - Lancer une campagne PMax Feed-Only.md>) | Exécution (configuration Feed-Only) |
| [SOP - Lancer une campagne PMax complete e-commerce](<Pmax - Lancer une campagne PMax Full Assets e-commerce.md>) | Exécution (configuration Full Assets) |
