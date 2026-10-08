# Revue de performance hebdomadaire

> **Plateforme :** Stratégie
> **Catégorie :** Reporting
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Cette SOP vous guide via une performance review that identifies issues, surfaces opportunities, and generates prioritized action items.

> ❓ **La question clé :** What changed this week, why did it change, and what should I do about it?

Revue hebdomadaires prevent small issues from becoming big problems. A consistent review cadence catches trends early and keeps optimization momentum.

---

## Ce que cette SOP ne couvre PAS

Cette SOP ne couvre **pas :**

- Explain reporting strategy (Voir : [Reporting Mental Model](<Reporting - Reporting.md>))
- Provide deep diagnostic analysis (trigger diagnostic SOPs as needed)
- Replace monthly or quarterly business reviews

## Quand utiliser cette SOP

Exécutez cette SOP :

- Every week on the same day (Monday or Tuesday recommended)
- Après significant events (campaign launches, budget changes)
- When stakeholders request performance updates

### Review cadence by conversion volume

Revue hebdomadaires assume sufficient data. Adjust cadence based on monthly conversion volume:

| Mensuelle conversions | Recommended cadence | Rationale |
|---------------------|---------------------|-----------|
| 200+ | Hebdomadaire | Sufficient data for weekly signals |
| 50-200 | Bi-weekly | Hebdomadaire data too noisy for reliable trends |
| <50 | Mensuelle | Need aggregation for statistical validity |

> ⚠️ **Low-volume accounts:** If you're running weekly reviews on <50 conversions/month, you're likely reacting to noise. Extend your review window or wait for more data.

---

## Avant de commencer

### Understanding your data limitations

Before diving into numbers, acknowledge the constraints of weekly data:

| Limitation | What it means | How to account for it |
|------------|---------------|----------------------|
| **Conversion lag** | Conversions take time to report. A click today may not convert for days or weeks. Recent data always looks worse than reality. | Use "Conversions (by conv. time)" for recent periods. Wait for your typical lag window before concluding. |
| **Conversion cycles** | Lead Gen/SaaS: sales cycles can be 30-90+ days. Hebdomadaire data only shows early funnel activity (leads, MQLs), not true business outcomes (closed deals, revenue). | Don't judge downstream metrics weekly. Track leading indicators and validate against monthly/quarterly business data. |
| **Statistical noise** | Hebdomadaire samples are small. A 20% swing in CPA might be normal variance, not a real trend. | Wait 2+ weeks of consistent movement before concluding a trend exists. Single-week changes are signals, not verdicts. |
| **Attribution delays** | Cross-device, cross-session, and view-through conversions may take days to attribute correctly. | Don't make decisions on data less than 3-7 days old. |

> 💡 **The 2-week rule:** Never make major changes based on a single week's data. If something looks bad this week, flag it. If it's still bad next week, investigate. If it persists a third week, act.

### Prérequis

- Dashboard with configured views in Google Ads
- Accès au compte Google Ads
- Last week's review notes (for continuity)
- Target KPIs documented

### Documents de référence (à garder ouverts)

| Document | Utilisé pour |
|----------|----------|
| [Reporting Mental Model](<Reporting - Reporting.md>) | Analysis framework |
| [Google Ads Metrics Reference](<../../03-google-ads/optimisation/Optimisation - Alertes et règles Google Ads.md>) | Metric interpretation |
| Previous week's review | Continuity check |

### Temps estimé

| Section | Temps |
|---------|------|
| Performance check | 5 min |
| Trend analysis | 5 min |
| Issue investigation | 10 min |
| Action items | 5 min |
| Documentation | 5 min |
| **Total** | **30 min** |

> ⚠️ **Time-box your review:** Unlimited data creates unlimited analysis. Stick to 30 minutes for the standard review. Speed up your performance review by having AI do the analysis for you while you're making your morning espresso 😉

---

## Cadre d'exécution

| Phase | Objectif | Résultat |
|-------|---------|--------|
| **Phase 1️⃣: Performance check** | Compare to targets | Status assessment |
| **Phase 2️⃣: Trend analysis** | Identify momentum shifts | Trend flags |
| **Phase 3️⃣: Issue investigation** | Diagnose top issue | Root cause |
| **Phase 4️⃣: Action items** | Prioritize next steps | Action list |

---

## Phase 1️⃣: Vérification de performance (5 min)

### 1.1 Charger la vue stratégique

1. Open Google Ads
2. Select your Strategic View
3. Set date range to your review period (7 days for weekly, 14 days for bi-weekly, 30 days for monthly)
4. Enable comparison to previous 7 days

### 1.2 Vérifier les KPI principaux

