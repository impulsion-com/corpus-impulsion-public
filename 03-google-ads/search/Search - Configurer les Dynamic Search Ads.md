# Configurer les annonces dynamiques (DSA)

> **Plateforme :** Google Ads
> **Catégorie :** Search
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Phase 1️⃣: Évaluer la pertinence DSA

### 1.1 Vérification de la maturité du site

Vérifiez les quatre conditions avant de continuer :

| Condition | Vérification | Action en cas d'échec |
|-----------|-------|-------------|
| Contenu statique | Les pages ne changent pas quotidiennement | Stop : les DSA nécessitent un contenu de page stable |
| Texte explorable | Les pages ont un contenu texte HTML, pas seulement des images | Stop : Google ne peut pas générer de titres à partir d'images |
| Titres HTML clairs | Les titres de page décrivent fidèlement le contenu de la page | Corrigez les titres avant de continuer |
| Campagnes de mots-clés existantes | Au moins une campagne Search active basée sur des mots-clés | Construisez d'abord des campagnes de mots-clés |

### 1.2 Confirmer go/no-go

Si les quatre conditions sont remplies, passez à la Phase 2. Si une condition échoue, résolvez-la avant de continuer.

---

## Phase 2️⃣: Scraper le site et construire l'inventaire d'URL

### 2.1 Exporter toutes les URLs de pages

**Option A : Screaming Frog (recommandé pour les sites de moins de 500 pages)**

1. Ouvrez Screaming Frog
2. Saisissez l'URL du domaine racine
3. Cliquez sur **Start**
4. Attendez la fin de l'exploration
5. Exportez les URLs **Internal > HTML** vers un CSV

**Option B : Sitemap XML**

1. Naviguez vers `yourdomain.com/sitemap.xml`
2. Copiez toutes les URLs de pages
3. Collez-les dans un tableur

### 2.2 Nettoyer la liste d'URLs

Examinez les URLs exportées et supprimez :

