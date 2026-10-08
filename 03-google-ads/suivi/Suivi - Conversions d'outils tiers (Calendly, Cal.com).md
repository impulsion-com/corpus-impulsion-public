# Tracker les conversions d'outils tiers (Calendly, Cal.com)

> **Plateforme :** Google Ads
> **Catégorie :** Suivi
> **Type :** SOP

> **Mis à jour :** 2026-07-09

## Objectif

Cette SOP vous guide pour tracker en conversion Google Ads une prise de rendez-vous (ou tout événement) générée par un outil externe : Calendly, Cal.com, TidyCal, SavvyCal, etc. Elle couvre les trois méthodes possibles : redirection vers une page de confirmation, snippet natif de l'outil, ou import de conversions hors ligne via webhook.

> ❓ **La question clé :** Comment compter comme conversion Google Ads un RDV pris sur Calendly / Cal.com, alors que la réservation se finalise sur un domaine que vous ne contrôlez pas et où vous ne pouvez pas poser votre Balise Google ?

Le widget de réservation vit sur `calendly.com` ou `cal.com`, pas sur votre site. Quand le visiteur confirme son créneau, la validation se produit **hors de votre domaine** : votre Balise Google n'y est jamais chargée, aucune conversion ne se déclenche, et vos campagnes Search / PMax optimisent à l'aveugle sur des clics au lieu de RDV.

Trois solutions existent pour ramener ce signal dans Google Ads : renvoyer le visiteur sur une **page de confirmation** de votre domaine, coller le **snippet de conversion natif** dans l'outil, ou remonter le RDV via **webhook + import hors ligne**.

---

## Ce que cette SOP ne couvre PAS

Cette SOP ne couvre **pas :**

- L'installation initiale de la Balise Google et la création de l'action de conversion de base (prérequis, voir : [Tracking - Configurer le suivi des conversions Google Ads](<Suivi - Configurer le suivi des conversions Google Ads.md>))
- La mécanique complète de l'import de conversions hors ligne (capture et stockage du GCLID, format d'import) — voir : [Tracking - Configurer le suivi des conversions hors ligne](<Suivi - Configurer le suivi des conversions hors ligne.md>)
- La configuration du server-side tagging (GTM Server / Stape) — voir : [Tracking - Implémenter le Server-Side Tagging](<Suivi - Implémenter le Server-Side Tagging.md>)
- Le paramétrage détaillé des conversions améliorées — voir : [Tracking - Implémenter les conversions améliorées](<Suivi - Implémenter les conversions améliorées.md>)
- Le consentement utilisateur et la conformité RGPD (Consent Mode)

## Quand utiliser cette SOP

Lancez cette SOP quand :

- Votre acquisition passe par la prise de RDV via Calendly, Cal.com ou un outil équivalent
- Vos campagnes Search / PMax n'enregistrent **aucune conversion** alors que des RDV sont bien pris
- Vous voulez optimiser vos enchères sur la **prise de RDV réelle**, et non sur le simple clic vers le calendrier
- Le RDV est votre KPI d'acquisition principal (agence, coaching, immobilier, santé, B2B, services…)
- Vous voulez compter uniquement les RDV **honorés ou qualifiés**, pas les simples réservations

---

## Avant de commencer

### Prérequis

- Balise Google installée et fonctionnelle sur le site (via GTM recommandé), et action de conversion de base déjà en place
- Accès administrateur au compte Google Ads
- Accès administrateur à l'outil de prise de RDV (Calendly plan payant / Pro+ pour la redirection et les webhooks ; Cal.com pour les webhooks natifs)
- Selon la méthode retenue : accès à GTM, capacité à créer une page de confirmation sur votre domaine, ou accès au CRM / connecteur (Zapier, Make, backend)
- Pour la méthode hors ligne : le **GCLID** doit être capturé et stocké au moment du clic (voir SOP conversions hors ligne)

### Pourquoi c'est indispensable

