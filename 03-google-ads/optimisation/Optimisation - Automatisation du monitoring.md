# Automatisation du monitoring

> **Plateforme :** Google Ads
> **Catégorie :** Optimisation
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Fournit des conseils au niveau implémentation pour automatiser les vérifications de monitoring à travers les trois couches de surveillance. C'est la fiche "comment faire" : des patterns spécifiques pour les règles, scripts et outils tiers qui automatisent la détection afin que vous passiez du temps sur les décisions, pas sur le scanning.

---

## Ce que couvre cette fiche / Ce qu'elle ne couvre PAS

Cette fiche ne couvre **pas** :

- Expliquer le document de monitoring (Voir : [Account Monitoring Mental Model](<Optimisation - Surveillance de compte.md>))
- Documenter les mécanismes des règles natives (Voir : [Google Ads Alerts and Rules Reference](<Optimisation - Alertes et règles Google Ads.md>))
- Fournir des procédures étape par étape de configuration d'alertes (Voir : [SOP - Configurer les alertes du compte](<Optimisation - Configurer les alertes du compte.md>))
- Recommander quelles alertes configurer (Voir : [Alert Configuration Checklist](<Optimisation - [Review] Configuration des alertes.md>))

---

## Aide-mémoire : comparaison des outils d'automatisation

| **Type d'outil** | **Effort de mise en place** | **Coût** | **Idéal pour** | **Limitations** |
|---------------|-----------------|---------|-------------|-----------------|
| **Règles Google Ads** | Faible | Gratuit | Alertes de seuil simples (vérifications de statut Couche 1️⃣, seuils absolus Couche 2️⃣) | Pas de comparaisons relatives, pas de filtrage par volume minimum, pas de cross-comptes |
| **Scripts Google Ads** | Moyen-élevé | Gratuit | Logique personnalisée, comparaisons relatives, tableaux de bord Sheets, vérification d'URL | Expertise JavaScript requise, limite d'exécution de 30 min, charge de maintenance |
| **Outils tiers** | Faible-moyen | 50-500+€/mois | Monitoring complet, vérifications de gouvernance, détection d'anomalies, multi-comptes | Coût d'abonnement, dépendance au fournisseur, peut ne pas couvrir tous les cas |
| **Agents/compétences IA** | Moyen | Variable | Diagnostic complexe, alertes en langage naturel, monitoring contextuel, investigation multi-étapes, analyse des causes racines | Technologie récente, nécessite du prompt engineering, coût imprévisible |

---

## Tier 1️⃣ : Règles Google Ads

Gratuites, quelques minutes à configurer. Commencez ici pour une couverture basique des vérifications de statut Couche 1️⃣ et des seuils absolus Couche 2️⃣.

### Vérifications de santé Couche 1️⃣

| **Vérification** | **Configuration de la règle** | **Fréquence** |
|-----------|----------------------|---------------|
| Zéro conversion | Email si conversions = 0, 7 derniers jours. Portée par libellé aux campagnes convertissantes | Quotidienne |
| Refus d'annonces | Email si statut de l'annonce = Refusée, toutes les annonces | Quotidienne |
| Refus d'assets | Email si statut de l'asset = Refusé, tous les assets | Quotidienne |
| Zéro annonce éligible | Email si impressions = 0 ET statut = Activé, 3 derniers jours | Quotidienne |
| Problèmes de stratégie d'enchères | Attributs de campagne : Raison du statut + Type de stratégie d'enchères. Pas de condition directe "Mal configuré" : utilisez Raison du statut | Quotidienne |

### Alertes de seuil Couche 2️⃣

| **Vérification** | **Configuration de la règle** | **Fréquence** | **Fenêtre de données** |
|-----------|----------------------|---------------|-----------------|
| CPA dépasse la cible | Email si Coût/conv. > [CPA cible], Conversions > 0 | Quotidienne | 14 derniers jours |
| ROAS en dessous de la cible | Email si Valeur de conv./coût < [ROAS cible] | Quotidienne | 14 derniers jours |
| Dépassement de budget | Email si Coût > [120% du budget quotidien] | Quotidienne | Jour précédent |
| Pic de CPC | Email si CPC moyen > [150% du CPC attendu] | Quotidienne | 7 derniers jours |
| Effondrement de la part d'impressions | Email si Search IS < [IS minimum acceptable] | Hebdomadaire | 7 derniers jours |

