# Cadence d'optimisation

> **Plateforme :** Google Ads
> **Catégorie :** Strategie
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Ce document vous aide à établir le bon rythme d'optimisation pour n'importe quel compte Google Ads, afin de vérifier les bonnes choses à la bonne fréquence et d'éviter aussi bien la négligence que la sur-optimisation.

> ❓ **La question centrale :** Que faut-il vérifier quotidiennement, hebdomadairement, toutes les deux semaines, mensuellement et trimestriellement, et comment le contexte du compte modifie-t-il la cadence ?

L'optimisation ne consiste pas à tout vérifier chaque jour. Il s'agit de faire correspondre la fréquence de vérification à la vélocité des données : les métriques qui bougent vite sont vérifiées souvent, les métriques qui bougent lentement le sont moins. Une mauvaise cadence crée soit des problèmes manqués (trop rare) soit des réactions au bruit (trop fréquent).

---

## Ce que ce modèle NE couvre PAS

Ce document NE couvre PAS :

- La définition des métriques spécifiques à suivre (Voir : [Reporting Mental Model](<../../01-strategie/reporting/Reporting - Reporting.md>))
- Le document de surveillance global (Voir : [Account Monitoring Mental Model](<../optimisation/Optimisation - Surveillance de compte.md>))
- Les procédures de revue étape par étape (Voir : [SOP - Check quotidien de sante du compte](<../optimisation/Optimisation - Check quotidien de santé du compte.md>))
- L'analyse diagnostique des causes racines (Voir : [Diagnostic engine: Symptom to Constraint to Solution](<../../01-strategie/fondamentaux/Fondamentaux - Moteur de diagnostic - du symptôme à la contrainte puis à la solution.md>))
- Les procédures d'optimisation détaillées (les SOPs spécifiques gèrent l'exécution : gestion des termes de recherche, ajustements d'enchères, amélioration du Niveau de qualité, etc.)

---

## Les cinq niveaux de cadence

Chaque vérification d'optimisation appartient à exactement un niveau de cadence basé sur la rapidité de changement des données sous-jacentes et l'urgence de l'action requise.

| **Niveau** | **Fréquence** | **Budget temps** | **Objectif** | **Fenêtre de données** |
|------------|---------------|-----------------|-------------|----------------------|
| **1️⃣ Quotidien** | Chaque jour ouvré | 10-15 min | Détecter les pannes et problèmes urgents | 1-3 derniers jours |
| **2️⃣ Hebdomadaire** | Le même jour chaque semaine | 30-60 min | Diagnostiquer les tendances, prioriser les actions | 7 derniers jours vs. 7 précédents |
| **3️⃣ Bi-hebdomadaire** | Toutes les 2 semaines | 30 min | Vérifications de mi-cycle sur les métriques lentes | 14 derniers jours |
| **4️⃣ Mensuel** | Première semaine du mois | 60-90 min | Revue stratégique, recalibration des référentiels | 30 derniers jours vs. 30 précédents |
| **5️⃣ Trimestriel** | Début de trimestre | 2-3 heures | Réévaluation stratégique, changements structurels | Trimestre vs. trimestre précédent |

> ⚠️ **Limitez le temps de chaque niveau :** Des données illimitées créent une analyse illimitée. Les budgets temps ci-dessus sont des maximums, pas des minimums. Si le triage quotidien prend 3 minutes parce que rien n'est cassé, c'est une bonne journée.

---

## Catégories de vérification par niveau de cadence

### 1️⃣ Quotidien : détecter les pannes

*"Est-ce que quelque chose de majeur a cassé pendant la nuit ?"*

Le triage quotidien correspond principalement à la **Couche 1️⃣ (santé/gouvernance)** avec un triage rapide **Couche 2️⃣ (alertes de performance)** des sorties d'alertes automatisées.

