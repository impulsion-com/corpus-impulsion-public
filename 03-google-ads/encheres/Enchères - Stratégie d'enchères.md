# Stratégie d'enchères

> **Plateforme :** Google Ads
> **Catégorie :** Enchères
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Ce document vous aide à comprendre comment la sélection de stratégie d'enchères découle des objectifs business, passe par la maturité des données, jusqu'à la bonne approche d'enchères pour n'importe quel type de campagne.

> ❓ **La question centrale :** Étant donné vos objectifs, vos données et votre type de campagne, quelle stratégie d'enchères produit le meilleur résultat ?

La sélection d'une stratégie d'enchères n'est pas une décision ponctuelle. C'est une progression : vous commencez avec ce que vos données permettent, puis vous migrez vers ce que vos objectifs exigent à mesure que le volume de conversions s'accumule.

---

## Ce que ce modèle NE couvre PAS

Ce document NE couvre PAS :

- Les instructions étape par étape pour configurer les stratégies d'enchères (Voir : [SOP - Selectionner une strategie d'encheres](<Enchères - Sélectionner une stratégie d'enchères.md>))
- Les mécaniques internes des algorithmes Stratégies d'enchères intelligentes (Voir : [Stratégies d'enchères intelligentes Mechanics Reference](<Enchères - Mécanismes des stratégies d'enchères intelligentes.md>))
- L'allocation ou le dimensionnement du budget (Voir : [Budget Allocation Mental Model](<../../01-strategie/analyse/Analyse - Allocation de budget.md>))
- Le remplacement des arbres de décision par canal (Voir : [Bid Strategy Selection Reference](<Enchères - Sélection de stratégie d'enchères.md>))

---

## La pyramide objectif-stratégie

Chaque décision de stratégie d'enchères remonte à un objectif business. Sautez un niveau et la stratégie devient arbitraire.

```
         ┌──────────────────────┐
         │  1. Objectif business │
         └──────────┬───────────┘
                    ↓
       ┌────────────────────────────┐
       │  2. Objectif Google Ads     │
       │  (Croissance + Efficacité)  │
       └────────────┬───────────────┘
                    ↓
    ┌────────────────────────────────────┐
    │  3. Objectif d'optimisation        │
    │  (Visibilité / Trafic / Conv /     │
    │   Valeur de conv)                  │
    └────────────────┬───────────────────┘
                     ↓
  ┌──────────────────────────────────────────┐
  │  4. Vérification de maturité des données  │
  │  (Volume de conversions, données          │
  │   historiques, connaissance du secteur)    │
  └──────────────┬───────────────────────────┘
                 ↓
┌────────────────────────────────────────────────┐
│  5. Sélection de la stratégie d'enchères        │
│  (CPC manuel → Max Clicks → Max Conv →          │
│   tCPA → Max Conv Value → tROAS)                │
└────────────────────────────────────────────────┘
```

Chaque niveau contraint celui en dessous. Un objectif orienté croissance avec suffisamment de données mène à des stratégies automatisées agressives. Un objectif orienté efficacité avec peu de données mène à des approches manuelles conservatrices.

---

## Les six stratégies d'enchères

Google Ads offre une stratégie manuelle et cinq stratégies automatisées pertinentes pour les annonceurs orientés performance.

| Stratégie | Optimise pour | Contrôle d'efficacité | Exigence de données | Idéal pour |
|-----------|--------------|----------------------|--------------------|-----------| 
| **CPC manuel** | Clics (manuellement) | Contrôle total via CPC max | Aucune | Campagnes de marque, nouveaux comptes sans données, expérimentations contrôlées |
| **Maximize Clicks** | Volume de clics | Aucun (budget uniquement) | Aucune | Phase de collecte de données, objectifs orientés trafic |
| **Target Impression Share** | Visibilité | % de taux d'impression | Aucune | Défense de marque, domination concurrentielle sur les termes clés |
| **Maximiser les conversions** | Volume de conversions | Aucun (budget uniquement) | 15 min abs., 30 fonctionnel, 50+ recommandé | Nouvelles campagnes attendant un volume de conversion élevé, objectifs orientés croissance |
| **CPA cible** | Volume de conversions | Objectif CPA | 15 min abs., 30 fonctionnel, 50+ recommandé | Lead gen, SaaS, objectifs de volume de conversions avec garde-fous d'efficacité |
| **Maximiser la valeur de conversion** | Valeur de conversion | Aucun (budget uniquement) | 30 min abs., 50 fonctionnel, 50+ recommandé | Maximisation du revenu/profit sans contrainte d'efficacité |
| **ROAS cible** | Valeur de conversion | Objectif ROAS | 30 min abs., 50 fonctionnel, 50+ recommandé | E-commerce, enchères basées sur la valeur, objectifs de valeur avec contrainte d'efficacité |

> 💡 **CPC manuel et Maximize Clicks sont des stratégies de départ, pas des stratégies de destination :** L'objectif est toujours de migrer vers des enchères axées conversion ou valeur à mesure que les données s'accumulent.

---

## La progression des stratégies d'enchères

Les stratégies d'enchères ne sont pas statiques. Elles suivent une progression naturelle à mesure que les campagnes maturent et que les données s'accumulent.

### Phase 1️⃣ : Lancement (Jours 1-14)

*"Collecter des données, pas optimiser".*

| Situation | Stratégie de départ | Pourquoi |
|-----------|---------------------|----------|
| Nouveau compte, pas de connaissance du secteur | CPC manuel | Collecte de données conservatrice sans trop dépenser |
| Nouveau compte, connaissance du secteur | Maximize Clicks | Collecte de données plus rapide avec des keywords ciblés |
| Nouvelle campagne, requêtes familières | Maximiser les conversions | Stratégies d'enchères intelligentes connaît déjà ces requêtes depuis votre compte |
| Campagne de marque | CPC manuel | Contrôle total, éviter de surpayer les termes de marque |

**Règle clé :** Ne pas faire de changements significatifs pendant la période d'apprentissage (environ deux cycles de conversion, généralement 7-10 jours pour les business à cycle court, 14-30+ jours pour les business à cycle long). Surveiller, mais ne pas réagir aux fluctuations.

### Phase 2️⃣ : Stabilisation (Semaines 2-4)

*"Définir votre premier objectif d'efficacité".*

Une fois que vous avez des données de conversion :

- Si vous optimisez pour le volume : migrer de Maximiser les conversions vers **CPA cible** (défini au niveau ou légèrement au-dessus de votre CPA moyen de la Phase 1)
- Si vous optimisez pour la valeur : migrer de Maximiser la valeur de conversion vers **ROAS cible** (défini au niveau ou légèrement en dessous de votre ROAS moyen de la Phase 1)
- Si les conversions sont insuffisantes : rester sur la stratégie actuelle, consolider les campagnes, ou envisager une stratégie d'enchères de portefeuille pour mutualiser les données

### Phase 3️⃣ : Optimisation (Mois 2+)

*"Resserrer progressivement vers votre objectif".*

- Faire des ajustements incrémentaux (moins de 25 % par changement) pour éviter de redéclencher la période d'apprentissage
- Valider les objectifs par rapport aux objectifs de croissance en utilisant le ratio profit/acquisition
- Envisager de consolider les campagnes ou d'utiliser des stratégies d'enchères de portefeuille pour mutualiser les données entre campagnes avec des objectifs partagés

### Phase 4️⃣ : Scaling (En continu)

*"Trouver votre optimum de profit".*

- Utiliser les simulateurs d'enchères et Performance Planner pour modéliser des scénarios
- Ajuster le curseur du ratio profit/acquisition entre croissance et efficacité
- Exécuter des expérimentations de campagne pour tout changement majeur de stratégie (split 50/50, 30+ jours)

---

## La hiérarchie des objectifs d'optimisation

Votre objectif d'optimisation détermine quelles stratégies sont disponibles :

```
Qu'est-ce que vous optimisez ?
│
├─ Visibilité (impressions)
│  └─ Target Impression Share
│
├─ Trafic (clics)
│  └─ Maximize Clicks
│
├─ Volume de conversions (leads, transactions)
│  ├─ Avec objectif d'efficacité → CPA cible
│  └─ Sans objectif d'efficacité → Maximiser les conversions
│
└─ Valeur de conversion (revenu, profit, LTV)
   ├─ Avec objectif d'efficacité → ROAS cible
   └─ Sans objectif d'efficacité → Maximiser la valeur de conversion
```

> ⚠️ **Ne jamais sélectionner une stratégie d'enchères sans connaître son objectif d'optimisation.** "Maximiser les conversions" et "Maximiser la valeur de conversion" se ressemblent mais optimisent pour des résultats fondamentalement différents.

---

## Manuel vs. automatisé : quand chacun gagne

| Facteur | CPC manuel | Automatisé (Stratégies d'enchères intelligentes) |
|---------|-----------|--------------------------|
| **Accès aux signaux** | Limité aux dimensions visibles (appareil, localisation, calendrier de diffusion) | 18+ signaux incluant l'historique de recherche, le comportement multi-appareils, les signaux d'intention |
| **Cadence des enchères** | Mis à jour périodiquement (jours/semaines) | En temps réel, par enchère (millisecondes) |
| **Apprentissage au niveau requête** | Impossible | Apprend au niveau requête sur l'ensemble du compte |
| **Ajustements composés** | Risque de sur-ajustement par empilement des modificateurs d'enchères | Évalue tous les signaux ensemble, évite le sur-ajustement |
| **Investissement en temps** | Des heures par semaine en analyse et ajustement | Quasi-zéro en gestion continue des enchères |
| **Meilleurs cas** | Campagnes de marque, très faible volume, expérimentations contrôlées | Tout le reste |

Stratégies d'enchères intelligentes traite plus de données en un jour qu'un humain pourrait analyser en un an. Pour toute campagne avec un volume de conversions suffisant, les enchères automatisées surpassent les enchères manuelles.

---

## La porte de maturité des données

Avant de sélectionner une stratégie axée conversion, vérifiez votre maturité de données :

| Métrique | Minimum absolu | Minimum fonctionnel | Recommandé | Impact si en dessous |
|----------|---------------|---------------------|------------|---------------------|
| **Conversions par mois** (CPA cible) | 15 | 30 | 50+ | Résultats volatiles, apprentissage plus long, CPA inconsistant |
| **Conversions par mois** (ROAS cible) | 30 | 50 | 50+ | La variance de valeur nécessite plus de données, attendez-vous à de l'instabilité |
| **Conversions par mois** (niveau portefeuille) | 15 | 30 | 50+ | Mêmes seuils s'appliquent, mais mutualisés entre campagnes |
| **Délai de conversion** | Le connaître | L'intégrer dans les fenêtres d'analyse | Décisions prématurées, résultats d'expérimentation biaisés |
| **Données historiques** | Un peu d'historique de compte | 3+ mois | Montée en puissance lente, apprentissage limité au niveau requête |

Si vous ne pouvez pas atteindre les seuils minimums au niveau campagne, consolidez les campagnes ou utilisez une stratégie d'enchères de portefeuille pour mutualiser les données de conversion entre campagnes avec des objectifs partagés.

> ↪️ **Seuils par type de campagne :** Pour les seuils segmentés par type de campagne, voir [Conversion Volume Thresholds Reference](<../suivi/Suivi - Seuils de volume de conversions.md>).

---

## Application pratique

### Pour le lead gen

Le modèle prédit une progression naturelle des enchères basées sur le volume vers les enchères basées sur la valeur à mesure que les données maturent :

| Étape | Stratégie | Pourquoi cette étape |
|-------|-----------|---------------------|
| **Lancement** | Maximiser les conversions ou CPC manuel | Collecter des données de conversion sans un objectif qui pourrait affamer le volume |
| **Stabilisation** | CPA cible (30+ conversions/mois, 50+ recommandé) | Assez de données pour que l'algorithme optimise vers un garde-fou de coût par lead |
| **Optimisation** | CPA cible sur l'action la plus basse du tunnel (leads qualifiés ou affaires conclues) | Rapproche l'optimisation de la valeur business, réduit les leads gaspillés |
| **Avancé** | ROAS cible via OCT avec des valeurs d'affaire réelles | Permet d'enchérir sur la valeur réelle de l'affaire, pas juste le nombre de leads |

**Les enchères basées sur la valeur pour le lead gen** sont le stade le plus avancé de cette progression. Quand les valeurs réelles d'affaire remontent via OCT, Stratégies d'enchères intelligentes poursuit des leads de plus haute valeur plutôt que de traiter toutes les conversions de la même façon. Le modèle suggère de tester cela via une expérimentation 50/50 contre une référence CPA cible pour valider l'amélioration.

### Pour l'e-commerce

Le modèle prédit une progression des enchères basées sur le revenu vers les enchères basées sur le profit :

| Étape | Stratégie | Pourquoi cette étape |
|-------|-----------|---------------------|
| **Lancement** | Maximiser la valeur de conversion | Collecter des données de transaction et de revenu sans contrainte d'efficacité |
| **Stabilisation** | ROAS cible | Assez de données pour que l'algorithme optimise vers un garde-fou de retour sur dépense |
| **Optimisation** | ROAS cible avec des valeurs POAS | Le suivi du profit remplace les marges moyennes, donc 100 % correspond toujours au seuil de rentabilité |
| **Avancé** | ROAS cible d'optimum de profit via simulateurs d'enchères | Trouver le point sur la courbe de profit où le profit net culmine |

**Le POAS remplace le ROAS** quand le suivi du profit est en place. Le modèle prédit que cela produit de meilleurs résultats parce que l'optimisation se fait au niveau de la commande plutôt que de s'appuyer sur des marges moyennes qui masquent les différences de profitabilité au niveau produit.

### Pour le SaaS

Le modèle prédit une progression du volume d'inscriptions vers la valeur des abonnés :

| Étape | Stratégie | Pourquoi cette étape |
|-------|-----------|---------------------|
| **Lancement** | Maximiser les conversions ciblant les inscriptions | Collecter des données d'inscription pour établir un CPA de référence |
| **Stabilisation** | CPA cible par inscription ou CAC cible par abonné | Appliquer un garde-fou d'efficacité une fois que les données de conversion sont suffisantes |
| **Optimisation** | CPA cible avec OCT suivant les taux inscription-abonné | Rapprocher l'optimisation de l'événement de revenu, pas juste le remplissage de formulaire |
| **Avancé** | ROAS cible avec des valeurs d'abonnement variables | Quand les tiers d'abonnement ont des LTV différentes, les enchères basées sur la valeur poursuivent des abonnés de plus haute valeur |

> ↪️ **Pour la sélection et la configuration étape par étape de la stratégie :** Voir [SOP - Selectionner une strategie d'encheres](<Enchères - Sélectionner une stratégie d'enchères.md>) et [SOP - Surveiller et maintenir la sante des strategies d'encheres](<Enchères - Surveiller et maintenir la santé des stratégies d'enchères.md>)

---

## Le paradoxe de l'efficacité

| Concept | Ce que ça signifie |
|---------|---------------------|
| **Trop agressif** | Ratio profit/acquisition élevé (proche de 100 %), approche du seuil de rentabilité, volume maximum mais zéro profit |
| **Trop conservateur** | Ratio profit/acquisition bas (sous 20 %), haute efficacité mais le compte est affamé en volume |
| **Zone d'asphyxie** | Objectifs CPA trop bas ou objectifs ROAS trop hauts, causant Stratégies d'enchères intelligentes à restreindre les impressions jusqu'à ce que le volume s'assèche |
| **Zone de seuil de rentabilité** | 100 % du profit réinvesti en acquisition, niveau d'enchère maximum soutenable |
| **Optimum de profit** | Le point où le profit net est maximisé, trouvé via les scénarios du simulateur d'enchères |

> ⚠️ **Vous ne pouvez pas maximiser croissance et efficacité simultanément :** Chaque décision de stratégie d'enchères est une position sur le curseur croissance-efficacité. Sachez dans quelle direction vos objectifs pointent avant de définir des objectifs.

---

## Principes clés

1. **Objectifs d'abord, stratégie ensuite :** Ne jamais sélectionner une stratégie d'enchères sans objectifs de croissance et d'efficacité définis.
2. **Les stratégies d'enchères sont une progression, pas un choix ponctuel :** Commencer conservateur, migrer vers l'automatisé quand les données le permettent.
3. **Les portes de maturité des données existent pour une raison :** Un volume de conversions insuffisant mène à une performance volatile et peu fiable.
4. **Stratégies d'enchères intelligentes surpasse les enchères manuelles dans presque tous les cas :** Les exceptions sont étroites : campagnes de marque, très faible volume, expérimentations contrôlées.
5. **Toujours valider les objectifs :** Utiliser le ratio profit/acquisition, Performance Planner et les simulateurs d'enchères pour confirmer que vos objectifs d'efficacité peuvent délivrer vos objectifs de croissance.

---

## Modes d'échec

| Échec | Ce qui se passe | Comment prévenir |
|-------|-----------------|------------------|
| **Sélectionner une stratégie sans objectifs définis** | La stratégie d'enchères optimise pour le mauvais résultat parce qu'il n'y a pas d'objectif clair de croissance ou d'efficacité pour l'ancrer | Toujours compléter la pyramide objectif-stratégie du haut vers le bas : objectif business, objectif Google Ads, objectif d'optimisation, puis stratégie |
| **Passer à CPA cible/ROAS avec des données insuffisantes** | Stratégies d'enchères intelligentes oscille violemment parce qu'il manque de signaux de conversion suffisants pour apprendre les patterns | Respecter la porte de maturité des données : 30+ conversions/mois minimum pour CPA cible, 50+ pour ROAS cible. Utiliser Maximiser les conversions ou des stratégies de portefeuille pour mutualiser les données d'abord |
| **Rester trop longtemps sur une stratégie de lancement** | CPC manuel ou Maximize Clicks plafonne la performance parce qu'ils ne peuvent pas accéder aux 18+ signaux d'enchère en temps réel de Google | Définir un déclencheur de migration : une fois qu'une campagne atteint 30+ conversions/mois pendant deux mois consécutifs, évaluer le passage à une stratégie à objectif |
| **Définir des objectifs basés sur des aspirations plutôt que des données** | Un CPA cible défini 50 % en dessous de la moyenne historique affame la campagne, ou un ROAS cible défini 50 % au-dessus de la moyenne historique restreint le volume à quasi-zéro | Définir les objectifs initiaux au niveau ou légèrement au-dessus (CPA) ou en dessous (ROAS) de la moyenne historique de la phase de stabilisation, puis resserrer par incréments |
| **Confondre Maximiser les conversions et Maximiser la valeur de conversion** | La campagne optimise pour le nombre de leads au lieu du revenu, ou le revenu au lieu du volume, désalignant avec l'objectif business réel | Mapper l'objectif d'optimisation explicitement : "volume" correspond aux conversions, "valeur" correspond à la valeur de conversion. Les noms se ressemblent mais les résultats divergent |

---

## Documents liés

| Document | Relation |
|----------|----------|
| [Stratégies d'enchères intelligentes Mechanics Reference](<Enchères - Mécanismes des stratégies d'enchères intelligentes.md>) | Plongée en profondeur sur le fonctionnement de Stratégies d'enchères intelligentes |
| [Bid Strategy Selection Reference](<Enchères - Sélection de stratégie d'enchères.md>) | Arbres de décision par canal pour les 6 types de campagnes |
| [Bid Targets Reference](<Enchères - Cibles d'enchères.md>) | Dérivation des objectifs CPA/ROAS/POAS à partir des unit economics |
| [Budget Allocation Mental Model](<../../01-strategie/analyse/Analyse - Allocation de budget.md>) | Méthode pour dimensionner et distribuer les budgets |
| [Bid Scaling Mental Model](<Enchères - Scaling des enchères.md>) | Curseur croissance-efficacité et optimum de profit |
| [Goals and KPIs Mental Model](<../../01-strategie/objectifs/Objectifs - Objectifs et KPI.md>) | En amont : pyramide de définition des objectifs qui alimente la sélection de stratégie d'enchères |
| [Unit Economics Mental Model](<../../01-strategie/fondamentaux/Fondamentaux - Méthode unit economics.md>) | En amont : calculs de seuil de rentabilité qui déterminent les fourchettes d'objectifs |
| [Conversion Volume Thresholds Reference](<../suivi/Suivi - Seuils de volume de conversions.md>) | Seuils de maturité des données pour Stratégies d'enchères intelligentes |
| [SOP - Selectionner une strategie d'encheres](<Enchères - Sélectionner une stratégie d'enchères.md>) | Exécute ce document étape par étape |
