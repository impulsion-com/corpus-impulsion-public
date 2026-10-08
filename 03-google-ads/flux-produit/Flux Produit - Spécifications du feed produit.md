# Spécifications du flux produit

> **Plateforme :** Google Ads
> **Catégorie :** Flux Produit
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Documente tous les attributs du flux produit, leurs spécifications, syntaxe et exigences pour les campagnes Google Shopping.

---

## Ce que couvre cette fiche / Ce qu'elle ne couvre PAS

**Cette fiche :**

- Liste tous les attributs du flux produit avec leur syntaxe et des exemples
- Documente le statut requis vs recommandé vs optionnel
- Fournit les spécifications de format et les règles de validation

**Cette fiche ne couvre PAS :**

- La stratégie de qualité du flux (Voir : [Product Feed Quality Mental Model](<Flux Produit - Qualité du flux produits.md>))
- Les recommandations d'optimisation (Voir : [Product Feed Optimization Guidelines](<Flux Produit - Optimisation du flux produits.md>))
- Les patterns de titres/descriptions (Voir : [Product Title Catalog](<Flux Produit - Titres de produits.md>), [Product Description Catalog](<Flux Produit - Descriptions de produits.md>))

---

## Aide-mémoire : résumé des attributs

| **Attribut** | **Nom du flux** | **Requis** | **Limite de caractères** |
|---------------|---------------|--------------|---------------------|
| ID | `[id]` | Requis | 50 |
| Titre | `[title]` | Requis | 150 |
| Description | `[description]` | Requis | 5 000 |
| Lien | `[link]` | Requis | 2 000 |
| Lien image | `[image_link]` | Requis | 2 000 |
| Prix | `[price]` | Requis | - |
| Disponibilité | `[availability]` | Requis | - |
| Marque | `[brand]` | Requis* | 70 |
| GTIN | `[gtin]` | Recommandé | 14 |
| MPN | `[mpn]` | Conditionnel | 70 |
| État | `[condition]` | Requis pour occasion/reconditionné | - |
| Catégorie Google produit | `[google_product_category]` | Optionnel | - |
| Type de produit | `[product_type]` | Recommandé | 750 |
| Custom label 0-4 | `[custom_label_0-4]` | Optionnel | 100 |

*Requis pour les produits avec une marque clairement associée.

---

## Identifiants produit

### ID [id]

| **Spécification** | **Détails** |
|-------------------|-------------|
| **Statut** | Requis |
| **Limite de caractères** | 50 |
| **Syntaxe** | Alphanumérique, pas d'espaces |
| **Exemple (texte)** | `SKU-12345` |
| **Exemple (XML)** | `<g:id>SKU-12345</g:id>` |

**Règles :**
- Utilisez les SKUs comme IDs (uniques, stables)
- Même ID pour tous les pays/langues
- Ne réutilisez jamais des IDs pour des produits différents
- N'utilisez jamais la casse pour différencier les IDs

### GTIN [gtin]

| **Spécification** | **Détails** |
|-------------------|-------------|
| **Statut** | Recommandé (fortement) |
| **Limite de caractères** | 8, 12, 13 ou 14 chiffres |
| **Types** | UPC (12), EAN (13), JAN (13), ISBN (13), ITF-14 (14) |
| **Exemple (texte)** | `897126000560` |
| **Exemple (XML)** | `<g:gtin>897126000560</g:gtin>` |

**Impact :** les produits sans GTIN peuvent ne pas être éligibles à toutes les fonctionnalités Shopping (comparaison de prix, avis produit).

### MPN [mpn]

| **Spécification** | **Détails** |
|-------------------|-------------|
| **Statut** | Requis quand pas de GTIN, optionnel sinon |
| **Limite de caractères** | 70 |
| **Exemple (texte)** | `RZ0103730100R3U1` |
| **Exemple (XML)** | `<g:mpn>RZ0103730100R3U1</g:mpn>` |

### Identifiant existant [identifier_exists]