> 💡 **Use "Conv. by time" for accuracy:** For faster insights on recent performance, segment by "Conversions (by conv. time)" instead of default reporting. This shows when conversions actually happened rather than when they were attributed, giving a more accurate picture of recent trends.

For each primary KPI, assess status:

| Example KPI | vs. Target | vs. Last Period | Status |
|-----|------------|---------------|--------|
| Conversions | ___ | ___% | 🟢🟡🔴 |
| CPA / ROAS | ___ | ___% | 🟢🟡🔴 |
| Spend | ___ | ___% | 🟢🟡🔴 |
| Conv. value | ___ | ___% | 🟢🟡🔴 |

**Status key:**

| Status | Meaning |
|--------|---------|
| 🟢 Green | On or above target |
| 🟡 Yellow | Within 10% of target |
| 🔴 Red | More than 10% below target |

### 1.3 Vérifier les KPI garde-fous

For secondary/guardrail KPIs:

| KPI | Threshold | Actual | Breach? |
|-----|-----------|--------|---------|
| Min. ROAS | ___ | ___ | Yes/No |
| Max. CPA | ___ | ___ | Yes/No |
| Min. volume | ___ | ___ | Yes/No |

> ⚠️ **Guardrail breaches are urgent:** If a guardrail is breached, prioritize investigation in Phase 3.

---

## Phase 2️⃣: Analyse des tendances (5 min)

### 2.1 Vérifier les tendances multi-périodes

Expand date range to cover 4 review periods (28 days for weekly, 8 weeks for bi-weekly, 4 months for monthly). Look for:

| Metric | Trend direction | Consecutive weeks |
|--------|-----------------|-------------------|
| CPA | Rising ↑ / Flat → / Falling ↓ | ___ weeks |
| CVR | Rising ↑ / Flat → / Falling ↓ | ___ weeks |
| CTR | Rising ↑ / Flat → / Falling ↓ | ___ weeks |
| Impression share | Rising ↑ / Flat → / Falling ↓ | ___ weeks |

### 2.2 Identifier les signaux de tendance

| Flag if... | Signal |
|------------|--------|
| CPA rising for 3+ weeks | Efficiency degradation |
| CVR declining for 2+ weeks | Funnel issue |
| CTR declining for 2+ weeks | Relevance issue |
| Impression share dropping for 2+ weeks | Competitive issue |

### 2.3 Note significant changes

Record any week-over-week changes exceeding ±15%:

| Metric | Change | Possible cause |
|--------|--------|----------------|
| ___ | ___% | ___ |
| ___ | ___% | ___ |

---

## Phase 3️⃣: Investigation du problème (10 min)

### 3.1 Sélectionner un problème à investiguer

Based on Phase 1 and 2, select the highest-priority issue:

| Priority | Issue type |
|----------|-----------|
| 1 | Guardrail breach |
| 2 | Primary KPI red status |
| 3 | Negative trend (3+ weeks) |
| 4 | Large week-over-week change |

**Cette semaine's investigation focus:** _______________

### 3.2 Appliquer la méthode de diagnostic

Use the metric tree to trace upstream. Start at your goal metric and walk up each branch asking "why?"

**Ecommerce Metric Tree (quick reference):**

```
ROAS
├── Conversion Value
│   ├── Conversions
│   │   ├── Clicks
│   │   │   ├── Impressions
│   │   │   │   ├── Search Volume
│   │   │   │   └── Impression Share
│   │   │   │       ├── Lost IS (Budget)
│   │   │   │       └── Lost IS (Rank)
│   │   │   └── CTR
│   │   └── Conversion Rate
│   └── AOV
└── Cost
    ├── Clicks
    └── CPC
```

**Quick diagnosis:**

| If this dropped... | Check these upstream |
|-------------------|---------------------|
| ROAS | Conv. Value vs. Cost: which moved more? |
| Conv. Value | Conversions down or AOV down? |
| Conversions | Clicks down or CVR down? |
| Clicks | Impressions down or CTR down? |
| Impressions | Search volume or Impression Share? |

> ↪️ **Full analysis framework:** Voir : [Metric Tree Reference](<../../03-google-ads/strategie/Strategie - Arbre de métriques.md>) for Lead Gen trees, the math, and common patterns.

### 3.3 Analyse par segment

Check the issue by key dimensions:

| Dimension | Finding |
|-----------|---------|
| Campaign | ___ |
| Device | ___ |
| Location | ___ |
| Day of week | ___ |
| Audience | ___ |

### 3.4 Déterminer la cause racine

| Root cause hypothesis | Evidence |
|----------------------|----------|
| ___ | ___ |

### 3.5 Identifier la correction

| Fix type | Action |
|----------|--------|
| Quick fix (do now) | ___ |
| Requires investigation | ___ |
| Requires test | ___ |
| Monitor | ___ |
| Escalate | ___ |

