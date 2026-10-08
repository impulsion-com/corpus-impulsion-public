# Analyse N-gram

> **Plateforme :** Google Ads
> **Catégorie :** Search
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Documente ce que sont les N-grams, comment les extraire des données de termes de recherche, comment les classifier par performance, et comment structurer les listes d'exclusion pour les patterns non convertissants et inefficaces à travers les campagnes Google Ads.

---

## Ce que couvre cette fiche / Ce qu'elle ne couvre PAS

**Cette fiche :**

- Définit les types de N-gram (unigramme, bigramme, trigramme) et leur utilisation dans l'analyse des termes de recherche
- Documente le processus d'extraction depuis les données du rapport sur les termes de recherche
- Explique le modèle d'exclusion à deux listes (non convertissants vs. inefficaces)
- Fournit les seuils de classification pour les comptes CPA et ROAS
- Couvre la sélection du type de correspondance d'exclusion et la gestion des listes

**Cette fiche ne couvre PAS :**

- Fournir l'exécution étape par étape de l'analyse N-gram (cela relève d'une SOP)
- Lister des mots-clés à exclure spécifiques à ajouter (Voir : [Negative Keyword Catalog](<Search - Catalogue de mots-clés à exclure.md>))
- Expliquer les mécanismes des types de correspondance negative keyword (Voir : [Negative Keyword Reference](<Search - Mots-clés à exclure.md>))
- Couvrir la navigation dans le rapport sur les termes de recherche ou les définitions de colonnes (Voir : [Search Term Report Reference](<Search - Rapport sur les termes de recherche.md>))
- Recommander des changements d'enchères ou de budget basés sur les résultats N-gram

---

## Aide-mémoire : analyse N-gram en un coup d'oeil

| Aspect | Détails |
|--------|---------|
| Ce que c'est | Décomposer les termes de recherche en composants au niveau mot et expression pour trouver des patterns invisibles au niveau de la requête individuelle |
| Données en entrée | Export du rapport sur les termes de recherche (CSV) avec impressions, clics, coût, conversions, valeur de conversion |
| Plage de dates | 90-180 jours selon le volume (90 minimum, 120 recommandé, 180 étendu pour les comptes à faible volume) |
| Résultat | Deux listes d'exclusion : N-grams non convertissants et N-grams inefficaces |
| Type de correspondance d'exclusion | Expression exacte pour toutes les exclusions N-gram |
| S'applique à | Campagnes Search, campagnes Shopping, termes de recherche PMax |

> 💡 **Pourquoi l'analyse N-gram est importante :** Les termes de recherche individuels peuvent ne pas avoir assez de volume pour être évalués. Agréger les métriques par patterns de mots partagés révèle du gaspillage systémique que la revue terme par terme rate. Un seul bigramme non pertinent peut apparaître dans des centaines de termes de recherche.

---

## Types de N-gram

Un N-gram est une séquence contiguë de N mots extraite d'un terme de recherche. Chaque terme de recherche produit plusieurs N-grams de différentes longueurs.
| Type de N-gram | Longueur | Définition | Exemples de "meilleur crm gratuit logiciel essai" |
|-------------|--------|------------|-----------------------------------------------|
| 1-gram (unigramme) | 1 mot | Mots individuels isolés de la requête | "meilleur", "crm", "gratuit", "logiciel", "essai" |
| 2-gram (bigramme) | 2 mots | Séquences de deux mots dans l'ordre | "meilleur crm", "crm gratuit", "gratuit logiciel", "logiciel essai" |
| 3-gram (trigramme) | 3 mots | Séquences de trois mots dans l'ordre | "meilleur crm gratuit", "crm gratuit logiciel", "gratuit logiciel essai" |

### Quelle longueur de N-gram utiliser

| Longueur | Idéal pour | Attention à |
|--------|----------|---------------|
| 1-gram | Identifier les mots toxiques isolés ("gratuit", "emploi", "DIY") | Taux élevé de faux positifs : les mots courants apparaissent dans les bonnes et les mauvaises requêtes |
| 2-gram | Niveau le plus actionnable : capture les patterns d'intention ("essai gratuit", "comment faire", "près de moi") | Nécessite un volume suffisant de termes de recherche pour produire des agrégats significatifs |
| 3-gram | Attraper des expressions non pertinentes spécifiques ("meilleure garantie prix", "faire soi-même") | Fréquence plus faible : moins de points de données par trigramme |

> 💡 **Commencez par les 2-grams :** Les bigrammes atteignent le juste milieu entre spécificité et volume. Exécutez les 1-grams ensuite pour attraper les mots toxiques isolés. Utilisez les 3-grams uniquement quand l'analyse des 2-grams fait apparaître des patterns ambigus nécessitant plus de contexte.

---

## Méthode d'extraction

### Étape 1️⃣ : Exporter les données de termes de recherche

Exportez le rapport sur les termes de recherche en CSV. Incluez ces colonnes au minimum :
| Colonne requise | Pourquoi |
|----------------|-----|
| Terme de recherche | Texte source à décomposer en N-grams |
| Impressions | Indicateur de volume |
| Clics | Indicateur d'engagement |
| Coût | Attribution de dépense par pattern |
| Conversions | Signal de performance principal |
| Coût / conv. (CPA) | Métrique d'efficacité pour les comptes CPA |
| Valeur de conversion | Attribution de chiffre d'affaires pour les comptes ROAS |
| Valeur de conv. / coût (ROAS) | Métrique d'efficacité pour les comptes ROAS |
| AOV (valeur moyenne de commande) | Seuil non convertissant pour les comptes ROAS (calcul : valeur totale de conversion / total des conversions) |

### Étape 2️⃣ : Sélectionner la plage de dates

| Niveau de dépense du compte | Plage de dates recommandée | Justification |
|---------------------|----------------------|-----------|
| Élevé (>10K€/mois) | 90 jours | Fenêtre minimale : suffisamment de données s'accumulent, mais les N-grams ont besoin de patterns plus larges que les termes individuels |
| Moyen (3K€-10K€/mois) | 120 jours | Défaut recommandé : équilibre entre volume de données et pertinence |
| Faible (<3K€/mois) | 180 jours | Fenêtre étendue pour les comptes à faible volume afin de construire des patterns statistiquement significatifs |

### Étape 3️⃣ : Décomposer les termes de recherche en N-grams

Pour chaque terme de recherche dans l'export :

1. Normaliser le texte (minuscules, supprimer la ponctuation)
2. Diviser en mots individuels
3. Générer tous les 1-grams, 2-grams et 3-grams depuis la séquence de mots
4. Assigner les métriques du terme de recherche parent (impressions, clics, coût, conversions, valeur de conversion) à chaque N-gram

### Étape 4️⃣ : Agréger les métriques par N-gram

Grouper les N-grams identiques et sommer leurs métriques :
| Métrique agrégée | Calcul |
|-------------------|-------------|
| Total impressions | Somme des impressions de tous les termes de recherche contenant le N-gram |
| Total clics | Somme des clics de tous les termes de recherche contenant le N-gram |
| Total coût | Somme du coût de tous les termes de recherche contenant le N-gram |
| Total conversions | Somme des conversions de tous les termes de recherche contenant le N-gram |
| CPA agrégé | Total coût / Total conversions |
| Total valeur de conversion | Somme de la valeur de conversion de tous les termes de recherche contenant le N-gram |
| ROAS agrégé | Total valeur de conversion / Total coût |

### Étape 5️⃣ : Filtrer par volume minimum

Écarter les N-grams avec des données insuffisantes avant de classifier :
| Filtre | Seuil minimum | Pourquoi |
|--------|-------------------|-----|
| Impressions | 100+ | En dessous, le N-gram est trop rare pour tirer des conclusions |
| Clics | 25+ | Besoin d'un volume de clics significatif pour l'évaluation basée sur le coût |
| Coût | Dépend du compte (voir seuils de classification) | Doit atteindre le seuil de dépense pour être classifié comme non convertissant |

---

## Classification des N-grams

C'est le coeur de l'analyse N-gram. Chaque N-gram avec un volume suffisant tombe dans l'un des quatre quadrants.

### Les quatre quadrants

| Quadrant | Conversions | Efficacité | Action |
|----------|-------------|------------|--------|
| Convertissant + efficace | > 0 | Atteint ou bat l'objectif | Protéger : ne rien faire, ou promouvoir les termes associés en keywords |
| Convertissant + inefficace | > 0 | En dessous de l'objectif (CPA élevé ou ROAS bas) | Ajouter à la liste d'exclusion "N-grams inefficaces" |
| Non convertissant + dépense suffisante | 0 | N/A (zéro conversion) | Ajouter à la liste d'exclusion "N-grams non convertissants" |
| Non convertissant + dépense insuffisante | 0 | N/A (trop peu de données) | Surveiller : revoir au prochain cycle d'analyse |

### Seuils de classification

**Pour les comptes axés CPA :**
| Catégorie | Condition | Exemple (CPA cible = 50 €) |
|----------|-----------|---------------------------|
| Non convertissant | Dépense > 2x CPA cible avec 0 conversion | N-gram a dépensé 100 €+ avec 0 conversion |
| Inefficace | CPA > 1,75x CPA cible | CPA du N-gram est 87,50 €+ |
| Efficace | CPA <= CPA cible | CPA du N-gram est 50 € ou moins |

**Pour les comptes axés ROAS :**
| Catégorie | Condition | Exemple (ROAS cible = 4.0, AOV = 75 €) |
|----------|-----------|------------------------------|
| Non convertissant | Dépense > 2x AOV avec 0 conversion | N-gram a dépensé 150 €+ avec 0 conversion |
| Inefficace | ROAS < 0,7x ROAS cible | ROAS du N-gram est en dessous de 2,8 |
| Efficace | ROAS >= ROAS cible | ROAS du N-gram est 4,0 ou au-dessus |

### Données minimales pour la classification

Les filtres de volume de l'étape 5 (100+ impressions, 25+ clics) sont un pré-filtre. La classification inefficace nécessite un seuil de données séparé, plus élevé, pour éviter les faux positifs.

| Classification | Seuil de dépense/efficacité | Seuil minimum de clics | Justification |
|----------------|---------------------------|------------------------|-----------|
| Non convertissant | Dépense > 2x CPA cible (ou 2x AOV) avec 0 conversion | Pas de minimum supplémentaire (le seuil de dépense est le garde-fou) | Le seuil de 2x de dépense implique implicitement des clics significatifs à n'importe quel CPC raisonnable |
| Inefficace | CPA > 1,75x cible ou ROAS < 0,7x cible | 200+ clics | Les N-grams convertissants ont besoin de grands échantillons pour un CPA/ROAS fiable. À 50 clics avec un taux de conversion de 2%, une seule conversion en plus ou en moins change le CPA dramatiquement. 200 clics fournissent une stabilité statistique. |

> ⚠️ **N'excluez pas les N-grams inefficaces avec moins de 200 clics :** Les petits échantillons produisent des chiffres CPA/ROAS peu fiables pour les N-grams convertissants. Un N-gram avec 50 clics et 1 conversion à 50 € de CPA semble inefficace, mais une conversion de plus le fait passer à 25 € de CPA. Attendez 200+ clics avant de classifier comme inefficace.

> ⚠️ **Distinguez non convertissant et inefficace :** Les N-grams non convertissants sont des patterns fondamentalement non pertinents : ils ne convertissent jamais malgré une exposition suffisante. Les N-grams inefficaces convertissent, mais pas de manière rentable. Cette distinction détermine à quelle liste d'exclusion ils appartiennent et à quelle fréquence vous les réévaluez.

---

## Catégorisation des N-grams par type

Au-delà de la classification par performance, catégorisez les N-grams par leur fonction sémantique :
| Catégorie | Exemples | Action typique |
|----------|---------|----------------|
| Termes de marque | Nom de l'entreprise, noms de gamme de produits, acronymes de marque | Protéger : généralement très performants, router vers les campagnes de marque |
| Termes de produit | Types de produits, caractéristiques, spécifications, matériaux | Évaluer par quadrant : la performance varie selon le produit |
| Modificateurs d'intention | "acheter", "comparer", "avis", "gratuit", "comment", "DIY" | Dépend de l'intention : "acheter" est typiquement haute intention, "gratuit" est typiquement du gaspillage pour les produits payants |
| Géographiques | Noms de villes, "près de moi", noms de régions/départements | Dépend de la localisation : précieux si vous desservez cette zone, gaspillage sinon |
| Concurrents | Noms de marques concurrentes, noms de produits concurrents | Dépend de la stratégie : exclure si vous n'avez pas de campagnes concurrentielles |

> 💡 **Construisez votre propre catégorisation.** Les catégories ci-dessus sont des points de départ. Chaque compte est différent : votre produit, audience et paysage concurrentiel déterminent quelles catégories de N-gram comptent le plus. Adaptez ces catégories aux patterns de votre compte et ajoutez-en de nouvelles au fur et à mesure.

---

## Modèle d'exclusion à deux listes

Les exclusions N-gram sont séparées en deux listes de mots-clés à exclure distinctes. Cette séparation est critique pour la gestion continue.

### Liste 1 : N-grams non convertissants

| Propriété | Détails |
|----------|---------|
| Nom de la liste dans Google Ads | "N-grams non convertissants" (ou nom descriptif similaire) |
| Contenu | N-grams avec zéro conversion après avoir dépensé au-dessus du seuil |
| Fréquence de revue | Rarement : ces patterns sont fondamentalement non pertinents |
| Exemples typiques | "emploi", "salaire", "téléchargement gratuit", "réparation DIY", noms de concurrents (si non souhaités) |
| Justification de la séparation | Ces patterns ont prouvé leur non pertinence : ils n'ont pas besoin de réévaluation régulière |

### Liste 2 : N-grams inefficaces

| Propriété | Détails |
|----------|---------|
| Nom de la liste dans Google Ads | "N-grams inefficaces" (ou nom descriptif similaire) |
| Contenu | N-grams qui convertissent mais à un CPA au-dessus de 1,75x la cible ou un ROAS en dessous de 0,7x la cible |
| Fréquence de revue | Tous les 6-12 mois (via expérience de campagne 50/50) |
| Exemples typiques | Modificateurs de faible intention ("comparer", "avis"), termes de produits très concurrentiels, termes géographiques larges |
| Justification de la séparation | L'efficacité peut changer après des améliorations de Landing Page, des changements d'offre, ou des ajustements de stratégie d'enchères. Validez en désassociant la liste dans un bras d'expérience pour voir si les patterns exclus convertissent maintenant dans les objectifs |

### Lier les listes aux campagnes

Les deux listes doivent être liées à toutes les campagnes pertinentes :
| Type de campagne | Lier la liste non convertissants | Lier la liste inefficaces |
|---------------|--------------------------|----------------------|
| Campagnes Search | Oui | Oui |
| Campagnes Shopping | Oui (si les N-grams s'appliquent) | Oui (si les N-grams s'appliquent) |
| Campagnes PMax | Oui | Oui |
| Campagnes DSA | Oui | Oui |

---

## Type de correspondance d'exclusion

Toutes les exclusions N-gram sont ajoutées en **expression exacte**.
| Pourquoi expression exacte | Explication |
|-----------------|-------------|
| Bloque la séquence de mots | Empêche toute requête contenant l'expression N-gram dans l'ordre |
| Autorise les variations avant/après | Ne sur-exclut pas les requêtes où ces mots apparaissent séparément ou dans un ordre différent |
| Correspond à la structure N-gram | Les N-grams sont des séquences de mots ordonnées : expression exacte reflète exactement cette structure |
| Plus sûr que le requête large négatif | Le requête large négatif bloque les requêtes contenant tous les mots dans n'importe quel ordre, ce qui risque d'exclure des requêtes pertinentes |

**Exemple :**

Pour le 2-gram inefficace "essai gratuit" :

- Ajouter `"essai gratuit"` en expression exacte négatif bloque : "essai gratuit logiciel", "obtenir essai gratuit", "meilleur essai gratuit crm"
- Ne bloque PAS : "gratuit essai offre" (ordre différent), "logiciel gratuit" ("essai" manquant), "version d'essai" ("gratuit" manquant)

> ⚠️ **Préférez expression exacte pour les exclusions N-gram :** Les N-grams sont des séquences de mots ordonnées, et expression exacte reflète cette structure. Un requête large négatif pour `essai gratuit` bloquerait toute requête contenant à la fois "essai" et "gratuit" dans n'importe quel ordre, y compris "tarif sans essai" où les mots portent un sens différent. Le requête large négatif peut être approprié pour les exclusions de mot unique (1-gram) où l'ordre des mots n'est pas pertinent (Voir : [Negative Keyword Reference](<Search - Mots-clés à exclure.md>) pour les conseils de sélection du type de correspondance).

---

## Fréquence d'analyse

| Dépense du compte | Fréquence | Justification |
|---------------|-----------|-----------|
| Élevée (≥50K€/mois) | Mensuelle | L'analyse N-gram nécessite des données agrégées sur de nombreux termes. Une cadence mensuelle est suffisante même à des niveaux de dépense élevés. |
| Moyenne (10K€-50K€/mois) | Trimestrielle | Nécessite des fenêtres d'accumulation plus longues pour construire des patterns N-gram statistiquement significatifs |
| Faible (<10K€/mois) | Semestrielle | Les données limitées nécessitent des périodes de collecte étendues pour une classification fiable des N-grams |

### S'applique à ces types de campagne

| Type de campagne | Analyse N-gram applicable | Notes |
|---------------|---------------------------|-------|
| Campagnes Search | Oui (cas d'usage principal) | Rapport sur les termes de recherche complet disponible |
| Campagnes Shopping | Oui | Termes de recherche disponibles via le rapport sur les termes de recherche Shopping |
| Campagnes PMax | Oui | Données de termes de recherche disponibles dans Insights : liez les listes d'exclusion directement aux campagnes PMax |
| Campagnes DSA | Oui | Termes de recherche disponibles, souvent volume plus élevé de correspondances non pertinentes |

---

## Opérations en masse avec Google Ads Editor

Utilisez Google Ads Editor pour une gestion efficace des exclusions N-gram :

### Ajouter des exclusions N-gram en masse

1. Ouvrez Google Ads Editor et téléchargez les dernières données du compte
2. Naviguez vers **Keywords et ciblage** > **Listes de mots-clés à exclure**
3. Sélectionnez la liste cible ("N-grams non convertissants" ou "N-grams inefficaces")
4. Cliquez sur **Ajouter un negative keyword** et collez la liste de N-grams (un par ligne, au format expression exacte avec des guillemets doubles)
5. Publiez les changements pour les appliquer

### Exporter les listes négatives existantes pour audit

1. Dans Google Ads Editor, naviguez vers **Keywords et ciblage** > **Listes de mots-clés à exclure**
2. Sélectionnez la liste à exporter
3. Cliquez sur **Exporter** > **Exporter la sélection** en CSV
4. Vérifiez les doublons, conflits avec les keywords positifs, ou exclusions obsolètes

### Lier les listes aux campagnes

1. Dans Google Ads Editor, naviguez vers **Campagnes**
2. Sélectionnez les campagnes à lier
3. Sous **Listes de mots-clés à exclure**, ajoutez les listes pertinentes
4. Publiez les changements

---

## Erreurs courantes

| Erreur | Problème | Solution |
|---------|---------|-----|
| Mélanger les N-grams non convertissants et inefficaces dans une seule liste | Impossible d'appliquer des cadences de revue différentes : les patterns inefficaces devenus rentables restent exclus | Maintenez deux listes séparées avec des calendriers de revue distincts |
| Utiliser requête large pour les exclusions N-gram multi-mots | Sur-exclut les requêtes pertinentes où les mots apparaissent dans des contextes différents | Utilisez expression exacte pour les exclusions 2-gram et 3-gram. Requête large est acceptable pour les exclusions 1-gram |
| Analyser une plage de dates trop courte | Des données insuffisantes produisent des agrégats peu fiables avec des faux positifs | Utilisez 90-180 jours selon le volume de dépense (90 minimum) |
| Exclure des 1-grams sans vérifier l'impact | Les mots courants isolés apparaissent dans les bonnes et les mauvaises requêtes : exclure "gratuit" bloque "livraison gratuite" si vous la proposez | Vérifiez les exclusions 1-gram par rapport à vos termes de recherche convertissants avant de les ajouter |
| Ignorer le filtre de volume minimum | Les N-grams à faible volume produisent des chiffres CPA/ROAS trompeurs | Exigez 100+ impressions et 25+ clics pour le filtrage initial. Pour la classification inefficace (conversions non nulles), exigez 200+ clics minimum |
| Exclure des N-grams inefficaces sur de petits échantillons | Un N-gram avec 50 clics et un CPA médiocre peut devenir rentable avec une conversion de plus | Exigez 200+ clics avant d'ajouter à la liste d'exclusion inefficace |
| Ne pas lier les listes à toutes les campagnes pertinentes | Les exclusions ne s'appliquent qu'aux campagnes liées : les nouvelles campagnes manquent de protection | Liez les deux listes à chaque nouvelle campagne Search et Shopping au lancement |
| Exécuter l'analyse N-gram sans données de conversion | Impossible de classifier l'efficacité sans métriques de conversion | Assurez-vous que le suivi des conversions est vérifié avant de lancer l'analyse |
| Ne jamais réévaluer la liste inefficace | Les patterns exclus comme inefficaces peuvent devenir rentables après des changements de Landing Page ou d'offre | Lancez une expérience de campagne 50/50 tous les 6-12 mois pour valider si les patterns exclus convertissent maintenant dans les objectifs |

---

## Documents liés

| Document | Relation |
|----------|-------------|
| [Search Term Report Reference](<Search - Rapport sur les termes de recherche.md>) | Données sources pour l'extraction N-gram : définitions de colonnes, méthodes d'export, filtres |
| [Negative Keyword Reference](<Search - Mots-clés à exclure.md>) | Mécanismes des types de correspondance négatifs, niveaux d'application, règles de formatage |
| [Negative Keyword Catalog](<Search - Catalogue de mots-clés à exclure.md>) | Catégories de mots-clés à exclure pré-construites par secteur |
| [SOP - Analyser les rapports de termes de recherche](<Search - Analyser les rapports de termes de recherche.md>) | En amont : identifie les termes non pertinents à partir des données de termes de recherche. Pour la négation basée sur la performance, utilisez SOP - Executer une analyse N-gram à la place |
| [SOP - Executer une analyse N-gram](<Search - Exécuter une analyse N-gram.md>) | SOP d'exécution pour cette fiche : applique les étapes d'extraction, classification et exclusion N-gram |
| [SOP - Promouvoir les termes de recherche en mots-cles](<Search - Promouvoir les termes de recherche en keywords.md>) | Workflow connexe pour le côté positif de la gestion des termes de recherche |
| [Match Type Reference](<Search - Types de correspondance.md>) | Mécanismes des types de correspondance positifs qui déterminent quelles requêtes apparaissent dans votre rapport sur les termes de recherche |
