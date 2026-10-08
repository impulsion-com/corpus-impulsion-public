# Consent Mode

> **Plateforme :** Google Ads
> **Catégorie :** Suivi
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Documente la configuration de Google Consent Mode V2, les signaux de consentement, les mécanismes de modélisation des conversions et les méthodes d'intégration CMP pour maintenir la précision des données de conversion sous les réglementations de confidentialité.

---

## Ce que couvre cette fiche / Ce qu'elle ne couvre PAS

**Cette fiche :**

- Définit les quatre signaux de consentement et leur impact sur le comportement des tags
- Explique comment la modélisation des conversions récupère les données de conversion non consenties
- Documente les deux méthodes d'implémentation (Google Tag et GTM avec CMP)
- Couvre les vérifications de consentement intégrées vs. manuelles pour les tags Google et non-Google

**Cette fiche ne couvre PAS :**

- Fournir une procédure étape par étape de configuration de Consent Mode (Voir : future SOP : Configurer Consent Mode)
- Expliquer la feuille de route complète de maturité de la mesure (Voir : [Measurement Maturity Mental Model](<../../01-strategie/reporting/Reporting - Maturité de la mesure.md>))
- Couvrir les paramètres de configuration des actions de conversion (Voir : [Conversion Action Reference](<Suivi - Actions de conversion.md>))

---

## Aide-mémoire : signaux de consentement

| **Signal** | **Contrôle** | **Défaut (refusé)** | **Version** |
|------------|-------------|---------------------|-------------|
| `ad_storage` | Cookies Google Ads (suivi des conversions, remarketing) | Les tags se déclenchent avec des pings limités, sans cookie | V1 (original) |
| `analytics_storage` | Cookies Google Analytics (mesure GA4) | Les tags se déclenchent sans stocker de cookies analytics | V1 (original) |
| `ad_user_data` | Si les données utilisateur peuvent être envoyées à Google pour la publicité | Les données utilisateur ne sont pas envoyées pour la personnalisation publicitaire | V2 (requis) |
| `ad_personalization` | Si les données utilisateur peuvent être utilisées pour le remarketing | Pas d'annonces personnalisées diffusées | V2 (requis) |

> ⚠️ **V2 est obligatoire dans l'UE/EEE depuis mars 2024 :** Les comptes sans Consent Mode V2 perdent les audiences de remarketing et la modélisation des conversions dans les régions concernées. Implémentez les deux signaux V2 (`ad_user_data` et `ad_personalization`) aux côtés des signaux V1 originaux.

---

## Comment fonctionne Consent Mode

### Mécanisme principal

Consent Mode agit comme une couche entre votre plateforme de gestion du consentement (CMP) et vos tags Google. Il ne bloque ni n'autorise directement les cookies. Il ajuste le comportement des tags en fonction de l'état de consentement communiqué par la CMP.

| **État du consentement** | **Comportement des tags** | **Données collectées** |
|-------------------|-----------------|-------------------|
| Accordé (tous les signaux) | Les tags se déclenchent normalement avec accès complet aux cookies | Données de conversion complètes, remarketing, analytics |
| Refusé (tous les signaux) | Les tags envoient des pings sans cookie avec des données limitées | Pings anonymisés : horodatage, user agent, referrer, état du consentement |
| Partiel (signaux mixtes) | Chaque tag respecte son signal pertinent indépendamment | Varie selon la combinaison de signaux |

### Ce qui se passe quand le consentement est refusé

1. Les tags Google se déclenchent quand même, mais envoient des pings sans cookie, anonymisés
2. Aucun cookie n'est écrit sur le navigateur de l'utilisateur
3. Aucune information personnellement identifiable n'est collectée
4. Google utilise les pings anonymisés comme entrée pour la modélisation des conversions

---

## Processus de modélisation des conversions

Google utilise un modèle statistique en quatre étapes pour estimer les conversions des utilisateurs qui ont refusé le consentement :

| **Étape** | **Action** | **Détails** |
|----------|-----------|-------------|
| 1. Séparer les clics | Diviser le trafic en groupes consentis et non consentis | Basé sur l'état du signal de consentement au moment du clic |
| 2. Former des sous-groupes | Grouper les utilisateurs par caractéristiques partagées | Type d'appareil, navigateur, géo, heure du jour, Landing Page |
| 3. Correspondre les caractéristiques | Comparer les patterns de conversion consentis aux sous-groupes non consentis | Correspondance statistique au sein de chaque sous-groupe |
| 4. Lier les conversions | Estimer les conversions non consenties basées sur les patterns consentis | Les conversions modélisées sont ajoutées aux rapports |

> 💡 **Les conversions modélisées apparaissent dans vos colonnes de conversion standard :** Elles ne sont pas reportées séparément. Google les fusionne dans vos données de conversion existantes pour maintenir la qualité du signal pour Stratégies d'enchères intelligentes.

