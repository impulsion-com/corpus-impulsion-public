# Configurer les enchères basées sur les conversions (Max Conversions / CPA cible)

> **Plateforme :** Google Ads
> **Catégorie :** Enchères
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Phase 1️⃣: Configurer la stratégie

### 1.1 Vérifier l'action de conversion

Avant de changer la stratégie d'enchères, confirmez :

1. Naviguez vers les paramètres de la campagne
2. Sous « Objectifs », confirmez que l'action de conversion principale est correcte
3. Si vous utilisez des objectifs spécifiques à la campagne : vérifiez que seule l'action de conversion voulue est sélectionnée comme principale
4. Si vous utilisez des objectifs au niveau du compte : vérifiez que l'action de conversion par défaut du compte est correcte

> ⚠️ **Mauvaise action de conversion = mauvaise optimisation :** Si la campagne optimise pour une micro-conversion (vue de page) au lieu de la macro-conversion (envoi du formulaire de lead — prospect), la stratégie optimisera pour le mauvais résultat.

### 1.2 Définir la stratégie d'enchères

**Dans l'interface Google Ads :**

1. Allez dans les paramètres de la campagne
2. Cliquez sur « Enchères »
3. Sélectionnez « Maximiser les conversions »
4. Si vous voulez un CPA cible : cochez « Définir un coût par action cible »
5. Enregistrez

**Dans Google Ads Editor :**

1. Sélectionnez la campagne
2. Dans le panneau d'édition, changez « Type de stratégie d'enchères » en « Maximiser les conversions »
3. Si CPA cible : renseignez le champ « CPA cible »
4. Publiez les modifications

### 1.3 Vérifier les objectifs spécifiques à la campagne (si applicable)

Si vous utilisez des objectifs spécifiques à la campagne au lieu des valeurs par défaut du compte :

1. Paramètres de la campagne > Objectifs
2. Sélectionnez « Utiliser des paramètres d'objectif spécifiques à la campagne »
3. Choisissez uniquement votre action de conversion principale voulue
4. Désélectionnez toute action de conversion pour laquelle vous ne voulez pas que cette campagne optimise

---

## Phase 2️⃣: Définir la cible initiale

### 2.1 Maximiser les conversions (sans cible)

Si vous avez sélectionné Maximiser les conversions sans CPA cible :

- Aucune configuration de cible nécessaire
- L'algorithme maximisera le volume de conversions dans la limite de votre budget quotidien
- Le budget agit comme votre seule contrainte

**Quand démarrer sans cible :**

| Scénario | Démarrer sans cible |
|----------|---------------------|
| Nouvelle campagne, aucune donnée de CPA historique | Oui, collectez d'abord des données |
| Volume de conversions élevé attendu rapidement | Oui, laissez monter en puissance |
| Cibles d'efficacité déjà atteintes facilement | Oui, testez si retirer le garde-fou augmente le volume |

### 2.2 CPA cible

Si vous avez sélectionné CPA cible :

1. **Définissez la cible initiale** au niveau ou légèrement au-dessus du CPA moyen de la campagne sur les 2-4 dernières semaines
2. Si aucun CPA historique n'existe (nouvelle campagne démarrant avec CPA cible) : définissez la cible au CPA calculé depuis le Bid Targets Reference, ou utilisez le CPA moyen de campagnes similaires du compte
3. Saisissez la cible dans les paramètres de la stratégie d'enchères

**Règles pour la cible initiale :**

| Situation | Cible initiale |
|-----------|---------------|
| Campagne existante avec historique de CPA | CPA moyen des 4 dernières semaines (ou légèrement au-dessus) |
| Nouvelle campagne, thèmes de requêtes connus | CPA cible calculé à partir de l'unit economics |
| Migration depuis Max Conversions après collecte de données | CPA moyen atteint pendant la phase Max Conversions |

> 💡 **Définissez la cible initiale de façon conservatrice :** Démarrez au niveau ou légèrement au-dessus de la performance actuelle de la campagne. Resserrez progressivement (10-15% par ajustement) une fois que l'algorithme se stabilise.

---

## Phase 3️⃣: Gérer la période d'apprentissage

### 3.1 Définir les attentes

Avant la mise en ligne de la stratégie, informez les parties prenantes :

- La performance fluctuera pendant environ deux cycles de conversion (Voir : [Stratégies d'enchères intelligentes Mechanics Reference](<Enchères - Mécanismes des stratégies d'enchères intelligentes.md>))
- Les CPA peuvent être au-dessus de la cible pendant l'apprentissage
- Le volume de conversions peut être irrégulier
- Aucune modification ne sera effectuée pendant cette période

### 3.2 Surveiller sans réagir

