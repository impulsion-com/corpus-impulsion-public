# Analyser les performances Meta Ads

> **Plateforme :** Meta
> **Catégorie :** Reporting
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Cette SOP structure l'analyse des performances Meta Ads à trois niveaux : la revue quotidienne (5 minutes), la revue hebdomadaire (30 minutes) et le bilan mensuel (60 minutes + rapport client).

> ❓ **La question clé :** Comment lire les données Ads Manager de manière structurée, émettre des hypothèses fiables et prendre les bonnes décisions au bon moment ?

Analyser sans méthode, c'est regarder des chiffres sans savoir quoi en faire. Cette SOP vous oblige à regarder les bonnes métriques dans le bon ordre, à formuler des hypothèses avant d'agir, et à documenter pour ne rien oublier.

---

## Ce que cette SOP ne couvre PAS

Cette SOP ne couvre **pas :**

- L'optimisation des créatives en détail (Voir : [Procédure - Optimiser les créatives Meta Ads](<../creatives/Creatives - Optimiser les créatives.md>))
- Le scaling budgétaire (Voir : [Procédure - Scaler une campagne Meta Ads](<../scaling/Scaling - Scaler une campagne.md>))
- La configuration du tracking (suivi des conversions/évènements) (Voir : [Procédure - Configurer le Conversions API (CAPI)](<../tracking/Tracking - Configurer le Conversions API (CAPI).md>))
- La création ou le lancement de nouvelles campagnes (Voir : [Procédure - Lancer une campagne Meta Ads](<../lancement/Lancement - Lancer une campagne.md>))

## Quand utiliser cette SOP

Lancez cette SOP selon la cadence suivante :

| Revue | Fréquence | Durée | Objectif |
|-------|-----------|-------|----------|
| Quotidienne | Tous les jours (lun-ven) | 5-10 min | Détecter les anomalies, vérifier la dépense |
| Hebdomadaire | 1x par semaine | 30 min | Analyser les tendances, décisions d'optimisation |
| Mensuelle | 1x par mois | 60 min | Bilan complet, rapport client, ajustement stratégique |

---

## Avant de commencer

### Prérequis

- Campagnes actives avec au moins 7 jours de données
- Colonnes personnalisées configurées dans Ads Manager
- CPA/ROAS cible défini
- Accès au CRM ou backend pour croiser les données (idéalement)

### Documents de référence (à garder ouverts)

| Document | Utilisé pour |
|----------|----------|
| [Référence - KPI Meta Ads](<../kpi/KPI - KPI.md>) | Benchmarks (analyses comparatives), seuils de décision, formules |
| [Recommandations - Optimisation Meta Ads](<../optimisation/Optimisation - Optimiser les performances.md>) | Matrice de diagnostic, ordre d'optimisation, cadence |
| [Guide Meta Ads](<../Guide Meta.md>) | Audiences, structure, règles |

---

## Cadre d'exécution

| Phase | Objectif | Résultat |
|-------|---------|--------|
| **Phase 1️⃣ : Revue quotidienne** | Détecter les anomalies et vérifier la dépense | Anomalies identifiées, actions urgentes prises |
| **Phase 2️⃣ : Revue hebdomadaire** | Analyser les tendances et prendre des décisions d'optimisation | Tendances documentées, actions planifiées |
| **Phase 3️⃣ : Revue mensuelle** | Bilan complet et rapport client | Rapport livré, stratégie ajustée |
| **Phase 4️⃣ : Breakdowns avancés** | Analyser par emplacement, âge, genre, appareil | Insights granulaires pour l'optimisation |

---

## Phase 1️⃣ : Revue quotidienne (5-10 minutes)

### 1.1 Ce qu'il faut checker chaque matin

Ouvrir Ads Manager, filtre sur "Hier" :

| Métrique | Ce qu'il faut vérifier | Signal d'alarme |
|----------|----------------------|-----------------|
| **Dépense** | Le budget a été consommé normalement | Sous-dépense (< 50% du budget) ou sur-dépense |
| **CPA** | Proche du CPA cible | CPA > 2x objectif |
| **Nombre de conversions** | Cohérent avec les jours précédents | Chute brutale (> 50%) |
| **Statut des campagnes** | Toutes les campagnes sont actives | Campagne en pause, en erreur, ou en cours d'examen |
| **Ads refusées** | Aucune ad refusée | Ad refusée = perte de diffusion |

### 1.2 Actions quotidiennes

