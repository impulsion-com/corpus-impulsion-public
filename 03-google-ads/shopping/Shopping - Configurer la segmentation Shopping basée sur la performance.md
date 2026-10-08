# Configurer la segmentation Shopping basee sur la performance

> **Plateforme :** Google Ads
> **Catégorie :** Shopping
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Cette SOP configure performance-based product segmentation for Shopping campaigns using the Hero/Sidekick/Villain/Zombie framework.

> ❓ **La question clé :** How do I allocate budget efficiently across my product catalog based on historical performance data?

Performance-based segmentation puts budget where it performs. Heroes get the most exposure, Zombies get tested, and Villains get restricted.

---

## Ce que cette SOP ne couvre PAS

Cette SOP ne couvre **pas :**

- Explain segmentation conceptual framework (Voir : [Product Feed Segmentation Mental Model](<../flux-produit/Flux Produit - Choisir une segmentation.md>))
- List custom label tactics (Voir : [Feed Segmentation Catalog](<../flux-produit/Flux Produit - Tactiques de segmentation.md>))
- Set up product feeds (Voir : [SOP - Configurer et optimiser le flux produits](<../flux-produit/Flux Produit - Configurer et optimiser le feed produit.md>))
- Set up scoring model segmentation (Voir : [SOP - Configurer la segmentation par scoring](<../encheres/Enchères - Configurer la segmentation par modèle de scoring.md>))
- Create campaigns from scratch (Voir : [SOP - Lancer une campagne Shopping standard](<Shopping - Lancer une campagne Shopping standard.md>) or [SOP - Lancer une campagne PMax feed-only](<../pmax/Pmax - Lancer une campagne PMax Feed-Only.md>))

## Quand utiliser cette SOP

**Run when:**

- You have 90+ days of Shopping conversion data
- Clear performance differentiation exists across products
- Budget constraints require efficient allocation
- You have access to a labeling tool (ProductHero or Profitmetrics)

**NE PAS exécuter quand :**

- New store with insufficient conversion history
- All products perform similarly (no differentiation)
- Catalog is too small (<50 SKUs)
- No tool/script infrastructure available

---

## Avant de commencer

### Required

- Compte Google Ads avec Editor access
- Google Merchant Center with active product feed
- Labeling tool access (ProductHero or Profitmetrics)
- 90+ days of conversion data
- Current account ROAS cible and average ROAS metrics

### Documents de référence (à garder ouverts)

| Document | Utilisé pour |
|----------|----------|
| [Product Feed Segmentation Mental Model](<../flux-produit/Flux Produit - Choisir une segmentation.md>) | Tier definitions, strategy variants |
| [Feed Segmentation Catalog](<../flux-produit/Flux Produit - Tactiques de segmentation.md>) | Custom label implementation |
| [Conversion Volume Thresholds Reference](<../suivi/Suivi - Seuils de volume de conversions.md>) | Volume requirements per bucket |

---

## Critical rules

1. **Same ROAS cible across all campaign buckets:** Differentiate via budget, not bid targets. Different ROAS cible per bucket causes products to get stuck in lower tiers.
2. **Set tool threshold ~25% below your Google Ads ROAS cible:** This allows product flow between tiers and prevents short-term dips from permanent demotion.
3. **Review thresholds after any ROAS cible or budget change:** Forgetting to adjust tool thresholds after Google Ads changes will break your segmentation.
4. **Each bucket needs 30+ conversions/month:** If you can't hit this threshold, consolidate buckets. Exception: Zombie buckets often use Maximiser les conversions without targets and may have lower conversion volume.
5. **Exclude segmented products from standard campaigns:** Failing to set exclusions causes overlap and data fragmentation.

---

## Cadre d'exécution

