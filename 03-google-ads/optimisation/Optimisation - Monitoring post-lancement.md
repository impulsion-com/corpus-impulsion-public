# Monitoring post-lancement

> **Plateforme :** Google Ads
> **Catégorie :** Optimisation
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Documente la cadence de monitoring post-lancement, les règles de période d'apprentissage et les points de vérification pour tous les types de campagnes Google Ads. Cette fiche fournit une source unique de vérité sur quoi surveiller, quand vérifier et quoi éviter pendant la période d'apprentissage.

---

## Ce que couvre cette fiche / Ce qu'elle ne couvre PAS

**Cette fiche :**

- Documente les périodes d'apprentissage par type de campagne
- Spécifie ce qu'il ne faut PAS changer pendant l'apprentissage
- Fournit la cadence de monitoring et les points de vérification
- Explique les signaux d'alerte vs. la volatilité normale d'apprentissage

**Cette fiche ne couvre PAS :**

- Fournir des stratégies d'optimisation (Voir : SOP d'optimisation)
- Couvrir la création ou la configuration de campagnes (Voir : SOP de lancement de campagne)
- Expliquer la sélection de stratégie d'enchères (Voir : [Bidding Strategy Mental Model](<../encheres/Enchères - Stratégie d'enchères.md>))

---

## Aide-mémoire : périodes d'apprentissage par type de campagne

| Type de campagne | Période d'apprentissage | Période d'évaluation minimum |
|--------------|-----------------|---------------------------|
| **Search** | 7-14 jours | 14 jours |
| **Shopping (Standard)** | 1-2 semaines | 14-30 jours |
| **PMax** | 2-4 semaines | 30 jours |
| **Display** | 2-4 semaines | 30 jours |
| **Vidéo** | 2-4 semaines | 30 jours |
| **Demand Gen** | 2-4 semaines | 30 jours |

> 💡 **Période d'apprentissage ≠ Période d'évaluation :** L'apprentissage est quand l'algorithme se calibre. L'évaluation nécessite des données stables au-delà de l'apprentissage.

---

## Ce qu'il NE FAUT PAS changer pendant l'apprentissage

Ces changements réinitialisent la période d'apprentissage et doivent être évités :

| Changement | Impact | Attendre jusqu'à |
|--------|--------|------------|
| **Changements de cible d'enchères** (CPA, ROAS) | Réinitialise l'apprentissage | Après la période d'apprentissage + performance stable |
| **Changements de budget >20%** | Les changements significatifs réinitialisent l'apprentissage | Les augmentations progressives (10-20%) sont plus sûres |
| **Restructuration de campagne** | Réinitialise entièrement l'apprentissage | Après 30+ jours de données stables |
| **Mise en pause et réactivation** | Perturbe les signaux d'apprentissage | Uniquement pour les problèmes critiques |
| **Ajout/suppression d'actions de conversion** | Change ce que l'algorithme optimise | Avant le lancement ou après l'évaluation |
| **Changements d'audience significatifs** | Réinitialise les signaux de ciblage | Après la période d'apprentissage |

---

## Ce qui est OK pendant l'apprentissage

Ces changements ne perturbent pas significativement l'apprentissage :

| Action | Pourquoi c'est sûr |
|--------|--------------|
| **Ajouter des mots-clés à exclure** | Affine le ciblage sans changer les signaux d'enchères |
| **Corriger des annonces refusées** | Nécessaire pour la santé de la campagne |
| **Ajouter de nouvelles annonces/assets** | Étend les options sans perturber l'apprentissage existant |
| **Petites augmentations de budget (<20%)** | Le scaling progressif est acceptable |
| **Exclusions d'emplacements** (Display/Vidéo) | Contrôle qualité sans perturber l'apprentissage d'audience |
| **Affinement des termes de recherche** | Améliore la pertinence |

---

## Cadence de monitoring par période

### Premières 24-48 heures

| Vérification | Quoi chercher | Action si problème |
|-------|-----------------|-----------------|
| Statut de la campagne | "Éligible" (pas "Limitée" ou "Refusée") | Résoudre le facteur limitant |
| Impressions | S'accumulent (pas zéro) | Vérifier budget, keywords, statut des annonces |
| Approbation des annonces | Toutes les annonces approuvées | Résoudre les violations de politique |
| Suivi des conversions | Tags qui se déclenchent (vérifier en temps réel dans GA4) | Vérifier la configuration des tags |
| Pacing du budget | Dépense comme prévu | Vérifier stratégie d'enchères, conflits de budget |

### Jours 2-7

| Vérification | Fréquence | Focus |
|-------|-----------|-------|
| Impressions/Clics | Quotidien | Tendance (croissance, stable, déclin) |
| CTR | Quotidien | Dans la plage attendue |
| Termes de recherche (Search/Shopping) | Quotidien | Ajouter des négatifs pour les requêtes non pertinentes |
| Pacing du budget | Quotidien | Atteint le budget quotidien ? |
| Statut des annonces | Quotidien | Nouveaux refus ? |

