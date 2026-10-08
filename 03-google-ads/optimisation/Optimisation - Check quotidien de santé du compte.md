# Check quotidien de sante du compte

> **Plateforme :** Google Ads
> **Catégorie :** Optimisation
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Cette SOP vous guide à travers un scan de triage quotidien de 10-15 minutes qui détecte le tracking (suivi des conversions/évènements) cassé, les annonces refusées, les anomalies de budget et les problèmes de diffusion avant qu'ils ne causent des dégâts significatifs.

> ❓ **La question clé :** Est-ce que quelque chose de majeur a cassé pendant la nuit, et dois-je agir immédiatement ?

Le suivi quotidien ne concerne pas l'optimisation. C'est de la prévention des dégâts. Vous scannez les pannes, signalez les problèmes et passez à la suite. Le diagnostic se fait lors de la revue hebdomadaire.

---

## Ce que cette SOP ne couvre PAS

Cette SOP ne couvre **pas :**

- Remplacer les revues de performance hebdomadaires (Voir : [SOP - Revue de performance hebdomadaire](<../../01-strategie/reporting/Reporting - Revue de performance hebdomadaire.md>))
- Diagnostiquer les causes profondes des changements de performance (Voir : [SOP - Investiguer les anomalies de performance](<Optimisation - Investiguer les anomalies de performance.md>))
- Couvrir l'analyse stratégique mensuelle (Voir : [SOP - Revue de performance mensuelle](<../../01-strategie/reporting/Reporting - Revue de performance mensuelle.md>))

## Quand utiliser cette SOP

Exécutez cette SOP :

