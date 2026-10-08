# Surveiller la performance des pages de destination

> **Plateforme :** Landing Pages
> **Catégorie :** Audit
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Cette SOP établit un processus de revue récurrent de la performance des landing pages sur ton compte Google Ads. Elle identifie les pages sous-performantes, diagnostique la cause probable, et oriente chaque problème vers le bon workflow d'optimisation ou de test.

> ❓ **La question clé :** Quelles landing pages te coûtent des conversions, et que faut-il faire ?

Les landing pages se dégradent avec le temps. Les concurrents améliorent leurs pages, les attentes de l'audience évoluent, et les patterns saisonniers changent le comportement de conversion. Sans monitoring systématique, les pages sous-performantes drainent silencieusement le budget pendant des semaines voire des mois avant que quelqu'un s'en aperçoive.

---

## Ce que cette SOP ne couvre PAS

Cette SOP ne couvre **pas :**

- Construire de nouvelles landing pages (Voir : [SOP - Construire une page de destination a forte conversion](<../construction/Construction - Construire une LP e-commerce.md>))
- Exécuter les corrections d'optimisation elles-mêmes (Voir : [SOP - Auditer et optimiser une page de destination existante](<Audit - Auditer et optimiser une LP existante.md>))
- Corriger les problèmes de Niveau de qualité liés à l'expérience de landing page (Voir : [SOP - Ameliorer l'experience de la page de destination](<Audit - Test A-B de Landing Page.md>))
- Valider la structure de la LP ou les éléments de checklist (Voir : [Checklist Qualité LP](<Audit - [Review] Qualité de la LP.md>))

**Distinction clé :** Cette SOP est un processus récurrent de monitoring et de triage. Elle identifie les problèmes et les oriente. D'autres SOP exécutent les corrections.

## Quand utiliser cette SOP

| Niveau de trafic | Cadence de revue | Justification |
|--------------------|----------------|-----------|
| Pages à fort trafic (500+ sessions/semaine) | Bi-hebdomadaire | Assez de données pour détecter rapidement les changements significatifs |
| Pages standard (100-500 sessions/semaine) | Mensuelle | Besoin de 2-4 semaines de données pour des tendances fiables |
| Pages à faible trafic (<100 sessions/semaine) | Trimestrielle | Données hebdomadaires insuffisantes pour un signal |

> ⚠️ **Ne saute pas entièrement les pages à faible trafic :** Faible trafic ne veut pas dire faible importance. Ces pages peuvent servir des mots-clés à forte intention avec un bon potentiel de CPA. Examine-les moins fréquemment, mais examine-les quand même.

---

## Avant de commencer

### Prérequis

- Accès au compte Google Ads (rapport Landing Pages)
- Accès à GA4 ou plateforme analytics équivalente
- Accès à Google PageSpeed Insights ou Lighthouse
- KPI cibles documentés (CVR, CPA, ROAS) par campagne ou landing page
- Notes des revues précédentes (s'il ne s'agit pas de la première exécution)

### Documents de référence (à garder ouverts)

