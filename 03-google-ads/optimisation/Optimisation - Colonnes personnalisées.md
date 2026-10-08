# Colonnes personnalisées

> **Plateforme :** Google Ads
> **Catégorie :** Optimisation
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Documente les formules de colonnes personnalisées, la syntaxe et les cas d'usage courants pour créer des métriques calculées dans les rapports et tableaux de bord Google Ads.

---

## Ce que couvre cette fiche / Ce qu'elle ne couvre PAS

**Cette fiche :**

- Fournit la syntaxe et les fonctions des formules de colonnes personnalisées
- Liste les recettes de colonnes personnalisées courantes par cas d'usage
- Documente les limitations et règles des formules
- Explique la portée et la disponibilité des colonnes personnalisées

**Cette fiche ne couvre PAS :**

- Définir les métriques standard Google Ads (Voir : [Google Ads Metrics Reference](<Optimisation - Alertes et règles Google Ads.md>))
- Expliquer quels KPI choisir (Voir : [Goals and KPIs Mental Model](<../../01-strategie/objectifs/Objectifs - Objectifs et KPI.md>))

---

## 1️⃣ Syntaxe des formules

### Opérateurs de base

| **Opérateur** | **Fonction** | **Exemple** |
|--------------|--------------|-------------|
| `+` | Addition | `Clicks + Impressions` |
| `-` | Soustraction | `Conversion value - Cost` |
| `*` | Multiplication | `Conversions * 100` |
| `/` | Division | `Cost / Conversions` |
| `( )` | Groupement | `(Conversion value - Cost) / Cost` |

### Métriques disponibles

Les colonnes personnalisées peuvent référencer n'importe quelle métrique standard Google Ads. Les plus courantes :

| **Catégorie** | **Métriques disponibles** |
|--------------|-----------------------|
| **Trafic** | Impressions, Clicks, CTR |
| **Coût** | Cost, Avg. CPC |
| **Conversions** | Conversions, All conv., Conversion value, All conv. value |
| **Concurrence** | Search impr. share, Search lost IS (budget), Search lost IS (rank) |

### Nommage des métriques dans les formules

Les noms des métriques dans les formules diffèrent des noms abrégés affichés dans l'interface Google Ads :

| **Nom affiché (UI)** | **Dans la formule** |
|-----------------------|----------------|
| Conversions | `Conversions` |
| Valeur de conv. | `Conversion value` |
| Toutes les conv. | `All conversions` |
| Valeur toutes conv. | `All conversion value` |
| Coût | `Cost` |
| Clics | `Clicks` |
| CPC moy. | `Avg. CPC` |
| Part d'impr. rech. | `Search impr. share` |
| Part impr. perdue rech. (budget) | `Search lost IS (budget)` |
| Part impr. perdue rech. (classement) | `Search lost IS (rank)` |

> ⚠️ **Certains noms de formule diffèrent de l'UI :** Les métriques de conversion utilisent des noms complets dans les formules (ex. "All conversions" pas "All conv."), mais les métriques concurrentielles restent identiques (ex. "Search impr. share").

---

## 2️⃣ Formules courantes

### Métriques d'efficacité

**Coût pour 1 000 impressions (CPM) :**
```
(Cost / Impressions) * 1000
```

**Revenu par clic :**
```
Conversion value / Clicks
```
Montre la valeur moyenne générée par clic.

**Revenu par impression :**
```
(Conversion value / Impressions) * 1000
```
Revenu pour 1 000 impressions.

**Valeur par conversion :**
```
Conversion value / Conversions
```
Valeur moyenne de commande ou valeur de lead (prospect).

### Métriques de suivi d'objectifs

Suivez la performance par rapport à vos objectifs. Voir [Goals and KPIs Mental Model](<../../01-strategie/objectifs/Objectifs - Objectifs et KPI.md>) pour savoir comment définir des objectifs appropriés.

**Objectifs d'efficacité :**

