# Launch PMax for Lead Gen/SaaS

> **Plateforme :** Google Ads
> **Catégorie :** Pmax
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Cette SOP lance une Performance Max campaign for Lead Gen or SaaS with proper lead quality tracking and audience signals.

> ❓ **La question clé :** How do I set up PMax for Lead Gen/SaaS to generate actual business results rather than raw leads?

Lead Gen and SaaS PMax is different from Ecommerce. There is no product feed. Success depends entirely on lead quality signals, audience targeting, and creative assets.

---

## Ce que cette SOP ne couvre PAS

Cette SOP ne couvre **pas :**

- Configure offline conversion import (prerequisite: must be done first)
- Explain when to use PMax (Voir : [PMax Structure Mental Model (Lead Gen/SaaS)](<Pmax - Structure PMax (Lead Gen-SaaS).md>))
- Set up Ecommerce PMax (Voir : [SOP - Lancer une campagne PMax feed-only](<Pmax - Lancer une campagne PMax Feed-Only.md>) or [SOP - Lancer une campagne PMax complete e-commerce](<Pmax - Lancer une campagne PMax Full Assets e-commerce.md>))

## Quand utiliser cette SOP

**Run when:**

- You have offline conversion import configured (MQL, SQL, or revenue)
- You have 30+ conversions/month on your quality signal
- Search campaigns are performing and you want incremental reach
- You have quality audience signals ready

**NE PAS exécuter quand :**

- Offline conversion import is not configured
- Form submissions are your only metric
- <30 conversions/month on quality signal
- No audience signals available

---

## Avant de commencer

### Prérequis

- Offline conversion import configured and verified
- 30+ conversions/month on quality signal
- Customer Match or website audience (1,000+ users)
- Creative assets prepared (images, video, text)
- Brand terms identified for exclusions

### Documents de référence (à garder ouverts)

