# Reporting

> **Plateforme :** Stratégie
> **Catégorie :** Reporting
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Ce document vous aide à construire une méthode de reporting qui connecte les données de campagne aux décisions business, pour que chaque rapport génère de l'action plutôt que de simplement présenter des chiffres.

> ❓ **La question centrale :** Que dois-je mesurer, à quelle fréquence le regarder, et quelle action ça pilote ?

Le reporting ne concerne pas les tableaux de bord ou le volume de données. Il s'agit de faire remonter la bonne information au bon moment pour permettre les bonnes décisions. Un mauvais reporting crée de la confusion et de la paralysie d'analyse. Un bon reporting accélère l'optimisation.

---

## Ce que ce modèle NE couvre PAS

Ce document NE couvre PAS :

- La définition des KPIs à suivre (Voir : [Goals and KPIs Mental Model](<../objectifs/Objectifs - Objectifs et KPI.md>))
- La mise en place du suivi des conversions (Voir : [Measurement Maturity Mental Model](<Reporting - Maturité de la mesure.md>))
- Les calculs d'économie unitaire (Voir : [Unit Economics Mental Model](<../fondamentaux/Fondamentaux - Méthode unit economics.md>))

---

## La hiérarchie du reporting

Les rapports existent à différents niveaux, chacun servant une audience et un objectif distincts.

| **Niveau** | **Audience** | **Question à laquelle il répond** | **Cadence** | **Profondeur** |
|-----------|------------|----------------------------------|------------|---------------|
| **1️⃣ Exécutif** | Direction, propriétaires | Atteint-on les objectifs business ? | Mensuel/Trimestrielle | Minimale : résultats uniquement |
| **2️⃣ Stratégique** | Direction marketing | Quels canaux/campagnes génèrent des résultats ? | Hebdomadaire/Bi-hebdomadaire | Modérée : performance par segment |
| **3️⃣ Tactique** | Gestionnaires de campagnes | Que faut-il changer aujourd'hui ? | Quotidien/Hebdomadaire | Approfondie : niveau ad group et keyword |
| **4️⃣ Diagnostique** | Spécialistes | Pourquoi est-ce que ça se passe ? | Au besoin | Granulaire : segment, dimension, temps |

> ⚠️ **Adaptez le rapport à l'audience :** Donner des données au niveau keyword aux dirigeants leur fait perdre du temps. Donner uniquement des métriques de haut niveau aux spécialistes les empêche d'agir.

---

## Les trois types de rapports

### 1️⃣ Rapports de performance

*"Comment se porte-t-on par rapport à nos objectifs ?"*

| **Élément** | **Description** |
|------------|----------------|
| **Objectif** | Suivre les progrès vers les KPIs principaux et secondaires |
| **Structure** | Période en cours vs. cible vs. période précédente |
| **Métriques clés** | KPIs principaux (conversions, CA, CPA, ROAS) + KPIs garde-fous |
| **Action** | Continuer, ajuster les cibles ou escalader |

**Exemple de structure :**

| Métrique | Cible | Actuel | vs. Cible | vs. Période précédente |
|---------|-------|--------|----------|----------------------|
| Conversions | 500 | 480 | -4% | +12% |
| ROAS | 400% | 385% | -4% | -2% |
| Dépenses | 50 000 EUR | 48 500 EUR | -3% | +8% |

**Pourquoi ça fonctionne :** Les rapports de performance répondent à "est-ce qu'on gagne ?" d'un coup d'oeil. Ils n'expliquent pas pourquoi : c'est pour les rapports diagnostiques.

### 2️⃣ Rapports de tendances

*"Où allons-nous ?"*

| **Élément** | **Description** |
|------------|----------------|
| **Objectif** | Identifier les changements de dynamique avant qu'ils deviennent des problèmes |
| **Structure** | Visualisation de séries temporelles (semaine sur semaine, mois sur mois) |
| **Métriques clés** | Les mêmes que la performance, visualisées dans le temps |
| **Action** | Investiguer l'accélération ou la décélération |

**Signaux de tendance clés :**

| Signal | Interprétation | Action |
|--------|---------------|--------|
| CPA en hausse depuis 3+ semaines | L'efficacité se dégrade | Investiguer la fatigue créative, la concurrence ou la landing page |
| Taux de conversion en baisse | L'offre ou la page perd en efficacité | Tester A/B une nouvelle landing page ou offre |
| Impression share en baisse | Perte de position concurrentielle | Revoir les enchères, le budget ou le Niveau de qualité |
| CTR en baisse | La pertinence de l'annonce décline | Rafraîchir le copy d'annonce ou tester un nouveau message |

**Pourquoi ça fonctionne :** Les rapports ponctuels peuvent manquer les dynamiques. Une semaine plate semble correcte jusqu'à ce qu'on voie que c'est la quatrième semaine plate d'affilée.

### 3️⃣ Rapports diagnostiques

*"Pourquoi est-ce que ça se passe ?"*

