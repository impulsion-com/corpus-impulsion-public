# Configurer les variables personnalisées

> **Plateforme :** Google Ads
> **Catégorie :** Suivi
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Phase 1️⃣: Définir les variables

### 1.1 Brainstormer les dimensions business

Identifiez les dimensions qui apporteraient l'insight le plus actionnable pour segmenter vos données de conversion.

| Secteur | Exemples de variables | Pourquoi c'est utile |
|----------|------------------|-----------|
| Hôtellerie/Voyage | `hotel_name`, `room_rate`, `booking_type`, `length_of_stay` | Comprendre quels établissements et types de réservation génèrent de la valeur |
| Lead gen | `lead_score`, `lead_source`, `service_type`, `deal_size` | Segmenter les conversions par qualité et valeur potentielle |
| E-commerce | `product_category`, `margin_tier`, `customer_segment` | Analyser quels types de produits convertissent depuis les publicités |
| SaaS | `plan_type`, `trial_source`, `company_size` | Identifier quels segments convertissent vers des plans payants |

### 1.2 Finaliser votre liste de variables

Sélectionnez jusqu'à 5 variables personnalisées par action de conversion. Pour chacune, documentez :

| Nom de variable | Type de données | Exemples de valeurs | Système source |
|---------------|-----------|----------------|---------------|
| `lead_score` | Numérique | `85`, `42`, `91` | Modèle de scoring CRM |
| `service_type` | String | `consulting`, `implementation`, `audit` | Champ de sélection du formulaire |
| `deal_size` | String | `small`, `medium`, `enterprise` | Fiche deal du CRM |

> 💡 **Priorisez les dimensions actionnables :** Choisissez des variables qui changeraient vos décisions d'enchères ou de campagne si vous pouviez les voir dans les rapports. Écartez les dimensions de vanité (sans impact sur vos décisions).

### 1.3 Nommer vos variables

Utilisez des minuscules avec des underscores. Gardez des noms descriptifs et de moins de 40 caractères.

| À faire | À éviter |
|-----|-------|
| `lead_score` | `LS` |
| `room_rate` | `Room Rate!!!` |
| `product_category` | `the_category_of_the_product_purchased` |

---

## Phase 2A: Implémenter via gtag

### 2A.1 Ajouter des paramètres personnalisés au snippet de conversion

Pour chaque action de conversion, ajoutez les paramètres de variables personnalisées en utilisant le préfixe `cv.` :

```javascript
gtag('event', 'conversion', {
  'send_to': 'AW-XXXXXXX/YYYYYYY',
  'value': 5000.00,
  'currency': 'USD',
  'transaction_id': 'LEAD-2026-0201-a7b3c9',
  'cv.lead_score': '85',
  'cv.service_type': 'consulting',
  'cv.deal_size': 'enterprise'
});
```

### 2A.2 Instructions pour le développeur

Envoyez ceci à votre développeur :

1. Sur la page de confirmation de conversion, renseignez chaque paramètre `cv.` dynamiquement
2. Récupérez les valeurs depuis le backend/CRM au moment du rendu de la page
3. Toutes les valeurs doivent être des strings (même les valeurs numériques)
4. Si une valeur n'est pas disponible pour une conversion donnée, omettez le paramètre (n'envoyez pas de strings vides)

### 2A.3 Tester le snippet

1. Réalisez une conversion de test
2. Ouvrez l'onglet Network du navigateur
3. Filtrez les requêtes vers `googleads.g.doubleclick.net`
4. Vérifiez que les paramètres de variables personnalisées apparaissent dans le payload de la requête

---

## Phase 2B: Implémenter via OCT Import

### 2B.1 Ajouter des colonnes de variables personnalisées à votre modèle d'import

Si vous utilisez les imports Offline Conversion Tracking, ajoutez une colonne pour chaque variable personnalisée :

| Format d'en-tête de colonne | Exemple |
|---------------------|---------|
| `cv.variable_name` | `cv.lead_score` |

### 2B.2 Préparer le fichier d'import

Votre modèle d'import doit contenir :

| Google Click ID | Conversion Name | Conversion Time | Conversion Value | Conversion Currency | cv.lead_score | cv.service_type |
|----------------|-----------------|-----------------|------------------|--------------------:|---------------|-----------------|
| EAIaIQob... | Lead Submit | 2026-02-01 14:30:00 | 5000 | USD | 85 | consulting |
| EAIaIQob... | Lead Submit | 2026-02-01 15:45:00 | 2000 | USD | 42 | audit |

### 2B.3 Importer avec les données de variables personnalisées

1. Allez dans Google Ads > Goals > Conversions > Uploads
2. Importez votre fichier avec les colonnes de variables personnalisées incluses
3. Vérifiez que l'import se termine sans erreur liée aux colonnes de variables personnalisées

> ⚠️ **Les en-têtes de colonne doivent correspondre exactement :** Utilisez le préfixe `cv.` suivi du nom exact de la variable que vous créerez en Phase 3. La casse compte.

---

## Phase 3️⃣: Créer dans Google Ads

### 3.1 Naviguez vers Custom Variables

1. Ouvrez Google Ads
2. Allez dans Tools > Measurement > Conversions
3. Cliquez sur « Custom Variables » dans la navigation de gauche

### 3.2 Créer chaque variable

Pour chaque variable de votre liste de la Phase 1 :

1. Cliquez sur le bouton « + » pour créer une nouvelle variable personnalisée
2. Saisissez le nom de la variable (doit correspondre exactement au nom du paramètre `cv.`, sans le préfixe `cv.`)
3. Enregistrez

### 3.3 Activer les variables

