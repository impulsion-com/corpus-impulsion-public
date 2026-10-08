# Configuration des enchères

> **Plateforme :** Google Ads
> **Catégorie :** Enchères
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Ce document définit les configurations recommandées pour les stratégies d'enchères portefeuille, les plafonds CPC, les budgets partagés, les ajustements d'enchères et les règles de valeur de conversion. Elle encadre la mise en place des stratégies d'enchères en établissant les paramètres par défaut et les conditions d'exception.

---

## Ce que couvre / ne couvre pas ce document

**Ce document :**

- Définit quand et comment utiliser les stratégies d'enchères portefeuille
- Établit les recommandations par défaut pour les plafonds CPC
- Explique quand les budgets partagés doivent être combinés avec les stratégies portefeuille
- Clarifie quels ajustements d'enchères fonctionnent encore sous Stratégies d'enchères intelligentes
- Établit les recommandations d'utilisation des règles de valeur de conversion

**Ce document ne couvre PAS :**

- Le choix de la stratégie d'enchères (Voir : [Bid Strategy Selection Reference](<Enchères - Sélection de stratégie d'enchères.md>))
- Le fonctionnement interne de Stratégies d'enchères intelligentes (Voir : [Stratégies d'enchères intelligentes Mechanics Reference](<Enchères - Mécanismes des stratégies d'enchères intelligentes.md>))
- Les instructions de configuration pas à pas (Voir : [SOP - Configurer les strategies d'encheres portefeuille](<Enchères - Configurer les stratégies d'enchères de portefeuille.md>))
- Les instructions d'exécution pas à pas

---

## Stratégies d'enchères portefeuille

### De quoi s'agit-il

Les stratégies d'enchères portefeuille sont des stratégies d'enchères automatisées qui fonctionnent sur plusieurs campagnes partageant le même objectif d'efficacité. Au lieu que chaque campagne ait sa propre stratégie isolée, les campagnes sont regroupées sous une stratégie unique qui optimise l'ensemble des campagnes liées.

**Disponibilité :** Search, Shopping standard, Display uniquement. Non disponible pour PMax, Vidéo, Demand Gen ou les campagnes d'application.

**Emplacement :** Outils > Budgets et enchères > Stratégies d'enchères

### Configuration recommandée

| Paramètre | Recommandation | Justification |
|---------|---------------|-----------|
| **Utiliser les stratégies portefeuille** | **ACTIVER** quand 2+ campagnes partagent le même objectif d'efficacité | Mutualise les données de conversion, accélère l'apprentissage, permet les plafonds CPC |
| **Regrouper par objectif d'efficacité** | Un portefeuille par objectif CPA/ROAS unique | Les campagnes avec des objectifs différents ne doivent pas partager un portefeuille |
| **Types de campagnes** | Regrouper les mêmes types ensemble | Search + Search c'est bon, Search + Shopping dans un même portefeuille n'est pas recommandé |

### Bénéfices clés

1. **Mutualisation des données de conversion :** le seuil de conversions du portefeuille est la somme de toutes les campagnes liées. Cinq campagnes avec 12 conversions/mois chacune = 60 combinées (au-dessus du seuil recommandé de 50/mois)
2. **Optimisation inter-campagnes :** l'algorithme peut enchérir plus agressivement sur les campagnes performantes et plus prudemment sur les autres, en ciblant l'objectif d'efficacité au niveau du portefeuille
3. **Plafonds CPC :** disponibles uniquement via les stratégies portefeuille, pas au niveau campagne
4. **Gestion centralisée :** un seul objectif d'efficacité à surveiller au lieu de plusieurs

### Seuils de volume de conversions avec les portefeuilles

| Niveau | Minimum absolu | Minimum fonctionnel | Recommandé |
|-------|-----------------|-------------------|-------------|
| Campagne unique : CPA cible | 15 conversions/mois | 30 conversions/mois | 50+ conversions/mois |
| Campagne unique : ROAS cible | 30 conversions/mois | 50 conversions/mois | 50+ conversions/mois |
| Portefeuille (somme de toutes les campagnes liées) | 15 conversions/mois | 30 conversions/mois | 50+ conversions/mois |

Les seuils s'appliquent au total du portefeuille. Les campagnes individuelles au sein du portefeuille peuvent avoir moins de conversions si le total combiné atteint le seuil.

---

## Plafonds CPC (minimum et maximum)

### Recommandation par défaut

| Type de plafond CPC | Par défaut | Justification |
|-------------|---------|-----------|
| **Plafond CPC maximum** | **DÉSACTIVÉ** (ne pas définir) | Restreint la flexibilité de Stratégies d'enchères intelligentes, peut limiter silencieusement les performances |
| **Plafond CPC minimum** | **DÉSACTIVÉ** (ne pas définir) | Rarement nécessaire, force une dépense minimum qui peut ne pas convertir |

> Les plafonds CPC sont l'erreur de configuration la plus courante dans les stratégies portefeuille. Un plafond CPC maximum oublié peut restreindre silencieusement les performances pendant des mois. Par défaut, pas de plafond sauf raison validée.

### Quand envisager des plafonds CPC maximum

| Condition | Action |
|-----------|--------|
| Valeurs CPC extrêmes (10x la moyenne) sur de nombreuses requêtes de manière récurrente | Définir le CPC max à 3x le CPC moyen de vos termes de recherche les plus convertissants |
| Secteur très concurrentiel où les guerres de CPC sont courantes | Définir le CPC max à 3x le CPC moyen des requêtes les plus convertissantes et à fort volume |
| Le client exige un plafond CPC explicite pour la gestion du risque | Définir prudemment, revoir mensuellement |

### Règle empirique pour le CPC max

Si vous décidez de définir un plafond CPC maximum :

1. Ouvrez votre rapport sur les termes de recherche
2. Triez par conversions (décroissant)
3. Notez le CPC moyen de vos 10-20 termes de recherche les plus convertissants
4. Définissez le plafond CPC maximum à 3x ce CPC moyen

**Exemple :** les termes de recherche les plus convertissants ont un CPC moyen de 2,50 EUR. Définir le plafond CPC max à 7,50 EUR.

### Surveillance des plafonds CPC

Si vous utilisez des plafonds CPC, mettez en place ces vérifications :

| Vérification | Fréquence | Action si déclenché |
|-------|-----------|-------------------|
| Les CPC des mots clés principaux plafonnent au maximum | Hebdomadaire | Augmenter le plafond ou le retirer |
| Le taux d'impressions perdu (rang) augmente | Hebdomadaire | Le plafond restreint peut-être la compétitivité |
| Le volume de conversions diminue | Hebdomadaire | Le plafond empêche peut-être l'algorithme de remporter les enchères |

> Les petites erreurs de plafond CPC ont des conséquences disproportionnées. Un plafond trop bas peut causer des mois de volume perdu sans signaux évidents. En cas de doute, retirez le plafond et laissez Stratégies d'enchères intelligentes optimiser.

### L'argument contre les plafonds CPC

Les données récentes suggèrent que le coût des plafonds CPC dépasse le bénéfice dans la plupart des scénarios :

- Stratégies d'enchères intelligentes prend déjà en compte les rendements décroissants à des CPC élevés
- Les outliers de CPC sont peu fréquents et contribuent au volume de conversions
- Les plafonds empêchent l'algorithme de remporter les enchères à forte valeur
- Les plafonds oubliés dégradent silencieusement les performances dans le temps

---

## Budgets partagés avec stratégies portefeuille

### Association recommandée

| Configuration | Quand utiliser |
|--------------|-------------|
| Stratégie portefeuille + budget partagé | Les campagnes partagent le même objectif d'efficacité ET vous voulez que Google optimise l'allocation budgétaire |
| Stratégie portefeuille + budgets individuels | Les campagnes partagent l'objectif d'efficacité mais nécessitent un contrôle budgétaire indépendant |
| Stratégie individuelle + budget individuel | Les campagnes ont des objectifs différents et des priorités budgétaires différentes |

### Recommandations budgets partagés

| Paramètre | Recommandation | Justification |
|---------|---------------|-----------|
| **Utiliser les budgets partagés** | **ACTIVER** quand associés aux stratégies portefeuille pour des campagnes avec des objectifs alignés | Permet à Google d'optimiser à la fois les enchères et l'allocation budgétaire simultanément |
| **Surveiller l'allocation** | Vérification hebdomadaire des dépenses par campagne au sein du pool partagé | Empêcher une campagne de consommer tout le budget |
| **Expériences de campagne** | **Passer aux budgets individuels** pour les campagnes d'expérience | Les budgets partagés ont des problèmes de compatibilité avec les expériences |

---

## Ajustements d'enchères sous Stratégies d'enchères intelligentes

### Configuration

| Type d'ajustement d'enchères | Statut Stratégies d'enchères intelligentes | Recommandation |
|--------------------|---------------------|---------------|
| **Appareil (hors exclusion)** | Ignoré (sauf CPA cible) | **Supprimer tous** les ajustements d'enchères par appareil sur les campagnes Stratégies d'enchères intelligentes |
| **Appareil (exclusion -100%)** | Fonctionne sur toutes les stratégies | Utiliser pour exclure totalement un type d'appareil si nécessaire |
| **Zone géographique** | Ignoré | **Supprimer :** Stratégies d'enchères intelligentes gère l'optimisation géographique |
| **Planning d'annonces** | Ignoré | **Supprimer :** Stratégies d'enchères intelligentes gère l'optimisation horaire |
| **Audiences** | Ignoré | **Supprimer :** Stratégies d'enchères intelligentes utilise les données d'audience dans son mix de signaux |
| **Données démographiques** | Ignoré | **Supprimer :** Stratégies d'enchères intelligentes optimise sur l'ensemble des données démographiques |

> Les ajustements d'enchères sur les campagnes Stratégies d'enchères intelligentes sont ignorés par l'algorithme. La seule exception est l'exclusion d'appareil -100%. Tout ajustement d'enchères non-exclusion que vous définissez est du poids mort dans le compte. Supprimez-les pour éviter la confusion.

### Exception : ajustements d'appareil CPA cible

CPA cible supporte techniquement les ajustements d'enchères par appareil. En pratique, définir des ajustements manuels par appareil par-dessus Stratégies d'enchères intelligentes dégrade généralement les performances. L'algorithme optimise déjà les enchères par appareil en utilisant 18+ signaux.

**Recommandation :** ne définissez pas d'ajustements d'enchères par appareil sur les campagnes CPA cible sauf si vous avez un cas d'usage spécifique et validé avec des preuves claires d'A/B test montrant que l'ajustement améliore les résultats.

---

## Règles de valeur de conversion

### Recommandation par défaut

| Paramètre | Recommandation | Justification |
|---------|---------------|-----------|
| **Règles de valeur de conversion** | **DÉSACTIVÉ** par défaut | Prioriser un suivi de conversion précis plutôt que des ajustements basés sur des règles |

### Quand activer

Activer les règles de valeur de conversion uniquement quand :

1. **Des différences de valeur spécifiques à l'entreprise ne peuvent pas être capturées par le suivi de conversion :** Exemple - les clients récurrents provenant d'une liste de remarketing valent 1,5x mais le suivi ne capture que la valeur du premier achat
2. **Simplification de structures de campagnes complexes :** Exemple - ajuster la valeur par région au lieu de créer des campagnes séparées par région
3. **Vous utilisez Maximiser la valeur de conversion ou ROAS cible :** Les règles de valeur n'affectent que les stratégies basées sur la valeur

### Règles pour les règles de valeur

| Règle | Détails |
|------|---------|
| Fonctionne uniquement avec les stratégies basées sur la valeur | Maximiser la valeur de conversion et ROAS cible. Aucun impact sur CPA cible ou Maximiser les conversions |
| Ajuste la valeur de conversion rapportée | Modifie ce que Stratégies d'enchères intelligentes voit dans la colonne valeur de conversion |
| Ne peut pas remplacer un suivi précis | Si les vraies valeurs sont disponibles, importez-les au lieu d'utiliser des règles |
| Conditions disponibles | Zone géographique, appareil, audience |

---

## Vérification de la configuration

Après avoir configuré les paramètres d'enchères, vérifiez :

| Vérification | État attendu |
|-------|---------------|
| Stratégies portefeuille liées aux bonnes campagnes | Toutes les campagnes prévues apparaissent dans le portefeuille |
| Objectif d'efficacité cohérent dans le portefeuille | Un seul objectif CPA ou ROAS constant |
| Plafond CPC maximum | DÉSACTIVÉ sauf justification explicite |
| Plafond CPC minimum | DÉSACTIVÉ sauf justification explicite |
| Budget partagé (si utilisé) | Lié aux mêmes campagnes que le portefeuille |
| Ajustements d'enchères non-exclusion sur les campagnes Stratégies d'enchères intelligentes | Supprimés (à 0%) |
| Règles de valeur de conversion | DÉSACTIVÉ sauf justification explicite |
| Objectifs spécifiques par campagne | Pointant correctement vers les actions de conversion prévues |

---

## Conditions d'exception

### Plafonds CPC : DÉSACTIVÉ (avec réserve)

- **Par défaut :** ne pas définir de plafonds CPC
- **Exception :** définir à 3x le CPC moyen des termes les plus convertissants si les outliers extrêmes sont récurrents et nuisibles
- **Si défini :** revoir mensuellement, mettre en place la surveillance du taux d'impressions perdu (rang)
- **Important :** un plafond CPC défini temporairement doit avoir un rappel calendrier pour révision. Les plafonds oubliés sont l'erreur de configuration de stratégie portefeuille la plus courante

### Budgets partagés : ACTIVER pour les campagnes alignées

- **Par défaut :** utiliser les budgets partagés quand les campagnes partagent le même objectif d'efficacité
- **Exception :** utiliser des budgets individuels lors d'expériences de campagne, de segmentation basée sur la performance, ou quand des niveaux de dépense garantis par campagne sont nécessaires
- **Risque :** faible, Google gère bien l'allocation dans la plupart des cas

### Règles de valeur : DÉSACTIVÉ par défaut

- **Par défaut :** ne pas utiliser les règles de valeur de conversion
- **Exception :** activer pour des nuances business spécifiques qui ne peuvent pas être capturées par le suivi de conversion
- **Important :** les règles de valeur sont une surcouche au tracking (suivi des conversions), pas un remplacement. Corrigez d'abord le tracking.
