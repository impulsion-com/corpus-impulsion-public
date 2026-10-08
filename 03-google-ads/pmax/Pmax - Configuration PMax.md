# Configuration PMax

> **Plateforme :** Google Ads
> **Catégorie :** Pmax
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Ce document fournit les paramètres de configuration recommandés pour les campagnes PMax dans tous les secteurs.

PMax dispose de nombreux paramètres qui affectent la performance. Ce document couvre les paramètres à activer, désactiver ou configurer pour des résultats optimaux selon vos objectifs de campagne.

---

## Ce que ne couvre PAS ce document

Ce document ne couvre **pas** :

- Les décisions de structure PMax (Voir : [PMax Structure Mental Model (Lead Gen/SaaS)](<Pmax - Structure PMax (Lead Gen-SaaS).md>) ou [PMax Structure Mental Model (Ecommerce)](<Pmax - Structure PMax (E-commerce).md>))
- La configuration pas à pas (Voir les SOPs correspondantes)
- La liste de tous les paramètres disponibles (Voir : [Shopping Campaign Settings Reference](<../strategie/Strategie - Paramètres universels de campagne.md>) pour l'Ecommerce)
- Les types de signaux d'audience (Voir : [Audience Signals Reference](<../audiences/Audiences - Signaux d'audience.md>))

---

## Référence rapide : paramètres clés

| **Paramètre** | **Recommandé** | **Pourquoi** |
|-------------|-----------------|---------|
| Expansion de l'URL finale | DÉSACTIVÉ (en général) | Contrôler la destination de la Landing Page |
| Exclusions de marque | ACTIVÉ | Empêcher la cannibalisation de la marque |
| Acquisition client | À considérer | Optimiser les enchères pour les nouveaux clients |
| Signaux d'audience | Ajouter | Améliorer l'efficacité du ciblage |
| Exclusions de données | À considérer | Contrôler le mix de remarketing |

---

## Configuration des enchères

### Sélection de la stratégie d'enchères

| **Scénario** | **Stratégie** | **Objectif** |
|--------------|--------------|------------|
| Nouvelle campagne, construction de volume | Maximiser les conversions | Pas d'objectif |
| Nouvelle campagne avec des valeurs | Maximiser la valeur de conversion | Pas d'objectif |
| 30+ conversions/mois | Maximiser les conversions | CPA cible |
| 50+ conversions/mois avec des valeurs | Maximiser la valeur de conversion | ROAS cible |

### Recommandations de stratégie d'enchères

| **Paramètre** | **Recommandation** | **Exception** |
|-------------|-------------------|---------------|
| Commencer sans objectifs | Recommandé pour les nouvelles campagnes | Passer si migration avec un historique solide |
| Ajouter un objectif après l'apprentissage | Attendre 2-4 semaines, 30+ conversions | Ajouter plus tôt si confiant dans l'objectif |
| Agressivité de l'objectif | Commencer large (10-20% au-dessus du réel) | Resserrer progressivement |

> Ne définissez pas d'objectifs agressifs sur les nouvelles campagnes. PMax a besoin de marge pour apprendre. Des objectifs trop agressifs étouffent l'apprentissage.

---

## Expansion de l'URL finale

### Ce que ça fait

L'expansion de l'URL finale permet à Google de sélectionner des Landing Pages depuis votre site au lieu d'utiliser uniquement l'URL finale que vous spécifiez.

### Recommandations par secteur

| **Secteur** | **Paramètre** | **Pourquoi** |
|--------------|-------------|---------|
| **Lead Gen/SaaS** | DÉSACTIVÉ ou Tester | Diriger vers des Landing Pages spécifiques (tester si vous avez plusieurs pages pertinentes) |
| **Ecommerce Feed-Only** | DÉSACTIVÉ | Les pages produit du flux sont correctes |
| **Ecommerce Full Assets** | DÉSACTIVÉ ou Tester | Tester si le site a beaucoup de pages pertinentes |

### Quand activer

| **Activer quand** | **Garder désactivé quand** |
|-----------------|-------------------|
| Grand site avec beaucoup de pages pertinentes | Landing Page spécifique requise |
| Vous voulez que Google trouve les pages qui convertissent | Campagnes centrées sur le produit |
| Test de pages incrémentales | Lead Gen avec des Landing Pages optimisées |

### Règles d'exclusion d'URL

Si vous activez l'expansion de l'URL finale, utilisez des règles d'exclusion pour empêcher les pages non souhaitées :

