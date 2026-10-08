# Attributs de personnalisation dynamique

> **Plateforme :** Google Ads
> **Catégorie :** Search
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Liste les attributs de personnalisation dynamique réutilisables pour la personnalisation de prix, inventaire et promotions.

---

## Ce que c'est / Ce que ce n'est PAS

**Ce document :**

- Liste les types d'attributs dynamiques et leurs objectifs
- Fournit les règles de formatage par type de données
- Explique quand chaque attribut est utile

**Ce document NE fait PAS :**

- Fournir des instructions de configuration étape par étape (Voir : [SOP - Configurer les personnalisateurs dynamiques d'annonces](<Search - Configurer les personnalisateurs d'annonces dynamiques.md>))
- Valider la qualité des customizers (Voir : [Ad Customizer Quality Checklist](<Search - [Review] Qualité des personnalisateurs d'annonces.md>))

---

## Attributs dynamiques principaux

### 1️⃣ Attributs de pricing

| **Attribut** | **Type de données** | **Objectif** | **Valeur exemple** |
|-------------|--------------------|--------------|--------------------|
| **Price** | Price | Prix original/régulier | €899 |
| **SalePrice** | Price | Prix remisé | €719 |
| **Discount** | Percent | Pourcentage de réduction | 20% |
| **DiscountAmount** | Price | Montant de la réduction | €180 |
| **PriceFrom** | Price | Prix de départ pour une fourchette | €299 |

> 💡 **Astuce flexibilité prix :** Au lieu d'utiliser le type de données "Price", vous pouvez utiliser "Text" et inclure uniquement le nombre (ex : `899`). Puis ajoutez le symbole de devise directement dans votre RSA : € `{CUSTOMIZER.Price:899}`. Ça vous donne plus de contrôle sur le formatage - comme l'ajout ou non d'un espace entre le symbole et le nombre.

### 2️⃣ Attributs produit

| **Attribut** | **Type de données** | **Objectif** | **Valeur exemple** |
|-------------|--------------------|--------------|--------------------|
| **ProductName** | Text | Nom du produit ou de la catégorie | Oak Dining Table |
| **ProductType** | Text | Catégorie de produit | Dining Tables |

### 3️⃣ Attributs d'inventaire

| **Attribut** | **Type de données** | **Objectif** | **Valeur exemple** |
|-------------|--------------------|--------------|--------------------|
| **StockStatus** | Text | Message d'inventaire | Only 3 Left |
| **StockCount** | Number | Nombre exact en inventaire | 47 |
| **Availability** | Text | Statut de disponibilité | In Stock |

### 4️⃣ Attributs de promotion

| **Attribut** | **Type de données** | **Objectif** | **Valeur exemple** |
|-------------|--------------------|--------------|--------------------|
| **PromoText** | Text | Titre de la promotion | Summer Sale |
| **PromoCode** | Text | Code promo | SUMMER25 |
| **PromoEndDate** | Text | Date de fin de promotion | Sunday |

### 5️⃣ Attributs de livraison

| **Attribut** | **Type de données** | **Objectif** | **Valeur exemple** |
|-------------|--------------------|--------------|--------------------|
| **ShippingText** | Text | Offre de livraison | Free Shipping |
| **DeliveryTime** | Text | Estimation de livraison | 2-3 Days |

### 6️⃣ Attributs de confiance

| **Attribut** | **Type de données** | **Objectif** | **Valeur exemple** |
|-------------|--------------------|--------------|--------------------|
| **Rating** | Text | Note d'avis | 4.8/5 |
| **ReviewCount** | Text | Nombre d'avis | 2,400+ Reviews |

---

## Règles de formatage par type de données

| **Type de données** | **Format** | **✅ Correct** | **❌ Incorrect** |
|--------------------|-----------|----------------|------------------|
| **Text** | Tout texte | Summer Sale | - |
| **Price** | Devise + montant | €89.99 | 89.99 |
| **Number** | Chiffres uniquement | 47 | 47% |
| **Percent** | Nombre + % | 25% | 25 |

> ⚠️ **Les valeurs par défaut Price ne peuvent pas être des nombres :** Si vous utilisez le type Price, votre valeur par défaut doit être du texte comme "Great Prices" ou assurez-vous que chaque ligne a une valeur.

---

## Exemples de mappings de flux par vertical

### 1️⃣ Ecommerce (Tables à manger)

| **Keyword** | **ProductName** | **Price** | **SalePrice** | **Discount** | **StockStatus** | **ShippingText** |
|------------|----------------|----------|--------------|-------------|----------------|-----------------|
| oak dining table | Oak Dining Table | €899 | €719 | 20% | In Stock | Free Shipping |
| walnut dining table | Walnut Dining Table | €1,199 | €959 | 20% | Only 3 Left | Free Shipping |
| marble dining table | Marble Dining Table | €1,499 | €1,199 | 20% | In Stock | Free Shipping |
| extendable dining table | Extendable Dining Table | €799 | €639 | 20% | In Stock | Free Shipping |
| round dining table | Round Dining Table | €699 | €559 | 20% | Only 5 Left | Free Shipping |

### 2️⃣ SaaS (Logiciel CRM)

| **Keyword** | **ProductName** | **Price** | **Discount** | **PromoText** | **PromoCode** |
|------------|----------------|----------|-------------|--------------|---------------|
| crm software | CRM Platform | €29/mo | 20% | New Year Sale | NEWYEAR20 |
| sales crm | Sales CRM | €49/mo | 20% | New Year Sale | NEWYEAR20 |
| enterprise crm | Enterprise CRM | €99/mo | 25% | Enterprise Special | ENTERPRISE25 |
| simple crm | Simple CRM | €19/mo | 30% | Starter Promo | START30 |

### 3️⃣ Voyage (Hôtels)

| **Keyword** | **ProductName** | **PriceFrom** | **Availability** | **PromoText** | **ShippingText** |
|------------|----------------|--------------|-----------------|--------------|-----------------|
| amsterdam hotel | Amsterdam Central Hotel | €129/night | 5 Rooms Left | Spring Sale | Free Cancellation |
| paris hotel | Paris Boutique Hotel | €159/night | 2 Rooms Left | Spring Sale | Free Cancellation |
| london hotel | London City Hotel | €139/night | Still Available | Spring Sale | Free Cancellation |

> ⚠️ **Règle de type de données pour le pricing unitaire :** Les valeurs comme "€29/mo", "€129/night", ou "From €99" ne sont PAS valides pour le type de données "**Price**". Si le pricing inclut des unités, des fourchettes ou des qualificatifs, l'attribut doit utiliser le type de données "**Text**".

---

## Exemples d'utilisation RSA par vertical

### 1️⃣ Ecommerce (Tables à manger)

| **Slot** | **Contenu** |
|----------|------------|
| H1 | `{CUSTOMIZER.ProductName:Quality Furniture}` |
| H2 | Now `{CUSTOMIZER.SalePrice:On Sale}` |
| H3 | `{CUSTOMIZER.Discount:15%}` Off Today |
| H4 | Available now: `{CUSTOMIZER.StockStatus:In Stock}` |
| H5 | `{CUSTOMIZER.ShippingText:Free Shipping}` |
| H6 | Was `{CUSTOMIZER.Price:Higher}` - Save Now |
| D1 | Shop the `{CUSTOMIZER.ProductName:furniture}` you love. Now `{CUSTOMIZER.SalePrice:on sale}` (was `{CUSTOMIZER.Price:more}`). `{CUSTOMIZER.ShippingText:Low-cost shipping}` included. |
| D2 | `{CUSTOMIZER.Discount:Great savings}` off `{CUSTOMIZER.ProductName:all products}`. `{CUSTOMIZER.StockStatus:Available now}`. Order today! |

**Exemples de rendus :**

| **Keyword** | **H1** | **H2** | **H4** | **D1** |
|------------|--------|--------|--------|--------|
| oak dining table | `Oak Dining Table` | Now `€719` | Available now: `In Stock` | Shop the `Oak Dining Table` you love. Now `€719` (was `€899`). `Free Shipping` included. |
| walnut dining table | `Walnut Dining Table` | Now `€959` | Available now: `Only 3 Left` | Shop the `Walnut Dining Table` you love. Now `€959` (was `€1,199`). `Free Shipping` included. |
| marble dining table | `Marble Dining Table` | Now `€1,199` | Available now: `In Stock` | Shop the `Marble Dining Table` you love. Now `€1,199` (was `€1,499`). `Free Shipping` included. |

### 2️⃣ Voyage (Hôtels)

**Structure RSA :**

| **Slot** | **Contenu** |
|----------|------------|
| H1 | `{CUSTOMIZER.ProductName:Great Hotels}` |
| H2 | From `{CUSTOMIZER.PriceFrom:Great Rates}` |
| H3 | `{CUSTOMIZER.Availability:Check Availability}` |
| H4 | `{CUSTOMIZER.PromoText:Book Now}` |
| H5 | `{CUSTOMIZER.ShippingText:Flexible Booking}` |
| D1 | Book `{CUSTOMIZER.ProductName:your hotel}` from `{CUSTOMIZER.PriceFrom:great rates}`. `{CUSTOMIZER.Availability:Limited availability}`. `{CUSTOMIZER.ShippingText:Book risk-free}`. |
| D2 | `{CUSTOMIZER.PromoText:Special rates}` on `{CUSTOMIZER.ProductName:top hotels}`. `{CUSTOMIZER.ShippingText:Flexible booking}` included. |

**Exemples de rendus :**

| **Keyword** | **H1** | **H2** | **H3** | **D1** |
|------------|--------|--------|--------|--------|
| amsterdam hotel | `Amsterdam Central Hotel` | From `€129/night` | `5 Rooms Left` | Book `Amsterdam Central Hotel` from `€129/night`. `5 Rooms Left`. `Free Cancellation.` |
| paris hotel | `Paris Boutique Hotel` | From `€159/night` | `2 Rooms Left` | Book `Paris Boutique Hotel` from `€159/night`. `2 Rooms Left.` `Free Cancellation.` |
| london hotel | `London City Hotel` | From `€139/night` | `Still Available` | Book `London City Hotel` from `€139/night`. `Still Available`. `Free Cancellation`. |

---

## Sélection d'attributs par vertical

### Ecommerce

| **Indispensable** | **Recommandé** | **Optionnel** |
|-------------------|---------------|---------------|
| ProductName, Price | SalePrice, Discount, ShippingText | StockStatus, Rating |

### SaaS

| **Indispensable** | **Recommandé** | **Optionnel** |
|-------------------|---------------|---------------|
| ProductName | Price, PromoText | PromoCode, Discount |

### Lead Gen

| **Indispensable** | **Recommandé** | **Optionnel** |
|-------------------|---------------|---------------|
| - | PromoText, Availability | Discount, PromoCode |

### Voyage/Hôtellerie

| **Indispensable** | **Recommandé** | **Optionnel** |
|-------------------|---------------|---------------|
| PriceFrom, Availability | PromoText, ShippingText | Rating |

---

## Patterns de promotion

### Promotion active

| **Attribut** | **Pendant la promo** | **Après la promo (par défaut)** |
|-------------|---------------------|-------------------------------|
| PromoText | "Summer Sale" | "Special Offer" |
| Discount | "25%" | "15%" |
| PromoCode | "SUMMER25" | "SAVE" |

### Combinaison avec countdown

Combinez les customizers avec les countdown timers pour l'urgence :

`{CUSTOMIZER.PromoText:Sale}` Ends in `{COUNTDOWN(2026-01-31 23:59:59):Soon}`!

Rendu : "Summer Sale Ends in 3 days!"
