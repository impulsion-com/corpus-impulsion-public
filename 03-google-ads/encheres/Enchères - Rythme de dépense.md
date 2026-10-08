# Rythme de dépense

> **Plateforme :** Google Ads
> **Catégorie :** Enchères
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Documente les mécanismes des budgets Google Ads : limites quotidiennes, plafonds de dépense mensuels, budgets individuels vs partagés, rapports de pacing et contrôles du rythme de dépense.

---

## Ce que couvre cette fiche / Ce qu'elle ne couvre PAS

**Cette fiche :**

- Explique le fonctionnement des limites de budget quotidien et mensuel Google Ads
- Documente les budgets individuels vs partagés avec avantages et inconvénients
- Couvre les rapports de pacing et les colonnes personnalisées pour le monitoring
- Explique la limite de dépense quotidienne (règle du 2x)

**Cette fiche ne couvre PAS :**

- Combien budgéter (Voir : [Budget Allocation Mental Model](<../../01-strategie/analyse/Analyse - Allocation de budget.md>))
- Les instructions d'allocation budgétaire pas à pas (Voir : [SOP - Repartir le budget entre les campagnes](<Enchères - Répartir le budget entre les campagnes.md>))
- La sélection de stratégie d'enchères ou les cibles (Voir : [Bidding Strategy Mental Model](<Enchères - Stratégie d'enchères.md>))

---

## Aide-mémoire : concepts budgétaires

| Concept | Définition | Formule |
|---------|-----------|---------|
| **Budget quotidien moyen** | Le montant que vous êtes prêt à dépenser par jour par campagne | Défini par l'annonceur (minimum ~1 €/jour) |
| **Limite de dépense quotidienne** | Maximum que Google peut dépenser sur un seul jour | Budget quotidien moyen x 2 |
| **Limite de dépense mensuelle** | Maximum que Google peut facturer par campagne par mois | Budget quotidien moyen x 30,4 |
| **Budget partagé** | Un budget quotidien réparti entre plusieurs campagnes liées | Défini une fois, Google alloue entre les campagnes |
| **Budget individuel** | Un budget quotidien spécifique pour une seule campagne | Défini par campagne |

> Google peut dépenser jusqu'à 2x votre budget quotidien un jour donné : c'est par design - Google dépense plus les jours à forte opportunité et moins les jours creux. Votre total mensuel ne dépassera jamais votre limite de dépense mensuelle.

---

## Limite de dépense quotidienne

### Fonctionnement

Google peut dépenser jusqu'à deux fois votre budget quotidien moyen un jour donné s'il prédit de meilleures opportunités de conversion. Les jours plus calmes, Google sous-dépensera pour compenser.

| Type de jour | Comportement de dépense | Exemple (budget quotidien 100 EUR) |
|----------|---------------|-------------------------------|
| Jour à forte opportunité | Jusqu'à 2x le budget quotidien | Dépense : 180 EUR |
| Jour normal | Proche du budget quotidien | Dépense : 95 EUR |
| Jour à faible opportunité | En dessous du budget quotidien | Dépense : 45 EUR |

**Protection du plafond mensuel :** indépendamment des fluctuations quotidiennes, Google ne facturera jamais plus que votre budget quotidien moyen x 30,4 par mois calendaire. Si vous définissez 100 EUR/jour, votre charge mensuelle maximale est de 3 040 EUR.

### Interaction avec le calendrier de diffusion

La limite de dépense mensuelle (30,4x le budget quotidien) s'applique indépendamment de la configuration du calendrier de diffusion. Une campagne tournant 12 heures par jour dépense le même total mensuel qu'une campagne tournant 24 heures par jour : le budget se concentre sur les heures actives plutôt que d'être réduit proportionnellement.

| Calendrier | Plafond mensuel | Comportement de dépense par heure |
|----------|-------------|------------------------|
| 24 heures/jour | 30,4x budget quotidien | Réparti sur toutes les heures |
| 12 heures/jour | 30,4x budget quotidien | Concentré sur 12 heures actives |
| 8 heures/jour | 30,4x budget quotidien | Concentré sur 8 heures actives |

