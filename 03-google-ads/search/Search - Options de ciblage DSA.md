# Options de ciblage DSA

> **Plateforme :** Google Ads
> **Catégorie :** Search
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Documente les huit options de ciblage DSA, les spécifications du page feed, la syntaxe des custom labels, les méthodes d'import et les règles d'exclusion de pages pour les campagnes Dynamic Search Ads.

---

## Ce que couvre cette fiche / Ce qu'elle ne couvre PAS

**Cette fiche :**

- Documente les huit options de ciblage DSA avec leurs mécanismes, syntaxe et limitations
- Spécifie le format CSV du page feed, les règles de custom labels et les méthodes d'import
- Couvre les options d'exclusion de pages et les patterns d'exclusion recommandés
- Évalue chaque option de ciblage en termes de contrôle et de fiabilité

**Cette fiche ne couvre PAS :**

- La stratégie pour savoir quand utiliser DSA dans votre compte (Voir : [Dynamic Search Ads Mental Model](<Search - Dynamic Search Ads.md>))
- Les instructions pas à pas de création de campagne
- La rédaction d'annonces DSA ou de descriptions
- La sélection de stratégie d'enchères pour les campagnes DSA

---

## Aide-mémoire

| **Option de ciblage** | **Méthode de configuration** | **Niveau de contrôle** | **Recommandation** |
|---|---|---|---|
| **1. Toutes les pages web** | Toggle dans le ad group | Aucun | Non recommandé |
| **2. Le titre de page contient** | Saisir des mots-clés | Faible | Non recommandé |
| **3. Le contenu de page contient** | Saisir des mots-clés | Faible | Non recommandé |
| **4. Landing pages des ad groups standard** | Auto-renseigné | Moyen | Acceptable |
| **5. Catégories** | Liste générée par Google | Faible | Non recommandé |
| **6. URL exacte** | Saisir les URLs exactes | Élevé (statique) | Acceptable |
| **7. URL contient** | Saisir des patterns d'URL | Élevé (dynamique) | Recommandé |
| **8. Custom label (page feed)** | Import CSV/feed | Le plus élevé | Recommandé |

> 💡 **Commencez par URL contient pour une configuration rapide. Passez aux custom labels (page feed) quand vous avez besoin de filtrage, d'automatisation ou de segmentation par labels.**

---

## 1. Toutes les pages web

### Ce que ça fait

Cible toutes les pages de votre domaine que Google a indexées. Google décide quelle page correspond à quelle requête de recherche.

### Configuration

Sélectionnez "Toutes les pages web" comme source de ciblage dans les paramètres du ad group DSA. Aucune configuration supplémentaire requise.

### Règles

| **Règle** | **Détails** |
|---|---|
| Portée | Toutes les pages indexées du domaine |
| Contrôle | Zéro : Google choisit la landing page |
| Dépendance à l'index | Ne cible que les pages que Google a crawlées et indexées |

### Quand utiliser

- Jamais comme méthode de ciblage principale
- Tests temporaires uniquement, avec des listes de mots-clés à exclure strictes et des budgets faibles

### Quand NE PAS utiliser

| **Situation** | **Pourquoi** |
|---|---|
| Toute campagne en production | Inclut des pages non pertinentes (à propos, contact, CGV, politique de confidentialité, carrières) |
| Sites avec des pages à contenu faible | Google associe les requêtes à des pages de mauvaise qualité |
| E-commerce avec des produits en rupture | Pas de moyen d'exclure les produits dynamiquement |

---

## 2. Le titre de page contient

### Ce que ça fait

Cible les pages dont la balise HTML `<title>` contient des mots spécifiques que vous définissez.

### Configuration

Saisissez un ou plusieurs mots-clés. Google associe les pages dont le titre HTML contient ces mots.

### Règles

| **Règle** | **Détails** |
|---|---|
| Portée de correspondance | Balise HTML `<title>` uniquement |
| Dépendance à l'index | Ne fonctionne que sur les pages indexées par Google : si Google n'a pas crawlé la page, elle ne correspondra pas |
| Délai de mise à jour | Les changements de titres de page mettent du temps à se refléter (dépend du calendrier de crawl de Google) |
| Contrôle | Limité : vous ne pouvez pas contrôler comment Google interprète les correspondances de mots |

