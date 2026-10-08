# Gérer les campagnes limitees par le budget

> **Plateforme :** Google Ads
> **Catégorie :** Enchères
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Phase 1️⃣: Diagnostiquer la contrainte

### 1.1 Documenter les métriques de baseline

Enregistrer la performance actuelle de la campagne limitée par le budget (30 derniers jours) :

| Métrique | Valeur actuelle |
|--------|--------------|
| Budget quotidien | |
| IS Lost (Budget) % | |
| IS Lost (Rank) % | |
| CPA ou ROAS (réel vs. cible) | |
| Conversions | |
| Budget quotidien recommandé (Google Ads) | |

### 1.2 Identifier le type de contrainte

| Si... | Alors la contrainte est... | Action |
|-------|--------------------------|--------|
| IS Lost (Budget) élevé, IS Lost (Rank) faible | Contrainte de budget pure | Cette SOP la résout |
| IS Lost (Budget) élevé ET IS Lost (Rank) élevé | Problème de budget + compétitivité | Si les cibles sont atteintes, augmenter d'abord le budget. Si non rentable, corriger les problèmes de rang (enchères, Niveau de qualité) avant d'augmenter le budget |
| IS Lost (Budget) faible mais le statut de campagne affiche "Limitée par le budget" | Plafond budgétaire intermittent (plafond atteint les jours à fort volume) | Examiner les tendances de rythme quotidien, envisager une légère hausse de budget |

---

## Phase 2️⃣: Approche budgétaire contrainte en 5 étapes

Dérouler ces cinq étapes dans l'ordre. Chaque étape libère du budget ou améliore l'efficacité avant d'envisager une hausse de budget.

### 2.1 Étape 1️⃣ : Se concentrer sur les zones d'intention forte, bas du tunnel

Concentrer le budget existant là où la probabilité de conversion est la plus forte. Examiner les données de performance par mot-clé, groupe d'annonces et campagne pour identifier où le budget est le mieux dépensé.

### 2.2 Étape 2️⃣ : Réduire le gaspillage

Éliminer les dépenses qui ne génèrent pas de conversions. Exécuter les workflows de termes de recherche et d'analyse N-gram pour identifier et exclure le gaspillage :

- [SOP - Analyser les rapports de termes de recherche](<../search/Search - Analyser les rapports de termes de recherche.md>) pour identifier les termes non pertinents
- [SOP - Executer une analyse N-gram](<../search/Search - Exécuter une analyse N-gram.md>) pour identifier les mots-clés à exclure basés sur la performance

### 2.3 Étape 3️⃣ : Réallouer depuis les sous-performants

Trouver du budget en le prenant sur les campagnes qui ne le méritent pas :

1. Extraire un rapport de performance au niveau campagne trié par CPA (ou ROAS inversé)
2. Identifier les campagnes avec un CPA au-dessus du seuil de rentabilité ou un ROAS sous le seuil de rentabilité depuis 30+ jours
3. Réduire les budgets de ces campagnes faibles de 20-30%
4. Transférer ce budget vers la campagne limitée par le budget

> ⚠️ **Ne pas cannibaliser les campagnes Tier 1 :** Réallouer uniquement depuis des campagnes réellement sous-performantes. Prendre du budget sur une campagne rentable pour en financer une autre crée un nouveau problème.

### 2.4 Étape 4️⃣ : Ajuster les cibles progressivement

Si les étapes 1-3 ne libèrent pas assez de budget, rendre l'algorithme plus sélectif :

1. Pour les campagnes en CPA cible : réduire le CPA cible de 5-10% (force l'algorithme à n'enchérir que sur les enchères les plus efficaces)
2. Pour les campagnes en ROAS cible : augmenter le ROAS cible de 5-10% (même effet)
3. Attendre 1-2 cycles de conversion pour que chaque ajustement se stabilise
4. Évaluer : l'efficacité s'est-elle assez améliorée pour compenser la perte de volume ?

