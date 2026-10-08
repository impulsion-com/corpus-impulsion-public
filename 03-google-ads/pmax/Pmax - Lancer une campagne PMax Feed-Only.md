# Lancer une campagne PMax feed-only

> **Plateforme :** Google Ads
> **Catégorie :** Pmax
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Cette SOP lance une Performance Max Feed-Only campaign that maximizes Shopping performance without creative asset investment.

> ❓ **La question clé :** How do I set up PMax to act like automated Standard Shopping without leaking spend to Display and YouTube?

Feed-Only PMax uses your product feed as the sole data source. By intentionally not adding creative assets, the campaign stays primarily on the Shopping surface while benefiting from PMax's automated bidding.

---

## Ce que cette SOP ne couvre PAS

Cette SOP ne couvre **pas :**

- Set up product feeds (Voir : [SOP - Configurer et optimiser le flux produits](<../flux-produit/Flux Produit - Configurer et optimiser le feed produit.md>))
- Explain when to choose PMax vs Standard Shopping (Voir : [Shopping Campaign Type Mental Model](<../shopping/Shopping - Types de campagne Shopping.md>))
- Set up PMax with full creative assets (Voir : [SOP - Lancer une campagne PMax complete e-commerce](<Pmax - Lancer une campagne PMax Full Assets e-commerce.md>))

## Quand utiliser cette SOP

**Run when:**

- You have 30+ conversions/month to support automated bidding (50+ for ROAS cible)
- You want Shopping performance with less management overhead
- You don't have quality creative assets (images, video)
- You want to keep spend focused on Shopping placements

**NE PAS exécuter quand :**

- Le flux produit n'est pas optimisé
- Le suivi des conversions n'est pas vérifié
- Volume is below 30 conversions/month (use Standard Shopping)
- You want cross-channel reach (use Full Assets PMax)

---

## Avant de commencer

### Prérequis

- Merchant Center account linked to Google Ads
- Product feed uploaded and approved
- Conversion tracking implemented with value tracking
- 30+ conversions in last 30 days
- Brand names identified for exclusions

### Documents de référence (à garder ouverts)

| Document | Utilisé pour |
|----------|----------|
| [Shopping Campaign Settings Reference](<../strategie/Strategie - Paramètres universels de campagne.md>) | PMax settings |
| [Universal Campaign Settings Reference](<../strategie/Strategie - Paramètres universels de campagne.md>) | Location, language settings |
| [Brand Separation Reference](<../search/Search - Séparation de marque.md>) | Brand exclusions |
| [Post-Launch Monitoring Reference](<../optimisation/Optimisation - Monitoring post-lancement.md>) | Learning period and monitoring |
| [PMax Structure Mental Model (Ecommerce)](<Pmax - Structure PMax (E-commerce).md>) | Structure decisions |

---

## Porte de décision : Single vs multi-campaign

Avant de créer la campagne, déterminez votre structure :

| Si... | Alors... | Reference |
|-------|---------|-----------|
| Simple catalog, no segmentation | Single campaign | Cette SOP |
| Need performance-based segmentation | Multiple campaigns by tier | [Product Feed Segmentation Mental Model](<../flux-produit/Flux Produit - Choisir une segmentation.md>) |
| Different products need different budgets | Multiple campaigns by category | [PMax Structure Mental Model (Ecommerce)](<Pmax - Structure PMax (E-commerce).md>) |

> ⚠️ **Each PMax campaign needs 30+ conversions/month (50+ for ROAS cible):** Don't over-segment if you can't meet volume thresholds per campaign.

---

## Cadre d'exécution

| Phase | Objectif | Résultat |
|-------|---------|--------|
| **Phase 1️⃣: Campaign shell and settings** | Create campaign with correct settings | Campaign created |
| **Phase 2️⃣: Structure and targeting** | Configure listing groups (no audience signals) | Listing groups structured |
| **Phase 3️⃣: Creative setup** | Skip assets (Feed-Only behavior) | Minimum required assets only |
| **Phase 4️⃣: Bidding and budget** | Configure bid strategy | Bidding set |
| **Phase 5️⃣: Brand separation and exclusions** | Add brand exclusions | Exclusions active |
| **Phase 6️⃣: Launch and verify** | Enable and validate | Campagne active |

---

## Phase 1️⃣ : Enveloppe de campagne et paramètres

### 1.1 Créer la campagne

1. Go to Google Ads → **Campaigns** → **+** → **New campaign**
2. Select goal: **Sales**
3. Select conversion goals (ensure purchase/transaction selected)
4. Select campaign type: **Performance Max**
5. Select your Merchant Center account
6. Click **Continue**

### 1.2 Configurer les paramètres de campagne

| Paramètre | Valeur | Notes |
|---------|-------|-------|
| **Campaign name** | `[Country]_[Language]_PMax_[Segment]_FeedOnly` | Include FO for Feed-Only identification |
| **Locations** | Target countries | Where you can ship/sell |
| **Languages** | All customer languages | |

