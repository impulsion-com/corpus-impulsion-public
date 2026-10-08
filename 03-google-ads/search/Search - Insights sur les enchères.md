# Insights sur les enchères

> **Plateforme :** Google Ads
> **Catégorie :** Search
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Documente les métriques du rapport Insights sur les enchères, les méthodes d'accès, les règles d'interprétation et les limitations pour l'analyse concurrentielle dans Google Ads.

---

## Ce que couvre cette fiche / Ce qu'elle ne couvre PAS

**Cette fiche :**

- Documente toutes les métriques Insights sur les enchères et leurs définitions
- Explique comment accéder aux données concurrentielles et les interpréter
- Fournit les règles d'interprétation pour chaque métrique
- Couvre la disponibilité par type de campagne

**Cette fiche ne couvre PAS :**

- La stratégie concurrentielle (Voir : [SOP - Analyser les Insights sur les enchères](<Search - Analyser les Insights sur les enchères.md>))
- Les réponses d'enchères aux changements concurrentiels (Voir : [Bidding Strategy Mental Model](<../encheres/Enchères - Stratégie d'enchères.md>))
- Les rapports concurrentiels Google Merchant Center (séparés des Insights sur les enchères)

---

## Tableau de référence rapide

> Contexte de monitoring : les Insights sur les enchères sont un input de monitoring Layer 2/Layer 3. Utilisez-les pour investiguer les causes concurrentielles des changements de performance (Layer 2) et suivre la position concurrentielle par rapport aux objectifs business (Layer 3). Voir : [Account Monitoring Mental Model](<../optimisation/Optimisation - Surveillance de compte.md>).

| **Métrique** | **Définition** | **Disponible pour** | **Plage** |
|------------|----------------|-------------------|-----------|
| **Taux d'impressions (IS)** | % d'impressions reçues vs total éligible | Search, Shopping | 0-100% |
| **Taux de chevauchement** | % de fois où l'annonce d'un concurrent est apparue quand la vôtre aussi | Search, Shopping | 0-100% |
| **Taux de position supérieure** | % de fois où l'annonce d'un concurrent était affichée au-dessus de la vôtre | Search uniquement | 0-100% |
| **Taux de haut de page** | % de vos impressions affichées en haut de page | Search uniquement | 0-100% |
| **Taux de première position** | % de vos impressions affichées comme toute première annonce | Search uniquement | 0-100% |
| **Part de surclassement** | % de fois où votre annonce a été mieux classée ou affichée quand la leur ne l'était pas | Search, Shopping | 0-100% |

> Les Insights sur les enchères sont disponibles pour les campagnes Search et Shopping uniquement. Les campagnes Display, Video, Demand Gen et App n'ont pas d'Insights sur les enchères.

---

## Détail des métriques

### Taux d'impressions (IS)

**Ce que ça montre :** Le pourcentage d'impressions que vous avez reçu par rapport au nombre total d'impressions pour lesquelles vous étiez éligible.

**Comment le lire :**
- Votre propre ligne IS montre votre position concurrentielle
- L'IS du concurrent montre sa part dans les mêmes enchères
- Les valeurs IS ne totalisent pas 100% car plusieurs annonces sont affichées par enchère

**Seuils :**

| Niveau IS | Interprétation |
|----------|---------------|
| 80%+ | Position forte, capture la majorité du trafic éligible |
| 40-80% | Position modérée, marge de croissance |
| <40% | Opportunité significative manquée |

> Les changements d'IS quand le ciblage change : quand vous modifiez le ciblage (ex : mot-clé exact vers requête large, ou élargissement du ciblage géographique), votre pool d'enchères éligibles change. L'IS peut baisser parce que le marché est devenu plus grand, pas parce que vous êtes moins compétitif. Vérifiez toujours si des changements de ciblage expliquent les mouvements d'IS avant d'investiguer d'autres causes.

### Taux de chevauchement

**Ce que ça montre :** À quelle fréquence l'annonce d'un autre participant a reçu une impression dans la même enchère que la vôtre.

**Comment le lire :**
- Chevauchement élevé (70%+) = concurrent direct dans les mêmes enchères
- Chevauchement faible (<30%) = ciblage différent ou budget limité
- Chevauchement en hausse = le concurrent s'étend dans votre espace

### Taux de position supérieure

**Ce que ça montre :** À quelle fréquence l'annonce d'un autre participant était affichée dans une position supérieure à la vôtre, quand les deux annonces étaient affichées en même temps. Search uniquement.

**Comment le lire :**
- Au-dessus de 50% = le concurrent vous surclasse régulièrement
- En dessous de 50% = vous le surclassez régulièrement
- Changement rapide = le concurrent a ajusté ses enchères ou amélioré son Niveau de qualité

### Taux de haut de page

