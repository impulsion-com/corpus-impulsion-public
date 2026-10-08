# Lancement de campagne Shopping

> **Plateforme :** Google Ads
> **Catégorie :** Shopping
> **Type :** Checklist
> **Mis à jour :** 2026-05-07

## Objectif

Valide que tous les prérequis sont complets avant le lancement de campagnes Shopping Standard ou PMax Feed-Only.

---

## Ce que cette checklist valide

Cette checklist confirme :

- Le flux produits est optimisé et approuvé
- Merchant Center est correctement configuré
- Le compte Google Ads est prêt pour le Shopping
- Les paramètres de campagne sont appropriés
- La séparation de marque est en place

Cette checklist ne couvre **PAS** :

- La validation de la qualité des attributs du flux produits (Voir : [Product Feed Quality Checklist](<../flux-produit/Flux Produit - Qualité du flux produits.md>))
- Les étapes de configuration de campagne (Voir : [SOP - Lancer une campagne Shopping standard](<Shopping - Lancer une campagne Shopping standard.md>))
- L'explication de la sélection du type de campagne (Voir : [Shopping Campaign Type Mental Model](<Shopping - Types de campagne Shopping.md>))

---

## Quand l'utiliser

Exécuter cette checklist :

- Avant le lancement d'une nouvelle campagne Shopping Standard
- Avant le lancement d'une nouvelle campagne PMax Feed-Only
- Après des modifications significatives du flux produits avant le scaling
- Lors de l'onboarding d'un nouveau client e-commerce

---

## Checklist

### Prérequis du flux produits

- [ ] Flux produits uploadé dans Merchant Center
- [ ] Traitement du flux produits terminé sans erreurs
- [ ] Produits refusés <5% du document
- [ ] Attributs requis renseignés pour tous les produits (id, title, description, link, image_link, price, availability)
- [ ] GTINs renseignés pour les produits avec GTINs
- [ ] Custom labels configurés pour la stratégie de segmentation
- [ ] Calendrier de rafraîchissement du flux produits configuré (minimum quotidien)
- [ ] Mises à jour automatiques activées pour prix et disponibilité

> ↪️ **Problèmes de qualité du feed ?** Exécutez la [Product Feed Quality Checklist](<../flux-produit/Flux Produit - Qualité du flux produits.md>).

### Configuration Merchant Center

- [ ] URL du site web vérifiée et revendiquée
- [ ] Informations business complètes (nom, adresse, téléphone)
- [ ] Politique de retour configurée
- [ ] Paramètres de livraison configurés
- [ ] Paramètres de taxes configurés (si applicable)
- [ ] Compte Google Ads lié
- [ ] Aucun problème au niveau compte dans les Diagnostics

### Prérequis Google Ads

