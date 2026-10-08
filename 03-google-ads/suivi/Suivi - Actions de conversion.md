# Actions de conversion

> **Plateforme :** Google Ads
> **Catégorie :** Suivi
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Documente les options de configuration pour chaque action de conversion Google Ads : macro vs. micro, primary vs. secondary, modèles d'attribution, fenêtres de conversion et méthodes de comptage.

---

## Ce que couvre cette fiche / Ce qu'elle ne couvre PAS

**Cette fiche :**

- Définit les types de conversions macro et micro avec les critères de classification
- Explique les rôles des actions de conversion primary vs. secondary
- Documente les modèles d'attribution, les fenêtres de conversion et les méthodes de comptage
- Fournit les paramètres recommandés par secteur d'activité

**Cette fiche ne couvre PAS :**

- Expliquer quelles techniques de tracking (suivi des conversions/évènements) implémenter (Voir : [Measurement Maturity Mental Model](<../../01-strategie/reporting/Reporting - Maturité de la mesure.md>))
- Fournir les étapes d'installation du pixel (Voir : [SOP - Configurer le suivi des conversions Google Ads](<Suivi - Configurer le suivi des conversions Google Ads.md>))
- Couvrir les seuils de volume de conversions minimum (Voir : [Conversion Volume Thresholds Reference](<Suivi - Seuils de volume de conversions.md>))

---

## Aide-mémoire : paramètres des actions de conversion

| **Paramètre** | **Options** | **Défaut** | **Impact** |
|-------------|------------|-------------|-----------|
| **Catégorie d'objectif** | Achat, Lead, Inscription, Page vue, Autre, etc. | Dépend du type d'action | Détermine le regroupement pour les objectifs du compte/de la campagne |
| **Optimisation** | Primary / Secondary | Primary | Primary = utilisé pour la stratégie d'enchères + reporting. Secondary = reporting uniquement |
| **Attribution** | Data-Driven (DDA) / Last Click (LCA) | Data-Driven | Comment le crédit est distribué entre les points de contact |
| **Fenêtre clic** | 1-90 jours | 30 jours | Durée après un clic pendant laquelle une conversion peut être attribuée |
| **Fenêtre vue** | 1-30 jours | 1 jour | Durée après une vue d'annonce (sans clic) pendant laquelle une conversion peut être attribuée |
| **Fenêtre vue engagée** | 1-30 jours | 3 jours | Durée après une vue vidéo de 10 secondes pendant laquelle une conversion peut être attribuée |
| **Comptage** | Every / One | Every | Compter toutes les conversions ou une seule par interaction |
| **Valeur** | Statique / Dynamique | Variable | Valeur monétaire assignée à chaque conversion |

---

## 1️⃣ Conversions macro vs. micro

### Définitions

| | **Conversions macro** | **Conversions micro** |
|--|----------------------|----------------------|
| **Définition** | Actions principales directement liées aux objectifs business et au chiffre d'affaires | Actions secondaires qui indiquent une progression vers les conversions macro |
| **Rôle** | Mesurer le succès des campagnes | Fournir des insights sur le tunnel et servir de signaux de secours |
| **Optimisation typique** | Action de conversion primary | Action de conversion secondary |

### Exemples de conversions macro par secteur

| Secteur | Conversions macro |
|----------|-------------------|
| **Ecommerce** | Achat, confirmation de réservation |
| **Lead Gen** | Soumission de formulaire, appel téléphonique, prise de rendez-vous |
| **SaaS** | Inscription, conversion gratuit-vers-payant, achat d'abonnement |

### Exemples de conversions micro par secteur

| Secteur | Conversions micro |
|----------|-------------------|
| **Ecommerce** | Vue de page produit, ajout au panier, début de checkout, ajout infos livraison, ajout infos paiement |
| **Lead Gen** | Téléchargement de lead magnet, vue vidéo, vue de page à haute valeur, utilisation de calculateur |
| **SaaS** | Activation de fonctionnalité, complétion d'étape d'onboarding, visite de documentation |

### Quand les conversions micro deviennent primary

Utilisez les conversions micro comme action de conversion primary uniquement quand :

| Condition | Exemple | Action |
|-----------|---------|--------|
| L'objectif de la campagne n'est pas lié au chiffre d'affaires | Campagne haut du tunnel optimisant pour les téléchargements de livre blanc | Définir la conversion micro comme primary au niveau de la campagne |
| Volume insuffisant de conversions macro | La campagne a <30 conversions macro/mois | Envisager d'abord la consolidation et les stratégies de portfolio, la conversion micro ensuite |
| Le cycle de conversion dépasse la fenêtre cookie de 90 jours | B2B entreprise avec un cycle de vente de 6 mois | Optimiser pour une étape milieu du tunnel (lead (prospect) qualifié au lieu de deal signé) |
| Test expérimental | Tester si un signal plus volumique améliore Stratégies d'enchères intelligentes | Lancer une expérience 50/50 avant de basculer complètement |

