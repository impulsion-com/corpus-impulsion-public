# Les 5 typologies de campagne Meta Ads

> **Plateforme :** Meta
> **Catégorie :** Lancement
> **Type :** Fiche
> **Mis à jour :** 2026-07-09

## Objectif

Cette fiche est une **carte de décision** : elle classe les campagnes Meta Ads en 5 typologies selon la façon dont le prospect convertit (prospect, rendez-vous, achat, formulaire natif, appel). Pour chaque typologie : l'objectif Meta, l'événement d'optimisation, le repère de coût et les spécificités. Elle sert à choisir la bonne configuration **avant** de suivre la SOP de lancement.

> ❓ **La question clé :** Quelle typologie de campagne correspond au mode de conversion de mon client, et comment la configurer ?

---

## Ce que cette fiche ne couvre PAS

Cette fiche ne couvre **pas :**

- Le lancement pas-à-pas d'une campagne (Voir : [Procédure - Lancer une campagne Meta Ads](<Lancement - Lancer une campagne.md>))
- Le détail du formulaire instantané (Voir : [Procédure - Formulaire instantané (Lead Ads)](<Lancement - Formulaire instantané (Lead Ads).md>))
- Le détail des campagnes d'appels (Voir : [Procédure - Campagnes d'appels (Call Ads)](<Lancement - Campagnes d'appels (Call Ads).md>))
- Les benchmarks (analyses comparatives) chiffrés (Voir : [Référence - KPI Meta Ads](<../kpi/KPI - KPI.md>))

---

## Vue d'ensemble

| # | Typologie | Objectif Meta | Événement d'optimisation | Repère de coût | Point de conversion |
|---|-----------|---------------|--------------------------|----------------|---------------------|
| 1 | **Prospects** (lead gen B2C/B2B) | Prospects (Leads) | Lead | CPL 5-50 € | Formulaire sur site / formulaire natif |
| 2 | **Rendez-vous** (B2B ticket élevé) | Prospects (Leads) | Contact / Schedule | CPA 30-150 € | RDV pris (Calendly / Cal.com) |
| 3 | **E-commerce** | Ventes | Purchase | ROAS > breakeven | Achat en ligne |
| 4 | **Formulaire instantané** | Prospects (Leads) | Lead (formulaire natif) | CPL 5-50 € | Formulaire natif Meta |
| 5 | **Appels** (Call Ads) | Prospects / Trafic | Clic-vers-appel | Coût par appel qualifié | Appel téléphonique |

> ↪️ **Repères de coût par secteur :** Voir [Référence - KPI Meta Ads](<../kpi/KPI - KPI.md>) > Benchmarks par secteur.

---

## Typologie 1 — Prospects (lead gen B2C / B2B)

**Quand :** générer des leads (prospects) via un formulaire sur site ou un formulaire natif.

| Paramètre | Recommandation |
|-----------|----------------|
| Objectif Meta | Prospects (Leads) |
| Optimisation | Événement Lead (site ou formulaire instantané) |
| Structure | 3-5 ad sets (1 par angle créatif), 2-3 ads par ad set |
| Tracking (suivi des conversions/évènements) | Conversion Lead pixel/CAPI de qualité ≥ Bonne |
| Test | Laisser tourner 5-7 jours sans toucher (phase d'apprentissage) |

→ Suivre la [Procédure - Lancer une campagne Meta Ads](<Lancement - Lancer une campagne.md>).

---

## Typologie 2 — Rendez-vous (B2B ticket élevé)

**Quand :** l'objectif est une prise de RDV qualifiée (closing en visio/téléphone).

| Paramètre | Recommandation |
|-----------|----------------|
| Objectif Meta | Prospects (Leads), optimisé pour l'événement Contact / Schedule |
| Tunnel | Landing → questionnaire de qualification → Calendly / Cal.com |
| Tracking | Conversion Contact configurée (pixel + CAPI, déduplication `event_id`) |
| Qualification | Champs de qualification avant le RDV (budget, taille d'équipe, urgence) |
| CPA cible | 30-150 € selon secteur |

→ Suivre la [Procédure - Lancer une campagne Meta Ads](<Lancement - Lancer une campagne.md>) ; configurer l'événement Contact (Voir : [Procédure - Configurer le Conversions API (CAPI)](<../tracking/Tracking - Configurer le Conversions API (CAPI).md>)).

---

## Typologie 3 — E-commerce

**Quand :** vente de produits en ligne.

| Paramètre | Recommandation |
|-----------|----------------|
| Objectif Meta | Ventes, optimisé pour Purchase |
| Catalogue | Synchronisé dans Commerce Manager (si Advantage+ Shopping) |
| Tracking | Pixel + CAPI Purchase avec `value` / `currency` / `content_ids` |
| Calibrage | AOV (panier moyen) documenté → CPA cible < marge brute |
| Créatives | ~60 % UGC / 40 % orientées produit |
| Retargeting (reciblage) | En parallèle : visiteurs 30 j × non-acheteurs |

→ Suivre la [Procédure - Lancer une campagne Meta Ads](<Lancement - Lancer une campagne.md>) ; pour le scaling e-commerce, Voir : [Procédure - Scaler une campagne Meta Ads](<../scaling/Scaling - Scaler une campagne.md>) (Advantage+ Shopping).

---

## Typologie 4 — Formulaire instantané (Lead Ads natif)

**Quand :** maximiser le volume de leads à faible friction, sans landing page.

| Paramètre | Recommandation |
|-----------|----------------|
| Objectif Meta | Prospects (Leads), formulaire instantané natif |
| Formulaire | Question filtre d'intro + 3-5 champs max |
| Attribution | Champs cachés `utm_source`, `utm_campaign` |
| CRM | Intégration Zapier / Make / native, en temps réel |
| CPL cible | 5-50 € selon secteur |
| Point d'attention | Lead **moins qualifié** qu'une landing dédiée |

→ SOP dédiée : [Procédure - Formulaire instantané (Lead Ads)](<Lancement - Formulaire instantané (Lead Ads).md>).

---

## Typologie 5 — Appels (Call Ads)

**Quand :** l'appel est le point de conversion naturel (artisan, service local, urgence).

| Paramètre | Recommandation |
|-----------|----------------|
| Objectif Meta | Prospects / Trafic, optimisé pour le clic-vers-appel |
| Numéro | Configuré dans le Business Manager |
| Disponibilité | Plages horaires renseignées (quelqu'un doit répondre) |
| Suivi | Call tracking (Aircall, Ringover…) pour mesurer les vrais appels |
| Format | Carrousel ou statique, CTA « Appeler maintenant » |
| Emplacements | Facebook + Instagram + Messenger |

→ SOP dédiée : [Procédure - Campagnes d'appels (Call Ads)](<Lancement - Campagnes d'appels (Call Ads).md>).

---

## Communs à toutes les typologies

### Audiences

- **Cold** : Advantage+ Audience (défaut en 2026)
- **Custom** : visiteurs site 30 j + 180 j, listes email clients
- **Exclusions** : acheteurs récents 30 j (campagnes d'acquisition)
- **Lookalike** : 1-3 % depuis une source de qualité (acheteurs, leads qualifiés)

> ↪️ **Pour les règles d'audience détaillées :** Voir [Guide Meta Ads](<../Guide Meta.md>) > Audiences.

### Préparation minimale

- Objectif business clair (CPL/CPA/ROAS cible, volume hebdo)
- Avatar / ICP documenté (Voir : [Procédure - Définir l'avatar (ICP)](<../../01-strategie/cible/Cible - Définir l'avatar (ICP).md>))
- Offre validée (promesse, prix, garantie, urgence)
- Tracking installé et événements de qualité ≥ Bonne
- Nomenclature décidée (Voir : [Guide Meta Ads](<../Guide Meta.md>) > Convention de nomenclature)

### Après J+7

Audit complet, puis décisions par niveau (Voir : [Procédure - Optimisation Meta Ads](<../optimisation/Optimisation - Optimiser les performances.md>) > Niveaux de décision) :
- **Niveau 1** : réallocation de budget
- **Niveau 2** : optimisation in-platform (créas, audiences, enchères)
- **Niveau 3** : structurel (offre, tunnel, positionnement)

---

## Procédures liées

| Document | Relation |
|-----|-------------|
| [Procédure - Lancer une campagne Meta Ads](<Lancement - Lancer une campagne.md>) | Aval (exécution du lancement) |
| [Procédure - Formulaire instantané (Lead Ads)](<Lancement - Formulaire instantané (Lead Ads).md>) | Aval (typologie 4) |
| [Procédure - Campagnes d'appels (Call Ads)](<Lancement - Campagnes d'appels (Call Ads).md>) | Aval (typologie 5) |
| [Guide Meta Ads](<../Guide Meta.md>) | Référence (objectifs, audiences, nomenclature) |
| [Référence - KPI Meta Ads](<../kpi/KPI - KPI.md>) | Référence (repères de coût par secteur) |
