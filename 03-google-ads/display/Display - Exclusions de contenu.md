# Exclusions de contenu

> **Plateforme :** Google Ads
> **Catégorie :** Display
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Ce document fournit les paramètres d'exclusion de contenu recommandés pour les campagnes Display et Video afin d'assurer la sécurité de la marque et de réduire les dépenses gaspillées sur des emplacements de basse qualité.

Les exclusions de contenu contrôlent OÙ vos annonces n'apparaissent PAS. Une bonne configuration des exclusions empêche les annonces de s'afficher à côté de contenu inapproprié et élimine les emplacements à faible valeur qui drainent le budget sans générer de résultats.

> Demand Gen et exclusions de contenu : Demand Gen ne supporte pas le ciblage par contenu (emplacements, sujets, mots clés) mais supporte les exclusions de contenu pour la sécurité de marque. Les paramètres de type d'inventaire, de contenu sensible et de labels de contenu numérique de ce document s'appliquent aux campagnes Demand Gen.

---

## Ce que ne couvre PAS ce document

Ce document ne couvre **pas** :

- Les options de ciblage par contenu (Voir : [Content Targeting Reference](<Display - Ciblage de contenu.md>))
- Les exclusions d'audience (Voir : [Audience Targeting Reference](<../audiences/Audiences - Signaux d'audience.md>))
- Les étapes de configuration de campagne (Voir : les SOPs respectives)

---

## Cadre stratégique : sécurité de marque vs portée

