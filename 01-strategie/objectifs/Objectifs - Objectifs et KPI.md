# Objectifs et KPI

> **Plateforme :** Stratégie
> **Catégorie :** Objectifs
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Ce document vous aide à définir des objectifs clairs et mesurables et à sélectionner les bons KPIs pour que chaque décision d'optimisation soit ancrée dans des cibles définies plutôt que dans des suppositions.

> ❓ **La question centrale :** Pour quoi optimise-t-on, et comment sait-on si on gagne ?

Sans objectifs, vous êtes sans direction. Sans les bons KPIs, vous ne pouvez pas mesurer les progrès. C'est le Pilier 4 de la formule de succès car chaque décision de campagne en aval (structure, ciblage, créatifs, enchères) dépend de la définition de ce à quoi ressemble le succès.

---

## Ce que ce modèle NE couvre PAS

Ce document NE couvre PAS :

- Les calculs d'économie unitaire (Voir : [Unit Economics Mental Model](<../fondamentaux/Fondamentaux - Méthode unit economics.md>))
- Les instructions étape par étape pour configurer le suivi des conversions (Voir : *Measurement Maturity Mental Model* [TBD, Phase 2])
- La sélection spécifique de la stratégie d'enchères (Voir : *Bidding Strategy Mental Model* [TBD, Phase 5])
- Le remplacement des conversations avec les parties prenantes : les objectifs doivent être convenus avec le business, pas définis par le spécialiste seul

---

## La pyramide de définition des objectifs

La pyramide fournit une méthode top-down pour traduire l'intention business en actions mesurables dans la plateforme.

```
         ┌─────────────────┐
         │ 1. Objectifs     │
         │    business      │
         └────────┬────────┘
                  ↓
       ┌──────────────────────┐
       │ 2. Objectifs          │
       │    Google Ads         │
       └──────────┬───────────┘
                  ↓
    ┌──────────────────────────────┐
    │ 3. Sélection des types       │
    │    de campagnes              │
    └──────────────┬───────────────┘
                   ↓
  ┌─────────────────────────────────────┐
  │ 4. Sélection des KPIs               │
  │    (Principaux/Secondaires)          │
  └──────────────────┬──────────────────┘
                     ↓
┌─────────────────────────────────────────────┐
│ 5. Exécuter + Boucle de feedback             │
└─────────────────────────────────────────────┘
```

Chaque étape dépend de celle au-dessus. Sautez une étape et tout en dessous devient peu fiable.

---

## Étape 1️⃣ : Définir les objectifs business

Les objectifs business sont le point de départ. Ils viennent des parties prenantes, pas de Google Ads.

**Chaque objectif business doit être SMART :**

| Élément | Exigence | Exemple |
|---------|----------|---------|
| **Spécifique** | Centré sur un résultat | "Augmenter les achats en ligne" (pas "améliorer le marketing") |
| **Mesurable** | Possède une cible quantifiable | "de 25%" |
| **Atteignable** | Ancré dans la réalité et les données passées | Basé sur la performance historique et la capacité du marché |
| **Pertinent** | Aligné avec la stratégie business globale | Soutient les objectifs de chiffre d'affaires de l'entreprise |
| **Temporel** | Possède une échéance | "au Q4 2026" |

**Les deux types d'objectifs :**

Chaque objectif business tombe dans l'une de deux catégories. Comprendre lequel est prioritaire change tout en aval.

| | **Objectifs de croissance** | **Objectifs d'efficacité** |
|--|---------------------------|--------------------------|
| **Objectif** | Scaler le business : plus de portée, plus de clients, plus de chiffre d'affaires | Optimiser le ROI : meilleures marges, coûts réduits, meilleure efficacité |
| **Focus** | Part de marché, base clients, nouveaux marchés | Rentabilité, réduction du gaspillage, profitabilité |
| **Caractéristiques** | Investissement plus élevé, efficacité court terme plus basse, orienté expansion | Affiner la configuration actuelle, cibles plus strictes, orienté profit |
| **Allocation de ressources** | Expansion et tests | Optimisation et affinement |
| **Résultat** | Croissance long terme et domination de marché | Amélioration immédiate de la profitabilité |

