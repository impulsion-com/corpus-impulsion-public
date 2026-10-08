# Merchant Center

> **Plateforme :** Google Ads
> **Catégorie :** Flux Produit
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Cette fiche documente la configuration, les fonctionnalités et les spécifications techniques de Google Merchant Center pour la gestion des campagnes Shopping.

> ❓ **La question centrale :** Que dois-je savoir sur Merchant Center pour gérer efficacement les données produit et éviter les problèmes de compte ?

Google Merchant Center est le hub qui connecte votre catalogue produit aux surfaces Shopping de Google. Comprendre ses fonctionnalités, sources de données et diagnostics est essentiel pour maintenir des campagnes Shopping saines.

---

## Ce que couvre cette fiche / Ce qu'elle ne couvre PAS

Cette fiche ne couvre **pas** :

- Expliquer les attributs du flux produit (Voir : [Product Feed Data Specification Reference](<Flux Produit - Spécifications du feed produit.md>))
- Fournir des recommandations d'optimisation des attributs (Voir : [Product Feed Optimization Guidelines](<Flux Produit - Optimisation du flux produits.md>))
- Expliquer les concepts de qualité de flux (Voir : [Product Feed Quality Mental Model](<Flux Produit - Qualité du flux produits.md>))
- Fournir des instructions de configuration étape par étape (Voir : [SOP - Configurer et optimiser le flux produits](<Flux Produit - Configurer et optimiser le feed produit.md>))

---

## Aide-mémoire

| **Domaine** | **Paramètre clé** | **Impact** |
|----------|-----------------|------------|
| **Sources de données** | Principale vs. complémentaire | Détermine ce qui peut ajouter/supprimer des produits |
| **Mises à jour automatiques** | Prix, disponibilité, état | Prévient les décalages, évite les refus |
| **Règles d'attributs** | Transformer les données du flux | Résoudre les erreurs sans changer la source |
| **Liaison de compte** | Connexion Google Ads | Requise pour les campagnes Shopping |
| **Paramètres de livraison** | Délai de livraison, coût | Affecte le classement et la compétitivité |
| **Politique de retour** | Fenêtre de retour, coût | Requise pour l'approbation, affecte le classement |

> 💡 Merchant Center est le chaînon manquant entre votre boutique en ligne et Google Ads. Sans configuration correcte, même des flux parfaits ne peuvent pas alimenter les campagnes Shopping.

---

## Interface Merchant Center

### Sections principales

| **Section** | **Objectif** | **Actions clés** |
|-------------|-------------|-----------------|
| **Vue d'ensemble** | Snapshot de performance et statut des produits | Surveiller la performance quotidienne, voir les tendances d'approbation produit |
| **Produits** | Gestion du document produit | Ajouter des produits, corriger les erreurs, vérifier la visibilité |
| **Infos sur l'entreprise** | Détails du magasin et connexions | Mettre à jour les détails de l'entreprise, gérer la liaison de comptes |
| **Campagnes publicitaires** | Création et gestion de campagnes | Créer et gérer les campagnes Shopping |
| **Analytics** | Reporting de performance et insights | Voir les clics, impressions, compétitivité des prix |
| **Notifications** | Alertes et recommandations | Traiter les problèmes de configuration, les avertissements de politique |

### Fonctionnalités de la page Produits

| **Onglet/Fonctionnalité** | **Ce qu'il montre** | **Quand utiliser** |
|-----------------|-------------------|-----------------|
| **Tous les produits** | Catalogue produit complet avec statut | Vérifier la santé des produits, trouver des articles spécifiques |
| **Nécessite une attention** | Produits avec erreurs ou avertissements | Prioriser les corrections, résoudre les refus |
| **Graphique d'historique** | Tendances de statut des produits dans le temps | Identifier les changements soudains, suivre les améliorations |
| **Prochaines étapes** | Recommandations personnalisées | Suivre les suggestions actionnables pour l'amélioration |

---

## Statut et visibilité des produits

### Valeurs de statut des produits

| **Statut** | **Signification** | **Action requise** |
|------------|-------------|---------------------|
| **En cours d'examen** | Google examine le produit | Attendre 3-5 jours ouvrables pour les annonces Shopping |
| **En cours de traitement** | Google traite les mises à jour | Attendre jusqu'à 15 minutes |
| **Approuvé** | Le produit s'affiche sur Google | Aucune : le produit est en ligne |
| **Limité** | S'affiche dans certains cas uniquement | Vérifier "Nécessite une attention" pour les restrictions |
| **Non approuvé** | Le produit ne peut pas s'afficher | Résoudre les erreurs dans l'onglet "Nécessite une attention" |

