# Catalogue de mots-clés à exclure

> **Plateforme :** Google Ads
> **Catégorie :** Search
> **Type :** Catalogue
> **Mis à jour :** 2026-05-07

## Structure des listes de mots-clés à exclure

Chaque compte a besoin d'au moins trois listes de mots-clés à exclure. Segmentez davantage au fur et à mesure que votre compte grossit.

### Listes requises (minimum)

| Liste | Portée | Liée à |
|-------|--------|--------|
| Keywords non pertinents | Termes qui ne convertissent jamais pour votre business | Toutes les campagnes |
| Keywords/ngrams sous-performants | Termes avec données prouvant une mauvaise performance | Toutes les campagnes |
| Keywords de marque | Vos propres termes de marque | Campagnes non-marque uniquement |

### Listes optionnelles (recommandées à l'échelle)

| Liste | Portée | Liée à |
|-------|--------|--------|
| Marques concurrentes | Concurrents nommés sur lesquels vous ne voulez pas enchérir | Toutes les campagnes (sauf si vous avez des campagnes concurrents) |
| Marques spécifiques non vendues | Marques de votre catégorie que vous ne distribuez pas | Campagnes Shopping et Search |
| Prévention spam | Termes explicites, frauduleux ou absurdes | Toutes les campagnes |
| Exclusions DSA | Exclusions au niveau page pour les annonces dynamiques | Campagnes DSA uniquement |

> 💡 **Utilisez des listes partagées de mots-clés à exclure :** Les listes partagées au niveau compte appliquent les changements à toutes les campagnes liées en une fois. N'ajoutez jamais le même négatif campagne par campagne individuellement.

---

## Types de correspondance par défaut pour les négatifs

Avant d'ajouter un négatif, choisissez le type de correspondance correct.

| Type de correspondance | Utiliser quand | Exemple |
|----------------------|---------------|---------|
| Négatif large (défaut) | Bloqueurs de mot unique ou bloqueurs multi-mots dans n'importe quel ordre | `free` bloque toute requête contenant "free" |
| Négatif expression | Séquences de ngrams spécifiques indiquant une mauvaise intention | `"how to"` bloque les requêtes contenant "how to" dans cet ordre |
| Négatif exact | Bloquer une requête précise sans affecter les termes liés | `[crm software definition]` bloque uniquement cette requête exacte |

> ⚠️ **Le négatif large est le défaut :** Utilisez l'expression pour les ngrams multi-mots où l'ordre compte. Utilisez l'exact uniquement quand le large ou l'expression sur-bloquerait.

> ↪️ Pour la mécanique complète des types de correspondance et les règles de résolution de conflits, voir [Negative Keyword Reference](<Search - Mots-clés à exclure.md>).

---

## Négatifs Lead Gen (par catégorie)

> ⚠️ **Pas de négatifs universels :** Chaque compte est unique. Ajouter des listes de mots-clés à exclure "universels" ou par défaut sans les vérifier par rapport à votre business spécifique peut bloquer du trafic pertinent et vous tirer une balle dans le pied. Construisez toujours vos listes de négatifs à partir de vos propres données de rapports de termes de recherche et de recherche de keywords. Les patterns par vertical ci-dessous sont des points de départ pour évaluation, pas des listes prêtes à appliquer.

### Exclusions de type de service

| Négatif | Type de correspondance | Pourquoi ça fonctionne |
|---------|----------------------|------------------------|
| `volunteer` | Large | Engagement non rémunéré, pas de valeur commerciale |
| `pro bono` | Large | Recherche de services gratuits |
| `nonprofit` | Large | Cherche souvent des services donnés (sauf si vous servez les nonprofits) |
| `government grant` | Large | Cherche du financement, pas un achat de services |
| `"do it yourself"` | Expression | Intention self-service, pas de recrutement d'un professionnel |

### Termes éducation/certification