> ⚠️ **Vous ne pouvez pas maximiser croissance et efficacité simultanément :** Elles entrent intrinsèquement en conflit : scaler augmente généralement les CPA et diminue le ROAS. Définissez l'une comme prioritaire. Utilisez l'autre comme garde-fous.

**Exemples d'objectifs de croissance :**

- Augmenter le chiffre d'affaires de 20% dans les six prochains mois
- Augmenter les transactions nouveaux clients de 10% le prochain trimestre
- Générer 100 deals conclus par mois

**Exemples d'objectifs d'efficacité :**

- Réduire le CAC de 10% le prochain trimestre
- Atteindre un ROAS mixte (MER) d'au moins 500% dans les six prochains mois
- Maintenir le CAC en dessous de 200 EUR cette année

---

## Étape 2️⃣ : Traduire en objectifs Google Ads

Les objectifs Google Ads sont des traductions tactiques des objectifs business. Ils doivent :

- Contribuer à l'objectif business global
- Être spécifiques aux actions mesurables dans Google Ads
- Reconnaître que Google Ads est un élément d'une stratégie multi-canal

| Objectif business | Traduction Google Ads | Insight clé |
|------------------|---------------------|-------------|
| Augmenter le CA de 20% en 6 mois | Augmenter la valeur de conversion de 20% en 6 mois en développant les conversions et l'AOV | Google Ads pourrait devoir surperformer si les autres canaux sous-performent |
| Générer 100 deals conclus/mois | Générer 150 leads (prospects) convertissant en 75 deals conclus/mois à un taux lead-vente de 50% via le Search hors marque | Intégrer le taux lead-vente dans la traduction |
| Réduire le CAC de 10% le prochain trimestre | Diminuer le CPA de 10% en réduisant les dépenses sur les requêtes génériques à fort volume et en augmentant le CVR | Rendre tactiquement actionnable |
| Atteindre un ROAS mixte de 500% | Atteindre un ROAS moyen de 350% dans Google Ads, en ajustant avec les autres canaux pour atteindre la cible mixte | Le ROAS Google Ads peut être inférieur au ROAS mixte car c'est un canal payant |

**Règle critique :** Revoir et ajuster régulièrement les objectifs Google Ads pour rester aligné avec les objectifs business en évolution. Les objectifs business changent trimestriellement : vos objectifs Google Ads doivent suivre.

---

## Étape 3️⃣ : Sélectionner les types de campagnes

Les types de campagnes sont votre véhicule pour atteindre les objectifs. Sélectionnez en fonction de trois facteurs :

| Facteur | Question | Impact |
|---------|----------|--------|
| **Alignement objectif** | Ce type de campagne soutient-il directement l'objectif Google Ads ? | Mauvais véhicule = budget gaspillé |
| **Portée d'audience** | Pouvez-vous trouver votre audience cible sur ce réseau ? | Les audiences B2B peuvent ne pas être atteignables via Display |
| **Potentiel de volume** | Y a-t-il assez de recherches ou d'utilisateurs ciblables ? | Les marchés à faible volume peuvent nécessiter des approches multi-canal |

**Adéquation des types de campagnes par objectif principal :**

| Objectif principal | Types de campagnes adaptés | Pourquoi |
|-------------------|--------------------------|----------|
| **Croissance + Efficacité** | Search, Shopping, PMax | Assez de volume pour la croissance, assez d'intention pour l'efficacité |
| **Croissance (prioritaire)** | Search, Shopping, PMax + Display, Video, Demand Gen | Le haut du tunnel étend la portée mais réduit l'efficacité |
| **Efficacité (prioritaire)** | Search, Shopping, PMax + Remarketing | Bas du tunnel uniquement : éviter la prospection en Display/Video |

> ⚠️ **Ne supposez pas que tous les types de campagnes produisent des résultats similaires :** Search à 300% de ROAS ne signifie pas que la Video suivra. Le haut du tunnel coûte plus par conversion par conception.

