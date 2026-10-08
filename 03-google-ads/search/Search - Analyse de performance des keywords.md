# Analyse de performance des keywords

> **Plateforme :** Google Ads
> **Catégorie :** Search
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Ce document fournit une méthode structurée pour évaluer la performance des keywords et décider de l'action à entreprendre sur chaque keyword de votre compte. Il répond à la question centrale :

> ❓ **La question centrale :** Compte tenu des données de volume et d'efficacité de ce keyword, quelle est la bonne action : scaler, corriger, étendre ou mettre en pause ?

La plupart des annonceurs regardent les keywords isolément, réagissant aux métriques de surface sans système. Ce modèle impose une classification en quatre quadrants qui associe chaque keyword à un parcours d'action spécifique, relie chaque action au bon bucket dans la hiérarchie des contraintes, et établit des seuils minimums de données pour ne jamais prendre de décisions sur du bruit.

> ⚠️ **Contexte Stratégies d'enchères intelligentes :** Dans les comptes utilisant le Stratégies d'enchères intelligentes (CPA cible, ROAS cible, Maximiser les conversions, Maximiser la valeur de conversion), l'algorithme gère automatiquement la plupart des décisions de quadrant au niveau des enchères. La valeur principale de l'analyse au niveau des keywords se déplace vers :
>
> 1. S'assurer que les bons keywords existent pour capter les requêtes cibles
> 2. Gérer la qualité des termes de recherche via les négatifs et les choix de types de correspondance
> 3. Identifier les problèmes structurels comme les décalages d'intention ou les lacunes de couverture
> 4. Promouvoir les termes de recherche performants comme keywords explicites
>
> Pour l'optimisation quotidienne, commencez par le rapport sur les termes de recherche et l'analyse N-gram avant de plonger dans la performance individuelle des keywords.

---

## Ce que ce modèle NE couvre PAS

Ce document NE couvre PAS :

- Les procédures de recherche de keywords étape par étape (Voir : [SOP - Rechercher des mots-cles](<Search - Rechercher des keywords.md>))
- L'explication de l'analyse des rapports de termes de recherche (Voir : [SOP - Analyser les rapports de termes de recherche](<Search - Analyser les rapports de termes de recherche.md>))
- La sélection des types de correspondance ou la syntaxe (Voir : [Match Type Reference](<Search - Types de correspondance.md>))
- Les procédures d'amélioration du Niveau de qualité (Voir : [SOP – Improve Niveau de qualité](<Search - Améliorer le Niveau de qualité.md>))
- Le remplacement du framework diagnostique des Cinq Buckets (Voir : [The five buckets & hierarchy of constraints](<../../01-strategie/fondamentaux/Fondamentaux - Les cinq catégories et la hiérarchie des contraintes.md>))

---

## La matrice de décision des keywords

Chaque keyword de votre compte tombe dans l'un des quatre quadrants basés sur deux axes : le volume de conversions (ce keyword génère-t-il des résultats ?) et l'efficacité du coût (génère-t-il des résultats de manière rentable ?).

