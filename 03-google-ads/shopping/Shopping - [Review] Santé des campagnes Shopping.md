# Santé des campagnes Shopping

> **Plateforme :** Google Ads
> **Catégorie :** Shopping
> **Type :** Checklist
> **Mis à jour :** 2026-05-07

## Objectif

Valide la santé des campagnes Shopping sur les dimensions flux produits, performance produit, enchères et structure.

---

## Ce que cette checklist valide

Cette checklist confirme :

- Le flux produits est sain et exempt d'erreurs bloquantes
- Les segments de performance produit sont à jour et exploitables
- Les données de compétitivité prix ont été vérifiées
- La qualité des titres et images respecte les standards minimum
- La stratégie d'enchères fonctionne dans des paramètres sains
- L'allocation budgétaire supporte les produits les plus performants
- La structure de campagne évite le chevauchement et le gaspillage
- Les termes de recherche sont surveillés et les keywords négatifs sont appliqués

Cette checklist ne couvre **PAS** :

- La validation de la configuration initiale des attributs du flux produits (Voir : [Product Feed Quality Checklist](<../flux-produit/Flux Produit - Qualité du flux produits.md>))
- Les étapes de lancement de campagne (Voir : [Shopping Campaign Launch Checklist](<Shopping - [Review] Lancement de campagne Shopping.md>))
- L'exécution des modifications d'optimisation (Voir : [SOP - Cycle d'optimisation campagne Shopping](<Shopping - Cycle d'optimisation campagne Shopping.md>))
- L'explication des méthodes de qualité du flux produits (Voir : [Product Feed Quality Mental Model](<../flux-produit/Flux Produit - Qualité du flux produits.md>))

---

## Quand l'utiliser

Exécuter cette checklist :

- Avant d'exécuter un cycle d'optimisation de campagne Shopping
- Lors des revues de performance hebdomadaires ou bimensuelles
- Lors du diagnostic de problèmes de performance de campagnes Shopping
- Après des changements significatifs de feed ou de catalogue produit

---

## Checklist

### Santé du flux produits

- [ ] Aucun produit refusé (ou tous les refus ont des plans de correction actifs)
- [ ] Les attributs manquants sont signalés : produits sans GTIN, marque ou attributs requis
- [ ] Les erreurs de qualité des données produit sont vérifiées dans les diagnostics Merchant Center
- [ ] Le rafraîchissement du flux produits se fait selon le calendrier prévu (minimum quotidien pour prix/disponibilité)
- [ ] Les flux supplémentaires sont configurés et synchronisés (si applicable)

> ↪️ **Détails des attributs du flux produits :** Voir [Product Feed Data Specification Reference](<../flux-produit/Flux Produit - Spécifications du feed produit.md>) pour les attributs requis et recommandés.

### Performance produit

- [ ] Les produits sans clic sont identifiés : produits avec 0 impression ou 0 clic après 30+ jours
- [ ] Le taux de produits sans clic est documenté (pourcentage du document sans trafic)
- [ ] Les meilleurs vendeurs reçoivent un budget adéquat (pas limités par le budget)
- [ ] Les produits non rentables sont identifiés (coût élevé, peu/pas de conversions, ROAS sous la cible)
- [ ] Les segments de performance produit sont mis à jour : hero / sidekick / villain / zombie (si applicable)

> ↪️ **Tiers de performance :** Voir [Shopping Product Performance Reference](<Shopping - Performance produit Shopping.md>) pour les définitions de segmentation et les seuils.

### Compétitivité prix

- [ ] Les données de compétitivité prix GMC sont vérifiées
- [ ] Les produits en tier "Élevé" (les plus chers) sont signalés pour revue de prix
- [ ] L'éligibilité au badge prix soldé est vérifiée (prix de base stable 45-60 jours)
- [ ] Les évolutions de prix concurrents sont notées

### Qualité des titres et images

- [ ] Les titres des best-sellers sont vérifiés : contiennent marque + type de produit + attribut clé + différenciateur (Voir : [Product Title Catalog](<../flux-produit/Flux Produit - Titres de produits.md>))
- [ ] La distribution de longueur des titres est vérifiée : titres utilisant la limite de caractères disponible (max 150, viser 70-100)
- [ ] Les descriptions produit sont vérifiées pour les points de vente clés et la couverture de keywords (Voir : [Product Description Catalog](<../flux-produit/Flux Produit - Descriptions de produits.md>))
- [ ] Les images principales respectent les standards de qualité : fond blanc, produit clair, pas de superposition
- [ ] Les produits à fort volume d'impressions/faible CTR sont signalés pour optimisation titre/image

### Santé de la stratégie d'enchères

- [ ] Le volume de conversions est suffisant pour le type de stratégie d'enchères
- [ ] Le ROAS/CPA réel est à moins de 20% de la cible sur les 14 derniers jours
- [ ] La stratégie d'enchères n'est pas bloquée en "Apprentissage" depuis 14+ jours
- [ ] Aucune modification récente de stratégie d'enchères dans les 14 derniers jours

### Santé du budget

- [ ] IS Lost (Budget) sur les best-sellers/campagnes est documenté
- [ ] Le pacing des dépenses mensuelles est en bonne voie (si applicable)
- [ ] L'allocation budgétaire entre Shopping Standard et PMax est vérifiée

### Santé de la structure

- [ ] La granularité des groupes de fiches est appropriée (pas "Tous les produits" dans un seul groupe)
- [ ] Les custom labels reflètent les tiers de performance actuels
- [ ] La stratégie de segmentation produit est active (hero/sidekick/villain/zombie), si applicable (Voir : [Feed Segmentation Catalog](<../flux-produit/Flux Produit - Tactiques de segmentation.md>))
- [ ] Aucun chevauchement de groupes de fiches causant de la cannibalisation

### Santé des termes de recherche

- [ ] Le rapport sur les termes de recherche Shopping est vérifié
- [ ] Les patterns de requêtes non pertinentes sont identifiés et exclus
- [ ] Les listes de keywords négatifs sont liées aux campagnes Shopping
- [ ] L'analyse N-gram est appliquée aux termes de recherche Shopping

---

## Référence rapide

| Document | Relation |
|----------|--------------|
| [Shopping Product Performance Reference](<Shopping - Performance produit Shopping.md>) | Définitions des tiers de performance et seuils |
| [Product Feed Quality Checklist](<../flux-produit/Flux Produit - Qualité du flux produits.md>) | Validation des attributs du flux produits (exécuter avant cette checklist) |
| [Product Feed Quality Mental Model](<../flux-produit/Flux Produit - Qualité du flux produits.md>) | Méthode de qualité du flux produits et priorités |
| [Product Feed Data Specification Reference](<../flux-produit/Flux Produit - Spécifications du feed produit.md>) | Attributs de flux produits requis et recommandés |
| [Shopping Campaign Launch Checklist](<Shopping - [Review] Lancement de campagne Shopping.md>) | Validation pré-lancement (checklist compagnon) |
| [Bid Strategy Health Checklist](<../encheres/Enchères - [Review] Santé de la stratégie d'enchères.md>) | Validation approfondie de la stratégie d'enchères |
