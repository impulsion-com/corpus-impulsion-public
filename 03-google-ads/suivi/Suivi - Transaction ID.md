# Transaction ID

> **Plateforme :** Google Ads
> **Catégorie :** Suivi
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Documente la déduplication par transaction ID pour le suivi de conversion Google Ads, couvrant tous les secteurs (e-commerce, lead gen, SaaS), les méthodes de configuration et le rôle critique des transaction IDs pour activer les ajustements de conversion.

---

## Ce que couvre cette fiche / Ce qu'elle ne couvre PAS

**Cette fiche :**

- Explique le problème des conversions en double et comment les transaction IDs le résolvent
- Documente la configuration GTM et gtag pour l'e-commerce et le lead gen
- Clarifie la différence entre la déduplication par transaction ID et les paramètres de comptage de conversions
- Couvre l'exigence de transaction ID pour les ajustements de conversion

**Cette fiche ne couvre PAS :**

- La configuration du suivi de conversion pas à pas (Voir : future SOP : Configurer le suivi de conversion Google Ads)
- Les paramètres des actions de conversion en détail (Voir : [Conversion Action Reference](<Suivi - Actions de conversion.md>))
- Les procédures d'import de conversions offline (Voir : future SOP : Configurer le suivi de conversion offline)

---

## Aide-mémoire : transaction ID

| **Élément** | **Détails** |
|-------------|------------|
| **Nom du paramètre** | `transaction_id` (GTM et gtag) |
| **Format** | Chaîne, unique par événement de conversion |
| **Longueur max** | 64 caractères |
| **Fenêtre de dédup** | Google ignore les transaction IDs en double dans la fenêtre de conversion |
| **Requis pour** | Déduplication, ajustements de conversion (restater, rétracter) |
| **S'applique à** | Tous les secteurs : e-commerce (ID commande), lead gen (ID formulaire), SaaS (ID inscription) |

---

## Le problème des conversions en double

### Comment les doublons se produisent

| **Cause** | **Ce qui se passe** | **Fréquence** |
|----------|-----------------|---------------|
| Rafraîchissement de page sur la page de remerciement | Le tag de conversion se déclenche à nouveau au rechargement | Très fréquent |
| Navigation arrière/avant du navigateur | L'utilisateur revient sur la page de confirmation, le tag se déclenche à nouveau | Fréquent |
| Favori de la page de confirmation | L'utilisateur revisite l'URL en favori, le tag se déclenche à nouveau | Occasionnel |
| Visites de bots/crawlers | Visites automatisées des URLs de confirmation | Occasionnel |
| Onglets multiples | L'utilisateur ouvre la confirmation dans plusieurs onglets | Occasionnel |

### Impact sans déduplication

**Exemple réel :** un compte e-commerce sans transaction IDs reporte un taux de conversion de 600 % sur les campagnes de marque. Le Stratégies d'enchères intelligentes reçoit des signaux gonflés, surenchérit à chaque enchère, et le compte saigne du budget sur des conversions fantômes.

| **Métrique** | **Sans transaction ID** | **Avec transaction ID** |
|-----------|---------------------------|------------------------|
| Conversions reportées | Gonflées (doublons comptés) | Précises (doublons ignorés) |
| CPA | Artificiellement bas | Vrai coût par acquisition |
| ROAS | Artificiellement élevé | Vrai retour sur dépenses publicitaires |
| Comportement Stratégies d'enchères intelligentes | Surenchère basée sur des signaux gonflés | Enchères basées sur des données précises |

---

## Fonctionnement de la déduplication par transaction ID

1. Chaque événement de conversion inclut un `transaction_id` unique
2. Google reçoit la conversion avec le transaction ID
3. Si une conversion avec le même `transaction_id` a déjà été enregistrée dans la fenêtre de conversion, Google ignore le doublon
4. Seule la première conversion par transaction ID unique est comptée

> 💡 **La déduplication par transaction ID est passive et automatique :** vous n'avez pas besoin de l'activer. Incluez simplement le paramètre `transaction_id` dans votre tag de conversion, et Google gère la déduplication automatiquement.

---

## Transaction ID vs paramètre de comptage

Ce sont deux mécanismes de déduplication différents. Ils ne sont pas interchangeables.

