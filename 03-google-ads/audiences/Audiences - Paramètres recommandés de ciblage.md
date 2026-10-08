# Ciblage par audience

> **Plateforme :** Google Ads
> **Catégorie :** Audiences
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Recommandations de configuration du ciblage par audience pour les campagnes Display, Video et Demand Gen : quand activer ou désactiver les fonctionnalités d'expansion, comment utiliser le mode ciblage vs observation, les schémas d'optimisation démographique, et les décisions de superposition de ciblage par contenu.

---

## Ce que couvre / ne couvre pas ce document

**Ce document :**

- Recommande des paramètres spécifiques par type de campagne et objectif
- Explique quand activer/désactiver les fonctionnalités d'expansion avec justification
- Fournit des critères de décision pour le mode de ciblage, les données démographiques et la superposition de contenu
- Inclut des conditions d'exception pour chaque recommandation

**Ce document ne couvre PAS :**

- Le fonctionnement mécanique des fonctionnalités (Voir : [Audience Targeting Reference](<Audiences - Signaux d'audience.md>))
- Le processus de configuration pas à pas (Voir : [SOP - Configurer le ciblage par audience](<Audiences - Configurer le ciblage par audience.md>))
- La liste des options de segments d'audience (Voir : [Audience Segment Catalog](<Audiences - Segments d'audience.md>))

---

## Ciblage optimisé et expansion d'audience

### Paramètres recommandés

| Type de campagne | Objectif | Fonctionnalité | Paramètre recommandé | Justification |
|--------------|------|---------|-------------------|-----------|
| Display | Conversions (remarketing) | Ciblage optimisé | **DÉSACTIVÉ** | Les audiences de remarketing sont sélectionnées. L'expansion dilue le contrôle. |
| Display | Conversions (prospection) | Ciblage optimisé | **ACTIVÉ** | Les données de conversion de Google trouvent des convertisseurs supplémentaires au-delà de vos sélections. |
| Display | Test de segments spécifiques | Ciblage optimisé | **DÉSACTIVÉ** | Des données de performance propres nécessitent aucune expansion d'audience. |
| Video | Ventes/Leads/Trafic (remarketing) | Ciblage optimisé | **DÉSACTIVÉ** | Même logique que le Display remarketing. |
| Video | Ventes/Leads/Trafic (prospection) | Ciblage optimisé | **ACTIVÉ** | Même logique que le Display prospection. |
| Video | Considération/Notoriété | Expansion d'audience | **ACTIVÉ** | Une portée plus large est l'objectif des campagnes de notoriété. |
| Demand Gen | Remarketing | Ciblage optimisé | **DÉSACTIVÉ** | Le remarketing nécessite une restriction d'audience. |
| Demand Gen | Prospection | Ciblage optimisé | **Tester ACTIVÉ vs DÉSACTIVÉ** | Mesurer le CPA de l'expansion avant de s'engager. Lancer 14+ jours en ACTIVÉ, comparer avec DÉSACTIVÉ. |

### Conditions d'exception

| Recommandation | Déroger quand |
|---------------|-------------|
| Expansion DÉSACTIVÉE pour le remarketing | Les audiences de remarketing sont trop petites (<1 000 utilisateurs) et les campagnes ne peuvent pas diffuser. Activer temporairement pendant la constitution du volume d'audience. |
| Expansion ACTIVÉE pour la prospection | Vous avez besoin de données propres au niveau du segment pour évaluer quelles audiences fonctionnent. Désactiver pendant la phase de test initiale de 30 jours. |
| Expansion ACTIVÉE pour la Video notoriété | Le budget est limité et vous avez besoin d'une portée contrôlée. Désactiver et utiliser des emplacements spécifiques à la place. |

### Mesurer l'impact de l'expansion

Vérifiez régulièrement la ventilation expansion/ciblage optimisé pour valider ces paramètres. Allez dans Audiences, mots clés et contenu > Audiences > ligne "Total : Expansion et ciblage optimisé".

| CPA expansion vs CPA ciblé | Action |
|------------------------------|--------|
| < 1,5x | L'expansion fonctionne. Garder ACTIVÉ. |
| 1,5-2x | Surveiller pendant 14+ jours supplémentaires avant de décider. |
| > 2x | L'expansion est inefficace. Désactiver. |
| L'expansion génère > 50% des conversions | Vos sélections d'audience sont peut-être trop étroites. Revoir les segments avant de désactiver l'expansion. |

> Comportement démographique en Demand Gen. Quand le ciblage optimisé est ACTIVÉ en Demand Gen, Google peut diffuser au-delà de vos sélections démographiques. Vérifiez les performances démographiques après activation. Restreignez à l'âge et au sexe uniquement dans les paramètres du groupe d'annonces si nécessaire.

---

## Mode Ciblage vs Observation

