# Configurer le tracking TikTok sur WordPress / WooCommerce

> **Plateforme :** TikTok
> **Catégorie :** Suivi
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Installer et valider le tracking (suivi des conversions/évènements) TikTok sur WordPress / WooCommerce via le plugin officiel, gérer les conflits courants avec les extensions tierces, configurer le document produit et implémenter un fallback GTM pour les cas complexes.

> ↪️ **Concepts fondamentaux :** avant de commencer, consultez [Procédure - Installer le pixel TikTok](<Suivi - Installer le pixel.md>) et [Procédure - Configurer le tracking TikTok Ads](<Suivi - Configurer le suivi.md>) pour comprendre l'architecture pixel + CAPI.

---

## Ce que cette SOP ne couvre PAS

Cette SOP ne couvre **pas :**

- L'installation manuelle du pixel hors plugin (Voir : [Procédure - Installer le pixel TikTok](<Suivi - Installer le pixel.md>))
- L'architecture pixel + Events API en général (Voir : [Procédure - Configurer le tracking TikTok Ads](<Suivi - Configurer le suivi.md>))
- Le mapping détaillé des événements standards TikTok (Voir : [Procédure - Configurer les événements de conversion TikTok](<Suivi - Configurer les événements de conversion.md>))
- Le tracking sur Shopify (Voir : [Procédure - Configurer le tracking TikTok sur Shopify](<Suivi - Configurer le suivi sur Shopify.md>))
- La création du flux produit pour les campagnes dynamiques (Voir : [Procédure - Lancer une campagne dynamique TikTok Ads](<../lancement/Lancement - Lancer une campagne dynamique.md>))

---

## Prérequis

| Élément | Statut requis |
|---|---|
| WordPress | Version 5.4 ou supérieure |
| WooCommerce | Version 5.0 ou supérieure (pour e-commerce) |
| Compte TikTok for Business | Créé et vérifié |
| TikTok Ads Manager | Ad Account actif |
| Pixel TikTok | Créé dans TikTok Ads Manager (Pixel ID à 20 chiffres) |
| Accès admin WordPress | Droits d'installation de plugins |

---

## Étape 1 — Installer le plugin officiel TikTok

1. WordPress Admin > **Extensions** > **Ajouter**
2. Rechercher **"TikTok"** dans le moteur de recherche
3. Identifier le plugin officiel (éditeur : **TikTok Inc.**) — ne pas installer de plugins tiers non officiels
4. **Installer** > **Activer**
5. Dans le menu WordPress : **TikTok** > **Paramètres**
6. **Connecter TikTok for Business** → authentification via OAuth
7. Sélectionner l'**Ad Account TikTok** à lier
8. Sélectionner ou créer le **Pixel TikTok** à associer

---

## Étape 2 — Configuration du tracking automatique

### Événements auto-trackés par le plugin WooCommerce

| Événement TikTok | Déclenchement WooCommerce | Paramètres envoyés |
|---|---|---|
| `ViewContent` | Page produit WooCommerce (single product) | product_id, title, price, currency |
| `AddToCart` | Clic "Ajouter au panier" | product_id, quantity, value, currency |
| `InitiateCheckout` | Accès à la page checkout | cart contents, value, currency |
| `CompletePayment` | Page de confirmation (`/checkout/order-received/`) | order_id, value, currency, products |
| `Search` | Résultats de recherche interne WooCommerce | search query |

### Comportement d'InitiateCheckout — dépendance au thème

⚠️ **Le déclenchement d'InitiateCheckout varie selon la configuration du checkout :**

| Configuration | Comportement |
|---|---|
| Checkout classique WooCommerce (page `/checkout`) | Déclenche au chargement de la page checkout |
| Checkout en une seule page (One Page Checkout) | Peut ne pas déclencher selon le plugin utilisé |
| Checkout Block Gutenberg (WooCommerce Blocks) | Nécessite configuration supplémentaire (voir section GTM fallback) |
| Checkout par popup / AJAX | Ne déclenche généralement PAS automatiquement |
| Checkout personnalisé via page builder (Divi, Elementor) | Comportement imprévisible — nécessite test systématique |

