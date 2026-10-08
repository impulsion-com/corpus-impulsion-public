# Configurer et optimisér le flux produits

> **Plateforme :** Google Ads
> **Catégorie :** Flux Produit
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Phase 1️⃣: Exporter les données produit

### 1.1 Choisir la méthode d'export

| Platform | Recommended method | Notes |
|----------|-------------------|-------|
| Shopify | Google & YouTube channel or third-party app | Simprosys, AdNabu |
| WooCommerce | Product Feed PRO or Google Listings & Ads | Plugin required |
| Magento | Extension or custom export | Multiple options |
| BigCommerce | Channel Manager app | Built-in integration |
| Other platforms | Custom CSV/XML export | Manual or via app |

### 1.2 Se connecter à l'outil de gestion de flux

If using a Feed Management Tool (recommended):

1. **Create FMT account** (Channable, DataFeedWatch, Feedonomics, etc.)
2. **Connect your ecommerce platform** using the FMT's integration
3. **Import your product catalog** into the FMT
4. **Verify import** contains all products and base attributes

### 1.3 Vérifier la qualité des données de base

Before optimization, ensure your raw data is usable:

| Attribute | Check |
|-----------|-------|
| id | Unique per product, stable over time |
| title | Exists, not empty |
| description | Exists, not empty |
| link | Valid URL, resolves to product page |
| image_link | Valid URL, image loads |
| price | Numeric, includes currency |
| availability | Valid value (in_stock, out_of_stock, etc.) |

---

## Phase 2️⃣: Mapper et optimiser les attributs

### 2.1 Mapper les attributs requis

Ensure all required attributes are mapped to the correct Google specification.

| Your field | Maps to | Transformation needed |
|------------|---------|----------------------|
| Product ID / SKU | id | None |
| Product name | title | Optimization needed |
| Full description | description | Optimization needed |
| Product URL | link | Ensure HTTPS |
| Main image | image_link | Check resolution |
| Selling price | price | Add currency code |
| Stock status | availability | Map to valid values |

### 2.2 Optimiser les titres

Titles are your highest-impact optimization. Follow category-specific formulas.

**Formula by category:**

| Category | Formula |
|----------|---------|
| Fashion | Brand + Gender + Product Type + Attributes (size/color/material) |
| Electronics | Brand + Attributes + Product Type + Model Number |
| Consumables | Brand + Product Type + Attributes (weight/amount) |
| Books | Title + Author + Format + ISBN |
| Seasonal | Occasion + Product Type + Attributes |

**Optimization rules:**

1. **Front-load important details** (users see only 70-100 characters)
2. **Use all 150 characters** (more keywords = better matching)
3. **Include brand, product type, key attributes**
4. **Add variant attributes** (size, color) for each variant
5. **No promotional text** (causes disapprovals)
6. **No ALL CAPS** for emphasis

> ↪️ **For title examples:** See [Product Title Catalog](<Flux Produit - Titres de produits.md>).

### 2.3 Optimiser les descriptions

1. **Front-load key details** in first 160 characters
2. **Include** material, color, pattern, size, features, benefits
3. **No promotional text**, links, or HTML markup

**Description formula:**
`{Brand} presents {product}, perfect for {target audience} who {user's need}. This {product type} features {feature 1}, {feature 2}, and {feature 3}, making it {unique selling proposition}.`

> ↪️ **For description patterns:** See [Product Description Catalog](<Flux Produit - Descriptions de produits.md>).

### 2.4 Configurer les identifiants produit

| Product type | GTIN required | MPN required | Brand required |
|--------------|---------------|--------------|----------------|
| Branded products with barcodes | Yes | Optional | Yes |
| Branded products without barcodes | No | Yes | Yes |
| Custom/handmade products | No (set identifier_exists=false) | No | Optional |
| Private label products | Yes (if you have GTINs) | Optional | Your brand |

**Actions:**

1. **Map GTIN field** if available in your catalog
2. **Map MPN field** for products without GTINs
3. **Map brand field** to correct brand name
4. **Set identifier_exists = false** only for truly custom products

### 2.5 Configurer les images

1. **Verify resolution** is at least 100x100px (1500x1500px recommended)
2. **Check frame fill**: product should be 75-90% of image
3. **Ensure white/neutral background** for main image
4. **Map additional_image_link** for extra angles
5. **Map lifestyle_image_link** if lifestyle images available

### 2.6 Configurer le prix

1. **Map price** with currency code (e.g., `10.00 USD`)
2. **Map sale_price** if sales are active
3. **Map sale_price_effective_date** for scheduled sales
4. **Verify prices match landing pages** exactly

### 2.7 Configurer la disponibilité

1. **Map availability** to valid values
2. **Map inventory field** to `in_stock`, `out_of_stock`, `preorder`, `backorder`
3. **Configure sync frequency** to match inventory change rate

| Inventory change frequency | Recommended sync |
|---------------------------|------------------|
| Multiple times daily | Content API or hourly fetch |
| Daily | Daily fetch |
| Hebdomadaire or less | Daily fetch |

