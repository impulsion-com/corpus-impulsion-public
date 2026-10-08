# Scaling de campagne

> **Plateforme :** Google Ads
> **Catégorie :** Strategie
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Ce document vous aide à décider comment faire croître un compte Google Ads en choisissant le bon axe de scaling en fonction de la maturité du compte, de la performance actuelle et de la marge de progression disponible.

> ❓ **La question centrale :** Faut-il scaler verticalement (plus de résultats avec ce qui fonctionne), horizontalement (expansion vers de nouveaux territoires), ou diagonalement (lancer de nouveaux types de campagnes), et dans quel ordre ?

La plupart des comptes stagnent parce qu'ils essaient de scaler dans la mauvaise direction. Ils lancent PMax avant que Search soit prouvé, élargissent les mots-clés avant que les budgets soient déplafonnés, ou ajoutent du Display avant que le suivi des conversions soit mature. Ce document vous donne une approche séquencée : scaler ce qui fonctionne d'abord, puis élargir la portée, puis diversifier l'inventaire.

---

## Ce que ce modèle NE couvre PAS

Ce document NE couvre PAS :

- Les procédures étape par étape d'ajustement des enchères ou budgets (Voir : [SOP - Scaler encheres et budgets](<../encheres/Enchères - Scaler les enchères et budgets.md>))
- L'explication des mécaniques du compromis croissance-efficacité (Voir : [Bid Scaling Mental Model](<../encheres/Enchères - Scaling des enchères.md>))
- Le calcul ou l'allocation de budget (Voir : [Budget Allocation Mental Model](<../../01-strategie/analyse/Analyse - Allocation de budget.md>))
- La définition des fréquences de vérification d'optimisation (Voir : [Optimization Cadence Mental Model](<Strategie - Cadence d'optimisation.md>))
- Le remplacement de la méthode More/Better/New (Voir : [Volume vs. efficiency (more/better/new)](<../../01-strategie/fondamentaux/Fondamentaux - Volume vs efficacité (More Better New).md>))

---

## Les trois axes de scaling

Chaque action de croissance dans Google Ads se situe sur l'un de ces trois axes. Les axes sont séquentiels : chacun débloque le suivant.

| Axe | Direction | Ce que ça signifie | Levier de croissance | Prérequis |
|-----|-----------|---------------------|---------------------|-----------|
| **Vertical** | Vers le haut | Obtenir plus de résultats avec ce qui fonctionne déjà | Plus de budget, objectifs plus souples, taux d'impression plus élevé | Campagnes prouvées avec une efficacité stable |
| **Horizontal** | Vers l'extérieur | Étendre la portée vers de nouvelles audiences, requêtes ou zones géographiques | Nouveaux mots-clés, types de correspondance, zones géo, segments d'audience | Scaling vertical épuisé ou rendements décroissants |
| **Diagonal** | Nouveau | Lancer des types de campagnes ou sources d'inventaire entièrement nouveaux | PMax, Demand Gen, Display, Video | Scaling horizontal plafonné, infrastructure de mesure mature |

> ⚠️ **Les axes sont séquentiels, pas parallèles :** Vertical d'abord, horizontal ensuite, diagonal en dernier. Sauter des étapes crée une croissance fragile bâtie sur des fondations non prouvées.

---

## Axe 1️⃣ : Scaling vertical

*"Obtenir plus de ce qui fonctionne déjà".*

Le scaling vertical est le levier de croissance le plus sûr. Vous avez des campagnes prouvées avec une efficacité saine et vous les poussez plus fort pour capturer plus de volume sur le même inventaire.

### Actions

| Action | Comment ça scale | Métrique à surveiller |
|--------|------------------|----------------------|
| Augmenter les budgets quotidiens | Déplafonne la diffusion sur les campagnes prouvées | IS (Budget), dépense quotidienne, stabilité CPA/ROAS |
| Relever le CPA cible / baisser le ROAS cible | Permet d'enchérir dans des enchères plus coûteuses | CPA incrémental, courbe de profit net |
| Capturer plus de taux d'impression | Gagner des enchères actuellement perdues par rang ou budget | IS (Classement), IS (Budget), CPC moyen |

### Signaux que le scaling vertical est disponible

- IS (Budget) > 10 % : les campagnes prouvées sont plafonnées par le budget
- CPA/ROAS stable au volume actuel depuis 2+ semaines
- Le simulateur d'enchères montre des conversions incrémentales à une efficacité acceptable
- Performance Planner projette une croissance dans les garde-fous
- L'utilisation du budget atteint régulièrement les limites quotidiennes

