# Créer un compte client Google Ads

> **Plateforme :** Google Ads
> **Catégorie :** Compte
> **Type :** SOP
> **Mis à jour :** 2026-07-09

## Objectif

Cette SOP vous guide à travers la création d'un compte publicitaire Google Ads pour un client, du signup jusqu'à l'activation d'un coupon publicitaire (bon de crédit offert). Elle couvre les réglages **irréversibles** (fuseau horaire, devise), la vérification d'identité de l'annonceur, la facturation, et l'obtention du crédit de démarrage.

> ❓ **La question clé :** Comment ouvrir un compte client propre, avec les bons réglages irréversibles dès le départ, et démarrer avec un crédit offert de 400 € à 1200 € ?

Un compte mal configuré au départ (mauvais fuseau, mauvaise devise) ne se corrige pas : il faut le recréer. Le coupon publicitaire, lui, ne s'active que dans une fenêtre limitée et sur un compte neuf. Cette SOP verrouille ces deux points le jour de la création.

---

## Ce que cette SOP ne couvre PAS

Cette SOP ne couvre **pas :**

- La création et la structuration du compte administrateur (MCC) et la liaison MCC ↔ client — Voir : [Compte - Créer et structurer un compte MCC](<Compte - Créer et structurer un compte MCC.md>)
- La configuration du suivi des conversions (Voir : [Tracking - Configurer le suivi des conversions Google Ads](<../suivi/Suivi - Configurer le suivi des conversions Google Ads.md>))
- La structuration des campagnes dans le compte (Voir : [Strategie - Orchestration de la structure de compte](<../strategie/Strategie - Orchestration de la structure de compte.md>))
- Le lancement de la première campagne

## Quand utiliser cette SOP

Lancez cette SOP quand :

- Vous onboardez un nouveau client et vous devez ouvrir son compte Google Ads
- Le client n'a pas encore de compte publicitaire
- Vous voulez faire bénéficier le client d'un coupon de crédit offert pour ses premiers tests
- Vous devez vérifier qu'un compte existant a bien les bons réglages fuseau/devise avant de lancer

---

## Avant de commencer

### Prérequis

- Un compte Gmail **dédié au client** (ex : `ads.nomduclient@gmail.com`), jamais votre compte perso
- L'adresse de facturation du client (une **adresse en France** est requise pour le coupon)
- Le moyen de paiement du client : carte bancaire ou RIB pour prélèvement automatique
- Le nom de l'entreprise du client (pour nommer le compte)
- Le code du coupon publicitaire, si vous en avez un à activer

### Décision préalable : qui crée le compte ?

| Cas | Ce qu'il faut faire |
|-----|---------------------|
| Le client crée le compte | Il vous communique l'**ID du compte** (10 chiffres, format `XXX-XXX-XXXX`) que vous rattachez au MCC |
| Vous créez le compte | Créez un Gmail dédié au client (ex : `ads.nomduclient@gmail.com`) puis suivez cette SOP |

> ⚠️ **Ne mélangez jamais** comptes perso et clients sur un même Gmail : couper le compte perso ferait perdre l'accès au compte client.

---

## Cadre d'exécution

| Phase | Objectif | Résultat |
|-------|---------|--------|
| **Phase 1️⃣ : Créer le compte (sans campagne)** | Ouvrir le compte via l'option « Configurez uniquement un compte » | Compte créé |
| **Phase 2️⃣ : Fuseau horaire et devise** | Régler les paramètres irréversibles | Réglages verrouillés |
| **Phase 3️⃣ : Identité annonceur et sécurité** | Vérifier l'identité (DSA) et activer la 2FA | Compte conforme |
| **Phase 4️⃣ : Facturation** | Ajouter le moyen de paiement et l'automatiser | Compte facturable |
| **Phase 5️⃣ : Activer le coupon publicitaire** | Réclamer et appliquer le crédit offert | Coupon activé |

---

## Phase 1️⃣ : Créer le compte (sans campagne)

L'objectif : ouvrir le compte **sans se laisser embarquer** dans la création d'une campagne.

1. Rendez-vous sur `ads.google.com` et connectez-vous avec le Gmail dédié au client.
2. À l'étape de sélection de l'objectif, ne créez pas de campagne. Tout en bas de l'écran, cliquez sur **« Configurez uniquement un compte »**.
3. Renseignez le **nom du compte** = nom de l'entreprise du client.

> 💡 Créer le compte sans campagne évite de lancer par erreur une diffusion mal configurée, et vous permet de finaliser fuseau, devise, facturation et coupon proprement avant tout lancement.

---

## Phase 2️⃣ : Fuseau horaire et devise

Ces deux réglages sont **irréversibles** : les modifier impose de recréer le compte.

1. Sélectionnez le **fuseau horaire** correct (France si le trafic est français).
2. Sélectionnez la **devise** correcte (EUR pour la France).

> ⚠️ **Irréversible.** Fuseau et devise ne peuvent pas être changés après création. Vérifiez-les deux fois avant de valider — une erreur ici oblige à repartir d'un compte neuf.

---

## Phase 3️⃣ : Identité annonceur et sécurité

