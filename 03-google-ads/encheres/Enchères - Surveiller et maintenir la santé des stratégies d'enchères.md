# Surveiller et maintenir la sante des stratégies d'enchères

> **Plateforme :** Google Ads
> **Catégorie :** Enchères
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Phase 1️⃣ : Vérifier le statut d'apprentissage

### 1.1 Récupérer le statut d'apprentissage de toutes les stratégies

Ouvrir chaque stratégie d'enchère active et noter son statut :

1. Naviguer vers la vue campagne ou Outils > Budgets et enchères > Stratégies d'enchère
2. Vérifier la colonne "Type de stratégie d'enchère" pour chaque campagne
3. Cliquer sur le nom de la stratégie pour afficher le rapport de stratégie
4. Noter l'indicateur de statut

Enregistrer dans ce tableau :

| Campagne / Portefeuille | Stratégie d'enchère | Statut | Jours dans le statut actuel | Dernier changement |
|---------------------|-------------|--------|----------------------|-----------------|
| | | | | |

### 1.2 Interpréter le statut d'apprentissage

| Statut | Signification | Action |
|--------|---------|--------|
| **Eligible** | La stratégie est pleinement opérationnelle, sortie d'apprentissage | Continuer vers Phase 2️⃣ |
| **Learning** | L'algorithme se calibre après un changement récent | Aucun changement. Attendre la fin de la période d'apprentissage (deux cycles de conversion). (Voir : [Mécanismes Stratégies d'enchères intelligentes](<Enchères - Mécanismes des stratégies d'enchères intelligentes.md>)) |
| **Learning (limited)** | L'algorithme ne peut pas sortir du learning faute de données suffisantes | Diagnostiquer la cause (voir 1.3). Pas de changement de cible. |
| **Limited by budget** | Le budget restreint la stratégie | Noter pour évaluation en Phase 3️⃣ |
| **Misconfigured** | Problème de configuration empêchant le fonctionnement | Corriger immédiatement (mauvaise action de conversion, paramètres en conflit) |

> ⚠️ **Ne jamais modifier une stratégie en statut "Learning" :** Tout changement pendant le learning réinitialise le compteur d'apprentissage et étend la période de volatilité. Seule exception : corriger une vraie mauvaise configuration.

### 1.3 Diagnostiquer "Learning (limited)"

Si une stratégie affiche "Learning (limited)", vérifier ces causes dans l'ordre et s'arrêter à la première correspondance :

