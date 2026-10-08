# Arbre de métriques

> **Plateforme :** Google Ads
> **Catégorie :** Strategie
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Documente le document de l'arbre de métriques pour l'analyse des causes racines des changements de performance Google Ads. Utilisez ce document pour remonter systématiquement à l'origine des variations de performance et identifier le bon levier à actionner.

---

## Ce que couvre cette fiche / Ce qu'elle ne couvre PAS

**Cette fiche :**

- Fournit les structures d'arbre de métriques pour l'Ecommerce et le Lead Gen/SaaS
- Documente les relations mathématiques entre les métriques
- Explique la méthode d'analyse des causes racines
- Identifie les patterns courants et leurs diagnostics

**Cette fiche ne couvre PAS :**

- Expliquer quels KPI choisir (Voir : [Goals and KPIs Mental Model](<../../01-strategie/objectifs/Objectifs - Objectifs et KPI.md>))
- Couvrir les définitions de métriques en détail (Voir : [Google Ads Metrics Reference](<../optimisation/Optimisation - Alertes et règles Google Ads.md>))
- Fournir les arbres de métriques business complets (Voir : [No goal, no bottleneck](<../../01-strategie/fondamentaux/Fondamentaux - Pas d'objectif, pas de goulot d'étranglement.md>))

---

## Le concept de l'arbre de métriques

Chaque métrique en aval est le produit des métriques en amont. Les changements de performance remontent toujours à une cause racine : parcourez l'arbre pour trouver où le changement a commencé.

**Principe fondamental :** Quand le ROAS baisse ou le CPA augmente, ne réagissez pas au symptôme. Remontez l'arbre de métriques en amont pour trouver la métrique qui a réellement bougé en premier - la cause racine qui a déclenché la cascade.

---

## Arbre de métriques Ecommerce

```
ROAS
├── Valeur de conversion
│   ├── Conversions
│   │   ├── Clics
│   │   │   ├── Impressions
│   │   │   │   ├── Volume de recherche (demande du marché)
│   │   │   │   └── Part d'impressions
│   │   │   │       ├── IS perdu (Budget)  ← Budget
│   │   │   │       └── IS perdu (Rank)    ← Classement de l'annonce
│   │   │   │           ├── Abs. Top Impr. %
│   │   │   │           └── Top Impr. %
│   │   │   └── CTR                       ← Classement de l'annonce / Texte d'annonce
│   │   └── Taux de conversion            ← Landing Page + Offre + Qualité du trafic
│   └── AOV (Valeur moyenne de commande)  ← Mix produit + Tarification
└── Coût
    ├── Clics (identique ci-dessus)
    └── CPC                               ← Classement de l'annonce
```

> 💡 **Facteurs d'Classement de l'annonce :** L'Classement de l'annonce est influencé par : l'enchère maximale, les seuils d'Classement de l'annonce, la compétitivité de l'enchère, l'impact des éléments et formats, et la qualité de l'annonce.

**Métriques d'objectif :**

| Type d'objectif | Métrique principale | Métrique secondaire |
|-----------|---------------|------------------|
| Efficacité | ROAS / POAS | Valeur de conversion (CA/Profit) / Conversions |
| Croissance | Valeur de conversion (CA/Profit) / Conversions | ROAS / POAS |

**Branches clés :**

| Branche | Ce qu'elle mesure | Facteurs clés |
|--------|------------------|-------------|
| Valeur de conversion | CA/Profit généré | Volume (conversions) et valeur (AOV) |
| Coût | Argent dépensé | Volume (clics) et prix (CPC) |
| Impressions | Visibilité | Taille du marché et part capturée |
| Clics | Trafic | Visibilité et pertinence (CTR) |
| Conversions | Résultats | Trafic et efficacité (CVR) |

---

## Arbre de métriques Lead Gen / SaaS

Pour le Lead Gen et le SaaS, l'arbre s'adapte pour suivre le coût par acquisition plutôt que le retour sur investissement :

```
CPA (ou CPQL / CAC)
├── Coût
│   ├── Clics
│   │   ├── Impressions
│   │   │   ├── Volume de recherche (demande du marché)
│   │   │   └── Part d'impressions
│   │   │       ├── IS perdu (Budget)  ← Budget
│   │   │       └── IS perdu (Rank)    ← Classement de l'annonce
│   │   │           ├── Abs. Top Impr. %
│   │   │           └── Top Impr. %
│   │   └── CTR                       ← Classement de l'annonce / Texte d'annonce
│   └── CPC                           ← Classement de l'annonce
└── Conversions (Leads / QL / Deals signés)
    ├── Clics (identique ci-dessus)
    └── Taux de conversion            ← Landing Page + Offre + Qualité du trafic
```

