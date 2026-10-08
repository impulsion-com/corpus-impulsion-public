# Configurer les événements de conversion TikTok

> **Plateforme :** TikTok
> **Catégorie :** Suivi
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Configurer les événements de conversion TikTok pour fournir à l'algorithme les signaux d'optimisation nécessaires, mesurer les performances réelles et alimenter les audiences de retargeting (reciblage) — avec une architecture de déduplication pixel + CAPI.

> ↪️ **Prérequis :** le pixel de base doit être installé et actif avant de configurer les événements. Voir [Procédure - Installer le pixel TikTok](<Suivi - Installer le pixel.md>).
> ↪️ **Architecture globale :** pour comprendre la relation pixel / Events API / GTM, voir [Procédure - Configurer le tracking TikTok Ads](<Suivi - Configurer le suivi.md>).

---

## Ce que cette SOP ne couvre PAS

Cette SOP ne couvre **pas :**

- L'installation initiale du pixel TikTok (Voir : [Procédure - Installer le pixel TikTok](<Suivi - Installer le pixel.md>))
- L'architecture serveur (Events API, déduplication, GTM Server-Side) en détail (Voir : [Procédure - Configurer le tracking TikTok Ads](<Suivi - Configurer le suivi.md>))
- L'intégration native Shopify et la liste d'événements automatiques (Voir : [Procédure - Configurer le tracking TikTok sur Shopify](<Suivi - Configurer le suivi sur Shopify.md>))
- L'intégration WordPress / WooCommerce et son plugin officiel (Voir : [Procédure - Configurer le tracking TikTok sur WordPress](<Suivi - Configurer le suivi sur WordPress.md>))
- L'usage des événements dans la configuration de campagne (objectif, optimisation) (Voir : [Procédure - Lancer une campagne conversions TikTok Ads](<../lancement/Lancement - Lancer une campagne conversions.md>))

---

## Pourquoi les événements sont le moteur de l'algorithme

Sans événements correctement configurés, TikTok ne peut pas :
- Identifier les profils d'utilisateurs qui convertissent
- Optimiser la diffusion vers ces profils (objectif Conversion)
- Sortir de la learning phase et stabiliser le CPA
- Nourrir les audiences de retargeting (abandonneurs panier, acheteurs…)

💡 **Règle d'or :** l'événement que vous choisissez comme objectif d'optimisation dans votre groupe d'annonces détermine QUEL type d'utilisateur TikTok va cibler. Choisissez mal → TikTok cible les mauvais profils.

---

## Événements standards TikTok — Référence complète

### Capacité d'optimisation des événements

| Événement | Étape du tunnel | Optimisation algorithme | Cas d'usage principal |
|---|---|---|---|
| `PageView` | Notoriété | ❌ Non — trop générique | Mesure de trafic uniquement |
| `ViewContent` | Considération | ⚠️ Faible | Retargeting haut du tunnel |
| `AddToCart` | Intention | ✅ Bon | E-commerce — volume insuffisant sur CompletePayment |
| `InitiateCheckout` | Décision | ✅ Très bon | E-commerce — fort signal pré-achat |
| `CompletePayment` | Conversion | ✅ Optimal | E-commerce — objectif principal |
| `SubmitForm` | Lead | ✅ Bon | Lead gen — formulaire rempli |
| `CompleteRegistration` | Lead qualifié | ✅ Bon | SaaS / inscription service |
| `Contact` | Lead bas du tunnel | ✅ Moyen | Prise de contact directe |
| `Search` | Engagement | ❌ Non | Mesure de recherche interne |
| `Subscribe` | Rétention | ⚠️ Limité | Newsletter, abonnement |
| `Download` | Conversion soft | ✅ Moyen | Téléchargement lead magnet |

### Événements personnalisés

Les événements personnalisés (nommage libre) sont supportés par TikTok mais avec des **limites importantes** :

⚠️ **Les événements personnalisés ne peuvent pas être utilisés comme objectif d'optimisation dans les campagnes TikTok.** Seuls les événements standards listés ci-dessus sont compatibles avec l'optimisation de la diffusion.

**Utilisez les événements personnalisés pour :**
- Mesurer des micro-conversions internes (lecture vidéo, scroll 50%, clic CTA)
- Construire des audiences de retargeting comportementales
- Alimenter vos tableaux de bord analytics internes

---

## Décision : quel événement optimiser selon votre business

### Cadre de décision

