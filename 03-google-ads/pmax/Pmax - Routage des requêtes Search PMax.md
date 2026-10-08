# Routage des requêtes Search PMax

> **Plateforme :** Google Ads
> **Catégorie :** Pmax
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Documente comment Google décide quelle campagne diffuse une requête quand Search et Performance Max fonctionnent dans le même compte, y compris la priorité d'enchère Shopping vs PMax et la coordination des exclusions de marque.

---

## Ce que couvre cette fiche / Ce qu'elle ne couvre PAS

**Cette fiche :**

- Explique la hiérarchie de sélection des keywords (comment Google route les requêtes entre campagnes)
- Documente la coordination des exclusions de marque entre Search + PMax
- Couvre la priorité d'enchère Shopping vs PMax (changement Classement de l'annonce post-Q4 2024)
- Fournit des tactiques de protection et de découverte de requêtes

**Cette fiche ne couvre PAS :**

- La structure de campagne Search (Voir : [Search Campaign Structure Mental Model](<../search/Search - Structure de campagne Search.md>))
- La structure de campagne PMax (Voir : [PMax Structure Mental Model (Ecommerce)](<Pmax - Structure PMax (E-commerce).md>) ou [PMax Structure Mental Model (Lead Gen/SaaS)](<Pmax - Structure PMax (Lead Gen-SaaS).md>))
- La mise en place de PMax pas à pas (Voir : [SOP - Lancer une campagne PMax complete e-commerce](<Pmax - Lancer une campagne PMax Full Assets e-commerce.md>) ou [SOP - Lancer une campagne PMax pour lead gen/SaaS](<Pmax - Lancer une campagne PMax pour Lead Gen-SaaS.md>))
- La justification de la séparation de marque (Voir : [Brand Separation Reference](<../search/Search - Séparation de marque.md>))

---

## Aide-mémoire : règles de routage des requêtes

| **Scénario** | **Quelle campagne gagne** | **Pourquoi** |
| --- | --- | --- |
| La requête correspond à un keyword en correspondance exacte dans Search | Search gagne | Les keywords en correspondance exacte ont la priorité sur PMax |
| La requête correspond à un keyword en expression/requête large dans Search | L'une ou l'autre peut gagner | Google utilise le Classement de l'annonce pour décider entre Search et PMax |
| La requête n'a pas de correspondance keyword dans Search | PMax gagne | PMax diffuse les requêtes sans couverture keyword Search |
| Aucune option n'est identique à la requête | L'IA sélectionne le plus pertinent | La performance prédite détermine le gagnant |
| Annonce textuelle Search + annonce Shopping PMax pour la même requête | Les deux peuvent diffuser | Différents formats d'annonce occupent différents emplacements SERP |
| Requête de marque avec exclusion de marque dans PMax | Search gagne (campagne marque) | PMax est exclu des enchères de marque |
| Requête Shopping, Shopping standard + PMax tous deux éligibles | Le Classement de l'annonce décide | Post-Q4 2024 : PMax ne gagne plus automatiquement sur Shopping standard |

---

## La hiérarchie de sélection des keywords

Quand Search et PMax fonctionnent dans le même compte, Google suit cette priorité :

### 1. Les keywords en correspondance exacte ont la priorité

Si une requête correspond à un keyword en correspondance exacte dans votre campagne Search, Search diffuse l'annonce. PMax ne concourt pas pour cette requête.

**Implication :** ajoutez vos requêtes à plus haute valeur comme keywords en correspondance exacte dans Search pour les protéger de PMax.

### 2. Les keywords en expression et requête large concourent avec PMax

Pour les keywords en expression exacte et requête large, Google utilise le Classement de l'annonce pour décider si Search ou PMax diffuse l'annonce. Cela signifie que PMax peut capter des requêtes que vous destiniez à Search si PMax a un Classement de l'annonce plus élevé.

**Implication :** si PMax capte des requêtes importantes, promouvez-les en correspondance exacte dans Search.

### 3. Pertinence IA pour les requêtes non correspondantes ou à égalité

Quand aucun keyword n'est identique à la requête, ou quand plusieurs options (keyword Search + PMax) ont une pertinence égale, l'IA de Google sélectionne le ad group le plus pertinent basé sur la performance prédite. Cela signifie que PMax peut gagner des requêtes même quand un keyword Search existe, si le keyword Search n'est que faiblement lié.

**Implication :** ne surchargez pas vos campagnes Search de keywords en requête large faiblement liés. Laissez PMax trouver des requêtes incrémentales que vous n'aviez pas anticipées. Promouvez les requêtes véritablement haute valeur en correspondance exacte pour un routage garanti.