**Ce que ça montre :** À quelle fréquence votre annonce (ou celle d'un autre participant) était affichée en haut de page. Les annonces du haut sont généralement au-dessus des premiers résultats organiques, bien que les annonces du haut puissent apparaître en dessous des premiers résultats organiques pour certaines requêtes. L'emplacement est dynamique et peut changer selon la recherche de l'utilisateur.

**Comment le lire :**
- Reflète la compétitivité du classement publicitaire
- Taux de haut de page faible avec IS élevé = vos annonces sont affichées mais en positions basses
- Comparez votre taux vs les concurrents pour évaluer le positionnement relatif

### Taux de première position absolue

**Ce que ça montre :** À quelle fréquence votre annonce était affichée comme toute première annonce au-dessus des résultats de recherche organiques.

**Comment le lire :**
- La position premium, la plus précieuse pour les termes de marque
- Typiquement plus bas que le taux de haut de page
- Taux de première position élevé = combinaison forte enchère + Niveau de qualité

### Part de surclassement

**Ce que ça montre :** À quelle fréquence votre annonce était mieux classée dans l'enchère que celle d'un autre participant, ou votre annonce était affichée quand la sienne ne l'était pas.

**Comment le lire :**
- Au-dessus de 50% = vous surclassez ce concurrent plus souvent qu'à votre tour
- La métrique concurrentielle la plus complète : combine position et fréquence d'affichage
- Part de surclassement en baisse = pression concurrentielle en hausse

---

## Accéder aux Insights sur les enchères

### Depuis l'interface Google Ads

1. Naviguer vers Campagnes, Ad groups ou Keywords
2. Sélectionner les entités à analyser
3. Cliquer sur le menu trois points
4. Sélectionner "Auction insights"

### Niveaux de segmentation disponibles

| **Niveau** | **Ce que ça montre** |
|-----------|-------------------|
| Campagne | Concurrents sur tous les keywords d'une campagne |
| Ad group | Concurrents pour le ciblage d'un ad group spécifique |
| Keyword | Concurrents pour un keyword spécifique (le plus granulaire) |

### Options de plage temporelle

- Supporte les plages de dates standard Google Ads
- Segmentation par jour, semaine, mois ou trimestre
- Utilisez la segmentation temporelle pour identifier quand les changements concurrentiels ont eu lieu

---

## Règles d'interprétation

### Ce que les Insights sur les enchères peuvent vous dire

| **Signal** | **Interprétation** | **Action possible** |
|------------|-------------------|---------------------|
| Nouveau concurrent apparaissant | Quelqu'un est entré dans votre marché ou a élargi son ciblage | Surveiller l'impact sur vos KPIs |
| IS du concurrent en hausse | Il dépense plus ou améliore son Niveau de qualité | Évaluer si vos KPIs sont impactés avant de réagir |
| Votre part de surclassement en baisse | Pression concurrentielle sur les enchères ou le QS | Vérifier si le CPA/ROAS est toujours dans la cible |
| Fort chevauchement, faible position supérieure | Le concurrent est régulièrement à côté de vous mais pas au-dessus | Probablement des profils enchère/QS similaires |
| Concurrent disparu | Campagnes mises en pause, budget épuisé ou changement de stratégie | S'attendre à une possible baisse des coûts |

### Ce que les Insights sur les enchères ne peuvent PAS vous dire

| **Limitation** | **Pourquoi** |
|----------------|---------|
| Dépenses du concurrent | Google ne révèle pas les budgets des concurrents |
| Montants d'enchère du concurrent | Seul le positionnement relatif est montré |
| Niveau de qualité du concurrent | Non divulgué, uniquement impliqué par les données de position |
| Pourquoi un concurrent a changé | Pourrait être une stratégie, un budget, un effet saisonnier ou accidentel |
| Concurrents non chevauchants | Ne montre que les concurrents dans les enchères auxquelles vous avez participé |
| Concurrents PMax | L'IA ne montre pas le détail des concurrents dans PMax |

---

## Erreurs courantes

| **Erreur** | **Problème** | **Solution** |
|-------------|-------------|---------|
| Réagir sur une seule semaine de données | Les changements concurrentiels peuvent être temporaires | Comparer 4+ semaines avant de faire des changements stratégiques |
| Confondre IS et part de marché | L'IS ne couvre que les enchères pour lesquelles vous étiez éligible | Utiliser avec des données de volume de recherche pour un dimensionnement réel du marché |
| Ignorer le niveau de segmentation | Les données au niveau campagne masquent la concurrence au niveau keyword | Vérifier au niveau keyword pour une image concurrentielle précise |
| Poursuivre la position du concurrent | Une position plus haute ne signifie pas toujours un meilleur ROI | Se concentrer sur vos propres cibles CPA/ROAS, pas sur la position |
| Oublier les insights Shopping | Oublier de vérifier Shopping en parallèle de Search | Lancer les Insights sur les enchères pour les deux types de campagne |

---

## Documents liés

| **Document** | **Relation** |
|--------------|------------------|
| [Account Monitoring Mental Model](<../optimisation/Optimisation - Surveillance de compte.md>) | Cadre : auction insights comme input de monitoring Layer 2/Layer 3 |
| [SOP - Analyser les Insights sur les enchères](<Search - Analyser les Insights sur les enchères.md>) | Exécution : procédure d'analyse concurrentielle |
| [Google Ads Metrics Reference](<../optimisation/Optimisation - Alertes et règles Google Ads.md>) | Référence : taux d'impressions et métriques concurrentielles |
| [Monthly Performance Review Checklist](<../../01-strategie/reporting/Reporting - Revue de performance mensuelle.md>) | Validation : revue concurrentielle mensuelle |
| [Reporting Mental Model](<../../01-strategie/reporting/Reporting - Reporting.md>) | Fondation : type de rapport diagnostique |

---

## Détails de version

- **Changelog :** v2.0 : Seuils IS mis à jour (40%/80%), ajout callout ciblage, description haut de page mise à jour, ajout référence Account Monitoring, titres en minuscules