- Chaque jour ouvré, idéalement à la même heure chaque matin
- Après le lancement de nouvelles campagnes (quotidiennement les 7-14 premiers jours)
- Après des modifications significatives du compte (budgets, tracking, stratégies d'enchères)

---

## Avant de commencer

### Prérequis

- Accès au compte Google Ads
- Connaissance des niveaux de dépense quotidiens attendus par campagne
- Connaissance des volumes de conversion quotidiens attendus

### Documents de référence (à garder ouverts)

| Document | Utilisé pour |
|----------|----------|
| [Account Health Checklist](<Optimisation - [Review] Santé du compte.md>) | Éléments de vérification |
| [Anomaly Detection Mental Model](<Optimisation - Détection des anomalies.md>) | Classification signal vs. bruit |

### Temps estimé

| Section | Temps |
|---------|------|
| Phase 1: Conversion tracking | 2 min |
| Phase 2: Budget and delivery | 3 min |
| Phase 3: Disapprovals and URLs | 3 min |
| Phase 4: Anomaly scan | 3 min |
| Phase 5: Log and flag | 2 min |
| **Total** | **13 min** |

> ⚠️ **Limite stricte : 15 minutes:** Si le triage quotidien prend régulièrement plus longtemps, votre configuration d'alertes doit être améliorée. Automatisez la détection pour passer du temps sur l'action, pas sur le scan.

---

## Cadre d'exécution

| Phase | Objectif | Résultat |
|-------|---------|--------|
| **Phase 1️⃣: Conversion tracking** | Vérifier que le tracking fonctionne | Statut tracking : OK ou CASSÉ |
| **Phase 2️⃣: Budget and delivery** | Vérifier le pacing et les dépenses | Statut budget : OK ou SIGNALÉ |
| **Phase 3️⃣: Disapprovals and URLs** | Détecter les violations de politique et les pages cassées | Liste des refus et problèmes d'URL |
| **Phase 4️⃣: Anomaly scan** | Repérer les patterns inhabituels | Anomalies signalées pour la revue hebdomadaire |
| **Phase 5️⃣: Log and flag** | Documenter les constats | Entrée du journal de triage |

---

## Phase 1️⃣ : Suivi des conversions (2 min)

### 1.1 Vérifier le statut des actions de conversion

1. Naviguez vers Objectifs > Conversions > Résumé
2. Vérifiez que toutes les actions de conversion principales affichent "Enregistrement des conversions"
3. Vérifiez qu'aucune action de conversion n'affiche "Aucune conversion récente" ou "Inactive"

### 1.2 Vérification rapide du volume

1. Vérifiez le nombre total de conversions d'hier au niveau du compte
2. Comparez au volume de conversion quotidien habituel

| Constat | Action |
|---------|--------|
| Volume dans la plage normale | Continuer |
| Volume plus bas que prévu mais pas zéro | Signaler pour la revue hebdomadaire |
| Volume à zéro ou proche de zéro | Investigation immédiate : vérifier l'état du tag |

> ⚠️ **Zéro conversion est toujours urgent :** Si un compte qui convertit normalement affiche zéro conversion, arrêtez le triage et investiguez le tracking immédiatement.

---

## Phase 2️⃣ : Budget et diffusion (3 min)

### 2.1 Vérifier les dépenses de campagne

1. Naviguez vers la vue Campagnes
2. Triez par Coût (décroissant) pour la date d'hier
3. Scannez les campagnes dépensant significativement plus ou moins que prévu

| Constat | Action |
|---------|--------|
| Dépenses dans ±20% du prévu | Normal |
| Dépenses >120% du prévu | Vérifier si le budget a été modifié, signaler sinon |
| Dépenses de 0€ sur une campagne active | Vérifier le statut de campagne, la stratégie d'enchères, l'éligibilité des annonces |

### 2.2 Vérifier les limitations de budget

1. Ajoutez les colonnes "Taux d'impr. Search" et "IS perdu Search (budget)"
2. Scannez les campagnes nouvellement limitées par le budget qui ne l'étaient pas avant

| Constat | Action |
|---------|--------|
| Limitation de budget attendue | Normal |
| Nouvelle limitation de budget sur une campagne prioritaire | Signaler pour la revue hebdomadaire |

### 2.3 Vérifier le pacing mensuel

1. Comparez les dépenses du mois en cours aux dépenses prévues à ce stade du mois
2. Si le pacing dépasse de >10%, noter pour la revue hebdomadaire

---

## Phase 3️⃣ : Refus et URLs (3 min)

### 3.1 Vérifier les refus d'annonces

1. Naviguez vers Ads & Assets > Ads
2. Filtrez par Statut : "Refusé" ou "Approuvé (limité)"
3. Scannez les nouveaux refus depuis hier

| Constat | Action |
|---------|--------|
| Pas de nouveaux refus | Continuer |
| Nouveaux refus sur des annonces à faible volume | Noter, corriger lors de la revue hebdomadaire |
| Nouveaux refus sur des annonces à fort volume | Corriger aujourd'hui ou escalader |

### 3.2 Vérifier les refus d'assets

1. Naviguez vers Ads & Assets > Assets
2. Filtrez par Statut : "Refusé"
3. Vérifiez les liens annexes, callouts ou images nouvellement refusés

### 3.3 Vérification ponctuelle des Landing Pages

1. Cliquez à travers 2-3 annonces à fort volume pour vérifier que les Landing Pages se chargent
2. Vérifiez que le contenu de la Landing Page correspond au message de l'annonce

> 💡 **Automatisez le suivi des URLs :** Si votre compte a beaucoup de Landing Pages, utilisez un script ou outil de suivi des URLs plutôt que des vérifications manuelles ponctuelles. Les vérifications manuelles ponctuelles sont un filet de sécurité, pas une méthode de détection primaire.

---

## Phase 4️⃣ : Scan d'anomalies (3 min)

### 4.1 Vérifier l'historique des modifications

1. Naviguez vers Change History
2. Filtrez sur "Hier"
3. Scannez les modifications inattendues : recommandations auto-appliquées, modifications système ou modifications par d'autres utilisateurs

| Constat | Action |
|---------|--------|
| Uniquement vos propres modifications | Normal |
| Recommandations appliquées automatiquement | Vérifiez ce qui a été modifié, annulez si nécessaire |
| Modifications par un utilisateur inconnu | Investiguez qui a fait les modifications et pourquoi |

### 4.2 Scanner les anomalies de diffusion

1. Examinez les données d'impressions et de clics au niveau campagne pour hier
2. Comparez avec le jour précédent et le même jour de la semaine dernière
3. Signalez toute campagne avec >40% d'écart

### 4.3 Vérifier le statut de la stratégie d'enchères

1. Naviguez vers les stratégies d'enchères
2. Vérifiez que toutes les stratégies affichent "Éligible" ou un statut "Apprentissage" attendu
3. Signalez toute stratégie "Limitée" ou "Mal configurée"

---

## Phase 5️⃣ : Journal et signalement (2 min)

### 5.1 Documenter les constats

Enregistrez votre triage quotidien avec ce format :

```
Daily Triage - [Date]
Account: [Name]
Time: [X] minutes

Tracking: OK / ISSUE: [details]
Budget: OK / FLAG: [details]
Disapprovals: None / [count] new: [details]
Anomalies: None / FLAG: [details]
Changes made: None / [details]

For weekly review:
- [Flagged item 1]
- [Flagged item 2]
```

### 5.2 Agir immédiatement sur les éléments critiques

| Problème critique | Action immediate |
|---------------|-----------------|
| Tracking cassé | Investiguer et corriger maintenant |
| Annonce à fort volume refusée | Corriger ou faire appel maintenant |
| Anomalie de dépense dramatique sans explication | Mettre en pause ou ajuster maintenant, investiguer |
| Stratégie d'enchères mal configurée | Corriger la configuration maintenant |

Tous les autres éléments signalés vont à la revue hebdomadaire.

---

## Validation et critères de complétion

Cette SOP est terminée quand :

- [ ] Les six catégories de la checklist scannées (tracking, budget, enchères, disapprovals, URLs, anomalies)
- [ ] Problèmes critiques traités immédiatement
- [ ] Signalements non critiques documentés pour la revue hebdomadaire
- [ ] Entrée du journal de triage complétée
- [ ] Temps total inférieur à 15 minutes

---

## Passerelle de sortie

Après le triage quotidien :

| Délai | Action |
|-----------|--------|
| Le jour même | Corrigez les problèmes critiques identifiés |
| Cette semaine | Traitez les éléments signalés lors de la revue hebdomadaire |
| Revue hebdomadaire | Examinez les logs de triage pour identifier les patterns récurrents |

**Si des problèmes critiques sont identifiés :**

| Problème | Rediriger vers |
|-------|----------|
| Tracking cassé | Investiguer immédiatement, fix tag/pixel |
| Annonces refusées | [SOP - Resoudre les refus d'annonces](<../strategie/Strategie - Résoudre les refus d'annonces.md>) |
| Anomalie de performance | [SOP - Investiguer les anomalies de performance](<Optimisation - Investiguer les anomalies de performance.md>) |

---

## Référence rapide : bibliothèque support

| Document | Type | Utilisé dans |
|----------|------|---------|
| [Account Health Checklist](<Optimisation - [Review] Santé du compte.md>) | Checklist | Toutes les phases |
| [Anomaly Detection Mental Model](<Optimisation - Détection des anomalies.md>) | Mental Model | Phase 4 |
| [Optimization Cadence Mental Model](<../strategie/Strategie - Cadence d'optimisation.md>) | Mental Model | Alignement de cadence |
| [Budget Pacing Reference](<../encheres/Enchères - Rythme de dépense.md>) | Reference | Phase 2 |

---

## Procédures liées

| SOP | Relation |
|-----|--------------|
| [SOP - Revue de performance hebdomadaire](<../../01-strategie/reporting/Reporting - Revue de performance hebdomadaire.md>) | Aval (la revue hebdomadaire utilise les signalements quotidiens) |
| [SOP - Resoudre les refus d'annonces](<../strategie/Strategie - Résoudre les refus d'annonces.md>) | Conditionnel (si des refus sont trouvés) |
| [SOP - Investiguer les anomalies de performance](<Optimisation - Investiguer les anomalies de performance.md>) | Conditionnel (si une anomalie est détectée) |
| [SOP - Configurer les alertes du compte](<Optimisation - Configurer les alertes du compte.md>) | Amont (les alertes réduisent le scan manuel) |

---

## Erreurs fréquentes

| Erreur | Pourquoi ça arrive | Comment l'éviter |
|---------|----------------|--------------|
| Triage takes 30+ minutes | Scanner trop en profondeur, diagnostiquer au lieu de signaler | Limite stricte de 15 minutes, signaler et passer à la suite |
| Sauter le triage quotidien | Mentalité "rien ne change jamais" | Configurer un rappel calendrier, traiter comme non-négociable |
| Diagnostiquer pendant le triage | Investiguer un problème signalé au lieu de le noter | Le noter, investiguer lors de la revue hebdomadaire |
| Manquer les modifications auto-appliquées | Ne pas vérifier l'historique des modifications | Inclure le scan de l'historique des modifications chaque jour |
| Fatigue d'alertes due à une mauvaise configuration | Trop de fausses alertes positives | Ajustez les seuils d'alerte pour réduire le bruit |
