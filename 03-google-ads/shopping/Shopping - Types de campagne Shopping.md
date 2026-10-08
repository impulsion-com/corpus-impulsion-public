# Types de campagne Shopping

> **Plateforme :** Google Ads
> **Catégorie :** Shopping
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Ce document vous aide à choisir le bon type de campagne Shopping pour l'e-commerce : Shopping standard, PMax Feed-Only ou PMax Full Assets.

> ❓ **La question centrale :** Quel type de campagne utiliser pour mon catalogue produits, et pourquoi ?

Ce sont trois positions stratégiques distinctes, pas des points sur un spectre :

- **Shopping standard** = Stratégie de contrôle manuel. Vous définissez les enchères (CPC manuel ou stratégies d'enchères de portefeuille avec plafond de CPC max), routez les requêtes et gérez les priorités de campagne. Idéal quand vous avez besoin de précision, de transparence ou que le volume est trop faible pour l'automatisation.
- **PMax Feed-Only** = Stratégie Shopping automatisée. Même surface Shopping que le Shopping standard, même flux, mais Google gère les enchères et l'optimisation. Moins de contrôle manuel, plus de dépendance à l'IA de Google, plus facile à gérer. Idéal quand vous avez un volume suffisant et voulez de la simplicité sans investissement créatif.
- **PMax Full Assets** = Stratégie de croissance cross-canal. Toutes les surfaces Google, avec un investissement créatif en images, vidéo et texte. Modèle de campagne fondamentalement différent, pas juste "Shopping avec plus de portée".

> 💡 **Le PMax Feed-Only est stratégiquement plus proche du Shopping standard que du PMax Full Assets :** Les deux opèrent sur la même surface Shopping avec la même source de données (votre flux produits) et la même logique de segmentation. Le PMax Full Assets sert sur toutes les surfaces Google avec des exigences créatives différentes et des dynamiques d'optimisation différentes.

---

## Ce que ce modèle NE couvre PAS

Ce document NE couvre PAS :

- Les exigences du flux produits (Voir : [Product Feed Quality Mental Model](<../flux-produit/Flux Produit - Qualité du flux produits.md>))
- La structuration des campagnes Shopping standard (Voir : [Standard Shopping Campaign Structure Mental Model](<Shopping - Structure de campagne Shopping standard.md>))
- La structuration des campagnes PMax pour l'e-commerce (Voir : [PMax Structure Mental Model (Ecommerce)](<../pmax/Pmax - Structure PMax (E-commerce).md>))
- La référence des paramètres de campagne (Voir : [Shopping Campaign Settings Reference](<../strategie/Strategie - Paramètres universels de campagne.md>))
- Les tactiques de segmentation produits (Voir : [Feed Segmentation Catalog](<../flux-produit/Flux Produit - Tactiques de segmentation.md>))
- La configuration étape par étape de campagne (Voir : SOPs pour chaque type de campagne)

---

## Les trois types de campagnes

| **Type** | **Ce que c'est** | **Couverture de canal** |
| --- | --- | --- |
| 1️⃣ **Shopping standard** | Campagnes Shopping traditionnelles avec contrôle total | Surface Shopping uniquement |
| 2️⃣ **PMax Feed-Only** | Performance Max utilisant uniquement le flux produits (pas d'assets créatifs) | Principalement Shopping, un peu de fuite Display/YouTube |
| 3️⃣ **PMax Full Assets** | Performance Max avec assets créatifs complets | Toutes les surfaces Google (Shopping, Search, Display, YouTube, Gmail, Discover) |

---

## Profil stratégique

| **Facteur** | **Shopping standard** | **PMax Feed-Only** | **PMax Full Assets** |
| --- | --- | --- | --- |
| **Rôle stratégique** | Exécution Shopping de précision | Exécution Shopping automatisée | Croissance produit cross-canal |
| **Surface principale** | Shopping uniquement | Shopping (avec fuite mineure) | Toutes les surfaces Google |
| **Modèle de contrôle** | Total (enchères manuelles, priorités, négatifs) | Limité (enchères automatisées, pas de priorités) | Minimal (tout automatisé) |
| **Exigence créative** | Aucune (flux uniquement) | Aucune (flux uniquement) | Élevée (images, vidéo, titres, descriptions) |
| **Exigence de données** | Fonctionne à n'importe quel volume | 30+ conversions/mois | 50+ conversions/mois |
| **Profil de risque** | Charge de gestion plus élevée | Fuite mineure de dépenses vers le non-Shopping | Risque de dépenses significatives sur les placements non-Shopping |

---

## Identité stratégique

### 1️⃣ Shopping standard : quand la précision compte

**Quand choisir :**
- Vous avez besoin de query sculpting, routage par priorité ou contrôle manuel des enchères
- Le volume de conversions est en dessous de 30/mois (CPC manuel fonctionne à n'importe quel volume)
- Vous avez besoin d'une transparence totale sur les mécaniques d'enchères et le comportement en enchère

**Ce que vous optimisez :** Contrôle maximal sur quelles requêtes déclenchent vos annonces, à quelle enchère, pour quels produits.

**Ce que vous perdez :** Un peu d'efficacité d'automatisation. Avec ROAS cible, Shopping standard peut toujours être automatisé : seul CPC manuel nécessite la gestion manuelle des enchères. Vous perdez aussi les plafonds de CPC max avec les stratégies d'enchères de portefeuille (disponibles dans Shopping standard uniquement, pas dans PMax).

### 2️⃣ PMax Feed-Only : quand l'automatisation sert le Shopping

**Quand choisir :**
- Vous avez 30+ conversions/mois et voulez la performance Shopping avec moins de gestion
- Vous n'avez pas besoin de priorités de campagne ou de contrôle manuel des enchères
- Vous voulez des enchères automatisées sans investir dans des assets créatifs

**Ce que vous optimisez :** Performance Shopping avec une charge de gestion minimale. Même surface que Shopping standard, exécution automatisée.

**Ce que vous perdez :** Contrôle au niveau des enchères, routage par priorité de campagne, et un peu de fuite de dépenses vers Display/YouTube. Les keywords négatifs et les listes de keywords négatifs sont disponibles, mais vous ne pouvez pas utiliser les priorités de campagne ni définir des enchères manuelles.

### 3️⃣ PMax Full Assets : quand la croissance nécessite de nouvelles surfaces

**Quand choisir :**
- Vous voulez de la notoriété produit au-delà du Shopping (YouTube, Display, Gmail, Discover)
- Vous avez des assets créatifs de qualité (images, vidéo, texte) prêts à déployer
- Vous avez 50+ conversions/mois pour supporter l'optimisation cross-canal

**Ce que vous optimisez :** Visibilité produit cross-canal et demande incrémentale depuis des surfaces que Search et Shopping ne peuvent pas atteindre.

**Ce que vous perdez :** Contrôle au niveau canal, transparence des placements et simplicité créative. Un créatif faible cause des dépenses gaspillées sur les surfaces non-Shopping. C'est un modèle de campagne différent, pas une mise à jour du Feed-Only.

---

## Méthode de décision

```
Quel est votre objectif principal pour ce set de produits ?
|
+-- Précision/transparence (query sculpting, enchères manuelles, routage par priorité)
|   --> Shopping standard
|
+-- Performance Shopping avec moins de gestion
|   +-- 30+ conversions/mois ? OUI --> PMax Feed-Only
|   +-- NON --> Shopping standard (volume insuffisant pour l'automatisation)
|
+-- Notoriété produit cross-canal (YouTube, Display, Gmail, Discover)
|   +-- Créatif de qualité + 50+ conversions/mois ? --> PMax Full Assets
|   +-- Créatif mais <50 conversions/mois ? --> PMax Feed-Only (construire le volume d'abord)
|   +-- Pas de créatif ? --> PMax Feed-Only ou Shopping standard
|
+-- Approche entièrement automatisée, sans intervention (pas d'autre type de campagne en place)
    +-- Créatif de qualité + 50+ conversions/mois ? --> PMax Full Assets
    +-- Pas de créatif ou <50 conversions/mois ? --> PMax Feed-Only
```

> 💡 **Shopping standard par défaut en cas d'incertitude :** Vous pouvez toujours migrer vers PMax plus tard. Migrer de PMax vers Shopping standard est plus difficile parce que vous perdez l'historique d'apprentissage de la campagne.

---

## Quand réévaluer le type de campagne

Réévaluez votre type de campagne quand l'un de ces déclencheurs survient :

| **Déclencheur** | **Type actuel** | **Envisager de passer à** | **Pourquoi** |
| --- | --- | --- | --- |
| Le volume de conversions dépasse 50/mois de manière constante | Shopping standard | PMax Feed-Only | Assez de données pour que les enchères automatisées surpassent le manuel |
| Besoin de portée cross-canal (YouTube, Display, Gmail) | Shopping standard ou PMax Feed-Only | PMax Full Assets | Notoriété produit au-delà de la surface Shopping |
| Perte de contrôle sur les termes de recherche ou les placements | PMax (tous) | Shopping standard | PMax supporte maintenant les keywords négatifs et les listes de keywords négatifs, mais Shopping standard offre toujours un contrôle plus granulaire via les priorités de campagne et le query sculpting |
| Assets créatifs maintenant disponibles (images, vidéo) | PMax Feed-Only | PMax Full Assets | Peut exploiter toutes les surfaces Google |
| Performance en baisse avec l'automatisation | PMax Feed-Only | Shopping standard | Le contrôle manuel peut récupérer la performance |
| Contraintes budgétaires nécessitant de la précision | PMax (tous) | Shopping standard | CPC manuel et les priorités donnent un contrôle plus serré |
| Expansion vers de nouveaux marchés | Shopping standard | PMax Feed-Only ou Full Assets | L'automatisation gère l'expansion plus efficacement |

> ⚠️ **Ne pas changer de type de campagne de manière réactive :** Évaluer sur 30+ jours de données stables. Les baisses à court terme pendant les périodes d'apprentissage sont normales et ne sont pas une raison de changer.

---

## Lancer les deux ensemble (approches hybrides)

Depuis le T4 2024, **le Classement de l'annonce détermine la priorité en enchère** : PMax ne gagne plus automatiquement sur Shopping standard.

| **Approche hybride** | **Comment ça fonctionne** | **Idéal pour** |
| --- | --- | --- |
| **PMax principal + Shopping fallback** | PMax gère la plupart des produits ; Shopping standard en basse priorité attrape le débordement | Comptes en transition de Shopping vers PMax |
| **Shopping principal + PMax test** | Shopping standard principal ; PMax à budget limité teste le volume incrémental | Tester PMax sans risquer la performance actuelle |
| **Split par segment** | Exemple : Heroes en Shopping standard (contrôle), Zombies en PMax (automatisation) | Comptes matures avec segmentation par performance |

> ↪️ **Pour les règles de routage des enchères entre Shopping et PMax :** Voir [Search PMax Query Routing Reference](<../pmax/Pmax - Routage des requêtes Search PMax.md>).

---

## Seuils de volume par type de campagne

Shopping standard fonctionne à n'importe quel volume avec CPC manuel. PMax nécessite 30+ conversions/mois pour CPA cible, 50+ pour ROAS cible. Quand le volume est insuffisant, commencer avec des stratégies sans objectif (Maximiser les conversions ou Maximize Conv. Value) et consolider les campagnes.

> ↪️ **Pour les seuils complets par stratégie d'enchères et type de campagne, les vérifications de viabilité budgétaire et les tactiques de remédiation :** Voir [Conversion Volume Thresholds Reference](<../suivi/Suivi - Seuils de volume de conversions.md>).

---

## Erreurs courantes

| **Erreur** | **Pourquoi c'est faux** | **Correction** |
| --- | --- | --- |
| Choisir PMax parce que "c'est plus récent" | Le type de campagne doit correspondre aux besoins de contrôle et au volume, pas aux tendances | Évaluer par rapport à la méthode de décision ci-dessus |
| Lancer PMax sans exclusions de marque | Le trafic de marque gonfle les métriques PMax, cache le vrai coût d'acquisition | Ajouter les exclusions de marque dans les paramètres de campagne PMax |
| PMax Full Assets sans investissement créatif | Des assets faibles causent des dépenses gaspillées sur Display/YouTube | Soit investir dans le créatif, soit utiliser Feed-Only |
| Changer de type de campagne en période de pic | La période d'apprentissage perturbe la performance pendant une période de revenu critique | Changer en basse saison, accorder 2-4 semaines pour l'apprentissage |
| Lancer en hybride sans exclusions | Les mêmes produits en concurrence entre les campagnes, fragmentant les données | Utiliser les custom labels pour s'assurer qu'aucun produit ne chevauche |
| Juger PMax la première semaine | PMax a besoin de 2-4 semaines pour apprendre ; la performance initiale n'est pas représentative | Attendre 30 jours avant d'évaluer |

---

## Principes clés

1. **Chaque type de campagne sert un objectif stratégique distinct :** Shopping standard est pour le contrôle de précision. PMax Feed-Only est pour le Shopping automatisé. PMax Full Assets est pour la croissance cross-canal. Choisir en fonction de la stratégie, pas des suppositions sur la performance.
2. **PMax Feed-Only et Shopping standard opèrent sur la même surface avec la même source de données :** La différence est dans le contrôle des enchères et l'expansion mineure de canal, pas dans les mécaniques fondamentales de campagne.
3. **Commencer par Shopping standard en cas d'incertitude :** Vous pouvez toujours migrer vers PMax. L'inverse est plus difficile.
4. **Le volume détermine la viabilité :** PMax a besoin de 30+ conversions/mois pour apprendre. Shopping standard fonctionne à n'importe quel volume avec CPC manuel.
5. **La séparation de marque est obligatoire quel que soit le type de campagne :** Séparer le trafic de marque au niveau campagne dans Shopping standard et PMax. Voir [Brand Separation Reference](<../search/Search - Séparation de marque.md>).
6. **Ne pas mélanger les types de campagnes pour les mêmes produits :** Si vous lancez en hybride, utilisez des exclusions pour que chaque produit apparaisse dans exactement un type de campagne.

---

## Annexe : Comparaison des fonctionnalités

| **Facteur** | **Shopping standard** | **PMax Feed-Only** | **PMax Full Assets** |
| --- | --- | --- | --- |
| **Contrôle des enchères** | Élevé (manuel ou portefeuille) | Faible (automatisé uniquement) | Faible (automatisé uniquement) |
| **Contrôle des placements** | Total (Shopping uniquement) | Limité (principalement Shopping) | Aucun (toutes les surfaces) |
| **Visibilité des termes de recherche** | Totale | Totale (maintenant dans le rapport standard) | Totale (maintenant dans le rapport standard) |
| **Support des keywords négatifs** | Total | Total | Total |
| **Priorités de campagne** | Oui (Haute/Moyenne/Basse) | Non | Non |
| **CPC manuel disponible** | Oui | Non | Non |
| **CPA cible disponible** | Non | Oui | Oui |
| **Nécessite des assets créatifs** | Non | Non | Oui (images, vidéo, texte) |
| **Portée de canal** | Surface Shopping uniquement | Pondéré Shopping (un peu de fuite) | Toutes les surfaces Google |
| **Complexité de configuration** | Moyenne | Faible | Élevée |
| **Période d'apprentissage** | 1-2 semaines | 2-4 semaines | 2-4 semaines |
| **Conv. min. pour ROAS cible** | 50/mois | 50/mois | 50/mois |

---

## Documents liés

| **Document** | **Relation** |
| --- | --- |
| [Product Feed Quality Mental Model](<../flux-produit/Flux Produit - Qualité du flux produits.md>) | Prérequis (exigences de qualité du flux) |
| [Standard Shopping Campaign Structure Mental Model](<Shopping - Structure de campagne Shopping standard.md>) | En aval (structure spécifique Shopping standard) |
| [PMax Structure Mental Model (Ecommerce)](<../pmax/Pmax - Structure PMax (E-commerce).md>) | En aval (structure PMax pour l'e-commerce) |
| [Product Feed Segmentation Mental Model](<../flux-produit/Flux Produit - Choisir une segmentation.md>) | En aval (méthode de segmentation produits) |
| [Shopping Campaign Settings Reference](<../strategie/Strategie - Paramètres universels de campagne.md>) | Référence (tous les paramètres de campagne) |
| [Feed Segmentation Catalog](<../flux-produit/Flux Produit - Tactiques de segmentation.md>) | Référence (tactiques de segmentation produits) |
| [Conversion Volume Thresholds Reference](<../suivi/Suivi - Seuils de volume de conversions.md>) | Référence (seuils de volume par stratégie d'enchères) |
| [Brand Separation Reference](<../search/Search - Séparation de marque.md>) | Référence (implémentation de la séparation de marque) |
| [Search PMax Query Routing Reference](<../pmax/Pmax - Routage des requêtes Search PMax.md>) | Référence (routage enchères Shopping vs. PMax) |
| [Audience Signals Reference](<../audiences/Audiences - Signaux d'audience.md>) | Référence (signaux d'audience pour PMax) |
| [SOP - Lancer une campagne Shopping standard](<Shopping - Lancer une campagne Shopping standard.md>) | Exécution (configuration Shopping standard) |
| [SOP - Lancer une campagne PMax feed-only](<../pmax/Pmax - Lancer une campagne PMax Feed-Only.md>) | Exécution (configuration PMax Feed-Only) |
| [SOP - Lancer une campagne PMax complete e-commerce](<../pmax/Pmax - Lancer une campagne PMax Full Assets e-commerce.md>) | Exécution (configuration PMax Full Assets) |
