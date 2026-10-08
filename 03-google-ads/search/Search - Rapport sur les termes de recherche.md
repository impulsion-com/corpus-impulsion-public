# Rapport sur les termes de recherche

> **Plateforme :** Google Ads
> **Catégorie :** Search
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Documente la structure, les colonnes, les filtres et les méthodes d'accès du rapport sur les termes de recherche Google Ads (STR) : quelles données il contient, comment y naviguer, et ce que chaque champ signifie.

---

## Ce que couvre cette fiche / Ce qu'elle ne couvre PAS

**Cette fiche :**

- Définit chaque colonne disponible dans le rapport sur les termes de recherche
- Explique les valeurs de statut des termes de recherche (Ajouté, Aucun, Exclu)
- Documente comment accéder, filtrer, segmenter et exporter les données du STR
- Fournit une matrice de décision pour classifier les termes de recherche par performance

**Cette fiche ne couvre PAS :**

- Comment exécuter un workflow complet d'analyse de termes de recherche (Voir : [SOP - Analyser les rapports de termes de recherche](<Search - Analyser les rapports de termes de recherche.md>))
- Les listes ou structures de mots-clés à exclure (Voir : [Negative Keyword Reference](<Search - Mots-clés à exclure.md>))
- Les mécanismes des types de correspondance (Voir : [Match Type Reference](<Search - Types de correspondance.md>))
- Les recommandations d'enchères ou de budget basées sur les résultats du STR

---

## Aide-mémoire : le rapport sur les termes de recherche en un coup d'oeil

| **Aspect** | **Détails** |
|------------|-------------|
| **Emplacement** | Google Ads > Campagnes/Ad Groups > Insights et rapports > Termes de recherche |
| **Disponibilité des données** | Campagnes Search, Shopping et Performance Max |
| **Plage de dates par défaut** | 7 derniers jours (ajustable) |
| **Seuil de confidentialité** | Les termes de recherche en dessous du seuil de confidentialité de Google sont masqués |
| **Fraîcheur des données** | Typiquement 24-48 heures de retard |
| **Formats d'export** | CSV, Google Sheets, PDF |
| **Accès API** | `search_term_view` pour Search/Shopping, `campaign_search_term_view` pour PMax |

> 💡 **Note de confidentialité :** Google masque les termes de recherche qui n'atteignent pas un seuil de volume minimum. Ces requêtes consomment quand même du budget mais n'apparaissent pas dans le rapport. Le pourcentage de termes masqués varie par compte.

---

## Comment accéder au rapport sur les termes de recherche

### Depuis l'interface Google Ads

1. Connectez-vous à Google Ads
2. Naviguez vers une campagne Search, Shopping ou Performance Max (ou restez au niveau du compte pour toutes les campagnes)
3. Cliquez sur **Insights et rapports** dans la navigation de gauche
4. Cliquez sur **Termes de recherche**

### Depuis Google Ads Editor

1. Ouvrez Google Ads Editor
2. Sélectionnez le compte
3. Allez dans **Keywords** > onglet **Termes de recherche**
4. Les données sont en lecture seule dans Editor : utilisez-le pour la revue, pas pour le filtrage

### Depuis l'API

**Campagnes Search et Shopping :** utilisez la ressource `search_term_view`. Elle fournit les données de termes de recherche agrégées au niveau du ad group. Les champs clés correspondent aux colonnes décrites ci-dessous.

**Campagnes Performance Max :** utilisez la ressource `campaign_search_term_view` à la place. La `search_term_view` n'inclut pas les données PMax. La ressource `campaign_search_term_view` renvoie les termes de recherche agrégés au niveau de la campagne et fournit des données groupées par catégorie correspondant à la vue Insights dans l'interface.

---

## Détail colonne par colonne

### Colonnes d'identification