| Phase | Objectif | Résultat |
|-------|---------|--------|
| **Phase 0️⃣: Decide** | Choose strategy, tool, campaign type | Decisions documented |
| **Phase 1️⃣: Configure Tool** | Set thresholds and connect tool | Labels syncing |
| **Phase 2️⃣: Create Campaigns** | Build campaign structure | Campaigns created |
| **Phase 3️⃣: Validate** | Verify correct operation | Segmentation working |

---

## Phase 0️⃣: Décider

### 0.1 Choisir votre stratégie

| Goal | Campaign structure | When to use |
|------|-------------------|-------------|
| **Increase revenue** | Bucket 1: Heroes + Sidekicks + Villains / Bucket 2: Zombies | Zombie products need visibility: willing to spend to activate them |
| **Increase profitability** | Bucket 1: Heroes + Sidekicks + Zombies / Bucket 2: Villains | Villains are draining budget: priority is cost savings |
| **Full control (4 buckets)** | Bucket 1: Heroes / Bucket 2: Sidekicks / Bucket 3: Villains / Bucket 4: Zombies | Have sufficient volume (30+ conversions/bucket for main buckets): want maximum granular optimization |

> 💡 **Default to 4 separate buckets if volume allows:** This provides full control over each tier's budget and bid strategy. If volume is limited, start with 2 buckets and expand as volume grows.

**Documentez votre choix :**

| Field | Your answer |
|-------|-------------|
| Primary goal | Revenue / Profitability / Both |
| Number of buckets | 2 / 3 |
| Bucket structure | [List buckets] |

### 0.2 Choisir votre outil

| Tool | Cost | Best for | Pros | Cons |
|------|------|----------|------|------|
| **ProductHero Labelizer** | €99/month + €49/extra shop | Plug-and-play, detailed insights | Great setup wizard, best dashboard | Most expensive |
| **Profitmetrics Shopping Booster** | From €26/month | Flexibility, profit data integration | Most customizable | Prone to errors if misconfigured |

**Documentez votre choix :**

| Field | Your answer |
|-------|-------------|
| Tool selected | ProductHero / Profitmetrics |
| Reason | [Your rationale] |

### 0.3 Choisir votre type de campagne

| Factor | Standard Shopping | PMax Feed-Only |
|--------|------------------|----------------|
| **Bid control** | High (CPC manuel available, Max CPC caps via portfolio strategies) | Low (automated only, no bid caps) |
| **Campaign priorities** | Yes | No |
| **Min. conversions/bucket** | N/A for CPC manuel, ~30/month for ROAS cible | ~30/month (Zombies excepted) |
| **Setup complexity** | Low | Low |
| **Best for** | Max control, testing, Max CPC caps | PMax benefits without creative |

**Documentez votre choix :**

| Field | Your answer |
|-------|-------------|
| Campaign type | Standard Shopping / PMax Feed-Only |
| Reason | [Your rationale] |

---

## Phase 1️⃣: Configurer l'outil

### 1.1 Calculer les seuils

**Step 1️⃣:** Get your current average ROAS (last 30-90 days)

**Step 2️⃣:** Calculate tool threshold:

```
Tool Threshold = Average ROAS × 0.75
```

**Example:**

- Average ROAS: 400%
- Tool threshold: 400% × 0.75 = 300%

| Field | Your values |
|-------|-------------|
| Average ROAS (30-90 days) | ___% |
| Tool threshold (×0.75) | ___% |
| Google Ads ROAS cible target | ___% |

> ⚠️ Tool threshold should be ~25% lower than your Google Ads ROAS cible target. This creates a buffer for short-term dips.

### 1.2 Configurer l'outil sélectionné

#### If ProductHero Labelizer:

1. Log in to ProductHero dashboard
2. Go to **Labelizer** → **Settings**
3. Set **ROAS cible** to your calculated tool threshold
4. Configure tier definitions:
   - Heroes: Top performers above threshold
   - Sidekicks: Good performers above threshold
   - Villains: Below threshold
   - Zombies: <100 impressions in 90 days
5. Connect to Google Merchant Center
6. Set sync frequency (daily recommended)
7. Save and activate

