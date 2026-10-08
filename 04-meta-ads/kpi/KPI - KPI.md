# KPI Meta Ads

> **Plateforme :** Meta
> **Catégorie :** KPI
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Ce document fournit les benchmarks (analyses comparatives) chiffrés Meta Ads pour le marché français en 2025-2026 (CPM, CTR, CPC, CPL, CPA, ROAS) selon l'objectif de campagne (lead gen, e-commerce, notoriété). À utiliser comme repère pour calibrer les seuils de décision et les attentes client.

---

## Ce que ce document ne couvre PAS

Ce document ne couvre **pas :**

- Le calcul du Breakeven ROAS et la définition d'objectifs spécifiques à un client (Voir : [KPI Client - Template](<KPI - Modèle KPI.md>))
- L'analyse opérationnelle des performances (Voir : [Procédure - Analyser les performances Meta Ads](<../reporting/Reporting - Analyser les performances.md>))
- Les actions correctives quand un KPI est hors seuil (Voir : [Procédure - Optimisation Meta Ads](<../optimisation/Optimisation - Optimiser les performances.md>))
- Les benchmarks d'autres plateformes (Voir : `03-google-ads/` ou `05-tiktok-ads/`)

---

## Benchmarks France par objectif

### Lead Generation

| Métrique | Bas de fourchette | Médiane | Haut de fourchette | Notes |
|----------|-------------------|---------|---------------------|-------|
| **CPM** | 5 EUR | 8-12 EUR | 20 EUR | Varie fortement selon la saisonnalité |
| **CTR** | 0.8% | 1.2-1.8% | 3%+ | CTR link click (pas all clicks) |
| **CPC** | 0.30 EUR | 0.50-1.00 EUR | 2.00 EUR | Dépend du CTR et du CPM |
| **CPL (coût par lead)** | 3 EUR | 8-15 EUR | 40 EUR | Très variable selon le secteur et la qualité du lead (prospect) |
| **Taux de conversion LP** | 5% | 10-20% | 40%+ | Formulaire simple = taux plus élevé |

### E-commerce

| Métrique | Bas de fourchette | Médiane | Haut de fourchette | Notes |
|----------|-------------------|---------|---------------------|-------|
| **CPM** | 5 EUR | 10-15 EUR | 25 EUR | Q4 (Black Friday, Noël) = CPM x 1.5-2 |
| **CTR** | 0.5% | 1.0-1.5% | 2.5%+ | E-commerce souvent plus bas que lead gen |
| **CPC** | 0.30 EUR | 0.60-1.20 EUR | 2.50 EUR | |
| **CPA (coût par achat)** | 5 EUR | 15-30 EUR | 60 EUR+ | Dépend du panier moyen |
| **ROAS** | 1.5x | 3-5x | 10x+ | Breakeven ROAS = 1 / marge brute |
| **Taux de conversion site** | 1% | 2-3% | 5%+ | Mobile souvent 30-50% plus bas que desktop |

### Notoriété / Vidéo

| Métrique | Bas de fourchette | Médiane | Haut de fourchette | Notes |
|----------|-------------------|---------|---------------------|-------|
| **CPM** | 3 EUR | 5-8 EUR | 15 EUR | Objectif couverture = CPM plus bas |
| **Coût par ThruPlay** | 0.01 EUR | 0.02-0.05 EUR | 0.10 EUR | ThruPlay = 15s ou fin de vidéo |
| **Taux de vue 25%** | 20% | 30-40% | 60%+ | |
| **Taux de vue 50%** | 10% | 20-30% | 45%+ | |
| **Taux de vue 100%** | 3% | 8-15% | 25%+ | |

---

## Benchmarks par secteur (France)

| Secteur | CPL moyen | CPA moyen | CTR moyen | CPM moyen |
|---------|-----------|-----------|-----------|-----------|
| **E-commerce mode** | - | 15-25 EUR | 1.0-1.5% | 10-18 EUR |
| **E-commerce beauté** | - | 12-20 EUR | 1.2-1.8% | 8-15 EUR |
| **E-commerce alimentaire** | - | 8-15 EUR | 1.5-2.0% | 6-12 EUR |
| **SaaS / Tech** | 15-40 EUR | - | 0.8-1.2% | 12-22 EUR |
| **Immobilier** | 10-30 EUR | - | 0.8-1.5% | 8-15 EUR |
| **Formation / Coaching** | 5-20 EUR | - | 1.0-2.0% | 6-12 EUR |
| **Restaurant / Local** | 2-8 EUR | - | 1.5-2.5% | 4-8 EUR |
| **Santé / Bien-être** | 8-25 EUR | - | 1.0-1.8% | 8-14 EUR |
| **Finance / Assurance** | 20-60 EUR | - | 0.6-1.2% | 15-30 EUR |
| **Artisan / BTP** | 5-15 EUR | - | 1.2-2.0% | 5-10 EUR |

