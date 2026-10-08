# Dynamic Search Ads

> **Plateforme :** Google Ads
> **Catégorie :** Search
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Ce document explique comment les Dynamic Search Ads (DSA) fonctionnent, quand ils apportent de la valeur, et comment ils s'intègrent dans une structure de campagne Search moderne. Il répond à la question centrale : dois-je utiliser les DSA, et si oui, comment complètent-ils mon ciblage par keywords ?

> Les DSA ne remplacent pas les campagnes basées sur les keywords. C'est une couche de ciblage complémentaire qui comble les lacunes que les listes de keywords ne peuvent pas couvrir.

---

## Ce que c'est / Ce que ce n'est PAS

**Ce document :**

- Explique comment Google génère les titres DSA à partir du contenu des pages
- Définit quand les DSA apportent de la valeur vs. quand ils nuisent à la performance
- Intègre les DSA dans la philosophie de campagne consolidation-first
- Fournit la hiérarchie des options de ciblage pour les DSA

**Ce document NE couvre PAS :**

- La syntaxe ou les spécifications des options de ciblage DSA (Voir : [DSA Targeting Options Reference](<Search - Options de ciblage DSA.md>))
- Les instructions de configuration DSA étape par étape (Voir : SOP: Set Up Dynamic Search Ads)
- Le format CSV du page feed ou le processus d'import (Voir : [DSA Targeting Options Reference](<Search - Options de ciblage DSA.md>))
- Les décisions de structure de campagne au-delà de l'emplacement DSA (Voir : [Search Campaign Structure Mental Model](<Search - Structure de campagne Search.md>))

---

## Comment les DSA fonctionnent

### Le processus de génération

Quand vous soumettez des cibles d'annonces dynamiques (URLs de pages), les crawlers de Google analysent le contenu de vos pages et créent un pipeline ciblage-annonce :

| Étape | Ce qui se passe |
|-------|----------------|
| 1. Crawl de page | Google indexe vos pages cibles, extrayant les titres HTML, les headings (H1-H3) et le contenu du body |
| 2. Identification des thèmes | Google identifie les thèmes et termes du contenu de la page qui correspondent aux requêtes de recherche potentielles |
| 3. Correspondance de requête | Quand un utilisateur recherche des termes étroitement liés au contenu de votre page, Google déclenche l'annonce DSA |
| 4. Génération du titre | Google crée dynamiquement le titre de l'annonce en utilisant les métadonnées de la page, principalement le titre HTML |
| 5. Sélection de la landing page | Google sélectionne la page la plus pertinente parmi vos cibles comme URL de destination |
| 6. Assemblage de l'annonce | Le titre dynamique se combine avec vos lignes de description statiques et entre dans l'enchère |

### Ce que vous contrôlez vs. ce que Google contrôle

| Élément | Qui le contrôle |
|---------|----------------|
| **Titres** | Google (générés à partir du contenu de la page) |
| **Lignes de description** | Vous (statiques, rédigées par ad group) |
| **Landing page** | Google sélectionne parmi vos pages ciblées (vous contrôlez quelles pages sont éligibles) |
| **Quelles pages sont ciblées** | Vous (via les options de ciblage et les page feeds) |
| **Exclusions de pages** | Vous (exclure les pages non pertinentes du ciblage) |
| **Budget et enchères** | Vous (au niveau de la campagne) |
| **Keywords négatifs** | Vous (identique aux campagnes basées sur les keywords) |

> Le signal le plus important pour la génération de titres DSA est le titre HTML de la page. Optimisez vos titres de page entre 60 et 90 caractères avec des keywords pertinents et un copy convaincant. Coordonnez-vous avec le SEO avant de modifier les titres de page.

---

## Le document central : quand les DSA apportent de la valeur