### Quand utiliser

- Non recommandé pour aucun cas d'usage

### Quand NE PAS utiliser

| **Situation** | **Pourquoi** |
|---|---|
| Sites avec des balises title incohérentes | Correspondance imprévisible |
| Pages avec des titres génériques | Correspondance trop large |
| Tout scénario nécessitant de la précision | Le délai d'indexation de Google et son interprétation rendent cette option non fiable |

---

## 3. Le contenu de page contient

### Ce que ça fait

Cible les pages dont le contenu visible contient des mots spécifiques que vous définissez. Google scanne l'intégralité du contenu de la page, y compris les en-têtes, pieds de page, menus de navigation et texte de la barre latérale.

### Configuration

Saisissez un ou plusieurs mots-clés. Google associe les pages dont le contenu du body contient ces mots.

### Règles

| **Règle** | **Détails** |
|---|---|
| Portée de correspondance | Tout le texte visible de la page, y compris navigation, en-têtes, pieds de page, barres latérales |
| Faux positifs | Un mot dans le pied de page ou le menu de navigation déclenche une correspondance pour chaque page utilisant ce modèle |
| Dépendance à l'index | Dépend du crawl et de l'indexation de Google |
| Contrôle | Très faible : les éléments de modèle causent une correspondance à l'échelle du site |

### Quand utiliser

- Non recommandé pour aucun cas d'usage

### Quand NE PAS utiliser

| **Situation** | **Pourquoi** |
|---|---|
| Sites avec navigation/pied de page partagés | Chaque page correspond car les éléments partagés contiennent le mot-clé |
| Tout site avec des pages basées sur un modèle | Impossible d'isoler le contenu unique de la page du contenu partagé du modèle |
| Scénarios nécessitant un ciblage prévisible | Le comportement de correspondance est imprévisible |

---

## 4. Landing pages des ad groups standard

### Ce que ça fait

Cible uniquement les URLs de landing pages déjà utilisées dans vos ad groups basés sur des keywords. Google limite la correspondance DSA à ces pages spécifiques.

### Configuration

Sélectionnez "Landing pages de vos ad groups standard" dans le ciblage du ad group DSA. Google auto-remplit la liste à partir de vos campagnes keyword actives.

### Règles

| **Règle** | **Détails** |
|---|---|
| Source | URLs des final URLs dans les ad groups keyword actifs |
| Portée | Uniquement les pages que vous ciblez déjà avec des keyword ads |
| Découverte | Zéro : ne peut pas trouver de nouvelles pages ou produits |
| Mises à jour | Reflète automatiquement les changements d'URLs de vos ad groups keyword |

### Quand utiliser

| **Scénario** | **Pourquoi** |
|---|---|
| Compléter les campagnes keyword | Manière sûre de capter des requêtes supplémentaires pour les pages que vous ciblez déjà |
| Déploiement DSA prudent | Pas de risque d'atterrir sur des pages inattendues |

### Quand NE PAS utiliser

| **Situation** | **Pourquoi** |
|---|---|
| Campagnes de découverte | Ne peut pas trouver de requêtes pour des pages absentes des ad groups keyword |
| E-commerce avec de gros catalogues | Ne couvre que les pages que vous ciblez déjà avec des keywords |
| Lancements de nouveaux produits | Les nouvelles pages ne sont pas encore dans les ad groups keyword |

---

## 5. Catégories

### Ce que ça fait

Google regroupe automatiquement les pages de votre site en catégories basées sur sa propre analyse. Vous sélectionnez parmi les catégories que Google génère.

### Configuration

Après que Google a crawlé votre site, une liste de catégories apparaît dans les paramètres du ad group DSA. Sélectionnez une ou plusieurs catégories à cibler.

### Règles

