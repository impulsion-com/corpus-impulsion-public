# AI Max pour Search

> **Plateforme :** Google Ads
> **Catégorie :** Search
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Ce document vous aide à décider quand et comment activer AI Max pour Search, en comprenant à la fois les compromis en termes de contrôle et les réalités du reporting qui affectent l'évaluation de la performance.

> AI Max peut transformer des campagnes ciblées en campagnes floues. Les fonctionnalités sont puissantes, mais la configuration par défaut cède un contrôle significatif à Google. Plus important encore, le reporting AI Max peut faire paraître la performance meilleure qu'elle ne l'est réellement. Activez délibérément, configurez défensivement, et interprétez les rapports avec scepticisme.

---

## Ce que c'est / Ce que ce n'est PAS

**Ce document :**

- Explique ce qu'est réellement AI Max (un matching de type DSA sans keyword intégré aux campagnes Search)
- Révèle la réalité du reporting : comment l'attribution AI Max peut induire en erreur
- Fournit le cadre d'évaluation pour déterminer si AI Max convient à votre situation
- Cartographie le profil de risque de chaque fonctionnalité AI Max
- Recommande une structure de keywords pour permettre une mesure précise de la performance
- Identifie quand éviter complètement AI Max

**Ce document NE couvre PAS :**

- La documentation des mécaniques techniques de chaque fonctionnalité (Voir : [AI Max for Search Reference](<Search - AI Max - mécanismes techniques.md>))
- Les instructions de configuration étape par étape (Voir : SOP: Configure AI Max for Search, planifié)
- Les options de ciblage DSA et les page feeds (Voir : [DSA Targeting Options Reference](<Search - Options de ciblage DSA.md>))
- Le comportement général des types de correspondance (Voir : [Match Type Reference](<Search - Types de correspondance.md>))

---

## Ce qu'est réellement AI Max

AI Max n'est pas un nouveau type de campagne. C'est un ensemble de fonctionnalités ajoutées aux campagnes Search existantes :

| Ce que c'est | Ce que ce n'est PAS |
|------------|---------------|
| Un add-on aux campagnes Search standard | Un type de campagne autonome comme PMax |
| Un matching de type DSA sans keyword intégré au Search | Un remplacement du ciblage par keyword |
| Des fonctionnalités optionnelles activables individuellement | Un interrupteur tout-ou-rien |
| Disponible dans l'interface web Google Ads | Disponible via l'API ou l'Editor (début 2026) |

### Les trois couches de matching

Avec AI Max activé, votre campagne Search peut matcher les requêtes via trois mécanismes :

| Couche | Comment les requêtes matchent | Votre contrôle |
|-------|------------------|--------------|
| **1. Keywords** | Ciblage par keyword traditionnel (exact, phrase, requête large) | Contrôle total via la sélection de keywords et les types de correspondance |
| **2. Matching basé sur les assets** | Google analyse vos titres, descriptions et liens annexes pour trouver des requêtes liées | Limité : vous contrôlez quels assets existent, mais pas comment Google les interprète |
| **3. Matching basé sur les Landing Pages** | Google crawle vos Landing Pages et matche les requêtes liées au contenu | Limité : vous contrôlez quelles pages sont ciblées, mais pas comment Google interprète le contenu |

---

## La réalité du reporting

C'est la section la plus importante de ce document. Le reporting AI Max peut faire paraître la performance meilleure qu'elle ne l'est réellement à cause du fonctionnement de l'attribution.

### AI Max s'attribue des requêtes que vous couvrez déjà

Quand AI Max est activé, il diffuse souvent des annonces pour les mêmes requêtes que vos keywords mot-clé exact et expression exacte ciblent déjà. Quand cela arrive, AI Max s'attribue des conversions que vous auriez reçues de toute façon via vos keywords existants.

| Ce que le rapport montre | Ce qui s'est réellement passé |
|----------------------|------------------------|
| "AI Max a généré 50 conversions" | AI Max a diffusé des annonces pour des requêtes que vos keywords matchent aussi |
| Vous pensez qu'AI Max a apporté de la valeur incrémentale | Vous ne pouvez pas savoir combien de conversions étaient vraiment nouvelles |

> Les totaux AI Max ne sont pas des gains incrémentaux. Ils incluent des conversions que vos keywords existants auraient capturées sans AI Max.

