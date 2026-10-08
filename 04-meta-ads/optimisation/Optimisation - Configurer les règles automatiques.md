# Configurer les règles automatiques Meta Ads

> **Plateforme :** Meta
> **Catégorie :** Optimisation
> **Type :** SOP
> **Mis à jour :** 2026-07-09

## Objectif

Cette SOP fournit des **règles automatiques prêtes à l'emploi** pour Meta Ads : des garde-fous et des automatisations qui coupent, alertent ou scalent sans intervention humaine. L'objectif est de protéger le budget la nuit et le week-end, et d'exécuter les décisions simples de manière fiable.

> ❓ **La question clé :** Comment automatiser les décisions récurrentes (couper une pub qui brûle du budget, alerter sur une audience saturée, scaler un gagnant) sans risquer de casser les campagnes ?

Les règles automatiques ne remplacent pas l'analyse (Voir : [Procédure - Analyser les performances Meta Ads](<../reporting/Reporting - Analyser les performances.md>)). Elles exécutent les décisions **simples et non ambiguës**. Les décisions structurelles restent manuelles.

---

## Ce que cette SOP ne couvre PAS

Cette SOP ne couvre **pas :**

- L'analyse des performances et la formulation d'hypothèses (Voir : [Procédure - Analyser les performances Meta Ads](<../reporting/Reporting - Analyser les performances.md>))
- Le diagnostic et l'ordre d'optimisation (Voir : [Procédure - Optimisation Meta Ads](<Optimisation - Optimiser les performances.md>))
- Le scaling manuel piloté (Voir : [Procédure - Scaler une campagne Meta Ads](<../scaling/Scaling - Scaler une campagne.md>))
- Le test et le renouvellement des créatives (Voir : [Procédure - Optimiser les créatives Meta Ads](<../creatives/Creatives - Optimiser les créatives.md>))

## Quand utiliser cette SOP

Lancez cette SOP quand :

- Vous gérez plusieurs comptes et voulez des garde-fous automatiques
- Un compte tourne le week-end / la nuit sans surveillance
- Vous voulez systématiser les coupures de pubs qui sur-dépensent sans convertir
- Le client a un budget qui peut « s'emballer » (risque de runaway)
- Vous voulez alerter (email/Slack) sans forcément auto-agir

---

## Avant de commencer

### Prérequis