**Tunnel étendu (au-delà de Google Ads) :**

```
Chiffre d'affaires / Deals signés
├── SQL
│   ├── MQL
│   │   ├── Leads (conversions Google Ads)
│   │   └── Taux MQL (Lead → MQL)
│   └── Taux SQL (MQL → SQL)
├── Taux de closing (SQL → Signé)
└── Valeur du deal
```

**Métriques d'objectif :**

| Type d'objectif | Métrique d'efficacité | Métrique de croissance |
|-----------|------------------|---------------|
| Lead Gen (leads) | CPA | Leads |
| Lead Gen (leads qualifiés) | CPQL | QL (MQL / SQL) |
| Lead Gen (deals signés) | CAC | Deals signés |
| Lead Gen (CA) | ROAS / POAS | CA / Profit |
| SaaS (clients) | CAC | Nouveaux clients |
| SaaS (CA) | ROAS / POAS | CA / Profit |

> 💡 **Visibilité en aval :** Google Ads ne voit que le haut du tunnel (clics, leads). Les vrais résultats business (deals signés, CA) nécessitent un suivi des conversions hors ligne ou une intégration CRM. Voir : [Offline Conversion Tracking Reference](<../suivi/Suivi - Offline Conversion Tracking.md>)

---

## Relations entre métriques (les maths)

### Avant le clic

```
Impressions = Volume de recherche × Part d'impressions
Part d'impressions = 1 - IS perdu (Budget) - IS perdu (Rank)
```

