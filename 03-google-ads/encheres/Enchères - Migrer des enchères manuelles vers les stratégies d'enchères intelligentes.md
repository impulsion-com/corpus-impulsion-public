# Migrer des enchères manuelles vers Stratégies d'enchères intelligentes

> **Plateforme :** Google Ads
> **Catégorie :** Enchères
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Phase 1️⃣: Documenter la référence

### 1.1 Enregistrer la performance actuelle

Avant tout changement, documentez ces métriques pour les 4 dernières semaines (en excluant les périodes anormales) :

| Métrique | Valeur | Notes |
|--------|-------|-------|
| Conversions (30 derniers jours) | | Doit être 15+ (50+ recommandé) |
| CPA moyen | | Benchmark (analyse comparative) pour la cible initiale de CPA cible |
| ROAS moyen | | Benchmark pour la cible initiale de ROAS cible |
| Valeur de conversion | | Chiffre d'affaires total ou profit |
| CPC moyen | | Référence pour le suivi du CPC |
| CTR | | Référence pour le suivi de la qualité |
| Taux d'impressions | | Référence pour la compétitivité |
| Taux d'impressions perdu (classement) | | Montre la compétitivité actuelle |
| Taux d'impressions perdu (budget) | | Montre la marge de budget disponible |

### 1.2 Identifier le délai de conversion

Consultez le rapport de stratégie d'enchères ou les colonnes de conversion pour votre délai de conversion moyen. Vous en aurez besoin pour :

- Déterminer combien de temps attendre avant d'évaluer les résultats
- Exclure les données incomplètes des comparaisons de performance

---

## Phase 2️⃣: Préparer la migration

### 2.1 Choisir la méthode de migration

| Méthode | Quand l'utiliser | Niveau de risque |
|--------|-------------|-----------|
| **Bascule directe** | La campagne a 50+ conversions/mois, une performance stable, des thèmes de requêtes connus | Faible |
| **Expérimentation de campagne (50/50)** | Vous voulez valider avant de vous engager, campagne à enjeux élevés, une partie prenante exige des preuves | Très faible |
| **Migration progressive** | La campagne a 15-50 conversions, ou vous voulez plus de prudence | Faible |

**Bascule directe :** changez la stratégie d'enchères sur la campagne active. La plus rapide, adaptée quand les données sont solides.

**Expérimentation de campagne :** créez une expérimentation 50/50 avec la nouvelle stratégie sur le bras d'expérimentation. Laissez tourner 30+ jours. Appliquez si les résultats sont positifs. L'option la plus sûre.

**Migration progressive :** commencez avec Maximiser les conversions (sans cible) pendant 2-4 semaines, puis ajoutez une CPA/ROAS cible basée sur les moyennes obtenues.

### 2.2 Définir la cible initiale

| Migration vers | Cible initiale |
|-------------|---------------|
| Maximiser les conversions | Aucune cible nécessaire (le budget est la contrainte) |
| CPA cible | Définir au CPA moyen actuel ou légèrement au-dessus (marge de 5-10%) |
| Maximiser la valeur de conversion | Aucune cible nécessaire |
| ROAS cible | Définir au ROAS moyen actuel ou légèrement en dessous (marge de 5-10%) |

> 💡 **Définissez toujours la cible initiale généreusement :** L'objectif des 2-4 premières semaines est de laisser les stratégies d'enchères intelligentes apprendre sans restriction. Resserrez vers votre cible calculée par incréments de 10-15% après stabilisation.

### 2.3 Préparer les critères de retour arrière

Définissez à l'avance dans quels cas vous reviendriez aux enchères manuelles :

| Critère | Seuil | Action |
|-----------|-----------|--------|
| Le coût dépasse 2x la moyenne quotidienne historique pendant 3+ jours consécutifs | Protection du budget | Réduire le budget quotidien, ne pas revenir sur la stratégie |
| Le CPA dépasse 2x la cible après la fin de la période d'apprentissage | Mauvaise performance persistante | Resserrer la cible ou revenir en arrière |
| Les conversions chutent à presque zéro | Problème de tracking (suivi des conversions) ou asphyxie | Vérifier d'abord le tracking, puis revenir en arrière si le tracking est correct |