### Sans variantes requête large, vous ne pouvez pas isoler la performance AI Max

Si votre campagne utilise uniquement des keywords mot-clé exact et expression exacte, activer AI Max crée un problème d'attribution :

| Configuration | Problème |
|-------|---------|
| Keywords exact/phrase uniquement + AI Max activé | Les données AI Max sont attribuées à vos keywords exact/phrase dans les rapports |
| Pas de versions requête large de vos keywords | Vous ne pouvez pas voir comment AI Max performe séparément de vos keywords |

Le résultat : vous ne pouvez pas évaluer si chaque match type performe bien car AI Max contamine les données.

### La hiérarchie des types de correspondance n'est pas systématiquement respectée

La hiérarchie standard des types de correspondance de Google (exact > phrase > broad) ne s'applique pas systématiquement avec AI Max. Même des keywords identiques peuvent être attribués différemment :

| Ce qui devrait se passer | Ce qui se passe parfois |
|-------------------|----------------------|
| La recherche "daycare near me" matche le keyword mot-clé exact [daycare near me] | AI Max réclame l'impression à la place |
| Votre keyword mot-clé exact reçoit le crédit | L'AI Max d'un autre ad group reçoit le crédit |

Cela rend l'analyse de performance au niveau keyword peu fiable quand AI Max est actif.

### Les keywords requête large modifier hérités gonflent le chevauchement

Les keywords requête large modifier (BMM) hérités (retirés en 2021) se comportent maintenant comme du expression exacte mais s'affichent toujours comme "Requête large" dans la colonne match type. Quand AI Max étend ces keywords, cela ressemble à un chevauchement significatif entre AI Max et vos keywords "requête large" existants, mais l'expansion est attendue : AI Max ajoute un matching réellement plus large que ces keywords ne réalisent plus seuls.

Si vous voyez des taux de chevauchement AI Max élevés avec des keywords requête large, vérifiez si ces keywords sont des entrées BMM héritées avant de conclure que AI Max cannibalise.

### Certains termes de recherche n'ont pas d'attribution keyword

Avec AI Max activé, certaines entrées du rapport sur les termes de recherche affichent une colonne keyword vide. Ce sont des requêtes qui ont matché via le contenu de la Landing Page ou des assets sans aucune association keyword. Vous n'avez aucune visibilité sur pourquoi votre annonce a été diffusée pour cette requête.

---

## Décision sur la structure des keywords

AI Max est conçu pour fonctionner avec le requête large. Si vous n'utilisez pas déjà le requête large, n'ajoutez pas de keywords requête large juste pour tester AI Max. Suivez plutôt cette séquence :

### Étape 1 : Testez d'abord le requête large (si pas déjà utilisé)

Avant de considérer AI Max, lancez une expérimentation requête large correcte :

1. **Créez une expérimentation 50/50** comparant votre campagne phrase/exact actuelle contre une variante requête large
2. **Lancez pendant 4-6 semaines** avec un budget suffisant pour générer des données statistiquement significatives
3. **Évaluez les résultats :** Le requête large délivre-t-il un CPA/ROAS acceptable avec un uplift de volume significatif ?

| Résultat de l'expérimentation | Étape suivante |
|-------------------|-----------|
| Le requête large performe bien | Continuez avec le requête large, puis considérez AI Max |
| Le requête large performe mal | N'activez pas AI Max : si le requête large échoue, AI Max échouera plus fort |

> Ne sautez pas l'expérimentation requête large. Ajouter des keywords requête large uniquement pour tester AI Max est faire les choses à l'envers. L'objectif du requête large est d'étendre la portée de manière profitable : c'est ça le test. AI Max est une expansion supplémentaire au-dessus du requête large.

### Étape 2 : Activez AI Max depuis une base requête large

Une fois que vous avez un requête large qui fonctionne (avec ou sans DSA), AI Max devient une expansion logique :

| Point de départ | Prêt pour AI Max |
|----------------|------------------|
| Phrase/exact uniquement | Pas prêt : testez d'abord le requête large |
| Requête large performant | Prêt : AI Max est une expansion incrémentale |
| Requête large + DSA performant | Prêt : AI Max peut remplacer la fonctionnalité DSA |

