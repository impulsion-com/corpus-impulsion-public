# Installer le pixel TikTok

> **Plateforme :** TikTok
> **Catégorie :** Suivi
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Installer et valider le pixel TikTok sur votre site web pour collecter des signaux de comportement, mesurer les conversions et permettre à l'algorithme TikTok d'optimiser la diffusion de vos campagnes.

> ↪️ **Cette SOP couvre l'installation du pixel de base.** Pour la configuration des événements spécifiques (AddToCart, CompletePayment…), voir [Procédure - Configurer les événements de conversion TikTok](<Suivi - Configurer les événements de conversion.md>). Pour l'architecture complète incluant l'Events API (CAPI), voir [Procédure - Configurer le tracking TikTok Ads](<Suivi - Configurer le suivi.md>).

---

## Ce que cette SOP ne couvre PAS

Cette SOP ne couvre **pas :**

- L'architecture complète pixel + Events API + GTM (Voir : [Procédure - Configurer le tracking TikTok Ads](<Suivi - Configurer le suivi.md>))
- La configuration des événements de conversion spécifiques (AddToCart, CompletePayment, etc.) (Voir : [Procédure - Configurer les événements de conversion TikTok](<Suivi - Configurer les événements de conversion.md>))
- L'intégration native Shopify (Voir : [Procédure - Configurer le tracking TikTok sur Shopify](<Suivi - Configurer le suivi sur Shopify.md>))
- L'intégration WordPress / WooCommerce (Voir : [Procédure - Configurer le tracking TikTok sur WordPress](<Suivi - Configurer le suivi sur WordPress.md>))
- L'ouverture et la configuration du compte publicitaire (Voir : [Procédure - Créer et configurer un compte TikTok Ads](<../compte/Compte - Créer et configurer un compte.md>))

---

## Qu'est-ce que le pixel TikTok ?

Le pixel TikTok est un fragment de code JavaScript installé sur votre site qui :

| Fonction | Détail |
|---|---|
| **Collecte les visites** | Enregistre les pages vues, les clics et les parcours utilisateurs |
| **Mesure les conversions** | Remonte les achats, formulaires, inscriptions à TikTok |
| **Alimente l'algorithme** | Fournit les signaux nécessaires à l'optimisation de la diffusion |
| **Crée des audiences** | Génère des listes de retargeting (visiteurs, abandonneurs panier…) |
| **Permet l'optimisation CPA** | Condition nécessaire pour utiliser "Optimisation pour les conversions" |

💡 **Le pixel seul ne suffit plus en 2026.** L'Events API (CAPI) doit le compléter pour compenser les pertes de signal dues à iOS 14+ et aux bloqueurs de publicités. Voir [Procédure - Configurer le tracking TikTok Ads](<Suivi - Configurer le suivi.md>).

---

## Identifier votre Pixel ID

### Format du Pixel ID

Le Pixel ID TikTok est un **identifiant numérique à 20 chiffres** (ex. : `C1234567890123456789`).

⚠️ **Ne pas confondre** le Pixel ID avec l'Account ID (Business Center) ou l'Ad Account ID — ce sont trois identifiants différents.

### Où trouver votre Pixel ID

1. Connectez-vous à **TikTok Ads Manager** (ads.tiktok.com)
2. Menu principal > **Outils** > **Événements**
3. Onglet **Web** > Section **Gérer**
4. Le Pixel ID s'affiche sous le nom de votre pixel, ou dans les paramètres du pixel

💡 **Si vous gérez plusieurs clients**, chaque pixel est rattaché à un Ad Account spécifique. Vérifiez que vous êtes sur le bon compte avant de copier le Pixel ID.

---

## Méthode 1 : Installation via Google Tag Manager (recommandée)

### Avantages de GTM

- Déploiement sans modification du code source du site
- Gestion centralisée de tous les tags (pixel, événements, GA4…)
- Mode prévisualisation pour tester avant de publier
- Historique des versions et rollback possible

### Étapes d'installation

**Dans TikTok Ads Manager :**

