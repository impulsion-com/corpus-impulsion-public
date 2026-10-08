# Lancer une campagne Search

> **Plateforme :** Google Ads
> **Catégorie :** Search
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Cette SOP lance une Search campaign from "ready" to "live and serving", then verifies delivery and establishes post-launch monitoring.

> ❓ **La question clé :** Comment activer en toute sécurité une nouvelle campagne Search et confirmer qu'elle fonctionne correctement ?

C'est la SOP de la dernière étape. Tous les composants de la campagne (structure, keywords, annonces, tracking, enchères) sont déjà en place. Cette SOP enables them, verifies delivery, and establishes monitoring cadence.

---

## Ce que cette SOP ne couvre PAS

Cette SOP ne couvre **pas :**

- Construire la structure de campagne, les ad groups ou les keywords (Voir : [Search Campaign Structure Mental Model](<Search - Structure de campagne Search.md>))
- Rédiger ou optimiser le texte d'annonce (Voir : [SOP - Rediger des RSA performantes](<Search - Rédiger des RSA performantes.md>))
- Sélectionner une stratégie d'enchères (Voir : [SOP - Selectionner une strategie d'encheres](<../encheres/Enchères - Sélectionner une stratégie d'enchères.md>))
- Configurer le suivi des conversions (upstream prerequisite)
- Optimiser ou dépanner une campagne déjà en cours

## Quand utiliser cette SOP

Lancez cette SOP when:

- Une nouvelle campagne Search est entièrement construite et tous les contrôles pré-lancement sont prêts
- Toutes les procédures en amont (structure, annonces, enchères, tracking) sont complètes
- La campagne est en statut "En pause" ou "En attente", prête à être activée

---

## Avant de commencer

### Prérequis

- Campagne entièrement construite dans Google Ads or Google Ads Editor (structure, keywords, annonces, extensions, stratégie d'enchères, budgets tous configurés)
- Suivi des conversions configuré et vérifié
- Landing Pages en ligne et testées
- Stratégie d'enchères sélectionnée et objectifs calculés
- Budget quotidien confirmé avec le client

### Documents de référence (à garder ouverts)

| Document | Utilisé pour |
|----------|----------|
| [Search Campaign Launch Checklist](<Search - [Review] Lancement de campagne Search.md>) | Porte de validation pré-lancement |
| [Universal Campaign Settings Reference](<../strategie/Strategie - Paramètres universels de campagne.md>) | Vérification des paramètres de campagne |
| [Network Selection Reference](<../strategie/Strategie - Sélection de réseau.md>) | Vérification des paramètres réseau |
| [Post-Launch Monitoring Reference](<../optimisation/Optimisation - Monitoring post-lancement.md>) | Cadence de suivi et règles de période d'apprentissage |

---

## Cadre d'exécution

| Phase | Objectif | Résultat |
|-------|---------|--------|
| **Phase 1️⃣: Campaign shell and settings** | Vérifier la configuration au niveau campagne | Paramètres confirmés |
| **Phase 2️⃣: Structure and targeting** | Vérifier ad groups, keywords, négatifs | Structure validée |
| **Phase 3️⃣: Creative setup** | Vérifier RSA, extensions, paramètres AI Max | Annonces prêtes à diffuser |
| **Phase 4️⃣: Bidding and budget** | Confirmer la stratégie d'enchères et le budget | Bidding configuré |
| **Phase 5️⃣: Brand separation and exclusions** | Vérifier les négatifs de marque et les paramètres réseau | Exclusions en place |
| **Phase 6️⃣: Launch and verify** | Activer et valider la diffusion | Campagne active |

---

## Phase 1️⃣ : Enveloppe de campagne et paramètres

### 1.1 Vérifier le nom de campagne

Confirmez le/la campaign follows the naming convention:

`[Country]_[Language]_Search_[Intent/Segment]`

Example: `US_EN_Search_NonBrand_Demo`

> ↪️ **Pour les conventions de nommage :** Voir [Campaign Naming Convention Reference](<../strategie/Strategie - Convention de nommage des campagnes.md>).

### 1.2 Vérifier les paramètres universels

| Paramètre | Attendu | Notes |
|---------|----------|-------|
| Locations | Target markets | |
| Location method | Presence or interest (default) | Switch to Presence only if data shows waste |
| Languages | Match ad language | |
| Ad schedule | All hours, all days | Unless exception applies |

> ↪️ **Pour les détails de localisation, langue et calendrier :** See [Universal Campaign Settings Reference](<../strategie/Strategie - Paramètres universels de campagne.md>).

### 1.3 Vérifier les paramètres réseau

| Réseau | Attendu |
|---------|----------|
| Search Network | ON |
| Partenaires du Réseau de Recherche | Test (monitor performance) |
| Display Network | OFF |

> ⚠️ **Le Display Network activé est l'erreur de configuration n°1 qui gaspille du budget :** Vérifiez qu'il est désactivé avant le lancement.

> 💡 **Partenaires du Réseau de Recherche :** Peut très bien fonctionner ou très mal performer (50/50 chance). Très dépendant du secteur. Testez et surveillez après quelques semaines/mois.

> ↪️ **Pour la logique de sélection du réseau :** See [Network Selection Reference](<../strategie/Strategie - Sélection de réseau.md>).

---

## Phase 2️⃣ : Structure et ciblage

### 2.1 Vérifier la structure des ad groups

Dans Google Ads Editor, review:

1. Les noms des ad groups correspondent à la structure prévue
2. Pas d'ad groups vides
3. Chaque ad group a un thème d'intention clair

### 2.2 Vérifier les keywords

1. Les types de correspondance sont corrects (exact, phrase, or broad as intended)
2. Pas de keywords dupliqués entre les ad groups
3. Les keywords négatifs sont en place at ad group and campaign level

### 2.3 Vérifier les keywords négatifs

1. Négatifs de marque dans les campagnes non-marque (if brand separation applies)
2. Négatifs universels (mauvaise intention, concurrents)
3. Listes de keywords négatifs appliquées

> ↪️ **Pour les stratégies de keywords négatifs :** See [Negative Keyword Reference](<Search - Mots-clés à exclure.md>).

---

## Phase 3️⃣ : Configuration créative

### 3.1 Vérifier les RSA

Pour chaque ad group :

1. 7-8 titres uniques (mix d'angles)
2. 2-3 descriptions uniques
3. Pas d'épinglage (sauf raison spécifique)
4. Les URL finales sont correctes

> ↪️ **Pour les standards de qualité RSA :** See [Headline Quality Checklist](<Search - [Review] Qualité des titres.md>) and [Description Quality Checklist](<../strategie/Strategie - [Review] Qualité des descriptions.md>).

### 3.2 Vérifier les extensions/assets

| Type d'asset | Minimum | Vérifié |
|------------|---------|----------|
| Liens annexes | 4 | |
| Callouts | 4 | |
| Structured snippets | 1 | |

### 3.3 Vérifier les paramètres AI Max (si activé)

Si vous utilisez AI Max pour Search :

| Paramètre | Recommandation |
|---------|----------------|
| Text asset optimization | ON |
| Final URL expansion | OFF (for control), test ON later |
| Automatically created assets | Review settings |

> ↪️ **Pour la configuration AI Max :** See [AI Max for Search Reference](<Search - AI Max - mécanismes techniques.md>).

### 3.4 Vérifier les URL finales

1. Cliquez à travers every unique Final URL
2. Confirm each page loads correctly (no 404s)
3. Confirm conversion tracking tags fire (use Tag Assistant)

---

## Phase 4️⃣ : Bidding et budget

### 4.1 Vérifier la stratégie d'enchères

| Volume | Stratégie recommandée |
|--------|---------------------|
| Building history | Maximiser les conversions (no target) |
| 30-50 conversions/month | Maximiser les conversions or CPA cible (loose) |
| 50+ conversions/month | CPA cible or ROAS cible |

> ↪️ **Pour les seuils de volume :** See [Conversion Volume Thresholds Reference](<../suivi/Suivi - Seuils de volume de conversions.md>).

### 4.2 Vérifier le budget

1. Daily budget matches plan
2. Budget supports bid strategy (not "Limited by budget" expected)
3. Budget allocation across brand/non-brand is correct

---

## Phase 5️⃣ : Séparation marque et exclusions

### 5.1 Vérifier la séparation marque (si applicable)

| Type de campagne | Vérification |
|---------------|--------------|
| Brand campaign | Brand keywords present, Target Impression Share bid strategy |
| Non-brand campaign | Brand terms as mots-clés à exclure |

> ↪️ **Pour l'implémentation de la séparation marque :** See [Brand Separation Reference](<Search - Séparation de marque.md>).

### 5.2 Vérifier les paramètres DSA

Si des ad groups DSA existent :

| Paramètre | Valeur |
|---------|-------|
| Domain | Correct website |
| Targeting source | Page feed or website index |
| DSA negatives | Brand terms excluded |

---

## Phase 6️⃣ : Lancement et vérification

### 6.1 Exécuter la checklist pré-lancement

Exécutez la [Search Campaign Launch Checklist](<Search - [Review] Lancement de campagne Search.md>). Tous les éléments doivent passer.

### 6.2 Publier les modifications (si utilisation d'Editor)

1. Publiez toutes les modifications depuis Google Ads Editor
2. Attendez la fin de l'upload
3. Vérifiez les modifications dans l'interface web
4. Les campagnes restent en pause

### 6.3 Activer les campagnes

Activez dans cet ordre :

| Ordre | Campagne | Raison |
|-------|----------|--------|
| 1 | Brand campaigns | Low risk, establishes baseline |
| 2 | Non-brand campaigns | Higher spend, needs brand already serving |

For each campaign:

1. Passez le statut à "Activé"
2. Vérifiez que le budget s'affiche correctement
3. Vérifiez que la stratégie d'enchères affiche "Actif" (not "Limited")
4. Confirmez que le statut affiche "Éligible"

### 6.4 Première vérification (2-4 heures)

| Vérification | Ce qu'il faut chercher | Action if wrong |
|-------|-----------------|-----------------|
| Impressions | En progression | Vérifier le statut keyword/annonce, budget |
| CTR | 1-5% range | Vérifier la pertinence annonce-keyword |
| CPCs | Within expected range | Vérifier l'objectif de la stratégie d'enchères |
| Search terms | Requêtes pertinentes | Ajouter des négatifs pour les non pertinents |
| Tracking | Conversions firing | Vérifier la configuration du tag |

### 6.5 Définir la cadence de suivi

| Période | Fréquence | Focus |
|-----------|-----------|-------|
| Day 1 | Check 2-4 hours after launch, end of day | Delivery, disapprovals, tracking |
| Days 2-3 | Daily | Search terms, CTR, budget pacing |
| Days 4-7 | Every other day | Trends, conversion volume |
| Week 2-3 | 2-3x per week | Learning status, stabilization |
| Week 4+ | Hebdomadaire | Full optimization review |

> ↪️ **Pour le guide complet de suivi :** See [Post-Launch Monitoring Reference](<../optimisation/Optimisation - Monitoring post-lancement.md>).

### 6.6 Documenter le lancement

Enregistrez :

| Champ | Valeur |
|-------|-------|
| Launch date | |
| Campaign names | |
| Bid strategy and target | |
| Daily budget | |
| Launched by | |

Configurez des rappels calendrier pour :
- Day 3 review
- Week 1 review
- Week 2 review (learning assessment)
- Month 1 review (full evaluation)

---

## Validation et critères de complétion

Cette SOP est terminée quand :

- [ ] Tous les éléments de la checklist pré-lancement passent
- [ ] Toutes les campagnes sont activées et diffusent des impressions
- [ ] Aucune annonce ou keyword refusé ne subsiste
- [ ] La vérification du premier jour confirme la diffusion, les termes de recherche pertinents et le tracking
- [ ] La cadence de suivi est documentée et les rappels calendrier configurés
- [ ] Le journal de lancement est enregistré avec les paramètres initiaux
- [ ] Le client est notifié que les campagnes sont actives

---

## Passerelle de sortie

| Délai | Action |
|-----------|--------|
| Days 1-7 | Monitor per cadence, add negatives from search terms |
| Week 2 | Assess learning status, run [SOP - Promouvoir les termes de recherche en mots-cles](<Search - Promouvoir les termes de recherche en keywords.md>) if strong performers emerge |
| Week 2-4 | Begin [SOP - Test RSA avec la boucle d'iteration](<Search - Test RSA avec la boucle d'itération.md>) once impression data is sufficient |
| Month 1+ | Enter regular optimization cadence |

**En cas de problème :**

| Problème | Rediriger vers |
|-------|----------|
| Poor search term relevance | Add negatives, review types de correspondance |
| Annonces refusées after launch | Fix ad copy, resubmit |
| No conversions after 7 days | Verify tracking, check landing page |
| Bid strategy stuck in learning | See [Post-Launch Monitoring Reference](<../optimisation/Optimisation - Monitoring post-lancement.md>) |
| Budget depleting too quickly | Reduce budget or review bid targets |

---

## Erreurs fréquentes

| Erreur | Pourquoi ça arrive | Comment l'éviter |
|---------|----------------|--------------|
| Launching with failed checklist items | Pressure to go live | Complete Phase 1-5 fully |
| Display Network left ON | Default setting not checked | Verify in Phase 1 |
| Broken landing pages | Pages changed between build and launch | Test URLs in Phase 3 |
| Changing bid targets during learning | Impatience | Set reminders, brief stakeholders |
| No launch documentation | Urgency | Complete in Phase 6 |

---

## Référence rapide : bibliothèque support

| Document | Type | Utilisé dans |
|----------|------|---------|
| [Search Campaign Launch Checklist](<Search - [Review] Lancement de campagne Search.md>) | Checklist | Phase 6 |
| [Universal Campaign Settings Reference](<../strategie/Strategie - Paramètres universels de campagne.md>) | Reference | Phase 1 |
| [Network Selection Reference](<../strategie/Strategie - Sélection de réseau.md>) | Reference | Phase 1 |
| [Post-Launch Monitoring Reference](<../optimisation/Optimisation - Monitoring post-lancement.md>) | Reference | Phase 6 |
| [Brand Separation Reference](<Search - Séparation de marque.md>) | Reference | Phase 5 |

---

## Procédures liées

| SOP | Relation |
|-----|-------------|
| [SOP - Rediger des RSA performantes](<Search - Rédiger des RSA performantes.md>) | Amont (ads written before launch) |
| [SOP - Selectionner une strategie d'encheres](<../encheres/Enchères - Sélectionner une stratégie d'enchères.md>) | Amont (bid strategy selected before launch) |
| [SOP - Promouvoir les termes de recherche en mots-cles](<Search - Promouvoir les termes de recherche en keywords.md>) | Aval (Week 2+) |
| [SOP - Test RSA avec la boucle d'iteration](<Search - Test RSA avec la boucle d'itération.md>) | Aval (when data sufficient) |