| Situation | Action immédiate |
|-----------|-----------------|
| Dépense = 0 | Vérifier le moyen de paiement, les limites de compte, les refus d'ads |
| CPA > 2x objectif (jour isolé) | Noter, ne pas agir. Un jour ne fait pas une tendance |
| CPA > 2x objectif (3 jours consécutifs) | Analyser les créatives (Phase 2) |
| Ad refusée | Modifier et resoumettre immédiatement |
| Chute brutale des conversions | Vérifier le tracking (Events Manager > Test Events) |
| Dépense anormalement élevée | Vérifier les règles automatiques et les Account Spending Limits |

> ⚠️ **Règle d'or quotidienne :** ne pas modifier les campagnes en phase d'apprentissage. Lire les données, noter, mais ne pas toucher.

---

## Phase 2️⃣ : Revue hebdomadaire (30 minutes)

### 2.1 Setup

1. Ads Manager > filtre "7 derniers jours"
2. Comparer avec les "7 jours précédents" (bouton Comparer)
3. Regarder au niveau Campagne d'abord, puis Ad Set, puis Ads

### 2.2 Analyse au niveau campagne

Pour chaque campagne, noter :

| Métrique | Cette semaine | Semaine précédente | Tendance | Action |
|----------|--------------|-------------------|----------|--------|
| Dépense | | | ↑ ↓ → | |
| CPA ou ROAS | | | ↑ ↓ → | |
| Conversions | | | ↑ ↓ → | |
| CTR | | | ↑ ↓ → | |
| CPM | | | ↑ ↓ → | |
| Fréquence | | | ↑ ↓ → | |

### 2.3 Analyse au niveau Ad Set

Se concentrer sur les Ad Sets qui dépensent le plus :

| Question | Comment vérifier | Action |
|----------|-----------------|--------|
| Un Ad Set concentre-t-il trop de budget ? | Comparer les dépenses par Ad Set | Si un Ad Set capte > 70% du budget en CBO, vérifier si c'est justifié par les performances |
| Un Ad Set a-t-il un CPA > 2x objectif depuis 5+ jours ? | Filtrer par CPA | Couper l'Ad Set |
| Un Ad Set a une fréquence > 3 ? | Colonne fréquence | Audience saturée, élargir ou remplacer |
| Un Ad Set est toujours en phase d'apprentissage ? | Colonne "Diffusion" | Ne pas toucher, vérifier qu'il atteindra 50 conversions/semaine |

### 2.4 Analyse au niveau Ads

Pour les ads avec assez de données (dépense > 2x CPA cible) :

1. Appliquer la matrice de diagnostic créatif :
   - Hook rate → L'accroche fonctionne-t-elle ?
   - Hold rate → Le contenu retient-il l'attention ?
   - CTR → Le message pousse-t-il à l'action ?
   - CPA → Le créatif convertit-il ?

2. Classifier chaque ad : Winner / Loser / Fatigué / Inconcluant

> ↪️ **Pour le process complet d'analyse créative :** Voir [Procédure - Optimiser les créatives Meta Ads](<../creatives/Creatives - Optimiser les créatives.md>).

### 2.5 Checklist d'actions hebdomadaires

- [ ] Couper les ads/Ad Sets losers (CPA > 2x objectif depuis 5+ jours OU dépense > 3x CPA cible sans conversion)
- [ ] Identifier les winners à scaler
- [ ] Vérifier la fréquence (< 3 sur 7 jours)
- [ ] Lancer de nouvelles créatives si nécessaire
- [ ] Ajuster les budgets (+20% max sur les Ad Sets performants)
- [ ] Documenter les tendances et hypothèses

---

## Phase 3️⃣ : Revue mensuelle (60 minutes + rapport)

### 3.1 Analyse des tendances sur 30 jours

| Métrique | M-1 | M actuel | Variation | Commentaire |
|----------|-----|----------|-----------|-------------|
| Dépense totale | | | % | |
| CPA moyen | | | % | |
| ROAS moyen | | | % | |
| Conversions totales | | | % | |
| CTR moyen | | | % | |
| CPM moyen | | | % | |
| Nombre de créatives testées | | | | |
| Nombre de winners identifiés | | | | |

### 3.2 Analyse par objectif

Pour chaque objectif business :

| Objectif | KPI cible | KPI réel | Statut | Action |
|----------|----------|----------|--------|--------|
| Leads (prospects) | CPA < X EUR | | ✅ / ⚠️ / ❌ | |
| Ventes | ROAS > Xx | | ✅ / ⚠️ / ❌ | |

