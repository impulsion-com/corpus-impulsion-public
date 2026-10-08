# Structure de campagne Shopping standard

> **Plateforme :** Google Ads
> **Catégorie :** Shopping
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Ce document vous aide à configurer les **paramètres de campagne Shopping standard** pour un contrôle maximal sur le routage des requêtes, les enchères et la visibilité des produits.

> ❓ **La question centrale :** Comment configurer mes campagnes Shopping standard pour tirer parti des fonctionnalités disponibles uniquement dans Shopping standard ?

Shopping standard offre des fonctionnalités que PMax n'a pas : niveaux de priorité de campagne, enchères CPC manuel, stratégies d'enchères de portefeuille avec plafond de CPC max, contrôle complet des keywords négatifs et routage des requêtes (query sculpting). Ce document se concentre sur ces fonctionnalités spécifiques au Shopping standard.

> ↪️ **Pour la segmentation produits (quels produits obtiennent quel budget) :** Voir [Product Feed Segmentation Mental Model](<../flux-produit/Flux Produit - Choisir une segmentation.md>). Ce document s'applique à la fois au Shopping standard et au PMax Feed-Only.

---

## Ce que ce modèle NE couvre PAS

Ce document NE couvre PAS :

- Les exigences du flux produits (Voir : [Product Feed Quality Mental Model](<../flux-produit/Flux Produit - Qualité du flux produits.md>))
- Les niveaux de segmentation produits (Voir : [Product Feed Segmentation Mental Model](<../flux-produit/Flux Produit - Choisir une segmentation.md>))
- La séparation de marque (Voir : [Brand Separation Reference](<../search/Search - Séparation de marque.md>))
- Les seuils de volume de conversions (Voir : [Conversion Volume Thresholds Reference](<../suivi/Suivi - Seuils de volume de conversions.md>))
- Tous les paramètres de campagne (Voir : [Shopping Campaign Settings Reference](<../strategie/Strategie - Paramètres universels de campagne.md>))
- La structure PMax pour l'e-commerce (Voir : [PMax Structure Mental Model (Ecommerce)](<../pmax/Pmax - Structure PMax (E-commerce).md>))
- L'implémentation des custom labels (Voir : [Feed Segmentation Catalog](<../flux-produit/Flux Produit - Tactiques de segmentation.md>))

---

## Fonctionnalités spécifiques au Shopping standard

Ces fonctionnalités sont disponibles uniquement dans Shopping standard, pas dans PMax :

| **Fonctionnalité** | **Ce que ça fait** | **Pourquoi c'est important** |
| --- | --- | --- |
| **Niveaux de priorité de campagne** | Priorité haute / moyenne / basse détermine quelle campagne entre en enchère en premier | Permet le routage des requêtes et le routage par tunnel |
| **CPC manuel** | Définir les enchères manuellement au niveau du groupe de produits | Contrôle total sur les enchères de chaque produit, aucun seuil de volume nécessaire |
| **Stratégies d'enchères de portefeuille** | Utiliser des stratégies de portefeuille avec plafond de CPC max entre les campagnes | Enchères automatisées avec un plafond sur les coûts de clics individuels |
| **Contrôle complet des keywords négatifs** | Ajouter des négatifs au niveau campagne et ad group (illimité) | Exclusion et routage précis des requêtes |
| **Visibilité complète des termes de recherche** | Rapport complet des termes de recherche (identique aux campagnes Search) | Transparence totale sur quelles requêtes déclenchent vos annonces |
| **Query sculpting** | Combiner priorités + négatifs pour router les requêtes vers des campagnes spécifiques | Routage avancé pour les requêtes de marque, génériques et long-tail |

---

## Niveaux de priorité de campagne

Shopping standard utilise un système de priorité à trois niveaux pour déterminer quelle campagne entre en enchère quand plusieurs campagnes sont éligibles pour le même produit.

| **Priorité** | **Comportement en enchère** | **Usage typique** |
| --- | --- | --- |
| **Haute** | Entre en enchère en premier | Catch-all / requêtes génériques |
| **Moyenne** | Entre si la campagne de priorité haute est exclue (par keyword négatif ou budget) | Milieu de tunnel / requêtes de catégorie |
| **Basse** | Entre si les campagnes haute et moyenne sont exclues ou épuisées | Requêtes de marque / requêtes haute intention |

> ⚠️ **Priorité ne signifie pas "plus important" :** Haute priorité signifie que la campagne a le premier tour en enchère. Utilisez les négatifs pour rejeter les requêtes non voulues et les laisser tomber vers les campagnes de priorité inférieure.

### Comment fonctionne le query sculpting

```
Requête arrive → Éligible dans les 3 campagnes
│
├─ Campagne HAUTE PRIORITÉ : A des négatifs génériques ?
│  ├─ NON → Sert l'annonce (attrape les requêtes génériques)
│  └─ OUI → Requête rejetée, tombe vers Moyenne
│
├─ Campagne MOYENNE PRIORITÉ : A des négatifs de catégorie ?
│  ├─ NON → Sert l'annonce (attrape les requêtes de catégorie)
│  └─ OUI → Requête rejetée, tombe vers Basse
│
└─ Campagne BASSE PRIORITÉ : Pas de négatifs
   └─ Sert l'annonce (attrape les requêtes restantes : marque, long-tail)
```

### Exemple de query sculpting