### Signaux que le scaling vertical est épuisé

- IS (Budget) proche de 0 % : les campagnes capturent déjà tout le trafic disponible lié au budget
- Chaque augmentation de budget produit proportionnellement moins de volume incrémental
- Le CPA/ROAS se dégrade au-delà des garde-fous acceptables malgré de petits incréments
- La courbe d'optimum de profit montre que vous avez dépassé le pic (Voir : [Bid Scaling Mental Model](<../encheres/Enchères - Scaling des enchères.md>))

### Garde-fous

| Garde-fou | Règle |
|-----------|-------|
| Rythme d'augmentation du budget | Maximum 20-30 % par changement, attendre un cycle de conversion avant la prochaine augmentation |
| Rythme d'ajustement des objectifs | Maximum 15-20 % par changement pour le CPA, 10-15 % pour le ROAS |
| Plancher d'efficacité | Définir un plafond CPA ou un plancher ROAS strict avant de commencer le scaling. Arrêter quand vous l'atteignez. |
| Période d'apprentissage | Ne pas évaluer les résultats pendant la période d'apprentissage après un changement d'objectif. La période d'apprentissage dure environ deux cycles de conversion, ce qui varie selon le compte (7-10 jours pour les cycles courts, 14-30+ jours pour les cycles longs). (Voir : [Stratégies d'enchères intelligentes Mechanics Reference](<../encheres/Enchères - Mécanismes des stratégies d'enchères intelligentes.md>)) |

> 💡 **Le scaling vertical est directement lié à la courbe d'optimum de profit :** Chaque changement de budget ou d'objectif vous déplace le long de cette courbe. En général, l'objectif est de trouver le pic de profit net, pas le volume maximum, bien que le bon équilibre dépende de la phase de croissance de l'annonceur et de ses objectifs stratégiques (par ex. la capture de parts de marché peut justifier de dépasser le pic de profit). (Voir : [Bid Scaling Mental Model](<../encheres/Enchères - Scaling des enchères.md>))

---

## Axe 2️⃣ : Scaling horizontal

*"Étendre la portée vers de nouveaux territoires".*

Le scaling horizontal ajoute du nouvel inventaire au sein des mêmes types de campagnes. Vous allez plus large : plus de mots-clés, des types de correspondance plus larges, de nouvelles cibles géographiques, des segments d'audience supplémentaires. La structure de campagne reste la même, mais la couverture s'étend.

### Actions

| Action | Comment ça scale | Métrique à surveiller |
|--------|------------------|----------------------|
| Élargir la couverture des mots-clés | Capturer des requêtes sur lesquelles vous n'enchérissez pas actuellement | Taux d'impression Search, volume de nouvelles requêtes, CPA des nouveaux termes |
| Élargir les types de correspondance | Passer de l'exact à l'expression ou au large pour capturer l'intention associée | Pertinence des termes de recherche, ratio de dépenses gaspillées |
| Étendre le ciblage géographique | Entrer dans de nouvelles régions, villes ou pays | Performance par zone, taux de conversion par zone géo |
| Ajouter des segments d'audience | Ajouter de nouvelles audiences (sur le marché, personnalisées, similaires) | CPA/ROAS par audience, portée incrémentale |
| Étendre la couverture produit (Shopping) | Ajouter des groupes de produits actuellement exclus ou sous-représentés | ROAS par produit, part de clics |

### Signaux que le scaling horizontal est disponible

- Scaling vertical épuisé : campagnes prouvées à ou près du plein IS, passé l'optimum de profit
- La demande de recherche existe au-delà de la couverture des mots-clés actuelle (Keyword Planner montre du volume)
- Le marché total adressable (TAM) n'est pas entièrement couvert
- Les audiences ou zones géo adjacentes montrent un potentiel de marché
- Présence de concurrents dans des segments que vous ne couvrez pas (Insights sur les enchères)

### Signaux que le scaling horizontal est épuisé

- Les nouveaux mots-clés produisent principalement des requêtes non pertinentes malgré les négatifs
- L'expansion géographique montre un CPA/ROAS systématiquement pire que les marchés principaux
- L'expansion d'audience retourne un volume incrémental décroissant
- Le TAM est entièrement couvert en mots-clés, zones géo et audiences

### Garde-fous