> ⚠️ **Les règles ne peuvent pas filtrer par volume minimum :** Une campagne avec 2 clics et 50 € de CPA déclenchera une alerte CPA même si les données sont insignifiantes. Pour des alertes filtrées par volume, utilisez les scripts (Tier 2️⃣) ou les outils tiers (Tier 3️⃣).

### Ce que les règles ne peuvent pas faire

Les règles ne supportent que les seuils absolus et les conditions basées sur le statut. Elles ne peuvent pas :

- Comparer les métriques à des baselines ou des périodes précédentes (variations en % relatif)
- Filtrer par volume minimum de conversions
- Vérifier les URL, la santé du flux ou l'historique des modifications
- Calculer le pacing ou comparer aux objectifs
- Fonctionner en cross-comptes

Pour ces vérifications, ajoutez les scripts (Tier 2️⃣) ou les outils tiers (Tier 3️⃣).

---

## Tier 2️⃣ : Scripts Google Ads

Gratuits, nécessitent une expertise JavaScript. Ajoutent les comparaisons relatives, la vérification de santé des URL, les tableaux de bord de pacing, et tout le monitoring des objectifs Couche 3️⃣. Combinés au Tier 1️⃣, couvrent environ 80% des besoins de monitoring.

### Scripts : capacités et limites

**Peuvent faire :**

- Lire toutes les données de campagne, ad group, keyword et annonce
- Écrire des modifications (enchères, budgets, libellés, statut)
- Envoyer des emails (MailApp)
- Lire/écrire dans Google Sheets (SpreadsheetApp)
- Faire des requêtes HTTP (UrlFetchApp) pour la vérification d'URL et les notifications webhook
- S'exécuter selon un calendrier (horaire à mensuel)
- Fonctionner à travers les comptes (scripts MCC)
- Accéder aux données Shopping/Merchant (limité)

**Ne peuvent pas faire :**

- S'exécuter en temps réel (la planification minimum est horaire)
- S'exécuter pendant plus de 30 minutes par exécution
- Accéder à l'historique des modifications par programmation
- Accéder directement aux données Google Analytics
- Exécuter des modèles de machine learning complexes

### Vérifications de santé Couche 1️⃣ (ajout des scripts)

Ces vérifications nécessitent une logique que les règles ne peuvent pas gérer.

| **Vérification** | **Implémentation** | **Fréquence** |
|-----------|--------------------|---------------|
| Baisse du volume de conversions >50% | Comparer le total de conversions 7j à la période 7j précédente, agrégation au niveau compte | Quotidienne |
| Statut de l'action de conversion | Vérifier le statut ConversionAction via API, email si pas "ENABLED" | Quotidienne |
| Erreurs 404 sur les URL finales | Vérification HTTP via UrlFetchApp sur toutes les URL finales actives, email des URL cassées avec contexte campagne/ad group | Hebdomadaire |
| Détection de chaînes de redirections | Suivre les redirections, signaler les chaînes >2 sauts, sortie dans Sheets | Hebdomadaire |
| Erreurs de traitement du flux | Intégration Content API, récupérer les diagnostics Merchant Center | Quotidienne |
| Attributs de flux manquants | Vérification de couverture des attributs par rapport aux champs requis | Hebdomadaire |
| Baisse de couverture produit | Comparaison hebdomadaire du nombre de produits vs. baseline dans Sheets | Hebdomadaire |
| Apprentissage prolongé (>14 jours) | Suivre la date de début d'apprentissage de la stratégie d'enchères dans Sheets, signaler si >14j | Quotidienne |
| Déviation de la cible de stratégie d'enchères | Comparer le CPA/ROAS réel à la cible de la stratégie d'enchères, signaler si >30% pendant 14+ jours | Hebdomadaire |
| Comparaison de snapshot de paramètres | Snapshot des paramètres hebdomadaire dans Sheets, comparer au précédent | Hebdomadaire |
| Dérive réseau/localisation | Vérifier les paramètres de campagne vs. valeurs attendues, signaler les déviations | Hebdomadaire |

