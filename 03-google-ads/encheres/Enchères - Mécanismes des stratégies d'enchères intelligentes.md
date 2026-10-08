# Mécanismes Stratégies d'enchères intelligentes

> **Plateforme :** Google Ads
> **Catégorie :** Enchères
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Documente le fonctionnement interne de Stratégies d'enchères intelligentes : enchères au temps de l'enchère, traitement des signaux, périodes d'apprentissage, cycles de conversion, ajustements d'enchères et règles de valeur de conversion.

---

## Ce que couvre cette fiche / Ce qu'elle ne couvre PAS

**Cette fiche :**

- Explique comment Stratégies d'enchères intelligentes définit les enchères au temps de l'enchère
- Documente les 18+ signaux que Stratégies d'enchères intelligentes utilise
- Couvre les périodes d'apprentissage, les cycles de conversion et le délai de conversion
- Explique quels ajustements d'enchères fonctionnent encore avec les stratégies automatisées
- Documente les règles de valeur de conversion comme alternative aux ajustements d'enchères

**Cette fiche ne couvre PAS :**

- Indiquer quelle stratégie d'enchères sélectionner (Voir : [Bid Strategy Selection Reference](<Enchères - Sélection de stratégie d'enchères.md>))
- Expliquer comment calculer les cibles CPA/ROAS/POAS (Voir : [Bid Targets Reference](<Enchères - Cibles d'enchères.md>))
- Fournir des instructions de configuration étape par étape (Voir : [SOP - Configurer les encheres basees sur les conversions](<../suivi/Suivi - Configurer le suivi des conversions Google Ads.md>))

---

## Aide-mémoire : stratégies Stratégies d'enchères intelligentes

| Stratégie | Optimise pour | A une cible d'efficacité | Nécessite des données de conversion |
|----------|--------------|----------------------|------------------------|
| **Maximiser les conversions** | Volume maximum de conversions dans le budget | Non | Barre basse (peut démarrer tôt) |
| **CPA cible** | Maximum de conversions dans une cible CPA | Oui (CPA) | 30+ conversions/mois (50+ recommandé) |
| **Maximiser la valeur de conversion** | Valeur de conversion maximum dans le budget | Non | Modéré |
| **ROAS cible** | Valeur de conversion maximum dans une cible ROAS | Oui (ROAS) | 50+ conversions/mois recommandé |

> 💡 **CPA cible et ROAS cible ne sont pas des stratégies séparées :** Ce sont Maximiser les conversions et Maximiser la valeur de conversion avec une cible d'efficacité optionnelle appliquée. Dans l'interface Google Ads, vous activez CPA cible en cochant "Définir un coût par action cible" sous Maximiser les conversions, et ROAS cible en cochant "Définir un retour sur les dépenses publicitaires cible" sous Maximiser la valeur de conversion.

---

## Comment fonctionnent les enchères au temps de l'enchère

### Le processus

Pour chaque requête de recherche, Stratégies d'enchères intelligentes exécute cette séquence en millisecondes :

1. **L'utilisateur lance une recherche** sur Google
2. **Google identifie les annonces éligibles** de tous les annonceurs ciblant des requêtes pertinentes
3. **Stratégies d'enchères intelligentes évalue le contexte utilisateur :** appareil, localisation, heure, données démographiques, historique de recherche, comportement de navigation et plus encore
4. **Stratégies d'enchères intelligentes prédit la probabilité de conversion** (et la valeur de conversion, si utilisation de stratégies basées sur la valeur) pour cet utilisateur spécifique dans cette enchère spécifique
5. **Stratégies d'enchères intelligentes calcule l'enchère optimale** en équilibrant la valeur prédite par rapport à votre cible d'efficacité (CPA ou ROAS)
6. **L'enchère entre dans la vente aux enchères** aux côtés des enchères de tous les autres annonceurs
7. **Le Classement de l'annonce détermine la position** basé sur l'enchère, le Niveau de qualité et l'impact attendu des extensions

Cela se produit des milliards de fois par jour à travers tous les annonceurs au niveau mondial.

### Pourquoi les enchères au temps de l'enchère surpassent les enchères manuelles

| Dimension | CPC manuel | Enchères au temps de l'enchère |
|-----------|-----------|---------------------|
| **Fréquence d'enchère** | Mises à jour à des jours ou semaines d'intervalle | À chaque enchère, en temps réel |
| **Profondeur des signaux** | 3-5 dimensions visibles | 18+ signaux, beaucoup invisibles pour les annonceurs |
| **Précision au niveau requête** | Enchères au niveau mot clé | Enchères au niveau requête au sein du mot clé |
| **Suivi multi-appareils** | Non disponible | Lié via les comptes Google |
| **Risque d'empilement** | L'empilement des ajustements d'enchères cause un sur/sous-ajustement | Tous les signaux évalués ensemble |
| **Vitesse d'adaptation** | Délai de jours à semaines | Adaptation instantanée aux changements du marché |

---

## Signaux utilisés par Stratégies d'enchères intelligentes

Stratégies d'enchères intelligentes combine 18+ signaux pour prédire la valeur de chaque enchère :

### Signaux visibles (accessibles dans l'interface Google Ads)

| Signal | Comment Stratégies d'enchères intelligentes l'utilise |
|--------|------------------------|
| **Type d'appareil** | Ajuste les enchères pour mobile, desktop, tablette selon le taux de conversion par appareil |
| **Localisation** | Enchérit plus haut dans les zones géographiques avec des taux de conversion plus élevés |
| **Heure du jour** | Augmente les enchères pendant les heures à forte conversion, diminue pendant les heures faibles |
| **Jour de la semaine** | Ajuste pour les tendances de conversion par jour de la semaine |
| **Données démographiques (âge, genre)** | Enchérit selon les tendances de taux de conversion démographiques |
| **Listes d'audience** | Enchères plus élevées pour les utilisateurs sur les listes de remarketing ou Customer Match |

### Signaux cachés (non accessibles dans l'interface)

| Signal | Ce qu'il capture |
|--------|-----------------|
| **Contexte de la requête de recherche** | La requête réelle, pas seulement le mot clé correspondant |
| **Historique de recherche** | Le comportement de recherche précédent de l'utilisateur sur Google |
| **Interactions passées** | Impressions, clics, visites de site précédents |
| **Comportement multi-appareils** | Actions à travers les appareils liés au même compte Google |
| **Système d'exploitation** | Différences de taux de conversion par OS |
| **Navigateur** | Tendances de conversion spécifiques au navigateur |
| **Langue** | Signaux de préférence linguistique |
| **Type de réseau** | Tendances de conversion WiFi vs. données mobiles |
| **Caractéristiques de l'annonce** | Quelles variations d'annonce performent le mieux pour ce type d'utilisateur |

> 💡 **La puissance de Stratégies d'enchères intelligentes vient de la combinaison des signaux :** Un utilisateur sur appareil mobile + dans une ville spécifique + pendant les heures du matin + qui a précédemment visité votre site = une probabilité de conversion spécifique qu'aucun processus manuel ne peut calculer.

---

## Apprentissage adaptatif au niveau requête

Stratégies d'enchères intelligentes apprend au **niveau de la requête de recherche**, pas au niveau du mot clé :

| Capacité | Ce que ça signifie |
|-----------|--------------|
| **Apprentissage inter-campagnes** | Les données de conversion pour une requête sont partagées à travers tout votre compte |
| **Transfert de connaissances instantané** | Les nouvelles campagnes ciblant des requêtes familières bénéficient immédiatement des données existantes |
| **Prise en charge des mots clés à faible volume** | Même les mots clés avec peu de clics bénéficient des données au niveau requête de tendances similaires |
| **Optimisation plus rapide** | Les nouveaux mots clés montent en puissance plus vite parce que l'algorithme connaît déjà les requêtes connexes |

**Implication pratique :** Quand vous divisez une campagne ou créez une nouvelle campagne ciblant les mêmes thèmes de requêtes, Stratégies d'enchères intelligentes sait déjà comment ces requêtes convertissent. Vous pouvez démarrer avec des stratégies automatisées immédiatement plutôt qu'en utilisant le CPC manuel.

---

## Périodes d'apprentissage

### Ce qui déclenche une période d'apprentissage

| Déclencheur | Durée typique |
|---------|-----------------|
| Lancement d'une nouvelle campagne | 7-14 jours |
| Changement de stratégie d'enchères | 7-14 jours |
| Changement de cible CPA/ROAS > 25% | 7-14 jours |
| Changement de budget majeur (> 30%) | 3-7 jours |
| Changements de ciblage significatifs | 7-14 jours |
| Ajout/suppression d'actions de conversion | 7-14 jours |

### Ce qui se passe pendant l'apprentissage

- Les enchères fluctuent car l'algorithme explore différentes combinaisons d'enchères
- Les métriques de performance sont volatiles : les CPA peuvent monter en flèche, le ROAS peut baisser
- Les cibles ne seront pas atteintes de manière constante
- L'algorithme collecte des données pour calibrer les prédictions futures

### Comment gérer les périodes d'apprentissage

| À faire | À ne pas faire |
|----|--------|
| Définir les attentes avec les parties prenantes avant les changements | Faire des changements supplémentaires pendant la période d'apprentissage |
| Surveiller les métriques sans réagir | Paniquer et revenir en arrière sur la stratégie |
| Attendre au moins 7 jours, idéalement 14 | Évaluer la performance pendant la première semaine |
| Exclure les données de la période d'apprentissage des revues de performance | Utiliser les données de la période d'apprentissage pour juger l'efficacité de la stratégie |

### Éviter les périodes d'apprentissage inutiles

- Faire des changements de cible incrémentaux (10-15% par ajustement, pas 25%+)
- Regrouper les petits changements plutôt que de faire des changements individuels fréquents
- Attendre un cycle de conversion entre les ajustements
- Utiliser les expériences de campagne pour les changements de stratégie majeurs au lieu de basculer directement

---

## Cycles de conversion et délai de conversion

### Définitions

| Terme | Définition |
|------|-----------|
| **Cycle de conversion** | Temps moyen entre le clic et la conversion |
| **Délai de conversion** | Temps nécessaire pour que les conversions soient pleinement reportées et attribuées |
| **Conversion par date** | Métrique montrant quand les conversions ont eu lieu (vs. quand le clic a eu lieu) |

### Impact sur Stratégies d'enchères intelligentes

| Cycle de conversion court (1-3 jours) | Cycle de conversion long (14-30 jours) |
|-----------------------------------|-------------------------------------|
| Stratégies d'enchères intelligentes s'ajuste rapidement | Stratégies d'enchères intelligentes s'ajuste lentement |
| Période d'apprentissage : 7-10 jours | Période d'apprentissage : 14-30+ jours |
| Les données récentes sont fortement pondérées | Les données historiques sont plus fortement pondérées |
| Conclusions d'expériences plus rapides | Durées d'expérience plus longues nécessaires |

### Pondération historique adaptative

Stratégies d'enchères intelligentes applique des pondérations différentes aux données selon votre cycle de conversion :

- **Cycle court :** les données de performance récentes sont les plus prédictives, fortement pondérées
- **Cycle long :** les données récentes peuvent ne pas encore montrer les conversions, donc les données historiques sont plus fortement pondérées pour éviter de surréagir aux baisses de performance apparentes

### Comment trouver votre délai de conversion

1. Ajoutez la colonne "Type de stratégie d'enchères" à votre vue campagne
2. Cliquez sur le lien hypertexte bleu du nom de votre stratégie d'enchères
3. Consultez le rapport de stratégie d'enchères
4. Trouvez le "Délai moyen de conversion" dans le rapport

Pour les stratégies d'enchères portefeuille : Outils > Budgets et enchères > Stratégies d'enchères > sélectionnez la stratégie.

### Règles pratiques

- Attendez au moins un cycle de conversion complet avant d'évaluer la performance après des changements
- Excluez les [délai de conversion] derniers jours de l'analyse de performance
- Planifiez les revues de performance en tenant compte du délai de conversion (si délai de 15 jours, revue en semaine 3 du mois, pas en semaine 1)
- Utilisez les métriques "Conversion par date" pour des lectures directionnelles plus rapides quand vous ne pouvez pas attendre l'attribution complète

---

## Ajustements d'enchères avec Stratégies d'enchères intelligentes

### Ce qui fonctionne encore

| Type d'ajustement | CPC manuel | Maximiser les clics | Taux d'impressions cible | Max. conversions | CPA cible | Max. valeur conv. | ROAS cible |
|--------------------|-----------|----------------|----------------------|----------------|------|---------------|-------|
| **Appareil** | Complet | Complet | Complet | -100% uniquement | -100% uniquement | -100% uniquement | -100% uniquement |
| **Localisation** | Complet | Complet | Complet | Ignoré | Ignoré | Ignoré | Ignoré |
| **Planification des annonces** | Complet | Complet | Complet | Ignoré | Ignoré | Ignoré | Ignoré |
| **Audiences** | Complet | Complet | Complet | Ignoré | Ignoré | Ignoré | Ignoré |
| **Données démographiques** | Complet | Complet | Complet | Ignoré | Ignoré | Ignoré | Ignoré |

> ⚠️ **Ne définissez pas d'ajustements d'enchères sur les stratégies automatisées :** Stratégies d'enchères intelligentes les ignore. La seule exception est l'exclusion d'appareil à -100% (supprimer complètement les tablettes ou le mobile). Définir des ajustements de localisation, planification ou audience sur des campagnes CPA cible/ROAS n'a aucun effet.

### Exception : ajustements d'appareil CPA cible

Pour CPA cible uniquement, Google autorise des ajustements d'appareil en pourcentage. En pratique, Stratégies d'enchères intelligentes optimise déjà à travers les appareils, et les ajustements manuels dégradent généralement la performance. À utiliser uniquement si vous avez une raison spécifique et validée.

---

## Règles de valeur de conversion

### Ce que c'est

Les règles de valeur de conversion ajustent la valeur de conversion reportée à Stratégies d'enchères intelligentes selon des conditions (localisation, appareil, audience). Elles influencent les stratégies basées sur la valeur (Maximiser la valeur de conversion, ROAS cible) en modifiant le signal de valeur.

### Quand utiliser

| Cas d'usage | Exemple |
|----------|---------|
| Différences de valeur non capturées par le tracking (suivi des conversions) | Les clients récurrents d'une audience spécifique valent 2x, mais le tracking ne capture que le premier achat |
| Différences de valeur géographiques | Les leads de Paris concluent à 1,5x le taux des leads de zones rurales |
| Simplification de configurations complexes | Ajuster la valeur par région au lieu de diviser en campagnes séparées |

### Quand NE PAS utiliser

| Situation | Pourquoi | Alternative |
|-----------|-----|------------|
| Les différences sont capturées dans le suivi de conversion | Ajustement redondant, double comptage | Utilisez un suivi de conversion précis |
| Utilisation de Max. conversions ou CPA cible | Les règles ajustent la valeur de conversion, ces stratégies ignorent la valeur | Non applicable aux stratégies basées sur les conversions |
| En substitut d'un suivi de conversion correct | Approche pansement, données inexactes | Corrigez d'abord le suivi des conversions |

### Configuration

1. Google Ads > Paramètres > Règles de valeur
2. Créer une condition (localisation, appareil ou audience)
3. Définir l'ajustement (multiplier par un facteur ou ajouter un montant fixe)
4. Enregistrer. Stratégies d'enchères intelligentes (Maximiser la valeur de conversion, ROAS cible) s'ajuste automatiquement.

> 💡 **Priorisez un suivi de conversion robuste par rapport aux règles de valeur :** Si vous pouvez importer des valeurs réelles (CA par deal, profit brut par commande), c'est toujours plus précis que des ajustements basés sur des règles.

---

## Erreurs courantes

| Erreur | Problème | Solution |
|---------|---------|-----|
| Définir des ajustements d'enchères sur des stratégies automatisées | Les ajustements sont ignorés, effort gaspillé | Supprimez tous les ajustements non-appareil sur les campagnes Stratégies d'enchères intelligentes |
| Faire des changements pendant la période d'apprentissage | Perturbe l'apprentissage, réinitialise l'horloge | Attendez 7-14 jours avant le prochain changement |
| Évaluer la performance dans la fenêtre de délai de conversion | Des données incomplètes mènent à de mauvaises conclusions | Attendez au moins un cycle de conversion complet |
| Définir des cibles CPA/ROAS à plus de 25% de la moyenne actuelle | Déclenche une période d'apprentissage, peut causer un crash de volume | Ajustez par incréments de 10-15% |
| Ignorer les seuils de volume de conversions | Stratégies d'enchères intelligentes sous-performe avec trop peu de données | Consolidez les campagnes, utilisez des stratégies d'enchères portefeuille pour mutualiser les données, ou utilisez des conversions plus basses dans le tunnel |
| Oublier d'éduquer les parties prenantes sur les périodes d'apprentissage | Demandes paniquées de retour en arrière sur les changements | Informez les parties prenantes avant chaque changement majeur |

---

## Documents liés

| Document | Relation |
|----------|-------------|
| [Bidding Strategy Mental Model](<Enchères - Stratégie d'enchères.md>) | Cadre conceptuel pour la sélection de stratégie |
| [Bid Strategy Selection Reference](<Enchères - Sélection de stratégie d'enchères.md>) | Quelle stratégie sélectionner par type de campagne |
| [Bid Targets Reference](<Enchères - Cibles d'enchères.md>) | Comment calculer les cibles CPA/ROAS/POAS |
| [Bid Simulator Reference](<Enchères - Simulateur d'enchères.md>) | Outil de modélisation des changements d'enchères |
| [Bidding Configuration Guidelines](<Enchères - Configuration des enchères.md>) | Paramètres recommandés pour les stratégies portefeuille, plafonds CPC |
| [Conversion Volume Thresholds Reference](<../suivi/Suivi - Seuils de volume de conversions.md>) | Seuils de préparation des données |
| [Data Exclusions Reference](<../suivi/Suivi - Exclusions de données.md>) | Exclure les mauvaises données de Stratégies d'enchères intelligentes |
| [SOP - Configurer les encheres basees sur les conversions](<../suivi/Suivi - Configurer le suivi des conversions Google Ads.md>) | Configuration étape par étape pour Max. conversions / CPA cible |
| [SOP - Configurer les encheres basees sur la valeur](<Enchères - Configurer les enchères basées sur la valeur.md>) | Configuration étape par étape pour Max. valeur conv. / ROAS cible / POAS |
| [SOP - Migrer des encheres manuelles vers Stratégies d'enchères intelligentes](<Enchères - Migrer des enchères manuelles vers les stratégies d'enchères intelligentes.md>) | Processus de migration avec gestion de la période d'apprentissage |
