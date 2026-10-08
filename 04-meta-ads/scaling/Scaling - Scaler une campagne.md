# Scaler une campagne Meta Ads

> **Plateforme :** Meta
> **Catégorie :** Scaling
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Cette SOP vous guide pour augmenter le budget et le volume de conversions d'une campagne Meta Ads qui performe, sans détruire les performances. Scaler, c'est trouver le bon rythme entre croissance et stabilité.

> ❓ **La question clé :** Comment augmenter les dépenses d'une campagne qui marche sans que le CPA explose ?

Le scaling est la phase où la plupart des media buyers font des erreurs coûteuses. Trop vite, l'algorithme perd ses repères et le CPA s'envole. Trop lentement, vous laissez du volume sur la table. Cette SOP donne un cadre pour trouver le bon rythme.

---

## Ce que cette SOP ne couvre PAS

Cette SOP ne couvre **pas :**

- Le lancement d'une nouvelle campagne (Voir : [Procédure - Lancer une campagne Meta Ads](<../lancement/Lancement - Lancer une campagne.md>))
- L'optimisation des créatives (Voir : [Procédure - Optimiser les créatives Meta Ads](<../creatives/Creatives - Optimiser les créatives.md>))
- L'analyse détaillée des performances (Voir : [Procédure - Analyser les performances Meta Ads](<../reporting/Reporting - Analyser les performances.md>))
- La configuration du tracking (suivi des conversions/évènements) (Voir : [Procédure - Configurer le Conversions API (CAPI)](<../tracking/Tracking - Configurer le Conversions API (CAPI).md>))

## Quand utiliser cette SOP

Lancez cette SOP quand :

- Une campagne a un CPA stable et inférieur à l'objectif depuis au moins 7 jours
- La phase d'apprentissage est terminée
- Le client veut augmenter le volume de leads (prospects)/ventes
- Vous avez identifié des winners confirmés à exploiter
- La fréquence est basse (< 2 sur 7 jours) - il y a de la marge

---

## Avant de commencer

### Prérequis

| Prérequis | Seuil | Pourquoi |
|-----------|-------|----------|
| Phase d'apprentissage terminée | Statut "Actif" (pas "En apprentissage") | L'algorithme n'a pas encore ses repères sinon |
| CPA stable | CPA < CPA cible depuis 7+ jours | Scaler un CPA instable ne fera qu'amplifier les problèmes |
| Fréquence basse | < 2 sur 7 jours | Si la fréquence est déjà haute, l'audience est saturée |
| Créatives qui fonctionnent | Au moins 1-2 winners confirmés | Scaler du budget sur des losers = brûler de l'argent |
| Tracking fiable | CAPI en place, données cohérentes avec le CRM | Scaler sur des données fausses = catastrophe |

Si un de ces prérequis n'est pas rempli, ne pas scaler. Résoudre le problème d'abord.

### Documents de référence (à garder ouverts)

| Document | Utilisé pour |
|----------|----------|
| [Guide Meta Ads](<../Guide Meta.md>) | Règles de scaling, signaux |
| [Référence - KPI Meta Ads](<../kpi/KPI - KPI.md>) | Seuils de décision pour scaler/stopper |
| [Recommandations - Optimisation Meta Ads](<../optimisation/Optimisation - Optimiser les performances.md>) | Quand couper vs quand attendre |

---

## Cadre d'exécution

| Phase | Objectif | Résultat |
|-------|---------|--------|
| **Phase 1️⃣ : Évaluer la capacité de scaling** | Confirmer que les prérequis sont remplis et quantifier la marge | Go/No-Go documenté |
| **Phase 2️⃣ : Scaling vertical** | Augmenter le budget progressivement | Budget augmenté avec CPA maintenu |
| **Phase 3️⃣ : Scaling horizontal** | Élargir les audiences, formats et marchés | Nouvelles sources de volume identifiées |
| **Phase 4️⃣ : Surveiller et ajuster** | Monitorer les signaux d'alerte et réagir | Scaling stabilisé ou rollback effectué |

---

## Phase 1️⃣ : Évaluer la capacité de scaling

### 1.1 Documenter la baseline

Avant de toucher quoi que ce soit, noter la situation actuelle :

| Métrique | Valeur actuelle |
|----------|----------------|
| Budget quotidien | |
| CPA moyen (7 derniers jours) | |
| CPA cible | |
| ROAS moyen (si e-commerce) | |
| Conversions/jour | |
| CTR | |
| CPM | |
| Fréquence (7 jours) | |
| Couverture (7 jours) | |
| Taille de l'audience cible | |

### 1.2 Calculer la marge de scaling

