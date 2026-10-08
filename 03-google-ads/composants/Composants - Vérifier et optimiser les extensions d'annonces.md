# Revoir et optimiser les extensions d'annonces

> **Plateforme :** Google Ads
> **Catégorie :** Composants
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Cette SOP audite la couverture des extensions sur l'ensemble des campagnes et remplace les extensions sous-performantes pour maximiser l'espace occupé par l'annonce et le CTR.

> ❓ **La question clé :** Toutes les campagnes diffusent-elles les bonnes extensions avec de bonnes performances, ou des lacunes et des composants obsolètes laissent-ils du CTR sur la table ?

Cette SOP est la **couche de maintenance** des extensions. Elle maintient votre configuration d'extensions à jour, pertinente et performante après la configuration initiale issue de [SOP - Rediger des RSA performantes](<../search/Search - Rédiger des RSA performantes.md>).

---

## Ce que cette SOP ne couvre PAS

Cette SOP ne couvre **pas :**

- Créer des extensions de zéro pour une nouvelle campagne (Voir : [SOP - Rediger des RSA performantes](<../search/Search - Rédiger des RSA performantes.md>), Phase 3)
- Définir quels types d'extensions existent ou comment les composer (Voir : [Extension Leverage Catalog](<Composants - Utilisation des extensions.md>))
- Gérer les paramètres des assets automatisés au niveau des règles (Voir : [Automated Assets Control Guidelines](<Composants - Contrôle des assets automatisés.md>))

## Quand utiliser cette SOP

Lancez cette SOP quand :

- Cycle d'optimisation mensuel : vérifier les performances et remplacer les sous-performants
- Revue d'expansion trimestrielle : évaluer les types d'extensions non utilisés
- Après des changements saisonniers ou d'offre : mettre à jour les extensions de promotion, les destinations des liens annexes, le message des callouts

---

## Avant de commencer

#### Prérequis

- Accès au compte Google Ads avec les autorisations de gestion des campagnes
- Au moins 30 jours de données de performance des extensions

#### Documents de référence (à garder ouverts)

| Document | Utilisé pour |
|----------|----------|
| [Extension Leverage Catalog](<Composants - Utilisation des extensions.md>) | Options de types d'extensions et schémas de composition |
| [Extension Coverage Checklist](<Composants - [Review] Couverture des extensions.md>) | Valider la couverture minimale |
| [Automated Assets Control Guidelines](<Composants - Contrôle des assets automatisés.md>) | Paramètres des assets auto-générés |

---

## Cadre d'exécution

| Phase | Objectif | Résultat |
|-------|---------|--------|
| **Phase 1️⃣ : Audit de couverture** | Identifier les campagnes avec des extensions manquantes | Rapport de lacunes par campagne |
| **Phase 2️⃣ : Revue de performance** | Signaler les extensions sous-performantes | Liste des sous-performants avec décisions |
| **Phase 3️⃣ : Remplacer les sous-performants** | Déployer de nouveaux remplacements | Jeu d'extensions mis à jour |
| **Phase 4️⃣ : Désactiver les extensions auto-générées** | Garantir le contrôle manuel du message | Configuration propre des assets automatisés |
| **Phase 5️⃣ : Expansion des extensions** | Déployer les types d'extensions non utilisés | Couverture élargie |

---

## Phase 1️⃣ : Audit de couverture

### 1.1 Vérifier la couverture minimale par campagne

Extrayez la liste complète des composants depuis Ads & Assets > Assets. Filtrez par niveau d'association (Account, Campaign, Ad Group). Pour chaque campagne active, vérifiez ces minimums :
| Type d'extension | Minimum requis | Niveau préféré |
|----------------|-----------------|-----------------|
| Liens annexes | 4 | Campaign |
| Callouts | 4 | Campaign |
| Structured Snippets | 1 en-tête avec 3+ valeurs | Campaign |

Signalez toute campagne sous ces seuils. Les campagnes qui reposent uniquement sur des extensions au niveau compte ont besoin de remplacements au niveau campagne pour une meilleure pertinence.

---

## Phase 2️⃣ : Revue de performance

### 2.1 Extraire le rapport de performance des extensions

