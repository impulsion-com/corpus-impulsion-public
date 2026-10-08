# Historique des modifications

> **Plateforme :** Google Ads
> **Catégorie :** Optimisation
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Documente la fonctionnalité Historique des modifications de Google Ads : quelles modifications sont enregistrées, comment accéder au journal et le filtrer, comment interpréter les types de modifications, et comment utiliser l'historique pour diagnostiquer les performances.

---

## Ce que couvre cette fiche / Ce qu'elle ne couvre PAS

**Cette fiche :**

- Documente les modifications suivies dans l'Historique des modifications Google Ads
- Explique comment accéder, filtrer et lire le journal des modifications
- Couvre l'attribution par opérateur et l'interprétation des types de modifications
- Fournit des conseils pour corréler modifications et variations de performance

**Cette fiche ne couvre PAS :**

- Le diagnostic des problèmes de performance (Voir : [SOP - Investiguer les anomalies de performance](<Optimisation - Investiguer les anomalies de performance.md>))
- Les procédures d'audit Google Ads (qui utilisent l'Historique des modifications comme un des inputs)
- Le suivi des modifications concurrentielles (Voir : [Insights sur les enchères Reference](<../search/Search - Insights sur les enchères.md>))

---

## Aide-mémoire : catégories de modifications

| **Catégorie** | **Ce qui est enregistré** | **Exemples** |
|--------------|--------------------|-------------|
| **Changements de statut** | Activation, mise en pause, suppression d'entités | Campagne mise en pause, ad group activé |
| **Modifications de budget** | Modifications du budget quotidien | Budget augmenté de 50 € à 75 € |
| **Modifications d'enchère** | Modifications d'enchère et de cible | CPA cible passé de 20 € à 25 € |
| **Changements de stratégie d'enchères** | Changements de type de stratégie | Passage de Maximize Clicks à CPA cible |
| **Modifications de keywords** | Ajout, suppression, match type, statut | Keyword ajouté [chaussures running] |
| **Modifications d'annonces** | Nouvelles annonces, modifications, suppressions | Nouvelle RSA créée dans l'ad group X |
| **Modifications d'assets** | Liens annexes, callouts, images ajoutés/supprimés | Lien annexe "Livraison gratuite" ajouté |
| **Modifications de ciblage** | Modifications de localisation, audience, réseau | Segment d'audience "In-market" ajouté |
| **Modifications de paramètres** | Paramètres de campagne et de compte | Rotation des annonces changée en "Optimiser" |
| **Modifications de conversion** | Modifications d'actions de conversion | Fenêtre de conversion changée à 30 jours |
| **Modifications automatiques** | Modifications faites par l'automatisation Google | Recommandation appliquée automatiquement |

---

## Accéder à l'Historique des modifications

### Depuis l'interface Google Ads

1. Naviguer au niveau du compte
2. Cliquer sur "Historique des modifications" dans la navigation de gauche (sous Insights & Rapports)
3. Sélectionner la plage de dates et appliquer les filtres

### Options de filtrage

| **Filtre** | **Options** | **Cas d'usage** |
|------------|------------|--------------|
| **Plage de dates** | Toute plage standard ou personnalisée | Isoler les modifications autour d'un changement de performance |
| **Source de modification** | Utilisateur, règle automatisée, API, Google Ads Editor, recommandation, système | Identifier qui ou quoi a fait la modification |
| **Type de modification** | Statut, budget, enchère, keyword, annonce, paramètre, etc. | Se concentrer sur des catégories spécifiques |
| **Campagne** | Campagnes spécifiques | Restreindre aux campagnes concernées |
| **Utilisateur** | Utilisateurs spécifiques du compte | Auditer l'activité d'un opérateur individuel |

---

## Sources des modifications

| **Source** | **Ce que ça signifie** | **Enregistré comme** |
|------------|-------------------|---------------|
| **Interface web Google Ads** | Modification manuelle via l'interface web | Adresse email de l'utilisateur |
| **Google Ads Editor** | Modification via l'application desktop | Adresse email + "Editor" |
| **API Google Ads** | Modification via API (outils tiers, scripts) | Utilisateur API ou nom de l'outil |
| **Règle automatisée** | Modification déclenchée par une règle enregistrée | "Règle automatisée : [nom de la règle]" |
| **Recommandation appliquée automatiquement** | Google a appliqué une recommandation automatiquement | "Auto-applied recommendation" |
| **Système** | Modifications système Google (politique, algorithme) | "System" |
| **Upload en masse** | Modifications via upload de fichier en masse | Email utilisateur + "Bulk upload" |

