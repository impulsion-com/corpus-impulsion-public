# Paramètres de campagne Search

> **Plateforme :** Google Ads
> **Catégorie :** Search
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Ce document définit les paramètres recommandés au niveau de la campagne pour les campagnes Search Google Ads. Elle encadre la création et l'audit de campagnes en établissant les configurations par défaut, la justification et les conditions d'exception pour chaque paramètre.

---

## Ce que couvre / ne couvre pas ce document

**Ce document :**

- Définit les valeurs recommandées pour chaque paramètre au niveau campagne
- Explique la justification derrière chaque recommandation
- Établit quand les exceptions s'appliquent
- Couvre la sélection de réseau, le ciblage géographique, la langue, le planning d'annonces, la rotation des annonces, les paramètres DSA, les dates et les options d'URL

**Ce document ne couvre PAS :**

- Les instructions pas à pas de création de campagne (ça relève d'une SOP)
- La structure de campagne ou l'organisation des groupes d'annonces (Voir : [Search Campaign Structure Mental Model](<Search - Structure de campagne Search.md>))
- La sélection ou la configuration de la stratégie d'enchères (Voir : [Bidding Configuration Guidelines](<../encheres/Enchères - Configuration des enchères.md>))
- Les paramètres au niveau du groupe d'annonces ou de l'annonce

---

## Référence rapide : paramètres recommandés

| Paramètre | Valeur recommandée | Justification |
|---------|-------------------|-----------|
| Réseau Search | **ACTIVÉ** | Réseau de diffusion principal pour les campagnes Search |
| Partenaires du Réseau de Recherche | **Tester** | Surveiller par segment, désactiver si le CPA/ROAS sous-performe |
| Réseau Display | **DÉSACTIVÉ** | Crée une campagne Display cachée, gaspille le budget Search |
| Ciblage géographique | **Présence ou intérêt** (par défaut) | Commencer ici, restreindre à "Présence uniquement" selon les données du rapport géographique |
| Exclusion géographique | **Présence uniquement** | Exclut les personnes physiquement dans les zones exclues |
| Langue | **Correspondre à la langue des annonces** | Cible les utilisateurs dont l'interface Google correspond à la langue de vos annonces |
| Planning d'annonces | **Toutes les heures, tous les jours** | Laisser Stratégies d'enchères intelligentes optimiser les performances par heure |
| Rotation des annonces | **Optimiser** | Google diffuse plus souvent les meilleures combinaisons d'annonces |
| DSA | **DÉSACTIVÉ sauf si vous utilisez des groupes d'annonces DSA** | Activer uniquement quand vous utilisez intentionnellement DSA |
| Date de fin | **Pas de date de fin** (permanent) | Définir des dates de fin uniquement pour les campagnes saisonnières ou promotionnelles |
| Modèle de suivi | **Définir au niveau campagne** | Paramètres UTM cohérents sur toutes les annonces de la campagne |

---

## Sélection de réseau

### Réseau Search

| Paramètre | Recommandation | Justification |
|---------|---------------|-----------|
| **Réseau Search** | **ACTIVÉ** | C'est le mécanisme de diffusion principal des campagnes Search. Toujours activé. |

### Partenaires du Réseau de Recherche

| Paramètre | Recommandation | Justification |
|---------|---------------|-----------|
| **Partenaires du Réseau de Recherche** | **Tester** | Partenaires du Réseau de Recherche diffuse des annonces sur des moteurs de recherche non-Google et des sites partenaires. Activer initialement pour tester la portée incrémentale. Surveiller les performances en segmentant les rapports par réseau. Désactiver si le CPA/ROAS est inacceptable. |

**Protocole de test :**

- **Activer Partenaires du Réseau de Recherche initialement** pour tester le potentiel de portée incrémentale.
- **Segmenter les rapports par réseau** pour évaluer séparément les performances Partenaires du Réseau de Recherche de celles de Google Search.
- **Point de décision :** Si le CPA/ROAS sur Partenaires du Réseau de Recherche est acceptable par rapport à Google Search, garder activé. Sinon, désactiver.
- **Important :** Les performances de Partenaires du Réseau de Recherche ne peuvent pas être optimisées indépendamment. Soit vous acceptez la performance agrégée, soit vous désactivez.

### Réseau Display

| Paramètre | Recommandation | Justification |
|---------|---------------|-----------|
| **Réseau Display** | **DÉSACTIVÉ** | Activer le réseau Display sur une campagne Search crée une campagne Display cachée qui partage votre budget Search. Cela détourne silencieusement les dépenses vers des emplacements Display avec des signaux d'intention fondamentalement différents. |

> Le réseau Display sur les campagnes Search est l'erreur de configuration la plus budgétivore. Google l'active par défaut. Vérifiez qu'il est DÉSACTIVÉ sur chaque nouvelle campagne Search. Si vous voulez une portée Display, créez une campagne Display dédiée avec son propre budget et ciblage.

---

## Ciblage géographique

### Paramètre de ciblage

| Paramètre | Recommandation | Justification |
|---------|---------------|-----------|
| **Méthode de ciblage** | **Présence ou intérêt : Personnes situées dans vos zones ciblées, qui s'y rendent régulièrement ou qui y ont montré de l'intérêt** | Option par défaut de Google. Inclut les personnes physiquement dans votre zone cible et celles qui ont démontré un intérêt. Commencer ici, puis restreindre selon les données du rapport géographique. |

**Quand passer à "Présence uniquement" :** Si les rapports géographiques montrent des dépenses significatives ou de mauvaises performances de la part d'utilisateurs en dehors de votre zone cible physique, passez à "Présence : Personnes situées dans vos zones ciblées ou qui s'y rendent régulièrement". Cela restreint la diffusion aux utilisateurs physiquement présents.

**Exemple :** cibler les Pays-Bas avec "Présence ou intérêt" peut afficher des annonces à quelqu'un en Australie qui a recherché "hotels Amsterdam". Si ce trafic convertit mal, passez à "Présence uniquement" pour restreindre aux utilisateurs physiquement aux Pays-Bas.

### Paramètre d'exclusion

| Paramètre | Recommandation | Justification |
|---------|---------------|-----------|
| **Méthode d'exclusion** | **Présence : Personnes situées dans vos zones exclues** | Exclut les utilisateurs physiquement dans les zones exclues. Cohérent avec la logique de votre ciblage d'inclusion. |

### Recommandations de granularité

| Niveau | Quand utiliser |
|-------|-------------|
| Pays | Campagnes nationales, ciblage large |
| Région/État | Entreprises régionales, performance variable par région |
| Ville/Zone métro | Entreprises locales, offres spécifiques à une ville |
| Rayon | Commerce physique, entreprises de zone de service |

> Commencer large, affiner selon les données. Débutez avec un ciblage au niveau pays. Utilisez les rapports géographiques pour identifier les régions sous-performantes. Excluez ou ajustez à partir de là plutôt que de commencer avec un ciblage trop étroit.

---

## Paramètres de langue

### Configuration recommandée

| Paramètre | Recommandation | Justification |
|---------|---------------|-----------|
| **Langue** | **Définir sur la(les) langue(s) dans laquelle vos annonces sont rédigées** | Google fait correspondre les annonces en fonction du paramètre de langue de l'interface Google de l'utilisateur, pas de la langue de sa requête de recherche. |

**Comment fonctionne le ciblage linguistique :** Google détermine l'éligibilité linguistique en fonction de la langue de l'interface Google de l'utilisateur, des paramètres du navigateur et du comportement de navigation récent. Les utilisateurs multilingues peuvent voir des annonces dans une langue différente de celle dans laquelle ils ont cherché si Google est convaincu que l'utilisateur comprend la langue de l'annonce. Par exemple, un utilisateur qui comprend l'anglais peut chercher en espagnol "zapatos azules" et quand même recevoir une annonce en anglais correspondant au mot clé "blue shoes".

**Exemple pratique :** Si vous avez une entreprise en Norvège avec des annonces ciblées en norvégien, vos annonces peuvent apparaître pour les clients en Norvège qui ont défini le norvégien comme langue d'interface. Vos annonces peuvent aussi apparaître pour les utilisateurs norvégiens qui comprennent le norvégien mais cherchent en anglais.

### Marchés multilingues

Pour les marchés avec plusieurs langues (Belgique, Suisse, Canada) :

- Créer des campagnes séparées par langue
- Chaque campagne reçoit des textes d'annonces et Landing Pages adaptés à la langue
- Cela permet un suivi précis des performances par segment linguistique
- Les stratégies d'enchères peuvent optimiser indépendamment par audience linguistique

> N'ajoutez pas plusieurs langues dans une campagne avec des annonces en une seule langue. Les utilisateurs voyant des annonces dans une langue qui ne correspond pas à leurs attentes ne cliqueront pas, ou rebondiront. Des campagnes séparées par langue est l'approche correcte.

---

## Planning d'annonces

### Recommandation par défaut

| Paramètre | Recommandation | Justification |
|---------|---------------|-----------|
| **Planning d'annonces** | **Toutes les heures, tous les jours** | Stratégies d'enchères intelligentes optimise déjà les enchères par heure et jour de la semaine en utilisant les données de performance historiques. Le planning manuel restreint l'algorithme sans apporter de valeur. |

### Conditions d'exception

| Type d'entreprise | Planning recommandé | Justification |
|--------------|---------------------|-----------|
| Lead gen par téléphone (appels comme conversion principale) | Heures ouvrables uniquement | Personne pour répondre aux appels en dehors des heures d'ouverture |
| B2B avec des cycles de vente longs | Jours ouvrés, heures de bureau | Les décideurs sont actifs pendant les heures de travail, le trafic du week-end convertit mal |
| Promotions saisonnières avec des fenêtres spécifiques | Planning personnalisé correspondant à la promotion | Empêche les dépenses en dehors de la fenêtre promotionnelle |

### Ajustements d'enchères sur les segments de planning

Si vous utilisez le CPC manuel, vous pouvez appliquer des ajustements d'enchères à des plages horaires spécifiques. Sous Stratégies d'enchères intelligentes, les ajustements d'enchères sur le planning sont ignorés (l'algorithme gère l'optimisation temporelle avec ses propres signaux).

---

## Rotation des annonces

### Configuration recommandée

| Paramètre | Recommandation | Justification |
|---------|---------------|-----------|
| **Rotation des annonces** | **Optimiser** (par défaut) | Google priorise la diffusion des meilleures combinaisons d'annonces basées sur des signaux comme la requête, l'appareil, la localisation et l'heure. Cela maximise la performance. |

### Condition d'exception

| Paramètre | Quand utiliser | Justification |
|---------|-------------|-----------|
| **Ne pas optimiser** | Uniquement pendant un test A/B formel via Google Ads Experiments | La rotation égale assure que chaque variante reçoit une exposition égale pendant un test contrôlé. Une fois le test terminé, revenir à Optimiser. |

> Stratégies d'enchères intelligentes remplace "Ne pas optimiser". Quand vous utilisez une stratégie Stratégies d'enchères intelligentes (CPA cible, ROAS cible, Max Conversions, Max Conversion Value), Google priorisera quand même les meilleures combinaisons d'annonces quel que soit le paramètre de rotation. "Ne pas optimiser" ne s'applique vraiment qu'en CPC manuel.

> "Ne pas optimiser" est un outil de test, pas un paramètre permanent. Faire tourner "Ne pas optimiser" en dehors d'une expérience formelle signifie que Google affiche les annonces sous-performantes aussi souvent que les bonnes, gaspillant du budget indéfiniment.

---

## Paramètres DSA

### Recommandation par défaut

| Paramètre | Recommandation | Justification |
|---------|---------------|-----------|
| **Paramètres DSA** | **DÉSACTIVÉ sauf si vous avez des groupes d'annonces DSA dans la campagne** | Les paramètres DSA au niveau campagne sont un prérequis pour les groupes d'annonces DSA. Activer uniquement quand vous utilisez intentionnellement DSA. |

### Quand activer

Activez les paramètres DSA au niveau campagne si :

1. Vous créez des groupes d'annonces DSA dans cette campagne pour l'expansion de la couverture de requêtes
2. Vous avez un flux de pages préparé pour le ciblage par label personnalisé (recommandé par rapport à "toutes les pages web")
3. Le contenu de votre site est bien structuré et régulièrement mis à jour

### Configuration quand activé

| Paramètre | Valeur |
|---------|-------|
| Domaine | Le domaine de votre site |
| Langue | Correspondre à la langue de la campagne |
| Flux de pages | Lier votre flux de pages pour le ciblage par label personnalisé |
| Source de ciblage | "Utiliser l'index Google de mon site web" ou "Utiliser uniquement les URLs de mon flux de pages" |

> Voir : [DSA Targeting Options Reference](<Search - Options de ciblage DSA.md>) pour les détails des types de ciblage et la configuration du flux de pages.

---

## Dates de début et de fin

### Configuration recommandée

| Type de campagne | Date de début | Date de fin |
|--------------|------------|----------|
| Permanente (always-on) | Définir à la date de lancement | Pas de date de fin |
| Promotion saisonnière | Début de la promotion | Fin de la promotion |
| Offre à durée limitée | Début de l'offre | Fin de l'offre |
| Test/expérimentale | Début du test | Fin du test |

> Oublier de définir une date de fin sur les campagnes promotionnelles gaspille du budget. Si vous créez une campagne pour une promotion spécifique, définissez toujours la date de fin à la création de la campagne. Ne comptez pas sur le fait de penser à la mettre en pause manuellement.

---

## Options d'URL

### Modèle de suivi

| Paramètre | Recommandation | Justification |
|---------|---------------|-----------|
| **Modèle de suivi** | **Définir au niveau campagne** | Assure des paramètres UTM cohérents sur toutes les annonces de la campagne sans avoir à les définir par annonce ou groupe d'annonces |

**Format typique du modèle de suivi :**

`{lpurl}?utm_source=google&utm_medium=cpc&utm_campaign={_campaign}&utm_content={creative}&utm_term={keyword}`

### Suffixe d'URL finale

| Paramètre | Recommandation | Justification |
|---------|---------------|-----------|
| **Suffixe d'URL finale** | **Définir si des paramètres de tracking (suivi des conversions/évènements) supplémentaires sont nécessaires** | Ajoute des paramètres à l'URL finale pour le tracking tiers ou les besoins analytiques |

Définissez le modèle de suivi au niveau le plus élevé applicable (compte ou campagne) et remplacez aux niveaux inférieurs uniquement quand des exigences de tracking spécifiques diffèrent.

---

## Erreurs courantes

| Erreur | Impact | Correction |
|---------|--------|-----|
| Laisser le réseau Display ACTIVÉ | Budget silencieusement détourné vers des emplacements Display | Vérifier DÉSACTIVÉ sur chaque nouvelle campagne |
| Ne pas surveiller les rapports géographiques | Dépenses gaspillées sur des utilisateurs hors zone cible sans détection | Vérifier régulièrement les rapports géographiques, passer à "Présence uniquement" si le trafic non-local sous-performe |
| Définir un planning manuel sur des campagnes Stratégies d'enchères intelligentes | Les ajustements d'enchères sur le planning sont ignorés par l'algorithme | Utiliser toutes les heures/tous les jours, laisser Stratégies d'enchères intelligentes optimiser |
| Plusieurs langues dans une campagne | Décalage langue annonce/Landing Page, mauvais CTR, taux de rebond élevé | Campagnes séparées par langue |
| Pas de date de fin sur les campagnes promotionnelles | Budget gaspillé après la fin de la promotion | Définir la date de fin à la création de la campagne |
| Faire tourner "Ne pas optimiser" en permanence | Les annonces sous-performantes reçoivent une diffusion égale indéfiniment | Revenir à Optimiser après la fin du test |
| Partenaires du Réseau de Recherche ACTIVÉ sans surveillance | Dépenses non contrôlées sur du trafic partenaire potentiellement de moindre qualité | Segmenter les rapports par réseau, désactiver si le CPA/ROAS sous-performe |

---

## Vérification de la configuration

Après avoir configuré les paramètres de campagne, vérifiez :

| Vérification | État attendu |
|-------|---------------|
| Réseau Search | ACTIVÉ |
| Partenaires du Réseau de Recherche | Test (surveiller par segment, désactiver si sous-performance) |
| Réseau Display | DÉSACTIVÉ |
| Méthode de ciblage géographique | Présence ou intérêt (par défaut), ou Présence uniquement si les rapports géographiques montrent du gaspillage |
| Méthode d'exclusion géographique | Présence : Personnes dans vos zones exclues |
| Zones cibles | Définies sur les bonnes zones géographiques |
| Langue | Correspond à la langue des annonces |
| Planning d'annonces | Toutes les heures, tous les jours (sauf exception applicable) |
| Rotation des annonces | Optimiser (sauf pendant une expérience) |
| Paramètres DSA | DÉSACTIVÉ (sauf si vous utilisez des groupes d'annonces DSA) |
| Date de fin | Pas de date de fin pour les campagnes permanentes, définie pour les promotions |
| Modèle de suivi | Défini au niveau campagne avec les bons paramètres UTM |

---

## Documents liés

- [Search Campaign Structure Mental Model](<Search - Structure de campagne Search.md>) : comment organiser les campagnes, groupes d'annonces et mots clés
- [Modern Search Campaign Mental Model](<Search - Campagne Search moderne.md>) : l'approche moderne de l'architecture des campagnes Search
- [Bidding Configuration Guidelines](<../encheres/Enchères - Configuration des enchères.md>) : stratégie d'enchères et configuration du portefeuille
- [DSA Targeting Options Reference](<Search - Options de ciblage DSA.md>) : types de ciblage DSA et configuration du flux de pages
- [AI Max for Search Reference](<Search - AI Max - mécanismes techniques.md>) : spécifications et paramètres de la fonctionnalité AI Max
- [AI Max for Search Mental Model](<Search - Activer AI Max.md>) : cadre de décision pour savoir quand activer AI Max
