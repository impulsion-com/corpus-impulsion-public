# Santé du compte

> **Plateforme :** Google Ads
> **Catégorie :** Optimisation
> **Type :** Checklist
> **Mis à jour :** 2026-05-07

## Objectif

Valide que tous les contrôles de Layer 1️⃣ (santé/gouvernance) passent : le compte est structurellement sain, le tracking (suivi des conversions/évènements) fonctionne, les annonces sont approuvées, les Landing Pages se chargent et aucune modification non autorisée n'a eu lieu. Cette checklist se concentre sur des vérifications binaires pass/fail, pas sur l'analyse de performance.

---

## Ce que cette checklist valide

Cette checklist confirme :

- Le suivi des conversions est fonctionnel et enregistre des événements
- Les annonces et assets actifs ne sont pas refusés ou cassés
- Les URLs de Landing Page fonctionnent
- Les stratégies d'enchères fonctionnent sans erreurs ni limitations
- La santé du flux est acceptable (Shopping/PMax)
- Aucune modification non autorisée des paramètres n'a eu lieu

Cette checklist ne couvre **PAS** :

- L'analyse des tendances de performance (c'est le Layer 2️⃣/3️⃣ : Voir : [SOP - Revue de performance hebdomadaire](<../../01-strategie/reporting/Reporting - Revue de performance hebdomadaire.md>))
- Le diagnostic des causes racines (Voir : [SOP - Investiguer les anomalies de performance](<Optimisation - Investiguer les anomalies de performance.md>))
- Les vérifications stratégiques mensuelles (Voir : [Monthly Performance Review Checklist](<../../01-strategie/reporting/Reporting - Revue de performance mensuelle.md>))
- La validation de la configuration des alertes (Voir : [Alert Configuration Checklist](<Optimisation - [Review] Configuration des alertes.md>))

> ↪️ **Contexte des couches de monitoring :** Cette checklist couvre le Layer 1️⃣ (santé/gouvernance) du [Account Monitoring Mental Model](<Optimisation - Surveillance de compte.md>). Toujours compléter les vérifications du Layer 1️⃣ avant de passer au Layer 2️⃣ (performance) ou Layer 3️⃣ (objectifs). Si le tracking est cassé, les données de performance sont peu fiables.

---

## Quand l'utiliser

Exécuter cette checklist :

- Chaque jour ouvré dans le cadre du triage quotidien (10-15 minutes)
- Après le lancement d'une nouvelle campagne (exécuter quotidiennement pendant les 7 premiers jours)
- Après des modifications importantes du compte (enchères, budgets, tracking)

**Flexibilité de fréquence :**

| Contexte du compte | Fréquence par défaut | Augmenter quand | Diminuer quand |
|----------------|-------------------|---------------|---------------|
| 200+ (élevé) | Quotidien automatisé + revue manuelle des alertes | Après des lancements majeurs, modifications du tracking | Jamais : le Layer 1️⃣ quotidien est toujours non négociable |
| 50-200 (moyen) | Quotidien automatisé + revue manuelle des alertes | Après des lancements majeurs | Jamais |
| 15-50 (faible) | Quotidien automatisé + revue manuelle hebdomadaire | Après des lancements majeurs | Quand la couverture des alertes est complète et mature |
| <15 (très faible) | Quotidien automatisé + revue manuelle hebdomadaire | Après des lancements majeurs | Quand la couverture des alertes est complète et mature |

---

## Checklist

### Santé du suivi des conversions

- [ ] Les actions de conversion principales sont actives (pas de "no recent conversions" ou "inactive")
- [ ] Aucun nouvel avertissement de suivi des conversions dans l'onglet Diagnostics
- [ ] Les Enhanced Conversions (si configurées) affichent des taux de correspondance sains
- [ ] Le volume de conversions est dans la fourchette attendue (pas zéro, pas anormalement bas)
- [ ] Le suivi de la valeur de conversion fonctionne (si configuré)

### Conformité des annonces et assets

- [ ] Aucune campagne n'a zéro annonce éligible
- [ ] Aucun ad group sans annonces actives
- [ ] Aucun nouveau refus d'annonce sur les campagnes actives
- [ ] Aucun titre ou description RSA refusé
- [ ] Aucun asset refusé sur tous les types d'assets (liens annexes, callouts, structured snippets, images, appels, prix, promotions)
- [ ] Les annonces diffusées avec restrictions sont vérifiées (statut approbation limitée)
- [ ] Les refus précédemment signalés ont été traités ou contestés

