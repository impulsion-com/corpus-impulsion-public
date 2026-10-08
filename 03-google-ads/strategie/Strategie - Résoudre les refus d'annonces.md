# Résoudre les refus d'annonces

> **Plateforme :** Google Ads
> **Catégorie :** Strategie
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Cette SOP vous guide pour identifier, diagnostiquer et résoudre les refus d'annonces et d'assets dans Google Ads, afin de rétablir une diffusion complète le plus rapidement possible.

> ❓ **La question clé :** Pourquoi cette annonce a-t-elle été refusée, et quel est le chemin le plus rapide pour la faire approuver et la remettre en diffusion ?

Les refus réduisent le volume d'impressions, peuvent révéler des problèmes de conformité aux règles et, dans les cas graves, mener à une suspension du compte. Résolvez-les rapidement.

---

## Ce que cette SOP ne couvre PAS

Cette SOP ne couvre **pas :**

- La résolution des suspensions au niveau du compte (nécessite un contact direct avec le support Google)
- La documentation des règles Google Ads (référez-vous directement au centre des règles de Google)
- Remplacer une vérification proactive de conformité des annonces lors de leur création

## Quand utiliser cette SOP

Exécutez cette SOP :

- Quand le suivi quotidien révèle de nouveaux refus
- Quand des alertes de refus se déclenchent
- Quand les impressions d'un groupe d'annonces tombent à zéro de façon inattendue
- Dans le cadre de la revue mensuelle, lorsque des refus non résolus subsistent

---

## Avant de commencer

### Prérequis

- Accès au compte Google Ads
- Savoir quelles annonces/quels assets sont refusés
- Comprendre le message visé par l'annonce et sa landing page

### Documents de référence (à garder ouverts)

| Document | Utilisé pour |
|----------|----------|
| [Post-Launch Monitoring Reference](<../optimisation/Optimisation - Monitoring post-lancement.md>) | Catégories de refus |
| Centre des règles Google Ads (support.google.com/adspolicy) | Détails des règles |

---

## Cadre d'exécution

| Phase | Objectif | Résultat |
|-------|---------|--------|
| **Phase 1️⃣ : Identifier** | Trouver toutes les entités refusées | Inventaire complet des refus |
| **Phase 2️⃣ : Diagnostiquer** | Comprendre pourquoi chacune a été refusée | Cause racine par refus |
| **Phase 3️⃣ : Résoudre** | Corriger, faire appel ou remplacer | Tous les refus traités |
| **Phase 4️⃣ : Prévenir** | Appliquer des mesures de prévention | Moins de refus à l'avenir |

---

## Phase 1️⃣: Identifier (5 min)

### 1.1 Vérifier les refus d'annonces

1. Naviguez vers Annonces et assets > Annonces
2. Filtrez par « Statut d'approbation : Refusée » et « Statut d'approbation : Approuvée (limitée) »
3. Triez par impressions (décroissant) pour prioriser les refus à fort impact
4. Notez toutes les annonces refusées :

| Campagne | Groupe d'annonces | Type d'annonce | Statut | Problème de règle | Impact |
|----------|----------|---------|--------|-------------|--------|
| ___ | ___ | RSA/RDA | Refusée / Limitée | ___ | Élevé / Moyen / Faible |

### 1.2 Vérifier les refus d'assets

1. Naviguez vers Annonces et assets > Assets
2. Filtrez par « Statut d'approbation : Refusé »
3. Notez les assets refusés :

| Type d'asset | Texte/image de l'asset | Problème de règle |
|-----------|-----------------|-------------|
| ___ | ___ | ___ |

### 1.3 Vérifier l'impact sur le groupe d'annonces

Pour chaque annonce refusée, vérifiez si le groupe d'annonces dispose d'autres annonces éligibles :

| Groupe d'annonces | Total annonces | Annonces éligibles | Risque |
|----------|----------|-------------|------|
| ___ | ___ | ___ | Zéro annonce = Critique / Peu d'annonces = Élevé / Suffisant = Faible |

> ⚠️ **Un groupe d'annonces sans aucune annonce éligible ne peut pas diffuser :** priorisez-les avant tout le reste.

---

## Phase 2️⃣: Diagnostiquer (5-10 min)

### 2.1 Lire la violation de politique

