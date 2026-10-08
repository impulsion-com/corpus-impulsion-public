# Gérer le backlog d'experimentations

> **Plateforme :** Stratégie
> **Catégorie :** Expérimentation
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Cette SOP vous guide pour capturer les idées d'expérimentations, les scorer par priorité, planifier les expériences dans votre cadence d'optimisation, et documenter les résultats pour que les apprentissages se cumulent dans le temps.

> ❓ **La question clé :** Quelles expériences devrais-je lancer ensuite, et comment je m'assure que rien ne se perd entre les cycles ?

Un backlog sans process devient un cimetière de bonnes idées. Cette SOP transforme des idées de tests éparpillées en un pipeline classé qui alimente vos Constraint Sprints et votre cadence d'optimisation avec les expériences à plus haute valeur en premier.

---

## Ce que cette SOP ne couvre PAS

Cette SOP ne couvre **pas :**

- Expliquer comment dérouler une expérience individuelle (Voir : [SOP - Executer une experimentation de campagne](<../../03-google-ads/strategie/Strategie - Lancer une expérience de campagne.md>))
- Enseigner le document de décision de testing (Voir : [Testing and Experimentation Mental Model](<Expérimentation - Tests et expérimentations.md>))
- Détailler les options de configuration d'expérience (Voir : [Experiment Configuration Reference](<../../03-google-ads/strategie/Strategie - Configuration des expériences.md>))
- Couvrir la théorie de priorisation des optimisations (Voir : [Optimization prioritization & sequencing](<../fondamentaux/Fondamentaux - Priorisation et séquençage des optimisations.md>))
- Définir la méthodologie Sprint (Voir : [Constraint sprints and focused execution](<../fondamentaux/Fondamentaux - Sprints contrainte et exécution focalisée.md>))

## Quand utiliser cette SOP

| Déclencheur | Fréquence | Portée |
|---------|-----------|-------|
| Capturer de nouvelles idées | Chaque cycle d'optimisation (revue hebdomadaire ou bi-hebdo) | Ajouter les items au fil des découvertes |
| Scorer et prioriser | Après chaque session de capture | Scorer les nouveaux items, re-scorer les items modifiés |
| Sélectionner les expériences | Début de chaque Constraint Sprint ou planning mensuel | Choisir les items les mieux scorés pour exécution |
| Documenter les résultats | Quand une expérience se termine | Enregistrer le résultat dans les 48 heures |
| Revue complète du backlog | Mensuelle | Re-scorer tous les items, archiver les complétés, aligner avec les stakeholders |

---

## Avant de commencer

### Prérequis

- Accès à votre backlog d'optimisation (spreadsheet, outil projet, ou document structuré)
- Focus du Constraint Sprint actuel et bucket de contrainte active
- Notes de la dernière revue de performance hebdomadaire ou mensuelle
- Résultats de toute expérience récemment terminée
- Input des stakeholders sur les priorités business (si disponible)

### Documents de référence (à garder ouverts)

