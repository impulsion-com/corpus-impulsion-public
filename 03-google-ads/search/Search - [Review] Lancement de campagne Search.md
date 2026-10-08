# Lancement de campagne Search

> **Plateforme :** Google Ads
> **Catégorie :** Search
> **Type :** Checklist
> **Mis à jour :** 2026-05-07

## Objectif

Valide qu'une campagne Search est entièrement configurée et prête à être activée. Exécutez cette checklist avant de lancer toute nouvelle campagne Search pour détecter les erreurs de configuration, les composants manquants et les erreurs de paramétrage qui gaspillent du budget ou retardent l'apprentissage.

### Quand utiliser cette checklist

- Avant d'activer toute nouvelle campagne Search
- Après la reconstruction ou restructuration d'une campagne Search existante
- Lors de l'onboarding d'un nouveau compte client et de la reprise de campagnes en pause
- Avant de réactiver une campagne dormante depuis 30+ jours

---

## Ce que cette checklist valide

Cette checklist confirme :

- Le suivi des conversions est actif et correctement configuré
- La structure de campagne suit les conventions de nommage et les règles de segmentation
- Les ad groups sont organisés par thème créatif et passent les seuils de volume
- Les keywords utilisent les bons types de correspondance sans doublons ni refus
- Les listes de keywords négatifs sont en place et liées
- Les RSAs respectent les exigences de titres et descriptions
- La stratégie d'enchères et les cibles sont correctement configurées
- Les paramètres de campagne sont corrects (réseaux, localisations, langue, programmation)
- Les composants DSA sont correctement configurés (si applicable)

Cette checklist ne couvre **PAS** :

- Les instructions de construction de campagne pas à pas (Voir : SOP: Lancer une campagne Search, quand disponible)
- La validation de la performance continue après le lancement (workflow d'audit séparé)
- La sélection de votre stratégie d'enchères (Voir : [Bidding Strategy Mental Model](<../encheres/Enchères - Stratégie d'enchères.md>))
- La rédaction de votre texte publicitaire (Voir : [SOP - Rediger des RSA performantes](<Search - Rédiger des RSA performantes.md>))
- La validation de la qualité des données de conversion dans le temps (Voir : [Conversion Data Quality Checklist](<../suivi/Suivi - [Review] Qualité des données de conversion.md>))

---

## Référence rapide

| Catégorie | Éléments | Focus |
|----------|-------|-------|
| Vérification du tracking | 5 | Actions de conversion, tags, attribution |
| Structure de campagne | 5 | Nommage, segmentation, objectifs |
| Validation des ad groups | 4 | Organisation thématique, volume, doublons |
| Keywords | 4 | Types de correspondance, mapping, éligibilité |
| Keywords négatifs | 4 | Listes, liaison, exclusions |
| Créatives (RSAs) | 5 | Titres, descriptions, extensions |
| Enchères | 4 | Stratégie, cibles, plafonds, budget |
| Paramètres | 5 | Réseaux, localisation, langue, programmation |
| DSA (si applicable) | 5 | Page feed, labels, exclusions |

---

## Checklist

### Vérification du tracking

- [ ] Le suivi des conversions est actif et vérifié (le statut affiche "Enregistre des conversions")
- [ ] Les actions de conversion sont correctement classifiées : l'action principale est la conversion macro la plus basse dans le tunnel, les micro-conversions sont définies comme Secondaires
- [ ] Le Google Tag ou GTM se déclenche correctement sur toutes les pages pertinentes (vérifié via Tag Assistant ou GTM Preview)
- [ ] Les valeurs de conversion sont définies et passées dynamiquement (pas de valeurs statiques par défaut) pour l'e-commerce, ou assignées correctement pour le lead gen
- [ ] Le modèle d'attribution est défini sur Data-Driven

> ↪️ **Validation complète du tracking :** Voir [Conversion Tracking Setup Checklist](<../suivi/Suivi - Configuration du suivi des conversions.md>) pour le critère complet de configuration du tracking.

### Structure de campagne

- [ ] Le nom de campagne suit la convention de nommage : `[Pays]_[Langue]_[TypeCampagne]_[Theme]_[Modificateur]` (Voir : [Campaign Naming Convention Reference](<../strategie/Strategie - Convention de nommage des campagnes.md>))
- [ ] La campagne est segmentée pour une raison business valide (budgets différents, zones géographiques différentes, cibles de bid différentes) et pas sur-segmentée
- [ ] La campagne marque est séparée des campagnes hors-marque
- [ ] Les ad groups DSA sont inclus dans la campagne (si le DSA fait partie de la stratégie)
- [ ] L'objectif de campagne est correctement défini (conversions ou valeur de conversion, correspondant à la stratégie d'enchères)