Les impressions ne peuvent croître que si le marché grossit (volume de recherche) OU si vous capturez une plus grande part de celui-ci (part d'impressions). Si les impressions ont changé, l'un de ces deux éléments a bougé.

### Au moment du clic

```
Clics = Impressions × CTR
Coût = Clics × CPC
```

Les clics sont le produit de la visibilité (impressions) et de l'engagement (CTR). Le CTR est influencé par le texte de l'annonce, la position de l'annonce (qui dépend de l'Classement de l'annonce et de la concurrence), et la pertinence du terme de recherche. Le coût est simplement le nombre de clics multiplié par le prix payé par clic.

### Après le clic

**Ecommerce :**

```
Conversions = Clics × Taux de conversion
Valeur de conversion = Conversions × AOV
ROAS = Valeur de conversion / Coût
```

Ou de manière équivalente :

```
ROAS = (CTR × Taux de conv. × AOV) / CPC
```

Cette formule simplifiée du ROAS révèle les quatre leviers que vous pouvez réellement actionner : CTR, taux de conversion, AOV et CPC.

**Lead Gen :**

```
Conversions = Clics × Taux de conversion
CPA = Coût / Conversions
```

Ou de manière équivalente :

```
CPA = CPC / Taux de conversion
```

Pour baisser le CPA, soit vous baissez le CPC, soit vous augmentez le taux de conversion.

---

## Méthode d'analyse des causes racines

### Étape 1️⃣ : Commencer par la métrique de résultat

Commencez par votre métrique de résultat principale. Il peut s'agir de :

- **Métrique d'efficacité :** ROAS en baisse, CPA en hausse
- **Métrique de croissance :** Conversions en baisse, CA en déclin, Leads en diminution

Demandez-vous : les entrées ont-elles changé (coût, clics, impressions) ou les sorties (conversions, valeur) ? Et lequel a le plus bougé ?

### Étape 2️⃣ : Remonter chaque branche

Pour le côté qui a bougé, continuez à demander "pourquoi ?" en montant d'un niveau.

**Si le ROAS a baissé :**

```
ROAS en baisse
├── Le coût a-t-il augmenté ?
│   ├── Plus de clics ? → Pourquoi ?
│   │   ├── Plus d'impressions ? → Volume de recherche en hausse ou IS en hausse ?
│   │   └── CTR plus élevé ? → Changement de texte d'annonce ou de position ?
│   └── CPC plus élevé ? → Concurrence, baisse de QS, stratégie d'enchères, modification de cible ou de ciblage ?
└── La valeur de conversion a-t-elle baissé ?
    ├── Moins de conversions ? → Pourquoi ?
    │   ├── Moins de clics ? → Pourquoi ?
    │   │   ├── Moins d'impressions ? → Volume de recherche en baisse ou IS en baisse ?
    │   │   └── CTR plus bas ? → Changement de texte d'annonce ou de position ?
    │   └── Taux de conversion plus bas ? → Landing Page, audience, ou shift d'intention ?
    └── AOV plus bas ? → Changement de mix produit, promotions, ou saisonnalité ?
```

**Si le CPA a augmenté :**

```
CPA en hausse
├── Le coût a-t-il augmenté ?
│   ├── Plus de clics ? → Pourquoi ?
│   │   ├── Plus d'impressions ? → Volume de recherche en hausse ou IS en hausse ?
│   │   └── CTR plus élevé ? → Changement de texte d'annonce ou de position ?
│   └── CPC plus élevé ? → Concurrence, baisse de QS, stratégie d'enchères, modification de cible ou de ciblage ?
└── Les conversions ont-elles baissé ?
    ├── Moins de clics ? → Pourquoi ?
    │   ├── Moins d'impressions ? → Volume de recherche en baisse ou IS en baisse ?
    │   └── CTR plus bas ? → Changement de texte d'annonce ou de position ?
    └── Taux de conversion plus bas ? → Landing Page, audience, ou shift d'intention ?
```

**Si les conversions ont baissé :**

```
Conversions en baisse
├── Les clics ont-ils diminué ?
│   ├── Moins d'impressions ? → Pourquoi ?
│   │   ├── Volume de recherche en baisse ? → Marché/saisonnalité
│   │   └── Part d'impressions en baisse ? → Contrainte de budget ou de rank
│   └── CTR plus bas ? → Changement de texte d'annonce ou de position ?
└── Le taux de conversion a-t-il baissé ?
    └── Landing Page, audience, ou shift d'intention ?
```

**Si le CA / la valeur de conversion a baissé :**

```
CA en baisse
├── Les conversions ont-elles baissé ? → (voir l'arbre des conversions ci-dessus)
└── L'AOV a-t-il baissé ?
    └── Changement de mix produit, promotions, ou saisonnalité ?
```

### Étape 3️⃣ : Identifier le noeud racine

Continuez à remonter jusqu'à trouver la métrique qui a réellement bougé en premier - celle qui a causé la cascade.

| Cause racine | Ce qui a bougé | Catégorie |
|---|---|---|
| Le marché a changé | Volume de recherche en hausse/baisse | Externe |
| Contrainte de budget | IS perdu (Budget) élevé | Budget |
| Contrainte de classement | IS perdu (Classement) élevé | Niveau de qualité / Enchères |
| La pertinence de l'annonce a changé | CTR a changé | Texte / Ciblage |
| La concurrence a changé | CPC a changé (avec QS stable) | Externe |
| Le Niveau de qualité a changé | CPC + position ont changé | Pertinence annonce / LP |
| Le paramètre de cible a changé | CPC a changé (avec QS + concurrence stables) | Stratégie d'enchères |
| Problème de Landing Page | Taux de conv. en baisse | Expérience post-clic |
| La qualité de l'audience a changé | Taux de conv. en baisse (avec LP stable) | Ciblage / Termes de recherche |
| Le mix produit a changé | AOV a changé | Offre / Merchandising |

### Étape 4️⃣ : Classifier la contrainte

Une fois la cause racine trouvée, classifiez où se situe la contrainte :

| Localisation | Type de problème | Exemples |
|----------|--------------|----------|
| Avant le clic | Problème de visibilité ou de position | IS perdu, déclin du volume de recherche |
| Au moment du clic | Problème de pertinence ou de coût | CTR bas, CPC élevé |
| Après le clic | Problème de conversion ou de valeur | CVR bas, AOV bas |

Cela vous indique où concentrer vos efforts d'optimisation.

---

## Facteurs d'influence

Chaque métrique de l'arbre est influencée par des facteurs contrôlables spécifiques :

| Métrique | Influencée par |
|---|---|
| Volume de recherche | Demande du marché, saisonnalité, tendances (principalement incontrôlable) |
| IS perdu (Budget) | Budget quotidien, paramètres de stratégie d'enchères |
| IS perdu (Classement) | Classement de l'annonce (voir facteurs ci-dessus) |
| Impr. 1re position absolue / en haut de page | Classement de l'annonce |
| CTR | Classement de l'annonce, texte d'annonce, pertinence du terme de recherche |
| CPC | Classement de l'annonce, stratégie d'enchères, paramètre de cible |
| Taux de conversion | Landing Page, offre, qualité de l'audience, intention du terme de recherche |
| AOV | Mix produit, tarification, ventes croisées, promotions |

---

## Lire les variations

Quand vous analysez les changements période sur période :

- **Vert / positif ne veut pas toujours dire bon :** Un CPC en hausse est "vert" en valeur absolue mais mauvais pour l'efficacité.
- **Lisez toujours les métriques dans le contexte de leur parent :** Clics en hausse de +50% ne veut rien dire si le coût a augmenté de +80%.
- **Comparez les taux de croissance à travers la chaîne :** Si les clics ont crû plus vite que les conversions, le taux de conversion a baissé. Si le coût a crû plus vite que la valeur de conversion, le ROAS a baissé.

### La vérification clé des ratios

```
Si croissance % Valeur de conversion > croissance % Coût → ROAS amélioré
Si croissance % Valeur de conversion < croissance % Coût → ROAS dégradé
```

```
Si croissance % Conversions > croissance % Coût → CPA amélioré
Si croissance % Conversions < croissance % Coût → CPA dégradé
```

C'est la seule comparaison qui compte vraiment.

---

## Patterns courants

### Pattern 1 : Scalé mais moins efficace

- Impressions en hausse, Clics en hausse, Coût en hausse significative
- Conversions en hausse, mais Taux de conv. en baisse
- ROAS / CPA dégradé

**Cause racine :** Le scaling a amené du trafic de moindre qualité. Vérifiez les termes de recherche et les segments d'audience.

**Diagnostic :** Problème de qualité de trafic. Les clics supplémentaires ne sont pas aussi qualifiés.

### Pattern 2 : Le marché a grandi, pas nous

- Volume de recherche en hausse significative, Part d'impressions stable ou en baisse
- IS perdu (Classement) en hausse
- Les concurrents ont capturé la croissance

**Cause racine :** L'Classement de l'annonce ne suit pas. Le Niveau de qualité et/ou les enchères ont besoin d'attention.

**Diagnostic :** Contrainte de classement. Améliorez le QS ou augmentez les enchères pour capturer la croissance du marché.

### Pattern 3 : Payer plus pour la même chose

- Impressions stables, Clics stables
- CPC en hausse, Coût en hausse
- Conversions stables, ROAS / CPA dégradé

**Cause racine :** La concurrence a augmenté ou le Niveau de qualité a baissé. Vérifiez les informations sur les enchères et les composantes du QS.

**Diagnostic :** Problème d'efficacité des coûts. Travaillez le QS ou acceptez des coûts plus élevés.

### Pattern 4 : Plus de trafic, mêmes résultats

- Clics en hausse significative, Taux de conv. en baisse significative
- Conversions stables
- Coût en hausse, ROAS / CPA dégradé

**Cause racine :** Problème de qualité de trafic. Les clics supplémentaires ne convertissent pas.

**Diagnostic :** Auditez les termes de recherche, les audiences et les types de correspondance. Envisagez de resserrer le ciblage.

### Pattern 5 : Tout semble bon mais l'efficacité a baissé

- Toutes les métriques légèrement positives
- Mais croissance % du Coût > croissance % de la Valeur de conv./Conversions

**Cause racine :** L'inflation du CPC dépasse les gains de conversion. La petite hausse de +4% du CPC compte plus que le petit gain de +2% du taux de conv.

**Diagnostic :** Exécutez la formule ROAS/CPA pour voir quel levier est à la traîne. Travaillez le composant le plus faible.

---

## Référence rapide : diagnostic par localisation de la contrainte

| Localisation de la contrainte | Symptômes | Premières actions |
|---------------------|----------|---------------|
| **Avant le clic** | Impressions basses, IS perdu élevé | Vérifiez le budget (si IS perdu Budget) ou le Niveau de qualité/enchères (si IS perdu Classement) |
| **Au moment du clic** | CTR bas ou CPC élevé | Revoyez le texte d'annonce, les extensions, la pertinence des termes de recherche. Vérifiez le Niveau de qualité. |
| **Après le clic** | CVR bas ou AOV bas | Auditez la Landing Page, l'offre et la qualité du trafic. Vérifiez les termes de recherche pour la correspondance d'intention. |

---

## Documents liés

| Document | Relation |
|----------|--------------|
| [Reporting Mental Model](<../../01-strategie/reporting/Reporting - Reporting.md>) | Méthode : approche d'analyse |
| [Google Ads Metrics Reference](<../optimisation/Optimisation - Alertes et règles Google Ads.md>) | Référence : définitions des métriques |
| [No goal, no bottleneck](<../../01-strategie/fondamentaux/Fondamentaux - Pas d'objectif, pas de goulot d'étranglement.md>) | Théorie : arbres de métriques business complets |
| [SOP - Revue de performance hebdomadaire](<../../01-strategie/reporting/Reporting - Revue de performance hebdomadaire.md>) | Exécution : procédure d'analyse de performance |
| [Unit Economics Mental Model](<../../01-strategie/fondamentaux/Fondamentaux - Méthode unit economics.md>) | Fondation : calcul du ROAS/CPA cible |