---

## Étape 4️⃣ : Choisir les KPIs

Les KPIs sont organisés en trois niveaux, chacun servant un objectif différent.

### Niveau 1 : KPIs principaux

Mesurent directement les progrès vers votre objectif Google Ads principal. Ce sont vos métriques étoile polaire.

| Objectif principal | KPIs principaux |
|-------------------|---------------|
| Orienté croissance | Conversions, valeur de conversion, chiffre d'affaires |
| Orienté efficacité | CPA, ROAS, coût par lead qualifié |

### Niveau 2 : KPIs secondaires (Garde-fous)

Empêchent votre objectif principal de causer des dégâts ailleurs. Définissent des limites qui ne peuvent pas être franchies.

| Objectif principal | KPIs secondaires (garde-fous) |
|-------------------|------------------------------|
| Orienté croissance | ROAS minimum, CPA maximum, marge de profit minimum |
| Orienté efficacité | Volume de conversions minimum, valeur de conversion minimum, impression share minimum |

**Pourquoi les garde-fous comptent :**

- Croissance sans garde-fous d'efficacité : les dépenses dérapent, la profitabilité s'effondre
- Efficacité sans garde-fous de volume : les campagnes s'assèchent, l'impression share chute, les concurrents prennent votre part de marché

### Niveau 3 : KPIs diagnostiques

Métriques in-platform utilisées pour identifier ce qui pilote la performance et où les problèmes se cachent. Ce ne sont pas des objectifs : ce sont des outils d'investigation.

| KPI diagnostique | Ce qu'il révèle |
|-----------------|----------------|
| Impressions | Portée et couverture marché |
| CTR | Pertinence de l'annonce et résonance du message |
| CPC | Niveau de concurrence et efficacité des enchères |
| Taux de conversion | Efficacité de la landing page et de l'offre |
| AOV | Tendance du chiffre d'affaires par transaction |
| Impression share (budget/rang) | Marge de croissance et position concurrentielle |
| Niveau de qualité | Pertinence annonce, landing page, CTR attendu |

### Éviter les métriques de vanité

Tout ce qui peut être compté ne compte pas forcément. Les métriques de vanité sont impressionnantes mais n'informent pas les décisions :

- CTR élevé sans conversions = trafic non pertinent ou tunnel cassé
- Des millions d'impressions sans clics = mauvaise audience ou créatif faible
- CPC bas avec un faible taux de conversion = trafic bon marché qui ne convertit pas

**Le test :** Cette métrique peut-elle informer une action d'optimisation spécifique ? Si non, c'est de la vanité.

---

## Étape 5️⃣ : La boucle de feedback

La pyramide des objectifs n'est pas un exercice ponctuel. Les objectifs alimentent l'exécution, l'exécution génère des données, et les données valident ou invalident les objectifs.

### Comment la boucle fonctionne

| Signal | Ce que ça vous dit | Réponse du framework |
|--------|-------------------|---------------------|
| KPIs Google Ads dans la cible, objectifs business dans la cible | Les objectifs sont valides, continuez l'exécution | Aucun ajustement nécessaire |
| KPIs Google Ads dans la cible, objectifs business hors cible | Gap d'attribution ou conflit de canaux | Croiser les données backend avec Google Ads (Voir : [SOP - Revue de performance mensuelle](<../reporting/Reporting - Revue de performance mensuelle.md>)) |
| KPIs Google Ads hors cible, objectifs business dans la cible | Les KPIs sont trop agressifs ou la mauvaise métrique est choisie | Recalibrer les cibles de KPI via l'étape 3 |
| Les deux hors cible | Les objectifs sont irréalistes ou la stratégie est mauvaise | Revenir à l'étape 1 (alignement objectif business) |

### Validation des objectifs avant engagement

| Risque | Ce qu'il faut vérifier |
|--------|----------------------|
| Demande insuffisante | Le volume de recherche supporte la cible de conversions |
| Rendements décroissants | Les données d'impression share montrent de la marge pour croître |
| Distorsion saisonnière | Les données de tendances intègrent la saisonnalité dans les cibles |
| Décalage de prévision | Les projections du Planificateur de performances s'alignent avec les cibles |