| Garde-fou | Règle |
|-----------|-------|
| Tester avant de s'engager | Lancer les nouveaux mots-clés, zones géo ou audiences à petit budget. Valider la performance pendant 2-4 semaines avant l'allocation complète. |
| Isolation | Utiliser des campagnes ou groupes d'annonces séparés pour les nouvelles expansions afin de ne pas polluer les données de performance prouvées |
| Gestion des négatifs | La revue hebdomadaire des termes de recherche est obligatoire pendant l'expansion horizontale. Le nouveau territoire génère de nouvelles requêtes non pertinentes. |
| Seuil de performance | Les nouvelles expansions doivent atteindre 20-30 % de l'efficacité des campagnes prouvées dans les 30 jours, sinon mettre en pause et réévaluer |

> ⚠️ **Le scaling horizontal comporte plus de risques que le vertical :** Le nouveau territoire n'est pas prouvé. Toujours isoler les nouvelles expansions pour pouvoir mesurer leur vraie performance sans contaminer les campagnes prouvées.

---

## Axe 3️⃣ : Scaling diagonal

*"Lancer de nouveaux types de campagnes et sources d'inventaire".*

Le scaling diagonal diversifie votre présence Google Ads vers des types de campagnes fondamentalement différents. Vous passez de Search à Shopping, PMax, Demand Gen, Display ou Video. Chaque type de campagne fonctionne avec des dynamiques d'enchères, des niveaux d'intention utilisateur et des attentes de performance différents.

### Actions

| Action | Comment ça scale | Métrique à surveiller |
|--------|------------------|----------------------|
| Lancer des campagnes PMax | Accéder à tout l'inventaire Google avec un ciblage automatisé | Conversions incrémentales, performance des groupes de composants, cannibalisation vs. Search |
| Lancer des campagnes Demand Gen | Atteindre les audiences sur YouTube, Discover, Gmail | Conversions post-vue, conversions assistées, efficacité CPM |
| Lancer des campagnes Display | Remarketing et prospection sur le Google Display Network | Conversions post-vue, fréquence, chemin de conversion assistée |
| Lancer des campagnes Video | Campagnes YouTube de marque et réponse directe | Taux de vue, actions gagnées, brand lift (si mesurable) |

### Signaux que le scaling diagonal est disponible

- Scaling horizontal plafonné : les types de campagnes principaux sont entièrement étendus
- L'entreprise est prête pour un investissement haut du tunnel avec des fenêtres de retour plus longues
- Le suivi des conversions est mature : enhanced conversions activé, import hors ligne fonctionnel (pour le lead gen), tous les événements clés suivis
- Le modèle d'attribution prend en compte l'influence cross-canal (attribution basée sur les données active)
- Données historiques de conversion suffisantes pour les formats axés ML (PMax a besoin de 30+ conversions/mois par campagne)

### Signaux que le scaling diagonal est prématuré

- Les campagnes Search ont encore une marge d'IS significative
- Des lacunes dans le suivi des conversions existent (événements manquants, pas d'enhanced conversions, pas d'import hors ligne)
- Moins de 50 conversions mensuelles sur l'ensemble du compte
- Pas de composants créatifs prouvés pour les formats visuels/vidéo
- L'entreprise attend les mêmes benchmarks (analyses comparatives) CPA/ROAS du haut du tunnel que de Search

### Garde-fous

| Garde-fou | Règle |
|-----------|-------|
| Fenêtre de stabilisation | Accorder 30-60 jours aux nouveaux types de campagnes pour sortir de l'apprentissage et se stabiliser. Ne pas les juger la première semaine. |
| Benchmarks séparés | Ne pas comparer PMax, Demand Gen ou Display aux benchmarks Search. Chaque format a sa propre fourchette d'efficacité réaliste. |
| Surveillance de la cannibalisation | Surveiller le taux d'impression Search et le volume de requêtes de marque avant et après le lancement de PMax. Si l'IS Search baisse sans que le volume total n'augmente, PMax cannibalise au lieu d'ajouter. |
| Protection du budget | Sanctuariser les budgets Search/Shopping prouvés. Financer le scaling diagonal avec du budget incrémental, pas en affamant les campagnes prouvées. |
| Maturité de la mesure | Ne pas lancer de campagnes diagonales sans attribution basée sur les données, enhanced conversions et fenêtres de conversion correctement configurées. |

> 💡 **Le scaling diagonal change la conversation sur la mesure :** Les types de campagnes haut du tunnel contribuent par les conversions assistées et la notoriété de marque, pas par l'efficacité directe au dernier clic. Aligner les attentes des parties prenantes avant le lancement.

