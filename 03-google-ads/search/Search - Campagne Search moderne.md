# Campagne Search moderne

> **Plateforme :** Google Ads
> **Catégorie :** Search
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Ce document définit la philosophie globale pour construire et gérer des campagnes Search à l'ère du Stratégies d'enchères intelligentes et de la correspondance sémantique. Il répond à la question centrale : comment le comportement de recherche moderne, le Stratégies d'enchères intelligentes, la consolidation et les thèmes créatifs interagissent-ils pour produire les meilleurs résultats ?

> C'est le "pourquoi" derrière chaque décision de structure Search. Les modèles mentaux en aval ([Search Campaign Structure Mental Model](<Search - Structure de campagne Search.md>), [Search Ad Group Structure Mental Model](<Search - Structure des ad groups Search.md>)) traitent le "comment" de la structure de campagne et d'ad group.

---

## Ce que c'est / Ce que ce n'est PAS

**Ce document :**

- Définit les trois règles d'or du Search moderne
- Explique comment l'évolution du comportement de recherche force l'adaptation structurelle
- Cartographie la relation entre stratégie d'enchères, types de correspondance et structure
- Fournit le document stratégique dont héritent les décisions de structure, de ciblage et de keywords en aval

**Ce document NE couvre PAS :**

- La logique de segmentation au niveau des campagnes (Voir : [Search Campaign Structure Mental Model](<Search - Structure de campagne Search.md>))
- La logique de regroupement au niveau des ad groups (Voir : [Search Ad Group Structure Mental Model](<Search - Structure des ad groups Search.md>))
- La syntaxe ou le comportement des types de correspondance (Voir : [Match Type Reference](<Search - Types de correspondance.md>))
- La méthodologie de recherche de keywords (Voir : [SOP - Rechercher des mots-cles](<Search - Rechercher des keywords.md>))
- Les mécanismes de sélection de la stratégie d'enchères (Voir : [Bidding Strategy Mental Model](<../encheres/Enchères - Stratégie d'enchères.md>))

---

## Le document central

Le Search moderne fonctionne sur trois règles d'or qui interagissent comme un système :

| Règle | Principe | Pourquoi c'est important |
|-------|---------|------------------------|
| **1. Consolider par défaut** | Regrouper le trafic dans moins de campagnes et d'ad groups sauf raison business valide de séparer | Le Stratégies d'enchères intelligentes optimise au niveau de la requête, pas de la campagne. Plus de données par unité = apprentissage plus rapide, meilleure cohérence, CPA marginal plus bas |
| **2. Un ad group par thème créatif** | Grouper les keywords par le message dont ils ont besoin, pas par similarité de keyword | Les RSA servent l'utilisateur : si une RSA peut crédiblement servir tous les keywords, ils vont ensemble. Séparer uniquement quand le message diverge fondamentalement |
| **3. Les types de correspondance suivent la stratégie d'enchères** | Votre stratégie d'enchères détermine quels types de correspondance sont appropriés, pas l'inverse | Requête large + Stratégies d'enchères intelligentes (CPA cible/ROAS cible) est le défaut quand suffisamment de données existent. Phrase/mot-clé exact est pour les nouveaux comptes, campagnes à faible volume, budgets contraints, niches B2B ou configurations sans Stratégies d'enchères intelligentes |

> Ces trois règles ne sont pas indépendantes. La consolidation nécessite le requête large pour capter du volume. Le requête large nécessite le Stratégies d'enchères intelligentes pour contrôler l'efficacité. Le Stratégies d'enchères intelligentes nécessite des données consolidées pour optimiser. Le système est circulaire.

---

## Pourquoi l'ancien playbook ne fonctionne plus

Le comportement de recherche a fondamentalement évolué. Les tactiques qui dominaient en 2015-2020 (SKAGs, ad groups par type de correspondance, segmentation par tunnel) supposaient une correspondance basée sur la syntaxe et un contrôle manuel. Aucune de ces hypothèses ne tient aujourd'hui.

### Évolution du comportement de recherche

