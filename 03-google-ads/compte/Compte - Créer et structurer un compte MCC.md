# Créer et structurer un compte MCC

> **Plateforme :** Google Ads
> **Catégorie :** Compte
> **Type :** SOP
> **Mis à jour :** 2026-07-09

## Objectif

Cette SOP vous guide à travers la création d'un compte administrateur (MCC, *Manager Account*) et son organisation : liaison aux comptes clients, niveaux d'accès et sécurité. Le MCC est le point d'entrée unique depuis lequel une agence ou un freelance gère plusieurs comptes clients Google Ads.

> ❓ **La question clé :** Comment gérer N comptes clients Google Ads depuis un seul login, sans mélanger vos accès personnels avec ceux de vos clients ?

Un MCC (compte administrateur) permet de piloter plusieurs comptes clients depuis un seul endroit. Il ouvre la facturation centralisée, l'audit cross-comptes et le partage d'audiences entre comptes. Sans MCC, chaque compte client vit isolé, avec un login séparé, ce qui devient ingérable dès le deuxième client.

---

## Ce que cette SOP ne couvre PAS

Cette SOP ne couvre **pas :**

- La création du compte publicitaire du client lui-même (signup, fuseau/devise, facturation, coupon) — Voir : [Compte - Créer un compte client Google Ads](<Compte - Créer un compte client Google Ads.md>)
- La configuration du suivi des conversions dans le compte client (Voir : [Tracking - Configurer le suivi des conversions Google Ads](<../suivi/Suivi - Configurer le suivi des conversions Google Ads.md>))
- La stratégie de découpage des campagnes à l'intérieur d'un compte (Voir : [Strategie - Orchestration de la structure de compte](<../strategie/Strategie - Orchestration de la structure de compte.md>))
- Le lancement d'une campagne

## Quand utiliser cette SOP

Lancez cette SOP quand :

- Vous démarrez votre activité de media buyer et vous gérez (ou allez gérer) plus d'un compte client
- Vous voulez centraliser la facturation et le reporting de plusieurs comptes
- Vous devez récupérer l'accès à un compte client déjà existant sans en devenir propriétaire
- Vous voulez auditer plusieurs comptes clients depuis une même interface

---

## Avant de commencer

### Prérequis

