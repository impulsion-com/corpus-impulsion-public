# KPI

> **Plateforme :** Stratégie
> **Catégorie :** Fondamentaux
> **Type :** Fondamental
> **Mis à jour :** 2026-05-07

## Objectif

Documente chaque KPI Google Ads : ce qu'il mesure, comment il est calculé, à quel tier il appartient, et quand l'utiliser. C'est la fiche unique pour les définitions de métriques et le document de KPI à trois niveaux.

---

## Ce que couvre cette fiche / Ce qu'elle ne couvre PAS

**Cette fiche :**

- Définit chaque métrique Google Ads pertinente et son calcul
- Classe les métriques en trois niveaux (Principal, Secondaire/Garde-fou, Diagnostic)
- Associe les KPI aux types d'objectifs (croissance vs. efficacité)
- Fournit des plages de benchmarks (analyse comparative) par secteur

**Cette fiche ne couvre PAS :**

- Expliquer comment définir les objectifs (Voir : [Goals and KPIs Mental Model](<../objectifs/Objectifs - Objectifs et KPI.md>))
- Fournir des instructions étape par étape de définition d'objectifs (Voir : [SOP - Definir les objectifs et KPIs de campagne](<../../03-google-ads/strategie/Strategie - Définir les objectifs et KPIs de campagne.md>))
- Couvrir les formules d'économie unitaire (Voir : [Unit Economics Reference](<Fondamentaux - Unit economics.md>))
- Expliquer la sélection de stratégie d'enchères (Voir : [Bid Strategy Selection Reference](<../../03-google-ads/encheres/Enchères - Sélection de stratégie d'enchères.md>))

---

## Aide-mémoire : niveaux de KPI par type d'objectif

### Objectif principal axé croissance

| Niveau | KPI | Fonction |
|------|------|---------|
| **Principal** | Conversions, Valeur de conversion, Chiffre d'affaires | Mesurer la progression de la croissance |
| **Secondaire (garde-fous)** | ROAS minimum, CPA maximum, Marge de profit minimum | Empêcher l'effondrement de l'efficacité |
| **Diagnostic** | Impressions, CTR, CPC, Taux de conversion, AOV, Part d'impressions, Niveau de qualité | Identifier les facteurs et les problèmes |

### Objectif principal axé efficacité

| Niveau | KPI | Fonction |
|------|------|---------|
| **Principal** | CPA, ROAS, Coût par lead qualifié, POAS | Mesurer la progression de l'efficacité |
| **Secondaire (garde-fous)** | Volume de conversions minimum, Valeur de conversion minimum, Part d'impressions minimum | Empêcher l'effondrement du volume |
| **Diagnostic** | Impressions, CTR, CPC, Taux de conversion, AOV, Part d'impressions, Niveau de qualité | Identifier les facteurs et les problèmes |

> ⚠️ **Chaque compte a besoin à la fois de KPI de croissance et d'efficacité :** L'un est principal (votre objectif), l'autre est garde-fou (votre filet de sécurité). Ignorer les garde-fous mène soit au scaling non rentable, soit à l'assèchement du volume.

---

## Niveau 1 : KPI principaux

Ces métriques mesurent directement la progression vers votre objectif Google Ads. Reportez-les à chaque réunion avec les parties prenantes.

### Conversions

| Attribut | Détail |
|-----------|--------|
| **Ce que ça mesure** | Nombre d'actions de conversion complétées |
| **Calcul** | Comptage des événements de conversion dans la fenêtre d'attribution |
| **Utiliser quand** | Objectif de croissance : suivre le volume d'actions souhaitées |
| **Principal pour** | Lead Gen (leads, leads qualifiés, deals signés), SaaS (essais, inscriptions) |
| **Attention à** | Paramètres de fenêtre d'attribution, délai de conversion, double comptage |

### Valeur de conversion

| Attribut | Détail |
|-----------|--------|
| **Ce que ça mesure** | Valeur monétaire totale de toutes les conversions |
| **Calcul** | Somme de toutes les valeurs de conversion dans la fenêtre d'attribution |
| **Utiliser quand** | Objectif de croissance : suivre le CA généré par Google Ads |
| **Principal pour** | Ecommerce (CA), Lead Gen (valeur de pipeline) |
| **Attention à** | Valeurs statiques vs. dynamiques, paramètres de devise, ajustements retours/annulations |

### CPA (Coût par action)

