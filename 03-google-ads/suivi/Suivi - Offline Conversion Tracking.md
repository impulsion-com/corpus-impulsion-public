# Offline Conversion Tracking

> **Plateforme :** Google Ads
> **Catégorie :** Suivi
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Documente le suivi des conversions hors ligne (OCT) pour le lead gen et le SaaS : les trois méthodes d'import (GCLID, Enhanced Conversions for Leads, Hybride), l'intégration CRM, les workflows d'upload et le mapping du tunnel de conversion.

---

## Ce que couvre cette fiche / Ce qu'elle ne couvre PAS

**Cette fiche :**

- Explique pourquoi l'OCT est important pour les comptes lead gen et SaaS
- Documente les trois méthodes d'import avec comparaison
- Couvre la configuration des actions de conversion pour les imports hors ligne
- Détaille les méthodes d'upload, le timing et l'approche hybride pour maximiser les taux de correspondance
- Mappe le tunnel de conversion lead gen pour l'OCT

**Cette fiche ne couvre PAS :**

- S'appliquer à l'ecommerce (l'ecommerce suit les achats via des pixels on-site, pas des imports hors ligne)
- Fournir l'implémentation OCT étape par étape (Voir : [SOP - Configurer le suivi des conversions hors ligne](<Suivi - Configurer le suivi des conversions hors ligne.md>))
- Couvrir la configuration du pixel de conversion on-site (Voir : [Conversion Pixel Reference](<Suivi - Pixel de conversion.md>))
- Expliquer les Enhanced Conversions pour le web (Voir : [Enhanced Conversions Reference](<Suivi - Enhanced Conversions.md>))
- Documenter la sélection de stratégie d'enchères (Voir : [Conversion Volume Thresholds Reference](<Suivi - Seuils de volume de conversions.md>))

---

## Pourquoi l'OCT est important

### Le trou noir de l'attribution

Le suivi des conversions on-site traditionnel ne voit que les soumissions de leads (prospects). Ce qui se passe après la soumission du formulaire - si le lead devient un lead qualifié, reçoit une proposition ou signe comme client payant - est invisible pour Google Ads.

| **Ce que le tracking (suivi des conversions/évènements) on-site voit** | **Ce que le tracking on-site rate** |
|-------------------------------|--------------------------------|
| Soumission de formulaire | Qualité du lead (qualifié vs. non qualifié) |
| Initiation d'appel téléphonique | Résultat commercial (deal signé vs. perdu) |
| Événement d'inscription | Chiffre d'affaires et valeur du deal |
| Coût par lead | Coût par deal signé, ROAS, profit |

Sans OCT, vous optimisez pour la quantité de leads. Avec OCT, vous optimisez pour la qualité des leads, le chiffre d'affaires et le profit.

### L'argumentaire pour l'OCT

| **Métrique** | **Sans OCT** | **Avec OCT** |
|-----------|----------------|-------------|
| **Cible d'optimisation** | Coût par lead (CPL) | Coût par deal signé, ROAS, POAS |
| **Signal Stratégies d'enchères intelligentes** | Soumission de formulaire (signal de basse qualité) | Lead qualifié ou deal signé (signal de haute qualité) |
| **Allocation de budget** | Basée sur le volume de leads | Basée sur la contribution au CA et au profit |
| **Évaluation de campagne** | La campagne A a un CPL plus bas = "gagnante" | La campagne B a un taux de closing et une valeur de deal plus élevés = vraie gagnante |

> ⚠️ **Implémentez toujours l'OCT pour le lead gen et le SaaS, quel que soit le volume :** Même si les volumes de conversion sont trop bas pour utiliser les conversions hors ligne comme signal principal pour la stratégie d'enchères, les tracker comme actions de conversion secondary fournit des insights business critiques que vous ne pouvez obtenir d'aucune autre manière.

---

## Aide-mémoire : trois méthodes d'import

| **Méthode** | **Identifiant** | **Taux de correspondance** | **Complexité de configuration** | **Idéal pour** |
|-----------|---------------|---------------|---------------------|-------------|
| **GCLID** | Google Click ID (gclid, gbraid, wbraid) | Le plus élevé | Élevée : nécessite des champs cachés, capture cookie/localStorage, stockage CRM | Méthode principale quand les click ID peuvent être capturés |
| **Enhanced Conversions for Leads (EC4L)** | Adresse email hachée (+ téléphone, adresse) | Moyen-élevé | Moyenne : nécessite la configuration Enhanced Conversions, tag de données utilisateur | Méthode de secours, ou principale quand la capture GCLID n'est pas faisable |
| **Hybride (GCLID + EC4L)** | Les deux : GCLID quand disponible, EC4L en fallback | Maximum | La plus élevée : combine les deux méthodes avec logique conditionnelle | Approche recommandée pour tous les comptes lead gen |

---

## Méthode 1 : GCLID

### Fonctionnement

1. **L'utilisateur clique sur votre annonce** : Google ajoute un GCLID unique à l'URL de la Landing Page
2. **Les champs cachés capturent le GCLID** : Un script extrait le GCLID de l'URL et le stocke dans le localStorage et un cookie first-party
3. **La soumission du formulaire inclut le GCLID** : Les champs cachés du formulaire envoient le GCLID stocké aux côtés des informations de contact du lead
4. **Le CRM stocke le GCLID** : L'enregistrement du lead inclut l'identifiant de clic
5. **Le lead convertit hors ligne** : Quand le lead devient un lead qualifié ou un deal signé, vous uploadez la conversion dans Google Ads avec le GCLID stocké, l'horodatage et la valeur
6. **Google attribue la conversion hors ligne** : Fait correspondre le GCLID au clic publicitaire original, attribuant le CA à la campagne, l'ad group, le keyword et le terme de recherche

### Trois types de Google Click ID

| **Click ID** | **Format** | **Environnement** | **Priorité** |
|-------------|-----------|----------------|-------------|
| **gclid** | Longue chaîne alphanumérique | Desktop, Android, la plupart des environnements web | 1er (toujours prioriser quand disponible) |
| **gbraid** | Chaîne plus courte | Environnements app iOS | 2ème (utiliser quand gclid n'est pas disponible) |
| **wbraid** | Chaîne plus courte | Environnements web iOS (Safari) | 3ème (dernier recours quand ni gclid ni gbraid n'est disponible) |

> ⚠️ **Capturez les trois types de click ID :** Ajoutez toujours des champs cachés pour gclid, gbraid et wbraid à chaque formulaire. Lors de l'upload, suivez l'ordre de priorité : gclid en premier, gbraid en second, wbraid en dernier. N'uploadez jamais la même conversion avec plusieurs types de click ID.

### Exigences de champs cachés

Chaque formulaire de lead à travers l'ensemble de votre site web doit inclure des champs cachés pour :

| **Nom du champ caché** | **Objectif** |
|----------------------|-----------|
| `gclid` | Stocke le Google Click ID |
| `gbraid` | Stocke le Click ID app iOS |
| `wbraid` | Stocke le Click ID web iOS |
| `consent_state` | Stocke l'état de consentement de l'utilisateur (accordé/refusé) pour la conformité vie privée |

Un script HTML personnalisé GTM extrait les click ID de l'URL, les stocke dans le localStorage et un cookie first-party (expiration 90 jours), et remplit les champs cachés quand le formulaire se charge.

---

## Méthode 2 : Enhanced Conversions for Leads (EC4L)

### Fonctionnement

1. **L'utilisateur clique sur l'annonce et soumet un formulaire lead** : À la soumission, un tag de données utilisateur se déclenche et envoie l'email haché (et optionnellement le téléphone) à Google
2. **Google stocke l'identifiant haché** : Google sait maintenant quel utilisateur Google a soumis le formulaire
3. **Les informations du lead sont stockées dans le CRM** : Email et téléphone sont déjà capturés comme données de contact
4. **Le lead convertit hors ligne** : Vous uploadez la conversion avec le même email/téléphone comme identifiant
5. **Google fait la correspondance** : L'email haché de l'upload correspond à l'email haché de la soumission de formulaire originale, attribuant la conversion hors ligne au clic publicitaire

### Avantages par rapport à la méthode GCLID

| **Avantage** | **Détails** |
|-------------|-----------|
| Pas de champs cachés requis | Email et téléphone sont déjà capturés dans le formulaire : pas de champs supplémentaires nécessaires |
| Pas de scripts de capture de click ID | Pas de localStorage, cookies ou parsing d'URL requis |
| Fonctionne quand le GCLID est indisponible | Si le click ID n'a pas été capturé (échec de script, cookie bloqué), EC4L fonctionne quand même |
| Configuration CRM plus simple | Pas de champs CRM supplémentaires pour les click ID |

### Limitations

| **Limitation** | **Détails** |
|---------------|-----------|
| Taux de correspondance plus bas que GCLID | Toutes les adresses email ne correspondent pas à un compte Google |
| Nécessite la configuration Enhanced Conversions | Le tag de données utilisateur doit se déclencher à la soumission du formulaire |
| Paramètres requis dans l'UI Google Ads | Il faut activer Enhanced Conversions et Enhanced Conversions for Leads |

---

## Méthode 3 : Approche hybride (recommandée)

### Fonctionnement

Combinez GCLID et EC4L avec une logique conditionnelle :

1. **Capturez les deux** : click ID (champs cachés) et données utilisateur (Enhanced Conversions) à la soumission du formulaire
2. **Stockez les deux** dans le CRM : click ID dans des champs dédiés, email/téléphone dans les champs de contact standard
3. **Uploadez avec logique conditionnelle** : Si le GCLID existe, uploadez avec GCLID. Sinon, faites un fallback sur EC4L (email/téléphone). Quand vous utilisez le GCLID, incluez aussi les données personnelles pour améliorer encore les taux de correspondance.

### Organigramme de priorité d'upload

| **Étape** | **Vérification** | **Action** |
|---------|----------|----------|
| 1 | Le gclid existe-t-il ? | Oui : uploadez avec gclid + données personnelles (email, téléphone) |
| 2 | Le gbraid existe-t-il ? | Oui : uploadez avec gbraid + données personnelles |
| 3 | Le wbraid existe-t-il ? | Oui : uploadez avec wbraid + données personnelles |
| 4 | Aucun click ID disponible | Uploadez avec EC4L (email/téléphone uniquement) |

> 💡 **Incluez toujours les données personnelles aux côtés des click ID :** Quand vous uploadez avec un GCLID, envoyez aussi l'email et le numéro de téléphone hachés. Cela améliore les taux de correspondance au-delà de ce que chaque méthode atteint seule.

### Configuration de l'automatisation

Utilisez Zapier, Make ou une intégration personnalisée pour automatiser le workflow hybride :

1. **Déclencheur** : Le statut CRM change en "Lead qualifié" ou "Deal signé"
2. **Formateur** : Ajoutez un décalage de 12 heures à l'horodatage (gère les différences de fuseau horaire)
3. **Délai** : Attendez 24 heures (Google a besoin de temps pour traiter les click ID)
4. **Logique de chemin** : Routez vers la bonne méthode d'upload selon les identifiants disponibles (gclid > gbraid > wbraid > EC4L)
5. **Upload** : Envoyez la conversion à Google Ads avec l'identifiant sélectionné, la valeur et l'horodatage

---

## Configuration des actions de conversion

### Créer des actions de conversion hors ligne

Créez des actions de conversion de type "Import" dans Google Ads pour chaque étape de conversion hors ligne :

| **Action de conversion** | **Catégorie d'objectif** | **Comptage** | **Optimisation** | **Valeur** |
|----------------------|-------------------|-------------|-----------------|---------|
| OCT : Lead qualifié | Soumettre formulaire lead | One | Primary ou Secondary (dépend du volume) | Statique (valeur moyenne de deal) ou dynamique (valeur par lead) |
| OCT : Deal signé | Achat/Vente | One | Primary (recommandé pour les campagnes bas du tunnel) | Dynamique (valeur réelle du deal) |
| OCT : Profit brut | Achat/Vente | One | Primary (pour la stratégie d'enchères basée POAS) | Dynamique (profit brut réel par deal) |

> 💡 **Trackez à la fois le CA et le profit brut :** Créez deux actions de conversion hors ligne : une pour le CA (utilisez pour la stratégie d'enchères ROAS), une pour le profit brut (utilisez pour la stratégie d'enchères POAS). Cela vous donne les deux points de données pour la prise de décision.

### Une action de conversion par étape, pas par méthode

Utilisez une action de conversion par étape de conversion hors ligne (ex. une pour Lead qualifié, une pour Deal signé). Envoyez les imports GCLID et EC4L à la même action de conversion. Cela consolide les signaux de conversion et donne à Stratégies d'enchères intelligentes un jeu de données plus fort.

---

## Méthodes d'upload

| **Méthode** | **Comment** | **Idéal pour** |
|-----------|--------|-------------|
| **Upload CSV manuel** | Téléchargez le modèle depuis Google Ads, remplissez, uploadez via Objectifs > Conversions > Uploads | Tests, faible volume, imports ponctuels |
| **Upload planifié Google Sheets** | Liez un Google Sheet, configurez un calendrier d'upload automatique | Petits comptes avec CRM simple (Google Sheets comme base) |
| **Intégration CRM (native)** | Connecteurs natifs Salesforce, HubSpot, Zoho | Comptes utilisant déjà des CRM supportés |
| **Automatisation Zapier / Make** | Upload automatisé basé sur des déclencheurs quand le statut CRM change | La plupart des comptes lead gen : flexible, supporte l'approche hybride |
| **API Google Ads** | Upload programmatique pour les imports à fort volume ou en temps réel | Comptes à fort volume, intégrations personnalisées |

---

## Timing d'upload

| **Directive** | **Détails** |
|-------------|-----------|
| **Délai minimum** | Attendez au moins 24 heures après le clic avant d'uploader (Google a besoin de temps pour traiter les click ID) |
| **Lookback maximum** | 90 jours depuis la date du clic (les conversions uploadées après 90 jours sont rejetées) |
| **Timing recommandé** | Uploadez dans les 24-48 heures suivant la conversion hors ligne |
| **Format d'horodatage** | Incluez un décalage de 12 heures pour gérer les différences de fuseau horaire entre votre CRM et Google Ads |

> ⚠️ **Limite de lookback de 90 jours :** Si votre cycle de vente dépasse 90 jours, vous devez importer une étape du tunnel plus précoce (lead qualifié) qui se produit dans la fenêtre de 90 jours. Le deal signé peut toujours être suivi dans votre CRM mais ne peut pas être uploadé dans Google Ads s'il s'est produit plus de 90 jours après le clic.

---

## Mapping du tunnel de conversion pour le lead gen

### Quelles étapes importer

| **Étape du tunnel** | **Importer dans Google Ads ?** | **Rôle d'optimisation** | **Justification** |
|-----------------|--------------------------|----------------------|-------------|
| **Lead** (soumission de formulaire) | Oui (pixel GACT on-site) | Secondary ou Primary (dépend du volume) | Signal de volume : suit l'engagement initial |
| **MQL** (lead qualifié marketing) | Optionnel | Secondary | Signal intermédiaire : utile si le cycle de vente est très long |
| **SQL** (lead qualifié vente) | Recommandé | Primary ou Secondary | Signal de qualité : plus proche du CA que le lead brut |
| **Proposition / Opportunité** | Optionnel | Secondary | Suivi de jalon : utile pour les longs cycles B2B |
| **Deal signé** | Oui | Primary | Signal de CA : le résultat business ultime |

### Choisir votre conversion hors ligne primary

| **Scénario** | **Conversion primary** | **Pourquoi** |
|-------------|----------------------|--------|
| 30+ deals signés par mois | Deal signé | Volume suffisant pour Stratégies d'enchères intelligentes à l'étape du tunnel la plus profonde |
| 30+ leads qualifiés par mois, <30 deals signés | Lead qualifié | Plus de volume, toujours un signal de qualité au-delà du lead brut |
| <30 leads qualifiés par mois | Lead on-site (soumission de formulaire) | Utilisez comme primary pour la stratégie d'enchères, importez les étapes hors ligne comme secondary pour les insights |
| Cycle de vente dépassant 90 jours | Étape hors ligne significative la plus précoce dans la fenêtre de 90 jours | Impossible d'uploader au-delà du lookback de 90 jours |

---

## Stratégie d'enchères basée sur la valeur avec OCT

### Fonctionnement

Quand vous importez des conversions hors ligne avec des valeurs de deal, Stratégies d'enchères intelligentes peut optimiser pour le CA (ROAS cible) au lieu du volume (CPA cible). Cela signifie que Google enchérit plus haut pour les clics plus susceptibles de produire des deals à haute valeur.

| **Approche de stratégie d'enchères** | **Exigence d'import** | **Stratégie d'enchères** |
|---------------------|----------------------|-----------------|
| Basé sur le volume (CPA cible) | Conversion hors ligne sans valeur ou avec valeur statique | CPA cible |
| Basé sur le CA (ROAS cible) | Conversion hors ligne avec CA dynamique par deal | ROAS cible |
| Basé sur le profit (tPOAS) | Conversion hors ligne avec profit brut dynamique par deal | ROAS cible sur l'action de conversion de profit |

### Assigner des valeurs

| **Approche** | **Comment** | **Quand utiliser** |
|-------------|--------|----------------|
| **Valeur dynamique** | Uploadez la valeur réelle du deal par conversion | Quand les valeurs de deal varient significativement entre les leads |
| **Valeur statique** | Utilisez la valeur moyenne de deal pour toutes les conversions d'une étape | Quand les valeurs de deal sont relativement constantes |
| **Valeur calculée** | Multipliez la valeur moyenne de deal par le taux de closing spécifique à l'étape | Quand vous optimisez pour une étape précoce du tunnel (ex. valeur SQL = valeur moyenne deal x taux de closing SQL) |

---

## Erreurs courantes

| **Erreur** | **Problème** | **Solution** |
|-------------|-------------|---------|
| Ne tracker que les leads on-site, pas les résultats hors ligne | Optimiser pour la quantité de leads au lieu de la qualité | Implémentez l'OCT avec au moins les étapes lead qualifié et deal signé |
| Uploader au-delà de la fenêtre de lookback de 90 jours | Conversions rejetées par Google Ads | Importez des étapes de tunnel plus précoces qui se produisent dans les 90 jours du clic |
| Ne pas inclure l'état de consentement dans l'upload | Problèmes de conformité vie privée dans les régions RGPD/EEE | Capturez l'état de consentement à la soumission du formulaire, incluez dans le payload d'upload |
| Utiliser EC4L uniquement sans GCLID | Taux de correspondance plus bas que nécessaire | Implémentez l'approche hybride : GCLID en principal, EC4L en secours |
| Uploader immédiatement après le clic | Le click ID n'est pas encore traité par Google | Attendez au moins 24 heures avant d'uploader |
| Créer des actions de conversion séparées par méthode | Fragmente les données de conversion, affaiblit le signal Stratégies d'enchères intelligentes | Utilisez une action de conversion par étape du tunnel, envoyez les deux méthodes dedans |
| Ne pas envoyer de valeur avec les conversions hors ligne | Impossible d'utiliser la stratégie d'enchères basée sur la valeur (ROAS cible/tPOAS) | Incluez toujours la valeur du deal (CA ou profit) dans les uploads |
| Champs cachés manquants sur certains formulaires | GCLID non capturé pour les leads de ces formulaires | Ajoutez les champs cachés (gclid, gbraid, wbraid, consent_state) à chaque formulaire du site web |
| Ne pas prioriser correctement les types de click ID | Upload rejeté ou mal attribué | Suivez la priorité : gclid > gbraid > wbraid > EC4L (email/téléphone) |

---

## Documents liés

| **Document** | **Relation** |
|--------------|------------------|
| [Measurement Maturity Mental Model](<../../01-strategie/reporting/Reporting - Maturité de la mesure.md>) | L'OCT est une étape clé dans le parcours de maturité de la mesure |
| [Conversion Pixel Reference](<Suivi - Pixel de conversion.md>) | Le pixel GACT on-site doit être en place avant que l'OCT puisse attribuer les conversions hors ligne aux clics |
| [Enhanced Conversions Reference](<Suivi - Enhanced Conversions.md>) | EC4L est une méthode OCT principale documentée en détail |
| [Conversion Action Reference](<Suivi - Actions de conversion.md>) | Les actions de conversion hors ligne utilisent le type Import avec des paramètres spécifiques de comptage et de valeur |
| [Conversion Volume Thresholds Reference](<Suivi - Seuils de volume de conversions.md>) | Les seuils déterminent si les conversions hors ligne peuvent servir de signal principal pour la stratégie d'enchères |
