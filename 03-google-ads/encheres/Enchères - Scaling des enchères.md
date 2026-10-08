# Scaling des enchères

> **Plateforme :** Google Ads
> **Catégorie :** Enchères
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Ce document vous aide à comprendre la relation entre croissance et efficacité afin de trouver la bonne position sur le curseur de scaling pour n'importe quelle campagne.

> ❓ **La question centrale :** Avec quelle agressivité faut-il enchérir, et où se situe le point de profit maximum ?

Scaler les enchères et les budgets est un exercice d'équilibre. Poussez trop fort vers la croissance et vous atteignez le seuil de rentabilité. Tirez trop vers l'efficacité et le compte s'asphyxie. Ce modèle fournit le document pour naviguer dans cette tension.

---

## Ce que ce modèle NE couvre PAS

Ce document NE couvre PAS :

- Les instructions étape par étape pour modifier les objectifs d'enchères (Voir : [SOP - Scaler encheres et budgets](<Enchères - Scaler les enchères et budgets.md>))
- L'explication du calcul du CPA/ROAS/POAS de seuil de rentabilité (Voir : [Bid Targets Reference](<Enchères - Cibles d'enchères.md>))
- La sélection initiale de stratégie d'enchères (Voir : [Bidding Strategy Mental Model](<Enchères - Stratégie d'enchères.md>))
- L'explication de l'allocation budgétaire depuis zéro (Voir : [Budget Allocation Mental Model](<../../01-strategie/analyse/Analyse - Allocation de budget.md>))

---

## Le curseur croissance-efficacité

Chaque objectif d'enchère vous positionne quelque part sur un spectre entre croissance maximale et efficacité maximale :

```
◄──────────────────────────────────────────────────────────►
100% PAR                    50% PAR                    1% PAR
CROISSANCE                 ÉQUILIBRÉ                 EFFICACITÉ
Volume maximum          Optimum de profit          Zone d'asphyxie
Zone de rentabilité     Point idéal                Sous-investissement
Zéro profit             Durable                    Le volume s'assèche
```

**PAR = Profit-to-Acquisition Ratio (ratio profit/acquisition) :** le pourcentage du profit brut réinvesti dans Google Ads pour l'acquisition.

| PAR | Ce que ça signifie | Risque |
|-----|---------------------|--------|
| **100 %** | Tout le profit va à l'acquisition. On opère au seuil de rentabilité. Enchère maximale soutenable. | Zéro profit par conversion |
| **75 %** | Croissance agressive. Trois quarts du profit réinvestis. | Marges faibles, vulnérable aux pics de coûts |
| **50 %** | Équilibré. La moitié du profit retenu, l'autre moitié réinvestie. | Croissance modérée, profit modéré |
| **25 %** | Conservateur. La majorité du profit retenu. | Opportunités de croissance manquées |
| **10 %** | Quasi-asphyxie. Presque aucun réinvestissement. | Le volume du compte s'assèche, Stratégies d'enchères intelligentes ne peut pas optimiser |

> ⚠️ **Il n'y a pas de PAR universellement "bon" :** La bonne position dépend de vos objectifs Google Ads, de vos unit economics et des priorités de votre partie prenante. L'essentiel est de choisir délibérément, pas accidentellement.

---

## Les trois zones

### 1️⃣ Zone d'asphyxie

*"Enchérir de manière si conservatrice que le compte meurt".*

| Indicateur | Ce que vous observez |
|------------|---------------------|
| PAR en dessous de 15-20 % | Objectifs trop agressifs (CPA trop bas, ROAS trop haut) |
| Taux d'impression | En baisse, avec un IS perdu par rang élevé |
| Tendance du volume | Conversions en baisse semaine après semaine |
| Comportement du Stratégies d'enchères intelligentes | Restreint les impressions, ne trouve pas d'enchères dans l'objectif |
| Utilisation du budget | Sous-dépense systématique du budget quotidien |

**Que faire :** Augmenter les objectifs CPA ou diminuer les objectifs ROAS par incréments de 10-15 %. Surveiller la reprise du taux d'impression.

### 2️⃣ Zone d'optimum de profit

*"Le point idéal où le profit net est maximisé".*

| Indicateur | Ce que vous observez |
|------------|---------------------|
| PAR entre 30-70 % | Les objectifs permettent des enchères compétitives avec un profit significatif |
| Profit net | Au ou proche de son pic quand modélisé sur différents scénarios |
| Volume | Suffisant pour atteindre les objectifs de croissance |
| Efficacité | Dans les garde-fous acceptables |
| Utilisation du budget | Dépense proche du budget quotidien sans atteindre systématiquement les limites |