### 3.3 Analyse coût par étape du tunnel

| Étape | Coût | Volume | Taux de passage | Notes |
|-------|------|--------|-----------------|-------|
| Impression | CPM = | | | |
| Clic | CPC = | | CTR = | |
| Landing page view | CPLPV = | | LP view rate = | |
| Conversion | CPA = | | Taux de conversion = | |

Cette vue permet d'identifier où le tunnel "casse" :
- CTR faible → problème de créative
- LP view rate faible → la page charge trop lentement
- Taux de conversion faible → problème de landing page ou d'offre

### 3.4 Structure du rapport client

| Section | Contenu |
|---------|---------|
| **Résumé exécutif** | 3-5 lignes : dépense, résultats, CPA/ROAS vs objectif |
| **Performances clés** | Tableau avec les KPI principaux vs objectif |
| **Tendances** | Ce qui s'améliore, ce qui se dégrade, pourquoi |
| **Tests réalisés** | Quels tests ont été lancés, résultats |
| **Learnings** | Ce qu'on a appris ce mois |
| **Actions du mois prochain** | Plan d'action concret (3-5 actions max) |

### 3.5 Questions stratégiques mensuelles

Prendre du recul :

- Le budget est-il au bon niveau ? Trop haut, trop bas ?
- L'objectif Meta est-il toujours le bon ? (ex: faut-il passer de Purchase à AddToCart ?)
- Les audiences sont-elles toujours pertinentes ?
- La landing page est-elle optimisée ? (regarder le taux de conversion)
- L'offre fonctionne-t-elle toujours ?

---

## Phase 4️⃣ : Breakdowns avancés

### 4.1 Quand utiliser les breakdowns

Les breakdowns (ventilations) permettent de voir les performances par sous-segment. Utile pour :

- Identifier les emplacements qui fonctionnent vs ceux qui gaspillent
- Comprendre quelles tranches d'âge convertissent le mieux
- Optimiser par appareil (mobile vs desktop)

### 4.2 Breakdown par emplacement

Ads Manager > Breakdown > Par diffusion > Placement

| Emplacement | Dépense | CPA | CTR | Impressions | Action |
|-----------|---------|-----|-----|-------------|--------|
| Facebook Feed | | | | | |
| Instagram Feed | | | | | |
| Instagram Stories | | | | | |
| Instagram Reels | | | | | |
| Facebook Reels | | | | | |
| Audience Network | | | | | |
| Messenger | | | | | |

**Règles de décision :**
- Si un emplacement a un CPA > 2x la moyenne des autres : envisager de l'exclure
- Si Audience Network a un CPA élevé avec beaucoup de volume : tester sans AN
- Reels et Stories performent souvent mieux pour le CTR mais peuvent avoir un CPA différent

### 4.3 Breakdown par âge

Ads Manager > Breakdown > Par démographie > Âge

| Tranche d'âge | Dépense | CPA | CTR | Conversions | % du budget |
|---------------|---------|-----|-----|-------------|-------------|
| 18-24 | | | | | |
| 25-34 | | | | | |
| 35-44 | | | | | |
| 45-54 | | | | | |
| 55-64 | | | | | |
| 65+ | | | | | |

> ⚠️ **Attention aux conclusions hâtives :** une tranche d'âge avec un CPA élevé mais peu de dépense n'est pas significative. Ne prendre des décisions que sur les tranches avec assez de volume (> 2x CPA cible de dépense).

### 4.4 Breakdown par genre

| Genre | Dépense | CPA | CTR | Conversions |
|-------|---------|-----|-----|-------------|
| Hommes | | | | |
| Femmes | | | | |

Si l'écart de CPA est > 50% entre genres : envisager de séparer les audiences par genre dans des Ad Sets différents.

### 4.5 Breakdown par appareil

| Appareil | Dépense | CPA | CTR | Taux de conversion LP |
|----------|---------|-----|-----|----------------------|
| Mobile | | | | |
| Desktop | | | | |
| Tablette | | | | |

**Point clé :** si le CTR mobile est bon mais le taux de conversion est faible → la landing page n'est pas optimisée mobile. Ce n'est pas un problème de pub, c'est un problème de site.

### 4.6 Interpréter les tendances et émettre des hypothèses

Pour chaque observation, formuler une hypothèse structurée :

```
Observation : [ce que les données montrent]
Hypothèse : [pourquoi ça se passe]
Test : [comment vérifier l'hypothèse]
Action : [ce qu'on fait si l'hypothèse est confirmée]
```

