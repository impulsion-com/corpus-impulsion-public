# Signaux d'audience

> **Plateforme :** Google Ads
> **Catégorie :** Audiences
> **Type :** Exemples
> **Mis à jour :** 2026-05-07

## Fondamentaux des signaux

### L'état d'esprit des signaux

Les signaux Performance Max sont des **indices**, pas des contrôles de ciblage. L'IA de Google utilise les signaux comme points de départ mais va s'étendre au-delà pour trouver des convertisseurs. Meilleure qualité de signal = apprentissage plus rapide = meilleure performance initiale.

### Hiérarchie de qualité des signaux

Chaque type de signal a un niveau de qualité basé sur la proximité d'intention et la fiabilité des données :
| Niveau | Type de signal | Proximité d'intention | Source de données |
|--------|---------------|----------------------|-------------------|
| 🥇 Niveau 1 | Customer Match (convertisseurs) | Acheteurs prouvés | Votre CRM |
| 🥇 Niveau 1 | Convertisseurs du site | Intention prouvée | Votre pixel |
| 🥈 Niveau 2 | Visiteurs du site (tous) | Intérêt démontré | Votre pixel |
| 🥈 Niveau 2 | Utilisateurs YouTube engagés | Engagement actif | Votre chaîne |
| 🥈 Niveau 2 | Utilisateurs d'app | Engagement actif | Votre app |
| 🥉 Niveau 3 | Segments personnalisés (termes de recherche) | Intention déclarée | Données Google Search |
| 🥉 Niveau 3 | Segments personnalisés (URLs/apps) | Proxy d'intérêt | Données de navigation Google |
| 🏅 Niveau 4 | Search themes | Intention au niveau catégorie | Données Google Search |
| 🏅 Niveau 4 | Segments in-market | Recherche active | Données comportementales Google |
| ⬜ Niveau 5 | Événements de vie | Contexte situationnel | Données comportementales Google |
| ⬜ Niveau 5 | Segments d'affinité | Intérêt à long terme | Données comportementales Google |
| ⬜ Niveau 5 | Données démographiques | Attributs larges | Données de profil Google |

> ⚠️ **La qualité du signal détermine la vitesse d'apprentissage, pas le plafond de portée :** PMax va s'étendre au-delà de tous les signaux quelle que soit leur qualité. Des signaux de meilleure qualité donnent à Google un meilleur point de départ pour trouver vos clients idéaux plus rapidement.

---

## Porte de décision sur la qualité des signaux

Avant de sélectionner les signaux, déterminez votre objectif d'optimisation :
| Si votre objectif est... | Priorisez... | Approche de stack de signaux |
|--------------------------|-------------|------------------------------|
| **Efficacité (ROAS élevé/CPA bas)** | Signaux niveau 1-2 uniquement | Étroit : top 20% clients, convertisseurs du site, 10 termes de recherche à haute conversion |
| **Scaling (croissance)** | Signaux niveau 1-3 avec quelques niveau 4 | Large : tous les clients, tous les visiteurs engagés, 15-20 termes de recherche + URLs concurrents, in-market principal + adjacent |
| **Acquisition de nouveaux clients** | Signaux niveau 3-4, exclure niveau 1 | Prospection : exclure Customer Match, utiliser les visiteurs non-convertisseurs, termes catégorie + concurrents, segments in-market |

