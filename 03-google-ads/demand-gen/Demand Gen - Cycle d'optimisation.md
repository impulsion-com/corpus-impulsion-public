# Cycle d'optimisation Demand Gen

> **Plateforme :** Google Ads
> **Catégorie :** Demand Gen
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Structured optimization cycle for Demand Gen campaigns covering health, audiences, placements, creative, bidding progression, feed integration, and brand safety.

> ❓ **La question clé :** Is this Demand Gen campaign progressing toward its targets, or are there issues holding it back?

Run bi-weekly for performance review (Phases 1-3, 5). Run monthly for all phases including creative refresh and structural changes.

---

## Ce que cette SOP ne couvre PAS

Cette SOP ne couvre **pas :**

- Launch a new Demand Gen campaign (Voir : [SOP - Lancer une campagne Demand Gen](<Demand Gen - Lancer une campagne.md>))
- Execute deep audience optimization across all campaign types (Voir : [SOP - Optimiser la performance des audiences](<../audiences/Audiences - Optimiser la performance des audiences.md>))
- Validate initial campaign configuration (Voir : [Demand Gen Campaign Health Checklist](<Demand Gen - [Review] Santé des campagnes.md>))

## Quand utiliser cette SOP

- Demand Gen campaign has been live for 30+ days
- Bi-weekly or monthly performance review is due
- Performance is declining after initial learning period
- Before scaling budget on a Demand Gen campaign

---

## Avant de commencer

> ⚠️ **Demand Gen operates on upper-funnel economics.** CPA of 1.5-2x Non-Branded Search CPA cible is normal. ROAS of 50-70% of Non-Branded Search ROAS cible is expected. Use Google Ads as source of truth (not GA4).

### Prérequis

- Demand Gen campaign live for 30+ days
- Accès au compte Google Ads with previous cycle notes
- Demand Gen-specific KPI targets (not Search targets)

### Documents de référence (à garder ouverts)

| Document | Utilisé pour |
|----------|----------|
| [Demand Gen Campaign Health Checklist](<Demand Gen - [Review] Santé des campagnes.md>) | Phase 1 |
| [Demand Gen Performance Reference](<Demand Gen - Performance.md>) | Benchmarks, all phases |
| [Audience Targeting Guidelines](<../audiences/Audiences - Paramètres recommandés de ciblage.md>) | Phase 2 expansion decisions |
| [SOP - Optimiser la performance des audiences](<../audiences/Audiences - Optimiser la performance des audiences.md>) | Phase 2 escalation |

### Temps estimé

| Phase | Bi-weekly | Mensuelle |
|-------|-----------|---------|
| Phase 1️⃣: Health check | 5 min | 5 min |
| Phase 2️⃣: Audience spot-check | 10 min | 10 min |
| Phase 3️⃣: Placement and frequency | 5 min | 5 min |
| Phase 4️⃣: Creative optimization | Skip | 10 min |
| Phase 5️⃣: Bidding optimization | 5 min | 5 min |
| Phase 6️⃣: Feed integration (DPA only) | Skip | 5 min |
| Phase 7️⃣: Brand safety | Skip | 5 min |
| **Total** | **25 min** | **45 min** |

---

## Cadre d'exécution

| Phase | Objectif | Résultat |
|-------|---------|--------|
| **Phase 1️⃣** | Health check | Pass/fail status |
| **Phase 2️⃣** | Audience spot-check | Audience actions or escalation |
| **Phase 3️⃣** | Placement and frequency | Channel balance verified |
| **Phase 4️⃣** | Creative optimization (monthly) | Fatigue assessed, refresh planned |
| **Phase 5️⃣** | Bidding optimization | Strategy maturity progressed |
| **Phase 6️⃣** | Feed integration (monthly, DPA only) | Feed health verified |
| **Phase 7️⃣** | Brand safety (monthly) | Exclusion settings verified |

---

## Phase 1️⃣: Vérification de santé (5 min)

1. Run [Demand Gen Campaign Health Checklist](<Demand Gen - [Review] Santé des campagnes.md>)
2. If any critical area fails, fix in this priority order: Bidding > Audiences > Creative > Placements > Feed > Brand safety

**Verification:** All campaigns serving, conversion tracking active, no disapproved ads.

---

## Phase 2️⃣: Vérification ponctuelle d'audience (10 min)

### 2.1 Audience CPA review

1. Naviguez vers Audiences, keywords, and content > Audiences
2. Review CPA/ROAS per audience segment

