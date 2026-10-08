# Métriques Google Ads

> **Plateforme :** Google Ads
> **Catégorie :** Strategie
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Documente les métriques principales de Google Ads, leurs définitions, calculs et directives d'interprétation pour un reporting et une analyse précis.

---

## Ce que couvre cette fiche / Ce qu'elle ne couvre PAS

**Cette fiche :**

- Définit les métriques standard Google Ads et leurs calculs
- Explique les relations entre métriques et leur usage diagnostic
- Fournit des plages de benchmarks (analyses comparatives) par type de campagne
- Documente la disponibilité des métriques par type de campagne

**Cette fiche ne couvre PAS :**

- Expliquer quels KPI choisir (Voir : [Goals and KPIs Mental Model](<../../01-strategie/objectifs/Objectifs - Objectifs et KPI.md>))
- Couvrir les formules de colonnes personnalisées (Voir : [Custom Columns Reference](<../optimisation/Optimisation - Colonnes personnalisées.md>))
- Expliquer les méthodes de reporting (Voir : [Reporting Mental Model](<../../01-strategie/reporting/Reporting - Reporting.md>))

---

## Aide-mémoire : métriques principales

| **Métrique** | **Formule** | **Ce qu'elle mesure** | **Plus élevé signifie** |
|------------|-------------|---------------------|---------------|
| **Impressions** | Comptage des affichages | Portée | Plus de portée |
| **Clics** | Comptage des clics | Trafic | Plus de trafic |
| **CTR** | Clics ÷ Impressions | Pertinence de l'annonce | Meilleur |
| **CPC** | Coût ÷ Clics | Coût du trafic | Plus bas = moins cher |
| **Conversions** | Comptage des actions suivies | Résultats | Plus de résultats |
| **CVR** | Conversions ÷ Clics | Efficacité de la Landing Page | Meilleur |
| **CPA** | Coût ÷ Conversions | Efficacité des coûts | Plus bas = meilleur |
| **ROAS** | Valeur conv. ÷ Coût | Efficacité du CA | Plus élevé = meilleur |

---

## 1️⃣ Métriques de trafic

### Impressions

| **Attribut** | **Détails** |
|---------------|-------------|
| **Définition** | Nombre de fois où votre annonce a été affichée |
| **Formule** | Comptage (pas de calcul) |
| **Ce que ça mesure** | Portée et visibilité |
| **Usage diagnostic** | Peu d'impressions = ciblage trop étroit ou budget trop bas |

**Types d'impressions :**

| **Type** | **Définition** | **Disponible dans** |
|----------|---------------|------------------|
| Impressions | Total des affichages d'annonce | Toutes les campagnes |
| Impressions visibles | Annonces répondant aux standards de visibilité (50%+ visible pendant 1+ seconde) | Display, Vidéo |
| Impressions mesurables | Impressions où la visibilité a pu être mesurée | Display, Vidéo |

### Clics

| **Attribut** | **Détails** |
|---------------|-------------|
| **Définition** | Nombre de clics sur votre annonce |
| **Formule** | Comptage (pas de calcul) |
| **Ce que ça mesure** | Engagement utilisateur et volume de trafic |
| **Usage diagnostic** | Peu de clics avec beaucoup d'impressions = mauvaise pertinence de l'annonce |

**Types de clics :**

| **Type** | **Définition** |
|----------|---------------|
| Clics | Tous les clics sur l'annonce |
| Clics après vue engagée | Clics après 10+ secondes de vidéo regardée |
| Clics invalides | Clics filtrés (robots, accidentels) |

### Taux de clics (CTR)

| **Attribut** | **Détails** |
|---------------|-------------|
| **Définition** | Pourcentage d'impressions ayant résulté en clics |
| **Formule** | (Clics ÷ Impressions) × 100 |
| **Ce que ça mesure** | Pertinence et attrait de l'annonce |
| **Usage diagnostic** | CTR bas = problème de texte d'annonce, ciblage ou concurrence |