| Scénario | Valeur DSA | Pourquoi |
|----------|-----------|----------|
| **Grand site web avec beaucoup de pages produit/service** | Élevée | Couvre les requêtes que vous ne pouvez pas anticiper avec des listes de keywords. Se met à l'échelle automatiquement quand des pages sont ajoutées |
| **Pages bien optimisées (titres clairs, contenu structuré)** | Élevée | Google peut générer des titres pertinents et matcher les requêtes appropriées |
| **Campagnes basées sur les keywords déjà en cours** | Élevée | Les DSA comblent les lacunes de couverture, captent les requêtes longue traîne que les listes de keywords manquent |
| **Petit site web avec peu de pages** | Moyenne | L'inventaire limité de pages réduit le potentiel de découverte DSA, mais capte tout de même les requêtes longue traîne pour les pages existantes |
| **Site web avec titres HTML et balises H1-H3 optimisés** | Élevée | Meilleures métadonnées = meilleure génération de titres = CTR plus élevé |
| **Contenu du site qui change fréquemment (offres du jour, ventes flash)** | Basse | Les crawlers Google ne peuvent pas suivre le rythme d'un contenu qui change rapidement. Les DSA servent des titres obsolètes |
| **Site riche en images avec peu de contenu texte** | Basse | Google ne peut pas extraire de thèmes significatifs à partir d'images seules. Les DSA s'appuient sur le contenu texte |
| **Pages non optimisées pour le SEO** | Moyenne | Des titres de page faibles et un contenu mince mènent à des titres DSA génériques ou non pertinents |

---

## Hiérarchie des options de ciblage

Toutes les options de ciblage DSA ne se valent pas. Utilisez cette hiérarchie pour choisir la bonne approche :

| Rang | Option de ciblage | Recommandation | Pourquoi |
|------|-----------------|----------------|----------|
| **1 (préféré)** | Label personnalisé (page feed) | Utiliser | Contrôle total sur les pages ciblées. Automatiser via des outils de gestion de feed. Créer des labels granulaires pour la segmentation par ad group |
| **2 (préféré)** | L'URL contient | Utiliser | Cible les pages correspondant à des patterns d'URL. Fonctionne bien quand la structure d'URL correspond aux catégories business |
| **3 (avec prudence)** | URL exacte | Acceptable | Cible des pages spécifiques exactement. Manque les nouvelles pages et casse quand les URLs changent |
| **4 (avec prudence)** | Landing pages des ad groups standard | Acceptable | Cible uniquement les pages déjà utilisées dans les annonces basées sur les keywords. Sûr mais découverte limitée |
| **5 (non recommandé)** | Le titre de page contient | Éviter | Dépend de la précision de l'index Google. Contrôle limité sur les pages qui matchent |
| **6 (non recommandé)** | Le contenu de page contient | Éviter | Matche sur tout contenu de page incluant headers, footers et navigation. Produit des résultats imprévisibles |
| **7 (non recommandé)** | Catégories (auto-générées) | Éviter | Les catégories générées par Google sont souvent inexactes. Les pages sont mal catégorisées. Pas de contrôle manuel |
| **8 (avec parcimonie)** | Toutes les pages web | Dernier recours uniquement | Cible chaque page indexée y compris contact, CGV, à propos. Fort potentiel de gaspillage. N'utiliser que si vous avez des exclusions de pages exhaustives |

> Pour les spécifications complètes des options de ciblage : Voir [DSA Targeting Options Reference](<Search - Options de ciblage DSA.md>)

---

## Emplacement des DSA dans la structure de campagne

La règle d'or s'applique aux DSA : consolider par défaut.

### Préféré : ad groups DSA au sein des campagnes basées sur les keywords

Ajoutez des ad groups DSA à vos campagnes existantes basées sur les keywords quand :

- Le budget n'est pas contraint (DSA et keywords partagent le budget quotidien)
- Les cibles d'efficacité sont les mêmes pour le trafic DSA et basé sur les keywords
- Le thème de la campagne par keywords correspond au périmètre de ciblage DSA