| Ère | Comportement de recherche | Réponse de l'annonceur | Limitation |
|-----|--------------------------|----------------------|-----------|
| **Début (pré-2016)** | Requêtes courtes, simples ("recette pâtes") | Mot-clé exact, SKAGs, CPC manuel | Fonctionnait car l'espace de requêtes était petit et prévisible |
| **Milieu (2016-2020)** | Croissance des longues traînes, usage de synonymes, croissance mobile | Expression exacte, annonces textuelles étendues, structures en entonnoir | L'espace de requêtes s'est étendu plus vite que les listes de keywords ne pouvaient couvrir |
| **Moderne (2021+)** | Requêtes de 4+ mots en hausse de 26% YoY, intention sémantique, recherche vocale, requêtes hyper-spécifiques | Requête large + Stratégies d'enchères intelligentes, RSA, structures consolidées | Les approches manuelles ne peuvent pas couvrir l'espace de requêtes ; l'algorithme doit faire la correspondance |

### Ce qui a changé dans Google Ads

| Changement | Ancien comportement | Nouveau comportement | Impact |
|-----------|-------------------|---------------------|--------|
| **Correspondance des keywords** | Basée sur la syntaxe : les mots doivent apparaître dans l'ordre | Basée sur la sémantique : correspondance d'intention par le sens | Phrase et mot-clé exact s'étendent déjà aux variantes proches et synonymes |
| **Enchères** | CPC manuel, enchère par keyword | Stratégies d'enchères intelligentes au niveau de l'enchère, signaux au niveau de la requête | L'algorithme sait des choses que vous ne voyez pas (historique utilisateur, localisation, appareil, heure) |
| **Format d'annonce** | Annonces textuelles statiques (3 titres, 2 descriptions) | RSA avec 15 emplacements de titres, assemblées par machine à chaque enchère | Une RSA couvre plusieurs angles sans séparer les ad groups |
| **Données de performance** | Visibles au niveau du keyword | Les données au niveau des assets nécessitent du volume pour être exploitables | La fragmentation tue votre capacité à optimiser les créatifs |

---

## Comment les trois règles interagissent

```
                    ┌─────────────────────┐
                    │  CONSOLIDER         │
                    │  PAR DÉFAUT         │
                    └──────────┬──────────┘
                               │
                    La consolidation nécessite
                    du volume pour alimenter
                    l'apprentissage
                               │
              ┌────────────────┴────────────────┐
              │                                 │
              ▼                                 ▼
┌─────────────────────────┐      ┌─────────────────────────┐
│  LES TYPES DE CORR.     │      │  UN AD GROUP PAR        │
│  SUIVENT LE BIDDING     │◄────►│  THÈME CRÉATIF          │
└─────────────────────────┘      └─────────────────────────┘
   Requête large + tCPA/tROAS         Moins d'ad groups = plus
   capte le volume maximum          de données par RSA =
                                    optimisation créative
                                    plus rapide
```

### Le cercle vertueux

1. **Consolider les campagnes** pour maximiser les données par stratégie d'enchères
2. **Utiliser le requête large** associé au Stratégies d'enchères intelligentes pour capter l'espace de requêtes complet
3. **Grouper par thème créatif** pour qu'une RSA serve tous les keywords liés de manière crédible
4. **Moins d'ad groups** signifie que chaque RSA atteint 1 000+ impressions/semaine plus vite
5. **Les données au niveau des assets** deviennent exploitables, permettant l'optimisation créative
6. **De meilleurs créatifs** améliorent le Niveau de qualité, le CTR et les taux de conversion
7. **Un volume de conversions plus élevé** alimente le Stratégies d'enchères intelligentes, améliorant l'efficacité
8. **Une meilleure efficacité** permet un ciblage plus large, bouclant le cycle

### La spirale mortelle de la fragmentation (ce qui se passe quand on enfreint les règles)

1. Sur-segmenter les campagnes et ad groups
2. Chaque unité a des données de conversion insuffisantes
3. Le Stratégies d'enchères intelligentes ne peut pas apprendre, reste en statut "Apprentissage"
4. Les données au niveau des assets sont trop maigres pour l'optimisation créative
5. L'optimisation créative devient impossible
6. Le Niveau de qualité et le CTR souffrent
7. CPC plus élevés, moins de volume, efficacité dégradée
8. Réponse : segmenter davantage "pour plus de contrôle" (aggravant la situation)

---

## La matrice enchères-type de correspondance

Votre stratégie d'enchères détermine votre type de correspondance. Pas l'inverse.

