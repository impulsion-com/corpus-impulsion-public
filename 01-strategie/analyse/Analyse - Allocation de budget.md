# Allocation de budget

> **Plateforme :** Stratégie
> **Catégorie :** Analyse
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Ce document vous aide à déterminer combien dépenser et où allouer le budget pour que chaque campagne dispose de suffisamment de ressources pour atteindre vos objectifs de croissance sans gaspillage.

> ❓ **La question centrale :** De quel budget avez-vous besoin pour atteindre vos objectifs, et comment le répartir entre les campagnes ?

L'allocation de budget n'est pas une estimation au doigt mouillé. C'est une méthode en quatre étapes qui part des objectifs, calcule le budget minimum viable, valide la faisabilité, puis distribue les montants entre les campagnes en fonction de la performance prouvée et du potentiel de croissance.

---

## Ce que ce modèle NE couvre PAS

Ce document NE couvre PAS :

- Les instructions étape par étape pour configurer le budget (Voir : [SOP - Repartir le budget entre les campagnes](<../../03-google-ads/encheres/Enchères - Répartir le budget entre les campagnes.md>))
- La sélection de la stratégie de bidding (Voir : [Bidding Strategy Mental Model](<../../03-google-ads/encheres/Enchères - Stratégie d'enchères.md>))
- Le calcul des cibles d'enchères (Voir : [Bid Targets Reference](<../../03-google-ads/encheres/Enchères - Cibles d'enchères.md>))
- Les mécanismes de limites de dépenses quotidiennes ou de pacing budgétaire (Voir : [Budget Pacing Reference](<../../03-google-ads/encheres/Enchères - Rythme de dépense.md>))

---

## Le document budgétaire en 4 étapes

| Étape | Nom | Objectif | Résultat |
|-------|-----|----------|----------|
| **1️⃣** | **Partir des objectifs** | Définir ce que vous devez accomplir | Cible de croissance + garde-fou d'efficacité |
| **2️⃣** | **Calculer le BMV** | Déterminer le budget minimum viable | Budget mensuel de référence |
| **3️⃣** | **Valider la faisabilité** | Confronter à la réalité du marché, de la performance et des contraintes business | Budget confirmé ou ajusté |
| **4️⃣** | **Allouer les budgets quotidiens** | Répartir entre les campagnes par priorité | Budgets quotidiens par campagne |

Chaque étape s'appuie sur la précédente. Sautez une étape et vos budgets deviennent arbitraires.

---

## Étape 1️⃣ : Partir des objectifs

Vos objectifs déterminent votre budget, pas l'inverse.

### Comment l'orientation de l'objectif change la budgétisation

| Objectif principal | Implication budgétaire | Pourquoi |
|-------------------|----------------------|----------|
| **Orienté croissance** | Budget plus élevé nécessaire | Enchères plus agressives, objectifs d'impression share plus hauts, couverture de campagne plus large |
| **Orienté efficacité** | Budget plus bas, contrôle strict | Enchères conservatrices, focus sur les campagnes éprouvées, périmètre de campagne plus restreint |

### L'exigence du double objectif

Tout calcul de budget nécessite deux données :