- Un compte Gmail **dédié** à votre activité de gestion (jamais votre compte personnel)
- La double authentification (2FA) activable sur ce compte Gmail (application d'authentification recommandée, pas SMS)
- Votre nom commercial / raison sociale (pour nommer le compte administrateur)
- Les identifiants (ID à 10 chiffres, format `XXX-XXX-XXXX`) des comptes clients à lier, si ces comptes existent déjà

### Pourquoi un MCC plutôt que des comptes isolés

| Sans MCC | Avec MCC |
|----------|----------|
| Un login par compte client | Un seul login pour tous les comptes |
| Facturation compte par compte | Facturation centralisée possible |
| Aucune vue transversale | Audit et reporting cross-comptes |
| Audiences cloisonnées | Partage d'audiences entre comptes |
| Accès personnel mêlé aux comptes clients | Séparation nette admin / clients |

> ⚠️ **Règle d'or :** n'attachez jamais votre compte publicitaire personnel comme compte client de votre MCC. Le MCC est l'administrateur, pas un annonceur.

---

## Cadre d'exécution

| Phase | Objectif | Résultat |
|-------|---------|--------|
| **Phase 1️⃣ : Créer le compte administrateur** | Ouvrir le MCC sur un Gmail dédié et sécurisé | MCC créé |
| **Phase 2️⃣ : Configurer le MCC** | Renseigner nom, fuseau, devise, identité annonceur, notifications | MCC paramétré |
| **Phase 3️⃣ : Lier un compte client** | Demander et obtenir l'accès à un compte client | Compte client rattaché |
| **Phase 4️⃣ : Gérer les accès et la sécurité** | Cadrer les niveaux d'accès et documenter | Accès sécurisés et tracés |

---

## Phase 1️⃣ : Créer le compte administrateur

### 1.1 Préparer le Gmail dédié

1. Créez (ou utilisez) un compte Gmail **dédié** à votre activité de gestion — jamais votre compte personnel.
2. Activez la double authentification (2FA) sur ce Gmail, via une application d'authentification (Authenticator) plutôt que par SMS.

> ⚠️ **Pourquoi un Gmail dédié :** si vous mélangez comptes perso et clients sur un même Gmail, couper le compte perso vous fait perdre l'accès aux comptes clients.

### 1.2 Créer le MCC

1. Rendez-vous sur `ads.google.com/aw/overview`.
2. Cliquez sur le lien **« Créer un compte administrateur »**.
3. Renseignez le nom du manager (ex : `[Votre nom] - Media Buyer Freelance`).

---

## Phase 2️⃣ : Configurer le MCC

### 2.1 Fuseau horaire et devise

1. Choisissez le **fuseau horaire** et la **devise** du compte administrateur. C'est **vous** qui les définissez, pas le client.

> 💡 Ce fuseau et cette devise concernent le reporting du MCC lui-même. Chaque compte client conserve son propre fuseau et sa propre devise, définis à la création du compte client.

### 2.2 Vérifier l'identité de l'annonceur (DSA)

1. Complétez la **vérification de l'identité de l'annonceur**, obligatoire depuis 2024.

### 2.3 Activer les notifications

1. Activez les **notifications par email** pour recevoir les alertes critiques (facturation, refus, suspensions).

---

## Phase 3️⃣ : Lier un compte client

Le MCC prend le contrôle d'un compte client via une **demande d'accès**. Le client doit accepter.

1. Depuis le MCC, allez dans **« Comptes »** → **« + Ajouter un compte client »** → **« Demander l'accès »**.
2. Saisissez l'**ID du compte client** (10 chiffres, format `XXX-XXX-XXXX`).
3. Le client reçoit un email **« Demande d'accès »**.
4. **Le client doit accepter** depuis `ads.google.com` → **Outils** → **Préférences du compte**.
5. Vérifiez que le compte apparaît bien dans **« Comptes »** du MCC, avec un accès **« Administratif »**.

> 💡 Si vous créez vous-même le compte client (plutôt que de le récupérer), suivez d'abord [Compte - Créer un compte client Google Ads](<Compte - Créer un compte client Google Ads.md>), puis revenez à cette phase pour le rattacher au MCC.

---

## Phase 4️⃣ : Gérer les accès et la sécurité

1. Vérifiez qui a accès à chaque compte client : **Outils** → **Accès et sécurité**.
2. Limitez les accès : 1 à 2 administrateurs maximum, ne donnez pas le niveau administrateur à tout le monde.
3. Documentez dans la fiche du client : ID du compte, ID du MCC, conversions actives, contacts urgents.
4. Stockez en coffre (gestionnaire de mots de passe type 1Password) : ID, mots de passe Gmail si applicable.

---

## Validation et critères de complétion

Cette SOP est terminée quand :

- [ ] Le MCC est créé sur un compte Gmail dédié (jamais le compte personnel)
- [ ] La 2FA est activée sur le Gmail propriétaire (application d'authentification)
- [ ] Le nom, le fuseau horaire et la devise du MCC sont renseignés
- [ ] La vérification de l'identité de l'annonceur (DSA) est complétée
- [ ] Les notifications par email sont activées
- [ ] Chaque compte client visé est rattaché et apparaît avec un accès « Administratif »
- [ ] Les niveaux d'accès sont limités (1-2 admins max) et documentés
- [ ] Les identifiants sont stockés en coffre

---

## Erreurs fréquentes

| Erreur | Pourquoi ça arrive | Comment l'éviter |
|---------|----------------|--------------|
| Attacher son compte perso comme client du MCC | Confusion entre rôle admin et rôle annonceur | Le MCC administre, il n'est jamais un compte annonceur ; ne rattachez que des comptes clients |
| Mélanger comptes perso et clients sur un même Gmail | Vouloir aller vite avec un compte existant | Toujours un Gmail dédié à la gestion ; couper un compte perso ne doit jamais couper les clients |
| 2FA par SMS ou absente | Sous-estimer le risque de piratage | Activer la 2FA via une application d'authentification |
| Donner un accès administrateur à tout le monde | Facilité au moment de l'onboarding | Limiter à 1-2 admins, vérifier via Outils → Accès et sécurité |
| Oublier la vérification d'identité (DSA) | Étape perçue comme optionnelle | Obligatoire depuis 2024 ; la compléter dès la création du MCC |
| Ne pas documenter les IDs et accès | Reporté à plus tard | Documenter ID compte, ID MCC et contacts dès la liaison, stocker en coffre |

---

## Procédures liées

| SOP | Relation |
|-----|-------------|
| [Compte - Créer un compte client Google Ads](<Compte - Créer un compte client Google Ads.md>) | Aval (créer le compte client puis le rattacher au MCC) |
| [Tracking - Configurer le suivi des conversions Google Ads](<../suivi/Suivi - Configurer le suivi des conversions Google Ads.md>) | Aval (configurer le tracking (suivi des conversions/évènements) une fois le compte client accessible) |
| [Strategie - Orchestration de la structure de compte](<../strategie/Strategie - Orchestration de la structure de compte.md>) | Lié (organiser les campagnes à l'intérieur d'un compte client) |