> ⚠️ **Épuisez les tactiques de consolidation avant de basculer sur les conversions micro :** Consolidez les campagnes, utilisez des stratégies d'enchères portfolio, ou supprimez les objectifs d'enchères d'abord. Les conversions micro sont un proxy du chiffre d'affaires, pas un remplacement. (Voir : [Conversion Volume Thresholds Reference](<Suivi - Seuils de volume de conversions.md>))

### Métriques vaniteuses à éviter

Ne trackez pas ces éléments comme actions de conversion :

- Visites de qualité ou "sessions engagées"
- Seuils de temps passé sur le site
- Améliorations du taux de rebond
- Pages vues génériques sans valeur business
- Événements de profondeur de scroll

**Le test :** Cette métrique génère-t-elle directement ou indirectement du chiffre d'affaires ? Si non, c'est une métrique vaniteuse.

---

## 2️⃣ Actions de conversion primary vs. secondary

### Fonctionnement

| | **Primary** | **Secondary** |
|--|-------------|---------------|
| **Reporté dans** | Colonnes Conversions (Conversions, CPA, Taux de conv., Valeur de conv., ROAS) | Colonnes Toutes les conversions uniquement |
| **Utilisé par Stratégies d'enchères intelligentes** | Oui | Non |
| **Affecte les décisions d'optimisation** | Oui (analyse N-gram, ajustements d'enchères) | Non (observation uniquement) |
| **Défaut pour les nouvelles actions** | Oui | Doit être changé manuellement |

### Comment voir les conversions secondary

Deux méthodes :

1. **Méthode segment :** Ajoutez les colonnes "Toutes les conversions" aux rapports, puis segmentez par Action de conversion
2. **Méthode colonnes personnalisées (recommandée) :** Créez des colonnes personnalisées filtrant "Toutes les conversions" par nom d'action de conversion spécifique. Permet des configurations de colonnes persistantes et des calculs personnalisés (ex. : ratio ajout au panier / achat)

### Guide de classification

| Type d'action | Optimisation recommandée | Justification |
|-------------|------------------------|-----------|
| Conversions macro (achats, leads, inscriptions) | Primary | Directement liées au résultat business |
| Conversions micro (ajout au panier, pages vues) | Secondary | Utilisées pour les insights et l'analyse du tunnel |
| Tracking de secours/redondant (import GA4 en plus de GACT) | Secondary | Évite le double comptage dans la stratégie d'enchères |
| Imports OCT (leads qualifiés, deals signés) | Primary | Signal de meilleure qualité que la soumission de formulaire |
| Conversions basées sur le profit (ProfitMetrics, import de profit personnalisé) | Primary | Permet la stratégie d'enchères basée sur la valeur sur les marges |

---

## 3️⃣ Objectifs par défaut du compte vs. objectifs spécifiques à la campagne

### Comment fonctionne l'assignation des objectifs

Google Ads utilise un système d'objectifs à deux niveaux :

1. **Objectifs par défaut du compte :** Appliqués à toutes les campagnes par défaut. Définis dans Objectifs > Résumé des conversions.
2. **Objectifs spécifiques à la campagne :** Remplacent les objectifs par défaut du compte pour des campagnes individuelles. Définis dans Paramètres de campagne > Objectifs de conversion.

Au sein de chaque catégorie d'objectif (Achat, Lead, Inscription, etc.), seules les actions de conversion primary sont utilisées pour la stratégie d'enchères et le reporting.

### Quand utiliser les objectifs spécifiques à la campagne

| Scénario | Exemple |
|----------|---------|
| Test A/B d'actions de conversion | Tester une action primary basée sur le CA vs. basée sur le profit |
| Campagnes haut du tunnel avec objectifs différents | Campagne Display optimisant pour les téléchargements de livre blanc au lieu des achats |
| OCT vs. GACT pour différents types de campagnes | Le bas du tunnel utilise l'import OCT, le haut du tunnel utilise le pixel GACT |
| Campagnes à faible volume nécessitant une conversion micro | Une campagne bascule sur l'ajout au panier tandis que les autres restent sur l'achat |

> ⚠️ **Vérifiez trois fois vos paramètres d'objectifs :** Les objectifs mal configurés sont l'une des erreurs de configuration de compte les plus courantes. Après tout changement, vérifiez : (1) les catégories d'objectifs par défaut du compte, (2) les actions de conversion primary au sein de chaque catégorie, (3) les overrides d'objectifs au niveau campagne.

---

## 4️⃣ Modèles d'attribution