1. **Cible de croissance :** le volume dont vous avez besoin (leads (prospects), transactions, chiffre d'affaires, deals conclus)
2. **Cible d'efficacité :** le garde-fou qui empêche les dépenses excessives ou insuffisantes (CPA, ROAS, CAC, POAS)

Sans cible de croissance, vous ne pouvez pas calculer un budget. Sans cible d'efficacité, vous n'avez pas de garde-fou. Vous avez besoin des deux, quel que soit celui qui est prioritaire.

> ⚠️ **Ne fixez jamais de budgets sans objectifs :** Des budgets arbitraires mènent soit à un potentiel de croissance manqué (trop bas), soit à des dépenses gaspillées (trop haut).

---

## Étape 2️⃣ : Calculer le budget minimum viable (BMV)

Le BMV est le niveau de dépense minimum nécessaire pour atteindre vos objectifs de croissance dans le respect de vos contraintes d'efficacité. Il offre suffisamment de marge pour l'optimisation, les tests et le scaling.

### Formules BMV par secteur

**Lead gen :**

| KPI principal | Formule | Exemple |
|--------------|---------|---------|
| Leads | Leads cibles x CPL cible | 100 leads x 50 EUR = 5 000 EUR/mois |
| Leads qualifiés | Leads qualifiés cibles x CPQL cible | 50 leads qualifiés x 200 EUR = 10 000 EUR/mois |
| Deals conclus | Deals conclus cibles x CAC cible | 10 deals conclus x 750 EUR = 7 500 EUR/mois |

**E-commerce :**

| KPI principal | Formule | Exemple |
|--------------|---------|---------|
| Chiffre d'affaires | CA cible / ROAS cible | 100 000 EUR / 4.0 = 25 000 EUR/mois |
| Transactions | Transactions cibles x CPS cible | 500 transactions x 40 EUR = 20 000 EUR/mois |
| Profit (POAS) | Marge brute cible / POAS cible | 50 000 EUR / 2.0 = 25 000 EUR/mois |

**SaaS :**

| KPI principal | Formule | Exemple |
|--------------|---------|---------|
| Inscriptions | Inscriptions cibles x CPA cible | 200 inscriptions x 25 EUR = 5 000 EUR/mois |
| Abonnés | Abonnés cibles x CAC cible | 100 abonnés x 300 EUR = 30 000 EUR/mois |

> 💡 **Le BMV est un point de départ, pas un plafond :** Vous pourriez avoir besoin de plus de budget pour les tests, le scaling saisonnier ou de nouveaux types de campagnes. Mais il vous faut au minimum le BMV pour avoir une chance raisonnable d'atteindre vos objectifs de croissance.

---

## Étape 3️⃣ : Valider la faisabilité

Avant d'engager le budget, effectuez trois vérifications de validation :

### 3a : Validation marché

| Vérification | Ce qu'il faut regarder | Signal d'alerte |
|--------------|----------------------|-----------------|
| Volume de recherche | Keyword Planner, Google Trends | Pas assez de recherches mensuelles pour supporter votre volume cible |
| Marge d'impression share | IS actuel vs. IS perdu (budget) | Déjà à 90%+ d'IS, marge de croissance limitée par le budget |
| Concurrence | Insights sur les enchères, tendances CPC | Les CPC augmentent plus vite que votre cible d'efficacité ne le permet |
| Saisonnalité | Tendances d'année en année | Budget calculé pendant un pic, mais dépenses nécessaires en période creuse |

### 3b : Validation performance

| Vérification | Ce qu'il faut regarder | Signal d'alerte |
|--------------|----------------------|-----------------|
| Stabilité historique du CPA/ROAS | Tendance sur les 3-6 derniers mois | Des fluctuations fortes rendent le BMV peu fiable |
| Tendances du taux de conversion | CR dans le temps par campagne/appareil | Un CR en baisse signifie que le BMV sous-estime le budget requis |
| Taux de clics | Tendances CTR | Un CTR bas signifie plus d'impressions (et de budget) nécessaires par conversion |

### 3c : Validation business

| Vérification | Ce qu'il faut regarder | Signal d'alerte |
|--------------|----------------------|-----------------|
| Disponibilité du budget | Validation par les décideurs | La direction alloue moins que le BMV |
| Capacité opérationnelle | L'entreprise peut-elle absorber le volume de leads/commandes ? | L'équipe commerciale est à capacité, l'entrepôt ne peut pas expédier |
| Rentabilité | L'économie unitaire supporte la cible d'efficacité | Le ratio profit/acquisition est tendu au-delà de 80% |

Si une vérification échoue, ajustez soit l'objectif de croissance, améliorez les métriques en amont (économie unitaire, taux de conversion, offre), ou négociez plus de budget.

---

## Étape 4️⃣ : Allouer les budgets quotidiens

Convertissez le budget mensuel en budgets quotidiens par campagne en utilisant une méthode d'allocation par priorité.

### Le modèle d'allocation par investissement

Pensez à l'allocation de budget comme un investissement :

| Niveau de priorité | Principe d'allocation | Exemples de campagnes |
|-------------------|----------------------|----------------------|
| **Tier 1 : Protéger ce qui fonctionne** | La plus grande part aux campagnes éprouvées | Campagnes Search les plus performantes, campagnes Shopping rentables |
| **Tier 2 : Scaler ce qui est prometteur** | Part modérée aux campagnes montrant du potentiel | Campagnes approchant l'efficacité cible, catégories de produits émergentes |
| **Tier 3 : Tester la suite** | Portion réservée à l'expérimentation | Nouveaux types de campagnes, nouvelles audiences, nouveaux marchés |

### Facteurs d'allocation

| Facteur | Budget plus élevé | Budget plus bas |
|---------|------------------|----------------|
| ROAS/CPA historique | Performance forte et constante | En dessous de la cible ou volatile |
| Volume de conversions | Volume élevé, seuils atteints | En dessous des seuils minimums |
| Impression share perdu (budget) | IS élevé perdu à cause du budget | Capte déjà la majeure partie du trafic disponible |
| Priorité stratégique | Offre phare de l'entreprise | Secondaire ou expérimental |
| Position dans le tunnel | Bas de tunnel (Search, Shopping) | Haut de tunnel (Display, Video) |

### Budgets individuels vs. partagés

| Choisir des budgets individuels quand | Choisir des budgets partagés quand |
|--------------------------------------|-----------------------------------|
| Les campagnes ont des objectifs différents | Les campagnes partagent la même cible d'efficacité |
| Vous avez besoin d'un contrôle strict sur des campagnes spécifiques | Vous voulez que Google optimise l'allocation automatiquement |
| Tests de campagnes en cours | Les campagnes sont en phase d'apprentissage |
| Structure de bucketing basée sur la performance | Simplification de la gestion sur des campagnes similaires |
| Campagnes de marque qui ne peuvent pas risquer un sous-financement | Campagnes aux objectifs similaires où une légère réallocation est acceptable |

---

## Le modèle mental du BMV : le carburant pour un road trip

| Élément du road trip | Équivalent budgétaire |
|---------------------|----------------------|
| **Destination** | Objectif de croissance (où vous voulez aller) |
| **Consommation (efficacité)** | Cible d'efficacité (jusqu'où chaque euro vous emmène) |
| **Carburant nécessaire** | Budget minimum viable |
| **Validation de l'itinéraire** | Vérifications marché, performance, business |
| **Stations-service** | Allocation du budget quotidien entre les campagnes |

