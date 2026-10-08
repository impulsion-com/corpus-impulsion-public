# Budgets minimums viables par plateforme

> **Plateforme :** Stratégie
> **Catégorie :** Benchmarks
> **Type :** Fiche
> **Mis à jour :** 2026-04-13
> **Source :** [claude-ads](https://github.com/AgriciDaniel/claude-ads) par AgriciDaniel (MIT).

## Objectif

Cette fiche donne les budgets mensuels minimums sous lesquels une plateforme publicitaire ne peut pas bien fonctionner. En dessous, vous payez pour pas grand-chose : les algorithmes n'ont pas assez de signal pour optimiser, les phases d'apprentissage ne se ferment pas, les coûts par conversion explosent.

> ❓ **La question centrale :** Le client a-t-il assez de budget pour que la plateforme livre ?

À utiliser pour :
- Refuser une mission ou prévenir le client quand le budget est trop juste
- Choisir entre plateformes quand le budget est limité
- Dimensionner un test multi-plateforme

---

## Ce que couvre cette fiche / Ce qu'elle ne couvre PAS

**Cette fiche :**

- Donne les seuils minimums par plateforme avec la raison technique
- Couvre Google, Meta, LinkedIn, TikTok, Microsoft
- Indique les seuils de phase d'apprentissage (Smart Bidding, learning phase Meta, etc.)

**Cette fiche ne couvre PAS :**

- Allouer un budget entre plateformes (Voir : [Analyse - Allocation de budget](<../../../../01-strategie/analyse/Analyse - Allocation de budget.md>))
- Calculer un budget cible à partir des unit economics (Voir : [Fondamentaux - Unit economics](<../../../../01-strategie/fondamentaux/Fondamentaux - Unit economics.md>))

---

## Minimum Viable Ad Budgets

| Platform | Minimum Monthly | Rationale |
|----------|----------------|-----------|
| Google Ads | $1,000+ | Need 15+ conversions/month for Smart Bidding |
| Meta Ads | $600-$800 | Need 50 conv/week per ad set for learning |
| LinkedIn Ads | $3,000+ | High CPCs ($5-$35) require scale |
| TikTok Ads | $300+ | Low CPMs but need creative volume |
| Microsoft Ads | 20-30% of Google budget | Proportional to search volume |

## Notes d'application

- **Google Ads** : viser 30+ conversions/mois pour que Target CPA / Target ROAS sortent de la phase d'apprentissage (15 = strict minimum, 30+ = confortable). Si moins, rester sur Maximize Conversions ou Manual CPC.
- **Meta Ads** : 50 conversions/semaine **par ad set** (pas par compte). Si vous splittez trop fin, vous restez en learning phase à vie. Préférez consolidation Advantage+ ou ad sets larges.
- **LinkedIn Ads** : sous $3K/mois, vous testez à peine. Privilégier campagnes très ciblées (Job Title + Company List) plutôt qu'élargir l'audience pour économiser.
- **TikTok Ads** : le minimum est trompeur. Le vrai coût caché c'est la production créative (lifecycle 7-10 jours, donc 4-8 nouvelles créatives/mois minimum).
- **Microsoft Ads** : à activer via import depuis Google Ads, ne pas démarrer from scratch. ROI souvent excellent pour B2B et public 45-64 ans.