- [ ] Suivi des conversions implémenté
- [ ] Action de conversion utilisant le bon suivi de valeur
- [ ] Historique de conversions suffisant (30+ conversions pour le Stratégies d'enchères intelligentes)
- [ ] Merchant Center lié dans Google Ads
- [ ] Facturation configurée et active

### Paramètres de campagne (Shopping Standard)

- [ ] Type de campagne : Shopping
- [ ] Compte Merchant Center sélectionné
- [ ] Pays cible correct
- [ ] Priorité de campagne définie (Haute/Moyenne/Basse selon la stratégie)
- [ ] Paramètres réseau configurés (décision Partenaires du Réseau de Recherche)
- [ ] Stratégie d'enchères sélectionnée (CPC manuel, Maximize Clicks, ROAS cible selon le volume)
- [ ] Budget quotidien défini

### Paramètres de campagne (PMax Feed-Only)

- [ ] Type de campagne : Performance Max
- [ ] ZÉRO asset créatif (aucun titre, description, image, vidéo, logo)
- [ ] Groupes de fiches configurés (votre seul asset)
- [ ] AUCUN signal d'audience ajouté (votre flux produits est votre ciblage)
- [ ] Exclusions de marque configurées (Paramètres > Autres paramètres)
- [ ] Expansion d'URL finale : DÉSACTIVÉE
- [ ] Stratégie d'enchères sélectionnée (Maximiser la valeur de conversion, avec ou sans ROAS cible)
- [ ] Budget quotidien défini

> ⚠️ **Si vous ajoutez un QUELCONQUE asset créatif, PMax diffusera sur Display et YouTube :** Pour un vrai comportement Feed-Only, laissez tous les champs d'assets vides.

### Séparation de marque

- [ ] Termes de marque identifiés
- [ ] Shopping Standard : Campagne marque avec priorité Basse OU keywords négatifs marque dans les campagnes génériques
- [ ] PMax : Exclusions de marque ajoutées au niveau campagne
- [ ] Vérification : Test de recherche avec les termes de marque pour confirmer le routage

> ↪️ **Détails de séparation de marque :** Voir [Brand Separation Reference](<../search/Search - Séparation de marque.md>).

### Segmentation produit (si utilisée)

- [ ] Stratégie de segmentation déterminée (catégorie, performance, composite)
- [ ] Custom labels renseignés dans le flux produits
- [ ] Groupes de fiches configurés pour correspondre à la segmentation
- [ ] Campagnes/budgets séparés pour les différents segments (si applicable)
- [ ] Même ROAS cible entre les segments (budgets différents, pas de cibles différentes)

> ↪️ **Méthode de segmentation :** Voir [Product Feed Segmentation Mental Model](<../flux-produit/Flux Produit - Choisir une segmentation.md>).

### Keywords négatifs (Shopping Standard uniquement)

- [ ] Termes de marque ajoutés comme négatifs (si campagne marque séparée)
- [ ] Requêtes non pertinentes connues ajoutées comme négatifs
- [ ] Listes de keywords négatifs créées (si utilisées entre campagnes)

### Vérification finale

- [ ] Les annonces s'affichent correctement en aperçu
- [ ] Les groupes de fiches affichent les produits attendus
- [ ] Pas de conflit de budget avec d'autres campagnes Shopping
- [ ] Suivi des conversions vérifié avec Tag Assistant
- [ ] Statut de la campagne : Prête pour le lancement

---

## Checklist du jour de lancement

Après l'activation de la campagne :

- [ ] La campagne affiche le statut "Éligible"
- [ ] Les produits sont approuvés et en diffusion
- [ ] Les premières impressions/clics apparaissent (peut prendre 24-48 heures)
- [ ] Pas de refus inattendus
- [ ] Le budget se dépense comme prévu

---

## Monitoring post-lancement (7 premiers jours)

- [ ] Quotidien : Vérifier les nouveaux refus
- [ ] Quotidien : Surveiller le pacing des dépenses
- [ ] Jour 3 : Vérifier le rapport sur les termes de recherche (ajouter des négatifs si nécessaire)
- [ ] Jour 7 : Première revue de performance
- [ ] Ne PAS faire de modifications majeures pendant la période d'apprentissage (2-4 semaines pour PMax)

---

## Critères de validation

### Exigences minimum pour le lancement

| **Critère** | **Seuil** |
|----------|---------------|
| Produits refusés | <5% du document |
| Erreurs de traitement du feed | 0 |
| Problèmes au niveau compte | 0 |
| Suivi des conversions | Vérifié |

### Recommandé pour une performance optimale

| **Critère** | **Seuil** |
|----------|---------------|
| Couverture GTIN | >90% des produits éligibles |
| Custom labels | Stratégie de segmentation implémentée |
| Images supplémentaires | >50% des produits |
| Historique de conversions | 30+ conversions pour le Stratégies d'enchères intelligentes |

---

## Référence rapide

| **Document** | **Relation** |
|--------------|------------------|
| [Product Feed Quality Checklist](<../flux-produit/Flux Produit - Qualité du flux produits.md>) | Valide la qualité du flux produits avant cette checklist |
| [Shopping Campaign Type Mental Model](<Shopping - Types de campagne Shopping.md>) | Décision de type de campagne |
| [Product Feed Segmentation Mental Model](<../flux-produit/Flux Produit - Choisir une segmentation.md>) | Stratégie de segmentation |
| [Brand Separation Reference](<../search/Search - Séparation de marque.md>) | Implémentation des exclusions de marque |
| [SOP - Lancer une campagne Shopping standard](<Shopping - Lancer une campagne Shopping standard.md>) | Configuration Shopping Standard pas à pas |
| [SOP - Lancer une campagne PMax feed-only](<../pmax/Pmax - Lancer une campagne PMax Feed-Only.md>) | Configuration PMax Feed-Only pas à pas |
