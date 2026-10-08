# KPI Client - [Nom du client]

> **Plateforme :** Meta
> **Catégorie :** KPI
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Modèle à dupliquer et remplir pour chaque client : objectifs chiffrés, segmentation par campagne, seuils d'alerte, et suivi mensuel. À utiliser au démarrage d'une mission ou lors de la définition annuelle des objectifs.

---

## Ce que ce document ne couvre PAS

Ce document ne couvre **pas :**

- Les benchmarks (analyses comparatives) marché par défaut (Voir : [Référence - KPI Meta Ads](<KPI - KPI.md>))
- La méthodologie de revue mensuelle (Voir : [Procédure - Analyser les performances Meta Ads](<../reporting/Reporting - Analyser les performances.md>))
- La structure et la nomenclature des campagnes (Voir : [Guide Meta Ads](<../Guide Meta.md>))

---

## Informations client

| Champ | Valeur |
|-------|--------|
| **Nom du client** | À définir |
| **Secteur** | À définir |
| **Business model** | À définir (e-commerce / lead gen / SaaS / local / autre) |
| **Panier moyen** | À définir |
| **Marge brute** | À définir (en %) |
| **LTV client** | À définir |
| **Pays cible** | À définir |
| **Budget mensuel Meta Ads** | À définir |

---

## Objectifs

| KPI | Objectif client | Benchmark FR (défaut) |
|-----|-----------------|----------------------|
| **CPA / CPL cible** | À définir | 8-15 EUR (lead gen) / 15-30 EUR (e-commerce) |
| **ROAS cible** | À définir | 3-5x (e-commerce) |
| **Breakeven ROAS** | À définir (= 1 / marge brute) | 2.5x (marge 40%) |
| **Volume de leads (prospects)/ventes par mois** | À définir | - |
| **Budget quotidien** | À définir | CPA cible x 50 / 7 |

---

## Seuils de décision (override client)

Ces seuils remplacent les benchmarks par défaut quand ils sont renseignés.

| Décision | Seuil client | Seuil par défaut (FR) |
|----------|-------------|----------------------|
| **Couper une ad (0 conversion)** | À définir | Dépense > 3x CPA cible |
| **Couper une ad (CPA trop élevé)** | À définir | CPA > 2x objectif depuis 5 jours |
| **Scaler le budget** | À définir | CPA < 80% objectif depuis 7 jours |
| **Alerte fatigue créative** | À définir | Fréquence > 3 sur 7 jours |
| **CTR minimum acceptable** | À définir | 0.8% |
| **Hook rate minimum** | À définir | 20% |

---

## Benchmarks créatives (override client)

Si vous avez des données historiques, renseignez-les ici. Sinon, les benchmarks FR par défaut sont utilisés.

| Métrique | Moyenne client | Meilleur résultat | Benchmark FR (défaut) |
|----------|---------------|-------------------|----------------------|
| **Hook Rate** | À définir | À définir | 25-35% |
| **Hold Rate** | À définir | À définir | 35-50% |
| **CTR** | À définir | À définir | 1.0-1.8% |
| **CPC** | À définir | À définir | 0.50-1.00 EUR |
| **CPM** | À définir | À définir | 8-12 EUR |

---

## Historique des performances

Mettez à jour ce tableau chaque mois. Claude Code l'utilise pour détecter les tendances et les anomalies.

| Mois | Dépense | Impressions | Clics | CTR | CPC | Conversions | CPA | ROAS | CPM |
|------|---------|-------------|-------|-----|-----|-------------|-----|------|-----|
| - | - | - | - | - | - | - | - | - | - |
| - | - | - | - | - | - | - | - | - | - |
| - | - | - | - | - | - | - | - | - | - |

---

## Top créatives

Référencez ici les créatives qui ont le mieux performé. Claude Code s'en sert pour recommander des angles similaires.

| Créative | Format | Angle | Hook Rate | CTR | CPA | Période | Notes |
|----------|--------|-------|-----------|-----|-----|---------|-------|
| - | - | - | - | - | - | - | - |
| - | - | - | - | - | - | - | - |

---

## Audiences qui fonctionnent

| Audience | Type | CPA | ROAS | Volume | Notes |
|----------|------|-----|------|--------|-------|
| - | - | - | - | - | - |
| - | - | - | - | - | - |

---

## Notes et contexte

Ajoutez ici toute information contextuelle utile pour Claude Code :
- Saisonnalité spécifique au client
- Contraintes (pas de vidéo, pas de témoignages, etc.)
- Historique des problèmes rencontrés
- Particularités de la Landing Page
- Process de validation des leads côté client

```
À compléter par l'utilisateur
```