> ↪️ **For location and language details:** See [Universal Campaign Settings Reference](<../strategie/Strategie - Paramètres universels de campagne.md>).

---

## Phase 2️⃣ : Structure et ciblage

### 2.1 Créer un asset group

1. Name: `[Segment] - Feed Only` (e.g., "All Products - Feed Only")

### 2.2 Configurer les listing groups

This is the critical step for Feed-Only behavior.

1. Click **Edit listing groups**
2. Default shows "All products"
3. **To segment by custom label:**
   - Click on "All products"
   - Select **Subdivide**
   - Choose **Custom label 0** (or your segmentation label)
   - Include relevant values
   - Exclude other values

| Structure | When to use |
|-----------|-------------|
| All products | Single campaign, no segmentation |
| By custom label | Performance-based segmentation |
| By brand | Brand-specific campaigns |
| By product type | Category-specific campaigns |

### 2.3 Configurer l'URL finale

| Paramètre | Valeur |
|---------|-------|
| **Final URL** | Homepage or main category page |
| **Final URL expansion** | OFF |

**How to disable Final URL expansion:**

1. Click **More options** or look for "Automatically created assets"
2. Find **Final URL expansion**
3. Toggle **OFF**

> ⚠️ **If Final URL Expansion = ON, Google will expand to other networks and will automatically create assets:** This defeats the purpose of a Feed-Only setup. Keep it OFF.

### 2.4 Do NOT add audience signals

> ⚠️ **For Feed-Only PMax, do NOT add audience signals:** Your product feed IS your targeting. Audience signals are only for Full Assets PMax.

---

## Phase 3️⃣ : Configuration créative (Feed-Only)

### 3.1 Do NOT add any assets

**This is what makes it Feed-Only:**

| Asset type | Action |
|------------|--------|
| **Images** | Do NOT add any |
| **Logos** | Do NOT add any |
| **Headlines** | Do NOT add any |
| **Long headlines** | Do NOT add any |
| **Descriptions** | Do NOT add any |
| **Videos** | Do NOT add any |

> ⚠️ **Feed-Only means NO assets:** Adding ANY assets (images, logos, headlines, descriptions, videos) will cause Google to expand to other networks, making it a Full-Asset campaign.

> 💡 **Your product feed IS your creative:** Product listings from the feed serve as your creative on Shopping placements. Only add products to the listing group.

---

## Phase 4️⃣ : Enchères et budget

### 4.1 Configurer les enchères

| Situation | Recommended strategy | Target |
|-----------|---------------------|--------|
| Building volume | Maximiser la valeur de conversion | No target |
| 50+ conversions/month | Maximiser la valeur de conversion | Set ROAS cible |

**Configuration:**

1. Select **Maximiser la valeur de conversion**
2. For new campaigns: Leave ROAS cible blank initially
3. For established campaigns: Enter ROAS cible (actual ROAS minus 10-20%)

> ↪️ **Pour les seuils de volume :** See [Conversion Volume Thresholds Reference](<../suivi/Suivi - Seuils de volume de conversions.md>).

### 4.2 Définir le budget

| Consideration | Approach |
|---------------|----------|
| New campaign | Start with test budget, scale after 2-4 weeks |
| Established account | Revenue goal / ROAS cible |

Enter your daily budget and click **Next**.

---

## Phase 5️⃣ : Séparation marque et exclusions

### 5.1 Ajouter les exclusions de marque

Brand exclusions prevent PMax from cannibalizing your cheap brand traffic.

1. In campaign settings, find **Brand exclusions** (or Additional settings → Brand safety)
2. Click **Exclude specific brands**
3. Search for and add your brand name(s)
4. Add brand misspellings if common

| Brand to exclude | Why |
|------------------|-----|
| Your brand name | Prevent brand cannibalization |
| Brand variations | Cover misspellings |
| Sub-brands | If running separate campaigns |

> ↪️ **For complete brand separation implementation:** See [Brand Separation Reference](<../search/Search - Séparation de marque.md>).

### 5.2 Ajouter des mots-clés à exclure via les listes

Use negative keyword lists for better organization and consistency:

1. Go to **Tools & Settings** → **Shared library** → **Negative keyword lists**
2. Create list: `[Client] - PMax Negatives`
3. Add known irrelevant queries from your Search data
4. Apply to PMax campaign

**Common negatives to add:**

| Type | Examples |
|------|----------|
| Wrong intent | "free", "diy", "how to make" |
| Wrong products | Competitors you don't carry |
| Low quality | "cheap", "discount" (if not your positioning) |

> 💡 **Use negative keyword lists:** Easier to manage and apply consistently across campaigns.

> ↪️ **For negative keyword management:** See [Negative Keyword Reference](<../search/Search - Mots-clés à exclure.md>).

---

## Phase 6️⃣ : Lancement et vérification

### 6.1 Checklist pré-lancement

