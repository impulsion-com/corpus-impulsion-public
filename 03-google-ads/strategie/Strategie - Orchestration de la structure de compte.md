# Orchestration de la structure de compte

> **Plateforme :** Google Ads
> **Catégorie :** Strategie
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Ce document vous aide à décider quels types de campagnes lancer et comment ils s'articulent ensemble dans un compte Google Ads complet.

> ❓ **La question centrale :** Je lance (ou prévois de lancer) du Search, Shopping, PMax et/ou Display/Video/Demand Gen. Comment tout ça fonctionne ensemble sans se cannibaliser ?

Les modèles mentaux individuels par type de campagne expliquent comment structurer chaque type. Ce document explique comment les types sont liés entre eux : lequel lancer en premier, comment allouer le budget entre eux, et comment prévenir le chevauchement.

---

## Ce que ce modèle NE couvre PAS

Ce document NE couvre PAS :

- La structuration des campagnes au sein d'un même type (Voir : les modèles mentaux spécifiques aux campagnes ci-dessous)
- La mise en place étape par étape des campagnes (Voir : les SOPs spécifiques aux campagnes)
- La sélection de la stratégie d'enchères (Voir : [Bid Strategy Selection Reference](<../encheres/Enchères - Sélection de stratégie d'enchères.md>))
- La sélection de canaux cross-plateformes au-delà de Google Ads (Voir : [Upper Funnel Channel Selection Mental Model](<Strategie - Sélection de canal haut de tunnel.md>))

---

## Le principe de consolidation

> 💡 **Toujours consolider autant de trafic que possible. Ne segmenter que quand il y a une bonne raison.**

Cette règle d'or s'applique à chaque niveau : entre les types de campagnes, au sein des types de campagnes et jusqu'aux groupes d'annonces. Plus de données dans moins de campagnes signifie un apprentissage plus rapide, une meilleure performance des Stratégies d'enchères intelligentes et une gestion plus simple.

**Pourquoi la consolidation fonctionne :**

| **Avantage** | **Mécanisme** |
| --- | --- |
| Apprentissage plus rapide | Les Stratégies d'enchères intelligentes trouvent des schémas à travers plus de points de données |
| Meilleure performance | L'algorithme enchérit au niveau de la requête en utilisant les signaux de toutes les campagnes |
| Gestion plus simple | Moins de campagnes, moins de charge de gestion, moins de marge d'erreur |
| Analyse plus facile | Données concentrées plutôt qu'éparpillées dans des dizaines de campagnes |

**Quand ajouter un type de campagne ou séparer des campagnes :**

- Vous devez atteindre les utilisateurs sur des réseaux différents (Search capte la demande, Display/Video crée la demande)
- Vous avez besoin d'une allocation budgétaire, de stratégies d'enchères ou d'objectifs de conversion différents par produit/service
- Vous avez un volume de conversions suffisant pour supporter une campagne supplémentaire (30+ conversions/mois par campagne minimum)

---

## La hiérarchie des types de campagnes

Tous les types de campagnes ne servent pas le même objectif. Comprendre leurs rôles prévient le chevauchement et guide l'ordre de lancement.

| **Rôle** | **Types de campagnes** | **Comportement utilisateur** | **Efficacité** |
| --- | --- | --- | --- |
| **Captation de demande** | Search, Shopping, PMax (surface Shopping) | L'utilisateur vous cherche ou cherche votre produit | La plus haute |
| **Expansion de demande** | PMax (surfaces non-Shopping), Demand Gen | L'utilisateur n'a pas cherché, mais l'IA prédit une conversion | Moyenne |
| **Création de demande** | Display, Video | L'utilisateur est interrompu pendant une autre activité | La plus basse |

> ⚠️ **Commencez par la captation de demande :** Si votre budget est limité, allouez d'abord aux types de campagnes bas du tunnel (Search, Shopping). N'ajoutez la création de demande que quand la captation est rentable et non limitée par le budget.

