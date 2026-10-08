# Configurer le tracking TikTok Ads

> **Plateforme :** TikTok
> **Catégorie :** Suivi
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Mettre en place une architecture de tracking (suivi des conversions/évènements) complète sur TikTok Ads combinant pixel navigateur et Events API (tracking côté serveur) pour collecter des signaux fiables, optimiser l'algorithme et mesurer les conversions — y compris dans les environnements cookieless post-iOS 14.

> ↪️ **Avant de commencer :** installez d'abord le pixel en suivant [Procédure - Installer le pixel TikTok](<Suivi - Installer le pixel.md>), puis configurez chaque événement via [Procédure - Configurer les événements de conversion TikTok](<Suivi - Configurer les événements de conversion.md>).

---

## Ce que cette SOP ne couvre PAS

Cette SOP ne couvre **pas :**

- L'installation isolée du pixel de base (Voir : [Procédure - Installer le pixel TikTok](<Suivi - Installer le pixel.md>))
- Le mapping détaillé de chaque événement standard et ses paramètres (Voir : [Procédure - Configurer les événements de conversion TikTok](<Suivi - Configurer les événements de conversion.md>))
- La procédure pas-à-pas Shopify (Voir : [Procédure - Configurer le tracking TikTok sur Shopify](<Suivi - Configurer le suivi sur Shopify.md>))
- La procédure pas-à-pas WordPress / WooCommerce (Voir : [Procédure - Configurer le tracking TikTok sur WordPress](<Suivi - Configurer le suivi sur WordPress.md>))
- L'ouverture du compte et la création du pixel dans Events Manager (Voir : [Procédure - Créer et configurer un compte TikTok Ads](<../compte/Compte - Créer et configurer un compte.md>))

---

## Pourquoi le tracking est critique

| Rôle | Impact concret |
|---|---|
| Signaux d'optimisation | L'algorithme TikTok cible les profils similaires aux convertisseurs |
| Mesure des performances | ROAS, CPA, taux de conversion réels par campagne |
| Attribution multi-touch | Relier chaque conversion à la bonne annonce et au bon groupe |
| Retargeting | Construire des audiences basées sur les actions site (ViewContent, AddToCart…) |
| Sortie de learning phase | Atteindre 50 événements/semaine/groupe d'annonces pour stabiliser l'algorithme |

💡 **Sans tracking fonctionnel, TikTok diffuse en aveugle.** Le CPM diminue, mais le CPA explose car l'algorithme ne peut pas apprendre quels profils convertissent.

---

## Architecture de tracking recommandée

```
Navigateur utilisateur
       │
       ├──► Pixel TikTok (JS côté client)
       │         └── Events : PageView, ViewContent, AddToCart…
       │
Serveur / backend
       │
       └──► Events API TikTok (CAPI — côté serveur)
                 └── Events enrichis : IP, User Agent, hashed email/phone
                           │
                           ▼
                  TikTok Ads Manager
                  (déduplication via event_id)
```

💡 **La combinaison pixel + CAPI est le standard recommandé par TikTok.** Elle maximise le taux de match des événements et compense les blocages de cookies iOS 14+.

---

## Impact d'iOS 14 sur le tracking TikTok

Depuis iOS 14.5 (avril 2021), l'ATT (App Tracking Transparency) limite la capacité des pixels navigateur à identifier les utilisateurs sur Safari et les apps iOS.

| Problème | Impact sur TikTok |
|---|---|
| Cookies bloqués (ITP Safari) | Pixel ne peut plus identifier les retours utilisateurs multi-sessions |
| Attribution fenêtre réduite | Achats réalisés après 24-48h peuvent ne pas être attribués |
| Perte de signal | Moins d'événements remontent = algorithme moins précis |
| Décalage données | Reporting TikTok peut sous-compter de 20 à 40% des conversions réelles |

⚠️ **Conséquence directe :** si votre business a un cycle de vente > 1 jour ou un trafic iOS important (> 40%), l'Events API devient indispensable, pas optionnelle.

---

## Pixel TikTok (tracking côté navigateur)

### Installation via Google Tag Manager

1. TikTok Ads Manager > **Événements** > **Gérer (Web)** > Créer un pixel
2. Copier le code du pixel (format `<script>ttq.load('VOTRE_PIXEL_ID')…</script>`)
3. Dans GTM, créer une balise **HTML personnalisé**
4. Coller le code pixel, déclencheur : **Toutes les pages**
5. Publier le conteneur GTM

### Événements standards à configurer