1. Cliquez sur l'annonce refusée
2. Lisez la violation de règle précise citée
3. Cliquez jusqu'à la documentation de la règle pour plus de détails

### 2.2 Catégories et causes courantes de refus

| **Catégorie de règle** | **Déclencheur courant** | **Résolution** |
|---------------------|-------------------|----------------------|
| **Contenu trompeur** | Affirmations exagérées, promesses irréalistes | Réécrire le texte de l'annonce avec des affirmations exactes |
| **Marque déposée** | Utilisation d'un terme déposé pour lequel vous n'êtes pas autorisé | Retirer le terme déposé ou demander une autorisation |
| **Destination incohérente** | L'URL finale ne correspond pas au domaine de l'URL à afficher | Corriger l'URL ou le chemin d'affichage |
| **Malware/logiciel indésirable** | Landing page signalée par le scanner de Google | Corriger les problèmes de sécurité de la landing page |
| **Santé/pharmacie** | Affirmations médicales sans certification | Obtenir la certification ou retirer les affirmations |
| **Services financiers** | Affirmations sur le crédit, le prêt ou l'investissement | Vérifier la conformité aux règles sur la publicité financière |
| **Contenu pour adultes** | Images ou langage suggestifs | Vérifier et ajuster le creative |
| **Éditorial** | Problèmes de ponctuation, de majuscules ou de mise en forme | Corriger le problème éditorial précis |
| **Destination cassée** | Erreur 404 ou chaîne de redirections sur la landing page | Corriger l'URL de la landing page |
| **Contenu soumis à restriction** | Alcool, jeux d'argent ou autres catégories restreintes | Demander une certification ou ajuster le message |

### 2.3 Déterminer le chemin de résolution