| **Règle** | **Détails** |
|---|---|
| Génération | Google crée les catégories automatiquement : aucun contrôle manuel sur les noms ou regroupements |
| Précision | Souvent imprécis : Google peut regrouper des pages sans rapport |
| Disponibilité | Les catégories peuvent ne pas apparaître pour tous les sites, surtout les plus petits |
| Mises à jour | Google met à jour les catégories selon son propre calendrier |

### Quand utiliser

- Non recommandé pour aucun cas d'usage

### Quand NE PAS utiliser

| **Situation** | **Pourquoi** |
|---|---|
| Tout scénario nécessitant du contrôle | Vous ne pouvez pas influencer comment Google crée ou attribue les catégories |
| Sites avec du contenu diversifié | Les regroupements sont souvent imprécis |
| Comptes nécessitant une performance prévisible | Pas de moyen d'auditer ou corriger les attributions de catégories |

---

## 6. URL exacte

### Ce que ça fait

Cible des URLs spécifiques et exactes que vous définissez. Seules ces pages exactes sont éligibles pour la correspondance DSA.

### Configuration

Saisissez l'URL complète pour chaque page que vous voulez cibler. Chaque URL doit correspondre exactement.

### Règles

| **Règle** | **Détails** |
|---|---|
| Type de correspondance | Correspondance URL exacte uniquement (y compris slashs finaux, paramètres) |
| Maintenance | Manuelle : vous devez ajouter/supprimer les URLs quand les pages changent |
| Changements d'URL | Si une URL change (mise à jour du slug, migration de domaine), le ciblage casse silencieusement |
| Échelle | Impraticable pour les sites avec des centaines ou milliers de pages |
| Nouvelles pages | Les nouvelles pages ne sont pas incluses tant que vous ne les ajoutez pas manuellement |

### Quand utiliser

| **Scénario** | **Pourquoi** |
|---|---|
| Petits sites avec moins de 20 pages cibles | Nombre gérable d'URLs à maintenir manuellement |
| Ciblage temporaire pour des promotions spécifiques | Épingler des landing pages spécifiques pour un temps limité |

### Quand NE PAS utiliser

| **Situation** | **Pourquoi** | **Alternative** |
|---|---|---|
| Gros catalogues | La maintenance manuelle ne passe pas à l'échelle | URL contient ou custom labels |
| Sites avec des changements d'URL fréquents | Les cibles cassent silencieusement | URL contient (basé sur des patterns) |
| Cas d'usage de découverte | Ne peut pas trouver de nouvelles pages | URL contient |

---

## 7. URL contient

### Ce que ça fait

Cible les pages dont l'URL contient un pattern de texte spécifique. Toute page de votre domaine dont l'URL correspond au pattern est éligible pour la correspondance DSA.

### Configuration

Saisissez un pattern d'URL (chaîne de texte). Google associe toute page indexée dont l'URL contient cette chaîne.

**Exemples de patterns :**

| **Pattern** | **Correspond à** | **Cas d'usage** |
|---|---|---|
| `/products/` | Toutes les pages avec `/products/` dans l'URL | Cibler toutes les pages produit |
| `/samsung/` | Toutes les pages avec `/samsung/` dans l'URL | Cibler une marque spécifique |
| `/blog/` | Toutes les pages avec `/blog/` dans l'URL | Cibler le contenu du blog |
| `/category/running-shoes` | Pages avec ce segment de chemin | Cibler une catégorie spécifique |

### Règles

| **Règle** | **Détails** |
|---|---|
| Type de correspondance | Correspondance de sous-chaîne : toute URL contenant le pattern est éligible |
| Sensibilité à la casse | Non sensible à la casse |
| Patterns multiples | Créez des cibles séparées pour chaque pattern, ou combinez dans un ad group |
| Découverte | Inclut automatiquement les nouvelles pages correspondant au pattern |
| Spécificité | Des patterns plus spécifiques = un ciblage plus précis |

### Quand utiliser

| **Scénario** | **Pourquoi** |
|---|---|
| E-commerce avec des URLs structurées | Cibler les catégories, marques ou types de produits par chemin d'URL |
| Sites avec une structure d'URL cohérente | Les patterns correspondent de manière fiable aux pages visées |
| Campagnes de découverte | Capte automatiquement les nouvelles pages correspondant au pattern |
| Configuration rapide sans infrastructure de feed | Pas de CSV ni d'outil de feed requis |

