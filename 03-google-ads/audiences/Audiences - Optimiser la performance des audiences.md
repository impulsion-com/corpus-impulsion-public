# Optimiser la performance des audiences

> **Plateforme :** Google Ads
> **Catégorie :** Audiences
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Cette SOP exécute une revue structurée de la performance des audiences pour les campagnes Display, Video et Demand Gen. Elle évalue chaque segment d'audience par type, supprime ou ajuste les sous-performants, scale les performants et valide que le mode de ciblage, les paramètres d'expansion et la santé des listes sont alignés avec les objectifs actuels.

> ❓ **La question clé :** Quels segments d'audience produisent des conversions efficaces, lesquels gaspillent du budget, et quels changements structurels vont améliorer la performance au niveau de l'audience ?

La plupart des annonceurs ajoutent des audiences au lancement et n'y reviennent jamais. Les listes deviennent obsolètes, les segments en mode observation ne sont jamais promus, les segments sous-performants accumulent du budget et les paramètres de portée des audiences similaires ne progressent jamais au-delà de leur configuration initiale. Cette SOP remplace cette négligence par une revue mensuelle structurée qui maintient l'infrastructure d'audience propre, à jour et performante.

---

## Ce que cette SOP ne couvre PAS

Cette SOP ne couvre **pas :**

