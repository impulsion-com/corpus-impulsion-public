# Lancement du ciblage par audience

> **Plateforme :** Google Ads
> **Catégorie :** Audiences
> **Type :** Checklist
> **Mis à jour :** 2026-05-07

## Objectif

Valide que le ciblage par audience Display, Video et Demand Gen est correctement configuré avant le lancement ou après des modifications significatives du ciblage.

---

## Ce que cette checklist valide

Cette checklist confirme :

- Les types de segments d'audience correspondent à l'objectif de campagne
- Le mode de ciblage est correctement défini (Ciblage vs Observation)
- Les fonctionnalités d'expansion sont configurées par type de campagne
- Les tailles d'audience atteignent les seuils minimum
- Les segments similaires (lookalike) sont correctement constitués (Demand Gen)
- Le ciblage de contenu complète le ciblage par audience (Display/Video)
- Les listes d'exclusion protègent contre le gaspillage et le chevauchement

Cette checklist ne couvre **PAS** :

- L'évaluation de la performance continue des audiences (Voir : [Audience Targeting Health Checklist](<Audiences - [Review] Santé du ciblage par audience.md>))
- La revue des données démographiques, segments combinés ou insights d'audience (nécessite 30+ jours de données)
- La validation des signaux d'audience PMax (Voir : [Audience Signal Quality Checklist](<Audiences - [Review] Qualité des signaux d'audience.md>))
- La configuration pas à pas du ciblage (Voir : [SOP - Configurer le ciblage par audience](<Audiences - Configurer le ciblage par audience.md>))

---

## Quand l'utiliser

Exécuter cette checklist :

- Après avoir complété le [SOP - Configurer le ciblage par audience](<Audiences - Configurer le ciblage par audience.md>)
- Avant le lancement d'une nouvelle campagne Display, Video ou Demand Gen
- Après modification de la structure de ciblage par audience dans une campagne
- Lors d'audits de campagnes pour vérifier les fondations du ciblage

---

## Checklist

### Sélection des segments d'audience

- [ ] Les segments d'audience principaux correspondent à l'objectif de campagne (remarketing, prospection ou notoriété)
- [ ] La température de l'audience s'aligne avec l'étape du tunnel (chaud/tiède pour le remarketing, froid/glacé pour la prospection)
- [ ] Au moins un type de segment est de la donnée first-party (visiteurs du site ou Customer Match) quand disponible
- [ ] Les segments correspondent au message créatif et à la Landing Page de l'ad group

> ↪️ **Parcourir les options de segments.** Voir [Audience Segment Catalog](<Audiences - Segments d'audience.md>) pour les types de segments, exemples et patterns de segments combinés.

### Mode de ciblage

- [ ] Mode de ciblage correctement défini : "Ciblage" pour le remarketing, "Observation" pour la collecte de données en prospection
- [ ] Aucun ad group accidentellement en Observation quand Ciblage est prévu (ou inversement)

### Fonctionnalités d'expansion

- [ ] La bonne fonctionnalité identifiée par type de campagne : ciblage optimisé (Display, Video Ventes/Leads/Trafic, Demand Gen) vs expansion d'audience (Video Considération/Notoriété)
- [ ] Ciblage optimisé ACTIVÉ pour les campagnes de prospection orientées conversion
- [ ] Ciblage optimisé DÉSACTIVÉ pour les campagnes de remarketing
- [ ] Le paramètre d'expansion d'audience (Video considération/notoriété) correspond à l'objectif portée vs précision
- [ ] Le comportement démographique du ciblage optimisé Demand Gen est connu (peut diffuser au-delà des sélections démographiques quand activé)

### Exigences de taille d'audience

- [ ] Chaque segment de remarketing a 100+ utilisateurs (1 000+ recommandé)
- [ ] Les listes Customer Match ont 1 000+ utilisateurs matchés
- [ ] L'indicateur de taille d'audience affiche "Prêt" dans l'interface Google Ads

### Segments similaires (Demand Gen uniquement)

- [ ] La liste source contient 1 000+ utilisateurs matchés
- [ ] La liste source est de haute qualité (convertis ou clients à haute valeur, pas tous les visiteurs)
- [ ] Le paramètre de portée correspond à l'objectif de campagne (Étroit pour l'efficacité, Équilibré par défaut, Large pour le scale)
- [ ] Le segment similaire est construit à partir d'un segment actif depuis 30+ jours

### Ciblage de contenu (Display/Video uniquement)

- [ ] Le ciblage de contenu complète le ciblage par audience (si utilisé)
- [ ] La logique ET entre audiences et contenu est intentionnelle (réduit significativement la portée)
- [ ] Le ciblage par sujet est pertinent pour la catégorie produit/service
- [ ] Les exclusions de placements couvrent les catégories non sûres pour la marque

### Couverture des exclusions

- [ ] Les convertis récents sont exclus du remarketing (fenêtre de 7-30 jours selon le cycle d'achat)
- [ ] Les clients existants sont exclus des campagnes d'acquisition de nouveaux clients
- [ ] Les catégories de contenu non sûres pour la marque sont exclues (Display/Video)
- [ ] Les termes de marque concurrents sont exclus si pertinent
- [ ] Les listes d'exclusion sont à jour et rafraîchies

---

## Référence rapide

| Document | Relation |
|----------|-------------|
| [Audience Segment Catalog](<Audiences - Segments d'audience.md>) | Options de types de segments et patterns de segments combinés |
| [Audience Targeting Reference](<Audiences - Signaux d'audience.md>) | Mécaniques du mode ciblage, fonctionnalités d'expansion, exigences de taille |
| [Content Targeting Reference](<../display/Display - Ciblage de contenu.md>) | Spécifications du ciblage de contenu pour Display/Video |
| [SOP - Configurer le ciblage par audience](<Audiences - Configurer le ciblage par audience.md>) | Procédure d'exécution validée par cette checklist |
| [Audience Targeting Health Checklist](<Audiences - [Review] Santé du ciblage par audience.md>) | Validation continue de la performance (à exécuter après 30+ jours de données) |
