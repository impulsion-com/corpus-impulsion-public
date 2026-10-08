# Performance produit Shopping

> **Plateforme :** Google Ads
> **Catégorie :** Shopping
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Documente les métriques de performance au niveau produit, les insights de compétitivité, les stratégies de segmentation et les leviers d'optimisation pour les campagnes Shopping. Utilisez cette fiche pour diagnostiquer les produits sous-performants, prioriser les efforts d'optimisation et construire des structures de campagne basées sur la performance.

---

## Ce que couvre cette fiche / Ce qu'elle ne couvre PAS

**Cette fiche :**

- Documente les métriques au niveau produit et où les trouver
- Explique les insights de compétitivité GMC et comment les interpréter
- Détaille l'analyse d'impact des titres produit et les mécanismes de prix de vente

**Cette fiche ne couvre PAS :**

- Les attributs de flux produits ou la syntaxe (Voir : [Product Feed Data Specification Reference](<../flux-produit/Flux Produit - Spécifications du feed produit.md>))
- Les cadres de priorisation de la qualité du feed (Voir : [Product Feed Quality Mental Model](<../flux-produit/Flux Produit - Qualité du flux produits.md>))
- Les tactiques d'implémentation de la segmentation (Voir : [Feed Segmentation Catalog](<../flux-produit/Flux Produit - Tactiques de segmentation.md>))
- Les décisions de structure de campagne (Voir : [Product Feed Segmentation Mental Model](<../flux-produit/Flux Produit - Choisir une segmentation.md>))

---

## Aide-mémoire : métriques au niveau produit

| **Métrique** | **Ce qu'elle mesure** | **Où la trouver** | **Données minimales** |
|------------|---------------------|-------------------|-----------------|
| Impressions | Visibilité du produit dans les enchères Shopping | Google Ads > Onglet Produits | 7 jours |
| Clics | Engagement produit depuis les listings Shopping | Google Ads > Onglet Produits | 14 jours |
| CTR | Signal de qualité du titre et de l'image | Calculé (clics / impressions) | 100+ impressions |
| Coût | Dépenses allouées à un produit spécifique | Google Ads > Onglet Produits | 14 jours |
| Conversions | Ventes de produits attribuées aux annonces Shopping | Google Ads > Onglet Produits | 30 jours |
| ROAS | Revenu généré par euro dépensé en pub | Calculé (valeur de conv. / coût) | 30 jours + 10 conversions |
| Part de clics | Visibilité concurrentielle vs enchères éligibles | Google Ads > Onglet Produits | 14 jours |

> 💡 **Attendez d'avoir suffisamment de données avant de prendre des décisions au niveau produit :** agir sur 3 jours de données mène à de fausses conclusions. Utilisez les fenêtres de données minimales ci-dessus comme des barrières strictes.

---

## Détail des métriques au niveau produit

### Impressions

Les impressions mesurent la fréquence à laquelle un produit apparaît dans les résultats Shopping. Un faible nombre d'impressions indique un ou plusieurs de ces problèmes :

| **Cause** | **Diagnostic** | **Solution** |
|-----------|---------------|---------|
| Pertinence du titre faible | Le produit ne correspond pas aux requêtes de recherche | Réécrire le titre avec des termes de recherche à fort volume |
| Enchère ou budget faible | La campagne est limitée par le budget | Augmenter l'enchère ou le budget journalier |
| Qualité des données produit faible | Attributs manquants ou refus | Corriger les erreurs de flux produits dans Merchant Center |
| Concurrence élevée | Les concurrents surenchérissent sur les mêmes produits | Améliorer le titre, le prix ou l'enchère |
| Délai de traitement du flux produits | Le produit n'est pas encore indexé | Attendre 24-48 heures après la soumission du flux produits |

### Clics et CTR

Le CTR est le signal principal d'efficacité du titre et de l'image. Un produit avec des impressions élevées mais un CTR faible nécessite de l'attention créative, pas des changements d'enchères.

| **Plage CTR** | **Interprétation** | **Action** |
|---------------|-------------------|------------|
| Au-dessus de 2 % | Performance forte | Protéger : maintenir le titre et l'image actuels |
| 1-2 % | Performance moyenne | Tester : essayer des variations de titre, vérifier la qualité de l'image |
| En dessous de 1 % | Performance faible | Prioriser : réécrire le titre, améliorer l'image, vérifier le prix |
| 0 % (avec des impressions) | Problème critique | Diagnostiquer : prix trop élevé, image cassée ou mauvaise correspondance produit |