#### If Profitmetrics Shopping Booster:

1. Log in to Profitmetrics dashboard
2. Go to **Shopping Booster** → **Setup**
3. Select your Google Ads account
4. Set **ROAS cible** to your calculated tool threshold
5. Configure tier thresholds
6. Map to custom label (recommend: `custom_label_0`)
7. Set update frequency (daily recommended)
8. Save and activate

### 1.3 Vérifier la synchronisation des labels

1. Wait for first sync to complete
2. Go to **Google Merchant Center** → **Products** → **All Products**
3. Filter by `custom_label_0`
4. Verify distribution:

| Tier | Expected distribution |
|------|----------------------|
| Heroes | 5-15% of catalog |
| Sidekicks | 15-25% of catalog |
| Villains | 25-40% of catalog |
| Zombies | 30-50% of catalog |

> ⚠️ If distribution is wrong, check threshold configuration. Too high = too many Villains/Zombies.

---

## Phase 2️⃣: Créer les campagnes

### 2.1 Planifier la structure de campagne

**If 2-bucket structure (Revenue focus):**

| Campaign | Contains | Budget share |
|----------|----------|--------------|
| [Product] - H+S+V | Heroes, Sidekicks, Villains | 70-80% |
| [Product] - Zombies | Zombies | 20-30% |

**If 2-bucket structure (Profitability focus):**

| Campaign | Contains | Budget share |
|----------|----------|--------------|
| [Product] - H+S+Z | Heroes, Sidekicks, Zombies | 70-80% |
| [Product] - Villains | Villains | 20-30% |

**If 3-bucket structure:**

| Campaign | Contains | Budget share |
|----------|----------|--------------|
| [Product] - H+S | Heroes, Sidekicks | 50-60% |
| [Product] - Villains | Villains | 20-25% |
| [Product] - Zombies | Zombies | 20-25% |

### 2.2 Créer les campagnes

**For Standard Shopping:**

1. Create campaign per bucket using [SOP - Lancer une campagne Shopping standard](<Shopping - Lancer une campagne Shopping standard.md>)
2. In product groups, subdivide by **Custom label 0**
3. Include only the tiers for this bucket
4. Exclude all other tier values

**For PMax Feed-Only:**

1. Create campaign per bucket using [SOP - Lancer une campagne PMax feed-only](<../pmax/Pmax - Lancer une campagne PMax Feed-Only.md>)
2. In listing groups, subdivide by **Custom label 0**
3. Include only the tiers for this bucket
4. Exclude all other tier values

### 2.3 Définir les exclusions

**Critical:** Exclude segmented products from any existing campaigns.

1. Open each existing Shopping/PMax campaign
2. Go to **Product groups** or **Listing groups**
3. Subdivide by **Custom label 0**
4. **Exclude** all tier values now in dedicated campaigns

### 2.4 Configurer les paramètres finaux

| Paramètre | Valeur | Same across all? |
|---------|-------|------------------|
| ROAS cible target | [Your target]% | ✅ Yes |
| Daily budget | Per structure | ❌ No (varies) |
| Locations | [Your targeting] | ✅ Yes |

> 💡 **Zombie bucket alternative:** If zombies struggle to spend, use **Maximiser les conversions** (no ROAS cible) to force impressions.

---

## Phase 3️⃣: Valider

### 3.1 Immediate verification (Day 1)

- [ ] All campaigns created and enabled
- [ ] Same ROAS cible set across all buckets (except Zombies if using Max Conv)
- [ ] Budgets allocated per structure
- [ ] Listing/product groups correctly filter by custom label
- [ ] Each tier appears in exactly one campaign
- [ ] Exclusions set in any legacy campaigns
- [ ] Tool sync verified in Merchant Center

### 3.2 Vérification semaine 1

- [ ] Products serving from correct campaigns
- [ ] No "eligible (limited)" warnings due to overlap
- [ ] Label sync running daily
- [ ] Budget pacing as expected per bucket
- [ ] Zombie bucket generating impressions

