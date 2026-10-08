# Modificateurs d'enchères

> **Plateforme :** Google Ads
> **Catégorie :** Enchères
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Documente tous les types de modificateurs d'enchères dans Google Ads : ce qu'ils contrôlent, leur plage, comment les modificateurs se cumulent, comment chacun interagit avec Stratégies d'enchères intelligentes, et comment calculer les ajustements de départ à partir des données de performance.

---

## Ce que couvre cette fiche / Ce qu'elle ne couvre PAS

**Cette fiche :**

- Liste tous les types de modificateurs d'enchères avec leurs plages et où les configurer
- Explique les règles de cumul multiplicatif avec des exemples concrets
- Documente quels modificateurs Stratégies d'enchères intelligentes respecte et quels il ignore
- Fournit la méthode d'analyse pour calculer les ajustements de départ
- Couvre les prérequis de données minimum par dimension de modificateur

**Cette fiche ne couvre PAS :**

- Le fonctionnement interne de Stratégies d'enchères intelligentes (Voir : [Stratégies d'enchères intelligentes Mechanics Reference](<Enchères - Mécanismes des stratégies d'enchères intelligentes.md>))
- Le choix de stratégie d'enchères (Voir : [Bid Strategy Selection Reference](<Enchères - Sélection de stratégie d'enchères.md>))
- Les paramètres recommandés de modificateurs (Voir : [Bidding Configuration Guidelines](<Enchères - Configuration des enchères.md>))
- La configuration pas à pas des ajustements (cela relève d'une SOP)

---

## Aide-mémoire : tous les types de modificateurs

| Modificateur | Plage | Stratégies d'enchères intelligentes | CPC manuel | Où le configurer |
|----------|-------|---------------|---------------------|-----------|
| Appareil | -100% à +900% | Seul -100% est respecté | Plage complète | Campagne |
| Localisation | -90% à +900% | Ignoré | Plage complète | Campagne |
| Calendrier de diffusion | -90% à +900% | Ignoré | Plage complète | Campagne |
| Audience (RLSA) | -90% à +900% | Ignoré pour les enchères, utilisé comme signal | Plage complète | Campagne / groupe d'annonces |
| Âge | -90% à +900% | Ignoré | Plage complète | Campagne / groupe d'annonces |
| Genre | -90% à +900% | Ignoré | Plage complète | Campagne / groupe d'annonces |
| Statut parental | -90% à +900% | Ignoré | Plage complète | Campagne / groupe d'annonces |
| Revenu du foyer | -90% à +900% | Ignoré | Plage complète | Campagne / groupe d'annonces |
| Interactions | -90% à +900% | Ignoré | Plage complète | Campagne |

> Stratégies d'enchères intelligentes ignore tous les modificateurs sauf appareil -100% : mettre des ajustements de localisation, calendrier, audience ou démographiques sur des campagnes CPA cible, ROAS cible, Maximiser les conversions ou Maximiser la valeur de conversion n'a aucun effet. Stratégies d'enchères intelligentes gère ces dimensions en interne via les signaux au moment de l'enchère.

---

## Modificateur d'appareil

### Ce qu'il contrôle

Ajuste les enchères à la hausse ou à la baisse selon le type d'appareil de l'utilisateur : mobile, ordinateur ou tablette.

### Plage et défaut

| Paramètre | Valeur |
|---------|-------|
| Plage | -100% à +900% |
| Défaut | 0% (aucun ajustement) |
| Effet de -100% | Exclut complètement l'appareil |

### Interaction Stratégies d'enchères intelligentes

Appareil -100% est le seul modificateur respecté par Stratégies d'enchères intelligentes. Utilisez-le pour exclure entièrement un appareil d'une campagne. Tous les autres ajustements d'appareil (ex : +20% mobile) sont ignorés sous Stratégies d'enchères intelligentes car l'algorithme ajuste déjà les enchères par appareil au moment de l'enchère.

### Meilleurs cas d'usage

| Cas d'usage | Exemple |
|----------|---------|
| Exclure le mobile des campagnes réservées aux ordinateurs | Mettre mobile à -100% |
| Exclure les tablettes des campagnes haute intention | Mettre tablette à -100% |
| Booster les enchères mobile sur les campagnes CPC manuel | Mettre mobile à +30% si le CPA mobile est 30% sous la moyenne |

### Données minimum pour l'analyse

Collecter 100+ clics par type d'appareil avant d'ajuster. Pour la plupart des comptes, ordinateur et mobile accumulent des données rapidement. Les données tablette peuvent prendre plus de temps vu le volume de trafic plus faible.

### Approche d'analyse

1. Segmenter les données de campagne par appareil dans Google Ads
2. Comparer le CPA ou ROAS par appareil vs la moyenne de la campagne
3. Appliquer la formule d'ajustement (voir la section Méthode d'analyse ci-dessous)

