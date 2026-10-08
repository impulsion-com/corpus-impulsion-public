# Santé des campagnes Demand Gen

> **Plateforme :** Google Ads
> **Catégorie :** Demand Gen
> **Type :** Checklist
> **Mis à jour :** 2026-05-07

## Objectif

Valide qu'une campagne Demand Gen est saine sur les dimensions audiences, créative, placements, enchères, attribution et sécurité de marque. Utilisez cette checklist pour identifier les domaines nécessitant une attention, puis orientez vers le SOP ou la fiche appropriée pour l'exécution.

---

## Ce que cette checklist valide

Cette checklist confirme :

- Les audiences sont de taille correcte, segmentées et mises à jour
- Les formats créatifs sont diversifiés, frais et testés
- La distribution des placements est équilibrée entre les canaux
- La stratégie d'enchères correspond à la maturité de la campagne et au volume de conversions
- L'attribution est correctement comprise (différences Google Ads vs. GA4 prises en compte)
- Le flux produits est connecté et performant (pour les campagnes DPA)
- La sécurité de marque et les exclusions de contenu sont configurées

Cette checklist ne couvre **PAS** :

- L'exécution des procédures d'optimisation (celles-ci résident dans les SOPs d'optimisation de campagne)
- La validation de la configuration initiale de la campagne (Voir : [Upper Funnel Campaign Launch Checklist](<../strategie/Strategie - [Review] Lancement de campagne haut de tunnel.md>))
- La validation de la qualité des créatives image ou vidéo (Voir : [Image Creative Quality Checklist](<../creatives/Creatives - [Review] Qualité des créatives image.md>), [Video Creative Quality Checklist](<../creatives/Creatives - [Review] Qualité des créatives vidéo.md>))

---

## Quand l'utiliser

Exécuter cette checklist :

- Lors des revues de performance Demand Gen hebdomadaires ou bimensuelles
- Lors du diagnostic de campagnes Demand Gen sous-performantes
- Avant d'augmenter le budget d'une campagne Demand Gen
- Après avoir hérité d'une campagne Demand Gen existante

---

## Checklist

### Santé des audiences

- [ ] La taille de l'audience source atteint le minimum (1 000+ utilisateurs, 5 000+ recommandé)
- [ ] Le paramètre de portée de l'audience similaire est documenté (Étroit/Équilibré/Large)
- [ ] Le mode de ciblage d'audience similaire est vérifié : mode suggestion (par défaut) vs ciblage strict (opt-out)
- [ ] Le statut du ciblage optimisé est vérifié : DÉSACTIVÉ pour le remarketing, testé pour la prospection
- [ ] Quand le ciblage optimisé est ACTIVÉ : le comportement démographique est vérifié (Google peut diffuser au-delà des sélections démographiques)
- [ ] L'impact de l'expansion est vérifié via la ligne "Total : Expansion et ciblage optimisé" (si l'expansion est activée)
- [ ] La performance démographique est vérifiée : aucun groupe démographique avec un CPA > 2x la moyenne campagne et 50+ clics non traité
- [ ] La qualité de l'audience source est vérifiée : convertis ou clients à haute valeur (pas tous les visiteurs)
- [ ] La fraîcheur de l'audience est vérifiée : listes sources mises à jour dans les 90 derniers jours

### Santé créative

- [ ] Plusieurs formats d'annonces actifs (vidéo + image minimum)
- [ ] Fraîcheur créative : aucune créative inchangée depuis 60+ jours
- [ ] Créative style UGC testée en parallèle de créatives soignées
- [ ] Créative vidéo disponible (format avec le meilleur engagement pour Demand Gen)
- [ ] Annonces carrousel testées pour l'e-commerce/offres multi-produits

### Santé des placements

- [ ] L'allocation par canal est vérifiée (distribution YouTube/Discover/Gmail/GDN)
- [ ] Aucun canal ne consomme 90%+ du budget sans justification
- [ ] Les exclusions de placements sont en place (sécurité de marque)
- [ ] Les placements d'apps mobiles sont exclus ou surveillés

### Santé des enchères

- [ ] Le statut de la période d'apprentissage est vérifié (2-4 semaines attendues)
- [ ] Le volume de conversions est suffisant (30-50 conversions minimum pour des enchères stables)
- [ ] La stratégie d'enchères est appropriée pour la maturité de la campagne (Max Clicks pour le lancement, CPA cible/ROAS cible pour les campagnes matures)
- [ ] Les cibles sont définies selon les benchmarks (analyse comparative) Demand Gen (pas les benchmarks Search)

### Santé de l'attribution

- [ ] Google Ads est utilisé comme source de vérité (pas GA4) pour le reporting Demand Gen
- [ ] L'écart Google Ads vs. GA4 est documenté (un écart de 30-50% est normal)
- [ ] Le suivi des conversions après affichage est activé mais reporté séparément
- [ ] Les conversions après affichage ne sont pas incluses dans les calculs principaux de CPA/ROAS

### Intégration du flux produits

- [ ] Le flux produits est connecté (pour les campagnes DPA)
- [ ] La qualité du flux produits est vérifiée (mêmes standards que Shopping)
- [ ] Le remarketing dynamique est actif et performant

### Sécurité de marque

- [ ] Les exclusions de contenu sont configurées (catégories sensibles)
- [ ] Le type d'inventaire est défini de manière appropriée (Standard recommandé)
- [ ] Les exclusions de catégories sensibles sont en place

### Benchmarks de performance

- [ ] La performance de la campagne est comparée aux benchmarks Demand Gen (CPM 5-15€, CTR 0,5-2%, CVR 1-5%)
- [ ] Le CPA est comparé à l'objectif Demand Gen (pas à l'objectif CPA Search)
- [ ] Le ROAS est comparé à l'objectif Demand Gen (typiquement 50-70% du ROAS cible Search Non-Branded)

---

## Référence rapide

| Document | Relation |
|----------|-------------|
| [Demand Gen Performance Reference](<Demand Gen - Performance.md>) | Métriques de benchmark et attentes de performance |
| [Upper Funnel Campaign Structure Mental Model](<../strategie/Strategie - Structure de campagne haut de tunnel.md>) | Méthode stratégique pour les décisions de campagne Demand Gen |
| [Placement Performance Reference](<Demand Gen - Performance.md>) | Distribution des canaux et analyse des placements |
| [Upper Funnel Campaign Launch Checklist](<../strategie/Strategie - [Review] Lancement de campagne haut de tunnel.md>) | Validation pré-lancement pour les campagnes Demand Gen |
| [Image Creative Quality Checklist](<../creatives/Creatives - [Review] Qualité des créatives image.md>) | Validation de la qualité des assets image |
| [Video Creative Quality Checklist](<../creatives/Creatives - [Review] Qualité des créatives vidéo.md>) | Validation de la qualité des assets vidéo |