💡 **Toujours tester InitiateCheckout manuellement** avec TikTok Pixel Helper sur votre setup spécifique avant de considérer l'installation comme complète.

---

## Conflits connus avec les extensions WordPress

⚠️ **Certaines extensions WordPress interfèrent avec le tracking TikTok.** Voici les conflits les plus fréquents :

### Plugins de cache

| Plugin | Problème | Solution |
|---|---|---|
| **WP Rocket** | Cache des pages product → ViewContent peut ne pas se déclencher | Exclure les pages produits du cache JS, ou désactiver "Defer JS" pour le pixel TikTok |
| **W3 Total Cache** | Minification JS peut casser le code pixel | Exclure le script TikTok de la minification |
| **LiteSpeed Cache** | Cache page complète bloque les événements dynamiques | Exclure `/cart`, `/checkout`, `/my-account` du cache LiteSpeed |
| **Cloudflare** (mode cache agressif) | Pages statiques ignorent les cookies → pixel ne se déclenche pas | Configurer les règles Page Rules pour exclure le checkout du cache |

### Page builders

| Builder | Problème | Solution |
|---|---|---|
| **Elementor** | Formulaires Elementor ne déclenchent pas SubmitForm natif | Implémenter via GTM + déclencheur sur succès formulaire Elementor |
| **Divi** | Checkout Divi peut court-circuiter WooCommerce hooks | Tester et fallback GTM si nécessaire |
| **Beaver Builder** | Formulaires personnalisés non reconnus par le plugin TikTok | GTM fallback obligatoire |

### Plugins de checkout et UX

| Plugin | Problème | Solution |
|---|---|---|
| **CartFlows** | Tunnel checkout custom → `/checkout` non standard | Configurer GTM sur les pages CartFlows spécifiques |
| **FunnelKit** (ex-WooFunnels) | Même problème que CartFlows | GTM + déclencheurs sur les URLs FunnelKit |
| **WooCommerce Blocks** (checkout en blocs) | Plugin TikTok ne hook pas correctement sur les blocs Gutenberg | Fallback GTM + code custom (voir section dédiée) |

---

## Étape 3 — Synchronisation du document produit WooCommerce

### Activation

1. Plugin TikTok > **Catalogue** > Activer la synchronisation
2. Sélectionner le **Business Center TikTok** pour rattacher le document
3. Déclencher la synchronisation initiale

### Champs requis pour le document TikTok

| Champ | Source WooCommerce | Obligatoire | Note |
|---|---|---|---|
| `title` | Titre du produit | ✅ Oui | |
| `description` | Description longue | ✅ Oui | Min 20 caractères recommandé |
| `link` | URL produit | ✅ Oui | |
| `image_link` | Image mise en avant | ✅ Oui | **Min 500x500px, JPG ou PNG** |
| `price` | Prix affiché | ✅ Oui | Format : "19.99 EUR" |
| `availability` | État du stock | ✅ Oui | in_stock / out_of_stock / preorder |
| `brand` | Attribut marque ou nom boutique | ✅ Requis | Champ attribut WooCommerce ou nom du site |
| `gtin` | Champ EAN/GTIN (custom field) | ⚠️ Recommandé | **Améliore significativement le taux de match produit** |
| `google_product_category` | Catégorie Google (plugin requis) | ⚠️ Recommandé | Utiliser le plugin WooCommerce Google Feed |
| `condition` | Nouveau / Occasion | ⚠️ Pour reconditionné | Par défaut : "new" |

💡 **Le GTIN (EAN-13, UPC, ISBN…) est le champ qui améliore le plus la qualité du matching catalogue.** Si vos produits ont des codes EAN, créez un champ personnalisé WooCommerce et mappez-le dans le plugin TikTok.

