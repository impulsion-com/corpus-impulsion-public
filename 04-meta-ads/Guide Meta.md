# Guide Meta Ads

> **Plateforme :** Meta
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Ce document est la référence centrale Meta Ads : structure de compte, nomenclature, hiérarchie des audiences, principes créatifs, tracking (suivi des conversions/évènements) et attribution. Il sert de point d'entrée et de checklist universelle pour démarrer ou auditer un compte.

---

## Ce que ce document ne couvre PAS

Ce document ne couvre **pas :**

- Le lancement pas-à-pas d'une campagne (Voir : [Procédure - Lancer une campagne Meta Ads](<lancement/Lancement - Lancer une campagne.md>))
- L'analyse des performances et la cadence de revue (Voir : [Procédure - Analyser les performances Meta Ads](<reporting/Reporting - Analyser les performances.md>))
- Le diagnostic et l'optimisation des performances (Voir : [Procédure - Optimisation Meta Ads](<optimisation/Optimisation - Optimiser les performances.md>))
- L'optimisation et le test des créatives (Voir : [Procédure - Optimiser les créatives Meta Ads](<creatives/Creatives - Optimiser les créatives.md>))
- Le scaling budgétaire d'une campagne qui performe (Voir : [Procédure - Scaler une campagne Meta Ads](<scaling/Scaling - Scaler une campagne.md>))
- L'installation du Conversions API (Voir : [Procédure - Configurer le Conversions API (CAPI)](<tracking/Tracking - Configurer le Conversions API (CAPI).md>))
- Le suivi server-side avancé (Stape/sGTM) (Voir : [Procédure - Configurer le suivi server-side (Stape sGTM)](<tracking/Tracking - Configurer le suivi server-side (Stape sGTM).md>))
- Le choix de la typologie de campagne (Voir : [Fiche - Les 5 typologies de campagne](<lancement/Lancement - Les 5 typologies de campagne.md>))
- Les règles automatiques (Voir : [Procédure - Configurer les règles automatiques Meta Ads](<optimisation/Optimisation - Configurer les règles automatiques.md>))
- Les benchmarks (analyses comparatives) chiffrés (CPM/CPC/CPL/CPA/ROAS) (Voir : [Référence - KPI Meta Ads](<kpi/KPI - KPI.md>))

---

## Structure de compte

### Hiérarchie

```
Compte publicitaire
  └── Campagne (objectif + budget)
        └── Ad Set (audience + placement + calendrier)
              └── Ad (créative + texte + CTA)
```

### Règles de structure

| Règle | Pourquoi |
|-------|----------|
| **1 campagne = 1 objectif** | Mélanger leads (prospects) et notoriété dans la même campagne empêche l'algorithme d'optimiser |
| **3-5 ads par ad set** | Moins de 3 = pas assez de données pour tester. Plus de 5 = budget trop dilué |
| **Laisser sortir de la phase d'apprentissage** | ~50 conversions par ad set par semaine. Ne pas toucher pendant cette phase |
| **Budget au niveau campagne (Advantage+ Campaign Budget, ex-CBO) par défaut** | Meta répartit automatiquement le budget entre les ad sets. Plus efficace que le budget par ad set (ex-ABO) dans 80% des cas |
| **Séparer prospection et retargeting (reciblage)** | Audiences et créatives différentes, métriques de succès différentes |

### Quand utiliser le budget par ad set (ex-ABO)

- Phase de test créatif (contrôle strict du budget par variante)
- Test d'audiences spécifiques avec budget égal
- Client avec contrainte de budget très serrée (< 20 EUR/jour)

> 📌 **Terminologie 2026** : Meta a renommé le **CBO → Advantage+ Campaign Budget (A+ CB)** et l'**ABO → budget par ensemble de publicités**. Les sigles CBO/ABO restent d'usage courant dans le métier ; ce corpus emploie les deux (le nouveau nom en premier).

---

