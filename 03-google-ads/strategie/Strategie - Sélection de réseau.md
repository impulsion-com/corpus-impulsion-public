# Sélection de réseau

> **Plateforme :** Google Ads
> **Catégorie :** Strategie
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Documente les options de sélection de réseau et les paramètres recommandés pour les campagnes Search, Shopping et Video. Cette fiche fournit une source unique de vérité pour savoir quels réseaux activer ou désactiver et pourquoi.

---

## Ce que couvre cette fiche / Ce qu'elle ne couvre PAS

**Cette fiche :**

- Documente les options de réseau par type de campagne
- Fournit les valeurs par défaut recommandées et les conditions d'exception
- Explique l'impact de chaque sélection de réseau

**Cette fiche ne couvre PAS :**

- Le comportement réseau PMax (automatisé, pas de contrôle possible)
- La création de campagne (Voir : les SOPs de lancement de campagne)
- Les réseaux Display ou Demand Gen (automatisés au sein de ces types de campagnes)

---

## Aide-mémoire : réseaux par défaut par type de campagne

| Type de campagne | Réseau Search | Partenaires du Réseau de Recherche | Réseau Display |
|--------------|----------------|-----------------|-----------------|
| **Search** | ON (requis) | Tester | OFF |
| **Shopping** | ON (requis) | Tester | N/A |
| **Video** | N/A | N/A | YouTube + Partners |

---

## Campagnes Search : options de réseau

### Réseau Search

| Paramètre | Recommandation |
|---------|----------------|
| **Réseau Search** | **ON** (toujours) |

C'est le mécanisme de diffusion principal pour les campagnes Search. Toujours activé.

### Partenaires du Réseau de Recherche

| Paramètre | Recommandation |
|---------|----------------|
| **Partenaires du Réseau de Recherche** | **Tester** |

Les Partenaires du Réseau de Recherche diffusent des annonces sur des moteurs de recherche non-Google et des sites partenaires (AOL, Ask, etc.).

**Pourquoi "Tester" est la recommandation :**

Les Partenaires du Réseau de Recherche peuvent très bien fonctionner ou mal performer (environ 50/50 de chances). La performance dépend fortement du secteur. Testez toujours et surveillez de près après quelques semaines/mois.

**Considérations :**

- Trafic de qualité inférieure par rapport à Google Search
- Pas de données au niveau de la requête dans les rapports de termes de recherche
- Pas de contrôle sur quels sites partenaires affichent vos annonces
- Les données de performance sont agrégées, pas spécifiques par site

**Comment surveiller quand activé :**

1. Allez dans campagne → Segment → Réseau (avec search partners)
2. Comparez les métriques de performance entre Google Search et Partenaires du Réseau de Recherche
3. Si le CPA/ROAS des Partenaires du Réseau de Recherche est inacceptable, désactivez

> ⚠️ **La performance des Partenaires du Réseau de Recherche ne peut pas être optimisée indépendamment :** vous acceptez la performance agrégée ou vous désactivez complètement.

### Réseau Display (sur les campagnes Search)

| Paramètre | Recommandation |
|---------|----------------|
| **Réseau Display** | **OFF** (toujours) |

> ⚠️ **Le réseau Display sur les campagnes Search est la mauvaise configuration qui gaspille le plus de budget :** Google l'active par défaut. Vérifiez qu'il est OFF sur chaque nouvelle campagne Search.

**Pourquoi c'est critique :**

- L'activer crée une campagne Display cachée qui partage votre budget Search
- Détourne silencieusement les dépenses vers des placements Display avec des signaux d'intention différents
- Les utilisateurs voient des bannières publicitaires au lieu de répondre à des requêtes de recherche
- Comportement de conversion fondamentalement différent

**Ce qu'il faut faire à la place :**

Si vous voulez de la portée Display, créez une campagne Display dédiée avec :
- Son propre budget
- Son propre ciblage
- Sa propre stratégie d'enchères
- Ses propres créatifs

Cela garde votre budget Search concentré sur l'intention de recherche.

---

## Campagnes Shopping : options de réseau

### Réseau Search

| Paramètre | Recommandation |
|---------|----------------|
| **Réseau Search** | **ON** (requis) |

Requis pour que les campagnes Shopping diffusent des listings produits dans les résultats Google Search.

### Partenaires du Réseau de Recherche

| Paramètre | Recommandation |
|---------|----------------|
| **Partenaires du Réseau de Recherche** | **Tester** |

Même recommandation que les campagnes Search : peut très bien fonctionner ou mal performer selon le secteur. Testez et surveillez toujours.

**Comment surveiller :**

1. Segmentez par réseau dans le reporting
2. Comparez la performance Search vs Partenaires du Réseau de Recherche
3. Désactivez si les métriques sont inacceptables

> 💡 **Le réseau Display NE S'APPLIQUE PAS au Shopping standard :** la seule option réseau en plus du réseau Search est Partenaires du Réseau de Recherche.

---

## Campagnes Video : options de réseau

### Options de réseau YouTube

| Réseau | Ce qu'il inclut | Recommandation |
|---------|-----------------|----------------|
| **Résultats de recherche YouTube** | Les annonces apparaissent dans la recherche YouTube | Inclure pour la découvrabilité |
| **Vidéos YouTube** | Annonces in-stream et in-feed | Inclure (placement principal) |
| **Partenaires vidéo sur le réseau Display** | Sites et apps tiers | Tester avec précaution |

### Partenaires vidéo (Google video partners)