> ↪️ **Framework de structure :** Voir [Search Campaign Structure Mental Model](<Search - Structure de campagne Search.md>) pour la logique de segmentation.

### Validation des ad groups

- [ ] Les ad groups sont organisés par thème créatif (chaque ad group représente un angle de message distinct)
- [ ] Chaque ad group passe le test de l'annonce unique : si vous ne pouviez montrer qu'une seule RSA, les titres et descriptions seraient-ils pertinents pour chaque keyword du groupe ?
- [ ] Les keywords sont assignés aux bons ad groups sans doublons entre ad groups de la même campagne
- [ ] Chaque ad group a un volume estimé qui atteint la cible de 1 000 impressions/semaine (4 000/mois) (vérifier via Keyword Planner ou données historiques)

### Keywords

- [ ] Les keywords sont ajoutés avec les bons types de correspondance alignés à la stratégie d'enchères et la maturité du compte (requête large pour les comptes établis avec Stratégies d'enchères intelligentes et données de conversion suffisantes, expression/exact pour les nouveaux comptes, campagnes à faible volume, budgets limités, ou verticals B2B de niche)
- [ ] Aucun keyword en double inutile entre types de correspondance dans le même ad group
- [ ] Le mapping keyword-Landing Page est vérifié : l'URL finale de chaque keyword pointe vers la Landing Page la plus pertinente
- [ ] Tous les keywords affichent le statut "Éligible" sans refus ni signalements de politique

> ↪️ **Règles des types de correspondance :** Voir [Match Type Reference](<Search - Types de correspondance.md>) pour le comportement et les critères de sélection des types de correspondance.

### Keywords négatifs

- [ ] Les listes partagées de keywords négatifs sont créées couvrant : termes non pertinents, mauvais performeurs connus, et termes de marque (pour les campagnes hors-marque)
- [ ] Les listes partagées de keywords négatifs sont liées aux bonnes campagnes (utiliser des listes partagées, pas des négatifs au niveau campagne)
- [ ] Les pages d'exclusion DSA sont configurées pour empêcher les annonces sur les sections non pertinentes du site (si le DSA est actif)
- [ ] Pas de sur-exclusion de termes potentiellement pertinents (vérification croisée des négatifs par rapport aux keywords cibles)

> ↪️ **Référence keywords négatifs :** Voir [Negative Keyword Reference](<Search - Mots-clés à exclure.md>) pour les types de listes et les règles de gestion.

### Créatives (RSAs)

- [ ] Au moins une RSA est créée par ad group avec 7-8 titres et 2-3 descriptions
- [ ] Les titres couvrent les types d'angles requis : pertinence keyword, proposition de valeur, CTA, preuve sociale, urgence (selon le Headline Angle Catalog)
- [ ] Les descriptions incluent un CTA clair et au moins une proposition de valeur ou un différenciateur
- [ ] Les URLs finales sont correctes, les Landing Pages sont en ligne et le temps de chargement est acceptable
- [ ] Les extensions sont configurées : liens annexes (au moins 4), callouts et structured snippets au minimum

> ↪️ **Patterns de titres :** Voir [Headline Angle Catalog](<Search - Angles de headlines.md>) pour les types d'angles et exemples.

> ↪️ **Couverture des extensions :** Voir [Extension Coverage Checklist](<../composants/Composants - [Review] Couverture des extensions.md>) pour le critère complet de validation des extensions.

### Enchères

- [ ] La stratégie d'enchères est sélectionnée en fonction de la disponibilité des données et de l'objectif de campagne (pas définie aveuglément sur Maximiser les conversions)
- [ ] Les cibles sont définies sur la base du seuil de rentabilité calculé et du ratio profit/acquisition (cible CPA, cible ROAS ou cible POAS selon le cas)
- [ ] Les plafonds CPC sont en place pour les stratégies qui les nécessitent (Max Clicks, Target Impression Share) et définis à un niveau qui ne restreint pas silencieusement le volume
- [ ] Le budget quotidien est défini de manière appropriée : au moins 10x le CPA cible pour les stratégies basées sur les conversions, suffisant pour le périmètre géographique et de keywords de la campagne

