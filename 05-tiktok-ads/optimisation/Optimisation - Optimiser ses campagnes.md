# Optimiser ses campagnes TikTok Ads

> **Plateforme :** TikTok
> **Catégorie :** Optimisation
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Analyser systématiquement les performances de ses campagnes TikTok Ads, distinguer les phases d'apprentissage des phases stables, appliquer les bons leviers d'optimisation au bon moment, et scaler efficacement sans casser l'algorithme.

---

## Ce que cette SOP ne couvre PAS

Cette SOP ne couvre **pas :**

- La configuration des règles automatisées dans Ads Manager (Voir : [Procédure - Configurer les règles automatisées TikTok Ads](<Optimisation - Configurer les règles automatisées.md>))
- La gestion active des commentaires comme levier de performance (Voir : [Procédure - Gestion des commentaires TikTok Ads](<Optimisation - Gérer les commentaires.md>))
- L'analyse fine de la performance créative et le diagnostic Hook/Hold Rate (Voir : [Procédure - Analyse des créatives TikTok Ads](<../creatives/Creatives - Analyse des créatives.md>))
- Le diagnostic et le rééquilibrage des audiences (Voir : [Procédure - Analyser son audience TikTok Ads](<../audiences/Audiences - Analyser son audience.md>))
- Le lancement initial d'une campagne (Voir : [Procédure - Lancer une campagne conversions TikTok Ads](<../lancement/Lancement - Lancer une campagne conversions.md>))
- Les choix structurels (CBO/ABO, nomenclature) (Voir : [Procédure - Structurer ses campagnes TikTok Ads](<../lancement/Lancement - Structurer ses campagnes.md>))

---

## Phase d'apprentissage vs phase stable

Comprendre dans quelle phase se trouve une campagne est le prérequis à toute décision d'optimisation.

### Phase d'apprentissage

TikTok entre en phase d'apprentissage dès qu'une campagne est lancée ou significativement modifiée. L'algorithme explore les signaux d'audience et optimise la diffusion.

| Indicateur | Comportement normal en apprentissage |
|---|---|
| CPA | Élevé et instable — peut être 2-3x le CPA cible |
| CPM | Variable, parfois anormalement haut ou bas |
| Livraison | Irrégulière, pics et creux |
| CTR | Fluctuant — pas représentatif |

**Durée standard :** 3 à 7 jours, ou jusqu'à **50 événements d'optimisation** cumulés (conversions, leads, etc.)

⚠️ **Ne pas modifier une campagne en phase d'apprentissage.** Toute modification (budget, ciblage, créatif) relance l'apprentissage depuis zéro. La seule exception : couper une créative qui dépense sans aucune conversion après 3x le CPA cible.

### Phase stable

Une campagne est en phase stable quand :
- Elle a collecté ≥ 50 conversions sur les 7 derniers jours
- Le CPA est stable sur 3 jours consécutifs (variation < 20%)
- La livraison est régulière (pas de gaps)

En phase stable, les optimisations et ajustements de budget sont sûrs.

---

## Tableau de KPI benchmarks (analyse comparative)

| KPI | Benchmark EU (2025-2026) | Sous-performance | Action si sous-performance |
|---|---|---|---|
| **CTR** | 1-3% | < 0,5% | Tester nouveaux créatifs, retravailler le hook |
| **CVR (clic → achat e-com)** | 1-3% | < 0,5% | Auditer landing page, retravailler l'offre |
| **CPM** | €3-10 (UE, hors Q4) | > €15 | Audience saturée ou créative pénalisée |
| **CPA** | Dépend de l'offre | > 2x CPA cible stable | Changer créatif, audience ou offre |
| **ROAS e-com** | 2-4x (hors coûts opérationnels) | < 1,5x | Revoir toute la structure |
| **Hook Rate** | > 30% | < 15% | Retravailler l'accroche — voir [Référence - Analyse des créatives TikTok Ads](<../creatives/Creatives - Analyse des créatives.md>) |
| **Fréquence** | < 3 sur 7 jours | > 4 | Élargir l'audience ou rafraîchir les créatifs |

---

## Signaux de fatigue créative

La fatigue créative est la première cause de dégradation des performances sur TikTok. Elle arrive **2 à 4 semaines** après le lancement d'une créative — bien plus vite que sur Meta (4-8 semaines).

### Signaux à surveiller