| **Métrique** | **Formule** | **Objectif** |
|------------|-------------|-------------|
| CPA vs. cible | `(Cost / Conversions) - [cible]` | Écart par rapport au CPA cible (négatif = bat la cible) |
| ROAS vs. cible | `(Conversion value / Cost) - [cible]` | Écart par rapport au ROAS cible (négatif = en dessous de la cible) |

**Objectifs de croissance :**

| **Métrique** | **Formule** | **Objectif** |
|------------|-------------|-------------|
| Conversions vs. cible | `Conversions - [cible]` | Écart par rapport à l'objectif de volume de conversions |
| Valeur de conv. vs. cible | `Conversion value - [cible]` | Écart par rapport à l'objectif de CA |

> ⚠️ **Remplacez `[cible]` par vos valeurs cibles réelles :** Ces formules montrent l'écart entre la performance réelle et vos objectifs.

### Métriques concurrentielles

**Opportunité de part d'impressions :**
```
Impressions / Search impr. share
```
Total des impressions disponibles sur le marché.

**Impressions perdues (total) :**
```
(Impressions / Search impr. share) - Impressions
```
Impressions perdues combinées pour budget et classement.

### Métriques d'opportunité perdue

Utilisez ces formules pour quantifier le coût de ne pas capturer la pleine part d'impressions.

| **Métrique** | **Formule** | **Objectif** |
|------------|-------------|-------------|
| Total impressions éligibles | `Impressions / Search impr. share` | Taille du marché |
| Impressions perdues (budget) | `(Impressions / Search impr. share) * Search lost IS (budget)` | Perte liée au budget |
| Impressions perdues (classement) | `(Impressions / Search impr. share) * Search lost IS (rank)` | Perte liée au classement |
| Clics potentiels | `(Impressions / Search impr. share) * CTR` | Clics à 100% d'IS |
| Clics perdus | `((Impressions / Search impr. share) - Impressions) * CTR` | Clics manqués |
| Conversions potentielles | `((Impressions / Search impr. share) * CTR) * (Conversions / Clicks)` | Conversions à 100% d'IS |
| Conversions perdues | `(((Impressions / Search impr. share) - Impressions) * CTR) * (Conversions / Clicks)` | Conversions manquées |
| CA perdu | `(((Impressions / Search impr. share) - Impressions) * CTR * (Conversions / Clicks)) * (Conversion value / Conversions)` | CA manqué |
| Budget incrémental nécessaire | `((Impressions / Search impr. share) * Search lost IS (budget)) * (Cost / Impressions)` | Estimation de l'écart de budget |

> 💡 **Utilisez le CA perdu pour justifier les augmentations de budget :** Montrez aux parties prenantes le CA laissé sur la table à cause des contraintes de budget.

### Métriques de budget et pacing

Utilisez ces formules pour suivre les dépenses par rapport aux objectifs et projeter les résultats de fin de période.

| **Métrique** | **Formule** | **Objectif** |
|------------|-------------|-------------|
| Taux de dépense quotidien | `Cost / 7` | Dépense quotidienne moyenne (ajustez le diviseur selon la plage) |
| Utilisation du budget | `Cost / [budget] * 100` | Pourcentage de budget utilisé |
| Projection de dépense mensuelle | `(Cost / [jours_écoulés]) * 30` | Projection fin de mois |
| Dépense vs. plan | `Cost - [dépense_planifiée]` | Écart par rapport au plan |
| Jours de budget restants | `([budget] - Cost) / (Cost / [jours_écoulés])` | Estimation de la durée restante |
| Variation de dépense semaine sur semaine | `(Cost - Cost.date_range(prev_7_days)) / Cost.date_range(prev_7_days)` | Tendance de dépense |

> ⚠️ **Remplacez les valeurs entre crochets par des constantes :** Google Ads n'expose pas le budget comme variable de formule. Remplacez `[budget]`, `[jours_écoulés]` et `[dépense_planifiée]` par vos chiffres réels.

---

## 3️⃣ Règles et limitations des formules

### Division par zéro

