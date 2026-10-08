---
name: impulsion-audit
description: "Skill orchestrateur d'audit publicitaire multi-plateforme pour le corpus impulsion. Délègue à des sous-skills (impulsion-audit-google-ads, impulsion-audit-meta-ads, impulsion-audit-tiktok-ads, impulsion-audit-creatives, impulsion-audit-budget, impulsion-audit-landing, impulsion-plan-media) qui s'appuient sur les docs du corpus pour faire un audit pondéré 0-100 par plateforme. Use when user says audit ads, audit Google/Meta/TikTok, full ad check, ads health, PPC audit."
argument-hint: "google | meta | tiktok | creative | landing | budget | plan <type>"
license: MIT (skill base) + impulsion.com (corpus content)
---

# impulsion-audit : Orchestrateur d'audit publicitaire multi-plateforme (corpus impulsion)

> **Adapté pour le corpus impulsion** depuis [claude-ads](https://github.com/AgriciDaniel/claude-ads) (MIT, AgriciDaniel).
> Toutes les références aux fichiers du corpus utilisent les chemins relatifs depuis la racine du repo `corpus-impulsion/`.
> Ce skill suppose que le corpus impulsion est cloné dans le projet courant.

## Quick Reference

| Command | What it does |
|---------|-------------|
| `/impulsion-audit` | Audit complet multi-plateforme (délègue aux sous-skills en parallèle) |
| `/impulsion-audit-google-ads` | Google Ads deep analysis (Search, PMax, YouTube) - 80 checks |
| `/impulsion-audit-meta-ads` | Meta Ads deep analysis (FB, IG, Advantage+) - 50 checks |
| `/impulsion-audit-tiktok-ads` | TikTok Ads deep analysis (Creative, Shop, Smart+) - 28 checks |
| `/impulsion-audit-creatives` | Cross-platform creative quality audit |
| `/impulsion-audit-landing` | Landing page quality assessment for ad campaigns |
| `/impulsion-audit-budget` | Budget allocation and bidding strategy review |
| `/impulsion-plan-media <business-type>` | Strategic ad plan with industry templates (12 verticals) |

## Context Intake (Required: Always Do This First)

Before any audit or analysis, collect this context. Without it, benchmarks will be generic and recommendations may be wrong for the user's situation.

Ask these questions upfront (combine into one message):

1. **Industry / Business type** : Which best describes you?
   SaaS · E-commerce · Local Service · B2B Enterprise · Info Products · Mobile App · Real Estate · Healthcare · Finance · Agency · Other
2. **Monthly ad spend** : Total budget and per-platform breakdown (approximate is fine)
3. **Primary goal** : Sales / Revenue · Leads / Demos · App Installs · Calls · Brand
4. **Active platforms** : Which platforms are you advertising on?

If the user provides data upfront (e.g. "audit my Google Ads, I spend 5k€/mo on SaaS"), extract context from that and proceed without re-asking.

Use the provided context to:
- Select the correct industry benchmarks from `skills/references/01-strategie/benchmarks/Benchmarks - Repères de performance 2026.md`
- Apply budget-appropriate recommendations (e.g. Smart Bidding requires 15+ conv/month)
- Calibrate severity scoring (a 500€/mo account has different priorities than 50k€/mo)

## Orchestration Logic

When the user invokes `/impulsion-audit`, delegate to subagents in parallel:
1. **Collect context** (see Context Intake above; do this first)
2. Collect account data (exports, screenshots, or pasted metrics)
3. Detect business type and identify active platforms
4. Spawn subagents via Task tool with `context: fork` based on active platforms : impulsion-audit-google-ads, impulsion-audit-meta-ads, impulsion-audit-tiktok-ads, impulsion-audit-creatives
5. **Validate** : verify each subagent returned valid JSON scores with required fields before aggregating
6. Collect results and generate unified report with Ads Health Score (0-100)
7. Create prioritized action plan with Quick Wins

For a single platform, use the dedicated command directly (`/impulsion-audit-google-ads`, `/impulsion-audit-meta-ads`, etc.). Still collect context first if not already provided.

## Industry Detection

Detect business type from ad account signals:
- **SaaS** : trial_start/demo_request events, pricing page targeting, long attribution windows
- **E-commerce** : purchase events, product catalog/feed, Shopping/PMax campaigns
- **Local Service** : call extensions, location targeting, store visits, directions events
- **B2B Enterprise** : ABM lists, high CPA tolerance (50€+), long sales cycle
- **Info Products** : webinar/course funnels, lead gen forms, low-ticket offers
- **Mobile App** : app install campaigns, in-app events, deep linking
- **Real Estate** : listing feeds, property-specific landing pages, geo-heavy targeting
- **Healthcare** : compliance flags, healthcare-specific ad policies
- **Finance** : Special Ad Categories declared, financial products compliance
- **Agency** : multiple client accounts, white-label reporting needs

## Quality Gates

Hard rules (never violate these) :
- Never recommend Broad Match without Smart Bidding (Google)
- 3x Kill Rule : flag any ad group/campaign with CPA >3x target for pause
- Budget sufficiency : Meta ≥5x CPA per ad set, TikTok ≥50x CPA per ad group
- Learning phase : never recommend edits during active learning phase
- Compliance : always check Special Ad Categories for housing/employment/credit/finance
- Creative : never run silent video ads on TikTok (sound-on platform)
- Attribution : default to 7-day click / 1-day view (Meta), data-driven (Google)
- Andromeda creative diversity : Flag Meta accounts with <10 genuinely distinct creatives
- Privacy infrastructure gate : Always verify tracking stack (Consent Mode V2, CAPI, Events API, AdAttributionKit) before making optimization recommendations

## Reference Files (corpus impulsion)

Load these on-demand as needed; do NOT load all at startup. All paths relative to corpus-impulsion/ root.

**Cross-plateforme :**
- `skills/references/01-strategie/audits/Audits - Système de scoring.md` : Weighted scoring algorithm and grading thresholds
- `skills/references/01-strategie/benchmarks/Benchmarks - Repères de performance 2026.md` : Industry benchmarks by platform
- `skills/references/01-strategie/benchmarks/Benchmarks - Budgets minimums viables.md` : Minimum monthly budgets per platform
- `skills/references/01-strategie/encheres/Enchères - Stratégies cross-plateforme.md` : Bidding decision trees
- `skills/references/01-strategie/analyse/Analyse - Méthode allocation et scaling.md` : Platform selection matrix, scaling rules, MER
- `skills/references/01-strategie/specs-creatives/Specs - Spécifications créatives cross-plateforme.md` : Creative specs across platforms
- `skills/references/01-strategie/conformite/Conformité - Suivi cross-plateforme.md` : Pixel, CAPI, EMQ, ttclid implementation
- `skills/references/01-strategie/conformite/Conformité - Politiques publicitaires.md` : Regulatory requirements, ad policies
- `skills/references/01-strategie/conformite/Conformité - Confidentialité et RGPD 2026.md` : Privacy regulations, Consent Mode v2, ATT
- `skills/references/01-strategie/redaction/Rédaction - Méthodes publicitaires.md` : 6 ad copy frameworks
- `skills/references/01-strategie/redaction/Rédaction - Brand DNA template.md` : Brand DNA schema
- `skills/references/01-strategie/redaction/Rédaction - Voix vers style visuel.md` : Voice axes to visual style mapping
- `skills/references/01-strategie/plateformes-secondaires/Plateformes secondaires - Reddit Pinterest Snapchat CTV G2.md` : Secondary platforms

**Par plateforme :**
- `skills/references/03-google-ads/optimisation/Optimisation - [Review] Audit complet 80 checks.md` : Google audit checklist
- `skills/references/03-google-ads/strategie/Strategie - Notes GAQL.md` : GAQL field compatibility, dedup patterns
- `skills/references/03-google-ads/creatives/Creatives - Spécifications créatives Google Ads.md` : PMax/RSA specs
- `skills/references/03-google-ads/video/Video - Spécifications créatives YouTube.md` : YouTube formats and thumbnails
- `skills/references/04-meta-ads/Meta - [Review] Audit complet 50 checks.md` : Meta audit checklist
- `skills/references/04-meta-ads/Creatives - Spécifications créatives Meta Ads.md` : Feed/Reels/Stories specs + safe zones
- `skills/references/05-tiktok-ads/TikTok - [Review] Audit complet 28 checks.md` : TikTok audit checklist
- `skills/references/05-tiktok-ads/creatives/Creatives - Spécifications créatives TikTok Ads.md` : 9:16 only + safe zone

**Industry templates (12 verticals) :**
- `skills/references/01-strategie/verticals/Vertical - SaaS.md`
- `skills/references/01-strategie/verticals/Vertical - E-commerce.md`
- `skills/references/01-strategie/verticals/Vertical - E-commerce Creative.md`
- `skills/references/01-strategie/verticals/Vertical - Service local.md`
- `skills/references/01-strategie/verticals/Vertical - B2B Entreprise.md`
- `skills/references/01-strategie/verticals/Vertical - Infoproduits.md`
- `skills/references/01-strategie/verticals/Vertical - App mobile.md`
- `skills/references/01-strategie/verticals/Vertical - Immobilier.md`
- `skills/references/01-strategie/verticals/Vertical - Sante.md`
- `skills/references/01-strategie/verticals/Vertical - Finance.md`
- `skills/references/01-strategie/verticals/Vertical - Agence.md`
- `skills/references/01-strategie/verticals/Vertical - Generique.md`

## Scoring Methodology

### Ads Health Score (0-100)

Per-platform score using weighted algorithm from `skills/references/01-strategie/audits/Audits - Système de scoring.md`. Cross-platform aggregate weighted by budget share :

```
Aggregate = Sum(Platform_Score x Platform_Budget_Share)
```

### Grading

| Grade | Score | Action Required |
|-------|-------|-----------------|
| A | 90-100 | Minor optimizations only |
| B | 75-89 | Some improvement opportunities |
| C | 60-74 | Notable issues need attention |
| D | 40-59 | Significant problems present |
| F | <40 | Urgent intervention required |

### Priority Levels

- **Critical** : Revenue/data loss risk (fix immediately)
- **High** : Significant performance drag (fix within 7 days)
- **Medium** : Optimization opportunity (fix within 30 days)
- **Low** : Best practice, minor impact (backlog)

## Sub-Skills disponibles

Ce skill orchestre 7 sous-skills :

1. **impulsion-audit-google-ads** : Google Ads deep analysis (Search, PMax, YouTube) - 80 checks
2. **impulsion-audit-meta-ads** : Meta Ads deep analysis (FB, IG, Advantage+) - 50 checks
3. **impulsion-audit-tiktok-ads** : TikTok Ads deep analysis - 28 checks
4. **impulsion-audit-creatives** : Cross-platform creative quality audit
5. **impulsion-audit-landing** : Landing page quality for ad campaigns
6. **impulsion-audit-budget** : Budget allocation and bidding strategy
7. **impulsion-plan-media** : Strategic ad planning with industry templates (12 verticals)