### Semaine 1-2

| Vérification | Fréquence | Focus |
|-------|-----------|-------|
| Tendances de performance | Tous les deux jours | Stabilisation vs. volatilité |
| Statut d'apprentissage | Tous les deux jours | "Apprentissage" vs. "Apprentissage limité" |
| Volume de conversions | Tous les deux jours | Atteint les attentes de seuil |
| Qualité des termes de recherche | 2-3x par semaine | Affinement continu |

### Semaine 2-4

| Vérification | Fréquence | Focus |
|-------|-----------|-------|
| Statut de la stratégie d'enchères | 2-3x par semaine | Devrait sortir de l'apprentissage |
| Stabilisation de la performance | 2-3x par semaine | Moins de volatilité jour après jour |
| Qualité des conversions | Hebdomadaire | Pas seulement le volume, mais la qualité |
| Mix de canaux (PMax/Display/Vidéo) | Hebdomadaire | Distribution des emplacements |

### Semaine 4+

| Vérification | Fréquence | Focus |
|-------|-----------|-------|
| Revue de performance complète | Hebdomadaire | Par rapport aux objectifs de KPI |
| Opportunités d'optimisation | Hebdomadaire | Prêt pour les premiers ajustements |
| Potentiel de scaling | Bi-hebdomadaire | Le budget peut-il augmenter ? |

---

## Métriques clés par type de campagne

### Campagnes Search

