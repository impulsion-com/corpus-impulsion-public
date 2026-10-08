# Segmentation du flux produits

> **Plateforme :** Google Ads
> **Catégorie :** Flux Produit
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Ce document vous aide à décider comment segmenter votre catalogue produits pour l'allocation de budget entre les campagnes Shopping standard et PMax Feed-Only.

> ❓ **La question centrale :** Comment segmenter mon catalogue produits pour que le budget aille aux bons produits ?

Ce document est **agnostique du type de campagne** : la même logique de segmentation s'applique que vous utilisiez Shopping standard ou PMax Feed-Only. Le type de campagne détermine la stratégie d'enchères et les paramètres. La segmentation détermine quels produits obtiennent quel budget et quel traitement.

> 💡 **Le compromis :** Plus de segmentation = plus de contrôle sur la priorisation des produits. Moins de segmentation = plus de données pour l'apprentissage algorithmique. Votre structure doit équilibrer les deux.

> ↪️ **Pour la sélection du type de campagne :** Voir [Shopping Campaign Type Mental Model](<../shopping/Shopping - Types de campagne Shopping.md>). **Pour les paramètres spécifiques par campagne :** Voir [Standard Shopping Campaign Structure Mental Model](<../shopping/Shopping - Structure de campagne Shopping standard.md>) (Shopping standard) ou [PMax Structure Mental Model (Ecommerce)](<../pmax/Pmax - Structure PMax (E-commerce).md>) (PMax).

---

## Ce que ce modèle NE couvre PAS

Ce document NE couvre PAS :

- Les exigences du flux produits (Voir : [Product Feed Quality Mental Model](<Flux Produit - Qualité du flux produits.md>))
- Les paramètres spécifiques par type de campagne (Voir : [Shopping Campaign Settings Reference](<../strategie/Strategie - Paramètres universels de campagne.md>))
- Les détails d'implémentation des custom labels (Voir : [Feed Segmentation Catalog](<Flux Produit - Tactiques de segmentation.md>))
- La configuration étape par étape de la segmentation (Voir : [SOP - Configurer la segmentation Shopping basee sur la performance](<../shopping/Shopping - Configurer la segmentation Shopping basée sur la performance.md>))
- La séparation de marque (Voir : [Brand Separation Reference](<../search/Search - Séparation de marque.md>))

---

## Les trois niveaux de segmentation

| **Niveau** | **Approche** | **Idéal pour** | **Infrastructure** |
| --- | --- | --- | --- |
| **Niveau 1** | Par catégorie + blocs de construction | Nouveaux comptes, catalogues simples, ressources techniques limitées | Règles de flux uniquement |
| **Niveau 2** | Par performance (Hero/Sidekick/Villain/Zombie) | Comptes matures avec 90+ jours de données, variance de performance claire | Outil de labellisation requis |
| **Niveau 3** | Modèle de scoring composite | Comptes entreprise, sources de données multiples, priorisation personnalisée | Outil de gestion de flux + pipelines de données |

---

## Critères de sélection du niveau

| **Question** | **Niveau 1** | **Niveau 2** | **Niveau 3** |
| --- | --- | --- | --- |
| Historique de conversions ? | <90 jours | 90+ jours | 90+ jours |
| Variance de performance claire ? | Non / Inconnu | Oui | Oui |
| Outil de labellisation disponible ? | Non | Oui | Oui |
| Sources de données multiples à combiner ? | Non | Non | Oui |
| Pondération personnalisée nécessaire ? | Non | Non | Oui |

> 💡 **Commencer au Niveau 1 :** Passer aux niveaux supérieurs uniquement quand vous avez les données et l'infrastructure pour les supporter. Une complexité prématurée fragmente vos données.

---

## Niveau 1 : Catégorie + blocs de construction

**Idéal pour :** Nouveaux comptes, catalogues simples, ou quand les données de performance sont limitées.

**Infrastructure :** Règles de flux uniquement (Merchant Center, Channable, DataFeedWatch)

Segmenter par catégorie de produits quand différentes catégories nécessitent un traitement fondamentalement différent :

| **Raison de segmenter** | **Exemple** |
| --- | --- |
| **Objectifs ROAS différents** | Chaussures de course ciblent 350 % ; accessoires ciblent 500 % |
| **Saisonnalité différente** | Équipement d'hiver vs. équipement d'été nécessitent un timing différent |
| **Dynamiques concurrentielles différentes** | Les catégories banalisées nécessitent une stratégie d'enchères différente |
| **Marges différentes** | Catégories à forte marge vs. faible marge |

