# Signaux d'audience

> **Plateforme :** Google Ads
> **Catégorie :** Audiences
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Documente les types de signaux, la syntaxe des search themes et les paramètres d'exclusion pour les campagnes Performance Max.

---

## Ce que couvre cette fiche / Ce qu'elle ne couvre PAS

**Cette fiche :**

- Liste les types de signaux disponibles dans Performance Max
- Documente le comportement et la syntaxe des search themes
- Fournit les options de configuration des exclusions

**Cette fiche ne couvre PAS :**

- L'explication conceptuelle signaux vs ciblage (Voir : [Audience Strategy Mental Model](<Audiences - Stratégie d'audience.md>))
- La configuration pas à pas de la campagne (Voir : [SOP - Configurer les signaux d'audience](<Audiences - Configurer les signaux d'audience.md>))
- Le ciblage Display, Video ou Demand Gen (Voir : [Audience Targeting Reference](<Audiences - Signaux d'audience.md>))

---

## Aide-mémoire : types de signaux

| **Type de signal** | **Source** | **Niveau de qualité** | **Niveau de configuration** |
| --- | --- | --- | --- |
| Customer Match | Upload CRM | Meilleur | Asset group |
| Convertisseurs du site | Tag Google | Meilleur | Asset group |

> **La qualité du signal détermine la vitesse d'apprentissage :** des signaux de meilleure qualité donnent à l'IA de Google un profil plus précis de votre client idéal, ce qui signifie moins d'impressions gaspillées pendant la phase d'apprentissage. Des signaux de faible qualité (affinité large, démographies seules) forcent l'algorithme à explorer largement avant de converger sur des audiences rentables. La différence est mesurable : les campagnes alimentées par des signaux de Tier 1-2 sortent typiquement de l'apprentissage plus vite et atteignent un CPA/ROAS stable plus tôt que celles reposant uniquement sur des signaux Tier 4-5.

| Visiteurs du site | Tag Google | Élevé | Asset group |
| Engagés YouTube | Liaison de chaîne | Élevé | Asset group |
| Utilisateurs d'app | Firebase/SDK | Élevé | Asset group |
| Segments personnalisés (recherche) | Keywords | Modéré | Asset group |
| Segments personnalisés (URL) | Sites concurrents | Modéré | Asset group |
| Search themes | Keywords | Modéré | Asset group |
| In-market | Prédéfini Google | Plus faible | Asset group |
| Événements de vie | Prédéfini Google | Plus faible | Asset group |
| Affinité | Prédéfini Google | Le plus faible | Asset group |
| Données démographiques | Âge/genre/revenu | Le plus faible | Asset group |

---

## Signaux first-party

### Customer Match

| **Spécification** | **Détails** |
| --- | --- |
| **Taille minimum de liste** | 100 utilisateurs matchés |
| **Types de données acceptés** | Email, téléphone, adresse, ID appareil mobile |
| **Méthodes d'upload** | Upload CSV, API, intégration CRM |
| **Plage de taux de match** | 25-75% typique |
| **Recommandation de rafraîchissement** | Hebdomadaire (minimum mensuel) |

**Optimisation du taux de match :**

| **Données fournies** | **Gain attendu sur le taux de match** |
| --- | --- |
| Email uniquement | Base de référence |
| Email + Téléphone | +15-20% |
| Email + Téléphone + Adresse | +25-30% |

### Données site/App

| **Signal** | **Taille minimum** | **Options de durée d'adhésion** |
| --- | --- | --- |
| Tous les visiteurs | 100 | 30, 60, 90, 180, 540 jours |
| Convertisseurs | 100 | 30, 60, 90, 180, 540 jours |
| Abandons panier | 100 | 7, 14, 30 jours |
| Vues produit | 100 | 14, 30, 60 jours |
| Utilisateurs d'app | 100 | 30, 60, 90, 180 jours |

### Signaux YouTube

| **Signal** | **Prérequis** |
| --- | --- |
| Viewers de vidéos | Chaîne liée à Google Ads |
| Abonnés | Chaîne liée à Google Ads |
| Visiteurs de la chaîne | Chaîne liée à Google Ads |

---

## Segments personnalisés

### Types d'inputs

| **Input** | **Ce que ça cible** | **Syntaxe** |
| --- | --- | --- |
| **Termes de recherche** | Utilisateurs ayant recherché ces termes | Keywords en texte brut |
| **URL** | Utilisateurs naviguant sur des sites similaires | URL complètes (https://) |
| **Applications** | Utilisateurs utilisant des apps similaires | Noms d'apps ou package IDs |

> Les URL et applications ciblent des utilisateurs au comportement similaire : elles ne placent PAS vos annonces sur ces sites/apps.

### Bonnes pratiques des segments personnalisés

| **À faire** | **À ne pas faire** |
| --- | --- |
| Utiliser 10-15 termes de recherche qui convertissent bien | Ajouter des centaines de keywords |
| Inclure des URL de concurrents | S'attendre à ce que les annonces apparaissent sur ces sites |
| Se concentrer sur les termes transactionnels | Utiliser des termes informationnels larges |

---

## Search themes

Les search themes partagent vos connaissances business uniques avec Performance Max sur **tous les canaux**, pas seulement Search. Ils fonctionnent à la fois comme signaux d'audience ET emplacements Search.

### Search themes vs segments personnalisés

| Aspect | Segments personnalisés (keywords de recherche) | Search themes |
| --- | --- | --- |
| **Inventaire** | Non-Search uniquement | Tous les canaux (Search + non-Search) |
| **Comportement utilisateur** | A recherché dans le passé | Recherche actuellement OU a recherché dans le passé |
| **Fonction** | Signal d'audience uniquement | Signal d'audience + emplacement Search |
| **Limite** | Pas de limite stricte | 25 par asset group |

> **Les search themes font tout ce que les segments personnalisés font dans Performance Max, et plus encore :** utilisez les search themes pour partager des insights business uniques qui fonctionnent sur tous les canaux.

### Comportement des search themes

| Aspect | Détails |
| --- | --- |
| **Priorisation** | Même chose que les keywords phrase/requête large en Search |
| **En concurrence avec** | Vos keywords de campagne Search (quand identiques à la requête) |
| **Matching** | Termes saisis + termes liés |

---

## Règles de priorité des enchères (inventaire Search)

Quand les search themes PMax sont en concurrence avec les keywords de campagne Search pour la même requête :

### Ordre de priorité

| Priorité | Condition | Gagnant |
| --- | --- | --- |
| 1 - Plus haute | Keyword mot-clé exact **identique** à la requête | Campagne Search (toujours) |
| 2 | Keyword phrase/broad OU search theme **identique** à la requête | Celui qui est identique gagne ; si les deux sont identiques, l'Classement de l'annonce décide |
| 3 | Rien d'identique à la requête | L'IA sélectionne l'ad group le plus pertinent |
| 4 - Plus basse | Pertinence égale | L'Classement de l'annonce le plus élevé gagne |

> **"Identique" inclut les termes corrigés orthographiquement** (ex : "crm sofware" vers "crm software") **mais PAS les pluriels ou synonymes** (ex : "software" n'est pas "softwares" n'est pas "tools").

### Scénarios de cannibalisation

| Requête | Keyword Search | Search theme | Gagnant | Pourquoi |
| --- | --- | --- | --- | --- |
| "crm software" | [crm software] (exact) | "crm software" | **Search** | L'mot-clé exact gagne toujours |
| "crm software" | "crm" (phrase) | "crm software" | **PMax** | Le theme est identique à la requête ; le keyword phrase ne l'est pas |
| "crm software" | "crm software" (phrase) | "crm software" | **Classement de l'annonce décide** | Les deux sont identiques à la requête |
| "best crm for small business" | "crm software" (broad) | "small business crm" | **Pertinence IA** | Aucun n'est identique ; l'IA choisit le plus pertinent |

### Exceptions aux règles de priorité

| Exception | Effet |
| --- | --- |
| **Campagne limitée par le budget** | Le keyword de priorité plus haute peut ne pas se déclencher si la campagne atteint son plafond budgétaire : l'option de priorité inférieure est servie à la place |
| **Keyword à faible volume de recherche** | Le keyword est temporairement inactif : l'option de priorité inférieure peut se déclencher |
| **Ciblage non satisfait** | La localisation, l'audience ou un autre ciblage exclut l'option de priorité plus haute |
| **Annonces/Landing Pages refusées** | L'ad group est inéligible : il est ignoré |

### Critère de décision pour les search themes

Utilisez les search themes SI :
- Aucune campagne Search dédiée ne couvre les mêmes requêtes
- PMax est votre canal de recherche principal ou unique
- Vous étendez délibérément vers de nouvelles catégories de recherche non couvertes par les campagnes Search
- Vous acceptez que PMax soit en concurrence pour l'inventaire Search et en avez tenu compte dans votre reporting

Évitez les search themes SI :
- Des campagnes Search actives couvrent déjà les mêmes requêtes ou des requêtes similaires
- Protéger le volume de trafic et le taux d'impressions des campagnes Search est une priorité
- Vous observez déjà une cannibalisation des impressions Search par PMax
- Vos campagnes Search sont bien optimisées et vous ne voulez pas que PMax entre en concurrence pour ces enchères

### Stratégie search themes

| Objectif | Recommandation |
| --- | --- |
| **Protéger le trafic Search** | Ne pas ajouter de search themes, OU n'ajouter que des themes pour des requêtes non couvertes par Search |
| **Tester PMax sur Search** | Ajouter des themes avec prudence : surveiller le taux d'impressions Search pour détecter la cannibalisation |
| **Accepter le chevauchement** | Ajouter des themes : passer les keywords Search importants en mot-clé exact |
| **Contrôle Search maximum** | Pas de search themes + mot-clé exact sur les keywords critiques |

---

## Segments prédéfinis Google

### In-Market

| **Spécification** | **Détails** |
| --- | --- |
| **Ce que ça signifie** | Utilisateurs recherchant activement dans votre catégorie |
| **Sélection** | Choisir parmi les catégories prédéfinies Google |
| **Granularité** | Catégorie > Sous-catégorie disponible |
| **Qualité du signal** | Plus faible (large, partagé entre annonceurs) |

### Événements de vie

| **Événements disponibles** | **Fenêtre temporelle** |
| --- | --- |
| Création d'entreprise | Active |
| Diplôme universitaire | Active |
| Changement d'emploi | Active |
| Mariage | Active |
| Déménagement | Active |
| Achat immobilier | Active |
| Retraite | Active |

### Affinité

| **Spécification** | **Détails** |
| --- | --- |
| **Ce que ça signifie** | Intérêts et style de vie long terme |
| **Sélection** | Choisir parmi les catégories prédéfinies Google |
| **Qualité du signal** | La plus faible (alignement large de style de vie) |

### Données démographiques

| **Dimension** | **Options** |
| --- | --- |
| Âge | 18-24, 25-34, 35-44, 45-54, 55-64, 65+ |
| Genre | Homme, Femme, Inconnu |
| Revenu du foyer | Top 10%, 11-20%, 21-30%, 31-40%, 41-50%, 50% inférieur |
| Statut parental | Parent, Non parent, Inconnu |

---

## Exclusions (contrôle réel)

Les exclusions sont le seul élément PMax qui restreint la diffusion comme le ciblage traditionnel.

### Types d'exclusion

| **Type** | **Niveau** | **Effet** |
| --- | --- | --- |
| Liste Customer Match | Campagne | Les utilisateurs de la liste ne verront PAS les annonces |
| Segment d'audience | Campagne | Les utilisateurs du segment ne verront PAS les annonces |
| Keywords de marque | Campagne | Les requêtes ne déclencheront PAS les annonces |

### Patterns d'exclusion courants

| **Objectif** | **Exclure** |
| --- | --- |
| Éviter le gaspillage post-achat | Convertisseurs récents (7-30 jours) |
| Acquisition de nouveaux clients | Tous les clients existants (Customer Match) |
| Se concentrer sur la qualité | Clients à faible valeur |
| Protéger le Search de marque | Keywords de marque (niveau compte/campagne) |

### Emplacement de configuration des exclusions

| **Type d'exclusion** | **Où configurer** |
| --- | --- |
| Exclusions d'acquisition client | Paramètres de campagne > Acquisition client |
| Exclusions de segments | Paramètres de campagne > Autres paramètres |
| Exclusions de keywords de marque | Paramètres de campagne > Exclusions de marque |

---

## Sélection de signaux par objectif

> Pour des conseils de sélection de signaux par objectif de campagne (efficacité, croissance, acquisition de nouveaux clients) : voir [Audience Signal Catalog](<Audiences - Signaux d'audience.md>), qui possède la logique de sélection des signaux. Cette fiche documente uniquement les types de signaux et leurs spécifications.

---

## Reporting & visibilité

### Ce que vous pouvez voir

| **Rapport** | **Emplacement** | **Ce qu'il montre** |
| --- | --- | --- |
| Search themes | Onglet Insights | Requêtes ayant déclenché les annonces |
| Insights d'audience | Onglet Insights | Caractéristiques des convertisseurs (limité) |
| Nouveaux vs retour | Reporting campagne | Mix d'acquisition client |
| Reporting d'emplacement | Où les annonces ont été diffusées | Canaux qui génèrent des résultats |

### Ce que vous ne pouvez PAS voir

| **Non disponible** |
| --- |
| Performance par segment d'audience spécifique |
| Quels signaux ont généré quelles conversions |
| Détails démographiques par segment |

---

## Erreurs courantes

| **Erreur** | **Problème** | **Solution** |
| --- | --- | --- |
| Croire que les signaux sont du ciblage | Frustration quand l'IA sert largement | Accepter : les signaux sont des indices |
| N'ajouter que des audiences froides | Signal d'apprentissage faible | Prioriser les données first-party |
| Ajouter trop de signaux de faible qualité | Dilue la qualité du signal | Moins de signaux, mais de meilleure qualité |
| Pas d'exclusions | Gaspille du budget sur les clients existants | Exclure les convertisseurs + clients |
| Copier les keywords Search comme search themes | PMax cannibalise Search | Ne pas dupliquer, ou passer en mot-clé exact en Search |

---

## Documents liés

| **Document** | **Relation** |
| --- | --- |
| [Audience Strategy Mental Model](<Audiences - Stratégie d'audience.md>) | Cadre conceptuel (signaux vs ciblage) |
| [Audience Signal Catalog](<Audiences - Signaux d'audience.md>) | Logique de sélection des signaux par objectif |
| [Audience Targeting Reference](<Audiences - Signaux d'audience.md>) | Référence segments Display, Video, Demand Gen |
| [Audience Segments Reference](<Audiences - Segments d'audience.md>) | Liste complète des noms de segments prédéfinis Google |
| [PMax Structure Mental Model (Lead Gen/SaaS)](<../pmax/Pmax - Structure PMax (Lead Gen-SaaS).md>) | Structure PMax Lead Gen/SaaS |
| [PMax Structure Mental Model (Ecommerce)](<../pmax/Pmax - Structure PMax (E-commerce).md>) | Structure PMax E-commerce |
| [SOP - Launch PMax for Lead Gen/SaaS](<../pmax/Pmax - Lancer une campagne PMax pour Lead Gen-SaaS.md>) | Exécution (configuration Lead Gen/SaaS) |
| [SOP - Lancer une campagne PMax feed-only](<../pmax/Pmax - Lancer une campagne PMax Feed-Only.md>) | Exécution (configuration Feed-Only) |
| [SOP - Lancer une campagne PMax complete e-commerce](<../pmax/Pmax - Lancer une campagne PMax Full Assets e-commerce.md>) | Exécution (configuration Full Assets) |
