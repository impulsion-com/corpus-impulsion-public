# Configurer les alertes du compte

> **Plateforme :** Google Ads
> **Catégorie :** Optimisation
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Cette SOP vous guide à travers configuring Google Ads automated rules as email alerts that surface critical account issues automatically, reducing the manual scanning burden of daily monitoring.

> ❓ **La question clé :** Comment configurer des alertes automatiques pour être notifié des pannes avant qu'elles ne me coûtent de l'argent ?

Les alertes complètent le suivi quotidien. Elles ne le remplacent pas, mais elles réduisent le risque de manquer des problèmes critiques entre les vérifications manuelles.

---

## Ce que cette SOP ne couvre PAS

Cette SOP ne couvre **pas :**

- Documenter les mécanismes de règles en détail (Voir : [Google Ads Alerts and Rules Reference](<Optimisation - Alertes et règles Google Ads.md>))
- Définir les vérifications à exécuter quotidiennement (Voir : [Account Health Checklist](<Optimisation - [Review] Santé du compte.md>))
- Configurer des Google Ads Scripts pour un suivi avancé (separate system)

## Quand utiliser cette SOP

Exécutez cette SOP :

- Lors de la configuration initiale du compte ou de l'onboarding
- Lors de la reprise de gestion d'un compte existant
- Après quarterly settings review identifies missing alert coverage

---

## Avant de commencer

### Prérequis

- Accès au compte Google Ads with admin permissions
- Valeurs CPA ou ROAS cibles par campagne
- Niveaux de dépense quotidiens attendus par campagne
- Volumes de conversion quotidiens/hebdomadaires attendus

### Documents de référence (à garder ouverts)

| Document | Utilisé pour |
|----------|----------|
| [Google Ads Alerts and Rules Reference](<Optimisation - Alertes et règles Google Ads.md>) | Rule types and conditions |
| [Alert Configuration Checklist](<Optimisation - [Review] Configuration des alertes.md>) | Verification after setup |
| [Account Health Checklist](<Optimisation - [Review] Santé du compte.md>) | Check categories to automate |

---

## Cadre d'exécution

| Phase | Objectif | Résultat |
|-------|---------|--------|
| **Phase 1️⃣: Budget alerts** | Catch overspend and underspend | Budget alert rules created |
| **Phase 2️⃣: Conversion alerts** | Catch tracking failures and volume drops | Conversion alert rules created |
| **Phase 3️⃣: Cost efficiency alerts** | Catch CPA/ROAS degradation | Cost efficiency alert rules created |
| **Phase 4️⃣: Disapproval alerts** | Catch policy violations | Disapproval alert rules created |
| **Phase 5️⃣: Verify and test** | Confirm all alerts are active | Alert Configuration Checklist passed |

---

## Phase 1️⃣ : Alertes budget

### 1.1 Créer une alerte de dépassement de budget

1. Naviguez vers Tools & Settings > Bulk Actions > Rules
2. Click "+ Campaign rule"
3. Configure:

| Paramètre | Valeur |
|---------|-------|
| Type de règle | Envoi d'email |
| Apply to | All enabled campaigns |
| Condition | Cost > [120% of typical daily budget] |
| Using data from | Previous day |
| Frequency | Daily |
| Email | Send when conditions are met |
| Name | "ALERT: Daily overspend" |

4. Cliquez sur "Aperçu des résultats" to verify logic
5. Enregistrez la règle

### 1.2 Créer une alerte de sous-utilisation du budget

1. Créez un nouveau/une nouvelle campaign rule
2. Configure:

| Paramètre | Valeur |
|---------|-------|
| Type de règle | Envoi d'email |
| Apply to | All enabled campaigns (or label: "Monitor-Daily") |
| Condition 1 | Cost = €0 |
| Condition 2 | Status = Enabled |
| Using data from | Previous day |
| Frequency | Daily |
| Name | "ALERT: Zero spend on active campaign" |

### 1.3 Créer une alerte de budget limité

