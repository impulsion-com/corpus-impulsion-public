# Optimisation du cycle de vie client

> **Plateforme :** Stratégie
> **Catégorie :** Fondamentaux
> **Type :** Fondamental
> **Mis à jour :** 2026-05-07

## Objectif

Cette fiche documente les paramètres d'optimisation du cycle de vie client dans Google Ads, couvrant l'acquisition de nouveaux clients, le ciblage des clients à haute valeur, et la réactivation des clients inactifs.

L'optimisation du cycle de vie client ajuste les enchères pour prioriser différents segments de clients. Ces paramètres sont configurés au niveau du compte et appliqués au niveau de la campagne pour optimiser la valeur vie client plutôt que les transactions individuelles.

---

## Ce que couvre cette fiche / Ce qu'elle ne couvre PAS

Cette fiche ne couvre **pas** :

- La configuration des campagnes PMax (Voir : [PMax Configuration Guidelines](<../../03-google-ads/pmax/Pmax - Configuration PMax.md>))
- La configuration du suivi des conversions (Voir : [SOP – Set Up Conversion Tracking](<../../03-google-ads/suivi/Suivi - Configurer le suivi des conversions Google Ads.md>))
- La création d'audiences (Voir : [Audience Signals Reference](<../../03-google-ads/audiences/Audiences - Signaux d'audience.md>))
- Le choix de stratégie d'enchères (Voir : [Bid Strategy Selection Reference](<../../03-google-ads/encheres/Enchères - Sélection de stratégie d'enchères.md>))

---

## Aide-mémoire

| **Niveau du paramètre** | **Paramètre** | **Effet** | **Campagnes compatibles** |
|-------------------|-------------|------------|---------------------|
| Compte | Valeur nouveau client | Ajoute une valeur incrémentale pour les nouveaux clients | PMax, Search |
| Compte | Valeur client haute valeur | Ajoute une valeur incrémentale pour les nouveaux clients à haute valeur | PMax, Search |
| Compte | Valeur client inactif | Ajoute une valeur incrémentale pour les clients inactifs | PMax uniquement |
| Campagne | Mode acquisition client | Contrôle les enchères pour les nouveaux clients | PMax, Search |

---

## Paramètres au niveau du compte

Les paramètres de cycle de vie client au niveau du compte se configurent dans **Outils et paramètres > Conversions > Objectifs de cycle de vie client**.

### Acquisition de nouveaux clients

Les paramètres d'acquisition de nouveaux clients permettent d'enchérir davantage pour les utilisateurs qui n'ont pas encore converti.

#### Valeur nouveau client (standard)

| **Paramètre** | **Description** |
|-------------|-----------------|
| **Ajouter une valeur de conversion incrémentale pour les nouveaux clients** | Ajoute une valeur spécifiée en plus de la valeur de conversion quand le client est nouveau |
| **Valeur suggérée** | Basée sur la valeur moyenne de conversion d'achat (ex. : si la commande moyenne est de 100 € et que le client fait 3 achats, suggérer 200 € de valeur incrémentale) |

**Comment calculer la valeur suggérée :**

```
Valeur incrémentale = (Valeur vie client moyenne) - (Valeur moyenne du premier achat)
```

**Exemple :**
- Premier achat moyen : 100 €
- Le client fait en moyenne 3 achats sur sa durée de vie
- Valeur vie client : 300 €
- Valeur incrémentale pour un nouveau client : 200 €

#### Segments d'audience pour l'identification des nouveaux clients

| **Paramètre** | **Description** |
|-------------|-----------------|
| **Segments d'audience de clients actuels** | Importez une liste de clients existants pour que Google puisse identifier qui est "nouveau" |
| **Taille minimale de la liste** | 1 000 utilisateurs correspondants recommandés |
| **Type de liste** | Liste Customer Match de tous les acheteurs/convertisseurs |

> ⚠️ **Sans liste de clients, Google utilise uniquement l'historique de conversion :** pour une identification précise des nouveaux clients, importez votre liste complète de clients via Customer Match.

### Méthodes d'identification des clients

Google utilise trois méthodes pour identifier les segments de clients pour le reporting, les enchères et le ciblage :

| **Méthode** | **Description** | **Précision** |
|------------|-----------------|--------------|
| **Détection automatique (par défaut)** | Google détecte via l'historique de conversion et les cookies | La plus faible |
| **Listes Customer Match** | Importez vos listes de clients pour identifier les clients existants | Moyenne |
| **Paramètre du tag de conversion** | Transmettez le statut nouveau vs existant dans le tag de suivi de conversion | La plus élevée |

> 💡 **Pour une précision optimale, utilisez les trois méthodes ensemble :** les données first-party combinées avec le paramètre nouveau vs existant dans votre tag de conversion complètent la détection automatique et améliorent significativement la précision de l'identification.

### Acquisition de clients à haute valeur