| **Catégorie de vérification** | **Couche de surveillance** | **Ce qu'il faut scanner** | **Action si signalé** |
|------------------------------|--------------------------|-------------------------|---------------------|
| **Suivi des conversions** | Couche 1️⃣ | Déclenchement des tags, volume de conversions tombé à zéro | Correction immédiate : le tracking (suivi des conversions) est la fondation |
| **Désapprobations d'annonces/composants** | Couche 1️⃣ | Nouvelles désapprobations sur les annonces ou composants actifs | Revoir et corriger ou faire appel |
| **Santé des URLs** | Couche 1️⃣ | Erreurs 404, redirections cassées sur les URLs à fort volume | Mettre en pause les annonces affectées, corriger les landing pages |
| **Statut des stratégies d'enchères** | Couche 1️⃣ | Stratégies en apprentissage, limitées, mal configurées | Noter pour la revue hebdomadaire sauf si critique |
| **Pacing budgétaire** | Couche 2️⃣/3️⃣ | Sur-dépense, sous-dépense, campagnes limitées par le budget | Ajuster le budget ou investiguer le problème de diffusion |
| **Anomalies de dépenses** | Couche 2️⃣ | Pics ou chutes soudaines des dépenses quotidiennes | Investiguer la cause, vérifier les changements accidentels |
| **Revue des alertes** | Couche 2️⃣ | Revoir les alertes automatisées déclenchées pendant la nuit | Triage : corriger maintenant ou signaler pour l'hebdomadaire |

**Flexibilité de fréquence :**

| Conversions mensuelles | Par défaut | Augmenter la fréquence quand | Diminuer la fréquence quand |
|----------------------|----------|------------------------------|----------------------------|
| 200+ (élevé) | Automatisé quotidien + revue manuelle des alertes | Après des lancements majeurs, changements de tracking | Jamais : le triage quotidien est toujours non négociable |
| 50-200 (moyen) | Automatisé quotidien + revue manuelle des alertes | Après des lancements majeurs, changements de tracking | Jamais |
| 15-50 (bas) | Automatisé quotidien + revue manuelle hebdomadaire | Après des lancements majeurs | Quand la couverture d'alertes est complète et mature |
| <15 (très bas) | Automatisé quotidien + revue manuelle hebdomadaire | Après des lancements majeurs | Quand la couverture d'alertes est complète et mature |

> 💡 **Ce qu'il faut automatiser :** La détection de Couche 1️⃣ (désapprobations, statut du tracking, erreurs URL, statut des stratégies d'enchères) s'automatise bien via les règles Google, les scripts et les outils tiers. Votre vérification quotidienne manuelle devient une revue des sorties d'alertes plutôt qu'un scan brut dans l'interface.

> ↪️ **Pour les recettes d'automatisation Couche 1️⃣ :** Voir : [Monitoring Automation Reference](<../optimisation/Optimisation - Automatisation du monitoring.md>).

**Résultat du triage quotidien :** Une courte liste de points "corriger maintenant" et de notes "signaler pour l'hebdomadaire". Pas de diagnostic, pas de changements stratégiques.

### 2️⃣ Hebdomadaire : diagnostiquer et prioriser

*"Qu'est-ce qui a changé cette semaine, et que faire ?"*

Les revues hebdomadaires correspondent principalement à la **Couche 2️⃣ (alertes de performance)** avec un point **Couche 3️⃣ (suivi des cibles)** sur le pacing et l'efficacité.

| **Catégorie de vérification** | **Couche de surveillance** | **Ce qu'il faut revoir** | **Action si signalé** |
|------------------------------|--------------------------|------------------------|---------------------|
| **Performance du KPI principal** | Couche 3️⃣ | Conversions, CPA/ROAS vs. cibles | Investiguer le problème principal, créer des actions |
| **Signaux de tendance** | Couche 2️⃣ | Mouvement directionnel sur 2+ semaines dans les métriques clés | Signaler comme tendance émergente, surveiller ou investiguer |
| **Qualité des termes de recherche** | Couche 2️⃣ | Nouvelles requêtes non pertinentes, dépenses gaspillées | Ajouter des négatifs, affiner le ciblage |
| **Insights sur les enchères** | Couche 2️⃣/3️⃣ | Entrée/sortie de concurrents, évolutions du taux d'impressions | Noter les changements concurrentiels pour la revue stratégique |
| **Pacing budgétaire** | Couche 3️⃣ | Dépenses du mois en cours vs. budget mensuel | Ajuster si significativement hors pacing |
| **Tests en cours** | Couche 2️⃣ | Statut des tests, signaux précoces | Continuer ou arrêter en fonction des données |
| **Actions précédentes** | N/A | Report de la semaine précédente | Suivre l'achèvement, escalader les blocages |

**Flexibilité de fréquence :**

