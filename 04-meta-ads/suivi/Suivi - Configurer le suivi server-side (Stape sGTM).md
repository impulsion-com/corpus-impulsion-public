# Configurer le suivi server-side (Stape / sGTM)

> **Plateforme :** Meta
> **Catégorie :** Suivi
> **Type :** SOP
> **Mis à jour :** 2026-07-09

## Objectif

Cette SOP vous guide pour déployer un tracking (suivi des conversions/évènements) **server-side** via **Google Tag Manager Server** hébergé sur **Stape**, avec un sous-domaine first-party. C'est le niveau au-dessus du CAPI « natif » : au lieu de laisser une intégration partenaire gérer l'envoi serveur, vous contrôlez vous-même le conteneur serveur, les cookies first-party et la déduplication.

> ❓ **La question clé :** Comment obtenir le tracking le plus résilient possible (post-iOS 14.5, ad blockers, cookies tiers) avec un contrôle total sur les événements envoyés à Meta ?

Le pixel navigateur perd 15-40% des conversions. Le CAPI via intégration partenaire récupère une partie mais reste limité (cookies navigateur, pas de first-party). Le server-side via sGTM/Stape pose des cookies **first-party** (sur votre sous-domaine), échappe aux ad blockers et fait remonter un volume d'événements nettement supérieur avec un meilleur taux de match.

---

## Ce que cette SOP ne couvre PAS

Cette SOP ne couvre **pas :**

- L'installation du pixel Meta client-side (prérequis, doit déjà être en place)
- La configuration CAPI « simple » via intégration partenaire ou manuelle (Voir : [Procédure - Configurer le Conversions API (CAPI)](<Tracking - Configurer le Conversions API (CAPI).md>))
- La configuration des événements dans Events Manager (PageView, Lead, Purchase…) — supposés déjà définis
- La mise en place de GTM Web de zéro (le conteneur web doit déjà exister)
- Le tracking GA4 server-side (compatible et hébergeable dans le même conteneur Stape, mais process séparé)

## Quand utiliser cette SOP

Lancez cette SOP quand :

- Le CAPI simple est en place mais le taux de match plafonne à 5-6/10
- Vous voulez maximiser la résilience du tracking (compte à fort budget, e-commerce, lead gen à volume)
- Un client exige un tracking « pro » avec first-party cookies et propriété des données
- Vous constatez une perte importante de conversions iOS / ad blockers malgré le CAPI
- Vous consolidez plusieurs tags (Meta + GA4 + TikTok) dans une seule couche serveur

> ⚠️ **Prérequis de maturité** : le server-side ajoute de la complexité (DNS, conteneur serveur, coût mensuel Stape). Pour un petit compte qui démarre, le CAPI simple suffit. Réservez cette SOP aux comptes qui en ont l'usage.

---

## Avant de commencer

### Prérequis

- Compte **Stape** créé (stape.io) avec un forfait adapté au volume de requêtes
- **Pixel Meta + CAPI client-side** déjà configurés (Voir : [Procédure - Configurer le Conversions API (CAPI)](<Tracking - Configurer le Conversions API (CAPI).md>))
- Accès **admin GTM** : conteneur web **et** capacité à créer un conteneur serveur
- **Token d'accès Meta API** généré depuis un **System User permanent** dans le Business Manager (jamais un utilisateur perso)
- **Dataset ID** Meta noté (Events Manager > ID du pixel/dataset)
- Accès **DNS** du domaine client (registrar : OVH, Cloudflare, Gandi…) pour créer un sous-domaine

### Documents de référence (à garder ouverts)

| Document | Utilisé pour |
|----------|----------|
| [Procédure - Configurer le Conversions API (CAPI)](<Tracking - Configurer le Conversions API (CAPI).md>) | Déduplication, paramètres user_data, taux de match |
| [Guide Meta Ads](<../Guide Meta.md>) | Événements, priorité AEM, structure |

---

## Cadre d'exécution

| Phase | Objectif | Résultat |
|-------|---------|--------|
| **Phase 1️⃣ : Conteneur serveur Stape** | Créer le conteneur sGTM hébergé | Conteneur serveur actif |
| **Phase 2️⃣ : Sous-domaine first-party + DNS** | Router le tracking sur votre domaine | Sous-domaine résolu et actif |
| **Phase 3️⃣ : GTM Server (client Meta)** | Configurer l'envoi des événements vers Meta | Événements mappés côté serveur |
| **Phase 4️⃣ : Pont GTM Web → Server** | Rediriger les tags web vers le serveur | Flux web→server opérationnel |
| **Phase 5️⃣ : Déduplication** | Éviter le double comptage pixel/serveur | `event_id` partagé, 0 doublon |
| **Phase 6️⃣ : Tests et monitoring** | Valider le fonctionnement et surveiller | Match rate ≥ 8/10, monitoring en place |