**Benchmarks CTR par type de campagne :**

| **Type de campagne** | **En dessous de la moyenne** | **Moyen** | **Bon** | **Excellent** |
|-------------------|-------------------|-------------|----------|---------------|
| Search (marque) | <5% | 5-10% | 10-20% | >20% |
| Search (non-marque) | <2% | 2-4% | 4-7% | >7% |
| Shopping | <0,5% | 0,5-1% | 1-2% | >2% |
| Display | <0,1% | 0,1-0,3% | 0,3-0,5% | >0,5% |
| Vidéo | <0,3% | 0,3-0,8% | 0,8-1,5% | >1,5% |
| Demand Gen | <0,5% | 0,5-1% | 1-2% | >2% |

> ⚠️ **Les benchmarks sont directionnels :** Votre secteur, audience et offre affectent significativement le CTR attendu. Utilisez-les comme points de départ, pas comme standards absolus.

---

## 2️⃣ Métriques de coût

### Coût (Dépense)

| **Attribut** | **Détails** |
|---------------|-------------|
| **Définition** | Montant total dépensé en publicité |
| **Formule** | Somme de tous les clics × leurs CPC |
| **Ce que ça mesure** | Consommation du budget |
| **Usage diagnostic** | Comparer au budget, suivre le pacing |

### Coût par clic (CPC)

| **Attribut** | **Détails** |
|---------------|-------------|
| **Définition** | Coût moyen par clic |
| **Formule** | Coût ÷ Clics |
| **Ce que ça mesure** | Coût d'acquisition de trafic |
| **Usage diagnostic** | CPC en hausse = concurrence accrue ou Niveau de qualité en baisse |

**Types de CPC :**

| **Type** | **Définition** |
|----------|---------------|
| CPC moyen | Coût total ÷ total des clics |
| CPC max | Votre plafond d'enchère (enchères manuelles) |
| CPC réel | Ce que vous avez réellement payé par clic |

**Benchmarks CPC par type de campagne :**

| **Type de campagne** | **Bas** | **Moyen** | **Élevé** |
|-------------------|---------|------------|----------|
| Search (marque) | <0,50 € | 0,50-2 € | >2 € |
| Search (non-marque) | <1 € | 1-5 € | >5 € |
| Shopping | <0,30 € | 0,30-1 € | >1 € |
| Display | <0,25 € | 0,25-1 € | >1 € |
| Vidéo (CPV) | <0,03 € | 0,03-0,10 € | >0,10 € |

### Coût pour mille (CPM)

| **Attribut** | **Détails** |
|---------------|-------------|
| **Définition** | Coût pour 1 000 impressions |
| **Formule** | (Coût ÷ Impressions) × 1 000 |
| **Ce que ça mesure** | Efficacité des campagnes de notoriété |
| **Usage diagnostic** | Métrique principale pour les objectifs de notoriété/portée |

---

## 3️⃣ Métriques de conversion

### Conversions

| **Attribut** | **Détails** |
|---------------|-------------|
| **Définition** | Nombre d'actions de conversion suivies |
| **Formule** | Comptage basé sur le modèle d'attribution |
| **Ce que ça mesure** | Résultats et aboutissements |
| **Usage diagnostic** | Métrique de succès principale pour la plupart des campagnes |

**Méthodes de comptage des conversions :**

| **Méthode** | **Comportement** | **Idéal pour** |
|------------|--------------|--------------|
| Une par clic | Max 1 conversion par clic | Lead gen (soumissions de formulaire) |
| Toutes | Toutes les conversions d'un même clic | Ecommerce (achats multiples) |

**Colonnes de conversion :**

| **Colonne** | **Ce qu'elle montre** |
|------------|-------------------|
| Conversions | Toutes les conversions (principales + secondaires marquées "oui") |
| Toutes les conversions | Toutes les actions suivies incluant les secondaires |
| Conversions principales | Uniquement les actions marquées comme principales |
| Conversions par vue | Conversions après vue d'annonce (sans clic) |