### Impact multi-devise et multi-langue

⚠️ **Les configurations multi-devises et multi-langues créent des complications spécifiques :**

| Situation | Impact sur le document TikTok | Solution |
|---|---|---|
| **WPML + WooCommerce Multilingual** | Chaque langue génère des URLs différentes — TikTok peut dupliquer les produits | Configurer le plugin TikTok pour utiliser la langue principale uniquement, OU créer un catalogue par langue |
| **Polylang** | Même problème que WPML | Même solution |
| **Multi-devise (WooCommerce Currency Switcher)** | Prix dans le document peut ne pas correspondre à la devise de l'acheteur | Configurer le document avec la devise principale de la boutique |
| **WooCommerce Multilingual & Multicurrency** | Catalogue dupliqué par devise + langue | Utiliser le document dans la devise principale, TikTok gère la conversion d'affichage |
| **WOOCS / Aelia Currency Switcher** | Prix synchronisé peut être dans une devise secondaire | Vérifier que le plugin envoie les prix dans la devise de base WooCommerce |

💡 **Règle simple :** configurez le document TikTok avec la **devise et la langue principales de votre boutique**. Créez plusieurs catalogues séparés si vous ciblez des marchés radicalement différents (ex. boutique FR + boutique UK).

### Troubleshooting catalogue WordPress

| Motif de rejet | Cause WooCommerce | Solution |
|---|---|---|
| `IMAGE_INVALID` | Image produit < 500x500px ou format WebP | Convertir en JPG/PNG, dimensionner ≥ 500x500 |
| `BRAND_MISSING` | Aucun attribut "Marque" défini | Créer un attribut global "Marque" dans WooCommerce > Attributs |
| `PRICE_INVALID` | Produits variables sans prix sur toutes les variantes | Ajouter un prix à chaque variante |
| `AVAILABILITY_INVALID` | Produits en statut "Brouillon" inclus | Publier les produits ou les exclure via filtres |
| `GTIN_INVALID` | Format EAN incorrect (pas 8, 12, 13 ou 14 chiffres) | Corriger les codes EAN dans WooCommerce |

---

## Fallback GTM pour les cas complexes

### Quand utiliser GTM en complément du plugin

| Situation | Recommandation |
|---|---|
| Checkout WooCommerce Blocks (Gutenberg) | GTM obligatoire pour InitiateCheckout et CompletePayment |
| Tunnel CartFlows / FunnelKit | GTM sur les pages de tunnel personnalisées |
| Formulaires Elementor / Gravity Forms | GTM + déclencheur spécifique au plugin formulaire |
| Page de confirmation custom (pas `/order-received/`) | GTM sur l'URL de confirmation réelle |
| Upsell post-achat (WooCommerce Order Bumps) | GTM pour tracker les achats additionnels |

### Configuration GTM comme fallback

**Règle importante :** si vous utilisez GTM en parallèle du plugin TikTok natif, vous devez **éviter les doublons** sur les mêmes événements.

**Stratégie recommandée :**

```
Plugin TikTok natif → gère ViewContent, AddToCart
GTM → gère InitiateCheckout (si Blocks), CompletePayment (confirmation custom)

Sur chaque événement : event_id unique pour déduplication
```

### Installation GTM sur WordPress

1. Installer le plugin **"GTM4WP"** (Google Tag Manager for WordPress) — plugin officiel de la communauté
2. Coller l'ID de conteneur GTM dans les paramètres du plugin
3. Activer le **dataLayer WooCommerce** (option native GTM4WP) — fournit automatiquement les données produit et commande
4. Dans GTM, créer les balises TikTok basées sur les événements dataLayer WooCommerce

### Variables dataLayer WooCommerce disponibles via GTM4WP