| | **Transaction ID** | **Comptage (Toutes vs Une)** |
|--|-------------------|------------------------------|
| **Niveau** | Par événement de conversion | Par interaction publicitaire (clic) |
| **Ce qu'il déduplique** | La même conversion déclenchée plusieurs fois | Plusieurs conversions différentes depuis un seul clic |
| **Exemple** | L'utilisateur rafraîchit la confirmation de commande : 1 commande, le tag se déclenche 3 fois | L'utilisateur fait 3 achats séparés après 1 clic : 3 commandes |
| **Avec transaction ID + "Toutes"** | 3 déclenchements, 1 conversion comptée (même ID) | 3 achats, 3 conversions comptées (IDs différents) |
| **Sans transaction ID + "Une"** | 3 déclenchements, 1 conversion comptée (une par clic) | 3 achats, 1 conversion comptée (une par clic) |

> ⚠️ **Vous avez besoin des deux mécanismes :** le transaction ID empêche les déclenchements en double de la même conversion. Le paramètre de comptage contrôle comment plusieurs conversions distinctes depuis un seul clic sont gérées. Utilisez les transaction IDs toujours, et réglez le comptage sur "Toutes" pour l'e-commerce, "Une" pour le lead gen.

---

## Transaction ID par secteur

### E-commerce

| **Source** | **Valeur du transaction ID** | **Exemple** |
|-----------|------------------------|-------------|
| Système de gestion de commandes | ID de commande / numéro de confirmation | `ORD-2024-78432` |
| Shopify | `order_id` du checkout | `#1042` |
| WooCommerce | `order_id` de wc_order | `WC-5678` |
| Plateforme personnalisée | Clé primaire de commande en base de données | `TXN_98765` |

### Lead gen

| **Source** | **Valeur du transaction ID** | **Exemple** |
|-----------|------------------------|-------------|
| Système CRM | ID de lead (prospect)/soumission de formulaire | `LEAD-2024-4521` |
| Plugin de formulaire (Gravity Forms, etc.) | ID d'entrée | `GF-entry-1234` |
| Backend personnalisé | UUID généré à la soumission du formulaire | `f47ac10b-58cc-4372-a567-0e02b2c3d479` |
| Basé sur le timestamp (repli) | Timestamp + hash d'identifiant utilisateur | `1706745600-a1b2c3` |

### SaaS

| **Source** | **Valeur du transaction ID** | **Exemple** |
|-----------|------------------------|-------------|
| Système de gestion des utilisateurs | ID utilisateur/compte | `USR-20240201-789` |
| Plateforme d'abonnement | ID d'abonnement | `SUB-stripe-pi_3abc` |
| Inscription essai | ID de session d'essai | `TRIAL-2024-5432` |

> ⚠️ **N'utilisez jamais d'IDs client-side aléatoires qui se régénèrent au chargement de page :** un transaction ID doit être la même valeur à chaque fois que la même page de conversion est chargée. Utilisez des IDs générés côté serveur liés à l'enregistrement réel de la transaction.

---

## Configuration GTM : e-commerce

**Étape 1️⃣ : Pousser le transaction ID dans le data layer**

Votre développeur inclut l'ID de commande dans le push data layer d'achat :

```javascript
dataLayer.push({
  'event': 'purchase',
  'transaction_id': 'ORD-2024-78432',
  'value': 149.99,
  'currency': 'USD'
});
```

**Étape 2️⃣ : Créer une variable de data layer**

| **Paramètre** | **Valeur** |
|-------------|----------|
| Type de variable | Variable de couche de données |
| Nom de variable | `transaction_id` |
| Version du data layer | Version 2 |

**Étape 3️⃣ : Mapper dans le tag de conversion**

1. Ouvrez votre tag de suivi de conversion Google Ads
2. Dans le champ "Transaction ID", sélectionnez votre variable de data layer
3. Enregistrez et publiez

## Configuration GTM : lead gen

**Étape 1️⃣ : Générer un ID unique de soumission de formulaire**

Votre développeur génère un ID unique quand le formulaire est soumis avec succès (côté serveur) :

```javascript
// Après soumission réussie du formulaire, pousser dans le data layer
dataLayer.push({
  'event': 'form_submission',
  'transaction_id': 'LEAD-2024-4521'
});
```

**Étape 2️⃣ : Créer la variable de data layer et mapper dans le tag**

Même processus que l'e-commerce : créez une variable de couche de données pour `transaction_id` et mappez-la dans le tag de conversion.

> 💡 **Pour le lead gen, l'ID doit être généré côté serveur au moment de la soumission du formulaire :** ne générez pas d'IDs côté client au chargement de page, car ils changent à chaque rafraîchissement et annulent le but de la déduplication.

---

## Configuration gtag

