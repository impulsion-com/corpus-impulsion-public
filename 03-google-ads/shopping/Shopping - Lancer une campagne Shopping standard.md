# Lancer une campagne Shopping standard

> **Plateforme :** Google Ads
> **Catégorie :** Shopping
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Cette SOP lance une Standard Shopping campaign with optimal settings for control, transparency, and scalability.

> ❓ **La question clé :** How do I set up a Standard Shopping campaign that maximizes control while being ready to scale?

Standard Shopping provides manual bid control, campaign priorities for query sculpting, and full search term visibility. Cette SOP couvre campaign setup through launch and verification.

---

## Ce que cette SOP ne couvre PAS

Cette SOP ne couvre **pas :**

- Set up product feeds (Voir : [SOP - Configurer et optimiser le flux produits](<../flux-produit/Flux Produit - Configurer et optimiser le feed produit.md>))
- Explain when to choose Standard Shopping vs PMax (Voir : [Shopping Campaign Type Mental Model](<Shopping - Types de campagne Shopping.md>))
- Set up performance-based segmentation (Voir : [SOP - Configurer la segmentation Shopping basee sur la performance](<Shopping - Configurer la segmentation Shopping basée sur la performance.md>))

## Quand utiliser cette SOP

**Run when:**

- Launching a new Standard Shopping campaign
- Client needs manual bid control or query sculpting
- Conversion volume is below 30/month (CPC manuel works at any volume)
- You need full transparency into auction behavior

**NE PAS exécuter quand :**

- Le flux produits n'est pas optimisé
- Le suivi des conversions n'est pas vérifié
- Client wants hands-off automation (use PMax Feed-Only)

---

## Avant de commencer

### Prérequis

- Merchant Center account linked to Google Ads
- Product feed uploaded and approved (no critical errors)
- Conversion tracking implemented and verified
- Daily budget déterminéed
- ROAS cible or CPA goal (for bid strategy selection)

### Documents de référence (à garder ouverts)

| Document | Utilisé pour |
|----------|----------|
| [Shopping Campaign Settings Reference](<../strategie/Strategie - Paramètres universels de campagne.md>) | All available settings |
| [Universal Campaign Settings Reference](<../strategie/Strategie - Paramètres universels de campagne.md>) | Location, language, schedule |
| [Network Selection Reference](<../strategie/Strategie - Sélection de réseau.md>) | Network settings |
| [Brand Separation Reference](<../search/Search - Séparation de marque.md>) | Brand negatives |
| [Post-Launch Monitoring Reference](<../optimisation/Optimisation - Monitoring post-lancement.md>) | Monitoring cadence |

---

## Porte de décision : Campaign structure

Avant de créer la campagne, déterminez votre structure :

| Si... | Alors... | Reference |
|-------|---------|-----------|
| Single product set, no brand separation | Single campaign | Cette SOP |
| Need brand separation | Two campaigns (Brand + Non-Brand) | [Brand Separation Reference](<../search/Search - Séparation de marque.md>) |
| Need full query sculpting | Three campaigns (High/Med/Low priority) | [Standard Shopping Campaign Structure Mental Model](<Shopping - Structure de campagne Shopping standard.md>) |

> ⚠️ **Start simple:** Most accounts should start with one or two campaigns.

---

## Cadre d'exécution

| Phase | Objectif | Résultat |
|-------|---------|--------|
| **Phase 1️⃣: Campaign shell and settings** | Create campaign with correct settings | Campaign created |
| **Phase 2️⃣: Structure and targeting** | Configure product groups | Product groups structured |
| **Phase 3️⃣: Creative setup** | N/A (feed-based) | N/A |
| **Phase 4️⃣: Bidding and budget** | Configure bid strategy and budget | Bidding set |
| **Phase 5️⃣: Brand separation and exclusions** | Add negatives and verify networks | Exclusions active |
| **Phase 6️⃣: Launch and verify** | Enable and validate | Campagne active |

---

## Phase 1️⃣ : Enveloppe de campagne et paramètres

### 1.1 Créer la campagne