### Visibilité des produits

| **Visibilité** | **Indicateur** | **Signification** |
|----------------|---------------|-------------|
| **Affiché** | Point vert | Le produit est activement diffusé |
| **Masqué** | Icône masqué | Le produit est manuellement masqué de la diffusion |
| **Erreur** | Icône erreur | Le produit ne peut pas être diffusé en raison d'erreurs |

> ⚠️ **Visibilité vs. Statut :** Vous contrôlez la visibilité (afficher/masquer les produits). Google contrôle le statut (approuvé/non approuvé). Un produit doit être à la fois visible ET approuvé pour être diffusé.

### Raisons courantes de refus

| **Catégorie** | **Exemples** | **Résolution** |
|--------------|--------------|----------------|
| **Violations de politique** | Contenu interdit, représentation trompeuse | Revoir les politiques Shopping Ads, corriger les violations |
| **Qualité des données** | Attributs requis manquants, erreurs de format | Corriger les données produit selon les spécifications |
| **Décalage prix/disponibilité** | Le flux diffère de la Landing Page | Activer les mises à jour automatiques, synchroniser le flux plus fréquemment |
| **Problèmes de site web** | Infos de contact manquantes, checkout cassé | Corriger les problèmes de conformité du site web |

---

## Sources de données

### Sources de données principales vs. complémentaires

| **Aspect** | **Source de données principale** | **Source de données complémentaire** |
|------------|-------------------------|------------------------------|
| **Objectif** | Source principale de données produit | Remplacer ou ajouter des attributs |
| **Peut ajouter des produits** | Oui | Non |
| **Peut supprimer des produits** | Oui | Non |
| **Utilisation autonome** | Oui | Non : doit être liée à la principale |
| **Usage typique** | Catalogue produit complet | Labels personnalisés, overrides de prix, Labelizer |

> 💡 Google recommande de soumettre tous les produits dans une seule source de données principale. Utilisez `excluded_destination` pour exclure des produits plutôt que des flux séparés.

### Méthodes d'upload

| **Méthode** | **Idéal pour** | **Automatisation** | **Scalabilité** | **Recommandation** |
|------------|--------------|----------------|-----------------|-------------------|
| **Récupération de fichier planifiée** | La plupart des retailers | Élevée | Élevée | Tier S : Méthode préférée |
| **Content API** | Catalogues larges/complexes, mises à jour temps réel | Élevée | Élevée | Tier A : Pour les changements fréquents |
| **Google Sheets** | Petits catalogues, contrôle manuel | Moyenne | Basse | Tier B : Configuration simple |
| **Automatisé (crawl du site)** | Configuration basique, faible maintenance | Élevée | Moyenne | Tier C : En retard, imprécis |
| **Éditeur de produit manuel** | Poignée de produits | Aucune | Très basse | Tier D : Dernier recours uniquement |

**Avantages de la récupération de fichier planifiée :**
- Automatiser et synchroniser les données produit
- Flexibilité complète sur la configuration du flux
- S'adapte à des milliers de produits
- Fonctionne avec plusieurs canaux au-delà de Google
- Efficace en temps avec un fort retour sur effort

**Avantages de la Content API :**
- Synchronisation en temps réel
- Efficace pour les catalogues larges et complexes
- Mises à jour fréquentes sans upload de fichier
- Gestion programmatique

### Créer une source de données

**Informations requises :**

| **Champ** | **Description** |
|-----------|-----------------|
| **Pays cibles** | Pays où les produits sont vendus |
| **Langue** | Langue des données produit |
| **Label de source de données** | Identifiant pour le ciblage Google Ads (feed label) |
| **Méthode marketing** | Quelles fonctionnalités Google peuvent utiliser les données |
| **Nom de la source de données** | Nom descriptif pour l'identification |
| **Nom du fichier** | Nom exact du fichier soumis (si basé sur un fichier) |

### Usages des sources de données complémentaires

| **Cas d'usage** | **Attributs typiquement inclus** |
|--------------|-----------------------------------|
| **Labels personnalisés** | `custom_label_0` à `custom_label_4` |
| **Mises à jour prix/disponibilité** | `id`, `price`, `availability` |
| **Intégration Labelizer** | Labels basés sur la performance |
| **Tarification régionale** | `id`, `region_id`, `price`, `availability` |

