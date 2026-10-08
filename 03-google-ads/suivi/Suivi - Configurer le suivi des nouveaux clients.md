# Configurer le suivi nouveaux clients

> **Plateforme :** Google Ads
> **Catégorie :** Suivi
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Phase 1️⃣: Briefer le développeur

### 1.1 Définir la logique de détection client

Envoyez cette spécification à votre développeur. Sur la page de confirmation d'achat, le data layer doit inclure une variable `new_customer` :

| Champ | Type | Valeur | Description |
|-------|------|-------|-------------|
| `new_customer` | Boolean | `true` ou `false` | Indique s'il s'agit du premier achat du client |

### 1.2 Méthodes de détection

Le développeur implémente l'une de ces approches :

| Méthode | Fonctionnement | Idéal pour |
|--------|-------------|----------|
| Recherche en base de données | Vérifie l'historique de commandes par email/customer ID au moment de l'achat | La plus précise, fonctionne pour toutes les plateformes |
| Native à la plateforme | Utilise `first_time_buyer` de Shopify ou le nombre de commandes WooCommerce | Configuration rapide sur les plateformes supportées |
| Basée sur les cookies | Vérifie la présence d'un cookie de client récurrent | Solution de repli uniquement, moins précise |

> ⚠️ **La recherche en base de données est la référence :** La détection basée sur les cookies rate les achats cross-device et casse quand les cookies sont effacés. Utilisez toujours la détection côté serveur quand c'est possible.

### 1.3 Exemple de push data layer

```javascript
dataLayer.push({
  'event': 'purchase',
  'transaction_id': 'T-98765',
  'value': 149.97,
  'currency': 'USD',
  'new_customer': true
});
```

### 1.4 Vérifier l'implémentation développeur

1. Passez une commande de test avec une nouvelle adresse email
2. Ouvrez la console du navigateur, tapez `dataLayer`
3. Confirmez `new_customer: true` dans l'évènement d'achat
4. Passez une autre commande avec le même email
5. Confirmez `new_customer: false` dans l'évènement d'achat

---

## Phase 2️⃣: Configurer dans GTM ou gtag

### 2A : Configuration GTM

#### Étape 1️⃣ : Créer la variable data layer

1. Allez dans Variables > User-Defined Variables > New
2. Type de variable : Data Layer Variable
3. Data Layer Variable Name : `new_customer`
4. Nommez la variable : `DLV - new_customer`
5. Enregistrez

#### Étape 2️⃣ : Ajouter les données nouveaux clients au tag de conversion

1. Allez dans Tags > sélectionnez votre tag de conversion Google Ads Purchase
2. Cochez « Provide new customer data »
3. Data source : Data Layer
4. New customer : `{{DLV - new_customer}}`
5. Enregistrez et publiez

### 2B : Configuration gtag (alternative)

Si vous utilisez gtag.js directement, ajoutez le paramètre `new_customer` au snippet de conversion d'achat :

```javascript
gtag('event', 'conversion', {
  'send_to': 'AW-XXXXXXX/YYYYYYY',
  'value': 149.97,
  'currency': 'USD',
  'transaction_id': 'T-98765',
  'new_customer': true
});
```

Le développeur renseigne la valeur `new_customer` dynamiquement depuis le backend au moment du rendu de la page.

---

## Phase 3️⃣: Valider

### 3.1 Débugger dans GTM

1. Ouvrez le mode Preview de GTM
2. Réalisez un achat de test (nouveau client)
3. Cliquez sur l'évènement d'achat dans le panneau de débogage
4. Vérifiez que le tag de conversion affiche `new_customer: true`
5. Réalisez un achat de test (client récurrent)
6. Vérifiez que le tag de conversion affiche `new_customer: false`

### 3.2 Segmenter les campagnes par type de client

Laissez passer 24 à 48 heures pour que les données remontent, puis :

1. Allez dans Google Ads > Campaigns
2. Cliquez sur Segment > Conversions > New vs Returning Customers
3. Vérifiez que les conversions sont réparties en lignes « New » et « Returning »

| Ce que vous devriez voir | Ce que ça signifie |
|---------------------|--------------|
| Des lignes « New » et « Returning » sous chaque campagne | Les données remontent correctement |
| Uniquement des lignes « Returning » | La variable new_customer est toujours false, vérifiez la logique du développeur |
| Uniquement des lignes « New » | La variable new_customer est toujours true, vérifiez la logique du développeur |
| Aucune segmentation disponible | Les données n'atteignent pas Google Ads, re-débuggez GTM |

### 3.3 Checklist finale

- [ ] Le data layer pousse new_customer: true pour les premiers acheteurs
- [ ] Le data layer pousse new_customer: false pour les acheteurs récurrents
- [ ] Le tag de conversion GTM a « Provide new customer data » activé
- [ ] Google Ads affiche les segments New vs Returning dans les rapports de campagne
- [ ] Les valeurs true et false apparaissent toutes les deux dans les données de test

---

## Phase 4️⃣: Activer l'objectif NCA (optionnel)

### 4.1 Quand activer le NCA

Activez la stratégie d'enchères d'acquisition de nouveaux clients (new customer acquisition) quand :

