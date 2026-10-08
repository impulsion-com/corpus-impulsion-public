# Santé de la stratégie d'enchères

> **Plateforme :** Google Ads
> **Catégorie :** Enchères
> **Type :** Checklist
> **Mis à jour :** 2026-05-07

## Objectif

Valide que les stratégies d'enchères sont correctement configurées, atteignent les seuils de données, fonctionnent dans des paramètres sains et que les budgets sont suffisants pour les supporter.

---

## Ce que cette checklist valide

Cette checklist confirme :

- Les stratégies d'enchères sont correctement configurées pour les objectifs de campagne
- Les seuils de volume de conversions sont atteints
- Les périodes d'apprentissage sont respectées
- Les cibles sont validées par rapport à l'économie unitaire
- La suffisance budgétaire supporte la stratégie d'enchères
- Les plafonds de CPC (si utilisés) ne limitent pas silencieusement la performance

Cette checklist ne couvre **PAS** :

- La sélection de la stratégie d'enchères à votre place (Voir : [Bid Strategy Selection Reference](<Enchères - Sélection de stratégie d'enchères.md>))
- Le calcul des cibles d'enchères (Voir : [Bid Targets Reference](<Enchères - Cibles d'enchères.md>))
- Les instructions de configuration pas à pas (Voir : [SOP - Configurer les encheres basees sur les conversions](<../suivi/Suivi - Configurer le suivi des conversions Google Ads.md>))

---

## Quand l'utiliser

Exécuter cette checklist :

- Après la mise en place d'une nouvelle stratégie d'enchères (au niveau campagne ou portefeuille)
- Lors des audits mensuels du compte
- Quand la performance est en déclin ou volatile
- Après des modifications majeures de campagne (budget, ciblage, actions de conversion)
- Lors de l'onboarding d'un nouveau compte

---

## Checklist

### Configuration de la stratégie

- [ ] La stratégie d'enchères correspond à l'objectif d'optimisation de la campagne (conversions vs. valeur de conversion)
- [ ] Le CPA/ROAS/POAS cible est défini sur la base du seuil de rentabilité calculé et du ratio profit/acquisition, pas au hasard
- [ ] Les objectifs spécifiques à la campagne pointent vers la/les bonne(s) action(s) de conversion
- [ ] L'action de conversion principale est l'action la plus basse dans le tunnel avec un volume suffisant
- [ ] Aucune action de conversion conflictuelle n'est définie comme principale (ex. pages vues en même temps que les achats)

### Volume de conversions

- [ ] La campagne ou le portefeuille a 50+ conversions sur les 30 derniers jours (seuil recommandé)
- [ ] La campagne ou le portefeuille a au moins 15 conversions sur les 30 derniers jours (minimum absolu)
- [ ] Si en dessous du minimum : les campagnes sont consolidées, une stratégie d'enchères de portefeuille est utilisée pour mutualiser les données, ou une stratégie de collecte de données (Max Clicks, CPC manuel) est active
- [ ] Le suivi des conversions se déclenche correctement et de manière cohérente (pas de lacunes ni de pics dans les données)

### Statut de la période d'apprentissage

- [ ] Aucune modification majeure n'a été effectuée dans les deux derniers cycles de conversion (changement de stratégie, modification de cible > 25%, changement de budget > 30%)
- [ ] Si en apprentissage : aucune autre modification n'est prévue jusqu'à la fin de l'apprentissage
- [ ] Les parties prenantes ont été informées de la volatilité attendue pendant l'apprentissage
- [ ] Les données de la période d'apprentissage sont exclues des évaluations de performance

### Validation des cibles

- [ ] Le CPA/ROAS/POAS de seuil de rentabilité est calculé à partir de l'économie unitaire actuelle
- [ ] Le CPA/ROAS/POAS cible se situe entre le seuil de rentabilité et la zone de famine
- [ ] Le ratio profit/acquisition est entre 25-75% (en dehors de cette fourchette nécessite une justification explicite)
- [ ] Les cibles ont été validées par rapport aux objectifs de croissance via le Planificateur de performance ou le simulateur d'enchères
- [ ] Des objectifs de croissance ET d'efficacité existent (pas seulement l'un ou l'autre)

### Suffisance budgétaire

- [ ] Le budget quotidien est au moins 10x le CPA cible (pour les stratégies basées sur les conversions)
- [ ] Le budget quotidien autorise la limite de dépenses quotidienne (2x le budget quotidien) sans alarme des parties prenantes
- [ ] Le taux d'impressions perdues Search (budget) est surveillé : s'il est élevé, le budget doit peut-être être augmenté
- [ ] Si utilisation de budgets partagés : aucune campagne ne consomme l'ensemble du pool de manière disproportionnée

### Configuration de la stratégie d'enchères de portefeuille (si applicable)