| **Exclure** | **Exemple** |
|-------------|-------------|
| Articles de blog (s'ils ne convertissent pas) | `/blog/*` |
| Pages de support | `/help/*`, `/support/*` |
| Pages carrières | `/careers/*` |
| Pages de politique | `/privacy`, `/terms` |

---

## Exclusions de marque

### Pourquoi c'est obligatoire

Les exclusions de marque empêchent PMax de capturer votre trafic de marque peu cher, ce qui :
- Gonfle les métriques de performance de PMax
- Cannibalise votre campagne Search de marque
- Cache les vrais coûts d'acquisition

### Configuration

| **Étape** | **Action** |
|----------|------------|
| 1 | Aller dans Paramètres > Autres paramètres > Exclusions de marque |
| 2 | Cliquer sur "Ajouter des listes de marques" |
| 3 | Ajouter le(s) nom(s) de votre marque |
| 4 | Ajouter les fautes de frappe courantes de la marque |

### Quoi exclure

| **Inclure** | **Exemple** |
|-------------|-------------|
| Noms de produits (si brandés) | "Nom du produit" |

### Limitations des exclusions de marque (bleeding marque/hors-marque)

Les exclusions de marque PMax matchent les noms de marque exacts mais ne capturent pas les variations :

| **Limitation** | **Impact** | **Solution** |
|----------------|------------|----------------|
| Fautes de frappe non captées | Les requêtes de marque avec des typos sont diffusées dans PMax hors-marque | Ajouter les fautes courantes aux listes de mots-clés à exclure |
| Abréviations non captées | Les noms de marque raccourcis contournent les exclusions | Ajouter les abréviations aux listes de mots-clés à exclure |
| Variations d'ordre des mots | Des arrangements de mots différents peuvent contourner les filtres | Construire des listes de mots-clés à exclure complètes |

**Recommandation :** Traitez les exclusions de marque comme la première couche de défense. Utilisez les listes de mots-clés à exclure comme mécanisme principal pour une séparation stricte marque/hors-marque.

> Pour une séparation de marque complète : Voir [Brand Separation Reference](<../search/Search - Séparation de marque.md>).

---

## Paramètres d'acquisition client

### Ce que ça fait

Les paramètres d'acquisition client **ajustent les enchères** pour prioriser les nouveaux clients. Ce n'est pas du tracking (suivi des conversions/évènements) : ça change activement comment Google enchérit dans les enchères.

> Le tracking est séparé des enchères. Vous pouvez suivre les clients nouveaux vs récurrents via la fonctionnalité de données de nouveau client sans activer les enchères d'acquisition client. Ça vous donne de la visibilité sur le mix client sans changer le comportement d'enchères.

### Paramètres au niveau du compte

Configurez d'abord les paramètres de cycle de vie client au niveau du compte :

| **Paramètre** | **Objectif** |
|-------------|-------------|
| **Valeur nouveau client** | Ajoute une valeur de conversion incrémentale pour les nouveaux clients |
| **Valeur client haute valeur** | Ajoute une valeur supplémentaire pour les nouveaux clients à haute valeur |
| **Segments d'audience client** | Définit qui compte comme client existant |

**Où configurer :** Outils et paramètres > Conversions > Objectifs de cycle de vie client

### Paramètres au niveau de la campagne

| **Paramètre** | **Effet** |
|-------------|------------|
| **Désactivé** | Pas d'optimisation des enchères pour les nouveaux clients (le tracking fonctionne toujours s'il est activé) |
| **Enchérir plus pour les nouveaux clients** | Enchères plus élevées pour les utilisateurs absents de votre liste client |
| **Enchérir uniquement pour les nouveaux clients** | Exclut les clients récurrents des enchères entièrement |

**Où configurer :** Paramètres de campagne > Acquisition client

### Recommandations

| **Objectif** | **Paramètre de campagne** |
|----------|---------------------|
| Suivre le mix client uniquement | Désactivé (activer la fonctionnalité de données nouveau client pour le tracking) |
| Croissance avec remarketing équilibré | Enchérir plus pour les nouveaux clients |
| Acquisition pure (pas de remarketing) | Enchérir uniquement pour les nouveaux clients |

> Commencez par "Enchérir plus" et non "Enchérir uniquement". Exclure entièrement les clients récurrents supprime les conversions de remarketing, ce qui peut nuire à la performance globale.

> Pour la configuration détaillée au niveau du compte : Voir [Customer Lifecycle Optimization Reference](<../../01-strategie/fondamentaux/Fondamentaux - Optimisation du cycle de vie client.md>).

---

## Exclusions de données (Vos données)

### Ce que ça fait

Les exclusions de données empêchent PMax d'optimiser vers des audiences spécifiques. Contrairement aux signaux d'audience (suggestions), les exclusions sont des restrictions fermes.

