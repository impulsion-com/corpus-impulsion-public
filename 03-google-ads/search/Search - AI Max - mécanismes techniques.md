# AI Max for Search

> **Plateforme :** Google Ads
> **Catégorie :** Search
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Documente les mécanismes techniques, paramètres, contrôles et rapports d'AI Max for Search : la suite de ciblage et de création pilotée par l'IA de Google qui ajoute le matching sans keyword (style DSA), la génération de texte et la sélection dynamique de Landing Page aux campagnes Search standard.

---

## Ce que couvre cette fiche / Ce qu'elle ne couvre PAS

**Cette fiche :**

- Documente le fonctionnement technique de chaque fonctionnalité AI Max
- Explique les paramètres, contrôles et options de configuration
- Détaille les nouvelles colonnes de reporting et valeurs de match type
- Couvre les exigences de compatibilité des tracking templates
- Liste les limitations API et Editor

**Cette fiche ne couvre PAS :**

- Les recommandations sur quand activer AI Max (Voir : [AI Max for Search Mental Model](<Search - Activer AI Max.md>))
- Les arbitrages stratégiques entre AI Max et les alternatives (Voir : [AI Max for Search Mental Model](<Search - Activer AI Max.md>))
- Les mécanismes généraux de match type (Voir : [Match Type Reference](<Search - Types de correspondance.md>))
- La syntaxe de ciblage DSA (Voir : [DSA Targeting Options Reference](<Search - Options de ciblage DSA.md>))

---

## Aide-mémoire : fonctionnalités AI Max

| Fonctionnalité | Ce qu'elle fait | Niveau | Défaut quand AI Max est activé |
|---------|-------------|-------|----------------------------|
| **Search Term Matching** | Matching étendu des requêtes via l'expansion requête large, le matching basé sur les assets et le matching basé sur la Landing Page | Ad group | Activé |
| **Text Customization** | Titres et descriptions générés par l'IA à partir de la Landing Page et de l'intention utilisateur | Campagne | Activé |
| **Final URL Expansion** | Sélection dynamique de Landing Page en fonction de la pertinence de la requête | Campagne | Activé |
| **Inclusions de marque** | Spécifier les marques à associer à vos annonces | Campagne et ad group | Non défini |
| **Exclusions de marque** | Empêcher les annonces d'apparaître à côté de certaines marques | Campagne | Non défini |
| **URL Exclusions** | Exclure des URL du Final URL Expansion | Campagne (nécessite Final URL Expansion activé) | Non défini |
| **URL Inclusions** | Inclure des URL supplémentaires non captées par le Final URL Expansion | Ad group (nécessite Final URL Expansion activé) | Non défini |
| **Locations of Interest** | Atteindre des clients selon l'intention géographique dans les matchs sans keyword | Ad group | Non défini |
| **Text Guidelines** | Contrôler le texte généré via des exclusions de termes et restrictions de messages | Campagne | Non défini |

> Les fonctionnalités sont interdépendantes. Final URL Expansion nécessite que Text Customization soit activé. Désactiver Text Customization désactive automatiquement Final URL Expansion.

---

## Search Term Matching

Quand AI Max est activé, votre campagne bénéficie d'un matching étendu des requêtes au-delà de vos keywords. Le Search term matching est activé par défaut au niveau campagne mais peut être désactivé au niveau ad group, ce qui vous permet de garder les autres fonctionnalités AI Max (text customization, final URL expansion) sans le matching étendu des requêtes dans certains ad groups.

### Configuration

| Paramètre | Niveau | Options |
|---------|-------|---------|
| Toggle Search term matching | Ad group | Activé / Désactivé |
| Activé par défaut | Ad group | Oui (quand AI Max est activé pour la campagne) |

### Fonctionnement

AI Max étend votre ciblage par keyword via trois méthodes :

| Méthode | Fonctionnement |
|--------|-------------|
| **Expansion requête large** | Étend vos keywords existants vers des matchs sémantiques plus larges (même comportement que le requête large standard) |
| **Matching basé sur les assets** | Utilise vos titres, descriptions et liens annexes pour identifier les requêtes pertinentes |
| **Matching basé sur la Landing Page** | Analyse le contenu de votre Landing Page pour matcher les requêtes liées à votre offre |

