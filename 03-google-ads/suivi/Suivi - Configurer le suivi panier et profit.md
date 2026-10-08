# Configurer le suivi panier et profit

> **Plateforme :** Google Ads
> **Catégorie :** Suivi
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Phase 1️⃣: Briefer le développeur

### 1.1 Définir les champs requis du data layer

Envoyez cette spécification à votre développeur. Le data layer de l'évènement d'achat doit inclure ces champs :

| Champ | Type | Description | Exemple |
|-------|------|-------------|---------|
| `items` | Array | Détails au niveau produit pour chaque article du panier | Voir ci-dessous |
| `items[].id` | String | ID produit correspondant au flux Merchant Center | `"SKU-12345"` |
| `items[].price` | Number | Prix unitaire de l'article | `49.99` |
| `items[].quantity` | Integer | Nombre d'unités achetées | `2` |
| `aw_merchant_id` | String | ID du compte Google Merchant Center | `"123456789"` |
| `aw_feed_country` | String | Pays cible du flux (ISO 3166-1 alpha-2) | `"US"` |
| `aw_feed_language` | String | Langue du flux (ISO 639-1) | `"en"` |

### 1.2 Exemple de push data layer

Fournissez cet exemple au développeur :

```javascript
dataLayer.push({
  'event': 'purchase',
  'transaction_id': 'T-98765',
  'value': 149.97,
  'currency': 'USD',
  'aw_merchant_id': '123456789',
  'aw_feed_country': 'US',
  'aw_feed_language': 'en',
  'items': [
    {
      'id': 'SKU-12345',
      'price': 49.99,
      'quantity': 2
    },
    {
      'id': 'SKU-67890',
      'price': 49.99,
      'quantity': 1
    }
  ]
});
```

> ⚠️ **Les IDs produit doivent correspondre exactement à votre flux Merchant Center :** Si votre flux utilise l'`item_group_id` pour les variantes, le data layer doit envoyer le même ID. Des IDs qui ne correspondent pas cassent la jointure des données panier.

### 1.3 Vérifier l'implémentation développeur

1. Ouvrez la page de confirmation d'achat après une commande de test
2. Ouvrez la console du navigateur et tapez `dataLayer`
3. Confirmez que l'évènement d'achat contient tous les champs requis
4. Vérifiez que les IDs produit correspondent à ce qui apparaît dans Merchant Center

---

## Phase 2️⃣: Ajouter le COGS au flux produit

### 2.1 Ajouter cost_of_goods_sold à votre flux

Dans votre flux de produits Google Merchant Center, ajoutez l'attribut `cost_of_goods_sold` :

| Attribut du flux | Format | Exemple |
|---------------|--------|---------|
| `cost_of_goods_sold` | Nombre avec devise | `15.50 USD` |

### 2.2 Remplir les données COGS

