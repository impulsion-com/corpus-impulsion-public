# Implémenter la déduplication par Transaction ID

> **Plateforme :** Google Ads
> **Catégorie :** Suivi
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Phase 1️⃣: Identifier la source de l'ID de transaction

### 1.1 Mapper chaque type de conversion à sa source d'ID

| Type de conversion | Source de l'ID unique | Où le trouver |
|----------------|-----------------|-------------------|
| Achat e-commerce | Order ID | Généré par la plateforme au checkout (order_id Shopify, numéro de commande WooCommerce) |
| Soumission de formulaire de lead (prospect) | ID de soumission de formulaire | Attribué par le CRM à la soumission, ou généré côté backend |
| Appel téléphonique | ID de call tracking | Fourni par la plateforme de call tracking |
| Installation d'app | Install ID | Fourni par le partenaire de mesure mobile (MMP) |

### 1.2 E-commerce : utiliser l'order ID

Chaque plateforme e-commerce génère un order ID unique au checkout. C'est l'identifiant de transaction (Transaction ID).

1. Identifiez le nom du champ order ID de la plateforme
2. Confirmez qu'il est disponible sur la page de confirmation d'achat
3. Vérifiez qu'il est unique par commande (jamais réutilisé)

### 1.3 Lead gen : créer un ID de soumission de formulaire unique

Les formulaires de lead n'ont souvent pas d'ID unique intégré. Créez-en un :

1. Briefez votre développeur pour générer un ID unique à chaque soumission de formulaire
2. Options : UUID, timestamp + chaîne aléatoire, ID d'enregistrement CRM
3. Transmettez cet ID au data layer de la page de confirmation

```javascript
// Example: developer generates a unique ID server-side
dataLayer.push({
  'event': 'form_submit',
  'transaction_id': 'LEAD-2026-0201-a7b3c9'
});
```

> ⚠️ **N'utilisez jamais l'email ou le téléphone de l'utilisateur comme Transaction ID :** Ces valeurs ne sont pas uniques par soumission (un utilisateur peut soumettre plusieurs formulaires). Utilisez un identifiant unique généré par le système.

---

## Phase 2️⃣: Configurer dans GTM ou gtag

### 2A : Configuration GTM

#### Étape 1️⃣ : Créer la variable data layer

1. Allez dans Variables > User-Defined Variables > New
2. Type de variable : Data Layer Variable
3. Data Layer Variable Name : `transaction_id`
4. Nommez la variable : `DLV - transaction_id`
5. Enregistrez

#### Étape 2️⃣ : Renseigner le champ Transaction ID dans le tag de conversion

1. Allez dans Tags > sélectionnez votre tag de conversion Google Ads
2. Trouvez le champ « Transaction ID » (sous la section de la valeur de conversion)
3. Définissez-le sur `{{DLV - transaction_id}}`
4. Enregistrez et publiez

> 💡 **Une variable, tous les tags de conversion :** Si vous avez plusieurs tags de conversion (achat, lead, etc.), renseignez le champ Transaction ID dans chacun. Utilisez le même nom de variable data layer pour tous les types de conversion.

### 2B : Configuration gtag (alternative)

Ajoutez le paramètre `transaction_id` à votre snippet de conversion :

```javascript
// Ecommerce example
gtag('event', 'conversion', {
  'send_to': 'AW-XXXXXXX/YYYYYYY',
  'value': 149.97,
  'currency': 'USD',
  'transaction_id': 'ORD-98765'
});

// Lead gen example
gtag('event', 'conversion', {
  'send_to': 'AW-XXXXXXX/ZZZZZZZ',
  'transaction_id': 'LEAD-2026-0201-a7b3c9'
});
```

Le développeur renseigne la valeur `transaction_id` dynamiquement depuis le backend.

---

## Phase 3️⃣: Valider

### 3.1 Débugger dans GTM

1. Ouvrez le mode Preview de GTM
2. Réalisez une conversion de test (achat ou soumission de formulaire)
3. Cliquez sur l'évènement de conversion dans le panneau de débogage
4. Vérifiez que le tag de conversion affiche une valeur `transaction_id` renseignée
5. Confirmez que la valeur correspond à l'order ID ou à l'ID de soumission de formulaire du backend

### 3.2 Vérifier les IDs de transaction vides

1. Réalisez 3 à 5 conversions de test
2. Pour chacune, vérifiez que l'identifiant de transaction est :
   - Présent (ni vide ni undefined)
   - Unique (différent pour chaque conversion)
   - Correspondant à l'enregistrement du backend

| Vérification | Résultat attendu | En cas d'échec |
|-------|----------------|-------------|
| Transaction ID présent | Chaîne non vide dans le panneau de débogage | Variable data layer non renseignée, vérifiez l'implémentation du développeur |
| Transaction ID unique | Valeur différente par conversion | La logique de génération d'ID réutilise des valeurs |
| Transaction ID correspond au backend | L'ID dans GTM est égal à l'ID dans le CRM/la plateforme | Mauvais nom de champ data layer |

### 3.3 Vérifier tous les chemins de conversion

Testez le renseignement du Transaction ID sur chaque chemin de conversion :