**Comment le trouver :** Exécuter plusieurs scénarios de simulateur d'enchères à différents niveaux de CPA/ROAS/POAS. Tracer le profit net (valeur de conversion moins coût) pour chacun. Le pic est votre optimum de profit.

### 3️⃣ Zone de seuil de rentabilité

*"Volume maximum, zéro profit".*

| Indicateur | Ce que vous observez |
|------------|---------------------|
| PAR proche de 100 % | Tout le profit réinvesti, approche du CPA/ROAS de seuil de rentabilité |
| Coût par acquisition | Proche ou au niveau du seuil de rentabilité |
| Volume | Maximum atteignable aux conditions actuelles du marché |
| Profit | Proche de zéro ou négatif |
| Métriques d'efficacité | CPA en hausse / ROAS en baisse vers les seuils de rentabilité |

**Que faire :** N'opérer ici que temporairement et délibérément (entrée sur un nouveau marché, défense concurrentielle). S'assurer que la partie prenante comprend et approuve l'opération à zéro profit.

---

## La courbe d'optimum de profit

Quand vous tracez le profit net en fonction de l'agressivité des enchères (objectif CPA plus bas ou objectif ROAS plus bas), vous obtenez une courbe :

```
Profit net
    │
    │        ╭────╮
    │       ╱      ╲
    │      ╱        ╲
    │     ╱          ╲
    │    ╱            ╲
    │   ╱              ╲
    │  ╱                ╲
    │ ╱                  ╲
    │╱                    ╲
────┼──────────────────────╲──────
    │                        ╲
    │ Zone             Optimum    Seuil de
    │ d'asphyxie       Zone       rentabilité
    │
    └──────────────────────────────────►
         Plus efficient ──── Plus agressif
         (ROAS plus haut)    (ROAS plus bas)
```

La courbe existe parce que :

- **Trop efficient :** volume restreint, opportunités manquées, coût par conversion incrémentale élevé
- **À l'optimum :** assez de volume pour atteindre les objectifs, assez de marge pour profiter
- **Trop agressif :** chaque conversion incrémentale coûte plus qu'elle ne rapporte, les rendements décroissants érodent le profit

---

## Trouver votre optimum de profit

L'optimum de profit se trouve en modélisant le profit net sur plusieurs scénarios d'objectifs et en identifiant le pic. Deux outils aident à cela :

### Simulateurs d'enchères

Les simulateurs d'enchères modélisent ce qui se passerait à différents niveaux d'objectifs pour une campagne ou un portefeuille donné. Le résultat clé est la valeur de conversion projetée et le coût pour chaque scénario, à partir desquels vous calculez le profit net (valeur de conversion moins coût). Le scénario où le profit net culmine est votre optimum de profit.

### Performance Planner

Performance Planner modélise des scénarios prospectifs entre campagnes ou portefeuilles à différents niveaux d'objectifs d'efficacité. Comme les simulateurs d'enchères, la valeur réside dans le calcul du profit net par scénario et la recherche du pic.

### Pourquoi les expérimentations comptent

Les deux outils supposent des conditions optimales. Le modèle prédit que la performance réelle diffère souvent des projections à cause du délai de conversion, du comportement des concurrents et de la saisonnalité. Une expérimentation de campagne 50/50 sur 30+ jours produit des données concluantes que les projections ne peuvent pas fournir.

> ↪️ **Pour l'analyse d'optimum de profit étape par étape :** Voir [SOP - Scaler encheres et budgets](<Enchères - Scaler les enchères et budgets.md>)

---

## Principes de scaling

### Pourquoi les changements incrémentaux comptent

Stratégies d'enchères intelligentes apprend à partir des patterns de données récentes. Le modèle prédit que les changements importants (supérieurs à 20-30 %) redéclenchent la période d'apprentissage, causant une volatilité temporaire. Des incréments plus petits (10-20 %) permettent à l'algorithme de s'adapter sans réinitialiser ses signaux d'optimisation. Scaler vers le haut tolère des incréments légèrement plus grands que scaler vers le bas, parce qu'assouplir les objectifs élargit le pool d'enchères disponibles, tandis que resserrer les objectifs le restreint.

### Quand scaler vers le haut (plus agressif)

Le modèle suggère de scaler vers le haut quand ces conditions sont présentes :

- Les objectifs d'efficacité sont systématiquement atteints avec de la marge, indiquant que le PAR actuel est trop conservateur
- Le taux d'impression perdu par budget est élevé, signifiant que des enchères profitables sont manquées
- Les objectifs de croissance ne sont pas atteints au niveau d'enchère actuel
- Les unit economics se sont améliorés (marges plus élevées, valeurs de deal plus élevées), élargissant la marge entre l'objectif et le seuil de rentabilité
- Les simulateurs d'enchères montrent du volume incrémental à une efficacité acceptable