---

## Le rôle de PMax : complémentaire, pas remplacement

Performance Max ne remplace pas les types de campagnes dédiés. C'est une couche supplémentaire qui comble les lacunes et maximise la couverture.

| **PMax fait** | **PMax ne fait pas** |
| --- | --- |
| Trouver des requêtes convertissantes que vous n'avez pas en mots-clés | Remplacer le contrôle au niveau des mots-clés en Search |
| Diffuser sur toutes les surfaces Google depuis une seule campagne | Vous donner de la transparence sur ce qui fonctionne où |
| Compléter la couverture Search et Shopping | Éliminer le besoin de types de campagnes dédiés |
| Découvrir de la demande incrémentale | Remplacer les campagnes de notoriété stratégiques (Display/Video) |

> ⚠️ **PMax va chercher le chemin le plus facile vers les conversions :** Cela signifie qu'il capte le trafic de marque, sur-indexe sur le remarketing, et gravite vers les surfaces Shopping pour l'e-commerce. Sans exclusions de marque et coordination appropriée, les métriques de PMax sont gonflées.

**Où PMax s'intègre par secteur :**

| **Secteur** | **Rôle de PMax** | **Importance** |
| --- | --- | --- |
| **E-commerce** | Critique : accès à la surface Shopping, promotion produit cross-canal | Élevée (le réseau Shopping est crucial) |
| **Lead Gen** | Optionnel : génération de leads cross-canal au-delà du Search | Moyenne (uniquement avec des signaux de qualité) |
| **SaaS** | Optionnel : génération d'essais/démos cross-canal au-delà du Search | Moyenne (uniquement avec des signaux de qualité) |
| **Services locaux** | Limité : Search typiquement suffisant, PMax ajoute Display/Maps | Faible-Moyenne |

---

## Sélection des types de campagnes par secteur

### E-commerce

| **Type de campagne** | **Rôle** | **Quand ajouter** | **Part de budget** |
| --- | --- | --- | --- |
| **Search de marque** | Protéger les requêtes de marque, empêcher la capture par les concurrents | Toujours (jour 1) | 5-15% |
| **Search hors marque** | Capter les recherches à forte intention produit/catégorie | Toujours (jour 1) | 10-20% |
| **Shopping standard / PMax Feed-Only** | Visibilité produit sur la surface Shopping | Toujours (jour 1) | 40-60% |
| **PMax Full Assets** | Promotion produit cross-canal | Quand Shopping est rentable et non limité par le budget | 20-40% |
| **Remarketing (Display/Demand Gen)** | Ré-engager les abandons de panier, visiteurs du site | Quand taille d'audience suffisante (1 000+ utilisateurs) | 5-10% |
| **Prospection (Display/Video/Demand Gen)** | Créer de la demande pour de nouveaux produits/catégories | Quand le bas du tunnel est saturé et le budget le permet | 5-15% |

> 💡 **Allocation budgétaire e-commerce :** Shopping/PMax prend la plus grande part car les annonces de listing produit sont le principal moteur de chiffre d'affaires. Le Search complète avec des annonces textuelles pour les requêtes de catégorie et informationnelles.

### Lead Gen / SaaS

| **Type de campagne** | **Rôle** | **Quand ajouter** | **Part de budget** |
| --- | --- | --- | --- |
| **Search de marque** | Protéger les requêtes de marque | Toujours (jour 1) | 5-10% |
| **Search hors marque** | Capter les recherches de service à forte intention | Toujours (jour 1) | 50-70% |
| **PMax** | Génération de leads cross-canal | Quand 30+ conversions/mois ET import de conversions hors ligne configuré | 15-25% |
| **Remarketing (Display/Demand Gen)** | Ré-engager les abandons de formulaire, visiteurs du site | Quand taille d'audience suffisante | 5-10% |
| **Prospection (Display/Video/Demand Gen)** | Créer de la demande, construire le pipeline | Quand le Search est saturé et le budget le permet | 10-20% |