1. Créez un nouveau/une nouvelle campaign rule
2. Configure:

| Paramètre | Valeur |
|---------|-------|
| Type de règle | Envoi d'email |
| Apply to | All enabled campaigns |
| Condition | Search lost IS (budget) > 20% |
| Using data from | Last 7 days |
| Frequency | Hebdomadaire (Monday) |
| Name | "ALERT: Budget-limited campaigns" |

---

## Phase 2️⃣ : Alertes conversion

### 2.1 Créer une alerte de zéro conversion

1. Créez un nouveau/une nouvelle campaign rule
2. Configure:

| Paramètre | Valeur |
|---------|-------|
| Type de règle | Envoi d'email |
| Apply to | All enabled campaigns (or label: "Core-Campaigns") |
| Condition 1 | Conversions = 0 |
| Condition 2 | Cost > €50 (adjust to account scale) |
| Using data from | Last 7 days |
| Frequency | Hebdomadaire |
| Name | "ALERT: Zero conversions with spend" |

> ⚠️ **Use 7-day data windows minimum for conversion rules:** Shorter windows produce false positives due to conversion lag.

### 2.2 Créer une alerte de chute du volume de conversions

1. Créez un nouveau/une nouvelle campaign rule
2. Configure:

| Paramètre | Valeur |
|---------|-------|
| Type de règle | Envoi d'email |
| Apply to | All enabled campaigns |
| Condition | Conversions < [40% of expected weekly volume] |
| Using data from | Last 7 days |
| Frequency | Hebdomadaire |
| Name | "ALERT: Low conversion volume" |

---

## Phase 3️⃣ : Alertes efficacité des coûts

### 3.1 Créer une alerte CPA

1. Créez un nouveau/une nouvelle campaign rule
2. Configure:

| Paramètre | Valeur |
|---------|-------|
| Type de règle | Envoi d'email |
| Apply to | All enabled campaigns |
| Condition 1 | Cost/conv. > [2x CPA cible] |
| Condition 2 | Conversions >= 5 |
| Using data from | Last 14 days |
| Frequency | Hebdomadaire |
| Name | "ALERT: CPA exceeds 2x target" |

### 3.2 Créer une alerte de pic CPC

1. Créez un nouveau/une nouvelle campaign rule
2. Configure:

| Paramètre | Valeur |
|---------|-------|
| Type de règle | Envoi d'email |
| Apply to | All enabled campaigns |
| Condition | Avg. CPC > [150% of typical CPC] |
| Using data from | Last 7 days |
| Frequency | Hebdomadaire |
| Name | "ALERT: CPC spike detected" |

---

## Phase 4️⃣ : Alertes refus

### 4.1 Créer une alerte de refus d'annonce

1. Naviguez vers Tools & Settings > Bulk Actions > Rules
2. Click "+ Ad rule"
3. Configure:

| Paramètre | Valeur |
|---------|-------|
| Type de règle | Envoi d'email |
| Apply to | All ads |
| Condition | Policy approval status = Disapproved |
| Using data from | Le jour même |
| Frequency | Daily |
| Name | "ALERT: Ad disapproved" |

### 4.2 Créer une alerte ad group sans annonces

1. Créez un nouveau/une nouvelle ad group rule
2. Configure:

| Paramètre | Valeur |
|---------|-------|
| Type de règle | Envoi d'email |
| Apply to | All enabled ad groups |
| Condition 1 | Impressions = 0 |
| Condition 2 | Status = Enabled |
| Using data from | Last 7 days |
| Frequency | Hebdomadaire |
| Name | "ALERT: Ad group with zero impressions" |

---

## Phase 5️⃣ : Vérifier et tester

### 5.1 Revoir toutes les règles

1. Naviguez vers Tools & Settings > Bulk Actions > Rules
2. Verify all created rules show "Enabled" status
3. Confirm email recipients are correct for each rule
4. Run "Preview results" on each rule to verify they match expected entities