Google Ads supporte actuellement deux modèles d'attribution :

| Modèle | Comment le crédit est assigné | Idéal pour |
|-------|----------------------|----------|
| **Data-Driven Attribution (DDA)** | Le machine learning distribue le crédit entre tous les points de contact Google Ads en fonction de leur contribution à la conversion | 99% des comptes (défaut recommandé) |
| **Last Click Attribution (LCA)** | 100% du crédit à la dernière interaction publicitaire avant la conversion | Comptes historiques, tunnels simples à un seul point de contact |

> 💡 **Utilisez DDA pour toutes les actions de conversion :** Il fournit une vue plus précise de la contribution des campagnes, ad groups et keywords aux conversions sur l'ensemble du tunnel. LCA sous-crédite systématiquement les interactions haut et milieu du tunnel.

### Portée de l'attribution

| Méthode de tracking | Portée de l'attribution |
|----------------|-------------------|
| Pixel Google Ads Conversion Tracking (GACT) | Interactions payantes Google Ads uniquement |
| Import d'événement GA4 (défaut) | Canaux payants Google uniquement |
| Import d'événement GA4 (paramètre cross-channel) | Canaux payants + organiques Google |

**Si vous utilisez les imports GA4 comme primary :** Envisagez d'activer le paramètre d'attribution "canaux payants et organiques" dans GA4 pour une vue plus équilibrée. Cela réduit la sur-attribution aux clics payants en incluant les points de contact organiques.

### Sur-attribution : l'arme à double tranchant

| | **Avantage** | **Inconvénient** |
|--|---------|---------|
| **Effet** | Plus de signaux de conversion pour Stratégies d'enchères intelligentes | Métriques CPA/ROAS gonflées |
| **Impact** | Meilleur apprentissage de l'algorithme, performance plus constante | Risque de surenchère si les objectifs ne sont pas ajustés |
| **Action** | Exploiter la richesse des données en entrée | Recalibrer les objectifs d'efficacité avec les données backend ou une attribution tierce |

**Formule de recalibration :** Si Google Ads rapporte 300% de ROAS mais que le backend montre 220% de ROAS, définissez votre ROAS cible à ~410% dans Google Ads (300/220 x 300) pour atteindre une performance réelle de 300%.

---

## 5️⃣ Fenêtres de conversion

### Types de fenêtres

| Type de fenêtre | Ce qu'elle suit | Défaut | Max | Ajustable par |
|-------------|---------------|---------|-----|--------------|
| **Clic** | Conversions après un clic sur l'annonce | 30 jours | 90 jours | Incréments d'1 jour |
| **Vue** | Conversions après une vue d'annonce (sans clic) | 1 jour | 30 jours | Incréments d'1 jour |
| **Vue engagée** | Conversions après une vue vidéo de 10+ secondes | 3 jours | 30 jours | Incréments d'1 jour |

### Choisir la bonne durée de fenêtre

| Cycle de vente | Fenêtre clic recommandée | Secteurs |
|-------------|--------------------------------|-----------|
| Même jour à 3 jours | 7-14 jours | Ecommerce (impulsif), services locaux |
| 1-2 semaines | 14-30 jours | Ecommerce (réfléchi), Lead Gen B2C |
| 2-4 semaines | 30-60 jours | Services B2B, essais SaaS |
| 1-3 mois | 60-90 jours | B2B entreprise, produits de luxe, immobilier |

**Comment déterminer votre fenêtre :**
1. Ouvrez Objectifs > Mesure > Attribution > Métriques de chemin
2. Vérifiez le "Nombre moyen de jours avant conversion"
3. Définissez votre fenêtre clic à au moins 2x le délai moyen de conversion
4. Pour les fenêtres vue et vue engagée, gardez des durées courtes (1-7 jours) sauf si vous avez des besoins d'attribution haut du tunnel spécifiques

### Fenêtres courtes vs. longues

| | **Fenêtre courte** | **Fenêtre longue** |
|--|-------------------|-------------------|
| **Avantage** | Réduit la sur-attribution, se concentre sur les convertisseurs rapides | Capture les conversions retardées, meilleur pour les cycles de vente longs |
| **Inconvénient** | Rate les convertisseurs tardifs, sous-rapporte l'impact réel | Sur-attribue aux interactions anciennes, gonfle les métriques |
| **Idéal pour** | Ecommerce avec cycles d'achat rapides | B2B, luxe, achats à considération complexe |

### Tester les changements de fenêtre en toute sécurité

Dupliquez votre action de conversion primary, définissez le doublon comme primary avec la nouvelle durée de fenêtre, et comparez les résultats sur 1-2 cycles de conversion. Cela vous permet d'évaluer l'impact sans perturber Stratégies d'enchères intelligentes sur votre action actuelle.

