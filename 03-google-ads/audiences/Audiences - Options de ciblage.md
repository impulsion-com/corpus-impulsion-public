# Ciblage d'audience

> **Plateforme :** Google Ads
> **Catégorie :** Audiences
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Documente les types de segments d'audience, les options de ciblage de contenu et les paramètres de ciblage pour les campagnes Display, Video et Demand Gen.

---

## Ce que couvre cette fiche / Ce qu'elle ne couvre PAS

**Cette fiche :**

- Liste les types de segments d'audience pour Display, Video et Demand Gen
- Documente les options de ciblage de contenu (Display et Video uniquement)
- Explique les modes de ciblage et les paramètres d'expansion

**Cette fiche ne couvre PAS :**

- L'explication conceptuelle signaux vs ciblage (Voir : [Audience Strategy Mental Model](<Audiences - Stratégie d'audience.md>))
- La configuration pas à pas de la campagne (Voir : les SOP de campagne respectifs)
- Les signaux Performance Max (Voir : [Audience Signals Reference](<Audiences - Signaux d'audience.md>))

---

## Aide-mémoire : capacités par campagne

| **Capacité** | **Display** | **Video** | **Demand Gen** |
| --- | --- | --- | --- |
| Segments d'audience | Oui | Oui | Oui |
| Segments similaires | Non | Non | Oui (exclusif) |
| Ciblage de contenu | Oui | Oui | Non |
| Ciblage vs Observation | Oui | Oui | Ciblage uniquement |
| Ciblage optimisé | Oui | Oui | Oui |
| Exclusions | Oui | Oui | Oui |

---

## Types de segments d'audience

### Vos données

| **Type de segment** | **Source** | **Taille minimum** | **Disponible dans** |
| --- | --- | --- | --- |
| Visiteurs du site | Tag Google | 100 utilisateurs | Tous |
| Utilisateurs d'app | Firebase/SDK | 100 utilisateurs | Tous |
| Customer Match | Upload CRM | 100 matchés | Tous |
| Utilisateurs YouTube | Liaison de chaîne | 100 utilisateurs | Tous |

**Options de visiteurs du site :**

| **Segment** | **Définition** | **Idéal pour** |
| --- | --- | --- |
| Tous les visiteurs | Toute personne ayant visité le site | Remarketing large |
| Vues produit | A consulté des produits/pages spécifiques | Remarketing produit |
| Abandons panier | A ajouté au panier sans convertir | Récupération haute intention |
| Convertisseurs | A complété une conversion | Upsell, cross-sell, exclusion |
| Par durée | A visité dans les X derniers jours | Ciblage par récence |

**Options de durée d'adhésion :** 1, 7, 14, 30, 60, 90, 180, 360, 540 jours

**Options d'utilisateurs YouTube :**

| **Segment** | **Définition** |
| --- | --- |
| A vu une vidéo | A regardé n'importe quelle vidéo de votre chaîne |
| A vu des vidéos spécifiques | A regardé des vidéos sélectionnées |
| A vu comme annonce | A vu votre vidéo comme annonce |
| Abonné | Abonnés de la chaîne |
| A visité la chaîne | A visité la page de la chaîne |
| A liké une vidéo | A liké n'importe quelle vidéo |
| A ajouté à une playlist | A ajouté une vidéo à une playlist |
| A partagé une vidéo | A partagé n'importe quelle vidéo |

### Segments personnalisés

| **Type d'input** | **Ce que ça cible** | **Syntaxe** |
| --- | --- | --- |
| **Termes de recherche** | Utilisateurs ayant recherché ces termes sur Google | Keywords en texte brut |
| **URL** | Utilisateurs naviguant sur des sites similaires | URL complètes (https://) |
| **Applications** | Utilisateurs utilisant des apps similaires | Noms d'apps ou package IDs |

> Les segments personnalisés ciblent des utilisateurs, pas des placements : ajouter des URL de concurrents cible des utilisateurs qui visitent des sites similaires - ça ne place PAS vos annonces sur ces sites.

**Limites des segments personnalisés :**

| **Élément** | **Limite** |
| --- | --- |
| Keywords par segment | 50 recommandés (500 max) |
| URL par segment | 10-15 recommandées |
| Apps par segment | 10 recommandées |

### Segments prédéfinis Google

**In-Market :**

| **Spécification** | **Détails** |
| --- | --- |
| Définition | Utilisateurs recherchant/comparant activement des produits dans la catégorie |
| Sélection | Catégories et sous-catégories prédéfinies Google |
| Niveau d'intention | Moyen-élevé (considération active d'achat) |

**Événements de vie :**

| **Événement** | **Durée typique** |
| --- | --- |
| Création d'entreprise | Semaines autour de l'événement |
| Diplôme universitaire | Mois autour de la remise des diplômes |
| Changement d'emploi | Semaines autour du changement |
| Mariage | Mois autour du mariage |
| Déménagement | Semaines autour du déménagement |
| Achat immobilier | Mois autour de l'achat |
| Retraite | Mois autour de la retraite |

**Affinité :**

| **Spécification** | **Détails** |
| --- | --- |
| Définition | Intérêts long terme, habitudes, style de vie |
| Sélection | Catégories prédéfinies Google |
| Niveau d'intention | Faible (alignement de style de vie, pas d'intention d'achat) |

**Données démographiques détaillées :**

| **Dimension** | **Options** |
| --- | --- |
| Statut parental | Parents (par âge de l'enfant), Non parents |
| Statut matrimonial | Célibataire, En couple, Marié(e) |
| Éducation | Étudiant actuel, Bac, Licence, Diplôme supérieur |
| Propriété | Locataires, Propriétaires |
| Emploi | Taille de l'employeur, Secteur |

**Données démographiques standard :**

| **Dimension** | **Options** |
| --- | --- |
| Âge | 18-24, 25-34, 35-44, 45-54, 55-64, 65+, Inconnu |
| Genre | Homme, Femme, Inconnu |
| Revenu du foyer | Top 10%, 11-20%, 21-30%, 31-40%, 41-50%, 50% inférieur, Inconnu |

---

## Segments similaires (Demand Gen uniquement)

Les segments similaires modélisent de nouveaux utilisateurs en se basant sur les caractéristiques de votre audience source.

### Sources de seed disponibles

| **Type de seed** | **Taille minimum** | **Qualité** |
| --- | --- | --- |
| Customer Match | 1 000 utilisateurs matchés | Meilleur |
| Convertisseurs du site | 1 000 utilisateurs | Meilleur |
| Visiteurs du site | 1 000 utilisateurs | Bon |
| Engagés YouTube | 1 000 utilisateurs | Bon |
| Utilisateurs d'app | 1 000 utilisateurs | Bon |

### Paramètres de couverture des segments similaires

Les paramètres de couverture fonctionnent comme des suggestions, pas des contraintes strictes. L'IA de Google peut diffuser des annonces à des utilisateurs qualifiés au-delà du seuil sélectionné quand elle prédit une forte performance.

| **Paramètre** | **Force du signal** | **Similarité** |
| --- | --- | --- |
| **Étroit** | Signal de similarité le plus fort | La plus élevée |
| **Équilibré** | Signal de similarité moyen | Moyenne |
| **Large** | Signal de similarité le plus faible | La plus basse |

> **La qualité du seed est le levier de contrôle principal :** le paramètre de couverture influence comment Google pondère la similarité, mais une liste de seed de haute qualité (convertisseurs, clients à forte LTV) compte plus que le seuil sélectionné. Les annonceurs peuvent [désactiver le mode suggestion](https://support.google.com/google-ads/contact/lookalike_suggestion_opt_out) et revenir à un ciblage strict.

> Stratégie de configuration des segments similaires. Voir [Audience Targeting Guidelines](<Audiences - Paramètres recommandés de ciblage.md>) pour les sources de seed recommandées, paramètres de couverture et quand ajuster.

---

## Ciblage de contenu (Display & Video uniquement)

Le ciblage de contenu contrôle OÙ les annonces apparaissent (contexte), pas QUI les voit.

> Demand Gen ne supporte PAS le ciblage de contenu : il ne supporte que le ciblage d'audience.

### Types de ciblage de contenu

| **Type** | **Ce que ça fait** | **Disponible dans** |
| --- | --- | --- |
| **Emplacements** | Sites spécifiques, apps, chaînes/vidéos YouTube | Display, Video |
| **Thèmes** | Catégories de contenu prédéfinies Google | Display, Video |
| **Keywords** | Pages/vidéos contenant ces termes | Display, Video |

### Emplacements

| **Type d'emplacement** | **Format** | **Exemple** |
| --- | --- | --- |
| Sites web | URL | `example.com` |
| Chaînes YouTube | URL de chaîne | `youtube.com/c/nomdelachaine` |
| Vidéos YouTube | URL de vidéo | `youtube.com/watch?v=xxxxx` |
| Apps | Nom ou ID d'app | `com.example.app` |

**Limites d'emplacements :**

| **Élément** | **Limite** |
| --- | --- |
| Emplacements par ad group | 10 000 max |
| Recommandé par ad group | 20-50 pour le contrôle |

### Thèmes

| **Spécification** | **Détails** |
| --- | --- |
| Sélection | Taxonomie thématique prédéfinie Google |
| Granularité | Catégorie > Sous-catégorie > Sous-sous-catégorie |
| Comportement | Les annonces apparaissent sur les pages que Google classe dans le thème |

### Keywords (contenu)

| **Spécification** | **Détails** |
| --- | --- |
| Comportement | Les annonces apparaissent sur les pages contenant ces keywords |
| Type de match | Match contextuel large (pas exact) |
| Limite | 20 keywords par ad group recommandés |

> Les keywords de contenu sont différents des keywords Search : ces keywords matchent le contenu de la page, pas les requêtes utilisateur. Les résultats peuvent être imprévisibles.

---

## Combiner audiences et contenu

### Display & Video : logique ET vs OU

| **Combinaison** | **Logique** | **Effet** |
| --- | --- | --- |
| Plusieurs audiences | OU | Atteint les utilisateurs dans N'IMPORTE quelle audience sélectionnée |
| Plusieurs cibles de contenu | OU | Diffuse sur N'IMPORTE quel contenu matchant |
| Audience + Contenu | ET | Atteint les utilisateurs sélectionnés SUR le contenu sélectionné |

**Exemple :**

| **Ciblage** | **Résultat** |
| --- | --- |
| In-market: Meubles + Affinité: Décoration | Utilisateurs dans l'une ou l'autre audience |
| Thème: Maison & Jardin + Thème: Design d'intérieur | Contenu matchant l'un ou l'autre thème |
| In-market: Meubles + Thème: Maison & Jardin | Personnes intéressées par les meubles SUR du contenu maison |

> La logique ET restreint la couverture : combiner audience + contenu réduit significativement les impressions éligibles.

> Quand superposer. Voir [Audience Targeting Guidelines](<Audiences - Paramètres recommandés de ciblage.md>) pour les décisions de superposition de ciblage de contenu.

---

## Modes de ciblage

### Ciblage vs observation

| Mode | Comportement | Quand l'utiliser |
| --- | --- | --- |
| **Ciblage** | Restreint la diffusion aux segments sélectionnés uniquement | Vous voulez UNIQUEMENT ces utilisateurs |
| **Observation** | Diffuse à tous les utilisateurs ; rapporte par segment | Vous voulez des données sans restreindre |

> Quand utiliser chaque mode. Voir [Audience Targeting Guidelines](<Audiences - Paramètres recommandés de ciblage.md>) pour le mode de ciblage recommandé par scénario, critères de graduation et conditions d'exception.

### Configurer le mode de ciblage

| Type de campagne | Par défaut | Modifiable |
| --- | --- | --- |
| Display | Ciblage | Oui |
| Video | Ciblage | Oui |
| Demand Gen | Ciblage | Non (Ciblage uniquement) |

---

## Ciblage optimisé et expansion d'audience

Google propose deux fonctionnalités distinctes qui étendent au-delà de vos audiences sélectionnées. Elles servent des objectifs différents et s'appliquent à des types de campagne différents.

> Ce sont deux fonctionnalités différentes : le ciblage optimisé et l'expansion d'audience ne sont pas la même chose. Ils ont des mécanismes différents, une disponibilité différente et des approches de mesure différentes. Ne les confondez pas.

### Comparaison des fonctionnalités

| Fonctionnalité | Ce qu'elle fait | Disponible dans | Comment elle trouve les utilisateurs |
| --- | --- | --- | --- |
| **Ciblage optimisé** | Trouve des utilisateurs les plus susceptibles de convertir au-delà de vos sélections | Display, Video (objectifs Ventes/Leads/Trafic), Demand Gen | Analyse les données de conversion en temps réel : ce que les convertisseurs récents ont recherché, consulté et avec quoi ils ont interagi |
| **Expansion d'audience** | Trouve plus d'utilisateurs similaires à votre audience sélectionnée | Video (objectifs Considération/Notoriété) UNIQUEMENT | Modélise des utilisateurs qui ressemblent à votre audience sélectionnée pour augmenter la couverture |

### Ciblage optimisé : fonctionnement

Le ciblage optimisé regarde au-delà de vos segments d'audience manuellement sélectionnés pour trouver des utilisateurs supplémentaires susceptibles de convertir. Il utilise vos audiences sélectionnées, le contenu de la Landing Page et vos assets créatifs comme signaux de départ, puis analyse les patterns de conversion pour étendre la couverture.

| Paramètre | Effet |
| --- | --- |
| **ACTIVÉ** | Google s'étend au-delà de vos audiences sélectionnées pour trouver des convertisseurs probables supplémentaires. Vos sélections d'audience restent le point de départ, mais Google diffuse des annonces à des utilisateurs en dehors de ces sélections quand il prédit une forte performance. Les exclusions et restrictions d'emplacement sont toujours respectées. |
| **DÉSACTIVÉ** | La diffusion est restreinte à vos audiences sélectionnées uniquement |

**Ce que le ciblage optimisé utilise comme signaux (par type de campagne) :**

| Type de campagne | Inputs de signaux utilisés | Non utilisés comme signaux |
| --- | --- | --- |
| Display | Segments d'audience, segments personnalisés, Customer Match, keywords, thèmes | N/A |
| Video (Ventes/Leads/Trafic) | Segments d'audience, segments personnalisés, Customer Match | Emplacements (les annonces ne sont diffusées que sur les emplacements fournis) |
| Demand Gen | Segments d'audience, segments personnalisés, Customer Match | N/A |

> Comportement démographique Demand Gen : quand le ciblage optimisé est ACTIVÉ dans Demand Gen, Google peut diffuser des annonces à des utilisateurs au-delà de vos critères démographiques sélectionnés (âge, genre, revenu du foyer, statut parental). Vous pouvez restreindre cela à l'âge et au genre uniquement dans les paramètres de l'ad group, mais cela peut limiter la performance.

### Expansion d'audience : fonctionnement (Video uniquement)

L'expansion d'audience est disponible exclusivement pour les campagnes Video avec les objectifs "Considération de produit et marque" ou "Notoriété et couverture". Elle trouve plus d'utilisateurs qui ressemblent à votre audience sélectionnée pour augmenter les impressions, vues et couverture tout en maintenant vos enchères CPM et CPV.

| Paramètre | Effet |
| --- | --- |
| **ACTIVÉ** | Google trouve des utilisateurs similaires à votre audience sélectionnée pour une couverture plus large |
| **DÉSACTIVÉ** | La diffusion est restreinte à vos audiences sélectionnées uniquement |

> Quand activer ou désactiver. Voir [Audience Targeting Guidelines](<Audiences - Paramètres recommandés de ciblage.md>) pour les paramètres recommandés par type de campagne et objectif.

### Mesurer l'impact de l'expansion

Naviguer vers Audiences, keywords et contenu > Audiences > Afficher le tableau. Cherchez la ligne "Total : Expansion et ciblage optimisé", qui sépare la performance de vos audiences sélectionnées de la couverture étendue.

| Métrique | Interprétation |
| --- | --- |
| CPA étendu < 1,5x CPA ciblé | L'expansion fonctionne : garder ACTIVÉ |
| CPA étendu 1,5-2x CPA ciblé | Surveiller : évaluer sur 14+ jours avant de décider |
| CPA étendu > 2x CPA ciblé | L'expansion est inefficace : DÉSACTIVER |
| L'expansion génère < 5% des conversions | Risque faible, impact faible : garder ACTIVÉ pour du volume supplémentaire |
| L'expansion génère > 50% des conversions | Les sélections d'audience sont peut-être trop étroites : revoir vos segments |

> Le ciblage optimisé peut changer significativement qui voit vos annonces : quand il est activé, Google peut dépenser la majorité de votre budget en dehors de vos audiences sélectionnées. Vérifiez régulièrement la répartition de l'expansion, pas seulement les métriques au niveau campagne.

---

## Exclusions

Les exclusions retirent des utilisateurs de l'éligibilité. Elles s'appliquent indépendamment des autres ciblages.

### Types d'exclusion

| Type | Ce que ça exclut | Disponible dans |
| --- | --- | --- |
| Segments d'audience | Utilisateurs dans les segments sélectionnés | Tous |
| Emplacements | Sites/apps/chaînes spécifiques | Display, Video |
| Thèmes | Catégories de contenu | Display, Video |
| Keywords | Pages avec ces termes | Display, Video |

### Patterns d'exclusion courants

| Objectif | Exclure |
| --- | --- |
| Nouveaux clients uniquement | Clients existants (Customer Match) |
| Éviter le gaspillage post-achat | Convertisseurs récents (7-30 jours) |
| Sécurité de la marque | Catégories de contenu sensibles |
| Qualité des emplacements | Emplacements de faible qualité, sites MFA |
| Séparation concurrents | Contenu concurrent (emplacements/thèmes) |

### Configuration des exclusions

| Niveau | Portée | Utiliser pour |
| --- | --- | --- |
| Campagne | Tous les ad groups de la campagne | Exclusions larges |
| Ad group | Un seul ad group | Exclusions spécifiques |
| Compte | Toutes les campagnes | Exclusions universelles (sécurité de la marque) |

---

## Données démographiques comme levier de ciblage

Par défaut, tous les groupes démographiques sont ciblés. Les données démographiques fonctionnent comme une couche appliquée par-dessus les segments d'audience pour affiner la performance, pas comme un ciblage autonome.

### Données démographiques disponibles par type de campagne

| Donnée démographique | Display | Video | Demand Gen | Support d'exclusion |
| --- | --- | --- | --- | --- |
| Âge (18-24, 25-34, 35-44, 45-54, 55-64, 65+, Inconnu) | Oui | Oui | Oui | Oui |
| Genre (Homme, Femme, Inconnu) | Oui | Oui | Oui | Oui |
| Statut parental (Parent, Non parent, Inconnu) | Oui | Oui | Oui | Oui |
| Revenu du foyer (Top 10% à 50% inférieur, Inconnu) | Oui (certains pays) | Oui (certains pays) | Oui (certains pays) | Oui |

### Actions démographiques par type d'enchère

| Type d'enchère | Action disponible | Emplacement dans l'interface |
| --- | --- | --- |
| CPC manuel | Ajustements d'enchère par groupe démographique | Audiences, keywords et contenu > Données démographiques > Modifier l'ajustement |
| Stratégies d'enchères intelligentes (CPA cible/ROAS cible) | Exclure les groupes démographiques sous-performants | Audiences, keywords et contenu > Données démographiques > Exclure |

> Le segment "Inconnu" est significatif : 15-30% des impressions tombent typiquement dans les données démographiques "Inconnu". Exclure "Inconnu" retire une grande portion de l'inventaire disponible.

> Stratégie d'optimisation démographique. Voir [Audience Targeting Guidelines](<Audiences - Paramètres recommandés de ciblage.md>) pour le timing recommandé, les seuils et conditions d'exception pour les exclusions démographiques.

### Où trouver les données démographiques

Naviguer vers Audiences, keywords et contenu > Données démographiques. Sélectionner l'onglet de dimension démographique (Âge, Genre, Statut parental, Revenu du foyer).

---

## Segments combinés

Les segments combinés permettent de construire des audiences précises avec une logique ET/OU/NON à travers plusieurs types de segments.

### Fonctionnement des segments combinés

| Opérateur | Effet | Exemple |
| --- | --- | --- |
| **ET** | Doit correspondre à TOUTES les conditions | In-market pour CRM ET Segment personnalisé (keywords CRM) |
| **OU** | Doit correspondre à N'IMPORTE quelle condition | Visiteurs du site OU Customer Match |
| **NON** | Exclure les utilisateurs correspondants | In-market pour CRM ET NON clients existants |

### Créer des segments combinés

| Étape | Action |
| --- | --- |
| Emplacement | Outils & Paramètres > Gestionnaire d'audience > Segments combinés |
| Composants | Tout type de segment peut être combiné : vos données, personnalisés, in-market, affinité, événements de vie, données démographiques détaillées |
| Limite | Plus de conditions = audience plus petite. Chaque condition ET réduit significativement les utilisateurs éligibles |
| Test | Tester dans un ad group séparé avant de scaler pour éviter d'engager du budget sur une audience non testée |

### Disponibilité par type de campagne

| Type de campagne | Segments combinés supportés |
| --- | --- |
| Display | Oui |
| Video | Oui |
| Demand Gen | Oui |

> Google recommande de combiner segments similaires et segments personnalisés pour Demand Gen : ajoutez votre segment similaire dans le même ad group qu'un segment personnalisé haute intention ciblant les utilisateurs qui ont recherché votre marque ou catégorie. Utilisez 10-15 de vos termes de recherche les plus convertisseurs pour construire le segment personnalisé.

> Patterns de segments combinés : voir [Audience Segment Catalog](<Audiences - Segments d'audience.md>) pour les configurations de segments combinés réutilisables par secteur.

---

## Audience insights

Les audience insights révèlent quels segments d'audience génèrent des conversions et à quel point ils sont surreprésentés parmi vos convertisseurs par rapport à la population générale.

### Types d'insights

| Type | Ce que ça montre | Utiliser pour |
| --- | --- | --- |
| **Insights d'audience persona** | Nom du segment, type, part de conversions, index | Découvrir quels segments non ciblés génèrent des conversions |
| **Insights d'audience par asset** | Quels segments répondent le plus à des assets spécifiques | Aligner la création avec les préférences d'audience |

### Où trouver les audience insights

| Emplacement | Ce que vous voyez |
| --- | --- |
| Google Ads > Page Insights > Cartes d'audience insight | Résumé des segments d'audience les plus performants |
| Tableau extensible dans la page Insights | Insights persona complets avec détails des segments |
| Gestionnaire d'audience > Insights de vos données | Performance de vos segments d'audience first-party à travers les campagnes |

### Métrique clé : Index

La colonne "Index" montre à quel point un segment d'audience est surreprésenté parmi vos convertisseurs par rapport au reste de la population ciblée. Un index de 5x signifie que ce segment a 5 fois plus de chances de convertir que la moyenne.

| Index | Interprétation | Action |
| --- | --- | --- |
| > 3x | Fortement surreprésenté : signal de conversion fort | Ajouter comme segment de ciblage s'il n'est pas déjà ciblé |
| 1,5-3x | Modérément surreprésenté | Évaluer pour ajout, surtout si volume de conversions élevé |
| < 1,5x | Approximativement proportionnel à la population générale | Priorité basse pour ajout au ciblage |

### Disponibilité par type de campagne

| Type de campagne | Insights persona | Insights asset |
| --- | --- | --- |
| Display | Oui (beta) | Oui |
| Video | Oui (campagnes action) | Oui |
| Demand Gen | Oui | Oui |
| Search | Oui | Oui |
| Performance Max | Oui | Oui |
| Shopping | Oui | N/A |

> Les audience insights sont un outil de découverte, pas un outil de reporting : utilisez les insights pour identifier les segments que vous ne ciblez PAS et qui génèrent des conversions. Puis ajoutez ces segments au ciblage ou combinez-les avec des segments existants pour une précision accrue.

---

## Référence des paramètres par type de campagne

> Paramètres recommandés par type de campagne. Voir [Audience Targeting Guidelines](<Audiences - Paramètres recommandés de ciblage.md>) pour le mode de ciblage recommandé, paramètres d'expansion, caps de fréquence et paramètres d'exclusion de contenu par type de campagne et objectif.

### Paramètres disponibles par type de campagne

| Paramètre | Display | Video | Demand Gen |
|---------|---------|-------|------------|
| Mode de ciblage | Ciblage / Observation | Ciblage / Observation | Ciblage uniquement |
| Ciblage optimisé | Activé / Désactivé | Activé / Désactivé (objectifs Ventes/Leads/Trafic uniquement) | Activé / Désactivé |
| Expansion d'audience | N/A | Activé / Désactivé (objectifs Considération/Notoriété uniquement) | N/A |
| Exclusions de contenu | Exclusions de catégories, type d'inventaire | Type d'inventaire, labels | N/A |
| Cap de fréquence | Impressions par utilisateur par jour/semaine | Impressions par utilisateur par jour/semaine | Disponibilité limitée |
| Données démographiques | Contrôle total | Contrôle total | Contrôle total (l'expansion peut outrepasser quand le ciblage optimisé est ACTIVÉ) |

---

## Guidelines de taille d'audience

| Type d'audience | Minimum | Recommandé | Notes |
| --- | --- | --- | --- |
| Remarketing | 100 | 1 000+ | Plus c'est grand = plus de diffusion |
| Customer Match | 100 matchés | 1 000+ matchés | Le taux de match affecte la taille réelle |
| Seed pour segments similaires | 1 000 | 5 000+ | Un seed plus grand = une meilleure modélisation |
| Segment personnalisé | Pas de minimum | 10-15 keywords/URL | La qualité prime sur la quantité |

---

## Erreurs courantes

| Erreur | Problème | Solution |
| --- | --- | --- |
| Audiences trop étroites | Pas de diffusion | Élargir ou retirer des couches |
| Trop de couches (logique ET) | Couverture restreinte | Utiliser OU ou retirer des couches |
| Ciblage optimisé ACTIVÉ pendant les tests | Impossible d'attribuer aux segments | DÉSACTIVER pour des données propres |
| Pas d'exclusions | Gaspille du budget sur les convertisseurs | Exclure les convertisseurs récents |
| URL de segments personnalisés = emplacements | Confusion sur l'endroit où les annonces sont diffusées | Personnalisé = utilisateurs ; Emplacements = sites |
| Segments similaires larges en premier | Signal de similarité le plus faible dès le départ | Commencer par Équilibré, prioriser la qualité du seed |
| Ignorer le mode Observation | Manque d'insights | Utiliser pour tester avant de s'engager |
| Confondre ciblage optimisé et expansion d'audience | Fonctionnalités différentes appliquées incorrectement | Ciblage optimisé pour les objectifs de performance ; expansion d'audience pour Video considération/notoriété uniquement |
| Ne jamais revoir les données démographiques | Opportunités d'optimisation manquées | Revoir la performance démographique mensuellement, exclure les sous-performants |
| Exclure les données démographiques "Inconnu" sans données | Perte de 15-30% de l'inventaire | N'exclure qu'après 30+ jours de performance constamment médiocre |
| Ignorer les audience insights | Segments performants non ciblés manqués | Vérifier la page Insights mensuellement pour les segments à index élevé |
| Ne jamais tester les segments combinés | Utilisation du ciblage simple par segment uniquement | Combiner les segments performants avec la logique ET pour plus de précision |

---

## Documents liés

| Document | Relation |
| --- | --- |
| [Audience Targeting Guidelines](<Audiences - Paramètres recommandés de ciblage.md>) | Paramètres recommandés, décisions d'expansion, optimisation démographique |
| [Audience Strategy Mental Model](<Audiences - Stratégie d'audience.md>) | Cadre conceptuel (signaux vs ciblage) |
| [Audience Signals Reference](<Audiences - Signaux d'audience.md>) | Types de signaux PMax et configuration |
| [Audience Segments Reference](<Audiences - Segments d'audience.md>) | Liste complète des noms de segments prédéfinis Google |
| [Audience Segment Catalog](<Audiences - Segments d'audience.md>) | Configurations de segments incluant segments combinés et patterns démographiques |
| [SOP - Optimiser la performance des audiences](<Audiences - Optimiser la performance des audiences.md>) | Exécution structurée d'optimisation d'audience |
| [SOP - Lancer une campagne Display](<../display/Display - Lancer une campagne.md>) | Exécution campagne Display |
| [SOP - Lancer une campagne Video](<../video/Video - Lancer une campagne.md>) | Exécution campagne Video |
| [SOP - Lancer une campagne Demand Gen](<../demand-gen/Demand Gen - Lancer une campagne.md>) | Exécution campagne Demand Gen |
