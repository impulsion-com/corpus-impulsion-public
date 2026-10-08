# Sélection des mots clés et types de correspondance

> **Plateforme :** Google Ads
> **Catégorie :** Search
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Ce document définit les configurations de types de correspondance recommandées selon votre stratégie d'enchères et vos objectifs de campagne. Elle encadre la configuration des mots clés en établissant quel type de correspondance utiliser dans chaque scénario, quand les exceptions s'appliquent, et comment éviter les erreurs courantes de duplication.

---

## Ce que couvre / ne couvre pas ce document

**Ce document :**

- Définit le type de correspondance recommandé pour chaque stratégie d'enchères et objectif de campagne
- Établit quand le requête large est le bon choix par défaut et quand il ne l'est pas
- Explique la politique de duplication de mots clés entre types de correspondance
- Fournit des recommandations de dimensionnement du jeu de mots clés initial
- Établit les conditions d'exception pour dévier des paramètres par défaut

**Ce document ne couvre PAS :**

- La syntaxe et le comportement des types de correspondance (Voir : [Match Type Reference](<Search - Types de correspondance.md>))
- Le fonctionnement interne de Stratégies d'enchères intelligentes (Voir : [Stratégies d'enchères intelligentes Mechanics Reference](<../encheres/Enchères - Mécanismes des stratégies d'enchères intelligentes.md>))
- Le choix de la stratégie d'enchères (Voir : [Bid Strategy Selection Reference](<../encheres/Enchères - Sélection de stratégie d'enchères.md>))
- Les instructions pas à pas de recherche de mots clés ou de création de campagne
- Les instructions d'exécution pas à pas

---

## Matrice enchères - type de correspondance

C'est la recommandation centrale. Le choix du type de correspondance dépend de votre stratégie d'enchères et de la présence ou non d'objectifs d'efficacité.

| Objectif de campagne | Stratégie d'enchères | Type de correspondance recommandé | Non recommandé |
|---------------|-----------------|----------------------|-----------------|
| Conversions avec objectifs d'efficacité (compte établi) | CPA cible ou ROAS cible | **Requête large** | Exact/Phrase (inutile quand suffisamment de données existent, voir exceptions ci-dessous) |
| Conversions sans objectifs | Max Conversions ou Max Conversion Value | **Phrase + Mot-clé exact** | Requête large |
| Clics | Max Clicks (avec plafond CPC) ou CPC manuel | **Phrase + Mot-clé exact** | Requête large |
| Visibilité | Target Impression Share (avec plafond CPC) | **Phrase + Mot-clé exact** | Requête large |

> La recommandation de type de correspondance change entièrement selon que vous avez ou non des objectifs d'efficacité. Requête large avec CPA cible est une combinaison puissante. Requête large avec Max Conversions (sans objectif) est un gouffre budgétaire. C'est la stratégie d'enchères qui dicte le type de correspondance, pas l'inverse.

---

## Configuration recommandée par objectif

### Conversions avec objectifs d'efficacité : utilisez le requête large

