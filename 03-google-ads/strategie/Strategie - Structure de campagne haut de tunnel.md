# Structure de campagne haut du tunnel

> **Plateforme :** Google Ads
> **Catégorie :** Strategie
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Ce document vous aide à structurer les campagnes **Display**, **Video** et **Demand Gen** pour une efficacité et une scalabilité maximales.

> ❓ **La question centrale :** Comment construire des campagnes qui équilibrent la portée d'audience avec l'efficacité de conversion sur les canaux d'interruption ?

Contrairement à Search (où les utilisateurs expriment leur intention), les campagnes haut du tunnel **interrompent** les utilisateurs pendant d'autres activités. Cette différence fondamentale guide tout : la stratégie d'audience, la structure de campagne et la façon de mesurer le succès.

---

## Ce que ce modèle NE couvre PAS

Ce document NE couvre PAS :

- L'explication conceptuelle des signaux d'audience vs. ciblage (Voir : [Audience Strategy Mental Model](<../audiences/Audiences - Stratégie d'audience.md>))
- La configuration étape par étape des campagnes Display, Video ou Demand Gen (Voir : SOPs spécifiques par campagne)
- La structure des campagnes Search (Voir : [Search Campaign Structure Mental Model](<../search/Search - Structure de campagne Search.md>))
- La structure Performance Max ou les signaux d'audience pour PMax (Voir : [PMax Structure Mental Model (Ecommerce)](<../pmax/Pmax - Structure PMax (E-commerce).md>) ou [PMax Structure Mental Model (Lead Gen/SaaS)](<../pmax/Pmax - Structure PMax (Lead Gen-SaaS).md>))
- Les spécifications détaillées des composants créatifs ou les schémas de texte d'annonce (Voir : catalogues et références pertinents)

---

## Le principe d'interruption

|  | **Search** | **Haut du tunnel (Display/Video/Demand Gen)** |
| --- | --- | --- |
| **Comportement utilisateur** | L'utilisateur vous cherche | Vous trouvez l'utilisateur |
| **Intention** | Intention exprimée | Intention inférée |
| **Méthode de ciblage** | Ciblage par mot-clé | Ciblage par audience |
| **Rôle du message** | Le message correspond à la requête | Le message crée l'intérêt |
| **Compromis** | Haute efficacité, portée limitée | Efficacité plus basse, portée massive |

> ⚠️ **L'implication stratégique :** Les campagnes haut du tunnel nécessitent une approche fondamentalement différente. Vous ne faites pas correspondre l'intention, vous la **créez**. Cela signifie commencer par les audiences les plus susceptibles de convertir (chaudes) et s'étendre vers l'extérieur (froides).

> 💡 **Google Ads n'est pas toujours le meilleur canal pour le haut du tunnel :** Des plateformes comme Meta Ads (Facebook/Instagram) et Pinterest Ads offrent souvent des CPMs plus bas et un ciblage plus sophistiqué pour les objectifs de notoriété et considération. Évaluez si l'inventaire Display, Video et Demand Gen de Google est le bon choix pour votre audience avant de le choisir par défaut. Google Ads excelle à capturer la demande existante (Search, Shopping). Pour créer de la demande, comparez les coûts cross-plateforme et la qualité d'audience. Voir [Upper Funnel Channel Selection Mental Model](<Strategie - Sélection de canal haut de tunnel.md>) pour une méthode de décision cross-plateforme.

---

## Les trois types de campagnes

| **Type de campagne** | **Inventaire** | **Objectif principal** | **Idéal pour** |
| --- | --- | --- | --- |
| **Display** | Google Display Network (3M+ sites) | Remarketing, notoriété | Remarketing dynamique, portée large |
| **Video** | YouTube, partenaires vidéo | Notoriété, considération | Construction de marque, démos produits, portée |
| **Demand Gen** | YouTube, Discover, Gmail | Conversions, prospection haute qualité | Haut du tunnel orienté conversion, créatif de type social |

> ⚠️ **Mise à jour 2025 : Les Video Action Campaigns n'existent plus :** Elles ont été entièrement migrées vers Demand Gen au T2 2025. Si vous voulez des campagnes vidéo optimisées pour la conversion, utilisez **Demand Gen**, pas les campagnes Video. Les campagnes Video sont désormais principalement pour les objectifs de notoriété et considération.

> 💡 **Point clé :** Ces types de campagnes partagent ~70 % d'ADN structurel. La même hiérarchie d'audience, logique d'exclusion et stratégie d'expansion s'applique aux trois. Les décisions spécifiques au canal représentent les 30 % restants.

---

## Le document de température d'audience

La "température" de l'audience prédit la probabilité de conversion. Structurez vos campagnes autour de cette hiérarchie.

| **Température** | **Types d'audience** | **Efficacité** | **Portée** | **Rôle de campagne** |
| --- | --- | --- | --- | --- |
| 🔥 **Chaud** | Abandons de panier, abandons de formulaire, visiteurs produits | La plus haute | La plus petite | Priorité 1 : Capturer les acheteurs prêts |
| 🌡️ **Tiède** | Tous les visiteurs du site, Customer Match, engagés YouTube | Haute | Limitée | Priorité 2 : Réengager les utilisateurs intéressés |
| ❄️ **Frais** | Segments personnalisés (recherche/URLs), audiences similaires (Demand Gen uniquement) | Moyenne | Bonne | Priorité 3 : Prospection haute intention |
| ❄️ **Froid** | Sur le marché, événements de vie | Basse-Moyenne | Large | Priorité 4 : Prospection catégorie |
| 🧊 **Le plus froid** | Affinité, données démographiques seules | La plus basse | Maximum | Priorité 5 : Notoriété (si le budget le permet) |

> ↪️ **Référence croisée :** Pour la théorie sous-jacente, voir [Audience Strategy Mental Model](<../audiences/Audiences - Stratégie d'audience.md>). Pour l'impact du stade de conscience sur le message, voir [Awareness Stage Mental Model](<../../01-strategie/redaction/Rédaction - Niveaux de conscience.md>).

---

## La structure de campagne par niveaux

### Le document principal

```
CAMPAGNES HAUT DU TUNNEL
│
├── 🔷 NIVEAU 1 : REMARKETING (Chaud → Tiède)
│   ├── Abandons de panier/formulaire (priorité la plus haute)
│   ├── Visiteurs de pages produits/services
│   ├── Tous les visiteurs du site
│   └── Customer Match / Engagés YouTube
│
├── 🔷 NIVEAU 2 : PROSPECTION HAUTE INTENTION (Frais)
│   ├── Segments personnalisés (termes de recherche, URLs concurrents)
│   └── Segments d'audience similaire (Demand Gen uniquement)
│
└── 🔷 NIVEAU 3 : PROSPECTION NOTORIÉTÉ (Froid → Le plus froid)
    ├── Segments Sur le marché
    ├── Événements de vie
    └── Affinité / Données démographiques
```

### Pourquoi cet ordre compte

| **Niveau** | **Objectif** |
| --- | --- |
| **Niveau 1** | Capturer les utilisateurs qui vous connaissent déjà |
| **Niveau 2** | Trouver les utilisateurs avec une intention pertinente |
| **Niveau 3** | Construire la notoriété pour la demande future |

---

## La cascade d'exclusions

Les exclusions évitent les dépenses gaspillées et s'assurent que les utilisateurs voient le bon message.

### Exclusions obligatoires

| **Depuis cette campagne** | **Exclure ces audiences** |
| --- | --- |
| **Toutes les campagnes haut du tunnel** | Convertisseurs récents (utiliser la durée moyenne de votre cycle de vente : 7 jours pour l'e-commerce, 14 jours pour les services locaux, 30-90 jours pour le B2B/SaaS) |
| **Campagnes de prospection** | Toutes les audiences de remarketing |
| **Prospection Niveau 2** | Audiences Niveau 3 (si les deux tournent) |
| **Toutes les campagnes** | Placements non pertinents (apps, contenu enfants, etc.) |

### La logique de cascade

```
L'UTILISATEUR CONVERTIT → Exclu de toutes les campagnes (ajuster au cycle de vente : 7j ecom / 14j local / 30-90j B2B)
                    ↓ (après la fenêtre d'exclusion)
L'UTILISATEUR VISITE LE SITE → Passe au niveau Remarketing
                    ↓ (exclu de)
                    Campagnes de prospection
```

> 💡 **Conseil pratique :** Créez des segments d'audience à différentes fenêtres de récence (7 jours, 14 jours, 30 jours, 90 jours) pour des stratégies d'exclusion flexibles.

---

## Structure de campagne par type

### Campagnes Display

| **Segment** | **Focus de campagne** |
| --- | --- |
| **Remarketing** | Remarketing dynamique (e-commerce) ou remarketing standard |
| **Prospection** | Segments personnalisés, audiences sur le marché |
| **Marque/Notoriété** | Affinité + données démographiques (si actif) |

**Décisions structurelles clés :** Le ciblage d'audience est primaire, le ciblage de contenu est secondaire (superposer, jamais seul). Ciblage optimisé désactivé pour le remarketing, à tester pour la prospection. Les segments combinés (logique ET) affinent les audiences de prospection larges.

> ↪️ **Configuration Display.** Voir [SOP - Lancer une campagne Display](<../display/Display - Lancer une campagne.md>) pour les détails de configuration et [Content Exclusion Guidelines](<../display/Display - Exclusions de contenu.md>) pour les paramètres d'exclusion.

### Campagnes Video

> 💡 **Les campagnes Video sont pour la notoriété et la considération uniquement :** Pour les objectifs de conversion, utilisez Demand Gen à la place.

| **Objectif** | **Sous-type de campagne** | **Idéal pour** |
| --- | --- | --- |
| **Portée maximale** | Video Reach - Efficient Reach | Notoriété large au CPM le plus bas |
| **Diffusion garantie** | Video Reach - Non-skippable | Complétion complète du message |
| **Exposition répétée** | Video Reach - Target Frequency | Renforcement et mémorisation |
| **Narration** | Ad Sequence | Notoriété → considération en plusieurs étapes |
| **Engagement** | Video Views | Démos produits, explications |
| **Croissance de chaîne** | YouTube Subscriptions & Engagements | Acquisition d'abonnés |

**Décisions structurelles clés :** Formats désactivables pour la considération, non désactivables/bumper pour la notoriété. Vidéos courtes (<15s) pour la notoriété, plus longues pour la considération. Le paramètre d'expansion pour la considération/notoriété Video s'appelle "extension de l'audience" (différent du "ciblage optimisé").

> ↪️ **Configuration Video.** Voir [SOP - Lancer une campagne Video](<../video/Video - Lancer une campagne.md>) pour la configuration. Voir [Audience Targeting Guidelines](<../audiences/Audiences - Paramètres recommandés de ciblage.md>) pour les paramètres d'expansion.

### Campagnes Demand Gen

Demand Gen est maintenant le **type de campagne haut du tunnel orienté conversion :** il a absorbé les Video Action Campaigns en 2025. Utilisez Demand Gen pour optimiser les conversions sur YouTube, Discover et Gmail.

| **Segment** | **Stratégie d'audience** |
| --- | --- |
| **Remarketing** | Visiteurs du site, Customer Match (avec intégration du flux produits pour le créatif dynamique) |
| **Prospection** | Segments d'audience similaire + segments personnalisés (les audiences similaires sont exclusives à Demand Gen) |
| **Expansion** | Sur le marché avec ciblage optimisé pour l'expansion pilotée par l'IA |

**Décisions structurelles clés :** Commencer avec une portée d'audience similaire étroite à partir de la liste source de plus haute valeur, élargir si contraint par le volume. Ciblage optimisé désactivé pour le remarketing. Combiner les segments d'audience similaire et personnalisés dans le même groupe d'annonces (approche Demand Gen recommandée par Google). Utiliser à la fois les formats créatifs vidéo et image.

> ↪️ **Configuration Demand Gen.** Voir [SOP - Lancer une campagne Demand Gen](<../demand-gen/Demand Gen - Lancer une campagne.md>) pour la configuration. Voir [Audience Targeting Guidelines](<../audiences/Audiences - Paramètres recommandés de ciblage.md>) pour les paramètres d'audience similaire et d'expansion.

---

## Structure des groupes d'annonces

### Le principe de simplicité

Contrairement aux groupes d'annonces Search (qui nécessitent un alignement mot-clé-annonce serré), les groupes d'annonces haut du tunnel sont des **conteneurs d'audience**.

| **Groupe d'annonces haut du tunnel** | **Groupe d'annonces Search** |
| --- | --- |
| Un segment d'audience par groupe d'annonces | Un thème d'intention/créatif par groupe d'annonces |
| Variations créatives au sein du groupe d'annonces | Variations de composants au sein de la RSA |
| Structure plus simple | Structure plus complexe |

### Structure recommandée

| **Type de groupe d'annonces** | **Ce qu'il contient** | **Exemple** |
| --- | --- | --- |
| **Remarketing** | Un segment d'audience unique + créatif pertinent | "Abandons de panier - 7 jours" |
| **Prospection** | Un type d'audience unique + créatif de prospection | "Segment personnalisé - URLs concurrents" |
| **Notoriété** | Audience plus large + créatif de notoriété | "Sur le marché - Aménagement intérieur" |

> 💡 **Règle de base :** Si vous avez besoin de créatif différent, faites un groupe d'annonces différent. Si vous avez besoin de paramètres au niveau campagne différents, comme le budget ou les enchères, faites une campagne différente.

---

## Seuils de volume

> ↪️ **Pour les seuils complets par stratégie d'enchères, type de campagne, vérifications de viabilité budgétaire et tactiques quand le volume est insuffisant :** Voir [Conversion Volume Thresholds Reference](<../suivi/Suivi - Seuils de volume de conversions.md>).

---

## Modes d'échec

| **Erreur** | **Ce qui se passe** | **Comment prévenir** |
| --- | --- | --- |
| **Commencer par les audiences froides** | Efficacité basse brûle le budget avant d'apprendre | Commencer par le remarketing, étendre vers l'extérieur |
| **Pas de cascade d'exclusions** | Les utilisateurs voient les mauvaises annonces, budget gaspillé | Implémenter les exclusions avant le lancement |
| **Même créatif entre les températures** | Le message ne correspond pas au stade de conscience | Créatif différent par niveau |
| **Utiliser les campagnes Video pour les conversions** | Les campagnes Video sont pour la notoriété/considération uniquement | Utiliser Demand Gen pour les objectifs de conversion |
| **Groupes d'annonces sur-segmentés** | Données insuffisantes par segment | Consolider jusqu'à ce que le volume le supporte |
| **Ciblage optimisé activé partout** | Perte de contrôle d'audience | Utiliser sélectivement pour la prospection uniquement |
| **Ne jamais vérifier les insights d'audience** | Segments haute performance non ciblés manqués | Examiner la page Insights mensuellement pour découvrir de nouvelles audiences |
| **Ignorer les données démographiques** | Manque une optimisation facile en excluant les groupes à zéro conversion | Examiner la performance démographique mensuellement |
| **Confondre ciblage optimisé et extension de l'audience** | Fonctionnalités différentes appliquées aux mauvais types de campagnes | Ciblage optimisé pour Display/DG/Video performance. Extension de l'audience pour Video considération/notoriété uniquement |
| **Pas d'exclusions d'emplacements** | Dépenses gaspillées sur les apps, contenu enfants | Liste d'exclusion dès le premier jour |
| **Lancer Display/Video en parallèle de PMax sans coordination** | Chevauchement d'enchères, attribution floue | Définir des rôles clairs pour chacun |

---

## Principes clés

1. **Remarketing d'abord :** Construisez votre fondation de remarketing chaud/tiède avant la prospection. Capturez votre audience la plus chaude en premier.
2. **La température guide la structure :** Les niveaux de campagne doivent suivre la hiérarchie de température d'audience : chaud → tiède → frais → froid.
3. **Les exclusions sont obligatoires :** Chaque campagne haut du tunnel doit exclure les convertisseurs récents. Les campagnes de prospection doivent exclure les audiences de remarketing.
4. **Le créatif correspond à la température :** Les audiences froides ont besoin d'un message sur le problème/la douleur. Les audiences tièdes ont besoin de détails sur l'offre et d'urgence (Voir [Awareness Stage Mental Model](<../../01-strategie/redaction/Rédaction - Niveaux de conscience.md>)).
5. **Demand Gen pour les conversions, Video pour la notoriété :** Si vous voulez des campagnes haut du tunnel optimisées pour la conversion, utilisez Demand Gen. Les campagnes Video sont maintenant exclusivement pour les objectifs de notoriété et considération.
6. **Consolider jusqu'à contrainte :** Moins de campagnes/groupes d'annonces plus larges apprennent plus vite. Ne segmenter que quand vous avez le volume ET une raison stratégique.
7. **Coordonner avec PMax :** Si vous lancez Performance Max, définir des rôles clairs pour éviter le chevauchement et la confusion d'attribution.

---

## Documents liés

| **Document** | **Relation** |
| --- | --- |
| [Audience Strategy Mental Model](<../audiences/Audiences - Stratégie d'audience.md>) | Fondation (systèmes d'audience, méthode de température, segments combinés, insights d'audience) |
| [Audience Targeting Reference](<../audiences/Audiences - Signaux d'audience.md>) | Référence (ciblage optimisé vs. extension de l'audience, données démographiques, segments combinés, insights d'audience) |
| [Audience Segment Catalog](<../audiences/Audiences - Segments d'audience.md>) | Catalogue (configurations de segments, schémas de segments combinés, schémas d'optimisation démographique) |
| [Audience Targeting Guidelines](<../audiences/Audiences - Paramètres recommandés de ciblage.md>) | Guide (paramètres d'expansion, mode de ciblage, optimisation démographique) |
| [Content Exclusion Guidelines](<../display/Display - Exclusions de contenu.md>) | Guide (sécurité de marque et paramètres d'exclusion de contenu) |
| [Awareness Stage Mental Model](<../../01-strategie/redaction/Rédaction - Niveaux de conscience.md>) | Message (comment adapter le message à l'étape du tunnel) |
| [PMax Structure Mental Model (Ecommerce)](<../pmax/Pmax - Structure PMax (E-commerce).md>) | Coordination (décisions PMax vs. campagnes dédiées, e-commerce) |
| [PMax Structure Mental Model (Lead Gen/SaaS)](<../pmax/Pmax - Structure PMax (Lead Gen-SaaS).md>) | Coordination (décisions PMax vs. campagnes dédiées, Lead Gen/SaaS) |
| [Conversion Volume Thresholds Reference](<../suivi/Suivi - Seuils de volume de conversions.md>) | Référence (seuils de volume par stratégie d'enchères) |
| [Upper Funnel Channel Selection Mental Model](<Strategie - Sélection de canal haut de tunnel.md>) | Lié (sélection de canal cross-plateforme) |
| [SOP - Lancer une campagne Display](<../display/Display - Lancer une campagne.md>) | Exécution (configuration de campagne Display) |
| [SOP - Lancer une campagne Video](<../video/Video - Lancer une campagne.md>) | Exécution (configuration de campagne Video) |
| [SOP - Lancer une campagne Demand Gen](<../demand-gen/Demand Gen - Lancer une campagne.md>) | Exécution (configuration de campagne Demand Gen) |