> 💡 **Allocation budgétaire Lead Gen :** Search prend la plus grande part car le ciblage basé sur l'intention produit les leads de meilleure qualité. PMax n'apporte de la valeur que quand les signaux de qualité de leads sont en place (import de conversions hors ligne).

### Services locaux

| **Type de campagne** | **Rôle** | **Quand ajouter** | **Part de budget** |
| --- | --- | --- | --- |
| **Search de marque** | Protéger les requêtes de marque | Quand le trafic de marque existe | 5-10% |
| **Search hors marque** | Capter les requêtes d'intention de service | Toujours (jour 1) | 60-80% |
| **Remarketing (Display)** | Ré-engager les anciens visiteurs | Quand taille d'audience suffisante | 5-10% |
| **PMax** | Extension de la couverture locale (Maps, Display) | Quand Search est rentable et le volume de conversions le supporte | 10-20% |
| **Prospection (Display/Video)** | Construire la notoriété locale | Uniquement avec un budget significatif | 5-10% |

> 💡 **Allocation budgétaire services locaux :** Search domine car les requêtes d'intention locale ("plombier près de moi") sont le principal moteur de leads. Le haut du tunnel est rarement justifié sauf si l'entreprise a un budget notoriété significatif.

---

## Séquence de lancement

Construisez votre compte de bas en haut : commencez par les types de campagnes les plus efficaces et étendez au fur et à mesure que le budget et les données le permettent.

### Phase 1️⃣ : Fondation

| **Action** | **Pourquoi** |
| --- | --- |
| Mettre en place le suivi des conversions (avec valeurs si possible) | Tout dépend de données de conversion précises |
| Lancer le Search de marque | Protéger les requêtes de marque des concurrents et de PMax |
| Lancer le Search hors marque (consolidé) | Capter la demande existante |
| Lancer Shopping / PMax Feed-Only (e-commerce) | Visibilité produit dès le jour 1 |

### Phase 2️⃣ : Expansion

| **Action** | **Prérequis** |
| --- | --- |
| Segmenter les campagnes Search par besoins de budget/cible | Les données montrent que des services/produits différents nécessitent un traitement différent |
| Ajouter PMax (Lead Gen/SaaS) | 30+ conversions/mois, import de conversions hors ligne configuré |
| Ajouter PMax Full Assets (e-commerce) | Shopping rentable, composants créatifs prêts |
| Ajouter le Remarketing | 1 000+ utilisateurs dans l'audience de remarketing |

### Phase 3️⃣ : Croissance

| **Action** | **Prérequis** |
| --- | --- |
| Ajouter la prospection Demand Gen | Bas du tunnel saturé, 50+ conversions/mois atteignables par campagne |
| Ajouter la prospection Display/Video | Objectifs de notoriété de marque, budget dédié à la notoriété |
| Segmentation Shopping basée sur la performance (H/S/V/Z) | 90+ jours de données de conversion, outil d'étiquetage disponible |

> ⚠️ **Ne sautez pas de phases :** Lancer PMax avant que Search soit établi signifie que PMax n'a pas de contrôle au niveau des mots-clés en repli. Lancer la prospection Display avant le remarketing signifie que vous créez de la demande que vous ne pouvez pas recapter.

---

## Coordination cross-campagnes

### Séparation de la marque (obligatoire)

Le trafic de marque doit être séparé à travers tous les types de campagnes pour éviter l'inflation des métriques.

| **Type de campagne** | **Contrôle de marque** |
| --- | --- |
| Search | Campagne de marque dédiée + négatifs de marque dans les campagnes hors marque |
| Shopping standard | Campagne Shopping de marque + négatifs de marque |
| PMax | Exclusions de marque au niveau de la campagne |

