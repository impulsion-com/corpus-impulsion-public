# Configurer le tracking TikTok sur Shopify

> **Plateforme :** TikTok
> **Catégorie :** Suivi
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Installer et valider le tracking (suivi des conversions/évènements) TikTok sur une boutique Shopify en évitant le problème de double pixel, synchroniser le document produit, activer l'advanced matching et comprendre les limites de l'intégration native.

> ↪️ **Concepts fondamentaux :** avant d'aller plus loin, consultez [Procédure - Installer le pixel TikTok](<Suivi - Installer le pixel.md>) et [Procédure - Configurer le tracking TikTok Ads](<Suivi - Configurer le suivi.md>) pour comprendre l'architecture pixel + CAPI.

---

## Ce que cette SOP ne couvre PAS

Cette SOP ne couvre **pas :**

- L'installation manuelle du pixel hors Shopify (Voir : [Procédure - Installer le pixel TikTok](<Suivi - Installer le pixel.md>))
- L'architecture pixel + Events API en général (Voir : [Procédure - Configurer le tracking TikTok Ads](<Suivi - Configurer le suivi.md>))
- Le mapping détaillé des événements standards TikTok (Voir : [Procédure - Configurer les événements de conversion TikTok](<Suivi - Configurer les événements de conversion.md>))
- Le tracking sur WordPress / WooCommerce (Voir : [Procédure - Configurer le tracking TikTok sur WordPress](<Suivi - Configurer le suivi sur WordPress.md>))
- La création du catalogue produit côté Shopify pour les campagnes dynamiques (Voir : [Procédure - Lancer une campagne dynamique TikTok Ads](<../lancement/Lancement - Lancer une campagne dynamique.md>))

---

## Prérequis

| Élément | Statut requis |
|---|---|
| Compte TikTok for Business | Créé et vérifié |
| TikTok Ads Manager | Ad Account actif (non limité) |
| Boutique Shopify | Plan Basic ou supérieur |
| Accès admin Shopify | Droits d'installation d'applications |
| Pixel TikTok | Créé dans TikTok Ads Manager (Pixel ID à 20 chiffres) |

---

## Problème critique : le double pixel Shopify

⚠️ **Erreur numéro 1 sur Shopify :** avoir le pixel TikTok installé à la fois via l'application native TikTok ET manuellement dans le thème ou via GTM.

### Pourquoi c'est un problème

```
Utilisateur achète sur la boutique
        │
        ├──► Application TikTok native → envoie CompletePayment
        │
        └──► Pixel GTM / code thème → envoie CompletePayment (2ème fois)
                            │
                            ▼
              TikTok AM affiche 2 conversions pour 1 achat
              → CPA divisé par 2 → décisions d'optimisation fausses
```

### Comment détecter le double pixel

1. Installer **TikTok Pixel Helper** (extension Chrome)
2. Naviguer sur votre boutique Shopify
3. Si Pixel Helper affiche **2 instances du même Pixel ID** → double pixel confirmé

### Solution

| Méthode choisie | Action requise |
|---|---|
| Application native TikTok uniquement (recommandé) | Supprimer tout code pixel dans le thème Shopify (`theme.liquid`) et désactiver GTM pour TikTok |
| GTM uniquement (avancé) | Désinstaller l'application TikTok native et gérer tous les événements via GTM |
| Application native + CAPI via API | Laisser l'app native, activer CAPI séparée avec event_id pour déduplication |

💡 **Recommandation :** pour la majorité des boutiques Shopify, **l'application native + CAPI intégrée** est le choix optimal. Elle couvre tous les événements standards et inclut la déduplication automatique depuis 2023.

---

## Étape 1 — Installer l'application TikTok sur Shopify

1. Dans Shopify Admin > **Applications** > **Boutique d'applications**
2. Rechercher **"TikTok"** > Sélectionner l'application officielle **TikTok** (éditeur : TikTok Inc.)
3. Cliquer **Ajouter l'application** > Autoriser les permissions
4. Dans l'interface TikTok > **Connecter** votre compte TikTok for Business
5. Sélectionner l'**Ad Account TikTok** à lier
6. Connecter ou créer le **TikTok Business Center**

### Liaison du pixel

7. Dans l'onglet **Pixel** de l'app TikTok pour Shopify :
   - Sélectionner le pixel existant depuis TikTok Ads Manager, OU
   - Créer un nouveau pixel directement depuis l'interface
8. Confirmer la liaison — le Pixel ID s'affiche

---

## Étape 2 — Configuration du tracking automatique

### Événements auto-trackés par l'application native

L'application TikTok pour Shopify configure automatiquement les événements suivants :

| Événement TikTok | Déclenchement Shopify | Paramètres envoyés |
|---|---|---|
| `ViewContent` | Page produit | product_id, title, price, currency |
| `AddToCart` | Clic "Ajouter au panier" | product_id, quantity, value, currency |
| `InitiateCheckout` | Entrée dans le checkout | cart contents, value, currency |
| `CompletePayment` | Page de confirmation de commande | order_id, value, currency, products |

