# Données panier et tracking de profit

> **Plateforme :** Google Ads
> **Catégorie :** Suivi
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Documente deux fonctionnalités de mesure e-commerce complémentaires : les Conversions avec données panier natives de Google (reporting des ventes au niveau produit) et ProfitMetrics Conversion Booster (tracking (suivi des conversions/évènements) de profit avec un taux de correspondance de conversion proche de 100%).

---

## Ce que couvre cette fiche / Ce qu'elle ne couvre PAS

**Cette fiche :**

- Explique les prérequis, méthodes de configuration et métriques débloquées par les données panier
- Documente l'architecture et les bénéfices de ProfitMetrics Conversion Booster
- Définit l'intégration COGS pour les calculs de profit brut
- Fournit des conseils sur quand utiliser chaque fonctionnalité (ou les deux)

**Cette fiche ne couvre PAS :**

- Les instructions d'implémentation pas à pas (Voir : future SOP: Set Up Cart Data Tracking)
- La configuration basique du tracking de conversion (Voir : [Conversion Action Reference](<Suivi - Actions de conversion.md>))
- Les calculs d'unit economics (Voir : [Unit Economics Reference](<../../01-strategie/fondamentaux/Fondamentaux - Unit economics.md>))

---

## Aide-mémoire : comparaison des deux fonctionnalités

| **Fonctionnalité** | **Données panier (Google natif)** | **ProfitMetrics Conversion Booster** |
|------------|------------------------------|--------------------------------------|
| **Fournisseur** | Google Ads (intégré) | ProfitMetrics (tiers) |
| **Ce qui est envoyé** | Tableau de produits avec SKU, quantités, prix | Pixel GACT + import OCT + enhanced conversions combinés |
| **Bénéfice principal** | Voir quels produits sont achetés après un clic publicitaire | Taux de correspondance de conversion proche de 100%, tracking de profit |
| **Tracking de profit** | Nécessite le COGS dans le flux Merchant Center | Calcul de profit intégré |
| **Complexité de configuration** | Moyenne (data layer + configuration de tag) | Faible (plug-and-play pour les principales plateformes) |
| **Coût** | Gratuit | Abonnement payant |
| **Utilisable ensemble** | Oui | Oui |

### Spécification du format de données COGS

| Champ | Format | Exemple | Notes |
|-------|--------|---------|-------|
| `cost_of_goods_sold` | Nombre décimal + code devise | `15.99 EUR` | Coût par produit dans le flux Merchant Center |
| Devise | Code ISO 4217 | `EUR`, `USD`, `GBP` | Doit correspondre à la devise de votre Merchant Center |
| Séparateur décimal | Point (.) | `15.99` et non `15,99` | Google rejette les décimales séparées par une virgule |
| Fréquence de mise à jour | Refléter le COGS actuel | - | Mettre à jour quand les prix fournisseurs changent |

---

## 1 - Conversions avec données panier

### Ce que ça fait

Les données panier envoient les informations d'achat au niveau produit (articles, quantités, SKU, prix) avec chaque événement de conversion. Cela connecte votre tracking de conversion Google Ads à votre flux produit, permettant l'analyse de performance au niveau produit.

### Bénéfices

| **Bénéfice** | **Ce que vous voyez** | **Pourquoi c'est important** |
|-------------|-----------------|-------------------|
| Attribution au niveau produit | Quels produits ont été réellement achetés après le clic pub | Identifier les patterns de cross-sell (cliqué chaussures, acheté chaussettes) |
| COGS et profit brut | Coût des marchandises vendues et profit brut par campagne | Optimiser pour le profit, pas juste le revenu |
| Analyse cross-sell | Revenu des produits non directement annoncés | Mesurer l'effet de halo de vos annonces |
| Taille de panier par dimension | Articles moyens par commande par campagne, keyword, audience | Identifier les segments de trafic à haute valeur |

### Prérequis

| **Prérequis** | **Détails** |
|-----------------|------------|
| Google Merchant Center | Flux actif avec des IDs produit correspondant à votre data layer |
| Attribut COGS dans le flux | Attribut `cost_of_goods_sold` renseigné pour les colonnes de profit brut |
| Enrichissement du data layer | Tableau d'articles avec `id`, `price`, `quantity` sur l'événement d'achat |
| Liaison Merchant Center | Compte Google Ads lié au Merchant Center |
| Pays et langue du flux | Doivent correspondre au `feed_country` et `feed_language` dans le tag de conversion |

### Prérequis du data layer

Le data layer de l'événement d'achat doit inclure :

