# Cibles d'enchères

> **Plateforme :** Google Ads
> **Catégorie :** Enchères
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Documente les formules et méthodes de calcul pour dériver les cibles CPA, ROAS et POAS à partir des unit economics, en utilisant le ratio Profit-to-Acquisition (PAR) comme variable d'équilibrage efficacité-croissance.

---

## Ce que couvre cette fiche / Ce qu'elle ne couvre PAS

**Cette fiche :**

- Fournit les formules de calcul des cibles CPA, ROAS et POAS
- Documente les calculs de seuil de rentabilité pour le Lead Gen (tunnels 2 étapes, 3 étapes, 4 étapes) et l'E-commerce (Basique, Intermédiaire, Avancé)
- Explique comment le ratio Profit-to-Acquisition traduit les seuils de rentabilité en cibles actionnables
- Couvre la logique de cible POAS et le concept de profit optimum
- Documente le paramétrage des cibles Value-Based Bidding pour le Lead Gen
- Inclut les méthodes de validation des cibles

**Cette fiche ne couvre PAS :**

- Les concepts d'unit economics ou comment rassembler les inputs (Voir : [Unit Economics Mental Model](<../../01-strategie/fondamentaux/Fondamentaux - Méthode unit economics.md>) et [Unit Economics Reference](<../../01-strategie/fondamentaux/Fondamentaux - Unit economics.md>))
- La sélection de stratégie d'enchères ou quand utiliser CPA cible vs ROAS cible (Voir : [Bidding Strategy Mental Model](<Enchères - Stratégie d'enchères.md>))
- L'exécution pas à pas pour définir les cibles dans Google Ads (Voir : [Stratégies d'enchères intelligentes Mechanics Reference](<Enchères - Mécanismes des stratégies d'enchères intelligentes.md>))
- L'allocation ou le rythme de dépense du budget (Voir : [Budget Pacing Reference](<Enchères - Rythme de dépense.md>))
- Les tactiques de scaling des enchères (Voir : [Bid Scaling Mental Model](<Enchères - Scaling des enchères.md>))

---

## Aide-mémoire : types de cibles

| Type de cible | Formule | Cas d'usage | Secteur |
|-------------|---------|----------|----------|
| **CPA cible** | CPA de rentabilité x PAR | Optimiser le coût par conversion à une étape spécifique du tunnel | Lead Gen, SaaS |
| **ROAS cible** | ROAS de rentabilité / PAR | Optimiser le retour en revenu sur les dépenses publicitaires | E-commerce, Lead Gen (VBB) |
| **POAS cible** | Défini au-dessus de 100% selon les objectifs de croissance | Optimiser le retour en profit sur les dépenses publicitaires | E-commerce (avec suivi du profit) |

> Le PAR est la variable universelle : chaque type de cible utilise le ratio Profit-to-Acquisition pour traduire les seuils de rentabilité en cibles. La seule différence : les cibles CPA multiplient par le PAR (PAR plus bas = cible plus basse), les cibles ROAS divisent par le PAR (PAR plus bas = cible plus haute).

---

## Cibles CPA (Lead Gen)

Les cibles CPA s'appliquent quand on optimise pour un coût par conversion. Le CPA de rentabilité dépend du nombre d'étapes dans votre parcours du lead (prospect) à la vente.

### Pattern universel

```
CAC de rentabilité           = Valeur moyenne du deal x Marge de profit
CPA de rentabilité (étape N) = CPA de rentabilité (étape N+1) x Taux de conversion à l'étape N
CPA cible (toute étape)      = CPA de rentabilité (même étape) x PAR
```

### Méthode A : parcours en 2 étapes (Lead vers Deal conclu)

**Tunnel :** Lead > Deal conclu

**Inputs :**

| Input | Description | Exemple |
|-------|-------------|---------|
| Valeur moyenne du deal | Revenu par deal conclu (ou LTV client) | 2 500 € |
| Marge de profit (%) | Profit brut en pourcentage de la valeur du deal | 50% |
| Taux Lead vers Deal conclu (%) | Pourcentage de leads qui deviennent des deals conclus | 25% |
| PAR (%) | Pourcentage du profit alloué à l'acquisition | 50% |

**Calculs de rentabilité :**

| Métrique | Formule | Exemple |
|--------|---------|---------|
| CAC de rentabilité | Valeur du deal x Marge de profit | 2 500 € x 0,50 = 1 250 € |
| CPA de rentabilité : Lead | CAC de rentabilité x Taux Lead vers Deal conclu | 1 250 € x 0,25 = 312,50 € |

**Calculs de cibles :**

| Métrique | Formule | Exemple |
|--------|---------|---------|
| CPA cible : Lead | CPA de rentabilité Lead x PAR | 312,50 € x 0,50 = 156,25 € |
| CPA cible : Deal conclu | CAC de rentabilité x PAR | 1 250 € x 0,50 = 625 € |
| ROAS cible | ROAS de rentabilité / PAR | 200% / 0,50 = 400% |

### Méthode B : parcours en 3 étapes (Lead vers Lead qualifié vers Deal conclu)

**Tunnel :** Lead > Lead qualifié > Deal conclu

**Inputs :**

| Input | Description | Exemple |
|-------|-------------|---------|
| Valeur moyenne du deal | Revenu par deal conclu | 3 000 € |
| Marge de profit (%) | Pourcentage de profit brut | 50% |
| Taux Lead vers Lead qualifié (%) | Pourcentage de leads qui se qualifient | 25% |
| Taux Lead qualifié vers Deal conclu (%) | Pourcentage de leads qualifiés qui concluent | 50% |
| PAR (%) | Profit alloué à l'acquisition | 40% |

**Calculs de rentabilité :**

| Métrique | Formule | Exemple |
|--------|---------|---------|
| CAC de rentabilité | 3 000 € x 0,50 | 1 500 € |
| CPA de rentabilité : Lead qualifié | 1 500 € x 0,50 | 750 € |
| CPA de rentabilité : Lead | 750 € x 0,25 | 187,50 € |

**Calculs de cibles :**

| Métrique | Formule | Exemple |
|--------|---------|---------|
| CPA cible : Lead | 187,50 € x 0,40 | 75 € |
| CPA cible : Lead qualifié | 750 € x 0,40 | 300 € |
| CPA cible : Deal conclu | 1 500 € x 0,40 | 600 € |
| ROAS cible | (1 / 0,50) / 0,40 = 200% / 0,40 | 500% |

### Méthode C : parcours en 4 étapes (Lead vers MQL vers SQL vers Deal conclu)

**Tunnel :** Lead > MQL > SQL > Deal conclu

**Inputs :**

| Input | Description | Exemple |
|-------|-------------|---------|
| Valeur moyenne du deal | Revenu par deal conclu | 3 000 € |
| Marge de profit (%) | Pourcentage de profit brut | 50% |
| Taux Lead vers MQL (%) | Pourcentage de leads devenant MQL | 25% |
| Taux MQL vers SQL (%) | Pourcentage de MQL devenant SQL | 75% |
| Taux SQL vers Deal conclu (%) | Pourcentage de SQL qui concluent | 25% |
| PAR (%) | Profit alloué à l'acquisition | 25% |

**Calculs de rentabilité :**

| Métrique | Formule | Exemple |
|--------|---------|---------|
| CAC de rentabilité | 3 000 € x 0,50 | 1 500 € |
| CPA de rentabilité : SQL | 1 500 € x 0,25 | 375 € |
| CPA de rentabilité : MQL | 375 € x 0,75 | 281,25 € |
| CPA de rentabilité : Lead | 281,25 € x 0,25 | 70,31 € |

**Calculs de cibles :**

| Métrique | Formule | Exemple |
|--------|---------|---------|
| CPA cible : Lead | 70,31 € x 0,25 | 17,58 € |
| CPA cible : MQL | 281,25 € x 0,25 | 70,31 € |
| CPA cible : SQL | 375 € x 0,25 | 93,75 € |
| CPA cible : Deal conclu | 1 500 € x 0,25 | 375 € |
| ROAS cible | (1 / 0,50) / 0,25 | 800% |

> Choisissez la bonne complexité de tunnel : utilisez le modèle le plus simple qui correspond à votre processus de vente réel. Un modèle en 4 étapes n'est nécessaire que si vous suivez MQL et SQL comme des étapes distinctes avec des taux de conversion connus. Si vous ne suivez que les leads et les deals conclus, utilisez la méthode en 2 étapes.

---

## Cibles ROAS (E-commerce)

Les cibles ROAS s'appliquent quand on optimise pour le retour sur dépenses publicitaires basé sur le revenu. Le calcul dépend du nombre de variables de coût incluses.

### Pattern universel

```
Marge effective    = Marge de profit - Frais de commande - Coût net des retours
ROAS de rentabilité = 1 / Marge effective
ROAS cible          = ROAS de rentabilité / PAR
```

### Méthode A : Basique

Exclut les frais de commande et les coûts de retours. À utiliser quand les données de coût par commande ne sont pas disponibles.

**Inputs :**

| Input | Description | Exemple |
|-------|-------------|---------|
| Marge de profit (%) | Profit brut en % du revenu | 40% |
| PAR (%) | Profit alloué à l'acquisition | 50% |

**Calculs :**

| Métrique | Formule | Exemple |
|--------|---------|---------|
| ROAS de rentabilité | 1 / Marge de profit | 1 / 0,40 = 250% |
| ROAS cible | ROAS de rentabilité / PAR | 250% / 0,50 = 500% |

### Méthode B : Intermédiaire (avec frais de commande)

Inclut frais d'expédition, de traitement et de paiement. Exclut les coûts de retours.

**Inputs :**

| Input | Description | Exemple |
|-------|-------------|---------|
| Marge de profit (%) | Pourcentage de profit brut | 40% |
| Frais d'expédition (% du revenu) | Coût moyen d'expédition | 3% |
| Frais de traitement (% du revenu) | Entreposage et manutention | 0,5% |
| Frais de paiement (% du revenu) | Frais du prestataire de paiement | 2% |
| PAR (%) | Profit alloué à l'acquisition | 50% |

**Calculs :**

| Métrique | Formule | Exemple |
|--------|---------|---------|
| Total frais de commande | Expédition + Traitement + Paiement | 3% + 0,5% + 2% = 5,5% |
| Marge effective | Marge de profit - Total frais | 40% - 5,5% = 34,5% |
| ROAS de rentabilité | 1 / Marge effective | 1 / 0,345 = 290% |
| ROAS cible | ROAS de rentabilité / PAR | 290% / 0,50 = 580% |

> Les frais de commande sont fréquemment oubliés : beaucoup d'annonceurs e-commerce calculent le ROAS de rentabilité en utilisant uniquement leur marge produit, en ignorant les coûts d'expédition, de traitement et de paiement. Cela mène à des cibles qui semblent rentables sur le papier mais perdent de l'argent sur chaque commande.

### Méthode C : Avancée (avec frais de commande et retours)

Inclut tous les frais de commande plus le taux de retour, le taux de revente et les coûts liés aux retours.

**Inputs supplémentaires par rapport à la Méthode B :**

| Input | Description | Exemple |
|-------|-------------|---------|
| Taux de retour (%) | Pourcentage de commandes retournées | 20% |
| Taux de revente (%) | Pourcentage de retours revendables | 90% |
| Coût de traitement retour (% du revenu) | Traitement de chaque retour | 5% |
| Frais de restockage (% du revenu) | Restockage des articles retournés | 3% |
| Frais d'expédition retour (% du revenu) | Expédition retour | 3% |

**Calcul de l'impact des retours :**

| Métrique | Formule | Exemple |
|--------|---------|---------|
| Coût produit retourné | Taux retour x (1 - Marge profit) | 20% x 60% = 12% |
| Coût traitement retour | Taux retour x Coût traitement | 20% x 5% = 1% |
| Coût restockage | Taux retour x Frais restockage | 20% x 3% = 0,6% |
| Coût expédition retour | Taux retour x Expédition retour | 20% x 3% = 0,6% |
| Valeur de revente (récupérée) | Taux retour x Taux revente x (1 - Marge profit) | 20% x 90% x 60% = 10,8% |
| Coût net des retours | Coûts bruts retours - Valeur revente | 14,2% - 10,8% = 3,4% |

**Calculs finaux :**

| Métrique | Formule | Exemple |
|--------|---------|---------|
| Total frais de commande | Expédition + Traitement + Paiement | 3% + 0,5% + 1,5% = 5% |
| Marge effective | Marge profit - Frais commande - Coût net retours | 40% - 5% - 3,4% = 31,6% |
| ROAS de rentabilité | 1 / Marge effective | 1 / 0,316 = 316% |
| ROAS cible | ROAS de rentabilité / PAR | 316% / 0,50 = 632% |

> Utilisez la méthode Avancée pour les catégories à fort taux de retour : mode, chaussures et électronique ont souvent des taux de retour de 20-40%. Ignorer les coûts de retour dans ces catégories mène à des cibles ROAS qui semblent rentables mais détruisent la marge.

---

## Cibles POAS (E-commerce avec suivi du profit)

Le POAS (Profit on Ad Spend) remplace les calculs manuels de rentabilité en important le profit brut directement au niveau de la commande. Cela nécessite une solution de suivi du profit (comme Profit Metrics ou une implémentation personnalisée).

### Pourquoi 100% équivaut toujours au seuil de rentabilité

Le POAS est calculé ainsi : Profit brut / Dépenses publicitaires.

Quand le profit brut est égal aux dépenses publicitaires, le résultat est 100%. À ce point, tout le profit va à l'acquisition et le profit net est zéro. C'est vrai indépendamment du mix produit, de la variation de marge ou de la composition de la commande car le profit est calculé par commande incluant tous les coûts.

| POAS | Signification | Profit net par 100 € de dépense pub |
|------|---------|-------------------------------|
| 100% | Rentabilité : profit brut = dépense pub | 0 € |
| 150% | 50% de profit sur la dépense pub | 50 € |
| 200% | 100% de profit sur la dépense pub | 100 € |
| 250% | 150% de profit sur la dépense pub | 150 € |

### Comment définir les cibles POAS

Les cibles POAS n'utilisent pas le calculateur de rentabilité manuel car la rentabilité est déjà calculée au niveau de la commande. À la place :

1. Implémenter le suivi du profit (importer le profit brut comme valeur de conversion)
2. Suivre à la fois le revenu et le profit comme actions de conversion séparées (revenu en secondaire, profit en primaire)
3. Accumuler au moins 100 conversions pour établir votre POAS moyen
4. Définir votre cible POAS selon vos objectifs de croissance et d'efficacité
5. Valider avec le Performance Planner ou les simulateurs d'enchères

### Le profit optimum

Le profit optimum est la cible POAS qui maximise le profit net total (pas le pourcentage POAS). Le trouver nécessite de lancer plusieurs scénarios de prévision :

1. Utiliser le Performance Planner ou le simulateur d'enchères pour générer des prévisions à différentes cibles POAS
2. Exporter les données : pour chaque scénario, noter la cible POAS, le coût estimé et la valeur de conversion estimée (profit brut)
3. Calculer le profit net pour chaque scénario : Valeur de conversion - Coût
4. Tracer le profit net par rapport à la cible POAS
5. Le pic de la courbe est votre profit optimum

La courbe suit une forme prévisible : trop proche de 100% POAS (rentabilité) produit un volume élevé mais zéro profit. Une cible POAS trop haute produit un profit élevé par commande mais affame le volume. Le profit net maximum se situe entre ces extrêmes.

> Validez toujours le profit optimum avec des expériences : les prévisions du Performance Planner supposent des conditions stables. Lancez une expérience de campagne 50/50 à la cible POAS du profit optimum suggéré avant de vous engager.

### Avantages du POAS par rapport au ROAS

| Problème avec le ROAS | Comment le POAS le résout |
|--------------------|--------------------|
| Force à utiliser des marges moyennes sur les produits | Calcule la marge par commande, en tenant compte du mix produit réel |
| Ignore les frais de commande (expédition, paiement, traitement) | Inclut tous les coûts au niveau de la commande dans le calcul du profit |
| Le revenu de vente croisée / offre groupée fausse les hypothèses de marge | Attribue le profit réel de la commande indépendamment du produit cliqué |
| La segmentation par marge ne fonctionne pas car les clients achètent des produits différents de ceux qu'ils cliquent | Le profit au niveau commande supprime le besoin de segmentation par marge |
| Un ROAS élevé ne garantit pas la rentabilité | 100% POAS est toujours le seuil de rentabilité, toute valeur au-dessus de 100% est du profit |

---

## PAR : ratio Profit-to-Acquisition

Le PAR est un curseur entre 1% et 100% qui détermine quel pourcentage du profit brut vous réinvestissez dans Google Ads pour l'acquisition.

### Le concept de curseur

```
Croissance <-----------------------------------> Efficacité

100% PAR          50% PAR              10% PAR
Volume max        Équilibré            Profit max par conversion
Zéro profit       Profit modéré        Zone de privation sévère
= Rentabilité     = Durable            = Zone de famine
```

### Ce que signifie chaque niveau de PAR

| Plage PAR | Label | Effet sur les cibles | Risque |
|-----------|-------|-------------------|------|
| 80-100% | Zone de rentabilité | Cibles CPA proches de la rentabilité, cibles ROAS proches du ROAS de rentabilité | Profit zéro ou négatif, non durable à long terme |
| 50-80% | Orientation croissance | Cibles modérées, priorise le volume sur la marge | Profit par conversion plus faible, nécessite de solides unit economics |
| 30-50% | Équilibré | Cibles compétitives avec un profit significatif retenu | Durable pour la plupart des comptes |
| 10-30% | Orientation efficacité | Cibles conservatrices, priorise la marge sur le volume | Peut manquer les objectifs de croissance, risque de famine |
| 1-10% | Zone de famine | Cibles extrêmement serrées, profit par conversion quasi maximal | Sous-investissement sévère, volumes s'assèchent, compte décline |

### Comment les objectifs déterminent le PAR

Le bon PAR dépend de vos objectifs Google Ads, spécifiquement l'équilibre entre votre objectif de croissance et votre objectif d'efficacité.

**Quand la croissance est l'objectif principal :** Commencez par l'objectif de croissance (ex : 3 000 ventes/mois). Utilisez le Performance Planner pour trouver quelle cible d'efficacité vous permet d'atteindre ce volume. Calculez le PAR implicite. Si le PAR dépasse 80%, vos unit economics ne supportent peut-être pas l'objectif de croissance.

**Quand l'efficacité est l'objectif principal :** Commencez par la cible d'efficacité (ex : 250% ROAS). Utilisez le Performance Planner pour vérifier que le volume résultant atteint votre objectif de croissance secondaire. Calculez le PAR implicite. Si les volumes sont insuffisants, augmentez le PAR (relâchez l'efficacité) jusqu'à atteindre les objectifs de croissance.

