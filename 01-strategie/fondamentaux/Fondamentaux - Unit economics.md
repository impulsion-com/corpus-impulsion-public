# Unit economics

> **Plateforme :** Stratégie
> **Catégorie :** Fondamentaux
> **Type :** Fondamental
> **Mis à jour :** 2026-05-07

## Objectif

Documente les formules, calculs et seuils de référence pour les unit economics dans les trois secteurs (e-commerce, Lead Gen, SaaS) afin que les praticiens puissent rapidement calculer, valider et surveiller les chiffres qui déterminent la viabilité des campagnes.

---

## Ce que couvre cette fiche / Ce qu'elle ne couvre PAS

**Cette fiche :**

- Liste chaque formule d'unit economics par secteur
- Fournit des exemples de calculs détaillés
- Documente les seuils de référence et les signaux d'alerte
- Inclut un tableau diagnostique pour identifier les problèmes d'unit economics

**Cette fiche ne couvre PAS :**

- Pourquoi les unit economics sont importants stratégiquement (Voir : [Unit Economics Mental Model](<Fondamentaux - Méthode unit economics.md>))
- Les instructions pas à pas pour rassembler les données (Voir : [SOP - Calculer et valider les unit economics](<../analyse/Analyse - Calculer et valider les unit economics.md>))
- La définition d'objectifs ou la sélection de KPIs (Voir : [Goals and KPIs Mental Model](<../objectifs/Objectifs - Objectifs et KPI.md>))
- La sélection de stratégie d'enchères (Voir : [Bid Strategy Selection Reference](<../../03-google-ads/encheres/Enchères - Sélection de stratégie d'enchères.md>))

---

## Aide-mémoire : formules clés par secteur

### E-commerce

| Métrique | Formule | Exemple |
|--------|---------|---------|
| **Marge brute %** | (Revenu - COGS - Livraison - Frais de paiement) / Revenu | (32,28 € - 20,20 € - 6,50 € - 1,00 €) / 32,28 € = 14,2 % |
| **ROAS d'équilibre** | 1 / Marge brute % | 1 / 0,142 = 704 % |
| **ROAS cible** | ROAS d'équilibre / Part du budget d'acquisition | 704 % / 0,75 = 939 % |
| **Marge de contribution** | Revenu - COGS - Livraison - Frais - Dépenses pub | 32,28 € - 20,20 € - 6,50 € - 1,00 € - 4,30 € = 0,28 € |
| **POAS (Profit on Ad Spend)** | Profit brut / Dépenses pub | 4,58 € / 4,30 € = 106 % |

> ⚠️ **Le ROAS d'équilibre est le minimum :** à l'équilibre, vous faites zéro profit. Multipliez par votre part du budget d'acquisition (typiquement 0,50-0,75 du profit brut alloué à l'acquisition) pour obtenir un ROAS cible réaliste.

### Lead Gen

| Métrique | Formule | Exemple |
|--------|---------|---------|
| **CPL cible** | Valeur du deal × Marge bénéficiaire % × Taux lead-to-sale | 10 000 € × 30 % × 20 % = 600 € |
| **CAC cible** | Valeur du deal × Marge bénéficiaire % | 10 000 € × 30 % = 3 000 € |
| **Profit par deal** | Valeur du deal × Marge bénéficiaire % - CAC | 10 000 € × 30 % - 500 € = 2 500 € |
| **ROI par deal** | Profit par deal / CAC | 2 500 € / 500 € = 5x |
| **Volume de leads requis** | Objectif de revenu / (Valeur du deal × Taux lead-to-sale) | 1 M€ / (10 000 € × 20 %) = 50 leads/mois |

> ⚠️ **Le CPL cible est votre plafond d'équilibre :** chaque euro au-dessus de ce CPL réduit le profit. Définissez votre cible opérationnelle en dessous du CPL d'équilibre pour maintenir les marges.

### SaaS