### Taux de conversion (CVR)

| **Attribut** | **Détails** |
|---------------|-------------|
| **Définition** | Pourcentage de clics ayant converti |
| **Formule** | (Conversions ÷ Clics) × 100 |
| **Ce que ça mesure** | Efficacité de la Landing Page et de l'offre |
| **Usage diagnostic** | CVR bas = problème de Landing Page, offre ou qualité du trafic |

**Benchmarks CVR par type de campagne :**

| **Type de campagne** | **En dessous de la moyenne** | **Moyen** | **Bon** | **Excellent** |
|-------------------|-------------------|-------------|----------|---------------|
| Search (marque) | <5% | 5-10% | 10-20% | >20% |
| Search (non-marque) | <2% | 2-4% | 4-7% | >7% |
| Shopping | <1% | 1-3% | 3-5% | >5% |
| Display | <0,5% | 0,5-1% | 1-2% | >2% |
| Demand Gen | <1% | 1-2% | 2-4% | >4% |

### Coût par acquisition (CPA)

| **Attribut** | **Détails** |
|---------------|-------------|
| **Définition** | Coût moyen pour acquérir une conversion |
| **Formule** | Coût ÷ Conversions |
| **Ce que ça mesure** | Efficacité de l'acquisition de conversions |
| **Usage diagnostic** | Métrique d'efficacité principale pour le lead gen |

**Relation CPA :**

```
CPA = CPC ÷ CVR
```

Pour baisser le CPA, soit vous baissez le CPC, soit vous augmentez le CVR (ou les deux).

### Valeur de conversion

| **Attribut** | **Détails** |
|---------------|-------------|
| **Définition** | Valeur totale de toutes les conversions |
| **Formule** | Somme des valeurs de conversion |
| **Ce que ça mesure** | Chiffre d'affaires généré |
| **Usage diagnostic** | Métrique principale pour l'ecommerce |

### Retour sur les dépenses publicitaires (ROAS)

| **Attribut** | **Détails** |
|---------------|-------------|
| **Définition** | CA généré par euro dépensé |
| **Formule** | Valeur de conversion ÷ Coût |
| **Ce que ça mesure** | Efficacité du CA |
| **Usage diagnostic** | Métrique d'efficacité principale pour l'ecommerce |

**Formats ROAS :**

| **Format** | **Exemple** | **Signification** |
|------------|-------------|-------------|
| Décimal | 3,5 | 3,50 € de CA par 1 € dépensé |
| Pourcentage | 350% | 3,50 € de CA par 1 € dépensé |
| Ratio | 3,5:1 | 3,50 € de CA par 1 € dépensé |

> 💡 **ROAS ≠ Profit :** Un ROAS de 300% signifie 3 € de CA par 1 € de dépense publicitaire, mais le CA doit couvrir le coût des produits vendus et les autres coûts. Calculez votre ROAS cible à partir de votre économie unitaire. (Voir : [Unit Economics Mental Model](<../../01-strategie/fondamentaux/Fondamentaux - Méthode unit economics.md>))

---

## 4️⃣ Métriques concurrentielles

### Part d'impressions

| **Attribut** | **Détails** |
|---------------|-------------|
| **Définition** | Pourcentage d'impressions éligibles que vous avez reçues |
| **Formule** | Vos impressions ÷ Total des impressions éligibles |
| **Ce que ça mesure** | Couverture du marché |
| **Usage diagnostic** | Marge de croissance et position concurrentielle |

**Types de part d'impressions :**

