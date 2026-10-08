# Lancer une campagne PMax complete e-commerce

> **Plateforme :** Google Ads
> **Catégorie :** Pmax
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Cette SOP lance une Performance Max campaign with full creative assets for cross-channel Ecommerce reach across Shopping, Search, Display, YouTube, Gmail, and Discover.

> ❓ **La question clé :** How do I set up PMax to leverage all Google surfaces for product visibility while maintaining Ecommerce focus?

Full Assets PMax requires creative investment and serves across all Google surfaces. Use this when you want reach beyond Shopping and have quality assets to support it.

---

## Ce que cette SOP ne couvre PAS

Cette SOP ne couvre **pas :**

- Set up product feeds (Voir : [SOP - Configurer et optimiser le flux produits](<../flux-produit/Flux Produit - Configurer et optimiser le feed produit.md>))
- Explain when to choose Full Assets vs Feed-Only (Voir : [Shopping Campaign Type Mental Model](<../shopping/Shopping - Types de campagne Shopping.md>))
- Set up Feed-Only PMax (Voir : [SOP - Lancer une campagne PMax feed-only](<Pmax - Lancer une campagne PMax Feed-Only.md>))
- Create creative assets (assumes assets are ready)

## Quand utiliser cette SOP

**Run when:**

- You have 50+ conversions/month to support cross-channel optimization
- You have quality creative assets ready (images, video)
- You want product awareness beyond Shopping (YouTube, Display, Gmail, Discover)
- Current Shopping performance is strong and you want incremental reach

**NE PAS exécuter quand :**

- You don't have quality images and video
- Volume is below 50 conversions/month
- You want Shopping-only focus (use Feed-Only)
- Le flux produit n'est pas optimisé

---

## Avant de commencer

### Prérequis

- Merchant Center account linked to Google Ads
- Product feed uploaded and approved
- Conversion tracking with accurate value tracking
- 50+ conversions in last 30 days
- Creative assets prepared (images, video, headlines, descriptions)

### Asset requirements

| Asset type | Minimum | Recommended | Specifications |
|------------|---------|-------------|----------------|
| **Square images** | 1 | 3-5 | 1200×1200 px |
| **Landscape images** | 1 | 3-5 | 1200×628 px |
| **Portrait images** | 0 | 1-3 | 960×1200 px |
| **Logo (square)** | 1 | 1 | 1200×1200 px |
| **Logo (landscape)** | 0 | 1 | 1200×300 px |
| **Headlines** | 3 | 5-11 | Max 30 characters |
| **Long headlines** | 1 | 2-5 | Max 90 characters |
| **Descriptions** | 2 | 4 | Max 90 characters |
| **Videos** | 0 | 1-5 | YouTube hosted, 10+ seconds |

### Documents de référence (à garder ouverts)

