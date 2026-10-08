# Détection des anomalies

> **Plateforme :** Google Ads
> **Catégorie :** Optimisation
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Ce document vous aide à distinguer les vraies anomalies de performance de la variance normale, pour investiguer les vrais problèmes et ignorer le bruit qui mènerait à des changements contre-productifs.

> ❓ **La question centrale :** Ce mouvement de données est-il un vrai problème nécessitant une action, ou de la variance normale que je devrais ignorer ?

La plupart des "baisses de performance" dans Google Ads sont du bruit. Réagir au bruit crée de l'instabilité : vous changez les enchères, mettez des keywords en pause ou restructurez des campagnes en vous basant sur des fluctuations aléatoires, ce qui réinitialise l'apprentissage et aggrave la performance. Ce modèle vous donne une méthode systématique pour décider quand agir et quand attendre.

---

## Ce que ce modèle NE couvre PAS

Ce document NE couvre PAS :

- La définition des métriques spécifiques à surveiller (Voir : [Google Ads Metrics Reference](<Optimisation - Alertes et règles Google Ads.md>))
- Les procédures d'investigation (Voir : [SOP - Investiguer les anomalies de performance](<Optimisation - Investiguer les anomalies de performance.md>))
- La cadence et le rythme de reporting (Voir : [Optimization Cadence Mental Model](<../strategie/Strategie - Cadence d'optimisation.md>))

---

## Le document de classification des anomalies

Chaque mouvement de données tombe dans l'une de quatre catégories. Votre travail est de classifier avant d'agir.

| **Catégorie** | **Définition** | **Action** | **Exemple** |
|--------------|----------------|------------|-------------|
| **1️⃣ Bruit** | Variance aléatoire dans les limites attendues | Ignorer | Le CPA oscille de ±15% d'un jour à l'autre sur un faible volume |
| **2️⃣ Changement attendu** | Mouvement prévisible dû à des causes connues | Surveiller, ne pas réagir | Baisse du weekend en lead gen B2B |
| **3️⃣ Signal émergent** | Mouvement directionnel constant sur 2+ périodes | Investiguer | CTR en baisse pendant 3 semaines consécutives |
| **4️⃣ Anomalie confirmée** | Déviation significative avec cause identifiée | Agir | Le suivi des conversions a cassé, le CPA a doublé du jour au lendemain |

> ⚠️ **La plupart des "anomalies" sont du bruit :** Dans un compte typique, 70-80% des mouvements de métriques d'une semaine à l'autre sont de la variance normale. L'objectif est de filtrer pour trouver les 20-30% qui comptent.

---

## Les trois tests

Avant d'investiguer un mouvement de données, effectuez ces trois tests séquentiels. S'il échoue à un test, c'est du bruit.

### Test 1 : Seuil de volume

> ↪️ **C'est de la pensée Couche 2️⃣ :** La détection d'anomalies opère dans la Couche 2️⃣ (alertes de performance) du [Account Monitoring Mental Model](<Optimisation - Surveillance de compte.md>). Confirmez toujours que la Couche 1️⃣ (santé/gouvernance) est propre avant d'investiguer des anomalies Couche 2️⃣.

*"Y a-t-il assez de données pour faire confiance à ce mouvement ?"*

La confiance dans les données nécessite un volume minimum. Les petits échantillons produisent de grandes oscillations qui ne signifient rien.

| **Métrique** | **Données minimales pour un signal hebdomadaire** | **Données minimales pour un signal quotidien** |
|------------|-------------------------------------------|-------------------------------------------|
| Conversions | 30+ par semaine | Non fiable au niveau quotidien pour la plupart des comptes |
| Clics | 100+ par semaine | 30+ par jour |
| Impressions | 1 000+ par semaine | 200+ par jour |
| CTR | 1 000+ impressions dans la période | 500+ impressions |
| CPA | 30+ conversions dans la période | Non fiable quotidiennement |
| ROAS | 30+ conversions dans la période | Non fiable quotidiennement |
| Niveau de qualité | 100+ impressions sur le keyword | N/A (se met à jour lentement) |

**Règle :** Si l'entité (campagne, ad group, keyword) a moins de conversions que le seuil, étendez votre fenêtre d'analyse jusqu'à l'atteindre. Un keyword avec 3 conversions cette semaine et 0 la semaine dernière n'a pas "perdu toutes ses conversions". Il a des données insuffisantes.

> 💡 **La règle de la racine carrée pour les proportions :** La marge d'erreur sur un taux (comme le CTR ou le CVR) est approximativement 1/√n où n est la taille de l'échantillon. Avec 100 clics, votre estimation de CVR a une marge de ±10%. Avec 1 000 clics, c'est ±3%. Avec 10 000, c'est ±1%. Petits échantillons = larges barres d'erreur.

### Test 2 : Seuil de magnitude

*"Ce mouvement est-il assez important pour compter ?"*

Même avec un volume suffisant, les petits mouvements sont attendus. Définissez ce qui constitue un changement significatif pour chaque métrique.

| **Métrique** | **Variance normale d'une semaine à l'autre** | **Investiguer si dépasse** |
|------------|-------------------------------------------|-----------------------------|
| Dépenses quotidiennes | ±20% | ±40% |
| CPA hebdomadaire | ±15% | ±30% pendant 2+ semaines |
| ROAS hebdomadaire | ±15% | ±30% pendant 2+ semaines |
| CTR | ±10% | ±20% soutenu |
| CVR | ±15% | ±25% pendant 2+ semaines |
| Impression share | ±5pp | ±10pp |
| CPC | ±10% | ±25% |
| Volume de conversions | ±20% | ±40% ou chute à zéro |

**Règle :** Ces seuils sont des points de départ. Calibrez-les sur votre compte spécifique après 3+ mois de données. Les comptes à forte variance nécessitent des seuils plus larges.

### Test 3 : Test de persistance

*"Ce mouvement a-t-il persisté assez longtemps pour être un pattern ?"*

Les mouvements sur une seule période sont des signaux. Les mouvements sur plusieurs périodes sont des patterns.

| **Durée** | **Classification** | **Réponse** |
|-----------|-------------------|------------|
| 1 jour | Bruit (sauf panne) | Noter, ne pas agir |
| 1 semaine | Signal | Signaler pour la prochaine revue |
| 2 semaines | Pattern émergent | Investiguer la cause racine |
| 3+ semaines | Tendance confirmée | Agir sur la cause racine |

**Exception :** Les anomalies de type panne (tracking arrêté, annonces désapprouvées, URLs cassées) reçoivent une action immédiate quelle que soit la durée. N'attendez pas 2 semaines pour corriger un tag de conversion cassé.

---

## Variance attendue par contexte

Différents contextes produisent différents niveaux de variance normale. Savoir ce qui est "normal" prévient les fausses alertes.

### Par volume de conversions (aligné sur les niveaux de volume standard)

| **Conversions mensuelles** | **Variance hebdomadaire du CPA attendue** | **Implication** |
|---------------------------|-----------------------------------------|-----------------|
| 500+ | ±10% | Les revues hebdomadaires sont fiables |
| 200-500 | ±15-20% | Revues hebdomadaires avec prudence |
| 50-200 | ±25-35% | Revues bi-hebdomadaires recommandées |
| <50 | ±50%+ | Revues mensuelles uniquement, l'hebdomadaire est du bruit pur |

### Par type de campagne

| **Type de campagne** | **Niveau de variance typique** | **Pourquoi** |
|---------------------|-------------------------------|-------------|
| Search de marque | Bas | Intention stable, volume constant |
| Search hors marque (exact/phrase) | Moyen | Intention spécifique mais volume fluctuant |
| Search hors marque (broad) | Moyen-Élevé | La correspondance plus large crée plus de variabilité |
| Shopping (standard) | Moyen | Le mix produit change quotidiennement |
| Performance Max | Élevé | L'allocation en boîte noire change constamment |
| Display/Video | Très élevé | La qualité de l'audience varie significativement |
| Demand Gen | Élevé | Trafic exploratoire, intention variable |

### Par jour de la semaine

| **Pattern** | **Comptes typiquement affectés** | **Comportement attendu** |
|------------|--------------------------------|------------------------|
| Baisse du weekend | B2B, Lead Gen, SaaS | 30-60% de volume en moins sam/dim |
| Pic du weekend | E-commerce (biens de consommation) | 10-30% de volume en plus sam/dim |
| Pic du lundi | B2B, Lead Gen | Rattrapage de recherches le lundi matin |
| Pic de fin de mois | E-commerce, B2B avec quotas | Utilisation du budget restant, urgence d'achat |

---

## Ajustements saisonniers

Les patterns saisonniers sont des changements attendus, pas des anomalies. Tenez-en compte avant de signaler des mouvements.

### Facteurs saisonniers courants

> ↪️ **Saisonnalité = changement attendu, pas anomalie :** Dans le [méthode de classification des anomalies](#le-framework-de-classification-des-anomalies), les patterns saisonniers sont de Catégorie 2 (changement attendu). Tenez-en compte avant de signaler un mouvement comme anomalie.

| **Facteur** | **Impact** | **Comment en tenir compte** |
|------------|-----------|--------------------------|
| **Saisonnalité du secteur** | Cycles prévisibles de volume/CPC (ex. retail Q4, saison fiscale) | Comparer année sur année, pas juste semaine sur semaine |
| **Périodes promotionnelles** | Pics artificiels pendant les événements de vente | Exclure les périodes promotionnelles de la fiche |
| **Saisonnalité concurrentielle** | Les CPC augmentent quand les concurrents augmentent leurs dépenses | Surveiller les Insights sur les enchères parallèlement à la performance |
| **Météo/événements** | Variations de volume imprévisibles mais explicables | Vérifier les facteurs externes avant d'investiguer en interne |

**Règle de saisonnalité :** Comparez toujours la même période année sur année avant de conclure qu'une tendance existe. Une baisse de 20% en janvier vs. décembre peut être tout à fait normale.

---

## Le document de réponse aux anomalies

Une fois que vous avez classifié un mouvement de données, suivez le parcours de réponse approprié.

```
Mouvement de données détecté
│
├─ Échoue au test de volume → BRUIT : Étendre la fenêtre d'analyse
│
├─ Passe le volume, échoue la magnitude → BRUIT : Variance normale
│
├─ Passe volume + magnitude, échoue la persistance → SIGNAL : Signaler et surveiller
│
└─ Passe les trois tests → ANOMALIE : Investiguer
   │
   ├─ Type panne (tracking, URLs, désapprobations)
   │  └─ CORRIGER IMMÉDIATEMENT : Ne pas attendre la persistance
   │
   ├─ Cause externe (saisonnalité, concurrent, marché)
   │  └─ S'ADAPTER : Ajuster les attentes, pas les paramètres du compte
   │
   ├─ Cause interne (vos changements, apprentissage de la stratégie d'enchères)
   │  └─ ÉVALUER : Le changement était-il intentionnel ? Laisser du temps ou revenir en arrière.
   │
   └─ Cause inconnue
      └─ DIAGNOSTIQUER : Utiliser l'arbre de métriques pour remonter en amont
```

> ↪️ **Pour le diagnostic de cause racine :** Voir : [Metric Tree Reference](<../strategie/Strategie - Arbre de métriques.md>) pour remonter les causes en amont via l'arbre de métriques.

---

## Définition des seuils rouge, orange, vert

Les seuils du Status Board déterminent quand les métriques sont signalées. Définissez-les en fonction de l'historique du compte, pas de chiffres arbitraires.

### Comment définir les seuils

> 💡 **Maintenez les références de manière programmatique :** Les étapes 1-3 ci-dessous peuvent être automatisées avec un script Google Ads ou un outil tiers qui recalcule la moyenne et l'écart-type sur une base glissante (ex. tous les 30 jours). Cela supprime l'effort de calibration manuelle et garde les seuils alignés avec la performance récente. Voir : [Monitoring Automation Reference](<Optimisation - Automatisation du monitoring.md>) pour les patterns de gestion des références.

1. **Collecter 90 jours de données** pour chaque métrique au niveau d'entité que vous surveillerez
2. **Calculer la moyenne et l'écart-type** pour les valeurs hebdomadaires
3. **Définir les bandes :**

| **Statut** | **Plage** | **Signification** |
|-----------|---------|-------------|
| 🟢 Vert | Dans 1 écart-type de la cible | Sur la bonne voie, aucune action nécessaire |
| 🟡 Orange | 1-2 écarts-types de la cible | Surveiller de près, problème potentiel |
| 🔴 Rouge | Plus de 2 écarts-types de la cible | Investiguer immédiatement |

4. **Recalibrer mensuellement :** Si vous êtes systématiquement au vert, relevez la barre. Si vous êtes toujours au rouge, vos cibles sont peut-être irréalistes.

> 💡 **Commencer simple, affiner au fil du temps :** Si vous n'avez pas 90 jours de données, utilisez les benchmarks (analyses comparatives) du secteur comme seuils de départ. Après 3 mois, passez à des seuils spécifiques au compte basés sur la variance réelle.

---

## Automatiser la détection d'anomalies

Toutes les parties de la détection d'anomalies ne peuvent pas être automatisées. Le document ci-dessous sépare ce que les machines gèrent bien de ce qui nécessite un jugement humain.

| **Composant** | **Automatisable ?** | **Comment** |
|--------------|-------------------|--------|
| **Vérifications de volume** (Test 1) | Oui | Les scripts ou règles filtrent les entités en dessous des seuils de volume minimum avant d'alerter |
| **Alertes de magnitude** (Test 2) | Oui | Les règles se déclenchent sur des seuils absolus, les scripts calculent le % de déviation par rapport aux références |
| **Suivi de persistance** (Test 3) | Partiellement | Les scripts suivent les périodes consécutives de déviation, signalent quand le seuil de persistance est atteint |
| **Maintenance des références** | Oui | Les scripts recalculent les moyennes glissantes et les écarts-types selon un calendrier |
| **Classification de contexte** (bruit vs. attendu vs. signal) | Non | Nécessite la connaissance du contexte business, de la saisonnalité, des changements récents |
| **Analyse de cause racine** | Non | Nécessite un raisonnement diagnostique à travers les métriques, systèmes et contexte business |
| **Décisions de réponse** | Non | Nécessite un jugement stratégique sur les compromis |

**Répartition pratique :** Automatiser la détection (Tests 1-2), semi-automatiser le suivi de persistance (Test 3), garder la classification et la réponse humaines. L'objectif : passer zéro temps à trouver les anomalies potentielles, tout votre temps à décider lesquelles comptent et quoi faire.

> ↪️ **Pour les détails d'implémentation :** Voir : [Monitoring Automation Reference](<Optimisation - Automatisation du monitoring.md>) pour les recettes d'automatisation spécifiques à la détection d'anomalies.

---

## Principes clés

1. **La plupart des mouvements de données sont du bruit :** Votre réponse par défaut devrait être "attendre et voir", pas "changer quelque chose".
2. **Le volume avant l'analyse :** Ne tirez jamais de conclusions à partir de données insuffisantes. Étendez la fenêtre jusqu'à en avoir assez.
3. **La persistance confirme les patterns :** Une seule mauvaise semaine est un signal. Deux mauvaises semaines c'est un pattern. Trois c'est un problème.
4. **Les pannes sont l'exception :** Les défaillances de tracking (suivi des conversions/évènements), les désapprobations et les URLs cassées reçoivent une action immédiate quel que soit le test de persistance.
5. **Le contexte explique la variance :** Le jour de la semaine, la saisonnalité et le type de campagne affectent tous ce à quoi "normal" ressemble. Tenez-en compte avant de signaler.
6. **Calibrez les seuils sur votre compte :** Les seuils génériques créent des fausses alertes. Utilisez l'historique spécifique du compte pour définir des bandes significatives.

---

## Documents liés

| **Document** | **Relation** |
|--------------|------------------|
| [Account Monitoring Mental Model](<Optimisation - Surveillance de compte.md>) | Méthode parente : ce doc est de la pensée Couche 2️⃣ |
| [Optimization Cadence Mental Model](<../strategie/Strategie - Cadence d'optimisation.md>) | Compagnon : quand vérifier chaque métrique |
| [Reporting Mental Model](<../../01-strategie/reporting/Reporting - Reporting.md>) | Fondation : hiérarchie de reporting et types |
| [Monitoring Automation Reference](<Optimisation - Automatisation du monitoring.md>) | Référence : recettes d'automatisation pour la détection d'anomalies |
| [Metric Tree Reference](<../strategie/Strategie - Arbre de métriques.md>) | Référence : relations entre métriques pour le traçage de causes racines |
| [Google Ads Metrics Reference](<Optimisation - Alertes et règles Google Ads.md>) | Référence : définitions des métriques |
| [Status board and operating rhythms](<../../01-strategie/fondamentaux/Fondamentaux - Status Board et rythmes opérationnels.md>) | Fondation : méthode de seuils rouge/orange/vert |
| [SOP - Investiguer les anomalies de performance](<Optimisation - Investiguer les anomalies de performance.md>) | Exécution : procédure d'investigation |
| [SOP - Check quotidien de sante du compte](<Optimisation - Check quotidien de santé du compte.md>) | Exécution : scan quotidien des anomalies |

---

## Détails de version

- **Journal des modifications :** v2.0 : Ajout de la section automatisation, référence croisée au modèle de surveillance du compte (Couche 2️⃣), ajout de la note sur la maintenance des références, titres en minuscules.