| **Spécification** | **Détails** |
|-------------------|-------------|
| **Statut** | Requis pour les produits sans GTIN, MPN ni marque |
| **Valeurs** | `true`, `false` |
| **Par défaut** | `true` (si non soumis) |
| **Exemple (texte)** | `false` |
| **Exemple (XML)** | `<g:identifier_exists>false</g:identifier_exists>` |

**Cas d'usage :** produits personnalisés, articles faits main, articles vintage, produits fabriqués avant les GTINs.

---

## Données essentielles du produit

### Marque [brand]

| **Spécification** | **Détails** |
|-------------------|-------------|
| **Statut** | Requis pour les produits avec une marque |
| **Limite de caractères** | 70 |
| **Exemple (texte)** | `Samsung` |
| **Exemple (XML)** | `<g:brand>Samsung</g:brand>` |

**Règles :**
- Utilisez le nom de marque reconnaissable
- Pour les produits sans marque : utilisez le nom du magasin si vous fabriquez
- Une seule langue/alphabet

### Titre [title]

| **Spécification** | **Détails** |
|-------------------|-------------|
| **Statut** | Requis |
| **Limite de caractères** | 150 |
| **Visible dans PLA** | ~70 caractères typiquement visibles |
| **Exemple (texte)** | `Corsair Vengeance RGB Pro 32GB (2x16GB) DDR4 RAM 3200MHz - Noir` |
| **Exemple (XML)** | `<g:title>...</g:title>` |

**Règles :**
- Mettez les attributs importants en premier (marque, specs clés)
- Pas de texte promotionnel ("Achetez maintenant", "Livraison gratuite")
- Pas de MAJUSCULES pour l'emphase
- Incluez les détails de variante (couleur, taille) quand applicable

**Formules par catégorie :**
| **Catégorie** | **Formule** |
|--------------|-------------|
| Mode | Marque + Genre + Type de produit + Attributs |
| Électronique | Marque + Attributs + Type de produit + Modèle |
| Consommables | Marque + Type de produit + Attributs (poids/quantité) |
| Livres | Titre + Auteur + Format + ISBN |

### Description [description]

| **Spécification** | **Détails** |
|-------------------|-------------|
| **Statut** | Requis |
| **Limite de caractères** | 5 000 |
| **Visible** | 160 premiers caractères dans l'onglet Shopping |
| **Exemple** | Paragraphe riche en fonctionnalités décrivant les avantages du produit |

**Règles :**
- Mettez les fonctionnalités clés dans les 160 premiers caractères
- Incluez les attributs pertinents : matériau, couleur, motif, taille, fonctionnalités
- Pas de texte promotionnel, liens ni HTML

### Lien [link]

| **Spécification** | **Détails** |
|-------------------|-------------|
| **Statut** | Requis |
| **Limite de caractères** | 2 000 |
| **Format** | URL complète avec https:// |
| **Exemple** | `https://www.example.com/product/sku-12345` |

**Règles :**
- Pas de redirections
- Pas de paramètres ValueTrack
- Accessible par Googlebot
- Pré-sélectionnez la variante si applicable

### Lien mobile [mobile_link]

| **Spécification** | **Détails** |
|-------------------|-------------|
| **Statut** | Optionnel |
| **Limite de caractères** | 2 000 |
| **Cas d'usage** | URLs séparées optimisées pour mobile (rare avec les sites responsives) |

---

## Images

### Lien image [image_link]

| **Spécification** | **Détails** |
|-------------------|-------------|
| **Statut** | Requis |
| **Limite de caractères** | 2 000 |
| **Formats** | JPEG, WebP, PNG, GIF, BMP, TIFF |
| **Taille max** | 16 Mo |
| **Résolution max** | 64 mégapixels |
| **Min recommandé** | 1500 × 1500 pixels |

**Règles :**
- Le produit remplit 75-90 % du cadre
- Fond blanc ou transparent
- Pas de superpositions promotionnelles (prix, filigranes, logos)
- Montrez le produit entier, la bonne variante
- Pour les lots : montrez tous les produits

### Lien image supplémentaire [additional_image_link]