**Blocs de construction (empilables au-dessus de la structure par catégorie) :**

| **Bloc de construction** | **Cas d'usage** | **Exemple de custom label** |
| --- | --- | --- |
| **Articles en promo** | Pousser les produits actuellement en promotion | `custom_label_1 = "on_sale"` |
| **Meilleures ventes** | Prioriser les produits à forte vente prouvée | `custom_label_1 = "bestseller"` |
| **Nouveaux produits** | Donner de la visibilité aux nouveautés | `custom_label_1 = "new"` |
| **Stock élevé** | Pousser les produits avec un excès de stock | `custom_label_1 = "high_stock"` |
| **Saisonnier** | Pousser les produits saisonniers au bon moment | `custom_label_1 = "summer"` |

> ↪️ **Pour toutes les tactiques de blocs de construction avec les détails d'implémentation :** Voir [Feed Segmentation Catalog](<Flux Produit - Tactiques de segmentation.md>).

**Quand passer au Niveau 2 :**

- 90+ jours de données de conversion accumulées
- Variance de performance claire visible entre les produits
- Outil de labellisation disponible (ProductHero, Profitmetrics)

---

## Migration du Niveau 1 au Niveau 2

**Signaux de préparation à la migration :**

| **Signal** | **Seuil** | **Pourquoi c'est important** |
| --- | --- | --- |
| Historique de conversions | 90+ jours | Les outils de labellisation ont besoin de données suffisantes pour classifier les produits correctement |
| Variance de performance | Différenciation claire visible | Si tous les produits performent de façon similaire, la segmentation ajoute de la complexité sans bénéfice |
| Outil de labellisation sélectionné | Accès à l'outil confirmé | La migration nécessite une synchronisation automatisée des labels avant la restructuration des campagnes |

**Principes clés de migration :**

- Faire tourner les nouvelles campagnes segmentées en parallèle des anciennes brièvement : ne pas supprimer les anciennes campagnes tant que les nouvelles ne sont pas stables
- Utiliser le même ROAS cible dans tous les nouveaux buckets
- Exclure les produits segmentés des anciennes campagnes pour éviter les chevauchements

> ↪️ **Pour le processus de migration complet étape par étape :** Voir [SOP - Configurer la segmentation Shopping basee sur la performance](<../shopping/Shopping - Configurer la segmentation Shopping basée sur la performance.md>).

---

## Niveau 2 : Par performance (Hero/Sidekick/Villain/Zombie)

**Idéal pour :** Comptes matures avec un historique de conversion suffisant et une différenciation de performance claire.

**Infrastructure :** Outil de labellisation requis. Choisir en fonction de vos besoins :

| **Outil** | **Type** | **Idéal pour** | **Différence clé** |
| --- | --- | --- | --- |
| **ProductHero Labelizer** | SaaS (payant) | La plupart des comptes, configuration facile | Labellisation automatisée avec niveaux préconstruits, plug-and-play |
| **Profitmetrics Shopping Booster** | SaaS (payant) | Comptes orientés profit | Intègre les données de profit pour une labellisation basée sur le POAS |

### Les quatre niveaux de performance

Les produits sont classés en quatre niveaux basés sur la performance historique :

| **Niveau** | **Définition** | **Ce qu'ils sont** |
| --- | --- | --- |
| **Heroes** | Conversions élevées, au-dessus de l'objectif ROAS | Vos meilleurs performeurs : les protéger et les scaler |
| **Sidekicks** | Conversions modérées, au-dessus de l'objectif ROAS | Contributeurs solides : maintenir l'investissement |
| **Villains** | A des conversions, en dessous de l'objectif ROAS | Gouffres à budget : nécessitent attention ou rétrogradation |
| **Zombies** | <100 impressions en 90 jours | Potentiel inconnu : ont besoin de visibilité pour être évalués. Le seuil de 100 impressions existe parce que les produits avec moins d'impressions n'ont pas assez de données pour évaluer la performance. En dessous de 100 impressions, toute donnée de conversion est statistiquement insignifiante. |

> ⚠️ **Le point clé :** Vous ne pouvez pas savoir si un produit est bon ou mauvais tant qu'il n'a pas eu d'impressions. Les Zombies ne sont pas forcément de mauvais produits, ce sont des produits non testés.

### Comportement et traitement par niveau