| Document | Utilisé pour |
|----------|----------|
| [Optimization prioritization & sequencing](<../fondamentaux/Fondamentaux - Priorisation et séquençage des optimisations.md>) | Méthode de scoring ICE |
| [Testing and Experimentation Mental Model](<Expérimentation - Tests et expérimentations.md>) | Décider de ce qui mérite une expérience formelle |
| [Constraint sprints and focused execution](<../fondamentaux/Fondamentaux - Sprints contrainte et exécution focalisée.md>) | Connexion avec le planning des Sprints |
| [Optimization Cadence Mental Model](<../../03-google-ads/strategie/Strategie - Cadence d'optimisation.md>) | Rythme de revue pour le planning |
| [Experiment Configuration Reference](<../../03-google-ads/strategie/Strategie - Configuration des expériences.md>) | Vérification de faisabilité des types d'expériences |

---

## Cadre d'exécution

| Phase | Objectif | Résultat |
|-------|---------|--------|
| **Phase 1️⃣ : Capturer** | Collecter les idées d'expérimentation de chaque cycle d'optimisation | Backlog mis à jour avec les nouveaux items |
| **Phase 2️⃣ : Scorer** | Appliquer le scoring ICE pour prioriser les items | Backlog classé |
| **Phase 3️⃣ : Sélectionner** | Choisir les expériences pour la période en cours | Shortlist d'expériences |
| **Phase 4️⃣ : Planifier** | Mapper les expériences sélectionnées dans la cadence d'optimisation | Plan d'expériences prêt pour le calendrier |
| **Phase 5️⃣ : Documenter** | Enregistrer les résultats et apprentissages des expériences terminées | Dossiers d'expériences complétés |
| **Phase 6️⃣ : Revue mensuelle** | Re-scorer le backlog, archiver les vieux items, aligner avec les stakeholders | Backlog rafraîchi |

---

## Phase 1️⃣ : Capturer les nouvelles idées d'expériences

### 1.1 Identifier les sources d'idées d'expériences

Pendant chaque cycle d'optimisation (revue hebdomadaire, revue mensuelle, évaluation de Sprint), capturez toute observation qui pourrait devenir une hypothèse de test. Ne filtrez pas encore : notez tout.

| Source | Ce qu'il faut chercher |
|--------|-----------------|
| Revue de performance hebdomadaire | Métriques sous la cible qui suggèrent un changement testable |
| Analyse des termes de recherche | Patterns de requêtes suggérant des tests de ciblage ou de structure |
| Activité concurrentielle | Shifts dans les auction insights qui suggèrent des tests de stratégie d'enchères |
| Métriques de landing page | Différences de CVR entre pages suggérant des tests de LP |
| Feedback des stakeholders | Changements business qui affectent la stratégie de campagne |
| Évaluation de Sprint | Contraintes partiellement résolues qui nécessitent plus d'expérimentation |
| Performance des annonces | Combinaisons d'assets RSA suggérant des tests de direction créative |
| Veille industrie | Nouvelles fonctionnalités, stratégies ou approches qui méritent d'être validées |

### 1.2 Écrire l'entrée du backlog

Pour chaque idée, capturez ces champs :

**Valeurs de statut :**

| Statut | Signification |
|--------|---------|
| New | Capturé mais pas encore priorisé |
| Ready | Priorisé et approuvé pour le prochain slot disponible |
| Running | L'expérience est live |
| Complete | Résultats analysés et documentés |
| Cancelled | Abandonné (raison documentée) |

```
BACKLOG ENTRY
=============
ID: [Numéro séquentiel]
Date d'ajout: [Date]
Source: [Où vous avez trouvé cette idée]
Compte: [Nom du compte]
Campagne(s): [Campagnes affectées]
Bucket de contrainte: [Measurement / Business / Conversion / Traffic / Creative]
Hypothèse: Si nous [changeons X], alors [métrique Y] va [direction] de [estimation %]
              parce que [rationale].
Statut: New
```

> ⚠️ **Écrivez une vraie hypothèse.** "Tester nouvelle landing page" n'est pas un item de backlog. "Changer la landing page de la campagne Brand de la homepage vers une page produit dédiée va augmenter le CVR de 20% parce que la homepage actuelle a un taux de rebond de 78% sur le trafic Brand" est un item de backlog.

### 1.3 Vérifier les doublons

Avant d'ajouter, scannez le backlog existant pour des items similaires. Si une hypothèse liée existe déjà, mettez à jour l'entrée existante avec les nouvelles preuves de soutien plutôt que de créer un doublon.

---

## Phase 2️⃣ : Scorer et prioriser les items du backlog

### 2.1 Appliquer le scoring ICE

Scorez chaque item nouveau ou modifié du backlog sur trois dimensions. Utilisez la même méthode depuis [Optimization prioritization & sequencing](<../fondamentaux/Fondamentaux - Priorisation et séquençage des optimisations.md>) :

**Impact (1-3) : Combien ça va bouger la métrique du bottleneck si ça marche ?**

| Score | Signification | Exemple |
|-------|---------|---------|
| 3 | Bouge directement la métrique de la contrainte principale | Test de stratégie d'enchères sur la campagne avec la plus haute dépense |
| 2 | Soutient indirectement la contrainte ou bouge une métrique secondaire | Test d'audience sur une campagne de soutien |
| 1 | Sympa à avoir, amélioration marginale | Test d'ad scheduling sur une campagne à faible dépense |

**Confidence (1-3) : À quel point êtes-vous sûr que ça va marcher ?**

| Score | Signification | Exemple |
|-------|---------|---------|
| 3 | Pattern éprouvé, données claires qui le soutiennent, déjà fait | Passer en CPA cible après 60+ conversions/mois |
| 2 | Hypothèse raisonnable, quelques données de soutien | Nouvelle LP basée sur des données de heatmap montrant de la friction |
| 1 | Spéculatif, vaut le coup d'essayer mais incertain | Tester une structure de campagne complètement nouvelle |

**Effort (1-3) : Combien de temps et de ressources ça demande ?**

| Score | Signification | Exemple |
|-------|---------|---------|
| 1 | Moins d'une heure, simple changement de configuration | Test d'ajustement de CPA cible |
| 2 | Demi-journée à journée complète, nécessite du setup | Test A/B de landing page avec page existante |
| 3 | Projet majeur, plusieurs jours ou dépendances externes | Build de nouvelle landing page + setup d'expérience |

### 2.2 Calculer le score de priorité

**Score de priorité = (Impact x Confidence) / Effort**

| Plage de score | Classification | Action |
|-------------|---------------|--------|
| 4.5 - 9.0 | Priorité haute | Planifier pour le prochain slot disponible |
| 2.0 - 4.4 | Priorité moyenne | Mettre en file pour le prochain Sprint |
| 0.1 - 1.9 | Priorité basse | Garder dans le backlog, revisiter mensuellement |

### 2.3 Appliquer le filtre de hiérarchie de contraintes

Même une expérience à fort score est dépriorisée si elle vise un bucket en aval pendant qu'une contrainte amont est active. La hiérarchie s'applique toujours : Measurement > Business > Conversion > Traffic > Creative.

| Si la contrainte active est... | Alors prioriser les expériences en... | Reporter les expériences en... |
|---------------------------|----------------------------------|------------------------|
| Measurement | Measurement uniquement | Toutes les autres |
| Business | Business (Measurement résolue) | Conversion, Traffic, Creative |
| Conversion | Conversion (amont résolue) | Traffic, Creative |
| Traffic | Traffic (amont résolue) | Creative |
| Creative | Creative (toute l'amont résolue) | Aucune |

> 💡 **Les quick wins sont l'exception :** Si vous repérez une expérience à haut score et faible effort dans un bucket en aval, vous pouvez la dérouler pendant le temps de maintenance sans en faire votre focus de Sprint. La hiérarchie gouverne le planning de Sprint, pas chaque petite action.

### 2.4 Mettre à jour le backlog classé

Triez tous les items actifs par score de priorité (le plus haut en premier), puis par alignement avec la contrainte. Votre backlog devrait ressembler à ça :

```
EXPERIMENT BACKLOG
==================
Compte: [Nom]
Dernier scoring: [Date]
Contrainte active: [Bucket + métrique]

| Rang | ID | Hypothèse (courte) | Bucket | I | C | E | Score | Statut |
|------|----|--------------------|--------|---|---|---|-------|--------|
| 1    | 12 | mCPC sur camp Brand | Traffic | 3 | 3 | 1 | 9.0  | Ready  |
| 2    | 08 | Nouvelle LP Produit | Conv.  | 3 | 2 | 2 | 3.0  | Ready  |
| 3    | 15 | Expansion audience  | Traffic | 2 | 2 | 1 | 4.0  | New    |
| ...  |    |                    |        |   |   |   |       |        |
```

---

## Phase 3️⃣ : Sélectionner les expériences pour la période en cours

### 3.1 Vérifier la capacité d'expériences

Avant de sélectionner, vérifiez combien d'expériences vous pouvez dérouler en parallèle :

| Contrainte | Limite |
|------------|-------|
| Expériences actives par compte | 5 maximum (limite Google Ads) |
| Expériences par campagne | 1 active à la fois (best practice) |
| Expériences en parallèle recommandées | 1-2 par compte (pour maintenir le focus) |
| Alignement Sprint | Items les mieux scorés dans le bucket de contrainte active en premier |

### 3.2 Appliquer le gate de décision d'expérimentation

Pour chaque item top-classé, confirmez qu'il qualifie pour une expérience formelle en utilisant le [Testing and Experimentation Mental Model](<Expérimentation - Tests et expérimentations.md>) :

| Vérification | Requis | Si non... |
|-------|-------------|----------|
| Fort impact ? | >10% d'effet potentiel sur le KPI principal | Implémenter directement, sauter l'expérience |
| Vraiment incertain ? | Résultat non prédictible depuis les données existantes | Implémenter directement, monitorer |
| Volume suffisant ? | 100+ conversions/mois dans la campagne cible | Décider au mieux, monitorer |

### 3.3 Sélectionner 1-3 expériences

Tirez les items les mieux scorés qui passent le gate d'expérimentation et qui s'alignent avec votre contrainte active. Marquez-les comme "Selected" dans le backlog.

```
SÉLECTIONNÉ POUR CETTE PÉRIODE
=========================
Sprint/Période: [Plage de dates]
Contrainte active: [Bucket + métrique]

| ID | Hypothèse | Campagne | Score de priorité | Démarrage prévu |
|----|-----------|----------|----------------|---------------|
| 12 | mCPC sur Brand | Brand - Search | 9.0 | [Date] |
| 08 | Nouvelle LP Produit | Product - Search | 3.0 | [Date] |
```

---

## Phase 4️⃣ : Planifier dans la cadence d'optimisation

### 4.1 Mapper les expériences au calendrier

Placez les expériences sélectionnées dans votre rythme d'optimisation, en respectant ces contraintes :

| Règle | Rationale |
|------|-----------|
| Ne pas lancer deux expériences sur la même campagne | Les effets d'interaction invalident les deux |
| Espacer les lancements de 3-5 jours entre campagnes | Permet le monitoring de la délivrabilité initiale par expérience |
| Éviter de lancer pendant les pics saisonniers connus | La variation saisonnière brouille les résultats |
| Aligner les dates de début avec le début du Sprint quand possible | Garde le focus expérience lié au travail de contrainte |

### 4.2 Bloquer les fenêtres de monitoring

Pour chaque expérience planifiée, ajoutez des checkpoints de monitoring à votre cadence :

| Délai | Vérification | Où dans la cadence |
|-----------|-------|-----------------|
| Jour 1 | Les deux bras reçoivent du trafic | Triage quotidien |
| Jour 2-3 | Pas de problèmes de délivrabilité ou de policy | Triage quotidien |
| Hebdomadaire | Vérification d'échec catastrophique (>30% pire) | Revue hebdomadaire |
| Date de fin + lag | Analyse complète des résultats | Session dédiée |

### 4.3 Communiquer avec les stakeholders

Avant de lancer, confirmez avec les stakeholders pertinents :

| Stakeholder | Communication |
|-------------|---------------|
| Équipe compte | Plan d'expérience, règles "ne pas toucher" pour les campagnes de test |
| Client/manager | Ce qui est testé, durée attendue, quand les résultats seront partagés |
| Équipe landing page | Si test de LP : disponibilité de la page, pas de changements pendant le test |

### 4.4 Documenter le plan d'expérience

Pour chaque expérience qui passe en exécution, créez un plan complet en utilisant le template depuis [SOP - Executer une experimentation de campagne](<../../03-google-ads/strategie/Strategie - Lancer une expérience de campagne.md>) :

```
EXPERIMENT PLAN
===============
ID Backlog: [Depuis le backlog]
Nom: [Nom descriptif]
Campagne: [Nom de campagne]
Hypothèse: [Hypothèse complète depuis le backlog]

Critères de succès:
- Principal: [Métrique] s'améliore de [X%]
- Garde-fous: [Métrique] reste au-dessus de [seuil]

Configuration:
- Split de trafic: 50/50
- Durée: [X] jours
- Date de début: [Date]
- Date de fin: [Date]

Règles de décision:
- Si significatif + positif: Appliquer le traitement
- Si significatif + négatif: Garder le contrôle
- Si non significatif: [Décision]
```

---

## Phase 5️⃣ : Documenter les résultats et apprentissages

### 5.1 Enregistrer les résultats d'expérience

Dans les 48 heures suivant la fin d'une expérience, documentez le résultat dans votre backlog et dans un dossier de résultats séparé :

```
EXPERIMENT RESULTS
==================
ID Backlog: [ID]
Nom: [Nom de l'expérience]
Durée: [Début] à [Fin]
Résultat: [Treatment a gagné / Control a gagné / Non concluant]

Résultats:
| Métrique     | Control | Treatment | Diff  | Significatif? |
|------------|---------|-----------|-------|--------------|
| [Principal]  | ___     | ___       | ___%  | O/N          |
| [Garde 1]  | ___     | ___       | ___%  | O/N          |
| [Garde 2]  | ___     | ___       | ___%  | O/N          |

Conclusion:
[Ce qu'on a appris]

Appliqué:
[Quelle action a été prise]

Prochaine action:
[Expérience de suivi, scaler à d'autres campagnes, ou aucune]
```

### 5.2 Mettre à jour le backlog

Changez le statut de l'item et ajoutez le résultat :

| Statut précédent | Nouveau statut | Quand |
|----------------|------------|------|
| Selected / Running | Completed: Winner applied | Treatment a gagné, appliqué à la campagne |
| Selected / Running | Completed: Control kept | Control a gagné ou non concluant |
| Selected / Running | Completed: Needs follow-up | Résultat partiel, nouvelle hypothèse générée |

### 5.3 Générer les items de suivi

Chaque expérience complétée devrait déclencher une de ces actions :

| Résultat | Suivi |
|---------|-----------|
| Gagnant clair | Ajouter "Scaler à des campagnes similaires" au backlog |
| Non concluant | Ajouter "Re-tester avec plus de volume ou plus de durée" |
| Perdant surprenant | Ajouter "Enquêter pourquoi", potentiellement une nouvelle hypothèse |
| Gagnant partiel | Ajouter "Affiner l'hypothèse et re-tester" |

### 5.4 Mettre à jour la base de connaissances

Maintenez un log en continu des apprentissages d'expériences par compte. Ça devient une connaissance institutionnelle :

```
EXPERIMENT KNOWLEDGE BASE
==========================
Compte: [Nom]

| Date | Test | Résultat | Apprentissage clé | Appliqué à |
|------|------|--------|-------------|------------|
| 2026-01 | tCPA vs MaxConv (Brand) | tCPA a gagné (-18% CPA) | Brand a un volume assez stable pour tCPA | Toutes les campagnes Brand |
| 2026-02 | Nouvelle LP (Product) | Non concluant | Besoin de 4+ semaines au volume actuel | Re-test planifié |
```

> 💡 **Ce log empêche de re-tester ce que vous savez déjà :** Avant d'ajouter une nouvelle expérience au backlog, vérifiez la base de connaissances pour les tests passés sur la même variable.

---

## Phase 6️⃣ : Revue mensuelle du backlog

### 6.1 Planifier la revue

Déroulez une revue complète du backlog une fois par mois, idéalement alignée avec votre cycle de revue de performance mensuelle. Budget temps : 30-45 minutes par compte.

### 6.2 Re-scorer tous les items actifs

Les priorités évoluent quand les métriques changent. Un item scoré Impact 1 le mois dernier peut être Impact 3 maintenant parce que vous avez résolu une contrainte de plus haute priorité et exposé un nouveau bottleneck.

Pour chaque item actif du backlog :

1. Confirmez que l'hypothèse est toujours pertinente (métrique toujours sous la cible, changement toujours nécessaire)
2. Mettre à jour le score Impact en fonction de la contrainte actuelle
3. Mettre à jour le score Confidence en fonction de toute nouvelle donnée
4. Mettre à jour le score Effort si les circonstances ont changé
5. Recalculer le score de priorité

### 6.3 Archiver les items complétés et non pertinents

| Action | Quand |
|--------|------|
| Archiver comme "Completed" | L'expérience a tourné, résultats documentés |
| Archiver comme "Obsolete" | Hypothèse plus pertinente (métrique améliorée, stratégie changée) |
| Archiver comme "Duplicate" | Fusionné dans un autre item de backlog |
| Garder actif | Toujours pertinent, pas encore testé |

### 6.4 Aligner avec les stakeholders

Dans votre meeting de revue mensuelle, couvrez :

| Item d'agenda | Objectif |
|-------------|---------|
| Partager les résultats d'expériences du mois passé | Construire la confiance dans le process d'expérimentation |
| Présenter les 3 items top du backlog pour le mois prochain | Obtenir le buy-in sur les tests à venir |
| Discuter des nouvelles idées des stakeholders | Capturer les hypothèses de test pilotées par le business |
| Passer en revue l'alignement avec les contraintes | Confirmer que les expériences visent les bons problèmes |

### 6.5 Mettre à jour les métriques du backlog

Suivez ces nombres mensuellement pour mesurer la santé de votre programme d'expérimentation :

| Métrique | Cible | Actuel |
|--------|--------|---------|
| Items actifs du backlog | 10-25 par compte | ___ |
| Expériences complétées ce mois | 1-3 | ___ |
| Taux de victoire (gagnant clair / total complété) | 30-50% | ___ |
| Jours moyens entre idée et lancement du test | <30 jours pour les hautes priorités | ___ |
| Items de plus de 90 jours sans action | <5 | ___ |

---

## Validation et critères de complétion

Cette SOP est terminée quand :

- [ ] Toutes les nouvelles idées d'expériences du cycle en cours sont capturées avec des hypothèses propres
- [ ] Les nouveaux items sont scorés en utilisant le document ICE (Impact x Confidence / Effort)
- [ ] Le backlog est trié par score de priorité et filtré par alignement avec la contrainte
- [ ] Les top expériences sont sélectionnées et passent le gate de décision d'expérimentation
- [ ] Les expériences sélectionnées sont planifiées dans la cadence d'optimisation avec des fenêtres de monitoring
- [ ] Toutes les expériences terminées ont des résultats documentés dans les 48 heures
- [ ] La base de connaissances est mise à jour avec les apprentissages
- [ ] La revue mensuelle est complétée (si due) : items re-scorés, items obsolètes archivés, stakeholders alignés

---

## Passerelle de sortie

Après la gestion du backlog :

| Sortie | Redirige vers |
|--------|-----------|
| Expériences sélectionnées prêtes à lancer | [SOP - Executer une experimentation de campagne](<../../03-google-ads/strategie/Strategie - Lancer une expérience de campagne.md>) |
| Résultats d'expériences affectant le planning de Sprint | [Constraint sprints and focused execution](<../fondamentaux/Fondamentaux - Sprints contrainte et exécution focalisée.md>) |
| Nouvelle contrainte identifiée depuis les résultats de tests | Prochain cycle de diagnostic hebdomadaire et planning de Sprint |
| Rapport stakeholders sur le programme d'expérimentation | Documentation de la revue de performance mensuelle |

**Cadence en continu :**

| Délai | Action |
|-----------|--------|
| Chaque cycle d'optimisation | Capturer les nouvelles idées (Phase 1) |
| Après capture | Scorer et classer (Phase 2) |
| Début de Sprint ou de mois | Sélectionner et planifier (Phases 3-4) |
| Quand une expérience se termine | Documenter les résultats (Phase 5) |
| Mensuelle | Revue complète du backlog (Phase 6) |

---

## Référence rapide : bibliothèque support

| Document | Type | Utilisé dans |
|----------|------|---------|
| [Optimization prioritization & sequencing](<../fondamentaux/Fondamentaux - Priorisation et séquençage des optimisations.md>) | Théorie | Phase 2 (scoring ICE) |
| [Testing and Experimentation Mental Model](<Expérimentation - Tests et expérimentations.md>) | Mental Model | Phase 3 (gate de testing) |
| [Constraint sprints and focused execution](<../fondamentaux/Fondamentaux - Sprints contrainte et exécution focalisée.md>) | Théorie | Phases 3-4 (alignement Sprint) |
| [Optimization Cadence Mental Model](<../../03-google-ads/strategie/Strategie - Cadence d'optimisation.md>) | Mental Model | Phase 4 (planification) |
| [Experiment Configuration Reference](<../../03-google-ads/strategie/Strategie - Configuration des expériences.md>) | Reference | Phase 4 (faisabilité) |
| [SOP - Executer une experimentation de campagne](<../../03-google-ads/strategie/Strategie - Lancer une expérience de campagne.md>) | SOP | Phases 4-5 (handoff d'exécution) |

---

## Procédures liées

| SOP | Relation |
|-----|--------------|
| [SOP - Executer une experimentation de campagne](<../../03-google-ads/strategie/Strategie - Lancer une expérience de campagne.md>) | Aval : exécute les expériences individuelles depuis ce backlog |
| [SOP - Revue de performance hebdomadaire](<../reporting/Reporting - Revue de performance hebdomadaire.md>) | Amont : génère des idées d'expériences pendant les revues |
| [SOP - Revue de performance mensuelle](<../reporting/Reporting - Revue de performance mensuelle.md>) | Amont : déclenche la revue mensuelle du backlog |

---

## Erreurs fréquentes

| Erreur | Pourquoi ça arrive | Comment l'éviter |
|---------|----------------|--------------|
| Idées capturées sans hypothèses | Précipitation pendant la revue | Imposer le template d'hypothèse pour chaque entrée |
| Le backlog grossit sans action | Pas de discipline de sélection | Sélectionner 1-3 expériences chaque Sprint/mois |
| Les mêmes expériences re-proposées | Pas de base de connaissances | Vérifier la base de connaissances avant d'ajouter de nouveaux items |
| Expériences pas liées aux contraintes | Tester ce qui semble intéressant | Appliquer le filtre de hiérarchie de contraintes avant de sélectionner |
| Résultats pas documentés | Passé à la tâche suivante | Documenter dans les 48 heures, en faire un livrable de Sprint |
| Stakeholders surpris par les tests | Pas d'étape de communication | La réunion d'alignement mensuelle couvre les expériences à venir |
| Le backlog devient obsolète | Pas de cadence de revue mensuelle | Mettre la revue mensuelle au calendrier comme un événement récurrent |
| Le scoring semble arbitraire | Première utilisation de la méthode ICE | Calibrer en scorant 5 expériences passées que vous avez déjà déroulées |
