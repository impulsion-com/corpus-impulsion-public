# Revue de performance mensuelle

> **Plateforme :** Stratégie
> **Catégorie :** Reporting
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Cette SOP vous guide dans une revue de performance mensuelle qui prolonge la revue hebdomadaire avec une analyse stratégique, un recalibrage des baselines (valeurs de référence) et des contrôles de santé structurelle.

> ❓ **La question clé :** Sommes-nous sur la trajectoire pour atteindre nos objectifs, et nos baselines, seuils et stratégie reflètent-ils encore la réalité ?

Les revues mensuelles font le pont entre les revues hebdomadaires tactiques et les revues trimestrielles stratégiques. Elles détectent les problèmes à évolution lente (dérive des paramètres, dérive du tracking (suivi des conversions/évènements), évolutions concurrentielles) que les revues hebdomadaires ratent.

---

## Ce que cette SOP ne couvre PAS

Cette SOP ne couvre **pas :**

- Remplacer les revues hebdomadaires (Voir : [SOP - Revue de performance hebdomadaire](<Reporting - Revue de performance hebdomadaire.md>))
- Couvrir le suivi quotidien (Voir : [SOP - Check quotidien de sante du compte](<../../03-google-ads/optimisation/Optimisation - Check quotidien de santé du compte.md>))
- Fournir une remise à plat stratégique trimestrielle complète (Voir : [SOP - Revue trimestrielle business](<Reporting - Revue business trimestrielle.md>))

## Quand utiliser cette SOP

Exécutez cette SOP :

- La première semaine de chaque mois
- À la fin de chaque trimestre (en combinaison avec la revue stratégique trimestrielle)
- Lors de l'onboarding d'un nouveau compte (établissement de la baseline initiale)

---

## Avant de commencer

### Prérequis

- Revues hebdomadaires réalisées pour le mois écoulé
- Données back-end (CRM, analytics, plateforme e-commerce) pour la vérification des conversions
- KPIs cibles et objectifs business
- Document de revue du mois précédent (pour la comparaison des tendances)

### Documents de référence (à garder ouverts)

