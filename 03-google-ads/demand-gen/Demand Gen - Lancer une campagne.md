# Lancer une campagne Demand Gen

> **Plateforme :** Google Ads
> **Catégorie :** Demand Gen
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Cette SOP lance une Demand Gen campaign for conversion-focused upper funnel goals, with proper audience setup, lookalike configuration, and creative mix.

> ❓ **La question clé :** How do I set up a conversion-optimized campaign that reaches new audiences across YouTube, Discover, and Gmail?

Demand Gen is Google's conversion-focused upper funnel campaign type. It is the only way to access lookalike segments in Google Ads.

---

## Ce que cette SOP ne couvre PAS

Cette SOP ne couvre **pas :**

- Cover awareness-focused video campaigns (Voir : [SOP - Lancer une campagne Video](<../video/Video - Lancer une campagne.md>))
- Explain upper funnel strategy (Voir : [Upper Funnel Campaign Structure Mental Model](<../strategie/Strategie - Structure de campagne haut de tunnel.md>))
- Cover audience creation (Voir : [SOP - Configurer le ciblage par audience](<../audiences/Audiences - Configurer le ciblage par audience.md>))

## Quand utiliser cette SOP

Lancez cette SOP when:

- Launching conversion-focused upper funnel campaigns
- Testing lookalike audiences (exclusive to Demand Gen)
- Expanding beyond Search/Shopping with conversion optimization
- Re-engaging customers with product feed integration

---

## Avant de commencer

### Prérequis

- Conversion goal with working tracking (verify conversion actions are firing before proceeding)
- Target audiences (or seed audiences for lookalikes)
- Image AND video assets (both recommended)
- Landing page URL
- Budget allocation (minimum for 50+ conversions/month)

> ⚠️ **Verify conversion tracking before campaign creation:** Demand Gen optimizes for selected conversions. Confirm your primary conversion action is firing correctly in Google Ads → Tools & Settings → Conversions.

### Documents de référence (à garder ouverts)