### Santé des URLs et Landing Pages

- [ ] Aucune erreur 404 signalée sur les URLs finales à fort volume
- [ ] Aucune URL finale cassée au niveau keyword
- [ ] Aucune URL cible DSA cassée
- [ ] Aucune URL d'asset cassée (liens annexes, callouts avec URLs)
- [ ] Aucun problème de chaîne de redirections sur les URLs finales des annonces
- [ ] Aucun problème de chaîne de redirections sur les URLs au niveau keyword
- [ ] Toutes les Landing Pages actives utilisent HTTPS
- [ ] L'expansion d'URL finale (si activée) n'envoie pas de trafic vers des pages non pertinentes
- [ ] Les Landing Pages mobiles se chargent (vérifier les URLs spécifiques au mobile si utilisées)

### Statut de la stratégie d'enchères

- [ ] Aucune stratégie d'enchères n'affiche un statut "Limitée" ou "Mal configurée"
- [ ] Les stratégies d'enchères en statut "Apprentissage" sont attendues (modifications récentes)
- [ ] Aucune stratégie d'enchères de portefeuille n'affiche d'avertissements

### Historique des modifications

- [ ] Aucune modification inattendue n'apparaît dans l'historique des modifications (recommandations auto-appliquées, modifications système)
- [ ] Les paramètres d'application automatique n'ont pas été réactivés
- [ ] Aucune modification par des utilisateurs inconnus

### Santé du flux (Shopping/PMax uniquement)