### Événements NON trackés automatiquement

⚠️ **Ces événements ne sont PAS couverts par l'application native et nécessitent une implémentation manuelle :**

| Événement | Pourquoi non couvert | Solution |
|---|---|---|
| `CompleteRegistration` | Inscription compte client | GTM ou code thème + déclencheur page confirmation |
| `Subscribe` (newsletter) | Formulaires d'abonnement email | GTM + déclencheur sur succès formulaire |
| Upsell / post-purchase | Pages post-achat Shopify (apps comme ReConvert) | GTM + pixel sur ces pages additionnelles |
| `SubmitForm` (hors checkout) | Formulaires de contact tiers | GTM ou intégration directe |
| Événements sur compte client | Login, modification compte | GTM + code thème |

---

## Étape 3 — Advanced Matching (données client hachées)

### Qu'est-ce que l'Advanced Matching

L'Advanced Matching transmet à TikTok des **données client hachées** (email, téléphone) pour améliorer le taux de correspondance entre vos conversions et les profils TikTok. Résultat : meilleure optimisation et audiences plus précises.

### Activation dans l'application Shopify

1. Application TikTok > **Paramètres** > **Advanced Matching**
2. Activer l'option **Automatic Advanced Matching**
3. Shopify envoie automatiquement les données suivantes (hachées SHA-256) :
   - Email du client
   - Numéro de téléphone (si renseigné)
   - Prénom / Nom
   - Ville, pays, code postal

💡 **L'Advanced Matching améliore le taux de match de 20 à 40%** selon TikTok. C'est particulièrement impactant sur les conversions iOS où les cookies sont limités.

⚠️ **Obligation RGPD :** l'Advanced Matching ne peut être activé que pour les clients ayant consenti à l'utilisation de leurs données à des fins marketing. Vérifiez votre politique de confidentialité et votre CMP.

---

## Étape 4 — Synchronisation du document produit

### Activation de la synchronisation

1. Application TikTok > **Catalogue** > **Synchroniser le document**
2. TikTok importe automatiquement tous les produits Shopify publiés

### Données synchronisées

| Champ Shopify | Champ TikTok Catalog | Obligatoire |
|---|---|---|
| Titre du produit | `title` | ✅ Oui |
| Description | `description` | ✅ Oui |
| Prix | `price` | ✅ Oui |
| Image principale | `image_link` | ✅ Oui (min 500x500px) |
| SKU / Variant ID | `id` | ✅ Oui |
| Disponibilité stock | `availability` | ✅ Oui |
| URL produit | `link` | ✅ Oui |
| Marque | `brand` | ✅ Recommandé |
| GTIN / EAN | `gtin` | ⚠️ Améliore le match |
| Catégorie Google | `google_product_category` | ⚠️ Recommandé |

### Délai de synchronisation

⚠️ **La synchronisation initiale du document peut prendre jusqu'à 24 heures.** Les mises à jour de produits (prix, stock, images) sont synchronisées dans un délai de 1 à 24 heures selon le volume du document.

### Troubleshooting catalogue — Produits rejetés

| Motif de rejet TikTok | Cause Shopify | Solution |
|---|---|---|
| `IMAGE_INVALID` | Image trop petite (< 500x500) ou format non supporté | Remplacer les images par des JPG/PNG ≥ 500x500px |
| `PRICE_INVALID` | Prix à 0 ou non défini sur certaines variantes | Vérifier chaque variante dans Shopify |
| `TITLE_MISSING` | Produit sans titre | Ajouter un titre à chaque produit |
| `AVAILABILITY_INVALID` | Produit archivé ou hors stock non géré | Mettre à jour l'état de publication |
| `LANDING_PAGE_ERROR` | URL produit non accessible | Vérifier que les produits sont publiés sur le canal Online Store |
| `DESCRIPTION_TOO_SHORT` | Description < 20 caractères | Enrichir les descriptions produits |

### Fréquence de rafraîchissement du document

| Scénario | Délai de mise à jour |
|---|---|
| Création d'un nouveau produit | 1 à 24 heures |
| Modification de prix | 1 à 24 heures |
| Mise à jour de stock (rupture) | 1 à 24 heures |
| Modification d'image | 24 heures |
| Suppression de produit | 24 à 48 heures |

💡 **Forcer une synchronisation manuelle :** Application TikTok > Catalogue > "Synchroniser maintenant" pour déclencher un refresh immédiat.

---

## Étape 5 — Publicités dynamiques (DPA)

Une fois le document synchronisé et le tracking actif, vous pouvez créer des campagnes **Dynamic Product Ads (DPA)** :