Les paramètres de clients à haute valeur permettent d'enchérir encore plus pour les nouveaux clients susceptibles de devenir des clients à forte valeur.

| **Paramètre** | **Description** |
|-------------|-----------------|
| **Ajouter une valeur de conversion incrémentale pour les nouveaux clients (haute valeur)** | Ajoute une valeur supplémentaire pour les nouveaux clients prédits comme haute valeur |
| **Segments d'audience pour les clients haute valeur** | Liste Customer Match de vos meilleurs clients pour la modélisation |

**Fonctionnement :**
1. Importez une liste de vos meilleurs clients (top 20 % par LTV)
2. Google modélise les caractéristiques des clients haute valeur
3. Les nouveaux clients correspondant au profil haute valeur reçoivent un boost d'enchère supplémentaire

> 💡 **Les paramètres de clients haute valeur s'appliquent uniquement aux campagnes Performance Max et Search :** les autres types de campagnes ne supportent pas cette fonctionnalité.

---

## Limitations critiques

> ⚠️ **Ces fonctionnalités aident à orienter l'algorithme, mais ne sont jamais précises à 100 % :** validez toujours les résultats in-platform avec des données d'attribution tierces indépendantes.

### Inflation de la valeur de conversion reportée

Quand vous ajoutez une valeur incrémentale pour les nouveaux clients, votre valeur de conversion reportée sera supérieure à votre revenu réel :

| **Problème** | **Explication** |
|-----------|-----------------|
| Valeur totale gonflée | La valeur incrémentale est ajoutée à chaque conversion de nouveau client, gonflant vos résultats reportés |
| Problème du client qui revient | Si un client "nouveau" revient et convertit à nouveau, vous ne pouvez pas déduire la valeur vie supplémentaire précédemment attribuée |
| Pas de compensation automatique | Ajouter de la valeur aux nouveaux clients NE diminue PAS automatiquement la valeur pour les clients existants |
| Confusion sur le ROAS cible | Vous devez ajuster vos objectifs ROAS pour tenir compte des valeurs gonflées (difficile à calculer précisément) |

### Questions à se poser avant d'activer

Avant d'attribuer une valeur incrémentale aux nouveaux clients, répondez à ces questions :

1. **Quelle est la vraie valeur d'un nouveau client ?** Avez-vous des données LTV fiables ?
2. **Quelle est la différence de valeur moyenne de commande** entre nouveaux et anciens clients ?
3. **Combien de "nouveaux" clients auraient acheté chez vous de toute façon ?** Toutes les conversions ne sont pas véritablement incrémentales.

### Exigence de validation

Quand vous utilisez le mode "nouveaux clients uniquement", vous pouvez toujours voir des clients existants dans vos données de conversion. Raisons possibles :

- Erreur de classification de la détection automatique
- Listes Customer Match incomplètes
- Utilisateurs sur de nouveaux appareils/navigateurs

**Croisez toujours les données :** comparez le reporting de nouveaux clients de Google avec vos propres données CRM et outils d'attribution tiers pour vérifier la précision.

### Réactivation de clients inactifs (Rétention client)

Les paramètres de clients inactifs aident à réengager les clients qui n'ont pas acheté récemment.

| **Paramètre** | **Description** |
|-------------|-----------------|
| **Ajouter une valeur de conversion incrémentale pour les clients inactifs** | Ajoute une valeur spécifiée pour les clients qui reviennent après une période d'inactivité |
| **Segments d'audience pour les clients inactifs** | Liste Customer Match définissant qui est considéré comme "inactif" |
| **Segments d'audience pour les clients existants** | Liste Customer Match de tous les clients (pour distinguer inactifs et actifs) |
| **Clients inactifs (haute valeur)** | Valeur incrémentale supplémentaire pour les clients inactifs à haute valeur |

**Définition de "client inactif" :**

Définissez "inactif" en fonction de votre cycle commercial :
- E-commerce (consommables) : pas d'achat depuis 90 jours
- E-commerce (biens durables) : pas d'achat depuis 12 mois
- SaaS : comptes résiliés
- Lead Gen : anciens leads (prospects) qui n'ont pas converti

> ⚠️ **Les paramètres de rétention client sont uniquement supportés dans les campagnes Performance Max :** les campagnes Search supportent l'acquisition client mais pas la rétention client.

---

## Paramètres au niveau de la campagne

Les paramètres d'acquisition client au niveau de la campagne contrôlent comment la campagne enchérit pour les nouveaux vs les anciens clients.

### Mode d'acquisition client

| **Mode** | **Effet** | **Quand utiliser** |
|----------|------------|-----------------|
| **Désactivé** | Pas d'ajustement d'enchère pour les nouveaux clients | Quand vous voulez traiter nouveaux et anciens clients de manière égale |
| **Enchérir plus pour les nouveaux clients** | Enchères plus élevées pour les utilisateurs absents de votre liste de clients | Croissance avec remarketing équilibré |
| **Enchérir uniquement pour les nouveaux clients** | Exclut les clients existants des enchères | Campagnes d'acquisition pure |

