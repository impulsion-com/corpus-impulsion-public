# Structure PMax (Lead Gen-SaaS)

> **Plateforme :** Google Ads
> **Catégorie :** Pmax
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Ce document vous aide à structurer les campagnes Performance Max spécifiquement pour le Lead Gen et le SaaS, où la qualité des leads est la préoccupation principale.

> ❓ **La question centrale :** Comment structurer PMax pour le Lead Gen/SaaS afin de maximiser les leads qualifiés plutôt que les simples soumissions de formulaires ?

Le PMax Lead Gen et SaaS est fondamentalement différent du PMax e-commerce. Il n'y a pas de flux produits. Le succès dépend entièrement des **signaux de qualité des leads**, du **ciblage d'audience** et des **assets créatifs**. Sans un suivi correct de la qualité des leads, PMax optimisera pour le volume, pas la valeur.

> ⚠️ **La qualité des leads est le risque n°1 du PMax pour le Lead Gen/SaaS :** Sans import de conversions offline ou scoring de leads, PMax optimise pour les soumissions de formulaires les moins chères, souvent vos leads de la plus basse qualité.

---

## Ce que ce modèle NE couvre PAS

Ce document NE couvre PAS :

- La structuration du PMax e-commerce (Voir : [PMax Structure Mental Model (Ecommerce)](<Pmax - Structure PMax (E-commerce).md>))
- Les exigences du flux produits (Voir : [Product Feed Quality Mental Model](<../flux-produit/Flux Produit - Qualité du flux produits.md>))
- Les seuils de volume (Voir : [Conversion Volume Thresholds Reference](<../suivi/Suivi - Seuils de volume de conversions.md>))
- La configuration étape par étape du PMax (Voir : [SOP – Launch PMax for Lead Gen/SaaS](<Pmax - Lancer une campagne PMax pour Lead Gen-SaaS.md>))
- La configuration de l'import de conversions offline (Voir la documentation pertinente sur le suivi des conversions)

---

## Le problème de qualité des leads

PMax optimise pour ce que vous lui dites d'optimiser. Si vous ne suivez que les soumissions de formulaires, PMax trouvera les soumissions les moins chères.

### Hiérarchie des signaux de qualité

| **Type de signal** | **Qualité** | **Implémentation** |
|--------------------|-------------|-------------------|
| **Revenu clôturé** | ★★★ Meilleur | Intégration CRM, import de conversions offline |
| **Leads qualifiés par les ventes (SQL)** | ★★☆ Bon | Import de conversions offline avec étape SQL |
| **Leads qualifiés marketing (MQL)** | ★☆☆ Acceptable | Scoring de leads + import de conversions |
| **Soumissions de formulaires uniquement** | ⚠️ Risqué | Suivi par défaut (pas de signal de qualité) |

> 💡 **Signal de qualité minimum viable :** Importer au moins une conversion en aval (MQL, SQL ou opportunité) avec des valeurs. PMax peut alors optimiser pour la valeur, pas juste le volume.

### Options d'implémentation

| **Méthode** | **Complexité** | **Précision** |
|------------|---------------|--------------|
| Import de conversions offline Google Ads | Moyenne | Haute |
| Enhanced conversions pour les leads | Basse | Moyenne |
| Intégration native Salesforce/HubSpot | Basse-Moyenne | Haute |
| Intégration personnalisée Zapier/API | Haute | Haute |

---

## La décision PMax pour le Lead Gen/SaaS

| **Utiliser PMax quand...** | **Passer PMax quand...** |
|---------------------------|------------------------|
| L'import de conversions offline est configuré | Les soumissions de formulaires sont votre seule métrique |
| 30+ conversions suivies/mois (signal de qualité) | <30 conversions/mois |
| Les campagnes Search sont au maximum | Search seul atteint vos objectifs |
| Vous avez des signaux d'audience de qualité | Pas de données first-party disponibles |
| Vous voulez une portée cross-canal | Vous avez besoin de contrôle au niveau keyword |

---

## Options de structure de campagne

### Option 1 : Campagne PMax unique

Une campagne PMax avec plusieurs groupes d'assets.

| **Avantages** | **Inconvénients** |
|---------------|-------------------|
| Consolidation maximale des données | Moins de contrôle budgétaire par thème |
| Apprentissage plus rapide | Plus difficile d'isoler la performance |
| Gestion plus simple | Un groupe d'assets faible peut tirer les autres vers le bas |

**Idéal pour :** Comptes à budget limité, produit/service unique, ressources limitées

### Option 2 : Campagnes PMax multiples