---

## Phase 4️⃣: Actions à mener (5 min)

### 4.1 Prioriser les actions

From this review, list action items by priority:

| Priority | Action | Owner | Due |
|----------|--------|-------|-----|
| P1 (Cette semaine) | ___ | ___ | ___ |
| P2 (Next week) | ___ | ___ | ___ |
| P3 (Backlog) | ___ | ___ | ___ |

### 4.2 Carry forward items

Examiner last week's action items:

| Action | Status | Notes |
|--------|--------|-------|
| ___ | Done / In progress / Blocked | ___ |

### 4.3 Mettre à jour le backlog d'optimisation

Add any new items discovered to your optimization backlog.

---

## Documentation Template

Use this template to document each review:

```
Performance Review
==================
Account: [Name]
Period ending: [Date]
Cadence: Hebdomadaire / Bi-weekly / Mensuel
Reviewer: [Name]

PERFORMANCE SUMMARY
-------------------
Overall status: 🟢🟡🔴

Primary KPIs:
- Conversions: [value] ([%] vs target, [%] vs LP)
- CPA/ROAS: [value] ([%] vs target, [%] vs LP)
- Spend: [value] ([%] vs budget)
- Conv. value: [value] ([%] vs LP)

Guardrails: All clear / [Breach details]

TRENDS
------
Notable trends:
- [Metric]: [Direction] for [X] periods

Flags:
- [Any trend flags]

INVESTIGATION
-------------
Focus: [Issue investigated]
Root cause: [Finding]
Evidence: [Data points]

ACTION ITEMS
------------
P1: [Action] - [Owner] - [Due]
P2: [Action] - [Owner] - [Due]
P3: [Action] - [Owner] - [Due]

CARRIED FORWARD
---------------
- [Previous action]: [Status]

NOTES
-----
[Any additional observations]
```

---

## Validation et critères de complétion

Cette SOP est terminée quand :

- [ ] Primary KPIs checked vs. target and previous period
- [ ] Guardrail KPIs checked for breaches
- [ ] 4-week trends reviewed
- [ ] One issue investigated to root cause
- [ ] Action items prioritized and assigned
- [ ] Review documented
- [ ] Time stayed within 30-minute budget

---

## Passerelle de sortie

Après weekly review:

| Délai | Action |
|-----------|--------|
| Le jour même | Execute P1 actions |
| Cette semaine | Complete P1 actions, start P2 |
| Next review | Check P1/P2 completion, review new data |

**If issues require deeper analysis:**

| Problème | Rediriger vers |
|-------|----------|
| Conversion rate problem | Landing page analysis |
| Niveau de qualité issues | [SOP - Improve Niveau de qualité](<../../03-google-ads/search/Search - Améliorer le Niveau de qualité.md>) |
| Bid strategy questions | [SOP - Executer une experimentation de campagne](<../../03-google-ads/strategie/Strategie - Lancer une expérience de campagne.md>) |
| Budget allocation | Budget reallocation analysis |

---

## Référence rapide : bibliothèque support

| Document | Type | Utilisé dans |
|----------|------|---------|
| [Reporting Mental Model](<Reporting - Reporting.md>) | Mental Model | Toutes les phases |
| [Google Ads Metrics Reference](<../../03-google-ads/optimisation/Optimisation - Alertes et règles Google Ads.md>) | Reference | Phase 3 |
| [Metric Tree Reference](<../../03-google-ads/strategie/Strategie - Arbre de métriques.md>) | Reference | Phase 3 (root cause analysis) |

---

## Procédures liées

| SOP | Relation |
|-----|--------------|
| [SOP - Executer une experimentation de campagne](<../../03-google-ads/strategie/Strategie - Lancer une expérience de campagne.md>) | Aval (if test needed) |

---

## Erreurs fréquentes

| Erreur | Pourquoi ça arrive | Comment l'éviter |
|---------|----------------|--------------|
| Review takes too long | No time limit | Strict 30-minute cap |
| No action items | Analysis without decisions | Force at least one P1 action |
| Same issues every week | Actions not completed | Track completion, escalate |
| Investigating too many issues | Trying to solve everything | Pick ONE issue per review |
| No documentation | Seems unnecessary | Creates continuity, catches patterns |
| Overreacting to single-week changes | Hebdomadaire data has high variance | Wait 2+ weeks to confirm trend before major changes |
| Ignoring conversion lag | Recent data looks worse than reality | Use "conv. by time" columns, wait for lag window |
| Revue hebdomadaires on low-volume accounts | Insufficient data for signal | Switch to bi-weekly or monthly cadence |

---

## Détails de version

- **Changelog:** v3.0: Renamed from "Run a Performance Review" to "Run a Hebdomadaire Performance Review" for cadence clarity.