| Quadrant | Volume | Efficacité | Action |
|----------|--------|------------|--------|
| **Q1 : Protéger et scaler** | Conversions élevées | CPA/ROAS dans la cible | Protéger la position, augmenter les enchères/budget, étendre l'impression share |
| **Q2 : Corriger la pertinence** | Conversions élevées | Mauvais CPA/ROAS | Corriger le Niveau de qualité, la landing page ou le copy d'annonce pour améliorer l'efficacité |
| **Q3 : Augmenter la visibilité** | Conversions faibles | Bonne efficacité | Augmenter les enchères, élargir le type de correspondance, augmenter l'impression share |
| **Q4 : Diagnostiquer ou mettre en pause** | Pas/très peu de conversions | Dépenses élevées | Diagnostiquer la cause racine (QS, décalage d'intention, LP) ou mettre en pause |

```
                    Haute efficacité
                    (CPA/ROAS dans la cible)
                          │
        Q3 : Augmenter    │      Q1 : Protéger
        la visibilité     │      et scaler
                          │
   Faible volume ─────────┼──────────── Fort volume
                          │
        Q4 : Diagnostiquer│      Q2 : Corriger
        ou mettre en pause│      la pertinence
                          │
                    Faible efficacité
                    (Mauvais CPA/ROAS)
```

> 💡 **Toujours comparer aux cibles de la campagne, pas aux moyennes du compte :** Un keyword à 40 EUR de CPA est excellent dans une campagne ciblant 50 EUR, mais en échec dans une campagne ciblant 25 EUR.

---

## Détail par quadrant

### Q1 : Protéger et scaler

Ce sont vos meilleurs keywords : fort volume de conversions à une efficacité acceptable. L'objectif est de maximiser leur rendement.

| Signal | Ce que vous observez |
|--------|---------------------|
| Conversions | Au-dessus de la moyenne de la campagne, constantes mois après mois |
| CPA/ROAS | Égal ou meilleur que la cible de la campagne |
| Impression share | Marge de croissance (IS < 90%) |
| Niveau de qualité | 7+ (ne fait pas monter les coûts) |

**Actions :**

1. Vérifier l'impression share : si l'IS perdu au rang > 10%, augmenter les enchères ou améliorer le Niveau de qualité
2. Vérifier l'impression share : si l'IS perdu au budget > 10%, augmenter le budget de la campagne ou isoler dans une campagne dédiée
3. Envisager d'ajouter le keyword en mot-clé exact s'il tourne actuellement en phrase/broad uniquement (protège contre le routage de requêtes vers PMax)
4. Surveiller les variantes proches pour les divergences de performance (voir l'analyse des variantes proches ci-dessous)
5. Utiliser le rapport sur les termes de recherche de ce keyword pour trouver des opportunités d'expansion

**Risque à surveiller :** La complaisance. Les keywords Q1 nécessitent toujours une revue régulière des termes de recherche. Le requête large peut silencieusement modifier le mix de requêtes sous un CPA stable.

### Q2 : Corriger la pertinence

Ces keywords génèrent des conversions mais à un coût inacceptable. Le volume prouve que la demande existe, donc la correction porte sur l'efficacité, pas l'élimination.

| Signal | Ce que vous observez |
|--------|---------------------|
| Conversions | Volume significatif (au-dessus du seuil minimum) |
| CPA/ROAS | Pire que la cible de la campagne de 30%+ |
| Niveau de qualité | Souvent en dessous de 7 (vérifier les composants) |
| CTR | Peut être bas (problème de pertinence d'annonce) ou élevé avec un mauvais CVR (problème de LP) |

**Parcours de diagnostic :**

| Vérification | Si faible | Bucket de correction |
|-------------|----------|---------------------|
| Composants du Niveau de qualité | CTR attendu bas | Créatif : améliorer le copy d'annonce, tester de nouveaux angles |
| Composants du Niveau de qualité | Pertinence d'annonce basse | Créatif : resserrer l'alignement keyword-annonce |
| Composants du Niveau de qualité | Expérience landing page basse | Conversion : améliorer la pertinence et la vitesse de la LP |
| Taux clic-conversion | CVR en dessous de la moyenne de la campagne | Conversion : décalage LP, problème d'offre ou mauvaise intention |
| Rapport sur les termes de recherche | Requêtes non pertinentes qui gonflent les coûts | Trafic : ajouter des négatifs, resserrer le type de correspondance |

**Actions :**

1. Lancer une analyse des composants du Niveau de qualité pour identifier quel facteur pénalise
2. Revoir le rapport sur les termes de recherche pour ce keyword : les requêtes correspondent-elles à l'intention ?
3. Vérifier la pertinence de la landing page : la LP adresse-t-elle directement l'intention du keyword ?
4. Si QS < 5 et pas de voie de correction claire, envisager de mettre en pause et rediriger le budget vers les keywords Q1

### Q3 : Augmenter la visibilité

Ces keywords convertissent efficacement mais produisent un volume insuffisant. L'économie unitaire fonctionne, donc l'objectif est d'obtenir plus de ce trafic.

| Signal | Ce que vous observez |
|--------|---------------------|
| Conversions | En dessous du potentiel (peu mais efficaces) |
| CPA/ROAS | Égal ou meilleur que la cible de la campagne |
| Impression share | Bas (IS < 50%) |
| Position moyenne / Top IS | Ne rivalise pas efficacement dans les enchères |

**Actions :**

1. Vérifier l'impression share perdu au rang : augmenter les enchères par incréments de 10-15%
2. Vérifier l'impression share perdu au budget : augmenter le budget de la campagne ou réallouer depuis les keywords Q4
3. Envisager d'élargir le type de correspondance (exact vers phrase, phrase vers broad avec Stratégies d'enchères intelligentes)
4. Tester le match type plus large via un test de campagne avant de s'engager
5. Chercher des variations de keywords liées à ajouter (élargir le thème)
6. Vérifier que le keyword n'est pas cannibalisé par une autre campagne ou par PMax

**Risque à surveiller :** Pousser les enchères trop agressivement peut déplacer un keyword Q3 vers Q2. Scalez progressivement et surveillez l'efficacité après chaque changement.

### Q4 : Diagnostiquer ou mettre en pause

Ces keywords dépensent de l'argent sans convertir. La question est de savoir s'ils peuvent être corrigés ou doivent être éliminés.

| Signal | Ce que vous observez |
|--------|---------------------|
| Conversions | Zéro ou quasi-zéro malgré suffisamment de clics |
| Dépenses | Significatives (au-dessus de votre seuil de coût d'exploration acceptable) |
| Niveau de qualité | Souvent bas (mais pas toujours : un QS élevé avec zéro conversion = décalage d'intention) |
| CTR | Variable : CTR élevé + zéro conversion = problème de LP/offre, CTR bas = problème de pertinence |

**Arbre de décision diagnostique :**

1. Le keyword a-t-il reçu 100+ clics avec zéro conversion ? Si non, il faut plus de données avant de juger. Si oui, continuez.
2. Le Niveau de qualité est-il en dessous de 5 ? Corrigez d'abord le QS (pertinence d'annonce, expérience LP). Un mauvais QS signifie que Google vous sert dans de mauvaises enchères.
3. Le CTR est-il raisonnable (au-dessus de la moyenne de la campagne) mais le CVR est nul ? Le problème est post-clic : landing page, offre ou décalage d'intention.
4. Revoyez les termes de recherche : les requêtes réelles sont-elles alignées avec une intention d'achat/conversion ?
5. Si le diagnostic pointe vers des problèmes corrigeables (LP, copy d'annonce, négatifs), appliquez les corrections et réinitialisez la fenêtre d'évaluation.
6. Si le diagnostic montre un décalage d'intention fondamental (requêtes informationnelles, mauvaise audience), mettez le keyword en pause.

> ⚠️ **Ne mettez pas les keywords en pause prématurément :** Un keyword avec 30 clics et zéro conversion n'a pas échoué. Il a des données insuffisantes. Appliquez les seuils minimums de données ci-dessous avant de prendre des décisions permanentes.

---

## Axes de segmentation de la performance

Quatre axes définissent comment évaluer la performance des keywords. Chaque axe révèle un type de problème différent.

| Axe | Métrique | Ce que ça révèle | Valeur diagnostique |
|-----|---------|-----------------|-------------------|
| **Volume** | Impressions, clics | Portée et engagement : Google montre-t-il ce keyword, et les utilisateurs cliquent-ils ? | Impressions basses = problème d'enchère ou de pertinence. CTR bas = décalage copy d'annonce ou keyword-annonce |
| **Efficacité** | CPA ou ROAS | Rentabilité : les conversions sont-elles rentables ? | Comparer à la cible de la campagne, jamais à la moyenne du compte |
| **Taux de conversion** | Clics vers conversions (CVR) | Pertinence post-clic : la LP tient-elle la promesse du keyword ? | CVR bas avec bon CTR = problème de landing page ou d'offre |
| **Niveau de qualité** | Note Google de 1 à 10 | Triangle de pertinence keyword-annonce-LP : le système est-il cohérent ? | En dessous de 7 = un ou plusieurs composants nécessitent une attention |

### Comment les axes interagissent

- Fort volume + faible efficacité = Q2 (corriger la pertinence)
- Faible volume + haute efficacité = Q3 (augmenter la visibilité)
- Fort volume + haute efficacité = Q1 (protéger et scaler)
- N'importe quel volume + zéro conversion + dépenses élevées = Q4 (diagnostiquer ou mettre en pause)
- Un QS bas amplifie les coûts dans tous les quadrants : corrigez le QS d'abord pour améliorer l'économie partout

> 💡 **Les types de correspondance affectent le CTR par nature :** Les keywords en requête large ont naturellement un CTR plus bas que l'mot-clé exact car ils se déclenchent sur un éventail plus large de requêtes, y compris les moins spécifiques. Un CTR de 3% en requête large peut représenter une performance globale plus forte qu'un CTR de 5% en mot-clé exact en termes de conversions totales. Quand vous comparez le CTR entre keywords, tenez toujours compte des différences de type de correspondance avant de conclure qu'un keyword sous-performe.

---

## Analyse N-gram et des termes de recherche (workflow principal)

Dans les comptes en Stratégies d'enchères intelligentes, l'analyse des termes de recherche et des N-grams est l'action d'optimisation à plus fort levier. Corriger la pertinence et la performance des termes de recherche d'abord améliore drastiquement la performance des keywords en aval. Le workflow type est :

1. Revoir le rapport sur les termes de recherche : identifier les catégories non pertinentes et ajouter des négatifs
2. Lancer une analyse N-gram : trouver les patterns de mots non-convertissants et inefficaces à travers les termes
3. Promouvoir les termes de recherche performants comme keywords explicites (mot-clé exact)
4. Laisser le Stratégies d'enchères intelligentes gérer l'optimisation des enchères pour l'ensemble de keywords nettoyé
5. Utiliser le document par quadrant (ci-dessus) pour les décisions structurelles : changements de type de correspondance, décalages d'intention, lacunes de couverture

L'analyse N-gram révèle des patterns à travers les keywords que l'analyse individuelle ne capte pas. Utilisez-la en complément de la méthode par quadrant.

### Ce que l'analyse N-gram apporte

| Pattern N-gram | Insight | Action |
|----------------|---------|--------|
| N-grams non-convertissants (combinaisons de mots qui ne convertissent jamais à travers plusieurs keywords) | Ces mots signalent une intention non pertinente quel que soit le keyword dans lequel ils apparaissent | Ajouter comme keywords négatifs (phrase ou mot-clé exact selon la spécificité) |
| N-grams performants (combinaisons de mots qui convertissent régulièrement) | Ces mots signalent une forte intention d'achat | Ajouter comme nouveaux keywords, utiliser dans le copy d'annonce, assurer la couverture LP |
| N-grams en volume croissant (combinaisons de mots apparaissant avec une fréquence croissante) | La demande du marché évolue vers ces termes | Évaluer pour la création de nouveaux keywords ou ad groups |

### Comment combiner avec le document par quadrant

1. Lancez l'analyse par quadrant sur les keywords individuels d'abord
2. Pour les keywords Q4 (diagnostiquer ou mettre en pause), lancez l'analyse N-gram sur leurs termes de recherche pour trouver quelles combinaisons échouent
3. Pour les keywords Q1 (protéger et scaler), lancez l'analyse N-gram pour trouver quelles combinaisons génèrent la meilleure performance
4. Utilisez les négatifs N-gram de manière proactive sur tous les ad groups pour prévenir le gaspillage avant qu'il ne s'accumule
5. Utilisez les N-grams performants pour alimenter l'expansion de keywords et les tests de copy d'annonce

> ↪️ **Pour l'implémentation des keywords négatifs :** Voir [Negative Keyword Reference](<Search - Mots-clés à exclure.md>)

---

## Règles de décision par segment

### Exigences minimales de données

Ne jugez jamais un keyword avant qu'il ait accumulé suffisamment de données. Les décisions prématurées basées sur de petits échantillons mènent à des faux négatifs (tuer de bons keywords) et des faux positifs (garder les mauvais).

| Décision | Données minimales | Pourquoi |
|----------|------------------|----------|
| Juger le potentiel de conversion | 100 clics | En dessous de 100 clics, un résultat de zéro conversion est statistiquement insignifiant pour la plupart des taux de conversion |
| Juger la fiabilité du CTR | 100 clics (ou 1 000+ impressions) | Le CTR se stabilise uniquement avec un volume d'impressions suffisant |
| Signaler le Niveau de qualité pour action | QS en dessous de 7 avec 100+ impressions | Le QS se met à jour lentement, nécessite du volume d'impressions pour être significatif |
| Juger la performance CPA/ROAS | 10+ conversions sur le keyword | En dessous de 10 conversions, la variance du CPA/ROAS est trop élevée pour une comparaison fiable |

> 💡 **Ajustez les seuils de clics en fonction de votre taux de conversion :** Si votre campagne convertit à 2%, 100 clics donnent un attendu de 2 conversions : vous pourriez avoir besoin de 150-200 clics pour un échantillon significatif. Si vous convertissez à 10%, 100 clics vous donnent 10 conversions attendues, ce qui est fiable.

### Seuils d'efficacité

| Métrique | Seuil | Base de comparaison |
|---------|-------|-------------------|
| CPA | Dans les 30% de la cible de la campagne | CPA cible de la campagne, pas la moyenne du compte |
| ROAS | Dans les 30% de la cible de la campagne | ROAS cible de la campagne, pas la moyenne du compte |
| Niveau de qualité | 7 ou plus | Les keywords en dessous de 7 sont signalés pour amélioration |
| Impression share | Dépend du contexte | Keywords de marque : cible 90%+. Hors marque : évaluer le coût de l'IS incrémental |

### Déclencheurs d'action

| Condition | Quadrant | Action |
|-----------|----------|--------|
| CPA/ROAS dans la cible, conversions > moyenne de la campagne | Q1 | Protéger : augmenter les enchères si IS perdu au rang > 10% |
| CPA/ROAS pire que la cible de 30%+, conversions > 5 | Q2 | Corriger : lancer le diagnostic QS, vérifier le STR, revoir la LP |
| CPA/ROAS dans la cible, conversions < 3 (avec < 100 clics) | Données insuffisantes | Attendre : accumuler plus de clics avant de classifier |
| CPA/ROAS dans la cible, conversions < 3 (avec 100+ clics) | Q3 | Étendre : augmenter les enchères, élargir le type de correspondance |
| 100+ clics, 0 conversion, dépenses > 2x le CPA cible (ou ROAS en dessous de 50% de la cible) | Q4 | Diagnostiquer : vérifier QS, STR, LP. Mettre en pause si non corrigeable |

---

## Analyse des variantes proches

La correspondance des variantes proches de Google signifie que vos keywords en exact et expression exacte se déclenchent sur des requêtes qui diffèrent du keyword littéral. Quand les variantes proches performent différemment du keyword parent, une action est nécessaire.

### Quand investiguer

| Signal | Ce que ça signifie |
|--------|-------------------|
| Une variante obtient plus de trafic que le keyword parent | Google considère la variante comme une meilleure correspondance pour les requêtes. Le parent peut sous-performer ou la variante capte une intention plus large |
| Une variante a un CPA/ROAS significativement différent (déviation de 30%+) | La variante atteint une audience ou une intention différente de celle attendue |
| Une variante a un CVR significativement différent | La landing page résonne différemment avec le trafic de la variante |

### Comment analyser

1. Tirez le rapport sur les termes de recherche filtré sur le keyword parent
2. Groupez les termes de recherche par pattern (correspondance exacte du parent vs. variantes proches)
3. Comparez la performance : CTR, CVR, CPA/ROAS pour les requêtes parent vs. les requêtes de variantes
4. Identifiez les variantes performantes et les variantes faibles

### Actions

| Constat | Action |
|---------|--------|
| Variante performante (meilleur CPA, volume significatif) | Ajouter comme son propre keyword en mot-clé exact pour la protéger et la contrôler |
| Variante faible (pire CPA, gaspille des dépenses) | Ajouter comme keyword négatif (mot-clé exact) pour la bloquer |
| La variante obtient plus de volume que le parent | Évaluer si la variante devrait devenir le keyword principal |
| Plusieurs variantes divergent | Envisager de restructurer l'ad group autour des clusters de requêtes réels |

> ↪️ **Pour les procédures d'analyse du rapport sur les termes de recherche :** Voir [SOP - Analyser les rapports de termes de recherche](<Search - Analyser les rapports de termes de recherche.md>)

---

## Principes clés

1. **Classifiez avant d'agir :** Chaque keyword appartient à un quadrant. Déterminez le quadrant avant de choisir une action. L'optimisation aléatoire gaspille du temps et du budget.
2. **Respectez les seuils minimums de données :** 100 clics avant de juger le potentiel de conversion. 10 conversions avant de juger l'efficacité. Les décisions prématurées tuent de bons keywords.
3. **Comparez aux cibles de la campagne, pas aux moyennes du compte :** Un keyword à 60 EUR de CPA est excellent dans une campagne à 75 EUR de cible et terrible dans une campagne à 40 EUR de cible. Le contexte détermine le quadrant.
4. **Corrigez en amont avant l'aval :** Si le Niveau de qualité est en dessous de 7, corrigez la pertinence avant d'augmenter les enchères. Si la landing page ne convertit pas, plus de trafic gaspille juste plus d'argent.
5. **Les variantes proches ne sont pas identiques à votre keyword :** Surveillez la performance des variantes séparément. Promouvez les gagnantes, bloquez les perdantes.
6. **Le quadrant est temporaire, pas permanent :** Les keywords bougent entre les quadrants au fur et à mesure que vous appliquez des corrections, que la concurrence change et que les saisons évoluent. Réévaluez mensuellement.
7. **Mettre en pause est une action valide :** Tous les keywords ne peuvent pas être corrigés. Quand le diagnostic montre un décalage d'intention fondamental sans voie viable vers la conversion, mettez en pause et redirigez le budget vers les keywords Q1 et Q3.

---

## Documents liés

| Document | Relation |
|----------|-------------|
| [The five buckets & hierarchy of constraints](<../../01-strategie/fondamentaux/Fondamentaux - Les cinq catégories et la hiérarchie des contraintes.md>) | En amont : système de classification des contraintes qui détermine quelle correction appliquer par quadrant |
| [Niveau de qualité Reference](<Search - Niveau de qualité.md>) | Référence : composants du QS, seuils et approche diagnostique |
| [Search Term Report Reference](<Search - Rapport sur les termes de recherche.md>) | Référence : comment lire et agir sur les données du STR |
| [Negative Keyword Reference](<Search - Mots-clés à exclure.md>) | Référence : types de keywords négatifs, comportement de correspondance et implémentation |
| [Modern Search Campaign Mental Model](<Search - Campagne Search moderne.md>) | En amont : philosophie Search globale qui façonne la stratégie de keywords |
| [Search Campaign Structure Mental Model](<Search - Structure de campagne Search.md>) | Lié : la structure de campagne affecte le contexte d'évaluation de la performance des keywords |
| [Bidding Strategy Mental Model](<../encheres/Enchères - Stratégie d'enchères.md>) | Lié : la stratégie d'enchères détermine comment les keywords rivalisent dans les enchères |
| [Match Type Reference](<Search - Types de correspondance.md>) | Référence : comportement des types de correspondance affectant quelles requêtes les keywords déclenchent |
| [SOP - Rechercher des mots-cles](<Search - Rechercher des keywords.md>) | Exécution : la recherche de keywords alimente l'ensemble initial de keywords à évaluer |
| [SOP - Analyser les rapports de termes de recherche](<Search - Analyser les rapports de termes de recherche.md>) | Exécution : procédure d'analyse STR pour le diagnostic Q2 et Q4 |
| [SOP – Improve Niveau de qualité](<Search - Améliorer le Niveau de qualité.md>) | Exécution : procédure d'amélioration du QS pour les keywords Q2 |