### Alertes de fluctuation Couche 2️⃣ (ajout des scripts)

Les règles ne peuvent pas faire de comparaisons relatives. Les scripts comparent les métriques actuelles aux baselines.

| **Vérification** | **Implémentation** | **Fréquence** |
|-----------|--------------------|---------------|
| CPA en hausse >30% vs. baseline | CPA 7j vs. moyenne glissante 14j stockée dans Sheets | Quotidienne/hebdomadaire |
| Volume de conversions en baisse >40% | Conversions 7j vs. 7j précédents, niveau compte | Quotidienne |
| CTR en baisse >20% | CTR 7j vs. moyenne glissante 14j | Hebdomadaire |
| Anomalie de dépense >2x la normale | Dépense d'hier vs. moyenne quotidienne 14j, niveau campagne | Quotidienne |

### Gestion des baselines

Les baselines sous-tendent toutes les alertes de fluctuation. Elles doivent être maintenues et mises à jour.

| **Approche** | **Implémentation** | **Avantages** | **Inconvénients** |
|-------------|-------------------|---------|---------|
| **Moyenne glissante** | Le script écrit des moyennes glissantes 14j ou 30j dans Sheets chaque semaine | Simple, s'adapte aux tendances | Réagit en retard aux changements brusques, peut normaliser une dégradation |
| **Même période l'année dernière** | Le script récupère les données YoY pour comparaison saisonnière | Prend en compte la saisonnalité | Nécessite 12+ mois de données, les changements business faussent la comparaison |
| **Bandes statistiques** | Le script calcule moyenne + écart-type, définit des bandes | Plus précis, filtre bien le bruit | Plus complexe à implémenter, nécessite suffisamment de données |

> 💡 **Recalibrez mensuellement :** Des baselines qui ne se mettent jamais à jour normalisent les mauvaises performances. Exécutez un recalibrage mensuel (manuellement ou via script) pour que votre "normal" reflète la réalité actuelle, pas celle du trimestre dernier.

### Monitoring des objectifs Couche 3️⃣ (ajout des scripts)

Les règles ne supportent pas les vérifications Couche 3️⃣. Les scripts gèrent tout le pacing, la comparaison aux objectifs et l'automatisation du reporting.

| **Vérification** | **Implémentation** | **Fréquence** |
|-----------|--------------------|---------------|
| Pacing du budget mensuel | (Budget mensuel - dépense MTD) / jours restants, sortie dans Sheets | Quotidienne |
| Alerte de pacing | Email si dépense quotidienne requise >150% ou <50% du budget quotidien original | Quotidienne |
| Pacing multi-campagnes | Agréger le pacing par groupes de campagnes, sortie dans Sheets | Quotidienne |
| CPA vs. objectif | Calculer le CPA hebdomadaire/mensuel, comparer à l'objectif, Sheets + email si hors piste | Hebdomadaire |
| ROAS vs. objectif | Calculer le ROAS hebdomadaire/mensuel, comparer à l'objectif, Sheets + email si hors piste | Hebdomadaire |
| Volume de conversions vs. objectif | Comparer les conversions MTD au rythme de l'objectif mensuel, email si en retard | Hebdomadaire |
| Tableau de bord de pacing quotidien | Écrire les données de pacing dans Sheets | Quotidienne |
| Résumé de performance hebdomadaire | Email avec résumé formaté des métriques clés vs. objectifs | Hebdomadaire |
| Rapport exécutif mensuel | Génération automatisée de rapport | Mensuelle |

---

## Tier 3️⃣ : Outils tiers