---

## Mises à jour automatiques d'articles

### Automatisations disponibles

| **Attribut** | **Ce que ça fait** | **Exigence** |
|---------------|------------------|-----------------|
| **Prix** | Met à jour le prix depuis la Landing Page | Balisage Schema.org recommandé |
| **Prix promotionnel** | Met à jour le prix barré et le prix promo | Balisage Schema.org recommandé |
| **Disponibilité** | Met à jour en stock/rupture de stock | Balisage Schema.org recommandé |
| **État** | Met à jour neuf/occasion/reconditionné | Balisage Schema.org recommandé |

### Fonctionnement des automatisations

1. Google crawle vos Landing Pages
2. Lit le balisage de données structurées (schema.org)
3. Met à jour les données produit dans Merchant Center
4. Prévient les décalages entre le flux et le site

> ⚠️ Les automatisations ne sont pas un remplacement des mises à jour régulières du flux. Elles corrigent des problèmes temporaires pour un petit pourcentage de produits. Continuez à mettre à jour les données produit fréquemment.

### Mapping Schema.org

| **Attribut du flux** | **Propriété Schema.org** |
|--------------------|------------------------|
| `price` | `price`, `priceCurrency` |
| `availability` | `availability` (InStock, OutOfStock, PreOrder) |
| `condition` | `itemCondition` (NewCondition, UsedCondition, RefurbishedCondition) |

### Activer les automatisations

1. Allez dans **Produits** > onglet **Automatisations**
2. Sélectionnez l'automatisation spécifique à configurer
3. Basculez les mises à jour **on** ou **off** par attribut

---

## Règles d'attributs

Les règles d'attributs transforment les données produit au sein de Merchant Center sans changer votre flux source.

### Types de règles

| **Type de règle** | **Objectif** | **Exemple d'usage** |
|---------------|-------------|-----------------|
| **Définir sur** | Remplir l'attribut depuis une colonne du flux ou une valeur statique | Mapper une colonne personnalisée à un attribut Google |
| **Extraire** | Tirer la valeur d'un autre attribut | Extraire la couleur du titre |
| **Prendre le plus récent** | Utiliser la valeur la plus récente de plusieurs sources | Prix de la source principale ou complémentaire |
| **Préfixer** | Ajouter du texte au début de l'attribut | Ajouter la marque au titre |
| **Suffixer** | Ajouter du texte à la fin de l'attribut | Ajouter la taille au titre |
| **Chercher et remplacer** | Remplacer des patterns de texte | Changer "escarpins" en "escarpins à talons" |
| **Standardiser** | Mapper des valeurs non supportées vers des supportées | Changer "vintage" en "occasion" |
| **Calculer** | Opérations mathématiques sur les valeurs numériques | Calculer le prix promo à partir d'un pourcentage |
| **Effacer** | Supprimer la valeur d'un attribut | Supprimer les valeurs "n/a" |

### Configurer les règles d'attributs

1. Allez dans **Paramètres** > **Sources de données**
2. Sélectionnez une source de produits
3. Cliquez sur l'onglet **Règles d'attributs**
4. Cliquez sur **Ajouter une règle d'attribut** et sélectionnez l'attribut
5. Configurez les opérations de la règle
6. Cliquez sur **Enregistrer comme brouillon**
7. Cliquez sur **Tester les règles** pour prévisualiser
8. Cliquez sur **Appliquer les changements** pour activer

### Conditions

Appliquez les règles uniquement aux produits remplissant des critères spécifiques :

| **Opérateur** | **Usage** |
|--------------|---------|
| **est égal à** | Correspondance exacte (insensible à la casse) |
| **contient** | Correspondance partielle |
| **n'est pas égal à** | Exclure des valeurs spécifiques |
| **ET** | Les deux conditions doivent être vraies |
| **OU** | L'une ou l'autre condition peut être vraie |

> 💡 Les règles s'exécutent en cascade. La première règle s'exécute, puis la deuxième utilise ce résultat, et ainsi de suite.

### Gestion avancée des sources de données

Activez le module complémentaire "Gestion avancée des sources de données" pour accéder à :
- Sources de données complémentaires
- Fonctionnalité complète des règles d'attributs
- Configuration des règles d'ID

---

## Liaison de compte et intégrations

### Liaison Google Ads