| Conversions mensuelles | Par défaut | Augmenter la fréquence quand | Diminuer la fréquence quand |
|----------------------|----------|------------------------------|----------------------------|
| 200+ (élevé) | Hebdomadaire | Phase de lancement, tests en cours, évolutions concurrentielles | Compte mature et stable avec alertes automatisées |
| 50-200 (moyen) | Bi-hebdomadaire de préférence | Tests en cours, changements majeurs | Stable, pas de sprint d'optimisation en cours |
| 15-50 (bas) | Mensuelle (les données hebdo sont du bruit) | Jamais à fréquence hebdomadaire | Toujours : étendre la fenêtre au mensuel |
| <15 (très bas) | Mensuelle (les données hebdo sont du bruit) | Jamais à fréquence hebdomadaire | Toujours : étendre la fenêtre au mensuel |

> 💡 **Ce qu'il faut automatiser :** Les alertes de seuil Couche 2️⃣ et la détection de fluctuations peuvent être automatisées. Les tableaux de bord de pacing peuvent être auto-générés. Ce qui ne peut pas être automatisé : classifier si les changements signalés sont du signal ou du bruit, l'analyse de cause racine, la décision d'actions.

**Résultat hebdomadaire :** Revue documentée avec un problème investigué, des actions prioritaires et un backlog mis à jour.

### 3️⃣ Bi-hebdomadaire : validation de mi-cycle

*"Les métriques à mouvement lent sont-elles toujours sur la bonne voie ?"*

Les vérifications bi-hebdomadaires couvrent les métriques qui changent trop lentement pour une détection hebdomadaire mais trop vite pour une revue uniquement mensuelle. Correspond aux **Couches 2️⃣** et **3️⃣**.

| **Catégorie de vérification** | **Couche de surveillance** | **Ce qu'il faut revoir** | **Action si signalé** |
|------------------------------|--------------------------|------------------------|---------------------|
| **Tendances du Niveau de qualité** | Couche 2️⃣ | Évolution du QS sur les mots-clés à fort volume | Déclencher l'amélioration du QS si dégradation |
| **Allocation budgétaire** | Couche 3️⃣ | Répartition des dépenses entre les campagnes | Rééquilibrer si les campagnes prouvées sont sous-financées |
| **Performance des audiences** | Couche 2️⃣ | Santé des listes de remarketing, signaux d'audience | Rafraîchir les listes, ajuster le ciblage |
| **Métriques de landing page** | Couche 2️⃣ | Taux de rebond, CVR par page | Signaler les pages pour test ou optimisation |

**Flexibilité de fréquence :**

| Conversions mensuelles | Par défaut | Augmenter la fréquence quand | Diminuer la fréquence quand |
|----------------------|----------|------------------------------|----------------------------|
| 200+ (élevé) | Bi-hebdomadaire | QS en baisse, listes d'audience qui rétrécissent | Fusionner dans l'hebdomadaire si les revues hebdo sont approfondies |
| 50-200 (moyen) | Bi-hebdomadaire (aligné avec la revue de performance) | Tests de landing page en cours | Fusionner dans le mensuel si ressources limitées |
| 15-50 (bas) | Mensuelle | Jamais en bi-hebdomadaire | Toujours : données insuffisantes pour des signaux bi-hebdomadaires |

> 💡 **Ce qu'il faut automatiser :** Scripts de surveillance du Niveau de qualité, suivi de la taille des listes d'audience, tableaux de bord de performance des landing pages. Le jugement humain reste nécessaire pour : la priorisation de l'amélioration du QS, les décisions de réallocation de budget, la stratégie d'audience.

### 4️⃣ Mensuelle : calibration stratégique

*"Sommes-nous sur la bonne trajectoire, et nos références reflètent-elles encore la réalité ?"*

Les revues mensuelles couvrent les trois couches : un audit approfondi **Couche 1️⃣**, une recalibration **Couche 2️⃣** des références, et une évaluation complète **Couche 3️⃣** des cibles.