| Calcul | Formule | Résultat |
|--------|---------|----------|
| Marge CPA | (CPA cible - CPA actuel) / CPA cible x 100 | % de marge |
| Marge fréquence | Audience totale / Couverture actuelle | Ratio de saturation |
| Budget objectif | CPA cible x conversions/jour souhaitées | Budget quotidien cible |

**Interprétation :**

| Marge CPA | Capacité de scaling |
|-----------|---------------------|
| > 30% | Forte marge, scaling agressif possible |
| 15-30% | Marge correcte, scaling progressif |
| < 15% | Marge faible, scaling risqué |

| Ratio audience/couverture | Capacité de scaling |
|---------------------|---------------------|
| > 5x | Beaucoup de marge, l'audience est loin d'être saturée |
| 2-5x | Marge correcte |
| < 2x | Audience proche de la saturation, scaling horizontal nécessaire |

### 1.3 Décision Go/No-Go

| Condition | Décision |
|-----------|----------|
| CPA < 80% objectif + fréquence < 2 + phase d'apprentissage terminée | ✅ Go - Scaling vertical |
| CPA < objectif + fréquence < 3 + audience > 3x couverture | ✅ Go - Scaling vertical prudent |
| CPA proche de l'objectif + fréquence > 3 | ⚠️ Scaling horizontal uniquement |
| CPA > objectif OU phase d'apprentissage OU pas de winner | ❌ No-Go - Optimiser d'abord |

---

## Phase 2️⃣ : Scaling vertical (augmenter le budget)

### 2.1 La règle des 20%

La règle fondamentale du scaling vertical sur Meta :

- **Ne jamais augmenter le budget de plus de 20% par ajustement**
- **Espacer chaque augmentation de 48-72h** minimum
- **L'algorithme Meta est sensible aux changements brusques** - un doublement de budget peut faire exploser le CPA

### 2.2 Calendrier de scaling type

| Jour | Action | Budget (ex: départ 50 EUR/jour) |
|------|--------|-------------------------------|
| J0 | Baseline documentée | 50 EUR |
| J1 | Augmentation +20% | 60 EUR |
| J3-4 | Vérifier CPA, si stable : +20% | 72 EUR |
| J6-7 | Vérifier CPA, si stable : +20% | 86 EUR |
| J9-10 | Vérifier CPA, si stable : +20% | 103 EUR |
| J12-13 | Vérifier CPA, si stable : +20% | 124 EUR |

En 2 semaines, le budget a plus que doublé (50 → 124 EUR) de manière progressive et contrôlée.

### 2.3 Quand augmenter

Après chaque augmentation, vérifier avant la suivante :

| Check | Condition pour continuer |
|-------|--------------------------|
| CPA | Toujours < CPA cible (ou < CPA cible + 15%) |
| Fréquence | Toujours < 3 sur 7 jours |
| CTR | Stable ou en hausse |
| Conversions | En hausse proportionnelle au budget |

### 2.4 CBO vs ABO pour le scaling

| Situation | Recommandation |
|-----------|----------------|
| Vous scalez en ABO | Passer en CBO une fois que les winners sont identifiés. CBO répartit mieux le budget à grande échelle |
| Vous êtes déjà en CBO | Augmenter le budget au niveau campagne |
| Vous avez des Ad Sets très différents en performance | Rester en ABO pour contrôler la répartition |

### 2.5 Scaling via Advantage+ Shopping Campaigns (ASC)

Pour l'e-commerce, les campagnes Advantage+ Shopping sont un levier de scaling puissant :

1. Créer une campagne Advantage+ Shopping séparée
2. Y mettre les créatives winners
3. Laisser Meta optimiser automatiquement les audiences
4. Budget initial = budget quotidien actuel de la campagne manuelle
5. Laisser tourner 7 jours, comparer les performances

---

## Phase 3️⃣ : Scaling horizontal (élargir)

Le scaling horizontal est nécessaire quand le scaling vertical atteint ses limites (fréquence qui monte, CPA qui augmente).

### 3.1 Dupliquer les Ad Sets gagnants

1. Prendre l'Ad Set avec le meilleur CPA
2. Le dupliquer avec une audience différente
3. Garder les mêmes créatives winners

| Audience actuelle | Audiences à tester |
|-------------------|-------------------|
| Broad | Lookalike 1% basé sur les acheteurs |
| Lookalike 1% | Lookalike 3-5% |
| Lookalike 1-5% | Intérêts spécifiques |
| Intérêts | Broad (souvent meilleur que les intérêts) |

### 3.2 Tester de nouveaux formats

| Format actuel | Formats à tester |
|---------------|------------------|
| Image statique | Vidéo courte (15-30s) |
| Vidéo longue | Reels (format vertical, < 30s) |
| Vidéo UGC | Carousel |
| Format unique | Créer des déclinaisons multi-format |

### 3.3 Ouvrir de nouveaux emplacements

