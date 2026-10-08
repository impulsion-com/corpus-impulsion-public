# Optimiser le ciblage geographique

> **Plateforme :** Google Ads
> **Catégorie :** Strategie
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Cette SOP analyse les données de performance géographique et applique des ajustements d'enchères par localisation ou des exclusions pour concentrer la dépense sur les zones performantes et réduire le gaspillage sur celles qui sous-performent.

> **La question clé :** Quelles localisations génèrent des conversions rentables, et lesquelles épuisent le budget sans résultats ?

---

## Ce que cette SOP ne couvre PAS

Cette SOP ne couvre **pas :**

- Expliquer le fonctionnement ou la syntaxe des modificateurs d'enchères (Voir : [Bid Modifier Reference](<../encheres/Enchères - Modificateurs d'enchères.md>))
- Définir les calculs de métriques ou les dimensions de reporting (Voir : [Google Ads Metrics Reference](<../optimisation/Optimisation - Alertes et règles Google Ads.md>))
- Configurer les paramètres de localisation initiaux d'une campagne (Voir : [Universal Campaign Settings Reference](<Strategie - Paramètres universels de campagne.md>))
- Définir ou ajuster les cibles de la stratégie d'enchères (Voir : [SOP - Selectionner une strategie d'encheres](<../encheres/Enchères - Sélectionner une stratégie d'enchères.md>))

## Quand utiliser cette SOP

| Type de compte | Fréquence | Justification |
| --- | --- | --- |
| Large empreinte géographique (multi-régions/multi-pays) | Bi-hebdomadaire | Forte variance par localisation, accumulation rapide de données |
| Comptes standard mono-pays | Mensuelle | Collecte de données suffisante par segment de localisation |
| Comptes à petit budget ou 100 % local | Trimestrielle | Accumulation de données lente, moins de segments de localisation |

Exécuter immédiatement quand le coût par conversion varie de plus de 50 % d'une localisation à l'autre, qu'un nouveau marché est ajouté, ou que des événements saisonniers modifient les tendances géographiques.

---

## Avant de commencer

### Prérequis

- Accès au compte Google Ads avec les permissions de reporting et d'édition
- Période d'analyse alignée sur la cadence ci-dessus (minimum 30 jours)
- CPA cible ou ROAS cible actuel pour chaque campagne
- Connaissance des paramètres de ciblage géographique actuels

### Documents de référence (à garder ouverts)

| Document | Utilisé pour |
| --- | --- |
| [Bid Modifier Reference](<../encheres/Enchères - Modificateurs d'enchères.md>) | Plages de modificateurs, règles de cumul, interaction avec les Stratégies d'enchères intelligentes |
| [Google Ads Metrics Reference](<../optimisation/Optimisation - Alertes et règles Google Ads.md>) | Définitions des métriques, méthodes de calcul |
| [Universal Campaign Settings Reference](<Strategie - Paramètres universels de campagne.md>) | Options de ciblage géographique, paramètres présence vs. intérêt |

---

## Cadre d'exécution

| Phase | Objectif | Résultat |
| --- | --- | --- |
| **Phase 1️⃣ : Exporter les données de performance par localisation** | Extraire les données géographiques brutes pour la période d'analyse | Rapport de localisation téléchargé avec les métriques clés |
| **Phase 2️⃣ : Analyser la performance par localisation** | Identifier les localisations performantes, sous-performantes et sans conversion | Segments de localisation catégorisés avec notes de performance |
| **Phase 3️⃣ : Appliquer les ajustements** | Définir les modificateurs d'enchères ou exclusions selon l'analyse | Ajustements d'enchères appliqués, exclusions configurées |
| **Phase 4️⃣ : Valider et surveiller** | Confirmer que les changements fonctionnent et planifier l'itération suivante | Comparaison avant/après, prochaine revue planifiée |

---

## Phase 1️⃣: Exporter les données de performance par localisation

### 1.1 Vérifier les paramètres de ciblage par localisation

Aller dans Paramètres de la campagne > Zones géographiques > Options de localisation (avancées). Confirmez le paramètre « Cible ». La valeur par défaut recommandée est **Présence ou intérêt : les personnes se trouvant, se rendant régulièrement, ou ayant manifesté de l'intérêt pour les zones ciblées**. Les données de performance doivent déterminer s'il faut restreindre à « Présence » uniquement.

> ⚠️ **Entreprises locales uniquement :** Pour les entreprises où le client doit être physiquement présent (restaurants, commerces, services locaux), utilisez **Présence uniquement** pour éviter de diffuser vers des utilisateurs qui ne peuvent pas se déplacer. Pour toutes les autres entreprises, commencez par « Présence ou intérêt » et laissez les données de performance par localisation guider toute restriction (voir section 1.3).

### 1.2 Extraire le rapport de localisation

1. Naviguez vers Campagnes > Statistiques et rapports > Éditeur de rapports.
2. Créez un rapport Zones géographiques. Réglez la plage de dates sur votre période d'analyse (14-30 jours en bi-hebdomadaire, 30-60 jours en mensuel, 90 jours en trimestriel).
3. Définissez la granularité à l'aide de ces dimensions de localisation :
   - **Pays/territoire (zone de l'utilisateur)** pour les comptes multi-pays
   - **Région (zone de l'utilisateur)** pour les comptes nationaux
   - **Ville (zone de l'utilisateur)** pour les comptes métropolitains/régionaux
   - **Zone ciblée la plus précise (zone de l'utilisateur)** pour la vue la plus fine disponible
4. Incluez aussi la dimension **Zone ciblée** pour comparer la performance à vos cibles géographiques configurées.
5. Incluez les colonnes : Localisation, Clics, Impressions, Coût, Conversions, Taux de conversion, Coût/conversion, Valeur de conversion, ROAS.
6. Exportez en .csv ou .xlsx. Supprimez les lignes de moins de 50 clics. Triez par Coût décroissant.

### 1.3 Comparer la performance ciblée vs. basée sur l'intérêt

Quand votre option de localisation est réglée sur « Présence ou intérêt », comparez la performance entre les utilisateurs physiquement présents dans vos zones ciblées et ceux qui manifestent de l'intérêt depuis ailleurs :

1. Dans le rapport Zones géographiques, ajoutez la dimension « Type de zone géographique »
2. Comparez les métriques de conversion entre « Présence physique » et « Zone d'intérêt »

| Performance présence physique | Performance zone d'intérêt | Interprétation | Action |
|-------------------------------|-------------------------------|----------------|--------|
| Dans la cible (CPA/ROAS) | Dans la cible (CPA/ROAS) | Les deux performent | Garder « Présence ou intérêt » |
| Dans la cible | Hors cible | Le trafic d'intérêt sous-performe | Passer à « Présence uniquement » |
| Hors cible | Dans la cible | Inhabituel : investiguer les données | Vérifier les anomalies avant d'agir |
| Hors cible | Hors cible | Les deux sous-performent | Investiguer la cause racine au-delà des paramètres de localisation |

### 1.4 Revoir le rapport de distance (entreprises locales uniquement)

Pour les entreprises disposant d'assets de lieu (adresses de magasin), extrayez le rapport « Distance par rapport aux adresses » pour voir la performance selon la distance aux magasins physiques :

1. Naviguez vers Campagnes > Statistiques et rapports > Éditeur de rapports
2. Ajoutez la dimension « Distance » (disponible quand des assets de lieu sont actifs)
3. Analysez les conversions, le CPA et le ROAS par tranche de distance

Ce rapport révèle la distance que les clients parcourent pour convertir et aide à définir les limites de ciblage par rayon à partir de données de performance réelles plutôt que d'hypothèses.

---

## Phase 2️⃣: Analyser la performance par localisation

### 2.1 Établir les benchmarks (analyses comparatives) au niveau campagne

| Métrique | Calcul |
| --- | --- |
| CPA moyen | Coût total / Conversions totales (toutes les localisations de cette campagne) |
| Taux de conversion moyen | Conversions totales / Clics totaux |
| ROAS moyen | Valeur de conversion totale / Coût total (si Value-Based Bidding) |

### 2.2 Catégoriser les localisations en trois niveaux

**Niveau 1 : performantes (candidates à la hausse d'enchère) :** CPA inférieur de 20 %+ à la moyenne de la campagne, taux de conversion égal ou supérieur à la moyenne, 50+ clics.

**Niveau 2 : sous-performantes (candidates à la baisse d'enchère) :** CPA supérieur de 30 %+ à la moyenne de la campagne, taux de conversion sous la moyenne, 50+ clics.

**Niveau 3 : sans conversion (candidates à l'exclusion) :** Zéro conversion, coût supérieur à 2× le CPA cible de la campagne, 50+ clics.

### 2.3 Rechercher des patterns

Avant d'agir sur des localisations individuelles, cherchez les regroupements régionaux (ajustez au niveau régional si les voisins partagent les mêmes patterns), les écarts urbain vs. rural (peut indiquer un problème de landing page, pas géographique), et les anomalies saisonnières (vérifiez 2+ périodes avant toute exclusion permanente).

---

## Phase 3️⃣: Appliquer les ajustements

### 3.1 Point de décision : la stratégie d'enchères détermine les actions possibles

| Stratégie d'enchères | Modificateurs de localisation | Action |
| --- | --- | --- |
| CPC manuel | Pleinement effectifs | Appliquer les modificateurs selon les niveaux ci-dessous |
| Stratégies d'enchères intelligentes (CPA cible, ROAS cible, Max Conv., Max Value) | Ignorés par l'algorithme | Utiliser uniquement les exclusions de localisation (passer à 3.4) |

> ⚠️ **Les Stratégies d'enchères intelligentes ignorent les ajustements d'enchères par localisation :** Elles intègrent déjà la localisation dans les calculs au moment de l'enchère. Pour les campagnes en Stratégies d'enchères intelligentes, seules les exclusions ont un effet.

### 3.2 Appliquer les ajustements d'enchères (CPC manuel uniquement)

**Niveau 1 (performantes) :** Naviguez vers campagne > Zones géographiques. Définissez des modificateurs positifs :

| Niveau de performance | Modificateur |
| --- | --- |
| CPA 20-30 % sous la moyenne | +10 % à +15 % |
| CPA 30-50 % sous la moyenne | +15 % à +25 % |
| CPA 50 %+ sous la moyenne | +25 % à +30 % |

**Niveau 2 (sous-performantes) :** Définissez des modificateurs négatifs :

| Niveau de performance | Modificateur |
| --- | --- |
| CPA 30-50 % au-dessus de la moyenne | -10 % à -15 % |
| CPA 50-75 % au-dessus de la moyenne | -15 % à -25 % |
| CPA 75 %+ au-dessus de la moyenne | -25 % à -30 % |

Pour les ajustements de premier tour, commencez par le bas de la fourchette. Ne dépassez pas +/-30 % tant que les données ne confirment pas la direction.

> ↪️ **Cumul des modificateurs :** Les modificateurs de localisation se cumulent avec ceux d'appareil et d'audience. Voir [Bid Modifier Reference](<../encheres/Enchères - Modificateurs d'enchères.md>) pour les calculs de cumul.

### 3.3 Appliquer les exclusions

Pour les localisations de Niveau 3, naviguez vers campagne > Zones géographiques > onglet Exclues et ajoutez l'exclusion. Avant d'exclure, vérifiez que la localisation a dépensé 2×+ le CPA cible sans aucune conversion, que le pattern persiste sur 2+ périodes d'analyse, et que l'exclusion ne bloque pas une part significative du marché adressable.

### 3.4 Documenter tous les changements

| Localisation | Modificateur précédent | Nouveau modificateur | Justification |
| --- | --- | --- | --- |
| [localisation] | [%] | [%] | [Niveau et données de performance] |

---

## Phase 4️⃣ : Valider et surveiller

### 4.1 Revoir après 2-4 semaines

Extrayez le même rapport de localisation et comparez à la base de référence :

| Métrique | Avant | Après | Variation |
| --- | --- | --- | --- |
| CPA de la campagne | | | |
| ROAS de la campagne | | | |
| Conversions totales | | | |
| Coût total | | | |

### 4.2 Ajuster les sur-corrections

| Résultat | Action |
| --- | --- |
| CPA amélioré mais volume en forte baisse | Réduire le modificateur négatif de 5-10 % |
| CPA dégradé malgré un modificateur positif | Retirer le modificateur, investiguer la cause racine |
| Une localisation exclue convertit dans des campagnes similaires | Réévaluer, envisager plutôt un modificateur négatif |

Planifiez la prochaine revue géographique selon le tableau des cadences.

---

## Validation et critères de complétion

Cette SOP est terminée quand :

- [ ] Mode de ciblage géographique vérifié (présence vs. présence ou intérêt)
- [ ] Comparaison des types de zone géographique revue pour les campagnes « Présence ou intérêt »
- [ ] Rapport de distance revu (entreprises locales avec assets de lieu)
- [ ] Données de performance par localisation exportées à la bonne granularité
- [ ] Benchmarks au niveau campagne calculés
- [ ] Toutes les localisations avec assez de données catégorisées en Niveau 1, 2 ou 3
- [ ] Modificateurs d'enchères appliqués pour les campagnes en CPC manuel (ou ignorés pour les Stratégies d'enchères intelligentes)
- [ ] Exclusions appliquées pour les localisations sans conversion et à forte dépense
- [ ] Tous les changements documentés avec justification
- [ ] Date de revue planifiée pour le prochain cycle

---

## Passerelle de sortie

| Délai | Action |
| --- | --- |
| 2-4 semaines | Analyser l'impact des modificateurs, corriger les sur-corrections |
| 4 semaines | Analyser l'impact des exclusions, confirmer l'absence d'effets secondaires négatifs |
| Mensuelle | Relancer cette SOP à la cadence planifiée |
| Trimestrielle | Audit géographique complet : réévaluer tous les modificateurs, exclusions et le périmètre de ciblage |

**En cas de problème :**

| Problème | Rediriger vers |
| --- | --- |
| Les modificateurs d'enchères ne prennent pas effet | Confirmer que la stratégie d'enchères est en CPC manuel |
| CPA global en hausse après les changements | Vérifier le cumul des modificateurs dans [Bid Modifier Reference](<../encheres/Enchères - Modificateurs d'enchères.md>) |
| Données de localisation gonflées par le ciblage sur intérêt | Mettre à jour les paramètres selon [Universal Campaign Settings Reference](<Strategie - Paramètres universels de campagne.md>) |
| La performance varie selon l'appareil dans une localisation | Superposer des ajustements par appareil (Voir : [Bid Modifier Reference](<../encheres/Enchères - Modificateurs d'enchères.md>)) |

---

## Référence rapide : bibliothèque support

| Document | Type | Utilisé dans |
| --- | --- | --- |
| [Bid Modifier Reference](<../encheres/Enchères - Modificateurs d'enchères.md>) | Référence | Phase 3 (plages de modificateurs, règles de cumul) |
| [Google Ads Metrics Reference](<../optimisation/Optimisation - Alertes et règles Google Ads.md>) | Référence | Phase 1-2 (définitions des métriques) |
| [Universal Campaign Settings Reference](<Strategie - Paramètres universels de campagne.md>) | Référence | Phase 1 (options de ciblage géographique) |

---

## Procédures liées

| SOP | Relation |
| --- | --- |
| [SOP - Lancer une campagne Search](<../search/Search - Lancer une campagne Search.md>) | Amont (ciblage géographique initial défini au lancement) |
| [SOP - Selectionner une strategie d'encheres](<../encheres/Enchères - Sélectionner une stratégie d'enchères.md>) | Lié (la stratégie d'enchères détermine la disponibilité des modificateurs) |
| [SOP - Scaler encheres et budgets](<../encheres/Enchères - Scaler les enchères et budgets.md>) | Lié (l'optimisation géographique complète le scaling des enchères) |
| [SOP - Revue de performance mensuelle](<../../01-strategie/reporting/Reporting - Revue de performance mensuelle.md>) | Amont (la revue mensuelle peut déclencher une analyse géographique) |

---

## Erreurs fréquentes

| Erreur | Pourquoi ça arrive | Comment l'éviter |
| --- | --- | --- |
| Appliquer des modificateurs sur des campagnes en Stratégies d'enchères intelligentes | Ignorer que les Stratégies d'enchères intelligentes les ignorent | Vérifier d'abord la stratégie d'enchères (Phase 3.1) |
| Exclure des localisations avec trop peu de données | Réagir trop tôt à des zéros de faible volume | Imposer un minimum de 50 clics et un seuil de 2× le CPA |
| Choisir « Présence uniquement » par défaut pour des entreprises non locales | Restreint la couverture sans justification de performance | Commencer par « Présence ou intérêt », ne restreindre que quand les données du rapport de localisation montrent du gaspillage lié au trafic d'intérêt |
| Modificateurs de premier tour trop agressifs | Surréagir à une seule période de données | Plafonner à +/-30 %, utiliser le bas de la fourchette |
| Ne pas tenir compte du cumul des modificateurs | Définir les modificateurs indépendamment | Calculer l'effet combiné selon [Bid Modifier Reference](<../encheres/Enchères - Modificateurs d'enchères.md>) |
| Exclusions permanentes basées sur une seule période | Prendre des anomalies pour des tendances | Exiger 2+ périodes cohérentes avant d'exclure |
