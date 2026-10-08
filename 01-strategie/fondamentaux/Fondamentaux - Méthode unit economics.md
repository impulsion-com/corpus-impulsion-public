# Unit economics

> **Plateforme :** Stratégie
> **Catégorie :** Fondamentaux
> **Type :** Framework
> **Mis à jour :** 2026-05-07

## Objectif

Ce document vous aide à déterminer si les unit economics d'un business supportent des campagnes Google Ads scalables et où chercher quand les campagnes manquent de traction malgré une exécution in-platform solide.

> ❓ **La question centrale :** Les fondamentaux économiques du business donnent-ils assez de marge à ce compte pour enchérir de manière compétitive et scaler de manière profitable ?

Les unit economics déterminent la viabilité des campagnes. Des unit economics médiocres ne peuvent pas être résolus avec des optimisations Google Ads. Si les chiffres ne fonctionnent pas, les campagnes ne fonctionneront pas, peu importe le niveau de compétence du spécialiste.

---

## Ce que ce modèle NE couvre PAS

Ce document NE couvre PAS :

- Les formules pour définir les objectifs d'enchères (Voir : [Bidding Strategy Mental Model](<../../03-google-ads/encheres/Enchères - Stratégie d'enchères.md>))
- L'explication de comment configurer le suivi des conversions pour les données de revenu/profit (Voir : [Measurement Maturity Mental Model](<../reporting/Reporting - Maturité de la mesure.md>))
- Le processus de définition des objectifs qui traduit les unit economics en objectifs de campagne (Voir : [Goals and KPIs Mental Model](<../objectifs/Objectifs - Objectifs et KPI.md>))
- Le remplacement d'une analyse financière complète : ceci couvre les métriques qu'un spécialiste Google Ads doit comprendre, pas le P&L complet

---

## Le principe fondamental

Les unit economics se situent au **Pilier 3** de la formule de succès Google Ads. Ils déterminent le plafond de vos objectifs d'acquisition : votre CPL maximum, votre ROAS de seuil de rentabilité, votre CAC maximum. Chaque métrique in-platform (enchères, budgets, objectifs) découle de ces chiffres.

> ⚠️ **Si les unit economics sont cassés, scaler les campagnes ne fait que scaler les pertes :** Corrigez la source avant de toucher à Google Ads.

---

## Les unit economics par secteur

### E-commerce

| Métrique | Calcul | Ce que ça détermine |
|----------|--------|---------------------|
| **Panier moyen (AOV)** | Revenu total / nombre de commandes | Revenu par transaction, plafond d'enchère |
| **Coût des marchandises vendues (COGS)** | Coûts directs du produit par unité | Marge brute disponible pour l'acquisition |
| **Marge brute %** | (Revenu - COGS) / Revenu | Combien de chaque euro est disponible après les coûts produit |
| **ROAS de seuil de rentabilité** | 1 / Marge brute % | ROAS minimum pour ne pas perdre d'argent |
| **Marge de contribution** | Profit brut - Dépenses publicitaires | Profit réel après les coûts publicitaires |

**Le calcul du ROAS de seuil de rentabilité :**

```
ROAS de seuil de rentabilité = 1 / Marge brute %

Exemple :
Revenu par commande :      32,28 €
COGS + livraison + frais :  27,64 €
Profit brut :               4,64 €
Marge brute :               14,4 %
ROAS de seuil de rentabilité : 1 / 0,144 = 694 %

Pour gagner de l'argent (pas juste ne pas en perdre), le ROAS cible doit être plus élevé.
Si vous allouez 75 % du profit brut à l'acquisition :
ROAS cible = 1 / (Marge brute % x 0,75) = 925 %
```

**Pourquoi c'est important :** Un compte e-commerce avec 12 % de marge brute a besoin de 758 %+ de ROAS juste pour atteindre le seuil de rentabilité. C'est quasiment impossible sur du trafic non-marque. Le problème n'est pas Google Ads : c'est la structure des marges.

**Relations clés :**

- AOV plus élevé = plus de marge par clic (tolérance CPC plus élevée)
- Marge brute plus élevée = ROAS de seuil de rentabilité plus bas = plus de flexibilité d'enchère
- Les frais de livraison et de paiement mangent directement la marge brute : les inclure

### Lead Gen (B2B/B2C)