---

## Cartographier la maturité du compte sur les axes de scaling

Le bon axe de scaling dépend de l'étape du cycle de vie du compte. Les étapes précoces disposent de moins d'axes.

| Étape du compte | Axes disponibles | Focus principal | Pourquoi |
|-----------------|------------------|-----------------|----------|
| **Lancement (0-30 jours)** | Aucun (Supprimer les blocages uniquement) | Configuration, tracking (suivi des conversions), collecte initiale de données | Aucune donnée de performance prouvée n'existe. Le scaling est prématuré. Se concentrer sur l'obtention de données propres. |
| **Montée en puissance (1-3 mois)** | Vertical uniquement (prudent) | Prouver les unit economics, valider la viabilité des campagnes | Vous devez confirmer que les campagnes peuvent atteindre les objectifs d'efficacité avant de pousser le volume. Petites augmentations de budget prudentes uniquement. |
| **Stable (3-12 mois)** | Vertical + Horizontal | Maximiser les campagnes prouvées, commencer à étendre la couverture | Les campagnes prouvées justifient plus de budget. Assez de données pour identifier les opportunités d'expansion. |
| **Mature (12+ mois)** | Les trois axes | Optimisation complète, tests, diversification | Le compte a prouvé sa structure principale. La mesure est mature. La diversification haut du tunnel devient viable. |

> ⚠️ **Les comptes en lancement ne scalent pas :** Pendant les 30 premiers jours, la seule action valide est de supprimer les blocages (problèmes de tracking, désapprobations, landing pages cassées) et de collecter des données de référence. Scaler un compte non prouvé amplifie les problèmes, pas les profits.

---

## Méthode de décision

Utilisez ce flux pour déterminer quel axe de scaling poursuivre ensuite.

```
Quelque chose est cassé ? (tracking, désapprobations, landing pages)
│
├─ Oui → SUPPRIMER les blocages d'abord. Pas de scaling tant que ce n'est pas résolu.
│
└─ Non
   │
   Les campagnes prouvées ont de la marge de budget ou d'IS ?
   │
   ├─ Oui → SCALER VERTICALEMENT
   │        Augmenter les budgets, assouplir les objectifs, capturer plus d'IS
   │        │
   │        Les objectifs de croissance sont toujours atteints ?
   │        ├─ Oui → Maintenir. Optimiser ce que vous avez.
   │        └─ Non → Continuer vers l'horizontal
   │
   └─ Non (vertical épuisé)
      │
      De la demande non exploitée existe ? (nouveaux mots-clés, zones géo, audiences)
      │
      ├─ Oui → SCALER HORIZONTALEMENT
      │        Étendre la couverture, tester de nouveaux territoires
      │        │
      │        Les objectifs de croissance sont toujours atteints ?
      │        ├─ Oui → Maintenir. Optimiser ce que vous avez.
      │        └─ Non → Continuer vers le diagonal
      │
      └─ Non (horizontal épuisé)
         │
         La mesure est mature + l'entreprise est prête pour le haut du tunnel ?
         │
         ├─ Oui → SCALER DIAGONALEMENT
         │        Lancer de nouveaux types de campagnes avec des benchmarks séparés
         │
         └─ Non → Corriger les prérequis d'abord
                 (mesure, composants créatifs, alignement des parties prenantes)
```

---

## Connexion avec More/Better/New

Les trois axes de scaling correspondent directement à la méthode [Volume vs. efficiency (more/better/new)](<../../01-strategie/fondamentaux/Fondamentaux - Volume vs efficacité (More Better New).md>) :

| Levier de croissance | Axe de scaling | Relation |
|---------------------|----------------|----------|
| **More** | Vertical | Pousser plus de budget et des objectifs plus souples dans les campagnes prouvées |
| **More + New** | Horizontal | Plus de volume à partir de nouveaux mots-clés, zones géo ou audiences au sein des mêmes types de campagnes |
| **New** | Diagonal | Types de campagnes entièrement nouveaux avec des dynamiques et attentes différentes |
| **Better** | Tous les axes | Les améliorations d'efficacité (landing pages, annonces, ciblage) peuvent débloquer du scaling supplémentaire sur n'importe quel axe |

La différence clé : More/Better/New diagnostique quel type de levier actionner pour un blocage spécifique. Vertical/Horizontal/Diagonal séquence la direction de la croissance au niveau du compte dans le temps.

