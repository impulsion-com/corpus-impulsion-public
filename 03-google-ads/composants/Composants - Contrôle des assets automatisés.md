# Contrôle des assets automatisés

> **Plateforme :** Google Ads
> **Catégorie :** Composants
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Ce document définit les limites et configurations recommandées pour les assets automatisés de Google au niveau du compte. Elle encadre la gestion des extensions en établissant quelles fonctionnalités automatisées activer ou désactiver, et pourquoi.

---

## Ce que couvre / ne couvre pas ce document

**Ce document :**

- Définit les états recommandés (activé/désactivé) pour chaque type d'asset automatisé
- Explique le raisonnement derrière chaque recommandation
- Établit les cas où des exceptions s'appliquent

**Ce document ne couvre PAS :**

- La liste des options d'extensions manuelles (Voir : [Extension Leverage Catalog](<Composants - Utilisation des extensions.md>))
- La validation de la couverture des extensions (Voir : [Extension Leverage Catalog](<Composants - Utilisation des extensions.md>))
- Les instructions d'exécution pas à pas

---

## Que sont les assets automatisés ?

Google peut générer et afficher automatiquement certains assets sans création explicite. Ceux-ci se configurent au niveau du compte (et sont bien cachés)

**Emplacement :**

- Google Ads
- Annonces et assets
- Assets
- Associations
- Assets automatisés au niveau du compte
- Paramètres des assets automatisés au niveau du compte
- Paramètres avancés

**Étape 1 :** Cliquez sur "Assets automatisés au niveau du compte".

**Étape 2 :** Cliquez sur "Paramètres avancés".

**Étape 3 :** Configurez vos paramètres.

---

## Types d'assets automatisés

| Asset automatisé | Ce que fait Google |
| --- | --- |
| Liens annexes dynamiques | Génère automatiquement des liens annexes à partir du contenu du site |
| Accroches dynamiques | Génère automatiquement des accroches à partir du contenu du site |
| Extraits structurés dynamiques | Génère automatiquement des extraits à partir du contenu du site |
| Images dynamiques | Sélectionne automatiquement des images depuis les Landing Pages |
| Noms d'entreprise dynamiques | Peut modifier l'affichage du nom de l'entreprise |
| Logos d'entreprise dynamiques | Peut sélectionner automatiquement un logo depuis le site |
| Lieux automatisés | Ajoute automatiquement le lieu depuis le profil Google Business |
| Applications automatisées | Fait la promotion automatique de l'application |
| Avis vendeur | Affiche les avis provenant de sources tierces |
| Titres d'annonce étendus | Étend la limite de caractères des titres |

---

## Configuration recommandée

### Assets à DÉSACTIVER

| Asset automatisé | Recommandation | Justification |
| --- | --- | --- |
| Liens annexes dynamiques | **DÉSACTIVER** | Les liens annexes sélectionnés sont plus stratégiques ; ceux auto-générés peuvent renvoyer vers des pages non pertinentes |
| Accroches dynamiques | **DÉSACTIVER** | Les accroches auto-générées peuvent être génériques, hors message, ou tirer du contenu obsolète |
| Extraits structurés dynamiques | **DÉSACTIVER** | Peut faire remonter des informations non pertinentes ou incohérentes du site |
| Images dynamiques | **DÉSACTIVER** | Peut tirer des images de basse qualité, non pertinentes ou obsolètes |
| Noms d'entreprise dynamiques | **DÉSACTIVER** | Le nom de marque doit rester cohérent ; la modification automatique crée de la confusion |
| Logos d'entreprise dynamiques | **DÉSACTIVER** | Le logo officiel doit être utilisé ; la sélection automatique peut tirer des assets incorrects |
| Lieux automatisés | **DÉSACTIVER** | Les lieux doivent être ajoutés intentionnellement selon la stratégie de campagne |
| Applications automatisées | **DÉSACTIVER** | La promotion d'application ne doit avoir lieu que lorsqu'elle est stratégiquement alignée avec les objectifs |

### Assets à ACTIVER

| Asset automatisé | Recommandation | Justification |
| --- | --- | --- |
| Avis vendeur | **ACTIVER** | Boost de crédibilité gratuit provenant de sources tierces ; risque minimal de contrôle du message |
| Titres d'annonce étendus | **ACTIVER** | Espace publicitaire supplémentaire avec un risque minimal ; Google étend les titres existants |

---

## Justification de la désactivation de la plupart des assets automatisés

### 1. Cohérence du message

Les assets auto-générés peuvent ne pas être alignés avec la proposition de valeur, la stratégie de campagne ou le message actuel.

Ils tirent du contenu du site sans en comprendre le contexte.

### 2. Contrôle qualité

Google tire du contenu des pages du site, ce qui peut inclure :

- Des informations obsolètes
- Du contenu non pertinent provenant de pages non liées
- Du texte mal formaté ou incomplet
- Des images non destinées à la publicité

### 3. Intégrité des tests

Quand Google ajoute des variables inconnues (assets auto-générés), les tests créatifs contrôlés deviennent peu fiables. Les changements de performance ne peuvent pas être attribués aux modifications intentionnelles.

### 4. Contrôle de la marque

Le nom de marque, le logo et le message représentent l'entreprise. La modification automatique sans supervision crée des risques de cohérence de marque.

---

## Conditions d'exception

### Avis vendeur : toujours ACTIVÉ (avec réserve)

- **Prérequis :** L'entreprise a des avis positifs sur des plateformes d'avis tierces
- **Si les avis sont mauvais :** Envisager de garder DÉSACTIVÉ jusqu'à l'amélioration des avis
- **Bénéfice :** Preuve sociale sans risque de contrôle du message

### Titres d'annonce étendus : toujours ACTIVÉ

- **Bénéfice :** Espace publicitaire supplémentaire
- **Risque :** Minimal (Google étend les titres existants, ne crée pas de nouveau contenu)
- **Aucune exception connue**

### Assets dynamiques : exceptions rares

Les assets dynamiques (liens annexes, accroches, extraits, images) peuvent être temporairement activés si :

- Le compte est tout neuf sans aucune extension manuelle créée
- Test de la performance automatisée par rapport à une base manuelle
- **Important :** Doit être temporaire - les assets manuels doivent remplacer les automatisés

---

## Vérification de la configuration

Après avoir configuré les assets automatisés, vérifiez :

| Vérification | État attendu |
| --- | --- |
| Liens annexes dynamiques | DÉSACTIVÉ |
| Accroches dynamiques | DÉSACTIVÉ |
| Extraits structurés dynamiques | DÉSACTIVÉ |
| Images dynamiques | DÉSACTIVÉ |
| Noms d'entreprise dynamiques | DÉSACTIVÉ |
| Logos d'entreprise dynamiques | DÉSACTIVÉ |
| Lieux automatisés | DÉSACTIVÉ |
| Applications automatisées | DÉSACTIVÉ |
| Avis vendeur | ACTIVÉ |
| Titres d'annonce étendus | ACTIVÉ |