| Objectif | Stratégie d'enchères | Type de correspondance | Pourquoi |
|---------|---------------------|----------------------|----------|
| **Maximiser les conversions à l'efficacité cible** | CPA cible ou ROAS cible | Requête large (avec exceptions ci-dessous) | Requête large + Stratégies d'enchères intelligentes capte l'espace de requêtes pertinent complet. La cible d'efficacité contraint le gaspillage. C'est le défaut du Search moderne quand suffisamment de données existent |
| **Maximiser les conversions (sans cible)** | Max Conversions / Max Conv. Value | Phrase + Mot-clé exact | Sans cible d'efficacité, le requête large donne à l'algorithme des dépenses sans contrainte. Phrase/exact restreignent l'espace de requêtes à la place |
| **Maximiser le trafic** | Max Clicks (avec plafond CPC) | Phrase + Mot-clé exact | Le requête large avec des enchères au clic gaspille le budget sur des requêtes non pertinentes. Pas de signal de conversion pour guider le ciblage |
| **Maximiser la visibilité** | Target Impression Share (avec plafond CPC) | Phrase + Mot-clé exact | Même principe : pas de signal de conversion signifie que le requête large dépense trop sur des requêtes vaguement liées |

> L'insight critique : le requête large n'est sûr *que quand il est associé au Stratégies d'enchères intelligentes basé sur les conversions, une cible d'efficacité compétitive, ET suffisamment de données historiques*. Sans ce filet de sécurité, le requête large gaspille du budget.

### Quand NE PAS utiliser le requête large (même avec le Stratégies d'enchères intelligentes)

Le requête large + CPA cible/ROAS cible est le défaut, mais ces exceptions nécessitent de commencer avec l'exact et/ou le expression exacte :

| Exception | Pourquoi le broad échoue ici | Que faire à la place |
|-----------|----------------------------|---------------------|
| **Nouveau compte (pas d'historique de conversions)** | Le Stratégies d'enchères intelligentes n'a pas de données au niveau des requêtes pour apprendre. Le requête large génère du gaspillage pendant que l'algorithme explore à l'aveugle | Commencer avec exact/expression exacte. Migrer vers le broad via un test de campagne 50/50 après 2-3 mois de données de conversion |
| **Campagnes/comptes à faible volume** | Le Stratégies d'enchères intelligentes a besoin de 30+ conversions/mois (CPA cible) ou 50+ (ROAS cible) pour optimiser efficacement. Avec un faible volume, le requête large amplifie le bruit au lieu de trouver des conversions marginales | Utiliser exact/expression exacte pour concentrer les dépenses sur les requêtes connues à forte intention. Tester le requête large plus tard via un test de campagne |
| **Budget limité** | Le requête large étend l'espace de requêtes, mais un budget limité ne peut pas se permettre des clics non pertinents pendant que l'algorithme apprend. Vous devez être sûr d'acheter le bon trafic pertinent | Utiliser exact/expression exacte pour contrôler la pertinence et la température du trafic. Le requête large devient viable quand le budget augmente ou que les données prouvent l'efficacité |
| **Niches B2B très spécifiques** | Les keywords sont très prévisibles et l'espace de recherche est étroit. Le requête large produit surtout des requêtes non pertinentes avec un faible uplift incrémental | Utiliser exact/expression exacte. L'espace de requêtes est assez petit pour être couvert manuellement. Tester le requête large avec un test 50/50 pour mesurer la valeur incrémentale |

> 💡 **Le chemin vers le requête large :** Commencer restrictif (exact/phrase), accumuler des données de conversion, puis tester le requête large via un test de campagne 50/50. Si le test montre des conversions incrémentales à un CPA/ROAS acceptable, déployer le requête large. Sinon, garder exact/phrase.

> Pour les mécanismes complets des types de correspondance : Voir [Match Type Reference](<Search - Types de correspondance.md>)
> Pour la sélection de stratégie d'enchères : Voir [Bid Strategy Selection Reference](<../encheres/Enchères - Sélection de stratégie d'enchères.md>)
> Pour le calcul des cibles d'efficacité : Voir [Bid Targets Reference](<../encheres/Enchères - Cibles d'enchères.md>)

---

## Les signaux du requête large : l'avantage injuste

Le requête large utilise quatre signaux que le expression exacte et l'mot-clé exact n'utilisent pas :