### Isoler la performance AI Max

Avec le requête large déjà en place, vous pouvez approximer la contribution incrémentale d'AI Max en comparant :

- Performance requête large pré-AI Max (baseline)
- Performance requête large post-AI Max (inclut l'expansion AI Max)

La différence approxime la contribution d'AI Max, bien que le chevauchement d'attribution signifie que c'est directionnel, pas précis.

---

## Le compromis de contrôle

AI Max inclut trois fonctionnalités principales qui étendent la façon dont vos annonces matchent les requêtes :

| Fonctionnalité | Ce qu'elle fait | Risque de contrôle | Risque de reporting |
|---------|-------------|--------------|----------------|
| **Search Term Matching** | Matche les requêtes basées sur les Landing Pages et assets, pas uniquement les keywords | 🟡 Moyen : S'étend au-delà de votre liste de keywords, mais reste thématiquement lié | 🔴 Élevé : Chevauchement d'attribution avec les keywords existants |
| **Text Customization** | L'IA génère des titres et descriptions depuis votre Landing Page | 🟡 Moyen : Le texte généré peut ne pas correspondre à votre ton de marque ou faire des affirmations non autorisées | 🟢 Faible : Le reporting est direct |
| **Final URL Expansion** | Envoie le trafic vers des Landing Pages sélectionnées dynamiquement | 🔴 Élevé : Le trafic peut atterrir sur des pages que vous n'aviez pas l'intention de promouvoir | 🟢 Faible : Le reporting montre quelles URLs ont été servies |

> Le risque fondamental : Une campagne ciblée "logiciel CRM B2B" peut commencer à enchérir sur des termes génériques comme "logiciel professionnel" ou "outils de productivité" trouvés ailleurs sur votre site. Google présente AI Max comme une simple mise à niveau, mais l'impact structurel est significatif.

---

## Réalité de la gestion des termes de recherche

### Mélange marque/hors-marque

Les contrôles de marque AI Max (inclusions et exclusions) ont des limitations significatives :

| Contrôle | Ce qu'il capture | Ce qu'il manque |
|---------|-----------------|----------------|
| Exclusions de marque | Correspondances exactes du nom de marque | Fautes de frappe, abréviations, variations d'ordre des mots |
| Inclusions de marque | Correspondances exactes du nom de marque | Fautes de frappe courantes utilisées par vos clients |

**Implication :** Si vous avez besoin d'une séparation marque/hors-marque stricte, les contrôles de marque seuls sont insuffisants.

### Scaling des requêtes concurrentes

Sans exclusions de marque configurées avant d'activer AI Max, le matching étendu peut scaler agressivement vers les requêtes de marque concurrentes. Dans les cas observés, le trafic concurrent est devenu la majorité des impressions AI Max d'un compte.

| Risque | Impact |
|------|--------|
| Pas d'exclusions de marque définies | AI Max matche les requêtes de marque concurrentes car elles sont sémantiquement liées à vos produits |
| Configuration des exclusions retardée | Le trafic concurrent s'accumule avant que vous ne le remarquiez, gaspillant du budget |

**Correction :** Configurez les exclusions de marque et ajoutez les noms de marques concurrentes aux listes de keywords négatifs avant d'activer AI Max, pas après. Examinez le rapport sur les termes de recherche dans la première semaine.

### Listes de keywords négatifs comme contrôle principal

Comme les contrôles de marque sont inexacts, les listes de keywords négatifs deviennent votre défense principale :

| Méthode de contrôle | Utilisation |
|----------------|---------|
| Contrôles de marque | Première couche : capturer les requêtes de marque évidentes |
| Listes de keywords négatifs | Deuxième couche : capturer les variations que les contrôles de marque manquent |
| Revue continue des termes de recherche | Troisième couche : trouver de nouvelles variations à ajouter aux négatifs |

### Hygiène continue des termes de recherche

AI Max nécessite plus d'hygiène des termes de recherche que les campagnes basées uniquement sur des keywords :

| Type de campagne | Fréquence de revue des termes de recherche |
|---------------|------------------------------|
| Mot-clé exact uniquement | Mensuelle ou moins (requêtes prévisibles) |
| Expression exacte | Bi-hebdomadaire (quelques variations) |
| Requête large | Hebdomadaire (variations significatives) |
| AI Max activé | Hebdomadaire au minimum (expansion imprévisible) |

### Réalité du volume de données

Le reporting AI Max produit significativement plus de données que les campagnes basées uniquement sur des keywords. La vue combinée terme de recherche + titre + Landing Page peut générer des dizaines de milliers de lignes dans les comptes à fort volume, rendant la revue manuelle impraticable.

Pour les comptes avec un trafic AI Max substantiel, utilisez l'entité GAQL `ai_max_search_term_ad_combination_view` (documentée dans [AI Max for Search Reference](<Search - AI Max - mécanismes techniques.md>)) pour interroger et filtrer les combinaisons programmatiquement via les scripts Google Ads ou l'API.

> ↪️ **Pour un guide complet de séparation de marque :** Voir [Brand Separation Reference](<Search - Séparation de marque.md>).

---

## Décision sur le chevauchement de campagnes

Votre configuration de campagnes existante détermine si AI Max apporte de la valeur ou crée de la redondance :

| Votre configuration actuelle | Recommandation AI Max | Pourquoi |
|-------------------|----------------------|-----|
| **PMax complet (avec assets)** | Pas besoin d'AI Max | PMax inclut déjà l'inventaire Search avec un matching de requêtes piloté par l'IA |
| **PMax feed-only (Shopping uniquement)** | Choisir : DSA OU AI Max | Besoin de couverture Search complémentaire, choisissez une approche |
| **Campagnes Search sans DSA** | Considérer AI Max (avec prudence) | Ajoute un matching sans keyword que vous n'avez pas actuellement |
| **Campagnes Search avec DSA** | Évaluer l'approche hybride | AI Max peut compléter ou remplacer le DSA selon vos besoins de contrôle |

---

## Évaluation du risque fonctionnalité par fonctionnalité

### 🔴 Final URL Expansion : Risque élevé

| Risque | Impact |
|------|--------|
| Le trafic atterrit sur des pages non prévues | Pages panier, pages contact, articles de blog, pages produit obsolètes |
| Casse le pinning RSA | Les titres/descriptions épinglés sont ignorés quand une URL différente est sélectionnée |
| Problèmes de tracking template | Les URLs dynamiques peuvent causer des erreurs 404 si le tracking n'est pas correctement configuré |

**Recommandation :** Désactivez sauf si vous avez des exclusions d'URL complètes en place et que la structure de votre site supporte la publicité sur n'importe quelle page.

### 🟡 Text Customization : Risque moyen (gérable avec des directives textuelles)

| Risque | Impact |
|------|--------|
| Messaging hors marque | Le texte généré par l'IA peut ne pas correspondre à votre ton de marque |
| Affirmations non autorisées | L'IA peut mettre en avant des cas limites (un article en solde, un avis) comme des affirmations générales |
| Dérive promotionnelle | Le texte généré peut mettre l'accent sur des promotions ou fonctionnalités que vous n'aviez pas l'intention de souligner |

**Recommandation :** Commencez avec Text Customization DÉSACTIVÉ. Si vous testez, configurez d'abord les directives textuelles (jusqu'à 25 exclusions de termes et 40 restrictions de messaging) pour contraindre la sortie générée. Les directives textuelles rendent cette fonctionnalité plus gérable pour les annonceurs qui veulent expérimenter. Examinez régulièrement le rapport d'assets et supprimez les assets générés qui ne correspondent pas.

