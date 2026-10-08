# Stratégie des asset groups PMax

> **Plateforme :** Google Ads
> **Catégorie :** Pmax
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Cette fiche documente la composition des asset groups, les stratégies de structure et les bonnes pratiques pour les campagnes Performance Max dans tous les secteurs.

Les asset groups sont les briques de construction des campagnes PMax. Chaque asset group contient des assets créatifs, des signaux d'audience et des listing groups (pour l'e-commerce). Cette fiche couvre comment structurer et peupler les asset groups efficacement.

---

## Ce que couvre cette fiche / Ce qu'elle ne couvre PAS

Cette fiche ne couvre **pas** :

- Quand utiliser PMax (Voir : [PMax Structure Mental Model (Lead Gen/SaaS)](<Pmax - Structure PMax (Lead Gen-SaaS).md>) ou [PMax Structure Mental Model (Ecommerce)](<Pmax - Structure PMax (E-commerce).md>))
- Les détails des signaux d'audience (Voir : [Audience Signals Reference](<../audiences/Audiences - Signaux d'audience.md>))
- La mise en place de campagne pas à pas (voir les SOPs correspondants)
- Feed-Only vs Full Assets (Voir : [Shopping Campaign Type Mental Model](<../shopping/Shopping - Types de campagne Shopping.md>))

---

## Feed-Only vs Full Assets : exigences d'assets

> ⚠️ **Distinction critique :** PMax Feed-Only et PMax Full Assets ont des exigences d'assets complètement différentes.