Pour réduire la dépense mensuelle totale, baissez le budget quotidien. Les calendriers de diffusion contrôlent quand les annonces sont diffusées, pas combien vous dépensez au total.

### Que dire aux parties prenantes

Les parties prenantes réagissent souvent aux jours où la dépense dépasse le budget quotidien. Éduquez-les de manière proactive :

- La dépense quotidienne peut atteindre 2x le budget défini un jour donné
- La dépense mensuelle est plafonnée à 30,4x le budget quotidien
- Les jours de surdépense sont compensés par les jours de sous-dépense
- Ce comportement aide Google à maximiser les résultats en capitalisant sur les moments à forte opportunité

---

## Limite de dépense mensuelle

| Jours du mois | Budget quotidien | Limite mensuelle |
|-------------|-------------|---------------|
| 28 jours (Février) | 100 EUR | 3 040 EUR (30,4 x 100) |
| 30 jours | 100 EUR | 3 040 EUR (30,4 x 100) |
| 31 jours | 100 EUR | 3 040 EUR (30,4 x 100) |

Le multiplicateur 30,4 est constant quel que soit le nombre réel de jours du mois ou la configuration du calendrier de diffusion. Google utilise cette moyenne pour garder la facturation cohérente.

### Modifications de budget en milieu de mois

Si vous changez votre budget quotidien en milieu de mois :

- Google recalcule la limite de dépense mensuelle basée sur le nouveau budget quotidien
- Les montants déjà dépensés comptent vers la nouvelle limite
- Réduire le budget en milieu de mois peut entraîner une sous-dépense pour le reste du mois pendant que Google s'ajuste

---

## Budgets individuels vs budgets partagés

### Budgets individuels de campagne

Chaque campagne a son propre budget quotidien défini indépendamment.

| Avantages | Inconvénients |
|------|------|
| Contrôle total sur la dépense par campagne | Nécessite un monitoring et ajustement constants |
| Allocation par priorité et objectifs de campagne | Le budget non dépensé d'une campagne ne peut pas glisser vers les autres |
| Essentiel pour le bucketing basé sur la performance | Peut mener à une sous-utilisation ou un sur-financement |
| Requis pour les expériences de campagne | Plus de charge de gestion pour les gros comptes |
| Protège les campagnes critiques du sous-financement | |

### Budgets partagés

Un budget quotidien partagé entre plusieurs campagnes liées. Google distribue la dépense selon l'opportunité.

| Avantages | Inconvénients |
|------|------|
| Gestion simplifiée (un budget pour plusieurs campagnes) | Moins de contrôle sur l'allocation par campagne |
| Google redistribue vers les campagnes à plus forte opportunité | Risque qu'une campagne consomme tout le budget |
| Idéal pour des campagnes avec des objectifs alignés | Non compatible avec la plupart des expériences de campagne |
| Réduit le budget gaspillé des campagnes sous-performantes | Nécessite de faire confiance à l'algorithme d'allocation de Google |
| Bon pour la phase d'apprentissage initiale | Ne peut pas prioriser une campagne sur une autre |

### Où trouver les budgets partagés

Google Ads > Outils > Budgets et Enchères > Budgets partagés

### Budget partagé + stratégie d'enchères de portefeuille

Combiner un budget partagé avec une stratégie d'enchères de portefeuille crée la configuration la plus automatisée :

- Une cible d'efficacité (CPA ou ROAS) sur plusieurs campagnes
- Un budget mutualisé sur ces mêmes campagnes
- Google optimise à la fois les niveaux d'enchères et l'allocation budgétaire simultanément

C'est puissant pour les comptes où les campagnes partagent le même objectif business et les mêmes cibles d'efficacité.

> Les budgets partagés ne fonctionnent pas avec les expériences de campagne dans la plupart des cas : si vous lancez fréquemment des expériences, utilisez des budgets individuels pour ces campagnes.

