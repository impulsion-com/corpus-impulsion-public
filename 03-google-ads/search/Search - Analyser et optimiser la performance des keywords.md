# Analyser et optimiser la performance des mots-cles

> **Plateforme :** Google Ads
> **Catégorie :** Search
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Phase 1️⃣ : Exporter et préparer

### 1.1 Exporter les données de performance des mots-clés

1. Naviguez vers Google Ads > Keywords > Search keywords.
2. Réglez la plage de dates sur au moins 30 jours. Pour les campagnes matures, utilisez 60-90 jours.
3. Incluez ces colonnes : mot-clé, type de correspondance, Niveau de qualité, impressions, clics, CTR, coût, conversions, coût/conversion, valeur de conversion, ROAS, impression share, IS lost (rank), IS lost (budget).

### 1.2 Filtrer sur les mots-clés actionnables

1. Exportez vers un tableur.
2. Supprimez les mots-clés avec moins de 100 clics sur la période d'analyse.

> ⚠️ **N'agissez pas sur les mots-clés avec moins de 100 clics :** En dessous de ce seuil, zéro conversion n'a aucune signification statistique. Marquez-les « Insufficient Data » et réévaluez au cycle suivant.

3. Triez les mots-clés restants par Coût (décroissant).

### 1.3 Établir les benchmarks (analyses comparatives) au niveau campagne

Calculez pour chaque campagne (pas au niveau compte) :

| Métrique | Calcul |
| --- | --- |
| CPA cible/ROAS de la campagne | Depuis la stratégie d'enchères ou l'objectif business |
| Taux de conversion moyen | Total conversions / Total clics (niveau campagne) |
| CPA moyen | Coût total / Total conversions (niveau campagne) |

---

## Phase 2️⃣ : Appliquer la matrice de décision segmentation

Affectez chaque mot-clé avec 100+ clics à l'un des quatre quadrants.

**Campagnes basées sur le CPA :**

| Quadrant | Critères |
| --- | --- |
| **Q1 : Protéger et scaler** | Conversions > 0, CPA au niveau ou en dessous de la cible de campagne |
| **Q2 : Corriger la pertinence** | Conversions > 0, CPA au-dessus de la cible de campagne |
| **Q3 : Augmenter la visibilité** | Faibles impressions/clics, CPA au niveau ou en dessous de la cible (ou trop peu de données de conversion) |
| **Q4 : Diagnostiquer ou mettre en pause** | Zéro conversion après 100+ clics |

**Campagnes basées sur le ROAS :**

| Quadrant | Critères |
| --- | --- |
| **Q1 : Protéger et scaler** | Conversions > 0, ROAS au niveau ou au-dessus de la cible de campagne |
| **Q2 : Corriger la pertinence** | Conversions > 0, ROAS en dessous de la cible de campagne |
| **Q3 : Augmenter la visibilité** | Faibles impressions/clics, ROAS au niveau ou au-dessus de la cible (ou trop peu de données de conversion) |
| **Q4 : Diagnostiquer ou mettre en pause** | Zéro conversion après une dépense significative (équivalent à 2x le CPA cible) |

Ajoutez une colonne « Quadrant » à votre tableur. Taguez chaque mot-clé et comptez la distribution entre Q1-Q4 plus « Insufficient data » par nombre de mots-clés et pourcentage de dépense.

> 💡 **Un compte sain concentre la dépense en Q1 :** Si Q2 ou Q4 consomment plus de 30 % de la dépense totale, c'est votre plus grande opportunité d'optimisation.

---

## Phase 3️⃣ : Exécuter par quadrant

Traitez les quadrants par ordre de priorité : Q1 (protéger les gagnants), Q4 (arrêter l'hémorragie), Q2 (corriger l'efficacité), Q3 (développer le volume).

### 3.1 Q1 : Protéger et scaler

1. Si l'IS lost to budget > 10 %, augmentez le budget de campagne ou basculez vers un budget plus prioritaire.
2. Si en requête « expression » ou « large », envisagez de l'ajouter en mot-clé exact pour protéger contre le routage de requêtes par PMax.
3. Surveillez de près : effectuez des vérifications des termes de recherche sur les mots-clés Q1 chaque mois.

### 3.2 Q4 : Diagnostiquer ou mettre en pause

Pour chaque mot-clé Q4, effectuez un diagnostic en quatre points :

1. Vérifiez le QS : s'il est < 5, le mot-clé déclenche probablement de mauvaises enchères.
2. Vérifiez les termes de recherche : les requêtes réelles sont-elles pertinentes pour votre offre ?
3. Vérifiez la landing page : la LP est-elle alignée sur l'intention du mot-clé ?
4. Vérifiez le CTR : CTR élevé + zéro conversion = problème post-clic. CTR faible = problème pré-clic.

