# Optimiser les créatives Meta Ads

> **Plateforme :** Meta
> **Catégorie :** Creatives
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Cette SOP vous guide à travers l'analyse, le test et le renouvellement des créatives Meta Ads. Sur Meta, les créatives sont le levier d'optimisation n°1 - un bon créatif peut diviser votre CPA par 2-3x, un mauvais rend tout le reste inutile.

> ❓ **La question clé :** Comment identifier systématiquement ce qui fonctionne dans vos créatives, tuer ce qui ne fonctionne pas, et maintenir un pipeline de renouvellement pour éviter la fatigue ?

---

## Ce que cette SOP ne couvre PAS

Cette SOP ne couvre **pas :**

- La production des créatives (tournage vidéo, design graphique, rédaction de scripts)
- Le lancement d'une campagne from scratch (Voir : [Procédure - Lancer une campagne Meta Ads](<../lancement/Lancement - Lancer une campagne.md>))
- L'analyse globale des performances (Voir : [Procédure - Analyser les performances Meta Ads](<../reporting/Reporting - Analyser les performances.md>))
- Le scaling budgétaire (Voir : [Procédure - Scaler une campagne Meta Ads](<../scaling/Scaling - Scaler une campagne.md>))

## Quand utiliser cette SOP

Lancez cette SOP quand :

- Les campagnes sont sorties de la phase d'apprentissage et vous avez des données créatives
- Le CPA augmente progressivement (signe de fatigue créative)
- La fréquence dépasse 3 sur 7 jours
- Vous devez briefer un nouveau cycle de créatives
- Revue bi-mensuelle ou mensuelle des créatives

---

## Avant de commencer

### Prérequis

- Campagnes actives avec au moins 7-14 jours de données
- Accès à Ads Manager avec les colonnes personnalisées configurées
- Au minimum 1000 impressions par ad (pour des métriques fiables)
- Connaître le CPA/ROAS cible

### Documents de référence (à garder ouverts)

| Document | Utilisé pour |
|----------|----------|
| [Recommandations - Optimisation Meta Ads](<../optimisation/Optimisation - Optimiser les performances.md>) | Matrice de diagnostic créatif, process de test, seuils |
| [Référence - KPI Meta Ads](<../kpi/KPI - KPI.md>) | Benchmarks (analyses comparatives) créatifs (hook rate, hold rate, CTR, CPC) |
| [Guide Meta Ads](<../Guide Meta.md>) | Formats, règles créatives |

---

## Cadre d'exécution

| Phase | Objectif | Résultat |
|-------|---------|--------|
| **Phase 1️⃣ : Configurer les colonnes d'analyse** | Avoir les bonnes métriques sous les yeux | Colonnes personnalisées en place |
| **Phase 2️⃣ : Analyser les créatives existantes** | Identifier winners, losers et créatives fatiguées | Diagnostic par créative |
| **Phase 3️⃣ : Tester de nouvelles créatives** | Process de test structuré (hooks, corps, CTA) | Tests lancés |
| **Phase 4️⃣ : Identifier et exploiter les winners** | Scaler les gagnants, décliner les angles | Winners identifiés et déployés |
| **Phase 5️⃣ : Renouvellement créatif** | Anticiper la fatigue et maintenir le pipeline | Pipeline de créatives alimenté |

---

## Phase 1️⃣ : Configurer les colonnes d'analyse

### 1.1 Colonnes personnalisées dans Ads Manager

Créez un preset de colonnes "Analyse Créatives" avec :

| Colonne | Métrique | Pourquoi |
|---------|----------|----------|
| Hook Rate | Vues vidéo de 3s / Impressions | Les 3 premières secondes captent-elles l'attention ? |
| Hold Rate | ThruPlay / Vues vidéo de 3s | Le contenu garde-t-il l'attention après le hook ? |
| CTR (link) | Clics sur le lien / Impressions | Le message pousse-t-il à l'action ? |
| CPC (link) | Coût par clic sur le lien | Combien coûte chaque visiteur ? |
| CPA | Coût par conversion | Le créatif convertit-il ? |
| ROAS | Valeur de conversion / Dépense | Le créatif est-il rentable ? (e-commerce) |
| Dépense | Montant total dépensé | Budget consommé par créative |
| Impressions | Nombre d'affichages | Volume de données |
| Fréquence | Impressions / Couverture | L'audience est-elle saturée ? |
| Quality Ranking | Score de qualité Meta | Qualité perçue par Meta |

