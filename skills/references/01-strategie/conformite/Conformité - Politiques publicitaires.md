# Politiques publicitaires par plateforme

> **Plateforme :** Stratégie
> **Catégorie :** Conformité
> **Type :** Fiche
> **Mis à jour :** 2026-04-13
> **Source :** [claude-ads](https://github.com/AgriciDaniel/claude-ads) par AgriciDaniel (MIT). Contenu original en anglais conservé.

## Objectif

Cette fiche récapitule les politiques publicitaires par plateforme : contenus interdits, catégories restreintes nécessitant certification, raisons fréquentes de refus d'annonces, et systèmes de sanctions (three-strike Google, special ad categories Meta, etc.).

> ❓ **La question centrale :** L'annonceur peut-il diffuser cette pub sans risque de suspension ?

À utiliser pour :
- Vérifier qu'un client dans une industrie sensible (santé, finance, gambling) peut être servi
- Diagnostiquer un refus d'annonces récurrent
- Anticiper les certifications nécessaires avant lancement

---

## Ce que couvre cette fiche / Ce qu'elle ne couvre PAS

**Cette fiche :**

- Couvre Google, Meta, LinkedIn, TikTok, Microsoft
- Liste les contenus prohibés et les catégories restreintes par plateforme
- Détaille le système de sanctions Google (three-strike) et les Special Ad Categories Meta
- Identifie les recommandations Google à accepter / rejeter

**Cette fiche ne couvre PAS :**

- La conformité RGPD/CCPA et le tracking (suivi des conversions/évènements) (Voir : [Compliance - Privacy et RGPD 2026](<Conformité - Confidentialité et RGPD 2026.md>))
- Résoudre un refus d'annonces concret (Voir : [Strategie - Résoudre les refus d'annonces](<../../../../03-google-ads/strategie/Strategie - Résoudre les refus d'annonces.md>))

---

## Advertising Compliance

<!-- Updated: 2026-04-13 | v1.5 -->

## Google Ads Policies

### Enforcement System: Three-Strike Policy
| Strike | Consequence | Duration |
|--------|------------|----------|
| Strike 1 | 90-day probation | Warning period |
| Strike 2 | 90-day restriction | Limited functionality |
| Strike 3 | Permanent suspension | Account terminated |

### Prohibited Content (Immediate Disapproval)
- Counterfeit goods
- Dangerous products or services
- Dishonest behavior enablement
- Inappropriate content (hate speech, violence, shocking content)

### Restricted Categories (Certification Required)
| Category | Requirement |
|----------|-------------|
| Online pharmacies | Google certification + LegitScript |
| Telemedicine | Platform certification |
| Health insurance | Certification in applicable regions |
| Gambling | State/country-specific licensing |
| Political ads | Identity verification + disclosures |
| Cryptocurrency | Certification required |
| Financial services | Clear APR/fee/terms disclosures |
| Alcohol | Age-gating + regional restrictions |
| Adult content | Age restriction + limited placements |

### Common Disapprovals
- Misleading claims (superlatives without evidence)
- Missing landing page content (404s, under construction)
- Destination mismatch (ad promise ≠ landing page)
- Prohibited content in ad text
- Trademark infringement
- Restricted healthcare claims

### Recommendations Tab: What to Accept/Reject

**Safe to accept:**
- Optimized ad rotation
- Relevant extensions
- Fix disapproved ads

**Usually reject:**
- "Raise your budget"
- "Add broad match keywords"
- "Add new keywords" (auto-suggested)
- Auto-created RSAs
- Bidding strategy switches
- Turn off Optimization Score auto-apply

---

## Meta Ads Policies

### Special Ad Categories (Restricted Targeting)
| Category | Restrictions |
|----------|-------------|
| Housing | No ZIP code, age must be 18-65+, no lookalike |
| Employment | Same restrictions as Housing |
| Credit | Same restrictions as Housing |
| **Financial Products** | **New Jan 2025**, enforced as Special Category |

All Special Ad Categories:
- Cannot target by age (18-65+ only range)
- Cannot target by ZIP code / postal code
- Cannot use Lookalike Audiences
- Must declare category before campaign creation

### Enforcement Scale
- Over 1.3 billion ads rejected or removed in 2024
- Account restrictions escalate with repeated violations
- Appeal process available but slow

### Detailed Targeting Exclusions (Removed)
- Removed from new ad sets: March 31, 2025
- Removed from boosted posts: June 10, 2025
- Existing campaigns with old exclusions stopped: January 15, 2026
- Meta cites 22.6% lower median cost per conversion without exclusions

### Content Rules
- No misleading health/weight loss claims
- Before/after images: heavily restricted
- Cryptocurrency: certification required
- Political ads: "Paid for by" disclosure required
- Personal attributes: cannot imply user has specific condition
- Sensational content: no clickbait tactics

---

## LinkedIn Ads Policies

### Restricted Industries
- Gambling and betting
- Tobacco and related products
- Weapons and ammunition
- Adult content
- Multi-level marketing
- Cryptocurrency (restricted, not prohibited)

### Professional Standards
- B2B focus expected; casual/misleading content penalized
- Thought Leader Ads must come from genuine employees
- Lead Gen Forms must have clear privacy policy
- Job postings must comply with employment laws

---

## TikTok Ads Policies

### Platform Requirements
- Content must feel native (not overly polished/corporate)
- Audio required (TikTok is sound-on)
- Must comply with music licensing for commercial use
- Creator content (Spark Ads) requires creator approval

### Restricted Categories
- Age-restricted products (alcohol, gambling): geo-gated
- Health claims: evidence required
- Financial products: risk disclosures required
- Political ads: banned in many markets

### TikTok Shop Policies
- Products must meet marketplace standards
- No counterfeit or restricted goods
- Seller verification required
- Available in 11 countries (US, UK, key Asian/European markets)

---

## Microsoft Ads Policies

### Import Considerations
- Google Ads policy approvals don't transfer
- Microsoft has separate review process
- Some Google-approved ads may be disapproved on Microsoft
- Bing audience skews older/more conservative; creative should match

### Copilot Placement Policies
- Ads in Copilot must be clearly labeled
- Copilot Checkout (Jan 2026): commerce within conversations
- Higher quality standards for conversational context

---

## Healthcare-Specific Compliance

| Rule | Enforcement |
|------|-------------|
| No remarketing/retargeting for health services | Google policy: account suspension risk |
| No targeting by health conditions | Google, Meta, all platforms |
| Online pharmacy certification | Google: LegitScript required |
| Telemedicine certification | Google: platform certification |
| HIPAA considerations | US: no PHI in tracking pixels |
| Use contextual targeting | Instead of audience targeting |

## Financial Services Compliance

| Rule | Enforcement |
|------|-------------|
| Clear APR/fee/terms disclosures | Google, Meta: ad disapproval |
| Lending certification | Google: account level |
| Crypto certification | Google: account level |
| Risk disclosures | All platforms |
| Financial Products Special Category | Meta (Jan 2025): restricted targeting |
| No misleading income claims | All platforms: account suspension |

---

## 2025-2026 Platform Changes (compliance impact)

- **Google ECPC**: Fully deprecated March 2025. Auto-migrated to Manual CPC. Migrate to Target CPA / Maximize Conversions.
- **Google rule-based attribution**: First click, linear, time decay, position-based all removed. Auto-upgraded to Data-Driven Attribution.
- **Google call-only ads**: No new creation Feb 2026. Stop serving Feb 2027. Migrate to call assets within RSAs.
- **Meta Link Clicks**: Redefined Feb 2025. Excludes social engagement clicks. Use "outbound clicks" or "landing page views" for continuity.
- **Meta Shops Native Checkout**: Phased out June-August 2025. All checkout flows redirect to advertiser site.
- **Apple Search Ads**: Renamed "Apple Ads" April 2025. Reflects expanded inventory beyond App Store search.
- **LinkedIn Message/Conversation Ads**: Cannot be delivered to EU members since January 2022. Use Sponsored Content or Lead Gen Forms.
- **Microsoft Consent Mode**: Required for all campaigns targeting EEA/UK/Switzerland since May 5, 2025.
