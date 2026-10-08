# Exécuter un cycle de test créative

> **Plateforme :** Google Ads
> **Catégorie :** Strategie
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Cette SOP exécute un cycle de test créatif structuré sur tous les formats Google Ads : RSA Search, assets PMax, créatifs Demand Gen, responsive display ads et vidéos. Elle relie les méthodes de test propres à chaque format dans une cadence répétable unique pour que chaque format soit testé, mesuré et rafraîchi systématiquement.

> ❓ **La question clé :** Quels éléments créatifs gagnent, lesquels tirent la performance vers le bas, et que tester ensuite sur chaque format d'annonce ?

---

## Ce que cette SOP ne couvre PAS

Cette SOP ne couvre **pas :**

- Enseigner la méthodo Iteration Loop pour les RSA (Voir : [SOP - Test RSA avec la boucle d'iteration](<../search/Search - Test RSA avec la boucle d'itération.md>))
- Exécuter l'optimisation au niveau campagne PMax (Voir : [SOP - Cycle d'optimisation PMax e-commerce](<../pmax/Pmax - Cycle d'optimisation PMax e-commerce.md>) ou [SOP - Cycle d'optimisation PMax lead gen/SaaS](<../pmax/Pmax - Cycle d'optimisation PMax Lead Gen-SaaS.md>))
- Exécuter l'optimisation des campagnes Demand Gen (Voir : [SOP - Cycle d'optimisation Demand Gen](<../demand-gen/Demand Gen - Cycle d'optimisation.md>))
- Exécuter l'optimisation des campagnes Display et Video (Voir : [SOP - Cycle d'optimisation campagnes Display & Video](<../display/Display - Cycle d'optimisation Display et Video.md>))
- Rédiger les RSA initiales ou composer la copy (Voir : [SOP - Rediger des RSA performantes](<../search/Search - Rédiger des RSA performantes.md>))
- Expliquer la théorie de l'expérimentation ou le design d'expérimentation (Voir : [Tests et expérimentations](<../../01-strategie/experimentation/Expérimentation - Tests et expérimentations.md>))

**Distinction clé :** C'est une SOP de coordination cross-format. Elle vous aiguille vers la bonne SOP spécifique au format pour exécuter, puis ramène les résultats ensemble pour la documentation des apprentissages et le cycle suivant.

### Quand utiliser cette SOP

À exécuter mensuellement comme cadence récurrente. Chaque cycle couvre tous les formats actifs.
| Condition | Requis |
|-----------|----------|
| Au moins une campagne par format est en ligne depuis 4+ semaines | Oui |
| Les changements du cycle précédent ont eu 2+ semaines pour accumuler des données | Oui |
| Le socle créatif est solide (RSA déployées, assets PMax remplis, créa Demand Gen lancée) | Oui |
| Le tracking de conversion est vérifié et stable | Oui |

> 💡 **Prérequis du premier cycle :** Compléter les SOP de setup format par format avant d'exécuter ce cycle. Vous ne pouvez pas tester un créatif qui n'est pas déployé.

---

### Avant de commencer

**Entrées requises :**

- Accès à Google Ads avec droits Editor
- Données de performance au niveau asset pour tous les formats actifs
- Journal d'apprentissage du cycle précédent (ou modèle vide pour le premier cycle)
- Backlog d'hypothèses (depuis les cycles précédents, recherche client ou veille concurrentielle)

**Documents de référence (à garder ouverts) :**
| Document | Utilisé pour |
|----------|----------|
| [SOP - Test RSA avec la boucle d'iteration](<../search/Search - Test RSA avec la boucle d'itération.md>) | Méthodo de test des RSA Search |
| [SOP - Test RSA avec la boucle d'iteration](<../search/Search - Test RSA avec la boucle d'itération.md>) | Méthodo Iteration Loop (Templatize, Aggregate, Diagnose, Iterate) |
| [Catalogue Angles de headlines](<../search/Search - Angles de headlines.md>) | Idées d'angles de titre pour les nouvelles variantes |
| [Référence performance Demand Gen](<../demand-gen/Demand Gen - Performance.md>) | Benchmarks (analyse comparative) et données par format de créatifs Demand Gen |
| [Tests et expérimentations](<../../01-strategie/experimentation/Expérimentation - Tests et expérimentations.md>) | Significativité statistique et design d'expérimentation |
| [Catalogue d'expansion de descriptions](<../search/Search - Patterns d'expansion de descriptions.md>) | Patterns de descriptions pour les nouvelles variantes |
| [Référence créatifs image](<Creatives - Création image.md>) | Specs image et guidelines créatives |
| [Référence créatifs vidéo](<../video/Video - Création vidéo.md>) | Specs vidéo et guidelines de format |

---

## Cadre d'exécution

| Phase | Objectif | Résultat |
|-------|---------|--------|
| **Phase 1** | Définir les hypothèses de test | Document d'hypothèses par format |
| **Phase 2** | Préparer les variantes par format | Nouvelles variantes créatives déployées |
| **Phase 3** | Lancer les tests avec contrôles propres | Tests qui tournent avec baselines saines |
| **Phase 4** | Surveiller pendant la période de test | Journal de surveillance confirmant l'absence de contamination |
| **Phase 5** | Analyser les résultats et déclarer les gagnants | Classification gagnants/perdants par format |
| **Phase 6** | Déployer les gagnants et documenter les apprentissages | Journal d'apprentissage à jour, perdants remplacés |
| **Phase 7** | Programmer le cycle suivant | Date du prochain cycle posée, backlog d'hypothèses rafraîchi |

---

## Phase 1️⃣ : Définir les hypothèses de test

Chaque test commence par une hypothèse. Ne jamais tester au hasard.

### 1.1 Examiner les apprentissages du cycle précédent

1. Ouvrir le journal d'apprentissage du cycle précédent
2. Examiner les actions marquées "tester au prochain cycle"
3. Reporter les hypothèses qui ont été reportées faute de volume ou de timing
4. Noter les formats avec des résultats non concluants (besoin de plus de durée ou de volume)

### 1.2 Générer de nouvelles hypothèses

Utiliser ces sources pour créer des hypothèses pour chaque format :

| Source | Quoi extraire | Exemple d'hypothèse |
|--------|----------------|-------------------|
| Avis clients | Compliments ou plaintes récurrents | "Si on ajoute 'sans engagement' comme titre Risk Removal, le CPI s'améliorera car 40% des avis mentionnent la peur de l'engagement" |
| Annonces concurrents | Lacunes de message ou angles surutilisés | "Si on met en avant 'support 24/7 en direct' dans les headlines PMax, on se différencie car aucun concurrent ne le mentionne" |
| Équipe sales/support | Objections et questions courantes | "Si on adresse 'le temps d'installation' dans les hooks vidéo Demand Gen, le CTR s'améliorera car c'est l'objection N°1" |
| Résultats de tests précédents | Patterns à travers les formats | "Si l'angle 'preuve sociale' a gagné en RSA, tester des incrustations de compteur d'utilisateurs en images Display devrait améliorer la CVR" |
| Pertinence saisonnière | Offres ou thèmes d'actualité | "Si on ajoute le message budget Q4 en janvier, la pertinence s'améliore pour les planificateurs annuels" |

> 💡 **Ce sont des sources d'exemples, pas une liste exhaustive.** Tout signal sur le comportement client, les conditions de marché ou la performance créative peut générer une hypothèse valide. La clé : chaque test démarre d'une raison documentée, pas d'une exploration aléatoire.

### 1.3 Rédiger les hypothèses par format

Utiliser ce format pour chaque hypothèse :

> **Format d'hypothèse :** "Si on [CHANGEMENT] sur [FORMAT], alors [KPI] va [DIRECTION] parce que [RAISON]".

Créer 1-3 hypothèses par format actif. Ne pas surcharger un cycle au-delà de ce que vous pouvez mesurer.

| Format | Max hypothèses par cycle | Pourquoi |
|--------|--------------------------|-----|
| RSA Search | 2-3 (par cluster) | Slots de headlines limités, besoin de données par angle |
| Assets PMax | 1-2 (par asset group) | Max 2 swaps par type d'asset par cycle |
| Demand Gen | 2-3 (par ad group) | Plusieurs formats créatifs à comparer |
| Display | 1-2 | Volume de conversion plus faible, accumulation de données plus longue |
| Video | 1-2 | Effort de production par variante plus élevé |

---

## Phase 2️⃣ : Préparer les variantes par format

### 2.1 RSA Search

Suivre la méthodo Iteration Loop. Cette SOP ne la remplace pas : elle coordonne le timing.

1. Identifier le cluster de test et le slot à tester
2. Créer la variante de titre ou description selon votre hypothèse
3. Appliquer la variante sur tout le cluster avec l'approche par modèle

**Règles clés :**

| Règle | Justification |
|------|-----------|
| Utiliser les colonnes CPI/RPI comme métrique principale | Résultat business, pas CTR |
| Utiliser des labels pour le test de patterns | Permet l'agrégation entre ad groups |
| Ignorer le score Ad Strength | Checklist de complétude, pas un signal de performance |
| Tester un slot à la fois par cluster | Isole la variable |

> ↪️ **Processus complet de test RSA :** Voir [SOP - Test RSA avec la boucle d'iteration](<../search/Search - Test RSA avec la boucle d'itération.md>).

### 2.2 Assets PMax

Le test d'assets PMax suit la même méthodo Iteration Loop que les RSA : Templatize, Aggregate, Diagnose, Iterate.

1. **Templatize :** Assigner chaque slot d'asset à un type d'angle précis (proposition de valeur, preuve sociale, levée de risque, etc.) pour pouvoir comparer les angles entre asset groups, pas juste les assets individuels
2. **Aggregate :** Utiliser les données de performance réelles au niveau asset (impressions, clics, conversions par asset). Mutualiser les résultats entre asset groups partageant le même modèle d'angle pour atteindre des volumes significatifs
3. **Diagnose :** Classer chaque asset selon le système de tier de performance : Strong, Adequate, Underperforming, Data-starved, Zero-conversion (minimum 1 000 impressions par type d'asset)
4. **Iterate :** Remplacer les 1-2 assets les plus faibles par type avec des variantes qui testent un angle ou sous-angle différent. Conserver la diversité d'angles dans l'asset group

**Règles clés :**

| Règle | Justification |
|------|-----------|
| Utiliser les conversions par impression comme métrique principale | Normalisé pour les écarts d'exposition |
| Templater les angles entre asset groups | Permet l'analyse agrégée, évite la pauvreté de données |
| Ignorer entièrement Ad Strength | Indicateur de complétude, pas prédicteur de performance |
| Max 2 swaps par type d'asset par cycle | Préserve la clarté de mesure |

> ↪️ **Fondation méthodo :** Le test d'assets PMax suit la même Iteration Loop que les RSA. Voir [SOP - Test RSA avec la boucle d'iteration](<../search/Search - Test RSA avec la boucle d'itération.md>) pour le document complet.

### 2.3 Créatifs Demand Gen

Demand Gen supporte plusieurs formats créatifs : vidéo, image unique et carrousel. Tester la performance par format ET la variation créative en parallèle.

1. Examiner la performance créative actuelle par ad group (CTR, conversions, CPA)
2. Identifier les créatifs sous-performants (sous la moyenne ad group sur conversions par impression)
3. Créer de nouvelles variantes selon vos hypothèses

**Tests au niveau format :**

| Type de test | Quoi comparer | Quand le lancer |
|-----------|-----------------|-------------|
| Video vs. image vs. carrousel | Performance des formats face à face | Premiers 1-3 cycles (exploration) |
| Style UGC vs. production léchée | Efficacité du style créatif | Quand le budget supporte les deux versions |
| Combinaisons audience-créatif | Quel créatif fonctionne pour quelle audience | Une fois les formats gagnants identifiés |

**Règles pour les variantes créatives :**

| Règle | Justification |
|------|-----------|
| Inclure au moins une vidéo ET une image par ad group | Couvre YouTube (vidéo) et Discover/Gmail (image) |
| Tester 3-5 variations par format | Donne à Google des options à optimiser |
| Garder les vidéos sous 30 secondes | Le format court surpasse en contexte flux |
| Calibrer les images en 1200x628 et 1200x1200 | Couvre tous les emplacements Demand Gen |

> ↪️ **Pour les benchmarks et données format Demand Gen :** Voir [Référence performance Demand Gen](<../demand-gen/Demand Gen - Performance.md>).

### 2.4 Responsive display ads

Le test créatif Display se concentre sur les éléments individuels au sein des responsive display ads.

1. Examiner les rapports au niveau asset pour les responsive display ads actuels
2. Identifier le type d'élément le plus faible (titre, description, image, logo)
3. Créer 1-2 variantes de remplacement pour l'élément le plus faible

**Priorité de test des éléments :**

| Priorité | Élément | Niveau d'impact | Approche de test |
|----------|---------|-------------|---------------|
| 1 | Images (paysage + carré) | Le plus élevé : format visuel d'abord | Swap de l'image la plus faible, tester une approche visuelle différente |
| 2 | Titres (court + long) | Élevé : élément texte principal | Tester différents angles (bénéfice vs. preuve vs. urgence) |
| 3 | Descriptions | Moyen | Tester différentes propositions de valeur ou CTA |
| 4 | Logos | Faible (sauf si manquant) | S'assurer de la visibilité de marque, tester avec/sans |

### 2.5 Annonces vidéo

Le test vidéo demande un effort de production plus important. Planifier les variantes stratégiquement.

1. Examiner la performance vidéo actuelle (taux de visionnage, CTR, conversions par vue)
2. Identifier les vidéos sous-performantes (sous la moyenne de la campagne sur conversions par vue)
3. Créer des variantes testant un élément par hypothèse

**Tests d'éléments vidéo :**

| Élément | Quoi tester | Comment isoler |
|---------|-------------|----------------|
| Hook (5 premières secondes) | Différentes accroches : question vs. point de douleur vs. stat vs. démo produit | Garder corps et CTA identiques, ne changer que le hook |
| Durée | 15s vs. 30s vs. 60s | Même message adapté à différentes durées |
| Format | Talking head vs. animation vs. démo produit vs. UGC | Garder le message constant, changer le style de livraison |
| Placement du CTA | Carte de fin vs. mid-roll vs. overlay persistant | Même vidéo, timing CTA différent |

> ⚠️ **Le test vidéo est plus lent :** Coûts de production et faible volume de conversion font que les cycles de test vidéo prennent 4-8 semaines pour produire des données exploitables. Planifier en conséquence.

### 2.6 Optimisation au niveau asset sur tous les formats

Au-delà du test au niveau annonce, les campagnes Demand Gen, Display et Video fournissent des données de performance au niveau asset qui permettent une optimisation créative granulaire :

1. **D'abord les tests au niveau format :** Déterminer quel format créatif performe le mieux (vidéo vs. image vs. carrousel pour Demand Gen, différentes approches d'image pour Display). C'est la priorité de test "vue d'ensemble"
2. **Puis zoomer au niveau asset :** Une fois les gagnants par format identifiés, optimiser les assets individuels au sein du format gagnant : ajuster titres, descriptions, images, hooks et CTA
3. **Courbe de maturité du test :** Les premiers cycles se concentrent sur la découverte de format (large). Les comptes matures se concentrent sur le raffinement au niveau asset dans les formats éprouvés (étroit). Cela suit la même progression de maturité que l'Iteration Loop : type d'angle vs. type d'angle d'abord, puis sous-angle vs. sous-angle, puis asset vs. asset

---

## Phase 3️⃣ : Lancer les tests avec contrôles propres

### 3.1 Établir des baselines saines

Avant de déployer une variante, enregistrer la performance actuelle pour chaque format :

| Métrique à enregistrer | RSA Search | PMax | Demand Gen | Display | Video |
|-------------------|------------|------|------------|---------|-------|
| Impressions | Par asset | Par asset | Par créatif | Par asset | Par vidéo |
| Clics | Par asset | Par asset | Par créatif | Par asset | Par vidéo |
| Conversions | Par asset | Par asset | Par créatif | Par asset | Par vidéo |
| KPI principal (CPI/RPI) | Par cluster | Par asset group | Par ad group | Par campagne | Par campagne |
| Plage de dates | 14-30 derniers jours | 14-30 derniers jours | 14-30 derniers jours | 14-30 derniers jours | 14-30 derniers jours |

### 3.2 Déployer les variantes

1. Déployer toutes les variantes spécifiques par format le même jour (ou dans une fenêtre de 2 jours)
2. Étiqueter les nouvelles variantes avec un ID de test pour le suivi (format : `[FORMAT]-[DATE]-[NUMÉRO]`)
3. Vérifier que tous les nouveaux assets sont approuvés et diffusent
4. Enregistrer la date de lancement pour chaque format

### 3.3 Poser les règles de contrôle

Pendant la période de test, ne pas :

- Changer les stratégies d'enchère ou les cibles
- Ajuster les budgets de plus de 10%
- Ajouter ou retirer des segments d'audience
- Modifier les landing pages
- Déployer des changements créatifs supplémentaires en dehors de ce cycle

> ⚠️ **La contamination tue les tests :** Si vous changez autre chose pendant la période de test, vous ne pouvez pas isoler quel changement a causé le résultat. Geler toutes les autres variables pour la durée.

---

## Phase 4️⃣ : Surveiller pendant la période de test

### 4.1 Durée de test par format

| Format | Durée min de test | Seuil min de données |
|--------|----------------------|----------------------|
| RSA Search | 2-4 semaines | 1 000+ impressions par asset sur le cluster |
| Assets PMax | 2-4 semaines | 1 000+ impressions par type d'asset |
| Demand Gen | 3-4 semaines (incluant le learning) | 30+ conversions par ad group |
| Display | 3-4 semaines | 1 000+ impressions par asset |
| Video | 4-8 semaines | 500+ vues par vidéo, 10+ conversions |

### 4.2 Vérifications hebdomadaires

Faire ces vérifications chaque semaine pendant la période de test :

1. Vérifier que toutes les variantes de test sont encore approuvées et diffusent
2. Détecter la contamination (changements non planifiés par l'équipe, suggestions auto appliquées)
3. Confirmer qu'aucun format ne sous-performe catastrophiquement (>50% pire que le contrôle sur le KPI principal)
4. Logger tout événement externe pouvant affecter les résultats (décalages saisonniers, changements concurrents, promotions)

### 4.3 Règles d'arrêt prématuré

| Condition | Action |
|-----------|--------|
| La variante est 50%+ pire que le contrôle après 1 semaine de données | Mettre la variante en pause, documenter comme hypothèse échouée |
| Urgence au niveau compte (tracking cassé, problème budget) | Mettre le cycle en pause, redémarrer après résolution |
| Événement externe contaminant les résultats (promotion majeure, décalage saisonnier) | Étendre la période de test, noter l'événement |

Ne pas arrêter prématurément parce qu'une variante "a l'air mieux". Attendre les seuils minimums.

---

## Phase 5️⃣ : Analyser les résultats et déclarer les gagnants

### 5.1 Récupérer les données de performance par format

À la fin de la période de test, extraire les données pour chaque format avec les mêmes métriques que la Phase 3.

### 5.2 Appliquer l'analyse spécifique au format

**RSA Search :** Utiliser l'analyse en quadrants de l'Iteration Loop :

| Quadrant | Profil | Action |
|----------|---------|--------|
| Champions | Fort CPI/RPI, Fort AIS | Protéger |
| Hidden Gems | Fort CPI/RPI, Faible AIS | Augmenter l'exposition |
| Silent Killers | Faible CPI/RPI, Fort AIS | Retirer immédiatement |
| Trash | Faible CPI/RPI, Faible AIS | Remplacer au prochain cycle |

**Assets PMax :** Classer par tier de performance :

| Palier | Critères | Action |
|------|----------|--------|
| Strong | Au-dessus de la moyenne sur conversions par impression | Garder |
| Underperforming | Sous la moyenne sur conversions par impression après 1 000+ impressions | Remplacer |
| Zero-conversion | 1 000+ impressions, zéro conversion | Remplacer immédiatement |

**Demand Gen :** Comparer entre formats et variantes :

| Comparaison | Métrique principale | Métrique secondaire |
|------------|---------------|-----------------|
| Video vs. image vs. carrousel | Conversions par impression | CTR |
| UGC vs. léché | CVR | CPA |
| Pairing audience-créatif | CPA | Volume de conversion |

**Display :** Comparer la performance au niveau élément :

| Métrique | À utiliser pour |
|--------|---------|
| CTR par combinaison d'assets | Identifier les titres/images qui font cliquer |
| CVR par combinaison d'assets | Identifier les combinaisons qui convertissent |
| Impressions par asset | Comprendre les assets que Google favorise |

**Video :** Comparer la performance au niveau vidéo :

| Métrique | À utiliser pour |
|--------|---------|
| Taux de visionnage | Efficacité du hook |
| CTR | Efficacité du CTA |
| Conversions par vue | Qualité créative globale |
| Coût par vue | Efficacité |

**Demand Gen, Display, Video : métrique principale pour campagnes orientées performance**

Quand les campagnes Demand Gen, Display ou Video tournent avec des objectifs de performance (conversions, revenu), utiliser CPI (Conversions Per Impression) ou RPI (Revenue Per Impression) comme métrique créative principale, conforme à la méthodo Iteration Loop. Ne pas se reposer sur le seul CTR.

Pour les campagnes avec view-through conversions (VTC), utiliser une métrique de conversion blendée :

> **Conversions blendées** = conversions click-through + (VTC x facteur de remise de 0,3-0,5)

Cela reconnaît que les VTC ont une valeur réelle mais inférieure aux click-through. Utiliser 0,3 pour les comptes conservateurs, 0,5 quand les données de validation VTC le justifient.

> ↪️ **Méthodologie de gestion des VTC :** Voir [Référence performance Demand Gen](<../demand-gen/Demand Gen - Performance.md>) pour le document VTC complet.

**Objectifs hors performance (notoriété, portée) :** Quand les campagnes ciblent la notoriété plutôt que les conversions, utiliser CPM, taux de visionnage et fréquence comme métriques principales. CPI/RPI ne s'applique pas.

### 5.3 Vérification de significativité statistique

Avant de déclarer un gagnant, vérifier que le résultat n'est pas du bruit aléatoire :

| Taille d'effet | Conversions approximatives nécessaires par variante |
|-------------|-------------------------------------------|
| 20%+ d'écart | 100-200 |
| 10-20% d'écart | 300-500 |
| 5-10% d'écart | 1 000+ |
| <5% d'écart | Non concluant à la plupart des volumes |

Si un résultat n'atteint pas la significativité, le classer comme "directionnel" et étendre le test ou ajouter l'hypothèse au cycle suivant.

> ↪️ **Pour le document de significativité statistique :** Voir [Tests et expérimentations](<../../01-strategie/experimentation/Expérimentation - Tests et expérimentations.md>).

**Viser 80%+ de significativité statistique** avant de déclarer un gagnant. Cela s'aligne avec la méthodo de test RSA où les seuils de conversion sont conçus pour atteindre ce niveau de confiance.

**Quand les volumes faibles empêchent d'atteindre la significativité :**

| Situation de volume | Action |
|-----------------|--------|
| Test qui tourne 4+ semaines, qui approche mais n'atteint pas 80% | Étendre la période de test de 2 semaines |
| Test qui tourne 6+ semaines, toujours sous 80% | Classer comme "directionnel" : déployer à titre conditionnel, continuer la surveillance |
| Test qui tourne 8+ semaines avec très peu de données | Terminer le test. Le format ou la campagne manque de volume pour un test au niveau asset. Consolider les variantes et optimiser à un niveau supérieur (au niveau annonce ou campagne) |
| Incapacité chronique à atteindre la significativité | Réévaluer le scope de test : tester de plus gros changements (au niveau format) plutôt que des variations subtiles d'asset |

> ↪️ **Solution à la pauvreté de données :** L'Iteration Loop adresse la pauvreté de données par l'agrégation entre ad groups et asset groups. Le même principe s'applique : mutualiser les données entre campagnes ou ad groups quand les tests individuels manquent de volume.

---

## Phase 6️⃣ : Déployer les gagnants et documenter les apprentissages

### 6.1 Déployer les gagnants

| Format | Action de déploiement du gagnant |
|--------|--------------------------|
| RSA Search | Promouvoir l'asset gagnant, retirer les Silent Killers, conserver la cohérence des modèles sur le cluster |
| PMax | Garder les assets Strong, remplacer les Underperforming par la prochaine variante d'hypothèse |
| Demand Gen | Scaler le format créatif gagnant, mettre en pause les variantes perdantes, tester de nouvelles variations du gagnant |
| Display | Remplacer l'élément le plus faible par le gagnant prouvé, tester l'élément suivant par ordre de priorité |
| Video | Scaler la vidéo gagnante (augmenter budget/audience), produire des variations du hook/format gagnant |

### 6.2 Mettre à jour le journal d'apprentissage

Pour chaque hypothèse testée, enregistrer :

```
TEST ID : [FORMAT]-[DATE]-[NUMÉRO]
FORMAT : [RSA Search / PMax / Demand Gen / Display / Video]
DATES DE TEST : [Début] à [Fin]

HYPOTHÈSE :
"Si on [CHANGEMENT], alors [KPI] va [DIRECTION] parce que [RAISON]".

RÉSULTAT :
[Tableau de données : variante, impressions, conversions, KPI principal]

VERDICT :
[CONFIRMÉ / REJETÉ / NON CONCLUANT]

APPRENTISSAGES :
- [Ce qui a marché et pourquoi]
- [Ce qui a échoué et pourquoi]
- [Implications cross-format]

ACTIONS :
- [PROMOUVOIR / CONTINUER À TESTER / RETIRER / REPORTER]

PROCHAINE HYPOTHÈSE :
[Ce que ce résultat dit de tester ensuite]
```

### 6.3 Extraire les patterns cross-format

Après avoir documenté les résultats individuels, chercher des patterns entre les formats :

| Pattern à chercher | Exemple | Action |
|--------------------|---------|--------|
| Un angle gagne sur plusieurs formats | Les titres "preuve sociale" gagnent en RSA ET PMax | Doubler la mise sur la preuve sociale tous formats confondus |
| Préférences spécifiques au format | La vidéo UGC gagne en Demand Gen mais le léché gagne en Display | Adapter le style créatif au format |
| Alignement audience-créatif | Le message Risk Removal gagne pour les audiences froides, le CTA gagne pour les chaudes | Segmenter le créatif par température d'audience |

---

## Phase 7️⃣ : Programmer le cycle suivant

### 7.1 Poser la date du prochain cycle

| Issue du cycle actuel | Timing du prochain cycle |
|----------------------|------------------|
| Gagnants clairs déployés, perdants remplacés | 4 semaines à partir du déploiement (cadence standard) |
| Résultats non concluants nécessitant plus de données | Extension de 2 semaines, puis ré-analyse |
| Gros gagnants trouvés | 3 semaines (accélérer pour tester des variations des gagnants) |
| Plus de tests actifs | Immédiatement générer de nouvelles hypothèses et démarrer la Phase 1 |

### 7.2 Rafraîchir le backlog d'hypothèses

1. Ajouter les entrées "prochaine hypothèse" du journal d'apprentissage de ce cycle
2. Ajouter de nouvelles hypothèses depuis la recherche client, la veille concurrentielle et les retours sales
3. Prioriser par impact attendu et volume de données disponible
4. Retirer les hypothèses qui ont été testées et résolues définitivement

### 7.3 Checklist de rafraîchissement créatif mensuelle

À la fin de chaque cycle mensuel, vérifier :

- [ ] Tous les perdants testés ont été remplacés (pas de sous-performants qui traînent)
- [ ] De nouvelles variantes sont déployées pour la prochaine période de test
- [ ] La créa Demand Gen a été rafraîchie dans les 4-6 dernières semaines (évite la fatigue d'annonce)
- [ ] Les annonces vidéo ont été examinées pour la dégradation du taux de visionnage
- [ ] Les assets auto-générés PMax ont été vérifiés et désactivés là où c'est approprié
- [ ] Le journal d'apprentissage est à jour avec toutes les conclusions du cycle
- [ ] Le backlog d'hypothèses contient 3+ hypothèses prêtes pour le prochain cycle

---

## Validation et critères de complétion

Cette SOP est terminée quand :

- [ ] Hypothèses définies pour tous les formats actifs (Phase 1)
- [ ] Variantes créées et déployées selon les règles propres à chaque format (Phase 2)
- [ ] Baselines saines enregistrées avant le lancement du test (Phase 3)
- [ ] Période de test terminée sans contamination (Phase 4)
- [ ] Résultats analysés avec vérification de significativité statistique (Phase 5)
- [ ] Gagnants déployés, perdants remplacés, journal d'apprentissage à jour (Phase 6)
- [ ] Cycle suivant programmé et backlog d'hypothèses rafraîchi (Phase 7)

---

## Passerelle de sortie

| Prochaine étape | Quand |
|-----------|------|
| Relancer cette SOP | Au prochain cycle programmé (3-4 semaines) |
| Plonger sur le test RSA | L'Iteration Loop a besoin de plus de cycles dans un cluster |
| Plonger sur les assets PMax | Un asset group a besoin de changements structurels (split) |
| Rafraîchir la créa Demand Gen | Fatigue créative détectée (CTR en baisse 2+ semaines) |

**Si des problèmes nécessitent une exécution propre au format :**

| Problème | Rediriger vers |
|-------|----------|
| Méthodo de test RSA | [SOP - Test RSA avec la boucle d'iteration](<../search/Search - Test RSA avec la boucle d'itération.md>) |
| Remplacement d'asset PMax | Phase 2.2 de cette SOP + [SOP - Cycle d'optimisation PMax e-commerce](<../pmax/Pmax - Cycle d'optimisation PMax e-commerce.md>) ou [SOP - Cycle d'optimisation PMax lead gen/SaaS](<../pmax/Pmax - Cycle d'optimisation PMax Lead Gen-SaaS.md>) Phase 4 |
| Optimisation Demand Gen | [SOP - Cycle d'optimisation Demand Gen](<../demand-gen/Demand Gen - Cycle d'optimisation.md>) |
| Optimisation Display et Video | [SOP - Cycle d'optimisation campagnes Display & Video](<../display/Display - Cycle d'optimisation Display et Video.md>) |
| Idées d'angles de titre | [Catalogue Angles de headlines](<../search/Search - Angles de headlines.md>) |
| Questions de design d'expérimentation | [Tests et expérimentations](<../../01-strategie/experimentation/Expérimentation - Tests et expérimentations.md>) |

---

## Erreurs fréquentes

| Erreur | Pourquoi ça arrive | Comment l'éviter |
|---------|----------------|--------------|
| Tester au hasard sans hypothèse | Pas d'approche structurée pour générer des idées | Utiliser le format d'hypothèse, puiser dans la recherche client et les résultats antérieurs |
| Ignorer Ad Strength | Sur-pondérer le score | Ad Strength est une checklist de complétude, pas un signal de performance |
| Changer d'autres variables pendant les tests | Urgence à tout optimiser en même temps | Geler toutes les variables non testées pour la durée |
| Ne pas documenter les apprentissages | Empressement à déployer les gagnants | Compléter le journal d'apprentissage avant de démarrer le cycle suivant |
| Remplacements même angle | Par défaut on choisit une formulation similaire | Choisir délibérément un type d'angle ou sous-angle différent pour chaque remplacement |
| Tester en cross-format sans coordination | Chaque format tourne sur son propre calendrier | Utiliser cette SOP pour synchroniser les cycles |
| Sauter la vérification statistique | Déclarer un gagnant sur des écarts faibles | Vérifier les seuils minimaux de conversion avant d'agir |
| Ne jamais rafraîchir la créa Demand Gen | Croire à du créatif evergreen | Rafraîchir toutes les 4-6 semaines pour éviter la fatigue |
| Sur-tester la vidéo | Trop de variantes avec faible volume de conversion | Limiter à 1-2 hypothèses vidéo par cycle, étendre les délais |

---

## Documents liés

| Document | Relation |
|----------|--------------|
| [SOP - Test RSA avec la boucle d'iteration](<../search/Search - Test RSA avec la boucle d'itération.md>) | Exécution : méthodo de test RSA Search |
| [SOP - Test RSA avec la boucle d'iteration](<../search/Search - Test RSA avec la boucle d'itération.md>) | Fondation : méthodo Iteration Loop appliquée à tous les formats |
| [Tests et expérimentations](<../../01-strategie/experimentation/Expérimentation - Tests et expérimentations.md>) | Fondation : design d'expérimentation et significativité statistique |
| [Catalogue Angles de headlines](<../search/Search - Angles de headlines.md>) | Référence : idées d'angles pour les nouvelles variantes |
| [Référence performance Demand Gen](<../demand-gen/Demand Gen - Performance.md>) | Référence : benchmarks et données de format Demand Gen |
| [SOP - Cycle d'optimisation Demand Gen](<../demand-gen/Demand Gen - Cycle d'optimisation.md>) | Parallèle : processus d'optimisation Demand Gen |
| [SOP - Cycle d'optimisation campagnes Display & Video](<../display/Display - Cycle d'optimisation Display et Video.md>) | Parallèle : processus d'optimisation Display et Video |
| [Catalogue d'expansion de descriptions](<../search/Search - Patterns d'expansion de descriptions.md>) | Référence : patterns de descriptions pour les nouvelles variantes |