### Quand NE PAS utiliser

| **Situation** | **Pourquoi** | **Alternative** |
|---|---|---|
| Sites avec des URLs non structurées (IDs aléatoires, hashs) | Les patterns ne peuvent pas identifier de manière fiable les types de pages | Custom labels (page feed) |
| Besoin de filtrer par attributs non-URL (stock, marge, prix) | Les patterns d'URL ne peuvent pas accéder aux données produit | Custom labels (page feed) |
| Besoin de combiner plusieurs conditions de filtre | URL contient est un filtre à une seule dimension | Custom labels (page feed) |

---

## 8. Custom label (page feed)

### Ce que ça fait

Vous importez une liste d'URLs spécifiques avec des custom labels via un fichier CSV ou un feed. DSA cible les pages en fonction de ces labels. Cela vous donne un contrôle total sur les pages éligibles et leur regroupement.

### Configuration

Importez un page feed (CSV ou Google Sheets) via Google Ads > Outils > Données d'entreprise > Page Feeds. Assignez le feed à la campagne DSA, puis ciblez par custom label dans les paramètres du ad group.

### Format CSV du page feed

Le fichier CSV nécessite exactement deux colonnes :
| **Colonne** | **Contenu** | **Requis** |
|---|---|---|
| `page_url` | URL complète de la page | Oui |
| `custom_label` | Label(s) pour cette URL | Oui |

**Exemple CSV :**

```
page_url,custom_label
https://example.com/product/samsung-tv-55,electronics;samsung;single_product
https://example.com/product/lg-oled-65,electronics;lg;single_product
https://example.com/category/running-shoes,shoes;category_page
```

### Règles de syntaxe des custom labels

| **Règle** | **Détails** |
|---|---|
| Labels multiples par URL | Séparez par des points-virgules : `label_one;label_two;label_three` |
| Convention de nommage | Utilisez des underscores au lieu d'espaces : `single_product` et non `single product` |
| Caractères spéciaux | Évitez les caractères spéciaux dans les noms de labels |
| Combinaison de labels dans le ciblage | Ciblez plusieurs labels dans un ad group pour créer une logique ET (ex. : ciblez "single_product" ET "samsung" pour correspondre uniquement aux pages produit Samsung individuelles) |
| Casse | Les labels ne sont pas sensibles à la casse, mais utilisez une casse cohérente pour la clarté |

### Méthodes d'import

| **Méthode** | **Comment** | **Rafraîchissement automatique** |
|---|---|---|
| Import de fichier CSV | Google Ads > Outils > Données d'entreprise > Page Feeds > Importer | Non : réimport manuel requis pour les mises à jour |
| Google Sheets | Liez un Google Sheet comme source de feed | Non : rafraîchissement manuel |
| URL HTTPS hébergée | Hébergez le CSV à une URL HTTPS publique, collez l'URL comme source de feed | Oui : planifiez toutes les 6, 12 ou 24 heures |

> 💡 **Pour l'e-commerce, utilisez la méthode HTTPS avec un outil de gestion de feed (Channable, DataFeedWatch, ou similaire). Cela permet un filtrage automatique par statut de stock, marge, type de produit et marque, avec des rafraîchissements planifiés.**

### Configuration du calendrier (feeds HTTPS uniquement)

| **Paramètre** | **Options** | **Recommandé** |
|---|---|---|
| Fréquence de rafraîchissement | Toutes les 6 heures, toutes les 12 heures, toutes les 24 heures | Toutes les 6 heures pour l'e-commerce |
| URL du feed | Doit être une URL HTTPS accessible publiquement | Utilisez un outil de gestion de feed pour la générer |
| Format | CSV avec colonnes `page_url` et `custom_label` | Même format que l'import manuel |

### Gestion de feed e-commerce

Quand vous utilisez un outil de gestion de feed pour les page feeds :