| Métrique | Plage saine | Signal d'alerte |
|--------|---------------|----------|
| CTR | 2-8% (varie selon l'intention) | <1% soutenu |
| Part d'impressions Search | Varie selon les objectifs | <30% sans contrainte de budget |
| CPC moyen | Dans la plage cible | >3x attendu |
| Niveau de qualité | 7+ pour la marque, 5+ pour le non-marque | <4 soutenu |
| Taux de conversion | Varie selon le secteur | Déclin >50% par rapport à la baseline |

### Campagnes Shopping

| Métrique | Plage saine | Signal d'alerte |
|--------|---------------|----------|
| CTR | 0,5-2% | <0,3% soutenu |
| Part d'impressions | Varie selon la concurrence | <20% sans contrainte de budget |
| ROAS | Atteint l'objectif | <50% de l'objectif après l'apprentissage |
| Produits diffusés | Tous les produits éligibles | >20% non diffusés |

### Campagnes PMax

| Métrique | Plage saine | Signal d'alerte |
|--------|---------------|----------|
| Conversions/semaine | Atteint les objectifs de volume | <50% de la capacité impliquée par le budget |
| Statut d'apprentissage | "Éligible" après 2-4 semaines | "Apprentissage limité" soutenu |
| Performance des assets | Impressions équilibrées entre les assets | Plusieurs assets avec zéro impression |
| Mix de canaux | Varie selon la configuration | Dominance inattendue d'un canal |

### Campagnes Display

| Métrique | Plage saine | Signal d'alerte |
|--------|---------------|----------|
| CTR | 0,1-0,5% (remarketing plus élevé) | <0,05% soutenu |
| Taux de vue | Dépend de la plateforme | N/A |
| Taux de conversion | Plus bas que le Search | Aucune conversion après 14 jours avec des clics |
| Fréquence | 3-7 par utilisateur par semaine | >15 par utilisateur par semaine |

### Campagnes Vidéo

| Métrique | Plage saine | Signal d'alerte |
|--------|---------------|----------|
| Taux de vue | 15-30% (skippable) | <10% soutenu |
| CPV | Dans la cible d'enchère | >2x cible |
| Temps de visionnage | Benchmarks (analyses comparatives) plateforme | <25% de complétion (non-skippable) |
| Fréquence | 2-5 par utilisateur par semaine | >10 par utilisateur par semaine |

### Campagnes Demand Gen

| Métrique | Plage saine | Signal d'alerte |
|--------|---------------|----------|
| Conversions | Atteint les objectifs de volume | <30/mois par ad group |
| CPA | Dans la cible | >2x cible après l'apprentissage |
| CTR | 0,5-2% (varie selon l'emplacement) | <0,2% soutenu |
| Performance des assets | Impressions équilibrées entre les assets | Plusieurs assets avec zéro impression |

---

## Signaux d'alerte vs. volatilité normale d'apprentissage

### Volatilité normale d'apprentissage (pas de panique)

| Signal | Pourquoi c'est normal |
|--------|-----------------|
| Variations de CPA jour après jour de 50%+ | L'algorithme teste et se calibre |
| Faible volume dans les premières 48 heures | Temps de montée en puissance nécessaire |
| Timing incohérent des conversions | Petits échantillons |
| CPC plus élevés qu'attendu initialement | L'algorithme apprend les enchères optimales |
| Certains jours avec zéro conversion | Attendu dans les campagnes à faible volume |

### Vrais signaux d'alerte (investiguer immédiatement)

| Signal | Cause probable | Action |
|--------|-------------|--------|
| Zéro impression après 24 heures | Problème de budget, ciblage ou approbation | Vérifier le statut de campagne, budget, approbation des annonces |
| Statut d'apprentissage bloqué après 4+ semaines | Volume trop bas | Consolider les campagnes, augmenter le budget |
| Toutes les annonces refusées | Violation de politique | Revoir les politiques, corriger les annonces |
| CTR <0,1% en Search | Problème de pertinence | Revoir l'alignement annonce-keyword |
| La dépense se concentre sur les mauvais emplacements (PMax) | Mauvaise configuration des assets ou signaux | Revoir les groupes d'assets, les signaux d'audience |
| Le suivi des conversions affiche zéro | Tracking (suivi des conversions/évènements) cassé | Vérifier l'implémentation des tags |

---

## Indicateurs de statut d'apprentissage

### Statuts d'apprentissage Google Ads

| Statut | Signification | Action |
|--------|---------|--------|
| **Apprentissage** | L'algorithme se calibre | Normal, attendre |
| **Éligible** | Apprentissage terminé, en optimisation | Prêt pour l'évaluation |
| **Apprentissage limité** | Impossible d'apprendre en raison d'une contrainte | Résoudre la contrainte (budget, ciblage, volume) |
| **Limité** | Contrainte active limitant la diffusion | Traiter le facteur limitant |

### Causes courantes d'"Apprentissage limité"

| Cause | Solution |
|-------|-----|
| Budget trop bas | Augmenter le budget ou consolider les campagnes |
| Volume de conversions trop bas | Consolider, élargir le ciblage, ou utiliser une conversion plus haute dans le tunnel |
| Ciblage trop étroit | Élargir les audiences ou keywords |
| Cible d'enchères trop agressive | Assouplir temporairement la cible CPA/ROAS |

---

## Documentation post-lancement

### Ce qu'il faut enregistrer au lancement

| Champ | Objectif |
|-------|---------|
| Date de lancement | Baseline pour les calculs de timeline |
| Noms des campagnes | Identification |
| Stratégie d'enchères et cible | Baseline de performance |
| Budget quotidien | Baseline de budget |
| Résumé de la structure | Référence pour les changements futurs |
| Actions de conversion | Ce qui est optimisé |
| Paramètres initiaux | Piste d'audit |

### Jalons de revue à définir

| Jalon | Timing | Objectif |
|-----------|--------|---------|
| Vérification premier jour | Lancement + 1 jour | Vérifier la diffusion |
| Revue semaine 1 | Lancement + 7 jours | Analyse des tendances |
| Revue semaine 2 | Lancement + 14 jours | Évaluation de la période d'apprentissage |
| Revue mois 1 | Lancement + 30 jours | Évaluation complète de la performance |

> 💡 **Ajoutez-les comme rappels calendrier :** Ne comptez pas sur votre mémoire.

---

## Erreurs courantes

| Erreur | Pourquoi ça arrive | Comment éviter |
|---------|----------------|--------------|
| Changer les cibles d'enchères pendant l'apprentissage | Impatience face à la volatilité | Mettez un rappel calendrier pour la date de changement la plus tôt |
| Paniquer sur les métriques du jour 1 | Incompréhension de la volatilité d'apprentissage | Faites confiance au processus pendant 7-14 jours minimum |
| Ne pas documenter les paramètres de lancement | Pas d'urgence quand les paramètres sont frais | Documentez le jour du lancement |
| Évaluer trop tôt | Pression pour montrer des résultats | Communiquez la timeline d'apprentissage aux parties prenantes |
| Ignorer le statut "Apprentissage limité" | Supposer que ça va se résoudre | Traitez les contraintes proactivement |
| Faire plusieurs changements à la fois | Essayer de tout corriger | Un changement à la fois, attendez les données |

---

## Documents liés

| Document | Relation |
|----------|--------------|
| [Bidding Strategy Mental Model](<../encheres/Enchères - Stratégie d'enchères.md>) | Exigences de la période d'apprentissage |
| [Conversion Volume Thresholds Reference](<../suivi/Suivi - Seuils de volume de conversions.md>) | Volume minimum pour les stratégies d'enchères |
| [SOP - Lancer une campagne Search](<../search/Search - Lancer une campagne Search.md>) | Spécificités post-lancement Search |
| [SOP - Lancer une campagne PMax feed-only](<../pmax/Pmax - Lancer une campagne PMax Feed-Only.md>) | Spécificités post-lancement PMax |
