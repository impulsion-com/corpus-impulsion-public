# Configuration du suivi des conversions

> **Plateforme :** Google Ads
> **Catégorie :** Suivi
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Fournit les paramètres de configuration recommandés pour toutes les fonctionnalités de suivi des conversions selon les secteurs. Utilisez ce document comme source unique de vérité pour la configuration de chaque fonctionnalité de suivi de conversion.

---

## Ce que couvre / ne couvre pas ce document

**Ce document :**

- Recommande des paramètres spécifiques pour la configuration des actions de conversion
- Priorise les fonctionnalités de tracking (suivi des conversions/évènements) par secteur et niveau de dépenses
- Définit les recommandations d'attribution, de consentement et d'améliorations
- Liste les conditions d'exception pour chaque recommandation

**Ce document ne couvre PAS :**

- L'explication de ce que fait chaque fonctionnalité (Voir : [Conversion Action Reference](<Suivi - Actions de conversion.md>))
- Les instructions de configuration pas à pas (Voir : [SOP - Configurer le suivi des conversions Google Ads](<Suivi - Configurer le suivi des conversions Google Ads.md>))
- La validation de l'exhaustivité de la configuration (Voir : [Conversion Tracking Setup Checklist](<Suivi - Configuration du suivi des conversions.md>))
- Le cadre stratégique de maturité de la mesure (Voir : [Measurement Maturity Mental Model](<../../01-strategie/reporting/Reporting - Maturité de la mesure.md>))

---

## Configuration des actions de conversion

### Paramètres recommandés par secteur