| **Filtre** | **Objectif** | **Exemple** |
|---|---|---|
| Rupture de stock | Exclure les produits sans inventaire | Supprimer les URLs où `availability != in stock` |
| Marge | Ne cibler que les produits rentables | Inclure uniquement les URLs où la marge > 20 % |
| Type de produit | Segmenter par catégorie | Labelliser par type de produit pour la segmentation en ad groups |
| Marque | Segmenter par marque | Labelliser par nom de marque pour des ad groups spécifiques à la marque |
| Gamme de prix | Cibler des tranches de prix spécifiques | Labelliser comme `high_value` ou `low_value` selon le prix |

### Règles

| **Règle** | **Détails** |
|---|---|
| Taille du feed | Pas de limite publiée, mais gardez les feeds propres (supprimez les URLs inactives) |
| Format d'URL | URLs complètes incluant `https://` |
| Attribution du feed | Assignez le page feed au niveau de la campagne dans les paramètres de campagne |
| Ciblage par label | Définissez le ciblage par label au niveau du ad group |
| Feeds multiples | Un feed par campagne (assignez un page feed par campagne DSA) |

### Quand utiliser

| **Scénario** | **Pourquoi** |
|---|---|
| E-commerce avec de gros catalogues | Filtrer par stock, marge, marque, catégorie automatiquement |
| Sites nécessitant une segmentation multidimensionnelle | Combiner les labels pour un ciblage précis en ad groups |
| Pipelines de feed automatisés | Les feeds HTTPS se rafraîchissent selon un calendrier sans travail manuel |
| Comptes nécessitant un contrôle strict des pages | Seules les URLs dans le feed sont éligibles |

### Quand NE PAS utiliser

| **Situation** | **Pourquoi** | **Alternative** |
|---|---|---|
| Petits sites avec moins de 20 pages | L'infrastructure de feed est disproportionnée | URL contient ou URL exacte |
| Pas de capacité de gestion de feed | La maintenance CSV manuelle à grande échelle est source d'erreurs | URL contient |
| Campagnes de test rapides | Le temps de mise en place est plus élevé | URL contient |

---

## Exclusions de pages

Les exclusions de pages empêchent des pages spécifiques d'être ciblées par DSA, quelle que soit l'option de ciblage utilisée.

### Méthodes d'exclusion

| **Type d'exclusion** | **Fonctionnement** | **Cas d'usage** |
|---|---|---|
| URL contient | Exclure les pages dont l'URL contient un pattern | Exclure des sections entières (ex. : `/cart/`, `/checkout/`) |
| URL exacte | Exclure une URL exacte spécifique | Exclure une page spécifique |
| Le contenu de page contient | Exclure les pages contenant du texte spécifique dans le body | Exclusion dynamique basée sur le contenu de la page (ex. : "en rupture", "indisponible") |
| Le titre de page contient | Exclure les pages avec des mots spécifiques dans le titre | Exclure les pages par mot-clé du titre |

### Exclusions permanentes recommandées

Excluez toujours ces types de pages du ciblage DSA :
| **Type de page** | **Pattern d'exclusion** | **Méthode** |
|---|---|---|
| Page de contact | `/contact` | URL contient |
| CGV | `/terms` | URL contient |
| Politique de confidentialité | `/privacy` | URL contient |
| À propos | `/about` | URL contient |
| Panier | `/cart` | URL contient |
| Checkout | `/checkout` | URL contient |
| Connexion/compte | `/login`, `/account`, `/my-account` | URL contient |
| Page de remerciement/confirmation | `/thank-you`, `/order-confirmation` | URL contient |
| Sitemap | `/sitemap` | URL contient |

> ⚠️ **N'excluez PAS automatiquement les pages du blog :** le contenu du blog peut convertir. Testez la performance des pages du blog avant de décider de les exclure.

### Exclusions dynamiques

Utilisez les exclusions "Le contenu de page contient" pour exclure automatiquement les pages en fonction du texte sur la page :

| **Texte d'exclusion** | **Objectif** |
|---|---|
| `out of stock` | Exclure les pages produit en rupture de stock |
| `unavailable` | Exclure les produits indisponibles |
| `coming soon` | Exclure les pages en pré-lancement |
| `discontinued` | Exclure les produits abandonnés |

