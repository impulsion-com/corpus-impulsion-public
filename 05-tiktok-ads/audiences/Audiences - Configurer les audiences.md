# Configurer les audiences TikTok Ads

> **Plateforme :** TikTok
> **Catégorie :** Audiences
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Créer, configurer et structurer des audiences TikTok Ads avec une logique professionnelle : taux de correspondance réels, exclusions propres, gestion de la fraîcheur, et mapping warm/cold vers les bons objectifs de campagne.

---

## Ce que cette SOP ne couvre PAS

Cette SOP ne couvre **pas :**

- La création détaillée d'une audience similaire (taille, qualité de seed, marchés petits) (Voir : [Procédure - Créer une audience Lookalike TikTok Ads](<Audiences - Créer une audience similaire.md>))
- La mise en place de campagnes de retargeting par segment d'intention (Voir : [Procédure - Mettre en place le retargeting TikTok Ads](<Audiences - Mettre en place le retargeting.md>))
- L'analyse des Audience Insights et la lecture des données d'audience (Voir : [Procédure - Analyser son audience TikTok Ads](<Audiences - Analyser son audience.md>))
- L'installation du pixel pour alimenter les Custom Audiences (Voir : [Procédure - Installer le pixel TikTok](<../suivi/Suivi - Installer le pixel.md>))
- L'usage des audiences dans une campagne de lancement (Voir : [Procédure - Lancer une campagne conversions TikTok Ads](<../lancement/Lancement - Lancer une campagne conversions.md>))

---

## Vue d'ensemble des types d'audiences

| Type | Source | Usage principal | Température |
|---|---|---|---|
| Démographique | Données TikTok | Base de tout groupe d'annonces | Froide |
| Intérêts & Comportements | Signaux TikTok | Prospection large | Froide |
| Custom Audience — Pixel | Visiteurs site/app | Retargeting | Chaude / Tiède |
| Custom Audience — Liste clients | Import CSV | Exclusion / Retargeting VIP | Chaude |
| Custom Audience — Engagement TikTok | Interactions vidéo/profil | Nurturing | Tiède |
| Audience similaire | Custom Audience source | Scale prospection | Froide / Tiède |

---

## 1. Audiences démographiques et par intérêts

### Démographie
- Âge, sexe, localisation, langue : base obligatoire de tout groupe d'annonces.
- Sur les marchés européens, la segmentation par âge fine (ex. 25-34 vs 35-44) peut fortement impacter les CPM.

### Intérêts et comportements

💡 **À savoir** : TikTok propose beaucoup moins de catégories d'intérêts que Meta. Les catégories sont larges et peu granulaires (ex. "Beauté & soins", "Finances personnelles"). Ne pas chercher la précision chirurgicale — TikTok optimise via son algorithme, pas via le ciblage manuel.

- Privilégier 2 à 4 intérêts maximum par groupe d'annonces.
- Tester un groupe sans intérêt (ciblage uniquement démographique + Broad) en parallèle — il surperforme souvent sur les marchés avec volume suffisant.

---

## 2. Audiences personnalisées (Custom Audiences)

### Taille minimale requise

⚠️ **Seuil d'activation** : une Custom Audience doit contenir au minimum **1 000 utilisateurs correspondants** (matched users) pour être éligible à la diffusion dans une campagne. En dessous, TikTok bloque l'utilisation.

### Import de liste clients — Taux de correspondance (Match Rate)

| Plateforme | Match Rate moyen (email) | Match Rate moyen (téléphone) |
|---|---|---|
| **TikTok** | 20–35 % | 35–50 % |
| **Meta** | 55–70 % | 60–75 % |

↪️ **Implication directe** : pour une liste de 10 000 emails, TikTok ne correspondra qu'à 2 000–3 500 utilisateurs. Une liste de 10 000 téléphones est bien plus efficace.

**Bonnes pratiques pour maximiser le match rate :**
- Toujours importer en priorité les **numéros de téléphone** (format international : +33XXXXXXXXX).
- Hasher les données côté client avant l'import (SHA-256) — TikTok le fait automatiquement sinon, mais l'upload hashé est plus sécurisé.
- Combiner email + téléphone dans un seul fichier CSV pour maximiser la couverture.
- Nettoyer la liste en amont : supprimer doublons, caractères spéciaux, espaces.