| Attribut | Détail |
|-----------|--------|
| **Ce que ça mesure** | Coût moyen pour acquérir une conversion |
| **Calcul** | Coût / Conversions |
| **Utiliser quand** | Objectif d'efficacité : minimiser le coût d'acquisition |
| **Principal pour** | Lead Gen (coût par lead), SaaS (coût par essai) |
| **Attention à** | Conversions micro vs. macro, les conversions retardées gonflent le CPA à court terme |

### ROAS (Return On Ad Spend)

| Attribut | Détail |
|-----------|--------|
| **Ce que ça mesure** | CA généré par euro dépensé en publicité |
| **Calcul** | Valeur de conversion / Coût x 100% |
| **Utiliser quand** | Objectif d'efficacité : maximiser le retour sur investissement |
| **Principal pour** | Ecommerce (efficacité du CA) |
| **Attention à** | Le ROAS basé sur le CA ignore les marges : utilisez le POAS pour la rentabilité |

### POAS (Profit On Ad Spend)

| Attribut | Détail |
|-----------|--------|
| **Ce que ça mesure** | Profit brut généré par euro dépensé en publicité |
| **Calcul** | Profit brut / Coût x 100% |
| **Utiliser quand** | Objectif d'efficacité : maximiser la rentabilité (pas seulement le CA) |
| **Principal pour** | Ecommerce avec suivi du profit activé |
| **Attention à** | Nécessite la configuration du suivi du profit (données panier + import COGS) |

### Coût par lead qualifié