1. **Événements** > **Gérer (Web)** > **Créer un pixel** (ou sélectionner un pixel existant)
2. Choisir la méthode d'installation : **Google Tag Manager**
3. TikTok Ads Manager génère automatiquement les instructions GTM — copier le Pixel ID

**Dans Google Tag Manager :**

4. **Tags** > **Nouveau** > Type de tag : **HTML personnalisé**
5. Coller le code pixel TikTok :

```html
<script>
!function (w, d, t) {
  w.TiktokAnalyticsObject=t;
  var ttq=w[t]=w[t]||[];
  ttq.methods=["page","track","identify","instances","debug","on","off","once","ready","alias","group","enableCookie","disableCookie"];
  ttq.setAndDefer=function(t,e){t[e]=function(){t.push([e].concat(Array.prototype.slice.call(arguments,0)))}};
  for(var i=0;i<ttq.methods.length;i++)ttq.setAndDefer(ttq,ttq.methods[i]);
  ttq.instance=function(t){for(var e=ttq._i[t]||[],n=0;n<ttq.methods.length;n++)ttq.setAndDefer(e,ttq.methods[n]);return e};
  ttq.load=function(e,n){var i="https://analytics.tiktok.com/i18n/pixel/events.js";ttq._i=ttq._i||{};ttq._i[e]=[];ttq._i[e]._u=i;ttq._o=ttq._o||{};ttq._o[e]=n||{};var o=document.createElement("script");o.type="text/javascript";o.async=!0;o.src=i+"?sdkid="+e+"&lib="+t;var a=document.getElementsByTagName("script")[0];a.parentNode.insertBefore(o,a)};
  ttq.load('VOTRE_PIXEL_ID');
  ttq.page();
}(window, document, 'ttq');
</script>
```

6. Remplacer `VOTRE_PIXEL_ID` par votre identifiant à 20 chiffres
7. **Déclencheur** : Toutes les pages (All Pages — Page View)
8. Nommer la balise clairement : `TikTok - Pixel Base`
9. **Enregistrer** puis **Prévisualiser** pour tester
10. **Publier** le conteneur GTM

---

## Méthode 2 : Installation manuelle (sans GTM)

### Quand utiliser cette méthode

- Sites statiques sans accès à un CMS ou GTM
- Développeurs préférant contrôler le code directement
- Environnements où GTM est bloqué

### Étapes

1. Dans TikTok Ads Manager > **Événements** > **Gérer (Web)** > Copier le code pixel
2. Coller le code **dans la balise `<head>`** de chaque page du site
3. Le code doit être présent sur **toutes les pages** (y compris pages produit, panier, confirmation)

⚠️ **Coller dans `<head>` et non dans `<body>` ou `<footer>`.** Un pixel en bas de page se déclenche après le rendu complet — risque de perte d'événements si l'utilisateur quitte rapidement.

---

## Méthode 3 : Intégration partenaire native

Pour les plateformes e-commerce, l'installation est simplifiée via des applications officielles :

| Plateforme | Méthode | Couverture CAPI |
|---|---|---|
| **Shopify** | App TikTok officielle depuis l'App Store Shopify | Oui (partielle) |
| **WordPress / WooCommerce** | Plugin TikTok officiel | Oui (partielle) |
| **Wix** | Intégration native dans les paramètres Wix | Non |
| **Squarespace** | Injection de code dans `<head>` | Non |
| **BigCommerce** | App TikTok depuis le marketplace | Oui |
| **Prestashop** | Module tiers ou installation manuelle | Non |

> ↪️ Shopify : [Procédure - Configurer le tracking TikTok sur Shopify](<Suivi - Configurer le suivi sur Shopify.md>)
> ↪️ WordPress : [Procédure - Configurer le tracking TikTok sur WordPress](<Suivi - Configurer le suivi sur WordPress.md>)

---

## PageView vs ViewContent — Distinction essentielle

Ces deux événements sont souvent confondus mais remplissent des rôles différents :