Aller dans Ads & Assets > Assets. Réglez la plage de dates sur les 30-60 derniers jours. Ajoutez les colonnes : Impressions, Clicks, CTR, Conv. Rate, Conversions, Cost/Conv., Conv. Value, ROAS. Segmentez par type de composant.

### 2.2 Identifier les sous-performants

| Condition | Action |
|-----------|--------|
| 0 clic après 30+ jours | Remplacer immédiatement |
| 0 conversion après 30+ jours avec 100+ clics | Remplacer : engagement sans conversion |
| CPA supérieur à 2× la moyenne de la campagne | Remplacer : inefficace |
| ROAS inférieur de plus de 50 % à la moyenne de la campagne (campagnes basées sur la valeur) | Remplacer : faible retour |
| CTR inférieur de plus de 50 % à la moyenne du type | Remplacer : faible engagement |
| Le message fait référence à des offres expirées | Remplacer |
| La destination du lien annexe renvoie une erreur 404 | Corriger l'URL ou remplacer |

> 💡 **Comparez les impressions avec extension vs sans extension :** Si les annonces avec extensions affichent un CTR plus faible que celles sans, le contenu de l'extension nuit activement aux performances.

---

## Phase 3️⃣ : Remplacer les sous-performants

### 3.1 Supprimer les extensions signalées

Aller dans Ads & Assets > Assets. Sélectionnez chaque extension signalée et supprimez-la. Ne la mettez pas en pause : les extensions supprimées libèrent l'emplacement pour les remplacements.

### 3.2 Créer des liens annexes de remplacement

Chaque lien annexe doit pointer vers une landing page distincte et pertinente. Ne réutilisez pas le texte qui vient d'échouer. Ne faites pas pointer plusieurs liens annexes vers la même URL. Reportez-vous à [Extension Leverage Catalog](<Composants - Utilisation des extensions.md>) pour les schémas de composition.

### 3.3 Créer des callouts de remplacement

Concentrez-vous sur les arguments de vente uniques, les différenciateurs et les signaux de confiance :

| Catégorie | Exemples de callouts |
|----------|-----------------|
| Signaux de confiance | « Google Premier Partner », « Note de 4,8 étoiles » |
| Plus-values | « Consultation gratuite », « Sans frais d'installation » |
| Différenciateurs | « Livraison le jour même », « Support 24/7 » |
| Suppresseurs de risque | « Satisfait ou remboursé », « Sans engagement » |

### 3.4 Créer des structured snippets de remplacement

Sélectionnez la catégorie d'en-tête la plus pertinente (Types, Brands, Amenities, Destinations, Models). Renseignez 3-8 valeurs spécifiques par en-tête.

### 3.5 Valider les remplacements

Faites passer toutes les nouvelles extensions par la [Extension Coverage Checklist](<Composants - [Review] Couverture des extensions.md>).

---

## Phase 4️⃣ : Désactiver les extensions auto-générées

### 4.1 Revoir et désactiver les assets auto-générés

Aller dans Ads & Assets > Assets > Account-level automated assets. Désactivez les liens annexes, callouts et structured snippets auto-générés :

| Asset auto-généré | Recommandé | Justification |
|---------------------|-------------|-----------|
| Liens annexes dynamiques | Off | Garder le contrôle des destinations |
| Callouts dynamiques | Off | Éviter un message générique ou hors marque |
| Structured snippets dynamiques | Off | Garder une catégorisation intentionnelle |

> ⚠️ **Vérifiez avant de désactiver :** Si une extension auto-générée surperforme vos extensions manuelles, notez l'angle du message et intégrez-le à un remplacement manuel avant de la désactiver.

Pour la configuration complète, voir [Automated Assets Control Guidelines](<Composants - Contrôle des assets automatisés.md>).

---

## Phase 5️⃣ : Expansion des extensions

### 5.1 Identifier les types d'extensions non utilisés

Chaque trimestre, examinez les types d'extensions que vous n'utilisez pas encore :