- Vous utilisez des campagnes Performance Max
- Vous voulez que Google priorise l'acquisition de nouveaux clients plutôt que les achats récurrents
- Vous avez une valeur de nouveau client définie ou êtes prêt à enchérir plus haut pour l'acquisition

### 4.2 Configurer le NCA dans PMax

1. Ouvrez Google Ads
2. Allez dans la campagne Performance Max > Settings
3. Sous « Customer acquisition », sélectionnez votre mode d'enchères :

| Mode | Comportement | À utiliser quand |
|------|----------|----------|
| Bid higher for new customers | Enchérit plus agressivement pour les nouveaux clients tout en ciblant encore les clients récurrents | Vous valorisez davantage les nouveaux clients mais voulez les deux |
| Only bid for new customers | Exclut totalement les clients récurrents | Vous ne voulez que de l'acquisition depuis cette campagne |

4. Définissez la valeur de nouveau client (optionnel) : la valeur additionnelle attribuée à une conversion de nouveau client
5. Enregistrez

> 💡 **Commencez avec le mode « Bid higher » :** N'utilisez « Only bid for new customers » que si vous avez des campagnes distinctes pour la rétention. Démarrer avec le mode exclusif réduit le volume de façon significative.

### 4.3 Vérifier que le NCA est actif

1. Après activation, vérifiez la page des paramètres de la campagne
2. Confirmez que « Customer acquisition » affiche le mode que vous avez sélectionné
3. Surveillez le taux de conversion de nouveaux clients sur 2 semaines

---

### Validation et critères de complétion

Cette SOP est terminée quand :

- [ ] Le data layer envoie des valeurs new_customer exactes (true/false) à chaque achat
- [ ] Le tag de conversion transmet les données nouveaux clients à Google Ads
- [ ] Les rapports Google Ads affichent les segments clients New vs Returning
- [ ] Au moins 10 conversions de test affichent une classification correcte du type de client
- [ ] Objectif NCA activé dans PMax (le cas échéant)

---

### Passerelle de sortie

Une fois que le suivi des nouveaux clients est actif :

| Délai | Action |
|-----------|--------|
| Immédiatement | Passer en revue les rapports de campagne avec la segmentation nouveaux clients |
| Après 7 jours | Valider que les ratios nouveaux vs récurrents correspondent aux données du backend |
| Après 30 jours | Évaluer l'impact de l'objectif NCA sur le volume et le coût d'acquisition |

**En cas de problème :**

| Problème | Rediriger vers |
|-------|----------|
| Toutes les conversions apparaissent comme « new » | Développeur : vérifier la logique de recherche en base de données |
| Aucune segmentation client dans les rapports | Re-débugger le tag de conversion GTM (Phase 3.1) |
| La stratégie d'enchères NCA réduit trop le volume | Passer du mode « Only new » au mode « Bid higher » |

---

### FAQ

**Q : Que faire si je ne peux pas déterminer nouveau vs récurrent côté serveur ?**

R : Utilisez un cookie first-party comme solution de repli. Déposez un cookie après le premier achat, vérifiez sa présence lors des achats suivants. C'est moins précis, mais mieux que pas de segmentation.

**Q : Le suivi des nouveaux clients fonctionne-t-il avec le lead gen ?**

R : Le paramètre new_customer est conçu pour les conversions d'achat. Pour le lead gen, utilisez plutôt des variables personnalisées pour transmettre le type de lead (nouveau prospect vs client existant).

**Q : Comment le NCA interagit-il avec la stratégie d'enchères au ROAS cible ?**

R : Le NCA ajoute une prime d'acquisition au-dessus de votre ROAS cible. Google peut dépasser votre ROAS cible pour les nouveaux clients, alors surveillez le ROAS global (blended) après activation.

---

### Procédures liées

| SOP | Relation |
|-----|--------------|
| [SOP - Configurer le suivi panier et profit](<Suivi - Configurer le suivi panier et profit.md>) | Parallèle : enrichit la même conversion d'achat avec des données différentes |
| [SOP - Implementer la deduplication par Transaction ID](<Suivi - Implémenter la déduplication par Transaction ID.md>) | Parallèle : garantit que chaque conversion de nouveau client est comptée une seule fois |
| [SOP - Configurer le Google Consent Mode](<Suivi - Configurer Google Consent Mode.md>) | Amont : le consent mode doit être actif pour un suivi précis |

---

### Erreurs fréquentes

| Erreur | Pourquoi ça arrive | Comment l'éviter |
|---------|----------------|--------------|
| Toutes les conversions marquées comme nouvelles | Détection par cookie à la première visite, pas au premier achat | Utiliser la recherche en base de données pour l'historique d'achats |
| new_customer toujours false | Le développeur vérifie le mauvais champ ou la logique est inversée | Tester avec une adresse email nouvelle confirmée |
| L'objectif NCA n'apparaît pas dans les paramètres PMax | Les données nouveaux clients ne remontent pas encore | Attendre 48 heures après les premières conversions avec données new_customer |
| Ratios nouveaux/récurrents inexacts | Le checkout invité contourne la recherche client | Faire la correspondance par adresse email, pas par account ID |
