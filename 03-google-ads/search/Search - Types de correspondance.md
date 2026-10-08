# Types de correspondance

> **Plateforme :** Google Ads
> **Catégorie :** Search
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Documente le fonctionnement des types de correspondance de keywords Google Ads : syntaxe, comportement de correspondance, expansion par variantes proches, utilisation des signaux et hiérarchie de sélection interne des keywords qui détermine quel keyword sert pour une requête donnée.

---

## Ce que couvre cette fiche / Ce qu'elle ne couvre PAS

**Cette fiche :**

- Documente les mécanismes de exact, phrase et requête large
- Explique le comportement des variantes proches pour chaque match type
- Détaille la hiérarchie de sélection en 7 étapes que Google utilise pour choisir un keyword par requête
- Couvre les 4 signaux supplémentaires que le requête large utilise et que phrase et exact n'utilisent pas
- Fournit la syntaxe et les règles pour chaque match type

**Cette fiche ne couvre PAS :**

- Recommander quel match type utiliser (Voir : [Keyword and Match Type Selection Guidelines](<Search - Sélection des mots clés et types de correspondance.md>))
- Expliquer la configuration des stratégies d'enchères (Voir : [Stratégies d'enchères intelligentes Mechanics Reference](<../encheres/Enchères - Mécanismes des stratégies d'enchères intelligentes.md>))
- Indiquer quelle stratégie d'enchères associer à quel match type (Voir : [Bid Strategy Selection Reference](<../encheres/Enchères - Sélection de stratégie d'enchères.md>))
- Fournir les décisions de structure de campagne (Voir : [Search Campaign Structure Mental Model](<Search - Structure de campagne Search.md>))
- Couvrir les types de correspondance de mots-clés à exclure (mécanismes différents, règles différentes)

---

## Aide-mémoire : types de correspondance

| Match type | Syntaxe | Comportement de correspondance | Portée | Signaux supplémentaires |
|------------|--------|-------------------|-------|---------------|
| **Exact** | `[keyword]` | Même signification ou intention que le keyword | La plus étroite | Non |
| **Phrase** | `"keyword"` | Inclut la signification du keyword | Moyenne | Non |
| **Broad** | `keyword` | Lié au keyword | La plus large | Oui (4 signaux) |

> 💡 **Tous les types de correspondance utilisent la correspondance sémantique :** Google interprète le sens et l'intention, pas seulement la syntaxe. Une recherche pour "hébergement économique" peut correspondre au keyword `[hôtels pas chers]` en mot-clé exact parce que Google les considère comme sémantiquement équivalents.

---

## 1. Mot-clé exact

### Ce que ça fait

Correspond aux recherches qui ont la même signification ou intention que votre keyword. Malgré le nom, mot-clé exact ne nécessite plus une correspondance caractère par caractère. Google applique l'expansion par variantes proches pour couvrir les synonymes, reformulations et intentions implicites.

### Syntaxe

`[keyword]`

Crochets autour du keyword.

**Exemples :**
| Keyword | Exemples de requêtes correspondantes |
|---------|------------------------|
| `[chaussures course]` | chaussures course, chaussures pour courir, sneakers running |
| `[plombier près de moi]` | plombier près de moi, plombier local, plombier dans mon quartier |
| `[acheter logiciel crm]` | acheter logiciel crm, achat logiciel crm, tarifs logiciel crm |

### Comportement des variantes proches

Les variantes proches de mot-clé exact incluent :
| Type de variante proche | Keyword exemple | Correspondance exemple |
|--------------------|----------------|---------------|
| Fautes d'orthographe | `[chaussures course]` | chaussure cource |
| Singulier/pluriel | `[chaussure course]` | chaussures course |
| Dérivations | `[courir chaussures]` | chaussures course |
| Abréviations | `[logiciel crm]` | logiciel gestion relation client |
| Reformulations | `[hôtels pas chers]` | hébergement économique |
| Requêtes de même intention | `[plombier près de moi]` | service plomberie urgence |
| Mots implicites | `[feux diurnes]` | DRL pour voiture |

### Règles