- CPA cible et/ou ROAS cible **définis** (les règles s'y réfèrent)
- Tracking (suivi des conversions/évènements) fiable (les règles se basent sur les conversions remontées)
- Convention de nomenclature en place (Voir : [Guide Meta Ads](<../Guide Meta.md>) > Convention de nomenclature)
- Accès **Ads Manager > Règles** avec droits de modification

### Principe

Une règle automatique = un **trigger** (conditions) + une **action**. Elle se configure dans **Ads Manager > Règles > Créer une règle automatique**, à un **niveau** (Campagne, Ad Set ou Ad).

> ⚠️ **Ne jamais tout activer d'un coup.** Déployer par lots de 2-3 règles, observer 7-14 jours, vérifier que ça ne coupe pas de bonnes campagnes (faux positifs), puis ajouter les suivantes.

---

## Les 8 règles types

> Ajuster tous les seuils à votre CPA/ROAS cible. Les exemples chiffrés supposent un CPA cible de 40 €.

### Règle 1 — Kill CPA explosé (acquisition)

| Paramètre | Valeur |
|-----------|--------|
| **Niveau** | Publicité (Ad) |
| **Conditions** | CPA > 2x cible (ex : > 80 €) **ET** dépense ≥ 50 € |
| **Période** | 3 jours |
| **Action** | Désactiver la publicité |
| **Notification** | Email (+ Slack si possible) |
| **Fréquence** | Continuellement |

### Règle 2 — Pause publicité 0 conversion

| Paramètre | Valeur |
|-----------|--------|
| **Niveau** | Publicité (Ad) |
| **Conditions** | Achats / Leads = 0 **ET** dépense ≥ 3x CPA cible (ex : > 120 €) |
| **Période** | 7 jours |
| **Action** | Désactiver la publicité |
| **Fréquence** | Quotidienne (8h) |

### Règle 3 — Alerter créa fatiguée (refresh)

| Paramètre | Valeur |
|-----------|--------|
| **Niveau** | Publicité (Ad) |
| **Conditions** | Fréquence > 3 (prospection froide) **ET** CTR lien < 0,8 % |
| **Période** | 7 jours |
| **Action** | Email de notification (**ne pas** auto-pauser) |
| **Action manuelle** | Préparer 3 variations + tester en budget par ad set (ex-ABO) |

### Règle 4 — Scaler vertical un ad set gagnant

| Paramètre | Valeur |
|-----------|--------|
| **Niveau** | Ensemble de publicités (Ad Set) |
| **Conditions** | ROAS > 3x cible (ou CPA < 50 % cible) **ET** dépense ≥ 100 € **ET** pubs actives ≥ 3 jours |
| **Période** | 3 jours |
| **Action** | Augmenter le budget quotidien de **+20 %** |
| **Fréquence** | Quotidienne (uniquement si pas de hausse dans les 72 dernières heures) |
| **Safeguard** | Budget max = 5x le budget initial |

### Règle 5 — Pause ad set en perte

| Paramètre | Valeur |
|-----------|--------|
| **Niveau** | Ensemble de publicités (Ad Set) |
| **Conditions** | ROAS < 0,8x cible (ou CPA > 1,5x cible) **ET** dépense ≥ 5x CPA cible |
| **Période** | 5 jours |
| **Action** | Désactiver l'ensemble de publicités |
| **Notification** | Email (+ Slack) |

### Règle 6 — Alerter audience cramée (répétition)

| Paramètre | Valeur |
|-----------|--------|
| **Niveau** | Ensemble de publicités (Ad Set) |
| **Conditions** | Fréquence > 7 (prospection froide) **ou** > 10 (retargeting, reciblage) |
| **Période** | 7 jours |
| **Action** | Notification email (**ne pas** pauser) |
| **Action manuelle** | Renouveler l'audience, élargir l'audience similaire, refresh la créa |

### Règle 7 — Garde-fou budget journalier (anti-runaway)

| Paramètre | Valeur |
|-----------|--------|
| **Niveau** | Campagne |
| **Conditions** | Dépense quotidienne > 1,5x le budget prévu (anomalie) |
| **Période** | Aujourd'hui |
| **Action** | Désactiver la campagne |
| **Note** | Rare, mais sauve d'un bug Meta ou d'un mauvais paramétrage |

### Règle 8 — Maintenir le CPA dans une fourchette (tracking)

| Paramètre | Valeur |
|-----------|--------|
| **Niveau** | Publicité (Ad) |
| **Conditions** | CPA entre 0,8x et 1,2x cible **ET** dépense ≥ 50 € |
| **Période** | 3 jours |
| **Action** | Maintenir actif (no-op — sert de suivi) |
| **Notification** | Récap email hebdomadaire |

> 📌 **Cohérence avec les seuils du corpus** : les seuils de fréquence suivent l'échelle de fatigue du [Guide Meta Ads](<../Guide Meta.md>) (froid : alerte dès 3-3,5, cramé au-delà de 7 ; retargeting : cramé au-delà de 10). Les règles automatiques déclenchent volontairement un cran **plus tard** que la surveillance manuelle, pour éviter les faux positifs.

---

## Bonnes pratiques

- **Tester 2-3 règles maximum** au début, observer 7-14 jours avant d'en ajouter
- **Logger les actions** : Ads Manager > Activité — permet de tracer ce qui s'est passé pendant la nuit
- **Ne PAS automatiser le scaling pendant la phase d'apprentissage** (les 5-7 premiers jours)
- **Toujours définir un safeguard** (budget max, dépense max) pour éviter le runaway
- **Auditer le journal des règles 1x/semaine** pour attraper les faux positifs
- **Privilégier l'alerte à l'auto-action** pour les décisions à jugement (créa, audience) ; réserver l'auto-action aux décisions binaires (CPA explosé, 0 conversion, runaway)

---

## Convention de nommage des règles

Format : `[Niveau]_[Action]_[Trigger]_[Date]`

Exemples :
- `AD_KILL_CPA-2x_2026-07`
- `ADSET_SCALE+20_ROAS-3x_2026-07`
- `AD_ALERT_FREQ-3-CTR-0.8_2026-07`

---

## Validation et critères de complétion

Cette SOP est terminée quand :

- [ ] Les CPA/ROAS cibles sont renseignés dans les seuils
- [ ] 2-3 règles de sécurité au minimum sont actives (au moins : kill CPA explosé + garde-fou anti-runaway)
- [ ] Chaque règle d'auto-action a un safeguard
- [ ] Les notifications (email/Slack) sont configurées
- [ ] La nomenclature des règles est appliquée
- [ ] Un rappel d'audit hebdomadaire du journal est planifié

---

## Passerelle de sortie

| Délai | Action |
|-----------|--------|
| Jour 1 | Activer 2-3 règles, vérifier qu'elles ne se déclenchent pas à tort |
| Semaine 1-2 | Auditer le journal, ajuster les seuils, ajouter des règles |
| Hebdomadaire | Vérifier le journal des règles (faux positifs, gagnants coupés) |
| Mensuelle | Revoir la pertinence des seuils selon l'évolution des CPA cibles |

**En cas de problème :**

| Problème | Rediriger vers |
|-------|----------|
| Une règle coupe de bons ad sets | Resserrer les conditions (durée, dépense minimale) |
| Le scaling automatique déstabilise | Désactiver l'auto-scaling, repasser en scaling manuel ([Scaling](<../scaling/Scaling - Scaler une campagne.md>)) |
| Trop d'alertes bruyantes | Augmenter les seuils, réduire la fréquence d'exécution |

---

## Erreurs fréquentes

| Erreur | Pourquoi ça arrive | Comment l'éviter |
|---------|----------------|--------------|
| Activer 8 règles d'un coup | Vouloir tout automatiser vite | Déployer par lots de 2-3, observer |
| Auto-scaler pendant l'apprentissage | Oublier la phase d'apprentissage | Exclure les 5-7 premiers jours du scaling auto |
| Pas de safeguard sur le scaling | Optimisme | Toujours un budget max (ex : 5x le budget initial) |
| Auto-couper sur un jugement (créa) | Confondre alerte et action | Alerte pour le jugement, action pour le binaire |
| Ne pas auditer le journal | « Ça tourne tout seul » | Audit hebdomadaire obligatoire |
| Seuils figés | Le CPA cible évolue | Réviser les seuils chaque mois |

---

## Procédures liées

| SOP | Relation |
|-----|-------------|
| [Procédure - Optimisation Meta Ads](<Optimisation - Optimiser les performances.md>) | Amont (les règles automatisent les décisions simples du diagnostic) |
| [Procédure - Analyser les performances Meta Ads](<../reporting/Reporting - Analyser les performances.md>) | Lié (l'analyse reste manuelle ; les règles exécutent) |
| [Procédure - Scaler une campagne Meta Ads](<../scaling/Scaling - Scaler une campagne.md>) | Lié (la règle 4 automatise le palier +20 %) |
| [Référence - KPI Meta Ads](<../kpi/KPI - KPI.md>) | Lié (seuils de décision : couper, scaler, fréquence) |