### 3.3 Ongoing verification (Mensuel)

- [ ] Review tier distribution: are products moving between tiers?
- [ ] Check for products stuck in Villain/Zombie
- [ ] Verify tool threshold still ~25% below actual ROAS
- [ ] Recalculate thresholds if ROAS cible or budget changed
- [ ] Assess if bucket structure should be simplified/expanded

---

## Validation et critères de complétion

Cette SOP est terminée quand :

- [ ] Strategy, tool, and campaign type decisions documented
- [ ] Tool configured with correct threshold (~25% below ROAS cible)
- [ ] Label sync verified in Merchant Center
- [ ] All campaign buckets created per structure
- [ ] Same ROAS cible across all buckets
- [ ] Budgets allocated per strategy
- [ ] Exclusions set to prevent overlap
- [ ] Week 1 verification passed

---

## Passerelle de sortie

| Prochaine étape | Quand |
|-----------|------|
| Monitor and optimize | Ongoing (weekly bucket review) |
| Adjust thresholds | Après any ROAS cible or budget change |
| Add building blocks | When base structure is stable |
| [SOP - Configurer la segmentation par scoring](<../encheres/Enchères - Configurer la segmentation par modèle de scoring.md>) | When ready for multi-variable prioritization |

---

## Ongoing Maintenance

**Hebdomadaire:**

- Check tier distribution: are products moving?
- Verify budget pacing per bucket
- Review zombie bucket: are products gaining impressions?

**Mensuel:**

- Recalculate threshold if average ROAS changed
- Review conversion volume per bucket
- Assess if structure should be simplified/expanded

**Après any ROAS cible change:**

1. Recalculate tool threshold (new ROAS cible × 0.75)
2. Update tool settings immediately
3. Document the change

---

## FAQ

**Q: Why the same ROAS cible across all buckets?**

A: Different ROAS cible targets cause products to get stuck. A villain with a 300% target has no incentive to reach 400% (the hero threshold). Same ROAS cible + different budgets gives control without breaking product flow.

**Q: Why set tool threshold 25% below Google Ads ROAS cible?**

A: Creates a buffer for short-term dips. If ROAS cible is 400% and tool threshold is also 400%, a product at 390% becomes a villain unnecessarily.

**Q: What if my zombie bucket isn't getting impressions?**

A: Three options: (1) Increase zombie budget, (2) Switch to Maximiser les conversions temporarily, (3) Check feed quality issues.

**Q: How long until I see results?**

A: Label sync: 24-48 hours. Campaign learning: 7-14 days. Performance stabilization: 30 days.

---

## Référence rapide : bibliothèque support

| Document | Type | Utilisé dans |
|----------|------|---------|
| [Product Feed Segmentation Mental Model](<../flux-produit/Flux Produit - Choisir une segmentation.md>) | Mental Model | Phase 0 |
| [Feed Segmentation Catalog](<../flux-produit/Flux Produit - Tactiques de segmentation.md>) | Catalog | Phase 1 |
| [Conversion Volume Thresholds Reference](<../suivi/Suivi - Seuils de volume de conversions.md>) | Reference | Phase 0, 2 |

---

## Procédures liées

| SOP | Relation |
|-----|--------------|
| [SOP - Configurer et optimiser le flux produits](<../flux-produit/Flux Produit - Configurer et optimiser le feed produit.md>) | Prérequisite (feed must exist) |
| [SOP - Lancer une campagne Shopping standard](<Shopping - Lancer une campagne Shopping standard.md>) | Used in Phase 2 |
| [SOP - Lancer une campagne PMax feed-only](<../pmax/Pmax - Lancer une campagne PMax Feed-Only.md>) | Used in Phase 2 |
| [SOP - Configurer la segmentation par scoring](<../encheres/Enchères - Configurer la segmentation par modèle de scoring.md>) | Advanced alternative |