| **Scénario** | **Résultat** | **Gestion** |
|--------------|------------|--------------|
| Division par zéro | Erreur ou vide | Google gère automatiquement |
| Division par null | Vide | Pas d'erreur, juste pas de données |

> 💡 **Google gère gracieusement la division par zéro :** Si Conversions = 0, le CPA affiche "--" pas une erreur.

### Règles de type de données

| **Règle** | **Détails** |
|----------|-------------|
| Numérique uniquement | Les colonnes personnalisées fonctionnent uniquement avec les métriques numériques |
| Pas de texte | Impossible d'utiliser des champs texte (nom de campagne, etc.) |
| Pas de conditions | Impossible d'utiliser une logique SI/ALORS |
| Pas de recherches | Impossible de référencer d'autres colonnes personnalisées |

### Options de formatage

| **Format** | **Quand utiliser** | **Exemple de sortie** |
|------------|-----------------|-------------------|
| Nombre | Valeurs brutes | 1 234,56 |
| Devise | Valeurs monétaires | 1 234,56 € |
| Pourcentage | Ratios | 12,34% |

### Disponibilité

| **Niveau** | **Colonnes personnalisées disponibles** |
|-----------|------------------------------|
| Compte | Oui |
| Campagne | Oui |
| Ad group | Oui |
| Keyword | Oui |
| Annonce | Oui |
| Terme de recherche | Oui |

---

## 4️⃣ Recettes de colonnes personnalisées par objectif

### Pour l'ecommerce

**Métriques de rentabilité :**

| **Métrique** | **Formule** | **Objectif** |
|------------|-------------|-------------|
| Profit brut | `Conversion value - Cost` | Rentabilité de base |
| Profit après COGS | `(Conversion value * 0.6) - Cost` | Rentabilité réelle (ajustez la marge) |
| POAS (Profit on Ad Spend) | `((Conversion value * 0.6) - Cost) / Cost` | Efficacité basée sur le profit |
| AOV | `Conversion value / Conversions` | Valeur moyenne de commande |
| CA par clic | `Conversion value / Clicks` | Valeur du trafic |
| Vérification ROAS de seuil de rentabilité | `Conversion value / Cost - 2.5` | Distance par rapport au seuil de rentabilité (ajustez la cible) |

> ⚠️ **Ce sont des estimations, pas la rentabilité réelle :** La meilleure approche est d'importer les données de profit réelles en utilisant un outil comme ProfitMetrics. Si ce n'est pas faisable, ces formules peuvent servir d'estimations approximatives, mais prenez-les avec beaucoup de recul : elles supposent des marges uniformes entre produits et ne prennent pas en compte les retours, les frais de livraison ou d'autres variables.

**Métriques par étape du tunnel :**

| **Métrique** | **Formule** | **Objectif** |
|------------|-------------|-------------|
| Ajout au panier | `All_conversions.conversion_action("Add to Cart")` | Ajouts au panier |
| Début de checkout | `All_conversions.conversion_action("Begin Checkout")` | Démarrages de checkout |
| Achats | `All_conversions.conversion_action("Purchase")` | Transactions complétées |

**Ratios de qualité du trafic :**

| **Métrique** | **Formule** | **Objectif** |
|------------|-------------|-------------|
| Taux de panier | `All_conversions.conversion_action("Add to Cart") / Clicks` | Pourcentage clic vers panier |
| Taux de checkout | `All_conversions.conversion_action("Begin Checkout") / All_conversions.conversion_action("Add to Cart")` | Pourcentage panier vers checkout |
| Taux d'achat | `All_conversions.conversion_action("Purchase") / All_conversions.conversion_action("Begin Checkout")` | Pourcentage checkout vers achat |
| Taux de tunnel complet | `All_conversions.conversion_action("Purchase") / Clicks` | Pourcentage clic vers achat |

**Métriques d'abandon :**

