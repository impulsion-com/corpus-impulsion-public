# Répartir le budget entre les campagnes

> **Plateforme :** Google Ads
> **Catégorie :** Enchères
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Phase 1️⃣ : Partir des objectifs

### 1.1 Identifier votre objectif de croissance

Votre objectif de croissance détermine votre budget. À documenter :

| Champ | Valeur |
|-------|-------|
| Objectif de croissance (cible précise) | |
| Type d'objectif de croissance (volume, chiffre d'affaires, profit) | |
| Objectif principal ou secondaire ? | |
| Échéance | |

**Exemples d'objectifs de croissance :**

| Vertical | Exemple d'objectif de croissance |
|----------|-------------------|
| Lead Gen | Générer 100 leads (prospects) qualifiés par mois |
| Ecommerce | Atteindre 100 000 EUR de chiffre d'affaires par mois |
| SaaS | Acquérir 50 nouveaux clients par mois |

### 1.2 Identifier votre objectif d'efficacité

Votre objectif d'efficacité sert de garde-fou. À documenter :

| Champ | Valeur |
|-------|-------|
| Objectif d'efficacité (cible précise) | |
| Métrique d'efficacité (CPA, ROAS, POAS, CAC) | |
| Objectif principal ou secondaire ? | |
| Niveau de seuil de rentabilité pour cette métrique | |

> ⚠️ **Il vous faut à la fois un objectif de croissance et un objectif d'efficacité :** Sans objectif de croissance, les budgets centrés sur l'efficacité risquent la zone de famine. Sans objectif d'efficacité, les budgets centrés sur la croissance risquent le seuil de rentabilité ou la perte.

### 1.3 Confirmer l'équilibre des objectifs

Vérifiez que vos objectifs sont équilibrés :

- [ ] L'objectif de croissance a une cible précise et mesurable
- [ ] L'objectif d'efficacité a une cible précise et mesurable
- [ ] Aucun des deux objectifs ne peut être atteint sans que l'autre serve de garde-fou
- [ ] Les cibles ont été validées par rapport à l'unit economics (ratio profit/acquisition entre 25-75%)

---

## Phase 2️⃣ : Calculer le budget minimum viable

### 2.1 Sélectionner votre méthode de calcul

Choisissez la formule qui correspond à vos KPI de croissance et d'efficacité.

**Génération de leads :**

| KPI principal | Formule | Exemple |
|------------|---------|---------|
| Leads | Leads cibles x CPL cible | 100 leads x 50 EUR = 5 000 EUR/mois |
| Leads qualifiés | Leads qualifiés cibles x CPQL cible | 50 leads qualifiés x 200 EUR = 10 000 EUR/mois |
| Ventes conclues | Ventes conclues cibles x CAC cible | 10 ventes x 750 EUR = 7 500 EUR/mois |

**Ecommerce :**

| KPI principal | Formule | Exemple |
|------------|---------|---------|
| Chiffre d'affaires | Chiffre d'affaires cible / ROAS cible | 100 000 EUR / 400% = 25 000 EUR/mois |
| Transactions | Transactions cibles x CPS cible | 500 transactions x 40 EUR = 20 000 EUR/mois |
| Nouveaux clients | Nouveaux clients cibles x CAC cible | 200 clients x 80 EUR = 16 000 EUR/mois |

**SaaS :**

| KPI principal | Formule | Exemple |
|------------|---------|---------|
| Basé sur LTV:CAC | Étape 1 : LTV = ARPU x durée de vie client. Étape 2 : CAC cible = LTV / ratio LTV:CAC. Étape 3 : Budget = nouveaux clients cibles x CAC cible | LTV = 100 EUR x 24 = 2 400 EUR. CAC = 2 400 / 3 = 800 EUR. 50 clients x 800 = 40 000 EUR/mois |
| Basé sur le délai de récupération | Étape 1 : CAC cible = ARPU x délai de récupération (mois). Étape 2 : Budget = nouveaux clients cibles x CAC cible | CAC = 50 EUR x 12 = 600 EUR. 100 clients x 600 = 60 000 EUR/mois |

### 2.2 Calculer votre MVB

Notez votre calcul :

| Entrée | Valeur |
|-------|-------|
| Cible de croissance | |
| Cible d'efficacité | |
| Formule utilisée | |
| **MVB mensuel** | |