## Convention de nomenclature

### Format standard

```
[Pays]_[Objectif]_[Type]_[Audience]_[Détail]
```

> 📌 **Préfixe `[Client]` optionnel** : une agence ou un freelance qui gère plusieurs comptes peut préfixer par le client (`Acme_FR_LEADS_PROSP_Broad`). Inutile à l'intérieur d'un compte dédié (le compte = le client).
>
> **Suffixe `[Date]`/version** : pour les tests créatifs et les règles automatiques, ajouter une date ou un numéro de version en fin de nom (`..._2026-07`, `..._v2`).
>
> Cette convention est la **référence unique** — les fiches de la formation (académie) s'y alignent.

### Campagnes

```
FR_LEADS_PROSP_Broad
FR_LEADS_RTG_Website-30j
FR_VENTES_PROSP_Lookalike-Acheteurs
FR_NOTORIETE_VIDEO_Intérêts-Fitness
```

| Variable | Valeurs |
|----------|---------|
| **Pays** | FR, BE, CH, CA, US, EU, WORLD |
| **Objectif** | LEADS, VENTES, TRAFIC, NOTORIETE, ENGAGEMENT |
| **Type** | PROSP (prospection), RTG (retargeting), RETENTION |
| **Audience** | Broad, Lookalike, Intérêts, Custom, RTG |

### Ad Sets

```
FR_LEADS_PROSP_Broad_H25-45_AllPlacement
FR_LEADS_RTG_Website-30j_H25-55_Feed-Stories
```

Variables supplémentaires :
- **Tranche d'âge** : H25-45, F18-35, HF25-55
- **Emplacement** : AllPlacement, Feed-Stories, Reels, AudienceNetwork

### Ads

```
FR_LEADS_PROSP_Broad_Video-UGC-Temoignage-Marine
FR_LEADS_PROSP_Broad_Image-Carousel-3Offres
FR_LEADS_RTG_Website-30j_Video-Demo-Produit
```

Variables supplémentaires :
- **Format** : Image, Video, Carousel, Collection
- **Angle** : UGC, Temoignage, Demo, Promo, Educatif, Comparatif
- **Détail libre** : nom du créatif, version

### Règles de nommage

- Pas d'espaces, utiliser des tirets `-` ou underscores `_`
- Majuscules pour les variables fixes (FR, LEADS, PROSP)
- Minuscules ou CamelCase pour les détails variables
- Toujours inclure le pays en premier (même si un seul pays)
- Cohérence absolue : une fois le format choisi, ne jamais dévier

---

## Objectifs de campagne

### Mapping objectif business - objectif Meta

| Objectif business | Objectif Meta | Événement d'optimisation | Quand l'utiliser |
|-------------------|---------------|--------------------------|------------------|
| Générer des leads | Leads (Prospects) | Lead, CompleteRegistration | Formulaire, prise de RDV, inscription |
| Vendre en ligne | Ventes | Purchase | E-commerce, produits digitaux |
| Vendre en ligne (panier moyen élevé) | Ventes | AddToCart ou InitiateCheckout | Si < 50 achats/semaine, remonter dans le tunnel |
| Trafic qualifié | Trafic | Landing Page Views (pas Link Clicks) | Tests de LP, contenu, SEO boost |
| Notoriété | Notoriété | ThruPlay ou Couverture | Lancement de marque, vidéo branding |
| Engagement | Engagement | Post Engagement | Preuve sociale, UGC |

### Règle de volume de conversion

Meta a besoin de **~50 conversions par ad set par semaine** pour optimiser correctement. Si vous n'atteignez pas ce volume :

1. **Remonter dans le tunnel** : optimiser pour AddToCart au lieu de Purchase
2. **Élargir l'audience** : passer en Broad au lieu de ciblage restreint
3. **Augmenter le budget** : plus de budget = plus de données = meilleure optimisation
4. **Consolider les ad sets** : fusionner les ad sets qui se chevauchent