| Document | Utilisé pour |
|----------|----------|
| [Checklist Qualité LP](<Audit - [Review] Qualité de la LP.md>) | Vérifications structurelles rapides lors du diagnostic |
| [SOP - Ameliorer l'experience de la page de destination](<Audit - Test A-B de Landing Page.md>) | Orientation pour les problèmes de Niveau de qualité (LP Experience) |
| [SOP - Auditer et optimiser une page de destination existante](<Audit - Auditer et optimiser une LP existante.md>) | Orientation pour une optimisation complète de LP |

### Temps estimé

| Phase | Durée |
|-------|------|
| Extraire les données de performance des LP | 10 min |
| Analyser les métriques au niveau page | 15 min |
| Segmenter par source de trafic et campagne | 10 min |
| Diagnostiquer les pages sous-performantes | 15 min |
| Orienter les actions | 5 min |
| Documenter et planifier le suivi | 5 min |
| **Total** | **60 min** |

---

## Cadre d'exécution

| Phase | Objectif | Résultat |
|-------|---------|--------|
| **Phase 1️⃣ : Extraire les données de performance des LP** | Rassembler toutes les métriques LP dans une seule vue | Snapshot de performance par page |
| **Phase 2️⃣ : Analyser les métriques au niveau page** | Évaluer CVR, vitesse et bounce par rapport aux seuils | Pages signalées avec dépassements de seuils |
| **Phase 3️⃣ : Segmenter par source de trafic et campagne** | Déterminer si les problèmes touchent toute la page ou sont spécifiques à une source | Liste de problèmes segmentés |
| **Phase 4️⃣ : Diagnostiquer les pages sous-performantes** | Identifier la cause racine pour chaque page signalée | Diagnostic par page |
| **Phase 5️⃣ : Orienter les actions** | Assigner chaque problème au bon workflow | Journal d'orientation des actions |
| **Phase 6️⃣ : Documenter et planifier le suivi** | Consigner les conclusions et fixer la date de la prochaine revue | Rapport de revue |

---

## Phase 1️⃣ : Extraire les données de performance des LP

### 1.1 Extraire le rapport Landing Pages

1. Ouvre Google Ads
2. Naviguez vers Campaigns > Insights & Reports > Landing Pages
3. Définis la plage de dates correspondant à la période de revue (14 jours pour bi-hebdomadaire, 30 jours pour mensuel, 90 jours pour trimestriel)
4. Ajoute les colonnes si elles ne sont pas déjà présentes : Clicks, Impressions, CTR, Conversions, Conv. Rate, Cost, CPA, Conv. Value, ROAS, Mobile Speed Score

### 1.2 Extraire les données analytics

Ouvre GA4 (ou ta plateforme analytics) et extrais ce qui suit pour chaque landing page :

| Métrique | Source | Pourquoi c'est important |
|--------|--------|----------------|
| Taux de rebond | GA4 | Un rebond élevé signale un mauvais message match ou un chargement lent |
| Durée moyenne de session | GA4 | Une durée faible signale que les visiteurs ne s'engagent pas |
| Profondeur de scroll (si trackée) | GA4 | Un scroll faible veut dire que le contenu above-the-fold n'accroche pas |
| Répartition par device (CVR mobile vs desktop) | GA4 | Les problèmes spécifiques au mobile sont invisibles dans les données agrégées |

### 1.3 Lancer les tests de vitesse

Pour chaque landing page active (ou au minimum le top 10 par dépense) :

1. Ouvre [PageSpeed Insights](https://pagespeed.web.dev/)
2. Entre l'URL de la landing page
3. Note les scores de performance mobile et desktop
4. Note les Core Web Vitals : LCP, INP, CLS

### 1.4 Compiler le snapshot de performance

Crée ou mets à jour ton tableau de suivi avec une ligne par landing page :

| URL de la landing page | Sessions | Conversions | CVR | Valeur de conv. | ROAS | Taux de rebond | Durée moy. | CPA | Vitesse mobile | Vitesse desktop | LCP (mobile) |
|------------------|----------|-------------|-----|-------------|------|-------------|---------------|-----|--------------|---------------|--------------|
| /offer-a | | | | | | | | | | | |
| /offer-b | | | | | | | | | | | |

---

## Phase 2️⃣ : Analyser les métriques au niveau page

### 2.1 Appliquer les vérifications de seuils

Signale toute page qui dépasse un ou plusieurs de ces seuils :

| Métrique | Seuil de déclenchement | Sévérité |
|--------|-------------------|----------|
| CVR | Sous 50 % du CVR moyen du compte pour ce type de campagne | Haute |
| ROAS | Sous 50 % du ROAS cible de la campagne (pour les campagnes value-based) | Haute |
| CPA | Au-dessus de 2x le CPA cible de la campagne (pour les campagnes CPA-based) | Haute |
| CVR | En baisse sur 3 périodes de revue consécutives ou plus | Haute |
| Taux de rebond | Au-dessus de 70 % pour Lead Gen/SaaS, au-dessus de 50 % pour LP dédiée (hors homepage) | Moyenne |
| Score PageSpeed mobile | Sous 50 | Moyenne |
| Score PageSpeed desktop | Sous 70 | Faible |
| LCP (mobile) | Au-dessus de 4 secondes | Moyenne |
| CLS | Au-dessus de 0,25 | Faible |
| CVR mobile vs CVR desktop | CVR mobile inférieur à 40 % du CVR desktop | Haute |
| Durée moy. de session | Sous 15 secondes | Moyenne |

> 💡 **Utilise tes propres baselines :** Les seuils ci-dessus sont des points de départ. Après 2-3 cycles de revue, remplace-les par des seuils basés sur les moyennes de ton propre compte. Une page convertissant à 2 % peut être correcte dans une verticale et catastrophique dans une autre.

### 2.2 Catégoriser les pages signalées

Pour chaque page signalée, attribue une catégorie :

| Catégorie | Critères | Exemple |
|----------|----------|---------|
| **Problème de CVR/ROAS** | CVR ou ROAS sous seuil ou tendance baissière | Page convertit à 1,2 % vs moyenne du compte de 3,5 %, ou ROAS 1,5 vs cible 4,0 |
| **Problème de vitesse** | Vitesse mobile ou desktop sous seuil | Score PageSpeed mobile à 32 |
| **Problème d'engagement** | Rebond élevé, durée faible, scroll faible | 78 % de taux de rebond, 8 secondes en moyenne |
| **Problème mobile** | CVR mobile très inférieur au desktop | CVR desktop 4,1 %, CVR mobile 0,9 % |
| **Problèmes multiples** | Deux catégories ou plus signalées | CVR faible + mobile lent + rebond élevé |

---

## Phase 3️⃣ : Segmenter par source de trafic et campagne

### 3.1 Segmenter chaque page signalée

Une landing page peut bien performer pour une source de trafic et mal pour une autre. Avant de diagnostiquer, segmente :

1. Dans Google Ads, filtre le rapport Landing Pages par campagne
2. Dans GA4, segmente la performance des landing pages par source/medium

### 3.2 Vérifier la segmentation au niveau campagne

| Landing page | CVR Campagne A | ROAS Campagne A | CVR Campagne B | ROAS Campagne B | CVR global | ROAS global |
|-------------|----------------|-----------------|----------------|-----------------|-------------|--------------|
| /offer-a | | | | | | |

Cherche :

- **Une campagne tire la moyenne vers le bas :** La page est correcte, mais une campagne envoie du trafic mal aligné
- **Toutes les campagnes sous-performent :** Le problème vient de la page elle-même
- **Les nouvelles campagnes sous-performent :** Problème de message match avec les nouvelles annonces

### 3.3 Vérifier le mapping final URL au niveau keyword

Pour les campagnes Search, vérifie que les mots-clés pointent vers les bonnes landing pages :

1. Ouvre le rapport Keywords
2. Ajoute la colonne "Final URL"
3. Trie par dépense (du plus élevé au plus faible)
4. Vérifie : la final URL de chaque mot-clé correspond-elle à l'intention du chercheur ?

| Mot-clé | Final URL | Intention alignée ? | Problème |
|---------|-----------|---------------|-------|
| "plombier urgence [ville]" | /services | Non | Page générique, pas spécifique à l'urgence |
| "crm essai gratuit" | /pricing | Non | Page de prix, pas inscription à l'essai |
| "chaussures running femme" | /running-shoes | Partiel | Page catégorie, pas filtrée pour femmes |

> ⚠️ **Le mauvais routing est invisible dans les données agrégées :** Une landing page avec un CVR "acceptable" peut en fait contenir un mix de trafic correctement routé qui convertit bien et de trafic mal routé qui ne convertit pas. L'analyse au niveau keyword révèle ce problème.

---

## Phase 4️⃣ : Diagnostiquer les pages sous-performantes

### 4.1 Cadre de diagnostic

Pour chaque page signalée, déroule l'arbre de diagnostic :

**Si le CVR est faible :**

| Vérification | Constat | Cause probable |
|-------|---------|-------------|
| Le taux de rebond est-il élevé ? | Oui | Échec du message match ou chargement lent : les visiteurs partent immédiatement |
| Taux de rebond normal mais CVR toujours bas ? | Oui | La page engage mais échoue à convertir : problème de CTA, offre ou confiance |
| Le problème est-il uniquement mobile ? | Oui | Problème UX mobile : tap targets, ergonomie du formulaire, layout responsive |
| Le problème est-il limité à une seule campagne ? | Oui | Mismatch de trafic : mauvaise audience ou mauvais message d'annonce pour cette page |
| Le CVR baisse-t-il dans le temps ? | Oui | Amélioration de concurrents, fatigue d'audience, ou évolution saisonnière |

**Si la vitesse est le problème :**

| Vérification | Constat | Cause probable |
|-------|---------|-------------|
| LCP au-dessus de 4 s ? | Oui | Image hero trop lourde, réponse serveur lente, ou ressources bloquantes au rendu |
| CLS au-dessus de 0,25 ? | Oui | Images sans dimensions, scripts ad/widgets chargés tardivement, contenu dynamique qui décale |
| Score mobile beaucoup plus bas que desktop ? | Oui | Images non optimisées pour mobile, JavaScript excessif |

**Si l'engagement est faible (rebond élevé, durée faible) :**

| Vérification | Constat | Cause probable |
|-------|---------|-------------|
| Le titre correspond-il à l'annonce ? | Non | Échec du message match |
| La page charge-t-elle en moins de 3 secondes ? | Non | Abandon dû à la vitesse |
| La proposition de valeur est-elle claire en 5 secondes ? | Non | La section hero échoue au test des 5 secondes |
| Y a-t-il une étape suivante claire above the fold ? | Non | CTA manquant ou enterré |

### 4.2 Consigner le diagnostic par page

| Landing page | Catégorie | Cause racine | Confiance | Preuve |
|-------------|----------|-----------|------------|----------|
| /offer-a | Problème de CVR | Message match : le titre ne reflète pas les mots-clés principaux | Haute | 73 % de taux de rebond, mot-clé "free trial" mais aucune mention d'essai sur la page |
| /offer-b | Problème de vitesse | Image hero non compressée (4,2 Mo) | Haute | LCP mobile 6,1 s, PageSpeed 28 |
| /offer-c | Problème mobile | Champs de formulaire trop petits sur mobile, pas de CTA optimisé mobile | Moyenne | CVR desktop 4,2 %, CVR mobile 0,8 % |

---

## Phase 5️⃣ : Orienter les actions

### 5.1 Orienter chaque problème diagnostiqué

Sur la base du diagnostic, oriente vers le bon workflow :

| Diagnostic | Action | Orienter vers |
|-----------|--------|----------|
| **Échec du message match** | Aligner le titre de la LP avec les mots-clés principaux ou les annonces, ou implémenter du DTR | [SOP - Ameliorer l'experience de la page de destination](<Audit - Test A-B de Landing Page.md>) (Section 2.1) |
| **Faiblesse du hero/offre/CTA** | Audit complet et optimisation de la LP | [SOP - Auditer et optimiser une page de destination existante](<Audit - Auditer et optimiser une LP existante.md>) |
| **Vitesse de page sous seuil** | Optimisation technique de la vitesse | [SOP - Ameliorer l'experience de la page de destination](<Audit - Test A-B de Landing Page.md>) (Section 2.6) |
| **Problèmes UX mobile** | Corrections spécifiques au mobile | [SOP - Ameliorer l'experience de la page de destination](<Audit - Test A-B de Landing Page.md>) (Section 2.6) |
| **Mauvais mapping keyword-page** | Réassigner les final URLs au niveau keyword | Mettre à jour les final URLs des keywords dans Google Ads ou Google Ads Editor |
| **Mismatch de source de trafic** | Revoir l'annonce ou le ciblage d'audience pour la campagne sous-performante | Revue d'annonces au niveau campagne |
| **Fatigue de conversion (tendance baissière, sans cause évidente)** | Lancer un test A/B avec une nouvelle variante | [SOP - Executer un test A/B de page de destination](<Audit - Test A-B de Landing Page.md>) |
| **La page nécessite une refonte complète** | La LP est fondamentalement cassée (plusieurs problèmes sévères) | [SOP - Construire une page de destination a forte conversion](<../construction/Construction - Construire une LP e-commerce.md>) |

### 5.2 Prioriser les actions

| Priorité | Critères | Délai d'action |
|----------|----------|-----------------|
| P1 : Critique | Page à fort trafic avec CVR sous 50 % du benchmark (analyse comparative), ou vitesse de page sous 30 | Corriger sous 1 semaine |
| P2 : Haute | Tout dépassement de seuil sur une page recevant un budget significatif | Corriger sous 2 semaines |
| P3 : Standard | Dépassements mineurs, pages à faible trafic, problèmes uniquement d'engagement | À planifier au prochain cycle d'optimisation |
| P4 : Monitorer | Page proche du seuil sans le dépasser, ou récemment corrigée (en cours de validation) | Réexaminer au prochain cycle |

### 5.3 Construire le journal d'actions

| # | Landing page | Diagnostic | Priorité | Action | Orienter vers | Responsable | Échéance |
|---|-------------|-----------|----------|--------|----------|-------|----------|
| 1 | | | | | | | |
| 2 | | | | | | | |
| 3 | | | | | | | |

---

## Phase 6️⃣ : Documenter et planifier le suivi

### 6.1 Consigner la revue

Utilise ce modèle :

```
Revue de performance LP
=======================
Compte : [Nom]
Période : [Date début] - [Date fin]
Reviewer : [Nom]
Type de revue : Bi-hebdomadaire / Mensuelle / Trimestrielle

RÉSUMÉ
------
Total de landing pages actives : [#]
Pages signalées : [#]
Pages dans les seuils : [#]

PAGES SIGNALÉES
---------------
1. [URL] - [Catégorie] - [Diagnostic] - [Priorité] - [Action]
2. [URL] - [Catégorie] - [Diagnostic] - [Priorité] - [Action]

PROBLÈMES DE ROUTING DE KEYWORDS
--------------------------------
[Tout mismatch de final URL trouvé]

ACTIONS DE LA REVUE PRÉCÉDENTE
------------------------------
1. [Action] - [Statut : Fait / En cours / Bloqué]

SCORES DE VITESSE
-----------------
[Toute page avec changement de score mobile > 10 points]

DATE DE LA PROCHAINE REVUE
--------------------------
[Date]
```

### 6.2 Suivre les tendances entre revues

Tiens un journal cumulatif pour repérer les tendances multi-périodes :

| Landing page | CVR Revue 1 | CVR Revue 2 | CVR Revue 3 | Tendance |
|-------------|-------------|-------------|-------------|-------|
| /offer-a | 3,2 % | 2,8 % | 2,1 % | En baisse |
| /offer-b | 1,5 % | 2,3 % | 2,9 % | En progrès |

> 💡 **Les tendances sur trois revues sont plus fiables que les snapshots ponctuels :** Une page qui baisse sur trois revues consécutives a un vrai problème. Une baisse isolée, c'est souvent du bruit.

### 6.3 Planifier la prochaine revue

Programme un rappel calendrier pour la prochaine revue selon ta cadence. Reporte les éléments P4 (à monitorer) pour réévaluation.

---

## Validation et critères de complétion

Cette SOP est terminée quand :

- [ ] Données de performance extraites pour toutes les landing pages actives
- [ ] Métriques au niveau page comparées aux seuils
- [ ] Trafic segmenté par source/campagne pour les pages signalées
- [ ] Mapping final URL au niveau keyword vérifié (campagnes Search)
- [ ] Chaque page sous-performante diagnostiquée avec sa cause racine
- [ ] Actions orientées vers la bonne SOP ou le bon workflow
- [ ] Journal d'actions créé avec priorités, responsables et échéances
- [ ] Revue documentée et date de prochaine revue planifiée
- [ ] Actions de la revue précédente vérifiées pour leur complétion

---

## Passerelle de sortie

Une fois la revue terminée :

| Résultat | Prochaine étape |
|---------|-----------|
| Pages signalées avec problèmes de CVR ou d'engagement | Orienter vers [SOP - Auditer et optimiser une page de destination existante](<Audit - Auditer et optimiser une LP existante.md>) |
| Pages signalées avec problèmes de vitesse ou mobile | Orienter vers [SOP - Ameliorer l'experience de la page de destination](<Audit - Test A-B de Landing Page.md>) |
| Pages en baisse sans cause évidente | Orienter vers [SOP - Executer un test A/B de page de destination](<Audit - Test A-B de Landing Page.md>) |
| Mismatchs keyword-page trouvés | Corriger les final URLs dans Google Ads Editor, puis remonitorer au cycle suivant |
| Toutes les pages dans les seuils | Aucune action requise : planifier la prochaine revue |

**Calendrier récurrent :**

| Cadence | Périmètre |
|---------|-------|
| Bi-hebdomadaire | Pages à fort trafic uniquement (500+ sessions/semaine) |
| Mensuelle | Toutes les landing pages actives |
| Trimestrielle | Revue complète incluant les pages à faible trafic, retests de vitesse et analyse de tendance |

---

## Erreurs fréquentes

| Erreur | Pourquoi ça arrive | Comment l'éviter |
|---------|----------------|--------------|
| Ne vérifier que le CVR agrégé | Manque les problèmes spécifiques par source ou par keyword | Toujours segmenter par campagne et vérifier les final URLs des keywords |
| Ignorer la performance mobile | Les données mobile sont noyées dans les chiffres agrégés | Vérifier la répartition CVR mobile vs desktop pour chaque page signalée |
| Pas de seuils de référence | Sans benchmarks, chaque page semble "correcte" | Définir des seuils après ton premier cycle de revue à partir des moyennes du compte |
| Réagir à des baisses ponctuelles | Variance normale sur de petits volumes | Attendre 2-3 revues consécutives qui montrent le même pattern |
| Sauter les tests de vitesse | "Elle charge vite chez moi" n'est pas un test valide | Utilise PageSpeed Insights à chaque cycle de revue, surtout en mobile |
| Pas de suivi sur les actions | Problèmes identifiés mais jamais corrigés | Suivre la complétion des actions au début de chaque revue |
| Monitorer sans agir | Les revues deviennent du travail administratif | Chaque revue doit produire au moins un output actionnable |

---

## Référence rapide : bibliothèque support

| Document | Type | Utilisé dans |
|----------|------|---------|
| [Checklist Qualité LP](<Audit - [Review] Qualité de la LP.md>) | Checklist | Phase 4 (diagnostic) |
| [SOP - Ameliorer l'experience de la page de destination](<Audit - Test A-B de Landing Page.md>) | SOP | Phase 5 (orientation vitesse/mobile/message match) |
| [SOP - Auditer et optimiser une page de destination existante](<Audit - Auditer et optimiser une LP existante.md>) | SOP | Phase 5 (orientation optimisation complète de LP) |
| [SOP - Executer un test A/B de page de destination](<Audit - Test A-B de Landing Page.md>) | SOP | Phase 5 (orientation optimisation par test) |
| [Modèle mental Niveau de qualité Landing Page](<../methodes/Méthodes - Hiérarchie de Landing Page.md>) | Modèle mental | Comprendre comment la performance LP impacte le Niveau de qualité |

---

## Procédures liées

| SOP | Relation |
|-----|--------------|
| [SOP - Ameliorer l'experience de la page de destination](<Audit - Test A-B de Landing Page.md>) | Aval : corriger les problèmes de Niveau de qualité LP Experience |
| [SOP - Auditer et optimiser une page de destination existante](<Audit - Auditer et optimiser une LP existante.md>) | Aval : audit complet et optimisation |
| [SOP - Construire une page de destination a forte conversion](<../construction/Construction - Construire une LP e-commerce.md>) | Aval : refonte quand la page est irréparable |
| [SOP - Executer un test A/B de page de destination](<Audit - Test A-B de Landing Page.md>) | Aval : optimisation par test pour les pages en baisse |
| [SOP - Revue de performance hebdomadaire](<../../01-strategie/reporting/Reporting - Revue de performance hebdomadaire.md>) | Parallèle : la revue au niveau compte peut faire émerger des problèmes LP |