Payants (50-500+€/mois), faible effort de mise en place. Couvrent la plupart des vérifications Tier 1️⃣ + Tier 2️⃣ automatiquement sans maintenance, plus des capacités que les scripts ne peuvent pas fournir.

### Panorama des outils

| **Type d'outil** | **Ce qu'il couvre** | **Couverture de couche** |
|---------------|-------------------|-------------------|
| **Monitoring complet** (TrueClicks, Adalysis) | Gouvernance, détection d'anomalies, quality scores, dépense gaspillée, analyse concurrentielle | Couche 1️⃣ + Couche 2️⃣ (forte), Couche 3️⃣ (partielle) |
| **Monitoring de flux** (Channable, DataFeedWatch) | Santé du flux produit, couverture d'attributs, tarification, tarification concurrente | Couche 1️⃣ (spécifique flux) |

### Ce que les outils tiers ajoutent de manière unique

Ces capacités sont difficiles ou impossibles à répliquer avec les règles et scripts seuls.

| **Capacité** | **Couche** | **Pourquoi les scripts ne peuvent pas égaler** |
|----------------|----------|---------------------------|
| Monitoring de l'historique des modifications | Couche 1️⃣ | Pas d'accès API : les scripts ne peuvent pas lire l'historique des modifications par programmation |
| Monitoring continu des tags | Couche 1️⃣ | Les scripts s'exécutent selon un calendrier (minimum horaire), les outils surveillent en continu |
| Monitoring d'uptime en temps réel | Couche 1️⃣ | Les scripts sont planifiés, les outils fournissent la santé des pages en temps réel |
| Scan des assets PMax | Couche 1️⃣ | Les règles de groupes d'assets sont extrêmement limitées (Activer/Pause uniquement, 3 métriques) |
| Scan de gouvernance complet | Couche 1️⃣ | Les outils vérifient des dizaines de paramètres simultanément, les scripts nécessitent du code personnalisé par vérification |
| Monitoring spécifique flux | Couche 1️⃣ | Les outils de flux dédiés (Channable, DataFeedWatch) fournissent une analyse d'attributs plus profonde que les scripts via Content API |
| Détection d'anomalies multi-métriques | Couche 2️⃣ | Les outils maintiennent des baselines automatiques et détectent les anomalies à travers les métriques sans configuration manuelle de seuils |
| Gestion automatique des baselines | Couche 2️⃣ | Zéro maintenance : l'outil recalibre en interne (compromis : moins de contrôle sur la méthodologie) |

> 💡 **Les outils tiers chevauchent fortement les Tier 1️⃣ + Tier 2️⃣ :** La plupart des outils complets (TrueClicks, Adalysis) gèrent aussi les refus d'annonces, les alertes zéro conversion, le monitoring des stratégies d'enchères, et la détection basique de fluctuations. La valeur est l'étendue de la couverture et le zéro maintenance, pas des vérifications uniques.

---

## Tier 4️⃣ : Agents et compétences IA

Avancé, coût variable. Les agents IA ajoutent du raisonnement et du diagnostic par-dessus n'importe quel tier. Ils ne remplacent pas la détection (Tiers 1️⃣-3️⃣) mais ajoutent de l'investigation et de l'aide à la décision.

| **Capacité** | **Couche** | **Ce que ça fait** |
|----------------|----------|-----------------|
| Diagnostic de cause racine | Couche 1️⃣ | Investigue pourquoi le tracking (suivi des conversions/évènements) est cassé, pourquoi une stratégie d'enchères est bloquée en apprentissage, pourquoi les URL échouent |
| Analyse de politique et rédaction d'appel | Couche 1️⃣ | Analyse les patterns de refus, rédige des appels conformes aux politiques |
| Validation cross-système | Couche 1️⃣ | Compare les données Google Ads au backend/CRM pour identifier les écarts |
| Diagnostic d'erreurs de flux | Couche 1️⃣ | Diagnostique les problèmes d'attributs de flux, suggère les priorités d'optimisation |
| Diagnostic d'efficacité multi-facteurs | Couche 2️⃣ | Investigue les changements de CPA/ROAS en considérant plusieurs variables (concurrence, saisonnalité, landing pages) |
| Investigation de changements de volume | Couche 2️⃣ | Détermine si les changements de volume sont internes (paramètres, enchères) ou externes (saisonnalité, concurrence) |
| Analyse d'impact des changements | Couche 1️⃣/2️⃣ | Trace les effets en cascade des changements de compte à travers les campagnes et métriques |
| Analyse de trajectoire de croissance | Couche 3️⃣ | Projette si le rythme actuel atteindra les objectifs, suggère des réallocations |
| Reporting en langage naturel | Couche 3️⃣ | Génère des résumés narratifs basés sur les insights au lieu de tables de données brutes |

