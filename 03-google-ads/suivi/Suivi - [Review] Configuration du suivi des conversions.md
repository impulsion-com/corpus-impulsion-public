# Configuration du suivi des conversions

> **Plateforme :** Google Ads
> **Catégorie :** Suivi
> **Type :** Checklist
> **Mis à jour :** 2026-05-07

## Objectif

Valide que la configuration du suivi des conversions est complète et correctement paramétrée sur toutes les couches : tracking (suivi des conversions/évènements) fondation, tagging server-side, Enhanced Conversions, suivi des conversions hors ligne, Consent Mode et fonctionnalités avancées.

---

## Ce que cette checklist valide

Cette checklist confirme :

- Le tracking de conversion fondation est implémenté et se déclenche correctement
- Les paramètres des actions de conversion correspondent aux exigences du vertical
- Les Transaction IDs sont en place pour la déduplication et les ajustements
- Le tagging server-side est configuré (si applicable)
- Les Enhanced Conversions sont actives et saines
- Le suivi des conversions hors ligne est configuré (lead gen/SaaS)
- Le Consent Mode est actif et modélise
- Les fonctionnalités avancées sont implémentées par priorité

Cette checklist ne couvre **PAS** :

- L'explication de chaque fonctionnalité (Voir : [Conversion Action Reference](<Suivi - Actions de conversion.md>))
- Les recommandations de paramètres spécifiques (Voir : [Conversion Tracking Configuration Guidelines](<Suivi - Configuration du suivi des conversions.md>))
- La validation continue de la qualité des données (Voir : [Conversion Data Quality Checklist](<Suivi - [Review] Qualité des données de conversion.md>))
- Les instructions de configuration pas à pas (Voir : [SOP - Configurer le suivi des conversions Google Ads](<Suivi - Configurer le suivi des conversions Google Ads.md>))

---

## Quand l'utiliser

Exécuter cette checklist :

- Après la configuration initiale du suivi des conversions
- Après une migration de site web ou un changement de domaine
- Après une mise à jour du CMS ou une migration de plateforme
- Après une restructuration du conteneur GTM
- Trimestriellement dans le cadre d'un audit du tracking
- Lors de l'onboarding d'un nouveau compte client

---

## Checklist

### Fondation