| **Spécification** | **Détails** |
|-------------------|-------------|
| **Statut** | Recommandé |
| **Limite de caractères** | 2 000 par URL |
| **Images max** | 10 par produit |
| **Utiliser pour** | Angles différents, détails, sans emballage |

### Lien image lifestyle [lifestyle_image_link]

| **Spécification** | **Détails** |
|-------------------|-------------|
| **Statut** | Recommandé |
| **Limite de caractères** | 2 000 |
| **Images max** | 1 par produit |
| **Résolution min** | 600 × 600 pixels |
| **Ratio** | Entre 2:0 et 2:3 |
| **Utiliser pour** | Produit en contexte réel, fonds colorés |

### Lien modèle 3D [virtual_model_link]

| **Spécification** | **Détails** |
|-------------------|-------------|
| **Statut** | Recommandé pour les produits éligibles |
| **Disponibilité** | États-Unis uniquement |
| **Catégories** | Chaussures, vêtements, articles pour la maison |
| **Formats** | .gltf, .glb |
| **Taille max** | 15 Mo (10 Mo recommandé) |

---

## Prix

### Prix [price]

| **Spécification** | **Détails** |
|-------------------|-------------|
| **Statut** | Requis |
| **Format** | Nombre + devise ISO 4217 |
| **Exemple** | `49.99 USD` |
| **XML** | `<g:price>49.99 USD</g:price>` |