| Diagnostic | Action |
| --- | --- |
| QS < 5, écart corrigeable | Router vers [Improve Niveau de qualité](<Search - Améliorer le Niveau de qualité.md>), accorder 30 jours de plus |
| Termes de recherche non pertinents | Ajouter des exclusions, resserrer le type de correspondance, accorder 30 jours de plus |
| Décalage de LP identifié | Corriger l'alignement de la LP, accorder 30 jours de plus |
| Pas de correction claire, décalage d'intention fondamental | Mettre le mot-clé en pause |

### 3.3 Q2 : Corriger la pertinence

1. Vérifiez le QS : s'il est < 7, identifiez quel composant est en dessous de la moyenne.
2. Vérifiez la landing page : la page répond-elle à l'intention du mot-clé ?
3. Vérifiez l'ad copy : la pertinence mot-clé/annonce est-elle forte ?
4. Sortez le rapport sur les termes de recherche : des requêtes non pertinentes gonflent-elles le coût ?

| Écart CPA | Action |
| --- | --- |
| 1-1,5x la cible | Resserrer l'ad copy, améliorer les éléments de LP. Surveiller 2 semaines |
| 1,5-2x la cible | Lancer le diagnostic QS, revoir la LP, vérifier les termes de recherche. Surveiller 30 jours |
| 2x+ la cible | Corriger et fixer une deadline de 30 jours. Si toujours 2x+ après corrections, mettre en pause |

### 3.4 Q3 : Augmenter la visibilité

1. Si l'IS lost to budget est significatif, augmentez le budget ou réallouez depuis les mots-clés Q4 mis en pause.
2. Envisagez d'élargir le type de correspondance (exact vers expression, expression vers large avec les Stratégies d'enchères intelligentes).
3. Vérifiez que le mot-clé n'est pas cannibalisé par une autre campagne ou par PMax.
4. Si l'IS lost to rank est significatif et que la campagne utilise le CPC manuel, augmentez les enchères des mots-clés par paliers de 10-15 %. Sur les campagnes en Stratégies d'enchères intelligentes, les problèmes de classement se règlent par l'amélioration du Niveau de qualité, pas par des modifications manuelles d'enchères : l'algorithme contrôle les enchères et tout ajustement au niveau campagne ou ad group affecte tous les mots-clés et les termes de recherche qu'ils déclenchent.

> ⚠️ **Scalez progressivement :** Pousser les enchères trop agressivement peut faire basculer un mot-clé Q3 en Q2.

---

## Phase 4️⃣ : Superposer le Niveau de qualité

### 4.1 Signaler les problèmes de QS

Filtrez sur tous les mots-clés avec un QS < 7, quel que soit le quadrant.

### 4.2 Identifier le composant faible

| Composant | Si en dessous de la moyenne | Router vers |
| --- | --- | --- |
| Expected CTR | L'ad copy n'est pas compétitive | [SOP - Ameliorer le CTR attendu](<Search - Améliorer le CTR attendu.md>) |
| Ad Relevance | Décalage mot-clé/annonce | [SOP - Ameliorer la pertinence des annonces](<Search - Améliorer la pertinence des annonces.md>) |
| Landing Page Experience | La LP ne correspond pas à l'intention | [SOP - Ameliorer l'experience de la page de destination](<../../02-site-web/audit/Audit - Test A-B de Landing Page.md>) |

### 4.3 Prioriser les corrections QS par impact

1. Mots-clés Q1 avec QS < 7 : réduit le coût sur vos meilleurs convertisseurs.
2. Mots-clés Q2 avec QS < 7 : peut les faire basculer en Q1 en améliorant l'efficacité.
3. Mots-clés Q4 avec QS < 5 : vaut la peine d'essayer avant de mettre en pause.

---

## Phase 5️⃣ : Analyse des variantes proches

### 5.1 Sélectionner les mots-clés pour analyse

Concentrez-vous sur les mots-clés Q1 et Q2 à volume significatif. C'est là que la divergence des variantes a le plus d'impact financier.

### 5.2 Extraire et comparer les variantes

1. Sortez le rapport sur les termes de recherche filtré sur chaque mot-clé sélectionné.
2. Regroupez les termes : mot-clé exact du mot-clé parent vs. variantes proches.
3. Comparez le CTR, le CVR et le CPA/ROAS entre les deux groupes.

### 5.3 Agir sur la divergence

| Constat | Action |
| --- | --- |
| La variante surperforme le parent (meilleur CPA, volume significatif) | L'ajouter comme mot-clé exact à part entière |
| La variante sous-performe le parent (CPA moins bon, dépense gaspillée) | Surveiller et envisager de l'ajouter en mot-clé à exclure si le schéma persiste |
| La variante capte plus de volume que le parent | L'évaluer comme mot-clé principal potentiel |
| Plusieurs variantes divergent significativement | Envisager de restructurer l'ad group autour de clusters de requêtes |

> ↪️ **Pour les procédures d'analyse des termes de recherche :** Voir [SOP - Analyser les rapports de termes de recherche](<Search - Analyser les rapports de termes de recherche.md>)