> Ayez toujours les deux objectifs croissance et efficacité : piloter en aveugle sur l'efficacité seule risque la famine. Piloter en aveugle sur la croissance seule risque des dépenses non rentables. Le PAR existe pour les équilibrer.

### Formule du PAR par type de cible

| Type de cible | Formule | Direction |
|-------------|---------|-----------|
| CPA cible | CPA de rentabilité x PAR | PAR plus bas = cible CPA plus basse (plus serrée) |
| ROAS cible | ROAS de rentabilité / PAR | PAR plus bas = cible ROAS plus haute (plus serrée) |
| POAS cible | Défini directement selon la validation de croissance | PAR plus bas = cible POAS plus haute |

---

## Cibles Value-Based Bidding (Lead Gen)

Le Value-Based Bidding (VBB) permet d'optimiser pour la valeur de conversion plutôt que le nombre de conversions. Pour le Lead Gen, cela signifie enchérir vers des deals de plus haute valeur plutôt que juste plus de leads.

### Prérequis

- L'Offline Conversion Tracking (OCT) doit être implémenté
- Importer des valeurs de conversion spécifiques par deal pour les actions de conversion "deal conclu"
- Pour les étapes amont du tunnel (leads, leads qualifiés), assigner des valeurs de conversion moyennes calculées en remontant depuis les valeurs de deal et les taux de conversion
- Accumuler suffisamment de données de conversion (minimum 100 conversions) avant d'expérimenter

