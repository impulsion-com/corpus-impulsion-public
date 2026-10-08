# Lancer une campagne dynamique TikTok Ads

> **Plateforme :** TikTok
> **Catégorie :** Lancement
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Créer et optimiser une campagne publicitaire dynamique sur TikTok Ads en utilisant un catalogue produit synchronisé, en distinguant Catalog Sales et Smart+ Campaign, en structurant des ensembles produits stratégiques, et en adressant les audiences selon leur position dans l'entonnoir d'achat.

---

## Ce que cette SOP ne couvre PAS

Cette SOP ne couvre **pas :**

- Le lancement d'une campagne conversions site classique (sans catalogue) (Voir : [Procédure - Lancer une campagne conversions TikTok Ads](<Lancement - Lancer une campagne conversions.md>))
- Le lancement d'une campagne Lead Gen (Voir : [Procédure - Lancer une campagne Lead Gen TikTok Ads](<Lancement - Lancer une campagne Lead Gen.md>))
- Les choix structurels (Voir : [Procédure - Structurer ses campagnes TikTok Ads](<Lancement - Structurer ses campagnes.md>))
- L'installation du pixel et la configuration des événements e-commerce (Voir : [Procédure - Configurer les événements de conversion TikTok](<../suivi/Suivi - Configurer les événements de conversion.md>))
- L'intégration spécifique Shopify (Voir : [Procédure - Configurer le tracking TikTok sur Shopify](<../suivi/Suivi - Configurer le suivi sur Shopify.md>))
- L'intégration spécifique WordPress/WooCommerce (Voir : [Procédure - Configurer le tracking TikTok sur WordPress](<../suivi/Suivi - Configurer le suivi sur WordPress.md>))
- La création du flux produit / catalogue côté boutique (en amont, hors TikTok)
- La stratégie créative dynamique (Voir : [Procédure - Stratégie créative TikTok Ads](<../creatives/Creatives - Stratégie créative.md>))

---

## Prérequis

- Catalogue produit synchronisé dans TikTok Ads Manager
- Pixel TikTok installé et événements e-commerce configurés (`ViewContent`, `AddToCart`, `InitiateCheckout`, `Purchase`)
- Tracking (suivi des conversions/évènements) Shopify → voir [Procédure - Configurer le tracking TikTok sur Shopify](<../suivi/Suivi - Configurer le suivi sur Shopify.md>)
- Tracking WordPress/WooCommerce → voir [Procédure - Configurer le tracking TikTok sur WordPress](<../suivi/Suivi - Configurer le suivi sur WordPress.md>)

---

## Étape 1 — Choisir le type de campagne dynamique

### Catalog Sales vs Smart+ Campaign

Il existe deux approches distinctes pour les campagnes dynamiques sur TikTok. Ne pas les confondre.

| Critère | Catalog Sales (Ventes depuis le document) | Smart+ Campaign |
|---|---|---|
| **Contrôle** | Manuel — vous définissez audiences, budgets, enchères | Automatique — TikTok gère tout |
| **Ciblage** | Vous choisissez : retargeting, prospection, audience similaire | Automatique |
| **Ensembles produits** | Configurable par segment (prix, catégorie, stock) | Tout le document |
| **Transparence** | Totale — rapports par audience et annonce | Limitée |
| **Budget minimum** | 20 €/jour par groupe | 50 €/jour recommandé |
| **Idéal pour** | Contrôle stratégique, ROAS élevé, retargeting | Scale rapide, petites équipes, budgets > 100 €/jour |

> 💡 **Recommandation** : commencer par **Catalog Sales** pour comprendre les performances par segment d'audience. Utiliser Smart+ en complément ou en test une fois les bases posées.

### Dynamic Showcase Ads (DSA) — Retargeting vs Prospecting

Les **Dynamic Showcase Ads** affichent automatiquement les produits les plus pertinents pour chaque utilisateur, issus du document. Ils fonctionnent dans deux modes :

| Mode | Audience | Objectif | Produits affichés |
|---|---|---|---|
| **Retargeting DSA** | Visiteurs du site, consulteurs de produits, abandonnistes panier | Récupérer les acheteurs potentiels chauds | Produits vus, mis en panier, ou complémentaires |
| **Prospecting DSA** | Audiences froides similaires à vos acheteurs | Acquérir de nouveaux clients | Produits bestsellers ou best ROAS du document |

> ⚠️ **Toujours séparer retargeting (reciblage) et prospecting dans des campagnes distinctes.** Mélanger les deux pollue les données et empêche une optimisation précise des enchères.

---

## Étape 2 — Vérifier la qualité du document

La qualité du flux catalogue est le facteur n°1 de performance des campagnes dynamiques. Un flux mal renseigné produit des annonces rejetées ou peu performantes.

### Spécifications techniques minimales

