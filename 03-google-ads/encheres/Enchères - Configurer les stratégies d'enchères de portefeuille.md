# Configurer les stratégies d'enchères portefeuille

> **Plateforme :** Google Ads
> **Catégorie :** Enchères
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Phase 1️⃣ : Identifier les campagnes éligibles

### 1.1 Lister les campagnes candidates

Récupérez la liste de toutes les campagnes qui partagent le même objectif d'efficacité. Pour chaque campagne, enregistrez :

| Nom de campagne | Type de campagne | Stratégie actuelle | Conversions mensuelles | CPA/ROAS moyen actuel | CPC moyen (top termes) |
|---------------|---------------|-----------------|--------------------|-----------------------|---------------------|
| | | | | | |
| | | | | | |
| | | | | | |

### 1.2 Valider l'éligibilité

Pour chaque campagne de la liste, confirmez :

1. **Le type de campagne est supporté :** Search, Standard Shopping, ou Display
2. **Toutes les campagnes sont du même type :** Ne mélangez pas Search et Shopping dans un même portefeuille
3. **Toutes les campagnes ciblent la/les même(s) action(s) de conversion**
4. **Toutes les campagnes partagent un objectif d'efficacité compatible**

Retirez toute campagne qui échoue à ces vérifications.

### 1.3 Calculer le volume de conversions agrégé

Additionnez les conversions mensuelles de toutes les campagnes éligibles.

| Seuil | Statut | Action |
|-----------|--------|--------|
| 50+ conversions/mois agrégées | Recommandé | Continuer vers Phase 2 |
| 15-49 conversions/mois agrégées | Minimum viable | Continuer avec prudence, attendre plus de volatilité |
| Moins de 15 conversions/mois agrégées | Insuffisant | Ne pas créer le portefeuille, régler d'abord le volume |

> 💡 **Le bénéfice principal des stratégies portefeuille, c'est l'agrégation de données :** Cinq campagnes avec 12 conversions chacune vous donnent 60 conversions agrégées, bien au-dessus du seuil de 50+ où le stratégies d'enchères intelligentes performe de manière fiable.

---

## Phase 2️⃣ : Créer la stratégie portefeuille

### 2.1 Naviguez vers les stratégies d'enchères

1. Dans Google Ads, allez dans **Outils > Budgets et enchères > Stratégies d'enchères**
2. Cliquez sur le bouton **+** pour créer une nouvelle stratégie d'enchères

### 2.2 Configurer la stratégie

1. **Sélectionnez le type de stratégie** selon votre objectif d'efficacité :

| Objectif | Type de stratégie | Champ cible |
|------|---------------|--------------|
| Maximiser le volume de conversions avec contrainte CPA | CPA cible | Entrez votre cible CPA |
| Maximiser le volume de conversions sans contrainte | Maximiser les conversions | Pas de cible nécessaire |
| Maximiser la valeur de conversion avec contrainte ROAS | ROAS cible | Entrez votre cible ROAS |
| Maximiser la valeur de conversion sans contrainte | Maximiser la valeur de conversion | Pas de cible nécessaire |

2. **Nommez la stratégie** en utilisant une convention de nommage claire :

| Format | Exemple |
|--------|---------|
| `[Type] - [Objectif] - [Descripteur de groupe]` | `Portfolio - tCPA €45 - US Brand Campaigns` |
| `[Type] - [Objectif] - [Région/Segment]` | `Portfolio - tROAS 400% - Shopping EU` |

3. **Définissez la cible** (si vous utilisez CPA cible ou ROAS cible) :
   - Utilisez la cible calculée à partir de la référence des objectifs d'enchères
   - Si vous migrez depuis des stratégies de campagne individuelles : utilisez la moyenne pondérée des cibles existantes des campagnes comme point de départ

### 2.3 Lier les campagnes

1. Dans l'écran de création de la stratégie, cliquez sur **Sélectionner des campagnes**
2. Ajoutez toutes les campagnes de votre liste validée (Phase 1)
3. Passez la liste en revue pour confirmer que toutes les campagnes prévues sont incluses
4. Enregistrez la stratégie portefeuille

> ⚠️ **Une fois que vous liez une campagne à une stratégie portefeuille, la stratégie d'enchères individuelle de la campagne est remplacée :** La campagne hérite désormais de la cible et des paramètres du portefeuille.

---

## Phase 3️⃣ : Configurer les plafonds CPC

### 3.1 Position par défaut : plafonds CPC désactivés

Laissez les plafonds CPC désactivés. Stratégies d'enchères intelligentes ajuste les CPC au moment de l'enchère en fonction de la probabilité de conversion. Les plafonds manuels interfèrent avec cette optimisation.