**Avantages :**
- Données consolidées pour le Stratégies d'enchères intelligentes
- Allocation de budget partagée (pas de budget séparé à gérer)
- Structure de compte plus simple

### Exception : campagnes DSA dédiées

Créez une campagne DSA séparée quand :

| Raison | Exemple |
|--------|---------|
| **Budget contraint** | Vous devez protéger le budget de la campagne keywords de l'exploration DSA |
| **Cible d'efficacité différente** | Le trafic DSA convertit à des taux différents et nécessite un CPA cible/ROAS cible différent |
| **Objectifs de conversion différents** | Les DSA ciblent des pages informationnelles optimisant pour des micro-conversions tandis que les campagnes keywords optimisent pour des macro-conversions |
| **Budget d'apprentissage** | Vous voulez un budget dédié et limité pour la découverte DSA avant de scaler |

> Pour la logique de segmentation des campagnes : Voir [Search Campaign Structure Mental Model](<Search - Structure de campagne Search.md>)

---

## Structure d'ad group pour les DSA

Les lignes de description DSA sont statiques (vous les rédigez), tandis que les titres sont dynamiques (Google les génère). Cela crée une contrainte de conception d'ad group spécifique :

| Approche | Quand utiliser | Compromis |
|----------|-------------|-----------|
| **Un ad group DSA (ciblage large)** | Les pages partagent un thème commun. Des descriptions génériques fonctionnent pour toutes les cibles | Consolidation maximale, mais les descriptions peuvent sembler génériques |
| **Plusieurs ad groups DSA (ciblage segmenté)** | Les pages servent des catégories, services ou marques différents. Des descriptions spécifiques sont nécessaires | Descriptions plus pertinentes, mais plus de charge de gestion |

### Le test des lignes de description

> Un seul jeu de lignes de description peut-il crédiblement servir toutes les pages de cet ad group DSA ?

Si oui : garder un ad group. Si non : segmenter par pertinence des lignes de description.

**Exemple : e-commerce électronique**

| Ad group DSA | Ciblage | Lignes de description |
|-------------|---------|---------------------|
| DSA : TV Samsung | Label personnalisé = "samsung_tv" | "Achetez des TV Samsung. Livraison gratuite sur toutes les commandes. Retours sous 30 jours". |
| DSA : TV LG | Label personnalisé = "lg_tv" | "Découvrez les TV LG. Garantie meilleur prix. Livraison gratuite le lendemain". |
| DSA : Équipement audio | Label personnalisé = "audio" | "Équipement audio premium. Avis d'experts. Retours sans tracas". |

Un ad group combiné avec les trois labels nécessiterait des lignes de description tellement génériques qu'elles perdraient toute pertinence.

---

## DSA vs. AI Max Search Term Matching

AI Max pour les campagnes Search inclut de la correspondance sans keyword qui chevauche la fonctionnalité DSA. Comprendre la relation aide à choisir la bonne approche :

