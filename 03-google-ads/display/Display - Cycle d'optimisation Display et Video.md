# Cycle d'optimisation campagnes Display & Video

> **Plateforme :** Google Ads
> **Catégorie :** Display
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Mensuelle checkpoint for Display and Video campaigns. Identifies issues across health, placements, audiences, creative, expansion, video, bidding, and brand safety, then routes deep work to specialist SOPs.

> ❓ **La question clé :** Are your Display and Video campaigns running clean, or are there issues that need specialist attention?

Cette SOP does not execute deep optimization. It surfaces problems and routes them.

---

## Ce que cette SOP ne couvre PAS

Cette SOP ne couvre **pas :**

- Execute deep placement analysis (Voir : [SOP - Gerer les placements Display et Video](<Display - Gérer les placements Display et Video.md>))
- Execute deep audience optimization (Voir : [SOP - Optimiser la performance des audiences](<../audiences/Audiences - Optimiser la performance des audiences.md>))
- Set up new Display or Video campaigns from scratch
- Cover Performance Max campaign optimization

## Quand utiliser cette SOP

- Mensuel, on a fixed date (first or second week of the month)
- Après launching a new Display or Video campaign (2 weeks post-launch)
- When Display/Video spend exceeds budget by 20%+ without corresponding conversions

---

## Avant de commencer

### Prérequis

- Accès au compte Google Ads with active Display and/or Video campaigns
- 30 days of performance data (minimum)
- Backend conversion data for view-through validation

### Documents de référence (à garder ouverts)

| Document | Utilisé pour |
|----------|----------|
| [Display & Video Campaign Health Checklist](<Display - [Review] Santé des campagnes Display et Video.md>) | Phase 1 |
| [Placement Performance Reference](<../demand-gen/Demand Gen - Performance.md>) | Phase 2 |
| [SOP - Gerer les placements Display et Video](<Display - Gérer les placements Display et Video.md>) | Phase 2 escalation |
| [SOP - Optimiser la performance des audiences](<../audiences/Audiences - Optimiser la performance des audiences.md>) | Phase 3 escalation |

### Temps estimé

| Phase | Time |
|-------|------|
| Phase 1️⃣: Health check | 5 min |
| Phase 2️⃣: Placement spot-check | 5 min |
| Phase 3️⃣: Audience spot-check | 5 min |
| Phase 4️⃣: Creative review | 10 min |
| Phase 5️⃣: Expansion control | 5 min |
| Phase 6️⃣: Video-specific checks | 5 min |
| Phase 7️⃣: Bid and budget | 5 min |
| Phase 8️⃣: Brand safety | 5 min |
| **Total** | **45 min** |

> ⚠️ **This is a checkpoint, not deep optimization.** If a phase surfaces issues requiring more than 5 minutes of work, document the issue and schedule the specialist SOP.

---

## Cadre d'exécution

| Phase | Objectif | Résultat |
|-------|---------|--------|
| **Phase 1️⃣** | Health check | Pass/fail status |
| **Phase 2️⃣** | Placement spot-check | Clean or escalate to Manage Placements SOP |
| **Phase 3️⃣** | Audience spot-check | Clean or escalate to Optimize Audience Performancette procédure |
| **Phase 4️⃣** | Creative review | Underperformers flagged for replacement |
| **Phase 5️⃣** | Expansion control | All remarketing expansion OFF confirmed |
| **Phase 6️⃣** | Video-specific checks | Frequency caps and VTC assessed |
| **Phase 7️⃣** | Bid and budget | Budget aligned to performance |
| **Phase 8️⃣** | Brand safety | Exclusion settings verified |

---

## Phase 1️⃣: Vérification de santé (5 min)

1. Run [Display & Video Campaign Health Checklist](<Display - [Review] Santé des campagnes Display et Video.md>)
2. Verify all campaigns are enabled, serving impressions, with active conversion tracking and approved ads
3. If any campaign is not serving or has disapproved ads, fix before proceeding

**Verification:** All campaigns show impressions in the last 7 days.

---

## Phase 2️⃣: Vérification ponctuelle des placements (5 min)

1. Naviguez vers Content > Where ads showed (last 30 days)
2. Sort by cost descending
3. Review the top 50 placements by spend