> ↪️ **Sélection de la stratégie d'enchères :** Voir [Bidding Strategy Mental Model](<../encheres/Enchères - Stratégie d'enchères.md>) et [Bid Targets Reference](<../encheres/Enchères - Cibles d'enchères.md>) pour le calcul des cibles.

> ↪️ **Santé de la stratégie de bid :** Voir [Bid Strategy Health Checklist](<../encheres/Enchères - [Review] Santé de la stratégie d'enchères.md>) pour la validation continue de la stratégie de bid.

### Paramètres

- [ ] Les paramètres réseau sont définis sur Search uniquement (Réseau Display décoché, Partenaires du Réseau de Recherche décoché sauf justification explicite)
- [ ] Le ciblage géographique est défini sur "Présence ou intérêt" (par défaut) ou "Présence uniquement" si les données du rapport géographique justifient la restriction
- [ ] Le ciblage linguistique correspond à l'audience cible de la campagne
- [ ] La programmation publicitaire est configurée pour correspondre aux heures d'ouverture ou aux créneaux à forte conversion (si les données le justifient, sinon laisser toutes les heures)
- [ ] La rotation des annonces est définie sur "Optimiser : Privilégier les annonces les plus performantes"

> ↪️ **Référence des paramètres :** Voir [Search Campaign Settings Guidelines](<Search - Paramètres de campagne Search.md>) pour les valeurs par défaut recommandées.

### DSA (si applicable)

- [ ] Le page feed est uploadé et toutes les URLs affichent le statut "Approuvé"
- [ ] Les custom labels sont configurés pour regrouper les pages par thème ou priorité
- [ ] Les ad groups DSA sont créés avec des lignes de description ciblées (les descriptions sont le seul élément que vous contrôlez dans les annonces DSA)
- [ ] Les exclusions de pages sont en place pour empêcher les annonces sur les pages non pertinentes (contact, politique de confidentialité, carrières, blog)
- [ ] Les paramètres DSA de la campagne ont le bon domaine et la bonne langue configurés

> ↪️ **Ciblage DSA :** Voir [DSA Targeting Options Reference](<Search - Options de ciblage DSA.md>) pour les types de ciblage et la configuration du page feed.

---

## Documents associés

| Document | Relation |
|----------|-------------|
| [Search Campaign Structure Mental Model](<Search - Structure de campagne Search.md>) | Logique de segmentation et de structure |
| [Modern Search Campaign Mental Model](<Search - Campagne Search moderne.md>) | Framework stratégique pour les campagnes Search modernes |
| [Bidding Strategy Mental Model](<../encheres/Enchères - Stratégie d'enchères.md>) | Méthode de sélection de stratégie d'enchères |
| [Budget Allocation Mental Model](<../../01-strategie/analyse/Analyse - Allocation de budget.md>) | Logique de dimensionnement et allocation du budget |
| [Bid Targets Reference](<../encheres/Enchères - Cibles d'enchères.md>) | Calcul du seuil de rentabilité et des cibles d'enchères |
| [Bid Strategy Selection Reference](<../encheres/Enchères - Sélection de stratégie d'enchères.md>) | Arbres de décision pour la sélection de stratégie |
| [Match Type Reference](<Search - Types de correspondance.md>) | Comportement et sélection des types de correspondance |
| [Negative Keyword Reference](<Search - Mots-clés à exclure.md>) | Types de listes de keywords négatifs et règles |
| [DSA Targeting Options Reference](<Search - Options de ciblage DSA.md>) | Types de ciblage DSA et configuration du page feed |
| [Headline Angle Catalog](<Search - Angles de headlines.md>) | Types d'angles de titres et exemples |
| [Search Campaign Settings Guidelines](<Search - Paramètres de campagne Search.md>) | Paramètres de campagne recommandés |
| [Conversion Tracking Setup Checklist](<../suivi/Suivi - Configuration du suivi des conversions.md>) | Validation complète de la configuration du tracking |
| [Bid Strategy Health Checklist](<../encheres/Enchères - [Review] Santé de la stratégie d'enchères.md>) | Validation continue de la stratégie de bid |
| [Headline Quality Checklist](<Search - [Review] Qualité des titres.md>) | Validation de la qualité des titres |
| [Extension Coverage Checklist](<../composants/Composants - [Review] Couverture des extensions.md>) | Validation de la complétude des extensions |
| [Conversion Data Quality Checklist](<../suivi/Suivi - [Review] Qualité des données de conversion.md>) | Validation continue des données de conversion |
| [SOP - Rediger des RSA performantes](<Search - Rédiger des RSA performantes.md>) | Procédure de création RSA |
| [SOP - Configurer le suivi des conversions Google Ads](<../suivi/Suivi - Configurer le suivi des conversions Google Ads.md>) | Procédure de configuration du suivi des conversions |
| [SOP - Configurer les encheres basees sur les conversions](<../suivi/Suivi - Configurer le suivi des conversions Google Ads.md>) | Procédure de configuration de la stratégie de bid |
| [Campaign Naming Convention Reference](<../strategie/Strategie - Convention de nommage des campagnes.md>) | Structure de nommage des campagnes |