### Schémas d'exclusion courants

| **Objectif** | **Exclure** |
|----------|-------------|
| Réduire la part de remarketing | Visiteurs du site (tous) |
| Éviter les convertisseurs récents | Convertisseurs (7-30 jours) |
| Se concentrer sur les nouveaux clients | Tous les clients existants |
| Réduire les retours à faible valeur | Segment client à faible valeur |

### Quand utiliser

| **Utiliser quand** | **Éviter quand** |
|--------------|---------------|
| Le ROAS semble artificiellement élevé | Vous voulez que le remarketing contribue |
| Vous voulez mesurer la vraie acquisition | La campagne manque de volume |
| Test d'incrémentalité | Période d'apprentissage (2-4 premières semaines) |

### Configuration

1. Paramètres de campagne - Autres paramètres - **Vos exclusions de données**
2. Cliquer pour exclure des audiences
3. Sélectionner les audiences à exclure

> N'excluez pas pendant la période d'apprentissage. Laissez PMax apprendre d'abord, puis ajoutez les exclusions si nécessaire.

---

## Configuration des signaux d'audience

> Les signaux d'audience s'appliquent uniquement au PMax Full Assets. Pour le PMax Feed-Only, votre flux produit EST votre ciblage. N'ajoutez pas de signaux d'audience aux campagnes Feed-Only.

### Recommandations (Full Assets et Lead Gen/SaaS uniquement)

| **Type de signal** | **Recommandation** | **Priorité** |
|-----------------|-------------------|--------------|
| Customer Match (clients/SQL) | Toujours ajouter | La plus haute |
| Convertisseurs du site | Toujours ajouter | Haute |
| Visiteurs du site (haute intention) | Ajouter si disponible | Haute |
| Segments personnalisés (concurrents) | Ajouter 5-10 URLs | Moyenne |
| Segments personnalisés (termes de recherche) | Ajouter 10-15 termes | Moyenne |
| Audiences sur le marché | Ajouter 3-5 pertinentes | Plus basse |
| Données démographiques | Généralement ignorer | La plus basse |

### Quantité de signaux

| **Type de signal** | **Quantité recommandée** |
|-----------------|-------------------------|
| Listes Customer Match | 1-3 listes |
| Audiences du site | 2-5 audiences |
| Segments personnalisés | 1-3 segments |
| Sur le marché | 3-5 catégories |

> Qualité plutôt que quantité. Moins de signaux forts surpassent beaucoup de signaux faibles.

> Pour l'implémentation des signaux : Voir [Audience Signals Reference](<../audiences/Audiences - Signaux d'audience.md>).

---

## Configuration des assets

### Exigences minimum

| **Type d'asset** | **Minimum** | **Recommandé** |
|----------------|-------------|-----------------|
| Titres | 3 | 5-11 |
| Titres longs | 1 | 2-5 |
| Descriptions | 2 | 4 |
| Images (paysage) | 1 | 3+ |
| Images (carré) | 1 | 3+ |
| Logos | 1 | 1-2 |
| Vidéos | 0 | 1+ |

### Recommandations de qualité des assets

| **Recommandation** | **Pourquoi** |
|-------------------|---------|
| Toujours inclure une vidéo | Les vidéos auto-générées sous-performent |
| Diversifier les titres | Différents angles = différentes audiences |
| Utiliser des images haute qualité | Les images médiocres nuisent à tous les emplacements |
| Mettre à jour les assets trimestriellement | Prévient la fatigue créative |

> Pour les spécifications des assets : Voir [PMax Asset Group Strategy Reference](<Pmax - Stratégie des asset groups PMax.md>).

---

## Configuration Feed-Only (Ecommerce)

### Créer un vrai comportement Feed-Only

> Feed-Only signifie ZÉRO asset créatif. Si vous ajoutez un seul asset (titres, images, vidéos), PMax diffusera sur d'autres réseaux que Shopping (ex. : Remarketing sur Display). Votre flux produit EST votre créatif.

| **Paramètre** | **Configuration** |
|-------------|------------------|
| Titres | NE PAS ajouter |
| Titres longs | NE PAS ajouter |
| Descriptions | NE PAS ajouter |
| Images | NE PAS ajouter |
| Vidéos | NE PAS ajouter |
| Logos | NE PAS ajouter |
| Signaux d'audience | Non nécessaires (votre flux est votre ciblage) |
| Expansion de l'URL finale | DÉSACTIVÉ |
| Groupes de listings | Configurer les subdivisions de produits |

### Structure des groupes de listings