| Constat | Action |
|---------|--------|
| All audiences within 1.5x target | No action. Move to 2.2. |
| One audience CPA > 2x target with 50+ clicks | Pause or replace that audience. |
| Multiple audiences failing | Schedule [SOP - Optimiser la performance des audiences](<../audiences/Audiences - Optimiser la performance des audiences.md>). |

### 2.2 Lookalike reach check

Examiner current lookalike reach setting against performance:

| Current performance | Action |
|--------------------|--------|
| CPA on target, volume too low | Expand: Narrow → Balanced, or Balanced → Broad |
| CPA on target, volume sufficient | Hold current setting |
| CPA too high | Tighten reach OR replace seed audience with higher-quality list |

Allow 14+ days after any reach change before evaluating.

### 2.3 Optimized targeting check

Pour chaque ad group, check the "Total: Expansion and optimized targeting" row:

| Expanded CPA vs targeted CPA | Action |
|-------------------------------|--------|
| < 1.5x | Keep ON |
| 1.5-2x | Monitor 14+ more days |
| > 2x | Turn OFF |

### 2.4 Quick demographics check

Examiner CPA/ROAS across Age, Gender, Parental status, Household income.

| Condition | Action |
|-----------|--------|
| Group CPA > 2x campaign average with 50+ clicks | Flag for exclusion |
| "Unknown" > 20% of budget with CPA > 1.5x average | Flag for review (do not exclude without 30+ days of data) |

> ↪️ **Deep audience work.** For demographics optimization, combined segments, audience insights, and expansion testing: [SOP - Optimiser la performance des audiences](<../audiences/Audiences - Optimiser la performance des audiences.md>).

**Verification:** No audience CPA-broken (>2x target) without a plan. Expansion impact documented. Lookalike reach aligned with performance.

---

## Phase 3️⃣: Placement et fréquence (5 min)

### 3.1 Channel distribution check

Segment by placement/channel. Check if any single channel consumes >75% of budget:

| Constat | Action |
|---------|--------|
| Balanced distribution across YouTube/Discover/Gmail | No action |
| One channel >75% of budget with acceptable CPA | Acceptable if CPA is on target |
| One channel >75% of budget with CPA > 2x target | Create separate ad groups per channel to control allocation |
| Channel with zero conversions after 30+ days | Exclude via ad group structure |

> ⚠️ **Do not disable placements based on last-click CPA alone.** Check view-through conversion columns before deciding.

### 3.2 Évaluation view-through

| View-through % of total | Action |
|--------------------------|--------|
| <30% | Healthy. No action. |
| 30-60% | Flag for backend validation. |
| >60% | Shorten view-through window or exclude from bidding. |

### 3.3 Frequency check

Monitor frequency metrics. If frequency >5/week with declining CTR: expand audience size or refresh creative.

**Verification:** No channel consuming disproportionate budget with poor CPA. VTC reliance documented.

---

## Phase 4️⃣: Optimisation créative (10 min, mensuel uniquement)

### 4.1 Fatigue detection

| Signal | Threshold | Action |
|--------|-----------|--------|
| CTR declining | 2+ consecutive weeks | Queue replacement creative |
| Frequency rising | >5 impressions/user per 7 days | Add new creative variants |
| CPA rising, audience stable | CPA up 20%+ over 14 days | Creative is the likely cause |

### 4.2 Processus de rafraîchissement

1. Identify fatigued assets by format (image/video)
2. Add new assets alongside existing ones (do not remove immediately)
3. Allow 14 days for new assets to gather data
4. Pause underperforming assets after replacements prove out

### 4.3 Test créatif

Test one variable at a time. Minimum 14-day test duration per variable:

| Test | What to compare |
|------|----------------|
| UGC vs polished | Engagement rate and CPA |
| Static image vs video | CTR and conversion rate |
| Offer-led vs problem-led | CPA and conversion volume |

**Verification:** No creative running 60+ days unchanged. Refresh plan documented if fatigue detected.

---

## Phase 5️⃣: Optimisation des enchères (5 min)

### 5.1 Maturity assessment

Check where the campaign sits on the bidding migration path:

| Stage | Current strategy | Move to | When |
|-------|-----------------|---------|------|
| Launch | Maximize Clicks | Maximiser les conversions (no target) | 15+ conversions in 30 days |
| Learning | Maximiser les conversions | CPA cible or ROAS cible | 30+ conversions in 30 days, stable performance |
| Targeting | CPA cible/ROAS cible | Tighter targets | 50+ conversions per ad group per 30 days |