| Champ | Exigence | Bonne pratique |
|---|---|---|
| **Image produit** | 600 x 600 px minimum | 1200 x 1200 px, fond blanc ou lifestyle |
| **Titre** | Maximum 100 caractères | Inclure marque + produit + caractéristique clé |
| **Description** | Maximum 200 caractères | Bénéfices principaux, mots-clés pertinents |
| **Prix** | Format numérique + devise (ex. : 29.99 EUR) | Toujours synchronisé avec le site |
| **GTIN / EAN** | Recommandé (obligatoire pour certaines catégories) | Améliore la qualification et le matching |
| **Disponibilité** | `in stock` / `out of stock` / `preorder` | Synchronisation temps réel recommandée |
| **URL produit** | URL directe vers la page produit | Pas de redirections, URL canonique |

### Erreurs catalogue fréquentes et résolution

| Erreur | Cause probable | Solution |
|---|---|---|
| **Image rejetée** | Fond non conforme, texte sur image > 20 %, résolution insuffisante | Re-générer l'image, respecter les guidelines TikTok |
| **Prix format incorrect** | Virgule au lieu de point décimal, devise manquante | Corriger le format : `29.99 EUR` |
| **GTIN manquant** | Non renseigné dans le flux | Ajouter l'EAN/ISBN/UPC produit |
| **URL invalide** | Page supprimée, redirection cassée | Vérifier et corriger les URLs du flux |
| **Produit non approuvé** | Catégorie restreinte (alcool, médicament, etc.) | Vérifier les politiques TikTok → [Référence - Politiques publicitaires TikTok Ads](<../compte/Compte - Politiques publicitaires.md>) |
| **Synchronisation en échec** | Token Shopify expiré, webhook désactivé | Reconnecter l'intégration dans TikTok Ads Manager |

> 💡 **Vérifier régulièrement** l'onglet **Diagnostics** du document dans TikTok Ads Manager. Un catalogue avec > 5 % d'erreurs dégrade significativement les performances.

---

## Étape 3 — Créer des ensembles produits stratégiques (Product Sets)

Ne pas diffuser tout le document dans une seule campagne. Segmenter le document en **ensembles produits** pour cibler des audiences et définir des objectifs distincts.

### Types d'ensembles produits recommandés

| Ensemble | Critère de filtrage | Objectif campagne |
|---|---|---|
| **Bestsellers** | Top 20 % en volume de ventes | Prospecting — produits prouvés |
| **Nouveautés** | Date d'ajout < 30 jours | Notoriété nouveaux produits |
| **Promotions / Soldes** | Prix réduit ou tag "clearance" | Liquidation stock, audiences price-sensitive |
| **Panier moyen élevé** | Prix > X € (ex. : > 80 €) | Audiences à fort pouvoir d'achat |
| **Catégorie spécifique** | Filtrage par catégorie produit | Ciblage par intérêt ou intention |
| **Stock faible** | Quantité disponible < seuil | Urgence, FOMO |

> ⚠️ Les ensembles produits se configurent dans **TikTok Ads Manager → Assets → Catalog → Product Sets**.

---

## Étape 4 — Structurer les audiences (layering)

L'architecture d'audiences pour les campagnes dynamiques suit l'entonnoir d'achat en 3 niveaux.

### Niveau 1 — Trafic nouveau (Prospecting)

| Audience | Description | Enchère recommandée |
|---|---|---|
| Broad (sans ciblage) | TikTok explore librement | Lowest Cost |
| Lookalike Acheteurs 1 % | Similaires à vos acheteurs récents | Lowest Cost ou Cost Cap |
| Intérêts thématiques | Alignés sur vos catégories produits | Lowest Cost |

### Niveau 2 — Visiteurs engagés (Milieu de tunnel)

| Audience | Fenêtre | Enchère recommandée |
|---|---|---|
| Visiteurs du site (tous) | 30 jours | Cost Cap |
| Consulteurs de fiches produits | 14 jours | Cost Cap |
| Chercheurs de catégorie | 14 jours | Cost Cap |

### Niveau 3 — Abandonnistes chauds (Retargeting)

| Audience | Fenêtre | Enchère recommandée |
|---|---|---|
| Abandonnistes panier | 7 jours | Bid Cap ou Cost Cap serré |
| Initiateurs de checkout | 7 jours | Bid Cap ou Cost Cap serré |
| Acheteurs récents (pour upsell) | 30-90 jours | Cost Cap |

> ⚠️ **Exclure les acheteurs récents** des campagnes de prospecting et des campagnes abandonnistes pour éviter de dépenser sur des conversions déjà réalisées.

> ↪️ Configuration détaillée du retargeting : [Procédure - Mettre en place le retargeting TikTok Ads](<../audiences/Audiences - Mettre en place le retargeting.md>)

---

## Étape 5 — Formats créatifs disponibles

### Video Shopping Ads (VSA)

Les **Video Shopping Ads** combinent une vidéo créative (UGC ou produit) avec une carte produit superposée permettant l'achat direct depuis le fil TikTok.

| Critère | Video Shopping Ads | Dynamic Showcase Ads standard |
|---|---|---|
| Format | Vidéo + carte produit cliquable | Carousel ou vidéo auto-générée |
| Contrôle créatif | Élevé — vidéo manuelle | Faible — auto-généré |
| Engagement | Plus élevé | Plus faible |
| Production | Nécessite un créatif vidéo de qualité | Aucun créatif requis |
| Recommandé pour | Scale créatif, branding + performance | Test rapide, catalogue large |