### Interaction avec les keywords

Le Search Term Matching ne remplace pas vos keywords. Il ajoute une couverture incrémentale :

| Type de requête | Source |
|------------|--------|
| Requêtes matchant vos keywords | Servies via les keywords (hiérarchie de matching standard) |
| Requêtes liées à vos assets mais ne matchant pas les keywords | Servies via le matching basé sur les assets |
| Requêtes liées à vos Landing Pages mais ne matchant pas les keywords | Servies via le matching basé sur la Landing Page |

### Interaction avec le Search Partner Network

Le trafic d'expansion AI Max peut augmenter significativement sur le Search Partner Network (SPN). Le volume de trafic et les taux de conversion du SPN sont souvent très différents du trafic Google Search.

| Comportement | Détails |
|----------|---------|
| Scaling SPN | L'expansion AI Max peut router une part disproportionnée d'impressions vers les Partenaires du Réseau de Recherche |
| Différence de performance | Les taux de conversion SPN sont généralement inférieurs à Google Search |
| Opt-out | Les campagnes AI Max peuvent se désinscrire du SPN (contrairement à PMax) |
| Reporting | La performance SPN est visible via la segmentation réseau dans les rapports de campagne |

### Distribution des types de correspondance

AI Max n'étend pas tous les types de correspondance de manière égale. Distribution observée :

| Match type du keyword | Part d'expansion AI Max | Pourquoi |
|-------------------|----------------------|-----|
| Keywords mot-clé exact | ~80% de l'expansion | Les keywords mot-clé exact ont le plus de marge pour un matching plus large |
| Keywords expression exacte | ~20% de l'expansion | Le expression exacte couvre déjà certaines variations |
| Keywords requête large | Minimal (<1%) | Matche déjà largement, peu d'expansion incrémentale possible |

Le matching sans keyword (basé sur les assets et la Landing Page) et l'expansion requête large contribuent à peu près également au trafic global AI Max.

> Cette distribution explique pourquoi les comptes utilisant principalement des keywords mot-clé exact voient la plus forte augmentation de volume avec AI Max : il y a plus de marge d'expansion.

---

## Text Customization

### Ce que ça fait

Text Customization (anciennement Automatically Created Assets) génère des titres et descriptions supplémentaires en utilisant :

| Source | Comment Google l'utilise |
|--------|-------------------|
| Votre copy publicitaire existant | Extrait les patterns et messages de vos titres et descriptions actuels |
| Contenu de la Landing Page | Tire du texte des titres de page, balises H1-H3, meta descriptions et contenu |
| Keywords de l'ad group | Utilise les thèmes de keywords pour générer des variations pertinentes |
| Requête de recherche de l'utilisateur | Adapte le texte généré à l'intention utilisateur au moment de l'impression |

### Méthodes de génération

| Méthode | Description |
|--------|-------------|
| **Extractive** | Tire des extraits directement des titres, descriptions et meta tags de la Landing Page |
| **IA générative** | Crée du nouveau texte en synthétisant le contenu de la Landing Page, les signaux utilisateur et vos assets existants |

### Configuration

| Paramètre | Niveau | Options |
|---------|-------|---------|
| Toggle Text Customization | Campagne | Activé / Désactivé |
| Activé par défaut | Campagne | Oui (quand AI Max est activé) |

### Cycle de rafraîchissement des assets

| Timing | Ce qui se passe |
|--------|-------------|
| Au moins toutes les 48 heures | Les assets sont revus et rafraîchis si le contenu de la Landing Page a changé |
| En continu | Les assets sont évalués sur leur performance et remplacés si sous-performants |

### Contrôles qualité

| Contrôle | Description |
|---------|-------------|
| Suppression d'asset | Supprimez tout asset généré depuis le rapport Assets qui ne correspond pas à votre marque |
| Filtre de performance | Les assets personnalisés Google ne sont servis que si la performance prédite est meilleure que vos assets uploadés |
| Conformité aux règles | Les assets générés sont vérifiés par rapport aux règles Google Ads |

### Text guidelines

Les text guidelines permettent de contrôler ce que les assets générés par l'IA peuvent ou ne peuvent pas dire.