> 💡 **Les exclusions dynamiques dépendent du crawl de Google. Il y a un délai entre le moment où le contenu de la page change et le moment où Google re-crawle la page. Pour un filtrage de stock en temps réel, utilisez des custom labels avec un page feed à la place.**

### Mots-clés à exclure en DSA

| **Règle** | **Détails** |
|---|---|
| Appliquer les listes de mots-clés à exclure existantes | Ajoutez vos listes de mots-clés à exclure au niveau du compte et de la campagne aux campagnes DSA |
| NE PAS exclure des keywords de DSA basés sur le chevauchement avec les campagnes keyword | Laissez le Classement de l'annonce décider quelle campagne diffuse : la campagne keyword ou la campagne DSA |
| Négatifs au niveau de la requête | Ajoutez des négatifs pour les requêtes non pertinentes découvertes dans les rapports de termes de recherche DSA |

---

## Guide de décision : quelle option de ciblage ?

```
Avez-vous un outil de gestion de feed ou pouvez-vous héberger un CSV ?
|
+-- OUI --> Avez-vous besoin de filtrer par stock, marge ou attributs produit ?
|           |
|           +-- OUI --> Utilisez Custom Labels (page feed)
|           |
|           +-- NON --> Votre site a-t-il des URLs structurées et cohérentes ?
|                      |
|                      +-- OUI --> Utilisez URL Contient (configuration plus simple)
|                      |
|                      +-- NON --> Utilisez Custom Labels (page feed)
|
+-- NON --> Votre site a-t-il des URLs structurées et cohérentes ?
           |
           +-- OUI --> Utilisez URL Contient
           |
           +-- NON --> Avez-vous moins de 20 pages cibles ?
                      |
                      +-- OUI --> Utilisez URL Exacte
                      |
                      +-- NON --> Utilisez Landing Pages des Ad Groups Standard
                                 (pendant que vous mettez en place l'infrastructure de feed)
```

---

## Erreurs courantes

| **Erreur** | **Problème** | **Solution** |
|---|---|---|
| Utiliser "Toutes les pages web" en production | Les annonces diffusent pour des pages non pertinentes (contact, CGV, carrières) | Passer à URL contient ou custom labels |
| Utiliser "Le contenu de page contient" pour le ciblage | Les éléments de modèle partagés (nav, footer) causent une correspondance à l'échelle du site | Utilisez URL contient ou custom labels à la place |
| Espaces dans les custom labels | Les labels cassent ou ne correspondent pas | Utilisez des underscores : `single_product` et non `single product` |
| Ne pas exclure les pages utilitaires | Les annonces atterrissent sur des pages panier, connexion, confidentialité | Ajoutez des exclusions permanentes URL contient pour toutes les pages utilitaires |
| Exclure les pages du blog par défaut | Manquer du trafic convertissant depuis des requêtes informationnelles | Testez la performance du blog avant d'exclure |
| Exclure des keywords qui chevauchent les campagnes keyword | Empêche DSA de concourir, peut perdre de l'impression share | Laissez le Classement de l'annonce décider : n'ajoutez pas de négatifs de chevauchement keyword à DSA |
| Utiliser URL exacte pour de gros catalogues | Les cibles cassent quand les URLs changent, la maintenance manuelle ne passe pas à l'échelle | Passer à URL contient ou custom labels |
| Ne pas planifier les rafraîchissements de feed HTTPS | Le page feed devient obsolète, les produits en rupture continuent de diffuser | Réglez le rafraîchissement à toutes les 6 heures pour l'e-commerce |
| Oublier d'assigner le page feed au niveau de la campagne | Le ciblage par custom label dans les ad groups ne fonctionne pas sans attribution du feed au niveau de la campagne | Assignez le feed dans les paramètres de campagne avant de définir les cibles des ad groups |

---

## Documents liés

| **Document** | **Relation** |
|---|---|
| [Dynamic Search Ads Mental Model](<Search - Dynamic Search Ads.md>) | Cadre stratégique pour savoir quand et pourquoi utiliser DSA |