### Définir le ROAS cible pour le VBB

Le ROAS cible pour une stratégie VBB utilise le même calculateur que les cibles ROAS standard du Lead Gen :

| Métrique | Formule |
|--------|---------|
| ROAS de rentabilité | 1 / Marge de profit |
| ROAS cible | ROAS de rentabilité / PAR |

La différence est ce que représente la valeur de conversion. En enchères standard, la valeur de conversion est une moyenne statique. En VBB, la valeur de conversion reflète la valeur réelle du deal (ou la LTV client) importée via OCT.

### Expérimenter avec le VBB

Lancez une expérience de campagne 50/50 comparant votre stratégie CPA cible actuelle à une stratégie ROAS cible (VBB) :

1. Utiliser la même action de conversion dans les deux bras (deals conclus avec valeurs dynamiques)
2. Définir le ROAS cible de l'expérience au même niveau ou en dessous du ROAS moyen que votre campagne CPA cible a atteint sur les 4 dernières semaines
3. Laisser tourner au moins 30 jours sans interruption
4. Surveiller le ROAS moyen dans votre bras de contrôle : s'il dévie du ROAS cible de l'expérience, le test devient injuste
5. Évaluer sur la valeur de conversion (pas le nombre de conversions) : le VBB devrait générer plus de valeur de conversion totale à une efficacité comparable