| **Catégorie de vérification** | **Couche de surveillance** | **Ce qu'il faut revoir** | **Action si signalé** |
|------------------------------|--------------------------|------------------------|---------------------|
| **Alignement business** | Couche 3️⃣ | Chiffre d'affaires/profit vs. objectifs business | Escalader si la trajectoire est hors piste |
| **Santé du suivi des conversions** | Couche 1️⃣ (approfondi) | Écart Google Ads vs. backend | Investiguer et corriger la dérive |
| **Recalibration des références** | Couche 2️⃣ | Les seuils vert/orange/rouge sont-ils encore précis ? | Ajuster les bandes en fonction de la performance récente |
| **Paysage concurrentiel** | Couche 2️⃣/3️⃣ | Tendances Insights sur les enchères, nouveaux concurrents | Mettre à jour le positionnement concurrentiel |
| **Dérive des paramètres de campagne** | Couche 1️⃣ (approfondi) | Paramètres de localisation, réseau, rotation | Corriger tout changement involontaire |
| **Structure du compte** | Couche 3️⃣ | Opportunités de consolidation, distribution du volume | Planifier les changements structurels pour le prochain trimestre |
| **Revue des recommandations** | Couche 1️⃣ | Recommandations Google et score d'optimisation | Rejeter les non pertinentes, considérer les utiles |

**Flexibilité de fréquence :**

