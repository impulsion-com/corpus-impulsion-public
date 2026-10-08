# Scaler enchères et budgets

> **Plateforme :** Google Ads
> **Catégorie :** Enchères
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Phase 1️⃣: Diagnostiquer la position actuelle

### 1.1 Documenter la performance actuelle

Relevez, pour la campagne ou le portefeuille que vous voulez scaler (4 dernières semaines, hors délai de conversion) :

| Métrique | Valeur actuelle |
|--------|--------------|
| CPA ou ROAS ou POAS (réel) | |
| CPA ou ROAS ou POAS cible | |
| CPA ou ROAS ou POAS de rentabilité | |
| Conversions (30 derniers jours) | |
| Valeur de conversion (30 derniers jours) | |
| Coût (30 derniers jours) | |
| Profit net (valeur de conversion moins coût) | |
| Taux d'impressions perdu (rang) (%) | |
| Taux d'impressions perdu (budget) (%) | |

### 1.2 Calculer le PAR actuel

Le ratio Profit-to-Acquisition indique quelle part de votre profit vous réinvestissez dans l'acquisition :

**Pour les campagnes basées sur le CPA :**
PAR = 1 - (CPA cible / CPA de rentabilité)

**Pour les campagnes basées sur le ROAS :**
PAR = 1 - (ROAS de rentabilité / ROAS cible)

**Pour les campagnes basées sur le POAS :**
PAR = 1 - (100% / POAS cible)

| Entrée | Valeur |
|-------|-------|
| PAR actuel | |

### 1.3 Identifier votre zone

| Plage PAR | Zone | Signification | Action |
|-----------|------|---------|--------|
| 75-100% | Proche de la rentabilité | Croissance maximale, profit minimal | Envisager de resserrer les cibles pour plus de profit |
| 50-75% | Équilibré | Bon équilibre entre croissance et efficacité | Rechercher le profit optimum |
| 25-50% | Conservateur | Forte efficacité, croissance potentielle laissée de côté | Envisager de relâcher les cibles pour plus de volume |
| 0-25% | Zone de famine | Sur-optimisation de l'efficacité, volume qui s'assèche | Relâcher les cibles immédiatement |

### 1.4 Déterminer la direction de scaling