```
QUEL EST VOTRE MODÈLE ?
        │
        ├── E-commerce (vente en ligne)
        │         │
        │         ├── Volume > 50 achats/semaine ──► CompletePayment (optimal)
        │         ├── Volume 20-50 achats/semaine ──► InitiateCheckout
        │         └── Volume < 20 achats/semaine ──► AddToCart
        │
        ├── Lead Generation (formulaire / RDV)
        │         │
        │         ├── Volume > 50 leads/semaine ──► SubmitForm ou CompleteRegistration
        │         └── Volume < 50 leads/semaine ──► ViewContent (page offre)
        │
        └── SaaS / Application
                  │
                  ├── Inscription free trial > 50/semaine ──► CompleteRegistration
                  ├── Volume < 50 ──► SubmitForm (page pricing / démo)
                  └── Très faible volume ──► ViewContent (page features clés)
```

### Recommandations par vertical

| Type de business | Événement principal | Événement de repli (< 50/sem) |
|---|---|---|
| E-commerce produits physiques | `CompletePayment` | `InitiateCheckout` puis `AddToCart` |
| E-commerce produits digitaux | `CompletePayment` | `InitiateCheckout` |
| Lead gen B2C (immobilier, assurance) | `SubmitForm` | `ViewContent` (page formulaire) |
| Lead gen B2B | `CompleteRegistration` | `SubmitForm` |
| SaaS | `CompleteRegistration` (trial) | `SubmitForm` (démo) |
| Application mobile | Événement In-App via SDK TikTok | `CompleteRegistration` |

---

## Seuil de sortie de la learning phase — 50 événements/semaine

### Règle fondamentale

| Condition | Impact |
|---|---|
| **≥ 50 événements d'optimisation/semaine/groupe d'annonces** | Sortie de learning phase — performances stables |
| **20 à 49 événements/semaine** | Learning phase prolongée — CPA instable |
| **< 20 événements/semaine** | Pas d'apprentissage — CPA erratique |

⚠️ **La learning phase dure 7 à 14 jours.** Pendant cette période, ne modifiez pas le groupe d'annonces (budget, ciblage, enchère) — chaque modification réinitialise l'apprentissage.

### Stratégie quand vous n'atteignez pas 50 événements/semaine

**Cas :** votre boutique génère 15 achats/semaine avec votre budget actuel.

**Solution :** remonter dans le tunnel pour optimiser sur un événement plus fréquent.

```
Objectif idéal → CompletePayment (15/sem — insuffisant)
        │
        ▼ Remonter
Objectif intermédiaire → InitiateCheckout (estimé ~45-60/sem)
        │
        ▼ Si toujours insuffisant
Objectif supérieur → AddToCart (estimé ~150-300/sem)
```

💡 **Méthode de calcul :** estimez le volume d'événements pour chaque étape en appliquant vos taux de conversion typiques à votre trafic actuel. Choisissez l'événement le plus bas dans le tunnel qui dépasse 50/semaine.

---

## Configuration dans Google Tag Manager

### Prérequis

- Balise `TikTok - Pixel Base` créée et déclenchant sur toutes les pages
- Mode prévisualisation GTM disponible pour les tests

### Séquençage obligatoire des balises

⚠️ **Le pixel de base DOIT se déclencher avant tout événement.** Sans séquençage, les événements sont perdus.

**Configuration du séquençage dans chaque balise d'événement :**
1. Ouvrir la balise d'événement dans GTM
2. Onglet **Options avancées** > **Séquençage de balises**
3. Activer **"Déclencher une balise avant cette balise de tag"**
4. Sélectionner `TikTok - Pixel Base`

### Structure d'une balise d'événement complète

```html
<script>
// Génération de l'event_id (MÊME valeur à envoyer côté serveur)
var eventId = 'event_' + new Date().getTime() + '_' + Math.random().toString(36).substr(2, 9);

ttq.track('CompletePayment', {
  // Paramètres e-commerce
  value: {{DL - Purchase Value}},       // Valeur de la commande (number)
  currency: 'EUR',                       // Code devise ISO 4217
  content_id: {{DL - Product IDs}},     // Array de SKUs ["SKU-001", "SKU-002"]
  content_type: 'product',               // 'product' ou 'product_group'
  content_name: {{DL - Product Names}}, // Nom(s) du/des produit(s)
  quantity: {{DL - Quantity}},          // Quantité totale achetée
  order_id: {{DL - Order ID}}           // ID commande pour déduplication CRM
}, {
  event_id: eventId                      // Déduplication pixel + CAPI
});
</script>
```

### Paramètres complets par événement

#### CompletePayment (Achat finalisé)

```javascript
ttq.track('CompletePayment', {
  value: 97.00,
  currency: 'EUR',
  content_id: ['SKU-001', 'SKU-002'],
  content_type: 'product',
  content_name: ['Produit A', 'Produit B'],
  quantity: 2,
  order_id: 'ORDER-12345'
}, { event_id: 'cp_ORDER-12345_1712345678' });
```