- Configurer les audiences à zéro (Voir : [SOP - Configurer le ciblage par audience](<Audiences - Configurer le ciblage par audience.md>))
- Configurer les signaux d'audience Performance Max (Voir : [SOP - Configurer les signaux d'audience](<Audiences - Configurer les signaux d'audience.md>))
- Construire ou uploader des listes Customer Match (Voir : [SOP - Construire des listes Customer Match](<Audiences - Construire des listes Customer Match.md>))
- Orienter vers la bonne fondation d'audience quand l'infrastructure manque (Voir : [Étendre la portée d'audience](<Audiences - Étendre la portée d'audience.md>))
- Couvrir l'optimisation Demand Gen au-delà des audiences (Voir : [SOP - Cycle d'optimisation Demand Gen](<../demand-gen/Demand Gen - Cycle d'optimisation.md>))

> ↪️ **Limite de périmètre :** Cette SOP optimise la performance des audiences existantes sur Display, Video et Demand Gen. Elle ne couvre pas PMax, où les audiences fonctionnent comme signaux et ne peuvent pas être évaluées au niveau du segment. Pour la qualité des signaux PMax, exécutez [SOP - Configurer les signaux d'audience](<Audiences - Configurer les signaux d'audience.md>).

---

## Quand utiliser cette SOP

Exécuter cette SOP à une cadence récurrente selon la maturité de la campagne :

| Maturité de la campagne | Cadence recommandée | Justification |
|-------------------|---------------------|-----------|
| 90 premiers jours | Mensuelle | Les audiences ont besoin de temps pour accumuler des données significatives |
| 90+ jours, 50+ conversions/mois | Mensuelle | Données suffisantes pour analyse au niveau du segment |
| 90+ jours, 100+ conversions/mois | Bi-hebdomadaire (légère) + mensuelle (complète) | Le volume élevé permet des contrôles légers plus fréquents |

Exécuter immédiatement (hors cadence) quand :

- Le CPA d'un segment d'audience spécifique dépasse 3x la moyenne de la campagne / le ROAS chute en dessous de 33% de la moyenne pendant 14+ jours consécutifs
- Une liste de remarketing tombe sous 100 utilisateurs (la diffusion s'arrête)
- Le rapport de chevauchement d'audience montre 50%+ de chevauchement entre campagnes ciblant les mêmes utilisateurs
- Après l'ajout de nouveaux segments d'audience ou un changement de mode de ciblage

---

## Avant de commencer

### Prérequis

- Accès au compte Google Ads avec des campagnes Display, Video ou Demand Gen actives depuis 30+ jours
- KPI cibles documentés par campagne (objectifs CPA, ROAS ou CPL)
- Notes de la revue précédente et items reportés
- Accès Audience Manager pour la revue de santé des listes

### Documents de référence (à garder ouverts)

| Document | Utilisé pour |
|----------|----------|
| [Stratégie d'audience](<Audiences - Stratégie d'audience.md>) | Méthode de température et logique d'expansion |
| [Référence ciblage par audience](<Audiences - Signaux d'audience.md>) | Modes de ciblage, paramètres d'expansion, démographie, segments combinés, audience insights |
| [Checklist Santé du ciblage par audience](<Audiences - [Review] Santé du ciblage par audience.md>) | Validation |
| [Catalogue de segments d'audience](<Audiences - Segments d'audience.md>) | Patterns de segments combinés et patterns d'optimisation démographique |
| [Référence ciblage de contenu](<../display/Display - Ciblage de contenu.md>) | Expansion du ciblage de contenu (Phase 8.4) |
| [Référence performance Demand Gen](<../demand-gen/Demand Gen - Performance.md>) | Benchmarks (analyses comparatives) Demand Gen et progression des audiences similaires |
| Notes de la revue précédente | Continuité et items reportés |

### Temps estimé

| Section | Temps |
|---------|------|
| Phase 1️⃣ : Export et segmentation | 10 min |
| Phase 2️⃣ : Analyse remarketing | 15 min |
| Phase 3️⃣ : Analyse prospection | 15 min |
| Phase 4️⃣ : Revue mode de ciblage | 10 min |
| Phase 5️⃣ : Ajustements d'enchères | 5 min |
| Phase 6️⃣ : Maintenance santé des listes | 10 min |
| **Sous-total Phases 1-6** | **65 min** |
| Phase 7️⃣ : Optimisation démographique (mensuelle) | 10 min |
| Phase 8️⃣ : Segments combinés et audience insights (mensuelle) | 15 min |
| Phase 9️⃣ : Test ciblage optimisé et expansion (mensuelle) | 10 min |
| **Sous-total Phases 7-9** | **35 min** |
| **Total cycle mensuel complet** | **100 min** |

Les contrôles légers bi-hebdomadaires exécutent uniquement les Phases 1-6 (~65 min). Les cycles mensuels complets exécutent les 9 phases (~100 min). Les comptes avec moins de 5 segments d'audience bouclent en moins de 45 minutes pour un contrôle léger.

---

## Cadre d'exécution

| Phase | Objectif | Cadence | Output |
|-------|---------|---------|--------|
| **Phase 1️⃣ : Export et segmentation** | Récupérer les données d'audience et les organiser par type | Chaque cycle | Dataset de performance structuré |
| **Phase 2️⃣ : Analyse remarketing** | Évaluer la performance des segments de remarketing | Chaque cycle | Liste d'actions remarketing |
| **Phase 3️⃣ : Analyse prospection** | Évaluer les segments in-market, custom et similaires | Chaque cycle | Liste d'actions prospection |
| **Phase 4️⃣ : Revue mode de ciblage** | Valider les décisions observation vs. ciblage | Chaque cycle | Recommandations de changement de mode |
| **Phase 5️⃣ : Ajustements d'enchères** | Appliquer les modificateurs d'enchères au niveau audience (enchères manuelles) | Chaque cycle | Journal des ajustements |
| **Phase 6️⃣ : Maintenance santé des listes** | Vérifier tailles, fraîcheur et exclusions | Mensuelle | Rapport santé des listes |
| **Phase 7️⃣ : Optimisation démographique** | Examiner et optimiser la performance démographique | Mensuelle | Liste d'actions démographiques |
| **Phase 8️⃣ : Segments combinés et audience insights** | Découvrir de nouveaux segments, construire des audiences combinées | Mensuelle | Plan de découverte et de tests |
| **Phase 9️⃣ : Test ciblage optimisé et expansion** | Auditer et tester les paramètres d'expansion | Mensuelle | Audit des paramètres d'expansion |

---

## Phase 1️⃣ : Export et segmentation

### 1.1 Récupérer les données de performance d'audience

Aller dans Google Ads > Audiences, mots-clés et contenu > Audiences. Définir la plage de dates sur les 30 derniers jours (utiliser 60 jours pour les campagnes à faible volume avec moins de 30 conversions par mois).

Exporter les colonnes suivantes pour chaque segment d'audience sur toutes les campagnes concernées :

| Colonne | Objectif |
|--------|---------|
| Nom du segment d'audience | Identification |
| Type de segment | Classification (remarketing, in-market, custom, similaire, affinity) |
| Campagne / Groupe d'annonces | Localisation |
| Paramètre de ciblage | Targeting ou Observation |
| Impressions | Indicateur de portée |
| Clics | Indicateur d'engagement |
| CTR | Taux d'engagement |
| Conversions | Indicateur de performance |
| Coût | Suivi du budget |
| CPA ou ROAS | Métrique d'efficacité |
| Conv. Value | Suivi des revenus (campagnes value-based) |
| Value/Conv. | Revenu par conversion (campagnes value-based) |
| Taux de conv. | Indicateur de qualité |

### 1.2 Classer les segments par type

Organiser chaque segment d'audience dans une de ces quatre catégories :

| Catégorie | Types de segments inclus | Température |
|----------|----------------------|-------------|
| **Remarketing** | Visiteurs site, abandon panier/formulaire, vues produit, Customer Match, engagés YouTube | Chaud / Tiède |
| **Prospection : custom** | Custom segments (termes de recherche, URLs, apps) | Frais |
| **Prospection : prédéfinie** | In-market, événements de vie, démographie détaillée | Froid |
| **Prospection : modélisée** | Audience similaire (Demand Gen uniquement), affinity | Froid / Très froid |

### 1.3 Marquer les segments à examiner

Marquer tout segment répondant à ces critères pour analyse approfondie en Phases 2-3 :

| Marqueur | Condition |
|------|-----------|
| Sous-performant | CPA > 2x moyenne campagne / ROAS < 50% de la moyenne pendant 14+ jours (à examiner : décisions d'action en Phases 2-3 nécessitent 30+ jours et 50+ clics) |
| Zéro conversion | 0 conversions avec 50+ clics |
| Faible volume | Moins de 100 impressions sur 30 jours |
| Performant | CPA < 50% moyenne campagne / ROAS > 2x moyenne avec 10+ conversions |
| Nouveau segment | Ajouté ces 30 derniers jours (données insuffisantes, monitoring uniquement) |

**Output Phase 1 :** Dataset de performance d'audience classé avec segments marqués.

**Vérification :** Chaque segment d'audience est catégorisé (remarketing/prospection) et les segments marqués sont identifiés pour la revue Phase 2-3.

---

## Phase 2️⃣ : Analyse remarketing

### 2.1 Évaluer les segments de remarketing par récence

La performance de remarketing se dégrade à mesure que les utilisateurs s'éloignent de leur dernière interaction. Comparer le CPA selon les fenêtres de durée d'appartenance :

| Fenêtre de durée | Performance attendue | Action si l'efficacité est en deçà de la cible |
|-----------------|---------------------|-------------------------------|
| 1-7 jours | Meilleure (intention la plus forte) | Vérifier la fréquence et la fatigue créative en premier |
| 8-14 jours | Solide | Vérifier que la créative correspond toujours au stage de l'utilisateur |
| 15-30 jours | Bonne | Plage de CPA acceptable plus large |
| 31-60 jours | Modérée | Resserrer si CPA dépasse 1,5x la cible / ROAS sous 67% de la cible |
| 61-90 jours | En baisse | Mettre en pause si CPA dépasse 2x cible / ROAS sous 50% de la cible |
| 90+ jours | Plus faible | Mettre en pause sauf produit à forte valeur avec long cycle d'achat |

> 💡 **Les fenêtres courtes surpassent les longues dans presque chaque vertical :** Si votre liste de remarketing 7 jours a un volume suffisant (1 000+ utilisateurs), priorisez le budget là plutôt que sur 30 ou 60 jours.

### 2.2 Évaluer la performance Customer Match

| Métrique | Bonne santé | Action nécessaire |
|--------|---------|---------------|
| Taux de matching | 40%+ | Sous 29% : ajouter téléphone et adresse |
| Taille de liste (matchée) | 1 000+ | Sous 1 000 : insuffisant pour une diffusion fiable |
| CPA/ROAS vs. moyenne campagne | À ou sous le CPA moyen / À ou au-dessus du ROAS moyen | Au-dessus de 1,5x CPA / Sous 67% ROAS : segmenter la liste par valeur client |
| Dernière mise à jour | Dans les 30 jours | Plus de 30 jours : rafraîchir immédiatement |

Si le CPA Customer Match est au-dessus de la cible, segmenter la liste :

| Segment | Définition | Performance attendue |
|---------|------------|---------------------|
| Clients à forte valeur | Top 20% par LTV ou montant de commande | Meilleure : graines pour lookalikes, campagnes upsell |
| Clients actifs | Achat dans les 90 derniers jours | Solide : ré-engagement, cross-sell |
| Clients dormants | Pas d'achat depuis 180+ jours | Modérée : message de win-back nécessaire |
| Tous les clients | Liste complète non segmentée | Baseline : segmenter dans les groupes ci-dessus quand possible |

### 2.3 Évaluer l'exclusion des convertis

Vérifier que les convertis récents sont exclus des campagnes de remarketing pour éviter de gaspiller du budget sur des utilisateurs qui ont déjà converti :

| Cycle d'achat | Fenêtre d'exclusion | Justification |
|----------------|-----------------|-----------|
| Impulsif / faible valeur | 7-14 jours | Cycle de réflexion court |
| Standard | 14-30 jours | Laisser le temps des retours/annulations |
| Forte valeur / cycle long | 30-60 jours | Période de décision étendue |
| Abonnement / SaaS | Jusqu'au churn | Exclure entièrement les abonnés actifs |

S'il n'y a pas d'exclusion des convertis, l'ajouter immédiatement. C'est la réduction de gaspillage à plus fort impact disponible.

### 2.4 Décider : garder, ajuster ou mettre en pause

Appliquer ce document de décision à chaque segment de remarketing :

| Performance | Volume (conversions sur 30 jours) | Action |
|-------------|----------------------------|--------|
| Efficacité dans la cible (CPA/ROAS) | 10+ | Garder. Envisager de scaler le budget |
| Efficacité dans la cible (CPA/ROAS) | <10 | Garder. Ne rien changer : faible volume = besoin de temps |
| CPA 1-1,5x cible / ROAS 67-100% de la cible | 10+ | Ajuster : raccourcir la durée d'appartenance ou rafraîchir la créative |
| CPA 1,5-2x cible / ROAS 50-67% de la cible | 10+ | Ajuster : resserrer la durée, vérifier la landing page, examiner la fréquence |
| CPA > 2x cible / ROAS < 50% de la cible | 10+ | Mettre en pause le segment. Aller au diagnostic |
| CPA > 2x cible / ROAS < 50% de la cible | <10 | Mettre en pause. Données insuffisantes et mauvaise efficacité |

**Output Phase 2 :** Liste d'actions remarketing avec décisions garder/ajuster/pause par segment.

**Vérification :** Chaque segment de remarketing a une action documentée (garder/ajuster/pause). Les exclusions de convertis sont en place pour toutes les campagnes.

---

## Phase 3️⃣ : Analyse prospection

### 3.1 Évaluer les custom segments

Les custom segments (termes de recherche, URLs, apps) sont les audiences de prospection de meilleure qualité. Examiner la performance contre les cibles au niveau de la campagne :

| Métrique | Seuil d'action |
|--------|-----------------|
| CPA sous la moyenne campagne / ROAS au-dessus de la moyenne | Performant : scaler en augmentant l'allocation budget |
| CPA dans 1-1,5x moyenne / ROAS 67-100% de la moyenne | Sur la trajectoire : conserver, surveiller au prochain cycle |
| CPA > 1,5x moyenne / ROAS < 67% de la moyenne pendant 30+ jours | Sous-performant : revoir la qualité de la liste mots-clés/URL |
| 0 conversions, 100+ clics | Intention décalée : reconstruire le segment avec d'autres entrées |

Pour les custom segments sous-performants, diagnostiquer la qualité des entrées :

| Type d'entrée | Problème courant | Correction |
|------------|---------------|-----|
| Termes de recherche | Trop large ou informationnel | Remplacer par des requêtes transactionnelles à forte conversion |
| URLs | Sites concurrents non pertinents | Remplacer par des concurrents directs et des sites spécialisés |
| Apps | Mauvaise catégorie d'app | Remplacer par les apps que votre client idéal utilise vraiment |

### 3.2 Évaluer les segments in-market et événements de vie

Les segments in-market et événements de vie sont définis par Google et offrent peu de leviers d'optimisation. La décision principale est garder ou retirer :

| Performance | Action |
|-------------|--------|
| Efficacité dans la cible avec 10+ conversions | Garder actif |
| Efficacité dans 1,5x CPA / 67% ROAS de la cible, 5-10 conversions | Conserver un cycle de plus |
| CPA > 2x cible / ROAS < 50% de la cible pendant 30+ jours | Retirer du ciblage, ajouter aux exclusions si besoin |
| 0 conversions sur 30 jours avec 200+ clics | Retirer immédiatement |

> ⚠️ **Les segments in-market évoluent dans le temps :** Google met à jour la composition des segments in-market selon le comportement utilisateur. Un segment qui performait bien il y a trois mois peut avoir dérivé. Examiner trimestriellement même si la performance semble stable.

### 3.3 Évaluer les segments similaires (Demand Gen uniquement)

> ⚠️ **Sauter cette section si vous n'avez pas de campagnes Demand Gen.** Les segments similaires sont exclusifs à Demand Gen.

Examiner la performance des segments similaires via le document de progression de portée :

| État actuel | Performance | Ajustement de portée |
|---------------|-------------|------------------|
| Portée Narrow, efficacité dans la cible | Volume suffisant | Conserver les paramètres actuels |
| Portée Narrow, efficacité dans la cible | Volume trop faible | Étendre à Balanced |
| Portée Balanced, efficacité dans la cible | Volume suffisant | Conserver. Tester Broad dans un ad group séparé si scaling |
| Portée Balanced, efficacité dans la cible | Volume trop faible | Étendre à Broad |
| Toute portée, CPA > 2x cible / ROAS < 50% de la cible | Tout volume | Resserrer d'un cran (Broad vers Balanced, Balanced vers Narrow) |
| Portée Narrow, CPA > 2x cible / ROAS < 50% de la cible | Tout volume | Remplacer la seed audience par une liste de meilleure qualité |

> ↪️ **Niveaux de qualité des seed audiences similaires :** Voir [Référence performance Demand Gen](<../demand-gen/Demand Gen - Performance.md>) pour la hiérarchie de qualité des seeds. Les acheteurs récurrents et les clients à forte LTV produisent les meilleures audiences similaires.

Laisser 14+ jours après tout changement de portée avant d'évaluer les résultats.

### 3.4 Évaluer les segments affinity

Les segments affinity sont l'audience de prospection la plus froide. Ils servent les objectifs de notoriété, pas de conversion :

| Objectif | Action sur segment affinity |
|------|------------------------|
| Notoriété / portée | Évaluer sur la portée et le CPM, pas le CPA |
| Conversion | Retirer les segments affinity : trop froids pour la performance directe |
| Collecte de données (mode Observation) | Garder pour les insights, ne pas allouer de budget dédié |

### 3.5 Décider : garder, ajuster ou retirer

Appliquer ce document de décision à chaque segment de prospection :

| Performance | Suffisance de données (clics) | Action |
|-------------|--------------------------|--------|
| Efficacité dans la cible (CPA/ROAS) | 50+ clics | Garder. Envisager de scaler |
| CPA 1-1,5x cible / ROAS 67-100% de la cible | 50+ clics | Ajuster : revoir l'alignement landing page, tester la créative |
| CPA > 2x cible / ROAS < 50% de la cible pendant 30+ jours | 100+ clics | Retirer du ciblage. Remplacer par un autre segment |
| Données insuffisantes | <50 clics sur 30 jours | Conserver un cycle. Si toujours insuffisant, mettre en pause |

**Output Phase 3 :** Liste d'actions prospection avec décisions garder/ajuster/retirer par segment.

**Vérification :** Chaque segment de prospection a une action documentée (garder/ajuster/retirer). Aucun segment avec CPA >2x cible et 100+ clics ne reste actif sans plan d'action.

---

## Phase 4️⃣ : Revue mode de ciblage

### 4.1 Auditer les segments en mode observation

Récupérer tous les segments actuellement en mode Observation. Ces segments collectent des données de performance sans restreindre la diffusion.

Pour chaque segment en observation, évaluer la disponibilité pour passer en ciblage :

| Critère | Seuil pour passage en Targeting |
|----------|---------------------------------------|
| Données collectées | 100+ clics, 14+ jours |
| Signal de performance | Signal clair d'efficacité (CPA ou ROAS) |
| Significativité statistique | Au moins 10 conversions pour comparaison fiable |

### 4.2 Promouvoir ou retirer les segments en observation

| Résultat segment en observation | Action |
|---------------------------|--------|
| Efficacité meilleure que la moyenne campagne (CPA inférieur / ROAS supérieur) avec 10+ conversions | Promouvoir en mode Targeting dans son propre ad group |
| Efficacité dans la moyenne campagne | Conserver en Observation un cycle de plus |
| CPA au-dessus de 2x moyenne campagne / ROAS sous 50% de la moyenne | Retirer de l'Observation : cette audience sous-performe |
| Données insuffisantes après 60 jours | Retirer : segment trop petit pour fournir des insights significatifs |

> 💡 **Le mode observation sert l'apprentissage, pas la collecte permanente :** Chaque segment en observation devrait avoir une date de promotion. Si un segment est en Observation depuis 90+ jours sans signal clair, le retirer et tester autre chose.

### 4.3 Examiner les paramètres mode targeting

Pour tous les segments en mode Targeting, vérifier l'alignement :

| Objectif campagne | Mode correct | Optimized targeting | Erreur courante |
|---------------|-------------|--------------------|-|
| Remarketing | Targeting | OFF | Optimized targeting ON dilue la précision du remarketing |
| Prospection (objectif conversion) | Targeting | Vérifier que ON ou OFF est intentionnel (voir Phase 9 pour test) | Le laisser ON sans mesurer son impact |
| Prospection (objectif notoriété) | Targeting | ON | Le mettre OFF alors que la portée est l'objectif |
| Collecte de données | Observation | N/A | Utiliser Targeting alors qu'on veut des insights sur tous les utilisateurs |

### 4.4 Examiner l'impact d'optimized targeting

Pour les campagnes avec optimized targeting activé :

1. Comparer la performance de vos audiences sélectionnées vs. la portée étendue trouvée par Google
2. Si le CPA de la portée étendue est plus de 2x le CPA de votre audience sélectionnée, désactiver optimized targeting
3. Si le CPA étendu est comparable ou meilleur, le garder activé

> ⚠️ **Optimized targeting peut décaler silencieusement votre audience :** Une fois activé, Google peut dépenser la majorité de votre budget en dehors de vos audiences sélectionnées. Vérifier régulièrement la décomposition par audience, pas uniquement les métriques au niveau campagne.

**Output Phase 4 :** Recommandations de changement de mode et décisions optimized targeting.

**Vérification :** Aucun segment d'observation n'est dormant depuis 60+ jours sans action documentée. Toutes les campagnes de remarketing ont l'expansion OFF.

---

## Phase 5️⃣ : Ajustements d'enchères

> ⚠️ **Cette phase ne s'applique qu'aux campagnes en CPC manuel :** Les campagnes Stratégies d'enchères intelligentes (CPA cible, ROAS cible, Maximiser les conversions, Maximiser la valeur de conversion) gèrent automatiquement l'optimisation des enchères au niveau audience. Sauter cette phase pour les campagnes Stratégies d'enchères intelligentes.

### 5.1 Calculer les ajustements d'enchères audience

Pour les campagnes en CPC manuel, appliquer des ajustements d'enchères aux audiences en mode observation selon leur performance relative :

| Efficacité audience vs. moyenne campagne | Ajustement d'enchère | Justification |
|-----------------------------------|----------------|-----------|
| CPA 50%+ sous la moyenne / ROAS 50%+ au-dessus | +20% à +40% | Augmenter l'exposition à l'audience performante |
| CPA 20-50% sous la moyenne / ROAS 20-50% au-dessus | +10% à +20% | Augmentation modérée pour les bons performeurs |
| Dans 20% de la moyenne (CPA/ROAS) | Pas d'ajustement | Performance dans les attentes |
| CPA 20-50% au-dessus / ROAS 20-50% sous la moyenne | -10% à -20% | Réduire l'exposition aux sous-performants |
| CPA 50%+ au-dessus / ROAS 50%+ sous la moyenne | -30% à -50% | Réduction significative ou retrait à envisager |

### 5.2 Appliquer les ajustements progressivement

1. Modifier les ajustements d'enchères de 20% maximum par cycle
2. Laisser 14 jours entre les changements
3. Documenter chaque ajustement avec les données qui l'ont motivé
4. Examiner les ajustements au cycle suivant pour confirmer l'impact attendu

### 5.3 Surveiller la pile d'ajustements

Quand plusieurs ajustements d'enchères interagissent (audience + appareil + localisation), l'effet combiné peut être extrême :

| Scénario | Effet combiné |
|----------|----------------|
| Audience +30%, Appareil +20%, Localisation +15% | Total : +1,30 x 1,20 x 1,15 = +79% d'augmentation |
| Audience -30%, Appareil -20% | Total : 0,70 x 0,80 = -44% de baisse |

Vérifier que les ajustements empilés ne poussent pas les enchères réelles hors de votre fourchette acceptable.

**Output Phase 5 :** Journal des ajustements d'enchères avec justification par segment.

**Vérification :** Tous les ajustements sont à 20% de changement max par cycle. Aucun cumul d'ajustements ne dépasse la fourchette acceptable.

---

## Phase 6️⃣ : Maintenance santé des listes

### 6.1 Examiner les tailles des listes de remarketing

Aller dans Outils > Audience Manager > Vos segments de données. Vérifier chaque liste de remarketing :

| Taille de liste | Statut | Action |
|-----------|--------|--------|
| 10 000+ | En bonne santé | Pas d'action |
| 1 000-10 000 | Adéquate | Surveiller : s'assurer que la liste grossit, pas l'inverse |
| 100-1 000 | À risque | Diffusion limitée : envisager d'élargir les critères |
| Sous 100 | Critique | Diffusion stoppée : élargir les critères ou fusionner avec une plus grande |

### 6.2 Examiner les durées d'appartenance

S'assurer que les durées d'appartenance correspondent à votre cycle d'achat :

| Type de produit | Durée max recommandée | Justification |
|-------------|--------------------------|-----------|
| Impulsif / faible considération | 14-30 jours | L'intention décline vite |
| Considération standard | 30-60 jours | Équilibre récence et portée |
| Forte valeur / cycle long | 60-180 jours | Période de recherche étendue |
| B2B / entreprise | 180-540 jours | Cycles de vente très longs |

Si la durée d'appartenance d'une liste de remarketing dépasse votre cycle d'achat de plus de 2x, la raccourcir. Les longues durées remplissent les listes d'utilisateurs à faible intention qui gonflent la taille sans améliorer la performance.

### 6.3 Vérifier la fraîcheur de Customer Match

| Métrique | Bonne santé | Action nécessaire |
|--------|---------|---------------|
| Date du dernier upload | Dans les 30 jours | Plus de 30 jours : programmer la mise à jour immédiatement |
| Taux de matching | 40%+ | Sous 29% : ajouter téléphone et adresse |
| Taille de liste (matchée) | 1 000+ | Sous 1 000 : combiner sources CRM ou attendre la croissance |
| Complétude des données | Email + téléphone + adresse | Email seul : ajouter d'autres identifiants pour améliorer le matching |

### 6.4 Nettoyer les listes inutilisées

Retirer ou archiver les listes d'audience qui répondent à un de ces critères :

| Critère | Action |
|----------|--------|
| Non utilisée dans aucune campagne depuis 90+ jours | Archiver ou supprimer |
| Taille d'appartenance sous 100 depuis 60+ jours | Supprimer (ne peut diffuser de toute façon) |
| Doublon d'une autre liste (mêmes critères, même source) | Supprimer le doublon |
| Créée pour un test ponctuel, test terminé | Archiver |

### 6.5 Vérifier la fraîcheur des listes d'exclusion

| Liste d'exclusion | Exigence de mise à jour |
|----------------|---------------------|
| Convertis récents | Auto-alimentée via Google Tag (vérifier que le tag se déclenche) |
| Customer Match (tous clients) | Mettre à jour à la cadence d'upload Customer Match |
| Listes de marques concurrentes | Examiner trimestriellement pour nouveaux concurrents |

**Output Phase 6 :** Rapport de santé des listes avec actions prises.

**Vérification :** Toutes les listes de remarketing sont au-dessus de 100 utilisateurs. Customer Match mis à jour dans les 30 jours. Aucune liste inutilisée de plus de 90 jours ne reste.

---

## Phase 7️⃣ : Optimisation démographique (mensuelle uniquement)

> ⚠️ **La démographie est une couche, pas un ciblage autonome :** Cette phase optimise la performance démographique au sein de vos segments d'audience existants. La démographie seule n'est pas une stratégie de ciblage.

### 7.1 Récupérer les données de performance démographique

Aller dans Audiences, mots-clés et contenu > Démographie. Utiliser la même plage de dates qu'en Phase 1 (30 derniers jours, ou 60 jours pour les campagnes à faible volume). Examiner chaque dimension :

| Dimension | Où trouver | Quoi vérifier |
|-----------|--------------|---------------|
| Âge | Démographie > Âge | CPA/ROAS par tranche d'âge |
| Genre | Démographie > Genre | CPA/ROAS par genre |
| Statut parental | Démographie > Statut parental | CPA/ROAS par statut parental |
| Revenu du foyer | Démographie > Revenu du foyer | CPA/ROAS par tranche de revenu (pays sélectionnés) |

### 7.2 Identifier les outliers démographiques

Marquer les groupes démographiques répondant à ces critères :

| Condition | Action |
|-----------|--------|
| CPA > 2x moyenne campagne avec 50+ clics | Candidat à exclusion (Stratégies d'enchères intelligentes) ou baisse d'enchère (CPC manuel) |
| ROAS < 50% de la moyenne avec 50+ clics | Candidat à exclusion ou baisse d'enchère |
| 0 conversions avec 100+ clics | Fort candidat à exclusion |
| CPA < 50% de la moyenne avec 10+ conversions | Performant : envisager hausse d'enchère (CPC manuel) |
| "Inconnu" > 20% du budget avec CPA > 1,5x moyenne | À examiner. N'exclure que si CPA > 2x moyenne campagne persiste 30+ jours avec 50+ clics |
| Données insuffisantes (< 50 clics) | Conserver un cycle de plus |

### 7.3 Appliquer les ajustements démographiques

| Type d'enchère | Action disponible | Comment appliquer |
|-------------|-----------------|--------------|
| CPC manuel | Ajustements d'enchères par groupe démographique | Audiences, mots-clés et contenu > Démographie > Modifier l'ajustement. Ajuster par incréments de 10-20% par cycle |
| Stratégies d'enchères intelligentes (CPA cible/ROAS cible) | Exclure les groupes démographiques sous-performants | Audiences, mots-clés et contenu > Démographie > Exclure. Les ajustements d'enchères ne s'appliquent pas en Stratégies d'enchères intelligentes |

> ⚠️ **Exclure "Inconnu" retire 15-30% de l'inventaire :** Le segment "Inconnu" représente les utilisateurs dont Google ne peut déterminer la démographie. L'exclure réduit significativement votre audience adressable. N'exclure qu'après 30+ jours de mauvaise performance constante avec données suffisantes.

### 7.4 Comportement démographique d'optimized targeting Demand Gen

> ⚠️ **Sauter cette section si vous n'avez pas de campagnes Demand Gen avec optimized targeting ON.**

Quand optimized targeting est ON dans Demand Gen, Google peut servir des annonces à des utilisateurs au-delà de vos critères démographiques sélectionnés. Examiner la performance démographique pour vérifier :

1. Comparer la distribution démographique avec optimized targeting ON vs. votre ciblage prévu
2. Si la démographie en dehors de vos sélections affiche un CPA > 2x moyenne campagne : restreindre le comportement démographique à âge et genre uniquement dans les paramètres ad group, ou désactiver optimized targeting
3. Si la démographie étendue performe à ou sous la moyenne : conserver les paramètres actuels

**Output Phase 7 :** Liste d'actions démographiques avec ajustements et exclusions documentés.

**Vérification :** Aucun groupe démographique avec CPA >2x et 50+ clics ne reste actif sans action documentée.

---

## Phase 8️⃣ : Segments combinés et audience insights (mensuelle uniquement)

### 8.1 Examiner la performance des segments combinés existants

Pour chaque segment combiné en usage, évaluer avec la même méthode garder/ajuster/retirer qu'en Phase 3 :

| Performance | Action |
|-------------|--------|
| Efficacité dans la cible (CPA/ROAS) avec 50+ clics | Garder. Envisager scaling de l'allocation budget |
| CPA 1-1,5x cible / ROAS 67-100% de la cible | Ajuster : diagnostiquer quel composant est le maillon faible |
| CPA > 2x cible / ROAS < 50% de la cible pendant 30+ jours | Retirer. Reconstruire avec d'autres composants |
| Données insuffisantes (< 50 clics sur 30 jours) | Conserver un cycle de plus |

Pour les segments combinés sous-performants, diagnostiquer la qualité des composants :

| Approche de diagnostic | Comment |
|-------------------|-----|
| Tester les composants individuellement | Lancer chaque segment composant dans son propre ad group pendant 30 jours |
| Vérifier la taille de l'audience | Vérifier que le segment combiné n'a pas rétréci sous une taille diffusable |
| Examiner la pertinence des composants | Les segments individuels sont-ils encore alignés avec votre produit/audience ? |

### 8.2 Utiliser les audience insights pour la découverte

Aller dans Google Ads > Page Insights > Cartes audience insight. Examiner le tableau des persona insights :

| Colonne | Ce que ça vous indique |
|--------|-------------------|
| Segment d'audience | Nom du segment qui produit les conversions |
| Type | Type de segment (in-market, affinity, démographie détaillée, événements de vie) |
| Part des conversions | Pourcentage de conversions attribuées à ce segment |
| Index | À quel point ce segment est sur-représenté chez vos convertis vs. la population générale |

**Framework d'action :**

| Index | Part des conversions | Action |
|-------|---------------------|--------|
| > 3x | Tout | Haute priorité : ajouter en ciblage si ce n'est déjà fait |
| 1,5-3x | > 5% | Priorité moyenne : évaluer pour ajout, tester dans un ad group séparé |
| 1,5-3x | < 5% | Faible priorité : surveiller au prochain cycle |
| < 1,5x | Tout | Pas d'action : proportionnel à la population générale |

Vérifier aussi Audience Manager > Insights de vos données pour la performance des audiences first-party sur les campagnes.

### 8.3 Construire de nouveaux segments combinés depuis les insights

Quand les audience insights révèlent des segments à fort index non ciblés, construire des segments combinés pour les tester :

| Découverte | Segment combiné à construire | Approche de test |
|-----------|--------------------------|---------------|
| Segment in-market à fort index | In-market découvert ET custom segment performant existant | Ad group séparé, optimized targeting OFF, test 30 jours |
| Segment affinity à fort index | Affinity découvert ET In-market (pour précision) ET PAS clients existants | Ad group séparé, petit budget, test 30 jours |
| Événement de vie à fort index | Événement de vie ET In-market pertinent ET PAS convertis | Ad group séparé, test 30 jours |
| DG : segment à fort index | Lookalike OU custom segment découvert (même ad group) | Structure DG recommandée par Google |

> 💡 **Tester un nouveau segment combiné par cycle :** Ajouter plusieurs nouvelles audiences en simultané rend l'attribution impossible. Tester un, mesurer 30 jours, puis tester le suivant.

### 8.4 Expansion du ciblage de contenu (Display/Video uniquement)

> ⚠️ **Sauter cette section si vous ne gérez que des campagnes Demand Gen.** Le ciblage de contenu n'est pas disponible en Demand Gen.

Si vos campagnes Display ou Video utilisent uniquement le ciblage par audience sans ciblage de contenu, évaluer si le ciblage de contenu pourrait compléter votre setup :

1. Examiner les audience insights pour les thèmes de contenu : quels types de contenu vos audiences convertissantes consomment-elles ?
2. Si des thèmes clairs émergent, tester l'ajout de 3-5 catégories de topics en logique ET (audience + topics) dans un ad group séparé
3. Laisser 30 jours pour évaluation
4. Comparer ad group audience-only vs. ad group audience + contenu

> ↪️ **Specs et approche de test du ciblage de contenu :** Voir [Référence ciblage de contenu](<../display/Display - Ciblage de contenu.md>) pour les types de ciblage, limites et le document de test complet.

**Output Phase 8 :** Plan de découverte et de tests avec nouveaux segments combinés en attente et expansion du ciblage de contenu évaluée.

**Vérification :** Au plus un nouveau segment combiné mis en file pour test ce cycle. Segments à fort index non ciblés documentés.

---

## Phase 9️⃣ : Test ciblage optimisé et expansion (mensuelle uniquement)

### 9.1 Auditer les paramètres d'expansion actuels

Examiner chaque campagne dans le périmètre et documenter le paramètre d'expansion actuel :

| Type de campagne | Nom de la fonctionnalité | Où trouver |
|---------------|-------------|---------------|
| Display | Optimized targeting | Paramètres ad group |
| Video (objectifs Sales/Leads/Traffic) | Optimized targeting | Paramètres ad group |
| Video (objectifs Consideration/Awareness) | Audience expansion | Paramètres ad group |
| Demand Gen | Optimized targeting | Paramètres ad group |

> ⚠️ **Optimized targeting et audience expansion sont deux fonctionnalités différentes :** Optimized targeting trouve les utilisateurs les plus susceptibles de convertir d'après les données de conversion. Audience expansion trouve plus d'utilisateurs similaires à votre audience sélectionnée pour la portée. Elles s'appliquent à des types de campagne différents et ne doivent pas être confondues.

Pour chaque campagne, documenter :

| Campagne | Fonctionnalité | Paramètre actuel | Dernier changement | Notes |
|----------|---------|----------------|-------------|-------|
| [Nom campagne] | Optimized targeting / Audience expansion | ON / OFF | [Date] | [Contexte] |

**Vérifier que toutes les campagnes de remarketing ont le paramètre OFF.** C'est non négociable : l'expansion sur du remarketing détruit l'objectif de la restriction d'audience.

### 9.2 Mesurer l'impact de l'expansion

Pour les campagnes avec optimized targeting ou audience expansion activé, aller dans Audiences, mots-clés et contenu > Audiences > Afficher le tableau. Repérer la ligne "Total : Expansion et optimized targeting".

| Métrique | Interprétation | Action |
|--------|---------------|--------|
| CPA étendu < 1,5x CPA ciblé | Expansion efficace | Garder ON |
| CPA étendu 1,5-2x CPA ciblé | Borderline : surveiller sur 14+ jours | Conserver, ré-évaluer au prochain cycle |
| CPA étendu > 2x CPA ciblé | Expansion inefficace | Désactiver |
| Expansion produit < 5% des conversions totales | Faible risque, faible impact | Garder ON pour volume supplémentaire |
| Expansion produit > 50% des conversions totales | Vos sélections d'audience peuvent être trop étroites | Examiner les audiences sélectionnées avant de désactiver l'expansion |

### 9.3 Méthodologie de test structurée

Pour les campagnes où l'expansion n'a jamais été testée (toujours ON ou toujours OFF) :

| Étape | Action | Durée |
|------|--------|----------|
| 1 | Tourner 30 jours avec expansion OFF (baseline) | 30 jours |
| 2 | Activer l'expansion, tourner 30 jours (test) | 30 jours |
| 3 | Comparer CPA/ROAS entre les deux périodes | Après 60 jours au total |
| 4 | Si CPA expansion < 1,5x baseline : garder ON | Décision permanente |
| 5 | Si CPA expansion > 2x baseline : garder OFF | Décision permanente |

> 💡 **Tester une campagne à la fois :** Échelonner les tests d'expansion sur les campagnes. Avec 3 campagnes, tester Campagne 1 au Cycle 1 (mois 1-2), Campagne 2 au Cycle 2 (mois 3-4), Campagne 3 au Cycle 3 (mois 5-6). Ne pas activer ou désactiver l'expansion sur toutes les campagnes simultanément.

Pour les campagnes Video avec objectifs consideration/awareness : tester audience expansion avec la même méthodologie. C'est une fonctionnalité distincte d'optimized targeting et doit être testée indépendamment.

### 9.4 Optimiser la qualité du signal (quand expansion ON)

Quand optimized targeting est ON, vos audiences sélectionnées fonctionnent comme signaux. Améliorer la qualité du signal améliore la performance de l'expansion :

| Type de campagne | Inputs de signal | Comment améliorer |
|---------------|-------------|----------------|
| Display | Segments d'audience, custom segments, Customer Match, mots-clés, topics | Remplacer les segments larges par des plus performants. Ajouter les termes de recherche convertissants en mots-clés. Ajouter des topics pertinents. |
| Video (Sales/Leads/Traffic) | Segments d'audience, custom segments, Customer Match | Remplacer les segments larges par des performants. Les placements ne servent PAS de signal. |
| Demand Gen | Segments d'audience, custom segments, Customer Match | Remplacer les segments larges par les Customer Match à plus forte LTV. Ajouter des custom segments mots-clés à forte conversion. |

**Output Phase 9 :** Audit des paramètres d'expansion avec plan de test pour les campagnes non testées.

**Vérification :** Toutes les campagnes de remarketing ont l'expansion OFF. Au plus un nouveau test d'expansion lancé ce cycle. Tous les paramètres d'expansion existants ont une comparaison CPA documentée.

---

## Validation et critères de complétion

Cette SOP est terminée quand :

- [ ] Phase 1 : Données d'audience exportées et segments classés par type
- [ ] Phase 2 : Segments de remarketing évalués, sous-performants mis en pause ou ajustés
- [ ] Phase 3 : Segments de prospection évalués, sous-performants retirés ou remplacés
- [ ] Phase 4 : Segments en observation promus, retirés ou conservés avec justification documentée
- [ ] Phase 5 : Ajustements d'enchères appliqués (campagnes en enchères manuelles) ou confirmés non applicables
- [ ] Phase 6 : Tailles de listes vérifiées, durées d'appartenance validées, Customer Match rafraîchi, listes inutilisées archivées
- [ ] Phase 7 (mensuelle) : Démographie revue, outliers traités, ajustements ou exclusions appliqués
- [ ] Phase 8 (mensuelle) : Audience insights examinés, segments combinés évalués, nouveaux segments en file pour test
- [ ] Phase 9 (mensuelle) : Paramètres d'expansion audités, impact mesuré, plan de test créé pour les campagnes non testées
- [ ] Tous les changements documentés avec justification et date
- [ ] Prochaine date de revue programmée

---

## Passerelle de sortie

Après avoir terminé le cycle d'optimisation :

| Délai | Action |
|-----------|--------|
| Le jour même | Exécuter les retraits et pauses immédiats |
| Cette semaine | Mettre à jour les listes Customer Match si en retard |
| 14 jours | Évaluer l'impact des changements de mode de ciblage et des ajustements d'enchères |
| Prochain cycle | Examiner tous les changements de ce cycle avant de relancer une analyse |

**Si des problèmes nécessitent une escalade :**

| Type de problème | Aiguiller vers |
|------------|----------|
| Infrastructure d'audience manquante ou fondamentalement cassée | [Étendre la portée d'audience](<Audiences - Étendre la portée d'audience.md>) |
| Besoin de reconstruire le ciblage par audience à zéro | [SOP - Configurer le ciblage par audience](<Audiences - Configurer le ciblage par audience.md>) |
| Liste Customer Match à construire ou à refondre | [SOP - Construire des listes Customer Match](<Audiences - Construire des listes Customer Match.md>) |
| Campagne Demand Gen nécessitant une optimisation complète (pas que les audiences) | [SOP - Cycle d'optimisation Demand Gen](<../demand-gen/Demand Gen - Cycle d'optimisation.md>) |
| Anomalie de performance non liée aux audiences | [SOP - Investiguer les anomalies de performance](<../optimisation/Optimisation - Investiguer les anomalies de performance.md>) |

---

## Erreurs fréquentes

| Erreur | Pourquoi ça arrive | Comment l'éviter |
|---------|----------------|--------------|
| Ne jamais examiner la performance des audiences | "Set and forget" après le setup initial | Réserver un créneau mensuel dans le calendrier |
| Évaluer les audiences avec des données insuffisantes | Réagir à 7 jours de données | Exiger 30 jours et 50+ clics minimum avant décision |
| Conserver des listes de remarketing obsolètes | Pas de vérification dans Audience Manager | Exécuter la Phase 6 chaque cycle, vérifier tailles et fraîcheur |
| Ignorer les segments en observation | Ajouter des segments et ne jamais les analyser | Définir une date de promotion : 60 jours max en Observation |
| Appliquer des attentes de CPA Search à des audiences froides | Attendre des audiences froides la performance du remarketing | Définir des cibles CPA séparées par température d'audience |
| Empiler trop d'ajustements d'enchères | Optimiser chaque levier indépendamment | Surveiller les effets combinés à chaque cycle |
| Étendre les audiences similaires trop vite | Sauter de Narrow directement à Broad | Avancer d'un niveau à la fois, valider 14+ jours |
| Pas d'exclusion de convertis sur le remarketing | Oubli au setup | Vérifier les exclusions à chaque cycle en Phase 2 |
| Ne jamais examiner la démographie | Manquer une optimisation facile : exclure les groupes démo à 0 conversion | Exécuter la Phase 7 mensuellement, examiner toutes les dimensions |
| Laisser optimized targeting ON sans mesurer l'impact | L'expansion peut être inefficace sans détection | Vérifier la ligne "Total : Expansion et optimized targeting" en Phase 9 |
| Ignorer les audience insights | Manquer des segments performants non ciblés | Vérifier la page Insights mensuellement en Phase 8 pour les segments à fort index |
| Ne jamais tester de segments combinés | Utiliser uniquement des segments simples quand la précision est nécessaire | Construire des segments combinés depuis les découvertes en Phase 8 |

---

## Documents liés

| Document | Type | Relation |
|----------|------|--------------|
| [Stratégie d'audience](<Audiences - Stratégie d'audience.md>) | Modèle Mental | Méthode de température et distinction signal vs. ciblage |
| [Référence ciblage par audience](<Audiences - Signaux d'audience.md>) | Référence | Modes de ciblage, paramètres d'expansion, specs de segments |
| [Recommandations de ciblage par audience](<Audiences - Paramètres recommandés de ciblage.md>) | Guideline | Paramètres recommandés, décisions d'expansion, optimisation démographique |
| [Référence segments d'audience](<Audiences - Segments d'audience.md>) | Référence | Liste complète des noms de segments d'audience prédéfinis Google |
| [Checklist Santé du ciblage par audience](<Audiences - [Review] Santé du ciblage par audience.md>) | Checklist | Valide la santé continue du ciblage |
| [Référence performance Demand Gen](<../demand-gen/Demand Gen - Performance.md>) | Référence | Progression des audiences similaires, benchmarks Demand Gen |
| [Catalogue segments d'audience](<Audiences - Segments d'audience.md>) | Catalogue | Sélection de segments, segments combinés, patterns démographiques |
| [Référence ciblage de contenu](<../display/Display - Ciblage de contenu.md>) | Référence | Specs de ciblage de contenu pour Display/Video (Phase 8.4) |
| [Étendre la portée d'audience](<Audiences - Étendre la portée d'audience.md>) | Playbook | Aiguillage de la fondation d'audience et décisions d'expansion |
| [SOP - Configurer le ciblage par audience](<Audiences - Configurer le ciblage par audience.md>) | SOP | Configuration initiale du ciblage par audience |
| [SOP - Configurer les signaux d'audience](<Audiences - Configurer les signaux d'audience.md>) | SOP | Configuration des signaux PMax (système séparé) |
| [SOP - Construire des listes Customer Match](<Audiences - Construire des listes Customer Match.md>) | SOP | Création et mise à jour de listes Customer Match |
| [SOP - Cycle d'optimisation Demand Gen](<../demand-gen/Demand Gen - Cycle d'optimisation.md>) | SOP | Optimisation Demand Gen complète (audiences + créatives + stratégie d'enchères) |
| [SOP - Cycle d'optimisation campagne Search](<../search/Search - Cycle d'optimisation campagne Search.md>) | SOP | Cycle d'optimisation Search (workflow parallèle) |
