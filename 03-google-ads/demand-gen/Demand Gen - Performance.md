# Performance Demand Gen

> **Plateforme :** Google Ads
> **Catégorie :** Demand Gen
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Documente les benchmarks (analyse comparative) de performance des campagnes Demand Gen, les mécanismes d'attribution, la configuration d'audience et le comportement de la période d'apprentissage. Utilisez cette fiche pour définir des objectifs réalistes, diagnostiquer les écarts d'attribution et évaluer la performance des créatifs et des canaux.

---

## Ce que couvre cette fiche / Ce qu'elle ne couvre PAS

**Cette fiche :**

- Documente les benchmarks typiques des métriques Demand Gen par canal et format créatif
- Couvre les mécanismes du ciblage optimisé, les paramètres d'segment similaire et les exigences de seed audience
- Explique le comportement de la période d'apprentissage et la signification des conversions post-vue
- Fournit des comparaisons d'allocation de canaux et de performance des formats créatifs
- Documente l'intégration du flux produits (DPA) pour Demand Gen

**Cette fiche ne couvre PAS :**

- La mise en place pas à pas d'une campagne Demand Gen (Voir : SOPs de lancement Demand Gen)
- Le plafonnement de fréquence pour Demand Gen (le plafonnement de fréquence n'est PAS disponible dans Demand Gen, Voir : [Frequency Capping Reference](<../video/Video - Plafonnement de fréquence.md>))
- La performance des campagnes Display ou Video séparément (Voir : [Placement Performance Reference](<Demand Gen - Performance.md>))
- Les décisions de structure de campagne haut du tunnel (Voir : [Upper Funnel Campaign Structure Mental Model](<../strategie/Strategie - Structure de campagne haut de tunnel.md>))

---

## Aide-mémoire : benchmarks Demand Gen

| Métrique | Plage typique | Comparaison avec |
|--------|--------------|------------|
| CPM | 5-15 € | Display (2-8 €), YouTube (6-12 €) |
| CTR | 0,5-2,0 % | Search (3-8 %), Display (0,3-1 %) |
| CVR | 1-5 % | Search (3-10 %), Display (0,5-2 %) |
| CPA | 1,5-2x le CPA cible Search non-marque | Définir des cibles spécifiques Demand Gen, pas des cibles Search |
| ROAS | 50-70 % du ROAS cible Search non-marque | Définir des cibles spécifiques Demand Gen |

> ⚠️ **Ne comparez PAS la performance Demand Gen aux benchmarks Search :** Demand Gen est haut du tunnel et a des mécanismes économiques fondamentalement différents. Un CPA 1,5-2x plus élevé que le Search non-marque est normal et attendu. Définissez des cibles de performance spécifiques Demand Gen dès le premier jour.

---

## Mécanismes du ciblage optimisé

Le paramètre de ciblage optimisé contrôle comment le ciblage d'audience fonctionne dans les campagnes Demand Gen.

### Fonctionnement

| Paramètre | Comportement | Les audiences fonctionnent comme |
|---------|----------|----------------------|
| Ciblage optimisé ON | Google s'étend au-delà de vos audiences définies pour trouver des convertisseurs supplémentaires | Des signaux (ciblage souple) |
| Ciblage optimisé OFF | Ciblage strict, n'atteint que les utilisateurs de vos segments définis | Des contraintes strictes (ciblage strict) |

### État par défaut

Le ciblage optimisé est activé par défaut sur toutes les nouvelles campagnes Demand Gen.

### Quand activer vs désactiver

| Type de campagne | Paramètre d'expansion | Justification |
|---------------|-------------------|-----------|
| Remarketing | OFF (toujours) | Vous voulez atteindre uniquement les visiteurs passés spécifiques |
| Prospection (nouvelle campagne) | OFF (test initial) | Validez d'abord vos audiences définies |
| Prospection (scaling) | Tester ON vs OFF | Surveillez le compromis portée vs efficacité |
| Notoriété large | ON | La portée maximale est l'objectif |

---

## Paramètres d'segment similaire

Trois paramètres influencent l'équilibre entre portée et similarité avec votre seed audience. Ces paramètres fonctionnent comme des suggestions, pas des limites strictes : l'IA de Google peut diffuser des annonces auprès d'utilisateurs qualifiés au-delà du seuil sélectionné quand elle prédit une bonne performance.

| Paramètre | Force du signal | Similarité avec le seed | Idéal pour |
|---------|----------------|-------------------|----------|
| Étroit | Signal de similarité le plus fort | La plus élevée | Tests prudents, budget limité |
| Équilibré | Signal de similarité moyen | Moyenne | Point de départ par défaut |
| Large | Signal de similarité le plus faible | La plus basse | Phase de scaling après que Équilibré a fait ses preuves |

La qualité du seed est le levier de contrôle principal pour la performance des segments similaires. Une liste seed de haute qualité (convertisseurs, clients à haute LTV) compte plus que le paramètre de portée, car Google utilise le seed comme signal de modélisation quel que soit le seuil sélectionné.

Les annonceurs qui ont besoin de limites d'audience strictes peuvent [se désinscrire du mode suggestion](https://support.google.com/google-ads/contact/lookalike_suggestion_opt_out) et revenir au ciblage strict.

### Parcours de progression

1. Commencez avec **Équilibré** pendant les 4-6 premières semaines
2. Si le CPA Équilibré est dans la cible, testez **Large** dans un ad group séparé
3. Si le CPA Équilibré est trop élevé, testez **Étroit** pour améliorer l'efficacité
4. Ne passez jamais directement d'Étroit à Large
5. Investissez dans la qualité du seed à chaque étape : les différences entre paramètres sont plus souples qu'elles n'en ont l'air

---

## Exigences de la seed audience

### Exigences minimales

| Exigence | Minimum | Recommandé |
|-------------|---------|-------------|
| Taille de la seed audience | 1 000 utilisateurs | 5 000+ utilisateurs |
| Fraîcheur du seed | Mis à jour dans les 90 derniers jours | Mis à jour dans les 30 derniers jours |
| Qualité du seed | Visiteurs actifs du site | Convertisseurs ou clients haute valeur |

### Niveaux de qualité du seed

| Type de seed | Qualité | Pourquoi |
|-----------|---------|-----|
| Acheteurs récurrents / clients haute LTV | Meilleur | Modélise à partir des comportements à plus haute valeur |
| Tous les convertisseurs (90 derniers jours) | Bon | Modélise à partir des signaux de conversion |
| Visiteurs engagés (pages multiples, temps sur le site) | Acceptable | Modélise à partir des signaux d'engagement |
| Tous les visiteurs du site | Médiocre | Trop large, dilue le signal |
| Visiteurs ayant rebondi | Le pire | Modélise à partir de comportements de faible qualité |

---

## Mécanismes de la période d'apprentissage

Chaque nouvelle campagne Demand Gen entre dans une période d'apprentissage où l'algorithme de Google calibre les enchères et le ciblage. La performance pendant cette période n'est pas représentative.

### Spécifications de la période d'apprentissage

| Paramètre | Valeur |
|-----------|-------|
| Durée | 2-4 semaines (typique) |
| Seuil de conversions | 30-50 conversions pour des enchères stables |
| Indicateur de statut | Badge "Apprentissage" dans la colonne de statut de campagne |
| Condition de fin | Suffisamment de conversions OU temps écoulé |

### Comportement pendant l'apprentissage

| Ce qui se passe | Impact |
|--------------|--------|
| La performance fluctue au jour le jour | Les CPA oscillent de 50-200 % au-dessus de la cible |
| Google teste différents segments d'audience | Portée et fréquence sont incohérentes |
| Les enchères sont moins efficaces | Le coût par résultat est plus élevé qu'en régime stable |
| Le test créatif est exploratoire | Tous les créatifs ne reçoivent pas autant d'impressions |

### Règles pendant la période d'apprentissage

- NE PAS changer le ciblage, les budgets ou les enchères pendant la période d'apprentissage
- NE PAS mettre en pause et relancer la campagne (cela réinitialise l'apprentissage)
- NE PAS évaluer la performance sur la base des 7 premiers jours
- NE PAS comparer le CPA de la période d'apprentissage au CPA de campagne Search
- Surveillez les dépenses quotidiennes pour vous assurer que la campagne diffuse
- Vérifiez que les annonces sont approuvées et en cours de diffusion

### Après la fin de l'apprentissage

- La performance se stabilise, les décisions d'optimisation deviennent significatives
- Le CPA tend vers votre cible (dans les 20-30 % le premier mois)
- Si le CPA reste à plus de 2x la cible après 4 semaines post-apprentissage, revisitez le ciblage et les créatifs

---

## Signification des conversions post-vue

Les conversions post-vue (VTCs) mesurent les utilisateurs qui ont vu votre annonce sans cliquer, puis ont converti plus tard.

### Fenêtres d'attribution

| Type de fenêtre | Par défaut | Recommandé |
|-------------|---------|-------------|
| Post-clic | 30 jours | Garder la valeur par défaut |
| Post-vue | 1 jour | Garder la valeur par défaut (prudent) |

### Comment utiliser les données post-vue

| Utiliser pour | NE PAS utiliser pour |
|---------|----------------|
| Signal directionnel de l'influence haut du tunnel | Calcul principal du CPA/ROAS |
| Justifier l'investissement continu en Demand Gen | Comparaison directe avec les conversions post-clic |
| Identifier les créatifs et audiences à fort impact | Gonfler les chiffres de performance Demand Gen |
| Discussions d'allocation budgétaire | Remplacer le post-clic comme métrique principale |

### Reporter les conversions post-vue

- Toujours reporter les VTCs séparément des conversions post-clic
- Labelliser clairement les VTCs dans les tableaux de bord ("Post-vue" et non "Total conversions")
- Présenter les VTCs comme une "métrique d'influence" aux parties prenantes
- Utiliser une métrique mixte si nécessaire : conversions post-clic + (VTCs x facteur de décote de 0,3-0,5)

---

## Comparaison d'allocation de canaux

| Canal | Forces typiques | CPA typique | Volume |
|---------|------------------|-------------|--------|
| YouTube (tous placements) | Engagement vidéo, notoriété de marque | Le plus élevé | Portée la plus large |
| Discover | Contexte de navigation riche en intention | Moyen | Moyen |
| Gmail | Placement direct en boîte de réception | Le plus bas | Portée la plus faible |
| GDN (dans Demand Gen) | Large portée, retargeting (reciblage) | Bas-moyen | Élevé |

### Contrôle des canaux

Vous pouvez sélectionner des canaux spécifiques au niveau du ad group. Canaux disponibles : YouTube in-stream, YouTube in-feed, YouTube Shorts, Discover, Gmail et GDN. Utilisez des ad groups séparés par combinaison de canaux pour des données de performance plus claires.

| Approche | Configuration | Idéal pour |
|----------|-------|----------|
| Tous les canaux | Par défaut : tous les canaux activés | Test initial, portée maximale |
| Ad groups par canal | Un ad group par canal (ou combinaison) | Isolation de performance, contrôle budgétaire par canal |
| Canaux adaptés aux créatifs | Adapter le format créatif aux forces du canal | Optimiser la correspondance créatif-canal |

---

## Performance des formats créatifs

| Format | Idéal pour | CTR typique | Notes |
|--------|----------|-------------|-------|
| Vidéo | Notoriété de marque, démos produit | 0,5-1,5 % | Plus haut engagement, coût de production le plus élevé |
| Image unique | Tests rapides, offres simples | 0,8-2,0 % | Le plus facile à produire, testez fréquemment |
| Carrousel | Produits multiples, storytelling | 0,7-1,5 % | Bon pour les catalogues e-commerce |
| Style UGC | Authenticité, preuve sociale | Souvent le CTR le plus élevé | Coût de production plus faible, testez contre du contenu léché |

### Recommandations créatives

Les exigences créatives dépendent des canaux actifs dans le ad group :

| Recommandation | Quand ça s'applique | Justification |
|----------------|----------------|-----------|
| Inclure un créatif vidéo | Canaux YouTube activés | Requis pour les placements in-stream, in-feed et Shorts |
| Inclure un créatif image | Canaux Discover, Gmail ou GDN activés | Requis pour les placements non-vidéo |
| Inclure vidéo ET image | Tous les canaux activés (par défaut) | Couvre tous les types de placement |
| Tester 3-5 variations créatives par format | Toujours | Donne à l'algorithme de Google des options pour optimiser |
| Rafraîchir les créatifs toutes les 4-6 semaines | Toujours | Évite la fatigue publicitaire sur les surfaces haut du tunnel |
| Dimensionner les images à 1200x628 (paysage) et 1200x1200 (carré) | Placements image | Couvre Discover, Gmail et GDN |
| Inclure une vidéo verticale pour Shorts | Canal YouTube Shorts activé | Shorts nécessite le format vertical (9:16) |
| Garder la vidéo sous 30 secondes | YouTube in-feed | Le format court performe mieux dans les contextes de flux |

---

## Intégration du flux produits (DPA)

Ajouter un flux produits à une campagne Demand Gen transforme tous les ad groups en annonces produit dynamiques (DPA). C'est un paramètre au niveau de la campagne.

### Fonctionnement

| Élément | Détails |
|---------|--------|
| Source du flux produits | Merchant Center (même flux que Shopping/PMax) |
| Portée de la campagne | Activer le flux produits affecte TOUS les ad groups de la campagne |
| Remarketing dynamique | Montre aux utilisateurs les produits qu'ils ont précédemment consultés |
| DPA de prospection | Montre des produits basés sur les signaux d'audience et le comportement de navigation |
| Sélection de produits | Google sélectionne les produits automatiquement en fonction des signaux utilisateur |

### Exigences de qualité du flux produits

Les mêmes standards s'appliquent que pour les campagnes Shopping :

| Élément | Exigence |
|---------|-------------|
| Titres de produits | Descriptifs, riches en mots-clés, attributs clés en début de titre |
| Images | Haute qualité, fond blanc de préférence, pas de filigranes |
| Prix | Précis, correspond au prix de la landing page |
| Disponibilité | À jour, pas de produits "en rupture de stock" affichés |
| Descriptions de produits | Complètes, mettent en avant les arguments de vente clés |

### Structure de campagne DPA

| Approche | Configuration | Idéal pour |
|----------|-------|----------|
| DPA remarketing | Demand Gen avec flux produits + audiences de visiteurs passés | Récupérer les abandons de navigation/panier |
| DPA prospection | Demand Gen avec flux produits + segments similaires/in-market | Acquisition de nouveaux clients à grande échelle |
| Hybride | Demand Gen avec flux produits + les deux types d'audience dans des ad groups séparés | Tunnel complet dans une seule campagne |

### Limitations du DPA

- Vous ne pouvez pas sélectionner les produits spécifiques à afficher dans les annonces (Google sélectionne dynamiquement)
- Les campagnes avec flux produits ne peuvent pas aussi diffuser des créatifs non issus du flux produits dans le même ad group
- Les créatifs DPA héritent des données du flux produits : corrigez les problèmes de flux produits pour corriger la qualité des annonces

---

## Guide de décision

```
Vous lancez une nouvelle campagne Demand Gen ?
|
+-- Quel est l'objectif principal ?
    |
    +-- Notoriété de marque / Portée
    |   +-- Utilisez un créatif vidéo
    |   +-- Activez le ciblage optimisé
    |   +-- Définissez une enchère CPM ou Maximiser les conversions
    |   +-- Attendez-vous aux CPA les plus élevés, évaluez sur les métriques de portée
    |
    +-- Acquisition de nouveaux clients (prospection)
    |   +-- Utilisez des segments similaires (commencez Équilibré, concentrez-vous sur la qualité du seed)
    |   +-- Désactivez le ciblage optimisé initialement
    |   +-- Adaptez les créatifs aux canaux actifs (vidéo pour YouTube, images pour Discover/Gmail/GDN)
    |   +-- Définissez un CPA à 1,5-2x le CPA cible Search non-marque
    |
    +-- Remarketing / Réengagement
    |   +-- Utilisez des audiences first-party (visiteurs du site, abandons de panier)
    |   +-- Désactivez le ciblage optimisé (toujours)
    |   +-- Envisagez le DPA avec un flux produits
    |   +-- Définissez un CPA plus proche du CPA cible Search non-marque (1,5-2x)
    |
    +-- Promotion de catalogue produit
        +-- Activez le flux produits depuis Merchant Center
        +-- Segmentez remarketing vs prospection dans des ad groups séparés
        +-- Qualité du flux produits = qualité de l'annonce
        +-- Surveillez l'engagement au niveau produit dans Merchant Center
```

---

## Erreurs courantes

| Erreur | Problème | Solution |
|---------|---------|-----|
| Comparer le CPA Demand Gen au CPA Search | Attentes irréalistes, abandon prématuré de campagne | Définir des cibles spécifiques Demand Gen (1,5-2x le CPA cible Search non-marque) |
| Utiliser les analytics externes comme reporting principal Demand Gen | Sous-déclaration des conversions due aux limitations de tracking cross-domain | Utiliser Google Ads comme source de vérité pour la performance Demand Gen |
| Changer les paramètres pendant la période d'apprentissage | Réinitialise l'apprentissage, prolonge la mauvaise performance | Attendre 2-4 semaines avant de faire des changements |
| Inclure les VTCs dans le calcul principal du CPA | Performance gonflée, rapports trompeurs | Reporter les VTCs séparément comme métrique d'influence |
| Laisser le ciblage optimisé ON pour le remarketing | Les annonces atteignent des utilisateurs hors de vos listes de remarketing | Désactiver le ciblage optimisé pour toutes les campagnes de remarketing |
| Commencer les segments similaires sur Large | Signal de similarité le plus faible dès le premier jour | Commencer sur Équilibré, investir d'abord dans la qualité du seed |
| Seed audience sous 1 000 utilisateurs | Mauvaise modélisation des segments similaires, diffusion limitée (encore plus critique puisque Google s'étend au-delà des seuils) | Construire le seed à 5 000+ avant de lancer les segments similaires |
| Pas de variété créative | Google ne peut pas optimiser entre les formats | Adapter les formats créatifs aux canaux actifs : vidéo pour les ad groups YouTube, images pour les ad groups Discover/Gmail/GDN, les deux pour les ad groups tous canaux |
| Évaluer après 3-5 jours | Les données proviennent de la période d'apprentissage, non représentatives | Attendre la fin de la période d'apprentissage (2-4 semaines) |
| Lancer du DPA sans optimisation du flux produits | Mauvais titres et images de produits dans les annonces dynamiques | Appliquer les standards de qualité de flux produits Shopping |

---

## Documents liés

| Document | Relation |
|----------|--------------|
| [Upper Funnel Campaign Structure Mental Model](<../strategie/Strategie - Structure de campagne haut de tunnel.md>) | Cadre : contexte stratégique pour les campagnes Demand Gen |
| [Frequency Capping Reference](<../video/Video - Plafonnement de fréquence.md>) | Associé : le plafonnement de fréquence n'est PAS disponible dans Demand Gen |
| [Placement Performance Reference](<Demand Gen - Performance.md>) | Compagnon : données de performance des canaux et placements |
| [Upper Funnel Campaign Structure Mental Model](<../strategie/Strategie - Structure de campagne haut de tunnel.md>) | Cadre : où Demand Gen s'inscrit dans la structure de campagne |