- [ ] Aucun problème au niveau du compte Merchant Center ni erreur critique de traitement du flux
- [ ] Le statut de traitement du flux est sain et la fraîcheur est dans la fenêtre attendue
- [ ] Le nombre de produits refusés n'a pas augmenté brutalement et les avertissements produits sont vérifiés
- [ ] Aucun changement inattendu important dans le nombre de produits actifs (y compris les produits à fort volume qui ont cessé d'être diffusés)
- [ ] Aucune URL finale Shopping ou URL mobile link cassée
- [ ] Aucun problème de synchronisation d'inventaire (publicité pour des produits en rupture de stock)

### Santé Performance Max (PMax uniquement)

- [ ] Aucun asset group refusé
- [ ] Aucun asset PMax individuel refusé
- [ ] Aucun asset texte auto-généré diffusé involontairement
- [ ] Aucun asset vidéo auto-généré diffusé involontairement
- [ ] Les signaux d'audience sont configurés sur tous les asset groups
- [ ] La couverture des assets est suffisante (tous les types d'assets requis sont remplis)

### Couverture des assets (Search)

- [ ] Les campagnes actives ont des liens annexes assignés
- [ ] Les campagnes actives ont des callouts assignés
- [ ] Les campagnes actives ont des structured snippets assignés

### Santé du pipeline backend (Lead Gen uniquement)

- [ ] Les leads arrivent dans le CRM (vérifier les dernières 24h de livraison de leads)
- [ ] Aucune erreur d'intégration entre Google Ads et le CRM
- [ ] Les imports de conversions hors ligne sont récents et complets (si applicable)

### Suivi des essais et inscriptions (SaaS uniquement)

- [ ] L'action de conversion d'inscription à l'essai enregistre des données
- [ ] Le volume d'inscriptions est dans la fourchette attendue
- [ ] Aucune étape cassée dans le tunnel d'inscription

---

## Couverture d'automatisation

Chaque catégorie de vérification a un potentiel d'automatisation différent. Utilisez ce tableau pour prioriser ce qu'il faut automatiser en premier.

| **Catégorie de vérification** | **Potentiel d'automatisation** | **Outils principaux** | **Agents IA/skills** |
|---------------------|-------------------------|-------------------|----------------------|
| Santé du suivi des conversions | Élevé | Règles Google (zéro conv.), scripts (baisse de volume, statut des tags), outils tiers (monitoring continu) | Analyse des causes racines quand le tracking casse, vérification croisée de la configuration des tags |
| Conformité des annonces et assets | Élevé | Règles Google (statut = refusé), outils tiers (scan granulaire au niveau asset) | Détection de patterns de violation de politique, rédaction d'appels |
| Santé des URLs et Landing Pages | Moyen-élevé | Scripts (UrlFetchApp pour les vérifications HTTP), outils tiers (monitoring de disponibilité en temps réel) | Diagnostic des chaînes de redirections, validation du contenu de page |
| Statut de la stratégie d'enchères | Moyen | Règles Google (basées sur le statut, limitées), scripts (durée d'apprentissage, écart par rapport à la cible) | Diagnostic de pourquoi une stratégie est bloquée en apprentissage, recommandations de corrections |
| Paramètres de campagne et historique des modifications | Moyen | Outils tiers (scan de l'historique des modifications), scripts (snapshots de paramètres) | Analyse d'impact des modifications, détection d'effets en cascade non intentionnels |
| Santé du flux | Élevé | Alertes natives Merchant Center, outils de flux (Channable, DataFeedWatch), scripts (Content API) | Diagnostic des erreurs de flux, suggestions d'optimisation d'attributs |
| Santé Performance Max | Moyen | Outils tiers (scan au niveau asset), règles Google (statut d'asset group, très limité) | Recommandations d'amélioration de la force des assets, analyse des signaux d'audience |
| Couverture des assets | Moyen | Outils tiers (détection de lacunes de couverture), scripts (vérification du nombre d'assets) | Priorisation des lacunes d'assets, suggestions de texte pour les assets manquants |
| Santé du pipeline backend | Faible-moyen | Monitoring d'intégration CRM, scripts (vérification des uploads de conversions hors ligne) | Diagnostic des pannes de pipeline, réconciliation des données |

> ↪️ **Pour les recettes d'implémentation :** Voir : [Monitoring Automation Reference](<Optimisation - Automatisation du monitoring.md>) pour les patterns spécifiques de règles, scripts et outils pour chaque catégorie de vérification.

---

## Dépenses et diffusion : une note sur le périmètre

Les anomalies de dépenses et les patterns de diffusion sont du **Layer 2️⃣** (alertes de performance), pas du Layer 1️⃣. Elles sont détectées par les alertes de performance automatisées, pas par cette checklist de santé.

Si vous remarquez une anomalie de dépenses dramatique lors de votre scan Layer 1️⃣ (ex. une campagne qui dépense 5x la normale), signalez-la pour investigation. Mais la détection systématique des écarts de dépenses et de diffusion appartient à votre configuration d'alertes (Voir : [Alert Configuration Checklist](<Optimisation - [Review] Configuration des alertes.md>)), pas à un scan manuel quotidien.

---

## Référence rapide

| Document | Relation |
|----------|--------------|
| [Account Monitoring Mental Model](<Optimisation - Surveillance de compte.md>) | Méthode : cette checklist couvre le Layer 1️⃣ |
| [SOP - Check quotidien de sante du compte](<Optimisation - Check quotidien de santé du compte.md>) | Exécution : procédure de triage quotidien utilisant cette checklist |
| [Optimization Cadence Mental Model](<../strategie/Strategie - Cadence d'optimisation.md>) | Fondation : définition de la cadence quotidienne |
| [Anomaly Detection Mental Model](<Optimisation - Détection des anomalies.md>) | Fondation : distinguer le signal du bruit |
| [Alert Configuration Checklist](<Optimisation - [Review] Configuration des alertes.md>) | Compagnon : automatiser la détection des éléments de la checklist de santé |
| [Monitoring Automation Reference](<Optimisation - Automatisation du monitoring.md>) | Référence : recettes d'automatisation pour les vérifications Layer 1️⃣ |
| [Budget Pacing Reference](<../encheres/Enchères - Rythme de dépense.md>) | Référence : mécaniques de pacing budgétaire |
| [Post-Launch Monitoring Reference](<Optimisation - Monitoring post-lancement.md>) | Référence : vérifications spécifiques post-lancement |

---

## Détails de version

- **Changelog :** v4.0 : Consolidation des vérifications de refus par type d'asset et des vérifications de santé du flux pour réduire la granularité. Ajout de la colonne Agents IA/skills au tableau de couverture d'automatisation. v3.0 : Suppression des annotations d'outils inline. Vérifications améliorées à partir des sources TrueClicks et Adalysis : conformité annonces/assets étendue (12 vérifications), santé des URLs (9 vérifications), santé du flux (10 vérifications). Ajout de la section santé Performance Max (7 vérifications), section couverture des assets (3 vérifications), vérifications des paramètres de campagne (assets texte auto, requête large). Remplacement des annotations inline par la section "Couverture d'automatisation". v2.0 : Renommé de "Daily Monitoring Checklist" à "Account Health Checklist" (focus Layer 1️⃣). Ajout des indicateurs d'automatisation, flexibilité de fréquence, sections spécifiques par vertical (Shopping, Lead Gen, SaaS). Déplacement des anomalies de dépenses/diffusion dans la note de périmètre Layer 2️⃣. Titres en minuscules.