| Document | Utilisé pour |
|----------|----------|
| [PMax Structure Mental Model (Lead Gen/SaaS)](<Pmax - Structure PMax (Lead Gen-SaaS).md>) | Structure decisions |
| [Universal Campaign Settings Reference](<../strategie/Strategie - Paramètres universels de campagne.md>) | Location, language settings |
| [Audience Signals Reference](<../audiences/Audiences - Signaux d'audience.md>) | Signal configuration |
| [Brand Separation Reference](<../search/Search - Séparation de marque.md>) | Brand exclusions |
| [Post-Launch Monitoring Reference](<../optimisation/Optimisation - Monitoring post-lancement.md>) | Learning period and monitoring |

---

## Porte de décision : Campaign structure

Avant de créer la campagne, déterminez votre structure :

| Si... | Alors... |
|-------|---------|
| Single offer, unified audience | Single campaign, multiple asset groups by angle |
| Multiple offers, different margins | Multiple campaigns by offer |
| Multiple audiences, same offer | Single campaign, asset groups by audience |

> ⚠️ **Each campaign needs 30+ conversions/month on your quality signal:** Don't split if you can't meet this threshold.

---

## Cadre d'exécution

| Phase | Objectif | Résultat |
|-------|---------|--------|
| **Phase 1️⃣: Campaign shell and settings** | Create campaign with correct settings | Campaign created |
| **Phase 2️⃣: Structure and targeting** | Build asset groups | Asset groups structured |
| **Phase 3️⃣: Creative setup** | Add images, video, text | Assets uploaded |
| **Phase 4️⃣: Bidding and budget** | Configure bid strategy | Bidding set |
| **Phase 5️⃣: Brand separation and exclusions** | Add brand exclusions and audience signals | Exclusions and signals active |
| **Phase 6️⃣: Launch and verify** | Enable and validate | Campagne active |

---

## Phase 1️⃣ : Enveloppe de campagne et paramètres

### 1.1 Vérifier les prérequis

**Critical gates (stop if any fail):**

- [ ] Offline conversion import verified working
- [ ] 30+ conversions/month on quality signal
- [ ] Customer Match or website audience (1,000+ users)
- [ ] Brand Search campaign protected

### 1.2 Vérifier le tracking des conversions

1. Go to **Tools & Settings** → **Conversions**
2. Verify your quality conversion (MQL, SQL, or revenue) is:
   - Status: Active
   - Recording conversions in last 7 days
   - Value assigned (if using value-based bidding)

### 1.3 Créer la campagne

1. Go to Google Ads → **Campaigns** → **+** → **New campaign**
2. Select goal: **Leads** or **Sales** (based on conversion type)
3. Select conversion goals (choose your quality conversion, e.g., SQL)
4. Select campaign type: **Performance Max**
5. Click **Continue**

### 1.4 Configurer les paramètres de campagne

| Paramètre | Valeur | Notes |
|---------|-------|-------|
| **Campaign name** | `[Country]_[Language]_PMax_[Offer]` | e.g., "US_EN_PMax_DemoRequests" (no _[Audience] suffix) |
| **Locations** | Target countries/regions | Where you can serve |
| **Languages** | All audience languages | |

> ↪️ **For location and language details:** See [Universal Campaign Settings Reference](<../strategie/Strategie - Paramètres universels de campagne.md>).

### 1.5 Configurer les paramètres d'optimisation des assets

Examiner and configure asset optimization settings before building asset groups.

> ↪️ **For asset optimization configuration:** See [Asset Optimization Control Guidelines](<Pmax - Contrôle de l'optimisation des assets.md>) and [PMax Configuration Guidelines](<Pmax - Configuration PMax.md>).

---

## Phase 2️⃣ : Structure et ciblage

### 2.1 Créer le premier asset group

1. Name: `[Offer/Service] - [Audience/Angle]`
2. Example: "Demo Request - Features Focus"

### 2.2 Définir l'URL finale

1. Enter your landing page URL
2. **Final URL expansion:**
   - ON: If you have multiple relevant landing pages
   - OFF: If specific landing page required

---

## Phase 3️⃣ : Configuration créative

### 3.1 Ajouter les assets texte

**Headlines (minimum 3, recommended 5-11, max 30 characters):**

| Type | Example |
|------|---------|
| Benefit | "Scale Your Campaigns Faster" |
| Feature | "AI-Powered Optimization" |
| CTA | "Get Your Free Demo Today" |
| Social proof | "Trusted by 500+ Agencies" |

> ↪️ **For headline patterns:** See [Headline Angle Catalog](<../search/Search - Angles de headlines.md>).

**Long headlines (minimum 1, recommended 2-5, max 90 characters):**

| Type | Example |
|------|---------|
| Value prop | "The Google Ads OS That Helps Agencies Scale Campaigns and Maximize Client ROAS" |
| Problem-solution | "Stop Losing Time to Manual Optimization and Start Scaling Your Agency Profitably" |

**Descriptions (minimum 2, recommended 4, max 90 characters):**

| Type | Example |
|------|---------|
| Primary benefit | "Automate your Google Ads optimization and never miss a scaling opportunity again". |
| Features | "Constraint-driven diagnosis, decision frameworks, and execution SOPs all in one system". |
| CTA | "Start your free trial today. No credit card required to get started". |

> ↪️ **For description patterns:** See [Description Expansion Catalog](<../search/Search - Patterns d'expansion de descriptions.md>).

### 3.2 Ajouter les assets image

**Upload:**

- 3+ landscape images (1200×628)
- 3+ square images (1200×1200)
- 1+ portrait images (960×1200) if available

**Image content:**

- Product screenshots
- Team/people photos
- Lifestyle/context images
- Branded graphics

> ↪️ **For image specifications:** See [Image Creative Reference](<../creatives/Creatives - Création image.md>).

### 3.3 Ajouter le logo

1. Upload square logo (1200×1200)
2. Optional: Upload landscape logo (1200×300)

### 3.4 Ajouter la vidéo (recommandé)

1. Upload video to YouTube first
2. Paste YouTube URL in PMax
3. Recommended: 15-60 second video

> ⚠️ **If you skip video:** Google auto-generates from your images. This typically underperforms.

> ↪️ **For video specifications:** See [Video Creative Reference](<../video/Video - Création vidéo.md>).

### 3.5 Ajouter les informations business

| Champ | Valeur |
|-------|-------|
| Business name | Your company name |
| Call to action | Appropriate CTA (e.g., "Learn more", "Sign up") |
| Display URL path | Optional brand/offer path |

### 3.6 Créer des asset groups additionnels (si applicable)

For multi-asset-group structure:

1. Click **New asset group**
2. Repeat steps 2.1-3.5
3. Use different angles, audiences, or offers per group

---

## Phase 4️⃣ : Enchères et budget

### 4.1 Configurer les enchères

| Scenario | Strategy | Target |
|----------|----------|--------|
| 30-50 conversions/month | Maximiser les conversions | Optional CPA cible |
| 50+ conversions/month | Maximiser la valeur de conversion | Optional ROAS cible (if tracking values) |

**Configuration:**

1. Select bid strategy based on volume
2. If using CPA cible: Set target at actual CPA + 10-20%
3. If using ROAS cible: Set based on actual value/cost

> ↪️ **Pour les seuils de volume :** See [Conversion Volume Thresholds Reference](<../suivi/Suivi - Seuils de volume de conversions.md>).

### 4.2 Définir le budget

| Consideration | Recommended approach |
|---------------|----------------------|
| New campaign | €50/day minimum to learn |
| Scaling | Based on CPA cible/ROAS and volume/value goals |

---

## Phase 5️⃣ : Séparation marque et exclusions

### 5.1 Ajouter les exclusions de marque

1. In campaign settings → **Brand exclusions**
2. Click **Exclude specific brands**
3. Search for and add your brand name
4. Add brand variations and misspellings

### 5.2 Vérifier la protection Brand Search

1. Confirm Brand Search campaign exists
2. Verify brand keywords are mot-clé exact
3. Ensure Brand Search has sufficient budget

> ↪️ **For complete brand separation:** See [Brand Separation Reference](<../search/Search - Séparation de marque.md>).

### 5.3 Configurer les signaux d'audience

Go to asset group settings and configure signals in priority order:

**Customer Match (highest priority):**

1. Click **Your data** → Select Customer Match list
2. Prefer: Closed customers or SQLs list

**Website audiences:**

1. Click **Your data** → Select website audiences
2. Add: Converters, high-intent visitors

**Custom segments:**

1. Click **Custom segments** → Create new
2. Add: Competitor URLs, relevant search terms

**In-market audiences:**

1. Click **Interests & detailed demographics**
2. Select relevant in-market categories

> ↪️ **For audience signal configuration:** See [Audience Signals Reference](<../audiences/Audiences - Signaux d'audience.md>).

---

## Phase 6️⃣ : Lancement et vérification

### 6.1 Checklist pré-lancement

- [ ] All prerequisites verified (offline conversion import, audiences)
- [ ] Campaign settings correct
- [ ] Asset groups complete with all asset types
- [ ] Audience signals added
- [ ] Brand exclusions configured
- [ ] Budget set

### 6.2 Activer la campagne

1. Review all settings
2. Set status to **Enabled**
3. Set start date

### 6.3 Vérification post-lancement (24-48 heures)

- [ ] Campaign status: Eligible
- [ ] Assets approved (no policy flags)
- [ ] Impressions appearing
- [ ] Budget spending as expected

### 6.4 Monitoring cadence

| Timeframe | Focus |
|-----------|-------|
| 24-48 hours | Verify assets approved, impressions appearing |
| Week 1 | Check asset performance, verify no brand queries |
| Week 2-4 | Learning period, minimal changes |
| Week 4 | First comprehensive review, evaluate conversion quality |

> ↪️ **Pour le guide complet de suivi :** See [Post-Launch Monitoring Reference](<../optimisation/Optimisation - Monitoring post-lancement.md>).

---

## Validation et critères de complétion

Cette SOP est terminée quand :

- [ ] Prérequisites verified (offline conversion import, audiences)
- [ ] Campaign created with appropriate settings
- [ ] Asset groups complete with all assets
- [ ] Audience signals configured
- [ ] Brand exclusions active
- [ ] Campaign enabled and serving
- [ ] Week 1 verification passed

---

## Passerelle de sortie

| Délai | Action |
|-----------|--------|
| Week 1-2 | Learning period, minimal changes |
| Week 3-4 | Continue learning, begin noting patterns |
| Day 30 | First performance evaluation |
| Ongoing | Optimize assets, refine signals |

**En cas de problème :**

| Issue | Action |
|-------|--------|
| High volume, low quality | Verify offline conversion import working |
| Brand queries appearing | Re-verify brand exclusions |
| No learning | Check volume, consider consolidation |
| Asset disapprovals | Fix policy issues, resubmit |
| Learning period issues | See [Post-Launch Monitoring Reference](<../optimisation/Optimisation - Monitoring post-lancement.md>) |

---

## FAQ

**Q: What if I don't have offline conversion import?**

A: Do not launch PMax. Configure offline conversion import first. PMax without quality signals will generate low-quality leads.

**Q: How many asset groups should I have?**

A: Start with 1-2. Only add more if each can get 30+ conversions/month.

**Q: What if my Customer Match list is small?**

A: Minimum 1,000 matched users. If smaller, focus on website audiences while growing your list.

**Q: How long before I can evaluate performance?**

A: Wait 30 days minimum. Learning period is 2-4 weeks. Evaluate conversion quality, not just volume.

---

## Référence rapide : bibliothèque support

| Document | Type | Utilisé dans |
|----------|------|---------|
| [PMax Structure Mental Model (Lead Gen/SaaS)](<Pmax - Structure PMax (Lead Gen-SaaS).md>) | Mental Model | Phase 1 |
| [Universal Campaign Settings Reference](<../strategie/Strategie - Paramètres universels de campagne.md>) | Reference | Phase 1 |
| [Audience Signals Reference](<../audiences/Audiences - Signaux d'audience.md>) | Reference | Phase 5 |
| [Brand Separation Reference](<../search/Search - Séparation de marque.md>) | Reference | Phase 5 |
| [Post-Launch Monitoring Reference](<../optimisation/Optimisation - Monitoring post-lancement.md>) | Reference | Phase 6 |
| [Image Creative Reference](<../creatives/Creatives - Création image.md>) | Reference | Phase 3 |
| [Video Creative Reference](<../video/Video - Création vidéo.md>) | Reference | Phase 3 |

---

## Procédures liées

| SOP | Relation |
|-----|--------------|
| [SOP - Lancer une campagne PMax feed-only](<Pmax - Lancer une campagne PMax Feed-Only.md>) | Alternative (Ecommerce Feed-Only) |
| [SOP - Lancer une campagne PMax complete e-commerce](<Pmax - Lancer une campagne PMax Full Assets e-commerce.md>) | Alternative (Ecommerce Full Assets) |