| Type de guideline | Limite | Objectif |
|----------------|-------|---------|
| **Exclusions de termes** | Jusqu'à 25 mots/expressions | Exclure des mots ou expressions spécifiques du texte généré |
| **Restrictions de messages** | Jusqu'à 40 restrictions | Empêcher certains concepts, sujets ou approches de message |

**Exemples de restrictions de messages :**
- Ne pas mentionner les noms de concurrents
- Ne pas inclure de prix spécifiques
- Ne pas utiliser de langage promotionnel comme "meilleur" ou "moins cher"
- Éviter de mentionner des produits abandonnés
- Ne pas référencer des lieux spécifiques

**Configuration :**
1. Paramètres de la campagne > AI Max > Text Customization
2. Cliquer sur **Text guidelines**
3. Ajouter les exclusions de termes et/ou restrictions de messages
4. Enregistrer

---

## Final URL Expansion

### Ce que ça fait

Final URL Expansion remplace l'URL finale de votre annonce par une Landing Page différente de votre domaine quand Google prédit une meilleure performance pour une requête spécifique.

| Comportement | Détails |
|----------|---------|
| Pertinence de la requête | Google sélectionne une Landing Page dont le contenu correspond à l'intention de recherche |
| Thématique de l'ad group | Seules les URL thématiquement liées à votre ad group sont éligibles |
| Prédiction de performance | Les URL sont sélectionnées selon la performance de conversion prédite |

### Configuration

| Paramètre | Niveau | Options |
|---------|-------|---------|
| Toggle Final URL Expansion | Campagne | Activé / Désactivé |
| Activé par défaut | Campagne | Oui (quand AI Max est activé) |
| Dépendance | Campagne | Nécessite que Text Customization soit activé |

### Interaction avec le pinning RSA

| Final URL Expansion | Assets RSA pinnés |
|---------------------|-------------------|
| Désactivé | Servis normalement |
| Activé | Non respectés quand une URL différente est sélectionnée |

> Si vous avez besoin que les assets pinnés soient toujours servis, désactivez Final URL Expansion.

### URL Exclusions

Les URL exclusions ne sont disponibles que quand Final URL Expansion est activé. Elles empêchent certaines URL d'être sélectionnées comme Landing Pages.

| Méthode | Comment l'utiliser |
|--------|-----------|
| **URL à exclure** | Ajouter des URL spécifiques directement à la liste d'exclusion |
| **Labels personnalisés dans les page feeds** | Utiliser des labels personnalisés de votre page feed pour exclure des catégories d'URL |
| **Règles** | Créer des règles basées sur des patterns (ex : URL contenant "/checkout/", "/cart/", "/login/") |

**Configuration :**
1. Paramètres de la campagne > AI Max > Final URL Expansion (doit être activé)
2. Cliquer sur **Add URL exclusions**
3. Choisir la méthode : onglet URLs, onglet Custom labels, ou onglet Rules
4. Ajouter les exclusions
5. Appliquer et Enregistrer

> Les URL exclusions n'ont aucun effet si Final URL Expansion est désactivé, car Google utilise uniquement votre URL finale spécifiée.

### URL Inclusions

Les URL inclusions permettent d'ajouter des URL spécifiques que Final URL Expansion n'a pas captées par lui-même. Elles sont configurées au niveau ad group.

| Paramètre | Détails |
|---------|---------|
| Niveau | Ad group |
| Dépendance | Nécessite que Final URL Expansion soit activé |
| Objectif | Inclure des Landing Pages supplémentaires que le FUE a manquées ou pas encore découvertes |

> Quand les URL inclusions sont actives et qu'une URL incluse plus pertinente est choisie, les assets RSA pinnés ne sont pas utilisés (même comportement que Final URL Expansion).

---

## Locations of Interest

Locations of Interest est une fonctionnalité exclusive à AI Max qui permet d'atteindre des clients selon leur intention géographique dans les matchs sans keyword, au niveau ad group.

| Paramètre | Détails |
|---------|---------|
| Niveau | Ad group |
| Objectif | Cibler les utilisateurs selon les signaux d'intention géographique même quand les matchs viennent du ciblage sans keyword |
| Distinction | C'est séparé des paramètres de ciblage géographique au niveau campagne |

Ce contrôle n'est disponible que dans les campagnes AI Max. Les campagnes Search standard n'ont pas de ciblage d'intention géographique au niveau ad group.