| **Niveau** | **Comportement** | **Traitement** | **Part du budget** |
| --- | --- | --- | --- |
| **Heroes** | Convertissent efficacement, génèrent du revenu | Maximiser l'exposition : ne pas les plafonner | ~50-70 % |
| **Sidekicks** | Performeurs réguliers, soutiennent le revenu | Maintenir : promouvoir en hero quand possible | ~15-25 % |
| **Villains** | Dépensent mais ne rapportent pas | Réduire l'exposition : investiguer la cause racine | ~5-10 % |
| **Zombies** | Ne servent pas : qualité inconnue | Forcer les impressions : laisser les données décider de leur sort | ~10-20 % |

### Stratégies de bucket par objectif

| **Objectif** | **Structure de bucket** | **Quand utiliser** |
| --- | --- | --- |
| **Focus revenu** | Heroes + Sidekicks + Villains ensemble ; Zombies séparés | Phase de croissance : prêt à dépenser pour découvrir les gagnants |
| **Focus profitabilité** | Heroes + Sidekicks + Zombies ensemble ; Villains séparés | Pression sur les marges : besoin de couper le gaspillage immédiatement |
| **Contrôle total** | Chaque niveau dans un bucket séparé | 30+ conversions/bucket/mois : veulent une optimisation granulaire |

> ⚠️ **Exigence de volume :** Chaque bucket doit indépendamment atteindre les seuils de volume de conversions. Si vous ne pouvez pas atteindre 30+ conversions par bucket par mois, consolidez les buckets.

> ↪️ **Pour les seuils de volume par stratégie d'enchères :** Voir [Conversion Volume Thresholds Reference](<../suivi/Suivi - Seuils de volume de conversions.md>).

### Quand passer au Niveau 3

- Sources de données fiables multiples disponibles (performance, marge, inventaire, compétitivité des prix)
- Besoin d'une priorisation unifiée entre les variables
- Pondération spécifique au business requise

> ↪️ **Pour l'implémentation des custom labels, la configuration des outils et la fréquence de mise à jour :** Voir [Feed Segmentation Catalog](<Flux Produit - Tactiques de segmentation.md>) Section 8 : Par performance.

---

## Niveau 3 : Modèle de scoring composite

**Idéal pour :** Comptes entreprise avec des sources de données multiples et un besoin de logique de priorisation personnalisée.