| Conversions mensuelles | Par défaut | Augmenter la fréquence quand | Diminuer la fréquence quand |
|----------------------|----------|------------------------------|----------------------------|
| 200+ (élevé) | Mensuel, périmètre complet | Virages stratégiques majeurs, bouleversements concurrentiels | Jamais : la revue stratégique mensuelle est toujours nécessaire |
| 50-200 (moyen) | Mensuel, périmètre complet | Comme le volume élevé | Réduire le périmètre (sauter l'analyse concurrentielle approfondie) si stable |
| 15-50 (bas) | Mensuel, fenêtres de données étendues (60-90 jours) | Changements majeurs, escalade client | Jamais : le mensuel est déjà la fréquence utile minimale |

> 💡 **Ce qu'il faut automatiser :** Rapports d'écart de suivi des conversions, scripts de recalcul des références, détection de dérive des paramètres, tableaux de bord de pacing. Ce qui ne peut pas être automatisé : évaluation de l'alignement business, décisions structurelles, stratégie concurrentielle, communication avec les parties prenantes.

**Résultat mensuel :** Cibles mises à jour, références recalibrées, plan d'action stratégique pour le mois suivant.

### 5️⃣ Trimestrielle : réinitialisation stratégique

*"Résolvons-nous les bons problèmes avec la bonne structure ?"*

Les revues trimestrielles sont purement **Couche 3️⃣** : direction stratégique et alignement des objectifs.

| **Catégorie de vérification** | **Couche de surveillance** | **Ce qu'il faut revoir** | **Action si signalé** |
|------------------------------|--------------------------|------------------------|---------------------|
| **Équation des objectifs** | Couche 3️⃣ | Les cibles de croissance et d'efficacité nécessitent-elles une révision ? | Mettre à jour les cibles en fonction des changements business |
| **Structure du compte** | Couche 3️⃣ | La structure sert-elle encore la stratégie ? | Planifier une restructuration si nécessaire |
| **Mix de canaux** | Couche 3️⃣ | L'allocation du budget entre les canaux est-elle optimale ? | Réallouer le budget en fonction des données de performance |
| **Stack technologique** | Couche 1️⃣ (stratégique) | Outils de tracking, attribution, automatisation | Planifier les mises à niveau ou changements |
| **Feuille de route** | Couche 3️⃣ | Prioriser les optimisations et expériences pour le prochain trimestre | Créer la feuille de route trimestrielle |

> ↪️ **Documentation de la revue trimestrielle :** Voir : [Quarterly Review Checklist](<../../01-strategie/reporting/Reporting - [Review] Revue trimestrielle.md>) pour les points de contrôle et [SOP - Revue trimestrielle business](<../../01-strategie/reporting/Reporting - Revue business trimestrielle.md>) pour la SOP complète.

---

## Adapter la cadence à la maturité du compte

La bonne cadence dépend de la position du compte dans son cycle de vie. Les nouveaux comptes nécessitent plus d'attention car les schémas de données ne sont pas encore établis.

| **Stade du compte** | **Quotidien** | **Hebdomadaire** | **Mensuel** | **Trimestriel** |
|---------------------|--------------|-----------------|------------|----------------|
| **Lancement (0-30 jours)** | 15-20 min : tout vérifier | Revue complète : tous les signaux sont nouveaux | Prématuré : attendre les données | N/A |
| **Montée en puissance (1-3 mois)** | 10-15 min : triage standard | Revue complète : établissement des références | Première vraie revue mensuelle | N/A |
| **Stable (3-12 mois)** | 10 min : scan efficace | 30-45 min : revue ciblée | Revue stratégique complète | Première réinitialisation trimestrielle |
| **Mature (12+ mois)** | 5-10 min : scan par exception | 20-30 min : revue ciblée | Focus recalibration | Évolution stratégique |

> 💡 **Les comptes en lancement nécessitent une attention quotidienne :** Pendant les 30 premiers jours, chaque signal est nouveau. Après 90 jours avec une performance stable, le triage quotidien devrait prendre moins de 10 minutes.

---

## Adapter la cadence au volume de conversions

La confiance dans les données dépend du volume. Les comptes à faible volume ne peuvent pas supporter une analyse fréquente car les échantillons hebdomadaires sont trop petits pour distinguer le signal du bruit.

| **Niveau de volume** | **Conversions mensuelles** | **Cadence minimum de revue recommandée** | **Revue hebdomadaire fiable ?** | **Raisonnement** |
|---------------------|--------------------------|----------------------------------------|-----------------------------|---------------|
| Élevé | 200+ | Hebdomadaire | Oui | Données suffisantes pour des signaux hebdomadaires |
| Moyen | 50-200 | Bi-hebdomadaire | Bi-hebdomadaire de préférence | Données hebdo trop bruitées pour des schémas fiables |
| Bas | 15-50 | Mensuelle | Mensuelle uniquement | Besoin d'une agrégation sur 30 jours pour une quelconque validité |
| Très bas | <15 | Mensuelle avec fenêtres étendues | Mensuelle uniquement | Utiliser des fenêtres de 60-90 jours, se concentrer sur les indicateurs avancés |

> ⚠️ **Ne lancez pas de revues de performance hebdomadaires sur des comptes avec moins de 50 conversions mensuelles :** Vous réagirez au bruit et détériorerez le compte.

---

## Le document de décision de cadence

Quand vous décidez quelle cadence utiliser pour une vérification spécifique :

```
À quelle vitesse cette métrique change-t-elle ?
│
├─ Peut changer du jour au lendemain (tracking, URLs, désapprobations)
│  └─ Vérification QUOTIDIENNE (Couche 1️⃣)
│
├─ Change de semaine en semaine (CTR, CPC, schémas de dépenses)
│  └─ Vérification HEBDOMADAIRE (Couche 2️⃣)
│
├─ Change sur 2-4 semaines (QS, santé des audiences, métriques LP)
│  └─ Vérification BI-HEBDOMADAIRE (Couche 2️⃣)
│
├─ Change sur des mois (références, paysage concurrentiel, dérive des paramètres)
│  └─ Vérification MENSUELLE (Recalibration Couche 2️⃣ + évaluation Couche 3️⃣)
│
└─ Structurel ou stratégique (objectifs, structure, mix de canaux)
   └─ Vérification TRIMESTRIELLE (Couche 3️⃣)
```

---

## Erreurs de cadence courantes

| **Erreur** | **Problème** | **Correction** |
|------------|-------------|----------------|
| **Vérifier le CPA quotidiennement** | Les variations quotidiennes du CPA sont du bruit, pas du signal | Vérifier le CPA hebdomadairement au minimum, avec confirmation sur 2 semaines |
| **Revue mensuelle des termes de recherche** | Les dépenses gaspillées s'accumulent pendant des semaines | Revoir les termes de recherche hebdomadairement |
| **Pas de triage quotidien** | Le tracking cassé ou les désapprobations passent inaperçues pendant des jours | Un scan quotidien de 10 minutes est non négociable |
| **Revue hebdomadaire du QS** | Le QS change lentement, les revues hebdomadaires créent une fausse urgence | Vérifier le QS bi-hebdomadairement ou mensuellement |
| **Revue trimestrielle du budget** | L'allocation de budget se désynchronise de la performance | Revoir l'allocation de budget hebdomadairement |
| **Sauter la documentation** | Pas de continuité entre les revues, les mêmes problèmes réapparaissent | Documenter chaque revue hebdomadaire et mensuelle |
| **Même cadence pour tous les comptes** | Les comptes à faible volume subissent des changements pilotés par le bruit | Adapter la cadence au niveau de volume |
| **Zéro automatisation** | Passer 15 min sur un scan brut au lieu de revoir des alertes | Automatiser la détection Couche 1️⃣, revoir les sorties d'alertes |

---

## Principes clés

1. **Faire correspondre la fréquence à la vélocité des données :** Les métriques rapides (dépenses, tracking) reçoivent une attention quotidienne. Les métriques lentes (QS, paysage concurrentiel) une attention mensuelle.
2. **Limiter le temps de chaque niveau de cadence :** Mettez un minuteur. Quand il sonne, arrêtez d'analyser et commencez à agir.
3. **Adapter au volume et à la maturité :** Les comptes nouveaux et à fort volume nécessitent des revues plus fréquentes. Les comptes matures et à faible volume nécessitent des analyses moins fréquentes mais sur des fenêtres plus longues.
4. **Le triage quotidien est non négociable :** Même les comptes matures peuvent avoir un tracking qui casse pendant la nuit. Dix minutes chaque matin préviennent les désastres.
5. **Automatiser la détection, garder les décisions humaines :** Les alertes automatisées gèrent la détection Couche 1️⃣ et 2️⃣. Le jugement humain gère la classification, le diagnostic et les décisions stratégiques.
6. **Documenter chaque revue :** Les traces écrites créent de la continuité, captent les schémas récurrents et empêchent le même problème d'être "découvert" trois fois.
7. **Signaler, puis confirmer, puis agir :** Une semaine de mauvaises données est un signal. Deux semaines, c'est une tendance. Trois semaines c'est un problème. Ne faites jamais de changements majeurs sur un seul point de données.

---

## Documents liés

| **Document** | **Relation** |
|--------------|------------------|
| [Account Monitoring Mental Model](<../optimisation/Optimisation - Surveillance de compte.md>) | Méthode parente : les trois couches de surveillance référencées tout au long |
| [Reporting Mental Model](<../../01-strategie/reporting/Reporting - Reporting.md>) | Fondation : hiérarchie de reporting et principes de cadence |
| [Anomaly Detection Mental Model](<../optimisation/Optimisation - Détection des anomalies.md>) | Compagnon : comment distinguer le signal du bruit |
| [Monitoring Automation Reference](<../optimisation/Optimisation - Automatisation du monitoring.md>) | Référence : recettes d'automatisation par niveau de cadence |
| [Status board and operating rhythms](<../../01-strategie/fondamentaux/Fondamentaux - Status Board et rythmes opérationnels.md>) | Fondation : définitions des rythmes quotidien/hebdomadaire/mensuel |
| [SOP - Check quotidien de sante du compte](<../optimisation/Optimisation - Check quotidien de santé du compte.md>) | Exécution : procédure de triage quotidien |
| [SOP - Revue de performance hebdomadaire](<../../01-strategie/reporting/Reporting - Revue de performance hebdomadaire.md>) | Exécution : procédure de revue hebdomadaire |
| [SOP - Revue de performance mensuelle](<../../01-strategie/reporting/Reporting - Revue de performance mensuelle.md>) | Exécution : procédure de revue mensuelle |
| [Account Health Checklist](<../optimisation/Optimisation - [Review] Santé du compte.md>) | Validation : points de contrôle quotidien/Couche 1️⃣ |
| [Monthly Performance Review Checklist](<../../01-strategie/reporting/Reporting - Revue de performance mensuelle.md>) | Validation : points de contrôle mensuels |
| [Quarterly Review Checklist](<../../01-strategie/reporting/Reporting - [Review] Revue trimestrielle.md>) | Validation : points de contrôle trimestriels |
| [SOP - Revue trimestrielle business](<../../01-strategie/reporting/Reporting - Revue business trimestrielle.md>) | Exécution : procédure de revue trimestrielle |

---

## Détails de version

- **Journal des modifications :** v5.0 : Lien de l'encadré de revue trimestrielle et de la table de documents liés vers le QBR Checklist et la SOP publiés. v4.0 : Ajout de la fiche à la revue trimestrielle. v3.0 : Conversion des paragraphes "Ce qu'il faut automatiser" en encadrés, ajout d'une note de périmètre pour les procédures d'optimisation. v2.0 : Correspondance des niveaux de cadence avec le modèle de surveillance à 3 couches, ajout de la flexibilité de fréquence par niveau, ajout du contexte d'automatisation, titres en minuscules, référence croisée au modèle de surveillance du compte.