---

## Contrôles de marque

### Inclusions de marque

Spécifiez les marques à associer à vos annonces. Les inclusions de marque peuvent être définies au niveau campagne et ad group, permettant un contrôle plus fin sur quels ad groups ciblent des requêtes de marque spécifiques.

| Paramètre | Niveau | Objectif |
|---------|-------|---------|
| Inclusions de marque | Campagne et ad group | Définir quelles requêtes liées aux marques vos annonces doivent matcher |

### Exclusions de marque

Empêchez les annonces d'apparaître pour des requêtes associées à des marques spécifiques. Les exclusions de marque sont au niveau campagne uniquement.

| Paramètre | Niveau | Objectif |
|---------|-------|---------|
| Exclusions de marque | Campagne | Bloquer les requêtes liées à des marques concurrentes ou non pertinentes |

### Configuration

1. Paramètres de la campagne > AI Max > Paramètres de marque
2. Ajouter les inclusions de marque (niveau campagne, ou ad group pour un contrôle plus fin)
3. Ajouter les exclusions de marque (niveau campagne)
4. Enregistrer

### Limitations

Les contrôles de marque matchent les noms de marque exacts mais ne prennent pas en compte les variations :

| Limitation | Impact | Solution |
|------------|--------|------------|
| Fautes d'orthographe non détectées | Les requêtes de marque avec des fautes (ex : "Nikee" au lieu de "Nike") peuvent être servies dans des campagnes hors-marque ou contourner les exclusions | Utiliser des listes de mots-clés à exclure incluant les fautes courantes |
| Abréviations non détectées | Les noms de marque raccourcis (ex : "MS" pour "Microsoft") contournent les filtres | Ajouter les abréviations aux listes de mots-clés à exclure |
| Variations d'ordre des mots | Des arrangements différents (ex : "Ads Google" vs "Google Ads") peuvent contourner les filtres | Construire des listes complètes de mots-clés à exclure couvrant les variations |

**Recommandation :** Traitez les contrôles de marque comme la première couche de défense, pas la solution complète. Utilisez les listes de mots-clés à exclure comme mécanisme principal pour une séparation stricte marque/hors-marque.

> Pour un guide complet sur la séparation de marque : voir [Brand Separation Reference](<Search - Séparation de marque.md>).

---

## Reporting

### Rapport sur les termes de recherche

Nouvelles colonnes et valeurs pour AI Max :

| Colonne | Valeur AI Max | Signification |
|--------|-------------|---------|
| Match type | "AI Max" | Requête matchée via le ciblage sans keyword d'AI Max |
| Source | "Requête large expansion" | Requête issue de l'expansion requête large |
| Source | "Keywordless matching" | Requête issue du matching basé sur les assets ou la Landing Page |
| Titre | (affichée) | Le titre servi pour ce terme de recherche |
| URL | (affichée) | La Landing Page servie pour ce terme de recherche |

**Nouvelle vue :** Sélectionnez "Search terms and landing pages from AI Max" dans le menu déroulant des termes de recherche pour voir le parcours client complet (terme de recherche + titre + Landing Page + campagne + ad group).

> En filtrant par match type = "AI Max", le rapport peut afficher des chiffres plus bas car ce filtre n'inclut pas les données agrégées "Other search terms".

**Volume de données :** La vue combinée terme de recherche + titre + Landing Page d'AI Max peut produire de très gros jeux de données dans les comptes à fort volume (des dizaines de milliers de lignes après filtrage). Prévoyez une analyse par script plutôt qu'une revue manuelle pour les comptes avec un trafic AI Max significatif.

**Accès GAQL :** L'entité de rapport `ai_max_search_term_ad_combination_view` permet d'interroger les combinaisons terme de recherche, titre et Landing Page d'AI Max par programmation via les scripts Google Ads ou l'API.

### Comportements de reporting connus

Le reporting AI Max présente plusieurs comportements qui affectent l'interprétation des données de performance :