> 💡 **Les benchmarks (analyse comparative) CTR varient par catégorie :** les produits de mode ont typiquement des CTR plus élevés que les fournitures industrielles. Comparez au sein de vos propres catégories de produits, pas entre elles.

### Conversions et ROAS

Les conversions nécessitent la fenêtre de données la plus longue car les événements d'achat sont rares au niveau produit. Un produit avec 500 clics et 0 conversion sur 30 jours vous dit quelque chose. Un produit avec 15 clics et 0 conversion ne vous dit rien.

| **Scénario** | **Données requises** | **Conclusion** |
|--------------|---------------------|----------------|
| 10+ conversions, ROAS au-dessus de la cible | 30 jours | Rentable : augmenter le budget |
| 10+ conversions, ROAS en dessous de la cible | 30 jours | Non rentable : réduire les enchères ou corriger le prix |
| 1-9 conversions | 30 jours | Insuffisant : étendre la fenêtre de données à 60 jours |
| 0 conversion, 100+ clics | 30 jours | Probablement non rentable : investiguer la landing page, le prix, la pertinence |
| 0 conversion, moins de 100 clics | 30 jours | Pas de conclusion : besoin de plus de données |

### Part de clics

La part de clics révèle la marge concurrentielle. Un produit avec 30 % de part de clics a 70 % de visibilité supplémentaire potentielle disponible.

| **Part de clics** | **Signification** | **Action** |
|---------------------|-------------|------------|
| Au-dessus de 80 % | Position dominante | Maintenir : le produit est bien positionné |
| 50-80 % | Compétitif mais marge de croissance | Augmenter les enchères pour les produits rentables |
| 20-50 % | Perd du volume significatif | Revoir les enchères, le budget et la qualité des données produit |
| En dessous de 20 % | À peine visible | Diagnostiquer : probablement un problème d'enchère, de budget ou de qualité des données |

---

## Insights de compétitivité GMC

Google Merchant Center fournit de l'intelligence concurrentielle dans Merchant Center > Analytics > Compétitivité. Google compare vos prix produit à ceux d'autres détaillants vendant des produits identiques ou similaires.

### Compétitivité prix

| **Niveau** | **Signification** | **Implication** |
|----------|-------------|-----------------|
| Prix bas | Tiers le moins cher des détaillants | Fort avantage concurrentiel, CTR plus élevé attendu |
| Prix moyen | Tiers médian des détaillants | Position neutre, d'autres facteurs déterminent la performance |
| Prix élevé | Tiers le plus cher des détaillants | Désavantage concurrentiel, compenser avec de meilleurs titres, images ou force de marque |

### Données de prix benchmark

| **Point de donnée** | **Ce que ça montre** | **Utiliser pour** |
|----------------|-------------------|-------------|
| Prix benchmark | Prix moyen des concurrents pour le même produit | Identifier les produits sur/sous-tarifés |
| Écart de prix | Différence entre votre prix et le benchmark | Prioriser les ajustements de prix |
| Devise | Devise locale de la comparaison | Assurer une comparaison à conditions égales |

### Potentiel de clics

| **Point de donnée** | **Ce que ça montre** | **Utiliser pour** |
|----------------|-------------------|-------------|
| Clics supplémentaires estimés | Clics disponibles à des prix plus bas | Quantifier l'opportunité de revenus des réductions de prix |
| Scénarios de changement de prix | Impact d'ajustements de prix spécifiques | Construire des business cases pour les changements de prix |

> 💡 **Les données de compétitivité ne sont disponibles que pour les produits avec des GTINs :** les produits sans GTIN ne peuvent pas être mis en correspondance avec les concurrents. Soumettez les GTINs pour tous les produits qui en ont.

---

## Analyse d'impact des titres produit

Le titre produit est le levier le plus impactant pour le volume d'impressions et le CTR Shopping. Les changements de titre affectent directement quelles requêtes correspondent à vos produits et comment les utilisateurs perçoivent vos listings.

### Mesure de l'impact du titre