```javascript
// Événement purchase WooCommerce via GTM4WP
dataLayer.push({
  'event': 'purchase',
  'ecommerce': {
    'transaction_id': 'ORDER-12345',
    'value': 97.00,
    'currency': 'EUR',
    'items': [{
      'item_id': 'SKU-001',
      'item_name': 'Nom produit',
      'price': 97.00,
      'quantity': 1
    }]
  }
});
```

---

## Vérification et validation

### Test complet du parcours d'achat

| Étape | Action | Événement attendu | Paramètre clé |
|---|---|---|---|
| Page produit | Ouvrir une fiche produit | `ViewContent` | `content_id` = Product ID WooCommerce |
| Panier | Cliquer "Ajouter au panier" | `AddToCart` | `value` = prix produit |
| Checkout | Accéder à la page paiement | `InitiateCheckout` | Présent (selon config) |
| Confirmation | Passer une commande test | `CompletePayment` | `value` = montant réel, `order_id` |

### Checklist de vérification anti-conflits

- [ ] Désactiver WP Rocket / W3TC temporairement pour les tests initiaux
- [ ] Tester en mode navigation privée (sans cache navigateur)
- [ ] Vérifier que le plugin TikTok est bien activé (pas seulement installé)
- [ ] Confirmer que le Pixel ID dans le plugin correspond à celui dans TikTok AM
- [ ] Tester après acceptation des cookies (si CMP installée)
- [ ] InitiateCheckout testé sur le checkout réel (pas uniquement la page panier)

---

## RGPD et Consentement sur WordPress

| Solution CMP | Compatibilité WordPress | Intégration GTM |
|---|---|---|
| **Axeptio** | Plugin WordPress officiel | Oui — via callbacks Axeptio |
| **Cookiebot** | Plugin WordPress officiel | Oui — via Consent Mode v2 |
| **Didomi** | Via script + plugin | Oui — via Didomi events |
| **GDPR Cookie Consent (plugin)** | Plugin WordPress populaire | Oui — via hooks WordPress |

⚠️ **Le plugin TikTok natif ne gère pas nativement le blocage par consentement.** Vous devez soit :
1. Utiliser une CMP qui bloque tous les scripts tiers jusqu'au consentement, OU
2. Conditionner le chargement du pixel via GTM + consentement CMP

---

## Checklist WordPress complète

- [ ] Plugin TikTok officiel installé depuis WordPress.org (éditeur : TikTok Inc.)
- [ ] TikTok for Business et Ad Account liés
- [ ] Pixel ID confirmé dans les paramètres du plugin
- [ ] 4 événements de base testés et validés (ViewContent, AddToCart, InitiateCheckout, CompletePayment)
- [ ] InitiateCheckout validé avec la configuration de checkout réelle du site
- [ ] Conflits de cache vérifiés (WP Rocket, W3TC, LiteSpeed, Cloudflare)
- [ ] Catalogue synchronisé : 0 produit rejeté dans TikTok Catalog Manager
- [ ] Champs obligatoires catalogue complets : titre, description, image ≥ 500x500, prix, disponibilité, marque
- [ ] GTIN ajouté pour les produits avec codes EAN (améliore le match)
- [ ] Impact multi-devise / multi-langue analysé et géré
- [ ] GTM fallback configuré si checkout non standard (Blocks, CartFlows, FunnelKit)
- [ ] CMP configurée : pixel bloqué sans consentement (test navigation privée OK)
- [ ] Advanced Matching activé dans les paramètres du plugin

---

## Références croisées

- [Procédure - Configurer le tracking TikTok Ads](<Suivi - Configurer le suivi.md>)
- [Procédure - Installer le pixel TikTok](<Suivi - Installer le pixel.md>)
- [Procédure - Configurer les événements de conversion TikTok](<Suivi - Configurer les événements de conversion.md>)
- [Procédure - Configurer le tracking TikTok sur Shopify](<Suivi - Configurer le suivi sur Shopify.md>)