### 🟡 Search Term Matching : Risque moyen (attribution + SPN)

| Risque | Impact |
|------|--------|
| Couverture de requêtes plus large | Peut faire apparaître des requêtes que vous n'auriez pas ciblées avec des keywords |
| Dérive thématique | Le matching basé sur les assets et les Landing Pages peut s'étendre au-delà de votre focus prévu |
| Contamination de l'attribution | Rend difficile l'évaluation précise de la performance des keywords |
| Scaling du Search Partner Network | AI Max peut router une part disproportionnée d'impressions vers les Partenaires du Réseau de Recherche, où les taux de conversion sont souvent drastiquement inférieurs à Google Search |

**Recommandation :** La plus acceptable des trois fonctionnalités pour l'expansion de portée. Cependant, sans avoir d'abord fait tourner le requête large avec succès, vous n'avez pas de baseline pour mesurer l'impact réel d'AI Max. Surveillez la performance du Search Partner Network immédiatement après l'activation : si les taux de conversion SPN sont inacceptables, désactivez le SPN pour la campagne (contrairement à PMax, les campagnes AI Max peuvent se désinscrire du SPN).

---

## Mécanismes de contrôle

AI Max inclut des contrôles qui n'étaient auparavant pas disponibles (ou limités) dans les campagnes Search :

