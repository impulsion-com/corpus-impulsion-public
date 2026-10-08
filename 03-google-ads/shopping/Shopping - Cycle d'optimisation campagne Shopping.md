# Cycle d'optimisation campagne Shopping

> **Plateforme :** Google Ads
> **Catégorie :** Shopping
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Cette SOP exécute un cycle d'optimisation structuré pour les campagnes Standard Shopping. Elle orchestre les documents support Shopping existants en une routine reproductible couvrant la santé du flux, la performance produit, les termes de recherche, les enchères et la structure.

> ❓ **La question clé :** Quelle est la séquence la plus efficace pour optimiser une campagne Shopping, et comment m'assurer que rien n'est oublié ?

---

## Ce que cette SOP ne couvre PAS

Cette SOP ne couvre **pas :**

- Configurer un flux de produits de zéro (Voir : [SOP - Configurer et optimiser le flux produits](<../flux-produit/Flux Produit - Configurer et optimiser le feed produit.md>))
- Lancer une nouvelle campagne Shopping (Voir : [SOP - Lancer une campagne Shopping standard](<Shopping - Lancer une campagne Shopping standard.md>))
- Mettre en place la segmentation basée sur la performance pour la première fois (Voir : [SOP - Configurer la segmentation Shopping basee sur la performance](<Shopping - Configurer la segmentation Shopping basée sur la performance.md>))
- Remplacer les revues de performance hebdomadaires générales (Voir : [SOP - Revue de performance hebdomadaire](<../../01-strategie/reporting/Reporting - Revue de performance hebdomadaire.md>))

## Quand utiliser cette SOP

| Volume de conversions mensuel | Cadence recommandée |
|---------------------------|---------------------|
| 200+ | Hebdomadaire |
| 50-200 | Bi-mensuelle |
| <50 | Mensuelle |

À exécuter immédiatement (hors cadence) quand le ROAS chute de 20 %+ sur deux périodes consécutives, que Merchant Center signale un pic de refus, ou que le catalogue produits change de façon significative.

---

## Avant de commencer

### Prérequis

- Compte Google Ads avec un accès Editor et un accès Google Merchant Center
- Données de performance au niveau produit (minimum 14 jours, 30 jours de préférence)
- ROAS cible ou CPA cible par campagne
- Journal d'actions du cycle précédent (pour la continuité)

### Documents de référence (à garder ouverts)

| Document | Utilisé pour |
|----------|----------|
| [Shopping Campaign Health Checklist](<Shopping - [Review] Santé des campagnes Shopping.md>) | Triage Phase 1 |
| [Shopping Product Performance Reference](<Shopping - Performance produit Shopping.md>) | Analyse produit Phase 3 |
| [Product Feed Optimization Guidelines](<../flux-produit/Flux Produit - Optimisation du flux produits.md>) | Actions sur le flux Phase 2 |
| [Product Feed Segmentation Mental Model](<../flux-produit/Flux Produit - Choisir une segmentation.md>) | Décisions de structure Phase 6 |

### Temps estimé

| Cycle standard (Phases 1-5, 7) | Cycle complet (toutes les phases) |
|-|--|
| **70 min** | **85 min** (la Phase 6 ajoute 15 min, mensuel uniquement) |

---

## Cadre d'exécution

| Phase | Objectif | Résultat |
|-------|---------|--------|
| **Phase 1️⃣: Vérification de santé** | Identifier les problèmes bloquants | Liste de problèmes avec leur gravité |
| **Phase 2️⃣: Optimisation du flux** | Améliorer la qualité du flux pour les meilleurs produits | Titres, prix, labels mis à jour |
| **Phase 3️⃣: Performance produit** | Agir sur les données au niveau produit | Actions par palier de performance |
| **Phase 4️⃣: Gestion des termes de recherche** | Supprimer le gaspillage, améliorer la pertinence | Mises à jour des mots-clés à exclure |
| **Phase 5️⃣: Enchères et budget** | Aligner enchères et budgets sur la performance | Changements d'enchères/budget |
| **Phase 6️⃣: Revue structurelle** | Vérifier que la structure correspond au catalogue (mensuel) | Ajustements de structure |
| **Phase 7️⃣: Vérification concurrentielle** | Surveiller le positionnement des concurrents | Actions concurrentielles |