| Comportement | Ce qui se passe | Implication |
|----------|--------------|-------------|
| Chevauchement d'attribution | AI Max s'attribue des impressions pour des requêtes que vos keywords mot-clé exact et expression exacte matchent aussi | Les totaux AI Max ne représentent pas des gains incrémentaux : certaines conversions auraient eu lieu via les keywords existants |
| Incohérence de hiérarchie des types de correspondance | La priorité standard (exact > phrase > broad) n'est pas toujours respectée | Les keywords mot-clé exact peuvent perdre des impressions au profit d'AI Max même pour des requêtes identiques |
| Attribution sans keyword | Certaines entrées du rapport montrent une colonne keyword vide | Impossible de tracer pourquoi votre annonce a été servie pour cette requête : aucune association keyword n'existe |

### Isoler la performance AI Max

Pour évaluer l'impact AI Max avec précision, configurez votre structure de keywords avant d'activer AI Max :

**Étape 1 : Ajouter des variantes requête large**

Avant d'activer AI Max, ajoutez des versions requête large de tous vos keywords mot-clé exact et expression exacte dans les mêmes ad groups.

| Avant | Après |
|--------|-------|
| [crèche près de moi] (exact) | [crèche près de moi] (exact) |
| "services de crèche" (phrase) | "services de crèche" (phrase) |
| - | crèche près de moi (broad) |
| - | services de crèche (broad) |

**Étape 2 : Activer AI Max**

Une fois les variantes requête large en place, activez AI Max.

**Étape 3 : Comparer les performances**

Avec cette structure, vous pouvez comparer :

| Comparaison de métriques | Ce que ça vous dit |
|-------------------|-------------------|
| Performance exact/phrase vs performance broad | Le broad inclut l'expansion AI Max : la différence approxime la contribution AI Max |
| Taux de conversion par match type | Si l'expansion AI Max convertit à des taux inférieurs |
| CPA par match type | Si les requêtes AI Max sont plus coûteuses à convertir |

**Étape 4 : Dédupliquer pour la vraie incrémentalité (avancé)**

Pour une mesure précise de l'incrémentalité :

1. Exporter le rapport sur les termes de recherche filtré au match type AI Max
2. Exporter le rapport sur les termes de recherche filtré aux types de correspondance exact et phrase
3. Identifier les termes de recherche en commun (requêtes apparaissant dans les deux exports)
4. Soustraire les conversions en commun du total AI Max
5. Les conversions AI Max restantes approximent la vraie valeur incrémentale

> Cette déduplication est un travail manuel sur tableur. La plupart des annonceurs passent cette étape et acceptent que le reporting AI Max est directionnel, pas précis.

### Rapport des keywords

Nouvelles lignes de synthèse en bas du rapport :

| Ligne | Ce qu'elle montre |
|-----|---------------|
| **Total: AI Max expanded matches** | Trafic issu des keywords requête large étendus par AI Max |
| **Total: AI Max landing page matches** | Trafic issu des requêtes matchées via les Landing Pages ou assets (sans keyword) |

### Rapport des assets

L'onglet "Expanded final URL assets" montre :

| Colonne | Valeur | Signification |
|--------|-------|---------|
| Source | "Automatically created" | Asset généré par Text Customization |
| Statut | Cercle vert | Asset activé |
| Statut | (autre) | Cliquer pour supprimer les assets qui ne correspondent pas à votre marque |

### Rapport des Landing Pages

| Colonne | Valeur | Signification |
|--------|-------|---------|
| Selected by | "AI Max" | Landing Page sélectionnée par Final URL Expansion |
| Selected by | "Advertiser" | Landing Page fournie par l'annonceur comme URL finale |

---

## AI Max vs PMax vs DSA vs Requête large

AI Max hérite de technologies fondamentales de produits existants mais ajoute des fonctionnalités exclusives. Ce tableau compare les capacités des quatre principaux mécanismes d'expansion :

| Capacité | AI Max | PMax | DSA | Requête large |
|------------|--------|------|-----|-------------|
| Ciblage par keyword requête large | Oui | Oui | Oui | Oui |
| Ciblage sans keyword basé sur la Landing Page | Oui | Oui | Oui | Non |
| Ciblage sans keyword basé sur les assets | Oui | Oui | Non | Non |
| Text customization (texte généré par IA) | Oui | Oui | Oui | Oui |
| Text guidelines | Oui | Oui | Oui | Oui |
| Page feeds | Non | Non | Oui | N/A |
| Inclusions de marque au niveau ad group | Oui | Non | Non | Non |
| Paramètres de localisation au niveau ad group | Oui | Non | Non | Non |
| URL inclusions (ad group) | Oui | Non | Non | Non |
| Opt-out Partenaires du Réseau de Recherche | Oui | Non | Oui | Oui |
| Vue combinée terme de recherche + Landing Page | Oui | Oui | Non | Non |
| Colonne source du match type | Oui | Oui | Oui | Non |