### 1.2 Seuils de référence

> ↪️ **Pour les seuils détaillés :** Voir [Référence - KPI Meta Ads](<../kpi/KPI - KPI.md>) > Métriques créatives - Seuils.

| Métrique | Mauvais | Correct | Bon | Excellent |
|----------|---------|---------|-----|-----------|
| Hook Rate | < 15% | 15-25% | 25-35% | > 35% |
| Hold Rate | < 20% | 20-35% | 35-50% | > 50% |
| CTR | < 0.5% | 0.5-1.0% | 1.0-2.0% | > 2.0% |

---

## Phase 2️⃣ : Analyser les créatives existantes

### 2.1 Trier par dépense

1. Ads Manager > onglet Ads
2. Trier par dépense (décroissant)
3. Se concentrer sur les ads qui ont dépensé au moins 2x le CPA cible (données significatives)

### 2.2 Appliquer la matrice de diagnostic

Pour chaque ad avec assez de données, appliquer la matrice :

| Hook Rate | Hold Rate | CTR | Diagnostic | Action |
|-----------|-----------|-----|------------|--------|
| ❌ Faible | - | - | Le hook ne capte pas l'attention | Changer les 3 premières secondes / première image |
| ✅ OK | ❌ Faible | - | Le contenu ne tient pas la promesse du hook | Retravailler le corps du message |
| ✅ OK | ✅ OK | ❌ Faible | Le message intéresse mais ne pousse pas à l'action | Renforcer le CTA et l'offre |
| ✅ OK | ✅ OK | ✅ OK | Le créatif fonctionne | Scaler le budget, décliner l'angle |
| ❌ Faible | ❌ Faible | ❌ Faible | Le créatif ne fonctionne pas | Changer complètement d'angle |

> ↪️ **Pour la matrice complète avec les hypothèses détaillées :** Voir [Recommandations - Optimisation Meta Ads](<../optimisation/Optimisation - Optimiser les performances.md>) > Matrice de diagnostic créatif.

### 2.3 Classifier chaque créative

Remplir ce tableau pour chaque ad :

| Ad | Dépense | CPA | Hook Rate | Hold Rate | CTR | Statut | Action |
|----|---------|-----|-----------|-----------|-----|--------|--------|
| | | | | | | Winner / Loser / Fatigué / Inconcluant | |

**Règles de classification :**

| Statut | Critères |
|--------|----------|
| **Winner** | CPA < CPA cible + CTR > médiane secteur + dépense > 2x CPA cible |
| **Loser** | Dépense > 3x CPA cible + 0 conversion, OU CPA > 2x objectif depuis 5+ jours |
| **Fatigué** | Était winner mais fréquence > 3 sur 7 jours, OU CPA en hausse progressive |
| **Inconcluant** | Dépense < 2x CPA cible (pas assez de données) |

### 2.4 Agir sur la classification

| Statut | Action |
|--------|--------|
| Winner | Augmenter le budget, décliner l'angle (Phase 4) |
| Loser | Couper immédiatement |
| Fatigué | Préparer un remplacement, commencer à réduire l'exposition |
| Inconcluant | Laisser tourner jusqu'à 2-3x CPA cible de dépense, puis réévaluer |

---

## Phase 3️⃣ : Tester de nouvelles créatives

### 3.1 Le process de test itératif

Tester dans cet ordre - chaque étape isole une variable :

```
Étape 1 : Tester les hooks (même message, 3-5 hooks différents)
    → Identifier le hook gagnant (meilleur hook rate)

Étape 2 : Tester les corps (même hook gagnant, 3-5 corps/angles différents)
    → Identifier le corps gagnant (meilleur hold rate + CTR)

Étape 3 : Tester les CTA (même hook + corps gagnant, 3-5 CTA différents)
    → Identifier le CTA gagnant (meilleur taux de conversion)

Résultat : Winner = meilleur hook + meilleur corps + meilleur CTA
```