| **Métrique** | **Comment mesurer** | **Délai** |
|------------|-------------------|---------------|
| Changement d'impressions | Comparer les impressions avant vs après le changement de titre | Attendre 7-14 jours après le changement |
| Changement de CTR | Comparer le CTR avant vs après | Attendre 14 jours avec 100+ impressions |
| Changement de volume de clics | Comparer le total de clics avant vs après | Attendre 14 jours |
| Couverture de requêtes | Consulter le rapport sur les termes de recherche pour les nouvelles requêtes correspondantes | Attendre 7-14 jours |

### Priorité d'optimisation des titres

Optimisez les titres par ordre d'impact business :

| **Priorité** | **Segment de produits** | **Justification** |
|-------------|-------------------|---------------|
| 1 | Meilleures ventes | ROI le plus élevé de l'amélioration : plus de clics sur des produits qui convertissent déjà |
| 2 | Impressions élevées, CTR faible | Obtient déjà de la visibilité : l'amélioration du titre convertit les impressions en clics |
| 3 | Produits en croissance | Accélérer la trajectoire de croissance avec une meilleure correspondance de requêtes |
| 4 | Produits sans clics | Peut débloquer une demande cachée si le titre est le goulot d'étranglement |
| 5 | Produits non rentables | Corriger le titre uniquement après avoir confirmé que le prix et la landing page ne sont pas le problème |

### Éléments clés du titre

| **Élément** | **Position** | **Impact** |
|-------------|-------------|------------|
| Marque | Début du titre | Signal de confiance, correspondance aux requêtes de marque |
| Type de produit | Après la marque | Correspondance aux requêtes principales |
| Attribut clé | Après le type de produit | Spécificité (couleur, taille, matériau) |
| Différenciateur | Fin du titre | Distinction concurrentielle (quantité, numéro de modèle) |

> 💡 **Testez une variable à la fois :** changez la position de la marque OU ajoutez un attribut couleur, pas les deux. Sinon vous ne pouvez pas attribuer le changement de performance.

---

## Mécanismes du prix de vente et du badge de baisse de prix

Le badge de baisse de prix (prix barré) est un levier CTR puissant. Google affiche un prix original barré à côté du prix de vente quand des conditions spécifiques sont remplies.

### Conditions d'éligibilité au badge

| **Condition** | **Détails** |
|----------------|-------------|
| Prix de base stable | Le prix de base doit rester constant pendant 45-60 jours avant la vente |
| Attribut prix de vente | Soumettre le prix de vente via l'attribut `sale_price` du flux produits |
| Remise significative | Typiquement 15 %+ de réduction sur le prix de base (Google ne publie pas le seuil exact) |
| Validation du prix historique | Google compare avec l'historique de prix crawlé : vous ne pouvez pas simuler un prix de base |
| Correspondance landing page | Le prix de vente dans le flux produits doit correspondre au prix affiché sur la landing page |

### Impact du badge

| **Métrique** | **Impact typique** |
|------------|-------------------|
| Augmentation du CTR | 20-40 % d'augmentation du taux de clic |
| Taux de conversion | 10-20 % d'augmentation (acheteurs sensibles au prix) |
| Volume d'impressions | Augmentation modérée (Google favorise les offres compétitives) |

### Erreurs courantes avec le prix de vente

| **Erreur** | **Problème** | **Solution** |
|-------------|-------------|---------|
| Définir le prix de vente comme prix de base | Pas de prix barré, pas de badge, Google le voit comme un prix normal | Utilisez `price` pour la base et `sale_price` pour la remise |
| Changer le prix de base fréquemment | Réinitialise le compteur de 45-60 jours, le badge ne se déclenche jamais | Gardez le prix de base stable, utilisez `sale_price` pour les promotions |
| Remise trop faible | Google peut ne pas afficher le badge pour les remises marginales | Assurez une remise significative (visez 15 %+) |
| `sale_price_effective_date` manquant | La vente dure indéfiniment, érode la perception du prix de base | Définissez des dates de début et fin explicites pour toutes les ventes |

### Intégration de données de vente first-party

Intégrez les données business internes dans les custom labels via des flux supplémentaires. Sources de données courantes : données de marge ERP (mise à jour hebdomadaire), vélocité de vente POS (mise à jour hebdomadaire), niveaux d'inventaire (mise à jour quotidienne), et calendriers saisonniers (mise à jour mensuelle). Chaque source de données correspond à une dimension de custom label pour le contrôle au niveau de la campagne.

