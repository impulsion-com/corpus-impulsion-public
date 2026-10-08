# Configurer le Google Consent Mode

> **Plateforme :** Google Ads
> **Catégorie :** Suivi
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Phase 1️⃣ : Configurer le compte CMP

### 1.1 Créer votre compte CMP

1. Rendez-vous chez le fournisseur CMP de votre choix (par exemple Cookiebot sur cookiebot.com)
2. Créez un compte et ajoutez votre domaine
3. Sélectionnez Google Consent Mode V2 comme type d'intégration
4. Configurez les catégories de consentement : ad_storage, analytics_storage, ad_personalization, ad_user_data

### 1.2 Configurer les valeurs par défaut du consentement

Définissez les états de consentement par défaut pour vos régions :

| Région | État de consentement par défaut | Raison |
|--------|----------------------|--------|
| EEE/UK | Denied (toutes catégories) | Le RGPD exige l'opt-in |
| US | Granted (toutes catégories) | Pas d'obligation fédérale d'opt-in |
| Reste du monde | Denied ou Granted | Selon la réglementation locale |

### 1.3 Récupérer votre Domain Group ID

1. Dans le tableau de bord de votre CMP, localisez les paramètres d'intégration
2. Copiez le Domain Group ID (aussi appelé CBID, Serial Number ou similaire selon le fournisseur)
3. Conservez cet ID pour la Phase 2

---

## Phase 2️⃣ : Installer le CMP dans GTM

### 2.1 Ajouter le modèle CMP depuis la GTM Gallery

1. Ouvrez Google Tag Manager
2. Allez dans Templates > Search Gallery
3. Recherchez votre fournisseur CMP (par exemple « Cookiebot CMP »)
4. Ajoutez le modèle à votre workspace

### 2.2 Créer le tag CMP

1. Allez dans Tags > New
2. Sélectionnez le modèle CMP que vous venez d'ajouter
3. Saisissez votre Domain Group ID
4. Activez Google Consent Mode V2 dans les paramètres du tag
5. Définissez les états de consentement par défaut pour correspondre à la Phase 1.2

### 2.3 Définir le déclencheur sur Consent Initialization

1. Sous Triggering, sélectionnez **Consent Initialization - All Pages**
2. Ce déclencheur se déclenche avant tous les autres tags, garantissant que l'état de consentement est défini en premier

> ⚠️ **Consent Initialization, pas All Pages :** Le tag CMP doit utiliser le déclencheur Consent Initialization. Utiliser « All Pages » fait se déclencher les tags avant que l'état de consentement soit défini, ce qui va à l'encontre de l'objectif.

### 2.4 Publier le workspace

1. Soumettez et publiez le conteneur GTM
2. Vérifiez que la bannière de consentement apparaît sur votre site

---

## Phase 3️⃣ : Configurer les vérifications de consentement

### 3.1 Google tags (vérifications de consentement intégrées)

Les tags Google Ads, GA4 et Floodlight ont des vérifications de consentement intégrées. Ils réalisent automatiquement les opérations suivantes :

- Lisent l'état de consentement depuis Consent Mode
- Adaptent leur comportement selon le statut granted/denied
- Envoient des pings sans cookies (cookieless) quand le consentement est refusé (pour le modeling de conversions)

Aucune configuration supplémentaire n'est nécessaire pour ces tags.

### 3.2 Tags non-Google (configuration manuelle du consentement)

Pour tout tag non-Google (Facebook Pixel, LinkedIn Insight, etc.) :

1. Allez dans Tags > sélectionnez le tag non-Google
2. Ouvrez Advanced Settings > Consent Settings
3. Cochez « Require additional consent for tag to fire »
4. Ajoutez `ad_storage` comme type de consentement requis

### 3.3 Créer un déclencheur de mise à jour du consentement (méthode alternative)

Si vos tags non-Google ont besoin d'un déclencheur dédié :

1. Allez dans Triggers > New
2. Sélectionnez Custom Event
3. Nom de l'évènement : `cookie_consent_update`
4. Ajoutez une condition : `ad_storage` equals `granted`
5. Assignez ce déclencheur aux tags marketing non-Google

> 💡 **Les tags Google gèrent le consentement nativement :** Ne configurez des vérifications de consentement manuelles que pour les tags tiers (non-Google). Ajouter des vérifications manuelles aux tags Google crée une complexité inutile.

---

## Phase 4️⃣ : Valider

### 4.1 Débugger les flux de consentement dans GTM

1. Ouvrez le mode Preview de GTM
2. Naviguez vers votre site dans le navigateur de débogage

**Test 1 : Deny all**

1. Cliquez sur « Deny All » ou « Reject » sur la bannière de consentement
2. Dans le panneau de débogage GTM, vérifiez :
   - L'état de consentement affiche `ad_storage: denied`, `analytics_storage: denied`
   - Les tags Google se déclenchent mais envoient des pings sans cookies (pas de suivi complet)
   - Les tags marketing non-Google NE se déclenchent PAS

**Test 2 : Accept all**

1. Effacez les cookies et rechargez la page
2. Cliquez sur « Accept All » sur la bannière de consentement
3. Dans le panneau de débogage GTM, vérifiez :
   - L'état de consentement affiche `ad_storage: granted`, `analytics_storage: granted`
   - Tous les tags se déclenchent normalement avec une collecte de données complète