| Constat | Action |
|---------|--------|
| All top 50 placements are relevant, converting, or brand-safe | No action. Move to Phase 3. |
| 1-2 bad placements in top 10 | Exclude them now. Move to Phase 3. |
| 3+ bad placements in top 10, or app placements not excluded | Schedule [SOP - Gerer les placements Display et Video](<Display - Gérer les placements Display et Video.md>) within 7 days. |

**Verification:** Top 10 placements by spend are acceptable.

---

## Phase 3️⃣: Vérification ponctuelle d'audience (5 min)

1. Naviguez vers Audiences, keywords, and content > Audiences
2. Review audience segment CPA/ROAS for each campaign

| Constat | Action |
|---------|--------|
| All audiences within 1.5x CPA cible/ROAS | No action. Move to Phase 4. |
| One audience CPA > 2x target with 50+ clicks | Pause or narrow that audience. |
| Multiple audiences failing, or remarketing lists shrinking below 1,000 | Schedule [SOP - Optimiser la performance des audiences](<../audiences/Audiences - Optimiser la performance des audiences.md>) within 7 days. |
| Observation-mode segments dormant 60+ days | Flag for graduation or removal in next audience optimization cycle. |

**Verification:** No audience segment is CPA-broken (>2x target) without a documented plan.

---

## Phase 4️⃣: Revue créative (10 min)

### Display creative

1. Naviguez vers Ads & assets, sort by conversions (descending)
2. Replace any image running 90+ days without conversions
3. Ensure each ad group has a responsive display ad with all asset slots filled

### Video creative

1. Review each video ad against benchmarks

| Metric | Benchmark | Action if below |
|--------|-----------|----------------|
| View rate (skippable) | >20% | Test new creative hook in first 5 seconds |
| Click-through rate | >0.5% | Test stronger CTA overlay |
| Cost per view | Rising over 3+ months | Refresh creative |

2. If only running one format, note to test a second (in-stream, bumper, Shorts, in-feed)

> ↪️ **Creative specs.** See [Image Creative Reference](<../creatives/Creatives - Création image.md>) and [Video Creative Reference](<../video/Video - Création vidéo.md>).

**Verification:** No creative running 90+ days without conversions. All ad groups have complete assets.

---

## Phase 5️⃣: Contrôle d'expansion (5 min)

> ⚠️ **Non-negotiable.** Check this every cycle.

1. For every **remarketing** campaign: open ad group settings and confirm expansion is **OFF**
   - Display and Video (Sales/Leads/Traffic): check "Optimized targeting"
   - Video (Consideration/Awareness): check "Audience expansion"
2. If expansion is ON for any remarketing campaign, disable it immediately
3. For **prospecting** campaigns with expansion ON: check the "Total: Expansion and optimized targeting" row

| Expanded CPA vs targeted CPA | Action |
|-------------------------------|--------|
| < 1.5x | Keep ON |
| 1.5-2x | Monitor 14+ more days |
| > 2x | Turn OFF |

**Verification:** All remarketing campaigns have expansion OFF. Prospecting expansion impact is documented.

---

## Phase 6️⃣: Vérifications spécifiques vidéo (5 min)

### Frequency capping

Vérifier every Video campaign has a frequency cap:

| Campaign type | Recommended cap |
|---------------|-----------------|
| Remarketing | 3-5 impressions/week |
| Prospecting | 5-7 impressions/week |
| Brand awareness | 2-3 impressions/day |

If no cap is set, add one now.

### View-through conversion assessment

Check the ratio of view-through to click-through conversions:

| View-through % of total | Action |
|--------------------------|--------|
| <30% | Healthy. No action. |
| 30-60% | Flag for backend data validation. |
| >60% | Shorten view-through window or exclude from bidding. |

**Verification:** All Video campaigns have frequency caps. VTC reliance is documented.

---

## Phase 7️⃣: Enchères et budget (5 min)

1. Compare each campaign's actual CPA/ROAS to its target over the last 30 days
2. Reallocate budget from campaigns missing targets to campaigns hitting goals but limited by budget
3. Verify bid strategy matches campaign objective

| Campaign objective | Correct bid strategy |
|-------------------|---------------------|
| Display conversions | CPA cible or Maximiser les conversions |
| Video awareness | Target CPM or Maximum CPV |
| Video consideration | Maximum CPV |