### 2.8 Configurer la catégorisation

1. **Create product_type** hierarchy matching your catalog structure
   - Example: `Apparel > Women > Dresses > Maxi Dresses`
2. **Review google_product_category** auto-assignment
3. **Override only if** auto-categorization is incorrect

---

## Phase 3️⃣: Configurer les labels personnalisés

### 3.1 Définir la stratégie des labels personnalisés

Custom labels enable campaign segmentation. Populate BEFORE campaign launch.

| Label | Recommended use | Example values |
|-------|-----------------|----------------|
| custom_label_0 | Performance tier | hero, sidekick, villain, zombie |
| custom_label_1 | Margin tier | high_margin, medium_margin, low_margin |
| custom_label_2 | Seasonality | evergreen, seasonal, clearance |
| custom_label_3 | Inventory level | high_stock, low_stock, critical |
| custom_label_4 | Priority | featured, standard, deprioritize |

> ↪️ **For segmentation strategies:** See [Feed Segmentation Catalog](<Flux Produit - Tactiques de segmentation.md>).

### 3.2 Implémenter les labels de performance

**For new feeds without performance data:**

1. Set all products to `unknown` or `new` initially
2. Après 30 days of data, recalculate based on performance

**For existing feeds with performance data:**

| Performance tier | Criteria | Label |
|-----------------|----------|-------|
| Hero | Top 20% by revenue, profitable | hero |
| Sidekick | Decent performance, potential | sidekick |
| Villain | High spend, low/no revenue | villain |
| Zombie | No impressions or spend | zombie |

> 💡 **Performance tier calculations can be automated** through ProductHero, Channable, or similar Feed Management Tools. These tools connect to your Google Ads data and automatically update custom labels based on performance thresholds you define.

### 3.3 Configurer le flux supplémentaire (si labeling automatisé)

If using an external tool (ProductHero, Profitmetrics, etc.) for dynamic performance labels:

1. **Create supplemental feed** with id and custom_label columns
2. **Link supplemental feed** to primary feed in Merchant Center
3. **Configure refresh schedule** matching tool updates

> 💡 **Supplemental feeds are typically handled automatically** by Feed Management Tools. The FMT generates and maintains the supplemental feed with your performance labels, pushing updates to Merchant Center on schedule.

---

## Phase 4️⃣: Téléverser dans Merchant Center

### 4.1 Créer la source de données

1. Go to **Merchant Center** > **Settings** > **Data sources**
2. Click **Add product source**
3. Select **A file** (for scheduled fetch)
4. Configure:

| Paramètre | Valeur |
|---------|-------|
| Data source name | Descriptive name (e.g., "Primary Feed - USA") |
| Target countries | Countries where products are sold |
| Language | Language of product data |
| File name | Exact file name from FMT |
| Fetch schedule | Match your FMT export schedule |

### 4.2 Configurer la récupération programmée

1. **Enter file URL** from your FMT
2. **Set fetch time** after your FMT export completes
3. **Set fetch frequency** (daily minimum recommended)
4. **Enable file validation**

### 4.3 Activer les mises à jour automatiques des items

1. Go to **Products** > **Automations**
2. Enable **Automatic price updates**
3. Enable **Automatic availability updates**
4. Enable **Automatic condition updates** (if applicable)

> 💡 Automatic updates are a safety net, not a replacement for accurate feed data.

### 4.4 Link Google Ads account

1. Go to **Settings** > **Linked accounts**
2. Click **Link** next to your Google Ads account
3. Confirm linking in Google Ads

---

## Phase 5️⃣ : Validation et correction des problèmes

### 5.1 Initial upload validation

Après first fetch completes:

1. Go to **Products** > **All products**
2. Check product counts match expectations
3. Review **status** column for issues

| Status | Action |
|--------|--------|
| Approved | No action needed |
| Under review | Wait 3-5 business days |
| Limited | Check "Needs attention" for restrictions |
| Not approved | Fix errors immediately |

### 5.2 Revoir les diagnostics

1. Go to **Products** > **Needs attention**
2. Review and prioritize issues by severity

| Severity | Priority | Action |
|----------|----------|--------|
| Error | Critical | Fix immediately (causes disapproval) |
| Warning | High | Fix soon (limits performance) |
| Opportunity | Medium | Address for optimization |

### 5.3 Corriger les problèmes courants

| Issue | Cause | Fix |
|-------|-------|-----|
| Missing GTIN | GTIN field not mapped | Add GTIN or set identifier_exists=false |
| Price mismatch | Feed price differs from landing page | Update feed or enable automatic updates |
| Image too small | Image below 100x100px | Use higher resolution images |
| Missing required attribute | Category-specific attribute missing | Add required attribute |
| Invalid GTIN | Incorrect or fabricated GTIN | Verify GTIN with manufacturer |

### 5.4 Dérouler la checklist qualité