- [ ] Toutes les campagnes liées partagent le même objectif d'efficacité
- [ ] Toutes les campagnes liées sont du même type (Search avec Search, Shopping avec Shopping)
- [ ] Le plafond de CPC maximum est DÉSACTIVÉ sauf si explicitement justifié avec un raisonnement documenté
- [ ] Si un plafond de CPC est défini : il est au moins 3x le CPC moyen des termes de recherche les plus convertissants
- [ ] Si un plafond de CPC est défini : un rappel de revue mensuelle existe pour éviter les plafonds oubliés
- [ ] Le plafond de CPC minimum est DÉSACTIVÉ (pas de cas d'usage justifié dans les comptes standards)

### Ajustements d'enchères

- [ ] Aucun ajustement d'enchères non-exclusion n'est défini sur les campagnes en Stratégies d'enchères intelligentes (ils sont ignorés)
- [ ] Les ajustements d'enchères par appareil sont uniquement des exclusions -100% (le seul type qui fonctionne)
- [ ] Les ajustements de localisation, programmation, audience et données démographiques sont supprimés ou à 0% sur les campagnes en stratégie automatisée

### Règles de valeur de conversion (si applicable)

- [ ] Les règles ne sont appliquées qu'aux campagnes utilisant Maximiser la valeur de conversion ou ROAS cible
- [ ] Les règles corrigent des différences de valeur qui ne peuvent pas être capturées par le suivi des conversions
- [ ] Les règles ne se substituent pas à un suivi des conversions cassé ou incomplet

---

## Tableau de dépannage

| Symptôme | Cause probable | Vérification diagnostique | Résolution |
|---------|-------------|-----------------|-----------|
| CPA en hausse constante au-dessus de la cible | Volume de conversions insuffisant, ou cible en dessous du niveau soutenable | Vérifier le nombre de conversions sur 30 jours, comparer la cible au seuil de rentabilité | Augmenter la cible par incréments de 10-15%, ou utiliser un portefeuille pour mutualiser les données |
| ROAS en baisse constante sous la cible | La cible est peut-être trop agressive, ou problème de suivi de la valeur de conversion | Vérifier la précision de la valeur de conversion, consulter le simulateur d'enchères pour une fourchette soutenable | Baisser la cible ROAS par incréments de 10-15%, auditer le suivi des conversions |
| Volume en déclin semaine après semaine | La cible est peut-être trop agressive (zone de famine) | Vérifier le taux d'impressions perdues au classement, comparer la cible au seuil de rentabilité | Augmenter la cible CPA ou baisser la cible ROAS, vérifier la famine |
| Taux d'impressions perdues élevé au budget | Budget insuffisant pour les cibles actuelles | Comparer les dépenses quotidiennes au budget quotidien | Augmenter le budget, ou resserrer les cibles pour réduire le coût par clic |
| Taux d'impressions perdues élevé au classement | Enchères pas assez compétitives | Vérifier les tendances CPC vs. la concurrence, insights d'enchères | Vérifier si le plafond CPC restreint, ou augmenter la cible CPA/baisser la cible ROAS |
| Performance volatile après des changements | Encore en période d'apprentissage | Vérifier la date du dernier changement vs. la période d'apprentissage (deux cycles de conversion) | Attendre la fin de l'apprentissage, ne pas faire de modifications supplémentaires |
| CPC des meilleurs mots-clés plafonnent au plafond CPC exact | Le plafond de CPC maximum restreint | Comparer le plafond aux CPC des termes les plus convertissants | Augmenter le plafond à 3x la moyenne des meilleurs termes, ou supprimer |
| Conversions non enregistrées | Problème de suivi des conversions | Vérifier le statut de l'action de conversion, déclenchement du tag | Corriger le tracking (suivi des conversions) — ce n'est pas un problème d'enchères |
| Stratégies d'enchères intelligentes sous-performe le CPC manuel | Données insuffisantes pour le Stratégies d'enchères intelligentes | Vérifier le nombre de conversions sur 30 jours | Construire d'abord les données : rester en CPC manuel ou Max Clicks jusqu'à 50+ conversions |

---

## Référence rapide

| Document | Relation |
|----------|-------------|
| [Bid Strategy Selection Reference](<Enchères - Sélection de stratégie d'enchères.md>) | Arbres de décision pour la sélection des stratégies |
| [Stratégies d'enchères intelligentes Mechanics Reference](<Enchères - Mécanismes des stratégies d'enchères intelligentes.md>) | Comment fonctionne le Stratégies d'enchères intelligentes, périodes d'apprentissage, signaux |
| [Bid Targets Reference](<Enchères - Cibles d'enchères.md>) | Calcul du seuil de rentabilité et des cibles |
| [Bidding Configuration Guidelines](<Enchères - Configuration des enchères.md>) | Recommandations de configuration par défaut |
| [Bid Simulator Reference](<Enchères - Simulateur d'enchères.md>) | Utilisation des simulateurs pour la validation des cibles |
| [Budget Pacing Reference](<Enchères - Rythme de dépense.md>) | Mécaniques et monitoring du budget |
| [Conversion Volume Thresholds Reference](<../suivi/Suivi - Seuils de volume de conversions.md>) | Seuils de données requis |
| [SOP - Configurer les encheres basees sur les conversions](<../suivi/Suivi - Configurer le suivi des conversions Google Ads.md>) | Utilise cette checklist pour la validation |
| [SOP - Configurer les encheres basees sur la valeur](<Enchères - Configurer les enchères basées sur la valeur.md>) | Utilise cette checklist pour la validation |
