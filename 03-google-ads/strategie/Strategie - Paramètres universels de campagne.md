# Paramètres universels de campagne

> **Plateforme :** Google Ads
> **Catégorie :** Strategie
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Documente les paramètres au niveau de la campagne qui s'appliquent universellement à tous les types de campagnes Google Ads. Cette fiche fournit une source unique de vérité pour le ciblage géographique, les paramètres de langue, le planning des annonces, les options d'URL et les configurations associées.

---

## Ce que couvre cette fiche / Ce qu'elle ne couvre PAS

**Cette fiche :**

- Documente les paramètres universels partagés entre Search, Shopping, PMax, Display, Video et Demand Gen
- Fournit les valeurs par défaut recommandées et les conditions d'exception
- Explique comment les paramètres interagissent avec le Stratégies d'enchères intelligentes

**Cette fiche ne couvre PAS :**

- Les paramètres spécifiques à un type de campagne (Voir : les recommandations spécifiques par type de campagne)
- La configuration des enchères (Voir : [Bidding Configuration Guidelines](<../encheres/Enchères - Configuration des enchères.md>))
- La sélection de réseau (Voir : [Network Selection Reference](<Strategie - Sélection de réseau.md>))
- La création de campagne pas à pas (Voir : les SOPs de lancement de campagne)

---

## Aide-mémoire : valeurs par défaut universelles

| Paramètre | Par défaut | Conditions d'exception |
|---------|---------|---------------------|
| **Méthode de ciblage géographique** | Présence ou intérêt | Passer à Présence uniquement si les rapports de localisation montrent du gaspillage |
| **Méthode d'exclusion géographique** | Présence uniquement | N/A |
| **Langue** | Correspondre à la langue de l'annonce | Les marchés multilingues nécessitent des campagnes séparées |
| **Planning des annonces** | Toutes les heures, tous les jours | Lead gen par téléphone : heures ouvrées uniquement |
| **Ciblage par appareil** | Tous les appareils | Laisser le Stratégies d'enchères intelligentes optimiser |
| **Date de début** | Date de lancement | Lancements planifiés selon les besoins |
| **Date de fin** | Pas de date de fin | Définir uniquement pour les campagnes promotionnelles |
| **Modèle de suivi** | Définir au niveau de la campagne | Paramètres UTM cohérents |

---

## Ciblage géographique

### Méthode de ciblage

| Méthode | Qui voit les annonces | Par défaut |
|--------|-------------|---------|
| **Présence ou intérêt** | Personnes dans, régulièrement dans, ou qui ont montré de l'intérêt pour votre zone géographique | ✅ Oui |
| **Présence uniquement** | Personnes physiquement dans ou régulièrement dans votre zone géographique | Utiliser quand les rapports de localisation montrent du gaspillage |

**Comment configurer :**

1. Paramètres de campagne → Zones géographiques
2. Cliquez sur **Options de localisation**
3. Sélectionnez la méthode de ciblage

**Quand passer à Présence uniquement :**

- Les rapports de localisation montrent des dépenses significatives d'utilisateurs hors de votre zone cible physique
- Le trafic non local convertit mal
- La zone de service est physiquement limitée (services locaux)

**Exemple :** cibler les Pays-Bas avec "Présence ou intérêt" peut montrer des annonces à quelqu'un en Australie qui a cherché "hôtels Amsterdam". Si ce trafic convertit mal, passez à "Présence uniquement".

### Méthode d'exclusion

| Méthode | Recommandation |
|--------|----------------|
| **Présence uniquement** | ✅ Toujours utiliser |

Les exclusions doivent toujours utiliser "Présence uniquement" pour bloquer les utilisateurs physiquement dans les zones exclues.

### Recommandations de granularité

| Niveau | Quand utiliser |
|-------|-------------|
| Pays | Campagnes nationales, ciblage large |
| Région/État | Entreprises régionales, performance variable par région |
| Ville/Métropole | Entreprises locales, offres spécifiques à une ville |
| Rayon | Magasins physiques, entreprises de services de proximité |