Pendant la période d'apprentissage (deux cycles de conversion) :

| À faire | À ne pas faire |
|----|--------|
| Vérifier les métriques quotidiennement pour repérer les anomalies (ruptures de tracking (suivi des conversions), pics de coût extrêmes) | Ajuster le CPA cible |
| Vérifier que le suivi des conversions se déclenche | Modifier les budgets de plus de 10% |
| Noter tout facteur externe (changements de concurrents, saisonnalité) | Ajouter ou retirer des mots-clés |
| Préparer votre premier plan d'optimisation pour l'après-apprentissage | Paniquer si les CPA quotidiens sont volatils |

### 3.3 Identifier la fin de la période d'apprentissage

La période d'apprentissage est terminée quand :

- La performance quotidienne se stabilise (variations quotidiennes moins extrêmes)
- Deux cycles de conversion se sont écoulés depuis le changement de stratégie
- Au moins un cycle de conversion complet s'est écoulé

---

## Phase 4️⃣: Optimisation post-apprentissage

### 4.1 Évaluer les résultats

Après la fin de la période d'apprentissage :

1. Extrayez les données de performance en excluant la période d'apprentissage (les deux premiers cycles de conversion)
2. Excluez aussi les [délai de conversion] jours les plus récents (attribution incomplète)
3. Comparez le CPA réel au CPA cible
4. Comparez le volume de conversions aux objectifs de croissance

### 4.2 Premiers ajustements

| Résultat | Action |
|--------|--------|
| CPA proche de la cible, volume atteignant les objectifs | Aucun changement nécessaire, continuez la surveillance |
| CPA au-dessus de la cible de plus de 20% | Resserrez la cible de 10-15%, attendez un cycle de conversion |
| CPA bien en dessous de la cible | Envisagez d'assouplir la cible pour capter plus de volume |
| Volume en dessous des objectifs de croissance | Augmentez la cible de 10-15% ou augmentez le budget |
| Volume au-dessus des objectifs, CPA dans la cible | Occasion de resserrer la cible pour plus de profit |

### 4.3 Cadence de gestion continue

| Fréquence | Action |
|-----------|--------|
| Hebdomadaire | Vérifiez le CPA vs. cible, le volume de conversions, l'IS perdu (budget et classement) |
| Toutes les deux semaines | Examinez le rapport sur les termes de recherche, repérez les anomalies de CPC |
| Mensuel | Lancez une analyse via le simulateur d'enchères, comparez aux objectifs de croissance |
| Trimestriel | Validez la cible par rapport à l'unit economics (recalculez si les données d'entrée ont changé) |

### 4.4 Dérouler la checklist post-configuration