| Métrique | Formule | Exemple |
|--------|---------|---------|
| **ARPU** | MRR / Clients payants actifs | 100 K€ / 1 000 = 100 €/mois |
| **Durée de vie client (mois)** | 1 / Taux de churn mensuel | 1 / 5 % = 20 mois |
| **LTV** | ARPU × Durée de vie client × Marge brute % | 100 € × 20 × 70 % = 1 400 € |
| **CAC max (règle d'or)** | LTV / 3 | 1 400 € / 3 = 467 € |
| **CAC** | Dépenses totales d'acquisition / Nouveaux clients payants | 40 000 € / 100 = 400 € |
| **Ratio LTV:CAC** | LTV / CAC | 1 400 € / 400 € = 3,5:1 |
| **Payback CAC (mois)** | CAC / (ARPU × Marge brute %) | 400 € / (100 € × 70 %) = 5,7 mois |

> ⚠️ **La règle d'or : le ratio LTV:CAC doit être d'au moins 3:1 :** en dessous de 3:1, les coûts d'acquisition grignotent la rentabilité. À 1:1, vous attendez toute la durée de vie du client juste pour atteindre l'équilibre.

---

## E-commerce : calculs détaillés

### Étape 1️⃣ : Calculer la marge brute par commande

| Poste | Source | Exemple |
|-----------|--------|---------|
| Revenu (valeur de commande) | Backend/Shopify | 32,28 € |
| Moins : Coût des marchandises (COGS) | Backend/données fournisseur | -20,20 € |
| Moins : Frais de livraison (payés par l'entreprise) | Transporteur | -6,50 € |
| Moins : Frais de traitement du paiement | Prestataire de paiement | -1,00 € |
| **= Profit brut** | Calculé | **4,58 €** |
| **Marge brute %** | Profit brut / Revenu | **14,2 %** |

### Étape 2️⃣ : Calculer le ROAS d'équilibre

ROAS d'équilibre = 1 / Marge brute %

| Marge brute % | ROAS d'équilibre | Évaluation |
|---------------|-----------------|------------|
| 70 % | 143 % | Excellent : facile à scaler |
| 50 % | 200 % | Bon : cible standard atteignable |
| 30 % | 333 % | Serré : marge de scaling limitée |
| 15 % | 667 % | Difficile : marges très étroites |
| 10 % | 1000 % | Non scalable : problème d'unit economics |

### Étape 3️⃣ : Calculer le ROAS cible

ROAS cible = ROAS d'équilibre / Part du budget d'acquisition

La part du budget d'acquisition est le pourcentage de profit brut que vous allouez à la publicité. Plages courantes :

| Part du budget d'acquisition | Cas d'usage |
|-------------------------|----------|
| 75 % (agressif) | Orientation croissance, produits à haute marge |
| 50 % (équilibré) | Opérations standard, marges modérées |
| 25 % (conservateur) | Marges fines, orientation efficacité |

### Impact de l'AOV sur la scalabilité

| AOV | Marge brute % | Profit brut/commande | ROAS d'équilibre | Scalabilité |
|-----|---------------|-------------------|-----------------|-------------|
| 100 € | 50 % | 50 € | 200 % | Élevée |
| 50 € | 50 % | 25 € | 200 % | Modérée |
| 30 € | 15 % | 4,50 € | 667 % | Très faible |
| 20 € | 10 % | 2,00 € | 1000 % | Non scalable |

---

## Lead Gen : calculs détaillés

### Étape 1️⃣ : Rassembler les données

| Donnée | Source | Exemple |
|-------|--------|---------|
| Valeur moyenne du deal | CRM/données commerciales | 10 000 € |
| Marge bénéficiaire % | Finance/comptabilité | 30 % |
| Taux lead-to-sale | CRM (deals closés / leads générés) | 20 % |
| CAC actuel | Dépenses pub / nouveaux clients acquis | 500 € |

### Étape 2️⃣ : Calculer le CPL et CAC cibles

| Calcul | Formule | Résultat |
|-------------|---------|--------|
| Profit par deal | 10 000 € × 30 % | 3 000 € |
| CPL cible (équilibre) | 3 000 € × 20 % | 600 € |
| CAC cible (équilibre) | 3 000 € | 3 000 € |
| CPL cible opérationnel | CPL cible × 75 % | 450 € |

### Impact du taux lead-to-sale

| Taux lead-to-sale | Valeur de deal 10 K€, marge 30 % | CPL max |
|-------------------|---------------------------|---------|
| 50 % | Équipe commerciale performante | 1 500 € |
| 30 % | Bon process commercial | 900 € |
| 20 % | Moyenne | 600 € |
| 10 % | En dessous de la moyenne | 300 € |
| 5 % | Faible : corriger le process commercial d'abord | 150 € |

> ⚠️ **Des taux lead-to-sale faibles écrasent les CPL cibles :** un taux lead-to-sale de 5 % sur un deal à 10 K€ avec 30 % de marge vous donne seulement 150 € de CPL max : enchérir de manière compétitive est presque impossible à ce niveau.

### Impact de la valeur du deal

| Valeur du deal | Marge 30 %, L2S 20 % | CPL max | CAC max |
|-----------|---------------------|---------|---------|
| 50 000 € | Services haute valeur | 3 000 € | 15 000 € |
| 10 000 € | Services standard | 600 € | 3 000 € |
| 5 000 € | Services petites entreprises | 300 € | 1 500 € |
| 1 000 € | Services petit ticket | 60 € | 300 € |

---

## SaaS : calculs détaillés

### Étape 1️⃣ : Calculer l'ARPU

| Donnée | Source | Exemple |
|-------|--------|---------|
| Revenu Mensuelle Récurrent (MRR) | Système de facturation | 100 000 € |
| Clients payants actifs | Système de facturation | 1 000 |
| **ARPU** | MRR / Clients | **100 €/mois** |

### Étape 2️⃣ : Calculer la durée de vie client

| Taux de churn mensuel | Durée de vie client | Évaluation |
|-------------------|------------------|------------|
| 2 % | 50 mois | Excellent product-market fit |
| 3 % | 33 mois | Forte rétention |
| 5 % | 20 mois | Moyenne |
| 8 % | 12,5 mois | En dessous de la moyenne : problème de rétention |
| 15 % | 6,7 mois | Critique : corriger le produit avant de scaler |

### Étape 3️⃣ : Calculer la LTV et le CAC max

| Métrique | Formule | Exemple |
|--------|---------|---------|
| LTV | ARPU × Durée de vie × Marge | 100 € × 20 × 70 % = 1 400 € |
| CAC max (règle 3:1) | LTV / 3 | 467 € |
| CAC confortable (5:1) | LTV / 5 | 280 € |

### Interprétation du ratio LTV:CAC

| LTV:CAC | Interprétation | Action |
|---------|---------------|--------|
| 5:1+ | Hautement scalable : marge d'investissement | Augmenter les dépenses, tester de nouveaux canaux |
| 3:1 - 5:1 | Sain : scaling durable | Maintenir le rythme, optimiser progressivement |
| 2:1 - 3:1 | Zone d'alerte : marges fines | Réduire le CAC ou améliorer la rétention |
| 1:1 - 2:1 | Zone de danger : à peine à l'équilibre | Mettre le scaling en pause, corriger les fondamentaux |
| En dessous de 1:1 | Perte d'argent sur chaque client | Arrêter les dépenses d'acquisition immédiatement |

### Période de payback du CAC

| Payback CAC (mois) | Évaluation |
|---------------------|------------|
| Moins de 6 | Excellent : payback rapide, trésorerie solide |
| 6-12 | Bon : benchmark (analyse comparative) SaaS standard |
| 12-18 | Préoccupant : pression sur la trésorerie |
| 18+ | Problématique : risque de liquidité |

---

## Tableau diagnostique des signaux d'alerte

Ces symptômes ressemblent à des problèmes Google Ads mais sont en réalité des problèmes d'unit economics.

| Symptôme | Ce que ça semble être | Vraie cause racine | Où chercher |
|---------|-------------------|-------------------|---------------|
| Impossible d'enchérir de manière compétitive | CPC trop élevés, faible part d'impression | CPA/ROAS cibles trop restrictifs à cause de marges faibles | Marge brute %, ROAS d'équilibre |
| Coincé en bas du tunnel uniquement | Pas les moyens pour Display/Video/Demand Gen | Les unit economics ne supportent pas les CPA haut du tunnel | Marge CPL/CAC |
| Sur-optimisation de l'efficacité | Tous les efforts vont à baisser le CPA/monter le ROAS | Pas de marge budgétaire pour la croissance à cause de marges fines | Marge de contribution, profit par deal |
| Forcé de ne cibler qu'en correspondance exacte | Les keywords génériques sont trop chers | Plafond de CPA cible trop bas pour les CPC en requête large | Valeur du deal, taux lead-to-sale |
| Le client dit "Google Ads ne marche pas" | Les campagnes ne sont pas rentables malgré un bon CTR/CVR | Les marges produit ou le process commercial ne supportent pas l'acquisition payante | Audit complet des unit economics |
| Les campagnes "stagnent" après un succès initial | Les premiers succès venaient de la marque/retargeting (reciblage), le trafic générique est non rentable | Le trafic de marque masquait de mauvais unit economics | ROAS non-marque vs ROAS mixte |

---

## Checklist de validation à l'onboarding

Avant d'accepter un nouveau client, validez ces métriques :

### E-commerce

| Vérification | Seuil minimum | Signal d'alerte |
|-------|------------------|----------|
| Marge brute % | 30 %+ | En dessous de 20 % |
| ROAS d'équilibre | En dessous de 500 % | Au-dessus de 700 % |
| AOV | Variable par secteur | En dessous de 20 € avec marges sous 20 % |
| Taux de retour | En dessous de 20 % | Au-dessus de 30 % (érode les marges) |

### Lead Gen

| Vérification | Seuil minimum | Signal d'alerte |
|-------|------------------|----------|
| Taux lead-to-sale | 15 %+ | En dessous de 10 % |
| Valeur moyenne du deal | Supporte un CPL > 50 € | Plafond CPL en dessous de 30 € |
| Temps de réponse commercial | Moins de 2 heures | Plus de 24 heures |
| Process commercial existant | Documenté et suivi | Pas de process, pas de CRM |

### SaaS

| Vérification | Seuil minimum | Signal d'alerte |
|-------|------------------|----------|
| Ratio LTV:CAC | 3:1+ | En dessous de 2:1 |
| Taux de churn mensuel | En dessous de 5 % | Au-dessus de 8 % |
| ARPU | Supporte un CAC > 100 € | En dessous de 20 €/mois avec churn élevé |
| Taux free-to-paid | Au-dessus de 5 % | En dessous de 2 % |

---

## Erreurs courantes

| Erreur | Problème | Solution |
|---------|---------|-----|
| Utiliser le revenu comme référence | Le revenu ignore les COGS, la livraison, les frais | Calculer la marge brute et utiliser des métriques basées sur le profit |
| Ignorer les taux de retour (e-commerce) | Les retours érodent la marge brute après la vente | Intégrer le taux de retour moyen dans les calculs de marge |
| Utiliser un taux lead-to-sale mixte | Masque les différences de qualité par canal | Calculer le taux lead-to-sale par source de trafic |
| Ignorer le taux de churn (SaaS) | Surestime la LTV et le CAC max | Utiliser le churn mensuel réel, pas les estimations annuelles |
| Définir les cibles à l'équilibre | Zéro profit, pas de marge d'erreur | Définir les cibles opérationnelles à 50-75 % du plafond d'équilibre |
| Ne pas revisiter trimestriellement | Les unit economics changent avec l'évolution du business | Recalculer chaque trimestre avec des données fraîches |

---

## Documents liés

| **Document** | **Relation** |
|--------------|------------------|
| [Unit Economics Mental Model](<Fondamentaux - Méthode unit economics.md>) | Cadre stratégique pour comprendre pourquoi ces métriques sont importantes |
| [Goals and KPIs Mental Model](<../objectifs/Objectifs - Objectifs et KPI.md>) | Les unit economics alimentent la définition d'objectifs |
| [Google Ads Success Formula Mental Model](<../../03-google-ads/strategie/Strategie - Formule de succès Google Ads.md>) | Les Unit Economics sont le Pilier 3 de la formule |
| [SOP - Calculer et valider les unit economics](<../analyse/Analyse - Calculer et valider les unit economics.md>) | Procédure pas à pas utilisant cette fiche |
| [KPI Reference](<Fondamentaux - KPI.md>) | Définitions et calculs des métriques in-platform |