### 5.2 Dérouler la checklist de configuration des alertes

Run through the [Alert Configuration Checklist](<Optimisation - [Review] Configuration des alertes.md>) to verify complete coverage.

### 5.3 Documenter l'inventaire des alertes

Create a reference list of all configured alerts:

| Nom de l'alerte | Type | Fréquence | Périmètre |
|-----------|------|-----------|-------|
| ALERT: Daily overspend | Budget | Daily | All campaigns |
| ALERT: Zero spend on active campaign | Budget | Daily | All campaigns |
| ALERT: Budget-limited campaigns | Budget | Hebdomadaire | All campaigns |
| ALERT: Zero conversions with spend | Conversion | Hebdomadaire | Core campaigns |
| ALERT: Low conversion volume | Conversion | Hebdomadaire | All campaigns |
| ALERT: CPA exceeds 2x target | Cost | Hebdomadaire | All campaigns |
| ALERT: CPC spike detected | Cost | Hebdomadaire | All campaigns |
| ALERT: Ad disapproved | Disapproval | Daily | All ads |
| ALERT: Ad group with zero impressions | Delivery | Hebdomadaire | All ad groups |

---

## Validation et critères de complétion

Cette SOP est terminée quand :

- [ ] Budget alerts configured (overspend, underspend, budget-limited)
- [ ] Conversion alerts configured (zero conversions, volume drops)
- [ ] Cost efficiency alerts configured (CPA, CPC)
- [ ] Disapproval alerts configured (ads, assets)
- [ ] All rules verified with "Preview results"
- [ ] Alert Configuration Checklist passed
- [ ] Alert inventory documented

---

## Passerelle de sortie

Après alert configuration:

| Délai | Action |
|-----------|--------|
| Prochain jour ouvré | Verify first alert emails arrive as expected |
| First week | Review rule history to confirm rules are executing |
| Mensuelle | Review and tune alert thresholds based on false positive rate |

**Si des problèmes de configuration d'alertes surviennent :**

| Problème | Rediriger vers |
|-------|----------|
| Too many false positive alerts | Widen thresholds or extend data windows |
| Alerts not firing when expected | Check rule conditions and Preview results |
| Need more sophisticated monitoring | Implement Google Ads Scripts |

---

## Référence rapide : bibliothèque support

| Document | Type | Utilisé dans |
|----------|------|---------|
| [Google Ads Alerts and Rules Reference](<Optimisation - Alertes et règles Google Ads.md>) | Reference | Toutes les phases |
| [Alert Configuration Checklist](<Optimisation - [Review] Configuration des alertes.md>) | Checklist | Phase 5 |
| [Account Health Checklist](<Optimisation - [Review] Santé du compte.md>) | Checklist | Check categories to automate |

---

## Procédures liées

| SOP | Relation |
|-----|--------------|
| [SOP - Check quotidien de sante du compte](<Optimisation - Check quotidien de santé du compte.md>) | Aval (les alertes réduisent le temps de scan quotidien) |
| [SOP - Resoudre les refus d'annonces](<../strategie/Strategie - Résoudre les refus d'annonces.md>) | Conditionnel (déclenché par les alertes de refus) |
| [SOP - Investiguer les anomalies de performance](<Optimisation - Investiguer les anomalies de performance.md>) | Conditionnel (déclenché par les alertes d'anomalie) |

---

## Erreurs fréquentes

| Erreur | Pourquoi ça arrive | Comment l'éviter |
|---------|----------------|--------------|
| Alert fatigue | Thresholds too tight, too many false positives | Start with wider thresholds, tighten over time |
| Alerts not checked | Emails go to spam or get buried | Create dedicated email filter/folder |
| Stale alerts | Account scale changed but thresholds did not | Review thresholds quarterly |
| Incomplete coverage | New campaigns added without alert coverage | Use "All campaigns" scope or labels |
| Over-reliance on alerts | Assuming alerts catch everything | Maintain daily manual triage alongside alerts |