| **Colonne** | **Ce qu'elle montre** | **Notes** |
|------------|-------------------|-----------|
| **Terme de recherche** | La requête réelle saisie par un utilisateur dans Google | Peut différer significativement du keyword correspondant |
| **Keyword** | Le keyword de votre compte qui a déclenché l'annonce | Montre le texte du keyword, pas le modificateur de type de correspondance |
| **Type de correspondance** | Comment le keyword a correspondu au terme de recherche | Valeurs : Correspondance exacte, Expression exacte, Requête large |
| **Campagne** | La campagne contenant le keyword déclenché | Utile pour isoler les données STR par thème de campagne |
| **Ad group** | Le ad group contenant le keyword déclenché | Utile pour mapper les termes de recherche à l'intention du ad group |

### Colonnes de performance

| **Colonne** | **Ce qu'elle montre** | **Format** |
|------------|-------------------|------------|
| **Impressions** | Nombre de fois où votre annonce est apparue pour ce terme de recherche | Entier |
| **Clics** | Nombre de clics sur votre annonce depuis ce terme de recherche | Entier |
| **CTR** | Taux de clic (Clics / Impressions) | Pourcentage |
| **Coût** | Dépense totale attribuée à ce terme de recherche | Devise |
| **CPC moy.** | Coût par clic moyen pour ce terme de recherche | Devise |

### Colonnes de conversion

| **Colonne** | **Ce qu'elle montre** | **Format** |
|------------|-------------------|------------|
| **Conversions** | Nombre de conversions attribuées à ce terme de recherche | Décimal (peut être fractionnaire avec le DDA) |
| **Taux de conv.** | Taux de conversion (Conversions / Clics) | Pourcentage |
| **Coût / conv.** | Coût par conversion (Coût / Conversions) | Devise |
| **Valeur de conversion** | Valeur totale de conversion attribuée à ce terme de recherche | Devise |
| **Valeur conv. / coût** | Retour sur dépenses publicitaires (Valeur de conversion / Coût) | Ratio (ex. : 3,5) |
| **Valeur / conv.** | Valeur moyenne par conversion (Valeur de conversion / Conversions) | Devise |

### Colonne de statut

| **Colonne** | **Ce qu'elle montre** | **Notes** |
|------------|-------------------|-----------|
| **Statut du terme de recherche** | Relation entre le terme de recherche et votre compte | Trois valeurs possibles : Ajouté, Aucun, Exclu |

---

## Définitions des statuts de termes de recherche

| **Statut** | **Signification** | **Ce que ça vous dit** |
|------------|-------------|----------------------|
| **Ajouté** | Ce terme de recherche existe comme keyword dans le même ad group | La requête est déjà ciblée explicitement |
| **Aucun** | Ce terme de recherche n'existe pas comme keyword dans le ad group déclencheur | La requête a correspondu via la requête large, l'expression exacte ou la correspondance de variante proche |
| **Exclu** | Ce terme de recherche est dans une liste de mots-clés à exclure ou défini comme négatif au niveau de la campagne/du ad group | La requête est bloquée du déclenchement d'annonces à l'avenir |

> 💡 **"Ajouté" vérifie uniquement le ad group déclencheur :** un terme de recherche peut afficher "Aucun" dans un ad group même s'il existe comme keyword dans un ad group ou une campagne différents.

---

## Catégories de recherche

Google attribue des **catégories de recherche** auto-générées qui regroupent les termes de recherche en clusters thématiques. Celles-ci apparaissent comme un onglet séparé ou une option de colonne dans la vue des termes de recherche.

| **Aspect** | **Détails** |
|------------|-------------|
| **Ce que c'est** | Le regroupement automatisé de Google des termes de recherche par thème |
| **Granularité** | Hiérarchie multi-niveaux (ex. : "Chaussures > Chaussures de course > Trail running") |
| **Cas d'usage** | Identifier des patterns thématiques sur de nombreux termes de recherche en une fois |
| **Limitation** | Les catégories sont définies par Google et ne peuvent pas être personnalisées |

---

## Filtres et segments

### Filtres disponibles