| **Type PMax** | **Assets requis** | **Comportement** |
|---------------|---------------------|--------------|
| **Feed-Only** | Listing groups uniquement (AUCUN autre asset) | Diffuse principalement sur les surfaces Shopping (fuite mineure de remarketing vers d'autres réseaux possible) |
| **Full Assets** | Tous les assets ci-dessous | Diffuse sur toutes les surfaces Google |

**Pour PMax Feed-Only :** N'ajoutez AUCUN titre, long titre, description, image, logo ou vidéo. Configurez uniquement les listing groups. Votre flux produit EST votre créatif. Ajouter le moindre asset fera diffuser PMax sur Display et YouTube.

---

## Composants des asset groups (Full Assets uniquement)

Chaque asset group en Full Assets PMax contient :

| **Composant** | **Objectif** | **Requis** |
|---------------|-------------|--------------|
| **URL finale** | Destination de la landing page | Oui |
| **Titres** | Texte court pour les annonces | Oui (3 minimum) |
| **Longs titres** | Texte plus long pour Display/Discover | Oui (1 minimum) |
| **Descriptions** | Corps du texte | Oui (2 minimum) |
| **Images** | Créatif visuel | Oui (1 minimum par format) |
| **Logos** | Identification de la marque | Oui (1 minimum) |
| **Vidéos** | YouTube et emplacements vidéo | Non (mais fortement recommandé) |
| **Signaux d'audience** | Suggestions de ciblage | Non (mais recommandé) |
| **Listing groups** | Sélection de produits (e-commerce uniquement) | Oui (e-commerce) |

---

## Spécifications des assets

### Assets textuels

| **Type d'asset** | **Longueur max** | **Minimum** | **Recommandé** |
|----------------|---------------|-------------|-----------------|
| **Titres** | 30 caractères | 3 | 5-11 |
| **Longs titres** | 90 caractères | 1 | 2-5 |
| **Descriptions** | 90 caractères | 2 | 4 |
| **Nom de l'entreprise** | 25 caractères | 1 | 1 |
| **Appel à l'action** | Options prédéfinies | 1 | 1 |
| **Chemin URL d'affichage** | 15 caractères × 2 | 0 | 1-2 |

> 💡 **Ne maximisez pas le nombre d'assets.** Moins d'assets, plus ciblés, permettent un test publicitaire plus efficace. Voir [SOP - Test RSA avec la boucle d'iteration](<../search/Search - Test RSA avec la boucle d'itération.md>).

### Assets image

| **Format** | **Ratio** | **Dimensions min** | **Recommandé** | **Minimum** |
|------------|-----------------|-------------------|-----------------|-------------|
| **Paysage** | 1.91:1 | 600×314 | 1200×628 | 1 |
| **Carré** | 1:1 | 300×300 | 1200×1200 | 1 |
| **Portrait** | 4:5 | 480×600 | 960×1200 | 0 |

**Exigences image :**

- Types de fichiers : JPG, PNG
- Taille max : 5 Mo
- Pas de superposition de texte couvrant >20 % de l'image
- Pas de texte promotionnel ("-50 %")

### Assets logo

| **Format** | **Ratio** | **Dimensions min** | **Recommandé** |
|------------|-----------------|-------------------|-----------------|
| **Logo carré** | 1:1 | 128×128 | 1200×1200 |
| **Logo paysage** | 4:1 | 512×128 | 1200×300 |

### Assets vidéo

| **Spécification** | **Exigence** |
|-------------------|-----------------|
| **Hébergement** | Doit être sur YouTube |
| **Durée minimale** | 10 secondes |
| **Durée recommandée** | 15-60 secondes |
| **Ratios** | Horizontal (16:9), Carré (1:1), Vertical (9:16) |
| **Qualité** | 1080p ou plus recommandé |

> ⚠️ **Si vous ne fournissez pas de vidéo, Google en auto-génère une :** les vidéos auto-générées à partir de vos images sous-performent typiquement par rapport aux vidéos personnalisées. Importez toujours au moins une vidéo.

---

## Stratégies de structure des asset groups

### Stratégie 1 : Par offre/service (Lead Gen/SaaS)

Un asset group par produit ou offre de service.

| **Asset group** | **URL finale** | **Thème créatif** |
|-----------------|---------------|-------------------|
| Produit A | /produit-a | Message Produit A |
| Produit B | /produit-b | Message Produit B |
| Pack services | /services | Message services |

**Idéal pour :** Plusieurs offres distinctes avec des propositions de valeur différentes

### Stratégie 2 : Par segment d'audience

Un asset group par audience cible, même offre.

| **Asset group** | **Signal d'audience** | **Angle créatif** |
|-----------------|--------------------|--------------------|
| Entreprise | Grandes entreprises | Focus sur l'échelle, la sécurité |
| PME | Petites entreprises | Facilité d'utilisation, prix |
| Startups | Fondateurs de startup | Croissance, flexibilité |

**Idéal pour :** Même produit, différents profils d'acheteurs

### Stratégie 3 : Par angle de message

Un asset group par thème de message.

| **Asset group** | **Angle de message** | **Focus créatif** |
|-----------------|--------------------|--------------------|
| Fonctionnalités | Capacités du produit | Ce qu'il fait |
| Bénéfices | Résultats utilisateur | Ce que vous obtenez |
| Preuve sociale | Témoignages, résultats | Qui d'autre l'utilise |
| Urgence | Offres limitées dans le temps | Pourquoi maintenant |

**Idéal pour :** Tester quel message résonne

### Stratégie 4 : Par catégorie de produit (e-commerce)

Un asset group par catégorie de produit avec un créatif spécifique à la catégorie.

| **Asset group** | **Listing group** | **Thème créatif** |
|-----------------|-------------------|--------------------|
| Chaussures de course | product_type = Chaussures de course | Imagerie course |
| Chaussures de training | product_type = Chaussures de training | Imagerie gym/training |
| Chaussures casual | product_type = Chaussures casual | Imagerie lifestyle |

**Idéal pour :** Catégories avec des styles visuels ou audiences différents

> ⚠️ **Cette stratégie est uniquement pour PMax Full Assets :** pour PMax Feed-Only, vous n'ajoutez aucun asset créatif : pas d'images, pas de vidéos, pas de titres, pas de descriptions. Configurez uniquement les listing groups.

### Stratégie 5 : Approche hybride

Combinez les stratégies selon la complexité de la campagne.

| **Campagne** | **Asset group 1** | **Asset group 2** | **Asset group 3** |
|--------------|-------------------|-------------------|-------------------|
| Produit Entreprise | Angle fonctionnalités | Angle bénéfices | Preuve sociale |
| Produit PME | Angle fonctionnalités | Angle bénéfices | Focus prix |

**Idéal pour :** Comptes matures avec suffisamment de volume de conversions par asset group

---

## Exigences de volume des asset groups

Chaque asset group a besoin de suffisamment de conversions pour apprendre indépendamment.

| **Structure** | **Conversions min/mois** | **Recommandation** |
|---------------|------------------------------|-------------------|
| Asset group unique | 30+ | Commencer ici |
| 2-3 asset groups | 30+ par asset group | Passer quand le seuil est atteint |
| 4+ asset groups | 30+ par asset group | Uniquement pour les comptes à fort volume |

> ⚠️ **Ne sur-segmentez pas :** si vous ne pouvez pas obtenir 30+ conversions par asset group par mois, consolidez.

---

## Bonnes pratiques pour les assets textuels

### Titres (30 caractères)

| **Type** | **Exemples** |
|----------|-------------|
| **Bénéfice** | "Scalez Vos Campagnes", "Maximisez le ROAS Client" |
| **Fonctionnalité** | "Optimisation Alimentée par IA", "Système PPC Complet" |
| **CTA** | "Essai Gratuit", "Demandez une Démo" |
| **Preuve sociale** | "Utilisé par 500+ Agences", "#1 OS Google Ads" |

**Mélangez :** incluez de la variété entre les catégories. Ne répétez pas le même message.

> ↪️ **Pour les patterns et angles de titres :** voir [Headline Angle Catalog](<../search/Search - Angles de headlines.md>).

### Longs titres (90 caractères)

| **Type** | **Exemples** |
|----------|-------------|
| **Proposition de valeur** | "Le système Google Ads qui aide les agences à scaler leurs campagnes et maximiser le ROAS client efficacement" |
| **Problème-solution** | "Arrêtez de perdre du temps en optimisation manuelle et commencez à scaler votre agence de manière rentable" |
| **Stack de bénéfices** | "Diagnostiquez les problèmes plus vite, prenez de meilleures décisions et exécutez avec des cadres éprouvés" |

### Descriptions (90 caractères)

| **Focus** | **Exemples** |
|-----------|-------------|
| **Bénéfice principal** | "Automatisez votre optimisation Google Ads et ne manquez plus jamais une opportunité de scaling". |
| **Fonctionnalités** | "Diagnostic par contraintes, cadres de décision et SOPs d'exécution, tout en un système". |
| **CTA** | "Commencez votre essai gratuit aujourd'hui. Pas de carte bancaire requise pour démarrer". |

> ↪️ **Pour les patterns de descriptions :** voir [Description Expansion Catalog](<../search/Search - Patterns d'expansion de descriptions.md>).

---

## Bonnes pratiques pour les assets image

### Recommandations de contenu

| **Faire** | **Ne pas faire** |
|--------|-----------|
| Montrer le produit en utilisation | Utiliser des photos stock avec filigranes |
| Utiliser des photos haute qualité | Ajouter du texte promotionnel ("-50 %") |
| Inclure des personnes (améliore le CTR) | Utiliser des images floues ou pixelisées |
| Correspondre aux visuels de la landing page | Induire en erreur sur le produit/offre |
| Tester lifestyle vs produit | Utiliser les logos ou contenu de concurrents |

### Recommandations de format

| **Emplacement** | **Meilleur format** | **Notes** |
|---------------|-----------------|-----------|
| **Shopping** | Images du flux produit | Automatique depuis le flux |
| **Search** | Carré (1:1) | Accompagnement du texte |
| **Display** | Paysage (1.91:1) | Le plus d'inventaire |
| **YouTube** | Paysage (1.91:1) | Miniature |
| **Discover** | Portrait (4:5) | Mobile-first |

### Recommandations de variété

Fournissez de la variété sur :

- **Angles :** Plans produit, lifestyle, gros plans
- **Sujets :** Produit seul, produit avec personnes, produit en contexte
- **Branding :** Certains avec logo, certains sans
- **Arrière-plans :** Blanc/épuré, contextuel, brandé

> ↪️ **Pour les spécifications et bonnes pratiques image :** voir [Image Creative Reference](<../creatives/Creatives - Création image.md>).

---

## Bonnes pratiques pour les assets vidéo

### Recommandations de durée

| **Durée** | **Idéal pour** |
|--------------|--------------|
| 6-15 secondes | Notoriété de marque, message simple |
| 15-30 secondes | Démo produit, mise en avant de fonctionnalité |
| 30-60 secondes | Explication détaillée, témoignage |
| 60+ secondes | Walkthrough produit approfondi |

### Structure de contenu

| **Format** | **Structure** |
|------------|---------------|
| **Accroche-Problème-Solution** | Attraper l'attention → Point de douleur → Votre produit |
| **Démo** | Montrer le produit en action → Fonctionnalités clés → CTA |
| **Témoignage** | Histoire client → Problème → Solution → Résultat |
| **Focus fonctionnalité** | Deep dive sur une fonctionnalité → Bénéfice → CTA |

### Recommandations techniques

- **Ratios :** fournissez les trois (16:9, 1:1, 9:16) quand possible
- **Son :** fonctionne sans son (sous-titres), amélioré avec le son
- **Branding :** logo dans les 5 premières secondes
- **CTA :** appel à l'action clair dans les 5 dernières secondes

> ↪️ **Pour les spécifications et bonnes pratiques vidéo :** voir [Video Creative Reference](<../video/Video - Création vidéo.md>).

---

## Signaux d'audience par asset group

Chaque asset group peut avoir ses propres signaux d'audience. Utilisez des signaux différents pour correspondre au thème créatif de l'asset group.

| **Thème de l'asset group** | **Signaux recommandés** |
|----------------------|------------------------|
| Entreprise | Liste d'entreprises, in-market par secteur |
| PME | Propriétaires de petites entreprises, URLs concurrentes |
| Fonctionnalités | In-market catégorie produit, termes de recherche |
| Bénéfices | Termes de recherche liés au problème, URLs concurrentes |
| Focus retargeting (reciblage) | Visiteurs du site, abandons de panier |

> ↪️ **Pour les types de signaux et l'implémentation :** voir [Audience Signals Reference](<../audiences/Audiences - Signaux d'audience.md>).

---

## Stratégie d'URL finale

### Approche URL unique

Toutes les annonces de l'asset group vont vers une seule landing page.

| **Avantages** | **Inconvénients** |
|----------|----------|
| Simple | Peut ne pas correspondre à toutes les variations d'annonces |
| Expérience cohérente | Moins personnalisé |

**Idéal pour :** Offre unique, campagnes ciblées

### Expansion de l'URL finale

Google sélectionne la landing page depuis votre site.

| **Paramètre** | **Quand utiliser** |
|-------------|-----------------|
| **ON** | Grand site, nombreuses pages pertinentes |
| **OFF** | Landing page spécifique requise, e-commerce (pages produit) |

> ⚠️ **Pour l'e-commerce Feed-Only :** toujours régler l'expansion de l'URL finale sur OFF. Vous voulez que les utilisateurs atterrissent sur les pages produit de votre feed, pas sur des articles de blog.

---

## Documents liés

| **Document** | **Relation** |
|--------------|------------------|
| [PMax Structure Mental Model (Lead Gen/SaaS)](<Pmax - Structure PMax (Lead Gen-SaaS).md>) | Décisions de structure (Lead Gen/SaaS) |
| [PMax Structure Mental Model (Ecommerce)](<Pmax - Structure PMax (E-commerce).md>) | Décisions de structure (Ecommerce) |
| [Audience Signals Reference](<../audiences/Audiences - Signaux d'audience.md>) | Types de signaux d'audience |
| [Shopping Campaign Settings Reference](<../strategie/Strategie - Paramètres universels de campagne.md>) | Paramètres PMax pour l'e-commerce |
| [SOP – Launch PMax for Lead Gen/SaaS](<Pmax - Lancer une campagne PMax pour Lead Gen-SaaS.md>) | Mise en place de campagne (Lead Gen/SaaS) |
| [SOP - Lancer une campagne PMax complete e-commerce](<Pmax - Lancer une campagne PMax Full Assets e-commerce.md>) | Mise en place de campagne (Ecommerce) |