| Situation | Direction de scaling |
|-----------|------------------|
| Objectif de croissance non atteint, PAR sous 50% | Relâcher les cibles (baisser ROAS/POAS, augmenter CPA) |
| Objectif de croissance non atteint, PAR au-dessus de 50% | Augmenter d'abord le budget, puis relâcher les cibles si nécessaire |
| Objectif de croissance atteint, plus de profit souhaité | Resserrer les cibles (augmenter ROAS/POAS, baisser CPA) |
| Objectif de croissance atteint, plus de volume souhaité | Relâcher les cibles vers le profit optimum |
| Limité par le budget (taux d'impressions perdu (budget) élevé) | Augmenter le budget avant de changer les cibles |

---

## Phase 2️⃣: Modéliser les scénarios

### 2.1 Extraire les données du simulateur d'enchères

1. Ouvrez le rapport de stratégie d'enchères de votre campagne ou portefeuille
2. Naviguez vers la section simulateur d'enchères
3. Notez 5-7 scénarios à différents niveaux de cible, de votre cible actuelle jusqu'à proche de la rentabilité

Notez les scénarios :

| Niveau de cible | Conversions est. | Valeur de conversion est. | Coût est. | Profit net (valeur moins coût) |
|-------------|-----------------|----------------------|-----------|------------------------------|
| (Actuel) | | | | |
| | | | | |
| | | | | |
| | | | | |
| | | | | |

### 2.2 Lancer Performance Planner (optionnel, pour le scaling budget)

Si le scaling implique des augmentations de budget :

1. Ouvrez Outils > Planification > Performance Planner
2. Sélectionnez les campagnes à modéliser
3. Définissez la période à venir (mois ou trimestre suivant)
4. Modélisez différents niveaux de budget
5. Notez les conversions et le coût projetés à chaque niveau

### 2.3 Identifier l'optimum de profit

1. Exportez vos scénarios dans un tableur
2. Pour chaque ligne, calculez : Profit net = Valeur de conversion estimée moins Coût estimé
3. Tracez la courbe de profit net (cible en abscisse, profit net en ordonnée)
4. Identifiez le pic : le niveau de cible où le profit net est le plus élevé

> 💡 **Le profit optimum est rarement à l'un des extrêmes :** Trop agressif (proche de la rentabilité) gaspille du profit sur des rendements décroissants. Trop conservateur (zone de famine) laisse de la croissance de côté. Le pic est au milieu.

### 2.4 Appliquer une décote aux projections

Le simulateur d'enchères et le Performance Planner supposent des conditions stables. Appliquez ces ajustements :

| Facteur | Ajustement |
|--------|-----------|
| Les prévisions supposent des conditions parfaites | Appliquez une décote de 10-20% aux scénarios agressifs |
| Les courbes lisses surestiment la croissance linéaire | Attendez-vous à des rendements décroissants plus marqués en pratique |
| Les changements de concurrence ne sont pas modélisés | Intégrez les évolutions concurrentielles connues |
| L'usure des annonces n'est pas modélisée | Surveillez les tendances du CTR et du taux de conversion pendant le scaling |

### 2.5 Documenter votre plan de scaling

| Champ | Valeur |
|-------|-------|
| Cible actuelle | |
| Nouvelle cible proposée | |
| Cible du profit optimum (depuis le simulateur) | |
| Budget quotidien actuel | |
| Nouveau budget quotidien proposé (si changement) | |
| Impact attendu sur les conversions | |
| Impact attendu sur le profit net | |
| Méthode de validation (expérience ou direct) | |

---

## Phase 3️⃣: Exécuter les modifications de scaling

### 3.1 Choisir la méthode d'exécution

| Méthode | Quand l'utiliser | Niveau de risque |
|--------|-------------|-----------|
| **Expérience de campagne (50/50)** | Campagnes à enjeux élevés, changements de budget importants (>25%), une partie prenante exige une preuve | Très faible |
| **Ajustement incrémental** | Changements modérés, campagnes stables, direction éprouvée | Faible |
| **Bascule directe** | Petits ajustements (<10-15%), campagnes à faibles enjeux | Faible |

### 3.2 Méthode de l'expérience de campagne

1. Allez dans la campagne > Expériences
2. Créez une nouvelle expérience
3. Définissez la variable de l'expérience : la cible d'enchères uniquement (ou cible d'enchères + budget)
4. Réglez la cible de l'expérience sur votre nouvelle cible proposée
5. Réglez la répartition du trafic sur 50/50
6. Réglez la durée sur 30 jours ou plus
7. Lancez l'expérience
8. Ne faites aucun autre changement sur l'un ou l'autre des bras pendant l'expérience

### 3.3 Méthode de l'ajustement incrémental

Pour les changements de cible :

1. Ajustez la cible de 10-15% vers votre niveau proposé
2. Attendez un cycle de conversion complet (consultez le rapport de stratégie d'enchères pour le délai de conversion moyen)
3. Évaluez la performance
4. Si la performance est acceptable, faites un nouvel ajustement de 10-15%
5. Répétez jusqu'à atteindre la cible proposée

Pour les changements de budget :

1. Augmentez le budget quotidien de 15-20%
2. Attendez deux cycles de conversion pour que l'algorithme s'ajuste (Voir : [Stratégies d'enchères intelligentes Mechanics Reference](<Enchères - Mécanismes des stratégies d'enchères intelligentes.md>))
3. Évaluez le rythme de dépense et la performance
4. Si le taux d'impressions perdu (budget) est toujours élevé et la performance acceptable, augmentez à nouveau
5. Répétez jusqu'à atteindre le budget proposé

> ⚠️ **Les augmentations de budget de plus de 30% en un seul changement peuvent déclencher une nouvelle période d'apprentissage :** Gardez les ajustements de budget individuels sous 30% et espacez-les de 1 à 2 semaines.

### 3.4 Méthode de la bascule directe

1. Changez la cible pour le niveau proposé
2. Si vous changez aussi le budget : mettez à jour le budget quotidien
3. Surveillez de près pendant la période d'apprentissage (deux cycles de conversion)

---

## Phase 4️⃣: Évaluer et itérer

### 4.1 Évaluer les résultats

Une fois l'expérience terminée (30 jours ou plus) ou les ajustements incrémentaux stabilisés :

1. Extrayez les données de performance en excluant la période d'apprentissage et le délai de conversion
2. Comparez à la référence de la Phase 1

| Métrique | Avant | Après | Évolution |
|--------|--------|-------|--------|
| CPA/ROAS/POAS | | | |
| Conversions | | | |
| Valeur de conversion | | | |
| Coût | | | |
| Profit net | | | |
| Taux d'impressions perdu (rang) | | | |
| Taux d'impressions perdu (budget) | | | |

### 4.2 Matrice de décision

| Résultat | Étape suivante |
|--------|----------|
| Profit net augmenté, objectif de croissance atteint | Appliquer l'expérience (le cas échéant), documenter la nouvelle référence |
| Profit net augmenté, objectif de croissance pas encore atteint | Continuer le scaling dans la même direction (à nouveau Phases 2-3) |
| Profit net diminué mais volume augmenté | Évaluer si le gain de volume justifie la perte de profit au regard des objectifs de croissance |
| Profit net diminué et volume inchangé | Revenir en arrière, enquêter sur la cause racine |
| Budget toujours limité après augmentation | Augmenter à nouveau le budget (répéter la Phase 3) |

### 4.3 Pour les expériences de campagne

Après 30 jours ou plus avec une signification statistique supérieure à 80% :

1. Utilisez la valeur de conversion (pour les stratégies basées sur la valeur) ou les conversions (pour les stratégies de volume) comme métrique de comparaison principale
2. Utilisez le profit net comme métrique secondaire
3. Excluez la période d'apprentissage (les deux premiers cycles de conversion) et le délai de conversion de l'analyse
4. Si l'expérience gagne : appliquez l'expérience
5. Si l'original gagne : terminez l'expérience, conservez l'original

### 4.4 Définir la prochaine itération

Le scaling est itératif. Après chaque ajustement :

| Vérification | Action |
|-------|--------|
| Êtes-vous au profit optimum ? | Si oui, maintenez les cibles actuelles et surveillez |
| Reste-t-il de la marge pour scaler ? | Si oui, revenez à la Phase 1 avec la nouvelle référence |
| Les objectifs de croissance ont-ils changé ? | Si oui, recalculez les cibles et recommencez |
| Le marché a-t-il évolué ? | Si oui, relancez le simulateur d'enchères pour des projections actualisées |

---

### Validation et critères de complétion

Cette SOP est terminée quand :

- [ ] Position actuelle diagnostiquée (PAR calculé, zone identifiée)
- [ ] Scénarios du simulateur d'enchères ou du Performance Planner documentés
- [ ] Profit optimum identifié (ou position actuelle confirmée comme optimale)
- [ ] Modifications de scaling exécutées (expérience ou ajustements incrémentaux)
- [ ] Résultats évalués après une collecte de données suffisante
- [ ] Décision prise : appliquer, itérer davantage ou revenir en arrière
- [ ] Nouvelle référence documentée pour le cycle suivant

---

### Passerelle de sortie

Une fois les modifications de scaling validées :

| Délai | Action |
|-----------|--------|
| Après chaque cycle de scaling | Documenter la nouvelle référence, mettre à jour le PAR |
| Mensuelle | Relancer le simulateur d'enchères pour vérifier si le profit optimum a évolué |
| Trimestrielle | Recalcul complet : recalculer le seuil de rentabilité, revalider les cibles, réexécuter cette SOP |
| Quand les unit economics changent | Recalculer les cibles via [SOP - Calculer les objectifs d'encheres](<Enchères - Calculer les objectifs d'enchères.md>) |

**En cas de problème :**

| Problème | Rediriger vers |
|-------|----------|
| La performance se dégrade après le scaling | Tableau de dépannage de [Bid Strategy Health Checklist](<Enchères - [Review] Santé de la stratégie d'enchères.md>) |
| Impossible de scaler davantage (rendements décroissants) | Améliorer les métriques en amont (taux de conversion, landing page, offre) |
| Les unit economics ne supportent plus les cibles | [SOP - Calculer les objectifs d'encheres](<Enchères - Calculer les objectifs d'enchères.md>) pour recalculer |
| L'allocation du budget doit être repensée | [SOP - Repartir le budget entre les campagnes](<Enchères - Répartir le budget entre les campagnes.md>) |

---

### FAQ

**Q : Dois-je scaler les cibles ou les budgets en premier ?**

R : Si le taux d'impressions perdu (budget) dépasse 15%, augmentez d'abord le budget car vous laissez du volume de côté à vos cibles actuelles. Si le taux d'impressions perdu (budget) est faible, ajustez les cibles pour trouver le profit optimum.

**Q : De combien puis-je changer une cible d'un coup ?**

R : Limitez les ajustements de cible à 10-15% par changement. Des sauts plus importants déclenchent des périodes d'apprentissage prolongées et rendent plus difficile l'isolement de l'impact. Pour des changements significatifs (>25%), utilisez plutôt une expérience de campagne.

**Q : Comment savoir si je suis dans la zone de famine ?**

R : Calculez votre PAR (Phase 1.2). S'il est sous 25%, vous êtes dans la zone de famine. Voir [Bid Scaling Mental Model](<Enchères - Scaling des enchères.md>) pour la méthode complète des zones et les signaux de diagnostic.

**Q : Puis-je automatiser l'analyse du profit optimum ?**

R : Pour les grands comptes, utilisez l'API Google Ads pour extraire les données du simulateur d'enchères chaque semaine, calculer automatiquement le profit optimum par campagne, et générer un tableur comparant la cible actuelle à l'optimum suggéré. Vérifiez et appliquez les changements via des expériences de campagne.

---

### Référence rapide : bibliothèque support

| Document | Type | Utilisé dans |
|----------|------|---------|
| [Bid Scaling Mental Model](<Enchères - Scaling des enchères.md>) | Modèle mental | Phase 1 (zones, curseur PAR) |
| [Bid Simulator Reference](<Enchères - Simulateur d'enchères.md>) | Référence | Phase 2 (utilisation du simulateur, méthode du profit optimum) |
| [Bid Targets Reference](<Enchères - Cibles d'enchères.md>) | Référence | Phase 1 (seuil de rentabilité, calcul du PAR) |
| [Stratégies d'enchères intelligentes Mechanics Reference](<Enchères - Mécanismes des stratégies d'enchères intelligentes.md>) | Référence | Phase 3 (période d'apprentissage après changements) |
| [Bid Strategy Health Checklist](<Enchères - [Review] Santé de la stratégie d'enchères.md>) | Checklist | Phase 4 (dépannage) |

---

### Procédures liées

| SOP | Relation |
|-----|-------------|
| [SOP - Calculer les objectifs d'encheres](<Enchères - Calculer les objectifs d'enchères.md>) | Amont (fournit les calculs de seuil de rentabilité et de cibles) |
| [SOP - Repartir le budget entre les campagnes](<Enchères - Répartir le budget entre les campagnes.md>) | Amont (fournit l'allocation budgétaire initiale) |
| [SOP - Selectionner une strategie d'encheres](<Enchères - Sélectionner une stratégie d'enchères.md>) | Amont (détermine la stratégie d'enchères avant le scaling) |
| [SOP - Configurer les encheres basees sur les conversions](<../suivi/Suivi - Configurer le suivi des conversions Google Ads.md>) | Lié (les ajustements de cible renvoient à cette SOP) |
| [SOP - Configurer les encheres basees sur la valeur](<Enchères - Configurer les enchères basées sur la valeur.md>) | Lié (les ajustements de cible ROAS/POAS renvoient à cette SOP) |
| [SOP - Migrer des encheres manuelles vers Stratégies d'enchères intelligentes](<Enchères - Migrer des enchères manuelles vers les stratégies d'enchères intelligentes.md>) | Lié (scaling post-migration) |

---

### Erreurs fréquentes

| Erreur | Pourquoi ça arrive | Comment l'éviter |
|---------|----------------|--------------|
| Scaler les cibles sans données de simulateur | Deviner au lieu de modéliser | Toujours extraire les scénarios du simulateur d'enchères avant de changer les cibles |
| Faire de grands sauts de cible (>25%) | Impatience, objectifs de croissance agressifs | Utiliser des incréments de 10-15% ou des expériences de campagne pour les grands changements |
| Ignorer les rendements décroissants | Prendre les projections du simulateur pour argent comptant | Appliquer une décote de 10-20%, tracer la courbe complète, chercher l'aplatissement |
| Scaler sans validation | Sauter les expériences, appliquer les changements directement | Utiliser des expériences de campagne pour les changements à enjeux élevés ou importants |
| Ne pas tenir compte du délai de conversion | Évaluer trop tôt avec des données incomplètes | Exclure les [délai de conversion] derniers jours de toutes les évaluations |
| Scaler le budget sans vérifier les métriques de taux d'impressions | Augmenter le budget alors que le problème est le ciblage, pas le budget | Vérifier d'abord le taux d'impressions perdu (budget), n'augmenter le budget que s'il est la contrainte |