| Signal | Ce qu'il fait | Exemple |
|--------|-------------|---------|
| **Contenu de la landing page** | L'algorithme lit votre landing page pour comprendre le contexte | Une page sur "CRM pour petites entreprises" aide à matcher les requêtes sur "logiciel simple de gestion clients" |
| **Autres keywords de l'ad group** | L'algorithme utilise les keywords voisins pour comprendre le thème | Avoir "logiciel crm" et "plateforme crm" dans le même ad group clarifie le cluster d'intention |
| **Recherches précédentes de l'utilisateur** | L'algorithme considère l'historique de recherche récent de l'utilisateur | Un utilisateur ayant précédemment cherché "test Samsung Frame TV" est matché quand il cherche le plus générique "smart TV" |
| **Localisation de l'utilisateur** | L'algorithme utilise le contexte géographique pour la pertinence | La requête "plombier" près d'Amsterdam matche votre keyword broad "plombier amsterdam" sans que le nom de la ville soit dans la requête |

C'est pourquoi le thème de l'ad group compte pour le requête large : les autres keywords de l'ad group sont un signal. Des ad groups mal thématisés envoient des signaux confus à l'algorithme.

---

## Le principe du thème créatif

Les ad groups existent dans un seul but : servir le bon message à la bonne requête. C'est le principe du thème créatif.

### Ce qui définit un thème créatif

Un thème créatif est un groupe de keywords qui peuvent être servis par une seule RSA sans qu'aucun titre ou description ne paraisse générique ou inadapté.

| Test | Comment l'appliquer |
|------|-------------------|
| **Le test de l'annonce unique** | Listez les 10 principaux keywords de l'ad group proposé. Une RSA (7-8 titres) peut-elle crédiblement servir tous ces keywords ? Si oui, ils vont ensemble. Si non, identifiez le type de divergence et séparez |

### Exigences de volume

Les thèmes créatifs ont besoin de données pour s'optimiser :

| Métrique | Seuil | Pourquoi |
|---------|-------|----------|
| **Données au niveau des assets** | 1 000 impressions/semaine (4 000/mois) par ad group | En dessous, les données de performance des assets sont trop éparses pour l'itération créative |
| **Apprentissage du Stratégies d'enchères intelligentes** | 30 conversions/mois par campagne (CPA cible), 50/mois (ROAS cible) | En dessous, la stratégie d'enchères reste en "Apprentissage" et performe de manière inconsistante |

> Pour le document complet de volume : Voir [Conversion Volume Thresholds Reference](<../suivi/Suivi - Seuils de volume de conversions.md>)

---

## Modes d'échec

| Mode d'échec | Symptômes | Cause racine | Correction |
|-------------|----------|------------|-----|
| **Sur-segmentation** | Campagnes bloquées en "Apprentissage", performance inconsistante, charge de gestion, cibles rarement atteintes | Trop de campagnes/ad groups, chacun avec des données insuffisantes | Consolider les campagnes agressivement. Utiliser les stratégies d'enchères de portefeuille comme hack de consolidation quand vous avez besoin de budgets séparés mais d'un apprentissage partagé |
| **Sous-segmentation** | Budget consommé par les mauvais services/intentions, impossible de fixer des cibles différentes pour des marges différentes, marque et hors-marque mélangés | Tout le trafic dans une campagne quand les besoins business diffèrent | Séparer uniquement quand les besoins de budget, de cible ou d'objectif de conversion divergent. Utiliser le MM de structure de campagne pour les raisons valides de segmentation |
| **Mauvais type de correspondance pour la stratégie d'enchères** | Requête large qui dépense de manière incontrôlée sur des requêtes non pertinentes, ou mot-clé exact qui manque 80% du volume de requêtes | Type de correspondance et stratégie d'enchères inadaptés | Appliquer la matrice enchères-type de correspondance ci-dessus. Le requête large n'est sûr qu'avec du Stratégies d'enchères intelligentes basé sur les conversions + des cibles compétitives |
| **Structure pilotée par les keywords** | Ad groups séparés par similarité de keyword (synonymes, variantes) au lieu du besoin de message | Pensée SKAGs d'ancienne génération appliquée à l'architecture moderne | Restructurer autour des thèmes créatifs en utilisant le test de l'annonce unique. Utiliser le DKI et les personnalisations pour gérer la variation de keywords au sein d'une même RSA |
| **Campagnes basées sur le tunnel** | Structures see/think/do élaborées avec une lourde gestion de keywords négatifs internes | Tentative de router manuellement l'intention quand l'algorithme gère ça au niveau de l'enchère | Consolider. Le Stratégies d'enchères intelligentes utilise des signaux utilisateur (recherches précédentes, historique de navigation) auxquels vous n'avez pas accès. Laissez l'algorithme router l'intention |