| Document | Utilisé pour |
|----------|----------|
| [Upper Funnel Campaign Structure Mental Model](<../strategie/Strategie - Structure de campagne haut de tunnel.md>) | Campaign structure decisions |
| [Universal Campaign Settings Reference](<../strategie/Strategie - Paramètres universels de campagne.md>) | Location, language settings |
| [Audience Targeting Reference](<../audiences/Audiences - Signaux d'audience.md>) | Targeting options |
| [Post-Launch Monitoring Reference](<../optimisation/Optimisation - Monitoring post-lancement.md>) | Learning period and monitoring |

---

## Porte de décision : Campaign structure

Déterminez votre structure de campagne :

| Si votre objectif est... |. Puis create... | Audience focus | Channel consideration |
|-------------------|----------------|----------------|----------------------|
| Re-engage existing customers | Remarketing Demand Gen | Hot/Warm audiences | All channels or YouTube focus |
| Find new prospects similar to converters | Prospecting Demand Gen | Lookalike segments | Test channel combinations via ad groups |
| Expand with Google's AI | Expansion Demand Gen | Optimized targeting | All channels |

> ⚠️ **Demand Gen needs higher volume than other campaign types:** Target 50+ conversions per ad group per 30 days. Consolidate aggressively.

> 💡 **Channel selection happens at ad group level:** Structure ad groups by audience AND/OR by channel combination for testing.

---

## Cadre d'exécution

| Phase | Objectif | Résultat |
|-------|---------|--------|
| **Phase 1️⃣: Campaign shell and settings** | Configure campaign settings | Campaign shell |
| **Phase 2️⃣: Structure and targeting** | Configure audiences and lookalikes | Audience structure |
| **Phase 3️⃣: Creative setup** | Add image and video assets | Complete creative mix |
| **Phase 4️⃣: Bidding and budget** | Configure bid strategy | Bidding set |
| **Phase 5️⃣: Exclusions** | Add audience exclusions | Exclusions active |
| **Phase 6️⃣: Launch and verify** | Final checks and go-live | Campagne active |

---

## Phase 1️⃣ : Enveloppe de campagne et paramètres

### 1.1 Créer une nouvelle campagne

1. Dans Google Ads, click **+ New campaign**
2. Select **Sales** or **Leads** (conversion goal)
3. Select **Demand Gen** as campaign type

### 1.2 Configurer les paramètres de campagne

| Paramètre | Recommandation | Notes |
|---------|----------------|-------|
| **Campaign name** | `[Country]_[Language]_DemandGen_[Tier]` | e.g., "US_EN_DemandGen_Prospecting" |
| **Locations** | Vos marchés cibles | |
| **Languages** | Audience languages | |

> ↪️ **For location and language details:** See [Universal Campaign Settings Reference](<../strategie/Strategie - Paramètres universels de campagne.md>).

### 1.3 Configurer les objectifs de conversion

1. Confirm correct conversion actions are selected
2. Verify conversion tracking is working
3. Set conversion value (if applicable)

> ⚠️ **Demand Gen optimizes for selected conversions:** Ensure only your primary conversion goal is selected.

**Verification:** Campaign shell created with correct name, location, language, and only the primary conversion goal selected.

---

## Phase 2️⃣ : Structure et ciblage

### 2.1 Créer un ad group

1. Name ad group: `[Audience Type] - [Specific Audience]`
2. Configure audiences based on campaign tier

### 2.2 Remarketing audiences

For remarketing campaigns:

| Audience | Priority | Use case |
|----------|----------|----------|
| Cart/Form abandoners | 1 | Highest intent recovery |
| Product/Page viewers | 2 | Re-engage interested users |
| All site visitors | 3 | Broad remarketing |
| Customer Match | 4 | Retention, upsell |
| YouTube engaged | 5 | Video viewers |

### 2.3 Lookalike segments (Demand Gen exclusive)

For prospecting campaigns:

**Step 1️⃣: Select seed audience**

| Seed type | Minimum size | Quality |
|-----------|--------------|---------|
| Purchasers/Converters | 1,000+ users | Best |
| High-value customers | 1,000+ users | Best |
| Website visitors | 1,000+ users | Good |
| YouTube engaged | 1,000+ users | Good |

**Step 2️⃣: Configure reach**

| Reach setting | Similarity signal | Volume | Recommendation |
|---------------|-------------------|--------|----------------|
| Narrow | Strongest | Lowest | Conservative start |
| Balanced | Medium | Medium | Default starting point |
| Broad | Weakest | Highest | Only if volume-constrained |

> 💡 **Seed quality matters more than reach setting:** Start with Balanced and invest in seed quality first. See [Audience Targeting Reference](<../audiences/Audiences - Signaux d'audience.md>) for lookalike configuration details.

### 2.4 Options de prospection additionnelles

| Audience type | Example | When to add |
|---------------|---------|-------------|
| Custom segments | Competitor URLs, search terms | Supplement lookalikes |
| In-market audiences | Category buyers | Broader prospecting |

### 2.5 Configurer le ciblage optimisé

| Campaign tier | Optimized Targeting |
|---------------|---------------------|
| Remarketing | OFF |
| Prospecting (lookalikes) | Test OFF first, then ON |
| Expansion | ON |

> ⚠️ **Optimized Targeting significantly expands audience:** Keep OFF for remarketing.

> 💡 **Optimized Targeting can be set at ad group level:** This allows A/B testing different audience approaches within the same campaign.

### 2.6 Configurer la sélection de canal (niveau ad group)

At the ad group level, you can control which channels your ads serve on:

| Option | What it includes |
|--------|------------------|
| **All Google channels** | YouTube (in-stream, in-feed, Shorts), Discover, Gmail, GDN |
| **Specific channels** | Select individual channels for testing |

**Available channels:**

- YouTube in-stream
- YouTube in-feed
- YouTube Shorts
- Discover
- Gmail
- GDN

> 💡 **Use separate ad groups to test different channel combinations:** This provides clearer performance data per channel.

### 2.7 Définir CPA cible/ROAS au niveau ad group (optionnel)

CPA cible or ROAS cible can be set at the ad group level to override campaign-level targets.

| Use case | Setting |
|----------|---------|
| Different products with different margins | Set different CPA cible/ROAS cible per ad group |
| Testing audience performance | Set looser targets for prospecting ad groups |

> ↪️ **For audience targeting options:** See [Audience Targeting Reference](<../audiences/Audiences - Signaux d'audience.md>).

**Verification:** Audiences configured per tier, lookalike reach set to Balanced (if using), Optimized Targeting set intentionally, and channel selection confirmed.

---

## Phase 3️⃣ : Configuration créative

### 3.1 Exigences de format créatif

Demand Gen requires multiple asset types for full reach:

| Asset type | Requirement | Serves on |
|------------|-------------|-----------|
| Images (landscape) | Required | Discover, Gmail, YouTube |
| Images (square) | Required | Discover, Gmail |
| Images (portrait) | Recommended | Discover (mobile) |
| Video (landscape) | Recommended | YouTube |
| Video (vertical) | Recommended | YouTube Shorts |
| Logos | Required | All placements |
| Headlines | Required | All placements |
| Descriptions | Required | All placements |

### 3.2 Ajouter les assets image

| Format | Size | Minimum | Recommended |
|--------|------|---------|-------------|
| Landscape | 1200×628 px | 1 | 3-5 |
| Square | 1200×1200 px | 1 | 3-5 |
| Portrait | 960×1200 px | 0 | 3-5 |

> ↪️ **For image specifications:** See [Image Creative Reference](<../creatives/Creatives - Création image.md>).

### 3.3 Ajouter les assets vidéo

| Format | Aspect ratio | Minimum | Recommended |
|--------|--------------|---------|-------------|
| Landscape | 16:9 | 0 | 1-3 |
| Square | 1:1 | 0 | 1-3 |
| Vertical | 9:16 | 0 | 1-3 |

> 💡 **Include both images AND videos:** Demand Gen serves across YouTube, Discover, and Gmail. Both formats maximize reach.

> ↪️ **For video specifications:** See [Video Creative Reference](<../video/Video - Création vidéo.md>).

### 3.4 Ajouter les assets texte

| Asset | Character limit | Quantity |
|-------|-----------------|----------|
| Headlines | 40 characters | 3-5 |
| Descriptions | 90 characters | 3-5 |
| Business name | 25 characters | 1 |
| Call-to-action | Select from list | 1 |
| Final URL | Landing page | 1 |

> ↪️ **For headline and description patterns:** See [Headline Angle Catalog](<../search/Search - Angles de headlines.md>) and [Description Expansion Catalog](<../search/Search - Patterns d'expansion de descriptions.md>).

### 3.5 Créatif par tier de campagne

| Tier | Creative approach |
|------|-------------------|
| Remarketing | Product-specific, urgency, offers |
| Prospecting | Problem/Solution, credibility, social proof |
| Expansion | Broad appeal, brand introduction |

### 3.6 Product feed (Ecommerce)

For Ecommerce remarketing:

1. Connect Merchant Center feed at campaign level
2. Enable dynamic creative
3. Ensure feed has required attributes:
   - id, title, description
   - image_link, price, link

**Verification:** Both image and video assets uploaded, all required text assets filled, and ad preview renders correctly across YouTube, Discover, and Gmail placements.

---

## Phase 4️⃣ : Enchères et budget

### 4.1 Sélectionner la stratégie d'enchères

| Goal | Bid strategy | Target |
|------|--------------|--------|
| Maximize clicks | Maximize Clicks | Optional: Target CPC cap |
| Maximiser les conversions | Maximiser les conversions | Optional: CPA cible |
| Maximiser la valeur de conversion | Maximiser la valeur de conversion | Optional: ROAS cible |

**Configuration:**

1. Select bid strategy based on goal
2. For Maximize Clicks: Optionally set a Target CPC cap
3. For Maximiser les conversions: Optionally set CPA cible
4. For Maximiser la valeur de conversion: Optionally set ROAS cible

### 4.2 Définir le budget

Calculate recommended budget:

```
Recommended Budget = 50 conversions × CPA cible
```

**Example:** If CPA cible is €20, recommended monthly budget is €1,000 (€33/day)

**From a ROAS perspective:** If targeting 400% ROAS and €10,000/month revenue goal, budget = €2,500/month (€83/day)

| If expected conversions are... | Then... |
|-------------------------------|---------|
| 50+ per ad group | ✅ Continuer |
| 30-50 per ad group | ⚠️ Consider consolidating |
| <30 per ad group | ❌ Consolidate or increase budget |

> ↪️ **Pour les seuils de volume :** See [Conversion Volume Thresholds Reference](<../suivi/Suivi - Seuils de volume de conversions.md>).

**Verification:** Bid strategy set with appropriate target, and daily budget supports 50+ conversions per month.

---

## Phase 5️⃣: Exclusions

### 5.1 Audience exclusions

Add at campaign level:

| Exclude | All campaigns |
|---------|---------------|
| Recent converters | ✅ Yes (7-30 days based on sales cycle) |
| Remarketing audiences | ✅ Yes (in prospecting campaigns) |

**Verification:** Recent converter exclusion and remarketing audience exclusion (for prospecting) applied at campaign level.

---

## Phase 6️⃣ : Lancement et vérification

### 6.1 Checklist pré-lancement

- [ ] Conversion tracking is verified working
- [ ] Audiences are correctly configured
- [ ] Lookalike reach is set to Balanced (if using)
- [ ] Lookalike targeting mode evaluated (suggestion vs strict)
- [ ] Optimized Targeting is set intentionally
- [ ] Both image and video assets are included
- [ ] Exclusions are in place
- [ ] Budget supports 50+ conversions/month goal

### 6.2 Activer la campagne

1. Review all settings in campaign preview
2. Verify ad preview shows correctly across placements
3. Set campaign status to **Enabled**
4. Monitor closely for first 48-72 hours

### 6.3 Monitoring cadence

| Timeframe | Focus |
|-----------|-------|
| 48-72 hours | Delivery, policy issues |
| 7 days | Conversion volume vs expectations |
| 14 days | Efficiency, adjust targeting if needed |
| 30 days | Full performance review, expand or scale |

> ↪️ **Pour le guide complet de suivi :** See [Post-Launch Monitoring Reference](<../optimisation/Optimisation - Monitoring post-lancement.md>).

**Verification:** Campaign status is Enabled, ads are approved across all placements, and conversion tracking is recording events.

---

## Validation et critères de complétion

Cette SOP est terminée quand :

- [ ] Campaign is live with correct settings
- [ ] Audiences and lookalikes are configured
- [ ] Both image and video assets are serving
- [ ] Exclusions are in place
- [ ] Conversion tracking is verified
- [ ] Budget supports volume requirements
- [ ] Campaign passes launch checklist

---

## Passerelle de sortie

| Délai | Action |
|-----------|--------|
| 48-72 hours | Monitor for delivery, check for policy issues |
| 7 days | Check conversion volume vs expectations |
| 14 days | Evaluate efficiency, adjust targeting if needed |
| 30 days | Full performance review, expand or scale |

**En cas de problème :**

| Problème | Rediriger vers |
|-------|----------|
| Low conversion volume | Check budget, expand targeting |
| High CPA | Review audiences, tighten lookalike reach |
| Low reach | Add more creative formats, expand audiences |
| Creative disapprovals | Review policy, fix assets |
| Learning period issues | See [Post-Launch Monitoring Reference](<../optimisation/Optimisation - Monitoring post-lancement.md>) |

---

## Erreurs fréquentes

| Erreur | Pourquoi ça arrive | Comment l'éviter |
|---------|----------------|--------------|
| Not enough conversions | Insufficient budget or volume | Ensure 50+ conv/month potential |
| Only images, no video | Incomplete asset set | Include both formats |
| Broad lookalikes first | Weakest similarity signal from day one | Start with Balanced, invest in seed quality first |
| Optimized Targeting ON for remarketing | Loses audience precision | Keep OFF for remarketing |
| Wrong conversion action | Optimizing for secondary action | Verify conversion selection |

---

## Référence rapide : bibliothèque support

| Document | Type | Utilisé dans |
|----------|------|---------|
| [Upper Funnel Campaign Structure Mental Model](<../strategie/Strategie - Structure de campagne haut de tunnel.md>) | Mental Model | Decision gate |
| [Universal Campaign Settings Reference](<../strategie/Strategie - Paramètres universels de campagne.md>) | Reference | Phase 1 |
| [Audience Targeting Reference](<../audiences/Audiences - Signaux d'audience.md>) | Reference | Phase 2 |
| [Network Selection Reference](<../strategie/Strategie - Sélection de réseau.md>) | Reference | Phase 2 (channel selection) |
| [Post-Launch Monitoring Reference](<../optimisation/Optimisation - Monitoring post-lancement.md>) | Reference | Phase 6 |
| [Image Creative Reference](<../creatives/Creatives - Création image.md>) | Reference | Phase 3 |
| [Video Creative Reference](<../video/Video - Création vidéo.md>) | Reference | Phase 3 |

---

## Procédures liées

| SOP | Relation |
|-----|--------------|
| [SOP - Configurer le ciblage par audience](<../audiences/Audiences - Configurer le ciblage par audience.md>) | Amont (audience creation) |
| [SOP - Construire des listes Customer Match](<../audiences/Audiences - Construire des listes Customer Match.md>) | Amont (seed audience creation) |
| [SOP - Lancer une campagne Display](<../display/Display - Lancer une campagne.md>) | Parallèle (alternative channel) |
| [SOP - Lancer une campagne Video](<../video/Video - Lancer une campagne.md>) | Parallèle (awareness-only alternative) |