1. Exportez votre catalogue de produits
2. Ajoutez une colonne `cost_of_goods_sold`
3. Renseignez le coût direct par unité pour chaque produit (matériaux, fabrication, transport vers l'entrepôt)
4. Importez le flux mis à jour dans Merchant Center

### 2.3 Valider le traitement du flux

1. Allez dans Merchant Center > Products > Diagnostics
2. Vérifiez qu'aucune erreur n'apparaît pour l'attribut `cost_of_goods_sold`
3. Confirmez que l'attribut apparaît dans le détail de chaque produit

> 💡 **Pas de données COGS ? Utilisez des marges estimées :** Si le COGS exact n'est pas disponible, utilisez des estimations au niveau catégorie. Des données de profit approximatives valent mieux que pas de données de profit du tout pour les Stratégies d'enchères intelligentes.

---

## Phase 3️⃣: Configurer dans GTM ou gtag

### 3A : Configuration GTM

1. Ouvrez Google Tag Manager
2. Allez dans Tags > sélectionnez votre tag de conversion Google Ads Purchase
3. Cochez la case « Provide product-level sales data »
4. Mappez les variables data layer :
   - Data Source : Data Layer
   - Items : `{{DLV - items}}`
   - Merchant ID : `{{DLV - aw_merchant_id}}`
   - Feed Country : `{{DLV - aw_feed_country}}`
   - Feed Language : `{{DLV - aw_feed_language}}`
5. Enregistrez et publiez

### 3B : Configuration gtag (alternative)

Si vous utilisez gtag.js directement, ajoutez les paramètres panier au snippet de conversion d'achat :

```javascript
gtag('event', 'conversion', {
  'send_to': 'AW-XXXXXXX/YYYYYYY',
  'value': 149.97,
  'currency': 'USD',
  'transaction_id': 'T-98765',
  'aw_merchant_id': '123456789',
  'aw_feed_country': 'US',
  'aw_feed_language': 'en',
  'items': [
    {'id': 'SKU-12345', 'price': 49.99, 'quantity': 2},
    {'id': 'SKU-67890', 'price': 49.99, 'quantity': 1}
  ]
});
```

---

## Phase 4️⃣ : Valider

### 4.1 Débugger dans GTM

1. Ouvrez le mode Preview de GTM
2. Réalisez un achat de test
3. Cliquez sur l'évènement d'achat dans le panneau de débogage
4. Vérifiez que le tag de conversion affiche les paramètres de données panier renseignés

### 4.2 Vérifier les rapports Google Ads

Laissez passer 24 à 48 heures après la première conversion avec données panier, puis :

1. Allez dans Google Ads > Campaigns > sélectionnez une campagne Shopping ou PMax
2. Naviguez vers Product Groups
3. Ajoutez ces colonnes au rapport :

| Colonne | Ce qu'elle montre |
|--------|--------------|
| Gross profit | Chiffre d'affaires moins COGS par produit |
| Cost of goods sold | Valeur COGS issue de votre flux |
| Average cart size | Nombre moyen d'articles par transaction |
| Lead/cart revenue | Chiffre d'affaires attribué au niveau produit |

### 4.3 Dépanner les données manquantes

| Symptôme | Cause | Solution |
|---------|-------|-----|
| Les colonnes de données panier sont vides | Les IDs produit ne correspondent pas au flux | Aligner les IDs du data layer avec les IDs Merchant Center |
| Le gross profit affiche zéro | COGS absent du flux | Ajouter cost_of_goods_sold au flux de produits |
| Certains produits affichent des données, d'autres non | Correspondance partielle des IDs | Auditer les IDs pour les variantes, les lots (bundles), les SKU parents vs enfants |

### 4.4 Checklist finale

- [ ] Le data layer pousse le tableau items avec id, price, quantity à l'achat
- [ ] Le Merchant ID, le pays du flux et la langue du flux sont renseignés
- [ ] Les IDs produit correspondent exactement au flux Merchant Center
- [ ] L'attribut cost_of_goods_sold est présent dans le flux de produits
- [ ] Le tag de conversion a « Provide product-level sales data » activé
- [ ] Les colonnes de données panier apparaissent dans les rapports par groupe de produits Google Ads

---

## Phase 5 (optionnel) : ProfitMetrics Conversion Booster

### 5.1 Quand utiliser ProfitMetrics

Utilisez ProfitMetrics si :

- Vous utilisez Shopify, WooCommerce ou Magento
- Vous voulez un suivi du profit clé en main sans travail de développement
- Vous avez besoin d'envoyer des valeurs de conversion basées sur le profit directement à Google Ads

### 5.2 Installation

1. Installez l'app/plugin ProfitMetrics depuis le marketplace de votre plateforme
2. Connectez votre compte Google Ads
3. Connectez votre compte Google Merchant Center
4. Mappez vos données COGS (import depuis le flux ou saisie manuelle)
5. Activez la fonctionnalité Conversion Booster

### 5.3 Valider ProfitMetrics

1. Réalisez un achat de test
2. Vérifiez le tableau de bord ProfitMetrics pour la conversion
3. Vérifiez que les valeurs de gross profit correspondent aux calculs attendus
4. Confirmez que les données apparaissent dans les rapports de conversion Google Ads

---

### Validation et critères de complétion

Cette SOP est terminée quand :

- [ ] Le data layer envoie des données panier au niveau produit à chaque achat
- [ ] Les données COGS sont présentes dans le flux de produits Merchant Center
- [ ] Le tag de conversion est configuré pour envoyer des données de vente au niveau produit
- [ ] Les rapports par groupe de produits Google Ads affichent les colonnes gross profit, COGS et taille du panier
- [ ] Au moins 5 conversions de test affichent des données panier correctes dans les rapports

---

### Passerelle de sortie

Une fois que les données panier et le suivi du profit sont actifs :

| Délai | Action |
|-----------|--------|
| Immédiatement | Continuer vers les SOP d'optimisation des enchères en utilisant des objectifs basés sur le profit |
| Après 7 jours | Vérifier la couverture des données panier (pourcentage de conversions avec données panier) |
| Après 30 jours | Analyser la rentabilité au niveau produit, ajuster les objectifs d'enchères |

**En cas de problème :**

| Problème | Rediriger vers |
|-------|----------|
| IDs produit non concordants | Coordonner avec l'équipe de gestion du flux |
| Données COGS incomplètes | Mettre à jour le flux de produits (Phase 2) |
| Colonnes de données panier toujours vides après 48 heures | Re-débugger GTM (Phase 4.1) |

---

### FAQ

**Q : Ai-je besoin des données panier pour les campagnes Search ?**

R : Les données panier sont surtout utiles pour les campagnes Shopping et PMax où le reporting au niveau produit compte. Pour Search, le suivi standard de la valeur de conversion suffit.

**Q : Puis-je utiliser un COGS estimé au lieu des coûts exacts ?**

R : Oui. Des estimations de COGS au niveau catégorie valent mieux que rien. Passez aux valeurs exactes dès qu'elles sont disponibles.

**Q : ProfitMetrics remplace-t-il la configuration manuelle ?**

R : Oui, pour les plateformes supportées. ProfitMetrics gère automatiquement le data layer, l'intégration du flux et l'ajustement de la valeur de conversion.

---

### Procédures liées

| SOP | Relation |
|-----|--------------|
| [SOP - Configurer le Google Consent Mode](<Suivi - Configurer Google Consent Mode.md>) | Amont : le consent mode doit être actif pour un suivi précis |
| [SOP - Implementer la deduplication par Transaction ID](<Suivi - Implémenter la déduplication par Transaction ID.md>) | Parallèle : la déduplication évite des données panier gonflées |
| [SOP - Configurer le suivi nouveaux clients](<Suivi - Configurer le suivi des nouveaux clients.md>) | Parallèle : les données nouveaux clients enrichissent le reporting au niveau panier |

---

### Erreurs fréquentes

| Erreur | Pourquoi ça arrive | Comment l'éviter |
|---------|----------------|--------------|
| Les IDs produit ne correspondent pas à Merchant Center | Le data layer utilise un format d'ID différent du flux | Auditer les IDs avant le lancement, tester avec de vrais produits |
| COGS manquant pour les nouveaux produits | Le processus de mise à jour du flux n'inclut pas les données de coût | Ajouter le COGS à la checklist d'onboarding produit |
| Gross profit négatif pour certains produits | COGS supérieur au prix de vente | Revoir la stratégie de prix pour les produits concernés |
| Les données panier n'apparaissent que pour certaines conversions | Le data layer ne se déclenche pas de façon constante | Tester sur tous les chemins d'achat (desktop, mobile, checkout express) |