> 💡 **Better n'est pas un axe de scaling, c'est un facilitateur de scaling :** Améliorer les taux de conversion, la qualité des annonces ou la performance des landing pages peut débloquer de la marge sur n'importe quel axe. Le travail d'amélioration doit se faire en continu parallèlement au scaling, pas comme une phase séparée.

---

## Erreurs de scaling courantes

| Erreur | Pourquoi ça échoue | Correction |
|--------|---------------------|------------|
| Lancer PMax avant que Search soit prouvé | Pas de référence pour mesurer la cannibalisation. PMax peut juste absorber les requêtes de marque. | Prouver Search d'abord, puis ajouter PMax avec une surveillance de la cannibalisation |
| Élargir les mots-clés avant de déplafonner les budgets | Répartir un budget mince sur plus d'inventaire réduit le taux d'impression sur les termes prouvés | Vertical d'abord : déplafonner les campagnes prouvées, puis étendre horizontalement |
| Scaler les budgets sans garde-fous d'efficacité | Les augmentations de budget sans plafond CPA ou plancher ROAS mènent à des coûts incontrôlés | Définir des limites d'efficacité strictes avant toute action de scaling |
| Comparer le CPA Display au CPA Search | Différents types d'inventaire ont des profils de performance fondamentalement différents | Définir des benchmarks séparés par type de campagne |
| Scaler un tunnel cassé | Plus de trafic vers une landing page cassée ou une lacune de tracking amplifie le gaspillage | Supprimer les blocages d'abord, valider le tracking, puis scaler |
| Sauter la phase de montée en puissance | Scaler avant que les unit economics soient prouvés risque d'amplifier une configuration perdante | Attendre 2-4 semaines de performance stable atteignant les objectifs avant le scaling vertical |

---

## Principes clés

1. **L'ordre compte :** Vertical avant horizontal avant diagonal. Chaque axe s'appuie sur la preuve établie par le précédent.
2. **Prouver avant de scaler :** Aucun axe ne se débloque tant que les prérequis ne sont pas remplis. Campagnes prouvées pour le vertical, vertical épuisé pour l'horizontal, mesure mature pour le diagonal.
3. **Benchmarks séparés par axe :** Le CPA Search n'est pas le CPA Shopping n'est pas le CPA PMax n'est pas le CPA Display. Chaque type de campagne a sa propre fourchette d'efficacité réaliste.
4. **Better tourne en permanence :** Les améliorations d'efficacité (annonces, landing pages, ciblage) ne sont pas une phase. Elles tournent en continu et débloquent de la marge sur l'axe que vous êtes en train de scaler.
5. **Supprimer avant de scaler :** Les blocages (lacunes de tracking, désapprobations, pages cassées) doivent être éliminés avant toute action de scaling. Le scaling amplifie les problèmes.
6. **Isoler les nouveaux territoires :** Les expansions horizontales et diagonales vont dans des campagnes ou groupes d'annonces séparés. Ne jamais laisser de l'inventaire non prouvé contaminer les données de performance prouvées.
7. **Protéger les campagnes prouvées :** Financer le nouveau scaling avec du budget incrémental, pas en affamant ce qui fonctionne déjà.

---

## Documents liés

| Document | Relation |
|----------|----------|
| [Volume vs. efficiency (more/better/new)](<../../01-strategie/fondamentaux/Fondamentaux - Volume vs efficacité (More Better New).md>) | Fondation : le document More/Better/New que ce modèle séquence en axes de scaling |
| [Bid Scaling Mental Model](<../encheres/Enchères - Scaling des enchères.md>) | Axe vertical : curseur croissance-efficacité et courbe d'optimum de profit |
| [Budget Allocation Mental Model](<../../01-strategie/analyse/Analyse - Allocation de budget.md>) | Axe vertical : calcul et allocation du budget entre les campagnes |
| [Optimization Cadence Mental Model](<Strategie - Cadence d'optimisation.md>) | Compagnon : fréquence de revue des décisions de scaling selon la maturité du compte |
| [Unit Economics Mental Model](<../../01-strategie/fondamentaux/Fondamentaux - Méthode unit economics.md>) | En amont : unit economics qui déterminent le plafond de scaling |
| [SOP - Scaler encheres et budgets](<../encheres/Enchères - Scaler les enchères et budgets.md>) | Exécution : procédure étape par étape pour les actions de scaling vertical |
| [SOP - Repartir le budget entre les campagnes](<../encheres/Enchères - Répartir le budget entre les campagnes.md>) | Exécution : distribution du budget entre les priorités de scaling |