---

## Modificateur de localisation

### Ce qu'il contrôle

Ajuste les enchères pour les utilisateurs dans des zones géographiques spécifiques : pays, régions, villes ou ciblage par rayon.

### Plage et défaut

| Paramètre | Valeur |
|---------|-------|
| Plage | -90% à +900% |
| Défaut | 0% (aucun ajustement) |

### Interaction Stratégies d'enchères intelligentes

Ignoré entièrement. Stratégies d'enchères intelligentes utilise la localisation comme un de ses 18+ signaux au moment de l'enchère. Il enchérit déjà plus haut dans les localisations à forte conversion et plus bas dans les localisations à faible performance.

### Meilleurs cas d'usage

| Cas d'usage | Exemple |
|----------|---------|
| Booster les enchères près des magasins physiques (CPC manuel) | Mettre +50% pour un rayon de 10 km autour de chaque magasin |
| Réduire les enchères dans les régions à faible conversion (CPC manuel) | Mettre -40% pour les régions avec un CPA 40% au-dessus de la moyenne |
| Exclure une localisation entièrement | Utiliser l'exclusion de localisation au niveau campagne plutôt que -90% |

### Données minimum pour l'analyse

100+ clics par segment de localisation. Pour les localisations granulaires (villes, rayons), les données s'accumulent lentement. Commencer par l'analyse au niveau régional et ne descendre au niveau ville que quand les régions montrent assez de volume.

### Approche d'analyse

1. Aller dans l'onglet Localisations dans Google Ads
2. Ajouter les colonnes "Conversions" et "Coût / conv."
3. Filtrer aux localisations avec 100+ clics
4. Appliquer la formule d'ajustement à chaque localisation qualifiante

---

## Modificateur de calendrier de diffusion

### Ce qu'il contrôle

Ajuste les enchères selon le jour de la semaine et l'heure de la journée. Nécessite qu'un calendrier de diffusion soit configuré au niveau campagne.

### Plage et défaut

| Paramètre | Valeur |
|---------|-------|
| Plage | -90% à +900% |
| Défaut | 0% (aucun ajustement) |
| Prérequis | Le calendrier de diffusion doit être configuré |

### Interaction Stratégies d'enchères intelligentes

Ignoré entièrement. Stratégies d'enchères intelligentes évalue les signaux d'heure et de jour au moment de l'enchère. Mettre des ajustements de calendrier sur des campagnes automatisées n'a aucun effet.

> La mise en pause via le calendrier fonctionne toujours avec Stratégies d'enchères intelligentes : vous pouvez toujours utiliser les calendriers de diffusion pour arrêter les annonces pendant certaines heures (ex : hors heures de bureau pour les business dépendant des appels). Le calendrier agit comme un filtre, pas comme un modificateur d'enchère.

### Meilleurs cas d'usage

| Cas d'usage | Exemple |
|----------|---------|
| Booster les enchères pendant les heures de bureau (CPC manuel) | Mettre +25% pour lundi-vendredi 9h-17h |
| Réduire les enchères la nuit (CPC manuel) | Mettre -50% pour 23h-6h |
| Mettre en pause les annonces le week-end pour le B2B | Mettre -100% pour samedi et dimanche (filtre du calendrier) |

### Données minimum pour l'analyse

100+ clics par segment temporel. Diviser la semaine en 4-6 blocs (ex : matin semaine, après-midi semaine, soir semaine, journée week-end, soir week-end). Ne pas créer de segments horaires : les données seront trop fines.

### Approche d'analyse

1. Aller dans l'onglet Calendrier de diffusion dans Google Ads
2. Revoir la performance par segments jour-et-heure
3. Regrouper les heures à performance similaire en blocs
4. Appliquer la formule d'ajustement à chaque bloc

---

## Modificateur d'audience (RLSA et observation)

### Ce qu'il contrôle

Ajuste les enchères pour les utilisateurs appartenant à des segments d'audience spécifiques : listes de remarketing (RLSA), Customer Match, segments similaires, sur le marché, affinité ou segments personnalisés.

### Plage et défaut

| Paramètre | Valeur |
|---------|-------|
| Plage | -90% à +900% |
| Défaut | 0% (aucun ajustement) |
| Mode de ciblage | Observation (couche) ou Ciblage (restriction) |

### Mode observation vs ciblage