| Signal | Seuil d'alerte | Action |
|---|---|---|
| CTR en baisse | -20% sur 7 jours glissants | Lancer 3-5 nouvelles créatives |
| Hook Rate en baisse | Descend sous 20% alors qu'il était > 30% | Retravailler l'accroche |
| CPM en hausse | +30% sur 7 jours vs semaine précédente | Fatigue créative OU saturation d'audience |
| Fréquence | > 3 sur l'audience principale | Renouveler les créatifs ou élargir l'audience |
| CPA en hausse | +25% stable sur 5 jours | Diagnostiquer : créatif, audience, ou offre |

💡 **Ne pas confondre fatigue créative et problème d'audience.** Si le CPM monte mais que la fréquence reste faible (< 2), le problème est la créative. Si la fréquence est élevée (> 4), c'est l'audience qui est saturée.

---

## Outils d'analyse natifs TikTok Ads Manager

### Performance Analysis
> Ads Manager → **Performance Analysis**

Vue croisée des performances par campagne, groupe d'annonces, créatif, période. Permet de repérer les corrélations entre métriques.

### Creative Insights
> Ads Manager → onglet **Créatifs** → Creative Insights

Vue dédiée à l'analyse des créatives. Trier par Hook Rate, CTR, CPA. Identifier les créatives gagnantes et les créatives en fatigue.

### Video Insights
> Annonce → **Video Insights**

Courbe de rétention seconde par seconde. Indique précisément à quel moment l'audience décroche. Outil de diagnostic chirurgical pour chaque créative.

### Ads Diagnostics
> Annonce sous-performante → **Diagnostics**

Quand une annonce a une diffusion anormalement basse, l'outil Diagnostics identifie la cause : Niveau de qualité créative faible, refus partiel, problème de ciblage, budget trop bas par rapport à l'enchère.

---

## Analyse de droite à gauche dans l'entonnoir

Pour diagnostiquer où se situe le problème, analyser l'entonnoir en remontant depuis la conversion :

```
Impressions → Hook Rate → Clics (CTR) → Visites LP → Conversions (CVR)
     ↑               ↑           ↑              ↑              ↑
  Ciblage /      Créatif     Créatif /       Landing       Landing /
  audience       (accroche)   offre/CTA        page           offre
```

**Logique de diagnostic :**
- Si les impressions sont faibles → problème de budget, ciblage trop étroit, ou qualité créative
- Si le Hook Rate est faible → problème d'accroche (retravailler les 3 premières secondes)
- Si le CTR est faible malgré un bon Hook Rate → problème de CTA ou d'offre dans la vidéo
- Si le CVR est faible malgré un bon CTR → problème de landing page, pas de la créative
- Si le CPA est élevé malgré un bon CVR → problème de panier moyen ou d'offre

---

## Analyse par device : iOS vs Android

L'analyse par device est souvent ignorée mais peut révéler des disparités importantes, notamment depuis iOS 14.5+ (restrictions ATT).

> Ads Manager → Annonces → Répartir par → **Device**

| Dimension | iOS | Android |
|---|---|---|
| Tracking | Partiel (ATT consent ~40-50%) | Plus complet |
| CPA typique | Souvent plus élevé (sous-attribution) | Plus bas (mieux tracké) |
| Qualité audience | Souvent plus élevée (acheteurs e-com) | Variable |

💡 Si le CPA iOS est 2x le CPA Android, c'est généralement dû à la sous-attribution, pas à une vraie différence de performance. Utiliser GA4 en parallèle pour reconcilier les données.

---

## Analyse par heure et jour (Dayparting)

TikTok Ads Manager permet d'analyser les performances par heure de la journée et jour de la semaine.

> Ads Manager → Performance Analysis → Répartir par → **Heure** ou **Jour de la semaine**

### Patterns typiques à surveiller

| Période | Comportement typique | Action possible |
|---|---|---|
| Lundi matin (9h-12h) | Souvent plus faible en CVR | Réduire budget ou surveiller |
| Jeudi-vendredi soir (18h-22h) | Pic d'engagement et de conversion | Augmenter budget si possible |
| Week-end | Variable selon secteur — souvent bon pour lifestyle, faible pour B2B | Analyser 4 semaines de données avant de conclure |
| 22h-06h | Impression moins chères, CVR plus faible | Tester le dayparting pour exclure ces heures si CVR < 0,3% |