> Le VBB ne surperforme pas toujours le CPA cible : si l'expérience ne montre pas d'amélioration, continuez avec CPA cible pour votre action de conversion la plus basse dans le tunnel. Retestez quand le volume de conversions ou la distribution des valeurs change.

---

## Valider les cibles

### Méthodes de validation

| Méthode | Données requises | Idéal pour |
|--------|---------------|----------|
| **Performance Planner** | Campagnes actives avec 7+ jours de données | Prévoir le volume à une cible d'efficacité donnée |
| **Simulateur d'enchères** | Campagnes actives avec suffisamment de données d'impressions | Comparer les scénarios à différents niveaux de cible |
| **Données historiques** | 3+ mois d'historique de campagne | Évaluer les plages atteignables quand les outils de prévision ne sont pas disponibles |

### Processus de validation

1. Calculer vos seuils de rentabilité et cibles avec les formules ci-dessus
2. Ouvrir le Performance Planner pour le trimestre à venir
3. Entrer votre CPA cible ou ROAS cible
4. Vérifier si le volume projeté atteint vos objectifs de croissance
5. Si le volume est insuffisant : augmenter le PAR (relâcher les cibles) et refaire la prévision
6. Si le volume dépasse les objectifs avec de la marge : diminuer le PAR (resserrer les cibles) pour augmenter la rentabilité
7. Répéter jusqu'à trouver le PAR qui équilibre croissance et efficacité