| Contrôle | Niveau | Objectif | Limitation |
|---------|-------|---------|------------|
| **Désactivation du Search Term Matching** | Ad group | Désactiver le matching de requêtes étendu pour des ad groups spécifiques tout en gardant les autres fonctionnalités AI Max | N'affecte pas la Text Customization ou le Final URL Expansion |
| **Inclusions de marque** | Campagne et ad group | Spécifier quelles marques vos annonces doivent associer | Ne capture pas les fautes de frappe ou variations |
| **Exclusions de marque** | Campagne | Empêcher les annonces d'apparaître pour les requêtes de marques concurrentes ou non pertinentes | Ne capture pas les fautes de frappe ou variations |
| **Exclusions d'URL** | Campagne | Bloquer des URLs spécifiques de servir comme Landing Pages (nécessite Final URL Expansion activé) | - |
| **Inclusions d'URL** | Ad group | Ajouter des URLs spécifiques que le Final URL Expansion n'a pas capturées (nécessite Final URL Expansion activé) | - |
| **Locations of interest** | Ad group | Cibler les utilisateurs basés sur l'intention géographique dans les matchs sans keyword | Exclusif à AI Max |

> Ces contrôles sont disponibles uniquement quand AI Max est activé. Si vous voulez des exclusions de marque en Search (sans PMax), vous avez besoin d'AI Max activé. Les contrôles au niveau ad group (désactivation du Search Term Matching, inclusions de marque, inclusions d'URL, locations of interest) offrent une gestion plus granulaire qu'auparavant. Complétez les contrôles de marque avec des listes de keywords négatifs pour une couverture complète.

---

## AI Max et AI Overviews / AI Mode

AI Max n'est pas requis pour diffuser des annonces dans AI Overviews ou AI Mode. Les keywords requête large, les campagnes Shopping et PMax sont déjà diffusés dans ces emplacements sans AI Max activé.

| Affirmation | Réalité |
|-------|---------|
| "Vous avez besoin d'AI Max pour apparaître dans AI Overviews" | Le requête large, Shopping et PMax y sont déjà diffusés |
| "AI Max débloque les emplacements AI Mode" | Les emplacements AI Mode sont disponibles pour plusieurs types de campagnes |
| "Activez AI Max pour les nouveaux emplacements IA" | Les paramètres AI Max s'appliquent à tout le trafic Search, pas uniquement aux emplacements spécifiques à l'IA |

N'activez pas AI Max uniquement pour accéder à l'inventaire AI Overview ou AI Mode. Évaluez AI Max sur ses mérites en tant qu'outil d'expansion de portée, pas comme un prérequis pour des emplacements spécifiques.

---

## Qui devrait tester AI Max

### Bons candidats

| Situation | Pourquoi AI Max convient |
|-----------|----------------|
| Requête large déjà en place avec succès | AI Max étend le comportement du requête large : expansion logique suivante. Vous acceptez déjà l'imprévisibilité des requêtes. |
| PMax sans assets (feed-only) | Besoin de couverture Search, AI Max la fournit sans campagnes DSA séparées |
| Veut accéder aux exclusions de marque en Search | Les contrôles de marque se débloquent quand AI Max est activé |
| Approche d'optimisation hands-off | Text Customization génère des annonces sans intervention manuelle |
| Grand site avec des pages bien optimisées | Le matching basé sur les Landing Pages bénéficie d'un inventaire de pages complet et de qualité |
| À l'aise avec l'ambiguïté d'attribution | Comprend que le reporting AI Max n'est pas incrémental et peut vivre avec |

### Mauvais candidats

