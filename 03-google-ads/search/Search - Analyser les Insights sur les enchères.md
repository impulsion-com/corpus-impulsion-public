# Analyser les Insights sur les enchères

> **Plateforme :** Google Ads
> **Catégorie :** Search
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Cette SOP vous guide dans une analyse concurrentielle à l'aide du rapport Insights sur les enchères, en transformant des données concurrentielles brutes en renseignements actionnables.

> ❓ **La question clé :** Comment le paysage concurrentiel évolue-t-il, et cela nécessite-t-il une réponse ?

Les données Insights sur les enchères sont utiles pour le contexte, pas pour la réaction. La plupart des mouvements concurrentiels ne nécessitent pas de réponse si vos propres KPIs restent dans la cible.

---

## Ce que cette SOP ne couvre PAS

Cette SOP ne couvre **pas :**

- Documenter les métriques et mécanismes Insights sur les enchères (Voir : [Insights sur les enchères Reference](<Search - Insights sur les enchères.md>))
- Définir les changements de stratégie d'enchères (ceux-ci nécessitent des décisions d'expérimentation distinctes)
- Couvrir les rapports concurrentiels de Google Merchant Center (source de données distincte)

## Quand utiliser cette SOP

Exécutez cette SOP :

- Mensuellement, dans le cadre de la revue de performance mensuelle
- Quand l'impression share baisse significativement sans modification de budget ou d'enchère
- Quand les CPC augmentent sans modifications internes au compte
- Quand un client demande des infos sur le positionnement concurrentiel

---

## Avant de commencer

### Prérequis

- Accès au compte Google Ads
- 90 jours de données de compte minimum
- Connaissance des 3-5 principaux concurrents de votre marché

### Documents de référence (à garder ouverts)

| Document | Utilisé pour |
|----------|----------|
| [Insights sur les enchères Reference](<Search - Insights sur les enchères.md>) | Définitions des métriques et interprétation |
| [Google Ads Metrics Reference](<../optimisation/Optimisation - Alertes et règles Google Ads.md>) | Définitions de l'impression share |
| Analyse Insights sur les enchères du mois précédent (si disponible) | Comparaison des tendances |

---

## Cadre d'exécution

| Phase | Objectif | Résultat |
|-------|---------|--------|
| **Phase 1️⃣: Extraction des données** | Extraire les données Insights sur les enchères au bon niveau | Jeu de données exporté |
| **Phase 2️⃣: Identification des concurrents** | Identifier les concurrents clés et les nouveaux entrants | Liste de concurrents classifiés |
| **Phase 3️⃣: Analyse des tendances** | Évaluer les mouvements directionnels dans le temps | Évaluation de tendance par concurrent |
| **Phase 4️⃣: Évaluation de l'impact** | Déterminer si les changements concurrentiels affectent vos KPI | Classification de l'impact et réponse |

---

## Phase 1️⃣ : Extraction des données (5 min)

### 1.1 Sélectionner la portée de l'analyse

| Périmètre | Quand l'utiliser |
|-------|-------------|
| Niveau campagne | Vue d'ensemble mensuelle du paysage concurrentiel |
| Niveau ad group | Investiguer la concurrence sur des thèmes précis |
| Niveau mot-clé | Diagnostiquer les hausses de CPC ou les baisses d'IS sur des termes précis |

### 1.2 Extraire les données Insights sur les enchères

1. Naviguez vers Campaigns (ou Ad Groups, ou Keywords)
2. Sélectionnez les entités à analyser
3. Cliquez sur le menu à trois points > « Auction insights »
4. Réglez la plage de dates sur les 3 derniers mois
5. Ajoutez un segment temporel pour voir les tendances. Les segments disponibles dépendent de la plage de dates sélectionnée :

| Segment | Idéal pour | Plage de dates minimum |
|---------|----------|--------------------|
| Day | Analyse d'un jour précis | Toute plage |
| Week | Tendance hebdomadaire au sein d'un trimestre | >7 jours |
| Month | Comparaison mensuelle (le plus courant) | >30 jours |
| Quarter | Évolutions concurrentielles trimestrielles | >90 jours |
| Year | Comparaison d'une année sur l'autre | Multi-années |
| Day of the week | Schémas concurrentiels par jour de semaine | >7 jours |

6. Téléchargez les données pour analyse

### 1.3 Extraire les données de comparaison

1. Réglez la plage de dates sur le mois en cours
2. Ajoutez une comparaison : même mois l'année précédente (si disponible) ou trimestre précédent
3. Notez votre propre IS, top of page rate et abs. top of page rate

---

## Phase 2️⃣ : Identification des concurrents (5 min)