| Paramètre | Ecommerce | Lead Gen | SaaS |
|---------|-----------|----------|------|
| **Catégorie d'objectif** | Achat | Lead / Envoi de formulaire | Inscription / Achat |
| **Optimisation** | Principale | Principale | Principale |
| **Modèle d'attribution** | Data-Driven | Data-Driven | Data-Driven |
| **Fenêtre de clic** | 30 jours (ajuster selon Path Metrics) | 30-60 jours (ajuster selon le cycle de vente) | 30-60 jours (ajuster selon la durée d'essai) |
| **Fenêtre post-vue** | 1 jour | 1 jour | 1 jour |
| **Fenêtre vue engagée** | 3 jours | 3 jours | 3 jours |
| **Méthode de comptage** | Toutes | Une | Une |
| **Type de valeur** | Dynamique (revenus réels) | Dynamique (valeur de deal estimée ou réelle) | Dynamique (valeur d'abonnement) |

### Calibration de la fenêtre de clic

N'acceptez pas le défaut de 30 jours sans vérifier votre décalage réel de conversion :

1. Allez dans Objectifs > Mesure > Attribution > Path Metrics
2. Vérifiez "Nombre moyen de jours avant conversion"
3. Définissez la fenêtre de clic à au moins 2x le décalage moyen de conversion

| Décalage moyen de conversion | Fenêtre recommandée |
|-----------------------|-------------------|
| 1-3 jours | 7-14 jours |
| 4-7 jours | 14-30 jours |
| 8-14 jours | 30-60 jours |
| 15-30 jours | 60-90 jours |

### Fenêtres post-vue et vue engagée

Gardez la fenêtre post-vue à 1 jour et la vue engagée à 3 jours sauf si vous avez des besoins spécifiques d'attribution haut du tunnel. Des fenêtres plus longues gonflent les comptages de conversions avec des attributions passives.

**Exception :** Augmenter la fenêtre post-vue à 3-7 jours quand vous lancez des campagnes YouTube ou Display dédiées et que vous voulez mesurer leur impact en conversions assistées via une action de conversion secondaire séparée.

---

## Recommandations pour les fonctionnalités fondamentales

Ce sont les technologies de tracking de base. Implémentez-les dans l'ordre de priorité.

| Fonctionnalité | Recommandation | Dépenses minimum | Secteur | Priorité |
|---------|---------------|--------------|----------|----------|
| Google Ads Conversion Tracking (GACT) | Toujours implémenter | Tout montant | Tous | 1 (requis) |
| Transaction ID | Toujours implémenter | Tout montant | Tous | 1 (requis) |
| Enhanced Conversions | Toujours implémenter | Tout montant | Tous | 2 (requis) |
| Server-Side Tagging (SST) | Recommandé | 5 000 EUR+/mois | Tous | 3 (recommandé) |
| Offline Conversion Tracking (OCT) | Requis | Tout montant | Lead Gen, SaaS | 2 (requis pour lead gen/SaaS) |

### GACT (Google Ads Conversion Tracking)

**Toujours implémenter :** C'est la fondation. GACT fournit les données de conversion les plus précises pour le Stratégies d'enchères intelligentes de Google Ads car il suit les conversions directement dans l'écosystème Google Ads.

**Exception :** Aucune. Tout compte Google Ads a besoin de GACT.

### Transaction ID

**Toujours implémenter :** Les Transaction IDs servent deux objectifs : la dédoublonnage (empêche de compter la même conversion deux fois) et l'activation des Conversion Adjustments (RESTATE/RETRACT).

Pour l'ecommerce : passez l'ID de commande comme paramètre transaction_id.
Pour le lead gen : passez un ID unique de soumission de formulaire ou un ID d'enregistrement CRM.

**Exception :** Aucune. Le coût d'implémentation est minimal et les bénéfices sont significatifs.

### Enhanced Conversions

**Toujours implémenter :** Les Enhanced Conversions utilisent des données first-party hashées (email, téléphone, adresse) pour récupérer les conversions perdues à cause des restrictions de cookies et des parcours cross-device.

Données minimum : adresse email (hashée automatiquement par le tag).
Données recommandées : email + numéro de téléphone + nom + adresse.

**Exception :** Aucune. Les Enhanced Conversions sont gratuites, respectent la vie privée et améliorent la qualité des données.

### Server-Side Tagging (SST)

**Recommandé pour les comptes dépensant 5 000 EUR+/mois :** Le SST déplace le traitement des tags du navigateur vers un serveur que vous contrôlez, améliorant la qualité des données, la vitesse de la page et la résilience face aux bloqueurs de publicités.

Prérequis : conteneur serveur Google Cloud, sous-domaine personnalisé avec SSL, implication du développeur.

**Exception :** Les comptes en dessous de 5 000 EUR/mois ne justifient peut-être pas le coût d'infrastructure. À réévaluer quand les dépenses augmentent.

### Offline Conversion Tracking (OCT)

**Requis pour le Lead Gen et le SaaS :** L'OCT importe les données de conversion en aval (leads (prospects) qualifiés, deals conclus, achats d'abonnements) depuis votre CRM dans Google Ads, donnant au Stratégies d'enchères intelligentes de vrais résultats business au lieu de simples soumissions de formulaires.

**Exception :** Les comptes ecommerce ont rarement besoin d'OCT sauf pour suivre les conversions en magasin générées par des publicités en ligne.

---

## Recommandations pour les fonctionnalités avancées

Implémentez celles-ci une fois que les fondations sont solides. L'ordre de priorité varie par secteur.

### Ordre de priorité ecommerce

| Priorité | Fonctionnalité | Ce que ça fait | Recommandation |
|----------|---------|-------------|----------------|
| 1 | Cart Data | Envoie les données d'achat au niveau produit | Implémenter : permet l'analyse ROAS au niveau produit |
| 2 | COGS dans le flux produit | Ajoute le coût des marchandises vendues au Shopping/PMax | Implémenter : permet les enchères basées sur le profit |
| 3 | Conversion Adjustments | Corrige les retours et les ventes additionnelles | Planifier des imports réguliers (quotidiens ou hebdomadaires) |
| 4 | New Customer Data | Identifie les clients nouveaux vs récurrents | Implémenter lors du lancement de campagnes NCA (New Customer Acquisition) |
| 5 | Custom Variables | Segmente les conversions par dimensions personnalisées | Implémenter quand les segments par défaut sont insuffisants |

### Ordre de priorité lead gen

| Priorité | Fonctionnalité | Ce que ça fait | Recommandation |
|----------|---------|-------------|----------------|
| 1 | OCT (basé sur GCLID) | Importe les résultats CRM dans Google Ads | Requis : importer les leads qualifiés et les deals conclus |
| 2 | Conversion Adjustments | Met à jour les valeurs des leads au fur et à mesure de la progression dans le CRM | Planifier les imports à chaque mise à jour des étapes CRM |
| 3 | Custom Variables | Segmente par source de lead, niveau de qualité, etc. | Implémenter quand les segments par défaut sont insuffisants |
| 4 | New Customer Data | Identifie les clients nouveaux vs existants | Implémenter quand la distinction acquisition vs rétention est importante |

### Ordre de priorité SaaS

| Priorité | Fonctionnalité | Ce que ça fait | Recommandation |
|----------|---------|-------------|----------------|
| 1 | OCT (basé sur GCLID) | Importe les données essai-vers-payant et d'abonnement | Requis : importer les conversions payantes et les données de LTV |
| 2 | Conversion Adjustments | Met à jour les valeurs d'abonnement (upgrades, churn) | Planifier les imports à chaque changement de statut d'abonnement |
| 3 | Custom Variables | Segmente par type de plan, source d'essai, etc. | Implémenter quand les segments par défaut sont insuffisants |
| 4 | New Customer Data | Identifie les nouvelles inscriptions vs les utilisateurs récurrents | Implémenter quand les campagnes d'acquisition sont distinctes |

---

## Recommandations d'attribution

### Sélection du modèle

**Toujours utiliser l'attribution Data-Driven (DDA) :** C'est le modèle qui fournit la distribution de crédit la plus précise entre les points de contact. L'attribution au dernier clic sous-crédite systématiquement les interactions haut et milieu du tunnel.

**Exception :** Aucune. DDA est le défaut recommandé pour tous les comptes.

### Attribution cross-canal GA4

Si vous importez des événements GA4 comme actions de conversion, envisagez d'activer le paramètre d'attribution "canaux payants et organiques" dans GA4. Cela réduit la sur-attribution aux clics payants en incluant les points de contact organiques dans le modèle.

| Paramètre | Effet | Recommandé pour |
|---------|--------|----------------|
| Canaux payants Google uniquement (par défaut) | Tout le crédit va aux points de contact Google Ads | Les comptes qui utilisent uniquement Google Ads |
| Canaux payants et organiques | Le crédit est distribué entre les points de contact payants et organiques Google | Les comptes avec un trafic organique significatif |

### Calibration de la sur-attribution

Google Ads sur-attribue généralement les conversions par rapport aux données backend. Connaissez votre ratio de sur-attribution et ajustez vos objectifs en conséquence.

**Formule de recalibration :** Si Google rapporte 300% de ROAS mais que le backend montre 220%, définissez le ROAS cible à ~410% dans Google Ads (300 / 220 x 300) pour atteindre une vraie performance de 300%.

---

## Recommandations Consent Mode

### Quand c'est requis

| Région | Exigence |
|--------|------------|
| UE/EEE | Requis par la loi (RGPD) |
| Royaume-Uni | Requis par la loi (UK GDPR) |
| Californie | Recommandé (CCPA) |
| Toutes les autres régions | Recommandé (anticipation) |

### Implémentation

| Paramètre | Recommandation |
|---------|---------------|
| CMP (Consent Management Platform) | Utiliser une CMP certifiée Google depuis la galerie CMP dans GTM |
| Version Consent Mode | V2 (requis depuis mars 2024) |
| Signaux de consentement | Activer les quatre : `ad_storage`, `analytics_storage`, `ad_user_data`, `ad_personalization` |
| État de consentement par défaut | Défini sur "denied" pour les utilisateurs UE/EEE, "granted" pour les autres régions |
| Modélisation des conversions | Activée automatiquement quand Consent Mode est actif |

### Vérification de santé du Consent Mode

Après implémentation, vérifiez dans Google Ads :

| Vérification | Attendu |
|-------|----------|
| Statut Consent Mode | Actif |
| Modélisation des conversions | Active, montrant des conversions modélisées |
| Uplift de modélisation | 5-20% (plage raisonnable) |

> Si l'uplift de modélisation dépasse 50%, investiguer. Cela suggère un taux de refus de consentement très élevé ou une mauvaise configuration. Vérifiez que votre CMP s'affiche correctement et que l'état de consentement par défaut est défini de manière appropriée pour chaque région.

---

## Recommandations Conversion Adjustments

| Secteur | Recommandation | Fréquence |
|----------|---------------|-----------|
| Ecommerce | Planifier des imports réguliers pour les retours et retours partiels | Quotidien ou hebdomadaire |
| Lead Gen | Importer à chaque mise à jour des étapes CRM (lead qualifié, deal conclu, deal perdu) | Hebdomadaire ou à chaque événement |
| SaaS | Importer à chaque événement d'abonnement (upgrade, downgrade, churn) | Hebdomadaire ou à chaque événement |

**Importez tous les ajustements, pas uniquement ceux attribués à Google :** Vous ne pouvez pas déterminer quelles conversions Google a attribuées. Importez tout et laissez Google faire le matching.

**Exception :** Si votre taux de retour est inférieur à 2% et que les valeurs moyennes de commande sont stables, l'impact des ajustements est minimal. Toujours recommandé mais de moindre priorité.

---

## Recommandations exclusions de données

| Situation | Action | Timing |
|-----------|--------|--------|
| Panne de tracking détectée | Appliquer une exclusion de données immédiatement | Dans les heures suivant la détection |
| Temps d'arrêt du site | Appliquer l'exclusion couvrant toute la fenêtre d'arrêt | Dès que le site est rétabli |
| Panne du processeur de paiement | Appliquer l'exclusion pour la période et les appareils affectés | Dès que le processeur est rétabli |
| Erreur de tag déployée | Appliquer l'exclusion, puis corriger le tag | Immédiatement |

**Documentez chaque panne de tracking** dans un journal (tableur ou outil de gestion de projet) et appliquez l'exclusion de données correspondante dans les 24 heures.

**Exception :** Si la panne a duré moins d'1 heure et a affecté moins de 5% du trafic quotidien, l'impact sur Stratégies d'enchères intelligentes est négligeable. Utilisez votre jugement.

---

## Vérification de la configuration

Après avoir configuré ou audité le suivi des conversions, vérifiez ces paramètres :

| Fonctionnalité | Vérification | Attendu |
|---------|-------|----------|
| Action de conversion principale | Existe et se déclenche correctement | Au moins une macro conversion définie comme Principale |
| Modèle d'attribution | Défini sur DDA | Data-Driven pour toutes les actions de conversion |
| Fenêtre de clic | Correspond au cycle de vente | 2x le décalage moyen de conversion |
| Méthode de comptage | Correspond au secteur | Toutes (ecommerce), Une (lead gen/SaaS) |
| Transaction ID | Renseigné sur les conversions | Valeur unique par conversion |
| Enhanced Conversions | Activé et en bonne santé | La page de diagnostic montre un statut actif |
| Consent Mode | Actif avec modélisation | Signaux V2 actifs, modélisation entre 5-20% |
| Conversion Adjustments | Import régulier | Planning configuré (ecommerce, lead gen) |
| Exclusions de données | Appliquées pour toute panne | Aucune panne de tracking non traitée |

---

## Résumé des conditions d'exception

| Recommandation | Exception | Alternative |
|---------------|-----------|-------------|
| Attribution DDA | Aucune | Toujours utiliser DDA |
| Fenêtre de clic 30 jours | Cycle de vente plus court ou plus long | Calibrer via Path Metrics |
| Post-vue 1 jour | Besoins de mesure haut du tunnel | Augmenter à 3-7 jours sur une action secondaire séparée |
| Implémentation SST | Dépenses inférieures à 5 000 EUR/mois | Réévaluer quand les dépenses augmentent |
| OCT pour le lead gen | Aucune pour lead gen/SaaS | Toujours implémenter pour ces secteurs |
| Imports d'ajustements quotidiens | Taux de retour inférieur à 2% | Hebdomadaire acceptable |
| Consent Mode | Comptes hors UE/EEE sans exigence réglementaire | Toujours recommandé par anticipation |

---

## Documents liés

| Document | Relation |
|----------|--------------|
| [Conversion Action Reference](<Suivi - Actions de conversion.md>) | Paramètres détaillés pour chaque option d'action de conversion |
| [Conversion Adjustments Reference](<Suivi - Offline Conversion Tracking.md>) | Types d'ajustements RESTATE et RETRACT |
| [Data Exclusions Reference](<Suivi - Exclusions de données.md>) | Fonctionnalité d'exclusion de données par période |
| [Conversion Volume Thresholds Reference](<Suivi - Seuils de volume de conversions.md>) | Volumes minimum pour les stratégies d'enchères |
| [Measurement Maturity Mental Model](<../../01-strategie/reporting/Reporting - Maturité de la mesure.md>) | Cadre stratégique pour la progression de la mesure |
| [Conversion Tracking Setup Checklist](<Suivi - Configuration du suivi des conversions.md>) | Valide l'exhaustivité de la configuration |
| [Conversion Data Quality Checklist](<Suivi - [Review] Qualité des données de conversion.md>) | Valide la qualité continue des données |
| [SOP - Configurer le suivi des conversions Google Ads](<Suivi - Configurer le suivi des conversions Google Ads.md>) | Implémentation pas à pas |