1. Après avoir créé chaque variable, vérifiez qu'elle apparaît comme « Enabled »
2. Confirmez que le nombre total ne dépasse pas 5 par action de conversion

| Nom de variable | Statut | Paramètre correspondant |
|---------------|--------|--------------------|
| lead_score | Enabled | cv.lead_score |
| service_type | Enabled | cv.service_type |
| deal_size | Enabled | cv.deal_size |

---

## Phase 4️⃣ : Valider

### 4.1 Vérifier la page Custom Variables

1. Allez dans Tools > Measurement > Conversions > Custom Variables
2. Après 24 à 48 heures, vérifiez que des valeurs récentes apparaissent pour chaque variable
3. Vérifiez que la distribution des valeurs semble correcte (ni toutes vides, ni toutes identiques)

### 4.2 Segmenter les rapports de campagne

1. Allez dans le rapport Campaigns ou Ad Groups
2. Cliquez sur Segment > Conversions > Custom Variable
3. Sélectionnez l'une de vos variables personnalisées
4. Vérifiez que le rapport se ventile selon les valeurs de la variable

| Ce que vous devriez voir | Ce que ça signifie |
|---------------------|--------------|
| Données de conversion réparties selon les valeurs de la variable | Les données remontent correctement |
| L'option de variable personnalisée n'est pas disponible | Variable non créée en Phase 3, ou aucune donnée reçue pour l'instant |
| Toutes les conversions sous « (not set) » | Les paramètres ne sont pas envoyés avec les conversions |

### 4.3 Checklist finale

- [ ] Variables définies avec des noms clairs et des valeurs attendues
- [ ] Méthode d'implémentation choisie (gtag ou import OCT)
- [ ] Paramètres personnalisés envoyés avec les données de conversion
- [ ] Variables créées et activées dans Google Ads
- [ ] Les segments de variables personnalisées apparaissent dans les rapports de campagne
- [ ] La distribution des valeurs correspond aux données business attendues

---

### Validation et critères de complétion

Cette SOP est terminée quand :

- [ ] Jusqu'à 5 variables personnalisées sont définies et documentées
- [ ] Les variables envoient des données via gtag ou import OCT
- [ ] Les variables sont créées et activées dans Google Ads
- [ ] La segmentation par variable personnalisée est disponible dans les rapports de campagne
- [ ] Au moins 10 conversions affichent des valeurs de variables personnalisées correctes

---

### Passerelle de sortie

Une fois que les variables personnalisées sont actives :

| Délai | Action |
|-----------|--------|
| Immédiatement | Commencer à segmenter les rapports de conversion par dimensions personnalisées |
| Après 7 jours | Valider l'exactitude des données par rapport aux enregistrements du backend |
| Après 30 jours | Utiliser les insights pour éclairer les décisions d'enchères et de structure de campagne |

**En cas de problème :**

| Problème | Rediriger vers |
|-------|----------|
| Les valeurs n'apparaissent pas dans les rapports | Vérifier que le nommage des paramètres correspond entre le snippet et Google Ads |
| Toutes les conversions affichent « (not set) » | Développeur : vérifier que les paramètres sont renseignés dynamiquement |
| Limite de variables atteinte | Prioriser les 5 dimensions les plus actionnables, retirer celles inutilisées |

---

### FAQ

**Q : Pourquoi ne puis-je pas utiliser GTM pour les variables personnalisées ?**

R : Les variables personnalisées Google Ads nécessitent le préfixe de paramètre `cv.` dans le tag de conversion, qui n'est supporté que via le snippet gtag.js ou l'import OCT. Le tag de conversion Google Ads de GTM n'expose pas ce champ.

**Q : Puis-je modifier les valeurs des variables après leur envoi ?**

R : Non. Les valeurs des variables personnalisées sont fixées au moment de la conversion et ne peuvent pas être ajustées rétroactivement. Pour des corrections post-conversion, utilisez plutôt les ajustements de conversion.

**Q : Les variables personnalisées affectent-elles les Stratégies d'enchères intelligentes ?**

R : Pas directement. Les variables personnalisées servent uniquement à la segmentation du reporting. Les Stratégies d'enchères intelligentes utilisent la valeur de conversion, pas les valeurs des variables personnalisées, pour l'optimisation.

---

### Procédures liées

| SOP | Relation |
|-----|--------------|
| [SOP - Implementer la deduplication par Transaction ID](<Suivi - Implémenter la déduplication par Transaction ID.md>) | Parallèle : les Transaction ID sont envoyés en même temps que les variables personnalisées |
| [SOP - Configurer les ajustements de conversions](<Suivi - Configurer les ajustements de conversion.md>) | Aval : les ajustements peuvent corriger les valeurs mais pas les variables personnalisées |
| [SOP - Configurer le Google Consent Mode](<Suivi - Configurer Google Consent Mode.md>) | Amont : le consent mode doit être actif pour la collecte de données |

---

### Erreurs fréquentes

| Erreur | Pourquoi ça arrive | Comment l'éviter |
|---------|----------------|--------------|
| Nom de variable non concordant | Le nom du paramètre `cv.` ne correspond pas au nom de la variable Google Ads | Copier-coller les noms, vérifier la correspondance exacte |
| Toutes les valeurs « (not set) » | Le développeur envoie des strings vides au lieu d'omettre | Omettre le paramètre quand aucune valeur n'existe |
| Les valeurs numériques ne se segmentent pas correctement | Valeurs envoyées comme des nombres au lieu de strings | S'assurer que toutes les valeurs sont envoyées comme des strings |
| Dépassement de la limite de 5 variables | Tentative d'ajouter plus de 5 variables | Prioriser en Phase 1, retirer les variables inutilisées |