Campagnes séparées par ligne de produit, service ou audience.

| **Avantages** | **Inconvénients** |
|---------------|-------------------|
| Contrôle budgétaire par thème | Fragmentation des données |
| Attribution de performance plus claire | Apprentissage plus lent par campagne |
| Peut mettre en pause/ajuster indépendamment | Plus de charge de gestion |

**Idéal pour :** Comptes à budget plus élevé, produits/services multiples, profils de marge différents

### Guide de décision de structure

| **Si...** | **Alors...** |
|-----------|-------------|
| Offre unique, audience unifiée | Campagne unique, groupes d'assets multiples par angle |
| Offres multiples, marges différentes | Campagnes multiples par offre |
| Audiences multiples, même offre | Campagne unique, groupes d'assets par audience |
| Offres ET audiences multiples | Campagnes multiples, groupes d'assets au sein de chacune |

---

## Stratégie de groupe d'assets

Les groupes d'assets sont les éléments constitutifs au sein d'une campagne PMax. Chaque groupe d'assets contient :

- Assets texte (titres, descriptions)
- Assets image
- Assets vidéo (optionnel mais recommandé)
- Signaux d'audience
- URL(s) finale(s)

### Approches de groupe d'assets

| **Approche** | **Structure** | **Idéal pour** |
|--------------|---------------|---------------|
| **Par offre/service** | 1 groupe d'assets par ligne de service | Landing pages différentes, messages différents |
| **Par audience** | 1 groupe d'assets par segment d'audience | Même offre, signaux de ciblage différents |
| **Par angle de message** | 1 groupe d'assets par angle de message | Tester quel angle résonne |
| **Hybride** | Combiner les approches ci-dessus | Comptes matures avec un volume suffisant |

### Composition minimale du groupe d'assets

| **Type d'asset** | **Minimum** | **Recommandé** |
|------------------|-------------|-----------------|
| Titres (30 car.) | 3 | 5-11 |
| Titres longs (90 car.) | 1 | 2-5 |
| Descriptions (90 car.) | 2 | 4 |
| Images (1200×628) | 1 | 3+ |
| Images (carré) | 1 | 3+ |
| Images (portrait) | 0 | 1+ |
| Vidéo | 0 | 1+ (fortement recommandé) |

> ⚠️ **La vidéo est fortement recommandée :** Sans vidéo, PMax auto-génère à partir de vos images. Une vidéo uploadée performe mieux sur les emplacements YouTube.

> ↪️ **Pour la composition détaillée des assets :** Voir [PMax Asset Group Strategy Reference](<Pmax - Stratégie des asset groups PMax.md>).

---

## Signaux d'audience

Les signaux d'audience indiquent à PMax où **commencer** à chercher. Ce sont des suggestions, pas des restrictions.

### Hiérarchie de qualité des signaux

| **Type de signal** | **Qualité** | **Utiliser pour** |
|--------------------|-------------|-------------------|
| **Customer Match (deals clôturés)** | La plus haute | "Trouver plus de personnes comme mes clients" |
| **Customer Match (SQLs)** | Haute | "Trouver plus de leads qualifiés" |
| **Convertisseurs du site** | Haute | "Trouver plus de personnes qui soumettent des formulaires" |
| **Segments personnalisés (URLs concurrents)** | Modérée | "Trouver des personnes qui considèrent les concurrents" |
| **Segments personnalisés (termes de recherche)** | Modérée | "Trouver des personnes qui recherchent des requêtes pertinentes" |
| **Audiences in-market** | Plus basse | Signaux de catégorie larges |

### Tailles minimales de liste

| **Type de liste** | **Minimum** | **Recommandé** |
|-------------------|-------------|-----------------|
| Customer Match | 1 000 matchés | 5 000+ |
| Visiteurs du site | 1 000 sur 30 jours | 5 000+ |
| Convertisseurs | 100 | 500+ |

> 💡 **Des listes plus grandes = des signaux plus forts :** Une liste Customer Match de 10 000 utilisateurs donne à PMax plus de patterns à apprendre qu'une liste de 1 000 utilisateurs.