| Règle | Détails |
|------|---------|
| **Limite de caractères** | Les keywords peuvent avoir jusqu'à 80 caractères espaces inclus |
| **Ordre des mots** | L'ordre des mots n'est pas garanti : Google interprète l'intention |
| **Interaction avec les négatifs** | Le negative exact `[keyword]` bloque uniquement cette requête exacte, pas les variantes proches (utilisez le negative phrase pour un blocage plus large) |
| **Niveau de qualité** | Le Niveau de qualité au niveau keyword s'applique à toutes les requêtes correspondues via ce keyword |
| **Priorité d'enchère** | Les keywords mot-clé exact identiques au terme de recherche obtiennent la priorité la plus élevée dans la sélection |

### Cas d'usage

| Cas d'usage | Pourquoi mot-clé exact convient |
|----------|---------------------|
| Termes de marque | Contrôle le plus serré sur la correspondance des requêtes de marque |
| Convertisseurs à haute valeur | Requêtes convertissantes connues avec des données de performance prouvées |
| Industries réglementées | La conformité exige un contrôle précis des requêtes |
| CPC manuel | La correspondance plus étroite compense une optimisation d'enchères moins intelligente |

### Quand NE PAS utiliser

| Situation | Pourquoi | Alternative |
|-----------|-----|-------------|
| Stratégies d'enchères intelligentes (CPA cible/ROAS cible) avec suffisamment de données | Limite la surface de signaux que Stratégies d'enchères intelligentes peut utiliser | Requête large |
| Essayer de découvrir de nouvelles requêtes | Mot-clé exact restreint aux patterns d'intention connus | Requête large ou expression exacte |
| Keywords à faible volume de recherche | Trop restrictif, les annonces s'affichent rarement | Expression exacte |

---

## 2. Expression exacte

### Ce que ça fait

Correspond aux recherches qui incluent la signification de votre keyword. La requête doit contenir le concept exprimé par votre keyword, mais peut inclure des mots supplémentaires avant, après ou autour. Google applique la correspondance sémantique, donc la requête n'a pas besoin de contenir vos mots exacts.

### Syntaxe

`"keyword"`

Guillemets doubles autour du keyword.

**Exemples :**
| Keyword | Exemples de requêtes correspondantes |
|---------|------------------------|
| `"chaussures tennis"` | acheter chaussures tennis, chaussures tennis pour femme, sneakers tennis rouges |
| `"entreprise déménagement"` | entreprise déménagement abordable près de moi, meilleurs déménageurs à Lyon |
| `"logiciel crm"` | logiciel crm pour petite entreprise, meilleure plateforme gestion client |

### Comportement des variantes proches

Les variantes proches de expression exacte incluent tout ce que mot-clé exact couvre, plus :
| Type de variante proche | Keyword exemple | Correspondance exemple |
|--------------------|----------------|---------------|
| Mots supplémentaires | `"chaussures tennis"` | acheter chaussures tennis rouges en ligne |
| Réorganisation des mots (quand le sens est préservé) | `"chaussures pour tennis"` | tennis chaussures |
| Paraphrase | `"entreprise déménagement"` | déménageurs de meubles |
| Expansions liées | `"service tonte pelouse"` | coupe gazon et entretien jardin |

### Règles

| Règle | Détails |
|------|---------|
| **Limite de caractères** | Les keywords peuvent avoir jusqu'à 80 caractères espaces inclus |
| **Préservation du sens** | Google maintient le sens fondamental de votre keyword dans les requêtes correspondues |
| **Plus large qu'historiquement** | Expression exacte a absorbé le comportement de l'ancien requête large modifier (+keyword) en 2021 |
| **Pas de signaux supplémentaires** | N'utilise pas les signaux Landing Page, autres keywords, historique utilisateur ou localisation pour la correspondance (uniquement pour les enchères) |
| **Priorité d'enchère** | Expression exacte identique au terme de recherche obtient la priorité sur mot-clé exact non identique (voir hiérarchie de sélection) |

### Cas d'usage

