# Gérer les recommandations Google

> **Plateforme :** Google Ads
> **Catégorie :** Optimisation
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Définir quelles recommandations Google Ads accepter, ignorer ou évaluer au cas par cas, **et** exécuter une revue mensuelle structurée pour garder le contrôle stratégique du compte tout en extrayant la valeur des suggestions vraiment utiles.

> ❓ **La question clé :** Lesquelles des recommandations de Google appliquer, lesquelles ignorer, et comment maintenir un score d'optimisation correct sans perdre le contrôle stratégique ?

Les recommandations de Google servent d'abord les intérêts de Google, ensuite les vôtres. Ce document définit d'abord la politique par défaut puis détaille la procédure de revue mensuelle.

---

## Ce que ce document couvre / ne couvre PAS

**Ce document couvre :**

- La **politique** : quoi accepter, ignorer ou évaluer pour chaque type de recommandation
- La **procédure de revue mensuelle** (4 phases, ~30 min)
- La gestion du score d'optimisation et des relations avec les commerciaux Google

**Ce document ne couvre PAS :**

- Le fonctionnement technique des recommandations (Voir : [Fiche Recommandations Google](<Optimisation - Recommandations Google.md>))
- Le suivi des changements auto-appliqués (Voir : [Fiche Historique des modifications](<Optimisation - Historique des modifications.md>))
- Le remplacement de la décision stratégique sur la structure ou les enchères

---

## Partie 1 — Politique : application automatique

### Position par défaut : tout désactiver

Pour tous les comptes gérés : **désactiver l'application automatique pour toutes les catégories de recommandation.**