> ↪️ **Pour les détails d'implémentation :** Voir [Brand Separation Reference](<../search/Search - Séparation de marque.md>).

### Routage des requêtes (Search + PMax)

Quand Search et PMax tournent simultanément, les règles de routage des requêtes déterminent quelle campagne sert chaque requête.

| **Type de requête** | **Qui la sert** | **Votre contrôle** |
| --- | --- | --- |
| Requêtes de marque | Search de marque (PMax exclu) | Exclusions de marque dans PMax |
| Requêtes connues à forte valeur | Search (mot-clé exact) | Ajouter en mot-clé exact |
| Requêtes connues (expression/large) | Search ou PMax (le Classement de l'annonce décide) | Promouvoir en mot-clé exact si PMax capte |
| Requêtes inconnues | PMax découvre | Laisser PMax étendre |

> ↪️ **Pour les règles de routage complètes :** Voir [Search PMax Query Routing Reference](<../pmax/Pmax - Routage des requêtes Search PMax.md>).

### Chevauchement d'audiences (Upper Funnel + PMax)

Quand Display/Video/Demand Gen tourne aux côtés de PMax, définissez des rôles clairs pour éviter le chevauchement.

| **Principe** | **Implémentation** |
| --- | --- |
| PMax gère le remarketing nativement | Éviter de lancer une campagne Display de remarketing séparée si PMax est actif (sauf besoin de contrôle créatif) |
| Dédier Display/Video à la notoriété | Utiliser pour les audiences froides/très froides où PMax sous-performe |
| Exclure les convertis récents de toutes les campagnes | Prévenir les dépenses gaspillées entre types de campagnes |
| Utiliser Demand Gen pour les audiences similaires | Les audiences similaires sont exclusives à Demand Gen, pas disponibles dans PMax |

---

## Les seuils de volume gouvernent la structure

Chaque décision structurelle doit tenir compte du volume de conversions. Les campagnes sans suffisamment de données ne peuvent pas s'optimiser efficacement.

| **Seuil** | **Minimum** | **Recommandé** |
| --- | --- | --- |
| Campagnes CPA cible | 30 conversions/mois | 50+ pour la cohérence |
| Campagnes ROAS cible | 50 conversions/mois | 50+ pour la cohérence |
| Groupes d'annonces Demand Gen | 50 conversions/groupe d'annonces/mois | Plus élevé en raison de la diffusion multi-surface |

**Quand le volume est insuffisant :**

- Consolider les campagnes (réduire le nombre de types de campagnes)
- Utiliser les stratégies d'enchères de portefeuille pour regrouper les données entre campagnes
- Utiliser Maximiser les conversions (valeur) sans cibles jusqu'à ce que le volume se construise
- Commencer avec moins de campagnes, plus grandes, et segmenter uniquement quand les données le supportent

> ↪️ **Pour les seuils et tactiques complets :** Voir [Conversion Volume Thresholds Reference](<../suivi/Suivi - Seuils de volume de conversions.md>).

---

## Erreurs courantes

| **Erreur** | **Pourquoi c'est faux** | **Correction** |
| --- | --- | --- |
| **Lancer tous les types de campagnes en même temps** | Fragmente le budget, aucune campagne n'a assez de données | Phasez vos lancements : fondation d'abord, puis expansion |
| **Lancer PMax sans exclusions de marque** | PMax capte le trafic de marque, gonfle ses métriques | Exclusions de marque dans chaque campagne PMax hors marque |
| **Pas de campagnes Search aux côtés de PMax** | Perte du contrôle au niveau des mots-clés pour les requêtes à forte valeur | Search protège les requêtes connues, PMax en découvre de nouvelles |
| **Sur-allouer au haut du tunnel** | Créer de la demande que vous ne pouvez pas capter | S'assurer que le bas du tunnel est rentable avant l'expansion haut du tunnel |
| **Campagne séparée pour chaque produit/service** | Fragmentation des données, chaque campagne est sous-alimentée | Consolider sauf si des différences de budget/cible nécessitent une séparation |
| **Pas de remarketing avant la prospection** | Payer pour de la notoriété sans recaptation | Construire les audiences de remarketing d'abord, puis prospecter |
| **S'attendre à ce que PMax remplace les campagnes dédiées** | PMax comble les lacunes, ne remplace pas le contrôle stratégique | Utiliser PMax comme couche complémentaire |

---

## Principes clés

1. **Consolider par défaut :** Plus de données dans moins de campagnes signifie un apprentissage plus rapide. N'ajoutez des types de campagnes que quand vous avez le volume et une raison stratégique.
2. **Bas du tunnel d'abord :** Captez la demande existante (Search, Shopping) avant de créer de la nouvelle demande (Display, Video). Chaque phase finance la suivante.
3. **PMax est complémentaire :** Il comble les lacunes à travers les canaux et découvre des requêtes que vous n'avez pas en mots-clés. Il ne remplace pas Search ni les campagnes de notoriété stratégiques.
4. **La séparation de la marque est obligatoire :** À travers tous les types de campagnes, le trafic de marque doit être isolé pour voir les vrais coûts d'acquisition.
5. **Le volume gouverne la structure :** Chaque campagne a besoin de suffisamment de données de conversion. Si vous ne pouvez pas l'alimenter, ne la créez pas.
6. **L'allocation budgétaire suit la position dans le tunnel :** La plus haute efficacité (Search, Shopping) reçoit la plus grande part. La plus basse efficacité (Display, Video) reçoit un budget de notoriété dédié uniquement.
7. **Regardez de manière holistique :** PMax est une pièce du puzzle, pas le puzzle entier. L'objectif est la performance au niveau du compte, pas la maximisation d'un seul type de campagne.

---

## Documents liés

| **Document** | **Relation** |
| --- | --- |
| [Search Campaign Structure Mental Model](<../search/Search - Structure de campagne Search.md>) | Structure intra-type (campagnes Search) |
| [Search Ad Group Structure Mental Model](<../search/Search - Structure des ad groups Search.md>) | Structure intra-type (groupes d'annonces Search) |
| [Shopping Campaign Type Mental Model](<../shopping/Shopping - Types de campagne Shopping.md>) | Sélection du type de campagne (Shopping vs PMax) |
| [Standard Shopping Campaign Structure Mental Model](<../shopping/Shopping - Structure de campagne Shopping standard.md>) | Structure intra-type (Shopping standard) |
| [PMax Structure Mental Model (Ecommerce)](<../pmax/Pmax - Structure PMax (E-commerce).md>) | Structure intra-type (PMax pour l'e-commerce) |
| [PMax Structure Mental Model (Lead Gen/SaaS)](<../pmax/Pmax - Structure PMax (Lead Gen-SaaS).md>) | Structure intra-type (PMax pour Lead Gen/SaaS) |
| [Upper Funnel Campaign Structure Mental Model](<Strategie - Structure de campagne haut de tunnel.md>) | Structure intra-type (Display/Video/Demand Gen) |
| [Product Feed Segmentation Mental Model](<../flux-produit/Flux Produit - Choisir une segmentation.md>) | Segmentation produit pour Shopping/PMax Feed-Only |
| [Audience Strategy Mental Model](<../audiences/Audiences - Stratégie d'audience.md>) | Approche d'audience à travers les types de campagnes |
| [Brand Separation Reference](<../search/Search - Séparation de marque.md>) | Implémentation de la séparation de marque |
| [Search PMax Query Routing Reference](<../pmax/Pmax - Routage des requêtes Search PMax.md>) | Routage des requêtes entre Search et PMax |
| [Conversion Volume Thresholds Reference](<../suivi/Suivi - Seuils de volume de conversions.md>) | Exigences de volume par stratégie d'enchères |