| Cas d'usage | Pourquoi expression exacte convient |
|----------|----------------------|
| Comptes à budget contraint | Plus de portée qu'exact, plus de contrôle que broad |
| Stratégies non Stratégies d'enchères intelligentes | CPC manuel où requête large est trop imprévisible |
| Ad groups focalisés sur un thème | Maintient les requêtes dans un cluster de sens |
| Découverte avec des garde-fous | Trouve de nouvelles requêtes tout en maintenant la pertinence thématique |

### Quand NE PAS utiliser

| Situation | Pourquoi | Alternative |
|-----------|-----|-------------|
| Stratégies d'enchères intelligentes avec suffisamment de données | Limite la surface de signaux et la couverture de requêtes | Requête large |
| Besoin de volume maximum de requêtes | Phrase restreint aux requêtes incluant le sens | Requête large |
| Besoin de contrôle exact des requêtes | Phrase permet encore une expansion significative | Mot-clé exact |

---

## 3. Requête large

### Ce que ça fait

Correspond aux recherches liées à votre keyword, y compris des requêtes qui ne contiennent aucun des termes du keyword. Requête large utilise l'interprétation la plus large de la pertinence, plus 4 signaux supplémentaires auxquels phrase et mot-clé exact n'ont pas accès pour la correspondance.

### Syntaxe

`keyword`

Pas de symboles. Juste le texte du keyword.

**Exemples :**
| Keyword | Exemples de requêtes correspondantes |
|---------|------------------------|
| `régime faible en glucides` | aliments sans glucides, recettes keto, préparation repas faible calories |
| `logiciel crm` | alternatives salesforce, meilleurs outils gestion leads, app base de données clients |
| `plombier` | réparer robinet qui fuit, réparation tuyau urgence, installation chauffe-eau |

### Les 4 signaux supplémentaires

Requête large utilise 4 signaux pour la correspondance de requêtes que phrase et mot-clé exact n'utilisent pas :

> AI Max pour les campagnes Search étend encore le comportement de requête large en ajoutant une correspondance sans keyword basée sur les assets et la Landing Page. Si AI Max est activé, votre campagne peut correspondre à des requêtes liées à vos titres, descriptions, liens annexes et contenu de Landing Page, même sans keywords correspondants. Voir [AI Max for Search Reference](<Search - AI Max - mécanismes techniques.md>) pour les détails.
| Signal | Ce qu'il fait | Exemple |
|--------|-------------|---------|
| **Contenu de la Landing Page** | Google lit votre Landing Page pour comprendre ce que vous vendez, et fait correspondre les requêtes alignées avec le contenu de votre page | Keyword `chaussures` avec une Landing Page de chaussures de course : moins susceptible de correspondre à "chaussures habillées" |
| **Autres keywords dans l'ad group** | Google utilise vos autres keywords comme contexte pour comprendre le thème de votre ad group | Ad group avec `logiciel crm`, `outil pipeline ventes`, `gestion leads` : requête large sur `logiciel crm` comprend que vous ciblez les outils de vente |
| **Recherches précédentes de l'utilisateur** | Google considère l'historique de recherche récent de l'utilisateur pour prédire l'intention | L'utilisateur a précédemment cherché "entraînement marathon" : chercher maintenant "chaussures" a plus de chances de correspondre à `chaussures course` |
| **Localisation de l'utilisateur** | Google prend en compte la localisation physique de l'utilisateur | Utilisateur à Paris cherchant "restaurant" : plus susceptible de correspondre à `restaurants paris` |

> 💡 **Ces signaux opèrent au moment de la correspondance, pas seulement des enchères :** Phrase et mot-clé exact bénéficient aussi de ces signaux pour le calcul des enchères via Stratégies d'enchères intelligentes, mais seul requête large les utilise pour déterminer si une requête se qualifie comme correspondance.

### Comportement des variantes proches

Requête large inclut toutes les variantes proches d'exact et phrase, plus :
| Type de variante proche | Keyword exemple | Correspondance exemple |
|--------------------|----------------|---------------|
| Concepts liés | `recettes végétariennes` | idées repas à base de plantes |
| Intention plus large | `plombier` | comment réparer des toilettes qui coulent |
| Besoins inférés | `lieu de mariage` | espace événementiel extérieur avec traiteur |
| Correspondance au niveau catégorie | `chaussures course` | meilleur Nike Air Zoom Pegasus |

