# Calculer et valider les unit economics

> **Plateforme :** Stratégie
> **Catégorie :** Analyse
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Cette SOP vous guide pour collecter les entrées, calculer les unit economics par vertical, et prendre une décision de viabilité avant d'engager de la dépense publicitaire.

> ❓ **La question clé :** Les unit economics de ce client sont-ils suffisamment solides pour supporter des campagnes Google Ads rentables ?

---

## Ce que cette SOP ne couvre PAS

Cette SOP ne couvre **pas :**

- Expliquer pourquoi les unit economics sont importants (Voir : [Unit Economics Mental Model](<../fondamentaux/Fondamentaux - Méthode unit economics.md>))
- Lister les formules sans contexte (Voir : [Unit Economics Reference](<../fondamentaux/Fondamentaux - Unit economics.md>))
- Définir les objectifs de campagne ou les KPIs (Voir : [SOP - Definir les objectifs et KPIs de campagne](<../../03-google-ads/strategie/Strategie - Définir les objectifs et KPIs de campagne.md>))

## Quand utiliser cette SOP

Lancez cette SOP quand :

- Onboarding d'un nouveau client (avant la configuration des campagnes)
- Les entrées d'unit economics changent (tarification, marges, churn, processus de vente)
- Les campagnes montrent des signaux d'alerte : impossible d'enchérir de façon compétitive, cantonnées au bas du tunnel, suroptimisation pour l'efficacité

---

## Avant de commencer

### Prérequis

