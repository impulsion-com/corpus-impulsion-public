# Qualité du set de keywords

> **Plateforme :** Google Ads
> **Catégorie :** Search
> **Type :** Checklist
> **Mis à jour :** 2026-05-07

## Objectif

Valide qu'un set de keywords couvre la bonne intention, atteint les seuils de volume, évite le gaspillage et est structuré pour le Stratégies d'enchères intelligentes et l'apprentissage RSA avant le lancement.

---

## Ce que cette checklist valide

Cette checklist confirme :

- Les keywords couvrent les offres principales et les étapes d'intention pertinentes
- Le volume de recherche est suffisant pour alimenter le Stratégies d'enchères intelligentes et générer des données exploitables au niveau asset
- Les termes non pertinents sont identifiés et exclus
- Les keywords sont regroupés par thème créatif avec une structure d'ad groups appropriée
- Les types de correspondance sont alignés avec la stratégie d'enchères active
- Chaque cluster de keywords est mappé à une Landing Page pertinente
- Pas de duplication inutile entre types de correspondance ou ad groups

Cette checklist ne couvre **PAS** :

- La méthodologie de recherche de keywords (Voir : [SOP - Rechercher des mots-cles](<Search - Rechercher des keywords.md>))
- L'exécution du clustering de keywords (Voir : [SOP - Regrouper et mapper les mots-cles](<Search - Regrouper et mapper les keywords.md>))
- La sélection des types de correspondance (Voir : [Keyword and Match Type Selection Guidelines](<Search - Sélection des mots clés et types de correspondance.md>))
- La stratégie de keywords négatifs (Voir : [Negative Keyword Reference](<Search - Mots-clés à exclure.md>))

---

## Quand l'utiliser

Exécuter cette checklist :

- Après avoir complété la recherche de keywords et avant l'upload dans Google Ads
- Après le clustering des keywords en ad groups et l'assignation des types de correspondance
- Lors de l'audit de la structure de keywords d'un compte existant
- Avant le lancement d'une nouvelle campagne Search

---

## Checklist

### Couverture d'intention

- [ ] Les keywords couvrent l'offre principale de produit ou service
- [ ] Les keywords haute intention (bas de tunnel) sont présents
- [ ] Les keywords d'intention moyenne (étape de considération) sont inclus si pertinent
- [ ] Les keywords informationnels sont exclus sauf si une stratégie dédiée existe
- [ ] Chaque keyword correspond à un besoin réel de l'utilisateur, pas du jargon interne
- [ ] Le triage par code couleur est complet : vert (inclure), orange (à revoir), rouge (exclure)
- [ ] Tous les keywords orange (douteux) ont une décision documentée inclure/exclure

### Viabilité du volume

- [ ] Chaque ad group projette au moins 1 000 impressions/semaine (4 000/mois) pour des données exploitables au niveau asset
- [ ] Le volume au niveau campagne supporte 30 conversions/mois minimum (seuil CPA cible) ou 50 conversions/mois (seuil ROAS cible)
- [ ] Les keywords à faible volume sont consolidés dans des ad groups plus larges ou supprimés
- [ ] Aucun ad group ne repose sur un seul keyword avec moins de 500 recherches mensuelles

### Couverture des keywords négatifs

- [ ] Les keywords signalés en rouge (non pertinents) de la recherche sont ajoutés comme keywords négatifs
- [ ] La liste de keywords négatifs couvre les modificateurs non pertinents courants (gratuit, emploi, DIY, avis, etc. selon le contexte)
- [ ] Les termes de marque sont exclus des campagnes génériques (ou intentionnellement inclus avec un raisonnement documenté)
- [ ] Les keywords négatifs inter-campagnes empêchent la cannibalisation entre campagnes
- [ ] Les types de correspondance des négatifs sont appropriés : exact pour les termes spécifiques, expression pour les patterns

### Qualité du clustering

- [ ] Chaque ad group contient des keywords qui partagent la même intention utilisateur
- [ ] Tous les keywords d'un ad group peuvent être servis par une seule RSA sans perte de pertinence
- [ ] Aucun ad group ne mélange intention commerciale et informationnelle
- [ ] Aucun ad group ne mélange différentes catégories de produits ou lignes de services
- [ ] Les noms d'ad groups reflètent clairement le thème des keywords

### Alignement des types de correspondance

- [ ] Les types de correspondance sont alignés avec la stratégie d'enchères active
- [ ] Le requête large n'est utilisé qu'avec une stratégie d'enchères CPA cible ou ROAS cible
- [ ] Si utilisation du CPC manuel ou Max Clicks : les keywords utilisent uniquement l'exact ou l'expression
- [ ] Aucun keyword n'apparaît en plusieurs types de correspondance dans le même ad group
- [ ] Aucun keyword n'apparaît en plusieurs types de correspondance entre ad groups ciblant la même intention
- [ ] Si le requête large est actif : les keywords négatifs sont suffisants pour contenir l'expansion non pertinente

### Alignement avec la Landing Page

- [ ] Chaque cluster de keywords est mappé à une Landing Page spécifique et pertinente
- [ ] Le titre de la Landing Page reflète le thème des keywords (pas une page d'accueil générique)
- [ ] Le contenu de la Landing Page répond à l'intention de recherche derrière les keywords
- [ ] Aucun cluster de keywords ne pointe vers une page en rupture de stock, expirée ou cassée
- [ ] Les keywords haute intention sont mappés à des pages orientées conversion, pas du contenu informationnel

### Dé-duplication

- [ ] Aucun keyword n'apparaît dans plus d'un ad group (sauf segmentation intentionnelle par match type avec raisonnement documenté)
- [ ] Aucun keyword n'est dupliqué entre campagnes ciblant la même zone géographique
- [ ] Les variantes proches sont consolidées : singulier/pluriel, fautes d'orthographe courantes et mots réordonnés n'existent pas comme keywords séparés
- [ ] Si campagnes Search et DSA en parallèle : les termes ciblés par keywords sont exclus du DSA

---

## Référence rapide

| Document | Relation |
|----------|-------------|
| [Match Type Reference](<Search - Types de correspondance.md>) | Définit le comportement et la syntaxe des types de correspondance |
| [Keyword and Match Type Selection Guidelines](<Search - Sélection des mots clés et types de correspondance.md>) | Recommande la configuration des types de correspondance par stratégie de bidding |
| [Modern Search Campaign Mental Model](<Search - Campagne Search moderne.md>) | Fournit le document structurel pour l'organisation des keywords |
| [Negative Keyword Reference](<Search - Mots-clés à exclure.md>) | Types, syntaxe et règles d'application des keywords négatifs |
| [Conversion Volume Thresholds Reference](<../suivi/Suivi - Seuils de volume de conversions.md>) | Seuils de données pour le Stratégies d'enchères intelligentes et l'apprentissage RSA |
| [Search Campaign Structure Mental Model](<Search - Structure de campagne Search.md>) | Hiérarchie campagne et ad group pour le placement des keywords |
| [Search Ad Group Structure Mental Model](<Search - Structure des ad groups Search.md>) | Principes de design des ad groups pour le clustering de keywords |