| **Élément** | **Description** |
|------------|----------------|
| **Objectif** | Isoler les causes racines des changements de performance |
| **Structure** | Vues segmentées, décompositions par dimension, comparaisons temporelles |
| **Dimensions clés** | Appareil, localisation, audience, keyword, annonce, heure de la journée |
| **Action** | Appliquer une correction spécifique à un segment spécifique |

**Méthode diagnostique :**

```
La performance a changé
│
├─ OÙ est-ce que ça a changé ?
│   ├─ Quelles campagnes ?
│   ├─ Quels ad groups ?
│   └─ Quels keywords/audiences ?
│
├─ QUELLE métrique a changé en premier ?
│   ├─ Impressions → Problème de portée
│   ├─ CTR → Problème de pertinence d'annonce
│   ├─ CPC → Problème d'enchère
│   └─ CVR → Problème de landing page ou d'offre
│
└─ QUAND est-ce que ça a commencé ?
    ├─ Corréler avec les changements que vous avez faits
    ├─ Corréler avec l'activité concurrentielle
    └─ Corréler avec les facteurs externes (saisonnalité, actualités)
```

**Pourquoi ça fonctionne :** Les rapports diagnostiques transforment "la performance a baissé" en "le CTR a baissé sur mobile en Californie après le lancement de la promo de notre concurrent".

---

## Le flux de métriques

Comprendre comment les métriques s'enchaînent de l'impression au chiffre d'affaires révèle où les problèmes prennent leur source.

```
Impressions
    ↓ (CTR)
Clics
    ↓ (CPC)
Coût
    ↓ (CVR)
Conversions
    ↓ (AOV)
Chiffre d'affaires
    ↓ (Marge)
Profit
```

**Le principe diagnostique :** Quand une métrique en aval change, remontez en amont pour trouver la cause racine.

| Changement de métrique | Vérifier en amont | Exemples de causes racines |
|----------------------|-----------------|--------------------------|
| Chiffre d'affaires en baisse | Conversions en baisse ou AOV en baisse ? | Moins de transactions ou paniers plus petits |
| Conversions en baisse | Clics en baisse ou CVR en baisse ? | Problème de trafic ou problème de conversion |
| Clics en baisse | Impressions en baisse ou CTR en baisse ? | Problème de portée ou problème de pertinence |
| Impressions en baisse | Volume de recherche ou impression share ? | Contraction du marché ou perte concurrentielle |

---

## Cadence par type de rapport

| **Rapport** | **Audience** | **Cadence** | **Déclencheur pour l'ad-hoc** |
|-----------|------------|------------|------------------------------|
| Résumé exécutif | Direction | Mensuelle | Décisions budgétaires majeures, revues business |
| Tableau de bord de performance | Équipe marketing | Hebdomadaire | Aucun : toujours disponible |
| Revue de campagne | Gestionnaires de campagnes | Hebdomadaire | Changement significatif de performance |
| Analyse diagnostique approfondie | Spécialistes | Au besoin | Franchissement de seuil de performance |

**Structure de la revue hebdomadaire :**

1. Vérifier les KPIs principaux vs. cibles (2 min)
2. Identifier les valeurs aberrantes ou tendances (3 min)
3. Prioriser un problème pour une analyse diagnostique (10 min)
4. Documenter les constats et actions (5 min)

> 💡 **Limitez le temps de vos revues :** Un accès illimité aux données crée une analyse illimitée. Fixez un temps pour les revues hebdomadaires et respectez-le.

---

## Stratégie de segmentation

Différents segments révèlent différents insights. Utilisez la bonne segmentation pour la question posée.

| **Dimension** | **Révèle** | **Utiliser quand** |
|-------------|-----------|-------------------|
| **Campagne** | Performance au niveau canal/objectif | Allocation de budget entre les stratégies |
| **Ad group** | Performance au niveau ciblage/intention | Optimisation au sein d'une campagne |
| **Appareil** | Différences de comportement mobile vs. desktop | Ajustements de landing page ou d'enchères |
| **Localisation** | Variance géographique de performance | Campagnes locales ou différences régionales |
| **Temps** | Patterns de performance par jour/heure | Décisions de planning d'annonces |
| **Audience** | Différences de valeur par segment | Ajustements d'enchères ou exclusions |
| **Terme de recherche** | Alignement d'intention et gaspillage | Gestion des keywords négatifs |
| **Réseau** | Search vs. Partenaires vs. Display | Décisions d'exclusion de réseau |

**Règles de segmentation :**

1. **Commencer large, affiner uniquement quand nécessaire :** Compte - Campagne - Ad group - Keyword
2. **Segmenter par une seule dimension à la fois :** Appareil + Localisation + Audience + Jour est trop granulaire pour agir
3. **Règle de données suffisantes :** 100+ conversions ou 30 jours minimum avant de faire confiance aux données au niveau segment

---

## Considérations sur l'attribution

Google Ads rapporte des données basées sur l'attribution. Comprenez les implications.