| Vérification (dans l'ordre) | Si OUI |
|-------------------|--------|
| Volume de conversion insuffisant ? | Aller en Phase 2️⃣ |
| Budget trop bas pour assez d'enchères ? | Augmenter le budget ou consolider en portefeuille |
| Problème de tracking de conversion ? | Corriger le tracking d'abord (ce n'est pas un problème d'enchères) |
| Cible trop agressive ? | Marquer pour Phase 4️⃣ (assouplissement de cible) |

> ↪️ **Voir [Mécanismes Stratégies d'enchères intelligentes](<Enchères - Mécanismes des stratégies d'enchères intelligentes.md>)** pour les diagnostics détaillés de période d'apprentissage.

### 1.4 Poser les marqueurs HOLD

Pour chaque stratégie actuellement en "Learning" ou "Learning (limited)" :

- Marquer avec un drapeau **HOLD** : aucun changement de cible, budget ou structure tant que le learning n'est pas terminé
- Noter la date de fin d'apprentissage attendue (date du dernier changement + 14 jours)
- Briefer les parties prenantes : la performance pendant le learning n'est pas représentative

---

## Phase 2️⃣ : Vérifier la suffisance du volume de conversion

### 2.1 Récupérer les données de conversion

Pour chaque stratégie (au niveau campagne ou portefeuille), récupérer les données de conversion sur une fenêtre de 30 jours + le délai de conversion. Par exemple, si le délai de conversion est de 7 jours, récupérer les 37 derniers jours et exclure les 7 derniers de l'analyse pour éviter de sous-compter.

| Campagne / Portefeuille | Stratégie | Conversions (30j) | Conv. avec valeur (30j) | Seuil requis | Suffisant ? |
|---------------------|-------------|-------------------|----------------------|-------------------|-------------|
| | | | | | |

### 2.2 Appliquer les seuils

Utiliser les seuils de la [Référence Seuils de volume de conversions](<../suivi/Suivi - Seuils de volume de conversions.md>) :

| Stratégie | Minimum (absolu) | Minimum fonctionnel | Recommandé |
|----------|--------------------|--------------------|-------------|
| Maximiser les conversions | 15/mois | 30/mois | 50+/mois |
| CPA cible | 15/mois | 30/mois | 50+/mois |
| Maximiser la valeur de conversion | 15/mois | 50/mois | 50+/mois |
| ROAS cible | 30/mois | 50/mois | 50+/mois |

Pour les **stratégies d'enchère portefeuille**, appliquer le seuil au total combiné de toutes les campagnes liées.

### 2.3 Combler les écarts de volume

Si une stratégie est sous son minimum fonctionnel, appliquer ces tactiques par ordre de priorité :

1. **Vérifier le tracking de conversion :** Les conversions remontent-elles correctement ? Lacunes, problèmes de tag, changements d'attribution ? Corriger le tracking avant de changer de stratégie.
2. **Consolider en stratégie portefeuille :** Regrouper 2-3 campagnes ayant la même cible d'efficacité dans un portefeuille. Leur volume combiné compte pour le seuil.
3. **Retirer la cible d'efficacité temporairement :** Passer de CPA cible à Maximiser les conversions (sans cible), ou de ROAS cible à Maximiser la valeur de conversion (sans cible). Laisser l'algorithme accumuler des données sans contrainte.
4. **Envisager une micro-conversion :** Si les macro-conversions sont trop rares, optimiser temporairement vers un événement à plus fort volume (ajout au panier, démarrage de formulaire) le temps d'accumuler des données.
5. **Augmenter le budget :** Si la campagne a impressions et clics mais pas assez de conversions, le budget peut être trop bas pour atteindre le seuil. Augmenter par incréments de 20%.

> 💡 **Les stratégies portefeuille sont la tactique de consolidation la moins risquée :** Vous gardez budgets et ciblages séparés tout en mutualisant les données de conversion pour l'algorithme. Cinq campagnes à 12 conversions chacune deviennent un portefeuille à 60 combinées.

### 2.4 Évaluation séparée : comptes Shopping/revenue vs. comptes lead/conversion

L'évaluation du volume diffère selon le type de compte :

| Type de compte | Métrique clé | Nuance sur le seuil |
|-------------|-----------|-----------------|
| **E-commerce / Revenue** | Conversions avec valeur (30j) | ROAS cible demande 50+ conversions/mois avec des valeurs variées. Si toutes les valeurs sont identiques (ex. produit unique), ROAS cible n'apporte rien de plus que CPA cible. |
| **Lead Gen / SaaS** | Conversions (30j) | Si vous utilisez l'import de conversions offline, le seuil s'applique à l'action importée, pas à la soumission de formulaire. Tenir compte du délai d'import (souvent 7-30 jours). |

---

## Phase 3️⃣ : Évaluer la performance vs. cible

### 3.1 Construire la grille de performance

Pour chaque stratégie qui a passé la Phase 1️⃣ (pas en learning) et la Phase 2️⃣ (volume suffisant), enregistrer :

| Campagne / Portefeuille | Cible | Réel (30j) | Variance | Budget dépensé (%) | IS lost rank | IS lost budget |
|---------------------|--------|-------------|----------|------------------|-------------|---------------|
| | | | | | | |

**Variance** = (Réel - Cible) / Cible. Pour le CPA, une variance négative signifie que le CPA réel est plus haut (pire) que la cible. Pour ROAS/POAS, une variance négative signifie que le réel est plus bas (pire) que la cible.

### 3.2 Classer chaque stratégie

| Plage de variance | Classification | Action |
|---------------|---------------|--------|
| Dans +/- 10% de la cible | **En bonne santé** | Pas d'action. Continuer la surveillance. |
| 10-25% pire que la cible | **Sous-performance** | Lancer le diagnostic (3.3) |
| 25%+ pire que la cible | **En échec** | Lancer le diagnostic (3.3), priorité haute |
| 10-25% mieux que la cible | **Sur-efficace** | Vérifier si du volume est sacrifié. Possible zone d'affamage. |
| 25%+ mieux que la cible | **Affamée** | La stratégie est probablement trop agressive. Marquer pour assouplissement en Phase 4️⃣. |

### 3.3 Diagnostiquer les stratégies sous-performantes

Quand une stratégie sous-performe ou échoue, dérouler ce diagnostic dans l'ordre. S'arrêter à la première cause racine identifiée :

| Étape | Vérification | Si OUI |
|------|-------|--------|
| 1 | Un changement de structure de campagne a perturbé le learning ? | Attendre la fin du learning |
| 2 | Des requêtes non pertinentes consomment le budget ? Nouveaux concurrents ? | Ajouter des négatifs, resserrer les types de correspondance, voir Insights sur les enchères |
| 3 | Marché qui rétrécit (déclin saisonnier, changement de tendance) ? | Ajuster les attentes, vérifier si la cible a du sens à plus faible volume |
| 4 | Des négatifs bloquent des requêtes utiles ? | Retirer ou modifier les négatifs trop larges |
| 5 | Fenêtre d'évaluation plus courte que le cycle de conversion ? | Étendre la fenêtre, exclure les [délai de conversion] derniers jours |
| 6 | Saisonnalité ou facteur externe (fêtes, promos concurrents) ? | Utiliser les ajustements de saisonnalité pour les événements courts |
| 7 | Taux de conversion en baisse (problème LP ou offre) ? | Corriger la landing page ou l'offre (ce n'est pas un problème d'enchères) |

Si rien de ce qui précède ne s'applique, la cible est peut-être insoutenable. Marquer pour ajustement en Phase 4️⃣.

> ↪️ **Voir [Checklist Santé de la stratégie de bid](<Enchères - [Review] Santé de la stratégie d'enchères.md>)** pour le diagnostic complet avec les vérifications détaillées par étape.

### 3.4 Stratégies limitées par le budget

Si une stratégie affiche 100% de dépense budget et un IS lost to budget élevé :

| IS lost to budget | Interprétation | Action |
|-------------------|---------------|--------|
| 0-10% | Normal, pression budget mineure | Pas d'action |
| 10-25% | Limitation modérée, du volume reste sur la table | Envisager une augmentation si la croissance est prioritaire |
| 25%+ | Limitation sévère, volume perdu significatif | Augmenter le budget (voir Phase 4️⃣) ou poser des cibles juste sous la performance récente pour récupérer du volume dans le budget actuel |

**Récupérer du volume dans la contrainte budget :** Si vous ne pouvez pas augmenter le budget, fixer la cible un peu moins agressive que la performance réelle récente. Pour le CPA, cible 5-10% au-dessus du CPA réel récent. Pour le ROAS, cible 5-10% en dessous du ROAS réel récent. Cela donne plus de flexibilité d'enchère à l'algorithme pour participer à plus d'enchères sans augmenter le budget.

---

## Phase 4️⃣ : Ajuster les cibles

### 4.1 Déterminer quelles stratégies nécessitent un ajustement

D'après les conclusions de la Phase 3️⃣, identifier les stratégies qui demandent un changement de cible :

| Campagne / Portefeuille | Cible actuelle | Problème | Direction | Nouvelle cible proposée |
|---------------------|---------------|-------|-----------|-------------------|
| | | | | |

### 4.2 Appliquer le protocole d'ajustement progressif

Tous les changements de cible suivent la même approche par incréments :

| Type d'ajustement | Incrément max par changement | Délai entre ajustements |
|----------------|------------------------|-------------------------------|
| Hausse de cible CPA (assouplissement) | 15-20% | 1-2 jours de surveillance, puis un cycle de conversion |
| Baisse de cible CPA (resserrement) | 10-15% | 1-2 jours de surveillance, puis un cycle de conversion |
| Baisse de cible ROAS (assouplissement) | 15-20% | 1-2 jours de surveillance, puis un cycle de conversion |
| Hausse de cible ROAS (resserrement) | 10-15% | 1-2 jours de surveillance, puis un cycle de conversion |
| Cible POAS : mêmes règles que ROAS | | |

> ⚠️ **Les changements supérieurs à 20% déclenchent une nouvelle période d'apprentissage :** Si votre cible doit être corrigée de plus de 20%, découper en deux incréments ou plus, espacés d'un cycle de conversion.

### 4.3 Étapes d'exécution des ajustements de cible

1. **Enregistrer la cible actuelle et la performance réelle** dans votre feuille de suivi
2. **Calculer la nouvelle cible** selon les limites d'incrément ci-dessus
3. **Appliquer le changement** dans Google Ads (au niveau campagne ou portefeuille)
4. **Surveiller pendant 1-2 jours** pour repérer toute anomalie immédiate (pic de dépense, crash de volume)
5. **Attendre un cycle de conversion complet** avant d'évaluer l'ajustement
6. **Évaluer :** comparer la performance réelle à la nouvelle cible sur une fenêtre propre (en excluant le délai de conversion)
7. **Si la cible n'est pas encore au bon niveau :** faire un autre ajustement par incrément et répéter

### 4.4 Ajustements de cible pour les campagnes limitées par le budget

Quand une stratégie est limitée par le budget et que vous ne pouvez pas augmenter le budget :

1. Trouver le CPA/ROAS/POAS réel de la campagne sur les 14-30 derniers jours
2. Fixer la cible 5-10% pire que la performance réelle (CPA plus haut ou ROAS plus bas)
3. Cela donne au Stratégies d'enchères intelligentes plus de flexibilité pour participer à plus d'enchères
4. Surveiller le rythme de dépense et le volume : l'IS lost to budget devrait baisser

> 💡 **Une cible moins agressive peut améliorer à la fois volume et efficacité dans un budget limité :** Quand le budget est la contrainte, une cible plus serrée force l'algorithme à enchérir plus haut sur moins d'enchères. Une cible un peu plus large laisse l'algorithme étaler le budget sur plus d'enchères à des CPC plus bas, donnant plus de clics et conversions au même budget.

### 4.5 Documenter tous les ajustements

Enregistrer chaque changement de cible avec date, ancienne valeur, nouvelle valeur et raison. Cela crée une piste d'audit pour les revues futures et évite les doublons.

| Date | Campagne / Portefeuille | Ancienne cible | Nouvelle cible | Raison | Prochaine revue |
|------|---------------------|-----------|-----------|--------|-------------|
| | | | | | |

---

## Phase 5️⃣ : Évaluer la maturité pour migration

### 5.1 Identifier les opportunités de migration

Examiner chaque stratégie d'enchère par rapport à l'échelle de migration :

```
CPC manuel / Max Clicks
        |
        v  (quand : ~30 conversions accumulées, stable)
Max Conversions (sans cible)
        |
        v  (quand : 30+ conversions/mois, CPA constant)
CPA cible
        |
        v  (quand : valeurs de conversion fiables
        |   et variées d'une transaction à l'autre)
ROAS cible
        |
        v  (quand : suivi du profit en place
        |   et données de marge fiables)
Target POAS (enchère basée sur le profit)
```

### 5.2 Déclencheurs de migration

| Stratégie actuelle | Migrer vers | Conditions de déclenchement | Toutes doivent être vraies |
|-----------------|-----------|-------------------|-----------------|
| CPC manuel | Maximiser les clics | Vouloir automatiser la gestion des enchères, objectif trafic | Mots-clés à exclure en place, ciblage bien défini |
| Maximiser les clics | Maximiser les conversions (sans cible) | Tracking de conversion qui fonctionne, ~30 conversions accumulées | Actions de conversion correctement configurées, pas de lacunes de tracking |
| Maximiser les conversions (sans cible) | CPA cible | 30+ conversions/mois sur 2+ mois consécutifs, CPA stable | CPA de rentabilité calculé, cible située entre le seuil de rentabilité et la zone d'affamage |
| CPC manuel | CPA cible | 30+ conversions/mois déjà (depuis d'autres campagnes sur les mêmes requêtes), historique de compte | Le Stratégies d'enchères intelligentes a des données au niveau requête, CPA de rentabilité connu |
| Maximiser la valeur de conversion (sans cible) | ROAS cible | 50+ conversions/mois avec valeur, ROAS stable sur 2+ mois | Valeurs de conversion fiables, ROAS de rentabilité calculé |
| CPA cible | ROAS cible | Valeurs de conversion fiables et variées d'une transaction à l'autre | Toutes les conversions n'ont pas la même valeur, donnée de valeur dans le tag de conversion |
| ROAS cible | POAS cible | Suivi du profit en place (données panier ou marge dans le flux) | Marge brute ou marge contributive envoyée comme valeur de conversion, 60+ jours de données POAS observées |

### 5.3 Différences de migration : Shopping vs. lead gen

| Type de compte | Nuance de migration |
|-------------|-----------------|
| **E-commerce / Shopping** | CPA cible vers ROAS cible est la progression naturelle. ROAS cible vers tPOAS demande de la donnée profit dans le signal de conversion. La variance de marge produit rend les stratégies basées sur la valeur particulièrement puissantes en e-commerce. |
| **Lead Gen / SaaS** | CPA cible est souvent la destination finale, sauf si les valeurs de conversion offline varient selon la qualité du lead. Passer en ROAS cible uniquement si vous importez des valeurs de deal ou utilisez du lead scoring avec valeurs variées. POAS n'est pertinent que si vous pouvez importer le revenu/profit réel par lead. |

### 5.4 Exécution de la migration

Quand une stratégie est prête pour la migration :

1. **Ne pas basculer du jour au lendemain :** Utiliser une expérimentation campagne (split 50/50) pendant 30+ jours.
2. Fixer la cible de la nouvelle stratégie de façon conservatrice : un peu plus large que la performance actuelle.
3. Exclure la période d'apprentissage (deux cycles de conversion) de l'évaluation.
4. Comparer le profit net ou le volume de conversion (selon le type de stratégie) comme métrique principale.
5. Si l'expérimentation gagne : appliquer l'expérimentation. Si l'original gagne : terminer l'expérimentation et conserver la stratégie actuelle.

> ↪️ **Pour les étapes complètes de migration :** Voir [SOP - Migrer des encheres manuelles vers Stratégies d'enchères intelligentes](<Enchères - Migrer des enchères manuelles vers les stratégies d'enchères intelligentes.md>) pour le processus détaillé.

---

## Phase 6️⃣ : Revue des stratégies portefeuille

### 6.1 Vérifier le regroupement des campagnes

Pour chaque stratégie portefeuille, confirmer :

| Vérification | Critères de validation |
|-------|-------------|
| Même type de campagne | Toutes les campagnes liées sont du même type (Search avec Search, Shopping avec Shopping) |
| Même cible d'efficacité | Toutes les campagnes liées partagent un objectif CPA ou ROAS |
| Pas de campagnes obsolètes | Aucune campagne en pause ou terminée n'est encore liée au portefeuille |
| Contribution de volume | Aucune campagne ne fournit <5% des conversions du portefeuille (poids mort) |

Si une campagne n'a pas sa place, la retirer du portefeuille et lui assigner une stratégie au niveau campagne ou la déplacer dans un autre portefeuille.

### 6.2 Vérifier les plafonds de CPC

Les plafonds de CPC sont la mauvaise configuration la plus fréquente sur les portefeuilles. Pour chaque portefeuille :

| Vérification | État attendu | Si violé |
|-------|---------------|-------------|
| Plafond de CPC maximum | Désactivé (par défaut) | Retirer sauf justification explicite |
| Si le plafond de CPC max est activé : niveau du plafond | Au moins 3x le CPC moyen des 10-20 meilleurs termes de recherche convertissants | Augmenter le plafond ou le retirer |
| CPC des meilleurs mots-clés | Pas en plateau au niveau du plafond | Le plafond restreint : augmenter ou retirer |
| IS lost to rank | Pas en hausse depuis la pose du plafond | Le plafond empêche peut-être des enchères compétitives |
| Plafond de CPC minimum | Désactivé (pas de cas d'usage valide en compte standard) | Retirer immédiatement |

> ⚠️ **Les plafonds de CPC oubliés sont des tueurs de performance silencieux :** Un plafond posé il y a 6 mois à un niveau compétitif peut être très en deçà du marché actuel. Examiner tous les plafonds à chaque bilan de santé.

### 6.3 Revue budget pour les stratégies portefeuille

| Vérification | Quoi vérifier |
|-------|---------------|
| Allocation budget partagé | Aucune campagne ne consomme >60% du budget partagé de manière disproportionnée |
| Suffisance du budget | Le budget quotidien est au moins 10x le CPA cible (pour les stratégies CPA) |
| Budget vs. IS | L'IS lost to budget est suivi et actionnable |

### 6.4 Nettoyage des ajustements d'enchères

Confirmer qu'aucun ajustement d'enchère hors-exclusion n'est posé sur les campagnes Stratégies d'enchères intelligentes :

| Type d'ajustement | État attendu sur campagnes Stratégies d'enchères intelligentes |
|----------------|------------------------------------------|
| Appareil (hors-exclusion) | 0% ou retiré |
| Appareil (exclusion -100%) | Autorisé (seul type qui marche) |
| Localisation | 0% ou retiré |
| Planning d'annonce | 0% ou retiré |
| Audiences | 0% ou retiré |
| Démographie | 0% ou retiré |

Les ajustements d'enchères hors-exclusion sur Stratégies d'enchères intelligentes sont ignorés par l'algorithme. Ils créent une fausse confiance et encombrent le compte.

---

### Validation et critères de complétion

Cette SOP est terminée quand :

- [ ] Toutes les stratégies actives ont été vérifiées sur le statut d'apprentissage
- [ ] Aucun changement n'est en attente sur les stratégies en learning
- [ ] La suffisance du volume de conversion est vérifiée pour chaque stratégie
- [ ] Les stratégies sous-performantes ont été diagnostiquées avec causes racines identifiées
- [ ] Les ajustements de cibles ont été faits selon le protocole progressif (max 15-20% par incrément)
- [ ] Les opportunités de migration ont été évaluées contre les conditions de déclenchement
- [ ] Les stratégies portefeuille ont été revues sur regroupement, plafonds de CPC et ajustements
- [ ] Toutes les conclusions et changements sont documentés dans la feuille de suivi
- [ ] La prochaine date de revue est planifiée

---

### Passerelle de sortie

Une fois le bilan de santé terminé :

| Délai | Action |
|-----------|--------|
| 1-2 jours après les ajustements de cible | Contrôle ponctuel du rythme de dépense et du volume pour anomalies |
| Un cycle de conversion après les ajustements | Évaluer les stratégies ajustées contre les nouvelles cibles |
| 2 semaines | Relancer cette SOP si des ajustements majeurs ont été faits |
| Mensuelle (routine) | Programmer le prochain bilan de santé complet |
| Quand l'unit economics change | Recalculer le seuil de rentabilité via [SOP - Calculer les objectifs d'encheres](<Enchères - Calculer les objectifs d'enchères.md>) |

**En cas de problème :**

| Problème | Rediriger vers |
|-------|----------|
| La stratégie a besoin de scaler au-delà des cibles actuelles | [SOP - Scaler encheres et budgets](<Enchères - Scaler les enchères et budgets.md>) |
| La stratégie doit migrer vers un autre type | [SOP - Migrer des encheres manuelles vers Stratégies d'enchères intelligentes](<Enchères - Migrer des enchères manuelles vers les stratégies d'enchères intelligentes.md>) |
| Un portefeuille doit être créé ou reconfiguré | [SOP - Configurer les strategies d'encheres portefeuille](<Enchères - Configurer les stratégies d'enchères de portefeuille.md>) |
| Le tracking de conversion est cassé ou inexact | Corriger le tracking d'abord (ce n'est pas un problème d'enchères) |
| L'unit economics a changé | [SOP - Calculer les objectifs d'encheres](<Enchères - Calculer les objectifs d'enchères.md>) |
| L'allocation de budget doit être repensée | [SOP - Repartir le budget entre les campagnes](<Enchères - Répartir le budget entre les campagnes.md>) |

---

### FAQ

**Q : À quelle fréquence dois-je faire ce bilan de santé ?**

R : Mensuelle pour les comptes stables. Bi-hebdomadaire pour les comptes avec changements récents, dépense élevée ou performance volatile. Après tout changement majeur (changement de stratégie, changement de budget >30%, refonte de ciblage), à faire dans les 48h.

**Q : Que faire si une stratégie sous-performe mais est encore en learning ?**

R : Pas d'ajustement de cible pendant le learning. L'algorithme se calibre et la performance sera volatile. Attendre la fin du learning (deux cycles de conversion), puis évaluer. Seule exception : corriger une vraie mauvaise configuration (mauvaise action de conversion, tracking absent).

**Q : Dois-je ajuster les cibles proactivement pour les changements saisonniers ?**

R : Oui. Avant un pic saisonnier connu (Black Friday, fêtes), assouplir les cibles de 5-10% pour donner plus de flexibilité d'enchère à l'algorithme. Après le pic, resserrer. Utiliser les ajustements de saisonnalité Google Ads pour les événements courts (3-7 jours) où vous attendez un changement temporaire de taux de conversion.

**Q : Quand utiliser des ajustements de saisonnalité vs. des changements de cible ?**

R : Les ajustements de saisonnalité indiquent au Stratégies d'enchères intelligentes qu'il faut s'attendre à un changement temporaire du taux de conversion (ex. flash sale). À utiliser pour des événements de 1-7 jours. Pour des décalages plus longs (changements de demande sur plusieurs semaines), ajuster les cibles directement via le protocole progressif.

---

### Référence rapide : bibliothèque support

| Document | Type | Utilisé dans |
|----------|------|---------|
| [Checklist Santé de la stratégie de bid](<Enchères - [Review] Santé de la stratégie d'enchères.md>) | Checklist | Toutes les phases (portes de validation) |
| [Mécanismes Stratégies d'enchères intelligentes](<Enchères - Mécanismes des stratégies d'enchères intelligentes.md>) | Référence | Phase 1️⃣ (périodes d'apprentissage), Phase 3️⃣ (délai de conversion) |
| [Référence Seuils de volume de conversions](<../suivi/Suivi - Seuils de volume de conversions.md>) | Référence | Phase 2️⃣ (seuils de volume) |
| [Configuration des enchères](<Enchères - Configuration des enchères.md>) | Guide | Phase 6️⃣ (config portefeuille, plafonds de CPC) |
| [Scaling des enchères](<Enchères - Scaling des enchères.md>) | Modèle Mental | Phase 4️⃣ (zones PAR, direction de scaling) |
| [Optimisation profit-first](<../../01-strategie/fondamentaux/Fondamentaux - Optimisation profit-first.md>) | Théorie | Phase 5️⃣ (migration ROAS vers POAS) |
| [Rythme de dépense](<Enchères - Rythme de dépense.md>) | Référence | Phase 3️⃣ (stratégies limitées par le budget) |

---

### Procédures liées

| SOP | Relation |
|-----|-------------|
| [SOP - Scaler encheres et budgets](<Enchères - Scaler les enchères et budgets.md>) | Aval (quand le bilan de santé révèle des opportunités de scaling) |
| [SOP - Migrer des encheres manuelles vers Stratégies d'enchères intelligentes](<Enchères - Migrer des enchères manuelles vers les stratégies d'enchères intelligentes.md>) | Aval (quand les déclencheurs de migration sont remplis) |
| [SOP - Configurer les strategies d'encheres portefeuille](<Enchères - Configurer les stratégies d'enchères de portefeuille.md>) | Aval (quand une consolidation de volume est nécessaire) |
| [SOP - Calculer les objectifs d'encheres](<Enchères - Calculer les objectifs d'enchères.md>) | Amont (fournit les calculs de seuil de rentabilité et de cibles) |
| [SOP - Selectionner une strategie d'encheres](<Enchères - Sélectionner une stratégie d'enchères.md>) | Amont (détermine la stratégie initiale avant la surveillance) |
| [SOP - Configurer les encheres basees sur les conversions](<../suivi/Suivi - Configurer le suivi des conversions Google Ads.md>) | Lié (SOP de configuration que ce bilan de santé maintient) |
| [SOP - Configurer les encheres basees sur la valeur](<Enchères - Configurer les enchères basées sur la valeur.md>) | Lié (SOP de configuration que ce bilan de santé maintient) |
| [SOP - Repartir le budget entre les campagnes](<Enchères - Répartir le budget entre les campagnes.md>) | Lié (allocation budget quand des contraintes sont identifiées) |

---

### Erreurs fréquentes

| Erreur | Pourquoi ça arrive | Comment l'éviter |
|---------|----------------|--------------|
| Faire des changements pendant le learning | Impatience, pression des parties prenantes pour "réparer" la performance volatile | Briefer les parties prenantes avant tout changement, poser les drapeaux HOLD, attendre deux cycles de conversion |
| Ignorer le délai de conversion dans les évaluations | Évaluer les 7 derniers jours quand le cycle de conversion est de 14 | Toujours exclure les [délai de conversion] derniers jours de l'analyse |
| Sauts de cible importants (>25%) | Vouloir corriger la sous-performance d'un coup | Utiliser des incréments de 10-15%, espacés d'un cycle de conversion |
| Plafonds de CPC oubliés | Plafond posé il y a des mois sans jamais être revu | Vérifier tous les plafonds de portefeuille à chaque bilan de santé |
| Ne pas séparer l'évaluation Shopping vs. Lead Gen | Appliquer les mêmes seuils et la même logique à des comptes fondamentalement différents | Utiliser les tableaux par type de compte des Phases 2️⃣ et 5️⃣ |
| Traiter une baisse de volume comme un problème d'enchères | La cause racine est saisonnière, l'arrivée d'un concurrent ou un problème de landing page | Dérouler intégralement le diagnostic Phase 3️⃣ avant d'ajuster les cibles |
| Sauter la revue de portefeuille | Présumer que la config portefeuille ne dérive pas | Vérifier regroupement, plafonds de CPC et ajustements à chaque cycle |