| Type | Description | Ciblage |
|---|---|---|
| Retargeting dynamique | Affiche les produits vus/ajoutés au panier non achetés | Visiteurs du site avec ViewContent / AddToCart |
| Prospection dynamique | TikTok trouve de nouveaux acheteurs similaires | Audience similaire des acheteurs |
| Catalog ads créatifs | Annonces vidéo auto-générées depuis le document | Audiences larges |

---

## TikTok Shopping — Fonctionnalités commerce intégrées

TikTok Shopping étend les capacités de vente au-delà des seules annonces :

| Fonctionnalité | Description | Disponibilité |
|---|---|---|
| **Product Links** | Ajouter des liens produits directement dans les vidéos organiques | Comptes Business TikTok |
| **LIVE Shopping** | Vente en direct avec panier intégré pendant les LIVE | Compte TikTok Shop requis |
| **Shop Tab** | Onglet boutique sur le profil TikTok | Marchés sélectionnés (UK, US, FR…) |
| **TikTok Shop** | Marketplace intégrée TikTok (checkout dans l'app) | Marchés sélectionnés |

💡 **TikTok Shop nécessite un compte séparé de TikTok Ads Manager.** La connexion Shopify → TikTok Shop se configure depuis l'application TikTok pour Shopify > onglet **TikTok Shop**.

---

## Vérification de l'installation

### Validation via Pixel Helper

1. Naviguer sur une fiche produit → vérifier `ViewContent` avec `content_id` correct
2. Ajouter au panier → vérifier `AddToCart` avec `value` et `currency`
3. Passer en caisse → vérifier `InitiateCheckout`
4. Passer une commande test → vérifier `CompletePayment` avec `value` et `order_id`

### Validation dans TikTok Ads Manager

1. **Événements** > **Gérer (Web)** > Sélectionner le pixel
2. **Test des événements** : entrer l'URL de la boutique
3. Effectuer le parcours d'achat → les événements apparaissent en temps réel

### Points de contrôle spécifiques Shopify

| Contrôle | Résultat attendu |
|---|---|
| Un seul Pixel ID dans Pixel Helper | Pas de double pixel |
| `content_id` correspond au Product ID Shopify | Cohérence catalogue / pixel |
| `value` = prix de vente réel (pas prix catalogue) | Valeur post-réduction correcte |
| `currency` = devise de la boutique | Cohérence avec les paramètres Shopify |
| Catalogue : 0 produit rejeté | Tous les produits visibles dans TikTok Catalog Manager |

---

## Troubleshooting avancé

### CompletePayment ne remonte pas

| Cause | Vérification | Solution |
|---|---|---|
| Application TikTok désactivée | Vérifier statut app dans Shopify Admin | Réactiver l'application |
| Page de confirmation personnalisée (app post-achat) | La page /thank_you est remplacée | Ajouter le pixel manuellement sur la page custom |
| Checkout extensible (Shopify Plus) | Accès limité au checkout | Utiliser Shopify Checkout Extensions pour injecter le pixel |
| Pixel bloqué par CMP | Test sans cookies acceptés | Configurer intégration CMP pour Shopify |

### Valeurs incorrectes dans CompletePayment

| Symptôme | Cause | Solution |
|---|---|---|
| `value` = prix catalogue (pas prix payé) | Remises non appliquées dans les paramètres | Vérifier paramètres app TikTok > "Use discounted price" |
| `currency` incorrect | Boutique multi-devise | Forcer la devise principale dans les paramètres TikTok app |
| `content_id` ne correspond pas au document | IDs de variantes vs IDs produit | Aligner le paramètre `content_type` ('product' vs 'product_group') |

---

## Checklist Shopify complète

- [ ] Application TikTok officielle installée depuis l'App Store Shopify
- [ ] TikTok for Business et Ad Account liés
- [ ] Pixel ID confirmé (20 chiffres) dans les paramètres de l'app
- [ ] Pixel Helper : 1 seule instance du pixel sur toutes les pages (pas de double pixel)
- [ ] 4 événements standards validés : ViewContent, AddToCart, InitiateCheckout, CompletePayment
- [ ] Advanced Matching activé (données client hachées)
- [ ] Catalogue synchronisé avec 0 produit rejeté dans TikTok Catalog Manager
- [ ] Délai de 24h attendu pour la synchronisation initiale du document
- [ ] Events supplémentaires (CompleteRegistration, post-purchase) configurés via GTM si nécessaire
- [ ] Test de commande réel validé (CompletePayment avec value et currency corrects)

---

## Références croisées

- [Procédure - Configurer le tracking TikTok Ads](<Suivi - Configurer le suivi.md>)
- [Procédure - Installer le pixel TikTok](<Suivi - Installer le pixel.md>)
- [Procédure - Configurer les événements de conversion TikTok](<Suivi - Configurer les événements de conversion.md>)
- [Procédure - Configurer le tracking TikTok sur WordPress](<Suivi - Configurer le suivi sur WordPress.md>)