| Problème | Impact sans tracking (suivi des conversions/évènements) dédié | Impact avec cette SOP |
|----------|-----------------|-----------------|
| RDV pris sur le domaine de l'outil | Aucune conversion ne remonte | RDV comptabilisé dans Google Ads |
| Optimisation des enchères | L'algo optimise sur le clic, pas sur le RDV | L'algo optimise sur le vrai signal métier |
| No-shows / RDV non qualifiés | Comptés comme succès s'ils sont trackés au clic | Filtrés via webhook / import hors ligne |
| Attribution multicanale | RDV non rattaché à la campagne / au mot-clé | GCLID conservé → attribution complète |

---

## Cadre d'exécution

| Phase | Objectif | Résultat |
|-------|---------|--------|
| **Phase 1️⃣ : Choisir la méthode** | Sélectionner la méthode adaptée à votre outil et à votre objectif | Méthode choisie |
| **Phase 2️⃣ : Créer l'action de conversion** | Déclarer le RDV comme conversion dans Google Ads | Action de conversion créée |
| **Phase 3️⃣ : Implémenter le déclenchement** | Faire remonter le RDV via redirection, snippet natif ou webhook | Conversion qui se déclenche |
| **Phase 4️⃣ : Fiabiliser et vérifier** | Conversions améliorées, server-side, test de bout en bout | Tracking validé et robuste |

---

## Phase 1️⃣ : Choisir la méthode

### 1.1 Les 3 méthodes

| Méthode | Complexité | Idéale pour | Ce qui remonte |
|---------|-----------|-------------|----------------|
| **A. Redirection vers page de confirmation** | Faible | La majorité des cas, dès que l'outil autorise la redirection | Le RDV pris, en temps réel, avec GCLID |
| **B. Snippet de conversion natif** | Faible | Outils qui exposent un champ « code de suivi de conversion » | Le RDV pris, en temps réel |
| **C. Webhook → conversion hors ligne** | Élevée | Compter uniquement les RDV honorés / qualifiés | Le RDV filtré, en différé, via GCLID |

### 1.2 Arbre de décision

```
Vous voulez compter le RDV dès qu'il est réservé ?
├── Oui → l'outil autorise-t-il une redirection après réservation ?
│   ├── Oui → Méthode A (Redirection page de confirmation) ✅ recommandée
│   └── Non → l'outil expose-t-il un champ « code de suivi » ?
│       ├── Oui → Méthode B (Snippet natif)
│       └── Non → Méthode C (Webhook + hors ligne)
└── Non, seulement les RDV honorés / qualifiés → Méthode C (Webhook + hors ligne)
```

> 💡 **Recommandation** : partez toujours de la méthode A. La redirection vers une page de votre domaine est la plus simple, conserve le GCLID (même navigateur) et permet d'activer les conversions améliorées. Réservez la méthode C aux cas où le no-show est fréquent et où vous devez compter uniquement les RDV réellement tenus.

---

## Phase 2️⃣ : Créer l'action de conversion Google Ads

Reprend la création standard d'une action de conversion, à adapter selon la méthode.

1. Aller dans **Outils → Conversions → « + Nouvelle action de conversion »**
2. **Type** : *Site web* pour les méthodes A et B ; *Importer* (conversions hors ligne) pour la méthode C
3. **Catégorie** : *Contact* ou *Prendre rendez-vous* (ou *Prospect* selon votre nomenclature)
4. **Nom** : explicite, ex. `RDV_Calendly_2026`
5. **Valeur de conversion** : fixe (€) ou dynamique selon le type de RDV
6. **Comptage** : *Une* (un RDV = une conversion) dans la plupart des cas
7. **Fenêtre de conversion** : 30 j par défaut ; l'allonger si vos RDV sont souvent pris loin dans le temps
8. **Modèle d'attribution** : *Basé sur les données* (recommandé si ≥ 300 conv/mois), sinon *Dernier clic*
9. **Inclure dans « Conversions »** : oui s'il s'agit de votre conversion principale d'optimisation