Déroulez la [Bid Strategy Health Checklist](<Enchères - [Review] Santé de la stratégie d'enchères.md>) pour confirmer que toute la configuration est correcte.

---

### Validation et critères de complétion

Cette SOP est terminée quand :

- [ ] La stratégie d'enchères est réglée sur Maximiser les conversions ou CPA cible
- [ ] L'action de conversion correcte est sélectionnée comme principale
- [ ] La cible initiale de CPA est définie (si utilisation du CPA cible) sur la base de données calculées ou historiques
- [ ] Les clients ont été briefés sur les attentes de la période d'apprentissage
- [ ] La période d'apprentissage s'est terminée sans interférence
- [ ] L'évaluation post-apprentissage a été effectuée
- [ ] La Bid Strategy Health Checklist est validée

---

### Passerelle de sortie

Une fois que la stratégie est stable et l'évaluation post-apprentissage terminée :

| Délai | Action |
|-----------|--------|
| Semaine 3-4 | Effectuez le premier ajustement de cible si nécessaire (incréments de 10-15%) |
| Mois 2+ | Démarrez la cadence d'optimisation régulière |
| Lorsque vous envisagez les enchères basées sur la valeur | Démarrez le [SOP - Configurer les encheres basees sur la valeur](<Enchères - Configurer les enchères basées sur la valeur.md>) |
| Lorsque vous scalez au-delà de la performance actuelle | Démarrez le [SOP - Scaler encheres et budgets](<Enchères - Scaler les enchères et budgets.md>) |

**En cas de problème :**

| Problème | Rediriger vers |
|-------|----------|
| Le CPA ne peut pas atteindre la cible même après ajustements | [Bid Targets Reference](<Enchères - Cibles d'enchères.md>) pour recalculer, puis [Unit Economics Mental Model](<../../01-strategie/fondamentaux/Fondamentaux - Méthode unit economics.md>) |
| Volume insuffisant quel que soit le niveau de cible | Tableau de dépannage de la [Bid Strategy Health Checklist](<Enchères - [Review] Santé de la stratégie d'enchères.md>) |
| Problèmes de suivi des conversions | [SOP - Configurer le suivi des conversions Google Ads](<../suivi/Suivi - Configurer le suivi des conversions Google Ads.md>) |

---

### FAQ

**Q : Dois-je commencer par Maximiser les conversions et ajouter un CPA cible plus tard, ou démarrer directement avec un CPA cible ?**

R : Si vous avez suffisamment de données historiques (50+ conversions/mois) et un CPA cible calculé, démarrez directement avec CPA cible. Si vous lancez une nouvelle campagne et attendez un volume élevé, démarrez avec Maximiser les conversions pendant 2-4 semaines pour collecter des données, puis ajoutez un CPA cible basé sur le CPA moyen atteint.

**Q : Que faire si mon CPA réel est constamment au-dessus de ma cible ?**

R : Vérifiez d'abord que votre cible est réaliste (comparez au CPA de seuil de rentabilité et au ratio profit/acquisition). Si la cible est réaliste, vérifiez le volume de conversions (des données insuffisantes causent de la volatilité). Si le volume est adéquat, le marché ne soutient peut-être pas votre cible à une échelle suffisante. Envisagez d'augmenter la cible ou d'améliorer les métriques en amont (taux de conversion, landing page).

**Q : Puis-je utiliser un CPA cible avec moins de 50 conversions par mois ?**

R : Le minimum est de 15 conversions par mois. En dessous de 50, attendez-vous à plus de volatilité et une optimisation plus lente. Consolidez les campagnes ou utilisez une stratégie d'enchères de portefeuille pour mutualiser les données entre campagnes et atteindre le seuil de 50+.

---

### Référence rapide : bibliothèque support

| Document | Type | Utilisé dans |
|----------|------|---------|
| [Bid Strategy Selection Reference](<Enchères - Sélection de stratégie d'enchères.md>) | Référence | Phase 1 (confirmation de la stratégie) |
| [Bid Targets Reference](<Enchères - Cibles d'enchères.md>) | Référence | Phase 2 (définition de la cible initiale) |
| [Stratégies d'enchères intelligentes Mechanics Reference](<Enchères - Mécanismes des stratégies d'enchères intelligentes.md>) | Référence | Phase 3 (gestion de la période d'apprentissage) |
| [Bid Strategy Health Checklist](<Enchères - [Review] Santé de la stratégie d'enchères.md>) | Checklist | Phase 4 (validation post-configuration) |

---

### Procédures liées

| SOP | Relation |
|-----|-------------|
| [SOP - Selectionner une strategie d'encheres](<Enchères - Sélectionner une stratégie d'enchères.md>) | Amont (détermine quelle stratégie configurer) |
| [SOP - Calculer les objectifs d'encheres](<Enchères - Calculer les objectifs d'enchères.md>) | Amont (fournit le CPA cible) |
| [SOP - Configurer les encheres basees sur la valeur](<Enchères - Configurer les enchères basées sur la valeur.md>) | Alternative (pour les objectifs basés sur la valeur) |
| [SOP - Migrer des encheres manuelles vers Stratégies d'enchères intelligentes](<Enchères - Migrer des enchères manuelles vers les stratégies d'enchères intelligentes.md>) | Alternative (pour les campagnes actuellement en CPC manuel) |
| [SOP - Configurer les strategies d'encheres portefeuille](<Enchères - Configurer les stratégies d'enchères de portefeuille.md>) | Conditionnel (si utilisation d'une stratégie de portefeuille) |
| [SOP - Scaler encheres et budgets](<Enchères - Scaler les enchères et budgets.md>) | Aval (une fois la stratégie stable) |

---

### Erreurs fréquentes

| Erreur | Pourquoi ça arrive | Comment l'éviter |
|---------|----------------|--------------|
| Définir un CPA cible bien en dessous de la moyenne historique | Attentes irréalistes, analyse d'unit economics insuffisante | Calculer d'abord la cible à partir du seuil de rentabilité et du PAR |
| Effectuer des changements pendant la période d'apprentissage | Impatience, pression des parties prenantes | Informer les parties prenantes avant le lancement, s'engager sur une période sans intervention |
| Mauvaise action de conversion sélectionnée | Les valeurs par défaut du compte incluent des micro-conversions | Vérifier les objectifs spécifiques à la campagne avant d'activer la stratégie |
| Budget insuffisant pour le CPA cible | Budget inférieur à 10x le CPA cible | Définir le budget à au moins 10x le CPA cible par jour |
| Oublier d'exclure la période d'apprentissage dans l'évaluation | Inclut des données volatiles dans l'analyse de performance | Toujours filtrer la période d'apprentissage (deux cycles de conversion) lors de l'évaluation |