> 💡 **Les agents IA sont un complément, pas un remplacement :** Utilisez les Tiers 1️⃣-3️⃣ pour la détection et l'alerte. Utilisez les agents IA pour l'investigation, le diagnostic et l'aide à la décision quand les alertes se déclenchent.

---

## Quand utiliser quoi : guide de décision

```
Que devez-vous automatiser ?
│
├─ Alerte de seuil simple (CPA > X€, conversions = 0)
│  └─ RÈGLE Google Ads (gratuit, rapide à configurer)
│
├─ Alerte de variation en % relatif (CPA en hausse de 30% vs. baseline)
│  └─ SCRIPT Google Ads ou OUTIL TIERS
│
├─ Vérification de santé des URL
│  └─ SCRIPT Google Ads (UrlFetchApp) ou OUTIL TIERS
│
├─ Monitoring de santé du feed
│  └─ Alertes Merchant Center + OUTIL DE FEED TIERS
│
├─ Vérifications de gouvernance complètes
│  └─ OUTIL TIERS (TrueClicks, Adalysis)
│
├─ Tableaux de bord et pacing personnalisés
│  └─ SCRIPT Google Ads + Sheets
│
├─ Monitoring de l'historique des modifications
│  └─ OUTIL TIERS (pas d'accès API pour les scripts)
│
├─ Monitoring multi-comptes à grande échelle
│  └─ SCRIPT MCC ou OUTIL TIERS
│
└─ Diagnostic complexe, analyse de cause racine, investigation contextuelle
   └─ AGENT/COMPÉTENCE IA (combine accès API et raisonnement)
```

---

## Priorité d'implémentation

Automatisez les vérifications dans cet ordre pour un impact maximum avec un effort minimum :

| **Priorité** | **Vérification** | **Pourquoi en premier** |
|-------------|-----------|---------------|
| 1 | Alertes de refus d'annonces | Gratuit, 2 minutes de configuration, attrape les pannes à fort impact |
| 2 | Alertes zéro conversion | Gratuit, 2 minutes de configuration, attrape les pannes de tracking |
| 3 | Alertes de dépassement de budget | Gratuit, empêche le gaspillage de budget |
| 4 | Alertes de seuil CPA/ROAS | Gratuit, attrape la dégradation d'efficacité |
| 5 | Vérification de santé des URL | Effort modéré, attrape la dépense gaspillée sur des pages cassées |
| 6 | Tableau de bord de pacing | Effort modéré, remplace les calculs de pacing manuels |
| 7 | Alertes de fluctuation (% de variation) | Effort plus élevé, attrape la dérive que les seuils absolus ratent |
| 8 | Gestion des baselines | Effort plus élevé, améliore la précision des alertes au fil du temps |
| 9 | Gouvernance complète | Coût d'abonnement, mais couvre des dizaines de vérifications automatiquement |
| 10 | Monitoring de santé du flux | Coût d'abonnement, essentiel pour l'ecommerce |

> 💡 **Commencez avec les règles Google (priorités 1-4) :** Elles sont gratuites, prennent quelques minutes à configurer, et couvrent les vérifications Couche 1️⃣ et Couche 2️⃣ les plus critiques. Ajoutez les scripts et outils tiers au fur et à mesure que votre monitoring mûrit.

---

## Notes d'automatisation spécifiques par secteur

