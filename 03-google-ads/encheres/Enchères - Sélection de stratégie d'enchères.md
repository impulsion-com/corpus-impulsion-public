# Sélection de stratégie d'enchères

> **Plateforme :** Google Ads
> **Catégorie :** Enchères
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Documente les arbres de décision pour sélectionner une stratégie d'enchères initiale lors de la création d'une nouvelle campagne, couvrant les six types de campagne : Search, Shopping standard, Performance Max, Display, Video et Demand Gen.

---

## Ce que couvre cette fiche / Ce qu'elle ne couvre PAS

**Cette fiche :**

- Fournit un arbre de décision pour chacun des six types de campagne
- Aide à déterminer la stratégie d'enchères initiale correcte pour une nouvelle campagne
- Documente les points de décision clés : disponibilité des données, objectif d'optimisation et contrôle de l'efficacité
- Couvre toutes les stratégies d'enchères disponibles par type de campagne

**Cette fiche ne couvre PAS :**

- Le fonctionnement interne de Stratégies d'enchères intelligentes (Voir : [Stratégies d'enchères intelligentes Mechanics Reference](<Enchères - Mécanismes des stratégies d'enchères intelligentes.md>))
- Le calcul des cibles CPA ou ROAS (Voir : [Unit Economics Reference](<../../01-strategie/fondamentaux/Fondamentaux - Unit economics.md>))
- Les seuils minimum de volume de conversions par stratégie (Voir : [Conversion Volume Thresholds Reference](<../suivi/Suivi - Seuils de volume de conversions.md>))
- Les instructions de configuration pas à pas (Voir : [SOP - Selectionner une strategie d'encheres](<Enchères - Sélectionner une stratégie d'enchères.md>))
- Le scaling ou la migration depuis une stratégie existante (utilise un cadre d'optimisation séparé)

---

## Aide-mémoire : stratégies par type de campagne

| Type de campagne | CPC manuel | Max Clicks | Target Imp. Share | Viewable CPM | Max CPV | Target CPV | Target CPM | Max Conv. | CPA cible | Max Conv. Value | ROAS cible |
|---------------|:----------:|:----------:|:-----------------:|:------------:|:-------:|:----------:|:----------:|:---------:|:----------:|:---------------:|:-----------:|
| **Search** | Oui | Oui | Oui | Non | Non | Non | Non | Oui | Oui | Oui | Oui |
| **Shopping standard** | Oui | Oui | Non | Non | Non | Non | Non | Non | Non | Non | Oui |
| **Performance Max** | Non | Non | Non | Non | Non | Non | Non | Oui | Oui | Oui | Oui |
| **Display** | Oui | Oui | Non | Oui | Non | Non | Non | Oui | Oui | Oui | Oui |
| **Video** | Non | Non | Non | Non | Oui | Oui | Oui | Non | Non | Non | Non |
| **Demand Gen** | Non | Oui | Non | Non | Non | Non | Non | Oui | Oui | Oui | Oui |

> CPA cible et ROAS cible ne sont pas des stratégies séparées : ce sont Maximiser les conversions et Maximiser la valeur de conversion avec une cible d'efficacité optionnelle activée. Dans l'interface Google Ads, activez le CPA cible en cochant "Définir un coût par action cible" sous Maximiser les conversions. Activez le ROAS cible en cochant "Définir un retour sur les dépenses publicitaires cible" sous Maximiser la valeur de conversion.

---

## Search

Search offre la plus large gamme de stratégies d'enchères, du contrôle manuel complet au Stratégies d'enchères intelligentes basé sur la valeur.

```
Avez-vous besoin d'un contrôle total sur les enchères ?
│
├─ OUI → Utiliser CPC manuel
│
└─ NON → Le compte est-il nouveau (zéro donnée historique) ?
         │
         ├─ OUI → Avez-vous une expertise du secteur ?
         │        │
         │        ├─ OUI → Commencer avec Maximize Clicks
         │        │
         │        └─ NON → Commencer avec CPC manuel
         │
         └─ NON → Nouvelle campagne avec un ciblage peu familier ?
                  │
                  ├─ OUI → Avez-vous une expertise du secteur ?
                  │        │
                  │        ├─ OUI → Commencer avec Maximize Clicks
                  │        │
                  │        └─ NON → Commencer avec CPC manuel
                  │
                  └─ NON → Choisir une stratégie automatisée selon l'objectif :
                           │
                           ├─ Objectif = Visibilité (impressions) ?
                           │  └─ OUI → Utiliser Target Impression Share
                           │
                           ├─ Objectif = Trafic (clics) ?
                           │  └─ OUI → Utiliser Maximize Clicks
                           │
                           ├─ Objectif = Volume de conversions ?
                           │  └─ OUI → Données de conversion suffisantes ?
                           │           │
                           │           ├─ OUI → Voulez-vous contrôler le CPA ?
                           │           │        │
                           │           │        ├─ OUI → Utiliser CPA cible
                           │           │        │
                           │           │        └─ NON → Utiliser Maximiser les conversions
                           │           │
                           │           └─ NON → Utiliser Maximiser les conversions
                           │
                           └─ Objectif = Valeur de conversion ?
                              └─ OUI → Données de conversion suffisantes ?
                                       │
                                       ├─ OUI → Voulez-vous contrôler le ROAS ?
                                       │        │
                                       │        ├─ OUI → Utiliser ROAS cible
                                       │        │
                                       │        └─ NON → Utiliser Maximiser la valeur de conversion
                                       │
                                       └─ NON → Utiliser Maximiser la valeur de conversion
```

> Comptes nouveaux sans expertise du secteur : commencez avec CPC manuel pour collecter des données de manière conservatrice. Une fois que vous comprenez quels keywords performent, migrez vers une stratégie orientée conversion.

> Expertise du secteur signifie que vous avez déjà lancé des campagnes similaires : vous savez quels keywords fonctionnent, vous avez une liste de mots-clés à exclure prête, et vous pouvez cibler assez précisément pour éviter des dépenses inutiles avec Maximize Clicks.

---

## Shopping standard

Shopping standard a un ensemble plus restreint de stratégies disponibles. CPC manuel est le point de départ par défaut pour les nouveaux comptes.

```
Avez-vous besoin d'un contrôle total sur les enchères ?
│
├─ OUI → Utiliser CPC manuel
│
└─ NON → Le compte est-il nouveau (zéro donnée historique) ?
         │
         ├─ OUI → Commencer avec CPC manuel
         │        │
         │        └─ Voulez-vous collecter des données agressivement ?
         │           │
         │           ├─ OUI → Commencer avec Maximize Clicks
         │           │
         │           └─ NON → Continuer avec CPC manuel
         │
         └─ NON → Nouvelle campagne avec un ciblage peu familier ?
                  │
                  ├─ OUI → Même chose que nouveau compte (CPC manuel ou Maximize Clicks)
                  │
                  └─ NON → Choisir une stratégie automatisée selon l'objectif :
                           │
                           ├─ Objectif = Trafic (clics) ?
                           │  └─ OUI → Utiliser Maximize Clicks
                           │
                           └─ Objectif = Valeur de conversion ?
                              └─ OUI → Données de conversion suffisantes ?
                                       │
                                       └─ OUI → Utiliser ROAS cible
```

> Shopping standard démarre par défaut en CPC manuel pour les nouveaux comptes car l'approche est plus conservatrice qu'en Search. Ne passez à Maximize Clicks que si vous voulez collecter des données agressivement et acceptez des dépenses initiales plus élevées.

---

## Performance Max

Performance Max ne supporte que les stratégies Stratégies d'enchères intelligentes. Il n'y a pas d'option manuelle.

```
Objectif = Volume de conversions ?
│
├─ OUI → Données de conversion suffisantes ?
│        │
│        ├─ OUI → Voulez-vous contrôler le CPA ?
│        │        │
│        │        ├─ OUI → Utiliser CPA cible
│        │        │
│        │        └─ NON → Utiliser Maximiser les conversions
│        │
│        └─ NON → Utiliser Maximiser les conversions
│
└─ NON → Objectif = Valeur de conversion ?
         │
         └─ OUI → Données de conversion suffisantes ?
                  │
                  ├─ OUI → Voulez-vous contrôler le ROAS ?
                  │        │
                  │        ├─ OUI → Utiliser ROAS cible
                  │        │
                  │        └─ NON → Utiliser Maximiser la valeur de conversion
                  │
                  └─ NON → Utiliser Maximiser la valeur de conversion
```

> Pas de repli manuel : Performance Max n'a pas d'option CPC manuel ou Maximize Clicks. Si vous manquez de données de conversion, commencez avec Maximiser les conversions (sans cible) et augmentez les dépenses pour accumuler des données. Envisagez d'optimiser le suivi des conversions, de passer à une micro conversion, ou d'augmenter les budgets pour accélérer la collecte de données.

---

## Display

Display ajoute le Viewable CPM pour les campagnes de notoriété et suit une structure Stratégies d'enchères intelligentes similaire pour les objectifs de conversion.

```
Objectif = Visibilité (impressions) ?
│
├─ OUI → Utiliser Viewable CPM
│
└─ NON → Objectif = Trafic (clics) ?
         │
         ├─ OUI → Besoin d'un contrôle total sur les enchères CPC ?
         │        │
         │        ├─ OUI → Utiliser CPC manuel
         │        │
         │        └─ NON → Utiliser Maximize Clicks
         │
         └─ NON → Objectif = Volume de conversions ?
                  │
                  ├─ OUI → Données de conversion suffisantes ?
                  │        │
                  │        ├─ OUI → Voulez-vous contrôler le CPA ?
                  │        │        │
                  │        │        ├─ OUI → Utiliser CPA cible
                  │        │        │
                  │        │        └─ NON → Utiliser Maximiser les conversions
                  │        │
                  │        └─ NON → Utiliser Maximiser les conversions
                  │
                  └─ NON → Objectif = Valeur de conversion ?
                           │
                           └─ OUI → Données de conversion suffisantes ?
                                    │
                                    ├─ OUI → Voulez-vous contrôler le ROAS ?
                                    │        │
                                    │        ├─ OUI → Utiliser ROAS cible
                                    │        │
                                    │        └─ NON → Utiliser Maximiser la valeur de conversion
                                    │
                                    └─ NON → Utiliser Maximiser la valeur de conversion
```

> Règle de base pour CPA cible/ROAS en Display : définissez votre CPA cible au moins 2x plus élevé et votre ROAS cible au moins 2x plus bas que vos benchmarks (analyses comparatives) Search hors marque. Le trafic Display convertit à des taux plus faibles, et des cibles serrées étoufferont le volume.

> Seuil minimum Display : 30+ conversions/mois pour CPA cible, 50+ pour ROAS cible. Assurez-vous que votre budget peut soutenir ce volume (budget = conversions cibles x CPA moyen).

---

## Video

Les campagnes Video sont optimisées pour les objectifs de notoriété et considération uniquement. Les stratégies d'enchères orientées conversion (CPA cible, Maximiser les conversions, ROAS cible, Maximiser la valeur de conversion) ne sont **pas disponibles** dans les campagnes Video. Pour de la publicité vidéo orientée conversion, utilisez les campagnes **Demand Gen** à la place.

```
Objectif = Vues vidéo ?
│
├─ OUI → YouTube Shorts Ads ?
│        │
│        ├─ OUI → Utiliser Target CPV
│        │
│        └─ NON → Utiliser Maximum CPV
│
└─ NON → Objectif = Couverture, fréquence ou séquencement ?
         │
         └─ OUI → Utiliser Target CPM
```

| Sous-type de campagne | Stratégie d'enchères |
|------------------|--------------|
| Video Views | Target CPV |
| Efficient Reach | Target CPM |
| Non-skippable Reach | Target CPM |
| Target Frequency | Target CPM |
| Ad Sequence | Target CPM ou Maximum CPM |
| Audio Reach | Target CPM |

> Les campagnes Video Action n'existent plus : elles ont été migrées vers Demand Gen au T2 2025. Si vous voulez des campagnes vidéo optimisées pour la conversion, utilisez **Demand Gen**, pas les campagnes Video.

> Video est pour la notoriété et la considération : utilisez les campagnes Video pour l'image de marque, la couverture, la fréquence et les vues vidéo. Utilisez Demand Gen pour les objectifs de conversion sur YouTube, Discover et Gmail.

---

## Demand Gen

Les campagnes Demand Gen supportent les stratégies basées sur les clics et les conversions mais pas les enchères manuelles ni les options spécifiques à la notoriété.

```
Objectif = Trafic (clics) ?
│
├─ OUI → Utiliser Maximize Clicks
│
└─ NON → Objectif = Volume de conversions ?
         │
         ├─ OUI → Données de conversion suffisantes ?
         │        │
         │        ├─ OUI → Voulez-vous contrôler le CPA ?
         │        │        │
         │        │        ├─ OUI → Utiliser CPA cible
         │        │        │
         │        │        └─ NON → Utiliser Maximiser les conversions
         │        │
         │        └─ NON → Utiliser Maximiser les conversions
         │
         └─ NON → Objectif = Valeur de conversion ?
                  │
                  └─ OUI → Données de conversion suffisantes ?
                           │
                           ├─ OUI → Voulez-vous contrôler le ROAS ?
                           │        │
                           │        ├─ OUI → Utiliser ROAS cible
                           │        │
                           │        └─ NON → Utiliser Maximiser la valeur de conversion
                           │
                           └─ NON → Utiliser Maximiser la valeur de conversion
```

> Règle de base pour CPA cible/ROAS en Demand Gen : même chose que Display et Video : définissez le CPA cible au moins 2x plus élevé et le ROAS cible au moins 2x plus bas que les benchmarks Search hors marque.

> Budget minimum Demand Gen : définissez votre budget quotidien au moins 5x supérieur à votre CPA moyen pour que Stratégies d'enchères intelligentes fonctionne correctement. Par exemple, si votre CPA moyen est de 50 €, définissez un budget quotidien minimum de 250 €.

---

## Points de décision communs

Ces concepts apparaissent dans plusieurs arbres de décision.

### Données de conversion suffisantes

Le seuil dépend de la stratégie d'enchères (s'applique aux campagnes supportant les enchères basées sur les conversions) :

| Type de campagne | CPA cible (min fonctionnel) | ROAS cible (min fonctionnel) | Recommandé (les deux) |
|---------------|:---------------------------:|:----------------------------:|:------------------:|
| Search | 30+ | 50+ | 50+ |
| Shopping standard | N/A | 50+ | 50+ |
| Performance Max | 30+ | 50+ | 50+ |
| Display | 30+ | 50+ | 50+ |
| Demand Gen | 30+ | 50+ | 50+ |

> Le minimum absolu est de 15 conversions/mois : en dessous de 15, les stratégies basées sur les conversions n'ont pas assez de signal. Entre 15 et 29, attendez-vous à une forte volatilité. Consolidez les campagnes ou utilisez des stratégies d'enchères de portefeuille pour mutualiser les données si les campagnes individuelles n'atteignent pas le seuil.

> Les campagnes Video ne supportent pas les enchères basées sur les conversions : utilisez Demand Gen pour de la publicité vidéo orientée conversion.

Quand vous n'atteignez pas le seuil, priorisez ces tactiques dans l'ordre :

1. Optimiser le suivi des conversions (combler les lacunes, réduire les données perdues)
2. Consolider les campagnes avec une intention/des cibles similaires en moins de campagnes
3. Appliquer une stratégie d'enchères de portefeuille (PBS) pour mutualiser les données de conversion entre campagnes nécessitant des budgets séparés
4. Passer à une micro conversion comme action de conversion principale (volume plus élevé, plus haut dans le tunnel)
5. Augmenter les budgets pour accélérer le flux de données
6. Revenir à Maximize Clicks ou CPC manuel en attendant l'accumulation de données

> Détails complets des seuils : voir [Conversion Volume Thresholds Reference](<../suivi/Suivi - Seuils de volume de conversions.md>)

### Expertise du secteur

Vous avez une expertise du secteur quand :

- Vous avez déjà lancé des campagnes similaires (même secteur, mêmes thèmes de keywords)
- Vous avez une liste de mots-clés à exclure validée prête
- Vous comprenez quelles requêtes convertissent et lesquelles gaspillent du budget
- Vous pouvez cibler assez précisément pour que Maximize Clicks ne brûle pas le budget sur du trafic non pertinent

Sans expertise du secteur, CPC manuel est le point de départ le plus sûr car il limite l'exposition pendant que vous apprenez.

### Ciblage familier vs non familier

Stratégies d'enchères intelligentes apprend au **niveau de la requête**, pas au niveau du keyword. Il utilise les données de conversion des requêtes de recherche sur l'ensemble de votre compte. Si vous lancez une nouvelle campagne ciblant des requêtes qui ont déjà un historique de conversion dans d'autres campagnes, Stratégies d'enchères intelligentes peut appliquer ces apprentissages immédiatement.

Cela signifie :

- **Ciblage familier** (requêtes existantes avec des données) : appliquer une stratégie d'enchères automatisée dès le premier jour
- **Ciblage non familier** (nouvelles requêtes, nouveaux thèmes de keywords) : traiter comme un nouveau compte et collecter des données d'abord

### Nouveau compte vs nouvelle campagne

| Scénario | Ce que ça signifie | Approche de départ |
|----------|--------------|-------------------|
| Nouveau compte, zéro donnée | Aucun historique de conversion nulle part | CPC manuel ou Maximize Clicks (selon l'expertise) |
| Compte existant, nouvelle campagne avec des requêtes familières | Les requêtes ont déjà des données de conversion dans d'autres campagnes | Stratégie automatisée dès le premier jour |
| Compte existant, nouvelle campagne avec des requêtes non familières | Nouveaux thèmes de keywords sans données de requête au niveau du compte | Traiter comme un nouveau compte |

---

## Erreurs courantes

| Erreur | Problème | Solution |
|---------|---------|-----|
| Commencer avec CPA cible/ROAS sur un nouveau compte | Stratégies d'enchères intelligentes n'a pas de données de conversion pour optimiser, menant à des enchères erratiques et du budget gaspillé | Commencer avec Maximize Clicks ou CPC manuel, puis migrer quand le volume suffisant est atteint (30+ minimum fonctionnel pour CPA cible, 50+ recommandé pour la stabilité) |
| Définir les cibles CPA cible/ROAS basées sur les benchmarks Search pour Display ou Demand Gen | Les campagnes en haut du tunnel ont des taux de conversion plus bas, donc les cibles Search sont irréalistement serrées | Définir le CPA cible Display/Demand Gen à 2x le CPA Search et le ROAS cible à 0,5x le ROAS Search |
| Utiliser Maximize Clicks en permanence | Maximize Clicks optimise pour le trafic, pas les conversions, donc il continue à dépenser sur des clics de faible qualité indéfiniment | Migrer vers une stratégie orientée conversion une fois que vous avez accumulé suffisamment de données |
| Choisir une stratégie basée sur la valeur sans valeurs de conversion | Maximiser la valeur de conversion et ROAS cible nécessitent des données de valeur pour optimiser, avec un comportement arbitraire sans elles | S'assurer que le suivi des conversions envoie des valeurs réelles avant d'utiliser les enchères basées sur la valeur |
| Ignorer la vérification du ciblage non familier | Lancer un nouveau thème de keyword dans un compte existant et supposer que Stratégies d'enchères intelligentes va fonctionner car le compte a des données | Vérifier si la nouvelle campagne cible des requêtes que Stratégies d'enchères intelligentes a déjà vues dans d'autres campagnes |
| Définir le budget quotidien en dessous de 5x le CPA moyen sur Demand Gen | Stratégies d'enchères intelligentes ne peut pas trouver assez d'enchères dans un budget contraint, menant à une diffusion incohérente | Définir le budget quotidien à au moins 5x votre CPA moyen |

---

## Documents liés

| Document | Relation |
|----------|-------------|
| [Bidding Strategy Mental Model](<Enchères - Stratégie d'enchères.md>) | Cadre conceptuel pour comprendre les catégories et la progression des stratégies d'enchères |
| [Stratégies d'enchères intelligentes Mechanics Reference](<Enchères - Mécanismes des stratégies d'enchères intelligentes.md>) | Fonctionnement de Stratégies d'enchères intelligentes : signaux, périodes d'apprentissage, enchères en temps réel |
| [Conversion Volume Thresholds Reference](<../suivi/Suivi - Seuils de volume de conversions.md>) | Volumes minimum de conversions par stratégie et type de campagne |
| [Unit Economics Reference](<../../01-strategie/fondamentaux/Fondamentaux - Unit economics.md>) | Comment calculer le CPA/ROAS de rentabilité et définir les cibles d'efficacité |
| [Budget Pacing Reference](<Enchères - Rythme de dépense.md>) | Mécanismes d'allocation et de rythme de dépense du budget |