⚠️ **Ne jamais tirer de conclusions sur moins de 4 semaines de données dayparting.** Les variations hebdomadaires sont trop importantes pour conclure sur 1-2 semaines.

---

## Discordance d'attribution TikTok Ads Manager vs GA4

Il est normal d'observer des écarts de 20 à 50% entre les conversions rapportées par TikTok et celles mesurées par GA4. Comprendre pourquoi est essentiel pour ne pas prendre de mauvaises décisions.

| Source d'écart | Explication |
|---|---|
| Fenêtre d'attribution | TikTok Ads Manager utilise par défaut 7j clic + 1j vue. GA4 est last-click par défaut |
| iOS 14.5+ ATT | TikTok modélise les conversions iOS non-consenties — GA4 ne les voit pas |
| Conversions view-through | TikTok compte les conversions après une vue sans clic — GA4 non |
| Déduplication | Si Meta est aussi actif, les conversions peuvent être attribuées aux deux plateformes |

💡 **Règle pratique :** Utiliser TikTok Ads Manager comme référence principale pour les décisions d'enchères (l'algorithme optimise sur ses propres données), et GA4 pour la vision globale du business. Toujours comparer les deux, mais ne pas piloter TikTok uniquement avec GA4.

---

## Stratégies de scaling

### Scaling vertical (budget increase)
Augmenter le budget d'un groupe d'annonces ou d'une campagne qui performe.

**Règles :**
- Maximum **+15 à 20% par palier**
- Attendre **minimum 3 jours** entre chaque augmentation pour laisser l'algorithme se stabiliser
- Si augmentation > 50% : risk de relancer la phase d'apprentissage
- Ne pas augmenter pendant le week-end (performances moins représentatives)

↪️ **Budget increase cooldown : 3 jours minimum entre deux augmentations.**

### Scaling horizontal (nouvelles audiences)
Dupliquer un groupe d'annonces performant vers de nouvelles audiences.

**Options de scaling horizontal :**
- Élargir l'audience similaire (1% → 2% → 5%)
- Tester de nouveaux centres d'intérêt
- Tester l'audience Broad (sans ciblage comportemental)
- Cibler une nouvelle géographie

⚠️ **Ne jamais modifier une audience existante qui performe.** Dupliquer le groupe d'annonces et tester la variation en parallèle.

### Méthode 3-2-2 de test créatif

Une méthode pour tester efficacement avec un budget maîtrisé :

```
3 accroches différentes
  × 2 corps de vidéo différents (démonstration vs témoignage)
    × 2 CTA différents
= jusqu'à 12 créatives testées de façon structurée
```

En pratique, commencer par les **3 accroches** sur le même footage (une seule session de tournage) avant d'investir dans des corps de vidéo entièrement différents.

---

## Checklist d'optimisation hebdomadaire

Réaliser cette revue chaque semaine (idéalement lundi matin) :

**Macro (campagnes)**
- [ ] CPA dans la cible sur les 7 derniers jours ?
- [ ] Budget bien consommé (pas de sous-livraison) ?
- [ ] Phase d'apprentissage terminée pour les nouvelles campagnes ?

**Créatifs**
- [ ] Identifier les créatives en fatigue (CTR -20%, Hook Rate < 20%)
- [ ] Vérifier que 3-5 nouvelles créatives sont en production ou prêtes à lancer
- [ ] Documenter les créatives gagnantes dans la swipe file

**Audiences**
- [ ] Fréquence < 3 sur les audiences principales ?
- [ ] Nouvelles audiences à tester cette semaine ?

**Budget**
- [ ] Campagnes performantes : augmenter de 15-20% si stable depuis 3 jours ?
- [ ] Campagnes sous-performantes : couper ou réduire ?

---

## Références croisées

- [Référence - Analyse des créatives TikTok Ads](<../creatives/Creatives - Analyse des créatives.md>)
- [Procédure - Stratégie créative TikTok Ads](<../creatives/Creatives - Stratégie créative.md>)
- [Procédure - Structurer ses campagnes TikTok Ads](<../lancement/Lancement - Structurer ses campagnes.md>)
- [Procédure - Configurer les règles automatisées TikTok Ads](<Optimisation - Configurer les règles automatisées.md>)
- [Référence - Politiques publicitaires TikTok Ads](<../compte/Compte - Politiques publicitaires.md>)