| **Métrique** | **Formule** | **Objectif** |
|------------|-------------|-------------|
| Abandon de panier | `1 - (All_conversions.conversion_action("Purchase") / All_conversions.conversion_action("Add to Cart"))` | Pourcentage de paniers perdus |
| Abandon de checkout | `1 - (All_conversions.conversion_action("Purchase") / All_conversions.conversion_action("Begin Checkout"))` | Pourcentage de checkouts perdus |

**Métriques basées sur la valeur :**

| **Métrique** | **Formule** | **Objectif** |
|------------|-------------|-------------|
| Valeur des achats | `All_conversion_value.conversion_action("Purchase")` | CA total des achats |
| ROAS des achats | `All_conversion_value.conversion_action("Purchase") / Cost` | Efficacité du CA |
| CA par session | `All_conversion_value.conversion_action("Purchase") / Clicks` | Valeur de session |
| CA par panier | `All_conversion_value.conversion_action("Purchase") / All_conversions.conversion_action("Add to Cart")` | Potentiel de valeur du panier |

> 💡 **Quand utiliser ces formules :** La valeur des achats et le ROAS des achats ne sont pertinents que quand vous optimisez vers des micro-conversions (comme l'ajout au panier) et que les données de valeur de macro conversion ne sont pas dans vos colonnes de conversion standard. Si vous optimisez directement vers les achats, utilisez les colonnes standard Valeur de conversion et ROAS.

### Pour la génération de leads

**Métriques par étape du tunnel :**

| **Métrique** | **Formule** | **Objectif** |
|------------|-------------|-------------|
| Leads bruts | `All_conversions.conversion_action("Form Submission")` | Total des soumissions de formulaire |
| Nombre de MQL | `All_conversions.conversion_action("MQL")` | Leads qualifiés marketing |
| Nombre de SQL | `All_conversions.conversion_action("SQL")` | Leads qualifiés vente |
| Deals signés | `All_conversions.conversion_action("Closed Deal")` | Clients gagnés |

**Métriques de ratios du tunnel :**

| **Métrique** | **Formule** | **Objectif** |
|------------|-------------|-------------|
| Taux de MQL | `All_conversions.conversion_action("MQL") / All_conversions.conversion_action("Form Submission")` | Pourcentage lead vers MQL |
| Taux de SQL | `All_conversions.conversion_action("SQL") / All_conversions.conversion_action("MQL")` | Pourcentage MQL vers SQL |
| Taux de closing | `All_conversions.conversion_action("Closed Deal") / All_conversions.conversion_action("SQL")` | Pourcentage SQL vers signature |
| Taux de tunnel complet | `All_conversions.conversion_action("Closed Deal") / All_conversions.conversion_action("Form Submission")` | Pourcentage lead vers signature |

**Métriques de coût par étape :**

| **Métrique** | **Formule** | **Objectif** |
|------------|-------------|-------------|
| Coût par lead | `Cost / All_conversions.conversion_action("Form Submission")` | Coût d'acquisition de lead |
| Coût par MQL | `Cost / All_conversions.conversion_action("MQL")` | Coût d'acquisition de MQL |
| Coût par SQL | `Cost / All_conversions.conversion_action("SQL")` | Coût d'acquisition de SQL |
| Coût par deal signé | `Cost / All_conversions.conversion_action("Closed Deal")` | Vrai CAC |

**Métriques basées sur la valeur :**

| **Métrique** | **Formule** | **Objectif** |
|------------|-------------|-------------|
| Valeur des deals signés | `All_conversion_value.conversion_action("Closed Deal")` | CA total des deals signés |
| ROAS des deals signés | `All_conversion_value.conversion_action("Closed Deal") / Cost` | Efficacité du CA sur les deals signés |
| Valeur moyenne des deals | `All_conversion_value.conversion_action("Closed Deal") / All_conversions.conversion_action("Closed Deal")` | Taille moyenne des deals |

> ⚠️ **Nécessite l'import de conversions hors ligne :** Remplacez "Form Submission", "MQL", "SQL" et "Closed Deal" par vos noms réels d'actions de conversion. Les données par étape du tunnel nécessitent le suivi des conversions hors ligne.

### Pour le SaaS

**Métriques par étape du tunnel :**

| **Métrique** | **Formule** | **Objectif** |
|------------|-------------|-------------|
| Inscriptions | `All_conversions.conversion_action("Signup")` | Créations de compte |
| Démarrages d'essai | `All_conversions.conversion_action("Trial Start")` | Activations d'essai |
| Conversions payantes | `All_conversions.conversion_action("Paid Subscription")` | Clients payants |

**Métriques de ratios du tunnel :**

| **Métrique** | **Formule** | **Objectif** |
|------------|-------------|-------------|
| Taux inscription vers essai | `All_conversions.conversion_action("Trial Start") / All_conversions.conversion_action("Signup")` | Taux d'activation |
| Taux essai vers payant | `All_conversions.conversion_action("Paid Subscription") / All_conversions.conversion_action("Trial Start")` | Taux de conversion |
| Taux de tunnel complet | `All_conversions.conversion_action("Paid Subscription") / All_conversions.conversion_action("Signup")` | Pourcentage inscription vers payant |

**Métriques de coût par étape :**

| **Métrique** | **Formule** | **Objectif** |
|------------|-------------|-------------|
| Coût par inscription | `Cost / All_conversions.conversion_action("Signup")` | Coût d'acquisition d'inscription |
| Coût par essai | `Cost / All_conversions.conversion_action("Trial Start")` | Coût d'acquisition d'essai |
| Coût par payant | `Cost / All_conversions.conversion_action("Paid Subscription")` | Vrai CAC |

**Métriques basées sur la valeur :**

| **Métrique** | **Formule** | **Objectif** |
|------------|-------------|-------------|
| Valeur des abonnements | `All_conversion_value.conversion_action("Paid Subscription")` | CA total des abonnements |
| ROAS des abonnements | `All_conversion_value.conversion_action("Paid Subscription") / Cost` | Efficacité du CA sur les conversions payantes |
| Valeur moyenne d'abonnement | `All_conversion_value.conversion_action("Paid Subscription") / All_conversions.conversion_action("Paid Subscription")` | Premier paiement moyen |
| LTV:CAC estimé | `([LTV] * [taux_essai_vers_payant]) / (Cost / All_conversions.conversion_action("Trial Start"))` | Ratio d'économie unitaire |

> ⚠️ **Remplacez les valeurs entre crochets par des constantes :** Remplacez `[LTV]` et `[taux_essai_vers_payant]` par vos valeurs réelles. Remplacez "Signup", "Trial Start" et "Paid Subscription" par vos noms réels d'actions de conversion.

### Pour l'analyse concurrentielle

| **Métrique** | **Formule** | **Objectif** |
|------------|-------------|-------------|
| Taille du marché (impressions) | `Impressions / Search impr. share` | Total des impressions disponibles |
| Volume d'impressions perdues | `(Impressions / Search impr. share) - Impressions` | Impressions que vous manquez |
| Proxy de part de voix | `Clicks / (Clicks / Search impr. share)` | Part de clics estimée |

> ⚠️ **Prenez les métriques de taille de marché avec recul :** La part d'impressions ne mesure que les impressions que vos annonces ont reçues par rapport au total des impressions que vos annonces pourraient obtenir en fonction de votre ciblage de keywords actuel. Si vous ajoutez plus de keywords ou changez de types de correspondance (ex. de phrase à requête large), votre "marché" devient automatiquement plus grand. Ces métriques reflètent votre portée au sein de votre ciblage, pas la demande totale du marché.

---

## 5️⃣ Créer des colonnes personnalisées

### Étapes de création

1. Allez dans la vue Campagnes
2. Cliquez "Colonnes" > "Modifier les colonnes"
3. Cliquez "Colonnes personnalisées" > "+ Colonne personnalisée"
4. Saisissez le nom, la description, la formule
5. Sélectionnez le format (nombre, devise, pourcentage)
6. Enregistrez et ajoutez à la vue

### Conventions de nommage

| **Format** | **Exemple** | **Justification** |
|------------|-------------|---------------|
| `[Métrique] (perso)` | `Profit (perso)` | Distingue du standard |
| `[Métrique] vs. Cible` | `CPA vs. Cible` | Objectif clair |
| `[Métrique] avec [ajustement]` | `Profit avec COGS` | Montre ce qui est inclus |

### Conseils d'organisation

| **Conseil** | **Détails** |
|---------|-------------|
| Groupez les colonnes liées | Créez profit, marge, ROI ensemble |
| Documentez les formules | Gardez une feuille de référence de toutes les colonnes personnalisées |
| Utilisez les descriptions | Google Ads a un champ description : utilisez-le |
| Testez avant de partager | Vérifiez les calculs sur des points de données connus |

---

## 6️⃣ Dépannage

### Problèmes courants

| **Problème** | **Cause** | **Solution** |
|-----------|-----------|---------|
| La colonne affiche "--" | Division par zéro ou pas de données | Comportement attendu quand le dénominateur est 0 |
| Les chiffres semblent faux | Décalage de nommage de métrique | Vérifiez l'orthographe exacte du nom de la métrique |
| La colonne n'apparaît pas | Pas ajoutée à la vue courante | Ajoutez la colonne via "Modifier les colonnes" |
| Les valeurs diffèrent de l'attendu | Différences de modèle d'attribution | Assurez-vous d'utiliser les mêmes actions de conversion |

### Approche de validation

1. Créez la colonne personnalisée
2. Trouvez une campagne avec des valeurs connues
3. Calculez le résultat attendu manuellement
4. Comparez avec la sortie de la colonne personnalisée
5. Ajustez la formule si nécessaire

---

## Guide de décision : quelle colonne personnalisée ?

```
Que devez-vous mesurer ?
│
├─ Rentabilité ?
│   ├─ Basique : Profit = Conversion value - Cost
│   └─ Réelle : POAS = ((Conversion value * marge) - Cost) / Cost
│
├─ Efficacité vs. cible ?
│   ├─ Cible CPA : (Cost / Conversions) - cible
│   └─ Cible ROAS : (Conversion value / Cost) - cible
│
├─ Valeur du trafic ?
│   ├─ Par clic : Conversion value / Clicks
│   └─ Par impression : (Conversion value / Impressions) * 1000
│
├─ Qualité du tunnel ?
│   ├─ Lead Gen : Taux MQL, taux SQL, taux de closing, coût par étape
│   ├─ SaaS : Inscription vers essai, essai vers payant, coût par étape
│   └─ Ecommerce : Taux de panier, taux de checkout, taux d'abandon
│
├─ Pacing du budget ?
│   ├─ Actuel : Utilisation du budget = Cost / [budget] * 100
│   ├─ Projeté : (Cost / [jours_écoulés]) * 30
│   └─ Durée : ([budget] - Cost) / (Cost / [jours_écoulés])
│
├─ Opportunité perdue ?
│   ├─ Volume : Impressions perdues, clics perdus
│   ├─ Conversions : Conversions perdues au CVR actuel
│   └─ CA : CA perdu basé sur les conversions perdues
│
└─ Position concurrentielle ?
    ├─ Taille du marché : Impressions / Search impr. share
    └─ Volume perdu : (Impressions / Search impr. share) - Impressions
```

---

## Documents liés

| **Document** | **Relation** |
|--------------|------------------|
| [Google Ads Metrics Reference](<Optimisation - Alertes et règles Google Ads.md>) | Fondation : définitions des métriques standard |
| [Goals and KPIs Mental Model](<../../01-strategie/objectifs/Objectifs - Objectifs et KPI.md>) | Méthode : quelles métriques comptent |
| [Reporting Mental Model](<../../01-strategie/reporting/Reporting - Reporting.md>) | Méthode : approche du reporting |
| [Unit Economics Mental Model](<../../01-strategie/fondamentaux/Fondamentaux - Méthode unit economics.md>) | Fondation : données de marge et COGS en entrée |