| **Approche** | **Attribut** | **Quand** |
|--------------|---------------|----------|
| Tous les produits | - | Point de départ |
| Par type de produit | product_type | Objectifs par catégorie |
| Par label personnalisé | custom_label_0-4 | Segmentation par performance |
| Par marque | brand | Budgets par marque |

> Pour la configuration Feed-Only : Voir [SOP - Lancer une campagne PMax feed-only](<Pmax - Lancer une campagne PMax Feed-Only.md>).

---

## Paramètres d'optimisation des assets

PMax inclut plusieurs fonctionnalités d'optimisation des assets qui peuvent améliorer ou modifier automatiquement vos créatifs.

### Menu déroulant d'optimisation des assets

| **Paramètre** | **Ce que ça fait** | **Recommandation** |
|-------------|------------------|-------------------|
| **Personnalisation de texte** | Titres/descriptions générés par IA à partir du site, des Landing Pages et des annonces | DÉSACTIVÉ (par défaut) ou Tester avec les directives textuelles configurées |
| **Expansion de l'URL finale** | Google sélectionne des Landing Pages depuis votre site (nécessite la Personnalisation de texte ACTIVÉE) | DÉSACTIVÉ pour la plupart des campagnes |
| **Amélioration d'image** | Google améliore ou ajoute des images depuis la Landing Page | DÉSACTIVÉ (contrôlez votre créatif) |
| **Amélioration vidéo** | Google génère automatiquement une vidéo à partir d'images | DÉSACTIVÉ (les vidéos auto-générées sous-performent) |

**Où configurer :** Paramètres de campagne > Optimisation des assets

Les directives textuelles (exclusions de termes et restrictions de messages) sont disponibles quand la Personnalisation de texte est activée. Configurez-les en premier pour empêcher les messages hors-marque. Les directives visuelles (couleurs de marque, polices) s'appliquent à l'amélioration d'image et de vidéo.

> Pour des recommandations détaillées sur l'optimisation des assets : Voir [Asset Optimization Control Guidelines](<Pmax - Contrôle de l'optimisation des assets.md>).

> Pour le Feed-Only : Garder tous les paramètres d'optimisation des assets DÉSACTIVÉS. Votre flux est votre créatif.

---

## Flux d'annonces dynamiques

Le flux d'annonces dynamiques permet des créatifs personnalisés basés sur le comportement utilisateur.

| **Paramètre** | **Quand utiliser** |
|-------------|-----------------|
| **Activer le flux d'annonces dynamiques** | Quand vous voulez des annonces produit personnalisées basées sur la navigation utilisateur |
| **Sélection du flux** | Sélectionner le flux à utiliser au niveau de la campagne |

**Configuration :** Paramètres de campagne > Flux d'annonces dynamiques

---

## Règles de valeur

Les règles de valeur permettent d'ajuster les valeurs de conversion en fonction des attributs client.

| **Type de condition** | **Exemple d'utilisation** |
|-------------------|-----------------|
| **Audience** | Augmenter la valeur pour les segments client à haute valeur |
| **Zone géographique** | Augmenter la valeur pour les régions à forte marge |
| **Appareil** | Ajuster la valeur par type d'appareil |

> Une seule règle s'exécute par conversion. Si plusieurs règles correspondent, seule la règle de priorité la plus élevée s'applique.

> Nous ne recommandons pas d'utiliser les règles de valeur dans la plupart des cas. Les règles de valeur ajoutent de la complexité et peuvent interférer avec l'apprentissage de la stratégie d'enchères. Utilisez-les uniquement quand vous avez des raisons claires et validées d'ajuster les valeurs par segment.

**Où configurer :** Outils et paramètres > Conversions > Règles de valeur

---

## Flux de pages

Les flux de pages vous permettent de fournir des URLs spécifiques que Google utilisera avec l'expansion de l'URL finale.

### Configuration

| **Niveau** | **Paramètre** |
|-----------|-------------|
| **Niveau campagne** | Sélectionner le flux de pages à utiliser |
| **Niveau groupe d'assets** | Définir des règles d'URL pour contrôler quelles pages |

**Quand utiliser :** Quand vous voulez l'expansion de l'URL finale mais avez besoin de contrôler quelles pages Google peut utiliser.

---

## Paramètres de zone géographique et de langue

### Ciblage géographique

| **Paramètre** | **Recommandation** |
|-------------|-------------------|
| Type de cible | Présence (pas "Présence ou intérêt") |
| Zones géographiques | Uniquement là où vous pouvez vendre/servir |
| Exclusions | Zones que vous ne pouvez pas servir |

### Ciblage linguistique