1. Go to Google Ads → **Campaigns** → **+** → **New campaign**
2. Select goal: **Sales** (or **Create a campaign without a goal's guidance**)
3. Select campaign type: **Shopping**
4. Select your Merchant Center account
5. Choose: **Standard Shopping campaign**
6. Click **Continue**

### 1.2 Configurer les paramètres de campagne

| Setting | Recommended value | Notes |
|---------|------------------|-------|
| **Campaign name** | `[Country]_[Language]_Shopping_[Segment]` | e.g., "US_EN_Shopping_AllProducts" |
| **Country of sale** | Your target country | Must match feed target country |
| **Campaign priority** | Low (default) | Use High/Medium for query sculpting only |
| **Inventory filter** | None (default) | Use if excluding specific brands/products |

> 💡 **Display Network does NOT apply to Standard Shopping:** Only Search Network and Partenaires du Réseau de Recherche are available as network options.

### 1.3 Configurer les paramètres universels

| Paramètre | Recommandation |
|---------|----------------|
| **Locations** | Target countries where you can ship/sell |
| **Location options** | Presence (not "Presence or interest") |
| **Languages** | All languages your customers speak |

> ↪️ **For location and language details:** See [Universal Campaign Settings Reference](<../strategie/Strategie - Paramètres universels de campagne.md>).

### 1.4 Configurer les paramètres réseau

| Network | Setting |
|---------|---------|
| **Search Network** | Enabled (required for Shopping) |
| **Partenaires du Réseau de Recherche** | Test (monitor performance) |

> 💡 **Partenaires du Réseau de Recherche :** Peut très bien fonctionner ou très mal performer. Très dépendant du secteur. Test and monitor.

> ↪️ **Pour la logique de sélection du réseau :** See [Network Selection Reference](<../strategie/Strategie - Sélection de réseau.md>).

---

## Phase 2️⃣ : Structure et ciblage

### 2.1 Créer un ad group

1. Name: `[Segment]` (e.g., "All Products")
2. Click **Save and continue**

### 2.2 Structure product groups

In the ad group, go to **Product groups** and click the pencil icon to edit.

**Default structure (simple):**

| Level | Structure | When to use |
|-------|-----------|-------------|
| All products | Single group | Starting point, insufficient data |

**Recommended structure (standard):**

| Option A | Option B |
|----------|----------|
| All products > Brand > Product Type (optional) > Item ID | All products > Product Type > Brand (optional) > Item ID |

Choose based on your catalog organization and analysis needs.

**Performance structure (advanced):**

| Level | Subdivide by | Why |
|-------|--------------|-----|
| All products | Custom label 0 | Performance tiers (Hero/Sidekick) |
| → Each label | Brand or Product type | Secondary organization |

> ↪️ **For performance-based structure:** See [SOP - Configurer la segmentation Shopping basee sur la performance](<Shopping - Configurer la segmentation Shopping basée sur la performance.md>).

### 2.3 Configurer les product groups

For each product group:

1. Click on the product group
2. Set **Max CPC** bid (if using CPC manuel)
3. Verify products are correctly included/excluded

### 2.4 Vérifier la couverture produit

Après structuring:

1. Check **Products** tab in the ad group
2. Verify expected products appear
3. Confirm no products are missing (check feed diagnostics if so)

---

## Phase 3️⃣ : Configuration créative

Standard Shopping campaigns do not have manual creative. Product listings are generated from your product feed.

> ↪️ **For feed optimization:** See [SOP - Configurer et optimiser le flux produits](<../flux-produit/Flux Produit - Configurer et optimiser le feed produit.md>).

---

## Phase 4️⃣ : Enchères et budget

### 4.1 Sélectionner la stratégie d'enchères

| Situation | Recommended bid strategy | Why |
|-----------|-------------------------|-----|
| New account, <30 conversions/month | CPC manuel | Works at any volume, full control |
| 30-50 conversions/month | Maximize Clicks | Build conversion history |
| 50+ conversions/month | ROAS cible | Sufficient data for Stratégies d'enchères intelligentes |

**Available bid strategies for Standard Shopping:**

- CPC manuel
- Maximize Clicks
- ROAS cible

> ↪️ **Pour les seuils de volume :** See [Conversion Volume Thresholds Reference](<../suivi/Suivi - Seuils de volume de conversions.md>).

### 4.2 Configurer la stratégie d'enchères

**If CPC manuel:**

1. Go to campaign settings → **Bidding**
2. Select **CPC manuel**
3. Set default bid at ad group level
4. Set product group-level bids based on value

**If ROAS cible:**

1. Go to campaign settings → **Bidding**
2. Select **Maximiser la valeur de conversion**
3. Check **Set a target return on ad spend**
4. Enter ROAS cible (start at actual ROAS minus 10-20%)

### 4.3 Définir le budget

| Paramètre | Recommandation |
|---------|----------------|
| **Daily budget** | Revenue goal / ROAS cible |

Example: €500/day revenue at 400% ROAS = €125/day budget

---

## Phase 5️⃣ : Séparation marque et exclusions

### 5.1 Ajouter les exclusions de marque (si campagne non-marque)

If running separate brand and non-brand campaigns, use a negative keyword list:

1. Go to **Tools & Settings** → **Shared library** → **Negative keyword lists**
2. Create list: `Branded` (or `[Client] - Branded`)
3. Add brand terms as **requête large** (no brackets or quotes):
   - `brand name`
   - Brand misspellings
   - Brand + product combinations
4. Apply to all non-brand Shopping campaigns

> 💡 **Use requête large for brand negatives:** Requête large catches more variations than exact or expression exacte.

> ↪️ **For complete brand separation:** See [Brand Separation Reference](<../search/Search - Séparation de marque.md>).

### 5.2 Créer une liste universelle de mots-clés à exclure

For negatives shared across campaigns:

1. Go to **Tools & Settings** → **Shared library** → **Negative keyword lists**
2. Create list: `[Client] - Shopping Negatives`
3. Add universal negatives (wrong intent, competitors you don't carry)
4. Apply to all Shopping campaigns

---

## Phase 6️⃣ : Lancement et vérification

### 6.1 Checklist pré-lancement

- [ ] Campaign name follows naming convention
- [ ] Correct Merchant Center account selected
- [ ] Country of sale matches feed
- [ ] Networks configured (Display disabled)
- [ ] Location targeting set correctly
- [ ] Product groups structured appropriately
- [ ] Bid strategy selected
- [ ] Budget set
- [ ] Mots-clés à exclure added (if brand separation)

### 6.2 Activer la campagne

1. Review all settings
2. Set status to **Enabled**
3. Set start date (immediate or scheduled)

### 6.3 Vérification post-lancement (24-48 heures)

- [ ] Campaign status shows **Eligible**
- [ ] Products approved and serving (check Products tab)
- [ ] Impressions appearing (may take 24 hours)
- [ ] No unexpected disapprovals
- [ ] Budget pacing correctly

### 6.4 Monitoring cadence

| Période | Fréquence | Focus |
|-----------|-----------|-------|
| Day 1 | Check after 24 hours | Products serving, impressions |
| Days 2-3 | Daily | Search terms, product performance |
| Day 7 | First review | Performance trends |
| Days 14-30 | Every few days | Bid strategy learning |

> ↪️ **Pour le guide complet de suivi :** See [Post-Launch Monitoring Reference](<../optimisation/Optimisation - Monitoring post-lancement.md>).

### 6.5 Revue du jour 3

- [ ] Review rapport sur les termes de recherche
- [ ] Ajouter des négatifs pour les non pertinents queries
- [ ] Check product-level performance
- [ ] Verify bid strategy learning (if Stratégies d'enchères intelligentes)

---

## Validation et critères de complétion

Cette SOP est terminée quand :

- [ ] Campaign created with correct settings
- [ ] Product groups structured appropriately
- [ ] Bid strategy configured
- [ ] Budget set
- [ ] Mots-clés à exclure added (brand separation if applicable)
- [ ] Campaign enabled and serving
- [ ] Day 3 search terms reviewed

---

## Passerelle de sortie

| Délai | Action |
|-----------|--------|
| Day 1-3 | Monitor for disapprovals, verify serving |
| Day 7 | First performance review |
| Day 14-30 | Evaluate bid strategy performance |
| When 50+ conversions/month | Consider ROAS cible if using CPC manuel |
| When segmentation needed | Run [SOP - Configurer la segmentation Shopping basee sur la performance](<Shopping - Configurer la segmentation Shopping basée sur la performance.md>) |

**En cas de problème :**

| Problème | Rediriger vers |
|-------|----------|
| Products not serving | Check feed diagnostics, Merchant Center |
| Poor search term relevance | Add negatives, review product titles |
| Low ROAS | Check bid strategy, product group bids |
| Learning period issues | See [Post-Launch Monitoring Reference](<../optimisation/Optimisation - Monitoring post-lancement.md>) |

---

## FAQ

**Q: Should I start with CPC manuel or Stratégies d'enchères intelligentes?**

A: Start with CPC manuel if volume is low (<30 conversions/month) or you need to learn product-level performance.

**Q: What's the difference between campaign priority and product group structure?**

A: Campaign priority controls which campaign enters the auction first (for query sculpting across multiple campaigns). Product group structure controls bidding within a single campaign.

**Q: How long before I see results?**

A: Initial impressions: 24-48 hours. Learning period: 1-2 weeks. Performance stabilization: 30 days.

---

## Référence rapide : bibliothèque support

| Document | Type | Utilisé dans |
|----------|------|---------|
| [Shopping Campaign Settings Reference](<../strategie/Strategie - Paramètres universels de campagne.md>) | Reference | Toutes les phases |
| [Universal Campaign Settings Reference](<../strategie/Strategie - Paramètres universels de campagne.md>) | Reference | Phase 1 |
| [Network Selection Reference](<../strategie/Strategie - Sélection de réseau.md>) | Reference | Phase 1 |
| [Brand Separation Reference](<../search/Search - Séparation de marque.md>) | Reference | Phase 5 |
| [Post-Launch Monitoring Reference](<../optimisation/Optimisation - Monitoring post-lancement.md>) | Reference | Phase 6 |
| [Conversion Volume Thresholds Reference](<../suivi/Suivi - Seuils de volume de conversions.md>) | Reference | Phase 4 |

---

## Procédures liées

| SOP | Relation |
|-----|--------------|
| [SOP - Configurer et optimiser le flux produits](<../flux-produit/Flux Produit - Configurer et optimiser le feed produit.md>) | Prérequisite (feed must exist) |
| [SOP - Lancer une campagne PMax feed-only](<../pmax/Pmax - Lancer une campagne PMax Feed-Only.md>) | Alternative (automated Shopping) |
| [SOP - Configurer la segmentation Shopping basee sur la performance](<Shopping - Configurer la segmentation Shopping basée sur la performance.md>) | Aval (when ready for segmentation) |