| Document | Utilisé pour |
|----------|----------|
| [Mensuelle Performance Review Checklist](<Reporting - Revue de performance mensuelle.md>) | Éléments de vérification |
| [Reporting Mental Model](<Reporting - Reporting.md>) | Méthode d'analyse |
| [Optimization Cadence Mental Model](<../../03-google-ads/strategie/Strategie - Cadence d'optimisation.md>) | Périmètre de la cadence mensuelle |
| [Google Ads Metrics Reference](<../../03-google-ads/optimisation/Optimisation - Alertes et règles Google Ads.md>) | Interprétation des métriques |

### Temps estimé

| Section | Temps |
|---------|------|
| Phase 1 : Tendances de performance | 15 min |
| Phase 2 : Tracking et intégrité des données | 10 min |
| Phase 3 : Paysage concurrentiel | 10 min |
| Phase 4 : Audit des paramètres et de la structure | 15 min |
| Phase 5 : Recalibrage de la baseline | 10 min |
| Phase 6 : Plan d'action | 10 min |
| **Total** | **70 min** |

> ⚠️ **Limitez à 90 minutes maximum :** les revues mensuelles sont plus poussées que les hebdomadaires, mais ne doivent pas se transformer en sessions d'analyse sans fin. Concentrez-vous sur les décisions, pas sur une revue exhaustive des données.

---

## Cadre d'exécution

| Phase | Objectif | Résultat |
|-------|---------|--------|
| **Phase 1️⃣ : Tendances de performance** | Évaluer la performance sur 30 jours face aux objectifs | Statut de performance et trajectoire |
| **Phase 2️⃣ : Tracking et intégrité des données** | Vérifier l'exactitude des données de conversion | Évaluation de la santé du tracking |
| **Phase 3️⃣ : Paysage concurrentiel** | Identifier les évolutions concurrentielles | Mise à jour du paysage concurrentiel |
| **Phase 4️⃣ : Paramètres et structure** | Détecter les dérives et les problèmes structurels | Constats de l'audit des paramètres |
| **Phase 5️⃣ : Recalibrage de la baseline** | Mettre à jour les seuils si nécessaire | Baselines recalibrées |
| **Phase 6️⃣ : Plan d'action** | Prioriser les actions stratégiques du mois suivant | Plan d'action mensuel |

---

## Phase 1️⃣: Tendances de performance (15 min)

### 1.1 Comparaison mois sur mois

1. Réglez la plage de dates sur le dernier mois complet
2. Comparez au mois précédent
3. Notez les KPIs principaux :

| KPI | Ce mois-ci | Mois dernier | Évolution | vs. Cible | Statut |
|-----|-----------|-----------|--------|------------|--------|
| Conversions | ___ | ___ | ___% | ___ | 🟢🟡🔴 |
| CPA / ROAS | ___ | ___ | ___% | ___ | 🟢🟡🔴 |
| Dépense | ___ | ___ | ___% | ___ | 🟢🟡🔴 |
| Valeur de conv. | ___ | ___ | ___% | ___ | 🟢🟡🔴 |

### 1.2 Comparaison année sur année (si disponible)

Comparez le même mois à l'année précédente pour tenir compte de la saisonnalité :

| KPI | Ce mois-ci | Même mois l'an dernier | Évolution annuelle |
|-----|-----------|---------------------|------------|
| Conversions | ___ | ___ | ___% |
| CPA / ROAS | ___ | ___ | ___% |
| Dépense | ___ | ___ | ___% |

### 1.3 Évaluation de la trajectoire

À partir des X premiers mois de l'année, projetez la performance sur l'année complète :

| KPI | Cible annuelle | Réalisé YTD | Rythme YTD | Projection fin d'année | Sur la bonne voie ? |
|-----|--------------|-----------|----------|-------------------|-----------|
| Chiffre d'affaires | ___ | ___ | ___% | ___ | Oui / Non |
| Bénéfice | ___ | ___ | ___% | ___ | Oui / Non |

### 1.4 Revue au niveau des campagnes

1. Identifiez les 5 campagnes qui dépensent le plus
2. Pour chacune, notez le CPA/ROAS vs. cible
3. Identifiez les 3 campagnes les moins efficaces
4. Documentez les candidates à une réallocation de budget

---

## Phase 2️⃣: Tracking et intégrité des données (10 min)

### 2.1 Comparaison Google Ads vs. back-end

1. Exportez les données de conversion Google Ads du mois
2. Comparez aux données back-end (conversions CRM, transactions e-commerce, analytics)
3. Calculez l'écart :

| Source | Conversions | Chiffre d'affaires | % d'écart |
|--------|------------|---------|---------------|
| Google Ads | ___ | ___ | - |
| Back-end | ___ | ___ | - |
| **Écart** | - | - | ___% |

**Plages acceptables :**

| Écart | Statut | Action |
|-------------|--------|--------|
| <10% | Normal | Aucune action |
| 10-20% | À surveiller | Investiguez si l'écart augmente |
| >20% | Problème | Diagnostiquez et corrigez le tracking |

### 2.2 Santé des actions de conversion

1. Naviguez vers Objectifs > Conversions > Résumé
2. Vérifiez que toutes les actions de conversion primaires et secondaires sont actives
3. Contrôlez les paramètres des actions de conversion (fenêtre, méthode de comptabilisation, valeur)
4. Notez toute action de conversion présentant des avertissements

### 2.3 Vérification Enhanced Conversions (si applicable)

1. Vérifiez le taux de correspondance des Enhanced Conversions
2. Vérifiez le pipeline d'import des conversions hors ligne (s'il est utilisé)
3. Notez tout problème de qualité des données

---

## Phase 3️⃣: Paysage concurrentiel (10 min)

### 3.1 Lancer l'analyse Insights sur les enchères

Suivez la [SOP - Analyser les Insights sur les enchères](<../../03-google-ads/search/Search - Analyser les Insights sur les enchères.md>) pour une analyse concurrentielle complète, ou réalisez une version rapide :

1. Extrayez les Insights sur les enchères au niveau des campagnes pour le mois écoulé
2. Comparez au mois précédent
3. Notez :
   - Votre tendance de taux d'impressions (IS) : ↑ / → / ↓
   - Tout nouveau concurrent
   - Toute disparition de concurrent
   - La corrélation de la tendance du CPC avec l'activité des concurrents

### 3.2 Données concurrentielles Merchant Center (e-commerce)

1. Consultez le rapport Compétitivité des prix dans Merchant Center
2. Notez les catégories où vous êtes compétitif sur les prix vs. celles où vous ne l'êtes pas
3. Consultez les données de Demande du marché pour les produits en tendance

---

## Phase 4️⃣: Audit des paramètres et de la structure (15 min)

