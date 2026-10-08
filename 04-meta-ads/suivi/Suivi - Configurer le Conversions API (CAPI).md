# Configurer le Conversions API (CAPI)

> **Plateforme :** Meta
> **Catégorie :** Suivi
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Cette SOP vous guide à travers l'installation et la vérification du Conversions API (CAPI) de Meta. CAPI envoie les événements de conversion directement depuis votre serveur vers Meta, en complément du pixel navigateur.

> ❓ **La question clé :** Comment récupérer les 15-40% de conversions perdues à cause des ad blockers et des restrictions navigateur (ITP) ?

Le pixel Meta seul ne suffit plus. Les ad blockers bloquent les requêtes du pixel. Safari (ITP) et Firefox limitent les cookies tiers à 7 jours. Résultat : Meta ne voit qu'une partie de vos conversions, l'algorithme optimise sur des données incomplètes, et vos CPA sont artificiellement gonflés.

CAPI résout ce problème en envoyant les données directement server-to-server, sans passer par le navigateur de l'utilisateur.

---

## Ce que cette SOP ne couvre PAS

Cette SOP ne couvre **pas :**

- L'installation du pixel Meta (prérequis, doit déjà être en place)
- La configuration des événements dans Events Manager (PageView, Lead, Purchase, etc.)
- La vérification de domaine dans le Business Manager
- Le lancement d'une campagne (Voir : [Procédure - Lancer une campagne Meta Ads](<../lancement/Lancement - Lancer une campagne.md>))
- La configuration du suivi server-side avancé via GTM Server / Stape (Voir : [Procédure - Configurer le suivi server-side (Stape sGTM)](<Tracking - Configurer le suivi server-side (Stape sGTM).md>))

## Quand utiliser cette SOP

Lancez cette SOP quand :

- Vous lancez un nouveau compte Meta Ads et vous voulez un tracking (suivi des conversions/évènements) fiable dès le départ
- Vous constatez un écart entre les conversions Meta et les conversions CRM/backend
- Le taux de match dans Events Manager est inférieur à 80%
- Vous voyez "Navigateur uniquement" comme méthode de réception dans Events Manager
- Un client vous demande de "fiabiliser le tracking"

---

## Avant de commencer

### Prérequis