Incluez `transaction_id` dans l'événement de conversion :

**E-commerce :**

```javascript
gtag('event', 'purchase', {
  'send_to': 'AW-XXXXXXXXX/XXXXXXXXXXXXX',
  'transaction_id': 'ORD-2024-78432',
  'value': 149.99,
  'currency': 'USD'
});
```

**Lead gen :**

```javascript
gtag('event', 'conversion', {
  'send_to': 'AW-XXXXXXXXX/XXXXXXXXXXXXX',
  'transaction_id': 'LEAD-2024-4521',
  'value': 0
});
```

---

## Transaction ID et ajustements de conversion

Les transaction IDs sont requis pour les ajustements de conversion (anciennement ajustements de règles de valeur de conversion). Sans transaction ID, vous ne pouvez pas ajuster une conversion après son enregistrement.

| **Type d'ajustement** | **Ce qu'il fait** | **Nécessite un transaction ID** |
|--------------------|-----------------|---------------------------|
| Restater | Modifier la valeur de conversion (ex. : remboursement partiel, valeur de lead mise à jour) | Oui |
| Rétracter | Supprimer la conversion entièrement (ex. : commande annulée, lead spam) | Oui |

**Exemple de flux :**

1. Le client achète pour 200 € (transaction ID : `ORD-12345`)
2. Le client retourne un article d'une valeur de 80 €
3. Importez un ajustement de restatement : transaction ID `ORD-12345`, nouvelle valeur 120 €
4. Google Ads met à jour le reporting et le Stratégies d'enchères intelligentes apprend de la valeur corrigée

---

## Exigences pour le brief développeur

Quand vous briefez votre développeur, fournissez :

| **Exigence** | **Détails** |
|-----------------|------------|
| Nom du paramètre | `transaction_id` dans le push data layer |
| Source de la valeur | ID de commande (e-commerce) ou ID unique de soumission de formulaire (lead gen) |
| Timing de génération | Côté serveur, au moment de la transaction/soumission réussie |
| Persistance | Le même ID doit apparaître à chaque chargement de la même page de confirmation |
| Format | Chaîne, max 64 caractères, pas de caractères spéciaux hormis tirets et underscores |
| Événement data layer | Pousser avec l'événement purchase ou form_submission |

---

## Erreurs courantes

| **Erreur** | **Problème** | **Solution** |
|-------------|-------------|---------|
| Pas de transaction ID implémenté | Les conversions en double gonflent les données, le Stratégies d'enchères intelligentes surenchérit | Implémenter le transaction ID pour toutes les actions de conversion |
| ID client-side aléatoire au chargement de page | Nouvel ID à chaque rafraîchissement, la dédup échoue complètement | Utiliser un ID généré côté serveur lié à l'enregistrement réel de la transaction |
| Se fier au comptage "Une" au lieu du transaction ID | "Une" empêche les conversions distinctes multiples, pas les déclenchements en double de la même conversion | Utiliser les deux : transaction ID pour la dédup, comptage pour la logique business |
| Transaction ID manquant sur certains chemins de conversion | Dédup partielle : certains chemins dédupliqués, d'autres non | Auditer tous les chemins de conversion (web, app, téléphone) pour la couverture |
| Ne pas implémenter pour le lead gen | Mentalité "le lead gen n'a pas de commandes" | Créer des IDs uniques de soumission de formulaire côté serveur |
| Oublier que le transaction ID bloque les ajustements de conversion | Impossible de restater ou rétracter les conversions plus tard | Toujours inclure le transaction ID, même si vous n'utilisez pas encore les ajustements |

---

## Documents liés

| **Document** | **Relation** |
|--------------|------------------|
| [Conversion Action Reference](<Suivi - Actions de conversion.md>) | Paramètres de comptage qui complètent la déduplication par transaction ID |
| [Measurement Maturity Mental Model](<../../01-strategie/reporting/Reporting - Maturité de la mesure.md>) | Le transaction ID est une exigence fondamentale de la mesure |
| [Cart Data and Profit Tracking Reference](<Suivi - Données panier et suivi du profit.md>) | Les Cart Data envoient le transaction ID aux côtés des données au niveau produit |
| [Custom Variables Reference](<Suivi - Variables personnalisées.md>) | Les variables personnalisées envoyées aux côtés du transaction ID dans les événements de conversion |
| [Conversion Volume Thresholds Reference](<Suivi - Seuils de volume de conversions.md>) | La suppression des conversions en double peut réduire le volume en dessous des seuils |
