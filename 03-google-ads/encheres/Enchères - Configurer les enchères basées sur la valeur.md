# Configurer les enchères basees sur la valeur (Max Conv Value / ROAS cible / POAS)

> **Plateforme :** Google Ads
> **Catégorie :** Enchères
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Phase 1️⃣ : Vérifier le tracking des valeurs de conversion

### 1.1 Confirmer que les valeurs remontent

1. Naviguer vers le rapport de conversions de la campagne (Campagnes > Segmenter par Conversions > Action de conversion)
2. Vérifier que l'action de conversion visée apparaît dans le rapport
3. Vérifier la colonne "Conv. value" : les valeurs doivent être supérieures à zéro et refléter les montants de transaction réels
4. Si les valeurs apparaissent à zéro ou en valeur statique par défaut : corriger la transmission de valeur avant de continuer

| Type de valeur | Quoi vérifier | Source |
|------------|---------------|--------|
| Revenu | Les valeurs dynamiques correspondent aux totaux réels | Google tag, dataLayer GTM ou intégration plateforme |
| Marge brute | Les valeurs reflètent la marge, pas le revenu | Profit Metrics, solution sur mesure ou calcul server-side |
| Valeurs de deals (lead gen) | Les valeurs reflètent les montants réels depuis le CRM | Import via Offline Conversion Tracking ou API |

### 1.2 Définir la bonne action de conversion principale

1. Aller dans Paramètres campagne > Objectifs
2. Sélectionner "Utiliser les paramètres d'objectifs propres à la campagne"
3. Choisir la bonne action de conversion comme principale :
   - Pour ROAS : l'action qui suit le revenu
   - Pour POAS : l'action qui suit le profit
   - Pour lead gen VBB : l'action OCT avec valeurs de deals
4. Décocher toute action de conversion qui ne devrait pas influencer l'enchère

> ⚠️ **Mauvaise action principale = mauvaise optimisation :** Si une action de revenu est principale alors que vous visez POAS, l'algorithme optimise pour le revenu, pas le profit. Vérifier que l'action principale correspond à votre objectif.

### 1.3 Valider l'exactitude des valeurs

Contrôle ponctuel de 10-20 conversions récentes par rapport à vos données back-end :

1. Exporter les conversions récentes depuis Google Ads
2. Comparer les valeurs de conversion aux montants de transaction réels dans votre CRM, analytics ou plateforme e-commerce
3. Si les valeurs diffèrent de plus de 5% : investiguer la configuration du tracking (suivi des conversions) avant de continuer

---

## Phase 2️⃣ : Configurer la stratégie ROAS

### 2.1 Maximiser la valeur de conversion (sans cible)

Si vous avez choisi Maximiser la valeur de conversion sans cible ROAS :

**Dans l'UI Google Ads :**

1. Aller dans Paramètres campagne
2. Cliquer sur "Enchères"
3. Sélectionner "Maximiser la valeur de conversion"
4. Laisser "Définir un retour sur les dépenses publicitaires cible" non coché
5. Enregistrer

- Pas de configuration de cible nécessaire
- L'algorithme maximisera la valeur de conversion totale dans le budget quotidien
- Le budget agit comme votre seule contrainte

**Quand démarrer sans cible :**

| Scénario | Démarrer sans cible |
|----------|---------------------|
| Nouvelle campagne, pas d'historique ROAS | Oui, accumuler des données d'abord |
| Migration depuis Max Conversions vers value-based | Oui, laisser l'algorithme apprendre les patterns de valeur |
| Catalogue produit large avec AOV variables | Oui, découvrir la distribution naturelle de valeur |

### 2.2 ROAS cible

Si vous avez choisi ROAS cible :

**Dans l'UI Google Ads :**

1. Aller dans Paramètres campagne
2. Cliquer sur "Enchères"
3. Sélectionner "Maximiser la valeur de conversion"
4. Cocher "Définir un retour sur les dépenses publicitaires cible"
5. Saisir votre cible ROAS initiale (en pourcentage, ex. 400%)
6. Enregistrer

**Dans Google Ads Editor :**