### 2.3 Ajouter une marge budgétaire

Incluez une marge pour l'expérimentation et la flexibilité de scaling :

| Priorité de l'objectif | Pourcentage de marge | Justification |
|-----------|------------------|-----------|
| Centré croissance (principal) | 15-20% | Plus de marge pour l'expérimentation, le scaling et les tests |
| Centré efficacité (principal) | 5-10% | Marge plus faible pour l'optimisation et le maintien du volume |

| Calcul | Valeur |
|-------------|-------|
| MVB sans marge | |
| Pourcentage de marge | |
| Montant de la marge | |
| **MVB avec marge** | |

---

## Phase 3️⃣ : Valider la faisabilité du budget

### 3.1 Validation marché

Le budget peut-il être dépensé compte tenu de la demande réelle ?

| Vérification | Outil | Ce qu'il faut chercher | Validé ? |
|-------|------|-----------------|-------|
| Le volume de recherche soutient les cibles de croissance | Keyword Planner | Le volume de recherche mensuel des mots-clés cibles dépasse le volume de clics requis | [ ] |
| Il reste de la marge de taux d'impressions | Google Ads : métriques IS | L'IS perdu au classement ou au budget indique une marge pour capter plus de trafic | [ ] |
| Saisonnalité prise en compte | Google Trends | Les tendances du trimestre à venir soutiennent (ne contredisent pas) les hypothèses de croissance | [ ] |

Si la demande du marché est insuffisante : réduisez les cibles de croissance ou élargissez le ciblage (nouveaux mots-clés, types de correspondance plus larges, réseaux supplémentaires).

### 3.2 Validation performance

Le budget peut-il être dépensé à votre efficacité cible ?

| Vérification | Outil | Ce qu'il faut chercher | Validé ? |
|-------|------|-----------------|-------|
| Le CPA/ROAS historique soutient les cibles | Données du compte (3-6 derniers mois) | Les cibles d'efficacité sont atteignables au vu des performances passées | [ ] |
| Performance Planner confirme les projections | Performance Planner | Les conversions et le coût projetés s'alignent avec les cibles de croissance à l'efficacité cible | [ ] |
| Rendements décroissants pris en compte | Courbe Performance Planner | Le budget ne pousse pas dans la partie plate de la courbe de réponse | [ ] |

Si les données de performance contredisent les objectifs : revoyez les cibles d'efficacité (ajustez le PAR), améliorez les métriques en amont (taux de conversion, landing page), ou réduisez les objectifs de croissance.

### 3.3 Validation business

Avez-vous les ressources pour soutenir ce budget ?

| Vérification | Question | Validé ? |
|-------|---------|-------|
| Disponibilité du budget | La partie prenante a-t-elle approuvé ce niveau de dépense ? | [ ] |
| Capacité opérationnelle | L'entreprise peut-elle gérer le volume de leads/commandes projeté ? | [ ] |
| Impact sur la trésorerie | Le délai de récupération est-il soutenable compte tenu des réserves de trésorerie actuelles ? | [ ] |
| Répartition par canal | L'allocation Google Ads est-elle appropriée par rapport au budget marketing total ? | [ ] |

Si des contraintes business empêchent le budget : négociez avec les parties prenantes, ajustez les objectifs de croissance, ou étalez l'augmentation du budget sur plusieurs mois.

> 💡 **De nombreuses vérifications de faisabilité recoupent la définition des objectifs :** Si vous les avez déjà validées lors de la création des objectifs, confirmez que rien n'a changé. Si quelque chose a évolué, revalidez.

---

## Phase 4️⃣ : Allouer les budgets quotidiens

### 4.1 Catégoriser les campagnes en paliers

Affectez chaque campagne à l'un des trois paliers selon la performance historique :