> ⚠️ Pour la méthode C, notez le **Conversion ID** et le **Conversion Label** : ils seront nécessaires à l'import hors ligne.

---

## Phase 3️⃣ : Implémenter le déclenchement

### 3A - Redirection vers une page de confirmation (recommandée)

1. **Créer une page de confirmation dédiée** sur votre domaine, ex. `https://monsite.com/rdv-confirme` (page réelle, non listée dans la navigation).
2. Configurer la redirection dans l'outil :
   - **Calendly** : *Event type → Confirmation page → Redirect to an external site* → coller l'URL. (Redirection disponible sur les plans payants.)
   - **Cal.com** : *Event type → Advanced → Redirect on booking* → coller l'URL.
3. Dans **GTM**, créer un déclencheur *Page vue* avec la condition `Page Path` = `/rdv-confirme`.
4. Y associer le tag **Suivi des conversions Google Ads** (Conversion ID + Conversion Label de la Phase 2).
5. Vérifier le déclenchement avec l'extension **Tag Assistant** de Chrome.
6. **Tester** en prenant un RDV test → vérifier qu'**1 conversion** remonte sous 24 h.

> 💡 Calendly transmet les informations de l'invité dans l'URL de redirection (`invitee_email`, `invitee_full_name`, `event_type_name`, `assigned_to`…). Ces paramètres alimentent la valeur de conversion et les conversions améliorées.

### 3B - Snippet de conversion natif

Pour les outils qui exposent un champ « code de suivi de conversion » dans leurs paramètres.

1. Récupérer le snippet Google Ads (event `gtag`) correspondant à votre action de conversion.
2. **Calendly** : coller ce code de suivi de conversion dans les paramètres de tracking / analytics du compte, pour qu'il se déclenche à la réservation.
3. Vérifier la compatibilité avec votre configuration GTM (éviter le double déclenchement si le tag existe déjà).
4. **Tester** avec une réservation test.

### 3C - Webhook → conversion hors ligne

À utiliser pour ne compter que les RDV honorés ou qualifiés.