| **Campagne** | **Priorité** | **Keywords négatifs** | **Attrape** |
| --- | --- | --- | --- |
| Shopping Générique | Haute | Termes de marque, noms de produits spécifiques | `chaussures de course`, `chaussures trail` |
| Shopping Catégorie | Moyenne | Termes de marque | `nike chaussures de course`, `asics trail` |
| Shopping Marque | Basse | Aucun | `[marque] chaussures de course`, `[marque] trail` |

> 💡 **Le query sculpting est optionnel :** Il offre un contrôle maximal mais ajoute de la complexité de gestion.

---

## Enchères dans Shopping standard

Shopping standard supporte CPC manuel et les stratégies d'enchères de portefeuille avec plafond de CPC max. Les deux sont exclusifs à Shopping standard (pas disponibles dans PMax).

| **Aspect** | **Détails** |
| --- | --- |
| **Où définir les enchères** | Niveau groupe de produits (au sein des ad groups) |
| **Granularité** | Définir des enchères différentes par groupe de produits (par marque, catégorie, type de produit, custom label, ID d'article) |
| **Quand utiliser** | Nouveaux comptes (pas d'historique de conversion), comptes à faible volume, quand vous avez besoin d'un contrôle précis des enchères |
| **Quand en sortir** | Quand vous avez 50+ conversions/mois et voulez utiliser le ROAS cible |

> ↪️ **Pour les seuils de volume pour passer de CPC manuel à Stratégies d'enchères intelligentes :** Voir [Conversion Volume Thresholds Reference](<../suivi/Suivi - Seuils de volume de conversions.md>).

---

## Modes d'échec spécifiques au Shopping standard

| **Échec** | **Pourquoi ça arrive** | **Correction** |
| --- | --- | --- |
| **Query sculpting trop complexe** | Trois niveaux de campagnes avec des listes de négatifs complexes | Simplifier à deux campagnes (Marque + Hors-marque) sauf si le volume justifie trois |
| **CPC manuel à grande échelle** | Gérer les enchères pour des milliers de groupes de produits | Passer à Stratégies d'enchères intelligentes quand les seuils de volume sont atteints |
| **Lacunes dans les keywords négatifs** | Requêtes qui fuient entre les niveaux de priorité | Auditer les termes de recherche chaque semaine, ajouter des négatifs systématiquement |
| **Concurrence avec son propre PMax** | Mêmes produits dans Shopping standard et PMax | Utiliser des exclusions de groupes de listing pour éviter le chevauchement. Voir [Shopping Campaign Type Mental Model](<Shopping - Types de campagne Shopping.md>) pour les approches hybrides |

> ↪️ **Lancer Shopping standard en parallèle de PMax (approches hybrides) :** Voir [Shopping Campaign Type Mental Model](<Shopping - Types de campagne Shopping.md>). **Pour le routage des enchères :** Voir [Search PMax Query Routing Reference](<../pmax/Pmax - Routage des requêtes Search PMax.md>).

---

## Principes clés

1. **Shopping standard est pour le contrôle :** Si vous n'avez pas besoin de priorités de campagne, de CPC manuel ou de query sculpting, le PMax Feed-Only est plus simple.
2. **Le query sculpting est puissant mais complexe :** L'utiliser quand vous avez le volume et la capacité de gestion pour supporter trois niveaux de campagnes.
3. **CPC manuel fonctionne à n'importe quel volume :** Shopping standard avec CPC manuel est le point de départ le plus sûr pour les nouveaux comptes.
4. **Simplifier avant de scaler :** Une structure à deux campagnes Marque/Hors-marque fonctionne pour la plupart des comptes. Le query sculpting à trois niveaux n'est justifié que quand le volume et la capacité de gestion le supportent.
5. **Priorités + négatifs = routage :** La priorité de campagne ne signifie pas "importance". Elle signifie "premier tour en enchère".

---

## Documents liés

| **Document** | **Relation** |
| --- | --- |
| [Product Feed Quality Mental Model](<../flux-produit/Flux Produit - Qualité du flux produits.md>) | Prérequis (exigences de qualité du flux) |
| [Product Feed Segmentation Mental Model](<../flux-produit/Flux Produit - Choisir une segmentation.md>) | En amont (méthode de segmentation produits, s'applique aux deux Shopping et PMax) |
| [Shopping Campaign Type Mental Model](<Shopping - Types de campagne Shopping.md>) | En amont (décision Shopping standard vs. PMax) |
| [PMax Structure Mental Model (Ecommerce)](<../pmax/Pmax - Structure PMax (E-commerce).md>) | Parallèle (structure PMax pour l'e-commerce) |
| [Shopping Campaign Settings Reference](<../strategie/Strategie - Paramètres universels de campagne.md>) | Référence (tous les paramètres de campagne) |
| [Conversion Volume Thresholds Reference](<../suivi/Suivi - Seuils de volume de conversions.md>) | Référence (seuils de volume par stratégie d'enchères) |
| [Brand Separation Reference](<../search/Search - Séparation de marque.md>) | Prérequis (séparation de marque avant structure) |
| [Search PMax Query Routing Reference](<../pmax/Pmax - Routage des requêtes Search PMax.md>) | Référence (routage enchères Shopping vs. PMax) |
| [Feed Segmentation Catalog](<../flux-produit/Flux Produit - Tactiques de segmentation.md>) | Référence (tactiques de custom labels, implémentation) |
| [SOP - Lancer une campagne Shopping standard](<Shopping - Lancer une campagne Shopping standard.md>) | Exécution (configuration de campagne) |