> 💡 **Commencez large, affinez avec les données :** commencez par le ciblage au niveau du pays. Utilisez les rapports de localisation pour identifier les régions sous-performantes, puis excluez ou ajustez.

---

## Paramètres de langue

### Comment fonctionne le ciblage par langue

Google détermine l'éligibilité linguistique en fonction de :

- Le paramètre de langue de l'interface Google de l'utilisateur
- Les paramètres du navigateur
- Le comportement de navigation récent

Le ciblage par langue NE correspond PAS à la langue de la requête de recherche.

**Exemple :** un utilisateur avec l'anglais comme langue d'interface qui cherche en espagnol "zapatos azules" peut quand même voir votre annonce en anglais.

### Configuration recommandée

| Scénario | Configuration |
|----------|---------------|
| Marché monolingue | Définir la langue correspondant au texte de l'annonce |
| Marché multilingue (Belgique, Suisse, Canada) | Campagnes séparées par langue |

### Marchés multilingues

Pour les marchés avec plusieurs langues :

1. Créez des campagnes séparées par langue
2. Chaque campagne reçoit un texte d'annonce et des landing pages dans la langue appropriée
3. Cela permet un suivi précis des performances par segment linguistique
4. Les stratégies d'enchères optimisent indépendamment par audience linguistique

> ⚠️ **N'ajoutez pas plusieurs langues à une campagne avec des annonces dans une seule langue :** les utilisateurs qui voient des annonces dans une langue inadaptée ne cliqueront pas, ou rebondiront.

---

## Planning des annonces

### Recommandation par défaut

| Paramètre | Recommandation | Justification |
|---------|----------------|-----------|
| **Planning des annonces** | Toutes les heures, tous les jours | Le Stratégies d'enchères intelligentes optimise automatiquement les performances par moment de la journée |

Les stratégies Stratégies d'enchères intelligentes (CPA cible, ROAS cible, Maximiser les conversions, Maximiser la valeur de conversion) prennent déjà en compte le moment de la journée dans leurs calculs d'enchères. Un planning manuel restreint l'algorithme sans ajouter de valeur.

### Conditions d'exception

| Type d'entreprise | Planning recommandé |
|---------------|---------------------|
| Lead gen par téléphone (appels comme conversion principale) | Heures ouvrées uniquement |
| B2B avec longs cycles de vente | Jours ouvrés, heures de bureau |
| Promotions saisonnières avec des fenêtres spécifiques | Planning personnalisé correspondant à la promotion |

### Ajustements d'enchères sur les segments de planning

