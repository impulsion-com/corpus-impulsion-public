# Confidentialité, RGPD et tracking 2026

> **Plateforme :** Stratégie
> **Catégorie :** Conformité
> **Type :** Fiche
> **Mis à jour :** 2026-04-13
> **Source :** [claude-ads](https://github.com/AgriciDaniel/claude-ads) par AgriciDaniel (MIT). Contenu original en anglais conservé.

## Objectif

Cette fiche couvre l'état du paysage de la confidentialité publicitaire en 2026 : RGPD/UK GDPR/CCPA, Consent Mode v2 obligatoire en Europe, iOS ATT, mort de Privacy Sandbox, server-side tracking (suivi des conversions/évènements) devenu architecturalement nécessaire, et les nouvelles lois US par état.

> ❓ **La question centrale :** Comment configurer le tracking d'un compte pub en restant conforme et en récupérant un maximum de signal ?

À utiliser pour :
- Diagnostiquer une chute de conversions liée au consentement
- Décider quelles régulations s'appliquent à un client donné
- Justifier le passage en server-side tagging

---

## Ce que couvre cette fiche / Ce qu'elle ne couvre PAS

**Cette fiche :**

- Liste les régulations actives en 2026 (RGPD, UK GDPR, CCPA/CPRA, 20 lois US, LGPD, PIPL)
- Détaille Consent Mode v2 (obligatoire EU/EEA depuis juillet 2025)
- Couvre iOS ATT, état du Privacy Sandbox, taux d'opt-in moyens
- Fournit un decision tree par région
- Inclut les dates clés 2025-2026

**Cette fiche ne couvre PAS :**

- Configurer Consent Mode dans Google Ads (Voir : [Tracking - Configurer Google Consent Mode](<../../../../03-google-ads/suivi/Suivi - Configurer Google Consent Mode.md>))
- Implémenter le server-side tagging (Voir : [Tracking - Implémenter le Server-Side Tagging](<../../../../03-google-ads/suivi/Suivi - Implémenter le Server-Side Tagging.md>))
- Les politiques de contenu publicitaire (Voir : [Compliance - Politiques publicitaires](<Conformité - Politiques publicitaires.md>))

---

## Privacy Regulations (February 2026)

### Global Privacy Landscape

| Regulation | Region | Status | Key Requirement |
|-----------|--------|--------|-----------------|
| GDPR | EU/EEA | Active | Consent before tracking; data minimization |
| UK GDPR | UK | Active | Similar to EU GDPR |
| CCPA/CPRA | California | Active | Right to opt out; mandatory audits |
| 20 State Laws | US (various) | Active Jan 2026 | Indiana, Kentucky, Rhode Island newest |
| LGPD | Brazil | Active | Consent and transparency |
| PIPL | China | Active | Consent and data localization |

### Key Privacy Facts (2026)

**Privacy Sandbox is DEAD:**
- Google officially retired October 2025
- Third-party cookies remain in Chrome (~67% browser share)
- Safari and Firefox already block third-party cookies
- No separate consent prompt coming

**iOS App Tracking Transparency (ATT):**
- Average opt-in rate: ~35% (Q2 2025, up from 29% in 2022)
- Gaming highest: 37-50%
- Education lowest: 7-14%
- Apps with <30% opt-in lose 58% of ad revenue on average

**Consent Mode v2 (Mandatory for EU/EEA):**
- Enforcement tightened July 2025
- Without: 90-95% metric drops
- Advanced mode recovers 30-50% of lost conversions
- ~31% of users globally accept tracking cookies

**US State Privacy:**
- 20 state laws active by January 2026
- Texas AG: $1.4 billion settlement for tracking violations
- California CPPA: mandatory cybersecurity audits + data processing risk assessments
- Server-side tracking now architecturally necessary for compliance

### Compliance Decision Tree

```
IF serving_region INCLUDES "EU/EEA":
  → Consent Mode v2 = MANDATORY
  → Cookie consent banner = MANDATORY
  → Data Processing Agreement = MANDATORY
  → Enhanced Conversions with consent = RECOMMENDED

IF serving_region INCLUDES "California":
  → CCPA/CPRA compliance = MANDATORY
  → "Do Not Sell" link = MANDATORY
  → Data processing risk assessment = MANDATORY (2026)

IF serving_region INCLUDES any US state:
  → Check specific state law requirements
  → 20 states have active laws as of Jan 2026

FOR ALL REGIONS:
  → Server-side tracking = RECOMMENDED (bypasses most client-side issues)
  → First-party data strategy = ESSENTIAL
  → Privacy policy on landing pages = MANDATORY
```

### Microsoft Consent Mode Deadline

- **May 5, 2025**: Consent Mode required for all campaigns targeting EEA, UK, and Switzerland
- Without implementation, conversion tracking in these regions will be severely degraded