#### AddToCart (Ajout au panier)

```javascript
ttq.track('AddToCart', {
  value: 49.00,
  currency: 'EUR',
  content_id: ['SKU-001'],
  content_type: 'product',
  content_name: 'Nom du produit',
  quantity: 1
}, { event_id: 'atc_SKU-001_1712345678' });
```

#### ViewContent (Fiche produit)

```javascript
ttq.track('ViewContent', {
  content_id: ['SKU-001'],
  content_type: 'product',
  content_name: 'Nom du produit',
  value: 49.00,
  currency: 'EUR'
}, { event_id: 'vc_SKU-001_1712345678' });
```

#### SubmitForm (Lead gen)

```javascript
ttq.track('SubmitForm', {
  content_name: 'Formulaire demande de devis',
  value: 0,
  currency: 'EUR'
}, { event_id: 'sf_' + formId + '_' + Date.now() });
```

---

## Déduplication pixel + Events API (event_id)

### Pourquoi la déduplication est critique

Si vous envoyez le même événement via le pixel JS ET via l'Events API sans déduplication :
- TikTok comptabilise **2 conversions** au lieu de 1
- Votre CPA apparaît divisé par 2 dans le reporting
- L'algorithme prend des décisions incorrectes sur base de données fausses

### Mécanisme de déduplication

```
Utilisateur finalise un achat
        │
        ├──► Pixel JS envoie CompletePayment
        │         event_id: "cp_ORDER-789_1712345678"
        │
        └──► Serveur envoie CompletePayment via API
                  event_id: "cp_ORDER-789_1712345678"
                            │
                            ▼
              TikTok compare les event_id
              → event_id identiques = même événement
              → TikTok ne comptabilise qu'UNE conversion ✅
```

### Génération d'event_id recommandée

| Approche | Format recommandé | Exemple |
|---|---|---|
| E-commerce (achat) | `[event_type]_[order_id]_[timestamp]` | `cp_ORDER789_1712345678` |
| Lead gen (formulaire) | `[event_type]_[form_id]_[timestamp]` | `sf_FORM01_1712345678` |
| Événement générique | `[event_type]_[session_id]_[random]` | `vc_sess123_a7f3b9` |

💡 **L'event_id doit être :** unique par événement, identique pixel + CAPI, généré au moment de l'événement (pas en avance).

---

## Identification cross-device — ttq.identify()

### À quoi sert ttq.identify()