| Attribut | Détail |
|-----------|--------|
| **Ce que ça mesure** | Coût pour acquérir un lead qualifié (pas n'importe quel lead) |
| **Calcul** | Coût / Conversions de leads qualifiés |
| **Utiliser quand** | Objectif d'efficacité : mesurer le vrai coût d'acquisition après qualification |
| **Principal pour** | Lead Gen avec suivi des conversions hors ligne |
| **Attention à** | Nécessite l'import OCT de l'étape lead qualifié depuis le CRM |

---

## Niveau 2 : KPI secondaires (garde-fous)

Les garde-fous empêchent votre objectif principal de causer des dommages. Définissez-les comme des limites dures qui ne peuvent pas être franchies.

### Pour les comptes axés croissance

| Garde-fou | Ce qu'il prévient | Comment le définir |
|-----------|-----------------|------------|
| **ROAS minimum** | Scaling non rentable | Définir au niveau ou au-dessus du ROAS de seuil de rentabilité issu de l'économie unitaire |
| **CPA maximum** | Surenchère pour les conversions | Définir au niveau ou en dessous du CPL/CAC de seuil de rentabilité issu de l'économie unitaire |
| **Marge de profit minimum** | Érosion des marges due aux enchères agressives | Définir à la marge de contribution minimum acceptable |

### Pour les comptes axés efficacité

| Garde-fou | Ce qu'il prévient | Comment le définir |
|-----------|-----------------|------------|
| **Volume de conversions minimum** | Campagnes qui s'assèchent, perte de parts de marché | Définir basé sur les seuils Stratégies d'enchères intelligentes (30+ conversions/mois) |
| **Valeur de conversion minimum** | Le CA tombe en dessous des besoins business | Définir basé sur les objectifs de CA issus des objectifs business |
| **Part d'impressions minimum** | Érosion de la visibilité concurrentielle | Définir basé sur la baseline des informations sur les enchères |

> ⚠️ **Quand un garde-fou se déclenche, investiguez avant d'ajuster :** Une violation de garde-fou signifie que votre objectif principal cause des dommages. Diagnostiquez la cause avant de desserrer le garde-fou.

---

## Niveau 3 : KPI de diagnostic

Les KPI de diagnostic sont des outils d'investigation. Ils expliquent pourquoi les KPI principaux bougent. Ne définissez pas d'objectifs pour les KPI de diagnostic : utilisez-les pour trouver des problèmes et des opportunités.

### Métriques de trafic

| Métrique | Calcul | Ce qu'elle révèle | Investiguer quand |
|--------|-------------|-----------------|-----------------|
| **Impressions** | Comptage des affichages d'annonce | Portée et couverture du marché | Le volume baisse de manière inattendue |
| **Clics** | Comptage des clics sur l'annonce | Volume de trafic | Le volume de conversions baisse mais le CVR est stable |
| **CTR** | Clics / Impressions x 100% | Pertinence de l'annonce et résonance du message | En dessous de 3% pour le Search, en dessous de 0,5% pour le Display |
| **CPC** | Coût / Clics | Niveau de concurrence et efficacité des enchères | Le CPC dépasse la moyenne historique |

### Métriques de conversion

| Métrique | Calcul | Ce qu'elle révèle | Investiguer quand |
|--------|-------------|-----------------|-----------------|
| **Taux de conversion** | Conversions / Clics x 100% | Efficacité de la Landing Page et de l'offre | Le CVR baisse en dessous de la baseline historique |
| **AOV** | Valeur de conversion / Conversions | Tendance du CA par transaction | L'AOV diminue (vérifier le mix produit, les remises) |
| **Conversions par vue** | Conversions après vue d'annonce (sans clic) | Contribution haut du tunnel | Évaluation de l'impact Display/Vidéo/PMax |

### Métriques concurrentielles

| Métrique | Calcul | Ce qu'elle révèle | Investiguer quand |
|--------|-------------|-----------------|-----------------|
| **Part d'impressions Search** | Impressions / Total d'impressions éligibles | Couverture du marché | En dessous de 60% sur les campagnes non-marque principales |
| **IS perdu pour budget** | % d'impressions perdues en raison du budget | Contraintes de budget | Au-dessus de 10% : envisager une augmentation de budget ou une consolidation |
| **IS perdu pour classement** | % d'impressions perdues en raison de l'Classement de l'annonce | Problèmes de qualité ou d'enchères | Au-dessus de 20% : vérifier le Niveau de qualité et les enchères |
| **Abs. top IS** | Impressions position n°1 / Total éligible | Dominance concurrentielle | Campagnes de marque en dessous de 90% |

### Métriques de qualité

| Métrique | Calcul | Ce qu'elle révèle | Investiguer quand |
|--------|-------------|-----------------|-----------------|
| **Niveau de qualité** | Échelle 1-10 (CTR attendu + Pertinence annonce + Expérience LP) | Alignement annonce-keyword-LP | En dessous de 6 : investiguer les composantes |
| **CTR attendu** | En dessous/Moyen/Au-dessus de la moyenne | Efficacité du texte d'annonce | En dessous de la moyenne : réécrire les annonces |
| **Pertinence de l'annonce** | En dessous/Moyen/Au-dessus de la moyenne | Alignement keyword-annonce | En dessous de la moyenne : resserrer les ad groups |
| **Expérience LP** | En dessous/Moyen/Au-dessus de la moyenne | Qualité de la Landing Page | En dessous de la moyenne : optimiser la LP |

---

## Relations entre métriques

Comprendre comment les métriques se cascadent aide à diagnostiquer les changements de performance.

```
Impressions x CTR = Clics
Clics x CPC = Coût
Clics x Taux de conversion = Conversions
Conversions x AOV = Valeur de conversion
Valeur de conversion / Coût = ROAS
Coût / Conversions = CPA
```

**Flux de diagnostic :** Quand un KPI principal baisse, remontez la chaîne :

```
Valeur de conversion en baisse
├─ Conversions en baisse ?
│  ├─ Clics en baisse ?
│  │  ├─ Impressions en baisse ? → Vérifier budget, IS, changements d'enchères
│  │  └─ CTR en baisse ? → Vérifier texte d'annonce, paysage concurrentiel
│  └─ Taux de conversion en baisse ? → Vérifier LP, offre, qualité de l'audience
└─ AOV en baisse ? → Vérifier mix produit, promotions, shifts saisonniers
```

---

## Plages de benchmarks par secteur

Ce sont des benchmarks directionnels, pas des objectifs. La performance réelle varie selon le secteur, la concurrence et la maturité du compte.

### Campagnes Search

| Métrique | Ecommerce | Lead Gen | SaaS |
|--------|-----------|----------|------|
| CTR | 2-5% | 3-7% | 2-5% |
| CPC | 0,50-3,00 € | 2,00-15,00 € | 3,00-20,00 € |
| Taux de conversion | 2-4% | 3-8% | 2-5% |
| CPA | 15-60 € | 30-200 € | 50-300 € |
| ROAS | 300-800% | N/A | N/A |

### Campagnes Shopping

| Métrique | Ecommerce |
|--------|-----------|
| CTR | 0,8-2,5% |
| CPC | 0,30-1,50 € |
| Taux de conversion | 1,5-3,5% |
| ROAS | 400-1000% |

### Performance Max

| Métrique | Ecommerce | Lead Gen | SaaS |
|--------|-----------|----------|------|
| Taux de conversion | 1-3% | 2-5% | 1-3% |
| CPA | 20-80 € | 40-250 € | 60-350 € |
| ROAS | 300-700% | N/A | N/A |

> ⚠️ **Les benchmarks sont des points de départ, pas des objectifs :** Vos cibles viennent de l'économie unitaire (Voir : [Unit Economics Reference](<Fondamentaux - Unit economics.md>)), pas des moyennes sectorielles.

---

## Métriques vaniteuses à éviter

| Métrique | Pourquoi elle semble utile | Pourquoi elle est trompeuse | Le test |
|--------|--------------------|--------------------|----------|
| CTR élevé sans conversions | "Les gens cliquent" | Des clics sans conversions = trafic non pertinent ou tunnel cassé | Cette métrique informe-t-elle une action d'optimisation spécifique ? |
| Des millions d'impressions | "On touche tout le monde" | Des impressions sans clics = mauvaise audience ou créatif faible | Ces impressions mènent-elles à des clics qualifiés ? |
| CPC bas | "On obtient du trafic pas cher" | Du trafic pas cher qui ne convertit pas gaspille le budget | Le CPC bas produit-il des conversions à un CPA acceptable ? |
| Niveau de qualité élevé | "Google aime nos annonces" | Un QS de 10 avec zéro conversion ne vaut rien | Le QS se traduit-il en CPC plus bas et plus de conversions ? |

**Le test universel :** Cette métrique peut-elle informer une action d'optimisation spécifique qui fait bouger un KPI principal ? Si non, c'est une métrique vaniteuse.

---

## Cadence de monitoring

| Niveau | Objectif | Cadence | Métriques clés |
|-------|---------|---------|-------------|
| **Vue d'ensemble du compte** | Suis-je sur la bonne voie par rapport aux objectifs principaux/secondaires ? | Hebdomadaire | KPI principaux, KPI garde-fous |
| **Vue campagne** | Quelles campagnes génèrent des résultats ? Où réallouer ? | Hebdomadaire | Conversions, CPA, ROAS par campagne |
| **Ad group et en dessous** | Quels keywords, annonces, audiences fonctionnent ? Où optimiser ? | Bi-hebdomadaire | KPI de diagnostic, QS, termes de recherche |
| **Validation business** | Les données Google Ads correspondent-elles à la réalité backend ? | Mensuelle | CA backend vs. CA GA4/Google Ads, qualité des leads |

---

## Erreurs courantes

| Erreur | Problème | Solution |
|---------|---------|-----|
| Pas de KPI garde-fous | Le focus croissance détruit la rentabilité, ou le focus efficacité tue le volume | Définissez des KPI secondaires pour chaque compte |
| Optimiser les KPI de diagnostic | Améliorer le CTR ou le QS sans vérifier l'impact sur les conversions | N'optimisez les diagnostics que quand ils font bouger les KPI principaux |
| Comparer les types de campagne au même CPA | Le CPA haut du tunnel est structurellement plus élevé que le bas du tunnel | Définissez des attentes de CPA différentes par type de campagne |
| Panique hebdomadaire sur le CPA/ROAS | Les fluctuations à court terme déclenchent une surréaction | Évaluez sur au moins 2x le délai de conversion |
| Ignorer le délai de conversion | Sous-compte les conversions récentes, déclenche des changements prématurés | Vérifiez le rapport "Jours avant conversion" avant de juger |
| Utiliser uniquement des métriques agrégées | Le trafic de marque gonfle le ROAS global, masque la faiblesse du non-marque | Segmentez par marque vs. non-marque pour la vraie performance |

---

## Documents liés

| **Document** | **Relation** |
|--------------|------------------|
| [Goals and KPIs Mental Model](<../objectifs/Objectifs - Objectifs et KPI.md>) | Méthode stratégique pour la définition d'objectifs et la sélection de KPI |
| [Unit Economics Reference](<Fondamentaux - Unit economics.md>) | Formules qui déterminent les cibles de KPI |
| [Google Ads Success Formula Mental Model](<../../03-google-ads/strategie/Strategie - Formule de succès Google Ads.md>) | Les KPI s'associent au Pilier 4 de la formule |
| [Conversion Volume Thresholds Reference](<../../03-google-ads/suivi/Suivi - Seuils de volume de conversions.md>) | Seuils de volume qui interagissent avec les cibles de KPI |
| [SOP - Definir les objectifs et KPIs de campagne](<../../03-google-ads/strategie/Strategie - Définir les objectifs et KPIs de campagne.md>) | Procédure étape par étape utilisant cette fiche |
| [Goal Quality Checklist](<../objectifs/Objectifs - [Review] Qualité des objectifs.md>) | Valide que les objectifs et KPI sont correctement définis |