1. **Prérequis** : capturer et stocker le **GCLID** au moment du clic (champ caché du formulaire, paramètre transmis à l'outil, puis stockage en base ou CRM).
2. Activer le webhook de l'outil :
   - **Calendly** : activer le webhook (`invitee.created`, `invitee.canceled`) — compte Pro+ requis — vers un endpoint (Zapier, Make ou backend custom).
   - **Cal.com** : activer les webhooks natifs (`BOOKING_CREATED`, `BOOKING_CANCELLED`) vers un endpoint custom.
3. À réception, stocker le RDV avec son GCLID, son horodatage et éventuellement sa valeur.
4. Filtrer selon votre règle métier (RDV tenu / qualifié) puis **importer dans Google Ads** :
   - Import manuel (CSV : GCLID + nom de conversion + horodatage + valeur), ou
   - Google Ads API, ou connecteur Zapier / Make.
5. Détail complet de l'import : [Tracking - Configurer le suivi des conversions hors ligne](<Suivi - Configurer le suivi des conversions hors ligne.md>).

> ⚠️ Sans GCLID stocké côté site, l'import hors ligne est impossible : Google Ads ne peut pas rattacher le RDV au clic. Sécurisez cette capture **avant** d'activer le webhook.

---

## Phase 4️⃣ : Fiabiliser et vérifier

### 4.1 Activer les conversions améliorées (Enhanced Conversions)

1. **Outils → Conversions** → cliquer sur l'action de conversion → **Améliorations**.
2. Activer *Conversions améliorées pour le Web*.
3. Choisir la source : *Balise Google* (recommandé) ou *Google Tag Manager*.
4. Mapper les données utilisateur (email, téléphone, prénom, nom) — l'email de l'invité fourni par Calendly / Cal.com est le levier n°1.
5. Vérifier que le statut passe à *Reçoit les données utilisateur* sous 24-48 h.

### 4.2 Fiabiliser en server-side (optionnel, recommandé)

Pour la résilience post-iOS et la déduplication, faire remonter la conversion côté serveur.

1. Importer le client Google Ads dans GTM Server (modèle officiel).
2. Renseigner le Conversion ID + Conversion Label.
3. Déclencheur server identique au déclencheur client (déduplication via GCLID).
4. Activer les conversions améliorées côté serveur également (email haché).
5. Détail : [Tracking - Implémenter le Server-Side Tagging](<Suivi - Implémenter le Server-Side Tagging.md>).

### 4.3 Test de bout en bout

1. Prendre un **RDV test** de bout en bout.
2. Vérifier qu'**1 conversion** apparaît dans Google Ads (délai 24-48 h).
3. Contrôler le statut de la conversion : *Enregistre des conversions*.
4. Vérifier que le diagnostic affiche *Aucun problème*.
5. Contrôler le match rate des conversions améliorées : ≥ 60-70 % (objectif 80 %+).

---

## Validation et critères de complétion

Cette SOP est terminée quand :

- [ ] L'action de conversion « RDV » est créée avec la bonne catégorie, valeur, fenêtre et attribution
- [ ] Le déclenchement est implémenté selon la méthode retenue (A, B ou C)
- [ ] Un RDV test remonte comme **1 conversion** dans Google Ads
- [ ] Le statut de la conversion est *Enregistre des conversions* et le diagnostic est sans problème
- [ ] Le GCLID est bien conservé (attribution rattachée à la campagne / au mot-clé)
- [ ] Les conversions améliorées sont actives avec un match rate ≥ 60-70 %
- [ ] (Méthode C) Seuls les RDV honorés / qualifiés sont importés, no-shows exclus
- [ ] La configuration est documentée dans le doc client (conversions actives, fenêtres, attribution)

---

## Erreurs fréquentes

| Erreur | Pourquoi ça arrive | Comment l'éviter |
|---------|----------------|--------------|
| Tracker le clic vers le calendrier au lieu de la réservation | Confondre l'ouverture du widget avec le RDV pris | Déclencher la conversion sur la confirmation (page A), le snippet (B) ou le webhook (C), jamais sur le clic |
| Page de confirmation accessible directement | La page `/rdv-confirme` est indexée ou linkée | Page dédiée non listée ; ajouter un paramètre / condition GTM pour éviter les conversions fantômes |
| GCLID perdu entre le site et l'outil | Changement de domaine, GCLID non transmis | Privilégier la méthode A (même navigateur) ou passer le GCLID en paramètre / champ caché avant l'import |
| Compter chaque no-show comme conversion | Déclenchement à la réservation, pas à la tenue | Utiliser le webhook (`invitee.canceled` / annulation) pour filtrer, ou n'importer que les RDV tenus |
| Ne pas tester après l'implémentation | Confiance aveugle dans la configuration | Toujours prendre un RDV test et vérifier la remontée sous 24-48 h |
| Fenêtre de conversion trop courte | RDV souvent pris loin dans le temps | Allonger la fenêtre de conversion au-delà de 30 j si besoin |

---

## Procédures liées

| SOP | Relation |
|-----|-------------|
| [Tracking - Configurer le suivi des conversions Google Ads](<Suivi - Configurer le suivi des conversions Google Ads.md>) | Amont (installer la Balise et l'action de conversion de base) |
| [Tracking - Configurer le suivi des conversions hors ligne](<Suivi - Configurer le suivi des conversions hors ligne.md>) | Lié (méthode C : webhook + import GCLID) |
| [Tracking - Implémenter les conversions améliorées](<Suivi - Implémenter les conversions améliorées.md>) | Aval (fiabiliser le taux de match via l'email de l'invité) |
| [Tracking - Implémenter le Server-Side Tagging](<Suivi - Implémenter le Server-Side Tagging.md>) | Aval (résilience post-iOS et déduplication) |
| [Tracking - Implémenter la déduplication par Transaction ID](<Suivi - Implémenter la déduplication par Transaction ID.md>) | Lié (éviter le double comptage si plusieurs méthodes coexistent) |