**Test 3 : Consentement partiel**

1. Effacez les cookies et rechargez la page
2. Acceptez les analytics mais refusez le marketing (si votre CMP supporte le choix granulaire)
3. Vérifiez que les tags se déclenchent selon leurs exigences de consentement

### 4.2 Vérifier les diagnostics Google Ads

1. Ouvrez Google Ads
2. Allez dans Goals > Conversions > Diagnostics
3. Cherchez l'indicateur de statut Consent Mode
4. Confirmez qu'il affiche « Consent mode detected » pour vos actions de conversion

### 4.3 Vérifier l'éligibilité au modeling de conversions

Le modeling de conversions nécessite :

| Exigence | Seuil minimum |
|-------------|-------------------|
| Consent mode actif | Au moins 7 jours |
| Conversions avec consentement par jour | 100+ par action de conversion (Search), 1000+ (Display/Video) |

> ⚠️ **Le modeling n'est pas instantané :** Google a besoin de suffisamment de données de conversion avec consentement pour construire des modèles précis. Laissez passer 2 à 4 semaines après la configuration avant d'évaluer les données de conversions modélisées.

### 4.4 Checklist finale

- [ ] La bannière de consentement apparaît sur toutes les pages
- [ ] Le tag CMP se déclenche sur le déclencheur Consent Initialization
- [ ] Deny all : les tags Google envoient des pings sans cookies, les tags non-Google sont bloqués
- [ ] Accept all : tous les tags se déclenchent normalement
- [ ] Les diagnostics Google Ads affichent consent mode detected
- [ ] Aucune erreur GTM en mode Preview

---

### Validation et critères de complétion

Cette SOP est terminée quand :

- [ ] Le CMP est installé et la bannière de consentement apparaît sur toutes les pages
- [ ] Les signaux Consent Mode V2 sont actifs dans GTM
- [ ] Les tags Google envoient des pings sans cookies quand le consentement est refusé
- [ ] Les tags non-Google sont bloqués quand le consentement est refusé
- [ ] Les diagnostics Google Ads confirment que le consent mode est détecté
- [ ] Les tests de débogage passent pour les scénarios deny all, accept all et consentement partiel

---

### Passerelle de sortie

Une fois que le consent mode est actif :

| Délai | Action |
|-----------|--------|
| Immédiatement | Continuer vers la configuration du suivi des conversions ou d'autres SOP de mesure |
| Après 7 jours | Vérifier les diagnostics Google Ads pour l'éligibilité au modeling |
| Après 30 jours | Passer en revue l'exactitude des données de conversions modélisées |

**En cas de problème :**

| Problème | Rediriger vers |
|-------|----------|
| Les tags se déclenchent toujours quand le consentement est refusé | Revérifier la configuration du consentement en Phase 3 |
| Consent mode non détecté dans Google Ads | Vérifier que le modèle CMP est sur le déclencheur Consent Initialization |
| Les conversions modélisées n'apparaissent pas | Vérifier les seuils de volume minimum (Phase 4.3) |

---

### FAQ

**Q : Quel CMP dois-je utiliser ?**

R : N'importe quel CMP certifié Google fonctionne. Cookiebot, CookieYes et OneTrust sont des choix courants. Consultez la liste des partenaires CMP de Google pour les options certifiées.

**Q : Ai-je besoin du Consent Mode pour des campagnes US uniquement ?**

R : Pas légalement requis aujourd'hui, mais recommandé. Le consent mode prépare votre configuration pour l'avenir et améliore la qualité des données à mesure que les réglementations sur la confidentialité évoluent.

**Q : Que se passe-t-il pour les conversions quand les utilisateurs refusent le consentement ?**

R : Google utilise des pings sans cookies et du machine learning pour modéliser les conversions des utilisateurs qui n'ont pas consenti. Cela préserve des données de conversion approximatives pour les Stratégies d'enchères intelligentes.

---

### Procédures liées

| SOP | Relation |
|-----|--------------|
| [SOP - Configurer le suivi panier et profit](<Suivi - Configurer le suivi panier et profit.md>) | Aval : les données panier nécessitent que le consent mode soit actif |
| [SOP - Implementer la deduplication par Transaction ID](<Suivi - Implémenter la déduplication par Transaction ID.md>) | Parallèle : configuration de la déduplication en parallèle du consent mode |

---

### Erreurs fréquentes

| Erreur | Pourquoi ça arrive | Comment l'éviter |
|---------|----------------|--------------|
| Tag CMP sur « All Pages » au lieu de « Consent Initialization » | Sélection du déclencheur par défaut dans GTM | Toujours sélectionner le déclencheur Consent Initialization |
| Des tags non-Google se déclenchent sans consentement | Vérifications manuelles de consentement manquantes | Configurer les exigences de consentement pour chaque tag non-Google |
| Consent mode non détecté dans Google Ads | Le CMP n'envoie pas les signaux de consentement au bon format | Utiliser un modèle CMP certifié Google depuis la GTM Gallery |
| Le modeling de conversions ne s'active pas | Volume de conversions avec consentement insuffisant | Garantir 100+ conversions avec consentement par jour et par action |