| Situation | Pourquoi AI Max ne convient pas |
|-----------|------------------------|
| Phrase/mot-clé exact pour le contrôle | AI Max s'étend au-delà des types de correspondance contrôlés, contrecarrant l'objectif |
| Part d'impressions perdue élevée due au budget + principalement keywords exact/phrase | AI Max peut réallouer le budget des keywords performants vers des requêtes étendues moins performantes |
| Boutiques à haut nombre de SKUs nécessitant des page feeds | AI Max manque du support page feed que le DSA fournit |
| Campagnes nécessitant un focus keyword strict | AI Max introduit une expansion de requêtes que vous ne pouvez pas entièrement contrôler |
| Exigences de messaging sensibles à la marque | Text Customization peut générer des copies hors marque |
| Configurations de tracking template complexes | Final URL Expansion peut casser le tracking sur les URLs dynamiques |
| Besoin de données précises de performance par match type | AI Max contamine le reporting par match type |

### Risque de réallocation de budget (détaillé)

Si vous avez :
- Une part d'impressions perdue élevée due au budget (campagnes limitées par le budget)
- Principalement des keywords mot-clé exact et expression exacte (optimisés pour la précision)

Alors AI Max peut nuire à la performance en :
1. S'étendant vers des requêtes plus larges, à plus faible intention
2. Allouant du budget à ces requêtes moins performantes
3. Réduisant la part d'impressions sur vos keywords exact/phrase performants

Dans ce scénario, AI Max n'ajoute pas de portée. Il réalloue le budget des performers prouvés vers une expansion non prouvée.

---

## Quand éviter complètement AI Max

| Situation | Approche alternative |
|-----------|---------------------|
| E-commerce à haut nombre de SKUs nécessitant le contrôle par page feed | Utilisez le DSA avec des page feeds |
| Industries réglementées avec des exigences strictes de copie publicitaire | Utilisez des campagnes keyword avec des RSA manuelles |
| Campagnes optimisant pour des expériences spécifiques de Landing Page | Utilisez des campagnes keyword avec des URLs finales au niveau keyword |
| Nouveaux comptes sans historique de conversions | Construisez d'abord des données de conversion avec des campagnes keyword ciblées |
| Stratégie phrase/mot-clé exact pour un contrôle strict | Gardez la stratégie actuelle : AI Max contredit l'intention de contrôle |
| Besoin de données précises de performance au niveau keyword | AI Max rend l'analyse de performance keyword peu fiable |
| Campagnes limitées par le budget avec des keywords exact/phrase optimisés | AI Max peut réallouer le budget vers des requêtes moins performantes |

---

## Ce que vous perdez par rapport au DSA

AI Max inclut certaines fonctionnalités de type DSA mais manque de fonctionnalités clés du DSA :