- [ ] Campaign name follows naming convention (includes FO for Feed-Only)
- [ ] Correct Merchant Center account selected
- [ ] Bidding strategy set (Maximiser la valeur de conversion)
- [ ] Budget set
- [ ] Final URL expansion: OFF
- [ ] Images/videos NOT added (Feed-Only)
- [ ] Only minimum required text assets
- [ ] Brand exclusions configured
- [ ] NO audience signals added (Feed-Only)
- [ ] Listing groups correct

### 6.2 Activer la campagne

1. Review all settings in campaign overview
2. Set status to **Enabled**
3. Set start date

### 6.3 Vérification post-lancement (48-72 heures)

- [ ] Campaign status shows **Eligible**
- [ ] Products approved and serving
- [ ] Impressions appearing (PMax can take 48+ hours to ramp)
- [ ] Spend concentrated on Shopping (check Insights tab after 3+ days)

### 6.4 Monitoring cadence

| Timeframe | Focus |
|-----------|-------|
| 48-72 hours | Verify products serving, impressions appearing |
| Week 1 | Review Insights tab for placement breakdown, check for brand queries |
| Week 2-4 | Learning period, minimal changes |
| Day 30 | First comprehensive performance review |

> ↪️ **Pour le guide complet de suivi :** See [Post-Launch Monitoring Reference](<../optimisation/Optimisation - Monitoring post-lancement.md>).

### 6.5 Vérifier les fuites entre canaux (semaine 2+)

Après 2+ weeks, check where spend is going:

1. Go to campaign → **Insights**
2. Look at placement categories
3. If significant Display/YouTube spend: Review asset group (may have accidentally added assets)

---

## Validation et critères de complétion

Cette SOP est terminée quand :

- [ ] Campaign created with Feed-Only configuration
- [ ] No images or videos in asset group
- [ ] Final URL expansion OFF
- [ ] Brand exclusions active
- [ ] NO audience signals (Feed-Only)
- [ ] Campaign enabled and serving
- [ ] Week 1 verification passed
- [ ] Spend confirmed on Shopping placements

---

## Passerelle de sortie

| Délai | Action |
|-----------|--------|
| Week 1 | Monitor learning, no changes |
| Week 2-4 | Learning period, minimal changes |
| Day 30 | First performance evaluation |
| Ongoing | Monitor channel mix in Insights |

**En cas de problème :**

| Issue | Action |
|-------|--------|
| Significant non-Shopping spend | Review asset group for accidental assets |
| Poor performance | Check feed quality, consider Standard Shopping |
| Brand queries appearing | Verify brand exclusions |
| Learning period issues | See [Post-Launch Monitoring Reference](<../optimisation/Optimisation - Monitoring post-lancement.md>) |

---

## FAQ

**Q: How do I know if it's truly Feed-Only?**

A: Check Insights tab after 2+ weeks. Shopping placements should dominate. If Display/YouTube is significant, you may have assets attracting non-Shopping delivery.

**Q: Should I add audience signals to Feed-Only PMax?**

A: No. For Feed-Only PMax, your product feed IS your targeting. Audience signals are only for Full Assets PMax.

**Q: What if I want to test Full Assets later?**

A: Créez un nouveau/une nouvelle Full Assets campaign. Don't convert your Feed-Only campaign, as adding assets changes its behavior entirely.

**Q: How long until I can evaluate performance?**

A: Minimum 30 days. Learning period is 2-4 weeks, then you need stable data to evaluate.

---

## Référence rapide : bibliothèque support

| Document | Type | Utilisé dans |
|----------|------|---------|
| [Shopping Campaign Settings Reference](<../strategie/Strategie - Paramètres universels de campagne.md>) | Reference | Toutes les phases |
| [Universal Campaign Settings Reference](<../strategie/Strategie - Paramètres universels de campagne.md>) | Reference | Phase 1 |
| [Brand Separation Reference](<../search/Search - Séparation de marque.md>) | Reference | Phase 5 |
| [Post-Launch Monitoring Reference](<../optimisation/Optimisation - Monitoring post-lancement.md>) | Reference | Phase 6 |
| [PMax Structure Mental Model (Ecommerce)](<Pmax - Structure PMax (E-commerce).md>) | Mental Model | Phase 2 |

---

## Procédures liées

| SOP | Relation |
|-----|--------------|
| [SOP - Configurer et optimiser le flux produits](<../flux-produit/Flux Produit - Configurer et optimiser le feed produit.md>) | Prérequisite (feed must exist) |
| [SOP - Lancer une campagne Shopping standard](<../shopping/Shopping - Lancer une campagne Shopping standard.md>) | Alternative (manual control) |
| [SOP - Lancer une campagne PMax complete e-commerce](<Pmax - Lancer une campagne PMax Full Assets e-commerce.md>) | Alternative (cross-channel) |
| [SOP - Configurer la segmentation Shopping basee sur la performance](<../shopping/Shopping - Configurer la segmentation Shopping basée sur la performance.md>) | Aval (when ready for segmentation) |