| **Filtre** | **Comment l'utiliser** | **Utile pour** |
|------------|-------------------|----------------|
| **Texte du terme de recherche** | Contient, ne contient pas, est égal à, commence par | Trouver des requêtes ou patterns spécifiques |
| **Statut du terme de recherche** | Ajouté, Aucun, Exclu | Isoler les requêtes non associées (filtrer sur "Aucun") |
| **Campagne / Ad group** | Sélectionner des campagnes ou ad groups spécifiques | Restreindre l'analyse à un seul thème |
| **Conversions** | Supérieur à, inférieur à, égal à, entre | Trouver les termes convertissants ou non convertissants |
| **Coût** | Supérieur à, inférieur à, égal à, entre | Identifier les termes à dépenses élevées |
| **CTR** | Supérieur à, inférieur à, égal à, entre | Trouver les termes à engagement élevé ou faible |
| **Impressions** | Supérieur à, inférieur à, égal à, entre | Filtrer le bruit de faible volume |
| **Taux de conv.** | Supérieur à, inférieur à, égal à, entre | Repérer les requêtes à haute efficacité |

### Segments disponibles

| **Segment** | **Ce qu'il ajoute** |
|-------------|-----------------|
| **Temps** | Jour, semaine, mois, trimestre, année, jour de la semaine |
| **Conversions** | Nom de l'action de conversion, catégorie de conversion |
| **Appareil** | Ordinateur, mobile, tablette |
| **Réseau** | Partenaires du Réseau de Recherche vs Google Search |

> 💡 **Combinez les filtres pour une analyse plus rapide :** appliquez "Statut = Aucun" + "Conversions > 0" pour faire ressortir les termes de recherche convertissants pas encore ajoutés comme keywords. Appliquez "Statut = Aucun" + "Coût > X" + "Conversions = 0" pour faire ressortir le gaspillage.

---

## Options d'export

| **Méthode** | **Format** | **Comment y accéder** |
|------------|------------|-------------------|
| **Téléchargement** | CSV, TSV, PDF | Cliquez sur l'icône de téléchargement dans la barre d'outils au-dessus du rapport |
| **Google Sheets** | Tableur | Cliquez sur l'icône de téléchargement > sélectionnez "Google Sheets" |
| **Planification** | CSV par email | Rapports > Rapports planifiés > créer nouveau |
| **API (Search/Shopping)** | JSON / CSV | Requêtez `search_term_view` via l'API Google Ads |
| **API (PMax)** | JSON / CSV | Requêtez `campaign_search_term_view` via l'API Google Ads |
| **Google Ads Scripts** | Programmatique | Utilisez `AdsApp.search()` avec une requête GAQL |

### Export pour l'analyse N-gram

Pour effectuer une analyse N-gram (découper les termes de recherche en mots uniques, paires de deux mots et groupes de trois mots pour la détection de patterns) :

1. Exportez le STR complet en CSV
2. Assurez-vous que ces colonnes sont incluses : Terme de recherche, Impressions, Clics, Coût, Conversions, Valeur de conversion
3. Traitez le CSV avec un script N-gram ou des formules de tableur pour découper les termes et agréger les métriques par mot/expression

---

## Matrice de décision : classification des termes de recherche

Cette matrice classifie les termes de recherche par leurs données de performance. Elle définit ce que chaque combinaison signifie, pas quelle action prendre.

| **Conversions** | **Coût** | **Pertinence pour l'offre** | **Classification** |
|-----------------|----------|------------------------|--------------------|
| Au-dessus de la cible | N'importe lequel | Pertinent | Performeur prouvé |
| Au-dessus de la cible | Élevé | Pertinent | Performeur haute valeur, coût élevé |
| 0 | Au-dessus du seuil | Pertinent | Non prouvé, dépenses significatives |
| 0 | Au-dessus du seuil | Non pertinent | Gaspillage |
| 0 | En dessous du seuil | Pertinent | Données insuffisantes |
| 0 | En dessous du seuil | Non pertinent | Gaspillage de faible priorité |
| N'importe lequel | N'importe lequel | Non pertinent | Inadéquation |