| Palier | Description | Allocation budget | Exemples |
|------|-------------|------------------|---------|
| **Palier 1 : Valeurs sûres** | Atteignent régulièrement les cibles de croissance et d'efficacité, performance stable | ~70% du budget total | Campagnes de marque, meilleurs thèmes de mots-clés hors marque, campagnes produits les plus convertissantes |
| **Palier 2 : Opportunités de scaling** | Montrent des signaux précoces positifs, de la marge pour croître (marge d'IS, forte efficacité) | ~20% du budget total | Thèmes hors marque en croissance, audiences prometteuses, campagnes atteignant les limites de budget avec une forte efficacité |
| **Palier 3 : Expérimentation** | Nouvelles approches, nouveaux canaux, expériences | ~10% du budget total | Nouveaux types de campagne, tests en requête large, campagnes de milieu/haut du tunnel, nouveaux segments d'audience |

> 💡 **Si votre objectif principal est la croissance**, décalez l'allocation : ~60% Palier 1, ~25% Palier 2, ~15% Palier 3. **Si l'efficacité est la priorité**, décalez vers : ~75% Palier 1, ~15% Palier 2, ~10% Palier 3.

### 4.2 Calculer les budgets quotidiens par campagne

1. Prenez votre MVB mensuel (avec marge)
2. Divisez par 30,4 pour obtenir le budget quotidien total
3. Répartissez le total quotidien entre les campagnes selon l'allocation par palier
4. Pour chaque campagne, définissez le budget quotidien dans Google Ads

| Campagne | Palier | Allocation mensuelle | Budget quotidien (mensuel / 30,4) |
|----------|------|-------------------|-------------------------------|
| | | | |

### 4.3 Choisir entre budgets individuels ou partagés

| Configuration | Quand l'utiliser |
|--------------|-------------|
| Budgets individuels | Les campagnes ont des objectifs différents, vous avez besoin d'un contrôle serré, vous menez des expériences de campagne, vous utilisez un regroupement basé sur la performance |
| Budgets partagés | Les campagnes partagent la même cible d'efficacité, vous voulez une gestion simplifiée, les campagnes sont en phase d'apprentissage initiale |

> ⚠️ **Les budgets partagés ne sont pas compatibles avec les expériences de campagne :** Si vous prévoyez de lancer des expériences, utilisez des budgets individuels pour ces campagnes.

### 4.4 Définir les budgets dans Google Ads

**Budgets individuels :**

1. Naviguez vers les paramètres de chaque campagne
2. Définissez le budget quotidien au montant calculé
3. Vérifiez que le budget est actif

**Budgets partagés :**

1. Allez dans Outils > Budgets et enchères > Budgets partagés
2. Créez un budget partagé avec le montant quotidien mutualisé
3. Associez les campagnes concernées
4. Vérifiez que toutes les campagnes affichent le budget partagé

### 4.5 Configurer la surveillance du budget

Ajoutez ces colonnes personnalisées à votre vue campagnes :

| Colonne | Objectif |
|--------|---------|
| % du budget quotidien dépensé | (Coût / Budget quotidien) montre le rythme de dépense |
| IS perdu (budget) | Signale les campagnes limitées par le budget |
| IS perdu (classement) | Signale les campagnes limitées par les enchères |

---

### Validation et critères de complétion

Cette SOP est terminée quand :

- [ ] Objectifs de croissance et d'efficacité documentés
- [ ] Budget minimum viable calculé avec la formule appropriée
- [ ] Marge budgétaire incluse
- [ ] Validation marché réussie (volume de recherche, taux d'impressions, saisonnalité)
- [ ] Validation performance réussie (données historiques, Performance Planner)
- [ ] Validation business réussie (approbation des parties prenantes, capacité opérationnelle)
- [ ] Campagnes catégorisées en Palier 1/2/3
- [ ] Budgets quotidiens définis par campagne (individuels ou partagés)
- [ ] Colonnes de suivi budgétaire ajoutées

---

### Passerelle de sortie

Une fois les budgets alloués et les campagnes en cours :

| Délai | Action |
|-----------|--------|
| Semaine 1-2 | Surveillez la dépense quotidienne vs. budget, repérez les campagnes limitées par le budget |
| Semaine 3-4 | Revoyez l'allocation par palier au regard de la performance réelle |
| Mensuel | Revalidez le MVB au regard des résultats réels, ajustez si les objectifs changent |
| Trimestriel | Recalcul complet du budget avec les objectifs et l'unit economics mis à jour |

**En cas de problème :**

| Problème | Rediriger vers |
|-------|----------|
| Le budget ne peut pas être dépensé (sous-dépense) | Revoir la validation marché, vérifier le ciblage, élargir les mots-clés |
| Budget épuisé trop vite | Vérifier l'IS perdu (budget), augmenter le budget ou resserrer les cibles d'efficacité |
| La performance ne correspond pas aux projections | [SOP - Scaler encheres et budgets](<Enchères - Scaler les enchères et budgets.md>) pour ajuster les cibles |
| Une campagne Palier 2 surperforme le Palier 1 | Promouvoir au Palier 1, réallouer le budget en conséquence |

---

### FAQ

**Q : Que faire si je n'ai pas de données historiques pour les calculs de budget ?**

R : Utilisez le Keyword Planner pour les estimations de CPC et de volume de recherche. Multipliez les clics estimés par votre taux de conversion attendu pour projeter les conversions, puis appliquez votre CPA cible/ROAS. Commencez avec un MVB conservateur et augmentez après avoir collecté 2-4 semaines de données.

**Q : Dois-je utiliser le MVB comme budget de départ ou comme plafond ?**

R : Le MVB est votre plancher, pas votre plafond. C'est la dépense minimale nécessaire pour atteindre vos objectifs de croissance. Vous pouvez dépenser plus si la performance le justifie. La marge couvre la latitude pour l'expérimentation et l'optimisation.

**Q : À quelle fréquence dois-je recalculer les budgets ?**

R : Recalculez trimestriellement au minimum, ou dès que les objectifs, l'unit economics ou les conditions de marché changent significativement. Les revues mensuelles doivent vérifier le rythme de dépense et l'allocation par palier, mais ne nécessitent pas de recalcul complet sauf si quelque chose a évolué.

---

### Référence rapide : bibliothèque support

| Document | Type | Utilisé dans |
|----------|------|---------|
| [Budget Allocation Mental Model](<../../01-strategie/analyse/Analyse - Allocation de budget.md>) | Modèle mental | Toutes les phases (vue d'ensemble de la méthode) |
| [Budget Pacing Reference](<Enchères - Rythme de dépense.md>) | Référence | Phase 4 (limites quotidiennes, budgets partagés) |
| [Bid Targets Reference](<Enchères - Cibles d'enchères.md>) | Référence | Phase 2 (cibles d'efficacité pour le calcul du MVB) |
| [Bid Simulator Reference](<Enchères - Simulateur d'enchères.md>) | Référence | Phase 3 (validation via Performance Planner) |
| [Unit Economics Reference](<../../01-strategie/fondamentaux/Fondamentaux - Unit economics.md>) | Référence | Phase 1 (calculs de seuil de rentabilité) |

---

### Procédures liées

| SOP | Relation |
|-----|-------------|
| [SOP - Calculer les objectifs d'encheres](<Enchères - Calculer les objectifs d'enchères.md>) | Amont (fournit les cibles d'efficacité pour le calcul du MVB) |
| [SOP - Selectionner une strategie d'encheres](<Enchères - Sélectionner une stratégie d'enchères.md>) | Amont (détermine la stratégie d'enchères avant la budgétisation) |
| [SOP - Scaler encheres et budgets](<Enchères - Scaler les enchères et budgets.md>) | Aval (scaling au-delà de l'allocation actuelle) |
| [SOP - Configurer les strategies d'encheres portefeuille](<Enchères - Configurer les stratégies d'enchères de portefeuille.md>) | Lié (budgets partagés associés aux stratégies de portefeuille) |

---

### Erreurs fréquentes

| Erreur | Pourquoi ça arrive | Comment l'éviter |
|---------|----------------|--------------|
| Budgets définis sans objectifs | Allocation arbitraire, aucune base de calcul | Compléter la Phase 1 avant tout calcul de budget |
| Sauter la validation de faisabilité | Suppose que le marché peut absorber n'importe quel budget | Exécuter les trois vérifications de validation de la Phase 3 |
| Répartition égale entre les campagnes | Traite toutes les campagnes comme équivalentes | Catégoriser en paliers selon les données de performance |
| Pas de budget d'expérimentation | Tout le budget va aux campagnes existantes | Réserver 10% minimum pour l'expérimentation du Palier 3 |
| Allocation rigide sans ajustement | Configurer et oublier, aucun rééquilibrage | Revoir la performance des paliers chaque mois, réallouer quand les données le justifient |
| Oublier la limite de dépense quotidienne | Panique des parties prenantes quand Google dépense 2x le budget quotidien | Informer les parties prenantes de la limite de dépense quotidienne 2x avant le lancement |
