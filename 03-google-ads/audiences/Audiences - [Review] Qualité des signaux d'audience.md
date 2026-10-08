# Qualité des signaux d'audience

> **Plateforme :** Google Ads
> **Catégorie :** Audiences
> **Type :** Checklist
> **Mis à jour :** 2026-05-07

## Objectif

Valide que la configuration des signaux d'audience Performance Max respecte les exigences de qualité, couverture et exclusion.

---

## Ce que cette checklist valide

Cette checklist confirme :

- La couverture des tiers de signaux (plusieurs tiers de qualité représentés)
- La qualité des données Customer Match (taille de liste, taux de correspondance, fraîcheur)
- La qualité des segments personnalisés (pertinence, volume, pas de duplication)
- La configuration des thèmes de recherche (risque de cannibalisation géré)
- La couverture des exclusions (convertis et clients exclus quand nécessaire)
- L'alignement signal-asset group (les signaux correspondent au thème de l'asset group)

Cette checklist ne couvre **PAS** :

- L'enseignement de la sélection des types de signaux (Voir : [Audience Signal Catalog](<Audiences - Signaux d'audience.md>))
- La configuration pas à pas des signaux (Voir : [SOP - Configurer les signaux d'audience](<Audiences - Configurer les signaux d'audience.md>))
- L'explication de la méthode signal vs. ciblage (Voir : [Audience Strategy Mental Model](<Audiences - Stratégie d'audience.md>))
- La validation des audiences Display, Video ou Demand Gen (Voir : [Audience Targeting Launch Checklist](<Audiences - [Review] Lancement du ciblage par audience.md>), [Audience Targeting Health Checklist](<Audiences - [Review] Santé du ciblage par audience.md>))

---

## Quand l'utiliser

Exécuter cette checklist :

- Après avoir complété le [SOP - Configurer les signaux d'audience](<Audiences - Configurer les signaux d'audience.md>)
- Lors d'audits de campagnes Performance Max
- Après l'ajout ou la modification de signaux d'audience dans un asset group PMax
- Avant le lancement d'une nouvelle campagne PMax

---

## Checklist

### Couverture des signaux

- [ ] Au moins un signal Tier 1 est présent (Customer Match ou convertis du site)
- [ ] Au moins un signal Tier 2-3 est présent (visiteurs du site, utilisateurs YouTube ou segments personnalisés)
- [ ] L'ensemble des signaux couvre au moins 3 types de signaux différents
- [ ] Les signaux correspondent au thème produit/service de l'asset group

### Qualité du Customer Match

- [ ] La liste Customer Match contient 1 000+ utilisateurs matchés (100 minimum pour la diffusion, 1 000+ recommandé)
- [ ] La liste est uploadée avec plusieurs identifiants (email + téléphone et/ou adresse)
- [ ] Le taux de correspondance est de 29%+ (investiguer si inférieur)
- [ ] La liste a été mise à jour dans les 30 derniers jours
- [ ] Le type de liste approprié est sélectionné pour l'objectif de campagne (tous les clients vs. sous-ensemble à haute valeur)

### Signaux des visiteurs du site

- [ ] Le segment des convertis utilise une fenêtre de 90-540 jours
- [ ] Le segment de tous les visiteurs utilise une fenêtre de 30-90 jours
- [ ] Le Google Tag se déclenche correctement sur toutes les pages pertinentes
- [ ] Les tailles de segments sont de 1 000+ utilisateurs (100 minimum pour la diffusion)

### Qualité des segments personnalisés (termes de recherche)

- [ ] Le segment contient 10-15 termes de recherche à forte conversion (pas des centaines)
- [ ] Les termes sont des requêtes réellement convertissantes des campagnes Search (pas des suppositions)
- [ ] Aucun terme générique d'un seul mot inclus
- [ ] Aucun terme de marque inclus (déjà capturé par d'autres canaux)
- [ ] Les termes correspondent au thème produit/service de l'asset group

### Qualité des segments personnalisés (URLs/apps)

- [ ] Le segment contient 10-15 URLs pertinentes de concurrents ou du secteur
- [ ] Les URLs sont des pages spécifiques, pas des pages d'accueil génériques
- [ ] Aucun site générique inclus (google.com, facebook.com, sites d'actualités)

### Configuration des thèmes de recherche

- [ ] Les thèmes de recherche ne sont utilisés que si aucune campagne Search active ne couvre les mêmes requêtes
- [ ] Pas plus de 25 thèmes de recherche par asset group
- [ ] Les thèmes de recherche ne dupliquent pas les keywords des campagnes Search
- [ ] Le risque de cannibalisation est reconnu et accepté (si utilisation de thèmes de recherche en parallèle de campagnes Search)

### Segments prédéfinis Google

- [ ] Les segments In-Market sont pertinents pour la catégorie produit/service
- [ ] Les segments d'affinité et démographiques sont superposés avec des signaux de meilleure qualité (pas utilisés seuls)
- [ ] Pas plus de 2-3 segments In-Market sélectionnés (éviter de diluer la clarté du signal)

> ↪️ **Parcourir les noms de segments :** Voir [Audience Segments Reference](<Audiences - Segments d'audience.md>) pour la liste complète des segments In-Market, d'affinité et d'événements de vie disponibles dans Google Ads.

### Couverture des exclusions

- [ ] Les convertis récents sont exclus (fenêtre de 7-30 jours selon le cycle d'achat)
- [ ] Les clients existants sont exclus (si campagne d'acquisition de nouveaux clients)
- [ ] Les exclusions de keywords de marque sont appliquées au niveau campagne (si protection des campagnes Search)
- [ ] Les listes d'exclusion sont à jour et régulièrement mises à jour

### Alignement signal-asset group

- [ ] Les signaux de chaque asset group correspondent à son thème produit/service
- [ ] Les différents asset groups utilisent des configurations de signaux différentes (pas des copies identiques)
- [ ] L'intensité des signaux correspond à l'objectif business (efficacité = signaux étroits, croissance = signaux plus larges)

---

## Référence rapide

| Document | Relation |
|----------|-------------|
| [Audience Signal Catalog](<Audiences - Signaux d'audience.md>) | Options et configurations des types de signaux |
| [Audience Signals Reference](<Audiences - Signaux d'audience.md>) | Spécifications des signaux, limites et hiérarchie de qualité |
| [SOP - Configurer les signaux d'audience](<Audiences - Configurer les signaux d'audience.md>) | Utilise cette checklist pour la validation |
| [SOP - Construire des listes Customer Match](<Audiences - Construire des listes Customer Match.md>) | Crée les listes Customer Match validées ici |