| **Type** | **Définition** |
|----------|---------------|
| Part d'impressions Search | Part des impressions Search |
| Part d'impressions Display | Part des impressions Display |
| IS en première position absolue | Part de la toute première position |
| IS en haut de page | Part des positions du haut (au-dessus de l'organique) |

### Part d'impressions perdue

| **Type** | **Définition** | **Solution** |
|----------|---------------|---------|
| IS perdu (budget) | Perdu en raison d'un budget insuffisant | Augmenter le budget |
| IS perdu (classement) | Perdu en raison d'un Classement de l'annonce bas | Améliorer le Niveau de qualité ou augmenter les enchères |

**Matrice diagnostic :**

| **Scénario** | **Interprétation** | **Action** |
|--------------|-------------------|-----------|
| IS perdu élevé (budget) | Contraint par le budget | Augmenter le budget ou restreindre le ciblage |
| IS perdu élevé (classement) | Problème de qualité ou d'enchère | Améliorer le QS ou enchérir plus haut |
| Les deux élevés | Contraintes multiples | Traiter le budget d'abord, puis le classement |
| Les deux bas | Diffusion efficace | Opportunité de croissance : augmenter le budget |

### Métriques Search en haut de page

| **Métrique** | **Définition** |
|------------|---------------|
| IS Search en haut de page | % d'impressions dans les positions du haut |
| IS Search en première position absolue | % d'impressions en position n°1 |
| IS Search en haut perdu (budget) | Positions du haut perdues pour budget |
| IS Search en haut perdu (classement) | Positions du haut perdues pour classement |

---

## 5️⃣ Métriques de qualité

### Niveau de qualité

| **Attribut** | **Détails** |
|---------------|-------------|
| **Définition** | Score de 1-10 estimant la qualité de l'annonce |
| **Composantes** | CTR attendu, Pertinence de l'annonce, Expérience Landing Page |
| **Ce que ça mesure** | Qualité et pertinence de l'annonce |
| **Usage diagnostic** | QS bas = CPC plus élevés, positions plus basses |

**Composantes du Niveau de qualité :**

| **Composante** | **Poids** | **Ce qu'elle mesure** |
|---------------|-----------|---------------------|
| CTR attendu | Élevé | CTR historique vs. concurrents |
| Pertinence de l'annonce | Moyen | Alignement texte d'annonce vers mot-clé |
| Landing Page | Moyen | Qualité et pertinence de la page |

**Interprétation du Niveau de qualité :**

| **Score** | **Statut** | **Action** |
|-----------|-----------|-----------|
| 1-4 | Mauvais | Investiguer et corriger en urgence |
| 5-6 | Moyen | Identifier les opportunités d'amélioration |
| 7-8 | Bon | Maintenir, optimisations mineures |
| 9-10 | Excellent | Protéger et répliquer |

> ⚠️ **Le Niveau de qualité est un outil de diagnostic, pas un KPI :** N'optimisez pas directement pour le QS : optimisez pour les composantes (CTR, pertinence, Landing Page). L'amélioration du QS suivra.

### Score d'optimisation

| **Attribut** | **Détails** |
|---------------|-------------|
| **Définition** | Score de 0-100% du potentiel d'optimisation du compte |
| **Formule** | Algorithme pondéré de Google |
| **Ce que ça mesure** | Alignement avec les recommandations de Google |
| **Usage diagnostic** | Identifie les opportunités d'amélioration |

> ⚠️ **Score d'optimisation ≠ Performance :** Un score de 100% signifie que vous avez appliqué les recommandations de Google, pas que votre compte performe bien. Évaluez les recommandations individuellement.

---

## 6️⃣ Métriques spécifiques à la vidéo

### Vues

| **Attribut** | **Détails** |
|---------------|-------------|
| **Définition** | Nombre de vues vidéo (30 secondes ou la vidéo complète si plus courte) |
| **Formule** | Comptage des vues qualifiantes |
| **Ce que ça mesure** | Engagement vidéo |

### Taux de vue

| **Attribut** | **Détails** |
|---------------|-------------|
| **Définition** | Pourcentage d'impressions ayant résulté en vues |
| **Formule** | (Vues ÷ Impressions) × 100 |
| **Ce que ça mesure** | Attrait du créatif vidéo |

**Benchmarks taux de vue :**

| **Format** | **En dessous de la moyenne** | **Moyen** | **Bon** |
|------------|-------------------|-------------|----------|
| In-stream désactivable | <15% | 15-25% | >25% |
| In-feed | <2% | 2-5% | >5% |

### Coût par vue (CPV)

| **Attribut** | **Détails** |
|---------------|-------------|
| **Définition** | Coût moyen par vue vidéo |
| **Formule** | Coût ÷ Vues |
| **Ce que ça mesure** | Efficacité des vues vidéo |

### Métriques de temps de visionnage

| **Métrique** | **Définition** |
|------------|---------------|
| Vidéo regardée à 25% | Comptage des vues atteignant 25% |
| Vidéo regardée à 50% | Comptage des vues atteignant 50% |
| Vidéo regardée à 75% | Comptage des vues atteignant 75% |
| Vidéo regardée à 100% | Comptage des vues complétées |

---

## Diagramme de flux des métriques

Comprendre comment les métriques sont liées aide à diagnostiquer les problèmes :

```
Impressions
    │
    ├── CTR → Clics
    │            │
    │            ├── CPC → Coût
    │            │
    │            └── CVR → Conversions
    │                         │
    │                         └── AOV → CA
    │                                      │
    │                                      └── Marge → Profit
    │
    └── Part d'impressions → Position concurrentielle
```

**Principe diagnostic :** Quand une métrique en aval change, remontez en amont pour trouver la cause racine.

---

## Disponibilité des métriques par type de campagne

| **Métrique** | **Search** | **Shopping** | **Display** | **Vidéo** | **Demand Gen** | **PMax** |
|------------|------------|--------------|-------------|-----------|----------------|----------|
| Impressions | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ |
| Clics | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ |
| CTR | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ |
| CPC | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ |
| Conversions | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ |
| CVR | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ |
| Niveau de qualité | ✅ | ❌ | ❌ | ❌ | ❌ | ❌ |
| Part d'impressions | ✅ | ✅ | ✅ | ❌ | ❌ | ❌ |
| Vues | ❌ | ❌ | ❌ | ✅ | ✅ | Limité |
| CPV | ❌ | ❌ | ❌ | ✅ | ✅ | ❌ |

---

## Erreurs courantes

| **Erreur** | **Problème** | **Solution** |
|-------------|-------------|---------|
| Optimiser uniquement pour le CTR | CTR élevé ≠ conversions élevées | Concentrez-vous sur les métriques de conversion |
| Ignorer le délai de conversion | Juger trop tôt | Attendez la fenêtre d'attribution |
| Comparer différents modèles d'attribution | Comparaison invalide | Utilisez une attribution cohérente |
| ROAS sans contexte d'économie unitaire | La cible ROAS peut être fausse | Calculez le ROAS cible à partir des marges |
| Niveau de qualité comme KPI principal | Courir après le score vs. les résultats | Utilisez le QS uniquement pour le diagnostic |
| Ignorer la part d'impressions | Rater le potentiel de croissance | Surveillez l'IS pour les décisions de budget |

---

## Documents liés

| **Document** | **Relation** |
|--------------|------------------|
| [Goals and KPIs Mental Model](<../../01-strategie/objectifs/Objectifs - Objectifs et KPI.md>) | Méthode : quelles métriques prioriser |
| [Reporting Mental Model](<../../01-strategie/reporting/Reporting - Reporting.md>) | Méthode : comment analyser les métriques |
| [Metric Tree Reference](<Strategie - Arbre de métriques.md>) | Référence : analyse des causes racines via les relations entre métriques |
| [Custom Columns Reference](<../optimisation/Optimisation - Colonnes personnalisées.md>) | Référence : formules de métriques personnalisées |
| [Unit Economics Mental Model](<../../01-strategie/fondamentaux/Fondamentaux - Méthode unit economics.md>) | Fondation : calcul du ROAS/CPA cible |
| [SOP - Revue de performance hebdomadaire](<../../01-strategie/reporting/Reporting - Revue de performance hebdomadaire.md>) | Exécution : analyse hebdomadaire des métriques |