| Événement | Étape du tunnel | Utilité algorithme |
|---|---|---|
| `PageView` | Notoriété | Faible (trop générique) |
| `ViewContent` | Considération | Moyen — cible les curieux |
| `AddToCart` | Intention | Bon signal d'intention |
| `InitiateCheckout` | Décision | Fort signal pré-achat |
| `CompletePayment` | Conversion | Signal d'optimisation principal |
| `SubmitForm` | Lead | Signal d'optimisation lead gen |
| `CompleteRegistration` | Lead qualifié | Signal post-formulaire |

> ↪️ Pour le paramétrage détaillé de chaque événement (valeurs, content_id, deduplication) : [Procédure - Configurer les événements de conversion TikTok](<Suivi - Configurer les événements de conversion.md>)

---

## Events API — Tracking côté serveur (CAPI)

### Pourquoi l'Events API est indispensable

- Fonctionne **indépendamment des cookies et bloqueurs** de publicités
- Envoie des données **enrichies** (IP, User-Agent, données client hachées)
- **Meilleur taux de match** avec les profils TikTok que le pixel seul
- Contourne les blocages iOS 14 (Safari ITP, ATT)
- Permet de **dédupliquer** les événements pixel + serveur via `event_id`

### Fonctionnement technique

```
Événement utilisateur (ex. achat)
        │
        ├──► Pixel JS envoie l'événement au navigateur → TikTok
        │         (peut être bloqué par iOS / AdBlocker)
        │
        └──► Votre serveur envoie l'événement via l'API TikTok
                  (n'est jamais bloqué — connexion serveur à serveur)
                            │
                            ▼
                TikTok reçoit les deux événements
                → Déduplication automatique par event_id
```

### Configuration de l'Events API

#### Étape 1 — Générer un Access Token

