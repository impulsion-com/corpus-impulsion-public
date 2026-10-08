# Surveillance de compte

> **Plateforme :** Google Ads
> **Catégorie :** Optimisation
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Ce document fournit le document global pour surveiller un compte Google Ads : quoi surveiller, pourquoi, et comment les différents types de surveillance sont liés entre eux.

> ❓ **La question centrale :** Mon compte est-il en bonne santé, la performance est-elle stable, et suis-je en bonne voie pour mes objectifs business ?

La surveillance de compte n'est pas une activité unique. Ce sont trois couches distinctes de vérifications, chacune répondant à une question différente. Mélanger ces couches cause des ruptures manquées (vérifier la performance quand le tracking (suivi des conversions/évènements) est cassé) ou des efforts gaspillés (scanner manuellement des problèmes qui peuvent être automatisés). Ce modèle sépare les couches pour que vous vérifiiez les bonnes choses dans le bon ordre.

---

## Ce que ce modèle NE couvre PAS

Ce document NE couvre PAS :

- La définition de quand vérifier chaque métrique (Voir : [Optimization Cadence Mental Model](<../strategie/Strategie - Cadence d'optimisation.md>))
- L'explication de comment distinguer le signal du bruit (Voir : [Anomaly Detection Mental Model](<Optimisation - Détection des anomalies.md>))
- Les procédures de surveillance étape par étape (Voir : [SOP - Check quotidien de sante du compte](<Optimisation - Check quotidien de santé du compte.md>))

---

## Les trois couches de surveillance

Chaque vérification de surveillance appartient à exactement une des trois couches. Les traiter dans l'ordre : Couche 1️⃣ d'abord, puis Couche 2️⃣, puis Couche 3️⃣.

| **Couche** | **Question à laquelle elle répond** | **Type de vérification** | **Potentiel d'automatisation** |
|-----------|--------------------------------------|--------------------------|-------------------------------|
| **1️⃣ Santé/gouvernance** | Le compte est-il structurellement sain ? | Binaire réussite/échec | Élevé : règles Google, scripts, outils tiers |
| **2️⃣ Alertes de performance** | La performance change-t-elle de manière inattendue ? | Fluctuations (% relatif) et seuils (valeurs absolues) | Moyen-élevé : règles pour les seuils, scripts pour les fluctuations |
| **3️⃣ Suivi des objectifs** | Sommes-nous en bonne voie pour les objectifs business ? | Efficacité (CPA/ROAS), pacing (budget), croissance (conversions) | Moyen : tableaux de bord, scripts de pacing, revue manuelle |

> ⚠️ **Toujours traiter la Couche 1️⃣ en premier :** Si le tracking est cassé, chaque métrique de performance est peu fiable. Si des annonces sont désapprouvées, le trafic est plus bas que prévu. Les problèmes de Couche 1️⃣ invalident les données des Couches 2️⃣ et 3️⃣.

---

## Couche 1️⃣ : Santé et gouvernance

Les vérifications de santé sont binaires : quelque chose fonctionne ou ne fonctionne pas. Ce sont les prérequis structurels pour un compte fonctionnel.

### Catégories de vérification

| **Catégorie** | **Ce que vous vérifiez** | **Impact en cas d'échec** | **Automatisation** |
|--------------|-------------------------|--------------------------|-------------------|
| **Suivi des conversions** | Les tags se déclenchent, les actions de conversion sont actives, le volume n'est pas à zéro | Toutes les données de performance sont peu fiables | Règles Google (volume = 0), scripts (santé des tags), outils tiers |
| **Conformité des annonces** | Désapprobations, violations de politique, approbations limitées | Perte de trafic, risque pour le compte | Règles Google (statut = désapprouvé), alertes email quotidiennes |
| **Santé des URLs** | Erreurs 404, chaînes de redirections, échecs de chargement de page | Dépenses gaspillées sur des pages cassées | Scripts (vérificateur d'URL), monitoring tiers |
| **Santé du flux** (Shopping/PMax) | Produits désapprouvés, erreurs de flux, attributs manquants | Couverture produit perdue, dépenses gaspillées | Alertes Merchant Center, scripts, outils de flux |
| **Statut de la stratégie d'enchères** | Mal configurée, limitée, apprentissage prolongé | Enchères sous-optimales, dépenses gaspillées | Règles Google (vérification de statut), scripts |
| **Paramètres de campagne** | Changements non intentionnels, recommandations auto-appliquées | Dérive du budget/ciblage/réseau | Revue de l'historique des modifications, scripts, outils tiers |

### Comment traiter la Couche 1️⃣

1. Commencer par le suivi des conversions : si le tracking est cassé, s'arrêter et le corriger avant de revoir quoi que ce soit d'autre
2. Vérifier la conformité : les désapprobations sur les annonces à fort volume nécessitent une action le jour même
3. Vérifier les URLs : les landing pages cassées gaspillent chaque clic
4. Vérifier la santé du flux (si applicable) : les produits désapprouvés ne peuvent pas se vendre
5. Vérifier les stratégies d'enchères : les stratégies mal configurées nécessitent une correction immédiate
6. Revoir l'historique des modifications : détecter les changements auto-appliqués que vous n'avez pas autorisés

> 💡 **La Couche 1️⃣ se scale bien avec l'automatisation :** La plupart des vérifications de santé sont binaires (fonctionne/ne fonctionne pas) et suivent des règles déterministes. Un système d'alerte bien configuré gère 80 %+ de la détection Couche 1️⃣ automatiquement. Votre vérification manuelle devient une revue des sorties d'alertes, pas un scan brut.

> ↪️ **Pour les recettes d'automatisation :** Voir : [Monitoring Automation Reference](<Optimisation - Automatisation du monitoring.md>) pour les patterns spécifiques de règles, scripts et outils pour chaque vérification Couche 1️⃣.

---

## Couche 2️⃣ : Alertes de performance

Les alertes de performance détectent les changements inattendus dans les métriques. Contrairement à la Couche 1️⃣ (binaire), la Couche 2️⃣ traite des métriques continues qui fluctuent normalement. Le défi est de distinguer les vrais changements du bruit.

### Deux moteurs d'alerte

La Couche 2️⃣ utilise deux méthodes de détection complémentaires :

| **Moteur** | **Ce qu'il détecte** | **Comment ça fonctionne** | **Idéal pour** |
|------------|---------------------|--------------------------|---------------|
| **Alertes de fluctuation** | Changements relatifs par rapport à une référence | Compare la période actuelle à la référence (période précédente, moyenne glissante ou même période l'année précédente) | Détecter les variations inattendues : "Le CPA a augmenté de 35 % vs. les 2 dernières semaines" |
| **Alertes de seuil** | Valeurs absolues franchissant une limite | Se déclenche quand une métrique dépasse ou passe en dessous d'un seuil fixe ou calculé | Appliquer des garde-fous : "Le CPA a dépassé 50 €" |

Les deux moteurs sont nécessaires. Les alertes de fluctuation détectent la dérive progressive qui ne franchit jamais un seuil absolu. Les alertes de seuil détectent les limites strictes qui comptent quel que soit la direction de la tendance.

### Paramètres configurables

Chaque alerte Couche 2️⃣ a quatre paramètres que vous devez définir :

| **Paramètre** | **Ce qu'il contrôle** | **Exemple** |
|---------------|----------------------|-------------|
| **Métrique** | Quelle métrique surveiller | CPA, ROAS, volume de conversions, CTR, dépenses |
| **Sensibilité** | Quel changement déclenche l'alerte | ±30 % pour les fluctuations, 50 € pour les seuils |
| **Fenêtre de données** | Combien de données évaluer | Glissante 7 jours, glissante 14 jours, glissante 30 jours |
| **Portée** | Quelles entités surveiller | Niveau compte, niveau campagne, niveau ad group |

### Filtrage du bruit via le volume minimum

Les alertes sur des entités à faible volume produisent des faux positifs. Appliquer des filtres de volume minimum pour supprimer le bruit :

| **Conversions mensuelles** | **Fiabilité des alertes** | **Fenêtre de données recommandée** |
|----------------------------|--------------------------|-------------------------------------|
| 200+ (élevé) | Alertes hebdomadaires fiables | Glissante 7 jours |
| 50-200 (moyen) | Alertes bimensuelles fiables | Glissante 14 jours |
| 15-50 (faible) | Alertes mensuelles uniquement | Glissante 30 jours |
| <15 (très faible) | Alertes peu fiables au niveau entité | Agréger au niveau compte ou passer |

> ⚠️ **Ne pas définir d'alertes hebdomadaires CPA/ROAS sur des campagnes avec moins de 50 conversions mensuelles :** La variance est trop haute. Vous obtiendrez des faux positifs constants et soit vous ignorerez toutes les alertes (fatigue d'alerte) soit vous réagirez au bruit (instabilité de performance).

> ⚠️ **Le délai de conversion impacte votre fenêtre de données :** Si votre compte a un délai de conversion de 14 jours, votre fenêtre de données doit commencer au moins 14 jours en arrière pour capturer des données complètes. Une fenêtre "glissante 7 jours" dans un compte avec un délai de 14 jours signifie que vous ne voyez que des conversions partielles, produisant des faux négatifs. Ajustez votre fenêtre de données à votre délai de conversion : délai 7 jours → fenêtre minimum 14 jours, délai 14 jours → fenêtre minimum 28 jours.

### Patterns courants d'alertes Couche 2️⃣

| **Alerte** | **Moteur** | **Sensibilité par défaut** | **Fenêtre par défaut** | **Portée** |
|-----------|-----------|---------------------------|----------------------|-----------|
| Pic de CPA | Fluctuation | +30 % vs. 14 jours précédents | Glissante 7 jours | Campagne |
| Baisse de ROAS | Fluctuation | -25 % vs. 14 jours précédents | Glissante 7 jours | Campagne |
| Baisse du volume de conversions | Fluctuation | -40 % vs. 7 jours précédents | Glissante 7 jours | Compte |
| Pic de dépenses | Seuil | >120 % du budget quotidien | Jour précédent | Campagne |
| Hausse du CPC | Fluctuation | +25 % vs. 14 jours précédents | Glissante 7 jours | Campagne |
| Baisse du CTR | Fluctuation | -20 % vs. 14 jours précédents | Glissante 7 jours | Campagne |

> ↪️ **Pour le filtrage du bruit et la méthodologie de définition des seuils :** Voir : [Anomaly Detection Mental Model](<Optimisation - Détection des anomalies.md>) pour le document des trois tests (volume, amplitude, persistance).

---

## Couche 3️⃣ : Suivi des objectifs

Le suivi des objectifs compare la performance actuelle aux objectifs business. Contrairement à la Couche 2️⃣ (détection de changements inattendus), la Couche 3️⃣ demande : "Sommes-nous en bonne voie pour ce que nous avons planifié ?"

### Trois types d'objectifs

| **Type d'objectif** | **Ce qu'il suit** | **Exemples de métriques** | **Fréquence de vérification** |
|--------------------|-------------------|--------------------------|------------------------------|
| **Croissance** | Livrons-nous assez de volume ? | Conversions vs. objectif mensuel, revenu vs. objectif | Hebdomadaire (volume élevé), mensuelle (faible) |
| **Efficacité** | Atteignons-nous les objectifs de coût/retour ? | CPA vs. CPA cible, ROAS vs. ROAS cible | Hebdomadaire (volume élevé), bimensuelle (moyen), mensuelle (faible) |
| **Pacing** | Dépensons-nous au bon rythme ? | Dépenses cumulées du mois vs. budget mensuel, dépense quotidienne requise | Hebdomadaire (tous les comptes) |

### Calcul du pacing

Le pacing convertit les budgets mensuels en points de contrôle quotidiens :

```
Dépense quotidienne requise = (Budget mensuel - Dépenses cumulées du mois) / Jours restants dans le mois
```

| **Statut du pacing** | **Définition** | **Action** |
|---------------------|----------------|-----------|
| En rythme | Dépense quotidienne requise dans ±10 % du budget quotidien original | Surveiller normalement |
| Sous-rythme | Dépense quotidienne requise >110 % du budget quotidien original | Investiguer les problèmes de diffusion, augmenter les budgets, élargir le ciblage |
| Sur-rythme | Dépense quotidienne requise <90 % du budget quotidien original | Vérifier les pics de dépenses, réduire les budgets si intentionnel |
| Très décalé | Dépense quotidienne requise >150 % ou <50 % du budget quotidien original | Investigation immédiate et communication avec les parties prenantes |

### Comment efficacité, pacing et croissance interagissent

Ces trois types d'objectifs créent des tensions de compromis :

- **Efficacité vs. croissance :** Resserrer les objectifs CPA réduit le volume. Les assouplir augmente le volume mais coûte plus.
- **Pacing vs. efficacité :** Le sous-rythme peut indiquer des problèmes d'efficacité (CPCs élevés, taux de conversion bas) ou des problèmes de diffusion.
- **Croissance vs. pacing :** Atteindre les objectifs de conversions en sous-rythme signifie que vous êtes plus efficient que prévu : un bon problème.

La Couche 3️⃣ est celle où le jugement humain compte le plus. Les tableaux de bord et scripts de pacing remontent les données, mais décider si prioriser l'efficacité ou la croissance est une décision stratégique.

> ↪️ **Croissance vs. efficacité est une décision stratégique, pas un constat de surveillance :** La tension entre croissance et efficacité est le compromis le plus fréquent en Google Ads. Si vous atteignez les objectifs d'efficacité mais ratez les objectifs de croissance (ou vice versa), la réponse n'est pas "surveiller plus attentivement". La réponse est de revoir votre équation d'objectifs. Voir : [Goals and KPIs Mental Model](<../../01-strategie/objectifs/Objectifs - Objectifs et KPI.md>) pour le document qui gouverne ces compromis.

---

## Comment les couches interagissent

### Ordre de traitement

```
Couche 1️⃣ : Santé/gouvernance
│
├─ Des échecs ? → CORRIGER D'ABORD (les données sont peu fiables tant que la Couche 1️⃣ n'est pas propre)
│
└─ Tout clair → continuer
   │
   Couche 2️⃣ : Alertes de performance
   │
   ├─ Des alertes qui se déclenchent ? → INVESTIGUER (est-ce du signal ou du bruit ?)
   │
   └─ Pas d'alertes → continuer
      │
      Couche 3️⃣ : Suivi des objectifs
      │
      ├─ En bonne voie → MAINTENIR (pas de changements nécessaires)
      │
      ├─ Hors piste, cause connue → AJUSTER (changements tactiques)
      │
      └─ Hors piste, cause inconnue → DIAGNOSTIQUER (tracer la cause racine)
```

### Effets en cascade

Les problèmes de Couche 1️⃣ se propagent vers le bas :

| **Échec Couche 1️⃣** | **Impact Couche 2️⃣** | **Impact Couche 3️⃣** |
|---------------------|---------------------|---------------------|
| Tracking cassé | Les alertes de conversion se déclenchent incorrectement | Données CPA/ROAS sans signification |
| Annonces désapprouvées | Les baisses de trafic déclenchent des alertes de fluctuation | Objectifs de volume manqués |
| Erreurs de flux | Les alertes de baisse d'impressions Shopping | Objectifs de revenu manqués |
| URLs cassées | Les baisses de CVR déclenchent des alertes de performance | CPA augmente, objectifs d'efficacité manqués |

Corrigez la Couche 1️⃣ d'abord. N'ajustez pas les enchères, budgets ou objectifs en réponse aux signaux de Couche 2️⃣ ou 3️⃣ tant que vous n'avez pas confirmé que la Couche 1️⃣ est propre.

---

## Adaptation par contexte du compte

### Par volume du compte

| **Niveau de volume** | **Conversions mensuelles** | **Couche 1️⃣** | **Couche 2️⃣** | **Couche 3️⃣** |
|---------------------|--------------------------|------------|------------|------------|
| **Élevé** | 200+ | Automatisation quotidienne + revue manuelle des alertes | Alertes hebdomadaires fiables, niveau campagne | Efficacité + pacing + croissance hebdomadaires |
| **Moyen** | 50-200 | Automatisation quotidienne + revue manuelle des alertes | Alertes bimensuelles, niveau campagne avec seuils plus larges | Efficacité bimensuelle, pacing hebdomadaire |
| **Faible** | 15-50 | Automatisation quotidienne + revue manuelle hebdomadaire | Alertes mensuelles, niveau compte uniquement | Tous les objectifs mensuels, pacing hebdomadaire uniquement |
| **Très faible** | <15 | Automatisation quotidienne + revue manuelle hebdomadaire | Mensuelle ou passer (agréger au niveau compte) | Mensuelle avec fenêtres étendues |

### Par maturité du compte

| **Maturité** | **Emphase Couche 1️⃣** | **Emphase Couche 2️⃣** | **Emphase Couche 3️⃣** |
|-------------|---------------------|---------------------|---------------------|
| **Lancement (0-30 jours)** | Tout vérifier manuellement, automatisation pas encore calibrée | Pas de référence existante, utiliser les défauts du secteur | Prématuré : établissement des références |
| **Montée en puissance (1-3 mois)** | Automatiser les vérifications principales, construire la couverture d'alertes | Construction des références, seuils larges | Premières vraies comparaisons d'objectifs |
| **Stable (3-12 mois)** | Entièrement automatisé, revoir les sorties d'alertes | Seuils calibrés à partir des données du compte | Suivi complet des objectifs avec des données fiables |
| **Mature (12+ mois)** | Par exception, les alertes automatisées gèrent la détection | Seuils serrés, faible taux de faux positifs | Analyse de tendances, ajustements stratégiques |

### Par secteur

| **Secteur** | **Ajouts Couche 1️⃣** | **Considérations Couche 2️⃣** | **Focus Couche 3️⃣** |
|------------|----------------------|---------------------------|-------------------|
| **Lead Gen** | Santé du pipeline backend (connectivité CRM, livraison des leads) | Les signaux de qualité des leads ont un délai important, utiliser des fenêtres plus longues | CPA par lead qualifié, valeur du pipeline |
| **SaaS** | Suivi essai/inscription à travers les étapes du tunnel | Les conversions essai gratuit peuvent avoir une variance élevée | Ratio CAC vs. LTV, conversion essai-payant |
| **E-commerce** | Santé du flux produits, statut Merchant Center, synchronisation de l'inventaire | Métriques basées sur le revenu (ROAS) en parallèle du volume | ROAS, pacing du revenu, profitabilité au niveau produit |

---

## Automatisation par couche

| **Couche** | **Quoi automatiser** | **Ce qui nécessite un jugement humain** |
|-----------|---------------------|----------------------------------------|
| **1️⃣ Santé/gouvernance** | Détection de tous les échecs binaires (statut du tracking, désapprobations, erreurs d'URL, erreurs de flux, statut de stratégie d'enchères, changements de paramètres) | Décider de la correction, appels, corrections structurelles |
| **2️⃣ Alertes de performance** | Détection de franchissement de seuil, calcul de fluctuation, maintenance de la fiche, notifications email | Classifier signal vs. bruit, analyse de cause racine, décider d'agir |
| **3️⃣ Suivi des objectifs** | Calculs de pacing, alimentation des tableaux de bord, comparaisons efficacité vs. objectif | Décisions de compromis stratégiques (efficacité vs. croissance), communication avec les parties prenantes, révisions d'objectifs |

> 💡 **L'automatisation ne remplace pas le jugement :** L'automatisation gère la détection et la préparation des données. Les humains gèrent la classification, le diagnostic et les décisions stratégiques. L'objectif est de passer zéro temps à trouver les problèmes et tout votre temps à décider quoi en faire.

> ↪️ **Pour les détails d'implémentation :** Voir : [Monitoring Automation Reference](<Optimisation - Automatisation du monitoring.md>) pour les recettes d'automatisation spécifiques par couche.

---

## Principes clés

1. **Couche 1️⃣ avant tout :** Si le compte est structurellement cassé, les données de performance n'ont pas de sens. Toujours vérifier la santé/gouvernance en premier.
2. **Adapter l'automatisation au type de vérification :** Les vérifications binaires (Couche 1️⃣) s'automatisent bien. Les métriques continues (Couche 2️⃣) s'automatisent partiellement. Les décisions stratégiques (Couche 3️⃣) nécessitent des humains.
3. **Filtrer le bruit avant d'alerter :** Chaque alerte doit passer un seuil de volume minimum. Les alertes sur des données insuffisantes créent de la fatigue et des décisions réactives.
4. **Séparer la détection de l'action :** Détecter un problème et décider quoi en faire sont des activités différentes. Automatiser la détection. Garder les décisions humaines.
5. **S'adapter au contexte du compte :** Le volume, la maturité et le secteur changent tous ce que vous surveillez, à quelle fréquence et à quel point vos alertes doivent être sensibles.
6. **L'ordre de traitement est non négociable :** Couche 1️⃣ → Couche 2️⃣ → Couche 3️⃣. À chaque fois. Sauter des couches crée des erreurs en cascade.

---

## Documents liés

| **Document** | **Relation** |
|--------------|-------------|
| [Optimization Cadence Mental Model](<../strategie/Strategie - Cadence d'optimisation.md>) | Compagnon : quand vérifier chaque métrique |
| [Anomaly Detection Mental Model](<Optimisation - Détection des anomalies.md>) | Compagnon : comment distinguer le signal du bruit (réflexion Couche 2️⃣) |
| [Reporting Mental Model](<../../01-strategie/reporting/Reporting - Reporting.md>) | Fondation : hiérarchie et types de reporting |
| [Monitoring Automation Reference](<Optimisation - Automatisation du monitoring.md>) | Référence : implémentation de l'automatisation par couche |
| [Google Ads Alerts and Rules Reference](<Optimisation - Alertes et règles Google Ads.md>) | Référence : mécaniques des règles natives |
| [Account Health Checklist](<Optimisation - [Review] Santé du compte.md>) | Validation : éléments de vérification Couche 1️⃣ |
| [Alert Configuration Checklist](<Optimisation - [Review] Configuration des alertes.md>) | Validation : couverture d'alertes entre les couches |
| [Monthly Performance Review Checklist](<../../01-strategie/reporting/Reporting - Revue de performance mensuelle.md>) | Validation : revue mensuelle complète toutes couches |
| [SOP - Check quotidien de sante du compte](<Optimisation - Check quotidien de santé du compte.md>) | Exécution : procédure de surveillance quotidienne |

---

## Détails de version

- **Journal des modifications :** v2.0 : Ajout des emojis keycap à la numérotation des couches, guide sur le délai de conversion pour la fenêtre de données, référence au Goals and KPIs Mental Model, réorganisation des types d'objectifs (Croissance en premier), CPA→CPA/ROAS dans l'avertissement sur le filtrage du bruit