---

## Phase 6️⃣ : Documenter et prioriser

### 6.1 Construire la liste priorisée d'actions

Compilez toutes les actions des Phases 3-5 en une seule liste triée par impact (coût x amélioration potentielle) :

| Priorité | Mot-clé | Quadrant | Action | Impact attendu | Deadline |
| --- | --- | --- | --- | --- | --- |
| 1 | [mot-clé] | Q4 | Mise en pause (aucune voie de correction) | Arrêter X $/mois de gaspillage | Immédiat |
| 2 | [mot-clé] | Q1 | Augmenter les enchères (IS lost = 25 %) | Capter plus de conversions | Cette semaine |
| 3 | [mot-clé] | Q2 | Corriger l'alignement de la LP | Réduire le CPA de X $ à ~Y $ | 30 jours |

### 6.2 Reporter les éléments nécessitant plus de données

| Mot-clé | Statut actuel | Date de réévaluation |
| --- | --- | --- |
| [mot-clé] | 35 clics, 0 conversion | Cycle suivant |
| [mot-clé] | Q2, corrections appliquées ce cycle | [date + 30 jours] |

### 6.3 Consigner le cycle d'analyse

Consignez dans un journal continu : date, période analysée, total de mots-clés analysés, nombre par quadrant, mots-clés mis en pause, mots-clés escaladés pour correction QS, et observations clés.

---

### Validation et critères de complétion

Cette SOP est terminée quand :

- [ ] Données de mots-clés exportées avec toutes les colonnes requises
- [ ] Mots-clés avec 100+ clics segmentés en Q1, Q2, Q3 ou Q4
- [ ] Actions Q1 appliquées : enchères ajustées, écarts d'impression share traités
- [ ] Diagnostics Q4 terminés : mots-clés corrigés avec deadline ou mis en pause
- [ ] Corrections Q2 identifiées et routées vers les SOPs appropriées
- [ ] Actions d'expansion Q3 prises là où c'est justifié
- [ ] Superposition QS terminée : mots-clés QS < 7 routés vers les SOPs de composants
- [ ] Analyse des variantes proches terminée pour les meilleurs mots-clés
- [ ] Liste d'actions priorisée créée et triée par impact
- [ ] Éléments reportés documentés avec dates de réévaluation

---

### Passerelle de sortie

| Délai | Action |
| --- | --- |
| Immédiatement | Appliquer les changements d'enchères/budget Q1 et mettre en pause les mots-clés Q4 confirmés |
| Cette semaine | Router les mots-clés Q2 vers [Improve Niveau de qualité](<Search - Améliorer le Niveau de qualité.md>) ou les SOPs de composants |
| Cette semaine | Router les exclusions de variantes vers [SOP - Executer une analyse N-gram](<Search - Exécuter une analyse N-gram.md>) ou ajouter les termes non pertinents via [SOP - Analyser les rapports de termes de recherche](<Search - Analyser les rapports de termes de recherche.md>) |
| 2 semaines | Vérifier les hausses d'enchères Q3 : le volume a-t-il augmenté sans perte d'efficacité ? |
| 30 jours | Réévaluer les mots-clés Q2 : les corrections les ont-elles fait passer en Q1 ? |
| Cycle suivant | Relancer cette SOP. Les mots-clés changent de quadrant au fil du temps |

---

### Documents liés

| Document | Type | Relation |
| --- | --- | --- |
| [Keyword Performance Analysis Mental Model](<Search - Analyse de performance des keywords.md>) | Modèle mental | Amont : cadre conceptuel que cette SOP exécute |
| [Niveau de qualité Reference](<Search - Niveau de qualité.md>) | Référence | Composants QS, seuils, interprétation (Phase 4) |
| [Improve Niveau de qualité](<Search - Améliorer le Niveau de qualité.md>) | Playbook | Aval : route l'amélioration QS pour les mots-clés Q2/Q4 |
| [SOP - Ameliorer le CTR attendu](<Search - Améliorer le CTR attendu.md>) | SOP | Aval : corrige le composant Expected CTR |
| [SOP - Ameliorer la pertinence des annonces](<Search - Améliorer la pertinence des annonces.md>) | SOP | Aval : corrige le composant Ad Relevance |
| [SOP - Ameliorer l'experience de la page de destination](<../../02-site-web/audit/Audit - Test A-B de Landing Page.md>) | SOP | Aval : corrige le composant Landing Page Experience |
| [SOP - Analyser les rapports de termes de recherche](<Search - Analyser les rapports de termes de recherche.md>) | SOP | Parallèle : analyse des termes de recherche pour le diagnostic Q2/Q4 |
| [SOP - Executer une analyse N-gram](<Search - Exécuter une analyse N-gram.md>) | SOP | Aval : ajouts de mots-clés à exclure basés sur la performance issus de l'analyse des variantes |
