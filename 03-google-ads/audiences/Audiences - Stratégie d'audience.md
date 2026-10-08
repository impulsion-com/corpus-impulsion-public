# Stratégie d'audience

> **Plateforme :** Google Ads
> **Catégorie :** Audiences
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Ce document vous aide à choisir la bonne approche d'audience pour chaque type de campagne et à prioriser les audiences par "température".

> ❓ **La question centrale :** Est-ce que je fournis des signaux (indices à l'IA) ou du ciblage (contrôle de qui voit mes annonces) ?

Google Ads a deux systèmes d'audience fondamentalement différents. Utiliser le mauvais modèle mental mène à de la frustration et du budget gaspillé.

---

## Ce que ce modèle NE couvre PAS

Ce document NE couvre PAS :

- La liste de tous les types de segments d'audience disponibles ou leurs spécifications (Voir : [Audience Signals Reference](<Audiences - Signaux d'audience.md>) pour PMax, [Audience Targeting Reference](<Audiences - Signaux d'audience.md>) pour Display/Video/Demand Gen)
- La configuration étape par étape des audiences pour n'importe quel type de campagne (Voir : SOPs spécifiques par campagne)
- L'explication de comment adapter le message au stade de conscience de l'audience (Voir : [Awareness Stage Mental Model](<../../01-strategie/redaction/Rédaction - Niveaux de conscience.md>))
- Les décisions de structure de campagne haut du tunnel (Voir : [Upper Funnel Campaign Structure Mental Model](<../strategie/Strategie - Structure de campagne haut de tunnel.md>))

---

## Les deux systèmes d'audience

| **Système** | **Types de campagnes** | **Votre rôle** | **Le rôle de Google** |
| --- | --- | --- | --- |
| **1️⃣ Signaux** | Performance Max | Fournir des indices | Décide qui voit les annonces |
| **2️⃣ Ciblage** | Display, Video, Demand Gen | Définir l'audience | Diffuse auprès de vos sélections |

> ⚠️ **Cette distinction est non négociable :** Les entrées PMax fonctionnent comme des signaux (indices à l'IA). Les entrées Display/Video/Demand Gen fonctionnent comme du ciblage (contraintes sur la diffusion). Traiter l'un comme l'autre crée des attentes erronées.

---

## Système 1️⃣ : Signaux (Performance Max uniquement)

### Ce que les signaux font réellement

```
VOUS FOURNISSEZ                      GOOGLE FAIT
───────────────────────────────────────────────────────
Liste Customer Match           →       Apprend les patterns
Thèmes de recherche            →       Note les signaux d'intention
Segments in-market             →       Utilise comme point de départ
                               →       S'ÉTEND au-delà de tout ça
                               →       Diffuse là où les conversions se produisent
```

### L'état d'esprit signal

| **Arrêtez de penser** | **Commencez à penser** |
| --- | --- |
| "Je cible ces audiences" | "Je donne à Google des indices sur qui convertit" |
| "Mes annonces ne seront vues que par ces utilisateurs" | "Mes annonces seront vues par quiconque Google prédit va convertir" |
| "Je peux tester des audiences spécifiques" | "Je peux fournir des indices de meilleure ou moins bonne qualité" |

### Hiérarchie de qualité des signaux

| **Qualité** | **Types de signaux** | **Impact** |
| --- | --- | --- |
| 🥇 **La plus haute** | Customer Match (haute valeur), convertisseurs du site | Montre directement à Google "qui convertit" |
| 🥈 **Haute** | Abandons de panier, visiteurs produits, utilisateurs engagés | Montre à Google "qui est intéressé" |
| 🥉 **Modérée** | Segments personnalisés (termes de recherche, URLs) | Dit à Google "à quoi ressemble l'intention" |
| 📊 **Plus basse** | In-market, événements de vie | Indices de catégorie larges |
| 📉 **La plus basse** | Affinité, données démographiques seules | Très large, le moins actionnable |

### Votre seul vrai contrôle : les exclusions

Dans PMax, les exclusions sont LE seul élément qui fonctionne comme du ciblage traditionnel. Les utilisateurs exclus NE VERRONT PAS les annonces.

| **Vous ne pouvez pas** | **Vous pouvez** |
| --- | --- |
| Restreindre les annonces aux audiences sélectionnées | Exclure des audiences spécifiques |
| Désactiver l'expansion | Fournir des signaux de meilleure qualité |
| Tester des audiences en A/B | Segmenter par groupe d'assets |

---

## Système 2️⃣ : Ciblage (Display, Video, Demand Gen)

### Ce que le ciblage fait réellement

```
VOUS DÉFINISSEZ                      GOOGLE FAIT
───────────────────────────────────────────────────────
Segments d'audience              →       Restreint la diffusion à ces utilisateurs
Ciblage de contenu               →       Restreint la diffusion à ces contextes
Exclusions                       →       Retire des utilisateurs de l'éligibilité
                                 →       Diffuse dans VOS paramètres
```

### L'état d'esprit ciblage

| **C'est vrai** | **C'est aussi vrai** |
| --- | --- |
| Vos sélections contrôlent qui voit les annonces | Le ciblage optimisé peut élargir (si activé) |
| Vous pouvez tester des segments spécifiques en A/B | Vous devez équilibrer portée vs. précision |
| Les exclusions retirent complètement les utilisateurs | Le mode de ciblage affecte le comportement d'enchère |

### Distinction des modes de ciblage

| **Mode** | **Comportement** | **Quand l'utiliser** |
| --- | --- | --- |
| **Ciblage** | Restreint la diffusion aux segments sélectionnés | Vous voulez atteindre uniquement ces utilisateurs |
| **Observation** | Enchérit sur tous les utilisateurs ; ajuste les enchères pour les segments sélectionnés | Vous voulez des données sans restreindre la portée |

> ↪️ **Le mode Observation est pour l'apprentissage :** Ajoutez des segments en mode Observation pour voir les données de performance avant de vous engager en mode Ciblage.

### Les segments combinés comme levier de précision

Les segments d'audience individuels peuvent être trop larges pour un ciblage efficace. Les segments combinés utilisent une logique ET/OU/SAUF pour les affiner.

| **Point de départ** | **Approche combinée** | **Effet** |
| --- | --- | --- |
| In-market (large, froid) | In-market ET keywords personnalisés (termes de recherche) | Affiné de froid à tiède : les utilisateurs montrent à la fois une intention de navigation ET de recherche |
| Affinité (le plus large, le plus froid) | Affinité ET In-market | Affiné du plus froid au froid : intérêt lifestyle combiné avec recherche active |
| N'importe quel segment de prospection | Segment ET SAUF clients existants | Acquisition pure de nouveaux clients |
| Signaux faibles multiples | Keywords personnalisés ET Événements de vie ET SAUF convertisseurs | Précision par couches à partir de segments individuellement imprécis |

> 💡 **Les segments combinés transforment les audiences froides en audiences tièdes :** Quand un segment seul est trop large, le combiner avec un second signal d'intention crée une audience plus précise et efficace sans trop sacrifier la portée.

> ↪️ **Configurations de segments combinés :** Voir [Audience Segment Catalog](<Audiences - Segments d'audience.md>) pour les patterns de segments combinés réutilisables par secteur.

---

## Le document de température d'audience

Quel que soit le système (signaux ou ciblage), les audiences ont une "température" : un proxy pour l'intention et la performance attendue.

### Le spectre de température

| **Temp.** | **Types d'audience** | **Intention** | **Efficacité** | **Portée** |
| --- | --- | --- | --- | --- |
| 🔥 **Chaud** | Abandons de panier, abandons de formulaire, visiteurs produits | La plus haute | La meilleure | La plus petite |
| 🌡️ **Tiède** | Tous les visiteurs, Customer Match, engagés YouTube | Haute | Forte | Limitée |
| ❄️ **Frais** | Segments personnalisés (recherche/URLs), Audiences similaires (Demand Gen) | Moyenne | Modérée | Bonne |
| ❄️ **Froid** | In-market, événements de vie | Basse-Moyenne | Plus basse | Large |
| 🧊 **Le plus froid** | Affinité, données démographiques seules | La plus basse | La plus basse | Maximum |

> 💡 **Les données démographiques sont une couche, pas un niveau de température :** L'âge, le genre, le revenu du foyer et le statut parental fonctionnent comme des filtres appliqués au-dessus de n'importe quel segment d'audience. Ils affinent la performance au sein d'un segment mais ne définissent pas l'intention seuls. "Hommes 25-34 ans" n'est pas une stratégie d'audience. "In-market pour logiciel CRM, hommes 25-34 ans, excluant les clients existants" en est une.

### La température s'applique différemment selon le système

| **Système** | **Audiences chaudes** | **Audiences froides** |
| --- | --- | --- |
| **Signaux (PMax)** | Accélèrent l'apprentissage, peuvent améliorer la performance initiale | Apprentissage plus lent, l'IA découvre par elle-même |
| **Ciblage (Display/Video/DG)** | Efficacité la plus haute, portée la plus faible | Efficacité la plus basse, portée maximum |

---

## Expansion stratégique : Chaud → Froid

### Le principe fondamental

> 💡 **Commencer chaud, étendre vers le froid :** Construire à partir de vos audiences les plus chaudes vers des audiences progressivement plus froides. Cela maximise l'efficacité pendant que vous apprenez ce qui fonctionne.

### Phases d'expansion

| **Phase** | **Focus** | **Audiences** | **Critères de sortie** |
| --- | --- | --- | --- |
| **1️⃣ Remarketing** | Utilisateurs connus | Abandons de panier, visiteurs du site, Customer Match | Profitable, pas contraint par le budget |
| **2️⃣ Prospection haute intention** | Signaux d'intention | Segments personnalisés (recherche/URLs), Audiences similaires | ROAS positif (plus bas que Phase 1) |
| **3️⃣ Prospection catégorie** | Intérêt catégorie | In-market, événements de vie | Budget de prospection dédié |
| **4️⃣ Notoriété** | Alignement lifestyle | Affinité, données démographiques larges | Objectifs de construction de marque |

### Pourquoi cet ordre fonctionne

| **Phase** | **Ce que vous apprenez** | **Niveau de risque** |
| --- | --- | --- |
| 1 | Performance de référence, ce qui convertit | Le plus bas |
| 2 | Quels signaux d'intention fonctionnent | Bas |
| 3 | Patterns au niveau catégorie | Moyen |
| 4 | Brand lift, conversions assistées | Le plus élevé |

> ⚠️ **Ne sautez pas de phases :** Aller directement aux audiences froides sans données de remarketing signifie que vous devinez. Chaque phase informe la suivante.

---

## Mapping type de campagne → approche

| **Type de campagne** | **Système** | **Audiences similaires ?** | **Ciblage de contenu ?** | **Levier de scaling principal** |
| --- | --- | --- | --- | --- |
| **Performance Max** | Signaux | Non | Non | Qualité des signaux + exclusions |
| **Display** | Ciblage | Non | Oui | Expansion de segments + contenu |
| **Video** | Ciblage | Non | Oui | Expansion de segments + contenu |
| **Demand Gen** | Ciblage | Oui (exclusif) | Non | Expansion des audiences similaires |

---

### La position unique de Demand Gen

Demand Gen se situe entre Display/Video et PMax :

| **Comme Display/Video** | **Comme PMax** |
| --- | --- |
| Vrai ciblage (vous contrôlez qui voit les annonces) | Pas de ciblage de contenu |
| Audiences nommées | Option de ciblage optimisé |
| Les exclusions fonctionnent | Expansion au-delà des sélections possible |

**L'avantage exclusif de Demand Gen :** Les segments similaires. Ce sont des audiences modélisées basées sur vos listes sources, disponibles uniquement dans Demand Gen.

---

## Les audience insights comme outil de découverte

Les audience insights comblent l'écart entre "qui je pense qui convertit" et "qui convertit réellement". Ils révèlent des segments d'audience que vous ne ciblez peut-être pas mais qui génèrent des conversions.

### La boucle de découverte

```
VÉRIFIER LES INSIGHTS → TROUVER LES SEGMENTS À INDEX ÉLEVÉ → AJOUTER AU CIBLAGE → MESURER → RÉPÉTER
```

| **Étape** | **Action** | **Outil** |
| --- | --- | --- |
| 1. Vérifier les insights | Analyser quels segments d'audience génèrent des conversions | Google Ads > Page Insights > Cartes audience insights |
| 2. Identifier les opportunités | Trouver les segments à index élevé (3x+ surreprésentés) que vous NE ciblez PAS actuellement | Tableau de persona insights |
| 3. Ajouter au ciblage | Ajouter les segments découverts en ciblage ou dans des segments combinés | Paramètres campagne / ad group |
| 4. Mesurer l'impact | Évaluer la performance du nouveau segment après 30 jours | Reporting standard au niveau segment |

> 💡 **Les audience insights informent les phases d'expansion :** Quand vous décidez quelles audiences froides tester ensuite, vérifiez les audience insights d'abord. Les segments non ciblés à index élevé sont des candidats d'expansion à moindre risque parce qu'ils génèrent déjà des conversions via d'autres canaux.

> ↪️ **Spécifications des audience insights :** Voir [Audience Targeting Reference](<Audiences - Signaux d'audience.md>) pour les types d'insights, la disponibilité et l'interprétation de l'index.

---

## Principes clés

1. **Connaître votre système.** 
PMax = signaux (indices). Tout le reste = ciblage (contrôle). Ne les confondez pas.
2. **La qualité plutôt que la quantité.** 
Une petite liste de clients à haute valeur bat une grande liste de visiteurs aléatoires dans les deux systèmes.
3. **La température prédit la performance.** 
Les audiences plus chaudes convertissent mieux. Les audiences plus froides touchent plus de monde. Équilibrer en fonction des objectifs.
4. **Étendre méthodiquement.** 
Chaud → frais → froid. Chaque phase finance et informe la suivante.
5. **Les exclusions sont universelles.** 
Dans chaque système, les exclusions sont un vrai contrôle. Les utiliser pour les convertisseurs récents, les clients existants et la protection de marque.
6. **Mesurer de manière appropriée.** 
Audiences chaudes = ROAS direct. Audiences froides = conversions assistées, brand lift.

---

## Documents liés

| **Document** | **Relation** |
| --- | --- |
| [Audience Signals Reference](<Audiences - Signaux d'audience.md>) | Types de signaux PMax et syntaxe des thèmes de recherche |
| [Audience Targeting Reference](<Audiences - Signaux d'audience.md>) | Types de segments, modes de ciblage, paramètres d'expansion |
| [Audience Targeting Guidelines](<Audiences - Paramètres recommandés de ciblage.md>) | Paramètres recommandés, décisions d'expansion, optimisation démographique |
| [Audience Segments Reference](<Audiences - Segments d'audience.md>) | Mécaniques des segments, comportement de matching, température d'intention |
| [Audience Segment Catalog](<Audiences - Segments d'audience.md>) | Configurations de segments et patterns de segments combinés |
| [SOP - Configurer les signaux d'audience](<Audiences - Configurer les signaux d'audience.md>) | Configuration des signaux d'audience PMax |
| [SOP - Configurer le ciblage par audience](<Audiences - Configurer le ciblage par audience.md>) | Exécution du ciblage par audience Display, Video, Demand Gen |
| [SOP - Lancer une campagne Display](<../display/Display - Lancer une campagne.md>) | Configuration de campagne Display |
| [SOP - Lancer une campagne Video](<../video/Video - Lancer une campagne.md>) | Configuration de campagne Video |
| [SOP - Lancer une campagne Demand Gen](<../demand-gen/Demand Gen - Lancer une campagne.md>) | Configuration de campagne Demand Gen |