### Paramètres recommandés

| Scénario | Mode | Justification |
|----------|------|-----------|
| Campagnes de remarketing | **Ciblage** | Vous savez qui toucher. Restreignez la diffusion à ces utilisateurs. |
| Audiences de prospection validées | **Ciblage** | Audiences validées par des tests. Engagez le budget dessus. |
| Audiences nouvelles/non testées | **Observation** | Collecter des données de performance sans engager le budget. Passer en Ciblage après 30+ jours si le CPA atteint l'objectif. |
| Test d'ajustements d'enchères | **Observation** | Appliquer des modificateurs d'enchères par segment sans restreindre la diffusion. |
| Demand Gen (tous) | **Ciblage** | Demand Gen ne supporte pas le mode Observation. |

### Conditions d'exception

| Recommandation | Déroger quand |
|---------------|-------------|
| Observation pour les nouvelles audiences | Vous disposez de données externes solides (ex. : analyse CRM) confirmant la qualité de l'audience. Passer l'Observation et aller directement en Ciblage. |
| Ciblage pour les audiences validées | Vous suspectez un déclin d'audience (CPA en hausse sur 3+ mois). Passer en Observation pour réévaluer sans perdre toute diffusion. |

### Critères de graduation (Observation vers Ciblage)

| Métrique | Seuil |
|--------|-----------|
| Données minimum | 30+ jours et 50+ clics |
| CPA | Dans la limite de 1,5x la moyenne de la campagne |
| Volume de conversions | 5+ conversions pendant la période d'Observation |

Les segments qui n'atteignent pas ces seuils après 60 jours : retirer de l'Observation.

---

## Optimisation démographique

### Approche recommandée

Les données démographiques fonctionnent comme une couche de raffinement par-dessus les segments d'audience, pas comme un ciblage autonome.