Les exclusions de contenu équilibrent deux objectifs concurrents : la sécurité de marque (contrôler où vos annonces apparaissent) et la portée (accéder à suffisamment d'inventaire pour atteindre les objectifs de volume). Votre approche dépend de trois facteurs.

| Facteur | Plus d'exclusions | Moins d'exclusions |
|--------|----------------|-----------------|
| Sensibilité de marque | Marques premium/luxe, secteurs réglementés | Annonceurs mass-market, orientés performance |
| Objectif de campagne | Notoriété (la perception de marque compte) | Réponse directe (les conversions comptent plus que le contexte) |
| Budget | Les petits budgets peuvent se permettre d'exclure (qualité plutôt que quantité) | Les gros budgets peuvent nécessiter un inventaire plus large |

### Impact des exclusions sur la portée

| Niveau d'exclusion | Réduction de portée estimée | Niveau de sécurité de marque |
|----------------|--------------------------|-------------------|
| Inventaire limité + toutes les catégories sensibles + toutes les apps exclues | 15-25% de réduction de portée | Protection maximale |
| Inventaire standard + catégories sélectives + apps exclues | 5-15% de réduction de portée | Protection forte |
| Inventaire standard + catégories sélectives uniquement | 2-5% de réduction de portée | Protection modérée |
| Inventaire étendu + aucune exclusion | 0% de réduction | Aucune protection |

> Par défaut : exclure agressivement, puis tester le relâchement. Commencez avec le maximum d'exclusions. Si le volume est insuffisant après 30 jours, relâchez sélectivement une exclusion à la fois et mesurez l'impact sur le CPA pendant 14 jours.

### Mesurer l'impact des exclusions

Après avoir appliqué les exclusions, validez qu'elles ne sont pas trop agressives :

| Signal | Signification | Action |
|--------|---------|--------|
| CPA stable, volume diminué de 10-20% | Compromis de portée normal | Acceptable. Garder les paramètres actuels. |
| CPA diminué (amélioré), volume diminué | Les exclusions ont éliminé du gaspillage | Les exclusions fonctionnent comme prévu. |
| CPA augmenté, volume diminué significativement (>30%) | Les exclusions sont peut-être trop restrictives | Relâcher sélectivement une catégorie et re-tester pendant 14 jours. |
| Aucun changement de CPA ou de volume | L'inventaire exclu n'était de toute façon pas diffusé | Garder les exclusions comme filet de sécurité. |

---

## Configuration recommandée

### Type d'inventaire

| Paramètre | Recommandation | Justification |
|---------|----------------|-----------|
| **Type d'inventaire** | Inventaire limité | Le plus restrictif : ne diffuse que sur du contenu vérifié et répondant aux normes les plus strictes de Google. Les marques premium doivent toujours utiliser cette option. |

**Options de type d'inventaire :**

| Type | Contenu inclus | Quand utiliser |
|------|------------------|-------------|
| Inventaire étendu | Tout le contenu monétisable y compris sensible | Jamais recommandé |
| Inventaire standard | Exclut la plupart du contenu sensible | Acceptable pour les annonceurs moins sensibles à la marque |
| **Inventaire limité** | Uniquement du contenu vérifié et sûr pour la marque | **Par défaut recommandé** |

---

### Contenu sensible exclu

Activez les exclusions pour TOUTES les catégories de contenu sensible :

| Catégorie | Recommandation | Justification |
|----------|----------------|-----------|
| Tragédie et conflit | **Exclure** | Éviter l'association avec des actualités négatives, catastrophes, guerre |
| Problèmes sociaux sensibles | **Exclure** | Éviter les sujets polarisants qui peuvent aliéner les clients |
| Grossièretés et langage cru | **Exclure** | Maintenir une image de marque professionnelle |
| Contenu sexuellement suggestif | **Exclure** | Éviter la proximité avec du contenu inapproprié |
| Sensationnel et choquant | **Exclure** | Éviter le clickbait et les environnements de contenu de basse qualité |

> Activez les cinq exclusions. Il n'y a aucun avantage à apparaître à côté de contenu sensible. La perte de portée est minimale par rapport au risque de sécurité de marque.

---

### Types et labels exclus

| Paramètre | Recommandation | Justification |
|---------|----------------|-----------|
| **Domaines parqués** | **Exclure** | Pas de vrai contenu, zéro engagement utilisateur, dépenses gaspillées |
| Vidéos YouTube intégrées | Exclure | Moins de contrôle sur le contexte |
| Streaming en direct | Optionnel | Risque plus élevé de contenu imprévisible |
| Jeux (tous) | Exclure via les emplacements | Voir les exclusions d'emplacements ci-dessous |

**Labels de contenu numérique :**

| Label | Type de contenu | Recommandation |
|-------|--------------|----------------|
| DL-G | Tous publics | Inclure |
| DL-PG | Accompagnement parental | Évaluer selon la marque |
| DL-T | Adolescents | Évaluer selon la marque |
| DL-MA | Public adulte | Évaluer selon la marque |
| Non labellisé | Contenu non classifié | Tester et surveiller |

---

### Thèmes de contenu exclus

Excluez ces thèmes de contenu au niveau de la campagne ou du compte :

| Thème | Recommandation | Justification |
|-------|----------------|-----------|
| **Jeux (combat)** | **Exclure** | Association avec du contenu violent |
| **Jeux (mature)** | **Exclure** | Contenu de jeux pour adultes |
| **Santé (sensible)** | **Exclure** | Risque de désinformation médicale, sujets sensibles |
| **Actualités (sensibles)** | **Exclure** | Breaking news, tragédies, articles controversés |
| **Politique** | **Exclure** | Contenu polarisant qui aliène les clients |
| **Religion** | **Exclure** | Sujet sensible qui peut créer des associations négatives |

> Ces exclusions s'appliquent au Display et à la Video. Les définir au niveau du compte assure la cohérence et empêche les dérives de configuration.

---

### Mots clés de contenu exclus

| Paramètre | Recommandation | Justification |
|---------|----------------|-----------|
| Exclusions de mots clés de contenu | **Aucune (par défaut)** | Les mots clés de contenu sont larges et imprévisibles. Utilisez les exclusions d'emplacements pour un contrôle spécifique. |

> Les exclusions de mots clés de contenu sur-excluent souvent. Un mot clé comme "mort" exclurait du contenu légitime sur l'assurance vie, la planification successorale ou la santé. Utilisez plutôt les exclusions de catégories et d'emplacements.

---

### Emplacements exclus

#### Applications mobiles : exclure toutes les catégories

| Recommandation | Justification |
|----------------|-----------|
| **Exclure toutes les catégories d'applications** | Dans 95% des cas, les emplacements d'applications sont des dépenses gaspillées : clics accidentels, faible intention, mauvaise visibilité, trafic de bots |

> Configuration d'exclusion d'apps. Voir [SOP - Lancer une campagne Display](<Display - Lancer une campagne.md>) pour la configuration pas à pas de l'exclusion d'apps.

#### Si vous voulez tester les apps

Si vous avez une raison spécifique d'inclure les emplacements d'applications (campagnes d'installation d'apps, annonceurs de jeux) :

| Exclusions minimum | Justification |
|-------------------|-----------|
| Toutes les catégories de jeux (iOS) | Taux de clics accidentels les plus élevés |
| Toutes les catégories de jeux (Android) | Taux de clics accidentels les plus élevés |
| Catégories Enfants/Famille | Conformité COPPA, faible intention |

---

## Niveaux de configuration

Définissez les exclusions au niveau approprié :

| Niveau | Portée | Utiliser pour |
|-------|-------|---------|
| **Compte** | Toutes les campagnes | Contenu sensible, sécurité de marque, exclusions d'apps |
| **Campagne** | Tous les groupes d'annonces de la campagne | Exclusions spécifiques à la campagne |
| **Groupe d'annonces** | Un seul groupe d'annonces | Exclusions granulaires et ciblées |

**Approche recommandée :**

1. Définir les exclusions de contenu sensible et d'apps au **niveau du compte**
2. Définir les exclusions de thèmes de contenu au **niveau du compte**
3. Ajouter des exclusions d'emplacements spécifiques au **niveau de la campagne** au fur et à mesure que vous découvrez des emplacements peu performants

---

## Checklist d'implémentation

Avant de lancer toute campagne Display ou Video :

- [ ] Type d'inventaire défini sur **Inventaire limité**
- [ ] Les 5 catégories de contenu sensible exclues
- [ ] Domaines parqués exclus
- [ ] Contenu DL-MA et "Non labellisé" exclus
- [ ] Thèmes de contenu exclus (Jeux combat/mature, Santé sensible, Actualités sensibles, Politique, Religion)
- [ ] Toutes les catégories d'applications exclues (ou au minimum toutes les catégories de jeux)
- [ ] Paramètres appliqués au niveau du compte pour la cohérence

---

## Exceptions

| Scénario | Exception | Approche |
|----------|-----------|----------|
| Annonceurs médias/actualités | Peuvent vouloir les emplacements d'actualités | Activer sélectivement Actualités (sensibles) |
| Annonceurs de jeux | Peuvent vouloir les emplacements de jeux | Activer des catégories de jeux spécifiques, surveiller de près |
| Annonceurs politiques | Nécessitent du contenu politique | Activer Politique (soumis aux politiques Google) |
| Organisations religieuses | Nécessitent du contenu religieux | Activer Religion pour le contenu pertinent |

> Les exceptions doivent être des décisions explicites. Documentez pourquoi vous dérogez aux paramètres par défaut et surveillez les performances de près.

---

## Documents liés

| Document | Relation |
|----------|--------------|
| [Content Targeting Reference](<Display - Ciblage de contenu.md>) | Référence : options de ciblage par contenu |
| [Audience Targeting Reference](<../audiences/Audiences - Signaux d'audience.md>) | Référence : exclusions d'audience |
| [Upper Funnel Campaign Launch Checklist](<../strategie/Strategie - [Review] Lancement de campagne haut de tunnel.md>) | Checklist : validation pré-lancement |
| [SOP - Lancer une campagne Display](<Display - Lancer une campagne.md>) | Exécution : configuration de campagne Display |
| [SOP - Lancer une campagne Video](<../video/Video - Lancer une campagne.md>) | Exécution : configuration de campagne Video |
