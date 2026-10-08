# Variables personnalisées

> **Plateforme :** Google Ads
> **Catégorie :** Suivi
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Documente les variables de conversion personnalisées pour enrichir les données de conversion Google Ads avec des dimensions spécifiques à votre activité, telles que les scores de leads (prospects), les catégories de produits, les niveaux de clients, et tout autre attribut pertinent pour votre business.

---

## Ce que couvre cette fiche / Ce qu'elle ne couvre PAS

**Cette fiche :**

- Définit ce que sont les variables personnalisées et ce qu'elles permettent
- Documente les deux méthodes d'implémentation (gtag et import OCT)
- Explique la création, l'activation et les exigences de nommage des variables
- Fournit des exemples pratiques pour les secteurs e-commerce, lead gen et SaaS

**Cette fiche ne couvre PAS :**

- La configuration du suivi de conversion pas à pas (Voir : [Conversion Action Reference](<Suivi - Actions de conversion.md>))
- Les procédures d'import de conversions offline (Voir : future SOP : Configurer le suivi de conversion offline)
- Comment construire des modèles de scoring pour la qualification de leads (Voir : future SOP : Configurer la segmentation par modèle de scoring)

---

## Aide-mémoire : variables personnalisées

| **Élément** | **Détails** |
|-------------|------------|
| **Ce qu'elles font** | Envoyer des dimensions spécifiques à votre activité avec chaque événement de conversion |
| **Variables max** | Jusqu'à 5 variables personnalisées par action de conversion |
| **Méthodes d'implémentation** | gtag (snippet en dur) ou import OCT (upload offline) |
| **NON disponible via** | GTM (pas de support natif, les solutions de contournement ne sont pas fiables) |
| **Où les consulter** | Rapports de campagne > Segments > Conversions > Variables personnalisées |
| **Création des variables** | Outils > Conversions > Variables personnalisées dans l'interface Google Ads |
| **Règle de nommage** | Les noms de variables dans les tags/uploads doivent correspondre exactement aux noms dans l'interface Google Ads |

> ⚠️ **Les variables personnalisées ne sont PAS disponibles via GTM :** malgré diverses solutions de contournement tentées, GTM ne supporte pas nativement les variables de conversion personnalisées. Utilisez la méthode gtag (snippet en dur) ou la méthode d'import OCT à la place.

---

## Ce que les variables personnalisées permettent

Les variables personnalisées vous permettent de segmenter les données de conversion par des dimensions que Google Ads ne suit pas nativement. Cela transforme vos rapports Google Ads de "combien de conversions" à "quel type de conversions".

### Sans variables personnalisées

| **Campagne** | **Conversions** | **CPA** | **Valeur** |
|-------------|----------------|---------|----------|
| Campagne A | 50 | 40 € | 5 000 € |
| Campagne B | 30 | 60 € | 3 600 € |

Vous voyez des totaux. Vous ne pouvez pas distinguer les conversions haute valeur des conversions basse valeur au sein de chaque campagne.

### Avec variables personnalisées

| **Campagne** | **Conversions** | **CPA** | **Score de lead** | **Taille d'entreprise** |
|-------------|----------------|---------|---------------|-----------------|
| Campagne A | 50 | 40 € | 30 = Score A, 20 = Score B | 25 = Entreprise, 25 = PME |
| Campagne B | 30 | 60 € | 25 = Score A, 5 = Score B | 28 = Entreprise, 2 = PME |

Maintenant vous voyez que la Campagne B génère 83 % de leads haute qualité et 93 % d'entreprises, ce qui rend son CPA plus élevé justifié.

---

## Méthode d'implémentation 1 : gtag (en dur)

### Fonctionnement

Ajoutez des paramètres personnalisés directement au snippet d'événement de conversion sur votre page de confirmation. Google Ads lit ces paramètres et les associe à vos variables personnalisées définies.

### Étapes de configuration

**Étape 1️⃣ : Créer les variables personnalisées dans Google Ads**

| **Action** | **Où** |
|-----------|----------|
| Naviguer vers Outils > Mesure > Conversions | Interface Google Ads |
| Cliquer sur l'onglet "Variables personnalisées" | Navigation en haut dans Conversions |
| Cliquer sur "+ Variable personnalisée" | Créer chaque variable |
| Saisir le nom de la variable (ex. : `lead_score`) | Doit correspondre exactement à ce que vous envoyez dans le tag |
| Enregistrer et activer | La variable est maintenant active |

**Étape 2️⃣ : Ajouter les paramètres au snippet de conversion**