> Attention aux modifications "Auto-applied recommendation" et "System" : ce sont des modifications que vous n'avez pas faites. Vérifiez-les régulièrement pour vous assurer que les modifications automatiques de Google sont alignées avec votre stratégie.

---

## Interpréter les modifications

### Quoi chercher pour diagnostiquer les variations de performance

Quand la performance change de façon inattendue, vérifiez l'Historique des modifications pour les changements effectués 1 à 7 jours avant le changement.

| **Changement de performance** | **Vérifier ces modifications** |
|------------------------|-----------------------------|
| CPA augmenté soudainement | Changements de stratégie d'enchères, modifications de budget, ajout de nouveaux keywords broad |
| Impressions en baisse | Keywords mis en pause, budget réduit, ciblage restreint, annonces refusées |
| CTR en baisse | Nouvelles annonces avec du copy plus faible, changements de match type, modifications d'audience |
| Conversions tombées à zéro | Action de conversion modifiée, changement de tag de tracking (suivi des conversions/évènements), modification d'URL de Landing Page |
| Dépenses en hausse | Budget augmenté, stratégie d'enchères relâchée, nouvelles campagnes activées |
| Niveau de qualité en baisse | URL de Landing Page changée, copy publicitaire modifié, désalignement keyword-ad group |

### Corréler les modifications avec la performance

1. Identifier la date du changement de performance
2. Ouvrir l'Historique des modifications filtré sur 1 à 7 jours avant cette date
3. Filtrer sur les campagnes concernées
4. Chercher les modifications qui pourraient expliquer le changement
5. Si des modifications internes sont trouvées : évaluer si elles étaient intentionnelles et annuler si ce n'est pas le cas
6. Si aucune modification interne n'est trouvée : investiguer les facteurs externes (concurrence, saisonnalité)

---

## Rétention de l'historique des modifications

| **Détail** | **Spécification** |
|-----------|-------------------|
| Période de rétention | 2 ans d'historique |
| Granularité | Au niveau de chaque modification |
| Export | Peut être téléchargé en CSV ou rapport |
| Accès | Disponible pour tous les utilisateurs ayant accès au compte |

---

## Erreurs courantes

| **Erreur** | **Problème** | **Solution** |
|-------------|-------------|---------|
| Ignorer les modifications automatiques | Les recommandations auto-appliquées de Google modifient le compte sans prévenir | Vérifier les modifications "system" et "auto-applied" chaque semaine |
| Ne pas vérifier l'Historique avant de diagnostiquer | Manquer une cause interne évidente de changement de performance | Toujours vérifier l'Historique des modifications en premier lors d'une investigation |
| Plage de dates trop restreinte | Les modifications peuvent mettre des jours à impacter la performance | Vérifier 7 jours avant le changement de performance |
| Oublier les modifications API et Editor | Les modifications via outils tiers et Editor peuvent ne pas être évidentes | Filtrer par toutes les sources, pas seulement l'interface web |
| Ne pas documenter les modifications intentionnelles | Impossible de distinguer les modifications voulues des accidentelles | Consigner les modifications intentionnelles avec des notes dans vos documents de suivi |

---

## Documents liés

| **Document** | **Relation** |
|--------------|------------------|
| [SOP - Investiguer les anomalies de performance](<Optimisation - Investiguer les anomalies de performance.md>) | Exécution : utilise l'Historique des modifications en Phase 1 |
| [SOP - Revue de performance hebdomadaire](<../../01-strategie/reporting/Reporting - Revue de performance hebdomadaire.md>) | Exécution : corrèle les modifications avec les résultats hebdomadaires |
| [Google Ads Alerts and Rules Reference](<Optimisation - Alertes et règles Google Ads.md>) | Référence : les règles automatisées qui apparaissent dans l'Historique |
| [Anomaly Detection Mental Model](<Optimisation - Détection des anomalies.md>) | Fondation : distinguer les causes internes des causes externes |