Si vous avez des emplacements exclus :

1. Tester Instagram Reels si pas encore actif (souvent des CPA compétitifs)
2. Tester Facebook Reels
3. Tester Audience Network uniquement si le volume est nécessaire (qualité souvent inférieure)

### 3.4 Ouvrir de nouveaux marchés

| Situation | Recommandation |
|-----------|----------------|
| France uniquement | Tester Belgique (FR), Suisse (FR), Canada (FR) |
| Marché francophone | Tester en anglais si le produit s'y prête |
| Un seul pays | Tester les pays limitrophes avec la même langue |

Pour chaque nouveau marché :
- Créer une campagne séparée (nomenclature : `BE_LEADS_PROSP_Broad`)
- Adapter les créatives (monnaie, références culturelles)
- Budget test = CPA cible x 50 / 7

### 3.5 Tester de nouvelles créatives en parallèle

Pendant le scaling, le pipeline créatif ne doit jamais s'arrêter :

- Campagne de scaling (CBO) → les winners, budget croissant
- Campagne de test (ABO) → les nouvelles créatives, budget fixe
- Les winners du test alimentent la campagne de scaling

> ↪️ **Pour le process complet de test créatif :** Voir [Procédure - Optimiser les créatives Meta Ads](<../creatives/Creatives - Optimiser les créatives.md>).

---

## Phase 4️⃣ : Surveiller et ajuster

### 4.1 Signaux d'alerte pendant le scaling

| Signal | Seuil | Interprétation | Action |
|--------|-------|----------------|--------|
| CPA en hausse de 15% | Sur 48-72h après un palier | L'algorithme peine à trouver des conversions au nouveau budget | Revenir au dernier budget stable |
| CPA en hausse de 30%+ | Sur 2+ jours | Le scaling est allé trop vite | Rollback immédiat au dernier budget stable |
| Fréquence > 3 | Sur 7 jours | L'audience est saturée | Passer en scaling horizontal |
| CTR en chute de 30% | Sur 7 jours | Fatigue créative | Renouveler les créatives |
| CPM en hausse de 40%+ | Soudain | Saisonnalité ou compétition accrue | Adapter les attentes, pas forcément un problème |
| Conversions stagnent malgré budget en hausse | Sur 7+ jours | Rendements décroissants | Atteinte du plafond de scaling vertical |
| Phase d'apprentissage re-déclenchée | Statut "En apprentissage" | Changement trop important | Ne rien toucher, attendre la sortie |

### 4.2 Procédure de rollback

Si le CPA dépasse le seuil acceptable :

1. **Revenir au dernier budget stable** (pas au budget initial, au dernier palier qui fonctionnait)
2. **Attendre 48-72h** sans rien modifier
3. **Analyser** : qu'est-ce qui a causé la hausse ?
   - Fréquence trop haute → scaling horizontal nécessaire
   - Créatives fatiguées → renouveler avant de re-scaler
   - Saisonnalité → attendre que le CPM se normalise
   - Audience épuisée → tester de nouvelles audiences
4. **Résoudre le problème** avant de retenter le scaling

### 4.3 Quand arrêter de scaler

| Signal | Signification |
|--------|---------------|
| CPA revient systématiquement au-dessus de l'objectif après chaque augmentation | Vous avez atteint le plafond de cette campagne/audience |
| Fréquence > 3 malgré des audiences larges | Le volume maximum est atteint pour ce marché |
| Les rendements sont décroissants (chaque EUR supplémentaire rapporte moins) | Vous êtes dans la zone de rendements décroissants |
| Le scaling horizontal ne trouve plus de nouvelles sources de volume | Le potentiel du marché est capté |

**Quand vous atteignez le plafond :**

1. Stabiliser le budget au dernier niveau rentable
2. Concentrer les efforts sur l'optimisation (créatives, landing page, offre)
3. Chercher de la croissance ailleurs (nouveau marché, nouveau produit, nouveau canal)

### 4.4 Cadence de monitoring pendant le scaling

| Période | Fréquence | Focus |
|---------|-----------|-------|
| Jours 1-3 après chaque augmentation | Quotidien | CPA, dépense, conversions |
| Semaine 1-2 de scaling | Quotidien | Fréquence, CTR, stabilité |
| Semaine 3+ | Tous les 2-3 jours | Tendances générales, rendements décroissants |

---

## Validation et critères de complétion

Cette SOP est terminée quand :

- [ ] La baseline pré-scaling est documentée
- [ ] La capacité de scaling est évaluée (Go/No-Go)
- [ ] Le scaling vertical est exécuté par paliers de 20% max
- [ ] Le scaling horizontal est testé si le vertical atteint ses limites
- [ ] Les signaux d'alerte sont surveillés à chaque palier
- [ ] Le CPA reste dans la zone acceptable (< CPA cible + 15%)
- [ ] Le point de stabilisation ou de plafond est identifié
- [ ] Le résultat est documenté (nouveau budget, nouveau CPA, volume obtenu)