### 4.1 Vérification des paramètres de campagne

Pour chaque campagne active, vérifiez :

- [ ] Le ciblage géographique n'a pas changé par rapport à ce qui était prévu
- [ ] Les paramètres de réseau sont corrects (Partenaires du Réseau de Recherche, Réseau Display)
- [ ] La rotation des annonces est réglée sur « Optimiser »
- [ ] Le ciblage linguistique est correct
- [ ] Les objectifs de conversion sont alignés sur les actions prévues

### 4.2 Revue des changements auto-appliqués

1. Ouvrez l'Historique des modifications
2. Filtrez par source : « Recommandation appliquée automatiquement » et « Système »
3. Passez en revue tous les changements automatisés du mois écoulé
4. Annulez tout changement qui entre en conflit avec votre stratégie

### 4.3 Revue des recommandations Google

1. Naviguez vers la page Recommandations
2. Passez en revue toutes les recommandations en attente
3. Ignorez les recommandations qui entrent en conflit avec la stratégie
4. Appliquez les recommandations alignées avec la stratégie
5. Vérifiez que les paramètres d'application automatique sont désactivés, conformément aux [Google Recommendations Management Guidelines](<../../03-google-ads/optimisation/Optimisation - Gérer les recommandations Google.md>)

### 4.4 Évaluation de la structure

1. Identifiez les campagnes avec moins de 30 conversions/mois
2. Évaluez les opportunités de consolidation
3. Identifiez les groupes d'annonces à faible volume d'impressions
4. Notez les changements structurels pour le plan du trimestre suivant

---

## Phase 5️⃣: Recalibrage de la baseline (10 min)

### 5.1 Évaluer les seuils actuels

Examinez les seuils de votre Status Board (vert/orange/rouge) :

| Métrique | Seuil vert actuel | Moyenne réelle | Recalibrer ? |
|--------|------------------------|----------------|--------------|
| CPA | < $__ | $__ | Oui / Non |
| ROAS | > ___% | ___% | Oui / Non |
| CVR | > ___% | ___% | Oui / Non |
| CTR | > ___% | ___% | Oui / Non |

### 5.2 Ajuster les seuils