---

## Moteur de diffusion & ciblage (Andromeda, Advantage+ Audience)

Le ciblage manuel par intérêts précis appartient à 2018-2020. En 2026, c'est l'algorithme qui cible — et la créative qui l'oriente.

### Principes

| Principe | Détail |
|----------|--------|
| **Andromeda** | Le moteur de diffusion (retrieval) de Meta cible mieux que vous. On travaille **avec** l'algorithme, pas contre lui |
| **La créa pilote le ciblage** | **1 ad set = 1 angle créatif**. C'est la créative qui indique à Meta à qui parler, pas le ciblage par intérêts |
| **Advantage+ Audience par défaut** | On fournit des *suggestions* d'audience (pas des contraintes) et Meta élargit là où ça performe |
| **Ciblage détaillé = suggestion, pas restriction** | En Advantage+ Audience, les intérêts servent d'indice de départ ; Meta sort du cadre si c'est plus rentable |

> ⚠️ **Piège classique** : cibler par intérêts précis. Le catalogue d'intérêts Meta est très réduit et Andromeda fait mieux tout seul. Commencer large, laisser une seule variable (la créa) porter l'angle.

> ↪️ **Quand désactiver Advantage+ Audience** : uniquement en retargeting strict (audience custom fermée) où l'on ne veut pas que Meta élargisse.

---

## Audiences

### Types d'audiences (du plus large au plus restreint)

| Type | Description | Quand l'utiliser |
|------|-------------|------------------|
| **Advantage+ / Broad** | Aucun ciblage, Meta optimise seul | Budget > 30 EUR/jour, pixel mature, beaucoup de données |
| **Lookalike** | Audiences similaires à vos clients | Bon compromis couverture/qualité, base source > 1000 personnes |
| **Intérêts** | Ciblage par centres d'intérêt | Petit budget, niche spécifique, début d'activité |
| **Custom Audiences** | Visiteurs site, liste clients, engagement | Retargeting, upsell, exclusions |

### Règles d'audience

- **Commencer large** : Advantage+ ou Broad fonctionne mieux que les intérêts dans la majorité des cas en 2025-2026
- **Lookalike 1%** pour la qualité, **Lookalike 5-10%** pour le volume
- **Exclure les acheteurs** des campagnes de prospection (Custom Audience + exclusion)
- **Retargeting actif 7-30 jours** : fenêtre où l'intention est la plus forte pour du retargeting chaud
- **Fenêtres 90-180 jours** : à réserver aux *exclusions* (acheteurs récents à exclure de la prospection), aux cycles de décision longs et aux offres à panier élevé (high-ticket) — pas à du retargeting chaud standard
- **Ne pas superposer** les audiences : si deux ad sets ciblent les mêmes personnes, vous enchérissez contre vous-même

---

## Créatives

### Les créatives sont le levier n°1

Sur Meta, le ciblage est de plus en plus automatisé (Advantage+). La vraie différenciation vient des créatives. Un bon créatif peut diviser votre CPA par 2-3x. Un mauvais créatif rend tout le reste inutile.

### Formats recommandés

| Format | Force | Idéal pour |
|--------|-------|------------|
| **Vidéo UGC (User Generated Content)** | Authenticité, engagement fort | Leads, e-commerce, services |
| **Vidéo courte (15-30s)** | Hook rapide, adapté Reels/Stories | Prospection, notoriété |
| **Image statique** | Simple, rapide à produire, facile à tester | Tests d'angles, retargeting |
| **Carousel** | Storytelling, multi-produits | E-commerce, comparaisons |
| **Collection** | Expérience immersive mobile | E-commerce (catalogue) |

### Règles créatives