> ↪️ **Pour l'implémentation détaillée des signaux d'audience :** Voir [Audience Signals Reference](<../audiences/Audiences - Signaux d'audience.md>).

---

## Expansion géographique

| **Scénario** | **Structure** | **Pourquoi** |
|--------------|---------------|-------------|
| Pays unique | Campagne unique | Consolider les données |
| Pays multiples, même langue | Campagne unique, tous les pays | Maximiser les données |
| Pays multiples, langues différentes | Campagnes séparées par langue | Créatif différent nécessaire |
| Pays multiples, tarifications différentes | Campagnes séparées par pays | Valeurs de conversion différentes |

> 💡 **Consolider par défaut :** Ne séparer par géographie que quand vous avez besoin de budgets différents, de créatif différent (langue) ou de valeurs de conversion différentes.

---

## Coexistence PMax + Search

Quand vous lancez PMax en parallèle de Search :

| **Principe** | **Implémentation** |
|--------------|-------------------|
| Protéger les requêtes de marque | Campagne Search de marque dédiée + exclusions de marque dans PMax |
| Protéger les keywords à haute valeur | Mot-clé exact dans Search (prioritaire sur PMax) |
| Laisser PMax découvrir | PMax trouve des requêtes incrémentales au-delà de votre set de keywords |

> ↪️ **Pour les règles de routage des requêtes :** Voir [Search PMax Query Routing Reference](<Pmax - Routage des requêtes Search PMax.md>).

---

## Modes d'échec courants

| **Échec** | **Pourquoi ça arrive** | **Comment prévenir** |
|-----------|----------------------|---------------------|
| Volume élevé, leads de basse qualité | Pas de signal de qualité importé | Configurer l'import de conversions offline avant le lancement |
| Cannibalisation du Search de marque | Marque non exclue | Ajouter les exclusions de marque lors de la configuration du lancement |
| Pas d'apprentissage, mauvaise performance | <30 conversions/mois | Vérifier que le seuil de volume est atteint avant d'utiliser PMax |
| Dépenses gaspillées sur Display/YouTube | Assets créatifs faibles | Valider la qualité créative avant le lancement |
| Mauvais taux lead-to-close | Optimise pour les soumissions de formulaires uniquement | Configurer le pipeline de conversions offline (données SQL ou revenu) avant le scaling |

---

## Seuils de volume

| **Stratégie d'enchères** | **Conversions minimum/mois** |
|--------------------------|------------------------------|
| Maximiser les conversions (sans objectif) | Fonctionne à n'importe quel volume |
| CPA cible | 30+ |
| Maximiser la valeur de conversion | Fonctionne à n'importe quel volume |
| ROAS cible | 50+ |

> ↪️ **Pour les seuils de volume complets :** Voir [Conversion Volume Thresholds Reference](<../suivi/Suivi - Seuils de volume de conversions.md>).

---

## Principes clés

1. **Les signaux de qualité des leads sont non négociables :** Ne lancez pas PMax sans import de conversions offline. Vous obtiendrez du volume, pas de la valeur.
2. **PMax est additif :** Utiliser en parallèle de Search, pas à la place. PMax trouve de la demande incrémentale cross-canal.
3. **Alimentez-le avec de bonnes données :** Customer Match et les audiences du site améliorent considérablement le ciblage. Pas de signaux = tir au hasard.
4. **La patience est requise :** PMax a besoin de 2-4 semaines pour apprendre. Ne le jugez pas la première semaine.
5. **La séparation de marque est obligatoire :** Excluez votre marque pour voir les vrais coûts d'acquisition.
6. **Structurer par valeur de conversion, pas par métriques de vanité :** Différents produits/services peuvent avoir des LTV différentes. Structurer les campagnes pour permettre à PMax d'optimiser pour la valeur.

---

## Documents liés

| **Document** | **Relation** |
|--------------|-------------|
| [PMax Structure Mental Model (Ecommerce)](<Pmax - Structure PMax (E-commerce).md>) | Parallèle (secteur différent) |
| [PMax Asset Group Strategy Reference](<Pmax - Stratégie des asset groups PMax.md>) | Référence (composition des assets) |
| [Audience Signals Reference](<../audiences/Audiences - Signaux d'audience.md>) | Référence (types de signaux et implémentation) |
| [Brand Separation Reference](<../search/Search - Séparation de marque.md>) | Référence (configuration de l'exclusion de marque) |
| [Conversion Volume Thresholds Reference](<../suivi/Suivi - Seuils de volume de conversions.md>) | Référence (seuils de volume par stratégie d'enchères) |
| [Search PMax Query Routing Reference](<Pmax - Routage des requêtes Search PMax.md>) | Référence (règles de routage des requêtes) |
| [PMax Launch Checklist (Lead Gen/SaaS)](<Pmax - [Review] Lancement PMax (Lead Gen-SaaS).md>) | Checklist (validation pré-lancement) |
| [SOP – Launch PMax for Lead Gen/SaaS](<Pmax - Lancer une campagne PMax pour Lead Gen-SaaS.md>) | Exécution (configuration de campagne) |