| Paramètre | Recommandation par défaut |
|---------|----------------------|
| **Partenaires vidéo** | **OFF initialement, tester ensuite** |

Les partenaires vidéo étendent vos annonces vidéo aux sites web et applications tiers du Google Display Network.

**Considérations :**

| Facteur | Impact |
|--------|--------|
| Portée | Augmente significativement la portée |
| Qualité | Variable, moins de contrôle |
| Brand safety | Nécessite des exclusions de contenu |
| Reporting | Agrégé (transparence limitée) |

**Quand activer :**

- Après que la campagne YouTube-only est stable
- Quand vous cherchez une portée incrémentale à des CPM plus bas
- Avec des exclusions de contenu robustes en place

**Surveillance quand activé :**

1. Segmentez par réseau (Où les annonces se sont affichées)
2. Comparez les métriques YouTube vs partenaires vidéo
3. Surveillez le rapport de placements pour les sites de faible qualité

---

## PMax : comportement réseau

PMax diffuse automatiquement sur toutes les surfaces Google. Vous ne pouvez pas contrôler la sélection de réseau.

| Surface | Contrôle |
|---------|---------|
| Search | Automatique |
| Shopping | Automatique |
| Display | Automatique |
| YouTube | Automatique |
| Gmail | Automatique |
| Discover | Automatique |

**Ce que vous pouvez contrôler dans PMax :**

- Exclusions de marque (empêche les requêtes de marque)
- Listing groups (quels produits)
- Asset groups (créatifs par segment)
- Signaux d'audience (orientation du ciblage)

Vous ne pouvez pas désactiver des réseaux spécifiques dans PMax.

---

## Campagnes Display : comportement réseau

Les campagnes Display diffusent automatiquement sur le Google Display Network. La sélection de réseau n'est pas configurable de la même manière que Search.

**Ce que vous pouvez contrôler :**

- Placements (sites/apps spécifiques)
- Topics (catégories de contenu)
- Exclusions de contenu (brand safety)
- Exclusions d'apps (apps mobiles vs web)

---

## Demand Gen : comportement réseau

Demand Gen diffuse sur YouTube, Discover, Gmail et GDN. La sélection de réseau au niveau de la campagne est automatisée, mais vous pouvez contrôler la sélection de canal au niveau du **ad group**.

### Par défaut (niveau campagne)

| Surface | Par défaut |
|---------|---------|
| YouTube (in-stream, in-feed, Shorts) | ✅ Inclus |
| Feed Discover | ✅ Inclus |
| Gmail | ✅ Inclus |
| GDN | ✅ Inclus |

### Sélection de canal au niveau du ad group

Au niveau du ad group, vous pouvez sélectionner des canaux spécifiques :

| Option | Ce qu'elle inclut |
|--------|------------------|
| **Tous les canaux Google** | Toutes les surfaces (par défaut) |
| **YouTube in-stream** | Annonces pre-roll, mid-roll |
| **YouTube in-feed** | Placements dans le feed YouTube |
| **YouTube Shorts** | Vidéo verticale courte |
| **Discover** | Feed Google Discover |
| **Gmail** | Onglet Promotions Gmail |
| **GDN** | Google Display Network |

**Comment configurer :**

1. Créez ou modifiez un ad group
2. Trouvez les paramètres de sélection de canal
3. Choisissez "Tous les canaux Google" ou sélectionnez des combinaisons spécifiques
4. Différents ad groups peuvent cibler différentes combinaisons de canaux

> 💡 **Utilisez la sélection de canal au niveau du ad group pour les tests A/B :** créez des ad groups séparés ciblant différents canaux pour comparer la performance.

---

## Checklist de vérification

Après avoir créé toute campagne Search ou Shopping :

| Vérification | État attendu |
|-------|---------------|
| Réseau Search | ON |
| Partenaires du Réseau de Recherche | Tester (surveiller par segment) |
| Réseau Display | OFF |

**Comment vérifier :**

1. Allez dans les paramètres de campagne
2. Cliquez sur "Réseaux"
3. Confirmez que chaque paramètre correspond aux attentes

---

## Erreurs courantes

| Erreur | Impact | Solution |
|---------|--------|-----|
| Réseau Display ON dans les campagnes Search | Budget silencieusement détourné vers Display | Vérifier OFF sur chaque nouvelle campagne |
| Partenaires du Réseau de Recherche ON sans surveillance | Dépenses incontrôlées sur du trafic de qualité inférieure | Désactiver OU surveiller activement par segment |
| Partenaires vidéo ON sans exclusions de contenu | Annonces sur des placements de faible qualité | Ajouter des exclusions avant d'activer les partenaires |
| Supposer qu'un contrôle réseau PMax existe | S'attendre à pouvoir désactiver des réseaux | Comprendre que PMax diffuse partout automatiquement |
| Ne pas segmenter les rapports par réseau | Manquer les différences de performance | Toujours vérifier les données au niveau du réseau |

---

## Documents liés

| Document | Relation |
|----------|--------------|
| [Search Campaign Settings Guidelines](<../search/Search - Paramètres de campagne Search.md>) | Paramètres spécifiques Search |
| [Shopping Campaign Settings Reference](<Strategie - Paramètres universels de campagne.md>) | Paramètres spécifiques Shopping |
| [Content Exclusion Guidelines](<../display/Display - Exclusions de contenu.md>) | Brand safety pour les partenaires vidéo |
| [Universal Campaign Settings Reference](<Strategie - Paramètres universels de campagne.md>) | Autres paramètres universels |