### Quand scaler vers le bas (plus conservateur)

Le modèle suggère de scaler vers le bas quand ces conditions sont présentes :

- Les objectifs d'efficacité sont systématiquement manqués, indiquant que le PAR est trop agressif
- Le CPA/ROAS tend vers le seuil de rentabilité, érodant la profitabilité
- Le taux de conversion est en baisse (investiguer la cause racine d'abord : le problème n'est peut-être pas les enchères)
- La partie prenante exige une profitabilité plus élevée, déplaçant la priorité croissance-efficacité
- La demande saisonnière est en baisse, réduisant le volume d'enchères profitables

### Quand NE PAS scaler

Le modèle prédit que scaler pendant ces conditions produit des résultats peu fiables :

- **Pendant la période d'apprentissage :** environ deux cycles de conversion après des changements majeurs. L'algorithme est encore en calibration.
- **Pendant la fenêtre de délai de conversion :** les conversions n'ont pas encore été attribuées. Attendre 1-2 cycles de conversion pour des données complètes.
- **Quand des problèmes de suivi des conversions sont présents :** des données mauvaises produisent de mauvaises décisions de scaling.
- **Quand des facteurs externes déforment temporairement les données :** vacances, pannes, promotions concurrentielles créent des anomalies qui ne reflètent pas la performance durable.

> ↪️ **Pour les tailles d'incréments spécifiques et les étapes d'exécution :** Voir [SOP - Scaler encheres et budgets](<Enchères - Scaler les enchères et budgets.md>)

---

## La connexion aux unit economics

Votre plafond de scaling est déterminé par vos unit economics :

| De meilleurs unit economics permettent | De moins bons unit economics restreignent |
|-----------------------------------------|------------------------------------------|
| CPA de seuil de rentabilité plus bas (plus de marge) | CPA de seuil de rentabilité plus haut (moins de marge) |
| ROAS de seuil de rentabilité plus haut (moins restrictif) | ROAS de seuil de rentabilité plus bas (doit être plus agressif) |
| PAR plus bas nécessaire pour la même croissance | Doit pousser le PAR vers 100 % pour toute croissance |
| Zone d'optimum de profit confortable | Optimum de profit étroit ou inexistant |

**Si vous ne pouvez pas atteindre les objectifs de croissance même à 100 % PAR (seuil de rentabilité),** le problème n'est pas les enchères. Le problème ce sont les unit economics : la valeur moyenne de deal, les marges bénéficiaires ou les taux de conversion doivent être améliorés.

(Voir : [Unit Economics Mental Model](<../../01-strategie/fondamentaux/Fondamentaux - Méthode unit economics.md>))

---

## Application pratique

### Scénario : Compte orienté croissance

Quand l'objectif est d'augmenter le volume de conversions (par ex. +30 % ce trimestre), le modèle prédit que vous devez déplacer le curseur PAR vers la croissance :

- **Le PAR actuel détermine la marge :** un PAR de 40 % a de la place pour pousser vers 60 % avant d'approcher le seuil de rentabilité. Un PAR de 80 % n'a presque plus de marge.
- **Les simulateurs d'enchères révèlent le compromis :** modéliser un objectif CPA plus élevé montre combien de conversions incrémentales le sacrifice de marge achète. Si le volume incrémental justifie le coût de marge, le mouvement a du sens.
- **Les expérimentations valident le modèle :** quand le changement proposé est important (déplacement de plus de 20 % du PAR), le modèle est moins fiable et une expérimentation produit de meilleures données qu'une projection.

### Scénario : Compte orienté efficacité

Quand l'objectif est d'améliorer le ROAS tout en maintenant le volume (par ex. +15 % ROAS ce trimestre), le modèle prédit que vous devez déplacer le curseur PAR vers l'efficacité :

- **Le PAR actuel détermine le risque :** un PAR de 70 % a de la place pour reculer vers 55 %. Un PAR de 30 % est déjà conservateur et resserrer davantage risque l'asphyxie.
- **Les garde-fous de croissance empêchent l'asphyxie :** le modèle prédit que resserrer les objectifs d'efficacité réduit le volume. Si le volume projeté passe en dessous du garde-fou de croissance, le resserrement est allé trop loin.
- **Cadence par cycle de conversion :** le modèle fonctionne mieux quand les changements sont espacés d'au moins un cycle de conversion, permettant des données d'attribution complètes avant le prochain ajustement.