| Mode | Ce que ça fait |
|------|-------------|
| Observation | Les annonces sont diffusées à tout le monde. Les membres de l'audience reçoivent un ajustement d'enchère en plus de l'enchère de base. Les utilisateurs hors audience reçoivent l'enchère de base. |
| Ciblage | Les annonces ne sont diffusées qu'aux membres de l'audience. Le modificateur d'enchère s'applique dans ce pool restreint. |

### Interaction Stratégies d'enchères intelligentes

Stratégies d'enchères intelligentes ignore les ajustements d'enchère d'audience. Il utilise déjà l'appartenance aux audiences comme signal lors de l'enchère en temps réel. Ajoutez les audiences en mode Observation pour la visibilité du reporting, mais n'attendez pas que les ajustements d'enchère aient un quelconque effet.

### Meilleurs cas d'usage

| Cas d'usage | Exemple |
|----------|---------|
| Booster les enchères pour les visiteurs du site (CPC manuel) | Mettre +50% pour la liste de remarketing "Tous les visiteurs" |
| Booster les enchères pour les abandons panier (CPC manuel) | Mettre +100% pour "Abandons panier, 7 derniers jours" |
| Réduire les enchères pour les audiences à faible valeur (CPC manuel) | Mettre -30% pour les segments sur le marché avec un CPA médiocre |
| Reporting uniquement (Stratégies d'enchères intelligentes) | Ajouter les audiences en mode Observation pour voir leur performance |

### Données minimum pour l'analyse

100+ clics par segment d'audience. Les listes de remarketing avec moins de 1 000 membres génèrent typiquement insuffisamment de données de clics pour l'analyse des modificateurs.

---

## Modificateurs démographiques

Google Ads supporte quatre types de modificateurs démographiques. Tous suivent les mêmes mécanismes.

### Âge

| Paramètre | Valeur |
|---------|-------|
| Plage | -90% à +900% |
| Segments | 18-24, 25-34, 35-44, 45-54, 55-64, 65+, Inconnu |
| Stratégies d'enchères intelligentes | Ignoré |

### Genre

| Paramètre | Valeur |
|---------|-------|
| Plage | -90% à +900% |
| Segments | Homme, Femme, Inconnu |
| Stratégies d'enchères intelligentes | Ignoré |

### Statut parental

| Paramètre | Valeur |
|---------|-------|
| Plage | -90% à +900% |
| Segments | Parent, Non parent, Inconnu |
| Stratégies d'enchères intelligentes | Ignoré |

### Revenu du foyer

| Paramètre | Valeur |
|---------|-------|
| Plage | -90% à +900% |
| Segments | 10% supérieurs, 11-20%, 21-30%, 31-40%, 41-50%, 50% inférieur, Inconnu |
| Stratégies d'enchères intelligentes | Ignoré |

### Meilleurs cas d'usage pour les données démographiques

| Cas d'usage | Modificateur | Exemple |
|----------|----------|---------|
| Ciblage produit de luxe (CPC manuel) | Revenu du foyer | Mettre +40% pour les 10% supérieurs, -30% pour les 50% inférieurs |
| Ciblage B2B professionnels (CPC manuel) | Âge | Mettre +20% pour 25-44, -40% pour 18-24 |
| Produits orientés parents (CPC manuel) | Statut parental | Mettre +30% pour Parents |

### Règles clés pour les données démographiques

- Le segment "Inconnu" est important (souvent 30-50% du trafic). Mettre -90% sur les segments Inconnu exclut une part significative de votre audience.
- Les données démographiques sont inférées par Google. Elles ne sont pas toujours exactes.
- N'appliquer les modificateurs démographiques que quand vous avez des preuves claires de différences de performance avec 100+ clics par segment.

---

## Modificateur d'interactions

### Ce qu'il contrôle

Ajuste les enchères pour les interactions d'appel sur les annonces call-only et les extensions d'appel.

### Plage et défaut

| Paramètre | Valeur |
|---------|-------|
| Plage | -90% à +900% |
| Défaut | 0% (aucun ajustement) |
| Stratégies d'enchères intelligentes | Ignoré |

### Meilleurs cas d'usage

| Cas d'usage | Exemple |
|----------|---------|
| Booster les enchères d'appel pour les business dépendant des appels (CPC manuel) | Mettre +50% pour les interactions d'appel |
| Réduire les enchères d'appel quand les appels sont secondaires (CPC manuel) | Mettre -30% pour les interactions d'appel |

---

## Règles d'interaction avec Stratégies d'enchères intelligentes

### Tableau récapitulatif

| Stratégie d'enchères | Appareil -100% | Appareil autre | Localisation | Calendrier | Audience | Démographiques |
|-------------|:------------:|:------------:|:--------:|:--------:|:--------:|:------------:|
| CPC manuel | Oui | Oui | Oui | Oui | Oui | Oui |
| Maximize Clicks | Oui | Oui | Oui | Oui | Oui | Oui |
| Target Impression Share | Oui | Oui | Oui | Oui | Oui | Oui |
| Maximiser les conversions | Oui | Non | Non | Non | Non | Non |
| CPA cible | Oui | Non | Non | Non | Non | Non |
| Maximiser la valeur de conversion | Oui | Non | Non | Non | Non | Non |
| ROAS cible | Oui | Non | Non | Non | Non | Non |

### Pourquoi Stratégies d'enchères intelligentes ignore les modificateurs

Stratégies d'enchères intelligentes traite 18+ signaux au moment de l'enchère, incluant l'appareil, la localisation, l'heure, les audiences et les données démographiques. Il calcule l'enchère optimale pour chaque enchère individuelle. Superposer des ajustements manuels entrerait en conflit avec les prédictions de l'algorithme.

### Quoi faire à la place

Sur les campagnes Stratégies d'enchères intelligentes, utilisez ces alternatives :

| Au lieu de | Utilisez |
|-----------|-----|
| Modificateurs de localisation | Règles de valeur de conversion (pour les stratégies basées sur la valeur) ou exclusions de localisation au niveau campagne |
| Modificateurs de calendrier | Mise en pause via le calendrier (pour arrêter les annonces complètement pendant certaines heures) |
| Modificateurs d'audience | Ajouter les audiences en mode Observation pour le reporting. Stratégies d'enchères intelligentes les utilise automatiquement comme signaux |
| Modificateurs démographiques | Règles de valeur de conversion ou exclusions démographiques au niveau groupe d'annonces |

---

## Règles de cumul

### Comment les modificateurs se combinent

Les modificateurs s'appliquent **de manière multiplicative**, pas additive. Chaque modificateur multiplie l'enchère en cours indépendamment.

### Formule

`Enchère effective = Enchère de base x (1 + Modificateur A) x (1 + Modificateur B) x (1 + Modificateur C)`

### Exemples concrets

**Exemple 1 : Deux modificateurs positifs**
- Enchère de base : 2,00 €
- Modificateur d'appareil : +20%
- Modificateur de localisation : +30%
- Enchère effective : 2,00 € x 1,20 x 1,30 = 3,12 € (+56%, pas +50%)

**Exemple 2 : Un positif, un négatif**
- Enchère de base : 2,00 €
- Modificateur d'appareil : +50%
- Modificateur de calendrier : -20%
- Enchère effective : 2,00 € x 1,50 x 0,80 = 2,40 € (+20%)

**Exemple 3 : Trois modificateurs cumulés**
- Enchère de base : 2,00 €
- Appareil : +30%
- Localisation : +20%
- Audience : +50%
- Enchère effective : 2,00 € x 1,30 x 1,20 x 1,50 = 4,68 € (+134%)

> Risque de cumul : trois modificateurs modérés peuvent produire des augmentations d'enchère extrêmes. Surveillez l'effet combiné. Auditez les campagnes avec 3+ types de modificateurs actifs chaque trimestre.

### Interaction avec le mode d'audience

| Mode | Comportement de cumul |
|------|------------------|
| Observation | Le modificateur d'audience se cumule par-dessus tous les autres modificateurs pour les membres de l'audience. Les utilisateurs hors audience reçoivent l'enchère de base avec les autres modificateurs uniquement. |
| Ciblage | Seuls les membres de l'audience sont éligibles. Le modificateur d'audience se cumule avec les autres modificateurs applicables pour ces utilisateurs. |

---

## Méthode d'analyse

### Processus pas à pas

1. **Collecter les données :** Laisser la campagne tourner au moins 2-4 semaines
2. **Segmenter :** Découper les données de performance par la dimension du modificateur (appareil, localisation, heure, audience, démographique)
3. **Filtrer :** N'inclure que les segments avec 100+ clics
4. **Calculer le CPA par segment :** Coût / Conversions pour chaque segment qualifiant
5. **Calculer le CPA moyen de la campagne :** Coût total / Conversions totales
6. **Appliquer la formule**

### Formules d'ajustement

**Pour les objectifs basés sur le CPA (plus bas = mieux) :**

`Modificateur de départ % = (CPA moyen / CPA du segment - 1) x 100`

| CPA du segment | CPA campagne | Calcul | Modificateur de départ |
|-------------|-------------|-------------|-------------------|
| 40 € | 50 € | (50 / 40 - 1) x 100 | +25% |
| 65 € | 50 € | (50 / 65 - 1) x 100 | -23% |
| 50 € | 50 € | (50 / 50 - 1) x 100 | 0% |

**Pour les objectifs basés sur le ROAS (plus haut = mieux) :**

`Modificateur de départ % = (ROAS du segment / ROAS moyen - 1) x 100`

| ROAS du segment | ROAS campagne | Calcul | Modificateur de départ |
|-------------|--------------|-------------|-------------------|
| 600% | 400% | (600 / 400 - 1) x 100 | +50% |
| 250% | 400% | (250 / 400 - 1) x 100 | -37,5% |

### Règles de sécurité

- Plafonner les ajustements initiaux à +/-30% quelle que soit la formule
- Ré-analyser après 2 semaines
- Augmenter ou diminuer par incréments de 10-15% dans les cycles suivants
- Retirer un modificateur (mettre à 0%) si le segment a moins de 50 conversions après 30 jours

---

## Guide de décision : quand utiliser les modificateurs d'enchères

```
Utilisez-vous Stratégies d'enchères intelligentes (CPA cible, ROAS cible, Max Conv, Max Conv Value) ?
│
├─ OUI → Avez-vous besoin d'exclure un appareil entièrement ?
│        │
│        ├─ OUI → Mettre le modificateur d'appareil à -100%
│        │
│        └─ NON → Ne pas utiliser de modificateurs d'enchères.
│                Utiliser les règles de valeur de conversion ou les
│                exclusions au niveau campagne à la place.
│
└─ NON → Avez-vous 100+ clics par segment pour le type de modificateur ?
         │
         ├─ NON → Collecter plus de données avant de configurer les modificateurs
         │
         └─ OUI → Calculer le modificateur de départ avec la méthode d'analyse.
                   Plafonner à +/-30%. Ré-analyser après 2 semaines.
```

---

## Erreurs courantes

| Erreur | Problème | Solution |
|---------|---------|-----|
| Mettre des modificateurs sur des campagnes Stratégies d'enchères intelligentes | Tous les modificateurs sauf appareil -100% sont ignorés, crée une fausse confiance | Retirer tous les modificateurs non-appareil des campagnes Stratégies d'enchères intelligentes |
| Additionner les modificateurs mentalement | +20% appareil et +30% localisation font +56%, pas +50% | Toujours calculer de manière multiplicative |
| Mettre des modificateurs avec des données insuffisantes | Moins de 100 clics par segment produit une analyse peu fiable | Attendre 100+ clics par segment avant d'ajuster |
| Mettre des modificateurs initiaux extrêmes (>30%) | Le dépassement cause des variations de performance et rend l'affinement itératif plus difficile | Plafonner les modificateurs initiaux à +/-30%, puis ajuster par incréments |
| Mettre -90% sur les données démographiques Inconnu | Le segment Inconnu représente souvent 30-50% du trafic, vous perdez une couverture massive | Ne réduire Inconnu que si les données le justifient clairement, et jamais en dessous de -50% |
| Oublier de ré-analyser après les changements | Les conditions du marché évoluent, et des modificateurs périmés dégradent la performance | Planifier une ré-analyse toutes les 2-4 semaines |
| Utiliser les modificateurs comme substitut à la structure de campagne | Superposer de nombreux modificateurs crée une complexité difficile à maintenir | Utiliser des campagnes séparées pour des audiences ou localisations fondamentalement différentes |

---

## Documents liés

| Document | Relation |
|----------|-------------|
| [Stratégies d'enchères intelligentes Mechanics Reference](<Enchères - Mécanismes des stratégies d'enchères intelligentes.md>) | Comment Stratégies d'enchères intelligentes gère les signaux en interne, incluant les ajustements d'enchère |
| [Bidding Configuration Guidelines](<Enchères - Configuration des enchères.md>) | Paramètres recommandés pour les ajustements d'enchère et règles de valeur de conversion |
| [Google Ads Metrics Reference](<../optimisation/Optimisation - Alertes et règles Google Ads.md>) | Définitions des métriques utilisées dans l'analyse des modificateurs (CPA, ROAS, clics) |
| [Bid Strategy Selection Reference](<Enchères - Sélection de stratégie d'enchères.md>) | Quelle stratégie sélectionner par type de campagne |
| [Bid Targets Reference](<Enchères - Cibles d'enchères.md>) | Comment calculer les cibles CPA/ROAS qui alimentent les décisions de modificateurs |
| [Bidding Strategy Mental Model](<Enchères - Stratégie d'enchères.md>) | Cadre conceptuel pour la place des modificateurs dans la hiérarchie des enchères |