| **Paramètre** | **Type** | **Exemple** | **Requis** |
|---------------|---------|-------------|-------------|
| `transaction_id` | String | `"ORD-12345"` | Oui |
| `value` | Number | `149.99` | Oui |
| `currency` | String | `"USD"` | Oui |
| `items` | Array | Voir ci-dessous | Oui |
| `items[].id` | String | `"SKU-ABC-001"` | Oui (doit correspondre au flux) |
| `items[].price` | Number | `49.99` | Oui |
| `items[].quantity` | Number | `2` | Oui |

### Configuration : méthode GTM

1. S'assurer que votre data layer envoie le tableau d'articles sur l'événement d'achat
2. Créer des variables GTM pour `merchant_id`, `feed_country`, `feed_language`
3. Ouvrir votre tag de conversion Google Ads dans GTM
4. Cocher la case "Inclure les données de vente au niveau produit"
5. Mapper la source de données sur "Data Layer"
6. Entrer votre ID Merchant Center, pays du flux et langue du flux
7. Publier et vérifier dans les diagnostics de conversion

### Configuration : méthode gtag

Ajouter le tableau d'articles et les paramètres marchands à l'extrait de l'événement d'achat :

```javascript
gtag('event', 'purchase', {
  'send_to': 'AW-XXXXXXXXX/XXXXXXXXXXXXX',
  'transaction_id': 'ORD-12345',
  'value': 149.99,
  'currency': 'USD',
  'aw_merchant_id': 1234567,
  'aw_feed_country': 'US',
  'aw_feed_language': 'EN',
  'items': [
    { 'id': 'SKU-ABC-001', 'price': 49.99, 'quantity': 2 },
    { 'id': 'SKU-DEF-002', 'price': 50.01, 'quantity': 1 }
  ]
});
```

### Métriques débloquées

| **Métrique** | **Nom de colonne** | **Ce que ça montre** |
|-----------|----------------|-------------------|
| Coût des marchandises vendues | `cost_of_goods_sold` | COGS total pour les produits achetés via les clics publicitaires |
| Profit brut | `gross_profit` | Revenu moins COGS pour les achats attribués aux annonces |
| Revenu cross-sell | `cross_sell_revenue` | Revenu des produits non présents dans l'annonce Shopping cliquée |
| Profit brut cross-sell | `cross_sell_gross_profit` | Profit brut des produits en cross-sell |
| Taille moyenne du panier | `average_cart_size` | Nombre moyen d'articles par commande |
| Unités vendues | `units_sold` | Total d'unités produit vendues via les clics publicitaires |

### COGS dans Google Merchant Center

Pour débloquer les métriques de profit brut, ajoutez l'attribut `cost_of_goods_sold` à votre flux produit :

| **Attribut du flux** | **Format** | **Exemple** |
|-------------------|-----------|-------------|
| `cost_of_goods_sold` | Prix avec devise | `25.00 USD` |

**Sources pour les données COGS :** système ERP, plateforme de gestion des stocks, ou upload manuel par tableur via un flux supplémentaire.

> Le COGS doit être renseigné pour que les colonnes de profit brut affichent des données : si le COGS manque dans votre flux, vous obtenez les données panier et les métriques cross-sell mais pas les métriques de profit. Commencez par vos 100 premiers SKU si le COGS complet du flux n'est pas immédiatement disponible.

---

## 2 - ProfitMetrics Conversion Booster

### Ce que ça fait

ProfitMetrics Conversion Booster combine trois méthodes de tracking de conversion en un seul système : pixel GACT (côté navigateur), import OCT (côté serveur), et enhanced conversions. Cette approche triple couche atteint un taux de correspondance de conversion proche de 100% tout en trackant le profit brut réel par commande.

### Architecture

| **Couche** | **Méthode** | **Ce qu'elle capture** |
|----------|-----------|---------------------|
| Couche 1 | Pixel GACT (côté navigateur) | Tracking standard clic-vers-conversion |
| Couche 2 | Import OCT (côté serveur) | Capture les conversions manquées par le pixel navigateur (bloqueurs de pub, suppression de cookies) |
| Couche 3 | Enhanced conversions | Correspondance par email hashé pour la récupération de conversions supplémentaires |

ProfitMetrics déduplique automatiquement entre les trois couches.

### Bénéfices

| **Bénéfice** | **Impact** |
|-------------|-----------|
| Taux de correspondance de conversion | Proche de 100% (vs 70-85% avec le pixel GACT seul) |
| Augmentation des conversions | 15-26% de conversions supplémentaires reportées vs pixel standard |
| Tracking de profit | Profit brut réel par commande envoyé avec chaque conversion |
| Optimisation POAS | Permet les enchères Profit on Ad Spend (cibler le POAS au lieu du ROAS) |
| Qualité du signal Stratégies d'enchères intelligentes | Plus de conversions et des valeurs précises améliorent la performance de l'algorithme |