- Checkout desktop
- Checkout mobile
- Checkout express (PayPal, Apple Pay, etc.)
- Checkout invité vs checkout connecté
- Chaque type de formulaire (contact, demande de devis, demande de démo)

---

## Phase 4️⃣: Vérifier la déduplication

### 4.1 Soumettre la même conversion deux fois

1. Réalisez une conversion de test (notez le Transaction ID)
2. Rafraîchissez la page de confirmation (cela déclenche à nouveau le tag de conversion avec le même Transaction ID)
3. Attendez 24 heures

### 4.2 Vérifier Google Ads

1. Allez dans Google Ads > Goals > Conversions > détail de l'action de conversion
2. Regardez le nombre de conversions sur la période de test
3. Confirmez que la soumission en double n'a été comptée qu'une seule fois

| Résultat | Statut | Action |
|--------|--------|--------|
| Une seule conversion enregistrée | Déduplication fonctionnelle | Terminé |
| Deux conversions enregistrées | Le Transaction ID n'est pas envoyé | Revérifiez la configuration de la Phase 2 |

### 4.3 Checklist finale

- [ ] Chaque type de conversion a une source d'ID unique identifiée
- [ ] Le data layer pousse transaction_id sur chaque évènement de conversion
- [ ] Le champ Transaction ID est renseigné dans chaque tag de conversion
- [ ] Aucun Transaction ID vide ou undefined lors des tests de débogage
- [ ] Le test de soumission en double n'affiche qu'une seule conversion dans Google Ads

---

### Validation et critères de complétion

Cette SOP est terminée quand :

- [ ] Le Transaction ID est envoyé à chaque déclenchement de tag de conversion
- [ ] Les IDs sont uniques par évènement de conversion
- [ ] Aucun Transaction ID vide sur n'importe quel chemin de conversion
- [ ] Le test de soumission en double confirme que la déduplication fonctionne
- [ ] Tous les types de conversion (achat, lead, etc.) ont des Transaction ID configurés

---

### Passerelle de sortie

Une fois que la déduplication par Transaction ID est active :

| Délai | Action |
|-----------|--------|
| Immédiatement | Continuer vers les autres SOP de mesure (données panier, suivi des nouveaux clients) |
| Après 7 jours | Comparer le nombre de conversions Google Ads vs le nombre du backend pour vérifier l'exactitude |
| Mensuelle | Contrôle ponctuel des écarts entre les chiffres Google Ads et backend |

**En cas de problème :**

| Problème | Rediriger vers |
|-------|----------|
| Le nombre de conversions dépasse toujours le backend | Vérifier tous les chemins de conversion pour des Transaction ID manquants |
| Des Transaction ID apparaissent vides | Développeur : vérifier le timing du push data layer vs le déclenchement du tag |
| Écart entre Google Ads et le backend | Réaliser un audit de conversion : comparer les IDs dans les deux systèmes |

---

### FAQ

**Q : Que se passe-t-il si le champ Transaction ID est laissé vide ?**

R : Google Ads considère chaque déclenchement de tag comme une conversion unique. Les rafraîchissements de page, les clics sur le bouton retour et les confirmations multi-appareils comptent tous comme des conversions distinctes, ce qui gonfle vos chiffres.

**Q : La déduplication fonctionne-t-elle entre appareils ?**

R : Oui. Si le même Transaction ID est envoyé depuis différents appareils ou navigateurs, Google déduplique en une seule conversion.

**Q : Dois-je utiliser le même Transaction ID pour Google Ads et GA4 ?**

R : Oui. Utilisez la même valeur `transaction_id` pour les deux. Cela permet aussi la réconciliation cross-plateforme.

---

### Procédures liées

| SOP | Relation |
|-----|--------------|
| [SOP - Configurer le Google Consent Mode](<Suivi - Configurer Google Consent Mode.md>) | Amont : le consent mode doit être actif |
| [SOP - Configurer le suivi panier et profit](<Suivi - Configurer le suivi panier et profit.md>) | Parallèle : les données panier utilisent le même Transaction ID |
| [SOP - Configurer le suivi nouveaux clients](<Suivi - Configurer le suivi des nouveaux clients.md>) | Parallèle : les données nouveaux clients sur le même évènement de conversion |
| [SOP - Configurer les ajustements de conversions](<Suivi - Configurer les ajustements de conversion.md>) | Aval : les ajustements référencent les Transaction ID |

---

### Erreurs fréquentes

| Erreur | Pourquoi ça arrive | Comment l'éviter |
|---------|----------------|--------------|
| Des Transaction ID vides sur certaines pages | Le data layer se déclenche avant que l'ID soit disponible | S'assurer que la génération d'ID côté serveur est terminée avant le push data layer |
| Des conversions en double persistent | Champ Transaction ID mappé sur la mauvaise variable | Revérifier que le nom de variable dans GTM correspond exactement à la clé data layer |
| IDs non uniques | Utilisation d'un timestamp sans composante aléatoire | Ajouter un suffixe aléatoire ou utiliser des UUID |
| IDs manquants au checkout express | Le flux de checkout différent contourne le data layer | Tester tous les chemins de checkout, y compris PayPal/Apple Pay |