> ⚠️ **Position : ne plus appliquer les plafonds CPC par défaut :** Laissez les enchères à l'algorithme. Ne définissez des plafonds que si l'algorithme surenchérit régulièrement sur des requêtes à faible valeur.

### 3.2 Quand activer les plafonds CPC

Activez les plafonds CPC uniquement quand :

| Condition | Signal |
|-----------|--------|
| L'algorithme "part en cacahuète" en permanence | Les CPC explosent 5x+ au-dessus de la normale sur des périodes prolongées (pas juste des fluctuations d'apprentissage) |
| Des catégories de requêtes spécifiques génèrent des CPC extrêmes | Le rapport sur les termes de recherche montre des termes à CPC élevé sans conversion |
| Protection de marque nécessaire | Les enchères concurrentielles poussent les CPC marque à des niveaux insoutenables |

### 3.3 Comment définir les plafonds CPC (si nécessaire)

1. Ouvrez les paramètres de la stratégie d'enchères portefeuille
2. Dépliez "Options avancées" ou "Limites d'enchère"
3. Définissez le **Plafond d'enchère CPC maximum**

**Calcul :**

| Étape | Action |
|------|--------|
| 1 | Sortez le rapport sur les termes de recherche sur les 30-60 derniers jours |
| 2 | Filtrez sur les termes avec au moins 1 conversion |
| 3 | Calculez le CPC moyen de ces termes top convertisseurs |
| 4 | Définissez le CPC maximum = 3x ce CPC moyen |

**Exemple :**
CPC moyen des termes convertisseurs = 2,50 €. Plafond CPC maximum = 7,50 €.

4. Laissez le **Plafond d'enchère CPC minimum** vide (ne définissez pas de plancher)

### 3.4 Définir un rappel de revue des plafonds CPC

Si vous définissez des plafonds CPC :

1. Créez un rappel calendrier pour revoir les plafonds CPC tous les 30 jours
2. À chaque revue : comparez les CPC réels au plafond. Si le plafond n'est jamais approché, c'est sans risque. S'il est fréquemment atteint, il peut limiter la performance.
3. Retirez le plafond si la performance est stable sans lui

> ⚠️ **Les plafonds CPC oubliés sont la mauvaise configuration la plus dangereuse :** Un plafond posé pendant un pic temporaire peut silencieusement brider la performance pendant des mois. Définissez toujours un rappel de revue quand vous activez des plafonds.

---

## Phase 4️⃣ : Configurer le budget partagé (optionnel)

### 4.1 Décider si un budget partagé est nécessaire

| Utilisez un budget partagé quand | N'utilisez pas un budget partagé quand |
|--------------------------|-------------------------------|
| Toutes les campagnes du portefeuille partagent le même objectif commercial | Les campagnes ont des priorités budgétaires différentes |
| Vous voulez que Google alloue automatiquement le budget aux campagnes les plus performantes | Vous avez besoin d'un contrôle budgétaire strict par campagne |
| La micro-gestion budgétaire au niveau campagne n'est pas requise | Le reporting nécessite un suivi des dépenses au niveau campagne |

### 4.2 Créer le budget partagé

1. Dans Google Ads, allez dans **Outils > Budgets et enchères > Budgets partagés**
2. Cliquez sur le bouton **+**
3. **Nommez le budget :** correspondre au nom de la stratégie portefeuille (ex. `Shared Budget - US Brand Campaigns`)
4. **Définissez le budget quotidien :** somme des budgets individuels de toutes les campagnes consolidées

**Exemple :**

| Campagne | Budget quotidien individuel |
|----------|----------------------|
| Campagne A | 50 € |
| Campagne B | 30 € |
| Campagne C | 20 € |
| **Budget partagé** | **100 €** |

5. Appliquez le budget partagé à toutes les campagnes du portefeuille
6. Retirez les budgets individuels des campagnes (ils sont maintenant gérés par le budget partagé)

### 4.3 Vérifier l'assignation du budget partagé

1. Naviguez vers les paramètres de chaque campagne
2. Confirmez que le nom du budget partagé apparaît sous "Budget"
3. Confirmez qu'aucun budget individuel n'est encore actif en parallèle du budget partagé

---

## Phase 5️⃣ : Valider et surveiller

### 5.1 Dérouler la checklist post-installation