### Configuration

| **Plateforme** | **Temps de config** | **Méthode** |
|-------------|---------------|-----------|
| Shopify | ~30 minutes | Installation d'app native, plug-and-play |
| WooCommerce | ~30 minutes | Installation de plugin, plug-and-play |
| Magento | ~30 minutes | Installation d'extension, plug-and-play |
| Plateforme custom | 2-4 heures | Intégration API avec support développeur |

### POAS vs ROAS

| | **ROAS (Revenue on Ad Spend)** | **POAS (Profit on Ad Spend)** |
|--|-------------------------------|------------------------------|
| **Optimise pour** | Le revenu total | Le profit brut |
| **Métrique** | Revenu / Dépense pub | Profit brut / Dépense pub |
| **Angle mort** | Traite 100 € de revenu à 10% de marge comme 100 € à 50% de marge | Aucun (mesure directement la valeur) |
| **Idéal pour** | Business à marge uniforme | Business à marge variable |
| **Nécessite** | Tracking de conversion standard | Données de profit par conversion (ProfitMetrics ou configuration custom) |

> Le POAS est le signal d'optimisation supérieur pour les business à marge variable : une campagne générant 10 000 € de revenu à 10% de marge (1 000 € de profit) semble identique à une campagne générant 10 000 € à 50% de marge (5 000 € de profit) sous ROAS. Le POAS les différencie immédiatement.

---

## Quand utiliser les données panier vs ProfitMetrics

| **Scénario** | **Recommandation** |
|--------------|-------------------|
| Besoin d'attribution d'achat au niveau produit | Données panier |
| Besoin d'analyse cross-sell | Données panier |
| Besoin d'un taux de correspondance de conversion plus élevé | ProfitMetrics |
| Besoin d'enchères basées sur le profit (POAS) | ProfitMetrics |
| Catalogue produit à marge variable | Les deux (Données panier pour l'analyse, ProfitMetrics pour les enchères) |
| Catalogue à marge uniforme, veut des insights produit | Les données panier suffisent |
| Campagnes Shopping + Search + PMax en cours | Les deux pour une couverture de données maximale |

> Les données panier et ProfitMetrics servent des objectifs différents et se complètent : les données panier donnent des insights au niveau produit. ProfitMetrics donne la précision de conversion et l'optimisation basée sur le profit. Utilisez les deux pour la configuration de mesure la plus complète.

---

## Erreurs courantes

| **Erreur** | **Problème** | **Solution** |
|-------------|-------------|---------|
| Les IDs produit dans le data layer ne correspondent pas au flux | Les données panier ne peuvent pas matcher les achats aux produits, métriques vides | Vérifier que le format d'ID correspond exactement (ID parent vs ID variante) |
| COGS manquant dans le flux Merchant Center | Les colonnes de profit brut n'affichent aucune donnée | Ajouter l'attribut `cost_of_goods_sold` au flux |
| N'utiliser que le pixel GACT sans ProfitMetrics ou ECT | 15-30% des conversions perdues à cause des bloqueurs de pub et la suppression de cookies | Ajouter ProfitMetrics ou implémenter les enhanced conversions manuellement |
| Définir des cibles ROAS basées sur les données ProfitMetrics sans ajuster | Cibles trop basses car plus de conversions sont reportées | Recalibrer les cibles : si l'augmentation est de 20%, augmenter le ROAS cible d'environ 20% |
| Ne pas dédupliquer avec plusieurs méthodes de tracking | Conversions comptées en double gonflent les métriques | ProfitMetrics gère cela automatiquement, les configurations manuelles nécessitent la dédup par transaction ID |
| Ignorer les données cross-sell | Manquer des insights sur quelles annonces génèrent des achats multi-produits | Examiner les colonnes cross-sell mensuellement, ajuster la stratégie publicitaire en conséquence |

---

## Documents liés

| **Document** | **Relation** |
|--------------|------------------|
| [Measurement Maturity Mental Model](<../../01-strategie/reporting/Reporting - Maturité de la mesure.md>) | Les données panier et le tracking de profit sont des techniques de mesure avancées |
| [Conversion Action Reference](<Suivi - Actions de conversion.md>) | Paramètres d'action de conversion qui interagissent avec les données panier |
| [Unit Economics Reference](<../../01-strategie/fondamentaux/Fondamentaux - Unit economics.md>) | Calculs d'unit economics qui informent le COGS et le tracking de profit |
| [Transaction ID Reference](<Suivi - Transaction ID.md>) | Transaction IDs requis pour la déduplication |
| [Conversion Volume Thresholds Reference](<Suivi - Seuils de volume de conversions.md>) | L'augmentation ProfitMetrics aide à maintenir les seuils de volume |
