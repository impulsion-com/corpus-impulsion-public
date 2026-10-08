# Qualité du flux produits

> **Plateforme :** Google Ads
> **Catégorie :** Flux Produit
> **Type :** Checklist
> **Mis à jour :** 2026-05-07

## Objectif

Valide que les flux produits respectent les exigences de conformité, les standards de complétude et les bonnes pratiques d'optimisation avant le lancement des campagnes Shopping.

---

## Ce que cette checklist valide

Cette checklist confirme :

- Les attributs requis sont présents et correctement formatés
- Les attributs recommandés sont renseignés pour une baseline compétitive
- Les données correspondent aux Landing Pages (prix, disponibilité)
- Les images respectent les standards de qualité
- Les custom labels sont configurés pour la segmentation

Cette checklist ne couvre **PAS** :

- Les spécifications des attributs (Voir : [Product Feed Data Specification Reference](<Flux Produit - Spécifications du feed produit.md>))
- Les recommandations d'optimisation (Voir : [Product Feed Optimization Guidelines](<Flux Produit - Optimisation du flux produits.md>))
- Les concepts de qualité du feed (Voir : [Product Feed Quality Mental Model](<Flux Produit - Qualité du flux produits.md>))
- La configuration pas à pas (Voir : [SOP - Configurer et optimiser le flux produits](<Flux Produit - Configurer et optimiser le feed produit.md>))

---

## Quand l'utiliser

Exécuter cette checklist :

- Avant le lancement d'une nouvelle campagne Shopping
- Après l'upload initial du flux dans Merchant Center
- Lors de l'audit de la qualité d'un flux existant
- Après des modifications significatives du flux
- Lors du diagnostic de problèmes de performance de campagnes Shopping

---

## Checklist

### Conformité (Attributs requis)

Ce sont les exigences de base. Les produits seront refusés sans eux.

- [ ] Chaque produit a un `id` unique et stable
- [ ] Chaque produit a un `title` (max 150 caractères)
- [ ] Chaque produit a une `description` (max 5000 caractères)
- [ ] Chaque produit a un `link` valide vers la page produit
- [ ] Chaque produit a un `image_link` respectant les exigences de taille
- [ ] Chaque produit a un `price` avec code devise
- [ ] Chaque produit a une `availability` définie (in_stock, out_of_stock, preorder, backorder)
- [ ] Le prix du flux correspond au prix de la Landing Page
- [ ] La disponibilité du flux correspond au statut réel de l'inventaire
- [ ] Aucune violation de politique signalée dans Merchant Center

**Spécifique à l'habillement (Requis en BR, FR, DE, JP, UK, USA) :**

- [ ] `age_group` renseigné pour tout l'habillement
- [ ] `gender` renseigné pour tout l'habillement
- [ ] `color` renseigné pour tout l'habillement
- [ ] `size` renseigné pour tout l'habillement

### Identifiants produit

- [ ] `gtin` renseigné pour tous les produits avec des GTINs assignés
- [ ] `brand` renseigné pour tous les produits avec une marque claire
- [ ] `mpn` renseigné quand le GTIN n'est pas disponible
- [ ] `identifier_exists` défini à `false` uniquement pour les produits personnalisés/artisanaux
- [ ] Les GTINs sont valides (vérifiés par rapport à la validation GS1)
- [ ] Aucun identifiant fabriqué ou deviné

### Qualité des titres

- [ ] Les titres mettent en avant les détails les plus importants en premier
- [ ] Les titres utilisent l'espace de caractères disponible (viser 150 caractères)
- [ ] Les titres incluent marque, type de produit et attributs clés
- [ ] Les titres incluent les attributs de variante (taille, couleur) pour les variantes
- [ ] Les titres suivent les formules spécifiques à la catégorie
- [ ] Pas de texte promotionnel dans les titres
- [ ] Pas de MAJUSCULES pour l'emphase

### Qualité des descriptions

- [ ] Les descriptions incluent les caractéristiques clés dans les 160 premiers caractères
- [ ] Les descriptions incluent matériau, couleur, motif, taille, bénéfices
- [ ] Pas de texte promotionnel (prix, prix soldé)
- [ ] Pas de liens dans les descriptions
- [ ] Pas de balisage HTML dans les descriptions

### Qualité des images

- [ ] Les images principales font au moins 100x100px (1500x1500px recommandé)
- [ ] Les produits remplissent 75-90% du cadre de l'image
- [ ] Les images ont des fonds blancs ou neutres
- [ ] Pas de superpositions promotionnelles (prix, filigranes, CTAs)
- [ ] Pas de bordures sur les images
- [ ] La bonne variante est affichée pour chaque produit
- [ ] Taille de fichier inférieure à 16Mo par image
- [ ] `additional_image_link` renseigné (recommandé)
- [ ] `lifestyle_image_link` renseigné pour le haut du tunnel (recommandé)