- [ ] La stratégie d'enchères portefeuille est active et affiche le bon type de stratégie
- [ ] Toutes les campagnes prévues sont liées (vérifier dans les détails de la stratégie)
- [ ] Aucune campagne non prévue n'est liée
- [ ] La cible (CPA/ROAS) correspond à la valeur calculée
- [ ] Les plafonds CPC sont désactivés (ou documentés avec un rappel de revue s'ils sont actifs)
- [ ] Le budget partagé est correctement assigné (si applicable)
- [ ] Le suivi des conversions se déclenche sur toutes les campagnes liées

### 5.2 Dérouler la checklist de santé de la stratégie d'enchères

Déroulez la [Checklist santé de la stratégie de bid](<Enchères - [Review] Santé de la stratégie d'enchères.md>) complète sur la nouvelle stratégie portefeuille.

### 5.3 Surveiller la période d'apprentissage

La stratégie portefeuille entre dans une période d'apprentissage d'environ deux cycles de conversion après création (Voir : [Stratégies d'enchères intelligentes Mechanics Reference](<Enchères - Mécanismes des stratégies d'enchères intelligentes.md>)).

| À faire | À éviter |
|----|--------|
| Vérifier les métriques quotidiennement pour détecter des anomalies | Ajuster la cible CPA/ROAS |
| Vérifier que les conversions sont suivies | Ajouter ou retirer des campagnes du portefeuille |
| Noter tout facteur externe (saisonnalité, promos) | Changer les plafonds CPC pendant l'apprentissage |
| Documenter la performance quotidienne dans une feuille de suivi | Changer le budget de plus de 10% |

### 5.4 Évaluation post-apprentissage

Après la période d'apprentissage (deux cycles de conversion) :

1. Comparez le CPA/ROAS réel du portefeuille à la cible
2. Vérifiez si le volume de conversions agrégé correspond aux attentes
3. Passez en revue l'allocation budgétaire entre campagnes (si vous utilisez un budget partagé)
4. Décidez du premier ajustement (si nécessaire) : changez la cible de pas plus de 10-15%

---

### Validation et critères de complétion

Cette SOP est terminée quand :

- [ ] La stratégie d'enchères portefeuille est créée avec le bon type de stratégie et la bonne cible
- [ ] Toutes les campagnes éligibles sont liées au portefeuille
- [ ] Les plafonds CPC sont configurés correctement (désactivés par défaut, ou définis à 3x avec un rappel de revue)
- [ ] Le budget partagé est configuré (si applicable) avec le bon montant total
- [ ] La checklist santé de la stratégie d'enchères passe
- [ ] La période d'apprentissage s'est terminée sans interférence
- [ ] L'évaluation post-apprentissage confirme une performance stable

---

### Passerelle de sortie

Une fois que la stratégie portefeuille est stable et que l'évaluation post-apprentissage est complète :

| Délai | Action |
|-----------|--------|
| Semaine 3-4 | Faire le premier ajustement de cible si nécessaire (incréments de 10-15%) |
| Mensuelle | Revoir les plafonds CPC (si définis), les retirer s'ils ne sont plus nécessaires |
| Mensuelle | Revoir l'allocation du budget partagé, ajuster le total si les campagnes sont régulièrement limitées par le budget |
| Trimestrielle | Réévaluer quelles campagnes appartiennent au portefeuille |
| Lors d'une montée en charge | Lancer [SOP - Scaler encheres et budgets](<Enchères - Scaler les enchères et budgets.md>) |

**En cas de problème :**

| Problème | Rediriger vers |
|-------|----------|
| Le CPA/ROAS du portefeuille rate régulièrement la cible | [SOP - Calculer les objectifs d'encheres](<Enchères - Calculer les objectifs d'enchères.md>) pour recalculer les cibles |
| Une campagne domine le budget partagé | Retirer le budget partagé, repasser à des budgets individuels |
| Les plafonds CPC sont fréquemment atteints | Revoir et augmenter le plafond (ou le retirer entièrement) |
| Le volume de conversions tombe sous 15/mois agrégés | Envisager de dissoudre le portefeuille, régler les problèmes de volume en amont |
| La période d'apprentissage se réinitialise sans cesse | [Stratégies d'enchères intelligentes Mechanics Reference](<Enchères - Mécanismes des stratégies d'enchères intelligentes.md>) pour les déclencheurs d'apprentissage |

---

### FAQ

**Q : Est-ce que je peux mélanger des campagnes Search et Shopping dans le même portefeuille ?**

R : Non. Toutes les campagnes d'un portefeuille doivent être du même type de campagne. Créez des stratégies portefeuille séparées pour Search, Shopping et Display.

**Q : Qu'arrive-t-il à la stratégie d'enchères individuelle d'une campagne quand je l'ajoute à un portefeuille ?**

R : La stratégie individuelle de la campagne est remplacée par la stratégie portefeuille. Si vous retirez plus tard la campagne du portefeuille, vous devez lui assigner une nouvelle stratégie d'enchères manuellement.

**Q : Est-ce que je devrais toujours associer une stratégie portefeuille à un budget partagé ?**

R : Non. Les stratégies portefeuille et les budgets partagés sont des fonctionnalités indépendantes. Utilisez un budget partagé uniquement si vous voulez que Google alloue le budget dynamiquement entre les campagnes. Si vous avez besoin d'un contrôle budgétaire strict par campagne, utilisez des budgets individuels avec la stratégie portefeuille.

**Q : Comment savoir si mon plafond CPC est trop restrictif ?**

R : Vérifiez la colonne "Statut de la stratégie d'enchères" dans la vue des stratégies d'enchères. Si elle indique "Limité par le plafond d'enchère", votre plafond contraint l'algorithme. Comparez la performance avec et sans plafond sur une période de 2 semaines pour déterminer s'il faut le garder.

**Q : Quel est le nombre minimum de campagnes pour une stratégie portefeuille ?**

R : Deux campagnes constitue le minimum technique. La valeur augmente avec plus de campagnes parce que vous agrégez plus de données de conversion. Une seule campagne ne bénéficie pas d'une stratégie portefeuille.

---

### Référence rapide : bibliothèque support

| Document | Type | Utilisé dans |
|----------|------|---------|
| [Bidding Configuration Guidelines](<Enchères - Configuration des enchères.md>) | Guide | Phase 2 (configuration de la stratégie) |
| [Stratégies d'enchères intelligentes Mechanics Reference](<Enchères - Mécanismes des stratégies d'enchères intelligentes.md>) | Référence | Phase 5 (gestion de la période d'apprentissage) |
| [Budget Pacing Reference](<Enchères - Rythme de dépense.md>) | Référence | Phase 4 (mise en place du budget partagé) |
| [Bid Strategy Health Checklist](<Enchères - [Review] Santé de la stratégie d'enchères.md>) | Checklist | Phase 5 (validation) |
| [Conversion Volume Thresholds Reference](<../suivi/Suivi - Seuils de volume de conversions.md>) | Référence | Phase 1 (vérification d'éligibilité) |

---

### Procédures liées

| SOP | Relation |
|-----|-------------|
| [SOP - Selectionner une strategie d'encheres](<Enchères - Sélectionner une stratégie d'enchères.md>) | Amont (détermine quel type de stratégie utiliser) |
| [SOP - Calculer les objectifs d'encheres](<Enchères - Calculer les objectifs d'enchères.md>) | Amont (fournit la cible CPA/ROAS) |
| [SOP - Configurer les encheres basees sur les conversions](<../suivi/Suivi - Configurer le suivi des conversions Google Ads.md>) | Alternative (pour une mise en place mono-campagne) |
| [SOP - Migrer des encheres manuelles vers Stratégies d'enchères intelligentes](<Enchères - Migrer des enchères manuelles vers les stratégies d'enchères intelligentes.md>) | Parallèle (si les campagnes migrent depuis CPC manuel) |
| [SOP - Scaler encheres et budgets](<Enchères - Scaler les enchères et budgets.md>) | Aval (une fois la stratégie portefeuille stabilisée) |

---

### Erreurs fréquentes

| Erreur | Pourquoi ça arrive | Comment l'éviter |
|---------|----------------|--------------|
| Mélanger des types de campagne dans un même portefeuille | Croire que n'importe quelle campagne peut rejoindre | Vérifier que toutes les campagnes sont du même type avant de créer |
| Plafonds CPC oubliés qui brident la performance pendant des mois | Plafond posé pendant un pic, jamais revu | Toujours définir un rappel de revue à 30 jours quand on active des plafonds |
| Budget partagé qui affame les petites campagnes | Une campagne consomme un budget disproportionné | Surveiller l'allocation chaque semaine, séparer en budgets distincts si nécessaire |
| Inclure des campagnes PMax ou Vidéo | Hypothèse incorrecte sur les types éligibles | Seuls Search, Standard Shopping et Display sont supportés |
| Définir une cible de portefeuille bien en dessous des moyennes individuelles des campagnes | Cible agressive sans assez de données agrégées | Démarrer à la moyenne pondérée de la performance au niveau campagne |
| Retirer des campagnes du portefeuille sans assigner de nouvelle stratégie | Campagne laissée sans stratégie d'enchères active | Toujours assigner une stratégie de remplacement avant de retirer du portefeuille |