Run through the [Product Feed Quality Checklist](<Flux Produit - Qualité du flux produits.md>) to verify:

- [ ] All required attributes populated
- [ ] Titles optimized and front-loaded
- [ ] Images meet resolution requirements
- [ ] Prices match landing pages
- [ ] Custom labels populated
- [ ] Disapproved products <5%

---

### Validation et critères de complétion

Cette SOP est terminée quand :

- [ ] Feed successfully uploaded to Merchant Center
- [ ] All required attributes mapped and populated
- [ ] Titles optimized following category formulas
- [ ] Custom labels configured for segmentation strategy
- [ ] Automatic updates enabled for price/availability
- [ ] Disapproved products <5% of catalog
- [ ] Google Ads account linked
- [ ] Quality checklist passes

---

### Passerelle de sortie

Une fois que feed is validated and live:

| Délai | Action |
|-----------|--------|
| Immédiatement | Verify feed is fetching on schedule |
| 24-48 hours | Check for new disapprovals after Google review |
| 7 days | Review diagnostics for emerging issues |
| Après validation | Begin [SOP - Lancer une campagne Shopping standard](<../shopping/Shopping - Lancer une campagne Shopping standard.md>) or [SOP - Lancer une campagne PMax feed-only](<../pmax/Pmax - Lancer une campagne PMax Feed-Only.md>) |

**En cas de problème :**

| Problème | Rediriger vers |
|-------|----------|
| High disapproval rate | Review [Product Feed Quality Checklist](<Flux Produit - Qualité du flux produits.md>) |
| Price/availability mismatches | Increase sync frequency, verify automatic updates |
| Poor query matching | Review title optimization in [Product Feed Optimization Guidelines](<Flux Produit - Optimisation du flux produits.md>) |
| Missing from filtered searches | Check variant attributes (color, size, etc.) |

---

### FAQ

**Q: Should I use one feed or multiple feeds?**

A: Google recommends one primary feed per market. Use `excluded_destination` to exclude products from specific surfaces rather than creating separate feeds.

**Q: How often should I update my feed?**

A: Minimum daily. For fast-moving inventory, use Content API or increase fetch frequency. Enable automatic updates as a safety net.

**Q: What if I don't have GTINs?**

A: Use MPN + Brand as an alternative. For custom products without identifiers, set `identifier_exists = false`.

**Q: Should I use attribute rules in Merchant Center or optimize in my FMT?**

A: Prefer FMT optimization for full control. Use MC attribute rules for quick fixes or supplemental transformations.

---

### Référence rapide : bibliothèque support

| Document | Type | Utilisé dans |
|----------|------|---------|
| [Product Feed Data Specification Reference](<Flux Produit - Spécifications du feed produit.md>) | Reference | Phase 2 attribute mapping |
| [Product Feed Optimization Guidelines](<Flux Produit - Optimisation du flux produits.md>) | Guideline | Phase 2 optimization |
| [Product Feed Quality Checklist](<Flux Produit - Qualité du flux produits.md>) | Checklist | Phase 5 validation |
| [Merchant Center Reference](<Flux Produit - Merchant Center.md>) | Reference | Phase 4 configuration |
| [Product Title Catalog](<Flux Produit - Titres de produits.md>) | Catalog | Phase 2.2 title optimization |
| [Product Description Catalog](<Flux Produit - Descriptions de produits.md>) | Catalog | Phase 2.3 description optimization |
| [Feed Segmentation Catalog](<Flux Produit - Tactiques de segmentation.md>) | Catalog | Phase 3 custom labels |

---

### Procédures liées

| SOP | Relation |
|-----|--------------|
| [SOP - Lancer une campagne Shopping standard](<../shopping/Shopping - Lancer une campagne Shopping standard.md>) | Aval (after feed is live) |
| [SOP - Lancer une campagne PMax feed-only](<../pmax/Pmax - Lancer une campagne PMax Feed-Only.md>) | Aval (after feed is live) |
| [SOP - Configurer la segmentation Shopping basee sur la performance](<../shopping/Shopping - Configurer la segmentation Shopping basée sur la performance.md>) | Conditionnel (for advanced segmentation) |
| [SOP - Configurer la segmentation par scoring](<../encheres/Enchères - Configurer la segmentation par modèle de scoring.md>) | Conditionnel (for advanced segmentation) |

---

### Erreurs fréquentes

| Erreur | Pourquoi ça arrive | Comment l'éviter |
|---------|----------------|--------------|
| High disapproval rate | Missing required attributes, policy violations | Run quality checklist before upload |
| Price mismatches | Feed sync timing mismatch with site | Enable automatic updates, increase sync frequency |
| Poor CTR | Generic titles, low-quality images | Optimize titles per category formula, use high-res images |
| Missing from searches | No GTINs, generic descriptions | Add GTINs, optimize descriptions with keywords |
| Cannot segment campaigns | Custom labels not populated | Configure labels before campaign launch |
| Lost performance history | Changed product IDs | Keep IDs stable, use SKUs |