> Les fonctionnalités exclusives AI Max (inclusions de marque au niveau ad group, paramètres de localisation, URL inclusions) offrent des contrôles granulaires non disponibles dans les autres types de campagne.

---

## Mise à niveau des paramètres existants

Les campagnes ayant activé text customization, brand settings ou le paramètre requête large de campagne avant d'adopter AI Max verront ces paramètres absorbés dans le panneau AI Max. Après l'activation d'AI Max, ces fonctionnalités sont gérées via les paramètres AI Max.

| Paramètre préexistant | Après activation AI Max |
|---------------------|------------------------|
| Text customization (automatically created assets) | Intégré dans AI Max |
| Paramètres de marque | Intégré dans AI Max |
| Paramètre requête large de campagne | Intégré dans AI Max |

---

## Compatibilité du tracking template

### Le problème

Le Final URL Expansion d'AI Max substitue votre URL fournie par des Landing Pages dynamiques. Si votre tracking template n'est pas configuré correctement, cela peut provoquer des erreurs 404.

### Patterns de tracking template requis

Pour la compatibilité AI Max, utilisez ces patterns avec la balise `{lpurl}` :

| Pattern | Quand l'utiliser |
|---------|-------------|
| `{lpurl}?` | Quand les paramètres de tracking suivent la Landing Page |
| `{lpurl}&` | Quand on ajoute à des paramètres existants |
| `{lpurl}#` | Quand on utilise le tracking par ancre/fragment |
| `{lpurl}` | Quand aucun paramètre de tracking supplémentaire n'est nécessaire |

### Patterns qui posent problème

| Pattern | Problème |
|---------|---------|
| URL statique (ex : `https://www.domain.com/`) | Les utilisateurs sont dirigés vers l'URL statique au lieu de la Landing Page dynamique |
| Usage non standard de `{lpurl}` (ex : `foo={lpurl}value`) | Erreurs 404 sur les Landing Pages dynamiques |

### Vérification

Avant d'activer AI Max avec Final URL Expansion :

1. Tester votre tracking template avec un exemple d'URL dynamique de votre site
2. Vérifier que la Landing Page se charge correctement avec les paramètres de tracking appliqués
3. Vérifier que votre plateforme analytics reçoit les données de tracking

---

## Limitations API et Editor

| Outil | Limitation |
|------|-----------|
| API Google Ads | Paramètres AI Max pas encore disponibles |
| Google Ads Editor | Paramètres AI Max pas encore disponibles |
| Impact | Activer ou désactiver AI Max dans l'interface web peut provoquer des erreurs API pour les campagnes gérant text customization ou brand settings |

> Informez votre équipe avant d'activer ou désactiver AI Max si vous gérez des campagnes via API ou Editor.

---

## Période d'apprentissage

Après avoir activé AI Max :

| Période | Recommandation |
|--------|---------------|
| 2 premières semaines | Éviter les modifications (ajout de mots-clés à exclure, ajustement des paramètres) |
| Objectif | Permettre à Google Ads d'apprendre et d'optimiser |
| Après l'apprentissage | Analyser les rapports et optimiser selon les données de performance |

---

## Documents liés

| Document | Relation |
|----------|-------------|
| [AI Max for Search Mental Model](<Search - Activer AI Max.md>) | Cadre stratégique pour savoir quand activer AI Max |
| [Match Type Reference](<Search - Types de correspondance.md>) | Comment AI Max étend le comportement du requête large |
| [Dynamic Search Ads Mental Model](<Search - Dynamic Search Ads.md>) | Approche alternative de ciblage sans keyword |
| [DSA Targeting Options Reference](<Search - Options de ciblage DSA.md>) | Spécifications de ciblage DSA (AI Max n'a pas de page feeds) |
| [Search Campaign Structure Mental Model](<Search - Structure de campagne Search.md>) | Contexte de structure de campagne pour le placement d'AI Max |