| **Modèle d'attribution** | **Comportement** | **Idéal pour** |
|-------------------------|----------------|---------------|
| **Data-driven** | Distribue le crédit en fonction de la contribution réelle | La plupart des comptes (par défaut) |
| **Dernier clic** | 100% du crédit au dernier point de contact | Comprendre la performance de closing |

**Règles critiques d'attribution :**

1. **Même modèle pour tous les rapports :** Comparer des campagnes avec des attributions différentes n'a pas de sens
2. **Le délai de conversion existe :** Les nouvelles campagnes ont besoin de 7-14 jours avant que les données de conversion soient fiables
3. **Google Ads ≠ Réalité :** L'attribution cross-plateforme ne correspondra jamais exactement aux données backend
4. **La tendance dans le temps compte plus que les chiffres absolus :** Si l'attribution est cohérente, les tendances sont valides même si les totaux ne sont pas exacts

> ⚠️ **L'attribution est un modèle, pas la vérité :** Aucun modèle d'attribution n'est "correct". Utilisez-le de manière cohérente pour la comparaison, mais validez toujours avec les données de chiffre d'affaires du backend.

---

## Principes de formatage des rapports

Un bon formatage transforme les données en décisions. Un mauvais formatage crée de la confusion.

| **Principe** | **Faire** | **Ne pas faire** |
|-------------|---------|-----------------|
| **Hiérarchie** | KPIs principaux en premier, métriques de soutien en dessous | Lister toutes les métriques par ordre alphabétique |
| **Comparaison** | Montrer vs. cible, vs. période précédente | Montrer des chiffres bruts sans contexte |
| **Visualisation** | Graphiques pour les tendances, tableaux pour les détails | Graphiques pour tout |
| **Actionnabilité** | Inclure des annotations "ce que ça signifie" | Présenter des données sans interprétation |
| **Cohérence** | Mêmes métriques, même ordre, même format | Changer de format à chaque rapport |

**Formatage des tableaux :**

| Bien | Mal |
|------|-----|
| Arrondir aux entiers ou 2 décimales | Afficher 8 décimales |
| Symboles monétaires cohérents | Mélanger EUR et "euros" |
| Aligner les nombres à droite, le texte à gauche | Tout centrer |
| Surligner les valeurs aberrantes (couleur ou gras) | Pas de hiérarchie visuelle |

---

## Erreurs de reporting courantes

| **Erreur** | **Problème** | **Correction** |
|-----------|-------------|---------------|
| **Déversement de données** | Trop de données, pas d'insight | Limiter à 5-7 métriques clés par rapport |
| **Pas de comparaison** | "On a eu 500 conversions" ne veut rien dire seul | Toujours montrer vs. cible et vs. précédent |
| **Mauvaise cadence** | Les rapports quotidiens créent du bruit, les mensuels ratent les problèmes | Adapter la cadence à la fréquence de décision |
| **Métriques de vanité** | Les impressions sans contexte sont impressionnantes mais ne signifient rien | Se concentrer sur les métriques qui pilotent des décisions |
| **Contexte manquant** | "Le CPA a augmenté de 20%" sans explication crée la panique | Ajouter des annotations pour les facteurs connus |
| **Sur-segmentation** | Appareil + localisation + audience + jour = aucune validité statistique | Segmenter par une dimension à la fois |
| **Ignorer le délai** | Juger la campagne d'hier par les conversions d'aujourd'hui | Attendre le délai de conversion avant de juger |

---

## Principes clés

1. **Les rapports servent les décisions, pas le stockage de données :** Si une métrique n'informe pas une action, supprimez-la.
2. **Adaptez le rapport à l'audience :** Les dirigeants ont besoin de résultats. Les spécialistes ont besoin de détails.
3. **Trois types de rapports couvrent tout :** Performance (est-ce qu'on gagne ?), Tendance (où va-t-on ?), Diagnostique (pourquoi ça se passe ?).
4. **Remontez en amont pour les causes racines :** Quand le CA baisse, remontez à travers conversions, clics, impressions pour trouver la source.
5. **La cohérence permet la comparaison :** Mêmes métriques, même attribution, même format à chaque fois.
6. **Limitez le temps d'analyse :** Fixez des limites sur le temps passé dans les rapports. Les rendements décroissants arrivent vite.

---

## Documents liés

| **Document** | **Relation** |
|--------------|------------------|
| [Goals and KPIs Mental Model](<../objectifs/Objectifs - Objectifs et KPI.md>) | Fondation : définit quels KPIs suivre |
| [Google Ads Metrics Reference](<../../03-google-ads/optimisation/Optimisation - Alertes et règles Google Ads.md>) | Référence : définitions et calculs des métriques |
| [Custom Columns Reference](<../../03-google-ads/optimisation/Optimisation - Colonnes personnalisées.md>) | Référence : formules de métriques personnalisées |
| [Reporting Quality Checklist](<Reporting - [Review] Qualité du reporting.md>) | Validation : checklist pour la configuration des rapports |
| [SOP - Revue de performance hebdomadaire](<Reporting - Revue de performance hebdomadaire.md>) | Exécution : processus de revue hebdomadaire |