---

## Application pratique

### Quand la croissance est prioritaire

Quand l'objectif business est l'expansion de volume, le modèle s'oriente vers une allocation agressive :

- Le calcul du BMV part des objectifs de croissance, avec l'efficacité comme simple garde-fou
- Le budget est dirigé de manière disproportionnée vers les campagnes à fort volume car ces campagnes ont prouvé leur capacité à convertir les dépenses incrémentales
- Des CPA plus élevés ou des ROAS plus bas sont acceptables dans les garde-fous car l'objectif de croissance prime
- 10-15% du budget total est réservé aux tests de nouveaux canaux car les comptes orientés croissance doivent découvrir le prochain levier de scaling

### Quand l'efficacité est prioritaire

Quand l'objectif business est la protection des marges, le modèle s'oriente vers une allocation conservatrice :

- Le calcul du BMV s'ancre sur les cibles d'efficacité appliquées au volume minimum acceptable
- Le budget va d'abord aux campagnes éprouvées car réallouer les budgets des campagnes non prouvées protège la marge
- Les objectifs de croissance servent de plancher, empêchant le compte de descendre en dessous du volume nécessaire au fonctionnement du Stratégies d'enchères intelligentes
- 5-10% du budget est réservé aux expériences d'efficacité car même les comptes conservateurs doivent trouver des segments plus performants

### Quand les budgets sont contraints

Quand les décideurs allouent moins que le BMV, le modèle prédit un déficit. Le document pour naviguer cette situation :

- **Tier 1 uniquement :** limiter l'allocation aux campagnes éprouvées car les budgets contraints ne peuvent pas se permettre l'expérimentation
- **Recalibrer les objectifs :** l'objectif de croissance doit être réduit pour correspondre au budget disponible, car la formule du BMV est bidirectionnelle
- **Présenter l'écart :** la différence entre le BMV, le budget alloué et l'impact projeté sur la croissance quantifie le coût du sous-investissement
- **Chercher des leviers hors budget :** améliorer les taux de conversion, les landing pages ou la force de l'offre réduit le BMV nécessaire pour le même objectif de croissance

> ↪️ **Pour l'exécution étape par étape :** Voir [SOP - Repartir le budget entre les campagnes](<../../03-google-ads/encheres/Enchères - Répartir le budget entre les campagnes.md>)