> 💡 **Recommandation** : privilégier les VSA avec des créatifs UGC sur les bestsellers. Les annonces auto-générées DSA sont un filet de sécurité, pas une stratégie principale.

### TikTok Instant Page

L'**Instant Page** est une mini-landing page hébergée sur TikTok qui se charge en < 1 seconde, permettant de présenter le produit sans quitter TikTok.

> 💡 **Utiliser l'Instant Page** quand votre site est lent (> 3 secondes de chargement) ou quand vous souhaitez réduire la friction pour des produits nécessitant plus d'information avant l'achat.

---

## Étape 6 — Définir les objectifs ROAS

### ROAS de référence par stade de maturité

| Stade de la campagne | ROAS cible | Interprétation |
|---|---|---|
| **Phase de test** (J+1 à J+14) | Ne pas optimiser le ROAS | Collecter des données |
| **Campagne jeune** (< 1 mois) | > 1,5x | Seuil de survie minimum |
| **Campagne rentable** | > 2x | Rentabilité de base (dépend de la marge) |
| **Campagne mature** | 3 – 4x | Objectif standard e-commerce |
| **Campagne optimisée** | 4 – 6x | Excellente performance |
| **Campagne d'exception** | > 6x | Rare — surveiller la saturation d'audience |

> ⚠️ **Le ROAS minimum rentable dépend de vos marges.** Un ROAS de 2x est rentable à 50 % de marge, mais déficitaire à 30 % de marge. Calculer votre ROAS de seuil de rentabilité : `1 / marge nette`.

### Exemple de calcul

- Marge nette : 40 %
- ROAS seuil de rentabilité : 1 / 0,40 = **2,5x**
- ROAS cible (avec bénéfice) : **3,5 – 4x**

> ↪️ Pour l'optimisation des ROAS en cours de campagne : [Procédure - Optimiser ses campagnes TikTok Ads](<../optimisation/Optimisation - Optimiser ses campagnes.md>)

---

## Étape 7 — Lancer et surveiller

### Checklist de lancement

- [ ] Catalogue synchronisé, < 5 % d'erreurs dans les diagnostics
- [ ] Pixel TikTok actif avec événements e-commerce tracés
- [ ] Ensembles produits créés (bestsellers, nouveautés, promotions)
- [ ] Campagnes séparées : prospecting / retargeting
- [ ] Audiences exclusions configurées (acheteurs récents exclus du prospecting)
- [ ] Formats créatifs uploadés (VSA ou DSA selon stratégie)
- [ ] ROAS cible défini selon marges
- [ ] Règles automatisées configurées → voir [Procédure - Configurer les règles automatisées TikTok Ads](<../optimisation/Optimisation - Configurer les règles automatisées.md>)

### Surveillance post-lancement

| Période | Métriques à surveiller | Action si déviation |
|---|---|---|
| J+1 à J+3 | CPM, taux de diffusion, erreurs catalogue | Corriger les erreurs catalogue, ne pas modifier les enchères |
| J+4 à J+7 | CTR, ROAS préliminaire, CPA | Couper les annonces CTR < 0,5 % |
| J+7 à J+14 | ROAS par ensemble produit, ROAS par audience | Rediriger budget vers les segments rentables |
| J+14+ | ROAS global, fréquence, saturation | Renouveler les créatifs si fréquence > 3 |

---

## Benchmarks (analyse comparative) de référence

| Métrique | Excellent | Correct | À optimiser |
|---|---|---|---|
| CTR | > 1,5 % | 0,8 – 1,5 % | < 0,8 % |
| ROAS (campagne mature) | > 4x | 2 – 4x | < 2x |
| Taux d'erreur catalogue | < 2 % | 2 – 5 % | > 5 % |
| Fréquence (retargeting) | 2 – 4 | 4 – 6 | > 6 |
| Taux d'ajout au panier | > 5 % | 2 – 5 % | < 2 % |

---

## Références croisées

- [Procédure - Configurer le tracking TikTok sur Shopify](<../suivi/Suivi - Configurer le suivi sur Shopify.md>)
- [Procédure - Configurer le tracking TikTok sur WordPress](<../suivi/Suivi - Configurer le suivi sur WordPress.md>)
- [Procédure - Mettre en place le retargeting TikTok Ads](<../audiences/Audiences - Mettre en place le retargeting.md>)
- [Procédure - Optimiser ses campagnes TikTok Ads](<../optimisation/Optimisation - Optimiser ses campagnes.md>)
- [Procédure - Configurer les règles automatisées TikTok Ads](<../optimisation/Optimisation - Configurer les règles automatisées.md>)
- [Référence - Analyse des créatives TikTok Ads](<../creatives/Creatives - Analyse des créatives.md>)
- [Référence - Politiques publicitaires TikTok Ads](<../compte/Compte - Politiques publicitaires.md>)
