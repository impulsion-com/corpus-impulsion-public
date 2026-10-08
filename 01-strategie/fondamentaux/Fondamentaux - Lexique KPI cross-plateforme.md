# Lexique KPI cross-plateforme

> **Plateforme :** Stratégie
> **Catégorie :** Fondamentaux
> **Type :** Fiche
> **Mis à jour :** 2026-07-09

## Objectif

Cette fiche est le **lexique consolidé des KPI de media buying**, transverse aux plateformes (Meta, Google, TikTok). Pour chaque indicateur : une définition, une formule et un repère d'usage. Contrairement à la fiche [Fondamentaux - KPI](<Fondamentaux - KPI.md>), centrée sur Google Ads, elle rassemble les métriques communes à tous les canaux et regroupe les KPI par famille : diffusion/coût, conversion, créatif, business/LTV.

Utilisez-la comme référence rapide pour retrouver la définition et le calcul d'un KPI, quel que soit le canal.

---

## Ce que cette fiche ne couvre PAS

**Cette fiche ne couvre PAS :**

- Les **benchmarks (analyse comparative) chiffrés par plateforme et par secteur** — ils vivent dans les fiches KPI de chaque canal :
  - Meta : [KPI Meta Ads](<../../04-meta-ads/kpi/KPI - KPI.md>) (CPM, CTR, CPC, CPL, CPA, ROAS, seuils créatifs par objectif et par secteur France)
  - Google : [Fondamentaux - KPI](<Fondamentaux - KPI.md>) (niveaux de KPI, garde-fous, plages Search/Shopping/PMax) et `03-google-ads/`
  - TikTok : `05-tiktok-ads/`