---

## Seuils quantitatifs de réallocation

Utilisez ces seuils pour identifier les campagnes qui nécessitent des augmentations, des diminutions ou des changements structurels de budget.

### Candidates à l'augmentation

Une campagne est éligible à une augmentation de budget lorsqu'elle remplit TOUS les critères d'une ligne :

| Déclencheur | Seuil | Priorité |
|------------|-------|----------|
| CPA en dessous de la cible + IS perdu à cause du budget | CPA 30%+ en dessous de la cible ET IS perdu (budget) > 10% | **Très haute :** campagne rentable qui laisse de l'argent sur la table |
| ROAS au-dessus de la cible + IS perdu à cause du budget | ROAS 30%+ au-dessus de la cible ET IS perdu (budget) > 10% | **Très haute :** même signal pour les campagnes basées sur la valeur |
| Volume de conversions en hausse + contrainte de budget | Conversions en hausse de 20%+ MoM ET statut "Limité par le budget" | **Haute :** campagne en dynamique qui est freinée |
| Localisation performante + IS limité | CPA de la localisation 20%+ en dessous de la moyenne ET IS de la localisation perdu (budget) > 10% | **Moyenne :** poche d'opportunité géographique |

Le modèle prédit que les augmentations supérieures à 30% en un seul ajustement perturbent l'apprentissage du Stratégies d'enchères intelligentes. Les incréments sûrs sont de 15-20%.

### Candidates à la diminution

Une campagne est éligible à une diminution de budget lorsqu'elle remplit les critères :

| Déclencheur | Seuil | Priorité |
|------------|-------|----------|
| CPA systématiquement au-dessus de la cible | CPA 50%+ au-dessus de la cible pendant 14+ jours consécutifs, malgré l'optimisation des enchères | **Très haute :** brûle du budget sans résultats |
| ROAS systématiquement en dessous de la cible | ROAS 50%+ en dessous de la cible pendant 14+ jours consécutifs | **Très haute :** même signal pour les campagnes basées sur la valeur |
| Zéro conversion avec dépenses suffisantes | 0 conversion ET dépenses > 5x le CPA cible sur 30 jours | **Haute :** aucun signal de conversion |
| Volume de conversions en baisse | Conversions en baisse de 30%+ MoM, non expliqué par la saisonnalité | **Moyenne :** campagne en dégradation |
| IS élevé, efficacité basse | IS > 80% ET CPA au-dessus de la cible | **Moyenne :** domine une enchère non rentable |

Le modèle prédit que des diminutions de 20-30% apportent un soulagement suffisant sans déstabiliser l'apprentissage. Une coupe de budget gagne du temps pendant que le problème sous-jacent est investigué.

### Signaux de conflit de budgets partagés

Quand les budgets partagés créent des problèmes d'allocation, ces signaux indiquent une inadéquation structurelle :

| Conflit | Signal de détection | Ce que ça signifie |
|---------|-------------------|-------------------|
| **Déséquilibre de consommation** | Une campagne consomme > 70% du budget partagé | Une campagne prive les autres de budget |
| **Objectifs mixtes** | Des campagnes sur le même budget partagé optimisent pour des actions de conversion différentes | Des signaux contradictoires rendent l'optimisation impossible |
| **Performances mixtes** | La campagne A a un CPA 50%+ en dessous de la cible tandis que la campagne B a un CPA 50%+ au-dessus de la cible, toutes deux sur le même budget partagé | Une campagne performante subventionne une campagne peu performante |
| **Conflit de stratégie de portefeuille** | Budget partagé combiné avec une stratégie d'enchères de portefeuille où les campagnes ont des niveaux d'efficacité cibles différents | Signaux d'optimisation contradictoires |

Le modèle suggère que ces conflits indiquent que les campagnes n'appartiennent pas au même budget partagé. Le principe sous-jacent : les budgets partagés fonctionnent quand les campagnes partagent le même objectif et des niveaux d'efficacité similaires. Quand ces conditions sont violées, les budgets individuels restaurent le contrôle.

### Signaux de campagne active à dépense nulle