1. Sélectionner la campagne
2. Changer "Type de stratégie d'enchère" en "Maximiser la valeur de conversion"
3. Régler le champ "ROAS cible"
4. Publier les changements

**Définir la cible ROAS initiale :**

1. Récupérer le ROAS moyen de la campagne sur les 2-4 dernières semaines
2. Régler la cible initiale à ce niveau ou un peu en dessous
3. Si pas d'historique : utiliser le ROAS calculé depuis la [Référence Cibles d'enchères](<Enchères - Cibles d'enchères.md>)

| Situation | Cible initiale |
|-----------|---------------|
| Campagne existante avec historique ROAS | ROAS moyen sur 2-4 dernières semaines (ou un peu en dessous) |
| Nouvelle campagne, cible calculée disponible | ROAS calculé depuis l'unit economics |
| Migration depuis Max Conv Value après collecte de données | ROAS moyen atteint en phase non plafonnée |

> 💡 **Régler la cible initiale de manière conservatrice :** Démarrer à ou légèrement en dessous de la performance actuelle. Resserrer progressivement (10-15% par ajustement) une fois l'algorithme stabilisé. Une cible agressive dès le jour 1 pousse l'algorithme à restreindre le volume trop fort.

---

## Phase 3️⃣ : Transition vers POAS

Cette phase ne s'applique que si vous passez de l'optimisation basée sur le revenu à l'optimisation basée sur le profit. Sauter si vous n'implémentez pas POAS.

### 3.1 Prérequis pour POAS

Avant de démarrer la transition, confirmer :

- [ ] Le tracking de profit est en place (Profit Metrics, solution server-side sur mesure ou équivalent)
- [ ] Une action de conversion basée profit existe dans Google Ads
- [ ] Au moins 100 conversions ont été enregistrées avec valeurs de profit
- [ ] Les valeurs de profit ont été validées contre les données back-end (Phase 1.3)

> ↪️ **Si le tracking de profit n'est pas encore configuré :** Compléter [SOP - Configurer le suivi panier et profit](<../suivi/Suivi - Configurer le suivi panier et profit.md>) d'abord, puis revenir ici après collecte de 100+ conversions basées profit.

### 3.2 Configurer les objectifs spécifiques à la campagne

1. Naviguer vers Paramètres campagne > Objectifs
2. Passer sur "Utiliser les paramètres propres à la campagne"
3. Sélectionner l'action basée profit comme principale
4. Décocher l'action basée revenu
5. Enregistrer

### 3.3 Appliquer les garde-fous de transition

Changer l'action de conversion principale change ce que l'algorithme optimise. Appliquer ces garde-fous pour éviter les variations de CPC sauvages pendant la transition :

**Étape 1️⃣ : Plafonner le budget quotidien**

Régler le budget quotidien de la campagne sur environ la dépense quotidienne moyenne des 2-4 dernières semaines. Cela empêche l'algorithme d'augmenter dramatiquement la dépense pendant qu'il ré-apprend.

**Étape 2️⃣ : Plafonner les CPC max via une stratégie portefeuille**

1. Créer une nouvelle stratégie d'enchère portefeuille avec Maximiser la valeur de conversion / ROAS cible
2. Régler une limite d'enchère CPC max dans les paramètres de la stratégie portefeuille
3. Baser le cap CPC max sur votre CPC moyen actuel + 20-30% de marge
4. Appliquer la stratégie portefeuille à la campagne

**Étape 3️⃣ : Régler la cible POAS initiale**

Les cibles POAS fonctionnent différemment des ROAS car les valeurs représentent le profit, pas le revenu :

| Cible POAS | Signification |
|-------------|---------|
| 100% | Breakeven (chaque € dépensé retourne 1 € de marge brute) |
| 150% | Pour chaque € dépensé, vous générez 1,50 € de marge brute |
| 200% | Pour chaque € dépensé, vous générez 2,00 € de marge brute |
| 300% | Pour chaque € dépensé, vous générez 3,00 € de marge brute |

Régler la cible POAS initiale selon vos objectifs de croissance :

| Objectif | Cible initiale typique |
|------|----------------------|
| Croissance agressive (maximiser le volume) | 100-150% |
| Croissance équilibrée | 150-200% |
| Conservateur (maximiser la rentabilité) | 200-300% |

Saisir la cible en pourcentage dans les paramètres de la stratégie. Si vous aviez une cible 400% ROAS et une marge moyenne de 40%, votre cible POAS équivalente est environ 160%.

### 3.4 Surveiller la transition

Pendant les 2-4 premières semaines après le passage à POAS :

| Surveiller | Seuil d'action |
|---------|-----------------|
| CPC moyen | Si les CPC montent de plus de 30% au-dessus de la moyenne historique, resserrer le cap CPC max |
| Dépense quotidienne | Si la dépense dépasse le cap budget, baisser le budget pour faire respecter la contrainte |
| Volume de conversion | Si le volume chute de plus de 40%, assouplir la cible POAS de 10-20% |
| Profit par conversion | Vérifier hebdomadairement que les valeurs s'alignent avec les données profit back-end |

Après 2-4 semaines de performance stable :

1. Retirer le cap CPC max (le relever progressivement, puis le retirer entièrement)
2. Laisser le budget s'étendre si la performance le supporte
3. Continuer à optimiser la cible POAS selon la même cadence d'ajustement de 10-15%

---

## Phase 4️⃣ : VBB pour lead gen

Cette phase ne s'applique qu'aux campagnes lead gen utilisant Offline Conversion Tracking avec valeurs de deals réelles. Sauter si vous faites de l'e-commerce.

### 4.1 Prérequis pour VBB lead gen

Avant de démarrer :

- [ ] Offline Conversion Tracking est implémenté et importe les valeurs de deals depuis le CRM
- [ ] Le délai de conversion est compris (temps entre clic et clôture du deal)
- [ ] Au moins 50 conversions avec valeurs de deals ont été importées
- [ ] La campagne actuelle tourne en CPA cible avec performance stable

> ↪️ **Si OCT n'est pas encore configuré :** Compléter [SOP - Configurer le suivi des conversions hors ligne](<../suivi/Suivi - Configurer le suivi des conversions hors ligne.md>) d'abord, puis revenir ici après collecte de données suffisantes.

### 4.2 Mettre en place l'expérimentation

Ne pas passer directement de CPA cible à ROAS cible pour le lead gen. Lancer une expérimentation :

1. Aller dans Campagnes > Expérimentations
2. Créer une nouvelle expérimentation personnalisée
3. Régler l'expérimentation à 50/50 du trafic
4. Dans le bras d'expérimentation, changer la stratégie de CPA cible vers ROAS cible (Maximiser la valeur de conversion avec une cible ROAS)
5. Régler la cible ROAS cible sur la valeur de conversion moyenne de la campagne divisée par le CPA moyen (en pourcentage)
6. Faire tourner l'expérimentation au moins 30 jours

**Calcul de la ROAS cible initiale pour lead gen :**

```
Valeur de deal moyenne par conversion : 2 000 €
CPA moyen : 200 €
tROAS initiale = (2 000 € / 200 €) x 100 = 1 000%
```

### 4.3 Évaluer l'expérimentation

Après 30+ jours, évaluer :

| Métrique | Comment comparer |
|--------|---------------|
| Valeur de conversion totale | Métrique principale : le bras ROAS cible génère-t-il plus de valeur totale ? |
| Coût par conversion | Secondaire : le CPA reste-t-il dans une fourchette acceptable ? |
| Volume de conversion | Vérifier que le volume n'a pas chuté significativement |
| Valeur par conversion | Vérifier si ROAS cible a priorisé les leads à plus forte valeur |

**Décision après expérimentation :**

| Résultat | Action |
|--------|--------|
| Le bras ROAS cible génère plus de valeur de conversion totale à CPA acceptable | Appliquer l'expérimentation (passer en ROAS cible) |
| Le bras ROAS cible génère une valeur similaire mais un volume plus faible | Garder CPA cible, retester après plus d'accumulation de données OCT |
| Le bras ROAS cible génère moins de valeur ou un CPA bien plus élevé | Garder CPA cible, le VBB ne convient peut-être pas à ce funnel pour l'instant |

> 💡 **Évaluer sur la valeur de conversion, pas que sur le CPA :** Le but du VBB pour le lead gen est de prioriser les leads à forte valeur. Un CPA légèrement plus élevé est acceptable si la valeur totale des deals augmente.

---

## Phase 5️⃣ : Gérer le learning et optimiser

### 5.1 Définir les attentes

Avant que la stratégie ne passe en production (ou après un changement majeur), briefer les parties prenantes :

- La performance fluctuera environ deux cycles de conversion (Voir : [Mécanismes Stratégies d'enchères intelligentes](<Enchères - Mécanismes des stratégies d'enchères intelligentes.md>))
- Le ROAS/POAS peut être sous la cible pendant le learning
- La valeur de conversion peut être inégale d'un jour à l'autre
- Aucun changement ne sera fait pendant cette période

### 5.2 Surveiller sans réagir

Pendant la période d'apprentissage (deux cycles de conversion) :

| À faire | À ne pas faire |
|----|--------|
| Vérifier les métriques quotidiennement pour repérer les anomalies (tracking cassé, pics CPC extrêmes) | Ajuster la cible ROAS/POAS |
| Vérifier que les valeurs de conversion remontent toujours correctement | Changer les budgets de plus de 10% |
| Noter les facteurs externes (saisonnalité, promotions, mouvements concurrents) | Ajouter ou retirer des mots-clés |
| Préparer votre premier plan d'optimisation pour l'après-learning | Paniquer si le ROAS journalier varie fortement |

### 5.3 Identifier la fin de la période d'apprentissage

La période d'apprentissage est terminée quand :

- La performance quotidienne se stabilise (moins d'écarts extrêmes d'un jour à l'autre)
- Deux cycles de conversion se sont écoulés depuis le changement de stratégie
- Au moins un cycle de conversion complet s'est écoulé

### 5.4 Ajustements post-apprentissage

Après la fin de la période d'apprentissage :

1. Récupérer les données de performance en excluant la période d'apprentissage (deux premiers cycles)
2. Exclure aussi les jours les plus récents égaux au délai de conversion (attribution incomplète)
3. Comparer ROAS/POAS réel à la cible
4. Comparer la valeur de conversion aux objectifs de croissance

| Résultat | Action |
|--------|--------|
| ROAS/POAS proche de la cible, valeur conforme aux objectifs | Pas de changement, continuer la surveillance |
| ROAS/POAS sous la cible de plus de 20% | Resserrer la cible de 10-15%, attendre un cycle de conversion |
| ROAS/POAS bien au-dessus de la cible | Envisager d'assouplir la cible pour capter plus de volume |
| Valeur sous les objectifs de croissance | Baisser la cible de 10-15% ou augmenter le budget |
| Valeur au-dessus des objectifs, ROAS/POAS dans la cible | Opportunité de resserrer la cible pour plus d'efficacité |

### 5.5 Cadence de gestion continue

| Fréquence | Action |
|-----------|--------|
| Hebdomadaire | Vérifier ROAS/POAS vs. cible, valeur de conversion totale, IS lost (budget et rank) |
| Bi-hebdomadaire | Examiner le rapport sur les termes de recherche, vérifier les anomalies CPC |
| Mensuelle | Analyser le bid simulator, comparer aux objectifs de croissance |
| Trimestrielle | Valider la cible vs. unit economics (recalculer si marges ou coûts ont changé) |

### 5.6 Exécuter la checklist post-configuration

Exécuter la [Checklist Santé de la stratégie de bid](<Enchères - [Review] Santé de la stratégie d'enchères.md>) pour confirmer que toute la configuration est correcte.

---

### Validation et critères de complétion

Cette SOP est terminée quand :

- [ ] Les valeurs de conversion remontent correctement (revenu, profit ou valeurs de deals)
- [ ] La bonne action de conversion est sélectionnée comme principale via les objectifs propres à la campagne
- [ ] La stratégie est réglée sur Maximiser la valeur de conversion, ROAS cible ou POAS
- [ ] La cible initiale est posée d'après les données calculées ou historiques
- [ ] Les garde-fous POAS sont en place (si transition de ROAS vers POAS)
- [ ] L'expérimentation lead gen tourne (si parcours VBB lead gen)
- [ ] Les clients ont été briefés sur les attentes de la période d'apprentissage
- [ ] La période d'apprentissage s'est terminée sans interférence
- [ ] L'évaluation post-apprentissage a été effectuée
- [ ] La Checklist Santé de la stratégie de bid passe

---

### Passerelle de sortie

Une fois que la stratégie est stable et l'évaluation post-apprentissage terminée :

| Délai | Action |
|-----------|--------|
| Semaine 3-4 | Faire le premier ajustement de cible si nécessaire (incréments de 10-15%) |
| Mois 2+ | Démarrer la cadence d'optimisation régulière |
| Quand le tracking de profit est prêt (si actuellement sur ROAS) | Revenir à la Phase 3 de cette SOP pour la transition POAS |
| Quand on scale au-delà de la performance actuelle | Démarrer [SOP - Scaler encheres et budgets](<Enchères - Scaler les enchères et budgets.md>) |

**En cas de problème :**

| Problème | Rediriger vers |
|-------|----------|
| ROAS/POAS ne peut pas atteindre la cible même après ajustements | [Référence Cibles d'enchères](<Enchères - Cibles d'enchères.md>) pour recalculer, puis [Modèle Mental Unit economics](<../../01-strategie/fondamentaux/Fondamentaux - Méthode unit economics.md>) |
| Volume insuffisant à n'importe quel niveau de cible | [Checklist Santé de la stratégie de bid](<Enchères - [Review] Santé de la stratégie d'enchères.md>) tableau de troubleshooting |
| Valeurs de conversion incorrectes ou manquantes | [Référence Données panier et tracking de profit](<../suivi/Suivi - Données panier et suivi du profit.md>) |
| Données OCT qui n'uploadent pas | [SOP - Configurer le suivi des conversions hors ligne](<../suivi/Suivi - Configurer le suivi des conversions hors ligne.md>) |

---

### FAQ

**Q : Faut-il démarrer en Maximiser la valeur de conversion et ajouter une cible ROAS plus tard, ou démarrer directement en ROAS cible ?**

R : Si vous avez assez d'historique (50+ conversions/mois avec valeurs) et une cible ROAS calculée, démarrer directement en ROAS cible. Si vous lancez une nouvelle campagne ou migrez depuis une stratégie de volume de conversion, commencer en Maximiser la valeur de conversion pendant 2-4 semaines pour laisser l'algorithme apprendre votre distribution de valeur, puis ajouter une cible ROAS basée sur le ROAS moyen atteint.

**Q : Quelle cible POAS de départ choisir ?**

R : 100% POAS = breakeven. Démarrer en convertissant votre cible ROAS actuelle en équivalent POAS : multiplier la cible ROAS par votre marge brute moyenne en %. Par exemple, 400% ROAS avec 40% de marge = 160% POAS. Puis ajuster selon vos objectifs de croissance. Une croissance plus agressive justifie une cible plus basse (proche de 100%), un compte profit-first justifie une cible plus haute (200-300%).

**Q : Quel est le bon moment pour passer de ROAS à POAS ?**

R : Faire la transition quand vous avez : (1) un tracking profit qui fonctionne, (2) au moins 100 conversions avec valeurs de profit enregistrées, (3) validé que les valeurs profit correspondent aux données back-end, et (4) un mix produit où la marge varie de manière significative. Si tous les produits ont la même marge, POAS et ROAS produisent les mêmes signaux d'optimisation, et la transition n'apporte rien.

**Q : Comment gérer la transition POAS pour des campagnes Shopping avec des milliers de SKU ?**

R : Le processus est identique. Les garde-fous (cap budget, cap CPC max via stratégie portefeuille) protègent des variations sauvages. Démarrer avec une campagne pour valider la transition, puis déployer sur d'autres campagnes une fois la première stabilisée. Compter 4-6 semaines par campagne pour la transition complète.

**Q : Pourquoi lancer une expérimentation pour le VBB lead gen plutôt que de basculer directement ?**

R : Les données de valeur en lead gen sont par nature plus bruyantes qu'en e-commerce (moins de conversions, lag plus long, tailles de deals variables). Une expérimentation 50/50 isole l'impact du changement de stratégie et permet de comparer la performance ROAS cible à votre baseline CPA cible prouvée. La bascule directe risque de perdre de la performance si l'algorithme n'a pas assez de signal de valeur pour optimiser efficacement.

---

### Référence rapide : bibliothèque support

| Document | Type | Utilisé dans |
|----------|------|---------|
| [Référence Cibles d'enchères](<Enchères - Cibles d'enchères.md>) | Référence | Phase 2 (cible ROAS), Phase 3 (cible POAS) |
| [Mécanismes Stratégies d'enchères intelligentes](<Enchères - Mécanismes des stratégies d'enchères intelligentes.md>) | Référence | Phase 5 (gestion de la période d'apprentissage) |
| [Référence Données panier et tracking de profit](<../suivi/Suivi - Données panier et suivi du profit.md>) | Référence | Phase 1 (vérification de valeur), Phase 3 (configuration POAS) |
| [Référence Offline Conversion Tracking](<../suivi/Suivi - Offline Conversion Tracking.md>) | Référence | Phase 4 (VBB lead gen) |
| [Checklist Santé de la stratégie de bid](<Enchères - [Review] Santé de la stratégie d'enchères.md>) | Checklist | Phase 5 (validation post-configuration) |

---

### Procédures liées

| SOP | Relation |
|-----|-------------|
| [SOP - Selectionner une strategie d'encheres](<Enchères - Sélectionner une stratégie d'enchères.md>) | Amont (détermine quelle stratégie configurer) |
| [SOP - Calculer les objectifs d'encheres](<Enchères - Calculer les objectifs d'enchères.md>) | Amont (fournit la cible ROAS/POAS) |
| [SOP - Configurer le suivi panier et profit](<../suivi/Suivi - Configurer le suivi panier et profit.md>) | Amont (requis pour le parcours POAS) |
| [SOP - Configurer le suivi des conversions hors ligne](<../suivi/Suivi - Configurer le suivi des conversions hors ligne.md>) | Amont (requis pour le parcours VBB lead gen) |
| [SOP - Configurer les encheres basees sur les conversions](<../suivi/Suivi - Configurer le suivi des conversions Google Ads.md>) | Alternative (pour les objectifs en volume de conversion) |
| [SOP - Configurer les strategies d'encheres portefeuille](<Enchères - Configurer les stratégies d'enchères de portefeuille.md>) | Conditionnel (si on utilise une stratégie portefeuille pour les caps CPC) |
| [SOP - Scaler encheres et budgets](<Enchères - Scaler les enchères et budgets.md>) | Aval (une fois la stratégie stable) |

---

### Erreurs fréquentes

| Erreur | Pourquoi ça arrive | Comment l'éviter |
|---------|----------------|--------------|
| Régler la cible ROAS cible bien au-dessus de la moyenne historique | Attentes irréalistes, analyse de données insuffisante | Régler la cible initiale à ou légèrement sous le ROAS moyen des 2-4 dernières semaines |
| Passer en POAS sans assez de conversions profit | Impatience d'optimiser sur le profit | Accumuler 100+ conversions basées profit avant de changer l'action principale |
| Pas de garde-fous pendant la transition POAS | Croire que l'algorithme va se corriger vite | Plafonner le budget quotidien et les CPC max pendant les 2-4 premières semaines |
| Sauter l'expérimentation pour le VBB lead gen | Confiance que VBB battra CPA cible | Toujours faire une expérimentation 50/50 d'au moins 30 jours |
| Mauvaise action de conversion comme principale | Oubli de basculer entre l'action revenu et profit (ou inverse) | Vérifier que les objectifs propres à la campagne correspondent à l'optimisation visée |
| Faire des changements pendant la période d'apprentissage | Pression des parties prenantes, volatilité quotidienne | Briefer en amont, s'engager sur une période sans intervention |