**Où configurer :** Paramètres de campagne > Acquisition client

### Distinction entre suivi et enchères

| **Fonctionnalité** | **Objectif** | **Prérequis** |
|-------------|-------------|--------------|
| **Données nouveau client (suivi)** | Voir la répartition nouveau vs existant dans les rapports | Fonctionnalité de conversion nouveau client activée |
| **Acquisition client (enchères)** | Ajuster les enchères pour les nouveaux clients | Paramètres au niveau du compte + mode au niveau de la campagne |

> 💡 **Vous pouvez suivre nouveau vs existant sans activer l'optimisation des enchères :** activez la fonctionnalité de conversion nouveau client pour le reporting, puis décidez si vous voulez activer l'optimisation des enchères.

---

## Workflow de configuration

### Étape 1️⃣ : Configurer les paramètres au niveau du compte

1. Allez dans **Outils et paramètres > Conversions > Objectifs de cycle de vie client**
2. Activez l'acquisition client et/ou la rétention client
3. Importez les listes Customer Match pour l'identification des clients
4. Définissez les valeurs incrémentales basées sur vos calculs de LTV

### Étape 2️⃣ : Configurer les paramètres au niveau de la campagne

1. Ouvrez votre campagne PMax ou Search
2. Allez dans **Paramètres de campagne > Acquisition client**
3. Sélectionnez le mode approprié (Désactivé, Enchérir plus, Enchérir uniquement pour les nouveaux)

### Étape 3️⃣ : Vérifier la configuration

1. Après 7+ jours, vérifiez les performances de la campagne par type de client
2. Segmentez par **Type de client** pour voir la répartition nouveau vs existant
3. Vérifiez que la valeur incrémentale est correctement appliquée

---

## Matrice de compatibilité des campagnes

| **Fonctionnalité** | **Performance Max** | **Search** | **Shopping** | **Display** |
|-------------|---------------------|------------|--------------|-------------|
| Acquisition nouveau client | Oui | Oui | Non | Non |
| Acquisition client haute valeur | Oui | Oui | Non | Non |
| Rétention client (inactifs) | Oui | Non | Non | Non |

---

## Bonnes pratiques

| **Pratique** | **Justification** |
|--------------|---------------|
| Commencer par "Enchérir plus pour les nouveaux clients" | Moins agressif que d'exclure les clients existants |
| Utiliser des données LTV précises pour les valeurs incrémentales | Des valeurs incorrectes mènent à des sur/sous-enchères |
| Importer des listes de clients complètes | Meilleure identification des nouveaux clients |
| Segmenter les clients haute valeur avec soin | Top 10-20 % par LTV, pas simplement les acheteurs récents |
| Réviser et mettre à jour les listes trimestriellement | Les définitions de clients évoluent dans le temps |
| Tester l'incrémentalité | Comparer le volume de nouveaux clients avant/après activation |
| Valider avec l'attribution tierce | Le reporting in-platform ne raconte pas toujours toute l'histoire |

---

## Erreurs courantes

| **Erreur** | **Impact** | **Solution** |
|-------------|------------|---------|
| Définir une valeur incrémentale trop élevée | Sur-enchères pour les nouveaux clients, mauvais ROAS | Calculer à partir de données LTV réelles |
| Pas de liste de clients importée | Google se base uniquement sur l'historique de conversion | Importer une liste Customer Match |
| Utiliser "Enchérir uniquement pour les nouveaux" trop tôt | Perd entièrement les conversions de remarketing | Commencer par "Enchérir plus pour les nouveaux" |
| Ignorer le segment haute valeur | Traite tous les nouveaux clients de la même façon | Importer une liste de clients haute valeur |
| Ne pas suivre avant d'activer | Pas de référence pour la comparaison | Activer le suivi d'abord, puis les enchères |
| Se fier uniquement au reporting in-platform | Google peut sur-reporter à cause de l'attribution | Croiser avec l'attribution tierce |

---

## Documents liés

| **Document** | **Relation** |
|--------------|------------------|
| [PMax Configuration Guidelines](<../../03-google-ads/pmax/Pmax - Configuration PMax.md>) | Configuration de campagne |
| [Audience Signals Reference](<../../03-google-ads/audiences/Audiences - Signaux d'audience.md>) | Création de listes Customer Match |
| [Bid Strategy Selection Reference](<../../03-google-ads/encheres/Enchères - Sélection de stratégie d'enchères.md>) | Contexte de stratégie d'enchères |
| [Conversion Volume Thresholds Reference](<../../03-google-ads/suivi/Suivi - Seuils de volume de conversions.md>) | Exigences de volume |