| Fonctionnalité | DSA | AI Max Search Term Matching |
|---------------|-----|----------------------------|
| Correspondance de requêtes sans keyword | Oui (via ciblage de pages) | Oui (via assets et landing pages) |
| Page feeds | Oui | Non |
| Labels personnalisés pour le ciblage | Oui | Non |
| Exclusions de contenu à grande échelle | Oui | Limité (exclusions d'URL uniquement) |
| Règles de ciblage d'URL granulaires | Oui | Limité (les inclusions d'URL au niveau ad group comblent partiellement cette lacune) |
| Structure de campagne | Campagnes ou ad groups DSA séparés | Intégré dans les campagnes Search standard |
| Contrôles de marque | Non | Oui (inclusions au niveau campagne et ad group, exclusions au niveau campagne) |
| Ciblage géographique au niveau ad group | Non | Oui (Lieux d'intérêt) |
| Génération de texte | Non (titres uniquement à partir des titres de page) | Oui (titres et descriptions générés par l'IA) |
| Désinscription Partenaires du Réseau de Recherche | Oui | Oui |

### Quand utiliser DSA vs. AI Max

| Situation | Recommandation |
|-----------|---------------|
| E-commerce à haut volume de SKU nécessitant un contrôle par page feed | DSA |
| Besoin de règles de ciblage de contenu granulaires | DSA |
| Veut de la correspondance sans keyword sans structure DSA séparée | AI Max |
| Besoin d'inclusions/exclusions de marque en Search | AI Max (requis pour débloquer les contrôles de marque) |
| Veut du copy d'annonce généré par l'IA | AI Max (avec personnalisation de texte) |
| Les deux pour une couverture maximale | Acceptable : DSA gère les requêtes longue traîne/page feed, AI Max gère l'expansion basée sur les assets |

### Perspectives de migration DSA

Google a confirmé l'objectif à long terme d'intégrer la fonctionnalité DSA dans AI Max. Aucune date officielle de fin de vie n'a été annoncée.

| Utilisation actuelle des DSA | Action recommandée |
|----------------------------|--------------------|
| DSA avec page feeds (haut volume de SKU) | Maintenir les DSA jusqu'à ce qu'AI Max ajoute le support des page feeds. Commencer à tester les fonctionnalités sans keyword d'AI Max en parallèle |
| DSA sans page feeds | Tester AI Max comme remplacement. Faire tourner les deux pendant 4-8 semaines, puis arrêter le moins performant |
| DSA comme couche de découverte | La correspondance sans keyword d'AI Max fournit une découverte équivalente. Évaluer si les DSA peuvent être retirés |

> Pour les comptes dépendants des DSA : activer les fonctionnalités de correspondance sans keyword d'AI Max dans les campagnes Search plutôt que de migrer les ad groups DSA vers PMax. Cela garde les budgets, la mesure et les contrôles dans Search.

### Approche hybride

Faire tourner DSA et AI Max simultanément est le pattern d'adoption le plus courant parmi les annonceurs testant AI Max. Cette approche hybride est la stratégie de transition recommandée compte tenu de la direction annoncée par Google :

- **AI Max Search Term Matching :** Étend la couverture des keywords via les assets et les landing pages
- **Ad groups/campagnes DSA :** Maintient le contrôle par page feed et le ciblage granulaire pour les URLs non couvertes par les keywords

Cette approche hybride préserve les avantages DSA (page feeds, exclusions de contenu) tout en préparant la migration éventuelle vers AI Max.

> 💡 **Approche de transition recommandée :** Faire tourner DSA et AI Max simultanément pendant l'évaluation. Surveiller la performance des deux pendant 4-8 semaines, puis arrêter le moins performant en fonction des données d'efficacité. Ne pas désactiver les DSA immédiatement lors de l'activation d'AI Max.

> Pour le document décisionnel complet AI Max : Voir [AI Max for Search Mental Model](<Search - Activer AI Max.md>)

---

## Interaction DSA et keywords

### La hiérarchie de l'classement de l'annonce

Quand des annonces DSA et basées sur les keywords sont toutes deux éligibles pour la même requête :

| Scénario | Quelle annonce est servie |
|----------|--------------------------|
| Keyword en mot-clé exact identique à la requête | Annonce basée sur le keyword (toujours préférée) |
| Keyword en phrase/requête large + DSA tous deux éligibles | Celui qui a le meilleur classement de l'annonce |
| Seul le DSA est éligible (pas de keyword correspondant) | Annonce DSA |

### NE PAS exclure les keywords des campagnes DSA

Une erreur courante est d'ajouter tous les keywords de la campagne comme négatifs dans l'ad group DSA "pour éviter le chevauchement". Cela nuit à la performance car :

1. Les DSA obtiennent parfois un meilleur classement de l'annonce que les annonces basées sur les keywords pour la même requête
2. Un meilleur classement de l'annonce = meilleure position et/ou CPC plus bas
3. Exclure les keywords des DSA force l'annonce keyword à classement de l'annonce plus bas à être servie à la place
4. Vous payez plus pour une moins bonne position

Laissez le système d'classement de l'annonce de Google décider quelle annonce est servie. L'annonce avec le meilleur classement de l'annonce gagne, qu'elle soit basée sur les keywords ou DSA.

> Exception : si vous avez besoin d'une séparation budgétaire stricte entre le trafic DSA et keyword et utilisez la même campagne, les négatifs internes peuvent être justifiés. Mais dans la plupart des cas, la consolidation et la compétition d'classement de l'annonce produisent de meilleurs résultats.

---

## Modes d'échec

| Mode d'échec | Symptômes | Correction |
|-------------|----------|-----|
| **Cibler toutes les pages web sans exclusions** | Budget dépensé sur les pages contact, CGV, à propos, checkout | Scanner votre site (Screaming Frog ou sitemap). Exclure toutes les pages non orientées conversion dès le départ |
| **Métadonnées de page médiocres** | Titres DSA génériques ou tronqués. CTR bas | Optimiser les titres HTML de page entre 60 et 90 caractères. Inclure des keywords et un call to action. Coordonner avec le SEO |
| **Lignes de description trop génériques** | Faible pertinence d'annonce. CPC élevé | Segmenter les ad groups DSA pour que les lignes de description correspondent aux thèmes des pages ciblées |
| **Exclure les keywords des DSA** | Positions d'annonce dégradées, CPC plus élevés sur les requêtes où les DSA auraient gagné | Supprimer les négatifs au niveau keyword des ad groups DSA. Laisser l'classement de l'annonce déterminer quelle annonce est servie |
| **Utiliser le ciblage "catégories" ou "contenu de page"** | Correspondances de pages non pertinentes. Gaspillage de budget | Passer aux labels personnalisés (page feed) ou au ciblage "l'URL contient" |
| **Pas d'automatisation du page feed (e-commerce)** | Produits en rupture de stock servis comme cibles DSA | Mettre en place des page feeds automatisés via un outil de gestion de feed avec des filtres stock/marge |
| **Ignorer les rapports de termes de recherche DSA** | Les requêtes non pertinentes s'accumulent sans contrôle | Revoir les termes de recherche DSA régulièrement. Ajouter des négatifs aux listes partagées |

---

## Application pratique

### Étape 1 : Évaluer la pertinence des DSA

| Question | Si oui | Si non |
|----------|--------|--------|
| Le site web a-t-il des titres de page bien optimisés et un contenu structuré ? | Continuer à l'étape 2 | Optimiser d'abord les pages, puis reconsidérer |
| Les pages sont-elles relativement stables (ne changent pas quotidiennement) ? | Continuer à l'étape 2 | Les DSA ne sont pas recommandés |
| Des campagnes basées sur les keywords existent-elles déjà ? | Les DSA sont une couche complémentaire | Envisager de commencer par les campagnes keywords d'abord |

### Étape 2 : Choisir l'approche de ciblage

| Type de site web | Ciblage recommandé |
|-----------------|-------------------|
| E-commerce avec gestion de feed | Labels personnalisés via page feed automatisé |
| E-commerce sans gestion de feed | Labels personnalisés via page feed CSV manuel |
| Lead gen / SaaS avec structure d'URL propre | Ciblage "l'URL contient" |
| Lead gen / SaaS sans structure d'URL propre | Labels personnalisés via page feed CSV manuel |
| Petit site (moins de 20 pages) | "L'URL contient" ou landing pages des ad groups standard |

### Étape 3 : Construire les exclusions

Avant de lancer les DSA, construire une liste d'exclusions exhaustive :

1. Scanner votre site web (Screaming Frog, sitemap XML ou revue manuelle)
2. Identifier les pages non pertinentes : contact, CGV, politique de confidentialité, à propos, panier, checkout, connexion
3. Identifier les pages informationnelles qui ne convertissent pas (tester les pages blog avant de les exclure)
4. Ajouter des exclusions de pages en utilisant "l'URL contient" ou "URL exacte"
5. Appliquer vos listes de keywords négatifs existantes à la campagne/l'ad group DSA
6. Pour l'e-commerce : exclure les pages en rupture de stock en utilisant les exclusions de contenu de page ("en rupture de stock", "indisponible")

### Étape 4 : Lancer et optimiser

| Phase | Action |
|-------|--------|
| Semaine 1 | Surveiller le rapport sur les termes de recherche quotidiennement. Ajouter des négatifs agressivement pour les requêtes non pertinentes |
| Semaine 2-4 | Revoir la performance DSA vs. campagnes keywords. Vérifier la qualité des titres |
| Continu | Promouvoir les termes de recherche DSA à forte conversion dans les ad groups basés sur les keywords. Maintenir les listes d'exclusions |

---

## Principes clés

1. **Les DSA comblent les lacunes, ils ne remplacent pas les keywords :** Utilisez les DSA aux côtés des campagnes basées sur les keywords pour capter les requêtes que vos listes de keywords manquent.
2. **Consolider les DSA au sein des campagnes keywords par défaut :** Ne créer des campagnes DSA séparées que quand l'isolation budgétaire ou des cibles différentes sont nécessaires.
3. **Les labels personnalisés et "l'URL contient" sont les seules options de ciblage valables :** Tout le reste sacrifie le contrôle pour la commodité.
4. **Ne pas exclure les keywords des DSA :** Laissez l'classement de l'annonce déterminer quelle annonce est servie. L'annonce avec le meilleur classement de l'annonce produit de meilleurs résultats.
5. **La qualité des pages détermine la qualité des DSA :** Investissez dans les titres HTML, le contenu structuré et le thème clair des pages. Les DSA ne sont aussi bons que les pages qu'ils ciblent.
6. **Automatiser les page feeds pour l'e-commerce :** Utilisez des outils de gestion de feed pour filtrer automatiquement les produits en rupture, à faible marge et non pertinents.
7. **Construire les exclusions avant le lancement :** Scannez votre site et excluez les pages non orientées conversion dès le premier jour pour prévenir le gaspillage de budget.
8. **Segmenter les ad groups DSA par pertinence des descriptions :** Si un seul jeu de descriptions ne peut pas servir toutes les pages ciblées, séparez l'ad group.

---

## Documents liés

| Document | Relation |
|----------|-------------|
| [Modern Search Campaign Mental Model](<Search - Campagne Search moderne.md>) | En amont : philosophie Search globale |
| [Search Campaign Structure Mental Model](<Search - Structure de campagne Search.md>) | En amont : décisions de structure au niveau campagne incluant le placement DSA |
| [Search Ad Group Structure Mental Model](<Search - Structure des ad groups Search.md>) | En amont : principes de structure au niveau ad group |
| [DSA Targeting Options Reference](<Search - Options de ciblage DSA.md>) | Référence : spécifications des options de ciblage, format CSV du page feed, syntaxe des labels personnalisés |
| [AI Max for Search Mental Model](<Search - Activer AI Max.md>) | Lié : approche alternative sans keyword avec correspondance pilotée par l'IA |
| [AI Max for Search Reference](<Search - AI Max - mécanismes techniques.md>) | Référence : spécifications et paramètres AI Max |
| [Negative Keyword Reference](<Search - Mots-clés à exclure.md>) | Référence : gestion des keywords négatifs pour les DSA |
| SOP: Set Up Dynamic Search Ads | Exécution : workflow de configuration DSA étape par étape |
| SOP: Analyze Search Term Reports | Exécution : identification des termes non pertinents et négation |
| SOP: Run N-gram Analysis | Exécution : gestion des keywords négatifs basée sur la performance |
