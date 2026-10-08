# Exécuter une experimentation de campagne

> **Plateforme :** Google Ads
> **Catégorie :** Strategie
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Cette SOP vous guide pour concevoir, lancer, surveiller et conclure une expérimentation de campagne Google Ads avec des résultats statistiquement valides.

> ❓ **La question clé :** Comment mener une expérimentation qui produit des résultats fiables et actionnables ?

Une expérimentation mal menée fait perdre du temps et donne une fausse confiance. Cette SOP garantit que vos expérimentations sont conçues correctement et produisent des conclusions valides.

---

## Ce que cette SOP ne couvre PAS

Cette SOP ne couvre **pas :**

- Expliquer quand tester plutôt que d'implémenter directement (Voir : [Testing and Experimentation Mental Model](<../../01-strategie/experimentation/Expérimentation - Tests et expérimentations.md>))
- Détailler toutes les options de configuration d'une expérimentation (Voir : [Experiment Configuration Reference](<Strategie - Configuration des expériences.md>))
- L'expérimentation au niveau de l'annonce au sein des RSA (c'est automatique)
- Remplacer l'analyse avant/après pour les changements où les expérimentations ne sont pas possibles

## Quand utiliser cette SOP

Lancez cette SOP quand :

- Vous testez des changements de stratégie d'enchères
- Vous testez des ajustements de CPA cible/ROAS
- Vous testez des ajouts ou des changements d'audience
- Vous testez des changements de landing page au niveau de la campagne
- Tout changement à fort impact dont le résultat est incertain

---

## Avant de commencer

### Prérequis

- Une hypothèse claire (ce que vous attendez et pourquoi)
- Une campagne au volume suffisant (100+ conversions/mois)
- Une métrique principale de succès
- Des métriques secondaires (garde-fous)
- L'alignement des parties prenantes sur la durée du test

### Documents de référence (à garder ouverts)

| Document | Utilisé pour |
|----------|----------|
| [Testing and Experimentation Mental Model](<../../01-strategie/experimentation/Expérimentation - Tests et expérimentations.md>) | Méthode |
| [Experiment Configuration Reference](<Strategie - Configuration des expériences.md>) | Paramètres |
| [Experiment Quality Checklist](<Strategie - [Review] Qualité des expérimentations.md>) | Validation pré-lancement |
| [Google Ads Metrics Reference](<../optimisation/Optimisation - Alertes et règles Google Ads.md>) | Définitions des métriques |

---

## Porte de décision : une expérimentation est-elle appropriée ?

Avant de continuer, confirmez qu'une expérimentation est la bonne approche :

| Si... | Alors... |
|-------|---------|
| Le changement est à faible impact (<10 % d'effet potentiel) | Implémentez directement, surveillez |
| Vous êtes certain que le changement est meilleur | Implémentez directement, surveillez |
| Le volume est trop faible (<100 conv/mois) | Décidez au meilleur jugement, surveillez |
| Fort impact ET incertain ET volume suffisant | ✅ Lancez une expérimentation |

> ⚠️ **N'expérimentez pas sur tout :** les expérimentations ont un coût (temps, complexité). Réservez-les aux changements à fort impact et incertains.

---

## Cadre d'exécution

| Phase | Objectif | Résultat |
|-------|---------|--------|
| **Phase 1️⃣ : Concevoir** | Définir l'hypothèse et les critères de succès | Plan d'expérimentation |
| **Phase 2️⃣ : Configurer** | Créer un brouillon et configurer l'expérimentation | Expérimentation prête à lancer |
| **Phase 3️⃣ : Lancer et surveiller** | Faire tourner l'expérimentation et guetter les problèmes | Expérimentation en cours |
| **Phase 4️⃣ : Conclure et appliquer** | Analyser les résultats et agir | Résultat documenté |

---

## Phase 1️⃣: Conception (avant Google Ads)

### 1.1 Rédiger l'hypothèse

Documentez une hypothèse précise et testable :

**Modèle d'hypothèse :**
```
Si nous [changeons X], alors [la métrique Y] va [augmenter/baisser] de [Z %]
parce que [raisonnement].
```

**Exemple :**
```
Si nous passons de Maximiser les conversions à CPA cible à 50 €,
alors le CPA baissera de 15 % tout en maintenant 90 %+ du volume actuel
parce que la cible explicite limitera les conversions à coût élevé.
```

### 1.2 Définir les critères de succès

| Élément | Définition |
|---------|------------|
| Métrique principale | [ex : CPA] |
| Seuil de succès | [ex : 10 %+ d'amélioration] |
| Métriques garde-fous | [ex : volume de conversions, ROAS] |
| Seuils des garde-fous | [ex : le volume reste au-dessus de 90 %] |
| Niveau de confiance | 95 % (par défaut) |

### 1.3 Calculer la durée requise

**Étape 1️⃣ : Estimer les conversions requises**

| Taille d'effet à détecter | Conversions nécessaires par bras |
|----------------------|---------------------------|
| 20 %+ | 100-150 |
| 15 % | 200-300 |
| 10 % | 400-500 |

**Étape 2️⃣ : Calculer la durée**

```
Durée = (Conversions nécessaires par bras × 2) ÷ (Conversions mensuelles ÷ 30)
      = ___ jours

Ajouter le délai de conversion : + ___ jours
Ajouter la marge de période d'apprentissage : + 7 jours (si test de Stratégies d'enchères intelligentes)

Durée totale : ___ jours (minimum 14 jours)
```

### 1.4 Documenter le plan d'expérience

```
PLAN D'EXPÉRIMENTATION
======================
Nom : [Nom descriptif]
Campagne : [Nom de la campagne]
Hypothèse : [Hypothèse complète]

Critères de succès :
- Principal : [Métrique] s'améliore de [X %]
- Garde-fous : [Métrique] reste au-dessus de [seuil]

Configuration :
- Répartition du trafic : 50/50
- Durée : [X] jours
- Date de début : [Date]
- Date de fin : [Date]

Règles de décision :
- Si significatif + positif : Appliquer le traitement
- Si significatif + négatif : Garder le contrôle
- Si non significatif : [Décision]
```

---

## Phase 2️⃣: Configuration

### 2.1 Créer une campagne en brouillon

1. Rendez-vous sur la campagne que vous testez
2. Cliquez sur **Expériences** dans le menu de gauche
3. Cliquez sur **+ Expérience personnalisée**
4. Cliquez sur **Créer une expérience** > **Créer un brouillon**
5. Nommez le brouillon : `[Nom de la campagne] - [Variable de test] - Brouillon`

### 2.2 Modifier le brouillon avec la variable de test

Dans la campagne en brouillon, effectuez UNIQUEMENT le changement à tester :

| Type de test | Changement dans le brouillon |
|-----------|-----------------|
| Stratégie d'enchères | Modifier le paramètre de stratégie d'enchères |
| CPA cible/ROAS | Modifier la valeur cible |
| Audience | Ajouter ou retirer une audience |
| Landing page | Modifier les URL finales |

> ⚠️ **Ne changez qu'une seule chose :** si vous changez plusieurs variables, vous ne pouvez pas isoler celle qui a causé le résultat.

### 2.3 Configurer l'expérience

1. Retournez dans **Expériences**
2. Sélectionnez votre brouillon
3. Cliquez sur **Programmer**
4. Configurez :

| Paramètre | Valeur |
|---------|-------|
| Nom de l'expérience | `[Campagne] - [Test] - [Date de début]` |
| Répartition du trafic | 50 % (sauf raison spécifique de faire autrement) |
| Date de début | [Votre date de début] |
| Date de fin | [Votre date de fin calculée] |
| Synchronisation | Quotidienne |
| Objectifs | Sélectionnez votre action de conversion principale |

### 2.4 Dérouler la checklist pré-lancement

Exécutez [Experiment Quality Checklist](<Strategie - [Review] Qualité des expérimentations.md>) :

- [ ] L'hypothèse est documentée
- [ ] Une seule variable diffère entre le contrôle et le traitement
- [ ] La taille d'échantillon et la durée sont calculées
- [ ] Les critères de succès sont définis
- [ ] La campagne a un volume suffisant
- [ ] Aucune autre expérimentation ne tourne sur cette campagne
- [ ] L'équipe est informée (aucun changement pendant le test)

---

## Phase 3️⃣: Lancer et surveiller

### 3.1 Lancer l'expérience

1. Vérifiez tous les paramètres une dernière fois
2. Cliquez sur **Lancer**
3. Vérifiez que l'expérience s'affiche comme « En cours » dans la section Expériences

### 3.2 Définir le planning de surveillance

| Période | Vérification |
|-----------|-------|
| Jour 1 | Vérifier que les deux bras reçoivent du trafic |
| Jour 2-3 | Vérifier les problèmes de règle et de diffusion |
| Hebdomadaire | Vérifier l'absence d'échec catastrophique (>30 % pire) |
| Date de fin | Analyse complète |

### 3.3 Règles pendant l'expérience

| À FAIRE | À NE PAS FAIRE |
|----|-------|
| Surveiller les problèmes de diffusion | Arrêter tôt parce qu'un bras « semble » meilleur |
| Guetter l'échec catastrophique | Modifier quoi que ce soit dans l'un ou l'autre bras |
| Vérifier les violations de règle | Lancer d'autres expérimentations sur cette campagne |
| Documenter tout facteur externe | Ajuster les budgets ou les enchères |

### 3.4 Critères d'arrêt anticipé

N'arrêtez de façon anticipée que si :

| Condition | Action |
|-----------|--------|
| Un bras est >30 % pire ET statistiquement significatif | Arrêter l'expérience, garder le contrôle |
| Un problème technique/de règle empêche la diffusion | Mettre en pause, corriger, relancer |
| Un facteur externe invalide le test | Arrêter, documenter, relancer plus tard |

> ⚠️ **Arrêter tôt crée un risque :** la variation aléatoire crée des séries. N'arrêtez de façon anticipée que pour un véritable échec catastrophique, pas parce qu'un bras « semble » pire.

---

## Phase 4️⃣: Conclure et appliquer

### 4.1 Attendre la durée complète + le délai

Après la date de fin :

1. Attendez un nombre de jours supplémentaires égal à votre délai de conversion
2. Assurez-vous que toutes les conversions sont attribuées

### 4.2 Analyser les résultats

Dans la section Expériences, examinez :

| Métrique | Contrôle | Traitement | Différence | Significatif ? |
|--------|---------|-----------|------------|--------------|
| Principale : ___ | ___ | ___ | ___% | Oui/Non |
| Garde-fou : ___ | ___ | ___ | ___% | Oui/Non |
| Garde-fou : ___ | ___ | ___ | ___% | Oui/Non |

### 4.3 Interpréter les résultats

| Résultat | Interprétation | Action |
|--------|---------------|--------|
| Significatif + positif sur la principale | Le traitement est meilleur | Appliquer le traitement |
| Significatif + négatif sur la principale | Le contrôle est meilleur | Garder le contrôle |
| Significatif sur la principale, dépassement d'un garde-fou | Le traitement gagne mais à un coût | Évaluer le compromis |
| Non significatif après la durée complète | Impossible de distinguer | Choisir selon des facteurs secondaires |

### 4.4 Appliquer le gagnant

Si le traitement gagne :

1. Dans Expériences, cliquez sur **Appliquer**
2. Sélectionnez **Appliquer à la campagne d'origine**
3. Confirmez les changements

Si le contrôle gagne :

1. Dans Expériences, cliquez sur **Arrêter l'expérience**
2. Sélectionnez **Conserver les paramètres de la campagne d'origine**

### 4.5 Documenter les apprentissages

```
RÉSULTATS DE L'EXPÉRIMENTATION
==============================
Nom : [Nom de l'expérience]
Durée : [Début] à [Fin]
Résultat : [Traitement gagnant / Contrôle gagnant / Non concluant]

Résultats :
| Métrique | Contrôle | Traitement | Diff | Signif ? |
|--------|---------|-----------|------|------|
| [Principale] | ___ | ___ | ___% | O/N |
| [Garde-fou 1] | ___ | ___ | ___% | O/N |
| [Garde-fou 2] | ___ | ___ | ___% | O/N |

Conclusion :
[Ce que nous avons appris]

Appliqué :
[Quelle action a été prise]

Implications :
[Ce que cela signifie pour les autres campagnes/tests futurs]
```

---

## Validation et critères de complétion

Cette SOP est terminée quand :

- [ ] L'expérimentation a tourné pendant toute la durée prévue
- [ ] Les résultats sont statistiquement significatifs OU la durée est terminée
- [ ] Les métriques principale et garde-fous sont analysées
- [ ] Le gagnant est appliqué OU le contrôle est conservé
- [ ] Les résultats sont documentés
- [ ] Les apprentissages sont partagés avec l'équipe

---

## Passerelle de sortie

Après la conclusion de l'expérimentation :

| Délai | Action |
|-----------|--------|
| Immédiatement | Appliquer le gagnant ou garder le contrôle |
| 7 jours | Surveiller la stabilité du changement appliqué |
| 14 jours | Confirmer que les résultats tiennent en production |
| Prochaine planification | Envisager des tests similaires pour d'autres campagnes |

**Si les résultats sont non concluants :**

| Facteur | À considérer |
|--------|----------|
| Tendance directionnelle | Si un bras a tendanciellement mieux performé, appliquer avec prudence |
| Simplicité | À égalité, préférer l'option la plus simple |
| Alignement stratégique | Choisir ce qui s'inscrit dans la stratégie globale |
| Prolonger le test | Si proche de la significativité, ajouter 1 à 2 semaines |

---

## Référence rapide : bibliothèque support

| Document | Type | Utilisé dans |
|----------|------|---------|
| [Testing and Experimentation Mental Model](<../../01-strategie/experimentation/Expérimentation - Tests et expérimentations.md>) | Modèle mental | Phase 1 |
| [Experiment Configuration Reference](<Strategie - Configuration des expériences.md>) | Référence | Phase 2 |
| [Experiment Quality Checklist](<Strategie - [Review] Qualité des expérimentations.md>) | Checklist | Phase 2 |
| [Google Ads Metrics Reference](<../optimisation/Optimisation - Alertes et règles Google Ads.md>) | Référence | Phase 4 |

---

## Procédures liées

| SOP | Relation |
|-----|--------------|
| [SOP - Revue de performance hebdomadaire](<../../01-strategie/reporting/Reporting - Revue de performance hebdomadaire.md>) | Amont (identifie le besoin de test) |

---

## Erreurs fréquentes

| Erreur | Pourquoi ça arrive | Comment l'éviter |
|---------|----------------|--------------|
| Arrêter trop tôt | Impatience, un bras « semble » meilleur | S'engager à l'avance sur la durée |
| Modifier la campagne pendant le test | Oubli que le test tournait | Prévenir l'équipe, bloquer le calendrier |
| Aucune hypothèse documentée | Test lancé dans la précipitation | Rédiger l'hypothèse d'abord |
| Tester de petits effets | Amélioration de 5 % attendue | Se concentrer sur un potentiel de 10 %+ |
| Aucun apprentissage capturé | Test terminé, on est passé à autre chose | Documenter sous 48 heures |
| Plusieurs variables modifiées | Vouloir tout tester à la fois | Une seule variable |