| Événement | Déclenchement | Signal pour l'algorithme |
|---|---|---|
| `PageView` | Toutes les pages du site | Faible — trop générique, inclut robots et bounces |
| `ViewContent` | Pages à fort intent (fiche produit, page service, article de blog clé) | Moyen/fort — visite intentionnelle d'un contenu spécifique |

💡 **PageView est déclenché automatiquement par `ttq.page()`** dans le code pixel de base. ViewContent doit être configuré manuellement sur les pages pertinentes avec les paramètres `content_id` et `content_name`.

```javascript
// PageView — automatique dans le pixel de base
ttq.page();

// ViewContent — à configurer manuellement sur fiche produit
ttq.track('ViewContent', {
  content_id: 'SKU-001',
  content_name: 'Nom du produit',
  content_type: 'product',
  value: 49.00,
  currency: 'EUR'
});
```

---

## RGPD et Consentement — Obligations légales (Union Européenne)

⚠️ **Le pixel TikTok ne doit jamais se déclencher sans consentement préalable de l'utilisateur en UE.** Violation passible de sanctions CNIL (jusqu'à 4% du CA mondial).

### Architecture de consentement requise

1. Une **CMP (Consent Management Platform)** doit être installée : Axeptio, Didomi, Cookiebot, OneTrust…
2. Le pixel TikTok doit être **bloqué par défaut** jusqu'au consentement
3. La CMP déclenche GTM uniquement après acceptation des cookies publicitaires
4. En cas de refus, **aucun cookie, aucune donnée** ne doit être transmis à TikTok

### Test de conformité

1. Ouvrir une fenêtre de navigation privée
2. Accéder au site **sans accepter les cookies**
3. Ouvrir le TikTok Pixel Helper
4. Vérifier qu'**aucun pixel ne se déclenche**
5. Accepter les cookies puis recharger
6. Vérifier que le pixel se déclenche maintenant

---

## Gestion multi-pixels (plusieurs clients ou sites)

### Règle de base

**Un pixel par domaine / par Ad Account.** Ne jamais utiliser le pixel d'un client sur le site d'un autre.

### Scénarios courants

| Scénario | Solution recommandée |
|---|---|
| Agence gérant plusieurs clients | Un pixel distinct par client, chacun dans son Ad Account |
| Site principal + sous-domaines | Un seul pixel peut couvrir domaine + sous-domaines si même Ad Account |
| Boutique multi-régions (même compte) | Un pixel unique avec segmentation par événement + UTM |
| Test A/B sur deux domaines différents | Deux pixels distincts + agrégation dans le reporting |

💡 **Pour les agences :** utilisez le Business Center TikTok pour centraliser l'accès aux pixels de vos clients sans les mélanger.

---

## Statut du pixel et seuils d'activité

### Signification des statuts

| Statut | Signification | Action |
|---|---|---|
| **Actif** | Au moins 1 événement reçu dans les **24-72 heures** | Aucune |
| **Inactif** | Aucun événement depuis > 72 heures | Investiguer (voir troubleshooting) |
| **Pas encore actif** | Pixel créé mais jamais utilisé | Vérifier l'installation |

### Volumes nécessaires pour l'optimisation

| Événement | Volume hebdomadaire minimal | Effet sur l'algorithme |
|---|---|---|
| CompletePayment | 50/semaine/groupe d'annonces | Sortie de learning phase possible |
| AddToCart | 50/semaine/groupe | Optimisation intermédiaire |
| ViewContent | 100+/semaine | Signal de haut du tunnel |
| PageView | Volume élevé automatique | Trop générique pour optimiser |

⚠️ **En dessous de 50 événements/semaine**, l'algorithme reste en learning phase et les performances sont instables. Voir [Procédure - Configurer les événements de conversion TikTok](<Suivi - Configurer les événements de conversion.md>) pour la stratégie d'événement selon le volume.

---

## Rétention des données du pixel

| Donnée | Durée de conservation |
|---|---|
| Événements pixel dans TikTok AM | 180 jours |
| Audiences de retargeting (visiteurs) | Jusqu'à 180 jours après le dernier événement |
| Données d'attribution dans les rapports | 36 mois |
| Cookies déposés sur le navigateur | 13 mois maximum (réglementation CNIL) |