### Récupération attendue des conversions

| **Taux de refus du consentement** | **Récupération estimée de conversions** | **Impact net** |
|---------------------------|----------------------------------|----------------|
| 10-20% des utilisateurs refusent | ~5-10% d'uplift de conversions vs. pas de Consent Mode | Récupération modérée |
| 20-40% des utilisateurs refusent | ~10-18% d'uplift de conversions vs. pas de Consent Mode | Récupération significative |
| 40%+ des utilisateurs refusent | ~15-18% d'uplift de conversions (plafonné) | Forte récupération, mais la précision de la modélisation diminue |

> ⚠️ **La récupération par modélisation dépend du volume de trafic.** Les comptes avec 100+ conversions quotidiennes voient une modélisation fiable. Les comptes en dessous de 100 conversions quotidiennes voient une modélisation moins stable avec une variance plus large. En dessous de 30 conversions quotidiennes, la modélisation n'est pas fiable.

### Diagnostiquer une modélisation cassée

| Signal | Ce que ça signifie | Action |
|--------|--------------|--------|
| Conversions modélisées = 0 malgré du trafic avec consentement refusé | Les tags Consent Mode ne se déclenchent pas correctement en état refusé | Vérifiez l'implémentation des signaux de consentement dans Tag Assistant : vérifiez que les tags se déclenchent en mode "denied" (pas bloqués entièrement) |
| Baisse soudaine >50% des conversions modélisées | Le taux de consentement a changé ou la configuration des tags a cassé | Vérifiez les tendances du taux de consentement CMP pour la période, vérifiez que le déploiement des tags n'a pas changé |
| Les conversions modélisées dépassent les conversions observées de >30% | Sur-modélisation (rare, indique généralement un problème d'implémentation) | Vérifiez que les signaux de consentement distinguent correctement les états accordé vs. refusé |
| "Consent Mode non détecté" dans Tag Assistant | Implémentation manquante ou non déployée | Ré-implémentez les signaux de consentement selon la méthode de configuration de cette fiche |

---

## Méthodes d'implémentation

### Méthode 1 : Google Tag (codé en dur)

Définissez les états de consentement par défaut directement dans le Google Tag sur chaque page.

```javascript
gtag('consent', 'default', {
  'ad_storage': 'denied',
  'analytics_storage': 'denied',
  'ad_user_data': 'denied',
  'ad_personalization': 'denied'
});
```

Quand la CMP collecte le consentement, mettez à jour l'état :

```javascript
gtag('consent', 'update', {
  'ad_storage': 'granted',
  'analytics_storage': 'granted',
  'ad_user_data': 'granted',
  'ad_personalization': 'granted'
});
```

**Idéal pour :** Les implémentations simples sans GTM, les configurations à tag unique.

### Méthode 2 : GTM avec modèle CMP de la galerie (recommandé)

| **Étape** | **Action** | **Où** |
|----------|-----------|-----------|
| 1 | Activer l'aperçu du consentement | Paramètres du conteneur GTM > Activer l'aperçu du consentement |
| 2 | Ajouter le modèle CMP de la galerie | Modèles GTM > Rechercher dans la galerie (ex. Cookiebot, OneTrust, CookieYes) |
| 3 | Configurer le tag CMP | Ajouter le tag CMP, définir les états de consentement par défaut, mapper les catégories CMP aux signaux Google |
| 4 | Définir le déclencheur | Déclencher le tag CMP sur Consent Initialization (se déclenche avant All Pages) |
| 5 | Vérifier l'aperçu du consentement | Vérifier le tableau de bord Aperçu du consentement pour confirmer que tous les tags affichent les bonnes exigences de consentement |

**Idéal pour :** La plupart des implémentations. Recommandé pour les comptes utilisant GTM avec plusieurs tags.

> 💡 **Le modèle CMP de la galerie gère automatiquement les appels default et update :** Vous configurez le mapping une fois, et le modèle gère les changements d'état de consentement quand les utilisateurs interagissent avec la bannière cookie.

---

## Vérifications de consentement intégrées vs. manuelles

### Tags Google (vérifications de consentement intégrées)

Les tags Google (suivi des conversions Google Ads, Google Analytics, Floodlight) ont des vérifications de consentement intégrées. Ils lisent automatiquement l'état du consentement et ajustent leur comportement. Aucune configuration supplémentaire requise au-delà de la mise en place de Consent Mode.

| **Type de tag** | **Vérification du consentement** | **Configuration supplémentaire** |
|--------------|-------------------|---------------------|
| Google Ads Conversion Tracking | Intégrée | Aucune |
| Google Ads Remarketing | Intégrée | Aucune |
| Configuration GA4 | Intégrée | Aucune |
| Événement GA4 | Intégrée | Aucune |
| Floodlight | Intégrée | Aucune |

### Tags non-Google (vérifications de consentement manuelles requises)

Les tags non-Google (LinkedIn Insight, Meta Pixel, TikTok Pixel) ne lisent pas les signaux Google Consent Mode. Vous devez configurer des vérifications de consentement manuelles.

| **Type de tag** | **Vérification du consentement** | **Configuration requise** |
|--------------|-------------------|-------------------|
| LinkedIn Insight Tag | Manuelle | Ajouter l'exigence de consentement dans les paramètres du tag, créer un déclencheur Cookie Consent Update |
| Meta Pixel | Manuelle | Ajouter l'exigence de consentement dans les paramètres du tag, créer un déclencheur Cookie Consent Update |
| TikTok Pixel | Manuelle | Ajouter l'exigence de consentement dans les paramètres du tag, créer un déclencheur Cookie Consent Update |
| Tout tag HTML personnalisé | Manuelle | Ajouter l'exigence de consentement dans les paramètres du tag, créer un déclencheur Cookie Consent Update |

### Déclencheur Cookie Consent Update

Pour les tags non-Google, créez un déclencheur dans GTM :

| **Paramètre** | **Valeur** |
|-------------|----------|
| Type de déclencheur | Événement personnalisé |
| Nom de l'événement | `cookie_consent_update` |
| Se déclenche sur | Tous les événements personnalisés |

Assignez ce déclencheur comme déclencheur de déclenchement supplémentaire sur chaque tag non-Google. Cela garantit que les tags non-Google se déclenchent (ou se re-déclenchent) quand l'utilisateur accorde le consentement après le chargement initial de la page.

---

## Diagnostics et vérification

### Comment vérifier que Consent Mode fonctionne

| **Méthode** | **Où** | **Quoi vérifier** |
|-----------|----------|-------------------|
| Diagnostics de l'action de conversion | Google Ads > Objectifs > Conversions > [Action] > Diagnostics | Le statut Consent Mode affiche "Actif" |
| Mode aperçu GTM | GTM > Aperçu | Les changements d'état de consentement visibles dans la timeline des événements |
| Aperçu du consentement GTM | GTM > Admin > Paramètres du conteneur > Aperçu du consentement | Tous les tags affichent les bonnes exigences de consentement |
| Outils développeur du navigateur | Onglet Réseau | Filtrer les requêtes `google`, vérifier le paramètre `gcs` dans les requêtes |

### Exigences légales

| **Région** | **Exigence** | **Date limite** |
|-----------|----------------|-------------|
| UE/EEE | Consent Mode V2 obligatoire pour les fonctionnalités Google Ads | Mars 2024 (en application) |
| UK | Recommandé, aligné avec les recommandations ICO | Fortement recommandé |
| Mondial | Recommandé pour la conformité confidentialité et la récupération de données | Pas de date limite, bonne pratique |

---

## Erreurs courantes

| **Erreur** | **Problème** | **Solution** |
|-------------|-------------|---------|
| Ne pas implémenter les signaux V2 | Perte des audiences de remarketing et de la modélisation des conversions dans l'UE/EEE | Ajoutez les signaux `ad_user_data` et `ad_personalization` |
| Le tag CMP se déclenche après les tags Google | L'état de consentement n'est pas défini avant le déclenchement des tags, données perdues | Utilisez le déclencheur Consent Initialization (se déclenche avant All Pages) |
| Consentement par défaut défini sur "granted" | Viole le RGPD, aucun bénéfice de modélisation | Définissez tous les défauts sur "denied" pour les visiteurs UE/EEE |
| Tags non-Google sans vérifications de consentement manuelles | Les tags se déclenchent indépendamment de l'état de consentement, violation légale potentielle | Ajoutez les exigences de consentement et le déclencheur Cookie Consent Update |
| Pas de vérification dans les diagnostics | Impossible de savoir si la modélisation est active | Vérifiez la page diagnostics de l'action de conversion mensuellement |
| Bloquer les tags entièrement au lieu d'utiliser Consent Mode | Zéro donnée des utilisateurs non consentis, pas d'entrée de modélisation | Laissez les tags se déclencher avec Consent Mode (les pings sans cookie permettent la modélisation) |

---

## Documents liés

| **Document** | **Relation** |
|--------------|------------------|
| [Measurement Maturity Mental Model](<../../01-strategie/reporting/Reporting - Maturité de la mesure.md>) | Consent Mode est une technique de mesure fondamentale |
| [Conversion Action Reference](<Suivi - Actions de conversion.md>) | Les actions de conversion reçoivent les conversions modélisées de Consent Mode |
| [Conversion Volume Thresholds Reference](<Suivi - Seuils de volume de conversions.md>) | Consent Mode aide à maintenir le volume de conversions au-dessus des seuils |