- Pixel Meta installé et qui fire correctement (PageView au minimum)
- Événements de conversion configurés dans Events Manager
- Accès administrateur au Business Manager
- Accès au backend du site (CMS, serveur, ou outil d'intégration)
- Domaine vérifié dans le Business Manager

### Pourquoi c'est indispensable

| Problème | Impact sans CAPI | Impact avec CAPI |
|----------|-----------------|-----------------|
| Ad blockers | 15-30% des conversions non trackées | Conversions récupérées via le serveur |
| Safari ITP (cookies 7j) | Attribution cassée après 7 jours | Attribution maintenue via les paramètres serveur |
| Firefox ETP | Cookies tiers bloqués | Contourné par l'envoi server-side |
| iOS 14+ (App Tracking) | Données limitées pour les utilisateurs iOS | CAPI améliore le signal (ne résout pas tout) |
| Qualité d'optimisation | Algorithme Meta sous-alimenté en données | Algorithme optimise sur des données plus complètes |

---

## Cadre d'exécution

| Phase | Objectif | Résultat |
|-------|---------|--------|
| **Phase 1️⃣ : Choisir la méthode d'intégration** | Sélectionner la méthode CAPI adaptée à votre stack | Méthode choisie |
| **Phase 2️⃣ : Implémenter CAPI** | Configurer l'envoi server-side des événements | CAPI active |
| **Phase 3️⃣ : Configurer la déduplication** | S'assurer que les événements ne sont pas comptés deux fois | Déduplication en place |
| **Phase 4️⃣ : Vérifier et optimiser** | Valider le fonctionnement et optimiser le taux de match | CAPI validée et optimisée |

---

## Phase 1️⃣ : Choisir la méthode d'intégration

### 1.1 Les 3 méthodes

| Méthode | Complexité | Idéal pour | Temps d'implémentation |
|---------|-----------|-----------|----------------------|
| **Partner Integration** | Faible | Shopify, WooCommerce, WordPress, Magento, PrestaShop | 15-30 minutes |
| **Conversions API Gateway** | Moyenne | Sites sans intégration native, multi-plateformes | 30-60 minutes |
| **Implémentation manuelle** | Élevée | Sites custom, apps, configurations spécifiques | 2-8 heures (dev nécessaire) |

### 1.2 Arbre de décision

```
Votre plateforme a une intégration native Meta ?
├── Oui → Partner Integration (Phase 2A)
│   (Shopify, WooCommerce, Magento, PrestaShop, BigCommerce, Squarespace, Wix...)
├── Non, mais j'utilise un tag manager ?
│   ├── GTM Server-Side → Conversions API Gateway (Phase 2B)
│   └── GTM Web → Conversions API Gateway (Phase 2B)
└── Non, site custom → Implémentation manuelle (Phase 2C)
```

> 💡 **Recommandation** : toujours partir de la méthode la plus simple. Partner Integration couvre 80% des cas et prend 15 minutes.

---

## Phase 2️⃣ : Implémenter CAPI

### 2A - Partner Integration (Shopify, WooCommerce, etc.)

C'est la méthode la plus simple et la plus fiable pour les plateformes e-commerce et CMS populaires.

**Shopify :**

1. Shopify Admin > Paramètres > Customer events
2. Ajouter le pixel Meta (Meta & Instagram canal de vente)
3. Connecter votre compte Business Manager
4. CAPI est activée automatiquement par l'intégration Shopify
5. Vérifier dans Events Manager que la méthode de réception affiche "Navigateur et serveur"

**WooCommerce :**

1. Installer le plugin officiel "Facebook for WooCommerce"
2. Connecter votre Business Manager via le plugin
3. Le plugin gère automatiquement le pixel + CAPI
4. Vérifier les événements dans Events Manager > Test Events

**WordPress (sans e-commerce) :**

1. Installer le plugin "Meta Pixel" officiel ou un plugin compatible CAPI
2. Connecter votre Business Manager
3. Configurer les événements (Lead, CompleteRegistration, etc.)
4. Certains plugins de formulaires (Gravity Forms, WPForms) supportent CAPI nativement

**Autres plateformes :**

- Vérifier dans Events Manager > Paramètres > Intégrations partenaires si votre plateforme est listée
- Suivre le guide d'intégration spécifique à chaque plateforme

### 2B - Conversions API Gateway

Pour les configurations qui passent par un tag manager ou qui n'ont pas d'intégration native.

1. Events Manager > Paramètres du pixel > Conversions API
2. Sélectionner "Conversions API Gateway"
3. Choisir la méthode d'hébergement :
   - **AWS (recommandé)** : Meta fournit un template CloudFormation
   - **Google Cloud Platform** : via Cloud Run
4. Suivre l'assistant de configuration pas à pas
5. Le gateway intercepte les événements du pixel et les renvoie via CAPI
6. Pas besoin de code custom

> ⚠️ **Coût** : le Gateway génère un petit coût d'hébergement (quelques euros/mois sur AWS pour la plupart des sites). À inclure dans le budget du client.

### 2C - Implémentation manuelle

Pour les sites custom ou les cas spécifiques nécessitant un contrôle total.

1. Events Manager > Paramètres du pixel > Conversions API > Configuration manuelle
2. Générer un Access Token
3. Envoyer les événements via l'API Meta Marketing :

**Endpoint :**
```
POST https://graph.facebook.com/v19.0/{pixel_id}/events
```

**Paramètres obligatoires par événement :**

| Paramètre | Description | Exemple |
|-----------|-------------|---------|
| `event_name` | Nom de l'événement | Purchase, Lead, AddToCart |
| `event_time` | Timestamp UNIX | 1712188800 |
| `action_source` | Source de l'action | "website" |
| `event_source_url` | URL où l'événement s'est produit | https://monsite.com/merci |
| `user_data` | Données utilisateur hashées (SHA-256) | email, phone, fbp, fbc |

**Paramètres utilisateur pour le matching :**

| Paramètre | Priorité | Impact sur le taux de match |
|-----------|----------|---------------------------|
| `em` (email hashé) | Très haute | +20-30% de taux de match |
| `ph` (téléphone hashé) | Haute | +10-15% |
| `fn` / `ln` (prénom/nom hashés) | Moyenne | +5-10% |
| `fbp` (cookie _fbp) | Très haute | Identifiant pixel, crucial pour la déduplication |
| `fbc` (paramètre fbclid) | Très haute | Identifiant de clic Meta |
| `external_id` | Haute | ID client interne, améliore le matching cross-device |
| `client_ip_address` | Moyenne | Aide au matching |
| `client_user_agent` | Moyenne | Aide au matching |

> ⚠️ **Hashage obligatoire** : les données PII (email, téléphone, nom, prénom) doivent être hashées en SHA-256 avant l'envoi. Ne jamais envoyer en clair. Le `fbp` et `fbc` ne sont PAS hashés.

4. Implémenter l'appel API côté serveur (backend) à chaque conversion
5. Tester avec l'outil Test Events avant de passer en production

---

## Phase 3️⃣ : Configurer la déduplication

### 3.1 Pourquoi la déduplication est critique

Sans déduplication, chaque conversion est comptée deux fois : une fois par le pixel (navigateur), une fois par CAPI (serveur). Vos CPA apparaissent 2x plus bas que la réalité. L'algorithme Meta reçoit des signaux faussés.

### 3.2 Mécanisme de déduplication

Meta déduplique automatiquement si les deux conditions sont réunies :

| Condition | Comment l'assurer |
|-----------|------------------|
| Même `event_name` | Envoyer exactement le même nom d'événement des deux côtés (ex: "Purchase") |
| Même `event_id` | Générer un ID unique par conversion et l'envoyer à la fois via le pixel ET via CAPI |

**Implémentation :**

1. À chaque conversion, générer un `event_id` unique (UUID, transaction ID, etc.)
2. Inclure cet `event_id` dans l'appel pixel (côté navigateur) :
   ```javascript
   fbq('track', 'Purchase', {value: 49.90, currency: 'EUR'}, {eventID: 'order_12345'});
   ```
3. Inclure le même `event_id` dans l'appel CAPI (côté serveur)
4. Meta compare les deux et ne compte qu'une seule conversion

> 💡 **Partner Integrations** (Shopify, WooCommerce) : la déduplication est gérée automatiquement. Vérifiez quand même dans Events Manager.

### 3.3 Vérifier la déduplication

1. Events Manager > Aperçu de l'événement
2. Cliquer sur un événement (ex: Purchase)
3. Vérifier :
   - Méthode de réception = "Navigateur et serveur" ✅
   - Pas de doublement soudain du nombre d'événements
4. Comparer le nombre de conversions Meta vs le nombre de conversions dans votre CRM/backend
   - Si Meta affiche ~2x le CRM : la déduplication ne fonctionne pas

---

## Phase 4️⃣ : Vérifier et optimiser

### 4.1 Tester les événements

1. Events Manager > Test Events
2. Ouvrir votre site dans un autre onglet
3. Déclencher une conversion test (soumettre un formulaire, faire un achat test)
4. Vérifier que l'événement apparaît avec :
   - Source : "Navigateur et serveur" (ou "Serveur" pour CAPI uniquement)
   - Pas de doublon visible

### 4.2 Vérifier le taux de match (Event Match Quality)

1. Events Manager > Aperçu > Qualité de match des événements
2. Le score va de 1 à 10

| Score | Interprétation | Action |
|-------|----------------|--------|
| 8-10 | Excellent | Maintenir |
| 6-7 | Correct | Ajouter des paramètres utilisateur (email, téléphone) |
| 4-5 | Faible | Revoir l'implémentation, ajouter `fbp`, `fbc`, `email` |
| 1-3 | Critique | L'implémentation est probablement cassée |

### 4.3 Optimiser le taux de match

Pour augmenter le Niveau de qualité de match :

1. **Envoyer l'email** (hashé SHA-256) - c'est le levier n°1
2. **Envoyer le téléphone** (hashé SHA-256) si disponible
3. **Envoyer le `fbp` cookie** - lire le cookie `_fbp` et le transmettre côté serveur
4. **Envoyer le `fbc` paramètre** - lire le paramètre `fbclid` de l'URL et le stocker
5. **Envoyer l'IP et le User-Agent** du client

> 💡 **L'email seul peut faire passer le score de 4 à 7-8.** C'est le paramètre le plus impactant pour le matching.

### 4.4 Vérifier l'Aggregated Event Measurement (AEM)

1. Events Manager > Mesure agrégée des événements
2. Vérifier que vos événements sont correctement priorisés (maximum 8 événements par domaine)
3. L'événement le plus important (Purchase, Lead) doit être en priorité la plus haute

| Priorité | Événement type |
|----------|---------------|
| 1 (plus haute) | Purchase |
| 2 | Lead / CompleteRegistration |
| 3 | AddToCart / InitiateCheckout |
| 4 | ViewContent |
| 5-8 | Événements secondaires |

---

## Validation et critères de complétion

Cette SOP est terminée quand :

- [ ] CAPI est configurée et active
- [ ] Events Manager affiche "Navigateur et serveur" comme méthode de réception
- [ ] La déduplication est en place (event_id partagé entre pixel et CAPI)
- [ ] Le test avec Test Events montre les événements côté serveur
- [ ] Le taux de match (Event Match Quality) est ≥ 6/10 au minimum (viser ≥ 8/10, atteignable en server-side)
- [ ] L'AEM est configuré avec les événements correctement priorisés
- [ ] Le nombre de conversions Meta est cohérent avec le CRM/backend (écart < 15%)

---

## Passerelle de sortie

| Délai | Action |
|-----------|--------|
| Jour 1 | Vérifier que les événements arrivent dans Events Manager |
| Semaine 1 | Comparer conversions Meta vs CRM pour valider la déduplication |
| Mensuelle | Vérifier le taux de match, ajuster si besoin |
| Trimestrielle | Vérifier la conformité RGPD et le consentement |

**En cas de problème :**

| Problème | Rediriger vers |
|-------|----------|
| Événements CAPI n'arrivent pas | Vérifier l'Access Token, l'endpoint, les logs serveur |
| Double comptage persistant | Vérifier que l'`event_id` est identique des deux côtés |
| Taux de match < 4 | Ajouter des paramètres utilisateur (email, fbp, fbc) |
| Erreurs API (400, 403) | Vérifier les permissions du token et le format des données |

---

## Erreurs fréquentes

| Erreur | Pourquoi ça arrive | Comment l'éviter |
|---------|----------------|--------------|
| Oublier la déduplication | Focus sur l'implémentation, pas sur le contrôle qualité | Toujours configurer l'event_id dès le début |
| Envoyer les données PII en clair | Méconnaissance du hashage | Implémenter le hashage SHA-256 dans le code serveur, vérifier avec Test Events |
| Ne pas envoyer le `fbp` cookie | Le cookie est côté navigateur, pas évident de le passer au serveur | Lire le cookie `_fbp` côté client et le transmettre au backend |
| CAPI sans pixel | Vouloir remplacer le pixel par CAPI | CAPI complète le pixel, ne le remplace pas. Les deux doivent coexister |
| Ne pas tester après l'implémentation | Confiance aveugle dans l'intégration | Toujours utiliser Test Events pour vérifier |
| Ignorer l'AEM | Ne pas connaître la priorité des événements | Configurer l'AEM dès que CAPI est en place |

---

## Procédures liées

| SOP | Relation |
|-----|-------------|
| [Procédure - Lancer une campagne Meta Ads](<../lancement/Lancement - Lancer une campagne.md>) | Aval (lancer une fois le tracking en place) |
| [Procédure - Analyser les performances Meta Ads](<../reporting/Reporting - Analyser les performances.md>) | Lié (la qualité du tracking impacte directement la fiabilité des données) |