| **Exigence** | **Détails** |
|-----------------|-------------|
| **Où lier** | Paramètres > Comptes liés > Google Ads |
| **Accès au compte** | Accès administrateur aux deux comptes requis |
| **Direction de liaison** | Liaison initiée depuis Merchant Center |
| **Comptes multiples** | Un Merchant Center peut être lié à plusieurs comptes Google Ads |

### Intégrations de plateformes tierces

| **Plateforme** | **Type d'intégration** | **Notes** |
|--------------|---------------------|-----------|
| **Shopify** | Intégration directe via la chaîne Google & YouTube | Content API, synchronisation automatique |
| **WooCommerce** | Plugin (Google Listings & Ads ou tiers) | Diverses options disponibles |
| **Magento** | Extension ou Content API | Solutions multiples |
| **BigCommerce** | Intégration intégrée | Application Channel Manager |

> ⚠️ Les intégrations de plateforme ont des limitations. Pour l'optimisation avancée du flux, utilisez un outil de gestion de flux (FMT) dédié comme Channable, DataFeedWatch ou Feedonomics.

---

## Paramètres de livraison

### Configuration du service de livraison

| **Élément** | **Ce qu'il faut configurer** |
|-------------|----------------------|
| **Nom du service** | Nom descriptif (ex. "Livraison standard - France") |
| **Pays desservis** | Pays cibles pour ce service |
| **Délai de livraison** | Temps de préparation + temps de transit |
| **Coût de livraison** | Forfait, basé sur le poids, basé sur le prix, ou gratuit |
| **Heure limite de commande** | Heure après laquelle les commandes sont expédiées le jour suivant |

### Impact de la livraison sur le classement

| **Facteur** | **Impact** |
|------------|------------|
| **Délai de livraison plus court** | Score d'expérience Shopping plus élevé |
| **Coût de livraison plus bas** | Meilleure compétitivité prix |
| **Livraison gratuite** | Boost de classement significatif |

> 💡 Ne sous-estimez pas les coûts de livraison. Google intègre la livraison dans la compétitivité prix totale. La livraison gratuite peut significativement améliorer le classement.

---

## Politique de retour

### Éléments requis de la politique de retour

| **Élément** | **Exigence** |
|-------------|-----------------|
| **Fenêtre de retour** | Nombre de jours pour retourner |
| **Méthode de retour** | Comment les clients retournent les articles |
| **Méthode de remboursement** | Comment les remboursements sont traités |
| **Exceptions** | Articles exclus des retours |

### Impact de la politique de retour

| **Facteur** | **Impact** |
|------------|------------|
| **Fenêtre de retour plus longue** | Score d'expérience Shopping plus élevé |
| **Coût de retour plus bas** | Meilleure expérience client |
| **Retours gratuits** | Avantage concurrentiel |

> ⚠️ Vous devez avoir une politique de retour même si vous n'acceptez pas les retours. Indiquez votre politique explicitement sur votre site web.

---

## Diagnostics et dépannage

### Onglet Diagnostics

| **Section** | **Ce qu'elle montre** |
|-------------|-------------------|
| **Problèmes d'articles** | Problèmes spécifiques d'attributs produit |
| **Problèmes de compte** | Problèmes de configuration, politique ou paramétrage |
| **Graphique d'historique** | Tendances de statut des produits dans le temps |

### Niveaux de gravité des problèmes

| **Gravité** | **Signification** | **Impact** |
|--------------|-------------|------------|
| **Erreur** | Problème critique | Produit refusé |
| **Avertissement** | Problème non critique | Produit limité ou à risque |
| **Opportunité** | Suggestion d'amélioration | Gain de performance potentiel |

### Problèmes d'articles courants

| **Problème** | **Cause** | **Solution** |
|-----------|-----------|---------|
| **GTIN manquant** | Pas de GTIN fourni | Ajouter le GTIN ou définir `identifier_exists` sur false |
| **Décalage de prix** | Le prix du flux diffère de la Landing Page | Mettre à jour le flux ou activer les mises à jour automatiques |
| **Décalage de disponibilité** | Le flux indique en stock, la page indique rupture | Synchroniser le flux plus fréquemment |
| **Image trop petite** | Image en dessous de la résolution minimum | Utiliser des images de 100x100px minimum (1500x1500 recommandé) |
| **Attribut requis manquant** | Attribut spécifique à la catégorie manquant | Ajouter l'attribut requis selon la catégorie |

### Télécharger les rapports de problèmes