- Accès aux données financières back-end (chiffre d'affaires, COGS, marges)
- Données CRM (taux lead-to-sale, valeurs des deals, durée du cycle de vente) pour le Lead Gen
- Données du système de facturation (MRR, taux de churn, nombre de clients) pour le SaaS
- Données de performance Google Ads actuelles (CPA, ROAS, CPC, taux de conversion)

### Documents de référence (à garder ouverts)

| Document | Utilisé pour |
|----------|----------|
| [Unit Economics Reference](<../fondamentaux/Fondamentaux - Unit economics.md>) | Formules et seuils benchmark (analyse comparative) |
| [Unit Economics Mental Model](<../fondamentaux/Fondamentaux - Méthode unit economics.md>) | Signaux d'alerte et causes profondes |

---

## Cadre d'exécution

| Phase | Objectif | Résultat |
|-------|---------|--------|
| **Phase 1️⃣ : Identifier le vertical** | Déterminer quel jeu de calcul utiliser | Classification du vertical |
| **Phase 2️⃣ : Collecter les entrées** | Collecter toutes les métriques requises depuis le back-end/CRM | Feuille de saisie complétée |
| **Phase 3️⃣ : Calculer** | Appliquer les formules | Cibles de seuil de rentabilité, seuils de viabilité |
| **Phase 4️⃣ : Valider et décider** | Comparer aux benchmarks, trancher go/no-go | Document d'évaluation de la viabilité |

---

## Phase 1️⃣ : Identifier le vertical

Déterminez le vertical principal du client. Utilisez le jeu de calcul correspondant.

| Si le client... | Vertical | Jeu de calcul |
|-----------------|----------|----------------|
| Vend des produits physiques ou numériques en ligne | Ecommerce | Marge brute, ROAS de rentabilité, ROAS cible |
| Génère des leads qu'une équipe commerciale doit conclure | Lead Gen | CPL cible, CAC cible, profit par deal |
| Vend des abonnements récurrents | SaaS | ARPU, LTV, CAC max, ratio LTV:CAC |

Pour les entreprises hybrides (ex. SaaS avec des add-ons e-commerce), effectuez d'abord les calculs pour la source de revenus principale, puis la secondaire.

---

## Phase 2️⃣ : Collecter les entrées

### Entrées Ecommerce

Collectez depuis le back-end (Shopify, WooCommerce, etc.) et la finance :

1. **Valeur moyenne de commande (AOV) :** chiffre d'affaires total / nombre total de commandes (90 derniers jours)
2. **Coût des marchandises vendues (COGS) par commande :** coût produit direct par commande moyenne
3. **Coût d'expédition par commande :** coût d'expédition moyen payé par l'entreprise
4. **Frais de traitement du paiement par commande :** frais moyen de la passerelle de paiement
5. **Taux de retour :** pourcentage de commandes retournées (90 derniers jours)
6. **ROAS Google Ads actuel :** valeur de conversion / coût (campagnes hors marque)

### Entrées Lead Gen

Collectez depuis le CRM (HubSpot, Salesforce, etc.) et l'équipe commerciale :

1. **Valeur moyenne d'un deal :** chiffre d'affaires total des deals conclus / nombre de deals (6 derniers mois)
2. **Marge de profit % :** (chiffre d'affaires - coûts de livraison) / chiffre d'affaires
3. **Taux lead-to-sale :** deals conclus / total des leads générés (6 derniers mois)
4. **Durée moyenne du cycle de vente :** jours entre le lead et la conclusion
5. **Temps de réponse de l'équipe commerciale :** temps moyen entre la soumission du lead et le premier contact
6. **CPA Google Ads actuel :** coût / conversions (campagnes hors marque)

### Entrées SaaS

Collectez depuis le système de facturation et l'analytics produit :

1. **Revenu récurrent mensuel (MRR) :** MRR actuel
2. **Clients payants actifs :** nombre actuel
3. **Taux de churn mensuel :** clients perdus / total des clients (moyenne des 6 derniers mois)
4. **Marge brute % :** (chiffre d'affaires - coûts d'infrastructure/livraison) / chiffre d'affaires
5. **CAC actuel :** dépense d'acquisition totale / nouveaux clients payants (6 derniers mois)
6. **Taux de conversion gratuit-vers-payant :** clients payants / inscriptions à l'essai gratuit (si applicable)

---

## Phase 3️⃣ : Calculer

### Calculs Ecommerce

1. **Bénéfice brut par commande** = AOV - COGS - Expédition - Frais de paiement

2. **Marge brute %** = Bénéfice brut / AOV

3. **ROAS de rentabilité** = 1 / Marge brute %

4. **ROAS de rentabilité ajusté** (tenant compte des retours) = ROAS de rentabilité / (1 - Taux de retour)

5. **ROAS cible** = ROAS de rentabilité ajusté / part du budget d'acquisition
   - Utilisez 0,75 pour une approche axée croissance, 0,50 pour équilibrée, 0,25 pour conservatrice

6. **Notez les résultats :**

| Métrique | Valeur |
|--------|-------|
| AOV | |
| Bénéfice brut par commande | |
| Marge brute % | |
| ROAS de rentabilité | |
| ROAS de rentabilité ajusté (avec retours) | |
| ROAS cible (opérationnel) | |
| ROAS Google Ads actuel | |

### Calculs Lead Gen

1. **Profit par deal** = Valeur du deal x Marge de profit %

2. **CPL cible (rentabilité)** = Profit par deal x Taux lead-to-sale

3. **CAC cible (rentabilité)** = Profit par deal

4. **CPL cible opérationnel** = CPL de rentabilité x 0,75 (garder une marge pour le profit)

5. **ROI par deal** = (Profit par deal - CAC actuel) / CAC actuel

6. **Notez les résultats :**

| Métrique | Valeur |
|--------|-------|
| Valeur moyenne d'un deal | |
| Marge de profit % | |
| Profit par deal | |
| Taux lead-to-sale | |
| CPL de rentabilité | |
| CPL cible opérationnel | |
| CPA Google Ads actuel | |

### Calculs SaaS

1. **ARPU** = MRR / Clients payants actifs

2. **Durée de vie client** = 1 / Taux de churn mensuel

3. **LTV** = ARPU x Durée de vie client x Marge brute %

4. **CAC max (règle d'or)** = LTV / 3

5. **Retour sur CAC (mois)** = CAC actuel / (ARPU x Marge brute %)

6. **Ratio LTV:CAC** = LTV / CAC actuel

7. **Notez les résultats :**

| Métrique | Valeur |
|--------|-------|
| ARPU | |
| Taux de churn mensuel | |
| Durée de vie client (mois) | |
| LTV | |
| CAC max (règle 3:1) | |
| CAC actuel | |
| Ratio LTV:CAC | |
| Retour sur CAC (mois) | |

---

## Phase 4️⃣ : Valider et décider

### Étape 1️⃣ : Vérifier par rapport aux seuils

Comparez vos valeurs calculées aux seuils benchmark de la section validation d'onboarding du [Unit Economics Reference](<../fondamentaux/Fondamentaux - Unit economics.md>).

### Étape 2️⃣ : Évaluation de la viabilité

| Résultat | Évaluation | Action |
|--------|-----------|--------|
| Toutes les métriques au-dessus des seuils minimaux | **Go :** lancez la configuration des campagnes | Fixez les cibles à partir des seuils calculés |
| Certaines métriques limites (proches des seuils) | **Go conditionnel :** avancez avec prudence | Fixez des cibles conservatrices, revoyez chaque mois |
| Métriques clés sous les seuils | **No-go :** ne lancez pas Google Ads | Présentez les constats, recommandez de corriger d'abord les fondamentaux |

### Étape 3️⃣ : Si no-go, identifier les causes profondes

Consultez la table de diagnostic des signaux d'alerte dans le [Unit Economics Mental Model](<../fondamentaux/Fondamentaux - Méthode unit economics.md>). Causes profondes fréquentes :

| Vertical | Cause profonde | Recommandation au client |
|----------|-----------|------------------------|
| Ecommerce | Marges brutes inférieures à 20 % | Revoir la tarification, les coûts fournisseurs, la stratégie d'expédition |
| Lead Gen | Taux lead-to-sale inférieur à 10 % | Améliorer le processus de vente, le temps de réponse, la qualification |
| Lead Gen | Valeurs des deals trop basses | Explorer les upsells, les bundles, les services à plus forte valeur |
| SaaS | Churn mensuel supérieur à 8 % | Corriger la rétention produit avant de scaler l'acquisition |
| SaaS | LTV:CAC inférieur à 2:1 | Réduire le CAC ou améliorer la rétention/l'ARPU |

### Étape 4️⃣ : Documenter et partager

Créez un résumé d'une page avec :
- Nom du client, vertical, date de l'analyse
- Entrées clés utilisées (avec sources)
- Seuils calculés (ROAS de rentabilité, CPL cible, CAC max)
- Évaluation de la viabilité (go/conditionnel/no-go)
- Cibles recommandées pour les campagnes Google Ads
- Date de la prochaine revue

---

## Validation et critères de complétion

Cette SOP est terminée quand :

- [ ] Toutes les entrées sont collectées depuis des sources de données vérifiées
- [ ] Les calculs sont réalisés pour le vertical du client
- [ ] Les résultats sont comparés aux seuils benchmark
- [ ] L'évaluation de la viabilité est documentée (go/conditionnel/no-go)
- [ ] Les cibles Google Ads recommandées sont dérivées des calculs
- [ ] Le document de synthèse est partagé avec la partie prenante

---

## Passerelle de sortie

Une fois les unit economics validés :

| Résultat | Prochaine étape |
|---------|-----------|
| **Go** | Continuer vers *SOP : Définir les objectifs et KPIs de campagne* |
| **Go conditionnel** | Continuer vers les objectifs avec des cibles conservatrices, planifier une revue mensuelle |
| **No-go** | Présenter les constats au client, recommander des améliorations business, revoir dans 3-6 mois |

**Si les unit economics changent :**

| Déclencheur | Action |
|---------|--------|
| Changement de tarification | Refaire les calculs de la Phase 3 |
| Nouveau processus ou équipe de vente | Recollecter les entrées Lead Gen, recalculer |
| Le taux de churn évolue significativement | Refaire les calculs SaaS |
| Revue trimestrielle | Revalider toutes les entrées par rapport aux données actuelles |

---

## Erreurs fréquentes

| Erreur | Pourquoi ça arrive | Comment l'éviter |
|---------|----------------|--------------|
| Utiliser le chiffre d'affaires au lieu du bénéfice brut | Le chiffre d'affaires ignore les coûts | Toujours calculer à partir de la marge brute |
| Accepter les marges fournies par le client sans vérification | Les clients surestiment leurs marges | Recouper avec les données back-end |
| Sauter l'ajustement du taux de retour (e-commerce) | Les retours érodent les marges après la vente | Toujours intégrer le taux de retour |
| Utiliser un taux lead-to-sale global | Masque les différences de qualité entre canaux | Calculer par source de trafic |
| Ne pas revoir quand le business change | Des entrées obsolètes mènent à de mauvaises cibles | Planifier un recalcul trimestriel |

---

## Référence rapide : bibliothèque support

| Document | Type | Utilisé dans |
|----------|------|---------|
| [Unit Economics Reference](<../fondamentaux/Fondamentaux - Unit economics.md>) | Référence | Phases 3-4 |
| [Unit Economics Mental Model](<../fondamentaux/Fondamentaux - Méthode unit economics.md>) | Modèle mental | Phase 4 (diagnostic des causes profondes) |

---

## Procédures liées

| SOP | Relation |
|-----|--------------|
| [SOP - Definir les objectifs et KPIs de campagne](<../../03-google-ads/strategie/Strategie - Définir les objectifs et KPIs de campagne.md>) | Aval: utilise les unit economics validés pour fixer les objectifs |
| [SOP - Construire une page de destination a forte conversion](<../../02-site-web/construction/Construction - Construire une LP e-commerce.md>) | Parallèle: la stratégie LP dépend d'unit economics viables |