Si la performance a constamment dépassé ou est restée sous les seuils actuels pendant 2 mois ou plus :
- Relevez la barre si vous êtes constamment au vert (ne vous contentez pas de l'acquis)
- Abaissez la barre si vous êtes constamment au rouge à cause de changements de marché (soyez réaliste)
- Documentez le changement et sa justification

### 5.3 Valider les cibles

1. Confirmez que les cibles de CPA/ROAS sont toujours alignées avec les objectifs business
2. Confirmez que les cibles de budget sont réalistes au vu du paysage concurrentiel
3. Ajustez les cibles si les conditions business ont changé

---

## Phase 6️⃣: Plan d'action (10 min)

### 6.1 Prioriser les actions

| Priorité | Action | Responsable | Échéance | Source |
|----------|--------|-------|-----|--------|
| P1 | ___ | ___ | ___ | Constat Phase __ |
| P2 | ___ | ___ | ___ | Constat Phase __ |
| P3 | ___ | ___ | ___ | Constat Phase __ |

### 6.2 Mettre à jour la contrainte et le sprint

1. Passez en revue la contrainte active actuelle pour chaque compte
2. Évaluez si la contrainte a bougé (résolue, améliorée ou stagnante)
3. Décidez : conserver la contrainte actuelle ou en sélectionner une nouvelle
4. Mettez à jour les tâches du sprint pour le mois suivant

### 6.3 Documenter la revue

```
Mensuelle Performance Review - [Month Year]
Account: [Name]
Reviewer: [Name]

PERFORMANCE SUMMARY
Overall status: 🟢🟡🔴
Trajectory: On track / Off track / At risk
Key finding: [One sentence]

TRACKING HEALTH
Discrepancy: ___% (OK / Monitor / Issue)
Conversion actions: All active / [Issues]

COMPETITIVE LANDSCAPE
IS trend: ↑ / → / ↓
Notable movements: [Summary]

SETTINGS AUDIT
Drift found: Yes / No
Auto-applied changes: [Count] reviewed, [count] reverted

BASELINE CHANGES
[Any threshold adjustments]

ACTION PLAN
P1: [Action] - [Owner] - [Due]
P2: [Action] - [Owner] - [Due]
P3: [Action] - [Owner] - [Due]

CONSTRAINT STATUS
Current: [Constraint] in [Bucket]
Status: Active / Resolved / Updated to [New constraint]
```

---

## Validation et critères de complétion

Cette SOP est terminée quand :

- [ ] Performance mois sur mois et en glissement annuel évaluée
- [ ] Intégrité du tracking vérifiée par rapport au back-end
- [ ] Paysage concurrentiel passé en revue
- [ ] Paramètres de campagne vérifiés, changements auto-appliqués passés en revue
- [ ] Baselines recalibrées si nécessaire
- [ ] Plan d'action documenté avec priorités
- [ ] Document de revue mensuelle complété

---

## Passerelle de sortie

Après la revue mensuelle :

| Délai | Action |
|-----------|--------|
| Cette semaine | Exécuter les actions P1 |
| Ce mois-ci | Exécuter les actions P2, surveiller les résultats des P1 |
| Prochaine revue mensuelle | Comparer aux constats de ce mois-ci |

**Si des problèmes importants sont détectés :**

| Problème | Rediriger vers |
|-------|----------|
| Écart de tracking >20% | Investigation du suivi des conversions |
| Pression concurrentielle croissante | Revue stratégique avec les parties prenantes |
| Performance hors trajectoire | Réévaluation du sprint de contrainte |

---

## Référence rapide : bibliothèque support

| Document | Type | Utilisé dans |
|----------|------|---------|
| [Mensuelle Performance Review Checklist](<Reporting - Revue de performance mensuelle.md>) | Checklist | Toutes les phases |
| [Reporting Mental Model](<Reporting - Reporting.md>) | Modèle mental | Phase 1 |
| [Optimization Cadence Mental Model](<../../03-google-ads/strategie/Strategie - Cadence d'optimisation.md>) | Modèle mental | Contexte de cadence |
| [Google Ads Metrics Reference](<../../03-google-ads/optimisation/Optimisation - Alertes et règles Google Ads.md>) | Référence | Phase 1-2 |
| [Insights sur les enchères Reference](<../../03-google-ads/search/Search - Insights sur les enchères.md>) | Référence | Phase 3 |
| [Google Recommendations Management Guidelines](<../../03-google-ads/optimisation/Optimisation - Gérer les recommandations Google.md>) | Guideline | Phase 4 |

---

## Procédures liées

| SOP | Relation |
|-----|--------------|
| [SOP - Revue de performance hebdomadaire](<Reporting - Revue de performance hebdomadaire.md>) | Amont (les revues hebdomadaires alimentent la revue mensuelle) |
| [SOP - Check quotidien de sante du compte](<../../03-google-ads/optimisation/Optimisation - Check quotidien de santé du compte.md>) | Amont (les alertes quotidiennes alimentent la revue mensuelle) |
| [SOP - Analyser les Insights sur les enchères](<../../03-google-ads/search/Search - Analyser les Insights sur les enchères.md>) | Imbriquée (analyse concurrentielle dans le cadre de la Phase 3) |
| [SOP - Gerer les recommandations Google](<../../03-google-ads/optimisation/Optimisation - Gérer les recommandations Google.md>) | Imbriquée (revue des recommandations dans le cadre de la Phase 4) |
| [SOP - Revue trimestrielle business](<Reporting - Revue business trimestrielle.md>) | Aval (la revue trimestrielle s'appuie sur 3 revues mensuelles) |

---

## Erreurs fréquentes

| Erreur | Pourquoi ça arrive | Comment l'éviter |
|---------|----------------|--------------|
| La revue mensuelle devient une répétition des revues hebdomadaires | On ne creuse pas les dimensions stratégiques | Utilisez la Mensuelle Performance Review Checklist pour garantir un périmètre plus large |
| Sauter la vérification du tracking | « Le tracking était bon le mois dernier » | Vérifiez chaque mois : la dérive du tracking est progressive |
| Ne pas mettre à jour les baselines | Les seuils deviennent obsolètes | Imposez une revue des seuils chaque mois |
| Aucune documentation | Les insights de la revue sont perdus | Utilisez le modèle de documentation à chaque fois |
| La revue prend 3 heures ou plus | Tenter de tout couvrir | Limitez à 90 minutes, priorisez les problèmes principaux |

---

## Détails de version

- **Changelog :** v2.0 : Ajout de la référence croisée trimestrielle vers la SOP QBR publiée, ajoutée à la table des SOP liées