**Infrastructure :** Outil de gestion de flux + pipelines de données multiples (données de performance, données de marge, flux d'inventaire, surveillance des prix)

Combine plusieurs variables en un score pondéré unique.

> ⚠️ **Les pondérations ci-dessous sont illustratives, pas prescriptives :** Vos pondérations dépendent de vos priorités business. Un business orienté marge pondère la marge plus fort. Un business orienté volume pondère la performance plus fort. Définissez vos propres pondérations en fonction de ce qui compte le plus pour votre business.

| **Variable** | **Pondération (illustrative)** | **Plage de points** |
| --- | --- | --- |
| Niveau de performance | 35 % | Hero=10, Sidekick=7, Villain=3, Zombie=1 |
| Compétitivité des prix | 30 % | En dessous du marché=10, Compétitif=7, Parité=4, Surpayé=1 |
| Marge bénéficiaire | 20 % | Élevée=10, Standard=5, Faible=2 |
| Niveau de stock | 15 % | Élevé=10, Normal=5, Faible=2 |

**Buckets de priorité par score :**

| **Score** | **Priorité** | **Traitement budgétaire** |
| --- | --- | --- |
| 7-10 | Élevée | Allocation la plus haute |
| 5-7 | Moyenne | Allocation standard |
| <5 | Faible | Allocation restreinte |

> 💡 **Tactique avancée :** N'utiliser que quand vous avez des données fiables sur plusieurs dimensions. Garbage in = garbage out.

> ↪️ **Pour le calcul du modèle de scoring, l'exemple d'implémentation et la configuration :** Voir [Feed Segmentation Catalog](<Flux Produit - Tactiques de segmentation.md>) Section 9 : Par score composite, et [SOP - Configurer la segmentation par scoring](<../encheres/Enchères - Configurer la segmentation par modèle de scoring.md>).

---

## La règle critique du ROAS cible

> ⚠️ **Même objectif ROAS cible dans tous les buckets :** Différenciez via le budget, pas les objectifs d'enchères.

**Pourquoi ?** Des objectifs ROAS cible différents bloquent les produits :

- Un villain avec un objectif de 300 % n'a aucune incitation à atteindre 400 % (le seuil hero)
- Les produits qui s'améliorent ne montent pas naturellement
- Vous créez des plafonds artificiels

**À la place :** Même ROAS cible partout + budgets différents = contrôle sans casser le flux produits.

---

## Pourquoi la segmentation par marge ne fonctionne pas bien

| **Problème** | **Explication** |
| --- | --- |
| **Clic ne veut pas dire achat** | Les utilisateurs n'achètent pas toujours le produit sur lequel ils ont cliqué |
| **L'attribution est trompeuse** | Le produit qui reçoit le crédit n'est pas nécessairement celui qui a généré la vente |
| **Comportement du panier** | Les utilisateurs achètent souvent plusieurs produits. Quel segment de marge reçoit le crédit ? |

**Meilleure approche :** Optimiser pour le **POAS (Profit on Ad Spend)** au lieu du ROAS. Si vous devez considérer les marges, utilisez-les comme filtre au sein des buckets de performance, pas comme axe de segmentation principal.

---

## Modes d'échec courants

| **Échec** | **Pourquoi ça arrive** | **Correction** |
| --- | --- | --- |
| **ROAS cible différent par bucket** | Semble logique mais casse le flux produits | Utiliser le même ROAS cible, varier le budget |
| **Ne pas exclure les produits segmentés** | Chevauchement entre les campagnes | Configurer les exclusions dans toutes les campagnes legacy |
| **Le bucket Zombie ne dépense pas** | Stratégie d'enchères trop agressive pour les produits non testés | Utiliser Maximiser les conversions (sans ROAS cible) pour les zombies |
| **Seuil trop serré** | Les bons produits sont rétrogradés sur des baisses à court terme | Configurer le seuil de l'outil ~25 % en dessous du ROAS cible Google Ads |
| **Trop de buckets, trop peu de données** | Chaque bucket s'asphyxie | Consolider jusqu'à 30+ conversions/bucket/mois |
| **Structure sans infrastructure** | Pas de custom labels dans le flux | Implémenter l'infrastructure de flux d'abord |
| **Niveau 2/3 prématuré** | Données insuffisantes pour la classification | Commencer au Niveau 1, passer quand les critères sont remplis |

---

## Principes clés

1. **Ce document s'applique à la fois au Shopping standard et au PMax Feed-Only :** La logique de segmentation est identique. Le type de campagne détermine la stratégie d'enchères et les paramètres, pas la segmentation.
2. **Segmenter uniquement quand vous avez les données :** Une segmentation prématurée fragmente vos données et ralentit l'apprentissage.
3. **Les Zombies ne sont pas mauvais, ils sont inconnus :** Un produit sans impressions n'a aucune chance de faire ses preuves.
4. **Même ROAS cible, budgets différents :** C'est la clé d'une segmentation qui fonctionne.
5. **Les produits doivent circuler entre les niveaux :** Une bonne segmentation crée de la mobilité. Si les produits sont bloqués, vos seuils sont faux.
6. **La complexité a un coût :** N'ajouter de la complexité que quand vous avez le volume et les ressources pour la supporter.

---

## Documents liés

| **Document** | **Relation** |
| --- | --- |
| [Product Feed Quality Mental Model](<Flux Produit - Qualité du flux produits.md>) | Prérequis (exigences de qualité du flux) |
| [Shopping Campaign Type Mental Model](<../shopping/Shopping - Types de campagne Shopping.md>) | En amont (décision Shopping standard vs. PMax) |
| [Standard Shopping Campaign Structure Mental Model](<../shopping/Shopping - Structure de campagne Shopping standard.md>) | En aval (paramètres spécifiques Shopping standard) |
| [PMax Structure Mental Model (Ecommerce)](<../pmax/Pmax - Structure PMax (E-commerce).md>) | En aval (structure spécifique PMax) |
| [Shopping Campaign Settings Reference](<../strategie/Strategie - Paramètres universels de campagne.md>) | Référence (tous les paramètres de campagne) |
| [Feed Segmentation Catalog](<Flux Produit - Tactiques de segmentation.md>) | Référence (les 9 tactiques de segmentation, implémentation des custom labels) |
| [Conversion Volume Thresholds Reference](<../suivi/Suivi - Seuils de volume de conversions.md>) | Référence (seuils de volume par stratégie d'enchères) |
| [Brand Separation Reference](<../search/Search - Séparation de marque.md>) | Prérequis (séparation de marque avant segmentation) |
| [SOP - Configurer la segmentation Shopping basee sur la performance](<../shopping/Shopping - Configurer la segmentation Shopping basée sur la performance.md>) | Exécution (configuration Hero/Sidekick/Villain/Zombie) |
| [SOP - Configurer la segmentation par scoring](<../encheres/Enchères - Configurer la segmentation par modèle de scoring.md>) | Exécution (configuration du modèle de scoring Niveau 3) |
