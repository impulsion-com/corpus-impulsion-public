# Analyse des créatives TikTok Ads

> **Plateforme :** TikTok
> **Catégorie :** Creatives
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Disposer d'un système d'analyse structuré pour diagnostiquer la performance de chaque créative TikTok, identifier les gagnantes, comprendre les causes de sous-performance, et alimenter les itérations créatives avec des données factuelles.

---

## Ce que cette SOP ne couvre PAS

Cette SOP ne couvre **pas :**

- La conception et la méthode créative amont (Voir : [Procédure - Stratégie créative TikTok Ads](<Creatives - Stratégie créative.md>))
- La rédaction du brief de production des prochaines itérations (Voir : [Procédure - Rédiger un brief UGC](<Creatives - Rédiger un brief UGC.md>))
- L'optimisation de campagne globale au-delà du levier créatif (Voir : [Procédure - Optimiser ses campagnes TikTok Ads](<../optimisation/Optimisation - Optimiser ses campagnes.md>))
- La lecture des audiences derrière les créatives (Voir : [Procédure - Analyser son audience TikTok Ads](<../audiences/Audiences - Analyser son audience.md>))
- La gestion des commentaires sous les créatives en diffusion (Voir : [Procédure - Gestion des commentaires TikTok Ads](<../optimisation/Optimisation - Gérer les commentaires.md>))

---

## Où trouver les métriques créatives dans TikTok Ads Manager

L'analyse créative se fait à deux niveaux :

**Niveau 1 — Vue agrégée (tableau de bord principal)**
> Ads Manager → Campagnes → Groupes d'annonces → Annonces → Personnaliser les colonnes

**Niveau 2 — Données vidéo détaillées (Video Insights)**
> Ads Manager → onglet **Créatifs** → sélectionner une annonce → **Video Insights**

💡 **Video Insights** est l'endroit où se trouvent le Hook Rate, le Hold Rate et les courbes de rétention seconde par seconde. C'est la vue la plus utile pour diagnostiquer une créative.

**Niveau 3 — Tableau de bord natif TikTok**
> Ads Manager → **Creative Insights** (onglet dédié)

Le tableau de bord Creative Insights permet de comparer plusieurs créatives côte à côte, de trier par métrique, et d'identifier automatiquement les "Top Performing Creatives" sur une période donnée.

---

## Définitions des métriques clés

### Hook Rate
**Formule :** Vues de 3 secondes / Impressions totales × 100

Le Hook Rate mesure la capacité de la créative à arrêter le scroll et retenir l'audience au-delà de la zone de non-retour — les 3 premières secondes. C'est l'indicateur créatif le plus direct : si le Hook Rate est faible, rien d'autre dans la vidéo n'a d'importance.

### Thumbstop Rate
**Formule :** Vues de 2 secondes / Impressions totales × 100

Mesure l'arrêt du pouce — le premier micro-signal d'engagement. Légèrement différent du Hook Rate, il indique si la première frame seule est suffisamment percutante pour stopper le scroll avant même que le son soit activé.

### Hold Rate
**Formule :** Vues à X% de la durée / Impressions totales × 100

TikTok Ads Manager expose les Hold Rates à **25%, 50%, 75% et 100%** de la durée de la vidéo. La courbe de rétention qui en résulte est le diagnostic le plus précis pour identifier à quel moment une vidéo perd son audience.

### Completion Rate
**Formule :** Vues complètes / Impressions × 100

Indicateur de rétention globale. Moins précis que le Hold Rate à 75% mais plus simple à comparer entre créatives de durées différentes.

---

## Tableau de benchmarks complets

| Métrique | Benchmark fort | Performance moyenne | Signal d'alerte | Action recommandée |
|---|---|---|---|---|
| **Hook Rate (3s)** | > 35-40% | 20-30% | < 15% | Retravailler l'accroche entière |
| **Thumbstop Rate (2s)** | > 40% | 25-35% | < 20% | Changer la première frame |
| **Hold Rate (25%)** | > 50% | 35-50% | < 25% | Problème dans les 5 premières secondes |
| **Hold Rate (75%)** | > 25% | 15-25% | < 10% | Perte d'intérêt avant le CTA |
| **Completion Rate** | > 20% (vidéo 21-34s) | 10-20% | < 8% | Vidéo trop longue ou trop peu engageante |
| **CTR** | > 2-3% | 1-2% | < 0,5% | Problème de CTA ou d'offre |
| **CVR (clic → conversion)** | > 3-5% | 1-3% | < 0,5% | Problème de landing page |
| **CPM** | < €5 (EU) | €5-10 | > €15 | Audience saturée ou score créatif faible |
| **CPA** | Dépend de l'offre | Dépend de l'offre | > 3x CPA cible | Couper ou itérer |

⚠️ **Ces benchmarks (analyse comparative) sont valables pour le marché européen en 2025-2026.** Les CPM varient significativement selon le secteur (beauté et mode = CPM plus élevés), la période (Q4 = CPM +40-60%) et la qualité de l'audience ciblée.

---

## Diagnostic créatif par symptôme

Utiliser cette matrice pour identifier la cause racine d'une sous-performance :