### Sources de Custom Audiences

#### Pixel TikTok (visiteurs site/app)
- Fenêtres disponibles : 7, 14, 30, 60, 90, 180 jours.
- Événements disponibles : PageView, ViewContent, AddToCart, InitiateCheckout, Purchase, etc.

#### Engagement TikTok
- Personnes ayant regardé 50 %, 75 %, 100 % d'une vidéo.
- Personnes ayant interagi avec votre profil ou vos pubs (like, commentaire, partage, clic).

---

## 3. Fraîcheur des audiences et fenêtres temporelles

La fenêtre de retargeting choisie détermine la taille ET la température de l'audience. Une erreur fréquente est d'utiliser des fenêtres trop larges, qui diluent l'audience avec des utilisateurs trop froids.

| Fenêtre | Taille audience | Température | Usage recommandé |
|---|---|---|---|
| **7 jours** | Petite | Très chaude | Retargeting panier abandonné, Checkout initié |
| **14 jours** | Moyenne | Chaude | Retargeting visiteurs pages produit |
| **30 jours** | Large | Tiède | Nurturing, audience similaire source |
| **60–90 jours** | Très large | Froide / Tiède | Exclusion large, audience similaire source volumineuse |

💡 **Règle de gestion** : créer plusieurs audiences avec des fenêtres différentes (7j, 14j, 30j) et les utiliser dans des ad groups séparés avec des messages progressifs — urgence sur 7j, réassurance sur 14j, rappel de valeur sur 30j.

---

## 4. Exclusions d'audiences

Les exclusions sont l'un des leviers les plus sous-utilisés. Sans elles, votre budget de prospection touche vos clients actuels, et votre retargeting (reciblage) se cannibale lui-même.

### Exclusions essentielles à configurer systématiquement

| Campagne | Exclusion recommandée |
|---|---|
| Prospection (new customers) | Acheteurs des 30–90 derniers jours + liste clients CRM |
| Audience similaire | Idem prospection |
| Retargeting panier abandonné | Acheteurs des 7 derniers jours |
| Retargeting visiteurs | Acheteurs des 30 derniers jours |
| Campagne d'acquisition lead | Leads déjà convertis (liste CRM) |

⚠️ **À vérifier avant chaque lancement** : le champ "Exclure des audiences" dans le groupe d'annonces. Il n'y a pas de règle d'exclusion globale au niveau du compte sur TikTok — elle se configure manuellement à chaque ad group.

---

## 5. Mapping Warm / Cold → Objectifs de campagne

| Température | Audience type | Objectif recommandé | Enchère recommandée |
|---|---|---|---|
| **Froide** | Démographie + intérêts, Lookalike Broad | Reach, Traffic, Video Views | CPM / CPV |
| **Froide / Tiède** | Lookalike Narrow, Lookalike Balanced | Conversions (haut du tunnel) | oCPM CPA cible |
| **Tiède** | Visiteurs 30j, Engagement 30j | Conversions (milieu du tunnel) | oCPM CPA cible |
| **Chaude** | Visiteurs 7–14j, Panier abandonné | Conversions (bas du tunnel) | oCPM CPA cible — budget concentré |
| **Très chaude** | Acheteurs 30j, Liste CRM | Upsell / Retention / Exclusion | oCPM |

---

## 6. Tailles d'audience recommandées — Marchés France et Europe

💡 **Contexte marché** : la France représente environ 15–20M d'utilisateurs TikTok actifs. La Belgique et la Suisse tournent autour de 3–5M chacune. Ces volumes sont faibles comparés aux marchés anglophones.

### Recommandations de taille minimale par type

| Type de campagne | Taille minimale recommandée | Remarque |
|---|---|---|
| Prospection Broad (sans intérêts) | 5 M+ | Laisser l'algo optimiser librement |
| Prospection par intérêts | 1–3 M | En dessous, overlap et saturation rapide |
| Lookalike Narrow (1–5 %) | 500 K – 1 M | Risque de saturation rapide en France |
| Lookalike Balanced (5–10 %) | 1–3 M | Bon équilibre pour la France |
| Retargeting | 10 K – 500 K | Selon le volume de trafic |