> ⚠️ **Ne pas faire de changements de cible brutaux (>20% d'un coup) :** Les grands sauts déclenchent des périodes d'apprentissage prolongées et déstabilisent la performance. Faire des ajustements de 5-10% et attendre les données.

### 2.5 Étape 5️⃣ : Protéger les meilleures campagnes

S'assurer que votre campagne la plus performante n'est pas celle qu'on affame :

1. Classer toutes les campagnes selon votre métrique d'objectif principale (conversions, revenu ou profit selon ce qui est suivi)
2. Si la campagne limitée par le budget est votre campagne n°1 : elle est prioritaire sur tout le reste, augmenter immédiatement
3. Si elle est de niveau intermédiaire : appliquer d'abord les étapes 1-4, n'augmenter le budget que si ces étapes sont insuffisantes
4. Si plusieurs campagnes sont limitées par le budget : prioriser celle avec les meilleures métriques d'efficacité

---

## Phase 3️⃣: Escalade pour budget faible

Si la campagne a un budget très faible et que les étapes 1-5 sont insuffisantes, appliquer le protocole d'escalade pour budget faible.

### 3.1 Identifier les zones à resserrer

1. Identifier quels mots-clés peuvent être mis en pause (faible intention, types de correspondance qui ne convertissent pas)
2. Identifier les groupes d'annonces les plus performants et envisager de se restreindre à ceux-ci uniquement
3. Identifier les zones géographiques les plus performantes et envisager de resserrer le ciblage géographique
4. Examiner le rapport des landing pages et identifier les groupes d'annonces qui envoient du trafic vers des pages sous-performantes

### 3.2 Décider : persister ou restructurer

Après 30 jours d'escalade en budget faible, utiliser les métriques de comportement (micro-conversions, taux de rebond, temps sur le site) comme signaux indirects quand les données de conversion sont trop rares :

| Si... | Alors... |
|-------|---------|
| Les mots-clés en Mot-clé exact convertissent | Réintroduire progressivement l'expression exacte, élargir la zone géographique |
| Les signaux de comportement sont forts mais les conversions faibles | Problème de suivi des conversions ou cycle de vente long : investiguer |
| Pas de conversions et signaux de comportement faibles | Le ciblage de la campagne est fondamentalement mauvais : restructurer ou mettre en pause |
| Le budget est simplement trop petit pour le vertical | Envisager de restructurer ou consolider les campagnes |

---

## Phase 4️⃣ : Valider

Surveiller pendant 2 semaines après avoir effectué tout changement des Phases 2-3. Comparer à la baseline de la Phase 1.

| Résultat | Prochaine étape |
|--------|-----------|
| IS Lost (Budget) sous 10% ET efficacité maintenue | Succès. Documenter la nouvelle baseline, reprendre la surveillance normale |
| IS Lost (Budget) réduit ET efficacité améliorée | Franc succès. Envisager le scaling via [SOP - Scaler encheres et budgets](<Enchères - Scaler les enchères et budgets.md>) |
| IS Lost (Budget) réduit MAIS volume en forte baisse | Trop resserré. Assouplir les restrictions de la Phase 2 (réintroduire les mots-clés en pause, élargir le ciblage) |
| IS Lost (Budget) inchangé | Les étapes n'ont pas libéré assez de budget. Une hausse de budget est désormais justifiée : demander une dépense supplémentaire à la partie prenante |

---

### Validation et critères de complétion

Cette SOP est terminée quand :

- [ ] Campagne limitée par le budget diagnostiquée (type de contrainte identifié)
- [ ] Porte de décision franchie (rentable vs. non rentable déterminé)
- [ ] Approche budgétaire contrainte en 5 étapes exécutée (toutes les étapes applicables complétées)
- [ ] Escalade budget faible appliquée (si la campagne a un budget très faible)
- [ ] Changements surveillés pendant 2 semaines
- [ ] IS Lost (Budget) réduit sous 10% ou hausse de budget justifiée demandée

---

### Passerelle de sortie

Une fois que la limitation par le budget est résolue :

| Délai | Action |
|-----------|--------|
| Hebdomadaire | Vérifier l'IS Lost (Budget) pendant les revues de performance pour repérer tôt une récurrence |
| Mensuelle | Réévaluer l'allocation des tiers de campagne, confirmer que le budget est toujours suffisant |
| Quand on scale | Démarrer [SOP - Scaler encheres et budgets](<Enchères - Scaler les enchères et budgets.md>) si la campagne est prête pour la croissance |
| Trimestrielle | Recalcul complet du budget via [SOP - Repartir le budget entre les campagnes](<Enchères - Répartir le budget entre les campagnes.md>) |

**En cas de problème :**

| Problème | Rediriger vers |
|-------|----------|
| La limitation par le budget revient après correction | Relancer cette SOP depuis la Phase 1 |
| La campagne devient non rentable après les changements | [Bid Strategy Health Checklist](<Enchères - [Review] Santé de la stratégie d'enchères.md>) pour le troubleshooting |
| Besoin de scaler au-delà du budget actuel | [SOP - Scaler encheres et budgets](<Enchères - Scaler les enchères et budgets.md>) |
| Réallocation de budget nécessaire sur tout le compte | [SOP - Repartir le budget entre les campagnes](<Enchères - Répartir le budget entre les campagnes.md>) |

---

### FAQ

**Q : Devrais-je simplement augmenter le budget au lieu de dérouler les cinq étapes ?**

R : Si votre campagne est rentable et que le budget est flexible, oui : augmentez le budget. L'approche contrainte en 5 étapes est spécifiquement pour les situations où le budget ne peut pas être augmenté (plafond mensuel, budget client fixe, etc.).

**Q : Quel seuil d'IS Lost (Budget) doit déclencher cette SOP ?**

R : 10% sur une campagne rentable est le déclencheur. Sous 10% est normal. Au-dessus de 20% signifie qu'un volume significatif est laissé sur la table et que cette SOP doit être priorisée.

**Q : La campagne est limitée par le budget mais non rentable. Que faire ?**

R : Ne pas ajouter de budget. Passer d'abord par le parcours d'amélioration de l'efficacité : gaspillage sur les termes de recherche, Niveau de qualité, taux de conversion des landing pages. Ne revenir aux limitations de budget qu'une fois la campagne rentable.

---

### Référence rapide : bibliothèque support

| Document | Type | Utilisé dans |
|----------|------|---------|
| [Budget Pacing Reference](<Enchères - Rythme de dépense.md>) | Référence | Phase 1 (mécanismes de rythme) |
| [Bid Scaling Mental Model](<Enchères - Scaling des enchères.md>) | Modèle Mental | Porte de décision (zones PAR) |
| [Campaign Scaling Mental Model](<../strategie/Strategie - Scaling de campagne.md>) | Modèle Mental | Phase 5 (décision de scaling) |
| [Bid Strategy Health Checklist](<Enchères - [Review] Santé de la stratégie d'enchères.md>) | Checklist | Passerelle de sortie (troubleshooting) |
| [Volume vs efficiency (more/better/new)](<../../01-strategie/fondamentaux/Fondamentaux - Volume vs efficacité (More Better New).md>) | Théorie | Porte de décision (logique d'arbitrage) |

---

### Procédures liées

| SOP | Relation |
|-----|-------------|
| [SOP - Repartir le budget entre les campagnes](<Enchères - Répartir le budget entre les campagnes.md>) | Amont (fournit l'allocation de budget initiale que cette SOP ajuste) |
| [SOP - Scaler encheres et budgets](<Enchères - Scaler les enchères et budgets.md>) | Aval (scaling après résolution de la limitation par le budget) |
| [SOP - Analyser les rapports de termes de recherche](<../search/Search - Analyser les rapports de termes de recherche.md>) | Utilisé en Phase 2, Étape 2 (identification du gaspillage) |
| [SOP - Executer une analyse N-gram](<../search/Search - Exécuter une analyse N-gram.md>) | Utilisé en Phase 2, Étape 2 (identification des mots-clés à exclure basée sur la performance) |
| [SOP - Calculer les objectifs d'encheres](<Enchères - Calculer les objectifs d'enchères.md>) | Lié (les ajustements de cible s'appuient sur les calculs de seuil de rentabilité) |

---

### Erreurs fréquentes

| Erreur | Pourquoi ça arrive | Comment l'éviter |
|---------|----------------|--------------|
| Augmenter le budget sur des campagnes non rentables | Sauter la porte de décision, supposer que "limité par le budget" signifie toujours "besoin de plus de budget" | Toujours vérifier d'abord la rentabilité : les campagnes non rentables ont besoin de corrections d'efficacité, pas de plus d'argent |
| Mettre trop de mots-clés en pause d'un coup | Réduction du gaspillage trop agressive en Phase 2 | Mettre en pause par lots, surveiller 1 semaine entre chaque tour |
| Faire de gros ajustements de cible (>20%) | Impatience avec l'approche progressive | S'en tenir à des ajustements de 5-10%, attendre 1-2 cycles de conversion entre les changements |
| Ne pas surveiller après les changements | Supposer que la correction a marché sans validation | Toujours faire la période de surveillance de 2 semaines en Phase 4 |
| Cannibaliser les meilleures campagnes | Réallouer le budget des campagnes Tier 1 pour financer la correction | Réallouer uniquement depuis des campagnes sous-performantes avec un CPA au-dessus du seuil de rentabilité ou un ROAS sous le seuil de rentabilité |