1. Allez dans **Paramètres** > **Sources de données**
2. Sélectionnez une source de données
3. Allez à l'onglet **Dernière mise à jour**
4. Trouvez la section **Votre fichier produit**
5. Cliquez sur **Télécharger le rapport**

---

## Programmes Merchant Center

### Programmes disponibles

| **Programme** | **Objectif** | **Exigences** |
|-------------|-------------|------------------|
| **Annonces Shopping** | Fiches produit payantes | Liaison Google Ads, moyen de paiement |
| **Fiches gratuites** | Visibilité produit organique | Flux soumis, politiques respectées |
| **Remarketing dynamique** | Montrer les produits aux visiteurs précédents | Tag de remarketing, flux dynamique |
| **Annonces d'inventaire local** | Montrer la disponibilité en magasin local | Profils d'entreprise, flux d'inventaire local |
| **Promotions** | Montrer les offres spéciales avec les produits | Flux de promotions ou saisie manuelle |
| **Évaluations de produits** | Afficher les étoiles sur les PLA | Fournisseur d'évaluations approuvé |
| **Acheter sur Google** | Checkout sur Google (US) | Inscription, configuration des paiements |

### Promotions

| **Type de promotion** | **Exemple** |
|--------------------|-------------|
| **Pourcentage de réduction** | -20% sur tous les articles |
| **Montant de réduction** | -10 € sur les commandes de plus de 50 € |
| **Cadeau** | Sac offert avec l'achat |
| **Livraison gratuite** | Livraison offerte dès 75 € d'achat |

---

## Tableau de bord de l'expérience Shopping

Disponible dans certains pays. Affecte le classement dans l'onglet Shopping pour les retailers avec une note "Exceptionnelle".

### Catégories du tableau de bord

| **Catégorie** | **Métriques** |
|--------------|-------------|
| **Expérience de livraison** | Délai de livraison, coût de livraison |
| **Expérience de retour** | Fenêtre de retour, coût de retour |
| **Expérience de navigation** | Images haute résolution, images par article |
| **Expérience d'achat** | Taux de refus de promotion, moyens de paiement |

### Améliorer la performance du tableau de bord

| **Action** | **Domaine d'impact** |
|------------|-----------------|
| Réduire le délai de livraison | Expérience de livraison |
| Offrir la livraison gratuite ou à faible coût | Expérience de livraison |
| Étendre la fenêtre de retour | Expérience de retour |
| Offrir les retours gratuits | Expérience de retour |
| Utiliser des images haute résolution (>1048px) | Expérience de navigation |
| Ajouter plusieurs images produit | Expérience de navigation |
| Réduire les refus de promotions | Expérience d'achat |
| Accepter plus de moyens de paiement | Expérience d'achat |

---

## Bonnes pratiques

### Gestion du flux

| **Pratique** | **Justification** |
|--------------|---------------|
| Utiliser un outil de gestion de flux | Contrôle complet, scalabilité, multi-canal |
| Mettre à jour le flux au moins quotidiennement | Éviter les décalages prix/disponibilité |
| Activer les mises à jour automatiques | Filet de sécurité pour les décalages temporaires |
| Surveiller les diagnostics régulièrement | Attraper les problèmes avant qu'ils impactent la performance |
| Utiliser des flux complémentaires pour les données volatiles | Séparer les données volatiles des données stables |

### Santé du compte

| **Pratique** | **Justification** |
|--------------|---------------|
| Se connecter au moins tous les 14 mois | Empêcher la désactivation du compte |
| Résoudre les erreurs avant les avertissements | Les erreurs causent des refus |
| Surveiller les problèmes de compte | Les problèmes au niveau compte affectent tous les produits |
| Garder le site web conforme | Infos de contact, politiques, checkout requis |

---

## Documents liés

| **Document** | **Relation** |
|--------------|------------------|
| [Product Feed Quality Mental Model](<Flux Produit - Qualité du flux produits.md>) | Concepts de qualité de flux et priorisation |
| [Product Feed Data Specification Reference](<Flux Produit - Spécifications du feed produit.md>) | Spécifications d'attributs et syntaxe |
| [Product Feed Optimization Guidelines](<Flux Produit - Optimisation du flux produits.md>) | Recommandations d'optimisation par attribut |
| [Product Feed Quality Checklist](<Flux Produit - Qualité du flux produits.md>) | Checklist de validation |
| [SOP - Configurer et optimiser le flux produits](<Flux Produit - Configurer et optimiser le feed produit.md>) | Configuration étape par étape |