> ↪️ Pour le cadre conceptuel derrière cette hiérarchie : Voir [Audience Strategy Mental Model](<Audiences - Stratégie d'audience.md>)
> ↪️ Pour les spécifications, limites et syntaxe des signaux : Voir [Audience Signals Reference](<Audiences - Signaux d'audience.md>)

---

## Types de signaux : détail type par type

## Type 1 : Signaux Customer Match

- **Niveau de qualité :** 🥇 Niveau 1
- **Ce que c'est :** Uploadez vos données CRM (email, téléphone, adresse) pour que Google matche vos clients et les utilise comme inputs de signal.
- **Pourquoi c'est important :** Vos propres données client sont le signal de plus haute qualité car elles représentent un comportement d'acheteur prouvé.

#### Quand utiliser

| Scénario | Configuration du signal | Pourquoi ça fonctionne |
|----------|------------------------|------------------------|
| Setup PMax standard | Liste de tous les clients | Base de signal first-party la plus large |
| Focus haute valeur | Top 20% par LTV/revenu | Oriente Google vers les meilleurs clients |
| Acquisition de nouveaux clients | Exclure Customer Match entièrement | Force la prospection au-delà de la base existante |

#### Exemples de configurations par vertical

| Vertical | Type de liste | Contenu exemple | Taille minimum |
|----------|--------------|----------------|----------------|
| Lead Gen | Tous les leads qualifiés | Email + téléphone des SQLs des 12 derniers mois | 1 000+ |
| Lead Gen | Clients haute valeur | Top 20% par valeur de contrat | 1 000+ |
| SaaS | Abonnés actifs | Email des utilisateurs payants | 1 000+ |
| SaaS | Convertisseurs essai-vers-payant | Utilisateurs convertis depuis l'essai | 1 000+ |
| Ecommerce | Tous les acheteurs | Email + adresse des anciens acheteurs | 1 000+ |
| Ecommerce | Acheteurs récurrents | 2+ achats en 12 mois | 1 000+ |

> 💡 **Optimisation du taux de match :** L'email seul donne des taux de match de base (29-62%). Ajouter les numéros de téléphone ajoute +15-20%. Ajouter les adresses postales ajoute encore +10-15%. Uploadez toujours plusieurs identifiants par client. Pourquoi ça fonctionne : chaque identifiant supplémentaire donne à Google un moyen additionnel de matcher votre enregistrement CRM avec un utilisateur Google connecté, augmentant le chevauchement entre vos données et le graphe d'identité de Google.

> ↪️ Pour les procédures de création et d'upload de listes : Voir [SOP - Construire des listes Customer Match](<Audiences - Construire des listes Customer Match.md>)

---

## Type 2 : Signaux de visiteurs du site

- **Niveau de qualité :** 🥇 Niveau 1 (convertisseurs) / 🥈 Niveau 2 (tous les visiteurs)
- **Ce que c'est :** Segments d'audience construits à partir des données du Google Tag capturant le comportement sur le site.
- **Pourquoi c'est important :** La récence et la profondeur de l'engagement sur le site corrèlent avec la probabilité de conversion.

#### Quand utiliser

| Segment | Fenêtre d'adhésion | Quand utiliser |
|---------|---------------------|----------------|
| Tous les convertisseurs | 90-540 jours | Toujours : signal de plus haute qualité |
| Abandons panier/formulaire | 7-30 jours | Ecommerce/Lead Gen : récupération d'intention forte |
| Consulteurs pages produit/service | 14-30 jours | Réengagement avec intérêt démontré |
| Tous les visiteurs du site | 30-90 jours | Signal d'engagement large |
| Visiteurs blog/contenu | 30-90 jours | Signal d'intérêt haut du tunnel |

#### Exemples de configurations par vertical

| Vertical | Segment | Fenêtre | Pourquoi ça fonctionne |
|----------|---------|---------|------------------------|
| Lead Gen | Soumetteurs de formulaire | 180 jours | Intention de conversion prouvée |
| Lead Gen | Visiteurs page tarifs | 30 jours | Forte considération d'achat |
| Lead Gen | Lecteurs d'études de cas | 60 jours | Engagement en phase de recherche |
| SaaS | Inscriptions à l'essai | 90 jours | Intérêt prouvé pour le produit |
| SaaS | Consulteurs pages fonctionnalités | 30 jours | Évaluation active |
| SaaS | Visiteurs page tarifs | 14 jours | Signal prêt à l'achat |
| Ecommerce | Acheteurs | 540 jours | Comportement d'acheteur prouvé |
| Ecommerce | Abandons de panier | 14 jours | Non-convertisseurs à plus forte intention |
| Ecommerce | Navigateurs de pages catégorie | 30 jours | Comportement d'achat actif |

---

## Type 3 : Signaux d'engagement YouTube

- **Niveau de qualité :** 🥈 Niveau 2
- **Ce que c'est :** Segments d'utilisateurs ayant interagi avec votre chaîne YouTube (vues, abonnements, likes, partages).
- **Pourquoi c'est important :** L'engagement vidéo indique une notoriété de marque et un intérêt prédictif de conversion cross-canal.

#### Quand utiliser

| Scénario | Configuration du signal |
|----------|------------------------|
| Chaîne YouTube active | Abonnés de la chaîne + spectateurs de vidéos (90 derniers jours) |
| YouTube Ads en cours | Spectateurs d'annonces vidéo + visiteurs de la chaîne |
| Pas de présence YouTube | Ignorer ce type de signal |

#### Exemples de configurations par vertical

| Vertical | Segment | Pourquoi ça fonctionne |
|----------|---------|------------------------|
| Lead Gen | Ont visionné 50%+ de vidéos d'études de cas | Engagement profond = intérêt qualifié |
| SaaS | Ont regardé des vidéos de démo produit | Comportement d'évaluation active |
| Ecommerce | Abonnés à la chaîne | Affinité de marque = taux de conversion plus élevé |

---

## Type 4 : Segments personnalisés (termes de recherche)

- **Niveau de qualité :** 🥉 Niveau 3
- **Ce que c'est :** Audiences personnalisées construites à partir de termes de recherche Google représentant le comportement de recherche de votre client idéal.
- **Pourquoi c'est important :** Le comportement de recherche révèle une intention déclarée - des personnes cherchant activement les solutions que vous proposez.

#### Règles de configuration

| Règle | Spécification |
|-------|--------------|
| Termes recommandés | 10-15 termes de recherche à haute conversion |
| Maximum de termes | 50 par segment |
| Qualité des termes | Utilisez les termes de recherche qui convertissent réellement depuis vos campagnes Search |
| À éviter | Termes génériques, mots uniques, termes de marque (déjà capturés) |

#### Exemples de configurations par vertical

| Vertical | Termes de recherche (exemples) | Pourquoi ça fonctionne |
|----------|-------------------------------|------------------------|
| Lead Gen (agence PPC) | "google ads management agency", "ppc agency for saas", "hire google ads expert" | Reflète les requêtes commerciales à forte intention |
| Lead Gen (services B2B) | "outsource accounting firm", "fractional CFO services", "managed IT support" | Intention spécifique de recherche de services |
| SaaS (CRM) | "best crm for small business", "sales pipeline software", "hubspot alternative" | Évaluation active + comparaison de concurrents |
| SaaS (Gestion de projet) | "project management tool for agencies", "asana alternative", "team task management" | Intention catégorie + concurrents |
| Ecommerce (Mobilier) | "buy modern sofa online", "designer dining table", "premium office desk" | Requêtes produit transactionnelles |
| Ecommerce (Compléments) | "best protein powder", "buy creatine online", "natural sleep supplement" | Intention d'achat produit |

> ⚠️ **Ne déversez pas des centaines de keywords dans les segments personnalisés :** Utilisez vos 10-15 termes de recherche à plus haute conversion. La qualité bat la quantité - Google a besoin de signaux d'intention clairs, pas de bruit.

---

## Type 5 : Segments personnalisés (URLs/apps)

- **Niveau de qualité :** 🥉 Niveau 3
- **Ce que c'est :** Audiences personnalisées construites à partir d'URLs de sites que vos clients idéaux consultent ou d'apps qu'ils utilisent.
- **Pourquoi c'est important :** Le comportement de navigation est un proxy d'intérêt même quand les utilisateurs n'ont pas directement recherché votre solution.

#### Règles de configuration

| Règle | Spécification |
|-------|--------------|
| URLs recommandées | 10-15 URLs pertinentes de concurrents/secteur |
| Ciblage URL | Cible les utilisateurs qui NAVIGUENT des sites similaires, ne place pas les annonces sur ces sites |
| Qualité des URLs | Utilisez des URLs de concurrents directs et de publications du secteur |
| À éviter | Sites génériques (actualités, pages d'accueil de réseaux sociaux) |

#### Exemples de configurations par vertical

| Vertical | URLs/apps (exemples) | Pourquoi ça fonctionne |
|----------|---------------------|------------------------|
| Lead Gen | Sites d'agences concurrentes, blogs du secteur (searchengineland.com, wordstream.com) | Atteint les utilisateurs recherchant activement des services PPC |
| SaaS | Pages produit concurrentes (hubspot.com/crm, monday.com/pricing), pages catégorie G2/Capterra | Atteint les utilisateurs évaluant des alternatives logicielles |
| Ecommerce | Boutiques concurrentes, sites d'avis, publications spécifiques à la catégorie | Atteint les acheteurs actifs naviguant des produits similaires |

> 💡 **Ce que l'IA de Google apprend réellement des URLs :** Google ne crawle pas ces URLs et ne lit pas le contenu des pages. Au lieu de ça, il identifie les utilisateurs dont le comportement de navigation chevauche celui des visiteurs des sites que vous fournissez, puis trouve des utilisateurs similaires à l'échelle. Les URLs définissent un profil comportemental, pas un signal de contenu.

---

## Type 6 : Search themes

- **Niveau de qualité :** 🏅 Niveau 4
- **Ce que c'est :** Termes de recherche au niveau catégorie ajoutés au niveau de l'asset group qui influencent quelles recherches déclenchent les annonces PMax.
- **Pourquoi c'est important :** Les search themes fonctionnent à la fois comme signaux d'audience ET comme emplacements Search - ils étendent l'inventaire Search de PMax au-delà des thèmes détectés automatiquement.

#### Règles de configuration

| Règle | Spécification |
|-------|--------------|
| Maximum par asset group | 25 search themes |
| Portée | Niveau asset group (pas niveau campagne) |
| Niveau de priorité | Même que les keywords en correspondance d'expression/large dans les campagnes Search |
| Risque de cannibalisation | ÉLEVÉ : les search themes concurrencent directement les keywords des campagnes Search |

#### Quand utiliser vs. quand éviter

| Utilisez les search themes quand... | Évitez les search themes quand... |
|--------------------------------------|-----------------------------------|
| Pas de campagne Search dédiée | Des campagnes Search actives couvrent les mêmes requêtes |
| PMax est votre canal Search principal | Protéger le volume de trafic des campagnes Search est la priorité |
| Expansion dans de nouvelles catégories de recherche | PMax cannibalise déjà les impressions Search |
| À l'aise avec PMax prenant l'inventaire Search | Les campagnes Search sont bien optimisées et performantes |

#### Exemples de configurations par vertical

| Vertical | Search themes (exemples) | Évaluation du risque |
|----------|------------------------|----------------------|
| Lead Gen | "google ads management", "ppc agency" | ÉLEVÉ si vous avez des campagnes Search sur ces termes |
| SaaS | "crm software", "sales management tool" | ÉLEVÉ si vous avez des campagnes Search sur ces termes |
| Ecommerce | "modern furniture online", "premium sofas" | MOYEN : Shopping coexiste souvent mieux avec PMax |

> 💡 **La cannibalisation par les search themes est réelle :** Un cas observé : retirer les search themes de PMax a fait passer les dépenses Shopping de 22% à 70% et a relancé la campagne Search dédiée. N'utilisez les search themes que si vous voulez délibérément que PMax concurrence pour cet inventaire Search.

---

## Type 7 : Segments prédéfinis Google

- **Niveau de qualité :** 🏅 Niveau 4 (in-market) / ⬜ Niveau 5 (affinité, événements de vie, données démographiques)
- **Ce que c'est :** Segments d'audience pré-construits par Google basés sur le comportement observé, les intérêts et les attributs démographiques.
- **Pourquoi c'est important :** Les segments prédéfinis étendent la portée au-delà de vos données first-party vers les données comportementales et d'intention de Google.

#### Segments in-market

Utilisateurs recherchant activement ou comparant des produits/services dans votre catégorie.
| Vertical | Segments (exemples) | Pourquoi ça fonctionne |
|----------|---------------------|------------------------|
| Lead Gen | "Business Services > Advertising & Marketing Services" | Recherche active d'aide marketing |
| SaaS | "Software > Business Technology > CRM Software" | Évaluation active de solutions CRM |
| Ecommerce | "Home & Garden > Home Furnishings" | Achat actif de mobilier |

#### Événements de vie

Utilisateurs vivant des changements majeurs de vie qui créent des déclencheurs d'achat.
| Vertical | Segments (exemples) | Pourquoi ça fonctionne |
|----------|---------------------|------------------------|
| Lead Gen | "Starting a business" | Les nouvelles entreprises ont besoin de services |
| SaaS | "Starting a business", "Changing jobs" | Les nouveaux rôles stimulent l'évaluation de logiciels |
| Ecommerce | "Moving", "Getting married" | Les transitions de vie déclenchent des achats |

#### Segments d'affinité

Utilisateurs avec des intérêts à long terme - portée la plus large, signal d'intention le plus faible.
| Vertical | Segments (exemples) | Pourquoi ça fonctionne |
|----------|---------------------|------------------------|
| Lead Gen | "Business Professionals > Business Decision Makers" | Ciblage basé sur le rôle |
| SaaS | "Technology > Technophiles" | Audience tech-forward |
| Ecommerce | "Home & Garden > Home Decor Enthusiasts" | Alignement d'intérêt de catégorie |

#### Données démographiques

Attributs démographiques de base - utilisez comme couche, jamais comme signal autonome.
| Attribut | Options |
|----------|---------|
| Âge | 18-24, 25-34, 35-44, 45-54, 55-64, 65+ |
| Genre | Homme, Femme, Inconnu |
| Revenus du foyer | Top 10%, 11-20%, 21-30%, 31-40%, 41-50%, 50% inférieur |
| Statut parental | Parent, Non parent |

> ⚠️ **N'utilisez jamais les données démographiques comme seul signal :** Les données démographiques seules ne donnent presque aucune donnée d'intention utile à Google. Superposez les données démographiques sur des signaux de meilleure qualité quand nécessaire (ex : revenus du foyer top 30% + in-market pour biens de luxe).

> ↪️ **Parcourir les noms de segments :** Voir [Audience Segments Reference](<Audiences - Segments d'audience.md>) pour la liste complète des segments in-market, affinité et événements de vie disponibles dans Google Ads.

---

## Empilement de signaux : configurations recommandées

### Stack de démarrage (signaux minimum viables)

| Couche de signal | Type | Objectif |
|------------------|------|----------|
| Couche 1 | Customer Match (tous les clients) | Donnée first-party de plus haute qualité |
| Couche 2 | Convertisseurs du site (90-540 jours) | Comportement de conversion prouvé |
| Couche 3 | Tous les visiteurs du site (30-90 jours) | Signal d'engagement large |
| Couche 4 | Segment personnalisé (10-15 termes de recherche) | Signal d'intention déclarée |
| Couche 5 | 1-2 segments in-market | Intérêt au niveau catégorie |

### Stack de croissance (prêt pour l'expansion)

| Couche de signal | Type | Objectif |
|------------------|------|----------|
| Couches 1-5 | Stack de démarrage | Fondation |
| Couche 6 | Customer Match (sous-ensemble haute valeur) | Signal de client premium |
| Couche 7 | Utilisateurs YouTube engagés | Engagement cross-canal |
| Couche 8 | Segment personnalisé (URLs concurrents) | Conquête concurrentielle |
| Couche 9 | Search themes (si pas de campagne Search) | Expansion de l'inventaire Search |
| Couche 10 | Segments in-market adjacents | Expansion de catégorie |

---

### Référence rapide : bibliothèque support

| Document | Type | Utilisé pour |
|----------|------|-------------|
| [Audience Signal Quality Checklist](<Audiences - [Review] Qualité des signaux d'audience.md>) | Checklist | Valide la configuration des signaux après paramétrage |
| [Audience Signals Reference](<Audiences - Signaux d'audience.md>) | Référence | Spécifications, limites et syntaxe des signaux |
| [Audience Segments Reference](<Audiences - Segments d'audience.md>) | Référence | Liste complète de tous les noms de segments prédéfinis Google |
| [Audience Strategy Mental Model](<Audiences - Stratégie d'audience.md>) | Mental Model | Cadre conceptuel signaux vs. ciblage |

---

### SOPs liés

| SOP | Relation |
|-----|----------|
| [SOP - Configurer les signaux d'audience](<Audiences - Configurer les signaux d'audience.md>) | Utilise ce document pour sélectionner les configurations de signaux |
| [SOP - Construire des listes Customer Match](<Audiences - Construire des listes Customer Match.md>) | Crée les listes Customer Match référencées ici |