> 💡 **Video does not support conversion bidding.** For conversion-focused video, use Demand Gen campaigns instead.

**Verification:** No bid strategy mismatch. Budget shifts documented.

---

## Phase 8️⃣: Brand safety (5 min)

Vérifier at campaign and account level:

| Paramètre | Attendu | Action if wrong |
|---------|----------|----------------|
| Inventory type | Limited or Standard | Set to Limited (recommended) |
| Sensitive content categories | All 5 excluded | Enable all |
| Mobile app placements | Excluded | Exclude all app categories |
| Parked domains | Excluded | Exclude |

> ↪️ **Full exclusion config.** See [Content Exclusion Guidelines](<Display - Exclusions de contenu.md>).

**Verification:** All brand safety settings match expected values.

---

## Validation et critères de complétion

Cette SOP est terminée quand :

- [ ] Health checklist passed for all campaigns
- [ ] Top 10 placements by spend reviewed (escalated to Manage Placements SOP if needed)
- [ ] Audience CPA outliers identified (escalated to Optimize Audience Performancette procédure if needed)
- [ ] Creative underperformers flagged for replacement
- [ ] Expansion OFF on all remarketing campaigns (non-negotiable)
- [ ] Expansion impact measured on prospecting campaigns
- [ ] Frequency caps set on all Video campaigns
- [ ] View-through conversion reliance assessed
- [ ] Budget and bid strategies aligned
- [ ] Brand safety settings verified

---

## Passerelle de sortie

| Délai | Action |
|-----------|--------|
| Le jour même | Apply placement exclusions, expansion fixes, frequency caps |
| Cette semaine | Replace flagged creative underperformers |
| Cette semaine (if escalated) | Run [SOP - Gerer les placements Display et Video](<Display - Gérer les placements Display et Video.md>) |
| Cette semaine (if escalated) | Run [SOP - Optimiser la performance des audiences](<../audiences/Audiences - Optimiser la performance des audiences.md>) |
| Next month | Re-run cette SOP |

---

## Lié documents

| Document | Type | Relation |
|----------|------|--------------|
| [Display & Video Campaign Health Checklist](<Display - [Review] Santé des campagnes Display et Video.md>) | Checklist | Phase 1 |
| [Placement Performance Reference](<../demand-gen/Demand Gen - Performance.md>) | Reference | Phase 2 |
| [SOP - Gerer les placements Display et Video](<Display - Gérer les placements Display et Video.md>) | SOP | Phase 2 escalation |
| [SOP - Optimiser la performance des audiences](<../audiences/Audiences - Optimiser la performance des audiences.md>) | SOP | Phase 3 escalation |
| [Image Creative Reference](<../creatives/Creatives - Création image.md>) | Reference | Phase 4 |
| [Video Creative Reference](<../video/Video - Création vidéo.md>) | Reference | Phase 4 |
| [Audience Targeting Reference](<../audiences/Audiences - Signaux d'audience.md>) | Reference | Phase 5 |
| [Audience Targeting Guidelines](<../audiences/Audiences - Paramètres recommandés de ciblage.md>) | Guideline | Phase 5 |
| [Frequency Capping Reference](<../video/Video - Plafonnement de fréquence.md>) | Reference | Phase 6 |
| [Bid Strategy Selection Reference](<../encheres/Enchères - Sélection de stratégie d'enchères.md>) | Reference | Phase 7 |
| [Content Exclusion Guidelines](<Display - Exclusions de contenu.md>) | Guideline | Phase 8 |

---

## Erreurs fréquentes

| Failure | How to avoid |
|---------|--------------|
| Skipping placement review | New bad placements appear constantly. Check top 10 every cycle. |
| Leaving expansion ON for remarketing | Check every cycle in Phase 5. Non-negotiable. |
| Confusing optimized targeting with audience expansion | Different features, different campaign types. Vérifiez que le/la correct one. |
| Ignoring view-through inflation | Always check VTC ratio against backend data. |
| Not setting frequency caps | Set caps on every Video campaign from day one. |
| Running cette SOP as deep optimization | This is a checkpoint. Route deep work to specialist SOPs. |