### 3.2 Setup de test

| Paramètre | Recommandation |
|-----------|----------------|
| Structure | 1 campagne de test ABO (budget par Ad Set) |
| Budget par Ad Set | 2x CPA cible par variante minimum |
| Nombre de variantes | 3-5 par test (pas plus) |
| Durée du test | 3-7 jours (ou jusqu'à 2x CPA cible de dépense par variante) |
| Une seule variable | Ne changer QU'UN élément par test (hook OU corps OU CTA) |

### 3.3 Idées de hooks à tester

| Type de hook | Exemple |
|-------------|---------|
| Question | "Tu paies encore X EUR par mois pour ton assurance ?" |
| Statistique choc | "80% des entrepreneurs font cette erreur..." |
| Pain point direct | "Marre de perdre du temps avec [problème] ?" |
| Résultat | "En 30 jours, j'ai [résultat concret]" |
| Controverse | "Personne ne vous dit la vérité sur [sujet]" |
| UGC / témoignage | "Je ne pensais pas que ça marcherait mais..." |
| Before/After | Montrer la transformation visuelle |

### 3.4 Idées d'angles à tester

| Angle | Description |
|-------|-------------|
| Problème/Solution | Décrire le problème, puis présenter la solution |
| Témoignage | Un vrai client raconte son expérience |
| Démonstration | Montrer le produit/service en action |
| Comparaison | Avant/après, avec/sans, nous vs concurrents |
| Éducatif | Apporter de la valeur d'abord, vendre ensuite |
| Urgence/Rareté | Offre limitée, stocks faibles, deadline |
| Social proof | Nombre de clients, avis, résultats collectifs |

### 3.5 Évaluer les résultats du test

Après la durée du test :

1. Comparer les variantes sur la métrique cible (hook rate pour les hooks, hold rate pour les corps, CPA pour les CTA)
2. Le gagnant doit avoir au minimum 20% de mieux que le deuxième
3. Si les résultats sont trop proches : prolonger le test ou trancher sur le CPA final
4. Garder le gagnant, couper les perdants

---

## Phase 4️⃣ : Identifier et exploiter les winners

### 4.1 Critères de winner confirmé

Un créatif est un winner confirmé quand :

| Critère | Seuil |
|---------|-------|
| CPA < CPA cible | Depuis au moins 7 jours |
| Dépense | > 5x CPA cible (données significatives) |
| Conversions | > 10 |
| Fréquence | < 3 sur 7 jours (pas encore fatigué) |

### 4.2 Exploiter les winners

| Action | Comment |
|--------|---------|
| **Scaler le budget** | Augmenter le budget de 20% tous les 2-3 jours sur l'Ad Set contenant le winner |
| **Décliner l'angle** | Garder le même angle/hook mais varier le format (image -> vidéo, vidéo longue -> Reels) |
| **Décliner les audiences** | Tester le winner sur de nouvelles audiences (Broad -> audience similaire, ou inversement) |
| **Décliner les emplacements** | Adapter le format aux emplacements où il n'est pas encore diffusé |

### 4.3 Documenter les learnings

Pour chaque winner, documenter :

| Champ | Valeur |
|-------|-------|
| Nom de l'ad | |
| Format (vidéo, image, carousel) | |
| Hook utilisé | |
| Angle | |
| CPA moyen | |
| CTR moyen | |
| Hook rate | |
| Durée de performance | |
| Learning clé | |

Ces learnings alimentent les prochains briefs créatifs.

---

## Phase 5️⃣ : Renouvellement créatif

### 5.1 Quand renouveler

| Signal | Seuil | Urgence |
|--------|-------|---------|
| Fréquence > 3 sur 7 jours | Le creative fatigue | Préparer des remplacements sous 3-5 jours |
| CPA en hausse de 20%+ sur 7 jours | Performance en déclin | Lancer de nouveaux tests dans la semaine |
| CTR en baisse de 30%+ | L'audience ne réagit plus | Changer de hook ou d'angle |
| Toutes les ads en "Fatigué" | Urgence créative | Lancer de nouvelles créatives immédiatement |

### 5.2 Combien de créatives renouveler

| Taille du compte | Fréquence de renouvellement | Volume par cycle |
|-----------------|---------------------------|-----------------|
| Petit (< 50 EUR/jour) | Bi-mensuel | 3-5 nouvelles créatives |
| Moyen (50-200 EUR/jour) | Hebdomadaire | 5-8 nouvelles créatives |
| Grand (200+ EUR/jour) | 2x par semaine | 8-15 nouvelles créatives |

### 5.3 Le pipeline créatif

Maintenir un pipeline permanent :

```
Backlog d'idées (angles, hooks, formats)
    → En production (en cours de création)
        → Prêt à tester (créatives finalisées)
            → En test (live dans Ads Manager)
                → Winners (scalés) / Losers (archivés)
```

**Règle clé** : toujours avoir au moins 3-5 créatives "prêt à tester" en réserve. Ne jamais se retrouver sans créatives fraîches quand les actuelles fatiguent.

### 5.4 Réutiliser les learnings

Les winners passés alimentent les prochains tests :

- Reprendre le hook d'un winner avec un nouveau corps
- Reprendre l'angle d'un winner dans un nouveau format
- Combiner les éléments de deux winners différents
- Adapter un winner d'un client à un autre (même secteur)

---

## Validation et critères de complétion

Cette SOP est terminée quand :

- [ ] Les colonnes d'analyse créative sont configurées dans Ads Manager
- [ ] Chaque créative active est classifiée (winner, loser, fatigué, inconcluant)
- [ ] Les losers sont coupés
- [ ] Les winners sont identifiés et en cours de scaling/déclinaison
- [ ] Un cycle de test est en cours (hooks, corps ou CTA)
- [ ] Le pipeline créatif a au moins 3-5 créatives en réserve
- [ ] Les learnings sont documentés

---

## Passerelle de sortie

| Délai | Action |
|-----------|--------|
| Bi-mensuel | Analyser les créatives, couper les losers, identifier les winners |
| Mensuelle | Bilan créatif complet, mise à jour du pipeline |
| Trimestrielle | Revue des angles qui fonctionnent, mise à jour de la stratégie créative |

**En cas de problème :**

| Problème | Rediriger vers |
|-------|----------|
| Tous les créatifs sont des losers | Revoir l'offre et le positionnement (le problème n'est peut-être pas le créatif) |
| Fatigue créative trop rapide | Audience trop petite, élargir le ciblage |
| Bon CTR mais pas de conversions | Le problème est sur la landing page, pas le créatif |
| Impossible de battre le winner actuel | Changer radicalement d'angle (pas itérer sur le même) |