| Type d'extension | Utiliser quand | Ignorer quand |
|----------------|----------|-----------|
| Extensions de prix | Produits ou paliers clairement différenciés par le prix | Tarification complexe ou variable |
| Extensions de promotion | Soldes actives ou offres saisonnières | Aucune promotion en cours |
| Extensions d'appel | Les leads (prospects) téléphoniques ont de la valeur | Pas de support téléphonique ni de suivi des appels |
| Extensions de lieu | Lieux physiques que les clients visitent | Activité entièrement en ligne |
| Extensions d'image | Images de haute qualité disponibles | Aucune image adaptée |

### 5.2 Déployer et surveiller

Pour chaque nouveau type d'extension, examinez les schémas de composition dans [Extension Leverage Catalog](<Composants - Utilisation des extensions.md>). Créez au niveau campagne (préféré au niveau compte). Surveillez les performances pendant 30 jours avant d'évaluer. Programmez des rappels d'agenda : rafraîchir les callouts chaque trimestre, retirer immédiatement les promotions expirées.

---

## Validation et critères de complétion

Cette SOP est terminée quand :

- [ ] Toutes les campagnes ont été auditées pour la couverture minimale d'extensions
- [ ] Toutes les extensions à zéro clic et à faible CTR ont été remplacées
- [ ] Les extensions auto-générées ont été vérifiées et désactivées selon les directives
- [ ] Chaque trimestre : les types d'extensions non utilisés sont évalués et déployés le cas échéant
- [ ] Toutes les nouvelles extensions sont validées avec la [Extension Coverage Checklist](<Composants - [Review] Couverture des extensions.md>)

---

## Passerelle de sortie

Une fois les extensions mises à jour et en ligne :

| Délai | Action |
|-----------|--------|
| Jours 1-7 | Surveiller le statut d'approbation, corriger les refus |
| Jours 7-30 | Collecter les données de performance des nouvelles extensions |
| Jour 30+ | Réévaluer les nouvelles extensions avec les critères de la phase 2 |
| Mois suivant | Relancer cette SOP dans le cadre de l'optimisation mensuelle |

**En cas de problème :**

| Problème | Rediriger vers |
|-------|----------|
| Nouvelles extensions refusées | Corriger les violations de règles, resoumettre |
| Le CTR chute après des changements d'extension | Revenir aux extensions performantes précédentes, tester de façon incrémentale |
| Texte d'annonce et extensions désalignés | [SOP - Rediger des RSA performantes](<../search/Search - Rédiger des RSA performantes.md>) |

---

## Référence rapide : bibliothèque support

| Document | Type | Utilisé dans |
|----------|------|---------|
| [Extension Leverage Catalog](<Composants - Utilisation des extensions.md>) | Catalogue | Phase 3, Phase 5 |
| [Extension Coverage Checklist](<Composants - [Review] Couverture des extensions.md>) | Checklist | Phase 1, Phase 3 |
| [Automated Assets Control Guidelines](<Composants - Contrôle des assets automatisés.md>) | Guide | Phase 4 |

---

## Procédures liées

| SOP | Relation |
|-----|--------------|
| [SOP - Rediger des RSA performantes](<../search/Search - Rédiger des RSA performantes.md>) | Amont (configuration initiale des extensions en phase 3) |
| [SOP - Test RSA avec la boucle d'iteration](<../search/Search - Test RSA avec la boucle d'itération.md>) | Parallèle (à mener en parallèle pour l'optimisation du texte d'annonce) |
| [SOP - Lancer une campagne Search](<../search/Search - Lancer une campagne Search.md>) | Amont (extensions définies lors du lancement de la campagne) |

---

## Erreurs fréquentes

| Erreur | Pourquoi ça arrive | Comment l'éviter |
|---------|----------------|--------------|
| Extensions obsolètes qui tournent pendant des mois | Aucune cadence de revue régulière | Lancer cette SOP chaque mois |
| Tous les liens annexes pointent vers la page d'accueil | Configuration bâclée ou réutilisation de modèle | Chaque lien annexe reçoit une page distincte et pertinente |
| Les callouts dupliquent les titres des RSA | Copier-coller depuis le texte d'annonce | Les callouts apportent une nouvelle information, ils ne répètent pas |
| Promotions expirées toujours actives | Oubli de les retirer après les soldes | Programmer des rappels d'agenda pour les dates de fin |
| Les extensions auto-générées prennent le dessus | Paramètres automatisés non vérifiés | Dérouler la phase 4 à chaque cycle |