---

## Phase 1️⃣: Vérification de santé (5 min)

### 1.1 Dérouler la checklist

Ouvrez la [Shopping Campaign Health Checklist](<Shopping - [Review] Santé des campagnes Shopping.md>) et parcourez chaque section : santé du flux, performance produit, santé des enchères, santé structurelle.

### 1.2 Classifier les problèmes

| Urgence | Définition | Timing d'action |
|---------|------------|---------------|
| Critique | Refus, échec de récupération du flux, suivi cassé | Corriger maintenant, avant de continuer |
| Élevée | Dégradation de la performance, stratégie d'enchères bloquée | Corriger pendant ce cycle |
| Moyenne | Opportunités d'optimisation, lacunes mineures du flux | Planifier pour le prochain cycle |
| Faible | Améliorations cosmétiques | Ajouter au backlog |

> ⚠️ **Arrêtez-vous ici s'il existe des problèmes critiques :** corrigez les échecs de récupération du flux, les refus ou les ruptures de suivi avant de continuer.

---

## Phase 2️⃣: Optimisation du flux (15 min)

### 2.1 Revoir la qualité des titres produits

Concentrez-vous sur ces segments par ordre de priorité :

1. **Meilleures ventes (top 20 % par chiffre d'affaires) :** impact le plus élevé sur le chiffre d'affaires
2. **Produits à fortes impressions, faible CTR :** des titres qui ne parviennent pas à convertir la visibilité en clics
3. **Produits récemment ajoutés :** des titres pas encore optimisés

Comparez les titres aux formules spécifiques par catégorie dans [Product Feed Optimization Guidelines](<../flux-produit/Flux Produit - Optimisation du flux produits.md>). Mettez à jour les titres qui ne placent pas les attributs clés en tête, qui font moins de 100 caractères, ou auxquels il manque la marque/le type de produit. (Voir : [Product Title Catalog](<../flux-produit/Flux Produit - Titres de produits.md>) pour les patterns.)

### 2.2 Vérifier la compétitivité des prix

Ouvrez **Merchant Center** > **Performance** > **Competitiveness**. Examinez le rapport Price Competitiveness.

| Position tarifaire | Action |
|----------------|--------|
| Au niveau ou en dessous du benchmark (analyse comparative) | Aucune action nécessaire |
| Au-dessus du benchmark (<15 %) | Envisager un prix soldé pour les produits clés |
| Au-dessus du benchmark (>15 %) | Signaler à l'équipe tarification |

### 2.3 Mettre à jour les labels personnalisés

Vérifiez que votre outil de labellisation (ProductHero, Profitmetrics) s'est synchronisé correctement. Contrôlez la distribution hero/sidekick/villain/zombie pour repérer des changements de palier inattendus. (Voir : [Feed Segmentation Catalog](<../flux-produit/Flux Produit - Tactiques de segmentation.md>) pour les stratégies.)

---

## Phase 3️⃣: Performance produit (15 min)

Allez dans **Google Ads** > onglet **Products**. Réglez la plage de dates sur 30 jours. Triez par coût (le plus élevé en premier).

> ↪️ **Pour les définitions de métriques et les minimums de données :** voir [Shopping Product Performance Reference](<Shopping - Performance produit Shopping.md>).

### 3.1 Produits sans clics

Filtrez les produits avec des impressions mais zéro clic sur 30 jours.

| Cause | Action |
|-------|--------|
| Titre médiocre | Réécrire selon la formule de la catégorie |
| Image médiocre | Remplacer par une de meilleure qualité |
| Prix non compétitif | Signaler à l'équipe tarification |
| Mauvaises requêtes | Ajouter des mots-clés à exclure (Phase 4) |

### 3.2 Produits non rentables

Filtrez les produits avec un ROAS sous la cible et des données suffisantes (dépense significative sur 30 jours). Réduisez les enchères pour les produits qui ont quelques conversions. Excluez les produits avec une dépense significative et zéro conversion. Investiguez les landing pages des produits au bon CTR mais au faible taux de conversion.

### 3.3 Meilleures ventes limitées par le budget

Filtrez les produits avec une part de clics inférieure à 40 % et un ROAS au-dessus de la cible. Vérifiez si la contrainte est le budget ou le classement. Augmentez le budget ou les enchères en conséquence.

---

## Phase 4️⃣: Gestion des termes de recherche (15 min)

### 4.1 Revoir les termes de recherche Shopping

Allez dans la campagne Shopping > **Search terms**. Triez par coût. Identifiez les requêtes non pertinentes, les requêtes de marques concurrentes, les requêtes informationnelles (« how to », « reviews ») et les requêtes trop larges à forte dépense et faible conversion.

> ↪️ **Pour le workflow complet d'analyse des termes de recherche :** voir [SOP - Analyser les rapports de termes de recherche](<../search/Search - Analyser les rapports de termes de recherche.md>).

### 4.2 Ajouter des mots-clés à exclure

Ajoutez les requêtes non pertinentes aux listes de mots-clés à exclure au niveau campagne ou partagées. Utilisez la requête large pour les exclusions à un seul mot (p. ex. free, used, rental). Utilisez l'expression exacte pour les patterns multi-mots (p. ex. « how to », « second hand »). Utilisez le mot-clé exact uniquement pour les requêtes spécifiques que vous voulez bloquer sans affecter les termes apparentés.

> ↪️ **Pour choisir le type de correspondance :** voir [Negative Keyword Reference](<../search/Search - Mots-clés à exclure.md>).

### 4.3 Lancer l'analyse N-gram (bi-mensuel ou mensuel)

Pour une analyse plus poussée, déroulez la procédure complète dans [SOP - Executer une analyse N-gram](<../search/Search - Exécuter une analyse N-gram.md>). Concentrez-vous sur les patterns propres à Shopping : termes produits génériques qui gaspillent, marques concurrentes apparaissant dans plusieurs requêtes, et termes de taille/couleur indiquant de mauvaises correspondances produit.

---

## Phase 5️⃣: Enchères et budget (10 min)

### 5.1 Ajuster les enchères

**CPC manuel :** ajustez les enchères des groupes de produits par palier de performance.

| Palier | Action sur l'enchère |
|------|------------|
| Hero (ROAS élevé, fort volume) | Augmenter de 10-20 % si part de clics <70 % |
| Sidekick (rentable, faible volume) | Maintenir ou augmenter de 5-10 % |
| Villain (non rentable, forte dépense) | Diminuer de 20-30 % ou exclure |
| Zombie (pas d'impressions/clics) | Fixer une enchère minimale pour tester la viabilité |

**ROAS cible :** vérifiez que l'apprentissage est terminé, puis évaluez le réel vs. le ROAS cible avec la méthode croissance-efficacité. N'appliquez pas de règles de pourcentage mécaniques. Voir [Bid Targets Reference](<../encheres/Enchères - Cibles d'enchères.md>) pour la méthodologie de calcul des cibles et [Bid Scaling Mental Model](<../encheres/Enchères - Scaling des enchères.md>) pour l'approche par curseur croissance-efficacité des ajustements de cible.

### 5.2 Revoir l'allocation budgétaire

Recherchez le statut « Limited by budget ». Augmentez le budget des campagnes qui atteignent le ROAS cible. Diminuez et réallouez depuis les sous-performantes.

### 5.3 Vérifier le chevauchement Shopping vs. PMax

Si vous faites tourner les deux sur des produits qui se chevauchent : comparez le ROAS et le volume, vérifiez que PMax ne cannibalise pas la part d'impressions de Standard Shopping, et ajustez les exclusions de produits si le chevauchement nuit à la performance.

---

## Phase 6️⃣: Revue structurelle (mensuel uniquement)

> ⚠️ **À sauter pendant les cycles hebdomadaires et bi-mensuels :** les changements structurels nécessitent 30+ jours de données.

### 6.1 Revoir la granularité des listing groups

| Signal | Action |
|--------|--------|
| Le groupe « Everything else » représente >30 % de la dépense | Subdiviser par marque ou type de produit |
| Groupes de produits avec <10 impressions/mois | Consolider dans des groupes plus larges |
| Les meilleurs produits partagent un groupe avec des sous-performants | Subdiviser au niveau item ID pour les hero |

> 💡 **Toutes les campagnes Shopping n'utilisent pas la segmentation basée sur la performance (hero/sidekick/villain/zombie).** La revue structurelle doit correspondre à votre stratégie de segmentation réelle. Voir [Feed Segmentation Catalog](<../flux-produit/Flux Produit - Tactiques de segmentation.md>) pour des approches alternatives et [Product Feed Segmentation Mental Model](<../flux-produit/Flux Produit - Choisir une segmentation.md>) pour la méthode de décision.

### 6.2 Revoir la distribution des paliers de segmentation

Contrôlez la répartition hero/sidekick/villain/zombie. Si les villain dépassent 20 % des produits, appliquez une réduction d'enchère agressive ou une exclusion. Si les zombie dépassent 40 %, testez avec des enchères minimales et investiguez la qualité du flux. Si aucun palier ne change depuis 60+ jours, relancez la segmentation. (Voir : [Product Feed Segmentation Mental Model](<../flux-produit/Flux Produit - Choisir une segmentation.md>).)

### 6.3 Envisager des découpages structurels

Évaluez une séparation marque vs. non-marque, des campagnes hero-only avec budget dédié, ou des découpages par catégorie quand des gammes de produits différentes nécessitent des cibles de ROAS différentes.

---

## Phase 7️⃣: Vérification concurrentielle (10 min)

### 7.1 Insights sur les enchères

Allez dans la campagne Shopping > **Auction insights**. Examinez le taux de chevauchement, la part d'impressions et le taux de surclassement vs. les principaux concurrents. Si votre part d'impressions décline, revoyez les enchères et le budget. Si le taux de surclassement chute, vérifiez la qualité du flux et les niveaux d'enchères.

### 7.2 Tarification concurrente

Ouvrez **Merchant Center** > **Performance** > **Competitiveness**. Notez les catégories où les concurrents cassent systématiquement les prix. Rivalisez sur la qualité du flux pour les produits banalisés. Signalez les écarts de prix sur les produits hero à l'équipe tarification. Si vous êtes systématiquement le moins cher, vérifiez les marges.

---

## Validation et critères de complétion

Ce cycle est terminé quand :

- [ ] Shopping Campaign Health Checklist déroulée, problèmes critiques résolus
- [ ] Titres produits prioritaires examinés et mis à jour au besoin
- [ ] Compétitivité des prix vérifiée dans Merchant Center
- [ ] Produits sans clic et non rentables identifiés avec des actions assignées
- [ ] Meilleures ventes vérifiées pour les contraintes de part de clics
- [ ] Termes de recherche Shopping examinés, mots-clés à exclure ajoutés
- [ ] Enchères ajustées par palier de performance ou cible validée
- [ ] Allocation budgétaire examinée sur l'ensemble des campagnes Shopping
- [ ] Positionnement concurrentiel vérifié via les insights sur les enchères
- [ ] Toutes les actions documentées dans le journal de cycle

---

## Passerelle de sortie

| Délai | Action |
|-----------|--------|
| Le jour même | Exécuter les actions critiques et prioritaires de la Phase 1 |
| Sous 3 jours | Terminer les ajustements d'enchères et les ajouts de mots-clés à exclure |
| Sous 7 jours | Vérifier que les changements de flux se sont propagés dans Merchant Center |
| Prochain cycle | Examiner l'impact des changements, vérifier les éléments reportés |

**Si un travail plus approfondi est nécessaire :**

| Problème | Rediriger vers |
|-------|----------|
| Le flux nécessite une refonte majeure | [SOP - Configurer et optimiser le flux produits](<../flux-produit/Flux Produit - Configurer et optimiser le feed produit.md>) |
| Première mise en place de la segmentation | [SOP - Configurer la segmentation Shopping basee sur la performance](<Shopping - Configurer la segmentation Shopping basée sur la performance.md>) |
| Gaspillage systématique sur les termes de recherche | [SOP - Executer une analyse N-gram](<../search/Search - Exécuter une analyse N-gram.md>) |
| Migration Shopping vs. PMax | [Shopping Campaign Type Mental Model](<Shopping - Types de campagne Shopping.md>) |
| Budget limité sur toutes les campagnes | [SOP - Gerer les campagnes limitees par le budget](<../encheres/Enchères - Répartir le budget entre les campagnes.md>) |

---

## Référence rapide : bibliothèque support

| Document | Type | Utilisé dans |
|----------|------|---------|
| [Shopping Campaign Health Checklist](<Shopping - [Review] Santé des campagnes Shopping.md>) | Checklist | Phase 1 |
| [Product Feed Optimization Guidelines](<../flux-produit/Flux Produit - Optimisation du flux produits.md>) | Guideline | Phase 2 |
| [Product Title Catalog](<../flux-produit/Flux Produit - Titres de produits.md>) | Catalog | Phase 2 |
| [Feed Segmentation Catalog](<../flux-produit/Flux Produit - Tactiques de segmentation.md>) | Catalog | Phase 2, 6 |
| [Shopping Product Performance Reference](<Shopping - Performance produit Shopping.md>) | Reference | Phase 3 |
| [Product Feed Segmentation Mental Model](<../flux-produit/Flux Produit - Choisir une segmentation.md>) | Mental Model | Phase 6 |
| [Product Feed Quality Checklist](<../flux-produit/Flux Produit - Qualité du flux produits.md>) | Checklist | Phase 2 |
| [SOP - Analyser les rapports de termes de recherche](<../search/Search - Analyser les rapports de termes de recherche.md>) | SOP | Phase 4 |
| [Negative Keyword Reference](<../search/Search - Mots-clés à exclure.md>) | Reference | Phase 4 |
| [Bid Targets Reference](<../encheres/Enchères - Cibles d'enchères.md>) | Reference | Phase 5 |
| [Bid Scaling Mental Model](<../encheres/Enchères - Scaling des enchères.md>) | Mental Model | Phase 5 |

---

## Procédures liées

| SOP | Relation |
|-----|--------------|
| [SOP - Configurer et optimiser le flux produits](<../flux-produit/Flux Produit - Configurer et optimiser le feed produit.md>) | Prérequis (le flux doit exister) |
| [SOP - Lancer une campagne Shopping standard](<Shopping - Lancer une campagne Shopping standard.md>) | Prérequis (la campagne doit être active) |
| [SOP - Configurer la segmentation Shopping basee sur la performance](<Shopping - Configurer la segmentation Shopping basée sur la performance.md>) | Amont (la segmentation active les Phases 3/6) |
| [SOP - Analyser les rapports de termes de recherche](<../search/Search - Analyser les rapports de termes de recherche.md>) | Appelé depuis la Phase 4 |
| [SOP - Executer une analyse N-gram](<../search/Search - Exécuter une analyse N-gram.md>) | Appelé depuis la Phase 4 |
| [SOP - Revue de performance hebdomadaire](<../../01-strategie/reporting/Reporting - Revue de performance hebdomadaire.md>) | Parallèle (revue générale) |
| [SOP - Gerer les campagnes limitees par le budget](<../encheres/Enchères - Répartir le budget entre les campagnes.md>) | Aval (si des contraintes de budget sont trouvées) |

---

## Erreurs fréquentes

| Erreur | Pourquoi ça arrive | Comment l'éviter |
|---------|----------------|--------------|
| Optimiser les titres de produits à faible volume | De l'effort là où ça ne compte pas | Se concentrer d'abord sur le top 20 % par chiffre d'affaires |
| Réagir à une semaine de données produit | Petits échantillons, signaux bruités | Attendre des fenêtres de 30 jours avant les décisions au niveau produit |
| Ignorer les insights de Merchant Center | Ne regarder que Google Ads | Vérifier les rapports de compétitivité GMC à chaque cycle |
| Ajouter trop de mots-clés à exclure Shopping | Les termes Shopping sont larges par nature | N'exclure que les patterns clairement non pertinents |
| Sauter la revue structurelle | Tâche mensuelle dépriorisée | La planifier : le premier cycle de chaque mois inclut la Phase 6 |
| Changer enchères et structure en même temps | Impossible d'isoler la cause du changement | Changer les enchères OU la structure par cycle, pas les deux |