### Règles

| Règle | Détails |
|------|---------|
| **Limite de caractères** | Les keywords peuvent avoir jusqu'à 80 caractères espaces inclus |
| **Pas de symboles de syntaxe** | Tout keyword saisi sans crochets ni guillemets est par défaut en requête large |
| **Nécessite la gestion des mots-clés à exclure** | Une correspondance plus large signifie plus de potentiel de requêtes non pertinentes : ajoutez des négatifs proactivement |
| **Plus efficace avec Stratégies d'enchères intelligentes** | Stratégies d'enchères intelligentes peut évaluer chaque requête requête large individuellement et baisser l'enchère sur les correspondances à faible valeur |
| **La Landing Page compte** | Votre Landing Page influence directement quelles requêtes Google considère comme pertinentes |
| **Priorité d'enchère** | Requête large identique au terme de recherche obtient la même priorité que expression exacte identique au terme de recherche |

### Cas d'usage

| Cas d'usage | Pourquoi requête large convient |
|----------|---------------------|
| Stratégies d'enchères intelligentes (CPA cible/ROAS cible) | Stratégies d'enchères intelligentes évalue chaque requête individuellement, compensant la correspondance large |
| Découverte de requêtes | Trouve des requêtes convertissantes auxquelles vous n'auriez jamais pensé |
| Comptes à fort volume | Couverture maximale sur toutes les variations de requêtes pertinentes |
| Capture de longue traîne | 26% de croissance YoY des requêtes de 4+ mots : requête large les capture automatiquement |

### Quand NE PAS utiliser

| Situation | Pourquoi | Alternative |
|-----------|-----|-------------|
| Nouveau compte sans historique de conversions | Stratégies d'enchères intelligentes n'a pas de données au niveau requête pour optimiser, requête large s'étend à l'aveugle | Phrase ou mot-clé exact jusqu'à accumulation de données de conversion |
| Campagnes à faible volume (<30 conv./mois pour CPA cible, <50 pour ROAS cible) | Données insuffisantes pour que requête large optimise efficacement | Phrase ou mot-clé exact, concentrez la dépense sur les requêtes haute intention connues |
| Budget très limité | Requête large consomme le budget sur de nombreuses requêtes avant que les requêtes principales soient servies | Phrase ou mot-clé exact |
| Verticales B2B très niche avec des keywords prévisibles | L'espace de requêtes est étroit, requête large produit principalement des requêtes non pertinentes | Phrase ou mot-clé exact |
| CPC manuel | Pas d'optimisation d'enchère par requête pour compenser la correspondance large | Phrase ou mot-clé exact |
| Industries réglementées avec des exigences strictes sur les requêtes | Impossible de garantir quelles requêtes déclenchent vos annonces | Mot-clé exact |
| Pas de processus de mots-clés à exclure en place | Les requêtes non pertinentes gaspillent le budget sans processus pour les identifier et les bloquer | Expression exacte, ou mettez en place un processus de mots-clés à exclure d'abord |

---

## Hiérarchie de sélection des keywords

Quand un utilisateur saisit une requête de recherche, Google suit un processus en 7 étapes pour déterminer quel keyword, annonce et enchère entre dans l'enchère.

### La séquence d'enchère en 7 étapes

1. **L'utilisateur saisit une requête** sur Google Search
2. **Google récupère tous les keywords activés potentiellement pertinents** à travers votre compte (et ceux de tous les autres annonceurs)
3. **Vérification d'éligibilité :** Google évalue chaque keyword par rapport à la requête en utilisant les règles de match type
4. **Google sélectionne un keyword par ad group** en utilisant la hiérarchie de priorité interne (voir ci-dessous)
5. **Assemblage RSA :** Google assemble la meilleure combinaison titre/description pour le keyword sélectionné
6. **Stratégies d'enchères intelligentes définit l'enchère optimale** pour cette impression, cet utilisateur et ce contexte spécifiques
7. **L'annonce avec l'Classement de l'annonce le plus élevé** (enchère x Niveau de qualité x impact attendu des extensions) entre dans l'enchère

### Priorité interne de sélection des keywords