| Scénario | Signal de détection | Sévérité |
|----------|-------------------|----------|
| Campagne activée, 0 dépense, 14+ jours | Statut de la campagne = Activée, coût = 0 pendant 14+ jours | ATTENTION : investiguer |
| Campagne activée, 0 impression, 7+ jours | Statut de la campagne = Activée, impressions = 0 pendant 7+ jours | ÉCHEC : problème probable de configuration |
| Budget défini mais pas de keywords/produits éligibles | La campagne a un budget mais tous les keywords sont en pause, tous les produits sont désapprouvés, ou le ciblage est trop restreint | ÉCHEC : problème de ciblage |

> ↪️ **Pour l'exécution étape par étape de la réallocation :** Voir [SOP - Scaler encheres et budgets](<../../03-google-ads/encheres/Enchères - Scaler les enchères et budgets.md>)

---

## Principes clés

1. **Les objectifs déterminent les budgets, pas l'inverse :** Partez de ce que vous devez accomplir, puis calculez ce que ça coûte.
2. **Le BMV est un plancher, pas une cible :** Un budget en dessous et vous ne pouvez raisonnablement pas espérer atteindre vos objectifs.
3. **Toujours valider avant de s'engager :** La taille du marché, la performance historique et les contraintes business conditionnent tous votre budget.
4. **Protéger les campagnes éprouvées d'abord :** Allouer à ce qui fonctionne, puis scaler ce qui est prometteur, puis tester la suite.
5. **Budgets individuels pour le contrôle, budgets partagés pour l'efficacité :** Adaptez le type de budget à vos besoins de gestion et à la structure de vos campagnes.

---

## Modes d'échec

| Échec | Ce qui se passe | Comment le prévenir |
|-------|----------------|-------------------|
| **Fixer un budget sans objectifs** | Dépenses arbitraires sans moyen de mesurer le succès ou l'échec | Toujours calculer le BMV à partir des cibles de croissance + efficacité avant de fixer un budget |
| **Sauter la validation de faisabilité** | Le BMV semble correct sur le papier mais la taille du marché, la performance historique ou la capacité business ne peuvent pas le supporter | Effectuer les trois vérifications de validation (marché, performance, business) avant d'engager le budget |
| **Protéger les sous-performants** | Budget bloqué dans des campagnes qui ne convertissent plus, privant les campagnes prometteuses | Revoir l'allocation par rapport à la méthode de tiers mensuellement : les campagnes Tier 1 doivent continuer à mériter leur part |
| **Réagir aux fluctuations court terme** | Des changements fréquents de budget relancent l'apprentissage du Stratégies d'enchères intelligentes et empêchent une optimisation stable | Utiliser les seuils de déclenchement de réallocation (fenêtres de 14+ jours) plutôt que la performance quotidienne pour guider les changements |
| **Ignorer les signaux d'impression share** | Les campagnes performantes perdent silencieusement des enchères à cause de contraintes budgétaires, freinant la croissance | Surveiller l'IS perdu (budget) pour les campagnes Tier 1 : si une campagne dépasse les cibles d'efficacité et a un IS élevé perdu à cause du budget, c'est une candidate à l'augmentation |

---

## Documents liés

| Document | Relation |
|----------|-------------|
| [Bidding Strategy Mental Model](<../../03-google-ads/encheres/Enchères - Stratégie d'enchères.md>) | En amont : la stratégie d'enchères détermine les cibles d'efficacité utilisées dans le calcul du BMV |
| [Bid Scaling Mental Model](<../../03-google-ads/encheres/Enchères - Scaling des enchères.md>) | En aval : comment scaler les budgets au-delà du BMV |
| [Budget Pacing Reference](<../../03-google-ads/encheres/Enchères - Rythme de dépense.md>) | Spécifications techniques sur les limites quotidiennes, plafonds mensuels, budgets partagés |
| [Bid Targets Reference](<../../03-google-ads/encheres/Enchères - Cibles d'enchères.md>) | Cibles d'efficacité utilisées dans les formules du BMV |
| [Unit Economics Mental Model](<../fondamentaux/Fondamentaux - Méthode unit economics.md>) | En amont : contraintes de rentabilité qui encadrent les décisions budgétaires |
| [Goals and KPIs Mental Model](<../objectifs/Objectifs - Objectifs et KPI.md>) | En amont : objectifs de croissance et d'efficacité qui pilotent ce document |
| [SOP - Repartir le budget entre les campagnes](<../../03-google-ads/encheres/Enchères - Répartir le budget entre les campagnes.md>) | Exécute ce document étape par étape |