```javascript
gtag('event', 'conversion', {
  'send_to': 'AW-XXXXXXXXX/XXXXXXXXXXXXX',
  'transaction_id': 'LEAD-2024-4521',
  'value': 500,
  'currency': 'USD',
  'lead_score': 'A',
  'company_size': 'Enterprise',
  'monthly_spend': '10000-50000'
});
```

**Étape 3️⃣ : Vérifier le flux de données**

Les données de variables personnalisées apparaissent dans les rapports dans les 24-48 heures suivant la première conversion avec des données de variables.

### Règles des paramètres gtag

| **Règle** | **Détails** |
|----------|------------|
| Noms de paramètres | Doivent correspondre exactement au nom de la variable personnalisée créée dans l'interface Google Ads |
| Valeurs de paramètres | Valeurs chaîne (Google traite toutes les valeurs comme des segments catégoriels) |
| Sensibilité à la casse | Les noms de variables sont sensibles à la casse : `lead_score` n'est pas `Lead_Score` |
| Valeurs vides | Omettre un paramètre pour certaines conversions est autorisé (s'affiche comme "non spécifié") |
| Paramètres max | Jusqu'à 5 variables personnalisées par événement de conversion |

---

## Méthode d'implémentation 2 : import OCT (upload de conversion offline)

### Fonctionnement

Incluez des colonnes de variables personnalisées dans votre fichier d'upload de conversions offline. Cette méthode fonctionne pour toute conversion importée via le suivi de conversion offline, y compris les événements de qualification de leads basés sur le CRM.

### Étapes de configuration

**Étape 1️⃣ : Créer les variables personnalisées dans Google Ads**

Même processus que le gtag : Outils > Mesure > Conversions > Variables personnalisées. Créez chaque variable avant l'upload.

**Étape 2️⃣ : Ajouter des colonnes au modèle d'upload**

Ajoutez des colonnes en utilisant le préfixe `cv.` suivi du nom exact de la variable :

| **Colonnes standard** | **Colonnes de variables personnalisées** |
|---------------------|---------------------------|
| `Google Click ID` | `cv.lead_score` |
| `Conversion Name` | `cv.company_size` |
| `Conversion Time` | `cv.monthly_spend` |
| `Conversion Value` | |
| `Conversion Currency` | |

**Exemple de ligne d'upload :**

| Google Click ID | Conversion Name | Conversion Time | Conversion Value | Conversion Currency | cv.lead_score | cv.company_size |
|----------------|----------------|-----------------|-----------------|--------------------|--------------:|----------------:|
| EAIaIQobChMI... | Qualified Lead | 2024-02-01 14:30:00 | 500 | USD | A | Enterprise |

### Règles des colonnes OCT

| **Règle** | **Détails** |
|----------|------------|
| Préfixe de colonne | Toujours `cv.` suivi du nom exact de la variable |
| La variable doit exister d'abord | Créer dans l'interface Google Ads avant l'upload |
| La colonne est optionnelle par ligne | Les lignes sans valeur s'affichent comme "non spécifié" dans les rapports |
| Les valeurs sont des chaînes | Même les valeurs numériques sont traitées comme des segments catégoriels |
| Fréquence d'upload | Inclure les colonnes de variables personnalisées dans chaque lot d'upload |

---

## Activation des variables

### Création manuelle (recommandé)

Créez chaque variable manuellement dans Google Ads avant d'envoyer des données. Cela garantit une correspondance de nom exacte et évite les surprises.

| **Étape** | **Action** |
|----------|-----------|
| 1 | Allez dans Outils > Mesure > Conversions |
| 2 | Cliquez sur l'onglet "Variables personnalisées" |
| 3 | Cliquez sur "+ Variable personnalisée" |
| 4 | Saisissez le nom (doit correspondre exactement au paramètre du tag/upload) |
| 5 | Enregistrez |
| 6 | Répétez pour chaque variable (max 5) |

### Auto-détection (gtag uniquement)

Pour les implémentations gtag, Google peut auto-détecter les nouveaux paramètres envoyés avec les événements de conversion et vous inviter à les activer. C'est moins fiable que la création manuelle.

| **Comportement d'auto-détection** | **Détails** |
|----------------------------|------------|
| Délai de détection | Peut prendre plusieurs jours après la première conversion avec un nouveau paramètre |
| Activation requise | Vous devez toujours activer manuellement la variable détectée |
| Non disponible pour l'OCT | Ne fonctionne qu'avec le gtag, pas les uploads offline |
| Recommandation | Utilisez la création manuelle pour une activation prévisible et immédiate |

---

## Consulter les données de variables personnalisées

### Segmentation des rapports

| **Étape** | **Action** |
|----------|-----------|
| 1 | Ouvrez n'importe quel rapport de campagne, ad group ou keyword |
| 2 | Cliquez sur l'icône "Segment" |
| 3 | Sélectionnez Conversions > Variables personnalisées |
| 4 | Choisissez la variable spécifique pour segmenter |
| 5 | Chaque ligne se divise en segments basés sur les valeurs de la variable |

### Exemples d'analyse

| **Question** | **Segmenter par** | **Ce qu'il faut chercher** |
|-------------|---------------|---------------------|
| Quelles campagnes apportent des leads haute qualité ? | `lead_score` | Campagnes avec le plus haut % de leads Score A |
| Quels keywords attirent des clients entreprise ? | `company_size` | Keywords avec une part entreprise disproportionnée |
| Quels ad groups génèrent des leads à dépenses mensuelles élevées ? | `monthly_spend` | Ad groups où les leads à 50K+ de dépenses mensuelles se concentrent |

---

## Exemples pratiques par secteur

### Chaîne hôtelière (e-commerce)

| **Variable** | **Exemples de valeurs** | **Analyse permise** |
|-------------|-------------------|---------------------|
| `hotel_name` | "Grand Plaza", "Harbor View", "Mountain Lodge" | Quelles campagnes génèrent des réservations pour quelles propriétés |
| `room_rate_category` | "Budget", "Standard", "Premium", "Suite" | Quels keywords attirent des réservations de chambres haute valeur |
| `customer_loyalty_status` | "Nouveau", "Silver", "Gold", "Platinum" | Répartition acquisition vs rétention par campagne |

### Lead gen (services B2B)

| **Variable** | **Exemples de valeurs** | **Analyse permise** |
|-------------|-------------------|---------------------|
| `company_size` | "1-10", "11-50", "51-200", "201-1000", "1000+" | Quelles campagnes attirent des entreprises vs PME |
| `monthly_spend` | "Moins de 5K", "5K-25K", "25K-100K", "100K+" | Identifier les campagnes générant des prospects haute valeur |
| `lead_score` | "A", "B", "C", "D" | Vraie qualité des leads par campagne, keyword, ad group |

### SaaS

| **Variable** | **Exemples de valeurs** | **Analyse permise** |
|-------------|-------------------|---------------------|
| `plan_type` | "Gratuit", "Starter", "Professional", "Enterprise" | Quelles campagnes génèrent des inscriptions payantes vs gratuites |
| `team_size` | "Solo", "Petite équipe", "Département", "Organisation" | Performance des campagnes par segment d'utilisateur |
| `use_case` | "Marketing", "Ventes", "Support", "Ingénierie" | Quels secteurs répondent à quelles campagnes |

---

## Erreurs courantes

| **Erreur** | **Problème** | **Solution** |
|-------------|-------------|---------|
| Tenter l'implémentation GTM | GTM ne supporte pas nativement les variables de conversion personnalisées | Utiliser la méthode gtag (en dur) ou import OCT |
| Inadéquation de nom de variable entre le tag et l'interface | Données envoyées mais non mappées, s'affichent comme "non spécifié" | Copier-coller les noms de variables pour garantir la correspondance exacte (sensible à la casse) |
| Créer les variables après avoir envoyé les données | Les données historiques sans variables ne peuvent pas être taguées rétroactivement | Créer les variables dans l'interface Google Ads avant d'envoyer la première conversion |
| Utiliser des valeurs numériques en attendant une analyse numérique | Toutes les valeurs sont des chaînes catégorielles, pas des nombres | Concevez les plages de valeurs comme des catégories ("Moins de 5K", "5K-25K") pas des nombres bruts |
| Dépasser la limite de 5 variables | Impossible d'ajouter plus de 5 variables par action de conversion | Priorisez les 5 dimensions les plus actionnables |
| Ne pas inclure le préfixe cv. dans les uploads OCT | Google ignore les colonnes sans le préfixe | Utilisez toujours le format `cv.nom_variable` dans les en-têtes d'upload |

---

## Documents liés

| **Document** | **Relation** |
|--------------|------------------|
| [Conversion Action Reference](<Suivi - Actions de conversion.md>) | Paramètres des actions de conversion auxquelles les variables personnalisées s'attachent |
| [Measurement Maturity Mental Model](<../../01-strategie/reporting/Reporting - Maturité de la mesure.md>) | Les variables personnalisées sont un enrichissement de mesure avancé |
| [Transaction ID Reference](<Suivi - Transaction ID.md>) | Les transaction IDs envoyés aux côtés des variables personnalisées |
| [New Customer Data Reference](<Suivi - Données nouveaux clients.md>) | Le paramètre nouveau client complète les variables personnalisées |
| [Conversion Volume Thresholds Reference](<Suivi - Seuils de volume de conversions.md>) | La segmentation par variable personnalisée nécessite un volume suffisant par segment |