### 2.1 Classifier les concurrents

Pour chaque concurrent qui apparaît dans Insights sur les enchères, classifiez :

| Concurrent | IS | Taux de chevauchement | Classification | Tendance |
|------------|-----|-------------|----------------|-------|
| [Nom] | ___% | ___% | Principal / Périphérique / Nouveau | Stable / En croissance / En déclin |

**Règles de classification :**

| Classification | Critères |
|---------------|----------|
| **Principal** | IS > 30 % ET taux de chevauchement > 50 % |
| **Périphérique** | IS < 30 % OU taux de chevauchement < 50 % |
| **Nouveau** | Absent des données du mois précédent |
| **Disparu** | Présent le mois dernier, absent ce mois-ci |

### 2.2 Noter les nouveaux entrants et sortants

- Les nouveaux concurrents entrant dans vos enchères peuvent augmenter les CPC
- Les concurrents qui sortent peuvent faire baisser les CPC et augmenter votre IS
- Documentez les deux pour le contexte de la revue mensuelle

---

## Phase 3️⃣ : Analyse des tendances (10 min)

### 3.1 Surveiller les tendances du taux d'impressions

Pour chaque concurrent principal, tracez l'IS sur les 3 derniers mois :

| Concurrent | IS Mois 1 | IS Mois 2 | IS Mois 3 | Direction |
|------------|-----------|-----------|-----------|-----------|
| Votre compte | ___% | ___% | ___% | ↑ / → / ↓ |
| [Concurrent 1] | ___% | ___% | ___% | ↑ / → / ↓ |
| [Concurrent 2] | ___% | ___% | ___% | ↑ / → / ↓ |
| [Concurrent 3] | ___% | ___% | ___% | ↑ / → / ↓ |

### 3.2 Surveiller les tendances de position

Pour les campagnes Search, suivez l'outranking share et le position above rate :

| Concurrent | Outranking share actuel | vs. mois précédent | Tendance |
|------------|------------------------|-----------------|-------|
| [Concurrent 1] | ___% | ___pp de variation | ↑ / → / ↓ |
| [Concurrent 2] | ___% | ___pp de variation | ↑ / → / ↓ |

### 3.3 Identifier les mouvements significatifs

Signalez tout concurrent présentant :
- Une variation d'IS > ±10 points de pourcentage d'un mois sur l'autre
- Une variation d'outranking share > ±15 points de pourcentage
- Un nouveau concurrent avec un IS > 20 % (immédiatement)

---

## Phase 4️⃣ : Évaluation de l'impact (10 min)

### 4.1 Corréler les changements concurrentiels avec vos KPI

La question critique n'est pas « que font les concurrents ? » mais « cela affecte-t-il ma performance ? »

| Votre métrique | Actuel | vs. mois précédent | Corrélation concurrentielle |
|------------|---------|-----------------|----------------------|
| Lost IS (Rank) | ___% | ___pp de variation | Perdez-vous des enchères à cause du Classement de l'annonce ? |
| Impression share | ___% | ___pp de variation | La perte d'IS vient-elle du budget ou du classement ? |
| Impressions | ___ | ___% de variation | Le volume de trafic baisse-t-il du fait de la perte d'IS ? |
| Conversions | ___ | ___% de variation | La perte de volume vient-elle de la perte d'impressions ? |
| Valeur de conv. (Revenu/Marge brute) | ___ | ___% de variation | Le revenu baisse-t-il du fait de la perte de conversions ? |
| CPA | ___ | ___% de variation | La hausse du CPC tire-t-elle le CPA vers le haut ? |
| ROAS | ___ | ___% de variation | L'efficacité baisse-t-elle sous la pression concurrentielle ? |

> ↪️ **Remontez en amont :** Utilisez le [Metric Tree Reference](<../strategie/Strategie - Arbre de métriques.md>) pour remonter des métriques d'objectif (ROAS, CPA) en amont dans l'arbre et identifier où la pression concurrentielle entre.

### 4.2 Déterminer la réponse

| Situation | Réponse |
|-----------|----------|
| L'IS d'un concurrent augmente mais vos KPI sont dans la cible | Surveiller, aucune action nécessaire |
| L'IS d'un concurrent augmente et votre CPA grimpe | Investiguer : la hausse du CPC due à la concurrence tire-t-elle le CPA ? |
| Nouveau concurrent et votre IS a chuté | Vérifier si le Lost IS est dû au budget ou au classement |
| Un concurrent a disparu et votre CPC a baissé | Opportunité : envisagez d'élargir le ciblage ou de tester des enchères plus basses |
| Plusieurs concurrents en croissance et votre position décline | Revue stratégique : évaluez s'il faut défendre la position ou se concentrer sur l'efficacité |