> Ces benchmarks sont des moyennes indicatives. Les performances réelles dépendent de la qualité des créatives, de la Landing Page, de l'offre et de la saisonnalité.

---

## Seuils de décision

### Quand une ad est gagnante

| Critère | Seuil minimum |
|---------|---------------|
| Dépense | > 2x CPA cible |
| CPA | < CPA cible |
| CTR | > médiane secteur |
| Conversions | > 5 (significativité statistique minimale) |

### Quand couper une ad

| Critère | Seuil |
|---------|-------|
| Dépense > 3x CPA cible, 0 conversion | Couper immédiatement |
| CPA > 2x objectif depuis 5+ jours | Couper |
| CTR < 0.5% après 1000+ impressions (ou ~200 EUR dépensés sur Feed) | Couper (le créatif ne résonne pas) |
| Fréquence > 3,5 (prospection froide) / > 7 (retargeting, reciblage) sur 7 jours | Renouveler la créa ; couper si aucune amélioration (> 10 en retargeting) |

### Quand scaler

| Critère | Seuil |
|---------|-------|
| CPA < 80% de l'objectif depuis 7+ jours | Scaler (+20% budget) |
| ROAS > 120% de l'objectif depuis 7+ jours | Scaler (+20% budget) |
| Fréquence < 2 sur 7 jours | Marge pour scaler |
| Phase d'apprentissage terminée | Prérequis obligatoire |

---

## Métriques créatives - Seuils

| Métrique | Mauvais | Correct | Bon | Excellent |
|----------|---------|---------|-----|-----------|
| **Hook Rate** (3s views / impressions) | < 15% | 15-25% | 25-35% | > 35% |
| **Hold Rate** (ThruPlay / 3s views) | < 20% | 20-35% | 35-50% | > 50% |
| **CTR** (link clicks / impressions) | < 0.5% | 0.5-1.0% | 1.0-2.0% | > 2.0% |
| **Taux d'engagement** | < 1% | 1-3% | 3-5% | > 5% |
| **Score de pertinence** (Quality Ranking) | Below Average | Average | Above Average | - |

---

## Saisonnalité France

| Période | Impact CPM | Impact concurrence | Notes |
|---------|------------|-------------------|-------|
| **Janvier** | Bas (-20%) | Faible | Bonnes résolutions, post-fêtes. Bon moment pour tester |
| **Février-Mars** | Normal | Normal | Stable |
| **Avril-Mai** | Normal | Normal | Fête des mères = pic e-commerce |
| **Juin** | Normal à élevé | Soldes d'été | Soldes = compétition accrue |
| **Juillet-Août** | Bas (-15%) | Faible | Vacances, moins d'annonceurs. Bon pour prospecter |
| **Septembre** | Hausse progressive | Rentrée | Rentrée = reprise d'activité pour beaucoup de secteurs |
| **Octobre** | Élevé (+20%) | Fort | Pré-Q4, anticipation Black Friday |
| **Novembre** | Très élevé (+50-80%) | Très fort | Black Friday, Singles Day. CPM au plus haut |
| **Décembre** | Très élevé (+40-60%) | Très fort | Noël. Baisse après le 20/12 |

---

## Formules utiles

| Formule | Calcul |
|---------|--------|
| **CPA** | Dépense totale / Nombre de conversions |
| **ROAS** | Chiffre d'affaires / Dépense publicitaire |
| **Breakeven ROAS** | 1 / Marge brute (ex: marge 40% = breakeven ROAS de 2.5x) |
| **CTR** | Clics sur lien / Impressions x 100 |
| **CPC** | Dépense totale / Clics sur lien |
| **CPM** | (Dépense totale / Impressions) x 1000 |
| **Hook Rate** | Vues de 3s / Impressions x 100 |
| **Hold Rate** | ThruPlay / Vues de 3s x 100 |
| **Fréquence** | Impressions / Couverture |
| **Budget quotidien minimum** | CPA cible x 50 / 7 (pour 50 conversions/semaine) |