⚠️ **Sur les petits marchés (Belgique, Suisse), l'audience Broad surperforme quasi systématiquement** les audiences par intérêts. L'algorithme TikTok est suffisamment performant pour trouver les bons utilisateurs sans restriction si le signal de conversion est fort.

---

## 7. Stratégie SEED pour les audiences similaires

La qualité d'une audience similaire dépend entièrement de la qualité de l'audience source (seed). Une mauvaise seed génère une audience similaire diluée, peu performante.

**Principe :** mieux vaut 200 acheteurs à haute valeur vie (LTV) qu'une audience source de 50 000 abonnés non qualifiés.

| Seed recommandée | Qualité audience similaire | Commentaire |
|---|---|---|
| Acheteurs récurrents (2+ achats) | Excellente | Top seed si volume suffisant |
| Acheteurs récents 30j | Très bonne | Volume + intention |
| Leads convertis (SQL) | Bonne | Adapté au B2B ou lead gen |
| Visiteurs page produit 30j | Correcte | Intention mais sans conversion |
| Abonnés TikTok | Faible | Trop dilué sauf si très engagés |
| Tous visiteurs du site | Faible | Signal trop générique |

↪️ Voir [Créer une audience Lookalike TikTok Ads](<Audiences - Créer une audience similaire.md>) pour la SOP complète de création et les stratégies de segmentation par taille.

---

## 8. Reach & Frequency — Impact de la taille d'audience

Le buying type **Reach & Frequency** (R&F) sur TikTok impose des contraintes spécifiques sur la taille d'audience :

- **Taille minimale requise** : 200 000 utilisateurs pour activer R&F.
- **Recommandée** : 1 M+ pour une diffusion fluide sur 7–14 jours sans sur-exposition.
- R&F est inadapté aux audiences de retargeting petites (< 100 K) — utiliser les enchères aux impressions en Auction à la place.
- Sur un marché comme la France, R&F fonctionne mieux en ciblage Broad ou Lookalike Broad qu'en audience étroite.

---

## 9. Création pas à pas d'une Custom Audience

1. Aller dans **TikTok Ads Manager → Actifs → Audiences**.
2. Cliquer sur **Créer une audience → Audience personnalisée**.
3. Choisir la source :
   - **Activité du site web** (pixel) → sélectionner l'événement et la fenêtre.
   - **Liste de clients** → uploader le CSV (email et/ou téléphone hashé).
   - **Engagement TikTok** → sélectionner le type d'interaction et la fenêtre.
4. Nommer selon la convention : `[Source] - [Fenêtre] - [Événement]`
   - Exemple : `Pixel - 14j - AddToCart`, `CRM - Acheteurs - Téléphone`, `Engagement - 30j - 75% view`
5. Enregistrer et attendre le statut **Prête** (peut prendre 24–48 h pour les listes importées).

⚠️ **Vérifier le statut "Prête" avant d'utiliser l'audience** dans un ad group. Une audience en cours de traitement ne diffuse pas.

---

## Conventions de nommage recommandées

| Champ | Format | Exemple |
|---|---|---|
| Custom Audience pixel | `Pixel - [Fenêtre]j - [Événement]` | `Pixel - 30j - Purchase` |
| Custom Audience liste | `CRM - [Segment] - [Identifiant]` | `CRM - Acheteurs - Tel` |
| Custom Audience engagement | `Engagement - [Fenêtre]j - [Type]` | `Engagement - 30j - 75%` |
| Audience similaire | `LAL - [Source] - [Taille]` | `LAL - Acheteurs 30j - Narrow` |
| Exclusion | `EXCL - [Raison]` | `EXCL - Acheteurs 90j` |

---

## Références croisées

- [Créer une audience Lookalike TikTok Ads](<Audiences - Créer une audience similaire.md>)
- [Analyser son audience TikTok Ads](<Audiences - Analyser son audience.md>)
- [Structurer ses campagnes TikTok Ads](<../lancement/Lancement - Structurer ses campagnes.md>)