`ttq.identify()` permet à TikTok de **relier les événements à un utilisateur connu**, même s'il change d'appareil ou de navigateur. Cela améliore :
- La précision du matching entre vos conversions et les profils TikTok
- Les audiences de retargeting (ex. : cibler les acheteurs sur leur téléphone alors qu'ils ont acheté sur desktop)
- La qualité des audiences similaires

### Implémentation

```javascript
// À appeler dès qu'un utilisateur est identifié (connexion, création de compte)
ttq.identify({
  email: 'SHA256_HASH_DE_EMAIL',      // Hash SHA-256 en minuscules
  phone_number: 'SHA256_HASH_PHONE',  // Format E.164 avant hachage : +33612345678
  external_id: 'USER_ID_INTERNE'      // Votre ID utilisateur interne (non haché)
});
```

⚠️ **Ne jamais transmettre email ou téléphone en clair.** Toujours hacher en SHA-256 côté serveur ou dans GTM avant l'appel à `ttq.identify()`.

### Quand appeler ttq.identify()

| Moment | Déclenchement |
|---|---|
| Connexion utilisateur | Page `/mon-compte` après login |
| Création de compte | Page de confirmation d'inscription |
| Finalisation de commande | Page de confirmation d'achat (avant CompletePayment) |
| Formulaire soumis avec email | Immédiatement après soumission (si email collecté) |

---

## Optimisation par la valeur (Value-Based Optimization)

### Qu'est-ce que la VBO

La Value-Based Optimization (VBO) permet à TikTok d'optimiser non plus pour le nombre de conversions mais pour la **valeur totale des achats**. L'algorithme cible les utilisateurs susceptibles d'acheter des montants élevés.

### Prérequis pour activer la VBO

- L'événement `CompletePayment` doit transmettre les paramètres `value` et `currency`
- Volume minimum : **≥ 50 achats avec valeur/semaine/groupe d'annonces**
- Stratégie d'enchère compatible : Highest Value ou Value-Based Bidding

### Code d'implémentation avec valeur

```javascript
// CompletePayment avec valeur — requis pour VBO
ttq.track('CompletePayment', {
  value: parseFloat('{{DL - Order Total}}'),  // Valeur numérique, pas de string
  currency: '{{DL - Currency Code}}',          // 'EUR', 'USD', etc.
  content_id: {{DL - Product IDs}},
  content_type: 'product'
}, { event_id: '{{DL - Event ID}}' });
```

💡 **Envoyer `value: 0` ou omettre le paramètre désactive la VBO**, même si vous l'avez activée dans le groupe d'annonces. Vérifiez systématiquement que la valeur est transmise correctement via Pixel Helper.

---

## Conversions hors ligne (Offline Conversions Upload)

### Cas d'usage

Les conversions offline permettent de transmettre à TikTok des conversions qui surviennent **en dehors de votre site** :
- Ventes conclues par téléphone après un lead (prospect) TikTok
- Rendez-vous en boutique générés par des leads TikTok
- Contrats signés 30 jours après le premier contact

### Méthode d'upload

1. TikTok Ads Manager > **Événements** > **Gérer (Hors ligne)**
2. Créer un source d'événements hors ligne
3. Préparer un fichier CSV avec les colonnes requises :
   - `match_key_email` ou `match_key_phone` (hachés SHA-256)
   - `event_name` (ex. `CompletePayment`)
   - `event_time` (timestamp Unix)
   - `value` et `currency` (optionnel)
4. Uploader le fichier manuellement ou via l'API

⚠️ **Fenêtre d'attribution offline :** les événements offline doivent être uploadés dans les **28 jours** suivant le clic/la vue de l'annonce pour être attribués.

---

## Configuration dans TikTok Ads Manager (Test des événements)

### Validation en temps réel

1. TikTok Ads Manager > **Événements** > **Gérer (Web)** > Sélectionner le pixel
2. Onglet **Test des événements**
3. Entrer l'URL de la page à tester
4. Naviguer sur votre site dans un autre onglet
5. Observer les événements apparaître en temps réel dans TikTok AM

### Vérifications à effectuer

| Contrôle | Résultat attendu |
|---|---|
| Événement reçu | Nom de l'événement affiché dans l'onglet Test |
| Paramètres corrects | `value`, `currency`, `content_id` affichés |
| event_id présent | Affiché dans les détails de l'événement |
| Pas de doublon | Chaque action déclenche exactement 1 événement |

---

## Troubleshooting — Événements

### Événement ne remonte pas dans TikTok AM

| Cause | Vérification | Solution |
|---|---|---|
| Séquençage GTM incorrect | Pixel Helper : événement visible mais pas dans AM | Configurer séquençage (pixel base avant événements) |
| Déclencheur GTM mauvais | GTM Preview : balise ne se déclenche pas | Revoir la condition du déclencheur |
| Paramètre `value` en string | Pixel Helper : value = "97.00" (avec guillemets) | Utiliser `parseFloat()` pour convertir |
| CMP bloque le pixel | Pixel Helper : rien sur navigation privée | Configurer l'intégration CMP/GTM |

### Doublons d'événements

| Symptôme | Cause | Solution |
|---|---|---|
| 2 CompletePayment pour 1 achat | Balise GTM déclenchée 2 fois | Vérifier les déclencheurs — supprimer les doublons |
| TikTok AM affiche 2x les conversions | Pixel + CAPI sans event_id | Implémenter la déduplication event_id |
| CPA trop bas et irréaliste | Doublons non détectés | Auditer la déduplication en urgence |

---

## Checklist de configuration complète

- [ ] Événement d'optimisation principal choisi selon le volume disponible (> 50/sem)
- [ ] CompletePayment (ou SubmitForm) configuré avec paramètres value, currency, content_id
- [ ] event_id unique généré et envoyé sur les événements principaux (pixel + CAPI)
- [ ] ttq.identify() implémenté sur les pages de connexion / confirmation
- [ ] Séquençage GTM configuré (pixel base déclenche avant chaque événement)
- [ ] Test des événements validé dans TikTok Ads Manager
- [ ] Aucun doublon détecté (1 événement = 1 remontée dans TikTok AM)
- [ ] Value-Based Optimization activée si volume > 50 achats/semaine
- [ ] Objectif d'optimisation du groupe d'annonces aligné avec l'événement configuré

---

## Références croisées

- [Procédure - Configurer le tracking TikTok Ads](<Suivi - Configurer le suivi.md>)
- [Procédure - Installer le pixel TikTok](<Suivi - Installer le pixel.md>)
- [Procédure - Configurer le tracking TikTok sur Shopify](<Suivi - Configurer le suivi sur Shopify.md>)
- [Procédure - Configurer le tracking TikTok sur WordPress](<Suivi - Configurer le suivi sur WordPress.md>)