---

## Erreurs fréquentes

| Erreur | Pourquoi ça arrive | Comment l'éviter |
|---------|----------------|--------------|
| Tester trop de variables à la fois | Vouloir optimiser tout d'un coup | Une seule variable par test |
| Couper trop tôt | Impatience, jugement à < 1000 impressions | Attendre 2x CPA cible de dépense minimum |
| Ne pas documenter les learnings | Pas de process | Documenter chaque winner et chaque learning |
| Itérer indéfiniment sur le même angle | Biais de confirmation | Tester des angles radicalement différents régulièrement |
| Pas de pipeline créatif | Réactivité au lieu de proactivité | Toujours avoir 3-5 créatives en réserve |
| Ignorer le hook rate | Focus uniquement sur le CPA | Analyser le tunnel créatif complet (hook -> hold -> CTR -> CPA) |

---

## Procédures liées

| SOP | Relation |
|-----|-------------|
| [Procédure - Lancer une campagne Meta Ads](<../lancement/Lancement - Lancer une campagne.md>) | Amont (campagne lancée avant d'optimiser les créatives) |
| [Procédure - Analyser les performances Meta Ads](<../reporting/Reporting - Analyser les performances.md>) | Lié (l'analyse des performances inclut l'analyse créative) |
| [Procédure - Scaler une campagne Meta Ads](<../scaling/Scaling - Scaler une campagne.md>) | Aval (scaler les winners confirmés) |