### 4. Exception du format Shopping

Pour les annonces au format Shopping spécifiquement, PMax et Shopping standard concourent maintenant sur le Classement de l'annonce (post-Q4 2024). Cependant, les annonces textuelles des campagnes Search et les annonces Shopping de PMax diffusent des formats différents et peuvent toutes deux apparaître sur la même page de résultats. Une annonce textuelle Search ne bloque pas une annonce Shopping PMax et vice versa : elles occupent des emplacements publicitaires différents.

**Implication :** exécuter Search et PMax simultanément pour le même produit n'est pas toujours de la cannibalisation. Les annonces textuelles Search et les annonces Shopping PMax peuvent se compléter sur le SERP.

---

## Priorité d'enchère Shopping vs PMax (changement Q4 2024)

Avant le Q4 2024, PMax gagnait automatiquement sur Shopping standard quand les deux étaient éligibles pour le même emplacement Shopping. Ce n'est plus le cas.

| **Période** | **Comportement** |
| --- | --- |
| Avant Q4 2024 | PMax gagnait automatiquement sur Shopping standard |
| Après Q4 2024 | Le Classement de l'annonce détermine le gagnant (comme Search vs PMax) |

**Ce que ça signifie pour les approches hybrides :**

- Shopping standard et PMax peuvent maintenant coexister sur la surface Shopping sans que PMax domine automatiquement
- Si vos campagnes Shopping standard ont un Classement de l'annonce fort (bonne qualité de flux, enchères compétitives), elles peuvent gagner des enchères face à PMax
- Vous devez toujours gérer les exclusions pour empêcher les mêmes produits de se concurrencer entre eux

> ↪️ **Pour les approches hybrides Shopping + PMax :** voir [Shopping Campaign Type Mental Model](<../shopping/Shopping - Types de campagne Shopping.md>) (section Exécuter les deux ensemble).

---

## Coordination des exclusions de marque

Le trafic de marque doit être contrôlé entre Search et PMax pour éviter l'inflation des métriques et assurer une attribution précise.

### Implémentation

| **Type de campagne** | **Méthode de contrôle de marque** |
| --- | --- |
| **Search** | Campagne marque dédiée + termes de marque en négatifs dans les campagnes non-marque |
| **PMax** | Exclusions de marque au niveau de la campagne (Paramètres > Exclusions de marque > sélectionnez votre marque) |

### Comment fonctionnent les exclusions de marque PMax

1. Allez dans les paramètres de votre campagne PMax
2. Naviguez vers Exclusions de marque
3. Sélectionnez votre marque dans la liste (Google auto-détecte les marques, ou vous pouvez ajouter des noms de marque personnalisés)
4. PMax ne diffusera plus d'annonces pour les requêtes que Google classifie comme requêtes de marque

> ⚠️ **Les exclusions de marque dans PMax ne sont pas les mêmes que les mots-clés à exclure :** Google utilise son propre système de classification de marque. Certaines requêtes de marque peuvent toujours passer si Google ne les classifie pas comme requêtes de marque. Surveillez votre rapport sur les termes de recherche.

### Checklist de coordination

- [ ] La campagne Search marque existe avec les keywords de marque
- [ ] Les campagnes Search non-marque ont les termes de marque en mots-clés à exclure
- [ ] Les campagnes PMax ont les exclusions de marque activées
- [ ] Le rapport sur les termes de recherche est surveillé chaque semaine pour les fuites de marque dans PMax
- [ ] Les métriques de marque sont suivies séparément des métriques non-marque

---

## Tactiques de protection des requêtes

Utilisez-les quand vous voulez que Search contrôle des requêtes spécifiques au lieu de PMax.

| **Tactique** | **Quand utiliser** | **Comment** |
| --- | --- | --- |
| **Promouvoir en correspondance exacte** | PMax capte une requête haute valeur que vous voulez dans Search | Ajoutez la requête comme keyword en correspondance exacte dans votre campagne Search |
| **Ajouter un négatif en correspondance exacte dans PMax** | PMax continue de gagner malgré le keyword dans Search (rare, mais possible) | Ajoutez un mot-clé négatif au niveau de la campagne dans PMax |
| **Surveiller les termes de recherche chaque semaine** | Maintenance continue | Vérifiez les termes de recherche PMax pour les requêtes qui appartiennent à Search |