| Situation | Chemin de résolution |
|-----------|----------------|
| La violation de règle est légitime (votre annonce enfreint bien la règle) | Modifier l'annonce pour la mettre en conformité |
| La violation de règle est un faux positif (votre annonce respecte la règle) | Faire appel du refus |
| La règle exige une certification que vous n'avez pas | Demander la certification ou réécrire sans affirmations soumises à restriction |
| Problème de landing page (et non de texte d'annonce) | Corriger d'abord la landing page |

---

## Phase 3️⃣: Résoudre (10-20 min)

### 3.1 Modifier et resoumettre (pour les violations légitimes)

1. Cliquez sur l'annonce refusée
2. Cliquez sur « Modifier » pour créer une nouvelle version
3. Traitez la violation de règle précise :
   - Retirez ou reformulez le texte fautif
   - Remplacez l'image si elle a été signalée
   - Mettez à jour l'URL si la destination était en cause
4. Enregistrez la nouvelle annonce
5. La nouvelle annonce passe en examen (généralement 1 jour ouvré)

> 💡 **Créez une nouvelle annonce plutôt que de la modifier sur place quand c'est possible :** cela préserve les données de performance de l'annonce d'origine et vous donne un parcours d'examen propre.

### 3.2 Faire appel (pour les faux positifs)

1. Cliquez sur l'annonce refusée
2. Cliquez sur « Faire appel » ou « Demander un examen »
3. Fournissez une explication claire de la raison pour laquelle l'annonce respecte la règle
4. Attendez l'examen (généralement 1 à 3 jours ouvrés)

**Quand faire appel :**
- Votre annonce respecte clairement la règle citée
- La violation semble provenir d'une mauvaise classification par l'examen automatisé
- Vous disposez de documents attestant la conformité (ex : autorisation de marque déposée)

**Quand NE PAS faire appel :**
- Votre annonce enfreint bien la règle (même si vous êtes en désaccord avec cette règle)
- La même annonce a déjà été refusée et l'appel rejeté auparavant
- La violation est éditoriale (plus rapide à corriger qu'à contester)

### 3.3 Remplacer (quand modifier ne suffit pas)

Si la contrainte de règle empêche de faire passer votre message :

1. Créez une annonce entièrement nouvelle avec un message conforme
2. Conservez la proposition de valeur centrale tout en évitant les déclencheurs de règle
3. Mettez en pause l'annonce refusée
4. Suivez le statut d'examen de la nouvelle annonce

### 3.4 Corriger les problèmes de landing page

Si le refus est lié à la destination :

1. Vérifiez l'URL de la landing page pour repérer les erreurs 404, les redirections ou les problèmes de sécurité
2. Corrigez la landing page (cela peut nécessiter l'intervention d'un développeur)
3. Demandez un nouvel examen de l'annonce une fois la landing page corrigée
4. Vérifiez la correction en cliquant jusqu'à l'URL finale de l'annonce

---

## Phase 4️⃣: Prévenir (5 min)

### 4.1 Documenter le pattern

Notez le schéma de refus pour référence future :

| Date | Règle | Déclencheur | Résolution | Prévention |
|------|--------|---------|------------|------------|
| ___ | ___ | ___ | Modifier / Faire appel / Remplacer | ___ |

### 4.2 Appliquer les mesures de prévention

| Mesure de prévention | Quand l'appliquer |
|-------------------|---------------|
| Pré-vérifier le texte de l'annonce face au centre des règles | Avant de créer de nouvelles annonces |
| Utiliser l'outil d'aperçu d'annonces de Google | Avant de soumettre des annonces au contenu sensible |
| Surveiller la santé des landing pages | Quotidiennement (vérifications d'URL) |
| Maintenir les autorisations de marques déposées | Chaque année ou quand les marques changent |
| Éviter les affirmations superlatives sans preuve | Toujours |

---

## Validation et critères de complétion

Cette SOP est terminée quand :

- [ ] Toutes les annonces et tous les assets refusés sont identifiés
- [ ] Chaque refus est diagnostiqué (violation de règle identifiée)
- [ ] Chaque refus est résolu (modifié, contesté ou remplacé)
- [ ] Les groupes d'annonces sans aucune annonce éligible sont traités en premier
- [ ] La résolution est documentée avec des notes de prévention
- [ ] Le statut de nouvel examen est suivi pour les annonces contestées/modifiées

---

## Passerelle de sortie

Après avoir résolu les refus :

| Délai | Action |
|-----------|--------|
| Prochain jour ouvré | Vérifier le statut d'examen des annonces resoumises/contestées |
| 3 jours ouvrés | Relancer sur les appels en attente |
| Prochain triage quotidien | Surveiller l'apparition de nouveaux refus |

**Si la résolution est bloquée :**

| Problème | Rediriger vers |
|-------|----------|
| Appel rejeté, désaccord avec la règle | Contacter directement le support Google Ads |
| Problème de règle au niveau du compte | Escalader vers le support Google Ads |
| La correction de la landing page nécessite du développement | Créer un ticket avec l'équipe web |
| Refus répétés sur la même règle | Revoir la stratégie creative pour la conformité |

---

## Référence rapide : bibliothèque support

| Document | Type | Utilisé dans |
|----------|------|---------|
| [Post-Launch Monitoring Reference](<../optimisation/Optimisation - Monitoring post-lancement.md>) | Référence | Phase 2 |
| Centre des règles Google Ads | Externe | Phase 2-3 |

---

## Procédures liées

| SOP | Relation |
|-----|--------------|
| [SOP - Check quotidien de sante du compte](<../optimisation/Optimisation - Check quotidien de santé du compte.md>) | Amont (le triage quotidien déclenche cette SOP) |
| [SOP - Revue de performance mensuelle](<../../01-strategie/reporting/Reporting - Revue de performance mensuelle.md>) | Amont (la revue mensuelle rattrape les refus persistants) |

---

## Erreurs fréquentes

| Erreur | Pourquoi ça arrive | Comment l'éviter |
|---------|----------------|--------------|
| Ignorer le statut « Approuvée (limitée) » | Semble moins urgent que « Refusée » | Le statut limité réduit la couverture, à traiter en haute priorité |
| Faire appel alors que la violation est réelle | Confondre désaccord avec la règle et respect de la règle | Lire la règle en entier, modifier si la violation est légitime |
| Corriger l'annonce mais pas la cause racine | Le même problème réapparaît sur les nouvelles annonces | Documenter les schémas et appliquer des mesures de prévention |
| Ne pas vérifier les refus d'assets | Ne vérifier que les refus au niveau de l'annonce | Inclure liens annexes, accroches et images dans chaque vérification |
| Attendre trop longtemps pour résoudre | L'état d'esprit « ce n'est qu'une seule annonce » | Un refus d'annonce à fort volume s'aggrave chaque jour, à résoudre sous 24 h |