> ⚠️ **Ne cherchez pas à rattraper les positions des concurrents :** Si vos cibles de CPA/ROAS sont atteintes, peu importe qu'un concurrent vous devance au classement. Concentrez-vous sur vos propres métriques business, pas sur une vanité concurrentielle.

### 4.3 Documenter les constats

```
Analyse Insights sur les enchères - [Mois Année]
Compte : [Nom]

MA POSITION
- Impression Share : ___% (↑/→/↓ vs. mois précédent)
- Top of Page Rate : ___%
- Abs. Top of Page Rate : ___%

MOUVEMENTS DES CONCURRENTS
- [Concurrent 1] : IS ___% (↑/→/↓), Outranking Share ___%
- [Concurrent 2] : IS ___% (↑/→/↓), Outranking Share ___%
- Nouveaux entrants : [Aucun / noms]
- Sorties : [Aucune / noms]

IMPACT SUR MES KPI
- Impact CPC : [Aucun / description]
- Impact IS : [Aucun / description]
- Impact CPA/ROAS : [Aucun / description]

ACTIONS À MENER
- [Action ou « Aucune action nécessaire »]
```

---

## Validation et critères de complétion

Cette SOP est terminée quand :

- [ ] Insights sur les enchères extraits au bon périmètre avec une fenêtre de 3 mois
- [ ] Concurrents principaux identifiés et classifiés
- [ ] Tendances documentées pour IS, outranking share et position
- [ ] Impact sur les KPIs propres évalué
- [ ] Réponse déterminée (action ou surveillance)
- [ ] Analyse documentée

---

## Passerelle de sortie

Après l'analyse des Insights sur les enchères :

| Délai | Action |
|-----------|--------|
| Même revue | Intégrer les constats dans la revue mensuelle |
| Ce mois-ci | Exécuter les actions identifiées |
| Mois prochain | Comparer les données du mois suivant pour suivre les tendances |

**Si la pression concurrentielle nécessite une réponse stratégique :**

| Problème | Rediriger vers |
|-------|----------|
| Perte d'IS due au budget | Décision de réallocation de budget |
| Perte d'IS due au classement | Investigation Niveau de qualité ou enchères |
| Nouveau concurrent dominant | Revue stratégique avec les parties prenantes |

---

## Référence rapide : bibliothèque support

| Document | Type | Utilisé dans |
|----------|------|---------|
| [Insights sur les enchères Reference](<Search - Insights sur les enchères.md>) | Référence | Toutes les phases |
| [Google Ads Metrics Reference](<../optimisation/Optimisation - Alertes et règles Google Ads.md>) | Référence | Phase 4 |
| [Metric Tree Reference](<../strategie/Strategie - Arbre de métriques.md>) | Référence | Phase 4 (traçage de l'impact en amont) |

---

## Procédures liées

| SOP | Relation |
|-----|--------------|
| [SOP - Revue de performance mensuelle](<../../01-strategie/reporting/Reporting - Revue de performance mensuelle.md>) | Parent (Insights sur les enchères est une section) |
| [SOP - Revue de performance hebdomadaire](<../../01-strategie/reporting/Reporting - Revue de performance hebdomadaire.md>) | Amont (la revue hebdomadaire peut déclencher une analyse plus poussée) |

---

## Erreurs fréquentes

| Erreur | Pourquoi ça arrive | Comment l'éviter |
|---------|----------------|--------------|
| Réagir à un seul mois de données | Les changements concurrentiels peuvent être temporaires | Exiger 2+ mois de tendance cohérente avant d'agir |
| Courir après la position des concurrents | Une position plus haute ne signifie pas toujours un meilleur ROI | Concentrez-vous sur votre CPA/ROAS, pas sur votre classement |
| Analyse uniquement au niveau campagne | Passe à côté des dynamiques concurrentielles au niveau mot-clé | Descendez au niveau mot-clé pour les problèmes précis |
| Ignorer les Insights sur les enchères Shopping | N'analyser que la concurrence Search | Vérifiez à la fois les insights Search et Shopping |
| Aucune documentation | Analyse perdue, mêmes observations répétées chaque mois | Utilisez le modèle de documentation à chaque fois |

---

## Détails de version

- **Changelog :** v3.0 : Tableau de corrélation des KPI enrichi avec la chaîne complète de métriques (de Lost IS jusqu'au ROAS), ajout du callout Metric Tree Reference. v2.0 : Instruction sur les segments temporels enrichie avec les types de segments disponibles et les plages de dates recommandées
