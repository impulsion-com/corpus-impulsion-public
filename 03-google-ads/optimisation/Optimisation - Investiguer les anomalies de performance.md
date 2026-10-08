# Investiguer les anomalies de performance

> **Plateforme :** Google Ads
> **Catégorie :** Optimisation
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Cette SOP vous guide dans l'investigation d'une anomalie de performance, de la détection initiale à l'identification de la cause racine, jusqu'à la planification de la résolution.

> ❓ **La question clé :** Pourquoi la performance a-t-elle changé de façon inattendue, et que dois-je faire à ce sujet ?

Les anomalies de performance se répartissent en deux catégories : les cassures (quelque chose s'est cassé) et les évolutions (quelque chose a changé). Cette SOP gère les deux en éliminant systématiquement les causes, de la plus probable à la moins probable.

---

## Ce que cette SOP ne couvre PAS

Cette SOP ne couvre **pas :**

- Définir ce qui constitue une anomalie vs. du bruit (Voir : [Anomaly Detection Mental Model](<Optimisation - Détection des anomalies.md>))
- Couvrir les revues de performance de routine (Voir : [SOP - Revue de performance hebdomadaire](<../../01-strategie/reporting/Reporting - Revue de performance hebdomadaire.md>))
- Corriger des problèmes spécifiques (renvoie vers la SOP de correction appropriée)

## Quand utiliser cette SOP

Exécutez cette SOP :

- Quand le monitoring quotidien signale une anomalie critique
- Quand la revue hebdomadaire identifie une tendance confirmée nécessitant une investigation
- Quand des parties prenantes rapportent des changements de performance inattendus
- Quand des alertes se déclenchent sur le volume de conversions, le CPA ou des anomalies de dépense

---

## Avant de commencer

### Prérequis

- L'anomalie spécifique à investiguer (métrique, ampleur, durée)
- Accès au compte Google Ads
- Accès à l'historique des modifications (Change History)
- Accès aux données backend (si lié aux conversions)

### Documents de référence (à garder ouverts)

| Document | Utilisé pour |
|----------|----------|
| [Anomaly Detection Mental Model](<Optimisation - Détection des anomalies.md>) | Méthode de classification |
| [Metric Tree Reference](<../strategie/Strategie - Arbre de métriques.md>) | Traçage amont |
| [Account Change History Reference](<Optimisation - Historique des modifications.md>) | Corrélation des changements |
| [Google Ads Metrics Reference](<Optimisation - Alertes et règles Google Ads.md>) | Relations entre métriques |

### Temps estimé

| Section | Temps |
|---------|------|
| Phase 1 : Confirmer et classifier | 5 min |
| Phase 2 : Vérification des causes internes | 10 min |
| Phase 3 : Diagnostic de l'arbre de métriques | 15 min |
| Phase 4 : Vérification des causes externes | 5 min |
| Phase 5 : Résolution | 10 min |
| **Total** | **45 min** |

> ⚠️ **Plafonnez l'investigation à 60 minutes :** si vous ne parvenez pas à identifier la cause racine en 60 minutes, documentez ce que vous avez écarté et faites remonter, ou reprenez avec des données fraîches.

---

## Cadre d'exécution

| Phase | Objectif | Résultat |
|-------|---------|--------|
| **Phase 1️⃣: Confirmer et classifier** | Vérifier que l'anomalie est réelle, pas du bruit | Anomalie confirmée avec sa classification |
| **Phase 2️⃣: Vérification des causes internes** | Écarter les changements faits par vous ou votre équipe | Changements internes identifiés ou écartés |
| **Phase 3️⃣: Diagnostic de l'arbre de métriques** | Remonter en amont pour trouver la métrique racine | Métrique racine et segment affecté identifiés |
| **Phase 4️⃣: Vérification des causes externes** | Rechercher les facteurs concurrentiels et de marché | Facteurs externes identifiés ou écartés |
| **Phase 5️⃣: Résolution** | Déterminer la correction et documenter | Plan de résolution |

---

## Phase 1️⃣: Confirmer et classifier (5 min)

### 1.1 Dérouler les trois tests

Appliquez les trois tests de l'Anomaly Detection Mental Model :

| Test | Vérification | Résultat |
|------|-------|--------|
| **Test de volume** | L'entité affectée dispose-t-elle de suffisamment de données pour la période d'analyse ? | Réussi / Échoué |
| **Test d'ampleur** | Le changement dépasse-t-il les seuils de variance normale ? | Réussi / Échoué |
| **Test de persistance** | Le changement persiste-t-il depuis 2+ périodes ? | Réussi / Échoué (exception : cassure) |

Si un test échoue (et qu'il ne s'agit pas d'une cassure), arrêtez : c'est du bruit, pas une anomalie.

### 1.2 Classifier l'anomalie

| Type | Caractéristiques | Exemple |
|------|----------------|---------|
| **Cassure** | Soudaine, sévère, binaire (fonctionne à ne fonctionne plus) | Les conversions sont tombées à zéro, toutes les annonces refusées |
| **Dégradation** | Déclin graduel sur 2+ semaines | CPA en hausse de 10 % par semaine pendant 3 semaines |
| **Pic** | Augmentation soudaine du coût ou du volume | La dépense quotidienne a doublé de façon inattendue |
| **Décalage structurel** | Changement permanent de la performance de référence | Après une mise à jour de l'algorithme, la référence de CPC a augmenté de 20 % |

### 1.3 Documenter l'anomalie

```
Anomaly: [Metric] [direction] by [magnitude] over [timeframe]
Entity: [Account / Campaign / Ad group / Keyword]
Classification: [Breakage / Degradation / Spike / Structural shift]
First detected: [Date]
```

---

## Phase 2️⃣: Vérification des causes internes (10 min)

### 2.1 Vérifier l'historique des modifications

1. Ouvrez l'historique des modifications (Change History)
2. Réglez la plage de dates sur 7 jours avant le début de l'anomalie
3. Filtrez par campagnes affectées
4. Parcourez toutes les sources de changement

| Changement trouvé | Type de changement | Date | Source | Peut causer l'anomalie ? |
|-------------|-----------|------|--------|---------------------|
| ___ | ___ | ___ | ___ | Oui / Non |

### 2.2 Vérifier les causes internes spécifiques

Déroulez cette checklist dans l'ordre :

| Cause interne | Comment vérifier | Constat |
|---------------|-------------|---------|
| **Changement de stratégie d'enchères** | Historique des modifications : modifications de stratégie d'enchères | Changé / Inchangé |
| **Changement de budget** | Historique des modifications : modifications de budget | Changé / Inchangé |
| **Changements de mots-clés** | Historique des modifications : ajouts de mots-clés, mises en pause, changements de type de correspondance | Changé / Inchangé |
| **Changements d'annonces** | Historique des modifications : nouvelles annonces, annonces en pause, modifications de texte | Changé / Inchangé |
| **Changements de ciblage** | Historique des modifications : changements de zone géographique, d'audience, de réseau | Changé / Inchangé |
| **Changement de suivi des conversions** | Historique des modifications : modifications d'action de conversion | Changé / Inchangé |
| **Changement de landing page** | Vérifier avec l'équipe web ou via le monitoring d'URL | Changé / Inchangé |
| **Recommandations appliquées automatiquement** | Historique des modifications : filtrer par « Auto-applied » | Trouvé / Non trouvé |

> 💡 **Si vous trouvez une cause interne :** déterminez si elle était intentionnelle. Si oui, évaluez si le changement a besoin de plus de temps ou doit être annulé. Si non, annulez-le.

---

## Phase 3️⃣: Diagnostic de l'arbre de métriques (15 min)

### 3.1 Identifier la métrique racine

Si aucune cause interne n'a été trouvée, remontez l'arbre de métriques pour trouver où la rupture prend son origine.

**Partez de votre métrique objectif et remontez :**

```
Goal metric changed (ROAS, CPA, Revenue, Profit)
│
├─ Revenue/Conv. Value changed?
│   ├─ YES → Conversions changed or AOV changed?
│   │         ├─ Conversions → Go to conversion branch
│   │         └─ AOV → Pricing, product mix, or offer issue
│   └─ NO → Cost changed?
│            └─ CPC or click volume?
│
├─ Conversions changed?
│   ├─ YES → Clicks changed or CVR changed?
│   │         ├─ Clicks → Go to traffic branch
│   │         └─ CVR → Landing page, offer, or audience quality issue
│   └─ NO → Check attribution and conversion lag
│
└─ Clicks changed?
    ├─ YES → Impressions changed or CTR changed?
    │         ├─ Impressions → Budget, QS, competitive, or search volume issue
    │         └─ CTR → Ad relevance, creative, or SERP position issue
    └─ NO → Check other metrics (CPC, conv. rate)
```

### 3.2 Segmenter la métrique racine

Une fois la métrique racine identifiée (la métrique de plus haut niveau qui a bougé), segmentez-la pour trouver où le changement se concentre :

| Segment | Vérification | Constat |
|---------|-------|---------|
| **Campagne** | Quelles campagnes sont affectées ? | Toutes / Spécifique : ___ |
| **Appareil** | Le changement est-il spécifique à un appareil ? | Tous / Ordinateur / Mobile / Tablette |
| **Zone géographique** | Le changement est-il spécifique à une zone ? | Toutes / Spécifique : ___ |
| **Jour de la semaine** | Y a-t-il un schéma par jour ? | Tous / Spécifique : ___ |
| **Audience** | Une audience spécifique est-elle affectée ? | Toutes / Spécifique : ___ |
| **Termes de recherche** | De nouveaux termes de recherche se déclenchent-ils ? (Search uniquement) | Normal / Nouveaux termes : ___ |
| **Réseau** | Search vs. Partenaires vs. Display | Tous / Spécifique : ___ |

> 💡 **Segmentez une dimension à la fois :** croiser plusieurs segments (mobile + Californie + mardi) crée des échantillons trop petits pour être fiables. Trouvez l'unique dimension qui explique le mouvement.

### 3.3 Identifier la cause racine

À partir de la métrique racine et de l'analyse par segment :

| Métrique racine | Causes racines fréquentes |
|------------|-------------------|
| **Impressions en baisse** | Limitation par le budget, baisse du niveau de qualité, pression concurrentielle, déclin du volume de recherche |
| **CTR en baisse** | Fatigue publicitaire, nouvelles annonces concurrentes, mauvaise position d'annonce, termes de recherche non pertinents |
| **CPC en hausse** | Hausse des enchères des concurrents, baisse du niveau de qualité, expansion de la requête large |
| **CVR en baisse** | Problème de landing page, changement d'offre, décalage de qualité d'audience, problème de suivi |
| **AOV en baisse** | Décalage du mix produits, changement de prix, fin d'une période promotionnelle |

---

## Phase 4️⃣: Vérification des causes externes (5 min)

Si aucune cause interne ni explication claire par l'arbre de métriques :

### 4.1 Vérifier les facteurs externes

| Facteur externe | Comment vérifier | Constat |
|----------------|-------------|---------|
| **Activité des concurrents** | Insights sur les enchères (IS, chevauchement, position) | Changé / Inchangé |
| **Saisonnalité** | Comparer à la même période l'an dernier | Saisonnier attendu / Non saisonnier |
| **Événements de marché** | Actualités, événements sectoriels, changements macro-économiques | Trouvé : ___ / Non applicable |
| **Changements d'algorithme/système Google** | Tableau de bord de statut Google Ads, actualités du secteur | Trouvé : ___ / Non applicable |
| **Changements de plateforme** | Notifications de l'interface Google Ads, annonces sur le blog | Trouvé : ___ / Non applicable |

### 4.2 Vérifier les problèmes spécifiques au suivi

Si les conversions sont l'anomalie mais que les métriques de trafic sont stables :

| Vérification | Comment | Constat |
|-------|-----|---------|
| Déclenchement du tag | Google Tag Assistant ou rapports de conversions en temps réel | Se déclenche / Ne se déclenche pas |
| Comparaison backend | Comparer les conversions Google Ads aux données backend | Correspond / Écart |
| Délai de conversion | Vérifier « Conversions (par date de conversion) » vs. standard | Délai normal / Étendu |
| Changement d'attribution | Vérifier si le modèle d'attribution a été changé | Inchangé / Changé |

---

## Phase 5️⃣: Résolution (10 min)

### 5.1 Déterminer la correction

| Type de cause racine | Approche de résolution |
|----------------|-------------------|
| **Changement interne (non intentionnel)** | Annuler le changement |
| **Changement interne (intentionnel mais sous-performant)** | Évaluer : donner plus de temps ou annuler |
| **Problème de suivi** | Corriger le suivi immédiatement |
| **Problème de landing page** | Corriger la page ou rediriger le trafic vers une page fonctionnelle |
| **Pression concurrentielle** | Évaluer si les KPI sont toujours dans la cible, ne pas courir après la position |
| **Saisonnier/externe** | Ajuster les attentes, ne pas surcorriger |
| **Décalage de qualité d'audience** | Revoir le ciblage, ajouter des exclusions, ajuster les audiences |
| **Inconnu** | Surveiller une période de plus, faire remonter si cela persiste |

### 5.2 Créer le plan de résolution

| Élément | Détail |
|------|--------|
| **Cause racine** | ___ |
| **Preuves** | ___ |
| **Correction** | ___ |
| **Responsable** | ___ |
| **Échéance** | ___ |
| **Métrique de succès** | Quelle métrique revenant à quel niveau confirme que la correction a fonctionné |
| **Date de revue** | Quand vérifier si la correction a résolu l'anomalie |

### 5.3 Documenter l'investigation

```
Anomaly Investigation - [Date]
Account: [Name]

ANOMALY
Metric: [Metric] [direction] by [magnitude]
Entity: [Scope]
Duration: [Timeframe]
Classification: [Breakage / Degradation / Spike / Structural]

INVESTIGATION
Internal causes checked: [List]
Root metric: [Metric at deepest level]
Key segment: [The dimension that explains the movement]
External factors: [Checked and findings]

ROOT CAUSE
Cause: [Description]
Evidence: [Data points supporting this conclusion]
Confidence: High / Medium / Low

RESOLUTION
Action: [Fix description]
Owner: [Name]
Timeline: [When]
Review: [Date to verify fix worked]
```

---

## Validation et critères de complétion

Cette SOP est terminée quand :

- [ ] Anomalie confirmée comme réelle (a passé les trois tests) ou classée comme bruit
- [ ] Causes internes vérifiées via l'historique des modifications
- [ ] Arbre de métriques remonté jusqu'à la métrique racine
- [ ] Métrique racine segmentée pour isoler la dimension affectée
- [ ] Causes externes évaluées
- [ ] Cause racine identifiée (ou documentée comme inconnue avec les prochaines étapes)
- [ ] Plan de résolution créé avec responsable et date de revue
- [ ] Investigation documentée

---

## Passerelle de sortie

Après l'investigation :

| Délai | Action |
|-----------|--------|
| Le jour même | Démarrer la correction pour les anomalies de type cassure |
| Cette semaine | Mettre en œuvre le plan de résolution pour les anomalies de dégradation/pic |
| Date de revue | Vérifier que la correction a résolu l'anomalie |

**Si la cause racine est inconnue :**

| Durée | Action |
|----------|--------|
| Après 1 période de plus | Relancer l'investigation avec de nouvelles données |
| Après 2 périodes de plus | Faire remonter : mobiliser une expertise supplémentaire |
| Si résolu de soi-même | Documenter comme transitoire, mettre à jour la bibliothèque de schémas |

---

## Référence rapide : bibliothèque support

| Document | Type | Utilisé dans |
|----------|------|---------|
| [Anomaly Detection Mental Model](<Optimisation - Détection des anomalies.md>) | Mental Model | Phase 1 |
| [Metric Tree Reference](<../strategie/Strategie - Arbre de métriques.md>) | Reference | Phase 3 |
| [Account Change History Reference](<Optimisation - Historique des modifications.md>) | Reference | Phase 2 |
| [Google Ads Metrics Reference](<Optimisation - Alertes et règles Google Ads.md>) | Reference | Phase 3 |
| [Insights sur les enchères Reference](<../search/Search - Insights sur les enchères.md>) | Reference | Phase 4 |

---

## Procédures liées

| SOP | Relation |
|-----|--------------|
| [SOP - Check quotidien de sante du compte](<Optimisation - Check quotidien de santé du compte.md>) | Amont (le triage quotidien déclenche cette SOP) |
| [SOP - Revue de performance hebdomadaire](<../../01-strategie/reporting/Reporting - Revue de performance hebdomadaire.md>) | Amont (la revue hebdomadaire déclenche une investigation plus poussée) |
| [SOP - Resoudre les refus d'annonces](<../strategie/Strategie - Résoudre les refus d'annonces.md>) | Aval (si les refus sont la cause racine) |

---

## Erreurs fréquentes

| Erreur | Pourquoi ça arrive | Comment l'éviter |
|---------|----------------|--------------|
| Investiguer du bruit comme si c'était une anomalie | Sauter les trois tests | Toujours dérouler d'abord les tests de volume, d'ampleur et de persistance |
| S'arrêter à la corrélation | « Le CPC a monté, donc c'est ça le problème » | Remonter en amont jusqu'à la cause racine, pas seulement la première métrique qui a bougé |
| Ne pas vérifier l'historique des modifications en premier | Sauter au diagnostic sans écarter les causes internes | Toujours vérifier l'historique des modifications avant l'analyse de l'arbre de métriques |
| Sur-segmenter | Croiser 3+ dimensions, trouver des « schémas » dans de petits échantillons | Segmenter une dimension à la fois |
| Corriger sans documenter | La résolution marche mais le schéma n'est pas consigné | Documenter chaque investigation pour référence future |
| Investiguer trop longtemps | Rendements décroissants après 60 minutes | Plafonner à 60 minutes, faire remonter ou reprendre si non résolu |