---

## Phase 1️⃣ : Conteneur serveur Stape

1. Stape > Créer un conteneur > **Power-Up** (pas Standard : le Power-Up gère mieux le volume et les fonctionnalités first-party)
2. Choisir la **région la plus proche du marché cible** (EU pour la France : latence + conformité RGPD)
3. Lier au compte **GTM via OAuth** (Stape crée automatiquement le conteneur serveur dans votre GTM)
4. Noter l'URL du conteneur fournie par Stape (elle sera remplacée par le sous-domaine custom en Phase 2)

> 💡 **Power-Up vs Standard** : le sous-domaine custom (first-party cookies, cœur du gain server-side) nécessite le Power-Up. Ne pas prendre le Standard pour un déploiement client.

---

## Phase 2️⃣ : Sous-domaine first-party + DNS

Le sous-domaine custom (ex : `sgtm.client.com`) est ce qui rend les cookies **first-party** et échappe aux ad blockers.

1. Dans Stape, récupérer l'enregistrement **A / CNAME** fourni pour le sous-domaine
2. Créer l'enregistrement **DNS** chez le registrar du client (OVH, Cloudflare, Gandi…)
3. Attendre la **propagation** (5 min à 24h selon le registrar)
4. Vérifier la résolution DNS via `dig sgtm.client.com` ou `nslookup`
5. Confirmer dans Stape que le sous-domaine est **actif** (badge vert)

> ⚠️ **Choix du sous-domaine** : utiliser un sous-domaine du **domaine du site** (ex : `sgtm.monsite.com`), pas un domaine tiers. C'est ce qui garantit le caractère first-party des cookies.

---

## Phase 3️⃣ : GTM Server (client Meta)

1. Dans le conteneur serveur GTM : importer le **client Meta** (template officiel ou template Stape)
2. Renseigner :
   - **Pixel ID** (dataset ID)
   - **Token d'accès** (System User permanent)
   - **dataset_id**
3. Activer le **« Test event code »** pour les phases de test
4. Créer les **triggers** correspondant aux événements du tunnel (Lead, Contact, Purchase)
5. Configurer le **mapping des paramètres** : `value`, `currency`, `content_name`, `content_ids`, `event_id`, et les `user_data` hashés (email, téléphone, `fbp`, `fbc`)

> ↪️ **Pour les paramètres user_data et leur impact sur le taux de match :** Voir [Procédure - Configurer le Conversions API (CAPI)](<Tracking - Configurer le Conversions API (CAPI).md>) > Phase 2C.

---

## Phase 4️⃣ : Pont GTM Web → Server

L'objectif : router les événements du conteneur web vers le conteneur serveur, via le sous-domaine.

1. Dans **GTM Web** : ajouter un tag GA4 (ou un tag custom) configuré pour envoyer les données vers GTM Server
2. Renseigner l'**URL du sous-domaine custom** dans `transport_url` (ex : `https://sgtm.client.com`)
3. Vérifier dans l'onglet **Network** de Chrome que les requêtes partent bien vers le sous-domaine (pas vers `google-analytics.com`)
4. Tester en parallèle avec l'extension **GTM Preview** (web + server)

---

## Phase 5️⃣ : Déduplication

Sans déduplication, chaque conversion est comptée deux fois (pixel navigateur + serveur). Le mécanisme repose sur un `event_id` partagé.

1. Générer un **`event_id` unique** côté client (UUID v4 ou `crypto.randomUUID()`)
2. Passer ce **même `event_id`** dans le tag Pixel (client) **ET** dans la requête serveur (CAPI)
3. Vérifier dans **Events Manager > Vue détaillée** : le **« Deduplication rate »** doit être élevé et le nombre d'événements ne doit pas doubler

> ↪️ **Pour le détail du mécanisme de déduplication (même `event_name` + même `event_id`) :** Voir [Procédure - Configurer le Conversions API (CAPI)](<Tracking - Configurer le Conversions API (CAPI).md>) > Phase 3.

---

## Phase 6️⃣ : Tests et monitoring