| Négatif | Type de correspondance | Pourquoi ça fonctionne |
|---------|----------------------|------------------------|
| `certification` | Large | Cherche des crédentiels, pas un prestataire |
| `course` | Large | Intention d'apprentissage, pas d'achat de service |
| `degree` | Large | Recherche de programme académique |
| `training` | Large | Auto-amélioration, pas intention d'achat |
| `exam` | Large | Contexte test/crédentiel |

### Mauvaise étape d'achat

| Négatif | Type de correspondance | Pourquoi ça fonctionne |
|---------|----------------------|------------------------|
| `sample` | Large | Cherche des exemples gratuits, pas d'engagement vers un service |
| `example` | Large | Phase de recherche, faible probabilité de conversion |
| `case study` | Large | Intention recherche/apprentissage (sauf si votre tunnel cible ça) |
| `comparison` | Large | Recherche précoce, faible conversion immédiate |
| `vs` | Large | Achat comparatif, souvent pas prêt à acheter |

> 💡 **Nuance Lead Gen :** Les termes comme "comparison" et "case study" peuvent être légitimes pour du Lead Gen haut du tunnel. N'ajoutez ces négatifs que si vos campagnes ciblent exclusivement l'intention bas du tunnel.

---

## Négatifs SaaS (par catégorie)

### Termes intégration/compatibilité

| Négatif | Type de correspondance | Pourquoi ça fonctionne |
|---------|----------------------|------------------------|
| `plugin` | Large | Cherche des add-ons, pas un produit autonome |
| `extension` | Large | Intention extension navigateur, pas achat SaaS |
| `api` | Large | Recherche développeur, pas achat utilisateur final (sauf si vous vendez un accès API) |
| `github` | Large | Intention développeur open-source |
| `script` | Large | Automatisation DIY, pas recherche d'outil payant |

### Termes de recherche de prix

| Négatif | Type de correspondance | Pourquoi ça fonctionne |
|---------|----------------------|------------------------|
| `pricing` | Large | Souvent juste de la recherche comparative sans intention d'achat |
| `cost` | Large | Similaire à pricing : stade précoce, faible conversion |
| `"how much"` | Expression | Recherche prix uniquement sans signaux d'engagement |
| `discount code` | Large | Cherche des promotions clients existants, faible valeur nouveau client |
| `lifetime deal` | Large | Segment chasseur de bonnes affaires, souvent faible LTV |

> ⚠️ **"Pricing" et "cost" sont controversés :** Certaines entreprises SaaS convertissent bien sur les requêtes de prix. Vérifiez vos données de rapport sur les termes de recherche avant de les ajouter. Si votre page de tarifs convertit, gardez ces termes actifs.

### Mauvaise catégorie de produit

| Négatif | Type de correspondance | Pourquoi ça fonctionne |
|---------|----------------------|------------------------|
| `excel` | Large | Cherche des solutions tableur, pas SaaS (sauf si votre outil remplace Excel) |
| `spreadsheet` | Large | Même qu'Excel : préférence outil manuel |
| `"google sheets"` | Expression | Préférence pour l'alternative gratuite |
| `wordpress` | Large | Recherche spécifique CMS, pas SaaS (sauf intégration WordPress) |
| `self-hosted` | Large | Cherche du on-premise, pas du cloud SaaS |

---

## Négatifs Ecommerce (par catégorie)

### Termes occasion/seconde main

| Négatif | Type de correspondance | Pourquoi ça fonctionne |
|---------|----------------------|------------------------|
| `used` | Large | Cherche du secondhand, pas des produits neufs |
| `refurbished` | Large | Cherche du pré-possédé à prix réduit |
| `secondhand` | Large | Même que used : intention pré-possédé |
| `"for sale by owner"` | Expression | Vente entre particuliers, pas retail |
| `vintage` | Large | Intention antique/rétro, pas achat produit neuf |

> ⚠️ **Exception : vendeurs de reconditionné :** Si vous vendez des produits reconditionnés ou vintage, n'ajoutez pas ces négatifs.

### Termes location/non-achat