- [ ] Au moins une action de conversion macro existe et est définie comme Principale
- [ ] La conversion macro se déclenche sur le bon déclencheur ou la bonne page (achat, soumission de formulaire, inscription)
- [ ] La valeur de conversion est passée dynamiquement (pas une valeur statique de 1€ ou par défaut)
- [ ] Le Transaction ID est rempli avec une valeur unique par conversion
- [ ] Le modèle d'attribution est défini sur Data-Driven (pas Last Click)
- [ ] La fenêtre de conversion après clic correspond au cycle de vente (vérifié via Path Metrics)
- [ ] La méthode de comptage est correcte (Chaque pour l'e-commerce, Une pour le lead gen)
- [ ] Les catégories d'objectifs sont correctement assignées (Achat, Lead, Inscription, etc.)
- [ ] L'objectif par défaut du compte inclut la bonne conversion macro principale
- [ ] Les objectifs spécifiques à la campagne sont définis quand nécessaire (campagnes haut du tunnel, expérimentations)
- [ ] Le tag conversion linker se déclenche sur toutes les pages (GTM) ou le tag global est présent sur toutes les pages (gtag)
- [ ] Aucune métrique vaniteuse n'est définie comme action de conversion (profondeur de scroll, temps passé, taux de rebond)
- [ ] Les micro-conversions sont définies comme Secondaires (pas Principales, sauf si intentionnellement utilisées pour la stratégie d'enchères)
- [ ] Aucune action de conversion en double comptant le même événement

> ⚠️ **Le Transaction ID est non négociable :** Sans lui, vous ne pouvez pas dédupliquer les conversions ni utiliser les ajustements de conversion. Vérifiez qu'une valeur unique (ID de commande, ID de soumission de formulaire) est transmise à chaque conversion.

### Tagging Server-Side (si applicable)

- [ ] Le conteneur serveur est déployé et accessible
- [ ] Un sous-domaine personnalisé est configuré (ex. `data.votredomaine.com`)
- [ ] Le certificat SSL est actif sur le sous-domaine
- [ ] Le conteneur web route les données vers le conteneur serveur via l'URL de transport
- [ ] Le conteneur serveur transmet les données au endpoint Google Ads
- [ ] Le conteneur serveur transmet les données au endpoint GA4
- [ ] Le tag de conversion server-side se déclenche et enregistre des conversions
- [ ] La durée du cookie first-party est étendue (jusqu'à 2 ans via le server-side)
- [ ] Un monitoring de santé est en place (vérification de disponibilité du conteneur serveur)

### Enhanced Conversions

- [ ] Enhanced Conversions activées dans les paramètres de l'action de conversion Google Ads
- [ ] La variable adresse email est correctement renseignée (hashage automatique)
- [ ] La variable numéro de téléphone est renseignée (optionnel mais recommandé)
- [ ] Les variables prénom et nom sont renseignées (optionnel, améliore le taux de correspondance)
- [ ] Les variables d'adresse sont renseignées (optionnel, améliore le taux de correspondance)
- [ ] La page diagnostics affiche une coche verte ou un statut actif
- [ ] Le taux de correspondance est dans la fourchette acceptable (vérifier via les diagnostics)
- [ ] La méthode d'implémentation est documentée (tag GTM, tag global, ou API)

### Suivi des conversions hors ligne (Lead Gen / SaaS)

- [ ] Les actions de conversion d'import sont créées dans Google Ads (ex. "Lead Qualifié", "Deal Closé")
- [ ] Les actions de conversion d'import sont définies au bon niveau d'optimisation (Principale ou Secondaire)
- [ ] Le GCLID est capturé depuis l'URL de la Landing Page et stocké dans le CRM
- [ ] Alternative : l'email hashé est capturé et stocké si la capture du GCLID n'est pas possible
- [ ] Les étapes du pipeline CRM correspondent aux actions de conversion Google Ads
- [ ] Le calendrier d'upload est configuré (quotidien ou hebdomadaire)
- [ ] Les valeurs de conversion sont assignées en fonction de l'étape du deal ou de la valeur réelle du deal
- [ ] Un upload de test a été complété avec succès sans erreurs
- [ ] La méthode d'upload est documentée (manuelle, Google Sheet programmé, ou API)

> 💡 **Pour les comptes lead gen, l'OCT est aussi important que le pixel initial :** Le suivi des soumissions de formulaire dit au Stratégies d'enchères intelligentes qui a rempli un formulaire. L'OCT lui dit qui est devenu un client payant. Sans OCT, le Stratégies d'enchères intelligentes optimise pour les formulaires remplis, pas pour le chiffre d'affaires.

### Consent Mode (obligatoire UE/EEE, recommandé globalement)

- [ ] La CMP (Consent Management Platform) est installée
- [ ] La CMP provient de la galerie Google CMP (modèle GTM)
- [ ] La bannière de consentement s'affiche correctement sur toutes les pages
- [ ] La bannière de consentement est accessible sur mobile
- [ ] L'état de consentement par défaut est configuré (refusé pour l'UE/EEE, accordé pour les autres régions)
- [ ] Les signaux Consent Mode V2 sont actifs : `ad_storage`
- [ ] Les signaux Consent Mode V2 sont actifs : `analytics_storage`
- [ ] Les signaux Consent Mode V2 sont actifs : `ad_user_data`
- [ ] Les signaux Consent Mode V2 sont actifs : `ad_personalization`
- [ ] Les diagnostics Google Ads confirment que le Consent Mode est actif
- [ ] La modélisation des conversions est active (vérifier dans les paramètres de l'action de conversion)
- [ ] Les tags non-Google ont des vérifications de consentement configurées dans GTM

### Fonctionnalités avancées

- [ ] Les Cart Data envoient des données d'achat au niveau produit (e-commerce)
- [ ] Le flux produits inclut l'attribut COGS (e-commerce, active la stratégie d'enchères basée sur le profit)
- [ ] Le paramètre de données nouveaux clients est renseigné (si une stratégie NCA est prévue ou active)
- [ ] Les variables personnalisées sont créées et activées (si les segments par défaut ne suffisent pas)
- [ ] Le calendrier d'upload des ajustements de conversion est configuré (retours e-commerce, mises à jour de valeur des leads (prospects))
- [ ] Le processus d'exclusion de données est documenté (qui l'applique, quand, comment)

---

## Référence rapide

| Document | Relation |
|----------|--------------|
| [Conversion Action Reference](<Suivi - Actions de conversion.md>) | Types et paramètres des actions de conversion |
| [Conversion Adjustments Reference](<Suivi - Offline Conversion Tracking.md>) | Types d'ajustements RESTATE et RETRACT |
| [Data Exclusions Reference](<Suivi - Exclusions de données.md>) | Fonctionnalité d'exclusion de données par période |
| [Conversion Tracking Configuration Guidelines](<Suivi - Configuration du suivi des conversions.md>) | Paramètres recommandés pour toutes les fonctionnalités |
| [Conversion Data Quality Checklist](<Suivi - [Review] Qualité des données de conversion.md>) | Validation continue de la qualité des données |
| [Conversion Volume Thresholds Reference](<Suivi - Seuils de volume de conversions.md>) | Volumes minimum pour les stratégies d'enchères |
| [Measurement Maturity Mental Model](<../../01-strategie/reporting/Reporting - Maturité de la mesure.md>) | Méthode stratégique pour la progression de la mesure |
| [SOP - Configurer le suivi des conversions Google Ads](<Suivi - Configurer le suivi des conversions Google Ads.md>) | Implémentation pas à pas |