### 6.1 Tests de bout en bout

| Test | Action | Vérification |
|------|--------|-------------|
| Lead | Remplir un formulaire test | 1 seul événement remonté (déduplication OK) |
| Contact | Prendre un RDV test | 1 seul événement Contact |
| Purchase | Achat test | 1 seul événement + `value` correct |

- Events Manager : la **qualité d'événement** passe à « Excellente » sous 24-48h
- **Match Rate** (Resolution Quality) ≥ **8/10**

### 6.2 Monitoring post-déploiement

- Surveiller la **qualité d'événements** pendant 7 jours (Events Manager)
- Vérifier la **consommation Stape** (requêtes/mois vs forfait)
- **Documenter** dans le doc client : sous-domaine, emplacement du token (coffre-fort, jamais en clair), stratégie `event_id`
- Si tracking **GA4** souhaité : le configurer dans le même conteneur Stape

---

## Indicateurs de succès

| Indicateur | Cible |
|-----------|-------|
| Match Rate (Events Manager) | ≥ 8/10 (vs 5-6 sans server-side) |
| Volume d'événements remonté | > +30% vs pixel seul (récupère iOS / ad blockers) |
| Doublons | 0 sur 100 événements testés |
| ROAS visible Meta | +10-30% sur 14 jours post-déploiement |

---

## Validation et critères de complétion

Cette SOP est terminée quand :

- [ ] Le conteneur serveur Stape (Power-Up) est actif
- [ ] Le sous-domaine first-party est résolu et actif (badge vert Stape)
- [ ] Le client Meta est configuré côté serveur (Pixel ID, token System User, dataset_id)
- [ ] Le pont GTM Web → Server envoie bien via le sous-domaine
- [ ] La déduplication est en place (`event_id` partagé, deduplication rate élevé)
- [ ] Les tests Lead / Contact / Purchase remontent 1 seul événement chacun
- [ ] Le Match Rate est ≥ 8/10
- [ ] Le monitoring et la documentation client sont en place

---

## Passerelle de sortie

| Délai | Action |
|-----------|--------|
| Jour 1 | Vérifier que les événements arrivent côté serveur (Test event code) |
| Jours 1-7 | Surveiller la qualité d'événements et la déduplication |
| Semaine 1 | Comparer volume d'événements avant/après, valider le +30% |
| Mensuelle | Vérifier la consommation Stape et le Match Rate |

**En cas de problème :**

| Problème | Rediriger vers |
|-------|----------|
| Événements serveur n'arrivent pas | Vérifier token System User, dataset_id, Test event code |
| Doublons persistants | Vérifier que l'`event_id` est identique client et serveur (Phase 5) |
| Sous-domaine inactif | Vérifier l'enregistrement DNS, attendre la propagation |
| Match Rate < 8 | Ajouter des `user_data` hashés (email, `fbp`, `fbc`) — Voir SOP CAPI |

---

## Erreurs fréquentes

| Erreur | Pourquoi ça arrive | Comment l'éviter |
|---------|----------------|--------------|
| Utiliser un token utilisateur perso | Rapidité | Toujours un System User permanent (le token perso casse si l'utilisateur quitte le BM) |
| Conteneur Standard au lieu de Power-Up | Économie mal placée | Le first-party cookie exige le Power-Up |
| Oublier la déduplication | Focus sur l'envoi, pas le contrôle | Configurer l'`event_id` partagé dès le départ |
| Sous-domaine sur un domaine tiers | Méconnaissance du first-party | Utiliser un sous-domaine du domaine du site |
| Ne pas surveiller la consommation Stape | Découvrir un dépassement en fin de mois | Monitorer les requêtes/mois vs forfait |
| Déployer sans tester | Confiance aveugle | Toujours tester Lead/Contact/Purchase avant de livrer |

---

## Procédures liées

| SOP | Relation |
|-----|-------------|
| [Procédure - Configurer le Conversions API (CAPI)](<Tracking - Configurer le Conversions API (CAPI).md>) | Amont (le CAPI simple est un prérequis / une alternative plus légère) |
| [Procédure - Lancer une campagne Meta Ads](<../lancement/Lancement - Lancer une campagne.md>) | Aval (lancer une fois le tracking fiabilisé) |
| [Procédure - Analyser les performances Meta Ads](<../reporting/Reporting - Analyser les performances.md>) | Lié (la qualité du tracking conditionne la fiabilité des données) |