- **CPC manuel :** les ajustements d'enchères de planning sont appliqués
- **Stratégies d'enchères intelligentes :** les ajustements d'enchères de planning sont ignorés (l'algorithme gère cela)

---

## Ciblage par appareil

### Recommandation par défaut

| Paramètre | Recommandation |
|---------|----------------|
| **Appareils** | Tous les appareils (ordinateurs, tablettes, mobile) |

Le Stratégies d'enchères intelligentes optimise les enchères par appareil automatiquement. N'appliquez pas d'ajustements d'enchères manuels par appareil sauf si :

- Vous utilisez le CPC manuel
- Les données montrent clairement qu'un appareil convertit significativement moins bien

### Ajustements d'enchères par appareil avec Stratégies d'enchères intelligentes

| Ajustement | Effet avec Stratégies d'enchères intelligentes |
|------------|--------------------------|
| +50 % mobile | Ignoré (Stratégies d'enchères intelligentes prend le dessus) |
| -100 % mobile | Respecté (supprime complètement le mobile) |

Seul l'ajustement -100 % (suppression complète d'un appareil) est respecté par le Stratégies d'enchères intelligentes.

---

## Dates de début et de fin

### Configuration recommandée

| Type de campagne | Date de début | Date de fin |
|--------------|------------|----------|
| Evergreen (toujours active) | Date de lancement | Pas de date de fin |
| Promotion saisonnière | Début de la promotion | Fin de la promotion |
| Offre à durée limitée | Début de l'offre | Fin de l'offre |
| Test/expérimental | Début du test | Fin du test |

> ⚠️ **Définissez les dates de fin pour les promotions à la création de la campagne :** ne comptez pas sur le fait de vous souvenir de mettre en pause manuellement. L'oubli gaspille du budget.

---

## Options d'URL de campagne

### Modèle de suivi

Définissez les modèles de suivi au niveau de la campagne pour des paramètres UTM cohérents sur toutes les annonces.

**Format typique :**

```
{lpurl}?utm_source=google&utm_medium=cpc&utm_campaign={_campaign}&utm_content={creative}&utm_term={keyword}
```

### Suffixe d'URL finale

Utilisez quand des paramètres de tracking (suivi des conversions) supplémentaires sont nécessaires pour le tracking tiers ou les exigences d'analyse.

**Exemple :**

```
gclid={gclid}&campaignid={campaignid}
```

### Hiérarchie

Définissez au niveau applicable le plus élevé :

1. Niveau du compte (s'applique à toutes les campagnes)
2. Niveau de la campagne (remplace le compte)
3. Niveau du groupe d'annonces (remplace la campagne)
4. Niveau de l'annonce (remplace le groupe d'annonces)

---

## Erreurs courantes

| Erreur | Impact | Solution |
|---------|--------|-----|
| Laisser le ciblage géographique sur "Présence ou intérêt" quand du gaspillage est détecté | Budget dépensé pour des utilisateurs hors de la zone cible | Passer à "Présence uniquement" quand les données montrent du gaspillage |
| Plusieurs langues dans une même campagne | Inadéquation annonce/landing page, mauvais CTR, taux de rebond élevé | Campagnes séparées par langue |
| Planning manuel sur des campagnes Stratégies d'enchères intelligentes | Les ajustements d'enchères de planning sont ignorés de toute façon | Utiliser toutes les heures/tous les jours |
| Pas de date de fin sur les campagnes promotionnelles | Budget gaspillé après la fin de la promotion | Définir la date de fin à la création de la campagne |
| Définir les modèles de suivi au niveau de l'annonce | Tracking incohérent, charge de maintenance | Définir au niveau de la campagne |
| Appliquer des ajustements d'enchères par appareil avec Stratégies d'enchères intelligentes | Les ajustements sont ignorés (sauf -100 %) | Supprimer les ajustements par appareil, laisser le Stratégies d'enchères intelligentes optimiser |

---

## Checklist de vérification de la configuration

Après avoir configuré les paramètres de campagne, vérifiez :

| Paramètre | État attendu |
|---------|---------------|
| Méthode de ciblage géographique | Présence ou intérêt (par défaut), ou Présence uniquement si justifié |
| Méthode d'exclusion géographique | Présence uniquement |
| Zones géographiques cibles | Zones géographiques correctes |
| Langue | Correspond à la langue du texte de l'annonce |
| Planning des annonces | Toutes les heures, tous les jours (sauf exception applicable) |
| Appareils | Tous les appareils (sauf suppression totale d'un appareil) |
| Date de fin | Pas de date de fin pour evergreen, définie pour les promotions |
| Modèle de suivi | Défini au niveau de la campagne avec les bons paramètres UTM |

---

## Documents liés

| Document | Relation |
|----------|--------------|
| [Search Campaign Settings Guidelines](<../search/Search - Paramètres de campagne Search.md>) | Paramètres spécifiques Search |
| [Shopping Campaign Settings Reference](<Strategie - Paramètres universels de campagne.md>) | Paramètres spécifiques Shopping |
| [PMax Configuration Guidelines](<../pmax/Pmax - Configuration PMax.md>) | Paramètres spécifiques PMax |
| [Network Selection Reference](<Strategie - Sélection de réseau.md>) | Inclusion/exclusion de réseau |
| [Bidding Configuration Guidelines](<../encheres/Enchères - Configuration des enchères.md>) | Configuration de stratégie d'enchères |