---

## Application pratique : séquence de mise en place du Search moderne

### Étape 1 : Poser les fondations de la stratégie d'enchères

Avant toute décision de keyword ou de structure, déterminez votre stratégie d'enchères. La stratégie d'enchères dicte tout en aval.

| Décision | Si oui | Si non |
|----------|--------|--------|
| Avez-vous des cibles d'efficacité claires (CPA/ROAS) ? | CPA cible ou ROAS cible | Max Conversions ou Max Conv. Value |
| Utilisez-vous CPA cible/ROAS cible avec suffisamment de données ? | Le requête large est votre défaut (vérifier les exceptions ci-dessus) | Phrase/mot-clé exact est votre défaut |
| Avez-vous un volume de conversions suffisant (30+/mois) ? | Utiliser les enchères au niveau de la campagne | Envisager une stratégie d'enchères de portefeuille entre campagnes |

> Pour la sélection de stratégie d'enchères : Voir [Bidding Strategy Mental Model](<../encheres/Enchères - Stratégie d'enchères.md>)

### Étape 2 : Construire les fondations de keywords

Rechercher les keywords sur tout votre business, puis les regrouper par thème créatif, pas par similarité de keyword ou type de correspondance.

| Étape | Action | Résultat |
|-------|--------|----------|
| Recherche | Utiliser Keyword Planner, STR, outils concurrentiels, ChatGPT | Liste brute de keywords avec données de volume et CPC |
| Regroupement | Grouper par thème créatif : une RSA peut-elle servir ce cluster ? | Groupes de keywords thématisés avec labels d'intention |
| Priorisation | Code couleur : vert (inclure), orange (douteux), rouge (non pertinent) | Ensemble de keywords priorisé prêt pour la structure |

> Pour la recherche de keywords : Voir [SOP - Rechercher des mots-cles](<Search - Rechercher des keywords.md>)
> Pour le regroupement de keywords : Voir [SOP - Regrouper et mapper les mots-cles](<Search - Regrouper et mapper les keywords.md>)

### Étape 3 : Concevoir la structure

Appliquer les modèles mentaux de campagne et d'ad group pour mapper les clusters de keywords en campagnes et ad groups.

| Niveau | Guidé par | Question clé |
|--------|-----------|--------------|
| **Campagne** | [Search Campaign Structure Mental Model](<Search - Structure de campagne Search.md>) | Ai-je besoin d'un budget, d'une stratégie d'enchères, de cibles ou d'objectifs de conversion différents ? |
| **Ad group** | [Search Ad Group Structure Mental Model](<Search - Structure des ad groups Search.md>) | Une RSA peut-elle crédiblement servir tous les keywords ? (Test de l'annonce unique) |

### Étape 4 : Lancer et optimiser

| Phase | Focus | Référence clé |
|-------|-------|---------------|
| Pré-lancement | Valider la structure par rapport aux checklists | Search Campaign Launch Checklist |
| Semaine 1-2 | Surveiller la période d'apprentissage, ne pas changer les cibles | [Bidding Strategy Mental Model](<../encheres/Enchères - Stratégie d'enchères.md>) |
| Semaine 3-4 | Analyser le STR, ajouter des négatifs, promouvoir les termes de recherche performants | [SOP - Analyser les rapports de termes de recherche](<Search - Analyser les rapports de termes de recherche.md>) |
| Continu | Itération créative, maintenance des keywords négatifs, revue de structure | [SOP - Test RSA avec la boucle d'iteration](<Search - Test RSA avec la boucle d'itération.md>) |

---

## Principes clés