**Définition du seuil :** le seuil de coût pour évaluer un terme de recherche dépend de votre CPA cible ou du coût acceptable par test. Un terme de recherche qui a dépensé 2-3x votre CPA cible avec zéro conversion a consommé un budget de test significatif.

> 💡 **Cette matrice classifie, elle ne prescrit pas :** pour les étapes d'exécution de promotion ou de négation des termes de recherche, utilisez les SOPs liés ci-dessous.

---

## Limitations du rapport

| **Limitation** | **Détails** |
|----------------|-------------|
| **Seuil de confidentialité** | Les termes de recherche à faible volume sont entièrement masqués du rapport |
| **Retard des données** | Les données STR ont 24-48 heures de retard par rapport au temps réel |
| **Pas de données Display/Video** | Le STR est disponible uniquement pour les campagnes Search, Shopping et Performance Max |
| **Variantes proches non labellisées** | Le rapport n'indique pas si une correspondance était une variante proche, un synonyme ou une correspondance exacte du keyword |
| **Angle mort cross-campagne** | Le statut "Ajouté" ne vérifie que le ad group déclencheur, pas le compte entier |
| **Données historiques** | Disponibles pour les 2 dernières années maximum, selon l'âge du compte |
| **L'API PMax diffère** | Les données de termes de recherche PMax nécessitent `campaign_search_term_view` au lieu de `search_term_view` |

---

## Erreurs courantes

| **Erreur** | **Problème** | **Solution** |
|-------------|-------------|---------|
| Consulter uniquement des plages de dates courtes | Les petits échantillons mènent à de fausses conclusions sur la qualité des termes de recherche | Utiliser des plages de 30-90 jours pour l'analyse de patterns |
| Ignorer les termes de recherche masqués | Les requêtes non reportées peuvent représenter 20-40 % des dépenses dans certains comptes | Surveiller l'écart entre les clics totaux de la campagne et les clics reportés dans le STR |
| Filtrer uniquement par conversions | Manque les termes à CTR élevé qui pourraient convertir avec des changements de landing page | Examiner le CTR, le coût et la pertinence en plus des conversions |
| Vérifier le STR uniquement au niveau du compte | Manque les patterns d'inadéquation au niveau du ad group | Filtrer par campagne et ad group pour une analyse granulaire |
| Supposer que "Ajouté" signifie totalement optimisé | Un terme de recherche peut être "Ajouté" comme keyword en requête large mais justifier un ajout en correspondance exacte | Vérifier quel keyword et type de correspondance a déclenché l'impression |
| Exporter sans toutes les colonnes | Des données incomplètes rendent l'analyse en aval (N-gram, tableau croisé) non fiable | Vérifier que toutes les colonnes de performance et de conversion sont incluses avant l'export |

---

## Documents liés

| **Document** | **Relation** |
|--------------|------------------|
| [SOP - Analyser les rapports de termes de recherche](<Search - Analyser les rapports de termes de recherche.md>) | Étapes d'exécution pour analyser les termes de recherche : identification de termes non pertinents et candidats à la promotion |
| [SOP - Executer une analyse N-gram](<Search - Exécuter une analyse N-gram.md>) | Étapes d'exécution pour la négation basée sur la performance via les données N-gram agrégées |
| [N-gram Analysis Reference](<Search - Analyse N-gram.md>) | Extraction, classification et modèle d'exclusion N-gram |
| [Search Campaign Structure Mental Model](<Search - Structure de campagne Search.md>) | Cadre de flux des termes de recherche à travers la structure de campagne |
| [Modern Search Campaign Mental Model](<Search - Campagne Search moderne.md>) | Contexte d'interaction entre les types de correspondance et les termes de recherche dans Google Ads moderne |
| [Negative Keyword Reference](<Search - Mots-clés à exclure.md>) | Types de mots-clés à exclure, listes et niveaux de portée |
| [Match Type Reference](<Search - Types de correspondance.md>) | Définitions, comportements et règles de variantes proches des types de correspondance |