| Paramètre | Recommandation | Justification |
|---------|---------------|-----------|
| **Type de correspondance** | **Requête large** | Le requête large utilise 4 signaux supplémentaires (contenu de la Landing Page, autres mots clés du groupe d'annonces, recherches précédentes de l'utilisateur, localisation de l'utilisateur) auxquels le phrase et l'exact n'ont pas accès |
| **Stratégie d'enchères** | CPA cible ou ROAS cible | Les objectifs d'efficacité contraignent l'algorithme, l'empêchant de poursuivre des requêtes de basse qualité |
| **Compétitivité de l'objectif** | Définir des objectifs compétitifs mais réalistes | L'algorithme a besoin de marge pour explorer tout en restant dans les limites |

**Pourquoi le requête large fonctionne ici :** l'objectif d'efficacité agit comme un garde-fou. L'algorithme ne va pas poursuivre des requêtes non pertinentes car cela violerait la contrainte de CPA ou ROAS. Le requête large donne à l'algorithme une portée maximale pour trouver des utilisateurs convertissants à travers les variations de requêtes, les fautes d'orthographe et les recherches associées que le phrase et l'exact manqueraient.

**Pourquoi le phrase/exact est inutile ici :** le requête large avec Stratégies d'enchères intelligentes atteint plus d'utilisateurs que le phrase ou l'exact. La hiérarchie de matching de Google priorise déjà les correspondances exactes quand elles existent. Ajouter des doublons phrase et exact du même mot clé n'apporte aucune valeur et encombre le compte.

### Conversions sans objectifs : utilisez le phrase et l'exact

| Paramètre | Recommandation | Justification |
|---------|---------------|-----------|
| **Type de correspondance** | **Phrase + Mot-clé exact** | Sans contrainte d'efficacité, l'algorithme va maximiser le volume à n'importe quel coût |
| **Stratégie d'enchères** | Max Conversions ou Max Conversion Value | Ces stratégies poursuivent le volume sans plafond de coût |

**Pourquoi le requête large échoue ici :** Max Conversions et Max Conversion Value ont un seul objectif - obtenir autant de conversions (ou de valeur) que possible. Sans objectif de CPA ou ROAS, il n'y a pas de garde-fou d'efficacité. Le requête large dans ce contexte étend les requêtes agressivement, et l'algorithme paiera volontiers 10x votre CPC normal si ça mène à une conversion.

### Clics : utilisez le phrase et l'exact

| Paramètre | Recommandation | Justification |
|---------|---------------|-----------|
| **Type de correspondance** | **Phrase + Mot-clé exact** | Les stratégies basées sur les clics n'ont pas de signal de conversion pour optimiser |
| **Stratégie d'enchères** | Max Clicks (avec plafond CPC) ou CPC manuel | Le budget doit être dépensé sur des clics pertinents uniquement |

**Pourquoi le requête large échoue ici :** les stratégies d'enchères basées sur les clics n'optimisent pas pour la qualité des conversions. Le requête large s'étendrait à des requêtes vaguement liées, et l'algorithme enchérirait sur tout ce qui génère un clic. Le phrase et l'exact gardent le trafic focalisé sur les requêtes que vous avez validées comme pertinentes.

### Visibilité : utilisez le phrase et l'exact

| Paramètre | Recommandation | Justification |
|---------|---------------|-----------|
| **Type de correspondance** | **Phrase + Mot-clé exact** | Les stratégies de taux d'impression enchérissent pour la visibilité, pas l'efficacité de conversion |
| **Stratégie d'enchères** | Target Impression Share (avec plafond CPC) | Le budget doit acheter des impressions sur des requêtes spécifiques et intentionnelles uniquement |

**Pourquoi le requête large échoue ici :** Target Impression Share enchérit pour apparaître en haut des résultats pour les requêtes matchées. Le requête large étendrait la couverture de requêtes à des termes vaguement liés, et la stratégie enchérirait agressivement pour apparaître en tête pour chacun d'eux. Cela sur-dépense le budget sur des requêtes qui n'ont pas d'importance pour vos objectifs de visibilité.

---

## Conditions d'exception

### Quand utiliser le phrase/exact malgré des objectifs d'efficacité

Le requête large avec CPA cible ou ROAS cible est le défaut, mais utilisez le phrase ou l'exact quand :

| Exception | Type de correspondance à utiliser | Justification |
|-----------|------------------|-----------|
| Nouveau compte sans historique de conversion | Exact et/ou Phrase | Stratégies d'enchères intelligentes n'a pas de données au niveau requête. Le requête large génère du gaspillage pendant que l'algorithme explore à l'aveugle. Tester le broad plus tard via une expérience de campagne 50/50 |
| Campagne à faible volume (<30 conversions/mois pour CPA cible, <50 pour ROAS cible) | Exact et/ou Phrase | Données insuffisantes pour que le requête large optimise efficacement. Concentrer les dépenses sur les requêtes connues à forte intention |
| Budget contraint | Exact et/ou Phrase | Les petits budgets sont consommés par l'exploration du requête large avant que les requêtes principales soient servies. Contrôler la pertinence et la température du trafic |
| Secteurs B2B de niche avec des mots clés prévisibles | Exact et/ou Phrase | L'espace de requêtes est étroit. Le requête large produit surtout des requêtes non pertinentes avec un uplift incrémental faible |
| Allocation budgétaire spécifique pour des termes spécifiques | Exact ou Phrase | Vous avez besoin de dépenses garanties sur des requêtes particulières, pas d'une allocation algorithmique |
| Les réglementations du secteur exigent de ne matcher que des recherches spécifiques | Exact ou Phrase | Les secteurs juridique, médical ou financier peuvent nécessiter un contrôle précis des requêtes |

### Quand passer du phrase/exact au requête large

Si vous utilisez actuellement le phrase ou l'exact avec CPA cible ou ROAS cible :

| Condition | Action |
|-----------|--------|
| Le compte a 30+ conversions/mois (CPA cible) ou 50+ (ROAS cible) | Tester le requête large via une expérience de campagne 50/50 |
| Les données de conversion sont stables (CPA/ROAS constant sur 2+ semaines) | Lancer l'expérience pendant 2-4 semaines avec un budget égal |
| L'expérience montre des conversions incrémentales à un CPA/ROAS acceptable | Déployer le requête large |
| Le budget est suffisant pour absorber l'expansion des requêtes | Continuer le déploiement |

> Utilisez des expériences de campagne 50/50 pour tester le requête large. Ne passez pas tous les mots clés en requête large d'un coup. Lancez une expérience contrôlée : un bras en phrase/exact, un bras en requête large, budgets égaux. Si le requête large génère des conversions incrémentales à une efficacité acceptable, déployez-le. Sinon, gardez le phrase/exact.

---

## Politique de duplication des mots clés

### Ne pas dupliquer les mots clés entre types de correspondance

La hiérarchie de matching de Google gère le routage des requêtes automatiquement :

| Priorité | Règle de routage |
|----------|-------------|
| 1 | Mot clé en mot-clé exact identique à la requête de recherche |
| 2 | Mot clé en phrase ou requête large identique à la requête de recherche |
| 3 | Correspondance corrigée orthographiquement avec n'importe quel mot clé |
| 4 | Classement de l'annonce le plus élevé parmi les mots clés éligibles restants |

**Ce que ça signifie :** si vous avez "crm software" en requête large, il n'y a aucun bénéfice à ajouter aussi [crm software] en mot-clé exact et "crm software" en expression exacte. Le système priorise déjà la correspondance la plus restrictive quand la requête correspond de manière identique.

### Approche recommandée

| Scénario | Recommandation |
|----------|---------------|
| Requête large avec objectifs d'efficacité | Un mot clé requête large par thème. Pas de doublons phrase ou exact nécessaires |
| Phrase + exact sans objectifs d'efficacité | Choisir un type de correspondance par mot clé. Phrase pour la flexibilité, exact pour la précision |
| Migration du phrase/exact vers le broad | Mettre en pause les mots clés phrase/exact, activer les équivalents requête large. Ne pas faire tourner les deux simultanément |

### Ce que causent les doublons de mots clés

- Structure de compte encombrée sans bénéfice de performance
- Reporting trompeur (conversions réparties entre les mots clés dupliqués)
- Surcharge de gestion inutile
- Aucune amélioration de la couverture de requêtes ou de l'éligibilité aux enchères

---

## Dimensionnement du jeu de mots clés initial

### Combien de mots clés pour commencer

| Contexte du type de correspondance | Recommandation de dimensionnement | Justification |
|-------------------|----------------------|-----------|
| Requête large + Stratégies d'enchères intelligentes | Commencer avec les mots clés de thème principal uniquement (5-20 par groupe d'annonces, selon la largeur du thème) | Le requête large découvre automatiquement les requêtes longue traîne. Sur-ajouter des mots clés crée de la redondance |
| Phrase/Mot-clé exact | Couvrir toutes les variations de requêtes pertinentes connues (10-30 par groupe d'annonces est typique) | Le phrase et l'exact ne découvrent pas de nouvelles requêtes. La couverture dépend de votre liste de mots clés |

### Principes de dimensionnement requête large

- **Couvrir les thèmes principaux, pas chaque variation.** "crm software" en requête large trouvera "best crm tool", "crm platform reviews", et des centaines d'autres variations. Les ajouter manuellement est redondant
- **Laisser Stratégies d'enchères intelligentes gérer la découverte :** L'algorithme utilise le contenu de la Landing Page, les autres mots clés, l'historique utilisateur et la localisation pour trouver des requêtes pertinentes. Votre travail est de définir les thèmes, pas d'énumérer chaque recherche possible
- **Consulter le rapport sur les termes de recherche :** Après 2 semaines, vérifiez quelles requêtes le requête large a trouvées. Ajoutez des négatifs pour les schémas non pertinents. N'ajoutez pas plus de mots clés pour matcher des requêtes que l'algorithme trouve déjà

### Principes de dimensionnement phrase/exact

- **Couvrir les variations connues explicitement :** Sans expansion algorithmique, vos mots clés sont le plafond de votre couverture
- **Regrouper étroitement par thème :** Chaque groupe d'annonces doit contenir des mots clés qui correspondent à la même intention et Landing Page
- **Étendre selon les rapports de termes de recherche :** Les nouvelles idées de mots clés viennent des requêtes réelles des utilisateurs, pas de la spéculation

---

## Erreurs courantes

| Erreur | Pourquoi ça échoue | Approche correcte |
|---------|-------------|-----------------|
| Requête large avec Max Conversions (sans objectif) | L'algorithme poursuit le volume à n'importe quel prix, la qualité des requêtes s'effondre | Définir un CPA cible ou ROAS cible avant d'utiliser le requête large |
| Dupliquer les mots clés sur les trois types de correspondance | Aucun bénéfice de performance, encombre le reporting, gaspille du temps de gestion | Un type de correspondance par mot clé |
| Lancer le requête large sur un compte neuf sans historique de conversion | L'algorithme n'a aucun signal pour optimiser, le requête large s'étend à l'aveugle | Commencer avec phrase/exact, construire des données de conversion, puis migrer vers le requête large |
| Utiliser l'mot-clé exact avec CPA cible parce que "c'est plus sûr" | L'mot-clé exact limite les signaux que Stratégies d'enchères intelligentes peut utiliser, réduit la portée, augmente les CPA | Utiliser le requête large avec des objectifs d'efficacité pour une flexibilité algorithmique maximale |
| Ajouter des centaines de mots clés dans un groupe d'annonces requête large | Le requête large étend déjà chaque mot clé à des centaines de requêtes. Sur-ajouter crée un chevauchement massif | 5-20 mots clés de niveau thème par groupe d'annonces |
| Faire tourner le requête large sur un budget contraint | Le budget est consommé par l'exploration avant que les requêtes principales soient servies | Utiliser le phrase/exact jusqu'à ce que le budget supporte l'expansion requête large |

---

## Vérification de la configuration

Après avoir configuré les mots clés et types de correspondance, vérifiez :

| Vérification | État attendu |
|-------|---------------|
| Le type de correspondance est aligné avec la stratégie d'enchères selon la matrice ci-dessus | Broad pour CPA cible/ROAS cible, Phrase/Exact pour tous les autres |
| Aucun mot clé dupliqué entre plusieurs types de correspondance | Un type de correspondance par mot clé par campagne |
| Les objectifs d'efficacité sont définis avant d'activer le requête large | CPA cible ou ROAS cible actif et compétitif |
| Le volume de conversions supporte le requête large (si utilisé) | 30+ conversions/mois pour CPA cible, 50+ pour ROAS cible |
| Les groupes d'annonces contiennent des quantités de mots clés appropriées au thème | 5-20 pour le requête large, 10-30 pour le phrase/exact |
| Mots-clés à exclure en place après les 2 premières semaines de requête large | Schémas de requêtes non pertinents exclus |

---

## Documents liés

- [Match Type Reference](<Search - Types de correspondance.md>) : syntaxe, comportement et règles de matching des types de correspondance
- [Modern Search Campaign Mental Model](<Search - Campagne Search moderne.md>) : comment les types de correspondance s'intègrent dans le cadre global de la campagne
- [Bid Strategy Selection Reference](<../encheres/Enchères - Sélection de stratégie d'enchères.md>) : quelle stratégie d'enchères choisir
- [Stratégies d'enchères intelligentes Mechanics Reference](<../encheres/Enchères - Mécanismes des stratégies d'enchères intelligentes.md>) : comment Stratégies d'enchères intelligentes utilise les signaux, y compris les signaux requête large
- [Bidding Configuration Guidelines](<../encheres/Enchères - Configuration des enchères.md>) : stratégies portefeuille, plafonds CPC et paramètres d'enchères associés
