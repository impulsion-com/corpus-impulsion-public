# Cycle d'optimisation campagne Search

> **Plateforme :** Google Ads
> **Catégorie :** Search
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Cette SOP est la routine d'optimisation maîtresse des campagnes Search. Elle orchestre les SOP existantes en un cycle cohérent qui couvre chaque levier d'optimisation dans le bon ordre.

> ❓ **La question clé :** Quel est le processus systématique pour optimiser une campagne Search, dans quel ordre, et à quelle fréquence ?

La plupart des annonceurs optimisent de manière réactive : ils remarquent un problème et le corrigent. Cette SOP remplace l'optimisation réactive par un cycle structuré qui détecte les problèmes tôt, maintient l'élan, et garantit que rien ne passe entre les mailles du filet.

---

## Ce que cette SOP ne couvre PAS

Cette SOP ne couvre **pas :**

- Exécuter une optimisation elle-même (elle redirige vers la SOP d'exécution pour chaque tâche)
- Dupliquer les étapes contenues dans les SOP référencées (ces SOP contiennent le « comment »)
- Remplacer les vérifications de santé quotidiennes (Voir : [SOP - Check quotidien de sante du compte](<../optimisation/Optimisation - Check quotidien de santé du compte.md>))
- Remplacer les revues de performance hebdomadaires/mensuelles (Voir : [SOP - Revue de performance hebdomadaire](<../../01-strategie/reporting/Reporting - Revue de performance hebdomadaire.md>))
- Couvrir les campagnes Shopping, PMax ou Display (chacune a son propre cycle d'optimisation)

> ↪️ **Principe de conception :** Cette SOP ORCHESTRE les SOP existantes. Chaque phase référence la SOP d'exécution plutôt que de dupliquer ses étapes. Si vous vous retrouvez à lire des étapes d'exécution ici, vous êtes dans le mauvais document.

---

## Quand utiliser cette SOP

Lancez cette SOP à une cadence récurrente basée sur le volume de conversions mensuel :

| Conversions mensuelles | Cadence recommandée | Justification |
|---------------------|---------------------|-----------|
| 200+ | Hebdomadaire | Données suffisantes pour des signaux hebdomadaires |
| 50-200 | Bimensuelle | Données hebdomadaires trop bruitées pour des tendances fiables |
| <50 | Mensuelle | Besoin d'agrégation pour une validité statistique |

Exécuter immédiatement (hors cadence) quand :

- Le CPA bondit de plus de 30 % sans cause évidente
- Un nouveau concurrent entre agressivement dans l'enchère
- Après le lancement de nouvelles campagnes, de nouveaux groupes d'annonces ou d'expansions de types de correspondance

---

## Avant de commencer

### Prérequis

- Accès au compte Google Ads avec les autorisations d'édition complètes
- KPI cibles documentés (objectifs de CPA, ROAS, ou CPA cible/ROAS cible par campagne)
- Notes de revue du cycle précédent et items reportés
- Colonnes personnalisées configurées : CPI, RPI ou PPI pour les phases de test d'annonces

### Documents de référence (à garder ouverts)

| Document | Utilisé pour |
|----------|----------|
| [Optimization Cadence Mental Model](<../strategie/Strategie - Cadence d'optimisation.md>) | Méthode de cadence et de timing |
| [Keyword Performance Analysis Mental Model](<Search - Analyse de performance des keywords.md>) | Méthode de classification des mots-clés |
| [Optimization Action Catalog](<../strategie/Strategie - Actions d'optimisation.md>) | Options d'action par type de problème |
| [The five buckets & hierarchy of constraints](<../../01-strategie/fondamentaux/Fondamentaux - Les cinq catégories et la hiérarchie des contraintes.md>) | Hiérarchie de priorisation des problèmes |
| [Modern Search Campaign Mental Model](<Search - Campagne Search moderne.md>) | Contexte de structure de campagne |
| [Search Campaign Structure Mental Model](<Search - Structure de campagne Search.md>) | Décisions de structure |
| Notes du cycle précédent | Continuité et items reportés |

### Temps estimé

Un cycle complet (les 9 phases) prend environ 105 minutes. Une exécution standard à chaque cycle (Phases 1-3, 6, 9) prend environ 60 minutes.

> ⚠️ **Toutes les phases ne s'exécutent pas à chaque cycle :** Les Phases 4, 5, 7 et 8 s'exécutent sur des cadences plus longues. Un cycle hebdomadaire typique ne couvre que les Phases 1-3, 6 et 9.

---

## Phase 1️⃣: Vérification de santé (chaque cycle)

### 1.1 Dérouler la checklist de santé des campagnes Search

Ouvrez la [Search Campaign Health Checklist](<Search - [Review] Santé des campagnes Search.md>) et déroulez-la sur chaque campagne Search concernée. Consignez tous les items en échec.

### 1.2 Classifier les problèmes selon les cinq catégories

Prenez chaque item en échec et classez-le selon la hiérarchie des contraintes de [The five buckets & hierarchy of constraints](<../../01-strategie/fondamentaux/Fondamentaux - Les cinq catégories et la hiérarchie des contraintes.md>) :

| Catégorie | Priorité | Exemples |
|--------|----------|----------|
| **Mesure** | 1 (corriger en premier) | Tracking de conversion cassé, lacunes d'attribution, Consent Mode mal configuré |
| **Business** | 2 | L'économie unitaire ne fonctionne pas, CPA cible intenable, problèmes de marge |
| **Conversion** | 3 | Page de destination cassée, formulaire qui ne se soumet pas, vitesse de page critique |
| **Trafic** | 4 | Mauvais mots-clés, mauvaise couverture des types de correspondance, effondrement du taux d'impressions |
| **Creative** | 5 (corriger en dernier) | RSA faibles, faible Ad Relevance, extensions obsolètes |

### 1.3 Prioriser et décider

Corrigez d'abord les problèmes de la catégorie la plus haute. Ne travaillez pas sur des problèmes de Trafic tant que la Mesure est cassée.

**Résultat :** Liste de problèmes priorisée avec classification par catégorie. Les problèmes de Mesure et de Business deviennent des bloqueurs : résolvez-les avant de continuer vers la Phase 2.

---

## Phase 2️⃣: Gestion des termes de recherche (chaque cycle)

### 2.1 Revoir le rapport sur les termes de recherche

Tirez le rapport sur les termes de recherche des 7-14 derniers jours (selon la cadence du cycle). Concentrez-vous sur les termes avec une dépense significative.

### 2.2 Ajouter des exclusions pour les requêtes non pertinentes

Identifiez les termes de recherche qui gaspillent de la dépense et routez-les vers le workflow d'exclusion.

> ↪️ **Exécuter via :** [SOP - Analyser les rapports de termes de recherche](<Search - Analyser les rapports de termes de recherche.md>), Phase 2 (scan des termes non pertinents).

### 2.3 Récolter les termes performants

Identifiez les termes de recherche performants pas encore ajoutés comme mots-clés.

> ↪️ **Exécuter via :** [SOP - Promouvoir les termes de recherche en mots-cles](<Search - Promouvoir les termes de recherche en keywords.md>)

### 2.4 Lancer l'analyse N-gram (si dû)

Lancez l'analyse N-gram mensuellement, ou toutes les deux semaines pour les comptes à fort volume pendant les 90 premiers jours.

> ↪️ **Exécuter via :** [SOP - Executer une analyse N-gram](<Search - Exécuter une analyse N-gram.md>)

**Résultat :** Exclusions ajoutées, mots-clés promus, exclusions N-gram appliquées (si dues).

---

## Phase 3️⃣: Performance des mots-clés (chaque cycle)

### 3.1 Extraire les données de mots-clés

Exportez la performance des mots-clés des 14-30 derniers jours (utilisez une fenêtre plus longue pour les campagnes à faible volume). Incluez : impressions, clics, conversions, coût, CPA/ROAS, Niveau de qualité.

### 3.2 Appliquer la matrice de décision des mots-clés

Classez chaque mot-clé avec 50+ clics dans l'un des quatre quadrants selon la méthode de [Keyword Performance Analysis Mental Model](<Search - Analyse de performance des keywords.md>) :

| Quadrant | Profil | Action |
|----------|---------|--------|
| **Q1 : Protéger et scaler** | Fort volume, efficacité sur l'objectif | Protéger la position, augmenter enchères/budget, étendre le taux d'impressions |
| **Q2 : Corriger la pertinence** | Fort volume, mauvaise efficacité | Router vers des corrections de Niveau de qualité, de page de destination ou de texte d'annonce |
| **Q3 : Augmenter la visibilité** | Faible volume, bonne efficacité | Augmenter les enchères, élargir le type de correspondance, augmenter le taux d'impressions |
| **Q4 : Diagnostiquer ou mettre en pause** | Aucune/très peu de conversions, forte dépense | Diagnostiquer la cause racine ou mettre en pause après 2x la dépense du CPA cible |

### 3.3 Exécuter les actions par quadrant

| Quadrant | Chemin d'exécution |
|----------|----------------|
| Q1 | Protéger : aucun changement nécessaire. Scaler : router vers la Phase 6 (ajustements d'enchères/budget) |
| Q2 | Router vers la Phase 4 (Niveau de qualité) ou des améliorations de page de destination |
| Q3 | Augmenter les enchères de 10-15 %, ou élargir le type de correspondance. Surveiller au prochain cycle |
| Q4 | Diagnostiquer : vérifier l'alignement d'intention, le QS, la page de destination. Mettre en pause si aucun chemin d'amélioration n'existe |

**Résultat :** Actions documentées par groupe de mots-clés. Mots-clés Q2 signalés pour la Phase 4.

---

## Phase 4️⃣: Niveau de qualité (bi-mensuel)

### 4.1 Revoir la distribution du QS

Filtrez les mots-clés sur ceux ayant un Niveau de qualité inférieur à 7 et 100+ impressions mensuelles. Ce sont les mots-clés où l'amélioration du QS apporte une réduction mesurable du CPC.

> 💡 **Pourquoi le QS de 5 à 7 compte le plus :** Faire passer un mot-clé de QS 5 à QS 7 produit généralement une réduction de CPC de 25 %+. Passer de QS 7 à QS 9 donne des rendements décroissants.

### 4.2 Classifier les sous-composants du QS

Pour chaque mot-clé signalé, vérifiez les trois sous-composants :

| Sous-composant | Si Below Average | Router vers |
|---------------|------------------|----------|
| Expected CTR | Below Average | [SOP - Ameliorer le CTR attendu](<Search - Améliorer le CTR attendu.md>) |
| Ad Relevance | Below Average | [SOP - Ameliorer la pertinence des annonces](<Search - Améliorer la pertinence des annonces.md>) |
| Landing Page Experience | Below Average | [SOP - Ameliorer l'experience de la page de destination](<../../02-site-web/audit/Audit - Test A-B de Landing Page.md>) |

### 4.3 Router vers le playbook

Pour les mots-clés ayant plusieurs problèmes de sous-composants, utilisez la logique de routage complète.

> ↪️ **Exécuter via :** [Improve Niveau de qualité](<Search - Améliorer le Niveau de qualité.md>)

**Résultat :** Actions d'amélioration du QS mises en file avec des cibles de sous-composants spécifiques.

---

## Phase 5️⃣: Test d'annonces (mensuel)

### 5.1 Revoir la performance RSA

Tirez les données de performance au niveau des composants. Évaluez les titres et les descriptions à l'aide des colonnes personnalisées CPI/RPI, pas du score d'Ad Strength.

> ⚠️ **Ignorez l'Ad Strength :** L'Ad Strength mesure l'opinion de Google sur la diversité des composants, pas la performance de conversion. Une RSA à Ad Strength « Poor » peut surperformer une « Excellent ».

### 5.2 Dérouler le diagnostic de la boucle d'itération

Classez les composants dans les quatre quadrants de performance (Champions, Hidden Gems, Silent Killers, Trash) et prenez l'action appropriée pour chacun.

> ↪️ **Exécuter via :** [SOP - Test RSA avec la boucle d'iteration](<Search - Test RSA avec la boucle d'itération.md>), Piliers 2-4.

### 5.3 Remplacer les sous-performants

Supprimez les Silent Killers immédiatement. Remplacez les composants Trash par de nouvelles variantes guidées par des hypothèses. Augmentez l'exposition des Hidden Gems.

**Résultat :** Variantes d'annonces remplacées, journal d'apprentissage mis à jour, prochaines hypothèses de test documentées.

---

## Phase 6️⃣: Enchères et budget (chaque cycle)

### 6.1 Vérifier les pertes de taux d'impressions

Pour chaque campagne, examinez :

| Métrique | Seuil d'action |
|--------|-----------------|
| IS Lost (Budget) > 20% | Campagne contrainte par le budget. Router vers la résolution de budget |
| IS Lost (Rank) > 30% | Problème d'enchère ou de Niveau de qualité. Router vers un ajustement d'enchère ou la Phase 4 |

### 6.2 Revoir la santé de la stratégie d'enchères

Vérifiez le statut d'apprentissage (investiguez si « Learning » depuis 14+ jours), l'alignement des cibles (les cibles d'enchères correspondent-elles toujours aux objectifs business ?), et le volume de conversions (les Stratégies d'enchères intelligentes ont besoin de 30+ conversions/mois pour bien fonctionner).

### 6.3 Gérer les campagnes limitées par le budget

Si une campagne affiche le statut « Limited by budget » :

> ↪️ **Exécuter via :** [SOP - Gerer les campagnes limitees par le budget](<../encheres/Enchères - Répartir le budget entre les campagnes.md>)

### 6.4 Ajuster les cibles si nécessaire

Lorsque vous ajustez les cibles d'enchères, procédez par incréments de 5-20 %. Ne faites jamais de grands sauts : ils déclenchent des périodes d'apprentissage (Learning) et introduisent de la volatilité.

**Résultat :** Ajustements de budget et d'enchères documentés avec justification.

---

## Phase 7️⃣: Revue des extensions (mensuel)

### 7.1 Auditer la couverture des extensions

Vérifiez que toutes les campagnes ont les types d'extensions essentiels déployés et performants.

### 7.2 Remplacer les extensions sous-performantes

> ↪️ **Exécuter via :** [SOP - Revoir et optimiser les extensions d'annonces](<../composants/Composants - Vérifier et optimiser les extensions d'annonces.md>)

**Résultat :** Manques d'extensions comblés, sous-performants remplacés.

---

## Phase 8️⃣: Vérification concurrentielle (mensuel)

### 8.1 Revoir les Insights sur les enchères

Tirez les Insights sur les enchères des 30 derniers jours. Comparez à la période de 30 jours précédente.

### 8.2 Identifier les changements et décider de la réponse

Cherchez de nouveaux entrants concurrents, des variations de taux d'impressions, et des changements de taux de chevauchement (overlap) ou de taux de position supérieure (position above rate). Passez par la méthode d'analyse complète.

> ↪️ **Exécuter via :** [SOP - Analyser les Insights sur les enchères](<Search - Analyser les Insights sur les enchères.md>)

La plupart des mouvements concurrentiels ne nécessitent pas de réponse si vos KPI restent sur l'objectif. N'agissez que lorsque les variations concurrentielles impactent directement votre volume de conversions ou vos cibles de coût.

**Résultat :** Changements concurrentiels notés. Items d'action créés uniquement lorsque les KPI sont affectés.

---

## Phase 9️⃣: Documentation (chaque cycle)

### 9.1 Enregistrer toutes les actions menées

Documentez chaque action de ce cycle : date, campagnes examinées, problèmes trouvés (avec classification par catégorie), exclusions ajoutées, mots-clés promus, actions par quadrant de mots-clés, actions QS mises en file, changements d'annonces effectués, changements d'enchères/budget, changements d'extensions, et notes concurrentielles.

### 9.2 Créer les items à reporter

Tout travail inachevé ou item nécessitant un suivi va sur la liste des reports pour le prochain cycle, avec une priorité (P1/P2/P3) et une date cible.

### 9.3 Mettre à jour le backlog d'expériences

Ajoutez toute nouvelle idée de test découverte pendant ce cycle au backlog d'expériences. Taguez chaque idée avec la phase dont elle est issue.

**Résultat :** Revue documentée avec journal d'actions, items reportés, et backlog d'expériences mis à jour.

---

## Validation et critères de complétion

Cette SOP est terminée quand :

- [ ] Phase 1 : Checklist de santé déroulée, problèmes classés par les Cinq Catégories, bloqueurs résolus
- [ ] Phase 2 : Termes de recherche examinés, exclusions ajoutées, promotions exécutées
- [ ] Phase 3 : Mots-clés classés par la Matrice de décision, actions menées par quadrant
- [ ] Phase 4 : Distribution du QS examinée, actions d'amélioration mises en file (si cycle bimensuel)
- [ ] Phase 5 : Performance des RSA examinée, Silent Killers supprimés (si cycle mensuel)
- [ ] Phase 6 : Pertes de taux d'impressions vérifiées, ajustements de budget/enchères effectués
- [ ] Phase 7 : Couverture des extensions auditée, sous-performants remplacés (si cycle mensuel)
- [ ] Phase 8 : Insights sur les enchères examinés, variations concurrentielles notées (si cycle mensuel)
- [ ] Phase 9 : Toutes les actions documentées, items reportés consignés

---

## Passerelle de sortie

Après avoir terminé le cycle d'optimisation :

| Délai | Action |
|-----------|--------|
| Le jour même | Exécuter les actions P1 de la liste des reports |
| Cette semaine | Terminer les tâches de QS et de test d'annonces en cours |
| Prochain cycle | Revoir d'abord les items reportés, puis démarrer la Phase 1 |

**Si des problèmes nécessitent une escalade :**

| Type de problème | Rediriger vers |
|------------|----------|
| Anomalie de performance entre les cycles | [SOP - Investiguer les anomalies de performance](<../optimisation/Optimisation - Investiguer les anomalies de performance.md>) |
| Réallocation de budget entre les campagnes | [SOP - Repartir le budget entre les campagnes](<../encheres/Enchères - Répartir le budget entre les campagnes.md>) |
| Nouvelle campagne nécessaire | [SOP - Lancer une campagne Search](<Search - Lancer une campagne Search.md>) |
| Expérience requise pour valider un changement | [SOP - Executer une experimentation de campagne](<../strategie/Strategie - Lancer une expérience de campagne.md>) |
| La structure de campagne ou de groupe d'annonces doit être retravaillée | [SOP - Revoir et optimiser la structure de campagne](<../strategie/Strategie - Vérifier et optimiser la structure de campagne.md>) |

---

## Erreurs fréquentes

| Erreur | Pourquoi ça arrive | Comment l'éviter |
|---------|----------------|--------------|
| Sauter la Phase 1 | Supposer que « tout a l'air bien » | Dérouler la checklist à chaque cycle, sans exception |
| Exécuter les 9 phases à chaque cycle | Vouloir être exhaustif | Suivre la colonne de cadence : les Phases 4, 5, 7, 8 ne sont pas des tâches hebdomadaires |
| Optimiser la Creative tant que la Mesure est cassée | Ignorer la hiérarchie des catégories | Toujours classer les problèmes par les Cinq Catégories avant d'agir |
| Faire des changements d'enchères et d'annonces dans le même cycle | Variables confondantes | Séparer les changements d'enchères (Phase 6) des changements d'annonces (Phase 5) d'au moins un cycle |
| Pas de liste des reports | Se fier à sa mémoire | La Phase 9 est obligatoire, pas optionnelle |
| Réagir aux données d'un seul cycle | Bruit hebdomadaire | Confirmer les tendances sur 2+ cycles avant une action majeure |

---

## Documents liés

| Document | Type | Phase |
|----------|------|-------|
| [Search Campaign Health Checklist](<Search - [Review] Santé des campagnes Search.md>) | Checklist | 1 |
| [Optimization Cadence Mental Model](<../strategie/Strategie - Cadence d'optimisation.md>) | Mental Model | Toutes |
| [Optimization Action Catalog](<../strategie/Strategie - Actions d'optimisation.md>) | Catalog | Toutes |
| [SOP - Analyser les rapports de termes de recherche](<Search - Analyser les rapports de termes de recherche.md>) | SOP | 2 |
| [SOP - Promouvoir les termes de recherche en mots-cles](<Search - Promouvoir les termes de recherche en keywords.md>) | SOP | 2 |
| [SOP - Executer une analyse N-gram](<Search - Exécuter une analyse N-gram.md>) | SOP | 2 |
| [Keyword Performance Analysis Mental Model](<Search - Analyse de performance des keywords.md>) | Mental Model | 3 |
| [Improve Niveau de qualité](<Search - Améliorer le Niveau de qualité.md>) | Playbook | 4 |
| [SOP - Test RSA avec la boucle d'iteration](<Search - Test RSA avec la boucle d'itération.md>) | SOP | 5 |
| [SOP - Gerer les campagnes limitees par le budget](<../encheres/Enchères - Répartir le budget entre les campagnes.md>) | SOP | 6 |
| [SOP - Revoir et optimiser les extensions d'annonces](<../composants/Composants - Vérifier et optimiser les extensions d'annonces.md>) | SOP | 7 |
| [SOP - Analyser les Insights sur les enchères](<Search - Analyser les Insights sur les enchères.md>) | SOP | 8 |
| [SOP - Revoir et optimiser la structure de campagne](<../strategie/Strategie - Vérifier et optimiser la structure de campagne.md>) | SOP | Optimisation de structure |
| [Modern Search Campaign Mental Model](<Search - Campagne Search moderne.md>) | Mental Model | Contexte de structure |
| [Search Campaign Structure Mental Model](<Search - Structure de campagne Search.md>) | Mental Model | Structure de campagne |
| [Search Ad Group Structure Mental Model](<Search - Structure des ad groups Search.md>) | Mental Model | Structure de groupe d'annonces |