1. Complétez la **vérification de l'identité de l'annonceur** (DSA), obligatoire depuis 2024.
2. Activez la **double authentification (2FA)** sur le compte Gmail propriétaire (application d'authentification, pas SMS).

---

## Phase 4️⃣ : Facturation

C'est l'ajout du moyen de paiement qui rend le compte **éligible au coupon**.

1. Ajoutez le moyen de paiement du client : carte bancaire ou RIB (prélèvement automatique).
2. Activez la **facturation automatique** pour éviter les coupures de diffusion.

---

## Phase 5️⃣ : Activer le coupon publicitaire

### 5.1 Comprendre le coupon (bon publicitaire)

Le coupon est un **code de réduction** appliqué à l'ouverture d'un compte. Il donne droit à un **crédit publicitaire**, débloqué une fois un certain montant de dépenses atteint. Selon l'offre, le crédit va de **400 € à 1200 €** — un moyen d'alléger le coût des premiers tests.

### 5.2 Les paliers

Plus vous dépensez, plus le crédit est élevé. Trois paliers, une même durée de 60 jours :

| Offre | Crédit offert | Condition |
|-------|---------------|-----------|
| Offre A | **400 €** | Après **400 €** de dépenses sur 60 jours |
| Offre B | **800 €** | Après **1200 €** de dépenses sur 60 jours |
| Offre C | **1200 €** | Après **2400 €** de dépenses sur 60 jours |

> ⚠️ Le crédit n'est **versé qu'une fois le seuil de dépenses atteint**, dans la fenêtre de 60 jours.

### 5.3 Les conditions à connaître

| Condition | Détail |
|-----------|--------|
| Nouveaux annonceurs | Réservé aux comptes neufs, avec une adresse de facturation en France |
| Une offre par annonceur | Un seul coupon promotionnel autorisé par personne |
| Délai de 14 jours | À appliquer dans les 14 jours suivant la première impression d'annonce |
| Non rétroactif | Seules les dépenses postérieures à l'ajout du code sont comptées |
| Avoir valable 60 jours | Le crédit expire 60 jours après son application au compte |
| Jusqu'à épuisement | L'offre reste valable tant que des avoirs sont disponibles |

> 💡 **Depuis l'étranger ?** Un VPN (par exemple Urban VPN sur Google Chrome) permet d'afficher l'offre comme depuis la France.

### 5.4 Activer le coupon en 6 étapes

1. Rendez-vous sur la page d'accueil de Google Ads.
2. Cliquez sur **« Réclamez maintenant »**.
3. Créez votre compte ou connectez-vous.
4. Dans le menu de gauche : **Facturation** → **Promotions**.
5. Cliquez sur **« + »** et collez votre code.
6. Cliquez sur **« Envoyer »** et suivez votre progression.

---

## Validation et critères de complétion

Cette SOP est terminée quand :

- [ ] Le compte est créé via « Configurez uniquement un compte » (aucune campagne lancée par erreur)
- [ ] Le nom du compte correspond au nom de l'entreprise du client
- [ ] Le **fuseau horaire** et la **devise** sont corrects (vérifiés avant validation — irréversibles)
- [ ] La vérification de l'identité de l'annonceur (DSA) est complétée
- [ ] La 2FA est activée sur le Gmail propriétaire
- [ ] Le moyen de paiement est ajouté et la facturation automatique activée
- [ ] Le coupon est appliqué (Facturation → Promotions), dans les 14 jours et sur un compte neuf éligible
- [ ] Le suivi de la progression vers le seuil de dépenses est en place

---

## Erreurs fréquentes

| Erreur | Pourquoi ça arrive | Comment l'éviter |
|---------|----------------|--------------|
| Mauvais fuseau ou mauvaise devise | Validation trop rapide à la création | Vérifier deux fois : ces réglages sont irréversibles, une erreur oblige à recréer le compte |
| Lancer une campagne au lieu de créer le compte | Le parcours de signup pousse vers une campagne | Cliquer sur « Configurez uniquement un compte » tout en bas de l'écran |
| Coupon non appliqué à temps | Ignorer la fenêtre de 14 jours | Appliquer le code dans les 14 jours suivant la première impression d'annonce |
| Croire que les dépenses passées comptent | Méconnaissance de la règle | Le coupon est non rétroactif : seules les dépenses postérieures à l'ajout du code comptent |
| Compte non éligible au coupon | Compte non neuf ou sans moyen de paiement | Coupon réservé aux comptes neufs, adresse FR, avec moyen de paiement ajouté |
| Mélanger comptes perso et client sur un Gmail | Vouloir aller vite | Un Gmail dédié par client ; ne jamais utiliser le compte perso |
| Coupures de diffusion pour impayé | Facturation manuelle oubliée | Activer la facturation automatique |

---

## Procédures liées

| SOP | Relation |
|-----|-------------|
| [Compte - Créer et structurer un compte MCC](<Compte - Créer et structurer un compte MCC.md>) | Amont (rattacher ce compte client au compte administrateur) |
| [Tracking - Configurer le suivi des conversions Google Ads](<../suivi/Suivi - Configurer le suivi des conversions Google Ads.md>) | Aval (configurer le tracking (suivi des conversions/évènements) une fois le compte créé) |
| [Strategie - Orchestration de la structure de compte](<../strategie/Strategie - Orchestration de la structure de compte.md>) | Aval (structurer les campagnes dans le compte) |