| Phase | Action | Timing |
|-------|--------|--------|
| Lancement | Cibler tous les groupes démographiques (aucune exclusion) | Jour 1 |
| Collecte de données | Collecter 30+ jours de données de performance par groupe | Jours 1-30 |
| Analyse | Identifier les outliers : CPA > 2x la moyenne de la campagne avec 50+ clics | Jour 30+ |
| Optimisation (CPC manuel) | Appliquer des ajustements d'enchères par groupe (max 20% de changement par cycle) | Mensuelle |
| Optimisation (Stratégies d'enchères intelligentes) | Exclure les groupes sous-performants | Mensuelle |

### Conditions d'exception

| Recommandation | Déroger quand |
|---------------|-------------|
| Cibler toutes les données démographiques au lancement | Vous disposez de données antérieures solides du même compte/secteur confirmant qu'un groupe démographique ne convertit jamais. Exclure dès le jour 1. |
| Attendre 30 jours avant d'exclure | Un groupe démographique a 100+ clics et zéro conversion. Exclure à 14 jours. |
| Ne jamais exclure "Inconnu" | "Inconnu" affiche un CPA > 2x la moyenne de la campagne avec 50+ clics après 30+ jours. Exclure avec prudence : cela retire 15-30% de l'inventaire. |

---

## Superposition de ciblage par contenu (Display/Video)

### Approche recommandée

Le ciblage par contenu contrôle OÙ les annonces apparaissent. Il complète le ciblage par audience (QUI voit les annonces).

| Objectif | Stratégie | Effet sur la portée |
|------|----------|----------------|
| Portée maximale | Utiliser le ciblage par audience OU le ciblage par contenu, pas les deux | Inventaire complet disponible |
| Pertinence maximale | Utiliser le ciblage par audience ET le ciblage par contenu | Réduction significative de la portée (logique ET) |
| Sécurité de marque | Ajouter des exclusions de contenu (sujets, emplacements) | Réduction modérée de la portée |

### Quand ajouter du ciblage par contenu

| Condition | Ajouter du ciblage par contenu ? | Type |
|-----------|----------------------|------|
| CPA élevé en Display prospection | Oui : ajouter des sujets pertinents pour restreindre le contexte de placement | Sujets |
| Préoccupations de sécurité de marque | Oui : ajouter des emplacements spécifiques de confiance | Emplacements gérés |
| Bonnes performances sur des sites spécifiques | Oui : cibler ces sites directement | Emplacements gérés |
| Faible volume en Display | Non : le ciblage par contenu restreint encore plus la portée | N/A |
| Test de nouvelles audiences | Non : le ciblage par contenu masque la qualité du signal au niveau audience | N/A |

### Conditions d'exception

| Recommandation | Déroger quand |
|---------------|-------------|
| Pas de ciblage par contenu pendant le test d'audience | Vous avez un budget illimité et voulez tester audience + contexte simultanément. Lancer des groupes d'annonces séparés pour une comparaison propre. |
| Sujets pour réduire le CPA | Les sujets sans conversion restent après 30+ jours : les supprimer plutôt qu'ajouter plus de sujets. |

> Demand Gen ne supporte pas le ciblage par contenu. Seul le ciblage par audience est disponible.

---

## Configuration des audiences similaires (Demand Gen)

### Paramètres recommandés

| Paramètre | Recommandation | Justification |
|---------|---------------|-----------|
| Source de base | Convertisseurs ou clients à haute LTV | La qualité de la base est le levier de contrôle principal. Les bases "tous les visiteurs" produisent des audiences similaires faibles. |
| Taille de la base | 1 000+ utilisateurs matchés (5 000+ recommandés) | Des bases plus grandes donnent à Google plus de points de données pour la modélisation. |
| Paramètre de portée | Commencer avec **Équilibré** | Meilleure similarité à une échelle raisonnable. |
| Mode | Mode suggestion (par défaut) | Permet à Google de diffuser auprès d'utilisateurs qualifiés au-delà du seuil. |

### Quand modifier les paramètres de portée

| Performance actuelle | Action |
|--------------------|--------|
| Volume trop faible avec Équilibré | Passer à Large. Prioriser l'amélioration de la qualité de la base plutôt que le paramètre de portée. |
| CPA trop élevé avec Équilibré | Passer à Étroit. Si le CPA est toujours élevé, le problème est la qualité de la base, pas la portée. |
| Performance stable, besoin de plus de volume | Passer à Large. Surveiller le CPA pendant 14+ jours. |

### Conditions d'exception

| Recommandation | Déroger quand |
|---------------|-------------|
| Commencer avec Équilibré | Vous avez une très petite base (<2 000 utilisateurs). Commencer avec Large pour assurer la diffusion. |
| Utiliser les convertisseurs comme base | Vous n'avez pas de données de conversion. Utiliser les visiteurs à fort engagement (5+ sessions, visiteurs de la page tarifs) comme proxy. |

---

## Résumé des paramètres de campagne

### Display

| Paramètre | Recommandé | Exception |
|---------|------------|-----------|
| Mode de ciblage | Ciblage pour le remarketing, Observation pour les tests de prospection | Passer en Ciblage pour les audiences de prospection validées |
| Ciblage optimisé | DÉSACTIVÉ pour le remarketing, ACTIVÉ pour la prospection | DÉSACTIVÉ pendant les phases de test de 30 jours |
| Plafonnement de fréquence | 3-5 impressions par utilisateur par jour | Plus élevé pour les séquences de remarketing, plus bas pour la notoriété |
| Exclusions de contenu | Activer les exclusions de sécurité de marque | N/A |

### Video

| Paramètre | Recommandé | Exception |
|---------|------------|-----------|
| Mode de ciblage | Ciblage pour le remarketing, Observation pour les tests de prospection | Passer en Ciblage pour les audiences validées |
| Ciblage optimisé (Ventes/Leads/Trafic) | DÉSACTIVÉ pour le remarketing, ACTIVÉ pour la prospection | DÉSACTIVÉ pendant les tests |
| Expansion d'audience (Considération/Notoriété) | ACTIVÉ pour la portée | DÉSACTIVÉ quand le budget est limité |
| Plafonnement de fréquence | 2-3 impressions par utilisateur par jour pour la vidéo | Plus élevé pour les messages séquentiels |
| Exclusions de contenu | Inventaire limité recommandé, Standard minimum | Étendu uniquement pour les campagnes de portée maximale |

### Demand Gen

| Paramètre | Recommandé | Exception |
|---------|------------|-----------|
| Ciblage optimisé | DÉSACTIVÉ pour le remarketing, tester pour la prospection | Garder DÉSACTIVÉ pendant les 30 premiers jours d'une nouvelle campagne |
| Portée des audiences similaires | Équilibré | Étroit pour la recherche d'efficacité, Large pour le volume |

---

## Documents liés

| Document | Relation |
|----------|-------------|
| [Audience Targeting Reference](<Audiences - Signaux d'audience.md>) | Fonctionnement mécanique des fonctionnalités |
| [Audience Segment Catalog](<Audiences - Segments d'audience.md>) | Options de segments et schémas de segments combinés |
| [Audience Strategy Mental Model](<Audiences - Stratégie d'audience.md>) | Cadre conceptuel signaux vs ciblage |
| [Content Exclusion Guidelines](<../display/Display - Exclusions de contenu.md>) | Recommandations d'exclusion de contenu |
| [Audience Targeting Launch Checklist](<Audiences - [Review] Lancement du ciblage par audience.md>) | Valide la configuration du ciblage |
| [Audience Targeting Health Checklist](<Audiences - [Review] Santé du ciblage par audience.md>) | Valide la santé continue du ciblage |