> ⚠️ **Set initial targets at current performance.** When adding a CPA cible or ROAS cible target, use actual 30-day average. Do not set aspirational targets at migration.

### 5.2 Resserrement du ciblage

For campaigns on CPA cible/ROAS cible: tighten in 5-10% increments with 14-day wait between adjustments. Maximum 20% tightening per cycle. If volume drops >30%, loosen by 5%.

**Verification:** Bid strategy matches campaign maturity. Target changes documented with rationale.

---

## Phase 6️⃣: Revue de l'intégration du flux (5 min, mensuel, DPA uniquement)

Skip this phase if the campaign does not use Dynamic Product Ads.

| Check | Verify |
|-------|--------|
| Feed status | Active, no errors in Merchant Center |
| Product count | Expected number approved |
| Disapprovals | <5% of products disapproved |
| Image quality | No placeholder or low-resolution images |
| Price accuracy | Prices match landing page |

**Verification:** Feed is active with <5% disapprovals.

---

## Phase 7️⃣: Brand safety (5 min, mensuel uniquement)

| Paramètre | Attendu |
|---------|----------|
| Inventory type | Standard or Limited (never Expanded) |
| Content exclusions | Sensitive categories excluded |
| Digital content labels | DL-MA excluded at minimum |

Examiner "Where ads showed" for brand-inappropriate placements and add to exclusion list.

**Verification:** All brand safety settings match expected values.

---

## Validation et critères de complétion

Cette SOP est terminée quand :

- [ ] Health checklist run, results documented
- [ ] Audience CPA outliers identified (escalated if needed)
- [ ] Lookalike reach setting aligned to performance
- [ ] Optimized targeting impact measured
- [ ] Demographics reviewed, outliers flagged
- [ ] Channel distribution checked, exclusions updated
- [ ] VTC reliance assessed
- [ ] Creative fatigue assessed (monthly)
- [ ] Bidding maturity assessed, migration/tightening documented
- [ ] Feed health verified (monthly, DPA only)
- [ ] Brand safety settings confirmed (monthly)
- [ ] Next review date scheduled

---

## Passerelle de sortie

| Délai | Action |
|-----------|--------|
| Le jour même | Quick fixes (exclusions, expansion toggles) |
| Cette semaine | Creative refresh production (if needed) |
| 14 days | Evaluate audience and bidding changes |
| Next cycle | Review all changes, document results |

**If deeper investigation needed:**

| Problème | Rediriger vers |
|-------|----------|
| Deep audience optimization | [SOP - Optimiser la performance des audiences](<../audiences/Audiences - Optimiser la performance des audiences.md>) |
| Campaign setup issues | [SOP - Lancer une campagne Demand Gen](<Demand Gen - Lancer une campagne.md>) |
| Attribution questions | [Demand Gen Performance Reference](<Demand Gen - Performance.md>) |
| Bidding strategy selection | [SOP - Selectionner une strategie d'encheres](<../encheres/Enchères - Sélectionner une stratégie d'enchères.md>) |

---

## Lié documents

| Document | Type | Relation |
|----------|------|--------------|
| [Demand Gen Campaign Health Checklist](<Demand Gen - [Review] Santé des campagnes.md>) | Checklist | Phase 1 |
| [Demand Gen Performance Reference](<Demand Gen - Performance.md>) | Reference | Toutes les phases |
| [Audience Targeting Guidelines](<../audiences/Audiences - Paramètres recommandés de ciblage.md>) | Guideline | Phase 2 |
| [Audience Targeting Reference](<../audiences/Audiences - Signaux d'audience.md>) | Reference | Phase 2 |
| [SOP - Optimiser la performance des audiences](<../audiences/Audiences - Optimiser la performance des audiences.md>) | SOP | Phase 2 escalation |
| [Placement Performance Reference](<Demand Gen - Performance.md>) | Reference | Phase 3 |
| [Upper Funnel Campaign Structure Mental Model](<../strategie/Strategie - Structure de campagne haut de tunnel.md>) | Mental Model | Strategic context |

---

## Erreurs fréquentes

| Failure | How to avoid |
|---------|--------------|
| Comparing to Search benchmarks | Set DG-specific targets from day one |
| Optimizing before 30 days | Calendar-block first review at day 30 |
| Changing too many variables at once | One major change per cycle |
| Ignoring view-through conversions | Always check VTC columns before disabling placements |
| Tightening bid targets too fast | Max 20% per cycle, 5-10% per step |
| Using GA4 as source of truth | Use Google Ads for Demand Gen metrics |
| Leaving optimized targeting ON without measuring | Check expansion row every cycle |
