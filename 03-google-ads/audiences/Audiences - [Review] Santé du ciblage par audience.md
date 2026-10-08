# Santé du ciblage par audience

> **Plateforme :** Google Ads
> **Catégorie :** Audiences
> **Type :** Checklist
> **Mis à jour :** 2026-05-07

## Objectif

Valide que le ciblage par audience Display, Video et Demand Gen performe bien sur les dimensions démographiques, l'impact de l'expansion, les segments combinés, les insights d'audience et la cohérence inter-campagnes. Nécessite 30+ jours de données de campagne.

---

## Ce que cette checklist valide

Cette checklist confirme :

- Les fonctionnalités d'expansion délivrent une performance acceptable (pas 2x+ pire que le ciblage direct)
- Les données démographiques sont optimisées (outliers traités, exclusions basées sur les données uniquement)
- Les segments combinés performent et sont de taille appropriée
- Les insights d'audience sont consultés pour de nouvelles opportunités de ciblage
- Les segments en mode Observation sont gradués ou supprimés
- La structure inter-campagnes évite le chevauchement et le gaspillage

Cette checklist ne couvre **PAS** :

- La validation de la configuration initiale du ciblage (Voir : [Audience Targeting Launch Checklist](<Audiences - [Review] Lancement du ciblage par audience.md>))
- La validation des signaux d'audience PMax (Voir : [Audience Signal Quality Checklist](<Audiences - [Review] Qualité des signaux d'audience.md>))
- L'exécution des procédures d'optimisation (Voir : [SOP - Optimiser la performance des audiences](<Audiences - Optimiser la performance des audiences.md>))

---

## Quand l'utiliser

Exécuter cette checklist :

- Lors des revues mensuelles des audiences Display, Video ou Demand Gen
- Quand le CPA au niveau audience dépasse les objectifs de 2x+
- Avant d'augmenter les budgets d'audience
- Après 30+ jours de données de campagne accumulées

---

## Checklist

### Performance de l'expansion

- [ ] Performance de l'expansion mesurée via la ligne "Total : Expansion et ciblage optimisé"
- [ ] CPA/ROAS étendu vs. ciblé comparé : étendu > 2x ciblé = DÉSACTIVER
- [ ] Comportement démographique du ciblage optimisé Demand Gen vérifié (peut diffuser au-delà des sélections démographiques quand activé)

### Validation des données démographiques

- [ ] Performance démographique vérifiée sur toutes les dimensions (Âge, Genre, Statut parental, Revenu du foyer)
- [ ] Outliers démographiques traités (CPA > 2x la moyenne campagne avec 50+ clics)
- [ ] Segment "Inconnu" vérifié : pas d'exclusion sans 30+ jours de données montrant un CPA > 2x la moyenne campagne
- [ ] Aucune exclusion démographique appliquée sans 30+ jours de données de performance
- [ ] Les données démographiques sont utilisées comme une couche au-dessus des segments d'audience, pas comme ciblage autonome

### Validation des segments combinés

- [ ] Les segments combinés maintiennent une taille d'audience suffisante après filtrage ET/SAUF (vérifier le statut "Prêt")
- [ ] Les segments composants sont validés individuellement avant combinaison
- [ ] Les segments combinés sont testés dans des ad groups séparés avant scaling
- [ ] Pas plus de 3 conditions ET par segment combiné (rendements décroissants)
- [ ] Performance du segment combiné comparée aux segments composants individuels

### Revue des insights d'audience

- [ ] La page Insights est consultée pour les segments à fort index (3x+) non actuellement ciblés
- [ ] Les insights de vos données sont vérifiés dans le Gestionnaire d'audiences pour la performance inter-campagnes
- [ ] Les segments non ciblés à fort index sont évalués pour ajout en ciblage ou dans des segments combinés
- [ ] Les insights d'audience par asset sont vérifiés pour les opportunités d'alignement créative-audience

### Revue du mode Observation

- [ ] Les segments en mode Observation sont surveillés pour des opportunités d'ajustement d'enchères
- [ ] Aucun segment dormant en Observation depuis 60+ jours sans analyse
- [ ] Les segments performants en Observation sont signalés pour passage en Ciblage

### Performance du ciblage de contenu (Display/Video uniquement)

- [ ] Ciblage de contenu évalué : si l'ajout de sujets/emplacements compléterait le ciblage par audience
- [ ] Sujets/keywords sans conversion supprimés après 30+ jours

### Cohérence inter-campagnes

- [ ] Aucun chevauchement d'audience entre les ad groups ciblant les mêmes utilisateurs avec des enchères différentes
- [ ] Les campagnes de remarketing et de prospection ont des audiences mutuellement exclusives
- [ ] Le capping de fréquence est défini pour éviter la fatigue de l'audience (Display/Video)
- [ ] L'allocation budgétaire correspond à la priorité des audiences (les audiences plus chaudes reçoivent proportionnellement plus de budget)

---

## Référence rapide

| Document | Relation |
|----------|-------------|
| [Audience Segment Catalog](<Audiences - Segments d'audience.md>) | Patterns de segments combinés et optimisation démographique |
| [Audience Targeting Reference](<Audiences - Signaux d'audience.md>) | Mécaniques d'expansion, données démographiques, segments combinés, insights d'audience |
| [SOP - Optimiser la performance des audiences](<Audiences - Optimiser la performance des audiences.md>) | Procédure d'exécution pour l'optimisation des audiences |
| [Audience Targeting Launch Checklist](<Audiences - [Review] Lancement du ciblage par audience.md>) | Validation de la configuration initiale (à exécuter avant cette checklist) |
| [Expand Audience Reach](<Audiences - Étendre la portée d'audience.md>) | Routage des décisions d'expansion d'audience |