| Symptôme | Cause probable | Solution |
|---|---|---|
| Hook Rate < 15% + CTR < 0,5% | Accroche faible, mauvaise première frame | Tester 3 nouvelles accroches sur le même footage |
| Hook Rate > 30% mais CTR < 0,8% | Bonne accroche mais CTA faible | Renforcer le CTA, ajouter overlay textuel |
| CTR > 2% mais CVR < 0,5% | Problème de landing page, pas de créative | Auditer la page de destination |
| CPM > €15 + impressions faibles | Score créatif bas, audience saturée | Nouvelle créative OU nouvelle audience |
| Hold Rate à 75% < 10% | La vidéo ennuie après 15 secondes | Raccourcir la vidéo, monter plus vite |
| Drop brutal à 50% | Montage ou transition problématique | Identifier le plan fautif via Video Insights |
| CPA élevé mais CTR correct | Offre peu compétitive ou mauvais ciblage | Tester une autre offre / angle de message |

---

## Processus d'identification d'une créative gagnante

Une créative est qualifiée de "gagnante" (Winning Creative) quand elle remplit **les 3 conditions suivantes** :

1. **Hook Rate > 30%** — elle accroche l'audience froide
2. **CTR > 1,5%** — elle génère des clics qualifiés
3. **CPA ≤ CPA cible** — elle est rentable sur au moins 20-30 conversions

💡 **Règle des 20 conversions :** Ne pas qualifier une créative de gagnante avant qu'elle ait généré au minimum 20 conversions. En dessous, les données ne sont pas statistiquement significatives.

### Que faire avec une créative gagnante ?

1. **Documenter** : noter l'accroche, le format, le ton, la durée, le type de hook
2. **Dupliquer l'angle** : produire 3-5 variantes avec le même angle mais une exécution légèrement différente
3. **Scaler le budget** sur le groupe d'annonces contenant la créative gagnante (+15-20% par palier)
4. **Archiver dans la swipe file** (Foreplay.co ou dossier Drive) avec les métriques associées
5. **Anticiper la fatigue** : planifier un renouvellement 2-3 semaines après le pic de performance

---

## Configuration A/B Test dans TikTok Ads Manager

TikTok Ads Manager dispose d'un outil natif d'A/B test (split test) accessible depuis :
> Campagnes → **Créer un test** → Split Test

### Configuration recommandée pour un test créatif

- **Variable testée** : Créatifs uniquement (garder audience + budget identiques)
- **Budget** : minimum €50/jour par variante pour collecter des données en 3-5 jours
- **Durée** : 7 jours minimum pour couvrir les variations jour/week-end
- **Critère de victoire** : CPA le plus bas avec significativité statistique ≥ 80% (TikTok calcule automatiquement)

⚠️ **Ne tester qu'une seule variable à la fois.** Changer l'accroche ET le visuel simultanément rend le résultat non interprétable.

### Alternative au split test natif : test multi-créatives dans un même ad group

Pour les comptes avec budget limité (< €100/jour), mettre **3-5 créatives dans le même groupe d'annonces** et laisser l'algorithme TikTok distribuer le budget vers les meilleures. Moins rigoureux statistiquement mais plus adapté aux petits budgets.

---

## Export des données créatives pour analyse en masse

Pour analyser plusieurs créatives en parallèle (> 10 créatives actives) :

1. Ads Manager → Annonces → sélectionner la période d'analyse (30 derniers jours recommandé)
2. Personnaliser les colonnes : ajouter Hook Rate, VTR 3s, VTR 25%, VTR 75%, CTR, CVR, CPA, CPM
3. **Exporter en CSV** (bouton en haut à droite du tableau)
4. Ouvrir dans Google Sheets ou connecter à **Motion** pour visualisation automatique

💡 **Motion** (outil tiers) synchronise directement avec TikTok Ads Manager et génère des visualisations de tendance créative, des alertes de fatigue et un scoring automatique des créatives. Recommandé pour les comptes avec > 20 créatives actives simultanément.

---

## Méthodologie d'analyse hebdomadaire

Réaliser cette analyse chaque semaine, idéalement le lundi matin sur les 7 derniers jours :

### Étape 1 — Vue macro (10 min)
- Trier toutes les créatives actives par CPA croissant
- Identifier les 3 meilleures et les 3 moins bonnes

### Étape 2 — Diagnostic des sous-performantes (15 min)
- Ouvrir Video Insights pour chaque créative sous-performante
- Appliquer la matrice diagnostic (tableau ci-dessus)
- Décider : itérer, couper, ou donner plus de temps

### Étape 3 — Extraire les apprentissages des gagnantes (10 min)
- Quel hook ? Quel ton ? Quelle durée ? Quel CTA ?
- Documenter dans la swipe file créative

### Étape 4 — Planifier les nouvelles créatives (5 min)
- Sur la base des apprentissages, brief les 3-5 nouvelles créatives de la semaine
- → voir [Procédure - Rédiger un brief UGC](<Creatives - Rédiger un brief UGC.md>)

---

## Références croisées

- [Procédure - Stratégie créative TikTok Ads](<Creatives - Stratégie créative.md>)
- [Procédure - Rédiger un brief UGC](<Creatives - Rédiger un brief UGC.md>)
- [Procédure - Optimiser ses campagnes TikTok Ads](<../optimisation/Optimisation - Optimiser ses campagnes.md>)
- [Référence - Politiques publicitaires TikTok Ads](<../compte/Compte - Politiques publicitaires.md>)