### Ecommerce

| **Vérification supplémentaire** | **Implémentation** | **Pourquoi** |
|---------------------|-------------------|---------|
| Santé du flux produit | Alertes Merchant Center + outil de flux | Les erreurs de flux réduisent directement la visibilité et le CA des produits |
| ROAS au niveau produit | Script : signaler les produits en dessous du seuil ROAS | Les changements de mix produit affectent la performance globale |
| Synchronisation d'inventaire | Outil de flux : alerter sur les produits en rupture encore en publicité | Dépense gaspillée sur des produits indisponibles |
| Tarification concurrente | Rapport de compétitivité des prix Merchant Center | Les changements de prix affectent les taux de conversion |

### Lead Gen

| **Vérification supplémentaire** | **Implémentation** | **Pourquoi** |
|---------------------|-------------------|---------|
| Livraison backend des leads | Vérification d'intégration CRM (script ou tiers) | Les leads qui n'atteignent pas le CRM = pipeline perdu |
| Signaux de qualité des leads | Script : comparer les conversions frontend aux leads qualifiés CRM | Les métriques frontend peuvent masquer une dégradation de qualité |
| Santé de l'import de conversions hors ligne | Script : vérifier que des uploads récents de conversions hors ligne existent | Des données hors ligne obsolètes dégradent la performance de la stratégie d'enchères |

### SaaS

| **Vérification supplémentaire** | **Implémentation** | **Pourquoi** |
|---------------------|-------------------|---------|
| Tracking des inscriptions d'essai | Script : vérifier que l'action de conversion d'inscription d'essai enregistre | Les inscriptions d'essai sont l'événement de conversion principal |
| Tunnel essai vers payant | Intégration CRM/analytics produit | L'efficacité publicitaire dépend de la conversion en aval |
| Attribution multi-touch | Outil d'attribution tiers | Les cycles d'achat SaaS sont longs, l'attribution last-click induit en erreur |

---

## Documents liés

| **Document** | **Relation** |
|--------------|------------------|
| [Account Monitoring Mental Model](<Optimisation - Surveillance de compte.md>) | Méthode : trois couches de monitoring que ce document implémente |
| [Google Ads Alerts and Rules Reference](<Optimisation - Alertes et règles Google Ads.md>) | Référence : mécanismes et limitations des règles natives |
| [Anomaly Detection Mental Model](<Optimisation - Détection des anomalies.md>) | Méthode : ce qui constitue un signal vs. du bruit pour la Couche 2️⃣ |
| [Alert Configuration Checklist](<Optimisation - [Review] Configuration des alertes.md>) | Validation : quelles alertes avoir configurées |
| [Account Health Checklist](<Optimisation - [Review] Santé du compte.md>) | Validation : vérifications Couche 1️⃣ que l'automatisation supporte |
| [SOP - Configurer les alertes du compte](<Optimisation - Configurer les alertes du compte.md>) | Exécution : configuration d'alertes étape par étape |
| [Optimization Cadence Mental Model](<../strategie/Strategie - Cadence d'optimisation.md>) | Fondation : automatisation alignée avec les tiers de cadence |

---

## Détails de version

- **Changelog :** v3.0 : Restructuré depuis une organisation par couche de monitoring (Couche 1/2/3 avec colonnes de type d'outil par vérification) vers une organisation par tier d'outil (Tier 1-4). Chaque vérification apparaît maintenant une fois à son tier capable le plus bas. Suppression de la section redondante Capacités spécifiques aux outils (fusionnée dans les introductions de tier). v2.0 : Correction de la baisse de couverture produit vers Native + Script (protection native Merchant Center). Correction du libellé de la vérification "Mal configuré" de la stratégie d'enchères (utiliser l'attribut Raison du statut). Ajout d'une note de refus de groupe d'assets pour PMax. Ajout de l'option agent/compétence IA au guide de décision. Suppression des catégories Optimisation multi-usage et Outils de gestion d'enchères. Exemples d'outils de flux mis à jour (Channable, DataFeedWatch).

