# Calendrier de diffusion

> **Plateforme :** Google Ads
> **Catégorie :** Strategie
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Documente la configuration du calendrier de diffusion dans Google Ads : configuration des créneaux horaires, analyse de performance par heure de la semaine, calculs d'ajustement d'enchères, gestion des fuseaux horaires et interaction entre les calendriers de diffusion et Stratégies d'enchères intelligentes.

---

## Ce que couvre cette fiche / Ce qu'elle ne couvre PAS

**Cette fiche :**

- Explique comment configurer les calendriers de diffusion au niveau campagne
- Documente l'analyse heure par heure pour identifier les patterns de performance
- Fournit les formules d'ajustement d'enchères pour l'optimisation temporelle
- Clarifie le comportement de Stratégies d'enchères intelligentes avec les calendriers de diffusion

**Cette fiche ne couvre PAS :**

- Le choix de stratégie d'enchères (Voir : [Stratégies d'enchères intelligentes Mechanics Reference](<../encheres/Enchères - Mécanismes des stratégies d'enchères intelligentes.md>))
- Les instructions détaillées de scaling des enchères (Voir : [SOP - Scaler encheres et budgets](<../encheres/Enchères - Scaler les enchères et budgets.md>))
- Les ajustements d'enchères par appareil ou localisation (types de modificateurs séparés)

---

## Aide-mémoire : spécifications du calendrier de diffusion

| Paramètre | Valeur |
|---------|-------|
| **Niveau** | Campagne |
| **Défaut** | Tous les jours, toutes les heures (aucune restriction) |
| **Créneaux max par jour** | 6 |
| **Durée minimum d'un créneau** | 15 minutes |
| **Plage d'ajustement d'enchère** | -90% à +900% |
| **Pause totale** | -100% (arrête les annonces pour ce créneau) |
| **Fuseau horaire** | Paramètre au niveau du compte (ne peut pas varier par campagne) |
| **Compatibilité Stratégies d'enchères intelligentes** | Calendrier oui, ajustements d'enchères ignorés |

> Un calendrier de diffusion personnalisé ne signifie pas que les annonces ne tournent que pendant ces heures par défaut : créer un calendrier avec des créneaux spécifiques restreint la diffusion à ces créneaux. Si vous voulez une diffusion 24h/24 avec des ajustements d'enchères, créez des créneaux couvrant toutes les heures et appliquez les ajustements sur des créneaux spécifiques.

---

## Mécanismes de configuration

### Comment configurer un calendrier de diffusion

1. Ouvrir la campagne, naviguer vers **Calendrier de diffusion** dans le menu de gauche
2. Cliquer sur l'icône crayon pour modifier
3. Sélectionner les jours et plages horaires, puis enregistrer

### Règles des créneaux

| Règle | Détails |
|------|---------|
| Les créneaux ne peuvent pas se chevaucher | Deux créneaux le même jour ne peuvent pas couvrir les mêmes heures |
| Les créneaux doivent être alignés sur des incréments de 15 minutes | Les heures de début et fin s'alignent sur :00, :15, :30, :45 |
| Maximum 6 créneaux par jour | Divisez la journée en 6 blocs distincts maximum |
| Les trous signifient pas de diffusion | Les heures non couvertes par un créneau reçoivent zéro impression |

### Exemple de calendrier (lead gen B2B)

| Jour | Créneau horaire | Ajustement d'enchère |
|-----|-----------|----------------|
| Lundi à Vendredi | 7h00 à 9h00 | +0% (heures de recherche) |
| Lundi à Vendredi | 9h00 à 12h00 | +20% (heures de bureau peak) |
| Lundi à Vendredi | 12h00 à 13h00 | +0% (creux du déjeuner) |
| Lundi à Vendredi | 13h00 à 17h00 | +20% (heures de bureau peak) |
| Lundi à Vendredi | 17h00 à 22h00 | -20% (après les heures) |
| Samedi à Dimanche | Non programmé | Pas de diffusion |

---

## Analyse de performance par heure de la semaine

### Prérequis de données

| Prérequis | Minimum |
|-------------|---------|
| Plage de dates | 2 à 4 semaines |
| Clics par créneau | 50+ pour des patterns fiables |
| Volume de conversions | 10+ par créneau pour des décisions basées sur les conversions |

### Comment extraire les données

1. Aller dans **Rapports** dans Google Ads, créer un rapport personnalisé
2. Ajouter les dimensions : Jour de la semaine, Heure du jour
3. Ajouter les métriques : Clics, Impressions, Conversions, Coût, Valeur de conversion

### Métriques clés par créneau

| Métrique | Ce que ça vous dit |
|--------|------------------|
| **CPA par créneau** | Quelles heures convertissent à moindre coût vs plus cher |
| **ROAS par créneau** | Quelles heures génèrent le plus de valeur par € dépensé |
| **Taux de conversion par créneau** | Quelles heures ont les utilisateurs avec la plus forte intention |
| **Volume de clics par créneau** | Quelles heures ont assez de données pour être fiables |

### Validation des patterns

- Comparer les patterns semaine après semaine avant d'appliquer des ajustements
- Ignorer les créneaux avec moins de 50 clics (données insuffisantes)
- Marquer comme fiables les patterns qui apparaissent dans 3+ semaines sur 4
- Traiter comme du bruit les patterns apparaissant dans seulement 1 semaine sur 4

---

## Calcul de l'ajustement d'enchère

### Formule basée sur le CPA

```
Ajustement % = (CPA du créneau / CPA moyen - 1) x 100
```

**Exemple :** CPA moyen de 40 EUR. CPA du mardi 9h-12h de 30 EUR.
Ajustement = (30 / 40 - 1) x 100 = -25%. Ce créneau performe 25% mieux que la moyenne, donc enchérissez +25% (inversé : augmentez les enchères là où le CPA est plus bas).

> La formule donne le delta de performance, pas la direction de l'enchère : si un créneau a un CPA plus bas (meilleure performance), augmentez les enchères pour capter plus de volume. Si un créneau a un CPA plus élevé (moins bonne performance), baissez les enchères.

### Formule basée sur le ROAS

```
Ajustement % = (ROAS du créneau / ROAS moyen - 1) x 100
```

**Exemple :** ROAS moyen de 400%. ROAS du dimanche soir de 520%.
Ajustement = (520 / 400 - 1) x 100 = +30%. Enchérissez +30% pour les dimanches soirs.

### Garde-fous des ajustements

| Garde-fou | Règle |
|-----------|------|
| Plafond initial | Limiter les ajustements à +/- 30% lors de la première application |
| Période de rodage | Laisser tourner 2 semaines, puis élargir la plage selon les résultats |
| Pause totale (-100%) | Réserver aux heures sans valeur business (ex : week-ends B2B, nuit pour campagnes call-only) |
| Maximum positif | Rarement dépasser +50% sauf si le volume de données est très élevé |

---

## Interaction avec Stratégies d'enchères intelligentes

### Ce que Stratégies d'enchères intelligentes fait avec les calendriers de diffusion

| Composant | Comportement Stratégies d'enchères intelligentes |
|-----------|----------------------|
| **Calendrier de diffusion (créneaux)** | Respecté : les annonces ne tournent que pendant les créneaux programmés |
| **Ajustements d'enchères sur les créneaux** | Ignorés : Stratégies d'enchères intelligentes définit ses propres enchères par heure |
| **Optimisation par heure** | Intégrée : Stratégies d'enchères intelligentes utilise les signaux temporels automatiquement |

### Quand utiliser les ajustements de calendrier

| Stratégie d'enchères | Utiliser les ajustements de calendrier ? |
|--------------|--------------------------|
| CPC manuel | Oui, contrôle total sur les enchères par heure |
| CPA cible | Non, les ajustements sont ignorés |
| ROAS cible | Non, les ajustements sont ignorés |
| Maximiser les conversions | Non, les ajustements sont ignorés |
| Maximiser la valeur de conversion | Non, les ajustements sont ignorés |

Pour arrêter les annonces pendant certaines heures en utilisant Stratégies d'enchères intelligentes, n'utilisez pas les ajustements d'enchères. Configurez le calendrier de diffusion lui-même pour exclure ces heures. Stratégies d'enchères intelligentes respecte le calendrier, juste pas les ajustements.

### Interaction avec le pacing du budget

Les calendriers de diffusion contrôlent QUAND les annonces sont diffusées mais ne réduisent pas les dépenses mensuelles totales. Le budget mensuel complet (30,4x le budget quotidien) se concentre sur les heures programmées.

| Configuration du calendrier | Budget mensuel | Taux de dépense par heure |
|------------------------|---------------|---------------------|
| 24 heures/jour | 30,4x budget quotidien | Standard |
| 12 heures/jour | 30,4x budget quotidien | ~2x le taux standard par heure active |
| 8 heures/jour | 30,4x budget quotidien | ~3x le taux standard par heure active |

Les campagnes avec des calendriers limités voient des taux de dépense par heure plus élevés car le même total mensuel est réparti sur moins d'heures actives. Pour réduire la dépense totale, baissez le budget quotidien.

---

## Heures d'ouverture vs heures de conversion

| Secteur | Heures de recherche | Heures de conversion peak | Recommandation de calendrier |
|----------|---------------|----------------------|------------------------|
| **Lead gen** | 9h à 17h semaine | 18h à 22h semaine | Tourner 24h/24, enchérir plus le soir si CPC manuel |
| **B2B SaaS** | 9h à 18h semaine | 10h à 16h semaine | Envisager de mettre en pause les week-ends, enchérir plus pendant les heures de bureau |
| **E-commerce** | Toutes les heures, peak le soir | 19h à 23h, week-ends | Tourner 24h/24, pas de restriction de calendrier |

### Considérations de fuseau horaire

| Scénario | Approche |
|----------|---------|
| Ciblage d'un seul pays | Calendrier basé sur le fuseau horaire du compte |
| Multi-région, fuseaux différents | Séparer les campagnes par région pour un calendrier précis |
| Campagnes mondiales | Utiliser un calendrier 24h/24, laisser Stratégies d'enchères intelligentes gérer l'optimisation temporelle |

> Le fuseau horaire du compte est défini à la création et ne peut pas être modifié : tous les calendriers de diffusion référencent ce fuseau unique. Si votre audience cible couvre plusieurs fuseaux horaires et que la précision temporelle compte, créez des campagnes séparées par région.

---

## Guide de décision

| Situation | Recommandation |
|-----------|---------------|
| Stratégies d'enchères intelligentes, pas d'heures à exclure | Pas de calendrier nécessaire : Stratégies d'enchères intelligentes gère l'optimisation temporelle |
| Stratégies d'enchères intelligentes, besoin de mettre en pause certaines heures | Configurer le calendrier pour exclure ces heures, pas d'ajustement d'enchère |
| CPC manuel, patterns horaires clairs | Configurer le calendrier avec des ajustements basés sur les données |
| B2B sans valeur le week-end | Mettre en pause les week-ends via le calendrier (le budget se concentre en semaine, ne réduit pas le total mensuel : baisser le budget quotidien pour réduire les dépenses) |
| Campagnes call-only hors heures de bureau | Mettre en pause hors heures de bureau (le budget se concentre sur les heures avec du personnel : baisser le budget quotidien pour réduire les dépenses) |
| Nouvelle campagne, pas de données | Tourner 24h/24 pendant 2 à 4 semaines, puis analyser |

---

## Erreurs courantes

| Erreur | Problème | Solution |
|---------|---------|-----|
| Mettre des ajustements d'enchère sur des campagnes Stratégies d'enchères intelligentes | Les ajustements sont ignorés, crée une fausse confiance | Supprimer les ajustements, utiliser le calendrier uniquement pour la mise en pause |
| Appliquer des ajustements basés sur une seule semaine | Des anomalies d'une semaine traitées comme des patterns | Exiger 2 à 4 semaines et 50+ clics par créneau |
| Commencer avec des ajustements extrêmes (+/- 60%+) | La sur-correction déstabilise la performance | Plafonner les ajustements initiaux à +/- 30% |
| Oublier que les trous dans le calendrier stoppent la diffusion | Laisser des heures non couvertes tue le volume | Couvrir toutes les heures de diffusion prévues avec des créneaux |
| Ne pas prendre en compte les fuseaux horaires pour les campagnes multi-géo | Calendrier désaligné avec l'audience cible | Séparer les campagnes par région si la précision temporelle compte |
| Utiliser -100% au lieu de supprimer le créneau | Même résultat mais plus difficile à auditer | Supprimer les créneaux entièrement quand vous voulez zéro diffusion |
| Utiliser les calendriers de diffusion pour réduire les dépenses totales | Le plafond mensuel (30,4x budget quotidien) s'applique quoi qu'il arrive | Baisser le budget quotidien pour réduire les dépenses : les calendriers ne contrôlent que le timing |

---

## Documents liés

| Document | Relation |
|----------|-------------|
| [Stratégies d'enchères intelligentes Mechanics Reference](<../encheres/Enchères - Mécanismes des stratégies d'enchères intelligentes.md>) | Comment Stratégies d'enchères intelligentes gère les signaux temporels en interne |
| [Google Ads Metrics Reference](<../optimisation/Optimisation - Alertes et règles Google Ads.md>) | Métriques utilisées dans l'analyse heure par heure |
| [Universal Campaign Settings Reference](<Strategie - Paramètres universels de campagne.md>) | Le calendrier de diffusion comme élément de la configuration campagne |
| [Bid Targets Reference](<../encheres/Enchères - Cibles d'enchères.md>) | Calculs de cibles qui alimentent les décisions d'ajustement |
| [Budget Pacing Reference](<../encheres/Enchères - Rythme de dépense.md>) | Comment le budget interagit avec les fenêtres de diffusion programmées |