> 💡 **Les flux supplémentaires sont le pont entre vos données internes et Google Ads :** chaque donnée business que vous encodez dans les custom labels vous donne un contrôle de campagne plus fin.

---

## Guide de décision : quelle action pour quel produit ?

```
Le produit a 0 impression après 30 jours ?
|
+-- OUI --> Vérifier : le produit est-il refusé dans Merchant Center ?
|           |
|           +-- OUI --> Corriger le refus (erreurs de flux produits, violations de politique)
|           |
|           +-- NON --> Réécrire le titre avec des termes de recherche à fort volume
|
+-- NON --> Le produit a des impressions mais 0 clic ?
           |
           +-- OUI --> Vérifier la compétitivité prix dans GMC
           |           |
           |           +-- Prix élevé --> Ajuster le prix ou accepter un CTR faible
           |           |
           |           +-- Prix compétitif --> Améliorer le titre et l'image
           |
           +-- NON --> Le produit a des clics mais 0 conversion (100+ clics) ?
                      |
                      +-- OUI --> Vérifier la landing page et le prix vs concurrents
                      |
                      +-- NON --> Le produit a des conversions mais un ROAS en dessous de la cible ?
                                 |
                                 +-- OUI --> Baisser les enchères ou exclure de la campagne
                                 |
                                 +-- NON --> Le produit est rentable : protéger et scaler
```

---

## Erreurs courantes

| **Erreur** | **Problème** | **Solution** |
|-------------|-------------|---------|
| Prendre des décisions sur 3 jours de données | Le bruit statistique cause de fausses conclusions | Attendre les fenêtres de données minimales (7-30 jours selon la métrique) |
| Traiter tous les produits de la même façon | Le budget se disperse sur des milliers de produits | Segmenter en niveaux de performance via les custom labels, allouer le budget en conséquence (Voir : [Feed Segmentation Catalog](<../flux-produit/Flux Produit - Tactiques de segmentation.md>)) |
| Ignorer les produits sans clics | Du poids mort dans votre flux produits qui tire la qualité globale vers le bas | Diagnostiquer et corriger ou exclure les produits sans activité |
| Optimiser les produits non rentables avant les meilleures ventes | Faible ROI : corriger les perdants avant de protéger les gagnants | Toujours optimiser les meilleures ventes en premier, puis descendre dans la liste de priorité |
| Ne jamais mettre à jour les custom labels | Des labels obsolètes causent une mauvaise allocation budgétaire pendant des mois | Définir un calendrier récurrent (hebdomadaire ou bimensuel) pour les mises à jour de labels (Voir : [Feed Segmentation Catalog](<../flux-produit/Flux Produit - Tactiques de segmentation.md>)) |
| Changer titres et prix simultanément | Impossible d'attribuer les changements de performance à l'un ou l'autre levier | Changer une variable à la fois, mesurer l'impact, puis ajuster la suivante |
| Ignorer les données de compétitivité GMC | Manquer des gains faciles sur le prix et le positionnement | Consulter l'onglet compétitivité mensuellement, agir sur les écarts de prix évidents |

---

## Documents liés

| **Document** | **Relation** |
|--------------|------------------|
| [Product Feed Data Specification Reference](<../flux-produit/Flux Produit - Spécifications du feed produit.md>) | Syntaxe et exigences des attributs de flux produits |
| [Product Feed Quality Mental Model](<../flux-produit/Flux Produit - Qualité du flux produits.md>) | Cadre conceptuel pour la priorisation de la qualité du flux produits |
| [Product Feed Segmentation Mental Model](<../flux-produit/Flux Produit - Choisir une segmentation.md>) | Cadre de décision pour la segmentation du document |
| [Feed Segmentation Catalog](<../flux-produit/Flux Produit - Tactiques de segmentation.md>) | Tactiques de segmentation et patterns de custom labels |
| [Shopping Campaign Settings Reference](<../strategie/Strategie - Paramètres universels de campagne.md>) | Configuration au niveau de la campagne pour Shopping |
| [Merchant Center Reference](<../flux-produit/Flux Produit - Merchant Center.md>) | Configuration et diagnostics GMC |
