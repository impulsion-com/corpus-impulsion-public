# Mots-clés à exclure

> **Plateforme :** Google Ads
> **Catégorie :** Search
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Documente les mécanismes des types de correspondance de mots-clés à exclure, les niveaux d'application, la structure des listes et les règles de formatage dans les campagnes Search Google Ads.

---

## Ce que couvre cette fiche / Ce qu'elle ne couvre PAS

**Cette fiche :**

- Documente comment chaque match type négatif fonctionne (broad, phrase, exact)
- Explique les différences critiques entre le comportement des types de correspondance négatifs et positifs
- Couvre les niveaux d'application (compte, campagne, ad group, listes)
- Définit les règles de formatage, les limites de caractères et les saisies invalides

**Cette fiche ne couvre PAS :**

- Fournir des listes ou patterns de catégories de mots-clés à exclure (Voir : [Negative Keyword Catalog](<Search - Catalogue de mots-clés à exclure.md>))
- Donner des instructions étape par étape pour construire ou gérer les négatifs (Voir : [SOP - Construire la structure de campagne Search](<Search - Construire la structure de campagne Search.md>), Phase 3.3 pour la configuration initiale, ou [SOP - Analyser les rapports de termes de recherche](<Search - Analyser les rapports de termes de recherche.md>) et [SOP - Executer une analyse N-gram](<Search - Exécuter une analyse N-gram.md>) pour la gestion continue)
- Expliquer quand ou pourquoi exclure des termes (c'est de la stratégie, pas de la mécanique)
- Couvrir les types de correspondance positifs (Voir : [Match Type Reference](<Search - Types de correspondance.md>))

---

## Tableau aide-mémoire

| **Match type négatif** | **Syntaxe** | **Bloque la requête quand** | **Correspondance des variantes proches** |
| --- | --- | --- | --- |
| **1. Negative requête large** | `chaussures course` | Tous les termes négatifs apparaissent dans la requête (n'importe quel ordre) | Non |
| **2. Negative expression exacte** | `"chaussures course"` | Les termes négatifs apparaissent dans la requête dans l'ordre exact | Non |
| **3. Negative mot-clé exact** | `[chaussures course]` | La requête correspond exactement aux termes négatifs (mêmes mots, même ordre, pas de mots supplémentaires) | Non |

> 💡 **Différence critique avec les keywords positifs :** Les mots-clés à exclure ne font PAS de correspondance sur les variantes proches. Vous devez ajouter le singulier, le pluriel, les fautes d'orthographe et les variantes d'accent manuellement.

---

## 1. Negative requête large

### Ce que ça fait

Empêche votre annonce de s'afficher quand la requête contient TOUS les mots du negative keyword, dans n'importe quel ordre. Si la requête ne contient que certains des mots, l'annonce peut quand même s'afficher.

### Syntaxe

`chaussures course`

Pas de caractères spéciaux. Saisissez le keyword sans crochets ni guillemets. C'est le match type par défaut quand on ajoute des négatifs.

### Exemples de comportement

| **Negative keyword** | **Requête de recherche** | **Annonce bloquée ?** | **Pourquoi** |
| --- | --- | --- | --- |
| `chaussures course` | chaussures course bleues | Oui | Les deux mots "chaussures" et "course" présents |
| `chaussures course` | course en chaussures dehors | Oui | Les deux mots présents (l'ordre n'a pas d'importance) |
| `chaussures course` | chaussure de course | Non | "chaussure" n'est pas "chaussures" (pas de variantes proches) |
| `chaussures course` | course en plein air | Non | Un seul des deux mots présent |
| `chaussures course` | meilleures chaussures course pieds plats | Oui | Les deux mots présents parmi d'autres mots |

### Règles

| **Règle** | **Détails** |
| --- | --- |
| **Type par défaut** | Quand vous ajoutez un négatif sans crochets ni guillemets, c'est du requête large |
| **Tous les mots requis** | Chaque mot du négatif doit apparaître dans la requête pour déclencher un blocage |
| **L'ordre n'a pas d'importance** | Les mots peuvent apparaître dans n'importe quelle position dans la requête |
| **Mots supplémentaires autorisés** | La requête peut contenir des mots supplémentaires au-delà des termes négatifs |
| **Pas de variantes proches** | "chaussure" et "chaussures" sont traités comme des mots différents |
| **Pas de synonymes** | "course" ne correspond pas à "jogging" |

### Quand utiliser

| **Cas d'usage** | **Exemple de négatif** | **Ce qu'il bloque** |
| --- | --- | --- |
| Termes généraux non pertinents | `gratuit` | Toute requête contenant "gratuit" |
| Concepts non pertinents multi-mots | `formation emploi` | Requêtes contenant à la fois "formation" et "emploi" |
| Exclusions au niveau catégorie | `gros grossiste` | Requêtes contenant à la fois "gros" et "grossiste" |

---

## 2. Negative expression exacte

### Ce que ça fait

Empêche votre annonce de s'afficher quand la requête contient les termes du negative keyword dans le même ordre exact. La requête peut avoir des mots supplémentaires avant ou après la phrase, mais la séquence de la phrase doit apparaître intacte.

### Syntaxe

`"chaussures course"`

Encadrez le keyword de guillemets doubles.

### Exemples de comportement

| **Negative keyword** | **Requête de recherche** | **Annonce bloquée ?** | **Pourquoi** |
| --- | --- | --- | --- |
| `"chaussures course"` | chaussures course bleues | Oui | "chaussures course" apparaît dans l'ordre exact |
| `"chaussures course"` | chaussures course pour femme | Oui | La phrase apparaît au début avec des mots après |
| `"chaussures course"` | course chaussures | Non | Les mots sont dans l'ordre inversé |
| `"chaussures course"` | chaussure de course | Non | "chaussure" n'est pas "chaussures" (pas de variantes proches) |
| `"chaussures course"` | chaussures trail course | Non | Un mot supplémentaire casse la séquence de la phrase |

### Règles

| **Règle** | **Détails** |
| --- | --- |
| **L'ordre compte** | Les mots doivent apparaître dans la séquence exacte spécifiée |
| **Mots supplémentaires avant/après** | La requête peut avoir des mots avant ou après la phrase |
| **Pas de mots entre** | Insérer un mot entre les termes de la phrase casse la correspondance |
| **Pas de variantes proches** | Doit correspondre aux formes exactes des mots |

### Quand utiliser

| **Cas d'usage** | **Exemple de négatif** | **Ce qu'il bloque** |
| --- | --- | --- |
| Exclusions de N-grams | `"comment faire"` | Requêtes informationnelles commençant par "comment faire" |
| Concepts multi-mots spécifiques | `"essai gratuit"` | Requêtes contenant "essai gratuit" dans cet ordre |
| Marque concurrente + produit | `"crm concurrent"` | Requêtes mentionnant cette expression de produit concurrent |

> 💡 **Expression exacte est idéal pour les N-grams :** Quand vous identifiez un N-gram peu performant dans votre rapport sur les termes de recherche, le expression exacte négatif bloque cette séquence exacte de mots sans sur-exclure les requêtes où ces mots apparaissent séparément.

---

## 3. Negative mot-clé exact

### Ce que ça fait

Empêche votre annonce de s'afficher uniquement quand la requête correspond exactement au negative keyword : mêmes mots, même ordre, pas de mots supplémentaires.

### Syntaxe

`[chaussures course]`

Encadrez le keyword de crochets.

### Exemples de comportement

| **Negative keyword** | **Requête de recherche** | **Annonce bloquée ?** | **Pourquoi** |
| --- | --- | --- | --- |
| `[chaussures course]` | chaussures course | Oui | Correspondance exacte |
| `[chaussures course]` | chaussures course bleues | Non | Mot supplémentaire "bleues" présent |
| `[chaussures course]` | chaussures course pour homme | Non | Mots supplémentaires après la phrase |
| `[chaussures course]` | chaussure de course | Non | "chaussure" n'est pas "chaussures" (pas de variantes proches) |
| `[chaussures course]` | course chaussures | Non | Ordre des mots différent |

### Règles

| **Règle** | **Détails** |
| --- | --- |
| **Mots exacts uniquement** | La requête ne doit contenir que les mots du négatif, rien de plus |
| **Ordre exact** | Les mots doivent apparaître dans la séquence spécifiée |
| **Pas de variantes proches** | Doit être identique lettre par lettre |
| **Exclusion la plus étroite** | Bloque le moins de requêtes des trois types de correspondance |

### Quand utiliser

| **Cas d'usage** | **Exemple de négatif** | **Ce qu'il bloque** |
| --- | --- | --- |
| Requête non pertinente à fort volume unique | `[nom concurrent]` | Uniquement cette requête exacte |
| Empêcher la cannibalisation entre campagnes | `[logiciel crm]` | Uniquement la requête exacte, autorise les variations longue traîne |
| Exclusion précise quand broad/phrase sur-exclut | `[chaussures course]` | Uniquement la requête exacte de deux mots |

---

## Variantes proches : la différence critique

Les keywords positifs (normaux) font automatiquement correspondance sur les variantes proches : fautes d'orthographe, singulier/pluriel, accents, abréviations. Les mots-clés à exclure ne le font PAS.

### Ce que ça signifie en pratique

| **Negative keyword ajouté** | **Déclenche encore les annonces (NON bloqué)** | **Action requise** |
| --- | --- | --- |
| `chaussures course` | chaussure course | Ajouter `chaussure course` séparément |
| `chaussures course` | chausures course | Ajouter `chausures course` séparément |
| `cafe` | café | Ajouter `café` séparément |
| `couleur` | color | Ajouter `color` séparément |
| `reparation clim` | réparation climatisation | Ajouter `réparation climatisation` séparément |

### Variantes manuelles à ajouter

Pour chaque negative keyword, envisagez d'ajouter :

- Formes singulier et pluriel (`chaussure` / `chaussures`)
- Fautes d'orthographe courantes (`recever` / `recevoir`)
- Variantes de marques d'accent (`cafe` / `café`)
- Variantes d'orthographe (`couleur` / `color`, `grey` / `gray`)
- Abréviations et formes développées (`clim` / `climatisation`)

> ⚠️ **C'est l'erreur de negative keyword la plus courante :** Ajouter un négatif et supposer que les variantes proches sont couvertes cause une dépense gaspillée continue sur les requêtes variantes.

---

## Niveaux d'application

Les mots-clés à exclure peuvent être appliqués à quatre niveaux. Les niveaux inférieurs ne supplantent les niveaux supérieurs qu'en portée, pas en priorité : tous les négatifs applicables sont évalués.

| **Niveau** | **Portée** | **Utiliser pour** |
| --- | --- | --- |
| **Niveau compte** | Toutes les campagnes Search et Shopping du compte | Exclusions universelles qui s'appliquent partout |
| **Niveau campagne** | Tous les ad groups au sein de cette campagne | Exclusions spécifiques à la campagne |
| **Niveau ad group** | Uniquement cet ad group | Routage du trafic entre ad groups au sein d'une campagne |
| **Liste de mots-clés à exclure** | Toutes les campagnes liées à la liste | Exclusions partagées entre plusieurs campagnes |

### Négatifs au niveau compte

- S'appliquent à toutes les campagnes Search et Shopping
- Ajoutés via la section mots-clés à exclure du niveau compte dans Google Ads
- À utiliser pour les termes qui ne sont jamais pertinents pour aucune campagne (ex. "emploi", "salaire", "carrière" pour un vendeur de produits)

### Négatifs au niveau campagne

- S'appliquent à tous les ad groups au sein de la campagne
- À utiliser pour les termes non pertinents pour le thème de cette campagne mais possiblement pertinents ailleurs
- Exemple : Ajouter "gratuit" comme négatif de campagne dans une campagne de produit payant tout en le gardant disponible pour une campagne freemium

### Négatifs au niveau ad group

- S'appliquent uniquement au sein de l'ad group spécifique
- Usage principal : router le trafic entre ad groups dans la même campagne
- Exemple : Dans une campagne avec les ad groups "chaussures course" et "chaussures trail", ajoutez `trail` comme négatif dans l'ad group "chaussures course"

> ⚠️ **Campagnes DSA :** Appliquez les listes de mots-clés à exclure aux campagnes DSA pour empêcher les annonces sur des requêtes non pertinentes. N'ajoutez PAS de négatifs au niveau ad group DSA : laissez l'Classement de l'annonce déterminer quel ad group sert.

---

## Listes de mots-clés à exclure

### Structure

Les listes de mots-clés à exclure sont des listes partagées qui peuvent être liées à plusieurs campagnes simultanément. Les changements apportés à la liste se propagent à toutes les campagnes liées.

| **Propriété** | **Détails** |
| --- | --- |
| **Keywords maximum par liste** | 5 000 |
| **Listes maximum par compte** | 20 |
| **Liaison** | Une liste peut être liée à plusieurs campagnes |
| **Types de correspondance** | Chaque keyword dans la liste a son propre match type |
| **Propagation** | Les changements à la liste s'appliquent à toutes les campagnes liées immédiatement |

### Structure de listes recommandée

Un minimum de trois listes par compte :

| **Liste** | **Objectif** | **Lier à** |
| --- | --- | --- |
| **Keywords non pertinents** | Termes jamais pertinents pour le business (emploi, carrière, DIY, gratuit) | Toutes les campagnes |
| **Keywords/N-grams peu performants** | Termes avec une mauvaise performance prouvée depuis les rapports de termes de recherche | Toutes les campagnes (ou sélectivement) |
| **Keywords de marque** | Vos propres termes de marque | Campagnes non-marque uniquement |

Listes supplémentaires selon les besoins :

| **Liste** | **Objectif** | **Lier à** |
| --- | --- | --- |
| **Noms de marques concurrentes** | Termes concurrents (si campagnes non-concurrentielles) | Campagnes non-concurrentielles |
| **Exclusions de catégorie produit** | Catégories de produits spécifiques à exclure de certaines campagnes | Campagnes où cette catégorie n'est pas pertinente |

---

## Règles de formatage et limites

### Formatage valide

| **Règle** | **Détails** |
| --- | --- |
| **Casse** | Pas sensible à la casse. Utilisez les minuscules pour la cohérence |
| **Longueur maximum du keyword** | 80 caractères |
| **Mots maximum** | 10 mots par negative keyword |
| **Espaces** | Espaces standard entre les mots |
| **Chiffres** | Autorisés |
| **Points** | Autorisés (ex. `u.s.a.`) |
| **Esperluettes** | Autorisées (ex. `b&b`) |
| **Marques d'accent** | Traitées comme des caractères distincts (`cafe` et `café` sont des keywords différents) |

### Caractères invalides

Ces caractères sont ignorés ou causent des erreurs. Ne les incluez pas :

| **Caractère** | **Résultat** |
| --- | --- |
| `!` (point d'exclamation) | Ignoré |
| `@` (arobase) | Ignoré |
| `%` (pourcentage) | Ignoré |
| `?` (point d'interrogation) | Ignoré |
| `*` (astérisque) | Ignoré |
| `,` (virgule) dans le keyword même | Traité comme séparateur de keywords |
| Espaces en début/fin | Supprimés automatiquement |

> 💡 **Minuscules uniquement :** Google Ads n'est pas sensible à la casse pour les mots-clés à exclure, mais utiliser les minuscules de manière cohérente sur tous les négatifs évite la confusion lors des audits et exports.

---

## Guide de décision : quel match type négatif ?

```
Qu'excluez-vous ?
|
+-- Un mot ou concept non pertinent unique ?
|   +-- Utilisez le negative requête large (ex. gratuit)
|
+-- Une séquence de mots spécifique (N-gram) ?
|   +-- Utilisez le negative expression exacte (ex. "comment faire")
|
+-- Une seule requête exacte ?
|   +-- Utilisez le negative mot-clé exact (ex. [nom concurrent])
|
+-- Pas sûr ?
    +-- Commencez avec le negative requête large (exclusion la plus large)
    +-- Surveillez les termes de recherche pour la sur-exclusion
    +-- Resserrez vers phrase ou exact si nécessaire
```

### Comparaison des types de correspondance

| **Facteur** | **Negative broad** | **Negative phrase** | **Negative exact** |
| --- | --- | --- | --- |
| **Portée d'exclusion** | La plus large | Moyenne | La plus étroite |
| **Risque de sur-exclusion** | Le plus élevé | Moyen | Le plus bas |
| **L'ordre des mots compte** | Non | Oui | Oui |
| **Mots supplémentaires dans la requête** | Autorisés | Autorisés (avant/après) | Non autorisés |
| **Type par défaut** | Oui | Non | Non |

---

## Erreurs courantes

| **Erreur** | **Problème** | **Solution** |
| --- | --- | --- |
| **Supposer que les variantes proches sont couvertes** | Singulier/pluriel, fautes d'orthographe déclenchent encore les annonces | Ajoutez toutes les formes variantes manuellement |
| **Utiliser des listes par défaut pré-construites** | Peuvent exclure des termes pertinents pour votre business | Construisez les listes à partir de vos propres données de termes de recherche |
| **Ajouter des négatifs uniquement en requête large** | Peut sur-exclure des requêtes pertinentes contenant ces mots | Utilisez expression exacte pour les N-grams, mot-clé exact pour des requêtes spécifiques |
| **Oublier d'appliquer les listes aux campagnes DSA** | Les campagnes DSA font correspondance sur le contenu des pages, pas les keywords, elles ont aussi besoin de protection négative | Liez les listes de mots-clés à exclure pertinentes à toutes les campagnes DSA |
| **Ajouter des négatifs au niveau ad group DSA** | Empêche l'Classement de l'annonce de router vers le meilleur ad group | Appliquez les négatifs au niveau campagne DSA ou via les listes uniquement |
| **Ne pas ajouter les variantes de marques d'accent** | Les versions accentuées et non accentuées sont des keywords différents | Ajoutez les deux `cafe` et `café` |
| **Inclure des caractères spéciaux** | Les caractères sont ignorés ou causent des erreurs | Utilisez uniquement des lettres, chiffres, espaces, points et esperluettes |
| **Dépasser les limites des listes** | Maximum 5 000 par liste | Auditez et consolidez les listes périodiquement |

---

## Documents liés

| **Document** | **Relation** |
| --- | --- |
| [Negative Keyword Catalog](<Search - Catalogue de mots-clés à exclure.md>) | Patterns de catégories et exemples de mots-clés à exclure par secteur |
| [SOP - Construire la structure de campagne Search](<Search - Construire la structure de campagne Search.md>) | Création et liaison initiale des listes de mots-clés à exclure (Phase 3.3) |
| [SOP - Analyser les rapports de termes de recherche](<Search - Analyser les rapports de termes de recherche.md>) | Identification continue des termes non pertinents et négation |
| [SOP - Executer une analyse N-gram](<Search - Exécuter une analyse N-gram.md>) | Négation basée sur la performance via les données N-gram agrégées |
| [Match Type Reference](<Search - Types de correspondance.md>) | Mécanismes des types de correspondance positifs (contraste avec le comportement négatif) |
| [Search Term Report Reference](<Search - Rapport sur les termes de recherche.md>) | Données sources pour identifier les termes à exclure |
| [SOP - Promouvoir les termes de recherche en mots-cles](<Search - Promouvoir les termes de recherche en keywords.md>) | Workflow connexe pour la gestion des termes de recherche |