**Exemples :**

| Observation | Hypothèse | Test | Action |
|-------------|-----------|------|--------|
| CPA en hausse de 30% sur 7 jours | Fatigue créative (fréquence = 3.5) | Vérifier fréquence + hook rate | Lancer de nouvelles créatives |
| CTR bon mais CPA élevé | Landing page ne convertit pas | Vérifier taux de conversion LP | Optimiser la LP ou tester une nouvelle |
| CPM en hausse de 40% | Saisonnalité (approche Black Friday) | Comparer avec l'historique N-1 | Adapter les attentes de CPA |
| Ad Set Broad meilleur qu'une audience similaire | L'algorithme trouve mieux seul que notre segmentation | Comparer sur 14 jours | Consolider en Broad, couper l'audience similaire |

---

## Validation et critères de complétion

Cette SOP est terminée quand :

- [ ] La revue quotidienne est effectuée (anomalies identifiées ou confirmé "tout OK")
- [ ] La revue hebdomadaire est documentée (tendances, actions, hypothèses)
- [ ] Les losers sont coupés et les winners identifiés
- [ ] Les breakdowns pertinents sont analysés (au moins mensuel)
- [ ] Le rapport client mensuel est livré (si applicable)
- [ ] Le backlog d'actions est mis à jour

---

## Passerelle de sortie

| Résultat de l'analyse | Rediriger vers |
|----------------------|----------------|
| Créatives fatiguées ou sous-performantes | [Procédure - Optimiser les créatives Meta Ads](<../creatives/Creatives - Optimiser les créatives.md>) |
| Campagne performante à scaler | [Procédure - Scaler une campagne Meta Ads](<../scaling/Scaling - Scaler une campagne.md>) |
| Problème de tracking identifié | [Procédure - Configurer le Conversions API (CAPI)](<../tracking/Tracking - Configurer le Conversions API (CAPI).md>) |
| Besoin de lancer une nouvelle campagne | [Procédure - Lancer une campagne Meta Ads](<../lancement/Lancement - Lancer une campagne.md>) |

**En cas de problème :**

| Problème | Rediriger vers |
|-------|----------|
| Données incohérentes (Meta vs CRM) | Vérifier CAPI et déduplication |
| CPA en hausse sans raison apparente | Vérifier créatives, fréquence, saisonnalité, puis audiences |
| Aucune conversion | Vérifier tracking en priorité, puis offre et landing page |
| Budget sous-dépensé | Vérifier audience trop restreinte, enchères trop basses, ads refusées |

---

## Erreurs fréquentes

| Erreur | Pourquoi ça arrive | Comment l'éviter |
|---------|----------------|--------------|
| Regarder les données sur 1 jour et paniquer | Recherche de gratification immédiate | Toujours analyser sur 7 jours minimum pour des tendances |
| Modifier pendant la phase d'apprentissage | Impatience | Se forcer à ne rien toucher pendant 7 jours ou 50 conversions |
| Ignorer les breakdowns | "Ça prend trop de temps" | Intégrer les breakdowns dans la revue mensuelle au minimum |
| Ne pas croiser avec les données CRM | Confiance aveugle dans Meta | Toujours comparer conversions Meta vs conversions réelles |
| Tirer des conclusions sur des petits volumes | Biais de confirmation | Minimum 2x CPA cible de dépense pour juger un Ad Set ou une ad |
| Ne pas documenter les hypothèses | Analyse non structurée | Utiliser le format Observation / Hypothèse / Test / Action |
| Oublier la saisonnalité | Analyse décontextualisée | Toujours vérifier le calendrier (soldes, vacances, Q4) |

---

## Procédures liées

| SOP | Relation |
|-----|-------------|
| [Procédure - Optimiser les créatives Meta Ads](<../creatives/Creatives - Optimiser les créatives.md>) | Aval (quand l'analyse révèle un problème de créatives) |
| [Procédure - Scaler une campagne Meta Ads](<../scaling/Scaling - Scaler une campagne.md>) | Aval (quand l'analyse confirme de bonnes performances) |
| [Procédure - Configurer le Conversions API (CAPI)](<../tracking/Tracking - Configurer le Conversions API (CAPI).md>) | Lié (quand l'analyse révèle un problème de tracking) |
| [Procédure - Lancer une campagne Meta Ads](<../lancement/Lancement - Lancer une campagne.md>) | Lié (monitoring post-lancement) |