- Les URLs en double (www vs. non-www, HTTP vs. HTTPS)
- Les URLs avec paramètres ou identifiants de session
- Les pages sans contenu (pagination, pages de tags, pages d'archives)
- Les pages que vous savez déjà non pertinentes (traitées en détail en Phase 6)

Enregistrez la liste nettoyée. Elle devient la donnée d'entrée de la Phase 3.

---

## Phase 3️⃣: Créer et téléverser le flux de pages

### 3.1 Construire la feuille de calcul du flux de pages

Ouvrez Google Sheets et créez deux colonnes :

| Colonne | Contenu | Règles |
|--------|---------|-------|
| `Page URL` | URL HTTPS complète de la page | Une URL par ligne |
| `Custom label` | Libellé descriptif pour le ciblage | Utilisez des underscores au lieu d'espaces |

Attribuez des custom labels selon les regroupements de pages :

| Exemple de type de page | Exemple de custom label |
|-------------------|---------------------|
| Pages de catégories de produits | `running_shoes`, `hiking_boots` |
| Pages de services | `seo_services`, `ppc_management` |
| Contenu de blog | `blog_guides`, `blog_comparisons` |
| Pages de localisation | `location_amsterdam`, `location_london` |

> 💡 **Plusieurs libellés par URL :** Séparez plusieurs libellés par un point-virgule dans la même cellule. Exemple : `running_shoes;sale_items;nike`

### 3.2 Téléverser le flux de pages

**Téléversement standard (la plupart des comptes) :**

1. Allez dans **Tools & Settings** > **Business Data** > **Page Feeds**
2. Cliquez sur **+** pour créer un nouveau flux de pages
3. Nommez le flux de façon descriptive (ex : « DSA Page Feed - Main Site »)
4. Téléversez votre fichier Google Sheets ou CSV
5. Vérifiez le téléversement : contrôlez le nombre de lignes, absence d'erreurs

**E-commerce avec un outil de gestion de flux (Channable, DataFeedWatch, etc.) :**

1. Connectez l'outil de flux à votre source de données produits
2. Mappez les champs `Page URL` et `Custom label`
3. Exportez en CSV hébergé via une URL HTTPS
4. Dans Google Ads, utilisez l'option de récupération planifiée plutôt que le téléversement manuel
5. Réglez la fréquence d'actualisation sur toutes les 6 heures

---

## Phase 4️⃣: Configurer la campagne/ad group DSA

### 4.1 Définir les paramètres de domaine DSA

1. Ouvrez la campagne qui hébergera les DSA (selon la porte de décision ci-dessus)
2. Allez dans **Campaign Settings** > **Dynamic Search Ads setting**
3. Saisissez votre domaine (ex : `www.example.com`)
4. Réglez la langue pour correspondre au contenu de votre site
5. Sélectionnez **Use URLs from my page feed only** (pas « Use URLs from both Google's index and my page feed »)

> ⚠️ **Restreignez toujours aux seules URLs du flux de pages :** Sélectionner « both » permet à Google de cibler des pages hors de votre flux, vous privant du contrôle sur les pages qui déclenchent les annonces.

### 4.2 Créer l'ad group DSA

1. Dans la campagne, cliquez sur **+ Ad Group**
2. Sélectionnez **Dynamic** comme type d'ad group
3. Nommez-le clairement (ex : « DSA - All Products » ou « DSA - Services »)
4. Reliez le flux de pages créé en Phase 3

---

## Phase 5️⃣: Définir le ciblage

### 5.1 Choisir la méthode de ciblage

Utilisez les custom labels de votre flux de pages comme méthode de ciblage principale. Ne repliez sur URL contains que si votre structure d'URL est propre et cohérente.

| Méthode | Quand l'utiliser | Fiabilité |
|--------|-------------|-------------|
| Custom labels (du flux de pages) | Choix par défaut pour toutes les configurations | Élevée : vous contrôlez exactement quelles pages sont incluses |
| URL contains | Structure d'URL propre avec des schémas de chemin logiques | Moyenne : dépend de la cohérence des URLs |

**À ne pas utiliser :**

| Méthode | Pourquoi l'éviter |
|--------|-------------|
| All web pages | Aucun contrôle sur les pages qui déclenchent les annonces |
| Categories (générées par Google) | Regroupement imprévisible, aucune transparence |
| Page content contains | Correspondance peu fiable, résultats incohérents |

### 5.2 Appliquer les règles de ciblage

**Pour les custom labels :**

1. Dans l'ad group DSA, allez dans **Dynamic ad targets**
2. Cliquez sur **+**
3. Sélectionnez **Custom label**
4. Saisissez la valeur du libellé (ex : `running_shoes`)
5. Répétez pour chaque libellé que vous voulez cibler

**Pour URL contains :**

1. Dans l'ad group DSA, allez dans **Dynamic ad targets**
2. Cliquez sur **+**
3. Sélectionnez **URL contains**
4. Saisissez le schéma d'URL (ex : `/products/` ou `/services/`)

> 💡 **Segmentez les ad groups par libellé :** Si différents groupes de pages nécessitent des descriptions différentes, créez des ad groups DSA distincts par custom label (ex : « DSA - Running Shoes » et « DSA - Hiking Boots »).

---

## Phase 6️⃣: Configurer les exclusions de pages

### 6.1 Exclure les pages non pertinentes

Allez dans **Dynamic ad targets** > **Exclusions** et ajoutez des exclusions pour les pages non commerciales :

| Type de page | Méthode d'exclusion | Valeur |
|-----------|-----------------|-------|
| Page de contact | URL contains | `/contact` |
| Page « à propos » | URL contains | `/about` |
| Pages CGU/confidentialité | URL contains | `/terms`, `/privacy`, `/cookie` |
| Panier/paiement | URL contains | `/cart`, `/checkout` |
| Pages de connexion/compte | URL contains | `/login`, `/account`, `/my-account` |
| Blog (si non ciblé) | URL contains | `/blog` |
| Pages carrières | URL contains | `/careers`, `/jobs` |

### 6.2 Ajouter les exclusions basées sur le contenu

Pour un filtrage dynamique des pages selon le contenu :

1. Allez dans **Dynamic ad targets** > **Exclusions**
2. Sélectionnez **Page content contains**
3. Ajoutez des termes d'exclusion pour les pages qui ne doivent pas déclencher d'annonces

| Exclusion de contenu | Objectif |
|-------------------|---------|
| `out of stock` | Empêche les annonces pour les produits indisponibles |
| `unavailable` | Empêche les annonces pour les articles arrêtés |
| `coming soon` | Empêche les annonces pour les produits non lancés |
| `sold out` | Empêche les annonces pour les stocks épuisés |

### 6.3 Appliquer les listes existantes de mots-clés à exclure

1. Allez dans **Tools & Settings** > **Shared Library** > **Negative Keyword Lists**
2. Appliquez vos listes de mots-clés à exclure existantes à la campagne/l'ad group DSA
3. N'ajoutez PAS vos mots-clés actifs comme exclusions dans l'ad group DSA

> ⚠️ **N'excluez pas vos mots-clés existants des DSA :** Google privilégie déjà les correspondances exactes de mots-clés sur les DSA. Ajouter des mots-clés en exclusion dans les DSA bloque des variantes proches légitimes et des requêtes de longue traîne que les DSA devraient capter.

---

## Phase 7️⃣: Rédiger les lignes de description DSA

### 7.1 Comprendre la structure des annonces DSA

Google génère les titres dynamiquement à partir du contenu de la page. Vous ne rédigez que les lignes de description (Description 1 et Description 2).

### 7.2 Rédiger les descriptions

Pour chaque ad group DSA, créez au moins une annonce DSA :

1. Dans l'ad group DSA, cliquez sur **+ Ad** > **Dynamic Search Ad**
2. Rédigez **Description 1** : incluez votre proposition de valeur principale et votre CTA
3. Rédigez **Description 2** : ajoutez un point de preuve à l'appui ou un bénéfice secondaire

| Ligne de description | Axe de contenu | Exemple (e-commerce) | Exemple (lead gen) |
|-----------------|---------------|----------------------|--------------------|
| Description 1 | Proposition de valeur + CTA | Free shipping on orders over €50. Shop now. | Get a free quote in 24 hours. No obligation. |
| Description 2 | Preuve + bénéfice | Rated 4.8/5 by 2,000+ customers. Easy returns. | 15 years experience. 500+ projects delivered. |

### 7.3 Segmenter si nécessaire

Si une seule paire de descriptions ne fonctionne pas sur toutes les pages ciblées, séparez en ad groups DSA distincts :

1. Créez un nouvel ad group DSA par groupe de pages
2. Attribuez le ciblage custom label pertinent à chaque ad group
3. Rédigez des descriptions spécifiques à ce groupe de pages

> 💡 **Testez avant de séparer :** Des descriptions génériques suffisent souvent sur des pages apparentées. Ne segmentez que lorsque les descriptions seraient trompeuses ou non pertinentes pour certains groupes de pages.

---

### Validation / Critères de complétion

Cette SOP est terminée quand :

- [ ] Évaluation de pertinence DSA réussie (les quatre conditions remplies)
- [ ] Inventaire d'URLs extrait et nettoyé
- [ ] Flux de pages téléversé avec des custom labels, sans erreurs
- [ ] Domaine et langue DSA configurés
- [ ] Flux de pages relié et réglé sur « page feed URLs only »
- [ ] Règles de ciblage appliquées via custom labels ou URL contains
- [ ] Pages non pertinentes exclues (contact, CGU, panier, connexion, etc.)
- [ ] Exclusions basées sur le contenu définies pour les pages en rupture de stock ou indisponibles
- [ ] Listes de mots-clés à exclure existantes appliquées
- [ ] Descriptions DSA rédigées avec proposition de valeur et CTA
- [ ] Annonce approuvée et diffusée (aucun refus)

---

### Passerelle de sortie

Une fois les DSA en ligne et approuvées :

| Délai | Action |
|-----------|--------|
| Jour 1-3 | Surveillez quotidiennement le rapport sur les termes de recherche pour repérer les requêtes non pertinentes |
| Jour 3-7 | Ajoutez des mots-clés à exclure pour tout terme de recherche non pertinent |
| Semaine 2 | Comparez la performance des DSA aux campagnes de mots-clés |
| En continu | Faites remonter les termes de recherche DSA performants vers des ad groups basés sur des mots-clés |

**En cas de problème :**

| Problème | Rediriger vers |
|-------|----------|
| Termes de recherche non pertinents qui apparaissent | Ajoutez des exclusions, revoyez les exclusions, resserrez les custom labels |
| Termes de recherche performants découverts | [SOP - Promouvoir les termes de recherche en mots-cles](<Search - Promouvoir les termes de recherche en keywords.md>) |
| CTR faible sur les annonces DSA | Réécrivez les descriptions, segmentez davantage les ad groups |
| Pages diffusant des annonces avec du contenu obsolète | Mettez à jour le contenu de la page ou excluez les pages via le flux |

---

### Erreurs fréquentes

| Erreur | Pourquoi ça arrive | Comment l'éviter |
|---------|----------------|--------------|
| Les DSA ciblent des pages non pertinentes | Ciblage « All web pages » ou absence de flux de pages | Utilisez toujours un flux de pages avec des custom labels |
| Les titres ne correspondent pas à l'intention de l'utilisateur | Mauvais titres HTML sur les landing pages | Corrigez les titres de page avant d'activer les DSA |
| Budget consommé par les DSA au lieu des mots-clés | DSA dans une campagne distincte au budget non plafonné | Placez par défaut l'ad group DSA dans la campagne de mots-clés |
| Les produits en rupture de stock reçoivent des clics | Aucune exclusion basée sur le contenu | Ajoutez les exclusions de contenu « out of stock » et « unavailable » |
| Les descriptions paraissent génériques sur les groupes de pages | Un seul ad group ciblant des pages variées | Segmentez les ad groups par custom label avec des descriptions sur mesure |
| Mots-clés actifs exclus des DSA | Ajout d'exclusions de mots-clés à l'ad group DSA | N'excluez pas vos propres mots-clés du ciblage DSA |
| Flux de pages qui ne se met pas à jour (e-commerce) | Téléversement manuel sans actualisation planifiée | Configurez une récupération planifiée toutes les 6 heures via un outil de gestion de flux |

---

### Documents liés

| Document | Type | Utilisé dans |
|----------|------|---------|
| [Dynamic Search Ads Mental Model](<Search - Dynamic Search Ads.md>) | Modèle mental | Évaluation de pertinence (Phase 1) |
| [DSA Targeting Options Reference](<Search - Options de ciblage DSA.md>) | Référence | Règles de ciblage (Phase 5) |
| [Negative Keyword Reference](<Search - Mots-clés à exclure.md>) | Référence | Exclusions (Phase 6) |
| [Search Campaign Structure Mental Model](<Search - Structure de campagne Search.md>) | Modèle mental | Logique de placement de la porte de décision |
| [SOP - Promouvoir les termes de recherche en mots-cles](<Search - Promouvoir les termes de recherche en keywords.md>) | SOP | Passerelle de sortie : faire remonter les découvertes DSA |