---

## Vérification et validation de l'installation

### TikTok Pixel Helper (extension Chrome)

1. Installer **TikTok Pixel Helper** depuis le Chrome Web Store
2. Naviguer sur votre site
3. Cliquer sur l'icône de l'extension
4. Vérifications à effectuer :

| Contrôle | Résultat attendu |
|---|---|
| Pixel détecté | Votre Pixel ID s'affiche |
| PageView déclenché | Sur chaque chargement de page |
| Aucune erreur rouge | Pas d'erreurs de format ou de configuration |
| event_id présent | Sur les événements de conversion principaux |

### Validation dans TikTok Ads Manager

1. **Événements** > **Gérer (Web)** > Sélectionner votre pixel
2. Onglet **Activité récente** — vérifier les événements des dernières heures
3. Onglet **Test des événements** — tester en direct pendant votre navigation

---

## Troubleshooting — "No recent activity" et autres problèmes

### Diagnostic pas-à-pas

```
Pixel Helper ne détecte rien
        │
        ├── GTM publié ? ──Non──► Publier le conteneur GTM
        │
        ├── Balise pixel active sur "Toutes les pages" ? ──Non──► Corriger le déclencheur
        │
        ├── Bon Pixel ID dans le code ? ──Non──► Remplacer par le Pixel ID correct (20 chiffres)
        │
        └── CMP bloque le pixel ? ──Oui──► Tester après acceptation cookies
```

### Problème : séquençage des balises GTM

⚠️ **Erreur fréquente des débutants :** les balises d'événements se déclenchent AVANT le pixel de base.

**Symptôme :** TikTok Pixel Helper affiche les événements mais ils n'apparaissent pas dans TikTok AM.

**Solution :** dans chaque balise d'événement GTM, configurer le **séquençage** :
- Onglet "Options de séquençage"
- Activer "Déclencher une balise avant cette balise"
- Sélectionner la balise `TikTok - Pixel Base`

### Tableau de résolution rapide

| Symptôme | Cause la plus probable | Solution |
|---|---|---|
| "No recent activity" dans TikTok AM | Pixel inactif depuis > 72h | Vérifier GTM publié + navigation sur le site |
| Pixel Helper : aucun pixel trouvé | GTM non publié ou mauvais conteneur | Publier GTM, vérifier l'ID de conteneur sur le site |
| Pixel Helper : pixel trouvé mais erreur | Pixel ID incorrect | Vérifier le Pixel ID à 20 chiffres dans TikTok AM |
| Événements doublonnés | Pixel installé deux fois (GTM + code manuel) | Supprimer l'installation redondante |
| PageView mais pas ViewContent | Séquençage ou déclencheur ViewContent absent | Configurer la balise ViewContent séparément |

---

## Checklist d'installation complète

- [ ] Pixel ID à 20 chiffres récupéré dans TikTok Ads Manager
- [ ] Balise GTM `TikTok - Pixel Base` créée avec le bon Pixel ID
- [ ] Déclencheur "Toutes les pages" configuré sur la balise pixel
- [ ] GTM publié (version active sur le site)
- [ ] TikTok Pixel Helper confirme PageView sur chaque page
- [ ] Statut "Actif" dans TikTok Ads Manager
- [ ] CMP configurée : pixel bloqué sans consentement (test navigation privée OK)
- [ ] Aucun pixel en double (GTM + code manuel = doublons)
- [ ] Séquençage des balises d'événements configuré (pixel base en premier)

---

## Références croisées

- [Procédure - Configurer le tracking TikTok Ads](<Suivi - Configurer le suivi.md>)
- [Procédure - Configurer les événements de conversion TikTok](<Suivi - Configurer les événements de conversion.md>)
- [Procédure - Configurer le tracking TikTok sur Shopify](<Suivi - Configurer le suivi sur Shopify.md>)
- [Procédure - Configurer le tracking TikTok sur WordPress](<Suivi - Configurer le suivi sur WordPress.md>)
