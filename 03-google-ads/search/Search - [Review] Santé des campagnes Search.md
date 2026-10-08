# Santé des campagnes Search

> **Plateforme :** Google Ads
> **Catégorie :** Search
> **Type :** Checklist
> **Mis à jour :** 2026-05-07

## Objectif

Valide qu'une campagne Search est saine sur toutes les dimensions d'optimisation avant d'exécuter des procédures d'optimisation détaillées. Utilisez cette checklist pour identifier les domaines nécessitant une attention, puis orientez vers le SOP ou la fiche appropriée pour l'exécution.

---

## Ce que cette checklist valide

Cette checklist confirme :

- Le portefeuille de keywords est sain : Niveau de qualités, efficacité des dépenses, couverture des types de correspondance
- Les termes de recherche sont contrôlés : requêtes non pertinentes capturées, listes d'exclusion liées
- Les annonces performent et sont testées : force RSA, pertinence, statut d'itération
- Les extensions fournissent une couverture suffisante
- La stratégie d'enchères fonctionne dans des paramètres sains
- Le budget ne limite pas silencieusement la performance
- La structure de campagne supporte une diffusion efficace
- La position concurrentielle est surveillée

Cette checklist ne couvre **PAS** :

- L'exécution des procédures d'optimisation (celles-ci résident dans les SOPs d'optimisation de campagne)
- L'audit des paramètres au niveau compte (Voir : [Account Health Checklist](<../optimisation/Optimisation - [Review] Santé du compte.md>))
- La validation de la configuration initiale de la campagne (Voir : [Search Campaign Launch Checklist](<Search - [Review] Lancement de campagne Search.md>))

---

## Quand l'utiliser

Exécuter cette checklist :

- Avant d'exécuter un cycle d'optimisation de campagne Search
- Lors des revues de performance hebdomadaires ou bimensuelles
- Lors du diagnostic de problèmes de performance de campagnes Search
- Après avoir hérité d'une campagne Search existante

---

## Checklist

### Santé des keywords

- [ ] La distribution des QS est vérifiée : moins de 20% des keywords ont un QS inférieur à 7
- [ ] Aucun keyword non-convertissant avec des dépenses dépassant 2x le CPA cible et 50+ clics
- [ ] La part d'impressions (Search IS) est vérifiée : campagnes ou ad groups avec IS inférieur à 70% identifiés
- [ ] Les valeurs IS Lost (Budget) et IS Lost (Rank) sont documentées
- [ ] Aucun keyword dupliqué entre ad groups ou campagnes causant de la cannibalisation

> ↪️ **Approfondissement Niveau de qualité :** Voir [Niveau de qualité Reference](<Search - Niveau de qualité.md>) pour les ventilations par composant et les leviers d'amélioration.

### Santé des termes de recherche

- [ ] Le rapport sur les termes de recherche est vérifié sur une plage de dates alignée au délai de conversion du compte (pas une fenêtre fixe)
- [ ] Aucun nouveau pattern de requête non pertinente ne consomme plus de 5% des dépenses de campagne
- [ ] Les listes d'exclusion N-gram sont liées à la campagne (listes non-convertissantes et inefficaces)
- [ ] La liste d'exclusion principale des termes de recherche non pertinents est liée à la campagne
- [ ] Les termes de recherche performants non encore ajoutés comme keywords sont identifiés
- [ ] La performance des variantes proches est vérifiée pour les divergences significatives par rapport aux keywords parents

> ↪️ **Analyse des termes de recherche :** Voir [Search Term Report Reference](<Search - Rapport sur les termes de recherche.md>) pour la configuration et les patterns d'analyse du rapport.

> ↪️ **Méthodologie N-gram :** Voir [N-gram Analysis Reference](<Search - Analyse N-gram.md>) pour la construction et la maintenance des listes d'exclusion.

### Santé des annonces

- [ ] Tous les ad groups ont au moins une RSA active
- [ ] La performance des assets est jugée par CPI/RPI/PPI et Asset Impression Share (AIS), pas par Ad Strength ou CTR
- [ ] Le statut de test des RSAs est vérifié : tests actifs en cours via la méthodologie Iteration Loop
- [ ] La stratégie de pinning est vérifiée : pas de sur-pinning (max 2 positions pinnées)

### Couverture des extensions

- [ ] Minimum 4 liens annexes actifs par campagne
- [ ] Minimum 4 callouts actifs par campagne
- [ ] Structured snippets configurés
- [ ] Extensions auto-générées désactivées ou vérifiées

> ↪️ **Validation complète des extensions :** Voir [Extension Coverage Checklist](<../composants/Composants - [Review] Couverture des extensions.md>) pour le critère complet de couverture des extensions.

### Santé de la stratégie d'enchères

- [ ] La stratégie d'enchères n'est pas en "Apprentissage" ou "Apprentissage (limitée)" depuis 14+ jours
- [ ] Le volume de conversions est suffisant pour la stratégie d'enchères (50+ mensuel pour CPA cible/ROAS cible)
- [ ] Le CPA/ROAS réel est à moins de 20% de la cible sur les 14 derniers jours
- [ ] Aucune modification récente de stratégie d'enchères dans les 14 derniers jours (respecter la période d'apprentissage)

> ↪️ **Approfondissement stratégie de bid :** Voir [Bid Strategy Health Checklist](<../encheres/Enchères - [Review] Santé de la stratégie d'enchères.md>) pour le critère complet de validation de la stratégie de bid.

### Santé du budget

- [ ] IS Lost (Budget) documenté : campagnes avec plus de 10% signalées pour vérification
- [ ] Le pacing des dépenses mensuelles est en bonne voie (à moins de 10% de l'objectif budgétaire mensuel)

### Santé de la structure

- [ ] Tous les ad groups reçoivent 4 000+ impressions mensuelles (1 000/semaine) (signaler les groupes sous-performants)
- [ ] La pertinence keyword-annonce est vérifiée : les keywords de chaque ad group correspondent au message publicitaire
- [ ] Aucun ad group avec un seul keyword et très faible volume (candidats à la consolidation)

### Santé concurrentielle

- [ ] Les Insights sur les enchères sont vérifiés pour les évolutions de part d'impressions
- [ ] Les entrées de nouveaux concurrents sont notées
- [ ] Les changements significatifs de taux de chevauchement sont signalés

---

## Référence rapide

| Document | Relation |
|----------|-------------|
| [Niveau de qualité Reference](<Search - Niveau de qualité.md>) | Ventilation par composant QS et leviers d'amélioration |
| [Keyword Performance Analysis Mental Model](<Search - Analyse de performance des keywords.md>) | Framework pour évaluer la santé du portefeuille de keywords |
| [Search Term Report Reference](<Search - Rapport sur les termes de recherche.md>) | Configuration et analyse du rapport sur les termes de recherche |
| [N-gram Analysis Reference](<Search - Analyse N-gram.md>) | Méthodologie des listes d'exclusion N-gram |
| [Bid Strategy Health Checklist](<../encheres/Enchères - [Review] Santé de la stratégie d'enchères.md>) | Critère complet de validation de la stratégie de bid |
| [Extension Coverage Checklist](<../composants/Composants - [Review] Couverture des extensions.md>) | Validation complète de la couverture des extensions |
| [Search Campaign Launch Checklist](<Search - [Review] Lancement de campagne Search.md>) | Validation de la configuration initiale de campagne |
| [Account Health Checklist](<../optimisation/Optimisation - [Review] Santé du compte.md>) | Vérifications de santé au niveau compte (Layer 1) |