> ↪️ **Exécution du suivi et des revues.** Voir [SOP - Revue de performance hebdomadaire](<../reporting/Reporting - Revue de performance hebdomadaire.md>) et [SOP - Revue de performance mensuelle](<../reporting/Reporting - Revue de performance mensuelle.md>) pour la cadence et les procédures de suivi réelles.

---

## Application pratique

### E-commerce (exemple orienté croissance)

- **Objectif business :** Augmenter le chiffre d'affaires de 20% dans les 6 prochains mois tout en maintenant la profitabilité
- **Objectif Google Ads :** Augmenter la valeur de conversion de 40% (en tenant compte des contributions multi-canal) tout en maintenant un ROAS hors marque de 300%
- **KPIs principaux :** Valeur de conversion, volume de conversions, AOV
- **KPIs secondaires :** ROAS hors marque minimum de 300%, marge de contribution minimum
- **KPIs diagnostiques :** Impressions, CTR, CPC, taux de conversion, impression share

### Lead Gen (exemple orienté croissance)

- **Objectif business :** Doubler le pipeline commercial de 2M EUR à 4M EUR au S1 2026
- **Objectif Google Ads :** Augmenter les leads qualifiés mensuels de 100 à 200 à max 600 EUR/lead qualifié
- **KPIs principaux :** Conversions de leads qualifiés, taux lead-vers-qualifié, valeur du pipeline
- **KPIs secondaires :** Coût maximum par lead qualifié de 600 EUR
- **KPIs diagnostiques :** Impressions, CTR, CPC, taux de conversion, volume de leads

### SaaS (exemple orienté efficacité)

- **Objectif business :** Améliorer le payback CAC de 12 à 8 mois tout en maintenant la croissance
- **Objectif Google Ads :** Réduire le coût par essai de 25% tout en maintenant 200+ essais/mois
- **KPIs principaux :** CPA (coût par essai)
- **KPIs secondaires :** Minimum 200 essais/mois, taux essai-vers-payant
- **KPIs diagnostiques :** Impressions, CTR, CPC, taux de conversion

---

## Principes clés

1. **Partez du business, pas de la plateforme :** Les objectifs découlent des objectifs business, pas de ce que Google Ads peut rapporter.
2. **Un focus principal :** Croissance ou efficacité : choisissez-en un. Utilisez l'autre comme garde-fous.
3. **Trois niveaux de KPIs :** Principal (mesure l'objectif), secondaire (protège des dégâts), diagnostique (investigue et optimise).
4. **Validez avant de vous engager :** Utilisez les outils disponibles pour confronter chaque objectif à la réalité avant de l'accepter.
5. **Revoyez régulièrement :** Les objectifs business évoluent. Les objectifs Google Ads doivent suivre. Mensuellement au minimum, ajustez selon les besoins.

---

## Documents liés

| **Document** | **Relation** |
|--------------|------------------|
| [Google Ads Success Formula Mental Model](<../../03-google-ads/strategie/Strategie - Formule de succès Google Ads.md>) | Objectifs et KPIs est le Pilier 4 de la formule |
| [Unit Economics Mental Model](<../fondamentaux/Fondamentaux - Méthode unit economics.md>) | L'économie unitaire fixe les limites des cibles d'objectifs |
| [The five buckets & hierarchy of constraints](<../fondamentaux/Fondamentaux - Les cinq catégories et la hiérarchie des contraintes.md>) | Les objectifs informent le diagnostic des contraintes à travers les cinq buckets |
| [Conversion Volume Thresholds Reference](<../../03-google-ads/suivi/Suivi - Seuils de volume de conversions.md>) | Seuils de volume qui interagissent avec la faisabilité des objectifs |
| [Google Ads Metrics Reference](<../../03-google-ads/optimisation/Optimisation - Alertes et règles Google Ads.md>) | Définitions détaillées des métriques et méthodes de calcul |