| Négatif | Type de correspondance | Pourquoi ça fonctionne |
|---------|----------------------|------------------------|
| `rent` | Large | Intention de location, pas d'achat |
| `lease` | Large | Intention de leasing, pas d'achat ferme |
| `borrow` | Large | Intention d'usage temporaire |
| `"for rent"` | Expression | Recherche explicite de location |
| `subscription box` | Large | Cherche un abonnement récurrent, pas un achat unique (sauf si vous vendez des box) |

### Termes réparation/pièces

| Négatif | Type de correspondance | Pourquoi ça fonctionne |
|---------|----------------------|------------------------|
| `repair` | Large | Réparation du produit existant, pas achat de neuf |
| `fix` | Large | Même que repair : intention maintenance |
| `replacement parts` | Large | Cherche des composants, pas le produit complet |
| `manual` | Large | Cherche la documentation produit, pas un achat |
| `troubleshoot` | Large | Résolution de problème, pas achat |

### Mauvais attributs produit

| Négatif | Type de correspondance | Pourquoi ça fonctionne |
|---------|----------------------|------------------------|
| `wholesale` | Large | Intention acheteur en gros, mauvais type de client pour le retail |
| `bulk` | Large | Même que wholesale : intention quantité B2B |
| `commercial` | Large | Grade business/industriel, pas retail consommateur |
| `industrial` | Large | Contexte fabrication, pas consommateur |
| `sample` | Large | Cherche des échantillons gratuits, pas un achat |

> 💡 **Exception wholesale :** Si vous vendez en B2B ou proposez du pricing wholesale, déplacez ces négatifs en négatifs au niveau campagne sur les campagnes consommateur uniquement.

---

## Négatifs de mots-clés de marque

Les négatifs de marque empêchent vos termes de marque de se déclencher dans les campagnes non-marque. Ça garde les données de performance marque et non-marque propres.

### Vos propres termes de marque

Ajoutez toutes les variations de votre nom de marque à une liste partagée liée aux campagnes non-marque.

| Pattern | Exemple (marque fictive "Acme CRM") | Type de correspondance |
|---------|-------------------------------------|----------------------|
| Nom complet de marque | `acme crm` | Large |
| Abréviation de marque | `acme` | Large |
| Faute d'orthographe courante | `acmee crm` | Large |
| Marque + produit | `acme crm software` | Large |
| Domaine de marque | `acmecrm.com` | Large |

### Termes de marques concurrentes

Si vous n'avez pas de campagnes concurrents, ajoutez les noms de marques concurrentes à une liste partagée liée à toutes les campagnes.

| Pattern | Exemple | Type de correspondance |
|---------|---------|----------------------|
| Nom du concurrent | `[nom concurrent]` | Large |
| Concurrent + produit | `[concurrent] software` | Large |
| Domaine concurrent | `[concurrent].com` | Large |
| Faute d'orthographe concurrent | `[faute concurrent]` | Large |

> ⚠️ **Si vous avez des campagnes concurrents,** liez la liste de négatifs concurrents à toutes les campagnes sauf vos campagnes de ciblage concurrent. Ça isole le trafic concurrent dans la bonne campagne.

---

## Patterns d'exclusion de pages DSA

Les annonces dynamiques peuvent matcher n'importe quelle page indexée de votre site. Excluez les pages qui gaspillent du budget ou créent de mauvaises expériences utilisateur.

### Exclusions basées sur l'URL

| Type de page | Pattern d'URL à exclure | Pourquoi exclure |
|-------------|------------------------|------------------|
| Conditions générales | `/terms`, `/terms-and-conditions` | Page légale, pas d'intention de conversion |
| Politique de confidentialité | `/privacy`, `/privacy-policy` | Page légale, pas d'intention de conversion |
| Page contact | `/contact`, `/contact-us` | Faible valeur commerciale comme Landing Page |
| Page à propos | `/about`, `/about-us` | Informationnel, pas transactionnel |
| Panier/checkout | `/cart`, `/checkout` | Page en cours de transaction, confusant comme point d'entrée |
| Connexion/compte | `/login`, `/account`, `/password` | Flux client existant, pas acquisition |
| Index blog | `/blog` (page index uniquement) | Trop large pour une diffusion d'annonces ciblée |
| Aide/support | `/help`, `/support`, `/faq` | Intention support post-achat |