> ⚠️ **Les mots-clés à exclure au niveau de la campagne PMax** sont maintenant disponibles pour tous les annonceurs. Vous pouvez ajouter des négatifs directement dans les paramètres de campagne PMax (plus besoin d'accès via un rep Google).

---

## PMax comme couche de découverte

PMax est le plus précieux quand il trouve des requêtes que vous n'aviez pas anticipées. Structurez votre compte pour tirer parti de cela.

| **Stratégie** | **Implémentation** |
| --- | --- |
| **Sous-keywordisation intentionnelle** | N'ajoutez pas tous les keywords possibles à Search. Laissez PMax découvrir les requêtes longue traîne et inattendues. |
| **Mining de termes de recherche** | Consultez les termes de recherche PMax chaque semaine. Promouvez les requêtes performantes en correspondance exacte dans Search. |
| **Complément DSA** | Si vous exécutez un DSA catch-all dans Search, PMax s'étend encore plus loin vers les requêtes non couvertes par keywords. |

> 💡 **Search et PMax sont complémentaires :** Search vous donne un contrôle au niveau du keyword pour les requêtes que vous connaissez. PMax trouve les requêtes que vous ne connaissez pas. Structurez Search pour couvrir vos termes haute valeur connus, et laissez PMax s'étendre au-delà.

---

## Search themes dans PMax

Les search themes indiquent à PMax quelles catégories de recherche cibler. Ils interagissent avec vos keywords Search.

| **Aspect** | **Fonctionnement** |
| --- | --- |
| **Ce que font les search themes** | Suggèrent des catégories de recherche à PMax (similaire aux keywords en requête large) |
| **Interaction avec les keywords Search** | Les search themes ne remplacent pas la priorité des keywords. Les keywords en correspondance exacte Search gagnent toujours. |
| **Quand utiliser** | Quand vous voulez que PMax se concentre sur des catégories de recherche spécifiques au-delà de ce que votre flux suggère |
| **Quand ne pas utiliser** | Quand votre flux produit donne déjà à PMax des signaux suffisants |

> ⚠️ **Les search themes sont des suggestions, pas des restrictions :** PMax diffusera des annonces au-delà de vos search themes s'il trouve des requêtes convertissantes ailleurs.

---

## Erreurs courantes

| **Erreur** | **Problème** | **Solution** |
| --- | --- | --- |
| Pas d'exclusion de marque dans PMax | PMax capte le trafic de marque, gonfle ses métriques | Ajouter des exclusions de marque dans les paramètres de campagne PMax |
| Trop de keywords dans Search | Ne laisse pas de place à PMax pour découvrir des requêtes incrémentales | Supprimer les keywords en requête large/expression sous-performants, laisser PMax découvrir |
| Ignorer les termes de recherche PMax | Manquer des opportunités de promouvoir les gagnants vers Search | Consulter les termes de recherche PMax chaque semaine |
| Supposer que PMax gagne toujours les enchères Shopping | Post-Q4 2024, le Classement de l'annonce décide. Shopping standard peut gagner. | Évaluer les approches hybrides sans supposer la dominance PMax |
| Ne pas utiliser la correspondance exacte pour la protection | Les requêtes en expression/requête large peuvent toujours aller à PMax | Promouvoir les requêtes critiques en correspondance exacte dans Search |
| Campagnes marque en double | Search marque + PMax ciblant tous les deux la marque = concurrence interne | Campagne Search marque + exclusions de marque dans PMax |

---

## Documents liés

| **Document** | **Relation** |
| --- | --- |
| [Search Campaign Structure Mental Model](<../search/Search - Structure de campagne Search.md>) | Utilise les règles de routage pour les décisions de structure de campagne |
| [PMax Structure Mental Model (Ecommerce)](<Pmax - Structure PMax (E-commerce).md>) | Décisions de structure PMax affectées par le routage (Ecommerce) |
| [PMax Structure Mental Model (Lead Gen/SaaS)](<Pmax - Structure PMax (Lead Gen-SaaS).md>) | Décisions de structure PMax affectées par le routage (Lead Gen/SaaS) |
| [Shopping Campaign Type Mental Model](<../shopping/Shopping - Types de campagne Shopping.md>) | Approches hybrides Shopping vs PMax |
| [Standard Shopping Campaign Structure Mental Model](<../shopping/Shopping - Structure de campagne Shopping standard.md>) | Routage spécifique Shopping standard via les priorités de campagne |
| [Brand Separation Reference](<../search/Search - Séparation de marque.md>) | Justification et implémentation de la séparation de marque |