### Quand les outils de prévision ne sont pas disponibles

Si le Performance Planner et les données du simulateur d'enchères ne sont pas disponibles (nouvelles campagnes, faible volume ou historique limité) :

- Examiner les 3-6 derniers mois de données de performance
- Comparer les données d'une année sur l'autre pour le contexte saisonnier
- Vérifier les métriques de taux d'impressions pour estimer le potentiel
- Surveiller les résultats de près et ajuster les cibles dans les 2-4 premières semaines selon la performance réelle

> Ne prenez pas les prévisions pour argent comptant : le Performance Planner suppose des conditions stables - pas de concurrence accrue, pas de changement de taux de conversion, pas de saturation du marché. Utilisez les prévisions comme guide directionnel, pas comme résultats garantis.

---

## Erreurs courantes

| Erreur | Problème | Solution |
|---------|---------|-----|
| Utiliser la marge de profit au lieu de la marge effective pour les cibles ROAS | Ignore les frais de commande, fixe le ROAS de rentabilité trop bas | Soustraire les coûts d'expédition, traitement et paiement avant de calculer le ROAS de rentabilité |
| Fixer des cibles sans calculer la rentabilité d'abord | Pas de point d'ancrage : vous ne savez pas si les cibles sont au-dessus ou en dessous de la rentabilité | Toujours calculer les seuils de rentabilité avant de fixer toute cible |
| PAR trop bas (sous 10%) | Zone de famine : cibles trop serrées, volumes s'assèchent, compte décline | Garder le PAR au-dessus de 20% sauf si les unit economics sont exceptionnellement solides |
| Étirer le PAR à 100% pour atteindre les objectifs de croissance | Fonctionner à la rentabilité : zéro profit, non durable | Si un PAR de 100% est nécessaire, le problème est les unit economics, pas les enchères |
| Utiliser un ROAS moyen sur des catégories de produits à marges mixtes | Sous-enchérit sur les produits à forte marge, sur-enchérit sur les produits à faible marge | Passer au POAS, ou segmenter les campagnes par tier de marge avec des cibles ROAS séparées |
| Oublier de prendre en compte les retours dans les catégories à fort taux de retour | La marge effective est plus basse que supposé, le ROAS de rentabilité est trop bas | Utiliser la méthode Avancée pour les catégories avec des taux de retour supérieurs à 10% |
| Ne pas valider les cibles par rapport aux objectifs de croissance | La cible d'efficacité peut être trop agressive, causant la famine en volume | Toujours recouper les cibles dans le Performance Planner ou les simulateurs d'enchères |
| Définir le ROAS cible du VBB plus haut que la moyenne du bras de contrôle | Crée une comparaison injuste : le VBB enchérit plus conservativement | Définir le ROAS cible du VBB au même niveau ou en dessous du ROAS moyen de votre campagne CPA cible |
| Mettre à jour les cibles sans recalculer les unit economics | Les valeurs de deal et taux de conversion changent dans le temps, rendant les anciennes cibles inexactes | Recalculer les seuils de rentabilité trimestriellement ou quand les unit economics changent significativement |