### Scénario : Trouver l'optimum de profit

Quand l'objectif est de maximiser le profit net sur un portefeuille, le modèle prédit que chaque campagne a un pic unique sur la courbe de profit :

- **Plusieurs scénarios révèlent la courbe :** modéliser 5-7 niveaux d'objectifs par campagne produit assez de points de données pour identifier où le profit net culmine.
- **Le pic varie par campagne :** les campagnes à haut volume ont souvent une zone d'optimum large, tandis que les campagnes à faible volume ont un pic étroit ou instable.
- **Les expérimentations confirment le pic :** les simulateurs d'enchères estiment la courbe, mais les expérimentations réelles (split 50/50, 30+ jours) confirment si l'optimum projeté tient.

> ↪️ **Pour l'exécution du scaling étape par étape :** Voir [SOP - Scaler encheres et budgets](<Enchères - Scaler les enchères et budgets.md>)

---

## Principes clés

1. **Croissance et efficacité sont en tension :** Vous ne pouvez pas maximiser les deux. Choisissez votre priorité, utilisez l'autre comme garde-fou.
2. **Le PAR est votre levier de contrôle :** Ajustez-le délibérément en fonction des objectifs, pas réactivement en fonction des fluctuations à court terme.
3. **Les rendements décroissants sont réels :** Chaque conversion incrémentale coûte plus que la précédente. Trouvez l'optimum, pas le maximum.
4. **Les unit economics fixent le plafond :** Si le seuil de rentabilité ne supporte pas vos objectifs de croissance, corrigez le modèle économique, pas les enchères.
5. **Toujours valider avec des expérimentations :** Les prévisions sont directionnelles. Les expérimentations sont concluantes.

---

## Modes d'échec

| Échec | Ce qui se passe | Comment prévenir |
|-------|-----------------|------------------|
| **Scaler sans connaître son PAR** | Les changements sont arbitraires parce que vous ne savez pas à quelle distance vous êtes du seuil de rentabilité ou de l'asphyxie | Calculer le PAR avant toute décision de scaling : CPA actuel (ou inverse du ROAS) divisé par le CPA de seuil de rentabilité (ou inverse du ROAS) |
| **Scaler trop vite** | Les changements d'objectifs importants redéclenchent l'apprentissage de Stratégies d'enchères intelligentes, causant 1-2 semaines de performance volatile | Garder les incréments dans les 10-20 % par ajustement et attendre un cycle de conversion complet entre les changements |
| **Scaler pendant la période d'apprentissage** | Les données de performance sont instables, donc la décision de scaling est basée sur du bruit plutôt que du signal | Ne jamais scaler pendant la période d'apprentissage, la fenêtre de délai de conversion ou les incidents de tracking |
| **Ignorer les rendements décroissants** | Chaque conversion incrémentale coûte plus que la précédente, érodant finalement tout le profit | Modéliser la courbe de profit avec les simulateurs d'enchères avant de scaler : la courbe montre où le volume incrémental cesse d'être profitable |
| **Blâmer les enchères quand les unit economics sont le problème** | Le scaling ne peut pas corriger un modèle économique où le CPA de seuil de rentabilité est trop bas ou les marges trop minces pour supporter n'importe quel PAR | Si même 100 % PAR (seuil de rentabilité) ne permet pas d'atteindre les objectifs de croissance, la contrainte ce sont les unit economics, pas les enchères |

---

## Documents liés

| Document | Relation |
|----------|----------|
| [Bidding Strategy Mental Model](<Enchères - Stratégie d'enchères.md>) | En amont : sélection de stratégie avant le scaling |
| [Budget Allocation Mental Model](<../../01-strategie/analyse/Analyse - Allocation de budget.md>) | Parallèle : le dimensionnement du budget complète le scaling des enchères |
| [Bid Targets Reference](<Enchères - Cibles d'enchères.md>) | Calculs de seuil de rentabilité et d'objectifs qui bornent le scaling |
| [Bid Simulator Reference](<Enchères - Simulateur d'enchères.md>) | Outil utilisé pour modéliser les scénarios d'optimum de profit |
| [Unit Economics Mental Model](<../../01-strategie/fondamentaux/Fondamentaux - Méthode unit economics.md>) | En amont : marges et valeurs de deal qui fixent le plafond de scaling |
| [Unit Economics Reference](<../../01-strategie/fondamentaux/Fondamentaux - Unit economics.md>) | Calculs spécifiques pour les points de seuil de rentabilité |
| [SOP - Scaler encheres et budgets](<Enchères - Scaler les enchères et budgets.md>) | Exécute ce document étape par étape |