- Le **calcul des cibles** (ROAS d'équilibre, CPL/CAC cibles, LTV, payback) : voir [Fondamentaux - Unit economics](<Fondamentaux - Unit economics.md>)
- La **définition et la hiérarchisation des objectifs** (KPI principal vs garde-fou vs diagnostic) : voir [Fondamentaux - KPI](<Fondamentaux - KPI.md>) et [Objectifs - Objectifs et KPI](<../objectifs/Objectifs - Objectifs et KPI.md>)
- Les **concepts non métriques** (tunnel/TOFU-MOFU-BOFU, tracking GTM/CAPI/UTM, features plateforme comme CBO/ASC/PMax, concepts créatifs angle/hook/UGC) : voir les fiches dédiées de chaque plateforme

---

> ⚠️ **Repères ≠ cibles.** Tous les repères de cette fiche sont **indicatifs** (ordres de grandeur observés), jamais des objectifs à atteindre. Votre cible réelle se **dérive des unit economics**, pas d'une moyenne sectorielle. La règle structurante du corpus : **ROAS d'équilibre = 1 / marge brute** ; en dessous, vous perdez de l'argent. Voir [Fondamentaux - Unit economics](<Fondamentaux - Unit economics.md>).

---

## Famille 1 — Diffusion & coût

Métriques de haut de chaîne : combien coûte la diffusion et quelle attention elle capte. Ce sont des KPI de **diagnostic** — ils expliquent le coût, mais ne mesurent pas la rentabilité.

| KPI | Définition | Formule | Repère d'usage (indicatif) |
|-----|-----------|---------|----------------------------|
| **CPM** | Coût pour 1000 impressions | Dépenses / Impressions × 1000 | 5-15 € (Meta), 1-5 € (Display Google) |
| **CPC** | Coût par clic | Dépenses / Clics | 0,20-2 € (Meta), 1-5 € (Search Google) |
| **CTR** | Taux de clic | Clics / Impressions × 100 | 1-3 % (Meta), 3-8 % (Search Google) |
| **Fréquence** | Nombre moyen de fois qu'une personne a vu la pub | Impressions / Reach | 1,5-3 (acquisition), 3-7 (retargeting) |
| **Reach (couverture)** | Nombre de personnes uniques touchées. Métrique native des plateformes | — | — |
| **Impression Share (part d'impressions)** | Part des impressions obtenues sur les impressions éligibles (surtout Google Ads) | Impressions / Impressions éligibles × 100 | > 70 % sur marque, > 30 % en générique |
| **Niveau de qualité (Quality Score)** | Note de qualité Google Ads (échelle 1-10) | CTR attendu + Pertinence annonce + Expérience LP | 7+ = bon, < 5 = à optimiser |
| **Classement de l'annonce (Ad Rank)** | Position de l'annonce Google Ads | Enchère × Niveau de qualité × extensions | — |

---

## Famille 2 — Conversion

Métriques qui mesurent la transformation du trafic en action, et le coût / le rendement de cette action. Cœur du pilotage rentabilité.

| KPI | Définition | Formule | Repère d'usage (indicatif) |
|-----|-----------|---------|----------------------------|
| **CVR / CR (taux de conversion)** | Taux de conversion global | Conversions / Clics (ou visiteurs) × 100 | 1-5 % (e-commerce), 10-30 % (lead gen) |
| **LP CVR** | Taux de conversion de la landing page | Conversions / Visiteurs LP × 100 | 10-30 % (lead gen), 2-5 % (e-commerce) |
| **ATCR** | Taux d'ajout au panier | Ajouts au panier / Sessions × 100 | 5-15 % |
| **Opt-in Rate** | Taux d'opt-in | Opt-ins / Visiteurs × 100 | 20-40 % (landing page optimisée) |
| **CPA** | Coût par acquisition | Dépenses / Conversions | Doit rester sous la marge brute par commande |
| **CPL** | Coût par lead (prospect) | Dépenses / Leads | 5-50 € selon le secteur |
| **CPQL** | Coût par lead qualifié | Dépenses / Leads qualifiés | 2-5× le CPL |
| **Coût / RDV** | Coût par appel ou RDV | Dépenses / RDV obtenus | 30-150 € selon le secteur |
| **ROAS** | Retour sur investissement publicitaire (Return On Ad Spend) | CA / Dépenses pub | Se dérive de la marge : **ROAS d'équilibre = 1 / marge brute** (voir note ci-dessous) |
| **POAS** | Profit sur investissement publicitaire (Profit On Ad Spend) | Profit brut / Dépenses pub | > 1 (soit > 100 %) pour être rentable |
| **ACOS** | Coût publicitaire en % du CA (inverse du ROAS) | Dépenses pub / CA × 100 | < 30 % |
| **MER** | Marketing Efficiency Ratio — ROAS global tous canaux confondus. Meilleur indicateur de rentabilité réelle que le ROAS plateforme | CA total / Dépenses marketing totales | Ordre de grandeur ~×3 à ×5 selon la marge (voir note ci-dessous) |
| **AOV** | Valeur moyenne du panier / de commande | CA total / Nombre de commandes | — |
| **COGS** | Coût des marchandises vendues | — | — |
| **AOP** | Profit moyen par commande | AOV − COGS − Frais | — |
| **MQL** | Lead marketing qualifié — répond aux critères marketing | — | — |
| **SQL** | Lead qualifié commercialement — prêt pour la vente | — | — |
| **Lead Scoring** | Système de notation basé sur les actions et critères du lead | — | — |
| **Taux de booking** | Taux de réservation (de RDV) | RDV réservés / Leads × 100 | 20-40 % |
| **Show Up Rate** | Taux de présence aux RDV | Présents / RDV pris × 100 | 60-80 % |
| **Taux de closing** | Taux de conversion en client | Clients signés / RDV (ou leads qualifiés) × 100 | 20-40 % |

> ⚠️ **ROAS et MER — pas de multiple magique.** Le « ×3 minimum » (ROAS) ou « ×3 à ×5 » (MER) souvent cités sont des **ordres de grandeur**, pas une règle. La cible dépend de la marge : à 50 % de marge, le ROAS d'équilibre est de 200 % (×2) ; à 15 % de marge, il grimpe à ~667 % (×6,7). Dérivez toujours la cible depuis les unit economics (voir [Fondamentaux - Unit economics](<Fondamentaux - Unit economics.md>)), puis appliquez votre part du budget d'acquisition pour obtenir un ROAS cible réaliste au-dessus de l'équilibre.

---

## Famille 3 — Créatif (vidéo)

Métriques qui mesurent la performance de la créative dans les premières secondes et sur la durée. Diagnostic de haut du tunnel — un créatif qui ne « stoppe » pas ne convertira pas.

| KPI | Définition | Formule | Repère d'usage (indicatif) |
|-----|-----------|---------|----------------------------|
| **Hook Rate** | Taux d'accroche (3 premières secondes) | Vues 3 s / Impressions × 100 | > 25 % |
| **Hold Rate** | Taux de rétention vidéo (jusqu'à ~15 s) | ThruPlay / Vues 3 s × 100 | > 30 % |
| **Thumbstop Rate** | Capacité à stopper le scroll (proche du Hook Rate) | Vues 3 s / Impressions × 100 | > 20 % |
| **VTR** | Taux de complétion / de visionnage vidéo | Vues complètes / Impressions × 100 | 15-25 % (Meta), 20-40 % (YouTube) |

> Les seuils créatifs détaillés (mauvais / correct / bon / excellent) et le vocabulaire propre à chaque plateforme (Vues 3 s, ThruPlay côté Meta ; taux de vue 25/50/100 % côté YouTube) sont documentés dans [KPI Meta Ads](<../../04-meta-ads/kpi/KPI - KPI.md>).

---

## Famille 4 — Business & LTV

Métriques de rentabilité long terme, en aval des plateformes. Elles déterminent combien vous pouvez vous permettre de payer pour acquérir un client — donc les cibles de toutes les familles précédentes.

| KPI | Définition | Formule | Repère d'usage (indicatif) |
|-----|-----------|---------|----------------------------|
| **CAC** | Coût d'acquisition client | Dépenses d'acquisition totales / Nouveaux clients | Règle d'usage : LTV:CAC ≥ 3:1 (CAC < LTV / 3) |
| **nCAC** | New Customer Acquisition Cost — coût d'acquisition d'un **nouveau** client (hors clients existants). Métrique clé pour scaler proprement | Dépenses pub / Nouveaux clients | nCAC < LTV / 3 |
| **LTV** | Valeur vie client | ARPU × Durée de vie client × Marge brute % | LTV > 3× CAC |
| **ROI** | Retour sur investissement | (Gain − Coût) / Coût × 100 | > 100 % = rentable |
| **BEP** | Seuil de rentabilité — point où les revenus couvrent les coûts | — | — |
| **Payback CAC** | Délai de récupération du CAC (en mois) | CAC / (ARPU × Marge brute %) | < 6 mois excellent, 6-12 correct |
| **MRR** | Revenu récurrent mensuel | ARPU × Clients payants actifs | — |
| **Retention Rate** | Taux de rétention client | Clients conservés / Clients début période × 100 | > 80 % |
| **Churn** | Taux de résiliation / d'attrition | Clients perdus / Clients début période × 100 | < 5 % mensuel |

> Les formules de LTV, payback et durée de vie client (1 / taux de churn) ainsi que les cibles CAC/CPL par secteur sont détaillées dans [Fondamentaux - Unit economics](<Fondamentaux - Unit economics.md>).

---

## Un même KPI, des noms différents selon la plateforme

Un KPI cross-plateforme change parfois de nom d'une régie à l'autre. Quelques équivalences utiles :

| Concept | Meta | Google | Remarque |
|---------|------|--------|----------|
| Coût par action | CPA / Coût par résultat | Coût/conversion | Même logique : dépense / action |
| Taux de conversion | CVR | Taux de conversion | Base « clics » ou « visiteurs » selon l'outil |
| Complétion vidéo | ThruPlay, Vues 3 s | Taux de vue 25/50/100 % | Seuils de comptage différents |
| Part de voix | — | Part d'impressions (IS) | Concept surtout Google Ads |

---

## Procédures liées

| **Document** | **Relation** |
|--------------|--------------|
| [Fondamentaux - KPI](<Fondamentaux - KPI.md>) | Fiche KPI Google Ads : niveaux (principal / garde-fou / diagnostic), plages de benchmarks Search/Shopping/PMax |
| [Fondamentaux - Unit economics](<Fondamentaux - Unit economics.md>) | Formules qui déterminent les cibles (ROAS d'équilibre, CPL/CAC cibles, LTV, payback) |
| [KPI Meta Ads](<../../04-meta-ads/kpi/KPI - KPI.md>) | Benchmarks chiffrés Meta par objectif et par secteur (France), seuils de décision et seuils créatifs |
| [Objectifs - Objectifs et KPI](<../objectifs/Objectifs - Objectifs et KPI.md>) | Comment choisir et hiérarchiser les KPI selon l'objectif de campagne |