Les recommandations de Google optimisent pour les intérêts de Google (augmentation des dépenses, ciblage plus large, plus d'automatisation). La revue manuelle garantit que chaque changement sert votre stratégie business.

### Catégorie "Maintenir vos annonces" (7 recommandations)

| # | Recommandation | Position | Justification |
|---|---|---|---|
| 1 | Rotation optimisée des annonces | ✅ Activé | Sans risque : affiche les annonces les plus performantes |
| 2 | Améliorer vos RSA | ❌ Désactivé | Modifie les assets sans revue, peut écraser des tests intentionnels |
| 3 | Supprimer mots-clés redondants | ❌ Désactivé | Peut supprimer des mots-clés intentionnels (tests, LP différentes) |
| 4 | Supprimer mots-clés non diffusés | ⚠️ Conditionnel | OK si revue hebdomadaire des suppressions |
| 5 | Supprimer négatifs en conflit | ⚠️ Conditionnel | OK si structure de négatifs vérifiée + revue hebdo |
| 6 | Ciblage optimisé | ❌ Désactivé | Étend l'audience au-delà du ciblage prévu (dangereux pour lead gen) |
| 7 | Mise à jour du tracking (suivi des conversions/évènements) | 🔄 Au cas par cas | L'attribution data-driven peut affecter le reporting historique |

### Catégorie "Développer votre activité" (14 recommandations)

**Position : tout désactiver.** Justifications par groupe :

- **Mots-clés et ciblage** (3) : Google suggère du requête large et expansion Display sans préparation de négatifs → gaspillage de budget
- **Enchères** (8) : Tout changement de stratégie d'enchères nécessite des tests contrôlés et un contexte business
- **Objectifs CPA/ROAS** (3) : Nécessitent du contexte d'unit economics et de marges, pas une application automatique

---

## Partie 2 — Procédure de revue mensuelle (~30 min)

À exécuter dans le cadre de la revue mensuelle de performance, avant les meetings avec le commercial Google, ou quand un nouveau type de recommandation apparaît.

### Phase 1 — Audit auto-apply (3 min)

1. Naviguer vers la page Recommendations
2. Cliquer "Application automatique" (en haut à droite)
3. Vérifier le statut contre la politique ci-dessus
4. Naviguer vers Historique des modifications
5. Filtrer source = "Recommandation auto-appliquée", période = 30 derniers jours
6. Si des changements auto-appliqués sont trouvés :
   - **Alignés** avec la stratégie : noter et continuer
   - **En conflit** : annuler les changements, vérifier que l'auto-apply est bien désactivé

### Phase 2 — Revue par catégorie (15 min)

**Repairs en premier** (les plus utiles) :
- ✅ Appliquer si le fix est simple et le problème réel (annonces refusées, params de conv manquants)
- ❌ Ignorer si l'"issue" est intentionnelle (ex: ad group sans keywords dans une DSA)

**Enchères et budgets** :
- ✅ Appliquer si la suggestion s'aligne avec un changement déjà prévu
- ❌ Ignorer si elle pousse vers plus de dépenses sans justification business

**Mots-clés et ciblage** :
- ✅ Appliquer si keywords suggérés matchent votre recherche, ou conflits de négatifs réels
- ❌ Ignorer si elle pousse vers requête large, expansion audience, Partenaires du Réseau de Recherche

**Annonces et assets** :
- ✅ Appliquer si la suggestion ajoute un asset utile (ex: liens annexes prévus)
- ❌ Ignorer si elle pousse des assets dynamiques ou copy modifiée par IA

**Campagnes automatisées** :
- ❌ Tout ignorer par défaut. Créer une PMax ou AI Max est une décision stratégique, pas un auto-apply.

### Phase 3 — Gestion du score (5 min)

> 💡 Ignorer une recommandation augmente le score autant que l'appliquer. Vous pouvez maintenir un score élevé en ignorant les recommandations avec lesquelles vous n'êtes pas d'accord.

- Recommandations en désaccord → **Ignorer** (score augmente)
- Recommandations en accord → **Appliquer** (score augmente)
- Recommandations à évaluer → **Laisser** (pas de changement de score)

### Phase 4 — Documentation (5 min)

```
Revue Recommandations - [Mois Année]
Compte : [Nom]

AUTO-APPLY : Tout désactivé / [Problèmes trouvés]

RECOMMANDATIONS REVUES : [N]
- Appliquées : [N] - [Liste courte]
- Ignorées : [N] - [Liste courte]
- Reportées : [N]

SCORE D'OPTIMISATION : __% → __%

POINTS NOTABLES :
- [Nouveaux types de recommandations ou suggestions inhabituelles]

CHANGEMENTS AUTO-APPLIQUÉS (30 derniers jours) : [N]
```

---

## Partie 3 — Justification du contrôle manuel

### Pourquoi désactiver l'auto-apply par défaut

1. **Les recommandations optimisent pour Google, pas pour vous** : "augmentez votre budget", "passez en requête large" → toujours plus de dépenses, moins de contrôle.
2. **Les recommandations manquent de contexte business** : Google ne connaît pas vos marges, votre capacité, vos saisonnalités, votre roadmap de tests.
3. **L'auto-apply crée des changements invisibles** : difficultés à diagnostiquer les changements de performance, érosion du contrôle dans le temps.
4. **Le score d'optimisation ≠ performance** : un compte à 60% peut surperformer un compte à 95% si géré stratégiquement.

### Gérer les commerciaux Google

Les responsables de compte Google poussent souvent à augmenter le score. Réponse :

1. **Reconnaître le score** mais rediriger vers les métriques de performance
2. **Ignorer les recommandations non pertinentes** pour augmenter le score sans les implémenter
3. **Documenter votre justification** pour maintenir des positions à score bas si contesté
4. **Centrer les conversations sur les résultats business** (CPA, ROAS, profit)

---

## Vérification de la configuration

| Vérification | État attendu |
|---|---|
| Maintenir vos annonces — Rotation optimisée | ACTIVÉ |
| Maintenir vos annonces — Améliorer les RSA | DÉSACTIVÉ |
| Maintenir vos annonces — Supprimer mots-clés redondants | DÉSACTIVÉ |
| Maintenir vos annonces — Supprimer mots-clés non diffusés | DÉSACTIVÉ (ou ACTIVÉ avec revue hebdo) |
| Maintenir vos annonces — Supprimer négatifs en conflit | DÉSACTIVÉ (ou ACTIVÉ avec structure de négatifs vérifiée) |
| Maintenir vos annonces — Ciblage optimisé | DÉSACTIVÉ |
| Maintenir vos annonces — Mise à jour du tracking | DÉSACTIVÉ (évaluer au cas par cas) |
| Développer votre activité (les 14) | Tous DÉSACTIVÉS |
| Revue de l'historique des modifications | Hebdomadaire |
| Revue des recommandations | Mensuelle |

---

## Validation et critères de complétion

- [ ] Auto-apply vérifié (tout désactivé selon la politique)
- [ ] Toutes les recommandations en attente revues
- [ ] Chaque recommandation : appliquée / ignorée / reportée avec justification
- [ ] Changements auto-appliqués des 30 derniers jours revus
- [ ] Score d'optimisation noté
- [ ] Log mensuel documenté

---

## Documents liés

| Document | Relation |
|---|---|
| [Fiche Recommandations Google](<Optimisation - Recommandations Google.md>) | Référence : taxonomie complète et mécanismes |
| [Fiche Historique des modifications](<Optimisation - Historique des modifications.md>) | Suivi des changements auto-appliqués |
| [SOP Revue de performance mensuelle](<../../01-strategie/reporting/Reporting - Revue de performance mensuelle.md>) | Cette revue est une section de la revue mensuelle globale |

---

## Erreurs fréquentes

| Erreur | Pourquoi ça arrive | Comment l'éviter |
|---|---|---|
| Appliquer sans évaluation | Pression pour augmenter le score | Revoir contre la stratégie d'abord, ignorer si désaligné |
| Ignorer les changements auto-appliqués | Supposer que l'auto-apply est désactivé | Vérifier l'historique mensuellement |
| Ne pas ignorer les recommandations non pertinentes | Peur de perdre du score | Ignorer et appliquer augmentent le score à parts égales |
| Appliquer une augmentation de budget sans contexte | Google la présente comme une "opportunité" | Vérifier l'alignement avec la capacité business |
| Sauter la revue mensuelle | "Les recommandations sont surtout du bruit" | Même les recommandations bidons affectent le score et peuvent s'auto-appliquer |