---

## Documents liés

| Document | Relation |
|----------|--------------|
| [Unit Economics Mental Model](<../../01-strategie/fondamentaux/Fondamentaux - Méthode unit economics.md>) | Cadre conceptuel expliquant pourquoi les unit economics pilotent le paramétrage des cibles |
| [Unit Economics Reference](<../../01-strategie/fondamentaux/Fondamentaux - Unit economics.md>) | Documente toutes les formules et benchmarks (analyses comparatives) d'unit economics référencés dans les calculs de rentabilité |
| [Goals and KPIs Mental Model](<../../01-strategie/objectifs/Objectifs - Objectifs et KPI.md>) | Explique l'équilibrage objectifs de croissance vs efficacité qui détermine le PAR |
| [Bidding Strategy Mental Model](<Enchères - Stratégie d'enchères.md>) | Couvre quelle stratégie d'enchères sélectionner avant de fixer les cibles |
| [Bid Scaling Mental Model](<Enchères - Scaling des enchères.md>) | Aborde comment ajuster les cibles dans le temps pour le scaling |
| [Stratégies d'enchères intelligentes Mechanics Reference](<Enchères - Mécanismes des stratégies d'enchères intelligentes.md>) | Documente comment les stratégies Stratégies d'enchères intelligentes traitent les cibles définies avec cette fiche |
| [Bid Simulator Reference](<Enchères - Simulateur d'enchères.md>) | Référence technique pour les outils de simulation d'enchères utilisés dans la validation des cibles |
| [Budget Pacing Reference](<Enchères - Rythme de dépense.md>) | Couvre la gestion du budget qui accompagne le paramétrage des cibles |
| [SOP - Calculer et valider les unit economics](<../../01-strategie/analyse/Analyse - Calculer et valider les unit economics.md>) | Exécution pas à pas pour rassembler les inputs d'unit economics nécessaires ici |