---

## Quand utiliser chaque type de budget

| Situation | Type de budget recommandé | Pourquoi |
|-----------|----------------------|-----|
| Campagnes avec des objectifs différents | Individuel | Besoin d'un contrôle indépendant par objectif |
| Campagnes brand | Individuel | Ne peut pas risquer de sous-financer la défense de marque |
| Bucketing basé sur la performance (Shopping, PMax) | Individuel | La distribution du budget EST la stratégie |
| Campagnes partageant la même cible d'efficacité | Partagé | Simplifie la gestion, Google optimise l'allocation |
| Lancements de nouvelles campagnes (phase d'apprentissage) | Partagé | Flexible, laisse Google trouver la meilleure allocation |
| Campagnes time-sensitive (Black Friday, promotions) | Individuel | Besoin de niveaux de dépense garantis |
| Gros compte avec des campagnes Search similaires | L'un ou l'autre | Le partagé fait gagner du temps de gestion, l'individuel offre le contrôle |
| Lancement d'expériences de campagne | Individuel | Les budgets partagés ont des problèmes de compatibilité avec les expériences |

---

## Rapports de pacing du budget

### Accéder aux rapports budgétaires

1. Naviguer vers votre liste de campagnes
2. Cliquer sur le montant du budget pour n'importe quelle campagne
3. Sélectionner "Voir le rapport budgétaire" dans le menu déroulant

Pour les budgets partagés : Outils > Budgets et Enchères > Budgets partagés > sélectionner le budget > voir le rapport

### Ce que montre le rapport

| Métrique | Ce que ça vous dit |
|--------|------------------|
| Budget quotidien moyen | Votre niveau de budget défini |
| Limite de dépense mensuelle | Charge maximale pour le mois (30,4 x quotidien) |
| Dépense à date | Combien a été dépensé jusqu'ici ce mois |
| Dépense projetée | Prévision de Google pour le reste du mois |
| Graphique de dépense quotidienne | Visuel de la dépense quotidienne vs budget quotidien |

### Colonnes personnalisées pour le monitoring budgétaire

Créez ces colonnes personnalisées pour une meilleure visibilité budgétaire :

| Colonne personnalisée | Formule | Objectif |
|--------------|---------|---------|
| **% budget quotidien dépensé** | Coût / (Budget x Jours de la période) x 100 | Montre si vous êtes dans la cible de pacing |
| **Dépense quotidienne réelle** | Coût / Jours de la période | Dépense quotidienne moyenne pour comparaison avec le budget |

Combinez ces colonnes avec la colonne **IS perdu Search (budget)** pour identifier les campagnes où le budget limite le volume.

---

## Règles de pacing du budget

| Règle | Détails |
|------|---------|
| Ne jamais dépenser plus de 2x le quotidien en un jour | Limite stricte appliquée par Google |
| Ne jamais dépasser 30,4x le quotidien par mois | Plafond de dépense mensuel |
| Les changements de budget prennent effet immédiatement | Pas de délai, mais recalcul de la limite mensuelle |
| La campagne doit être active pour dépenser | Les campagnes en pause ne dépensent pas |
| Les budgets partagés se distribuent dynamiquement | L'allocation change au cours de la journée selon l'opportunité |

---

## Budgets totaux de campagne (Video uniquement)

Les campagnes Video avec une date de début et de fin définie peuvent utiliser un **budget total de campagne** au lieu d'un budget quotidien. Google distribue le total de manière uniforme sur la durée de la campagne, avec des fluctuations quotidiennes.

| Paramètre | Fonctionnement |
|---------|-------------|
| Budget total de campagne | Définir un montant total pour la durée de vie de la campagne |
| Pacing quotidien | Google distribue approximativement de manière uniforme, avec quelques variations quotidiennes |
| Sous-dépense | Si Google ne peut pas dépenser la totalité du budget, le montant restant n'est pas dépensé |
| Protection contre la surdépense | La dépense totale ne dépassera pas le total défini |

Ceci n'est disponible que pour les campagnes Video. Tous les autres types de campagne utilisent des budgets quotidiens (individuels ou partagés).

---

## Diagnostics de suffisance budgétaire

Ces seuils déterminent si le budget quotidien d'une campagne est suffisant pour que Stratégies d'enchères intelligentes optimise efficacement.

### Ratio budget quotidien / CPA

Le budget quotidien doit être assez grand pour que Stratégies d'enchères intelligentes génère le volume minimum de conversions dont il a besoin pour apprendre. Le ratio dérive directement des seuils de volume de conversions dans la [Conversion Volume Thresholds Reference](<../suivi/Suivi - Seuils de volume de conversions.md>).

**Le calcul :**

```
Budget quotidien requis = (Conversions mensuelles minimum / 30,4) x CPA cible
```

| Stratégie d'enchères | Conv. mensuelles min | Budget quotidien requis | Ratio Budget:CPA implicite |
|-------------|------------------------|----------------------|--------------------------|
| **CPA cible** | 30 (min fonctionnel) | ~1x CPA cible/jour | 1x |
| **ROAS cible** | 50 (min fonctionnel) | ~1,6x CPA cible/jour | 1,6x |
| **Recommandé (tous)** | 50+ | ~1,6x CPA cible/jour | 1,6x+ |

| Ratio Budget:CPA | Verdict | Implication |
|-------------------|---------|-------------|
| **<1x CPA cible** | ÉCHEC | En dessous du minimum absolu : ne peut pas produire 30 conversions/mois même avec une efficacité parfaite. |
| **1-1,6x CPA cible** | ATTENTION | Atteint le minimum CPA cible (30/mois) mais en dessous du minimum ROAS cible (50/mois). Serré. |
| **1,6x+ CPA cible** | OK | Atteint ou dépasse les minimums fonctionnels pour toutes les stratégies Stratégies d'enchères intelligentes. |

> Ce sont des minimums, pas des cibles. Des ratios plus élevés donnent plus de marge quotidienne à Stratégies d'enchères intelligentes pour explorer les segments d'enchères, mais le plancher est déterminé par la capacité du budget à produire assez de conversions mensuelles pour que l'algorithme apprenne.

### Timing d'épuisement du budget

Si le budget quotidien d'une campagne s'épuise avant la fin de la journée ouvrable, les conversions de fin de journée à forte valeur sont manquées.

| Indicateur | Comment vérifier | Action |
|-----------|-------------|--------|
| Budget épuisé avant 18h heure locale | Rapport de dépense horaire : la dépense tombe quasi à zéro l'après-midi, 3+ jours par semaine | Augmenter le budget quotidien ou appliquer un calendrier de diffusion pour concentrer la dépense sur les heures qui convertissent |
| Budget épuisé de manière incohérente | Certains jours s'épuisent tôt, d'autres sous-dépensent | Vérifier le comportement de dépense quotidienne 2x : Google peut surdépenser tôt les jours à forte opportunité |
| Budget jamais épuisé | La dépense quotidienne est constamment 50%+ en dessous du budget | Le budget n'est pas la contrainte : envisager d'améliorer les enchères, keywords ou ciblage |

### Limite de surdépense quotidienne 2x de Google

Google peut dépenser jusqu'à 2x le budget quotidien un seul jour. C'est une fonctionnalité, pas un bug, mais cela crée des implications diagnostiques :

| Scénario | Ce que ça signifie | Action |
|----------|--------------|--------|
| La dépense quotidienne atteint régulièrement 2x le budget | La campagne est fortement limitée par le budget les jours à forte opportunité | Augmenter le budget ou resserrer le ciblage pour réduire les impressions inutiles |
| La dépense quotidienne atteint régulièrement 2x ET la campagne est rentable | Signal fort d'augmenter le budget : les jours à forte opportunité produisent des résultats | Augmenter le budget quotidien de 20-30%, surveiller l'IS perdu pour budget |
| La dépense quotidienne atteint rarement 2x mais le plafond mensuel est atteint | Dépense régulière sur les jours, mais la limite mensuelle 30,4x contraint | Vérifier si le budget quotidien est correctement défini pour les objectifs mensuels |

### Budget minimum pour le volume de conversions

Stratégies d'enchères intelligentes nécessite un volume minimum de conversions pour fonctionner. Le budget doit soutenir ce volume au CPC et taux de conversion actuels.

**Formule :**

```
Budget quotidien requis = (Conversions mensuelles minimum / 30,4) / Taux de conversion x CPC moyen
```

**Par stratégie d'enchères (utilisant les minimums fonctionnels de la [Conversion Volume Thresholds Reference](<../suivi/Suivi - Seuils de volume de conversions.md>)) :**

| Stratégie | Conv. mensuelles min | À 3% CVR, 3 EUR CPC | À 1% CVR, 15 EUR CPC |
|-------------|------------------------|----------------------|----------------------|
| CPA cible | 30 | 99 EUR/jour | 1 480 EUR/jour |
| ROAS cible | 50 | 164 EUR/jour | 2 467 EUR/jour |
| Max Conversions | 30 | 99 EUR/jour | 1 480 EUR/jour |

Si le budget quotidien requis dépasse le budget disponible, consolidez les campagnes ou remontez dans le funnel. (Voir : [Conversion Volume Thresholds Reference](<../suivi/Suivi - Seuils de volume de conversions.md>) "Quand vous ne pouvez pas atteindre les seuils")

---

## Erreurs courantes

| Erreur | Problème | Solution |
|---------|---------|-----|
| Paniquer quand la dépense quotidienne dépasse le budget | Comportement normal, le plafond mensuel vous protège | Éduquer les parties prenantes sur la limite quotidienne 2x |
| Définir des budgets quotidiens très bas sur Stratégies d'enchères intelligentes | Stratégies d'enchères intelligentes ne peut pas optimiser avec un budget insuffisant | Budgéter assez pour produire 30+ conversions/mois (CPA cible) ou 50+ (ROAS cible) |
| Ne pas vérifier l'IS perdu (budget) | Manquer des opportunités de croissance sur les campagnes limitées par le budget | Ajouter la colonne IS perdu Search (budget) à la vue campagne |
| Utiliser des budgets partagés avec des expériences de campagne | Les expériences peuvent ne pas tourner correctement | Passer aux budgets individuels pour les campagnes d'expérience |
| Changer les budgets trop fréquemment | Empêche une optimisation stable | Faire les changements de budget au plus une fois par semaine |
| Ne pas expliquer la règle du 2x dans le reporting aux parties prenantes | Parties prenantes confuses, appels d'urgence | Inclure les mécanismes budgétaires dans les templates de reporting |

---

## Documents liés

| Document | Relation |
|----------|-------------|
| [Budget Allocation Mental Model](<../../01-strategie/analyse/Analyse - Allocation de budget.md>) | Cadre pour combien budgéter et où allouer |
| [Bidding Configuration Guidelines](<Enchères - Configuration des enchères.md>) | Recommandations budget partagé + stratégie de portefeuille |
| [SOP - Repartir le budget entre les campagnes](<Enchères - Répartir le budget entre les campagnes.md>) | Processus d'allocation budgétaire pas à pas |
| [SOP - Configurer les strategies d'encheres portefeuille](<Enchères - Configurer les stratégies d'enchères de portefeuille.md>) | Combiner les stratégies de portefeuille avec les budgets partagés |
| [Bid Strategy Health Checklist](<Enchères - [Review] Santé de la stratégie d'enchères.md>) | Vérifications de suffisance budgétaire |
| [Conversion Volume Thresholds Reference](<../suivi/Suivi - Seuils de volume de conversions.md>) | Volumes minimum de conversions qui ancrent les seuils ratio budget:CPA |
| [Diagnostic Thresholds Reference](<../optimisation/Optimisation - Seuils diagnostiques.md>) | Déclencheurs diagnostiques liés au budget |