> ⚠️ **Méfiez-vous des conversions par vue et vue engagée :** Ce sont des signaux d'attribution passifs. Un utilisateur qui a vu votre annonce mais a converti via un autre canal sera quand même crédité. Pondérez ces conversions à la baisse quand vous évaluez la performance des campagnes haut du tunnel.

---

## 6️⃣ Comptage des conversions

### Options de comptage

| Méthode | Compte | Idéal pour | Exemple |
|--------|--------|----------|---------|
| **Every** | Toutes les conversions par interaction publicitaire | Ecommerce (chaque transaction a une valeur) | 1 clic, 3 achats = 3 conversions |
| **One** | Maximum une conversion par interaction publicitaire | Lead Gen, SaaS (chaque lead est unique) | 1 clic, 2 soumissions de formulaire = 1 conversion |

### Comptage recommandé par type de conversion

| Type de conversion | Comptage recommandé | Justification |
|----------------|---------------------|-----------|
| Achat/transaction | Every | Chaque achat génère du chiffre d'affaires |
| Soumission de formulaire/lead | One | Plusieurs soumissions d'un même utilisateur = un seul lead |
| Appel téléphonique | One | Plusieurs appels d'un même prospect = un seul lead |
| Inscription | One | L'utilisateur ne peut s'inscrire qu'une seule fois de manière significative |
| Ajout au panier | Every | Chaque action panier est un signal |
| Achat d'abonnement | Every | Chaque renouvellement est du chiffre d'affaires |

### Taux de répétition

La métrique du taux de répétition montre le nombre moyen de conversions par interaction convertissante. Trouvez-la dans Objectifs > Résumé des conversions > Toutes les actions de conversion (en haut à droite) > colonne Taux de répétition.

**Utiliser le taux de répétition pour évaluer l'impact du comptage :**

- Si le comptage est "One" et le taux de répétition est 1,5 : passer à "Every" augmenterait le volume de conversions d'environ 50%
- Si le comptage est "Every" et le taux de répétition est 1,8 : passer à "One" diminuerait le volume de conversions d'environ 44%

---

## Erreurs courantes

| **Erreur** | **Problème** | **Solution** |
|-------------|-------------|---------|
| Plusieurs conversions macro primary en double comptage | Stratégies d'enchères intelligentes optimise pour un volume gonflé | Gardez une seule conversion macro primary par catégorie d'objectif par campagne |
| Toutes les conversions micro définies comme primary | Dilue le signal Stratégies d'enchères intelligentes avec des actions à faible valeur | Définissez les conversions micro comme secondary sauf si intentionnellement utilisées pour la stratégie d'enchères |
| Utilisation de l'attribution Last Click | Sous-crédite les campagnes haut/milieu du tunnel | Passez à la Data-Driven Attribution |
| Fenêtre clic de 90 jours pour des achats impulsifs | Sur-attribue les anciens clics aux achats récents | Ajustez la fenêtre au délai réel de conversion (vérifiez les métriques de chemin) |
| Comptage "Every" pour le lead gen | Un lead qui soumet deux fois = deux "conversions" | Passez à "One" pour les actions de type lead |
| Pas d'objectifs spécifiques par campagne pour le haut du tunnel | Les campagnes YouTube/Display optimisent pour l'achat (trop peu de conversions) | Définissez un objectif spécifique à la campagne avec l'action primary appropriée |
| Ignorer les conversions par vue engagée dans le CPA | Le CPA semble excellent mais la plupart des conversions sont des vues | Créez des colonnes personnalisées séparant les conversions par clic des conversions par vue |

---

## Documents liés

| **Document** | **Relation** |
|--------------|------------------|
| [Measurement Maturity Mental Model](<../../01-strategie/reporting/Reporting - Maturité de la mesure.md>) | Méthode pour prioriser les techniques de tracking |
| [Conversion Volume Thresholds Reference](<Suivi - Seuils de volume de conversions.md>) | Seuils de volume qui interagissent avec les paramètres des actions de conversion |
| [Conversion Tracking Configuration Guidelines](<Suivi - Configuration du suivi des conversions.md>) | Paramètres par défaut recommandés pour toutes les actions de conversion |
| [Conversion Tracking Setup Checklist](<Suivi - Configuration du suivi des conversions.md>) | Valide la complétude de la configuration des actions de conversion |
| [SOP - Configurer le suivi des conversions Google Ads](<Suivi - Configurer le suivi des conversions Google Ads.md>) | Implémentation étape par étape |
| [Goals and KPIs Mental Model](<../../01-strategie/objectifs/Objectifs - Objectifs et KPI.md>) | Les objectifs définissent quelles conversions macro/micro tracker |