### Prix et disponibilité

- [ ] Le prix inclut la TVA quand requis (spécifique au pays)
- [ ] Le prix utilise le bon code devise (ISO 4217)
- [ ] `sale_price` utilisé pour les soldes (pas de modification du `price`)
- [ ] La remise est de 5-90% pour l'éligibilité au badge
- [ ] UE : Le prix de référence des soldes est le plus bas des 30 derniers jours
- [ ] Les frais de livraison sont exclus du prix produit
- [ ] Les mises à jour automatiques sont activées pour le prix
- [ ] Les mises à jour automatiques sont activées pour la disponibilité
- [ ] La fréquence de mise à jour du flux correspond à la fréquence de changement de l'inventaire

### Catégorisation

- [ ] `product_type` renseigné avec votre taxonomie
- [ ] La hiérarchie `product_type` est logique et complète
- [ ] `google_product_category` ne surcharge que quand l'auto-catégorisation est incorrecte
- [ ] Les attributs requis spécifiques à la catégorie sont renseignés

### Custom labels et segmentation

- [ ] La stratégie `custom_label_0` à `custom_label_4` est définie
- [ ] Les labels de performance sont renseignés (hero/sidekick/villain/zombie)
- [ ] Les labels de marge sont renseignés (haute/moyenne/faible)
- [ ] Les labels de saisonnalité sont renseignés si applicable
- [ ] Les labels d'inventaire sont renseignés si applicable
- [ ] Les labels sont renseignés AVANT le lancement de la campagne

### Variantes

- [ ] `item_group_id` regroupe toutes les variantes du même produit
- [ ] Chaque variante a un `id` unique
- [ ] Les attributs spécifiques aux variantes sont renseignés (couleur, taille, matériau, motif)
- [ ] Les liens pré-sélectionnent la bonne variante via les paramètres URL
- [ ] Les images montrent la bonne variante

### Configuration de la source de données

- [ ] La source de données principale est créée avec les bons paramètres
- [ ] Le pays cible et la langue sont configurés
- [ ] Le feed label est défini pour le ciblage Google Ads
- [ ] La fréquence de récupération programmée est appropriée pour les changements d'inventaire
- [ ] Les flux supplémentaires sont configurés pour les données dynamiques (si nécessaire)
- [ ] Les règles d'attributs sont testées et appliquées (si utilisées)

### Santé Merchant Center

- [ ] Aucun problème au niveau compte dans les Diagnostics
- [ ] Les problèmes d'articles sont vérifiés et priorisés
- [ ] Les produits refusés représentent moins de 5% du document
- [ ] Les produits limités sont vérifiés pour amélioration
- [ ] Le compte Google Ads est lié
- [ ] Les paramètres de livraison sont configurés
- [ ] La politique de retour est configurée

---

## Critères de validation

### Flux minimum viable (Exigence de lancement)

Tous les éléments de conformité doivent passer avant le lancement des campagnes Shopping.

| **Critère** | **Seuil** |
|----------|---------------|
| Produits refusés | <5% du document |
| Attributs requis | 100% renseignés |
| Correspondance prix/disponibilité | 100% (ou mises à jour automatiques activées) |
| Images valides | 100% |

### Flux compétitif (Optimisation de performance)

Ces éléments améliorent le matching et le CTR mais ne sont pas requis pour le lancement.

| **Critère** | **Seuil** |
|----------|---------------|
| Couverture GTIN | >90% des produits éligibles |
| Optimisation des titres | Suivant les formules par catégorie |
| Qualité des descriptions | Détails clés dans les 160 premiers caractères |
| Custom labels | Stratégie de segmentation implémentée |
| Images supplémentaires | >50% des produits |

---

## Référence rapide

| **Document** | **Relation** |
|--------------|------------------|
| [Product Feed Quality Mental Model](<Flux Produit - Qualité du flux produits.md>) | Dimensions de qualité et priorisation |
| [Product Feed Data Specification Reference](<Flux Produit - Spécifications du feed produit.md>) | Spécifications et syntaxe des attributs |
| [Product Feed Optimization Guidelines](<Flux Produit - Optimisation du flux produits.md>) | Recommandations d'optimisation par attribut |
| [Merchant Center Reference](<Flux Produit - Merchant Center.md>) | Configuration Merchant Center |
| [SOP - Configurer et optimiser le flux produits](<Flux Produit - Configurer et optimiser le feed produit.md>) | Utilise cette checklist pour la validation |
| [Feed Segmentation Catalog](<Flux Produit - Tactiques de segmentation.md>) | Stratégies de custom labels |