1. TikTok Ads Manager > **Événements** > **Gérer (Web)** > Sélectionner votre pixel
2. Onglet **Events API** > Générer un **Access Token**
3. Conserver le token en sécurité (ne jamais l'exposer côté client)

#### Étape 2 — Structure d'un appel API

```json
POST https://business-api.tiktok.com/open_api/v1.3/event/track/

Headers:
  Access-Token: VOTRE_ACCESS_TOKEN
  Content-Type: application/json

Body:
{
  "pixel_code": "VOTRE_PIXEL_ID",
  "event": "CompletePayment",
  "event_id": "order_12345_1712345678",
  "timestamp": "2026-04-07T14:30:00+00:00",
  "context": {
    "page": {
      "url": "https://votresite.com/merci"
    },
    "user": {
      "email": "HASH_SHA256_EMAIL",
      "phone_number": "HASH_SHA256_TELEPHONE",
      "ip": "123.456.789.0",
      "user_agent": "Mozilla/5.0..."
    }
  },
  "properties": {
    "value": 97.00,
    "currency": "EUR",
    "content_id": ["SKU-001"],
    "content_type": "product"
  }
}
```

💡 **L'email et le téléphone doivent être hachés en SHA-256 avant envoi.** TikTok ne les stocke pas en clair — c'est requis par leur politique et les réglementations RGPD.

#### Étape 3 — Déduplication (paramètre `event_id`)

La déduplication évite que TikTok comptabilise deux fois un même événement (pixel + CAPI).

**Règle :** le même `event_id` doit être envoyé à la fois par le pixel JS et par l'API serveur pour le même événement.

```javascript
// Côté pixel JS (GTM ou code page)
const eventId = 'order_' + orderId + '_' + Date.now();

ttq.track('CompletePayment', {
  value: 97.00,
  currency: 'EUR',
  content_id: ['SKU-001']
}, {
  event_id: eventId   // ← MÊME valeur que côté serveur
});

// Côté serveur (PHP, Node, Python…)
// Utiliser la même valeur event_id dans l'appel API
```

⚠️ **Sans event_id identique des deux côtés, TikTok duplique les conversions dans le reporting.** Le CPA apparaît divisé par deux — erreur fréquente.

### Fenêtres de déduplication officielles TikTok

| Scénario | Fenêtre de déduplication |
|---|---|
| **Pixel → Pixel** (même event + event_id) | 48 heures |
| **CAPI → CAPI** (même event + event_id) | 48 heures |
| **Pixel ↔ CAPI** (même event + event_id) | Overlap détecté après 5 minutes, déduplication sur 48 heures |

💡 **TikTok conserve le premier événement reçu** quand un doublon est détecté. Assurez-vous que le pixel JS et l'appel API serveur utilisent exactement le même `event_id` pour chaque conversion.

---

## Intégrations partenaires (CAPI sans code)

Si vous n'avez pas de développeur pour implémenter l'Events API, des intégrations no-code existent :

| Partenaire | Cas d'usage | Niveau technique |
|---|---|---|
| **Shopify** (app native) | E-commerce Shopify — CAPI intégrée automatiquement | Aucun |
| **Zapier** | Connecter n'importe quelle source (CRM, formulaire) à TikTok CAPI | Faible |
| **Segment** | CDP — envoie les événements à TikTok via connexion Segment | Moyen |
| **Google Tag Manager Server-Side** | GTM sS envoie les hits serveur à TikTok | Moyen |
| **Klaviyo** | Événements email/SMS → TikTok CAPI pour audiences | Faible |
| **WooCommerce** (plugin officiel) | E-commerce WordPress — CAPI partielle via plugin | Aucun |

> ↪️ Pour l'intégration Shopify complète : [Procédure - Configurer le tracking TikTok sur Shopify](<Suivi - Configurer le suivi sur Shopify.md>)
> ↪️ Pour l'intégration WordPress/WooCommerce : [Procédure - Configurer le tracking TikTok sur WordPress](<Suivi - Configurer le suivi sur WordPress.md>)

---

## Paramétrage UTM pour l'attribution cross-platform

Les UTM permettent de réconcilier les données TikTok Ads Manager avec Google Analytics, votre CRM ou votre tableau de bord BI.

### Structure UTM recommandée pour TikTok

```
utm_source=tiktok
utm_medium=paid_social
utm_campaign={{campaign.name}}
utm_content={{adgroup.name}}
utm_term={{ad.name}}
```

### Paramètres dynamiques TikTok

| Paramètre | Variable dynamique | Valeur injectée |
|---|---|---|
| `utm_campaign` | `{{campaign.name}}` | Nom de la campagne |
| `utm_content` | `{{adgroup.name}}` | Nom du groupe d'annonces |
| `utm_term` | `{{ad.name}}` | Nom de l'annonce |
| `ttclid` | Automatique | Identifiant de clic TikTok |

💡 **Le paramètre `ttclid` est automatiquement ajouté par TikTok à chaque clic.** Il permet une attribution de 7 jours côté serveur via l'Events API, même sans cookie.

### Configuration dans TikTok Ads Manager

1. Au niveau de l'annonce > **URL de destination**
2. Ajouter manuellement les paramètres UTM ou activer le **Suivi des URL automatique**
3. Vérifier dans GA4 que les sessions TikTok sont bien taggées `source = tiktok`

---

## RGPD et Consent Management Platform (CMP)

⚠️ **Obligation légale en Europe :** le pixel TikTok ne doit se déclencher qu'après que l'utilisateur ait donné son consentement explicite (RGPD, ePrivacy).

### Architecture CMP recommandée

```
Utilisateur arrive sur le site
        │
        ▼
Bannière CMP (Axeptio, Didomi, Cookiebot…)
        │
        ├── Refus → Pixel BLOQUÉ, aucun cookie déposé
        │
        └── Acceptation → CMP déclenche le consentement
                             │
                             ▼
                    GTM reçoit l'événement de consentement
                             │
                             ▼
                    Pixel TikTok se déclenche
```

### Implémentation GTM + CMP

1. Dans GTM, configurer le **Consent Mode** (variables de consentement)
2. Créer un déclencheur conditionnel : le pixel ne se déclenche que si `analytics_storage = granted`
3. Tester avec un profil de navigation privée (sans consentement préalable)

### Events API et RGPD

L'Events API côté serveur est soumise aux mêmes obligations RGPD :
- Envoyer des événements CAPI uniquement pour les utilisateurs **ayant consenti**
- Ne pas hacher et transmettre des données personnelles sans base légale
- Documenter le traitement dans votre registre RGPD

💡 **Astuce :** l'Events API sans données personnelles (sans email, sans phone) peut être utilisée pour mesurer les conversions agrégées sans consentement individuel — à valider avec votre DPO.

---

## Délai d'attribution et fraîcheur des données

⚠️ **Les données TikTok Ads ne sont pas en temps réel.** Comprendre les délais est essentiel pour prendre des décisions justes.

| Type de données | Délai d'affichage |
|---|---|
| Impressions / Clics | 2-4 heures |
| Conversions pixel | 24-48 heures |
| Conversions Events API | 24-48 heures |
| Données démographiques audience | 24-72 heures |
| Rapport d'attribution final | 7 jours (fenêtre de vue) |

### Fenêtres d'attribution TikTok

| Type de clic/vue | Fenêtre par défaut | Configurable |
|---|---|---|
| Clic → Conversion | 7 jours | Oui (1, 7, 14, 30 jours) |
| Vue → Conversion | 1 jour | Oui (désactivable) |

💡 **Comparez toujours sur fenêtres identiques** entre TikTok et GA4 / votre CRM. Un écart de 20-40% est normal à cause du modèle d'attribution différent (last-click vs TikTok multi-touch).

---

## Seuil de sortie de la learning phase

L'algorithme TikTok entre en **learning phase** au démarrage de chaque groupe d'annonces. Pour en sortir et stabiliser les performances :

| Métrique | Seuil requis |
|---|---|
| Événements d'optimisation | **50 événements/semaine/groupe d'annonces** |
| Durée learning phase | 7 à 14 jours selon le volume |
| Stabilisation CPA | Après sortie de learning phase |

⚠️ **Si vous n'atteignez pas 50 événements/semaine sur CompletePayment**, optimisez sur un événement plus haut dans le tunnel (ex. AddToCart ou InitiateCheckout) — voir [Procédure - Configurer les événements de conversion TikTok](<Suivi - Configurer les événements de conversion.md>).

---

## Troubleshooting — Problèmes courants

### Les événements ne remontent pas

| Symptôme | Cause probable | Solution |
|---|---|---|
| Pixel Helper : "No pixel found" | Pixel non installé ou GTM non publié | Vérifier GTM publié + balise active sur toutes les pages |
| Pixel Helper : événement déclenché mais pas dans TikTok AM | Délai de traitement | Attendre 24h, vérifier le Pixel ID |
| Événement PageView manquant | Déclencheur GTM mal configuré | Vérifier que la balise pixel se déclenche sur "Toutes les pages" |
| Événements personnalisés absents | Séquençage de balises GTM incorrect | Le pixel principal doit se déclencher AVANT les événements |

### Pixel affiché comme "Inactif"

| Condition | Signification |
|---|---|
| Statut "Inactif" | Aucun événement reçu dans les **24-72 dernières heures** |
| Statut "Actif" | Au moins 1 événement reçu dans les 24-72 dernières heures |

**Actions à mener :**
1. Vérifier que le site est bien en ligne et que GTM est publié
2. Utiliser Pixel Helper sur une vraie navigation
3. Vérifier que la bannière CMP ne bloque pas le pixel (tester après consentement)
4. Contrôler que le bon Pixel ID est utilisé dans le code GTM

### Discordances de données (TikTok vs GA4 / CRM)

| Écart constaté | Explication |
|---|---|
| TikTok affiche plus de conversions que GA4 | Attribution view-through TikTok (1 jour) non comptée dans GA4 |
| TikTok affiche moins de conversions que le CRM | Délai de 24-48h + blocages iOS |
| Doublons dans TikTok AM | event_id de déduplication manquant entre pixel et CAPI |
| CPA TikTok irréaliste (trop bas) | Déduplication défaillante — comptage double des conversions |

### Events API : erreurs d'envoi fréquentes

| Code erreur | Signification | Solution |
|---|---|---|
| `40001` | Access Token invalide | Régénérer le token dans TikTok AM |
| `40002` | Pixel ID manquant ou incorrect | Vérifier le Pixel ID à 20 chiffres |
| `40100` | Format email/phone incorrect | Vérifier que le hash SHA-256 est en minuscules |
| `50001` | Erreur serveur TikTok | Réessayer avec retry exponentiel |

---

## Checklist de validation complète

- [ ] Pixel TikTok installé et affiché comme "Actif" dans TikTok AM
- [ ] TikTok Pixel Helper confirme PageView sur chaque page
- [ ] Tous les événements de conversion clés configurés (minimum : CompletePayment ou SubmitForm)
- [ ] event_id de déduplication implémenté sur les événements principaux
- [ ] Events API configurée et envoyant les mêmes événements que le pixel
- [ ] UTM TikTok configurés sur toutes les URLs de destination
- [ ] Consentement CMP validé : pixel ne se déclenche pas sans consentement (test en navigation privée)
- [ ] Fenêtres d'attribution vérifiées dans les paramètres du groupe d'annonces
- [ ] Seuil de 50 événements/semaine atteignable avec le budget alloué

---

## Références croisées

- [Procédure - Installer le pixel TikTok](<Suivi - Installer le pixel.md>)
- [Procédure - Configurer les événements de conversion TikTok](<Suivi - Configurer les événements de conversion.md>)
- [Procédure - Configurer le tracking TikTok sur Shopify](<Suivi - Configurer le suivi sur Shopify.md>)
- [Procédure - Configurer le tracking TikTok sur WordPress](<Suivi - Configurer le suivi sur WordPress.md>)