Quand plusieurs keywords dans le même ad group pourraient correspondre à une requête, Google utilise cet ordre de priorité :
| Priorité | Condition | Exemple |
|----------|-----------|---------|
| **1 (la plus haute)** | Keyword mot-clé exact identique au terme de recherche | Requête : "chaussures course", keyword : `[chaussures course]` |
| **2** | Keyword mot-clé exact identique au terme de recherche corrigé orthographiquement | Requête : "chausures course", keyword : `[chaussures course]` |
| **3** | Keyword phrase ou requête large identique au terme de recherche | Requête : "chaussures course", keyword : `"chaussures course"` ou `chaussures course` |
| **4** | Keyword phrase ou requête large identique au terme de recherche corrigé | Requête : "chausures course", keyword : `"chaussures course"` |
| **5 (la plus basse)** | Keyword avec l'Classement de l'annonce le plus élevé | Plusieurs keywords se qualifient mais aucun n'est identique : l'Classement de l'annonce le plus élevé gagne |

> 💡 **"Identique" signifie correspondance caractère par caractère entre le terme de recherche et le texte du keyword :** Les variantes proches, synonymes et reformulations ne sont pas considérés comme identiques. Ils tombent à la priorité 5 (Classement de l'annonce).

### Comportement cross-ad-group

La hiérarchie de priorité ci-dessus s'applique au sein d'un seul ad group. Quand des keywords à travers plusieurs ad groups ou campagnes pourraient correspondre :

| Scénario | Résolution |
|----------|-----------|
| Même keyword dans plusieurs ad groups | L'Classement de l'annonce détermine quel ad group sert |
| Keywords différents, même requête | Le meilleur keyword de chaque ad group rivalise sur l'Classement de l'annonce |
| Types de correspondance différents, même texte de keyword, ad groups différents | La hiérarchie de priorité s'applique d'abord, puis l'Classement de l'annonce départage |

### Ce que ça signifie en pratique

| Implication | Explication |
|-------------|-------------|
| Pas besoin de dupliquer les keywords à travers tous les types de correspondance | La hiérarchie route les requêtes vers le bon keyword automatiquement |
| Mot-clé exact a la priorité sur les requêtes identiques | Si `[chaussures course]` existe et la requête est "chaussures course", mot-clé exact gagne |
| L'Classement de l'annonce est le départageur pour tout le reste | Pour les correspondances non identiques, le keyword attaché à l'annonce la plus performante gagne |
| Requête large attrape tout le reste | Les requêtes qui ne correspondent pas à un keyword exact/phrase identique sont routées vers le keyword avec l'Classement de l'annonce le plus élevé, souvent broad |

---

## Comparaison des signaux requête large

Ce tableau résume quels signaux chaque match type utilise pour la correspondance de requêtes vs. l'optimisation d'enchères :
| Signal | Mot-clé exact (correspondance) | Expression exacte (correspondance) | Requête large (correspondance) | Tous les types (enchères via Stratégies d'enchères intelligentes) |
|--------|----------------------|------------------------|----------------------|-------------------------------------|
| Texte et sens du keyword | Oui | Oui | Oui | Oui |
| Variantes proches | Oui | Oui | Oui | Oui |
| Contenu de la Landing Page | Non | Non | Oui | Oui |
| Autres keywords dans l'ad group | Non | Non | Oui | Oui |
| Recherches précédentes de l'utilisateur | Non | Non | Oui | Oui |
| Localisation de l'utilisateur | Non | Non | Oui | Oui |
| Appareil | Non | Non | Non | Oui |
| Heure du jour | Non | Non | Non | Oui |
| Données démographiques | Non | Non | Non | Oui |
| Listes de remarketing | Non | Non | Non | Oui |

> 💡 **Distinction clé :** Stratégies d'enchères intelligentes utilise tous les signaux pour définir les enchères quel que soit le match type. La différence est que requête large utilise aussi 4 de ces signaux pour déterminer si une requête se qualifie comme correspondance. Cela signifie que requête large fait apparaître des requêtes que phrase et exact ne verraient jamais.

---

## Guide de décision : quel match type ?

```
Utilisez-vous Stratégies d'enchères intelligentes (tCPA ou tROAS) ?
|
+-- OUI --> Suffisamment de données de conversion (30+/mois pour tCPA, 50+ pour tROAS) ?
|           |
|           +-- OUI --> Utilisez requête large
|           |           (Surface de signaux maximale pour Stratégies d'enchères intelligentes)
|           |
|           +-- NON --> Utilisez expression exacte
|                      (Jusqu'à ce que le volume de conversions se construise)
|
+-- NON --> Contraint par le budget ?
           |
           +-- OUI --> Utilisez mot-clé exact
           |           (Contrôle de dépense le plus serré)
           |
           +-- NON --> Exigences réglementaires/conformité ?
                      |
                      +-- OUI --> Utilisez mot-clé exact
                      |           (Contrôle au niveau requête)
                      |
                      +-- NON --> Utilisez expression exacte
                                 (Équilibre de portée et de contrôle)
```

---

## Erreurs courantes

| Erreur | Problème | Solution |
|---------|---------|-----|
| Dupliquer les keywords à travers les 3 types de correspondance | Crée de la compétition interne, confond le reporting, gaspille du temps de gestion | Utilisez un seul match type par keyword basé sur votre stratégie d'enchères et votre volume de données |
| Utiliser requête large avec CPC manuel | Pas d'optimisation d'enchère par requête pour compenser la correspondance large | Passez à Stratégies d'enchères intelligentes, ou passez à phrase/mot-clé exact |
| Supposer qu'mot-clé exact = requête exacte | Mot-clé exact inclut les variantes proches, synonymes et requêtes de même intention | Vérifiez le rapport sur les termes de recherche : les requêtes "exact" match incluront des termes que vous n'avez pas saisis |
| Ignorer le rapport sur les termes de recherche en requête large | Requête large correspondra à des requêtes non pertinentes qui gaspillent le budget | Revoyez les termes de recherche hebdomadairement et ajoutez des négatifs |
| Ajouter la syntaxe requête large modifier (+keyword) | Le requête large modifier a été retiré en 2021 et fusionné dans expression exacte | Utilisez expression exacte `"keyword"` à la place |
| S'attendre à la préservation de l'ordre des mots en expression exacte | Expression exacte peut réorganiser les mots quand le sens est préservé | Concentrez-vous sur le sens, pas sur la séquence de mots |
| Utiliser requête large sans alignement de Landing Page | Google utilise votre Landing Page comme signal de correspondance : des pages mal alignées attirent les mauvaises requêtes | Assurez-vous que le contenu de la Landing Page correspond au sujet visé par le keyword |

---

## Documents liés

| Document | Relation |
|----------|-------------|
| [Modern Search Campaign Mental Model](<Search - Campagne Search moderne.md>) | Méthode conceptuelle du fonctionnement des campagnes Search |
| [Search Campaign Structure Mental Model](<Search - Structure de campagne Search.md>) | Comment la structure de campagne et d'ad group affecte le routage des keywords |
| [Keyword and Match Type Selection Guidelines](<Search - Sélection des mots clés et types de correspondance.md>) | Configurations de match type recommandées par stratégie d'enchères et objectif |
| [Stratégies d'enchères intelligentes Mechanics Reference](<../encheres/Enchères - Mécanismes des stratégies d'enchères intelligentes.md>) | Comment les enchères au temps de l'enchère évaluent les signaux par impression |
| [Bid Strategy Selection Reference](<../encheres/Enchères - Sélection de stratégie d'enchères.md>) | Quelle stratégie d'enchères associer à votre choix de match type |
| [Negative Keyword Reference](<Search - Mots-clés à exclure.md>) | Mécanismes des types de correspondance négatifs (contraste avec le comportement des keywords positifs) |
| [SOP - Promouvoir les termes de recherche en mots-cles](<Search - Promouvoir les termes de recherche en keywords.md>) | Processus de conversion des termes de recherche en keywords |
| [AI Max for Search Reference](<Search - AI Max - mécanismes techniques.md>) | Comment AI Max étend requête large avec la correspondance sans keyword |
| [AI Max for Search Mental Model](<Search - Activer AI Max.md>) | Méthode de décision AI Max vs. types de correspondance standard |