> ⚠️ **N'excluez pas automatiquement toutes les pages blog :** Les articles de blog individuels peuvent générer du trafic DSA pertinent. Excluez la page index du blog, puis surveillez les rapports de termes de recherche pour les articles individuels. Excluez des articles spécifiques uniquement s'ils génèrent du trafic non pertinent.

### Exclusions basées sur le contenu

Utilisez les règles de page feed ou les paramètres d'exclusion DSA pour bloquer les pages contenant des signaux de contenu spécifiques.

| Signal de contenu | Pourquoi exclure |
|-------------------|------------------|
| "out of stock" | Envoie du trafic vers des produits indisponibles, gaspille du budget |
| "unavailable" | Même que rupture de stock : pas de conversion possible |
| "coming soon" | Produit pas encore disponible à l'achat |
| "discontinued" | Produit plus vendu |
| "sold out" | Indisponibilité temporaire, crée une mauvaise expérience |
| "404" ou "page not found" | Page cassée, rebond garanti |

### Exclusion DSA par type de page (spécifique ecommerce)

| Type de page | Exclure ? | Justification |
|-------------|----------|---------------|
| Pages produit | Non | Pages de conversion principales |
| Pages catégorie | Tester d'abord | Peuvent fonctionner pour les requêtes larges |
| Articles de blog | Tester d'abord | Exclure seulement si les données montrent une mauvaise performance |
| Pages marque/fabricant | Tester d'abord | Peuvent capturer l'intention au niveau marque |
| Pages soldes/déstockage | Non | Fort potentiel de conversion |
| Guides de tailles/specs | Oui | Informationnel, faible conversion |
| Info livraison | Oui | Page post-décision, pas découverte |

---

### Référence rapide : bibliothèque support

| Document | Type | Utilisé pour |
|----------|------|-------------|
| [Negative Keyword Reference](<Search - Mots-clés à exclure.md>) | Référence | Mécanique des types de correspondance, résolution de conflits, règles de gestion des listes |
| [Search Term Report Reference](<Search - Rapport sur les termes de recherche.md>) | Référence | Lecture et interprétation des données de termes de recherche |
| [Match Type Reference](<Search - Types de correspondance.md>) | Référence | Comportement des types de correspondance positifs et négatifs |

---

### SOPs liés

| SOP | Relation |
|-----|----------|
| [SOP - Construire la structure de campagne Search](<Search - Construire la structure de campagne Search.md>) | Utilise ce document pour la population initiale de la liste de négatifs (Phase 3.3) |
| [SOP - Promouvoir les termes de recherche en mots-cles](<Search - Promouvoir les termes de recherche en keywords.md>) | Workflow inverse : promeut les bons termes, ce document bloque les mauvais |
| [SOP - Analyser les rapports de termes de recherche](<Search - Analyser les rapports de termes de recherche.md>) | Alimente les négatifs de nouveaux termes non pertinents dans les catégories de ce document |
| [SOP - Executer une analyse N-gram](<Search - Exécuter une analyse N-gram.md>) | Alimente les négatifs basés performance depuis les données N-gram agrégées |

---

### Documents liés

| Document | Relation |
|----------|----------|
| [Negative Keyword Reference](<Search - Mots-clés à exclure.md>) | Document compagnon : mécanique et règles |
| [Search Term Report Reference](<Search - Rapport sur les termes de recherche.md>) | Source de données pour identifier de nouveaux négatifs |
| [Match Type Reference](<Search - Types de correspondance.md>) | Comportement des types de correspondance pour les keywords positifs et négatifs |