> ⚠️ **Ne revenez pas en arrière pendant la période d'apprentissage :** La volatilité pendant les deux premiers cycles de conversion (Voir : [Stratégies d'enchères intelligentes Mechanics Reference](<Enchères - Mécanismes des stratégies d'enchères intelligentes.md>)) est normale. N'envisagez un retour en arrière qu'en cas d'anomalies claires (rupture du tracking, pics de coût extrêmes au-delà de 2x le budget quotidien).

---

## Phase 3️⃣: Exécuter la bascule

### 3.1 Méthode de bascule directe

1. Allez dans les paramètres de la campagne > Enchères
2. Changez la stratégie pour votre stratégie cible
3. Si vous utilisez CPA cible : saisissez votre cible initiale (CPA moyen actuel + 5-10%)
4. Si vous utilisez ROAS cible : saisissez votre cible initiale (ROAS moyen actuel - 5-10%)
5. Enregistrez
6. Vérifiez que la stratégie est active dans la vue d'ensemble de la campagne

### 3.2 Méthode d'expérimentation de campagne

1. Allez dans campagne > Expérimentations
2. Créez une nouvelle expérimentation
3. Définissez la variable de l'expérimentation : la stratégie d'enchères uniquement
4. Définissez la stratégie de l'expérimentation sur votre stratégie cible avec la cible initiale
5. Réglez la répartition du trafic sur 50/50
6. Définissez la durée de l'expérimentation à 30+ jours
7. Lancez l'expérimentation
8. Ne faites aucun autre changement, ni sur le bras original ni sur le bras d'expérimentation

### 3.3 Méthode de migration progressive

1. Basculez de CPC manuel vers Maximiser les conversions (sans cible)
2. Laissez tourner 2-4 semaines pour établir la référence des stratégies d'enchères intelligentes
3. Après 2-4 semaines, ajoutez votre CPA cible basée sur le CPA moyen obtenu
4. Continuez vers la Phase 4

### 3.4 Briefer les parties prenantes

Envoyez une communication brève couvrant :

- Ce qui a changé et pourquoi
- La période d'apprentissage attendue (deux cycles de conversion)
- À quoi s'attendre pendant l'apprentissage (CPA fluctuants, volume irrégulier)
- Quand aura lieu la première évaluation (après la période d'apprentissage + un cycle de conversion)
- Consigne claire : pas de panique, pas de demande de retour en arrière pendant l'apprentissage

---

## Phase 4️⃣: Gérer l'apprentissage et stabiliser

### 4.1 Période d'apprentissage (Jours 1-14)

| À faire | À éviter |
|----|--------|
| Surveiller quotidiennement, uniquement pour les anomalies | Changer les cibles |
| Vérifier que le tracking se déclenche toujours | Ajuster les budgets de plus de 10% |
| Noter les facteurs externes pour le contexte | Ajouter ou retirer des mots-clés ou des audiences |
| Préparer la méthode d'évaluation | Faire tout autre changement sur la campagne |

### 4.2 Évaluation post-apprentissage

Après la période d'apprentissage (deux cycles de conversion) plus un cycle de conversion :

1. Sortez les données de performance avec ces filtres :
   - Excluez la période d'apprentissage (deux cycles de conversion)
   - Excluez les [délai de conversion] derniers jours (attribution incomplète)
2. Comparez à la référence de la Phase 1

| Métrique | Comparer à la référence | Interprétation |
|--------|-------------------|---------------|
| CPA | À moins de 20% de la référence | Transition saine |
| Volume de conversions | À moins de 20% de la référence ou plus | Les stratégies d'enchères intelligentes performent |
| ROAS | À moins de 20% de la référence ou plus | L'optimisation de la valeur fonctionne |
| Taux d'impressions | Stable ou amélioré | La stratégie d'enchères est compétitive |

### 4.3 Première optimisation

| Résultat | Étape suivante |
|--------|----------|
| La performance égale ou dépasse la référence | Resserrez la cible de 10-15% vers votre cible calculée |
| Performance légèrement sous la référence | Attendez un cycle de conversion de plus, puis réévaluez |
| Performance nettement sous la référence | Consultez le tableau de dépannage dans [Bid Strategy Health Checklist](<Enchères - [Review] Santé de la stratégie d'enchères.md>) |

### 4.4 Pour les expérimentations de campagne

Après 30+ jours avec une signification statistique supérieure à 80% :

1. Comparez l'expérimentation vs. l'original en utilisant la valeur de conversion comme métrique principale (pour les stratégies de valeur) ou les conversions (pour les stratégies de volume)
2. Excluez de l'analyse la période d'apprentissage (les deux premiers cycles de conversion) et le délai de conversion
3. Si l'expérimentation gagne : appliquez l'expérimentation
4. Si l'original gagne : terminez l'expérimentation, gardez la stratégie originale

### 4.5 Dérouler la checklist post-migration

Déroulez la [Bid Strategy Health Checklist](<Enchères - [Review] Santé de la stratégie d'enchères.md>) pour valider tous les paramètres.

---

### Validation et critères de complétion

Cette SOP est terminée quand :

- [ ] Métriques de référence documentées avant la migration
- [ ] La stratégie d'enchères intelligentes est active et correctement configurée
- [ ] La période d'apprentissage s'est terminée sans interférence
- [ ] Évaluation post-apprentissage réalisée (en excluant la période d'apprentissage et le délai de conversion)
- [ ] La performance est dans une fourchette acceptable de la référence (ou l'expérimentation est appliquée)
- [ ] Parties prenantes briefées sur les résultats et les prochaines étapes
- [ ] La Bid Strategy Health Checklist passe

---

### Passerelle de sortie

Une fois que la migration est validée :

| Délai | Action |
|-----------|--------|
| Semaines 3-4 | Faire les premiers ajustements de cible (incréments de 10-15% vers la cible calculée) |
| Mois 2+ | Entrer dans une cadence d'optimisation régulière |
| Quand vous êtes prêt à scaler | Lancer [SOP - Scaler encheres et budgets](<Enchères - Scaler les enchères et budgets.md>) |

**En cas de problème :**

| Problème | Rediriger vers |
|-------|----------|
| La performance ne se stabilise pas après 30 jours | Tableau de dépannage de [Bid Strategy Health Checklist](<Enchères - [Review] Santé de la stratégie d'enchères.md>) |
| Besoin de consolider les données entre campagnes | [SOP - Configurer les strategies d'encheres portefeuille](<Enchères - Configurer les stratégies d'enchères de portefeuille.md>) |
| Les cibles doivent être recalculées | [SOP - Calculer les objectifs d'encheres](<Enchères - Calculer les objectifs d'enchères.md>) |

---

### FAQ

**Q : Dois-je utiliser une expérimentation de campagne ou une bascule directe ?**

R : Utilisez une expérimentation de campagne pour les campagnes à enjeux élevés où vous avez besoin d'une preuve statistique avant de vous engager. Utilisez une bascule directe quand vous avez des données solides (50+ conversions/mois) et êtes confiant dans la stratégie. La migration progressive (Max Conv d'abord, puis ajout de la cible) est un bon compromis.

**Q : Que faire si la performance chute après la bascule ?**

R : D'abord, assurez-vous que la période d'apprentissage est terminée et que vous excluez le délai de conversion de votre analyse. Si la performance est réellement moins bonne après une évaluation complète, consultez le tableau de dépannage de la Bid Strategy Health Checklist. Causes fréquentes : volume de conversions insuffisant, cibles irréalistes ou problèmes de tracking.

**Q : Combien de temps dois-je attendre avant de conclure que la migration a réussi ?**

R : Au minimum, attendez une période d'apprentissage complète (deux cycles de conversion) plus deux cycles de conversion complets. Pour la plupart des comptes, cela représente 3-6 semaines de données avant de tirer une conclusion définitive.

---

### Référence rapide : bibliothèque support

| Document | Type | Utilisé dans |
|----------|------|---------|
| [Bid Strategy Selection Reference](<Enchères - Sélection de stratégie d'enchères.md>) | Référence | Phase 2 (confirmation de la stratégie cible) |
| [Bid Targets Reference](<Enchères - Cibles d'enchères.md>) | Référence | Phase 2 (définition de la cible initiale) |
| [Stratégies d'enchères intelligentes Mechanics Reference](<Enchères - Mécanismes des stratégies d'enchères intelligentes.md>) | Référence | Phase 4 (gestion de la période d'apprentissage) |
| [Bid Strategy Health Checklist](<Enchères - [Review] Santé de la stratégie d'enchères.md>) | Checklist | Phase 4 (validation post-migration) |

---

### Procédures liées

| SOP | Relation |
|-----|-------------|
| [SOP - Selectionner une strategie d'encheres](<Enchères - Sélectionner une stratégie d'enchères.md>) | Amont (détermine la stratégie cible) |
| [SOP - Calculer les objectifs d'encheres](<Enchères - Calculer les objectifs d'enchères.md>) | Amont (fournit la CPA/ROAS cible) |
| [SOP - Configurer les encheres basees sur les conversions](<../suivi/Suivi - Configurer le suivi des conversions Google Ads.md>) | Alternative (pour les nouvelles campagnes qui démarrent en stratégies d'enchères intelligentes) |
| [SOP - Configurer les encheres basees sur la valeur](<Enchères - Configurer les enchères basées sur la valeur.md>) | Alternative (pour une migration basée sur la valeur) |
| [SOP - Configurer les strategies d'encheres portefeuille](<Enchères - Configurer les stratégies d'enchères de portefeuille.md>) | Conditionnel (si une mutualisation des données est nécessaire) |
| [SOP - Scaler encheres et budgets](<Enchères - Scaler les enchères et budgets.md>) | Aval (une fois la migration stable) |

---

### Erreurs fréquentes

| Erreur | Pourquoi ça arrive | Comment l'éviter |
|---------|----------------|--------------|
| Revenir en arrière pendant la période d'apprentissage | Panique des parties prenantes face à des métriques volatiles | Briefer les parties prenantes avant la migration, définir un calendrier d'évaluation clair |
| Définir une cible initiale trop serrée | Utiliser la cible calculée au lieu de la moyenne actuelle | Commencer généreux, resserrer progressivement |
| Oublier de documenter la référence | Impossible de comparer la performance avant/après | Compléter la Phase 1 avant tout changement |
| Ne pas exclure le délai de conversion de l'évaluation | Des données incomplètes font paraître la performance plus mauvaise | Toujours exclure les [délai de conversion] derniers jours |
| Faire plusieurs changements en même temps que la bascule de stratégie | Impossible d'isoler l'impact de la stratégie | Ne changer que la stratégie d'enchères, rien d'autre |