| **Paramètre** | **Recommandation** |
|-------------|-------------------|
| Langues | Toutes les langues que votre audience parle |

> Utilisez "Présence" pour la plupart des campagnes. "Présence ou intérêt" peut afficher des annonces à des utilisateurs qui ne sont pas dans votre zone cible.

---

## Mots-clés à exclure

### Disponibilité

| **Fonctionnalité** | **Disponible** |
|-------------|---------------|
| Négatifs au niveau campagne | Oui |
| Listes de mots-clés à exclure | Oui |
| Négatifs au niveau groupe d'annonces | Non (pas de groupes d'annonces dans PMax) |

### Recommandations

| **Cas d'usage** | **Action** |
|--------------|------------|
| Protection de marque | Ajouter les termes de marque en négatifs (ou utiliser les exclusions de marque) |
| Requêtes non pertinentes | Ajouter après examen du rapport sur les termes de recherche |
| Dépenses gaspillées connues | Ajouter préventivement si vous avez des données Search |

> Les exclusions de marque sont plus simples que les mots-clés à exclure pour la protection de marque. Utilisez la fonctionnalité dédiée d'exclusion de marque.

> Vous pouvez aussi exclure les requêtes non pertinentes en consultant le rapport sur les termes de recherche par défaut. PMax fournit maintenant une visibilité complète des termes de recherche, vous permettant d'ajouter des négatifs basés sur les données de requêtes réelles.

---

## Paramètres de planning et de budget

### Planning d'annonces

| **Paramètre** | **Recommandation** |
|-------------|-------------------|
| Par défaut | Diffuser 24h/24, 7j/7 |
| Planning personnalisé | Uniquement si les données montrent des schémas clairs |

> Ne pré-optimisez pas. Laissez PMax apprendre quand les conversions se produisent, puis envisagez des plannings si les données le justifient.

### Recommandations de budget

| **Scénario** | **Budget quotidien minimum** |
|--------------|-------------------------|
| Nouvelle campagne, test | 50 EUR+ |
| Lead Gen/SaaS | 10x le CPA cible |
| Ecommerce Feed-Only | Objectif de revenu / ROAS cible |
| Ecommerce Full Assets | 50 EUR+ (le cross-canal nécessite plus) |

> Pour des recommandations détaillées de stratégie d'enchères : Voir [Bid Strategy Selection Reference](<../encheres/Enchères - Sélection de stratégie d'enchères.md>).

---

## Tableau récapitulatif des paramètres

| **Paramètre** | **Lead Gen/SaaS** | **Ecommerce Feed-Only** | **Ecommerce Full Assets** |
|-------------|-------------------|------------------------|--------------------------|
| Expansion URL finale | DÉSACTIVÉ ou Tester | DÉSACTIVÉ | Tester |
| Exclusions de marque | Requis | Requis | Requis |
| Acquisition client | Recommandé | Recommandé | Recommandé |
| Exclusions de données | À considérer | À considérer | À considérer |
| Signaux d'audience | Requis | Non nécessaires | Recommandé |
| Personnalisation de texte | DÉSACTIVÉ ou Tester (avec directives textuelles) | DÉSACTIVÉ | DÉSACTIVÉ ou Tester (avec directives textuelles) |
| Titres | 5-11 | Aucun | 5-11 |
| Descriptions | 4 | Aucune | 4 |
| Vidéo | 1+ (requis) | Aucune | 1+ (requis) |
| Images | 3+ par format | Aucune | 3+ par format |
| Mots-clés à exclure | Ajouter selon les besoins | Ajouter selon les besoins | Ajouter selon les besoins |

---

## Documents liés

| **Document** | **Relation** |
|--------------|------------------|
| [PMax Structure Mental Model (Lead Gen/SaaS)](<Pmax - Structure PMax (Lead Gen-SaaS).md>) | Décisions de structure |
| [PMax Structure Mental Model (Ecommerce)](<Pmax - Structure PMax (E-commerce).md>) | Décisions de structure |
| [Brand Separation Reference](<../search/Search - Séparation de marque.md>) | Implémentation des exclusions de marque |
| [Audience Signals Reference](<../audiences/Audiences - Signaux d'audience.md>) | Types de signaux et configuration |
| [PMax Asset Group Strategy Reference](<Pmax - Stratégie des asset groups PMax.md>) | Spécifications des assets |
| [Customer Lifecycle Optimization Reference](<../../01-strategie/fondamentaux/Fondamentaux - Optimisation du cycle de vie client.md>) | Paramètres d'acquisition client |
| [Shopping Campaign Settings Reference](<../strategie/Strategie - Paramètres universels de campagne.md>) | Paramètres ecommerce |