---

## Passerelle de sortie

| Résultat du scaling | Action suivante |
|--------------------|----------------|
| Scaling réussi, CPA stable au nouveau budget | Documenter la nouvelle baseline, planifier le prochain palier |
| Scaling bloqué par la fréquence | Scaling horizontal (nouvelles audiences) |
| Scaling bloqué par les créatives | [Procédure - Optimiser les créatives Meta Ads](<../creatives/Creatives - Optimiser les créatives.md>) |
| CPA > objectif malgré rollback | Analyser en profondeur avec [Procédure - Analyser les performances Meta Ads](<../reporting/Reporting - Analyser les performances.md>) |
| Plafond atteint | Stabiliser, optimiser, ou explorer de nouveaux canaux |

**En cas de problème :**

| Problème | Rediriger vers |
|-------|----------|
| CPA explose après augmentation | Rollback immédiat (Phase 4.2) |
| Phase d'apprentissage re-déclenchée | Ne rien toucher pendant 7 jours |
| Pas de winner pour scaler | [Procédure - Optimiser les créatives Meta Ads](<../creatives/Creatives - Optimiser les créatives.md>) |
| Tracking incohérent pendant le scaling | [Procédure - Configurer le Conversions API (CAPI)](<../tracking/Tracking - Configurer le Conversions API (CAPI).md>) |

---

## Erreurs fréquentes

| Erreur | Pourquoi ça arrive | Comment l'éviter |
|---------|----------------|--------------|
| Doubler le budget d'un coup | Impatience, pression client | Respecter la règle des 20%, expliquer au client |
| Scaler un CPA instable | Confondre un bon jour avec une tendance | Exiger 7 jours de CPA stable avant de scaler |
| Scaler sans créatives fraîches | Focus uniquement sur le budget | Maintenir le pipeline créatif pendant le scaling |
| Ne pas documenter la baseline | Oubli | Remplir le tableau Phase 1.1 avant toute modification |
| Scaler pendant une période de CPM élevé | Ignorer la saisonnalité | Vérifier le calendrier (Q4, soldes, événements) |
| Ne pas avoir de plan de rollback | Optimisme excessif | Toujours savoir quel était le dernier budget stable |
| Scaler vertical quand l'audience est saturée | Ignorer la fréquence | Vérifier la fréquence avant chaque augmentation |
| Scaler trop de variables à la fois | Vouloir aller vite | Une méthode à la fois (vertical OU horizontal, pas les deux simultanément) |

---

## FAQ

**Q: À quelle vitesse peut-on raisonnablement doubler un budget ?**

A: En suivant la règle des 20% avec 48-72h entre chaque palier, il faut environ 2 semaines pour doubler un budget. C'est le rythme sûr. Aller plus vite augmente significativement le risque de déstabiliser l'algorithme.

**Q: Faut-il scaler en CBO ou en ABO ?**

A: Commencez en ABO si vous testez encore des Ad Sets/audiences. Une fois les winners identifiés, passez en CBO pour le scaling - Meta répartit mieux le budget à grande échelle. Pour les gros budgets (500+ EUR/jour), CBO est presque toujours plus efficace.

**Q: Le CPA augmente un peu après chaque palier, c'est normal ?**

A: Une hausse de 5-10% est normale et temporaire (l'algorithme s'ajuste). Si le CPA revient dans la zone cible en 48-72h, tout va bien. Si la hausse persiste au-delà de 72h ou dépasse 15%, c'est un signal d'alerte : revenir au dernier budget stable.

**Q: Quand passer du scaling vertical au scaling horizontal ?**

A: Quand la fréquence dépasse 2.5-3 sur 7 jours, ou quand chaque augmentation de budget produit un CPA de moins en moins rentable. C'est le signe que l'audience actuelle est proche de la saturation.

---

## Procédures liées

| SOP | Relation |
|-----|-------------|
| [Procédure - Lancer une campagne Meta Ads](<../lancement/Lancement - Lancer une campagne.md>) | Amont (campagne lancée et stabilisée) |
| [Procédure - Optimiser les créatives Meta Ads](<../creatives/Creatives - Optimiser les créatives.md>) | Lié (pipeline créatif pendant le scaling) |
| [Procédure - Analyser les performances Meta Ads](<../reporting/Reporting - Analyser les performances.md>) | Lié (monitoring pendant le scaling) |
| [Procédure - Configurer le Conversions API (CAPI)](<../tracking/Tracking - Configurer le Conversions API (CAPI).md>) | Amont (tracking fiable requis avant de scaler) |