| Métrique | Calcul | Ce que ça détermine |
|----------|--------|---------------------|
| **Valeur moyenne de deal** | Revenu par deal clôturé | Plafond de revenu par client |
| **Marge bénéficiaire %** | Profit par deal / valeur du deal | Combien de chaque deal est disponible pour l'acquisition |
| **Taux de conversion lead-vente** | Deals clôturés / total des leads | Efficacité de conversion du processus de vente |
| **CPL cible** | Marge bénéficiaire x taux lead-vente | Coût maximum par lead avant de perdre de l'argent |
| **CAC (Coût d'acquisition client)** | Dépense totale d'acquisition / nouveaux clients | Coût réel d'acquisition de chaque client |

**Le calcul du CPL cible :**

```
CPL cible = Valeur du deal x Marge bénéficiaire % x Taux lead-vente

Exemple :
Valeur du deal :        10 000 €
Marge bénéficiaire :    30 % (3 000 €)
Taux lead-vente :       20 %
CPL cible :             3 000 € x 20 % = 600 €

Le CAC ne peut pas dépasser 3 000 € (la marge bénéficiaire complète).
Le CPL doit rester en dessous de 600 € pour maintenir la profitabilité.
```

**Pourquoi c'est important :** Un faible taux de conversion lead-vente compresse votre CPL cible drastiquement. Si le commercial close à 5 % au lieu de 20 %, le CPL cible passe de 600 € à 150 € pour le même deal. La contrainte n'est pas votre campagne : c'est l'équipe commerciale.

**Relations clés :**

- Valeur de deal plus élevée = plus de marge d'acquisition
- Taux lead-vente plus élevé = CPL admissible plus élevé = enchères plus compétitives
- Le CAC doit rester en dessous de la marge bénéficiaire par deal

### SaaS

| Métrique | Calcul | Ce que ça détermine |
|----------|--------|---------------------|
| **ARPU (Revenu moyen par utilisateur)** | MRR / clients payants | Fondation de revenu pour tous les calculs |
| **Durée de vie client (mois)** | 1 / taux de churn mensuel | Combien de temps le revenu afflue par client |
| **LTV (Valeur à vie)** | ARPU x durée de vie client x marge brute % | Valeur totale maximale par client |
| **CAC (Coût d'acquisition client)** | Dépense totale d'acquisition / nouveaux clients payants | Coût d'acquisition de chaque client |
| **Ratio LTV:CAC** | LTV / CAC | Indicateur de scalabilité |

**Le calcul de la LTV et du CAC max :**

```
LTV = ARPU x Durée de vie client x Marge brute %

Exemple :
ARPU :              100 €/mois
Churn mensuel :     5 % → Durée de vie client : 20 mois
Marge brute :       70 %
LTV :               100 € x 20 x 70 % = 1 400 €

Règle d'or : LTV:CAC doit être ≥ 3:1
CAC max :           1 400 € / 3 = 467 €

Si CAC = 460 €, ratio est ~3:1 → sûr
Si CAC = 1 400 €, ratio est 1:1 → zone de danger (payback de 20 mois)
```

**Pourquoi c'est important :** Une entreprise SaaS avec un churn élevé a une durée de vie client basse, qui écrase la LTV, qui compresse le CAC max. La contrainte n'est pas votre campagne Google Ads : c'est la rétention produit.

**Relations clés :**

- ARPU plus élevé = LTV plus élevée = plus de marge d'acquisition
- Churn plus bas = durée de vie plus longue = LTV exponentiellement plus élevée
- LTV:CAC en dessous de 3:1 = zone de danger, approchant 1:1 = seuil de rentabilité sur toute la durée de vie client

---

## Signaux d'alerte d'unit economics cassés

Ces symptômes ressemblent à des problèmes Google Ads mais sont en réalité des problèmes d'unit economics :

| Symptôme | À quoi ça ressemble | Vraie cause racine |
|----------|---------------------|-------------------|
| **Impossible d'enchérir de manière compétitive** | Faible taux d'impression, peu de clics, pas de traction | Le CPA/ROAS cible est trop conservateur parce que les marges sont minces |
| **Bloqué en bas du tunnel uniquement** | Ne peut pas se permettre le requête large, Display, Video ou la prospection PMax | Les keywords génériques sont trop chers par rapport au CPL/ROAS admissible |
| **Impossible de lancer du haut du tunnel** | Toute campagne non-Search détruit l'efficacité | Le plafond de CAC est trop bas pour les coûts de trafic de notoriété |
| **Sur-optimisation pour l'efficacité** | Mise en pause constante, restriction, resserrement | Forcé en mode efficacité parce que le mode croissance n'est pas viable |
| **ROAS excellent mais le business ne croît pas** | 800 % de ROAS, mais les marges minces signifient des centimes de profit réel | Un ROAS élevé masque une faible marge de contribution absolue |
| **Fort volume de leads, faible valeur de pipeline** | Les leads arrivent mais les deals ne se closent pas aux taux nécessaires | Problèmes de capacité commerciale, de qualité de leads ou de valeur de deal |

> ⚠️ **Si vous voyez ces symptômes, diagnostiquez les unit economics avant de toucher aux campagnes :** La correction est presque toujours en dehors de Google Ads : pricing, marges, processus de vente, réduction du churn ou améliorations produit.

---

## Causes racines et solutions par secteur

### E-commerce

| Cause racine | Indicateurs | Solutions potentielles |
|-------------|------------|----------------------|
| Marges brutes faibles | ROAS de seuil de rentabilité > 500 % | Renégocier les coûts fournisseurs, ajuster les prix, réduire les coûts de livraison, éliminer les SKUs non rentables |
| AOV faible | Besoin de CPCs très bas pour atteindre les objectifs | Créer des bundles produits, ajouter des upsells/cross-sells, seuils de livraison gratuite, incitations à la commande minimale |
| Taux de retour élevé | Le revenu semble bon mais le net est mauvais | Améliorer les descriptions produits, guides de taille, contrôle qualité, gérer les attentes de retour |

### Lead Gen

| Cause racine | Indicateurs | Solutions potentielles |
|-------------|------------|----------------------|
| Faible taux lead-vente | Volume élevé, peu de deals clôturés | Formation commerciale, SLAs de suivi plus rapides, systèmes de scoring de leads, séquences de nurture automatisées |
| Faible valeur de deal | Le CPL doit être extrêmement bas | Se concentrer sur des services à plus haute valeur, créer des bundles de services, ajouter des parcours d'upsell |
| Cycles de vente longs | Les deals stagnent, le pipeline gonfle | Créer de l'urgence avec des offres limitées dans le temps, améliorer le processus de proposition, automatiser les suivis, définir des prochaines étapes claires |
| Mauvaise qualité de leads | Les leads ne correspondent pas à l'ICP | Ajouter des questions de pré-qualification, améliorer la spécificité de la landing page, resserrer le ciblage keyword, créer du contenu de qualification |

### SaaS

| Cause racine | Indicateurs | Solutions potentielles |
|-------------|------------|----------------------|
| ARPU faible | Le CAC max est trop petit pour enchérir de manière compétitive | Monter en gamme, ajuster les tiers de prix, ajouter des fonctionnalités premium, augmenter les prix des plans |
| Churn élevé | Durée de vie client courte écrase la LTV | Améliorer l'onboarding, augmenter l'adhérence du produit, ajouter des coûts de switching, améliorer le customer success |
| CAC élevé | Ratio LTV:CAC en dessous de 3:1 | Optimiser le tunnel de conversion, réduire le CPC via des améliorations de qualité, se concentrer sur des canaux à plus haute intention |

---

## Application pratique

### Pendant l'onboarding client

Inclure les unit economics dans votre processus d'onboarding. Demander ou calculer :

- **E-commerce :** AOV, COGS par commande (livraison et frais inclus), marge brute %, ROAS actuel et marge de contribution
- **Lead Gen :** Valeur moyenne de deal, marge bénéficiaire, taux lead-vente par source, durée du cycle de vente, CPL et CAC actuels
- **SaaS :** ARPU, taux de churn mensuel, calcul de la LTV, CAC actuel, ratio LTV:CAC

Si le client ne peut pas fournir ces chiffres, c'est en soi un signal d'alerte (le Pilier 4 : Objectifs et KPIs est probablement cassé aussi).

### Signaux d'alerte pour décliner ou escalader

- Marge brute e-commerce en dessous de 20 % (ROAS de seuil de rentabilité > 500 %)
- Taux lead-vente lead gen en dessous de 10 % sans plan d'amélioration clair
- Ratio LTV:CAC SaaS en dessous de 2:1 sans voie d'amélioration
- Le client dit "faites que ça marche" quand on présente les données économiques

### Suivi continu

Reporter sur les unit economics au minimum trimestriellement. Utiliser des outils comme ProfitMetrics ou des tableaux de bord personnalisés pour suivre la marge de contribution, pas juste le ROAS. L'écart entre le ROAS reporté et le profit réel du business est là où les problèmes d'unit economics se cachent.

---

## Principes clés

1. **Les unit economics fixent le plafond :** Aucune tactique Google Ads ne peut dépasser ce que les fondamentaux économiques du business permettent.
2. **Corriger à la source :** Des marges faibles, des équipes commerciales fragiles et un churn élevé sont des problèmes business, pas des problèmes de campagne.
3. **Inclure tous les coûts :** COGS, livraison, frais de paiement, retours : tout ce qui se situe entre le revenu et le profit brut compte.
4. **Utiliser des chiffres réels, pas des hypothèses :** Demander les données réelles aux clients. Les hypothèses cachent la vérité.
5. **Vérifier les unit economics avant de scaler :** Chaque fois qu'un client demande de "scaler", vérifier que les unit economics supportent un volume plus élevé à une efficacité acceptable.

---

## Documents liés

| **Document** | **Relation** |
|--------------|-------------|
| [Google Ads Success Formula Mental Model](<../../03-google-ads/strategie/Strategie - Formule de succès Google Ads.md>) | Les unit economics sont le Pilier 3 de la formule |
| [The five buckets & hierarchy of constraints](<Fondamentaux - Les cinq catégories et la hiérarchie des contraintes.md>) | Les problèmes d'unit economics tombent dans le bucket "Business" |
| [Goals and KPIs Mental Model](<../objectifs/Objectifs - Objectifs et KPI.md>) | Traduit les unit economics en objectifs de campagne actionnables |
| [Conversion Volume Thresholds Reference](<../../03-google-ads/suivi/Suivi - Seuils de volume de conversions.md>) | Seuils minimaux de données qui interagissent avec les contraintes économiques |