1. **La structure sert les enchères, pas l'inverse :** Votre structure de campagne existe pour donner au Stratégies d'enchères intelligentes le meilleur environnement de données possible. Chaque décision structurelle devrait être évaluée à travers ce prisme.
2. **Consolider par défaut :** Ne segmenter que quand il y a une raison business concrète : budget différent, cible différente, objectif de conversion différent, besoins géo/langue différents.
3. **Un ad group par thème créatif :** Le test de l'annonce unique détermine le regroupement. Le DKI, les personnalisations et les URLs au niveau du keyword résolvent la plupart des variations sans séparer.
4. **Les types de correspondance suivent la stratégie d'enchères :** Requête large + CPA cible/ROAS cible est le défaut moderne quand le compte a un historique de conversions suffisant. Phrase/exact pour les nouveaux comptes, campagnes à faible volume, budgets contraints, niches B2B ou stratégies non basées sur les conversions. Tester le requête large via des tests de campagne 50/50 avant de s'engager.
5. **Alimenter l'algorithme, ne pas le combattre :** Le Stratégies d'enchères intelligentes voit des signaux que vous ne pouvez pas voir (historique utilisateur, contexte de localisation, comportement de navigation). Laissez-le optimiser au niveau de l'enchère.
6. **Le volume rend tout possible :** Les données au niveau des assets nécessitent 1 000+ impressions/semaine. Le Stratégies d'enchères intelligentes nécessite 30+ conversions/mois. La fragmentation tue les deux.
7. **Libérer du temps pour un travail à plus fort impact :** Une structure simplifiée réduit la charge de gestion. Investissez le temps libéré dans l'optimisation de l'offre, l'amélioration des landing pages et l'optimisation du taux de conversion, car ceux-ci se cumulent avec la puissance des enchères.
8. **La complexité peut impressionner, mais la simplicité couplée à l'IA impressionne par les résultats :** L'avantage n'est plus dans les astuces structurelles. Il est dans la qualité des données, les taux de conversion et l'excellence créative.

---

## Documents liés

| Document | Relation |
|----------|-------------|
| [Search Campaign Structure Mental Model](<Search - Structure de campagne Search.md>) | En aval : quand et pourquoi segmenter les campagnes |
| [Search Ad Group Structure Mental Model](<Search - Structure des ad groups Search.md>) | En aval : quand et pourquoi segmenter les ad groups |
| [Dynamic Search Ads Mental Model](<Search - Dynamic Search Ads.md>) | En aval : DSA comme ciblage complémentaire dans le Search moderne |
| [DSA Targeting Options Reference](<Search - Options de ciblage DSA.md>) | Référence : spécifications des options de ciblage DSA, format de page feed, labels personnalisés |
| [AI Max for Search Mental Model](<Search - Activer AI Max.md>) | En aval : option d'automatisation pilotée par l'IA dans les campagnes Search |
| [AI Max for Search Reference](<Search - AI Max - mécanismes techniques.md>) | Référence : spécifications et paramètres de la fonctionnalité AI Max |
| [Bidding Strategy Mental Model](<../encheres/Enchères - Stratégie d'enchères.md>) | En amont : la stratégie d'enchères détermine l'approche de type de correspondance et de structure |
| [Match Type Reference](<Search - Types de correspondance.md>) | Référence : syntaxe, comportement et hiérarchie de sélection des types de correspondance |
| [Bid Strategy Selection Reference](<../encheres/Enchères - Sélection de stratégie d'enchères.md>) | Référence : mécanismes et exigences des stratégies d'enchères |
| [Conversion Volume Thresholds Reference](<../suivi/Suivi - Seuils de volume de conversions.md>) | Référence : exigences de volume pour les enchères et l'apprentissage RSA |
| [Stratégies d'enchères intelligentes Mechanics Reference](<../encheres/Enchères - Mécanismes des stratégies d'enchères intelligentes.md>) | Référence : comment le Stratégies d'enchères intelligentes fonctionne au niveau de l'enchère |
| [Keyword and Match Type Selection Guidelines](<Search - Sélection des mots clés et types de correspondance.md>) | Guide : sélection du type de correspondance en fonction du bidding et du budget |
| [SOP - Rechercher des mots-cles](<Search - Rechercher des keywords.md>) | Exécution : workflow de recherche de keywords |
| [SOP - Construire la structure de campagne Search](<Search - Construire la structure de campagne Search.md>) | Exécution : workflow de construction de campagne |