| Capacité | DSA | AI Max |
|------------|-----|--------|
| Page feeds | Oui | Non |
| Exclusions de contenu à grande échelle | Oui | Limité (exclusions d'URL uniquement) |
| Custom labels pour le ciblage | Oui | Non |
| Ciblage de contenu de page | Oui | Automatisé uniquement |
| Règles de ciblage URL | Oui | Limité (les inclusions d'URL au niveau ad group comblent partiellement cet écart) |
| Structure de campagne/ad group séparée | Oui | Intégré aux campagnes Search |
| Inclusions de marque au niveau ad group | Non | Oui |
| Ciblage géographique au niveau ad group | Non | Oui |
| Désinscription Partenaires du Réseau de Recherche | Oui | Oui |

> Si votre stratégie DSA repose sur des page feeds ou un ciblage de contenu granulaire, AI Max n'est pas un remplacement direct. Cependant, les inclusions d'URL au niveau ad group offrent une certaine capacité à diriger le Final URL Expansion vers des pages spécifiques, comblant partiellement l'écart pour les comptes de taille catalogue modérée.

### Perspective de migration DSA

Google a confirmé que l'objectif à long terme est d'intégrer les fonctionnalités DSA dans AI Max. Aucune date officielle de fin de vie n'a été annoncée.

| Utilisation actuelle du DSA | Action recommandée |
|-------------------|--------------------|
| DSA avec page feeds (e-commerce à haut nombre de SKUs) | Maintenir le DSA jusqu'à ce qu'AI Max ajoute le support des page feeds. Commencer à tester les fonctionnalités sans keyword d'AI Max dans une campagne séparée pour comparaison |
| DSA sans page feeds | Tester AI Max comme remplacement. Faire tourner les deux en parallèle pendant 4-8 semaines, puis supprimer le moins performant |
| DSA comme couche de découverte aux côtés de campagnes keyword | Le matching sans keyword d'AI Max fournit une découverte équivalente. Tester AI Max et évaluer si le DSA peut être retiré |

> Pour les comptes dépendants du DSA : activez les fonctionnalités sans keyword d'AI Max dans les campagnes Search plutôt que de migrer les ad groups DSA vers PMax. Cela garde les budgets, la mesure et les contrôles dans Search.

---

## Principes clés

1. **Le reporting n'est pas incrémental :** AI Max s'attribue des requêtes que vos keywords existants couvrent déjà. Ne supposez pas qu'AI Max a "généré" des conversions qu'il a simplement réclamées de votre couverture keyword existante.

2. **Ajoutez des variantes requête large avant d'activer :** Sans versions requête large de vos keywords, vous ne pouvez pas mesurer la performance AI Max séparément. Mettez d'abord en place la bonne structure de keywords.

3. **Activez délibérément, configurez défensivement :** La configuration AI Max par défaut cède un contrôle significatif. Désactivez le Final URL Expansion et la Text Customization sauf si vous avez des raisons spécifiques de les activer.

4. **Les contrôles de marque sont un point de départ, pas une solution :** Les inclusions et exclusions de marque ne capturent pas les fautes de frappe ou variations. Utilisez les listes de keywords négatifs comme votre séparateur marque/hors-marque principal.

5. **AI Max étend le requête large :** Si vous êtes déjà à l'aise avec l'expansion de requêtes requête large et l'ambiguïté d'attribution, AI Max est une étape logique suivante. Si vous utilisez phrase/exact pour le contrôle, AI Max sape ce contrôle.

6. **Les campagnes limitées par le budget peuvent performer moins bien :** Si vous avez une part d'impressions perdue élevée due au budget et principalement des keywords exact/phrase, AI Max peut réallouer le budget des top performers vers des requêtes d'expansion moins performantes.

7. **AI Max n'est pas PMax :** AI Max ajoute des fonctionnalités aux campagnes Search. PMax est un type de campagne séparé avec de l'inventaire Search. Si vous faites tourner un PMax complet avec assets, vous n'avez probablement pas besoin d'AI Max.

8. **La direction à long terme du DSA est AI Max :** Google a confirmé l'objectif d'intégrer les fonctionnalités DSA dans AI Max, bien qu'aucune date officielle de fin de vie n'existe. Pour les boutiques à haut nombre de SKUs ou les besoins de ciblage complexes, le DSA reste le meilleur choix jusqu'à ce qu'AI Max ajoute le support des page feeds. Les comptes qui s'appuient sur le DSA devraient commencer à tester les fonctionnalités sans keyword d'AI Max pour préparer la transition éventuelle.

---

## Documents liés

| Document | Relation |
|----------|-------------|
| [AI Max for Search Reference](<Search - AI Max - mécanismes techniques.md>) | Spécifications techniques de toutes les fonctionnalités et paramètres AI Max |
| [Brand Separation Reference](<Search - Séparation de marque.md>) | Limitations et contournements des contrôles de marque |
| [Dynamic Search Ads Mental Model](<Search - Dynamic Search Ads.md>) | Approche alternative de ciblage sans keyword avec page feeds |
| [Match Type Reference](<Search - Types de correspondance.md>) | Comment AI Max étend le comportement du requête large |
| [Search Campaign Structure Mental Model](<Search - Structure de campagne Search.md>) | Contexte de structure de campagne pour le placement AI Max |
| [DSA Targeting Options Reference](<Search - Options de ciblage DSA.md>) | Fonctionnalités de ciblage DSA qu'AI Max ne possède pas |
| [PMax Structure Mental Model (Ecommerce)](<../pmax/Pmax - Structure PMax (E-commerce).md>) | Quand PMax couvre déjà l'inventaire Search (E-commerce) |
| [PMax Structure Mental Model (Lead Gen/SaaS)](<../pmax/Pmax - Structure PMax (Lead Gen-SaaS).md>) | Quand PMax couvre déjà l'inventaire Search (Lead Gen/SaaS) |