**Règles :**
- Correspondre exactement au prix de la landing page
- Inclure la TVA si requis
- Pas de frais de livraison dans le prix (utiliser l'attribut shipping)
- Maintenir à jour (plusieurs fois par jour si les prix changent souvent)

### Prix de vente [sale_price]

| **Spécification** | **Détails** |
|-------------------|-------------|
| **Statut** | Requis quand le produit est en promotion |
| **Format** | Nombre + devise ISO 4217 |
| **Exemple** | `39.99 USD` |

**Éligibilité au badge de vente :**
- Le prix de base doit être valide
- Le prix de vente < prix de base
- Remise entre 5 % et 90 %
- (UE) Le prix doit être le plus bas des 30 derniers jours

### Date effective du prix de vente [sale_price_effective_date]

| **Spécification** | **Détails** |
|-------------------|-------------|
| **Statut** | Optionnel |
| **Format** | Plage de dates ISO 8601 |
| **Limite de caractères** | 51 |
| **Exemple** | `2026-02-24T13:00-0500/2026-02-28T23:59-0500` |

### Coût des marchandises vendues [cost_of_goods_sold]

| **Spécification** | **Détails** |
|-------------------|-------------|
| **Statut** | Recommandé |
| **Format** | Nombre + devise ISO 4217 |
| **Prérequis** | Conversions with Cart Data activé |
| **Cas d'usage** | Reporting du profit brut dans Google Ads |

### Mesure de prix unitaire [unit_pricing_measure]

| **Spécification** | **Détails** |
|-------------------|-------------|
| **Statut** | Recommandé pour les catégories applicables |
| **Catégories** | Quincaillerie, fournitures de bureau, alimentaire, boissons, parfum |
| **Format** | Nombre + unité |
| **Unités** | oz, lb, mg, g, kg, floz, pt, qt, gal, ml, cl, l, in, ft, yd, cm, m, sqft, sqm, ct |
| **Exemple** | `500ml` |

### Mesure de base du prix unitaire [unit_pricing_base_measure]

| **Spécification** | **Détails** |
|-------------------|-------------|
| **Statut** | Requis quand unit_pricing_measure est utilisé |
| **Nombres supportés** | 1, 2, 4, 8, 10, 100 |
| **Exemple** | `100ml` |

---

## Disponibilité

### Disponibilité [availability]

| **Spécification** | **Détails** |
|-------------------|-------------|
| **Statut** | Requis |
| **Valeurs** | `in_stock`, `out_of_stock`, `preorder`, `backorder` |
| **Exemple** | `in_stock` |

**Règles :**
- Correspondre à la disponibilité du site web
- Utiliser `preorder` uniquement pour les produits non sortis
- Utiliser `backorder` pour les produits temporairement en rupture acceptant les commandes
- Utiliser l'attribut `pause` pour le contrôle temporaire de visibilité (pas `out_of_stock`)

### Date de disponibilité [availability_date]

| **Spécification** | **Détails** |
|-------------------|-------------|
| **Statut** | Requis pour preorder/backorder |
| **Format** | Datetime ISO 8601 |
| **Limite de caractères** | 25 |
| **Exemple** | `2026-03-15T09:00-0500` |

### Date d'expiration [expiration_date]

| **Spécification** | **Détails** |
|-------------------|-------------|
| **Statut** | Optionnel |
| **Format** | Datetime ISO 8601 |
| **Cas d'usage** | Produits saisonniers, offres à durée limitée |

---

## Catégorisation

### Catégorie Google produit [google_product_category]

| **Spécification** | **Détails** |
|-------------------|-------------|
| **Statut** | Optionnel (auto-attribué par Google) |
| **Format** | ID de catégorie ou chemin complet |
| **Cas d'usage** | Corriger une auto-catégorisation incorrecte |
| **Exemple (ID)** | `2271` |
| **Exemple (chemin)** | `Electronics > Audio > Headphones` |

### Type de produit [product_type]

| **Spécification** | **Détails** |
|-------------------|-------------|
| **Statut** | Recommandé |
| **Limite de caractères** | 750 |
| **Format** | Fil d'Ariane avec séparateur ` > ` |
| **Exemple** | `Photography > Lenses > SLR Lenses` |

**Utiliser pour :** organisation des campagnes, structure des listing groups, meilleure correspondance de requêtes.

### Custom label 0-4 [custom_label_0-4]

| **Spécification** | **Détails** |
|-------------------|-------------|
| **Statut** | Optionnel |
| **Limite de caractères** | 100 par label |
| **Limite de valeurs uniques** | 1 000 par label |
| **Labels disponibles** | custom_label_0 à custom_label_4 |

**Usages courants :**
| **Label** | **Cas d'usage** | **Exemples de valeurs** |
|-----------|--------------|-------------------|
| Label 0 | Niveau de performance | hero, sidekick, villain, zombie |
| Label 1 | Niveau de marge | high_margin, standard, low_margin |
| Label 2 | Statut promotionnel | on_sale, regular_price |
| Label 3 | Niveau d'inventaire | high_stock, normal, low_stock |
| Label 4 | Cycle de vie | new, core, mature, clearance |

---

## Variantes de produit

### ID du groupe d'articles [item_group_id]

| **Spécification** | **Détails** |
|-------------------|-------------|
| **Statut** | Requis pour les produits avec variantes |
| **Limite de caractères** | 50 |
| **Utilisation** | Regroupe les variantes de couleur, taille, matériau |
| **Exemple** | `01ABC` (SKU parent) |

**Règles :**
- Même item_group_id pour toutes les variantes d'un produit
- Chaque variante a un ID unique
- Soumettez les attributs de variante (couleur, taille, etc.) avec l'item_group_id

### Groupe d'âge [age_group]

| **Spécification** | **Détails** |
|-------------------|-------------|
| **Statut** | Requis pour les vêtements (certains pays) |
| **Valeurs** | `newborn`, `infant`, `toddler`, `kids`, `adult` |
| **Pays requis** | BR, FR, DE, JP, UK, USA |

### Genre [gender]

| **Spécification** | **Détails** |
|-------------------|-------------|
| **Statut** | Requis pour les vêtements (certains pays) |
| **Valeurs** | `male`, `female`, `unisex` |
| **Pays requis** | BR, FR, DE, JP, UK, USA |

### Couleur [color]

| **Spécification** | **Détails** |
|-------------------|-------------|
| **Statut** | Requis pour les vêtements (certains pays), recommandé sinon |
| **Limite de caractères** | 100 au total, 40 par couleur |
| **Format** | Primaire/Secondaire/Tertiaire (max 3) |
| **Exemple** | `red/black/white` |

**Règles :**
- Pas de codes couleur (#fff000)
- Pas de "multicolore" ou "voir image"
- Utilisez des noms de couleur standard dans le titre pour la trouvabilité

### Taille [size]

| **Spécification** | **Détails** |
|-------------------|-------------|
| **Statut** | Requis pour vêtements/chaussures (certains pays) |
| **Limite de caractères** | 100 |
| **Pays requis** | BR, FR, DE, JP, UK, USA |
| **Exemple** | `M`, `10 Wide` |

### Système de taille [size_system]

| **Spécification** | **Détails** |
|-------------------|-------------|
| **Statut** | Requis quand la taille est soumise |
| **Valeurs** | AU, BR, CN, DE, EU, FR, IT, JP, MEX, UK, US |

### Type de taille [size_type]

| **Spécification** | **Détails** |
|-------------------|-------------|
| **Statut** | Recommandé pour les vêtements |
| **Valeurs** | `regular`, `petite`, `plus`, `tall`, `big`, `maternity` |
| **Valeurs max** | 2 par produit |

### Matériau [material]

| **Spécification** | **Détails** |
|-------------------|-------------|
| **Statut** | Requis quand le produit varie par matériau |
| **Limite de caractères** | 200 |
| **Format** | Primaire/Secondaire/Tertiaire (max 3) |
| **Exemple** | `cotton/polyester/elastane` |

### Motif [pattern]

| **Spécification** | **Détails** |
|-------------------|-------------|
| **Statut** | Requis quand le produit varie par motif |
| **Limite de caractères** | 100 |
| **Exemple** | `striped`, `floral`, `solid` |

---

## Données produit supplémentaires

### Titre court [short_title]

| **Spécification** | **Détails** |
|-------------------|-------------|
| **Statut** | Recommandé (surtout pour PMax, Demand Gen) |
| **Limite de caractères** | 150 (65 recommandé) |
| **Cas d'usage** | Surfaces orientées navigation où les utilisateurs scrollent rapidement |

### État [condition]

| **Spécification** | **Détails** |
|-------------------|-------------|
| **Statut** | Requis pour occasion/reconditionné |
| **Valeurs** | `new`, `refurbished`, `used` |
| **Par défaut** | `new` |

### Adulte [adult]

| **Spécification** | **Détails** |
|-------------------|-------------|
| **Statut** | Requis pour les produits destinés aux adultes |
| **Valeurs** | `true`, `false` |
| **Alternative** | Définir le flag adulte au niveau du compte dans Merchant Center |

### Multi-pack [multipack]

| **Spécification** | **Détails** |
|-------------------|-------------|
| **Statut** | Requis pour les multi-packs créés par le marchand (certains pays) |
| **Format** | Entier (nombre de produits dans le pack) |
| **Exemple** | `6` |
| **Pays requis** | AU, BR, CZ, FR, DE, IT, JP, NL, ES, CH, UK, USA |

### Lot [is_bundle]

| **Spécification** | **Détails** |
|-------------------|-------------|
| **Statut** | Requis pour les lots créés par le marchand (certains pays) |
| **Valeurs** | `true`, `false` |
| **Cas d'usage** | Produit principal + accessoires vendus ensemble |

### Détail du produit [product_detail]

| **Spécification** | **Détails** |
|-------------------|-------------|
| **Statut** | Recommandé |
| **Sous-attributs** | section_name (optionnel, 140 car.), attribute_name (requis, 140 car.), attribute_value (requis, 1000 car.) |
| **Format (texte)** | `Section:Attribut:Valeur,Section:Attribut:Valeur` |

### Point fort du produit [product_highlight]

| **Spécification** | **Détails** |
|-------------------|-------------|
| **Statut** | Recommandé |
| **Limite de caractères** | 150 par point fort |
| **Min/Max** | 2-100 points forts |
| **Recommandé** | 4-6 points forts |
| **Format (texte)** | Séparés par des virgules entre guillemets |

---

## Destinations

### Destination exclue [excluded_destination]

| **Spécification** | **Détails** |
|-------------------|-------------|
| **Statut** | Optionnel |
| **Valeurs** | `Shopping_ads`, `Display_ads`, `Local_inventory_ads`, `Free_listings`, `Free_local_listings`, `Cloud_retail`, `Local_cloud_retail` |
| **Cas d'usage** | Empêcher les produits d'apparaître sur des destinations spécifiques |

### Destination incluse [included_destination]

| **Spécification** | **Détails** |
|-------------------|-------------|
| **Statut** | Optionnel |
| **Valeurs** | Mêmes que excluded_destination |
| **Note** | Exclu prend le dessus sur inclus |

### Pause [pause]

| **Spécification** | **Détails** |
|-------------------|-------------|
| **Statut** | Optionnel |
| **Valeurs** | `ads`, `all` |
| **Durée max** | 14 jours (utilisez excluded_destination pour plus longtemps) |

---

## Livraison

### Livraison [shipping]

| **Spécification** | **Détails** |
|-------------------|-------------|
| **Statut** | Requis si non défini dans Merchant Center, ou pour surcharger |
| **Sous-attrs requis** | country, price |
| **Sous-attrs optionnels** | region, postal_code, location_id, service, min/max_handling_time, min/max_transit_time |

### Label de livraison [shipping_label]

| **Spécification** | **Détails** |
|-------------------|-------------|
| **Statut** | Optionnel |
| **Utilisation** | Lier les produits aux paramètres de livraison par label |
| **Exemple** | `oversized`, `fragile`, `standard` |

### Poids de livraison [shipping_weight]

| **Spécification** | **Détails** |
|-------------------|-------------|
| **Statut** | Requis pour les tarifs calculés par transporteur |
| **Unités** | lb, oz, g, kg |
| **Limites** | 0-1000 kg, 0-2000 lbs |

### Dimensions de livraison [shipping_length/width/height]

| **Spécification** | **Détails** |
|-------------------|-------------|
| **Statut** | Requis pour les tarifs calculés par transporteur |
| **Unités** | cm, in |
| **Limites** | 1-3000 |

---

## Taxes

### Taxe [tax]

| **Spécification** | **Détails** |
|-------------------|-------------|
| **Statut** | Requis pour les États-Unis si non défini dans Merchant Center |
| **Sous-attributs** | country, region, rate, tax_ship |

### Catégorie de taxe [tax_category]

| **Spécification** | **Détails** |
|-------------------|-------------|
| **Statut** | Optionnel |
| **Utilisation** | Lier les produits aux paramètres de taxe par catégorie |

---

## Efficacité énergétique (UE)

### Certification [certification]

| **Spécification** | **Détails** |
|-------------------|-------------|
| **Statut** | Requis pour les produits énergétiques recalibré UE |
| **Cible** | États membres UE/AELE, Royaume-Uni |
| **Sous-attrs** | certification_authority, certification_name, certification_code |
| **Exemple (texte)** | `EC:EPREL:1955442` |

### Classe d'efficacité énergétique [energy_efficiency_class]

| **Spécification** | **Détails** |
|-------------------|-------------|
| **Statut** | Requis pour les produits énergétiques non recalibrés (UE) |
| **Valeurs** | A+++, A++, A+, A, B, C, D, E, F, G |
| **Requis avec** | min_energy_efficiency_class, max_energy_efficiency_class |

---

## Documents liés

| **Document** | **Relation** |
|--------------|------------------|
| [Product Feed Quality Mental Model](<Flux Produit - Qualité du flux produits.md>) | Cadre conceptuel |
| [Product Feed Optimization Guidelines](<Flux Produit - Optimisation du flux produits.md>) | Recommandations d'optimisation |
| [Product Title Catalog](<Flux Produit - Titres de produits.md>) | Patterns et exemples de titres |
| [Product Description Catalog](<Flux Produit - Descriptions de produits.md>) | Patterns et exemples de descriptions |
| [SOP - Configurer et optimiser le flux produits](<Flux Produit - Configurer et optimiser le feed produit.md>) | Étapes d'implémentation |