| Document | Utilisé pour |
|----------|----------|
| [PMax Structure Mental Model (Ecommerce)](<Pmax - Structure PMax (E-commerce).md>) | Structure decisions |
| [Universal Campaign Settings Reference](<../strategie/Strategie - Paramètres universels de campagne.md>) | Location, language settings |
| [Brand Separation Reference](<../search/Search - Séparation de marque.md>) | Brand exclusions |
| [Post-Launch Monitoring Reference](<../optimisation/Optimisation - Monitoring post-lancement.md>) | Learning period and monitoring |
| [Audience Signals Reference](<../audiences/Audiences - Signaux d'audience.md>) | Audience configuration |

---

## Porte de décision : Asset group structure

Before creating the campaign, déterminée your asset group approach:

| Si... | Alors... | Notes |
|-------|---------|-------|
| Single product category | Single asset group | Simplest approach |
| Multiple distinct categories | Asset group per category | Different creative per category |
| Different audiences for same products | Asset group per audience | Test messaging variations |

> ⚠️ **More asset groups = more creative requirements:** Each asset group needs its own full set of assets.

---

## Cadre d'exécution

| Phase | Objectif | Résultat |
|-------|---------|--------|
| **Phase 1️⃣: Campaign shell and settings** | Create campaign with correct settings | Campaign created |
| **Phase 2️⃣: Structure and targeting** | Configure listing groups and asset groups | Structure configured |
| **Phase 3️⃣: Creative setup** | Add images, video, text assets | Assets uploaded |
| **Phase 4️⃣: Bidding and budget** | Configure bid strategy | Bidding set |
| **Phase 5️⃣: Brand separation and exclusions** | Add brand exclusions and audience signals | Exclusions and signals active |
| **Phase 6️⃣: Launch and verify** | Enable and validate | Campagne active |

---

## Phase 1️⃣ : Enveloppe de campagne et paramètres

### 1.1 Créer la campagne

1. Go to Google Ads → **Campaigns** → **+** → **New campaign**
2. Select goal: **Sales**
3. Select conversion goals (ensure purchase/transaction selected with accurate values)
4. Select campaign type: **Performance Max**
5. Select your Merchant Center account
6. Click **Continue**

### 1.2 Configurer les paramètres de campagne

| Paramètre | Valeur | Notes |
|---------|-------|-------|
| **Campaign name** | `[Country]_[Language]_PMax_[Segment]` | Full Assets (no FO suffix), no _[Audience] suffix |
| **Locations** | Target countries | Where you can ship/sell |
| **Languages** | All customer languages | |

> ↪️ **For location and language details:** See [Universal Campaign Settings Reference](<../strategie/Strategie - Paramètres universels de campagne.md>).

### 1.3 Configurer les paramètres d'optimisation des assets

Examiner and configure asset optimization settings before building asset groups.

> ↪️ **For asset optimization configuration:** See [Asset Optimization Control Guidelines](<Pmax - Contrôle de l'optimisation des assets.md>) and [PMax Configuration Guidelines](<Pmax - Configuration PMax.md>).

---

## Phase 2️⃣ : Structure et ciblage

### 2.1 Créer le premier asset group

1. Name: `[Category/Audience] - Full Assets`
2. Example: "Running Shoes - Full Assets" or "All Products - Full Assets"

### 2.2 Configurer les listing groups

1. Click **Edit listing groups**
2. Structure based on your strategy:

| Strategy | Structure |
|----------|-----------|
| All products | Leave as "All products" |
| By category | Subdivide by Product Type or Google Product Category |
| By custom label | Subdivide by custom_label_0 (performance tiers) |

### 2.3 Configurer l'URL finale

| Paramètre | Recommandation |
|---------|----------------|
| **Final URL** | Category landing page or homepage |
| **Final URL expansion** | OFF (keep users on product pages) |

### 2.4 Créer des asset groups additionnels (si nécessaire)

For multi-category or multi-audience approaches:

1. Click **New asset group**
2. Repeat steps 2.1-2.3
3. Use different listing groups per asset group (no overlap)

---

## Phase 3️⃣ : Configuration créative

### 3.1 Ajouter les images

**Square images (1200×1200):**

1. Click **+ Add images** under Square images
2. Upload 3-5 high-quality product or lifestyle images
3. Ensure images represent products in listing group

**Landscape images (1200×628):**

1. Click **+ Add images** under Landscape images
2. Upload 3-5 images
3. Good for Display and Discover placements

**Portrait images (960×1200):**

1. Optional but recommended for mobile
2. Upload 1-3 if available

> ↪️ **For image specifications:** See [Image Creative Reference](<../creatives/Creatives - Création image.md>).

### 3.2 Ajouter les logos

1. Upload square logo (1200×1200)
2. Optional: Upload landscape logo (1200×300)

### 3.3 Ajouter la vidéo

1. Click **+ Add video**
2. Paste YouTube video URL
3. Requirements:
   - Hosted on YouTube
   - Minimum 10 seconds
   - Recommended: 15-30 seconds

> ⚠️ **Video is highly recommended:** PMax without video will auto-generate from your images, which is lower quality.

> ↪️ **For video specifications:** See [Video Creative Reference](<../video/Video - Création vidéo.md>).

### 3.4 Ajouter les assets texte

**Headlines (max 30 characters):**

Add 5-11 headlines covering:

| Type | Example |
|------|---------|
| Brand/Product | "Shop Running Shoes" |
| Benefit | "Free Shipping Over €50" |
| Feature | "New Arrivals" |
| Social proof | "Top Rated Gear" |
| Brand trust | "[Brand] Official" |

> ↪️ **For headline patterns:** See [Headline Angle Catalog](<../search/Search - Angles de headlines.md>).

**Long headlines (max 90 characters):**

Add 2-5 longer headlines for Display and Discover.

**Descriptions (max 90 characters):**

Add 2-5 descriptions mixing:

- Product benefits
- Shipping/returns
- Brand trust
- Call to action

> ↪️ **For description patterns:** See [Description Expansion Catalog](<../search/Search - Patterns d'expansion de descriptions.md>).

### 3.5 Ajouter les informations business

| Champ | Valeur |
|-------|-------|
| Business name | Your business name |
| Call to action | "Shop now" or appropriate CTA |
| Display URL path | Optional brand/category path |

---

## Phase 4️⃣ : Enchères et budget

### 4.1 Configurer les enchères

**Configuration:**

1. Select **Maximiser la valeur de conversion**
2. For new campaigns: Leave ROAS cible blank initially to allow learning
3. For campaigns with 50+ conversions: Set ROAS cible (actual minus 10-20%)
4. Optimize towards your ROAS cible in incremental steps

> ↪️ **Pour les seuils de volume :** See [Conversion Volume Thresholds Reference](<../suivi/Suivi - Seuils de volume de conversions.md>).

### 4.2 Définir le budget

Full Assets PMax needs sufficient budget to serve across all surfaces:

| Consideration | Recommendation |
|---------------|----------------|
| Minimum viable | €50/day to serve across surfaces |
| Recommended | Revenue goal / ROAS cible |

---

## Phase 5️⃣ : Séparation marque et exclusions

### 5.1 Ajouter les exclusions de marque

1. In campaign settings → **Brand exclusions**
2. Click **Exclude specific brands**
3. Add your brand name(s)
4. Add common misspellings

> ↪️ **For complete brand separation:** See [Brand Separation Reference](<../search/Search - Séparation de marque.md>).

### 5.2 Configurer les signaux d'audience

Return to each asset group and configure signals:

**High-priority signals:**

| Signal type | Configuration |
|-------------|---------------|
| **Customer Match** | Upload purchaser list (5,000+ recommended) |
| **Website converters** | Add converter audience |
| **High-intent visitors** | Cart abandoners, product viewers |

**Medium-priority signals:**

| Signal type | Configuration |
|-------------|---------------|
| **Custom segments** | Competitor URLs, product search terms |
| **In-market audiences** | Relevant product categories |

> ↪️ **For audience signal configuration:** See [Audience Signals Reference](<../audiences/Audiences - Signaux d'audience.md>).

### 5.3 Configurer les paramètres d'acquisition client (optionnel)

If measuring new customer acquisition:

1. Campaign settings → **Additional settings** → **Customer acquisition**
2. Configure based on goals:
   - Optimize for new customers
   - Bid higher for new customers

> ↪️ **For customer acquisition settings:** See [Customer Lifecycle Optimization Reference](<../../01-strategie/fondamentaux/Fondamentaux - Optimisation du cycle de vie client.md>).

---

## Phase 6️⃣ : Lancement et vérification

### 6.1 Checklist pré-lancement

**Campaign level:**

- [ ] Campaign name clear (Full Assets, not Feed-Only)
- [ ] Correct Merchant Center account
- [ ] Bidding strategy appropriate for volume
- [ ] Budget sufficient for cross-channel (€50+/day)
- [ ] Brand exclusions configured

**Asset group level:**

- [ ] Listing groups correctly configured
- [ ] No overlap between asset groups
- [ ] Final URL expansion OFF

**Creative assets:**

- [ ] 3+ square images
- [ ] 3+ landscape images
- [ ] Logo(s) uploaded
- [ ] Video uploaded (recommended)
- [ ] 5+ headlines
- [ ] 2+ long headlines
- [ ] 2+ descriptions

**Targeting:**

- [ ] Audience signals configured

### 6.2 Activer la campagne

1. Review all settings
2. Set status to **Enabled**
3. Set start date

### 6.3 Vérification post-lancement (72 heures)

- [ ] Campaign status: Eligible
- [ ] Assets approved (no policy violations)
- [ ] Products serving
- [ ] Impressions appearing across surfaces

### 6.4 Monitoring cadence

| Timeframe | Focus |
|-----------|-------|
| 72 hours | Verify assets approved, impressions appearing |
| Week 1-2 | Monitor asset performance, check placements |
| Week 2-4 | Learning period, minimal changes |
| Week 3-4 | Review asset-level data, replace underperforming assets |
| Day 30 | First comprehensive performance review |

> ↪️ **Pour le guide complet de suivi :** See [Post-Launch Monitoring Reference](<../optimisation/Optimisation - Monitoring post-lancement.md>).

---

## Validation et critères de complétion

Cette SOP est terminée quand :

- [ ] Campaign created with full creative assets
- [ ] All asset types uploaded (images, video, text)
- [ ] Asset groups configured with correct listing groups
- [ ] Brand exclusions active
- [ ] Audience signals configured
- [ ] Campaign enabled and serving
- [ ] Week 2+ serving across multiple surfaces
- [ ] No major asset policy violations

---

## Passerelle de sortie

| Délai | Action |
|-----------|--------|
| Week 1-2 | Learning period, minimal changes |
| Week 3-4 | Initial asset optimization |
| Day 30 | First comprehensive performance review |
| Ongoing | Mensuelle asset refresh, creative testing |

**En cas de problème :**

| Issue | Action |
|-------|--------|
| High spend on poor placements | Review channel insights, consider Feed-Only |
| Asset disapprovals | Fix policy issues, resubmit |
| Poor ROAS vs Feed-Only | Evaluate creative quality |
| Brand queries appearing | Verify brand exclusions |
| Learning period issues | See [Post-Launch Monitoring Reference](<../optimisation/Optimisation - Monitoring post-lancement.md>) |

---

## FAQ

**Q: How is Full Assets different from Feed-Only?**

A: Feed-Only uses your product feed only and stays primarily on Shopping. Full Assets uses your creative across all Google surfaces.

**Q: Do I need video?**

A: Highly recommended. Without video, PMax auto-generates from your images, which underperforms.

**Q: What if my ROAS is worse than Feed-Only?**

A: Full Assets reaches different surfaces that may have lower intent. If Shopping-only performance is your goal, use Feed-Only.

**Q: Should I run Feed-Only and Full Assets together?**

A: Not for the same products. Use listing groups to ensure products appear in only one campaign.

---

## Référence rapide : bibliothèque support

| Document | Type | Utilisé dans |
|----------|------|---------|
| [PMax Structure Mental Model (Ecommerce)](<Pmax - Structure PMax (E-commerce).md>) | Mental Model | Phase 2 |
| [Universal Campaign Settings Reference](<../strategie/Strategie - Paramètres universels de campagne.md>) | Reference | Phase 1 |
| [Brand Separation Reference](<../search/Search - Séparation de marque.md>) | Reference | Phase 5 |
| [Audience Signals Reference](<../audiences/Audiences - Signaux d'audience.md>) | Reference | Phase 5 |
| [Post-Launch Monitoring Reference](<../optimisation/Optimisation - Monitoring post-lancement.md>) | Reference | Phase 6 |
| [Image Creative Reference](<../creatives/Creatives - Création image.md>) | Reference | Phase 3 |
| [Video Creative Reference](<../video/Video - Création vidéo.md>) | Reference | Phase 3 |

---

## Procédures liées

| SOP | Relation |
|-----|--------------|
| [SOP - Configurer et optimiser le flux produits](<../flux-produit/Flux Produit - Configurer et optimiser le feed produit.md>) | Prérequisite (feed must exist) |
| [SOP - Lancer une campagne PMax feed-only](<Pmax - Lancer une campagne PMax Feed-Only.md>) | Alternative (Shopping-focused) |
| [SOP - Lancer une campagne Shopping standard](<../shopping/Shopping - Lancer une campagne Shopping standard.md>) | Alternative (manual control) |
| [SOP - Configurer la segmentation Shopping basee sur la performance](<../shopping/Shopping - Configurer la segmentation Shopping basée sur la performance.md>) | Aval (when ready for segmentation) |