- **Tester en continu** : minimum 3-5 nouvelles créatives par semaine pour les comptes actifs
- **Ratio 70/30** : 70% du budget sur les créatives qui marchent, 30% sur les tests
- **Fatigue créative** : surveiller la fréquence, en distinguant le trafic froid du retargeting :
  - **Prospection (froid)** : début de fatigue à partir de **3-3,5** sur 7 jours
  - **Retargeting** : audience plus tolérante, seuil d'alerte vers **7**, audience cramée au-delà de **10**
- **Format vertical (9:16)** pour Reels et Stories, **carré (1:1)** pour le feed
- **Les 3 premières secondes** font ou défont la pub (hook rate)

---

## Phase d'apprentissage & reset

Meta entre en **phase d'apprentissage** dès l'activation d'un ad set (et à chaque changement majeur). Pendant cette phase, l'algorithme cherche ses repères : le CPA est instable, c'est normal.

### Règles

| Règle | Détail |
|-------|--------|
| **Durée** | 5-7 jours, ou ~50 conversions par ad set — le plus tôt des deux |
| **Ne rien toucher** | Pas de modification de budget, d'audience ou de créative pendant l'apprentissage |
| **Seuil de reset (budget)** | Toute modification de **plus de 20% du budget** re-déclenche l'apprentissage |
| **Seuil de reset (créative)** | Changer **plus de 50%** des créatives d'un ad set re-déclenche l'apprentissage |
| **Éviter l'éclatement** | Trop d'ad sets simultanés en apprentissage = budget dilué, aucun n'atteint 50 conversions. Consolider |
| **Statut visible** | Ads Manager > colonne « État de la diffusion » |

> ⚠️ **Conséquence directe pour le scaling** : augmenter le budget de plus de 20% d'un coup relance l'apprentissage. C'est la raison de la règle des 20% par palier ci-dessous.

---

## Scaling

### Scaling vertical (augmenter le budget)

- **Règle des 20%** : ne jamais augmenter le budget de plus de 20% par jour
- Laisser 48-72h entre chaque augmentation
- Si le CPA monte de **plus de 15%** après un palier (et le reste sur 48-72h), revenir au dernier budget stable et attendre 48h
- Passer en Advantage+ Campaign Budget (ex-CBO) si vous êtes encore en budget par ad set (ex-ABO)

### Scaling horizontal (élargir)

- Dupliquer l'ad set gagnant avec une audience différente
- Tester de nouvelles créatives dans un ad set dédié
- Ouvrir de nouveaux pays/langues
- Tester de nouveaux emplacements

### Signaux de scaling

| Indicateur | Seuil pour scaler | Action |
|------------|-------------------|--------|
| CPA stable depuis 7+ jours | CPA < objectif x 0.8 | Augmenter budget de 20% |
| ROAS stable depuis 7+ jours | ROAS > objectif x 1.2 | Augmenter budget de 20% |
| Fréquence basse | < 2 sur 7 jours | Marge pour scaler |
| Audience pas saturée | Couverture < 30% de l'audience totale | Marge pour scaler |

---

## Checklist de lancement

Avant de lancer une campagne Meta Ads :

- [ ] Pixel Meta installé et qui fire correctement
- [ ] Événements de conversion configurés et testés (Events Manager > Test Events)
- [ ] Conversions API (CAPI) configurée si possible
- [ ] Domaine vérifié dans le Business Manager
- [ ] Page Facebook et compte Instagram liés
- [ ] Convention de nomenclature appliquée
- [ ] Budget cohérent avec l'objectif (~50 conversions/semaine visées)
- [ ] Créatives aux bons formats (1:1 feed, 9:16 stories/reels)
- [ ] Textes avec hook clair, proposition de valeur, CTA
- [ ] Landing page chargée < 3s, mobile-friendly, cohérente avec la pub
- [ ] Audiences configurées (prospection séparée du retargeting)
- [ ] Exclusions en place (acheteurs récents exclus de la prospection)
- [ ] Account Spending Limit configurée (120% du budget mensuel)
- [ ] Au moins 1 règle automatique de sécurité (ex: pause si CPA > 2x objectif)
