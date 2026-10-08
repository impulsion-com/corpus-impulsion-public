# Segments d'audience

> **Plateforme :** Google Ads
> **Catégorie :** Audiences
> **Type :** Exemples
> **Mis à jour :** 2026-05-07

## Fondamentaux des segments

### L'état d'esprit du ciblage

Les campagnes Display, Video et Demand Gen utilisent le **ciblage**, pas les signaux. Vous définissez qui voit vos annonces. Google diffuse dans ces paramètres, sauf si le ciblage optimisé est activé, qui étend au-delà de vos sélections.

### Disponibilité des segments par type de campagne

| Type de segment | Display | Video | Demand Gen |
|-----------------|---------|-------|------------|
| Visiteurs du site (remarketing) | ✅ | ✅ | ✅ |
| Customer Match | ✅ | ✅ | ✅ |
| Utilisateurs YouTube | ✅ | ✅ | ✅ |
| Utilisateurs d'app | ✅ | ✅ | ✅ |
| Segments personnalisés (keywords) | ✅ | ✅ | ✅ |
| Segments personnalisés (URLs/apps) | ✅ | ✅ | ✅ |
| In-market | ✅ | ✅ | ✅ |
| Affinité | ✅ | ✅ | ✅ |
| Événements de vie | ✅ | ✅ | ✅ |
| Données démographiques détaillées | ✅ | ✅ | ✅ |
| Segments similaires (lookalike) | ❌ | ❌ | ✅ |
| Segments combinés | ✅ | ✅ | ✅ |
| Ciblage de contenu (sujets/emplacements) | ✅ | ✅ | ❌ |

> ↪️ Pour les spécifications complètes et limites : Voir [Audience Targeting Reference](<Audiences - Signaux d'audience.md>)

---

## Porte de décision pour la sélection des segments

Avant de sélectionner des segments, déterminez l'objectif de votre campagne :
| Si votre objectif est... | Segments principaux | Mode de ciblage |
|--------------------------|--------------------|--------------------|
| **Remarketing (réengager les visiteurs connus)** | Visiteurs du site, Customer Match, utilisateurs YouTube | Ciblage (restreindre la diffusion à ces utilisateurs) |
| **Prospection (trouver de nouveaux clients)** | Segments personnalisés, in-market, lookalikes | Ciblage + ciblage optimisé DÉSACTIVÉ |
| **Notoriété de marque** | Affinité, in-market large, événements de vie | Ciblage + ciblage optimisé ACTIVÉ |
| **Collecte de données (identifier qui convertit)** | Tout segment | Observation (collecter les données sans restreindre) |

> 💡 **Ciblage vs. Observation, ça compte :** Le mode ciblage restreint la diffusion aux audiences sélectionnées uniquement. Le mode observation diffuse largement mais collecte les données de performance par audience. Utilisez l'observation quand vous voulez apprendre - utilisez le ciblage quand vous savez qui atteindre.

---

## Types de segments : détail type par type

### Type 1 : Segments de visiteurs du site (remarketing)

- **Température :** 🔥 Chaud (abandons panier/formulaire) / 🌡️ Tiède (tous les visiteurs)
- **Ce que c'est :** Segments construits à partir des données du Google Tag capturant le comportement des visiteurs du site.
- **Pourquoi c'est important :** Les visiteurs du site ont démontré un intérêt - le remarketing convertit à un taux 2-5x supérieur à la prospection.

#### Configurations de segments

| Segment | Fenêtre d'adhésion | Idéal pour | Pourquoi ça fonctionne |
|---------|---------------------|------------|------------------------|
| Tous les convertisseurs | 90-540 jours | Exclusion (éviter le remarketing sur les clients existants) | Empêche les dépenses sur les utilisateurs déjà convertis |
| Abandons de panier | 7-14 jours | Campagnes de récupération Ecommerce | Intention maximale : l'utilisateur était à un pas de l'achat |
| Abandons de formulaire | 7-30 jours | Suivi Lead Gen | L'utilisateur s'est suffisamment engagé pour commencer mais a besoin d'un coup de pouce |
| Consulteurs de produits/services | 14-30 jours | Réengagement milieu de tunnel | Un comportement de recherche active signale la considération |
| Tous les visiteurs du site | 30-90 jours | Remarketing large | Toute visite indique une notoriété, pool de portée plus large |
| Visiteurs blog/contenu | 30-90 jours | Campagnes de nurturing | La consommation de contenu signale un intérêt thématique pour les tunnels éducatifs |

#### Exemples de configurations par vertical

| Vertical | Segment | Fenêtre | Type de campagne | Pourquoi ça fonctionne |
|----------|---------|---------|-----------------|------------------------|
| Lead Gen | Visiteurs page tarifs | 14 jours | Display | Forte considération d'achat, sensible au temps |
| Lead Gen | Lecteurs d'études de cas | 30 jours | Video | Nurturing avec du contenu approfondi |
| Lead Gen | Démarreurs de formulaire n'ayant pas soumis | 7 jours | Display | Opportunité de récupération immédiate |
| SaaS | Utilisateurs d'essai n'ayant pas converti | 14 jours | Display, Demand Gen | Réengagement avec une offre de conversion |
| SaaS | Visiteurs pages fonctionnalités | 21 jours | Demand Gen | Comportement d'évaluation active |
| SaaS | Visiteurs page tarifs | 7 jours | Display | Au plus près de la décision d'achat |
| Ecommerce | Abandons de panier | 7 jours | Display | Récupération d'intention maximale |
| Ecommerce | Consulteurs de pages produit | 14 jours | Display, Demand Gen | Comportement d'achat actif |
| Ecommerce | Navigateurs de catégories | 30 jours | Demand Gen | Réengagement d'intérêt large |

> 💡 **Remarketing dynamique (Display) :** Pour l'ecommerce, utilisez le remarketing dynamique pour montrer automatiquement des annonces avec les produits spécifiques consultés par l'utilisateur. Nécessite un flux produit lié à Google Ads.

---

### Type 2 : Segments Customer Match

- **Température :** 🌡️ Tiède
- **Ce que c'est :** Segments d'audience construits à partir de vos données CRM uploadées (email, téléphone, adresse).
- **Pourquoi c'est important :** Les données client first-party permettent le réengagement cross-canal et le seeding d'audiences similaires de haute qualité.

#### Quand utiliser

| Scénario | Configuration | Type de campagne | Pourquoi ça fonctionne |
|----------|--------------|-----------------|------------------------|
| Réengager les clients inactifs | Clients inactifs depuis 90+ jours | Display, Demand Gen | Une relation connue réduit le coût d'acquisition |
| Upsell des clients existants | Clients actifs par catégorie de produit | Display, Demand Gen | La confiance existante abaisse la barrière de conversion |
| Exclure les clients existants | Liste tous les clients → exclusion | Toutes | Empêche les dépenses sur les utilisateurs déjà acquis |
| Seeder des segments similaires | Clients à haute valeur | Demand Gen | Les meilleurs clients produisent les meilleures audiences similaires |

#### Exemples de configurations par vertical

| Vertical | Type de liste | Cas d'usage | Pourquoi ça fonctionne |
|----------|--------------|-------------|------------------------|
| Lead Gen | Anciens clients (12 mois) | Campagnes de reconquête | Relation connue, réengagement tiède |
| Lead Gen | Leads qualifiés n'ayant pas signé | Nurturing via Display | Deuxième chance de conversion |
| SaaS | Abonnés churned | Reconquête avec messages sur les nouvelles fonctionnalités | Familiers avec le produit, coût d'éducation faible |
| SaaS | Utilisateurs du plan gratuit | Campagnes d'upgrade via Demand Gen | Intérêt prouvé pour le produit |
| Ecommerce | Acheteurs uniques | Campagnes d'achat récurrent | Convertir en multi-acheteurs |
| Ecommerce | Clients à haut LTV | Seed d'audience similaire pour Demand Gen | Trouver plus de vos meilleurs clients |

> ↪️ Pour la création et l'upload de listes : Voir [SOP - Construire des listes Customer Match](<Audiences - Construire des listes Customer Match.md>)

---

### Type 3 : Segments personnalisés (keywords)

- **Température :** ❄️ Frais
- **Ce que c'est :** Audiences de personnes ayant recherché des termes spécifiques sur Google.
- **Pourquoi c'est important :** Le comportement de recherche révèle une intention déclarée - cibler les utilisateurs ayant recherché des termes pertinents atteint des chercheurs actifs.

#### Règles de configuration

| Règle | Spécification |
|-------|--------------|
| Keywords recommandés | 10-15 par segment |
| Maximum de keywords | 50 par segment |
| Qualité des keywords | Utilisez des termes de recherche à haute conversion, pas des catégories larges. Sourcez depuis vos rapports de termes de recherche des campagnes Search : tirez les termes avec 5+ conversions. |
| Interprétation | Google cible les utilisateurs ayant recherché ces termes OU naviguant du contenu similaire |
| Portée du compte | Les segments personnalisés ne sont pas partageables entre comptes |

#### Exemples de configurations par vertical

| Vertical | Keywords (exemples) | Pourquoi ça fonctionne |
|----------|---------------------|------------------------|
| Lead Gen (Agence) | "google ads agency", "ppc management service", "hire google ads expert" | Cible les utilisateurs recherchant activement des services |
| Lead Gen (B2B) | "outsource payroll", "managed IT services near me", "business accounting firm" | Comportement de recherche de services spécifiques |
| SaaS (CRM) | "best crm software", "hubspot alternative", "sales pipeline tool" | Évaluation active et comparaison |
| SaaS (Analytics) | "website analytics tool", "google analytics alternative", "user tracking software" | Intention de recherche de catégorie |
| Ecommerce (Mode) | "buy designer handbags online", "luxury sneakers sale", "premium leather wallet" | Recherche produit transactionnelle |
| Ecommerce (Maison) | "modern sofa free delivery", "buy standing desk", "ergonomic office chair" | Requêtes produit prêtes à l'achat |

---

### Type 4 : Segments personnalisés (URLs/apps)

- **Température :** ❄️ Frais
- **Ce que c'est :** Audiences de personnes naviguant des sites similaires aux URLs spécifiées ou utilisant des apps similaires aux apps spécifiées.
- **Pourquoi c'est important :** Le comportement de navigation et d'utilisation d'apps révèle des intérêts et préférences au-delà du comportement de recherche.

#### Règles de configuration

| Règle | Spécification |
|-------|--------------|
| URLs recommandées | 10-15 par segment |
| Comportement URL | Cible les utilisateurs qui NAVIGUENT du contenu similaire, NE place PAS les annonces sur ces sites |
| Qualité des URLs | Utilisez des URLs de concurrents directs et de sites d'autorité du secteur |
| À éviter | Sites génériques (google.com, facebook.com), pages d'accueil d'actualités |

#### Exemples de configurations par vertical

| Vertical | URLs (exemples) | Pourquoi ça fonctionne |
|----------|----------------|------------------------|
| Lead Gen | wordstream.com, searchengineland.com, sites d'agences concurrentes | Atteint les utilisateurs consommant de l'éducation PPC |
| SaaS | Pages produit concurrentes, pages catégorie G2, pages comparaison Capterra | Atteint les utilisateurs évaluant activement des alternatives |
| Ecommerce | Boutiques concurrentes, sites d'avis (wirecutter.com), publications de catégorie | Atteint les acheteurs actifs naviguant des produits similaires |

---

### Type 5 : Segments in-market

- **Température :** ❄️ Froid
- **Ce que c'est :** Segments pré-construits par Google d'utilisateurs recherchant activement ou comparant des produits/services.
- **Pourquoi c'est important :** Les utilisateurs in-market ont démontré une intention d'achat par leur comportement récent de navigation et de recherche.

#### Caractéristiques clés

| Attribut | Détail |
|----------|--------|
| Source de données | Signaux comportementaux de Google (recherche, navigation, YouTube) |
| Niveau d'intention | Recherche active et comparaison |
| Fréquence de rafraîchissement | Mises à jour hebdomadaires |
| Portée | Audiences larges, spécificité moyenne |

#### Exemples de configurations par vertical

| Vertical | Segments in-market | Pourquoi ça fonctionne |
|----------|--------------------|------------------------|
| Lead Gen | Business Services > Advertising & Marketing Services | Recherche active d'aide marketing |
| Lead Gen | Business Services > Business Technology Solutions | Évaluation d'outils business |
| SaaS | Software > Business Technology > CRM Software | Évaluation de solutions CRM |
| SaaS | Software > Business Technology > Project Management Software | Comparaison d'outils PM |
| Ecommerce | Home & Garden > Home Furnishings > Living Room Furniture | Achat actif de mobilier |
| Ecommerce | Apparel & Accessories > Shoes | Achat actif de chaussures |

> 💡 **Combinez in-market avec des segments personnalisés :** L'in-market seul est large. Combinez avec des segments personnalisés (keywords ou URLs) en utilisant la logique ET dans les segments combinés pour un ciblage plus précis.

> ↪️ **Parcourir les noms de segments :** Voir [Audience Segments Reference](<Audiences - Segments d'audience.md>) pour la liste complète des segments in-market, affinité et événements de vie disponibles dans Google Ads.

---

### Type 6 : Segments d'affinité

- **Température :** 🧊 Le plus froid
- **Ce que c'est :** Segments pré-construits par Google basés sur les intérêts à long terme, habitudes et style de vie.
- **Pourquoi c'est important :** Les segments d'affinité fournissent une portée maximale pour les campagnes de notoriété mais portent le signal d'intention le plus faible.

#### Quand utiliser

| Utilisez l'affinité quand... | Évitez l'affinité quand... |
|------------------------------|---------------------------|
| Campagnes de notoriété de marque | Optimisation pour les conversions en réponse directe |
| Le budget permet une portée large | Le budget est limité et l'efficacité compte |
| Combiné avec des segments à intention plus élevée | Utilisé comme ciblage autonome |

#### Exemples de configurations par vertical

| Vertical | Segments d'affinité | Pourquoi ça fonctionne |
|----------|---------------------|------------------------|
| Lead Gen | Business Professionals > Business Decision Makers | Alignement d'intérêt basé sur le rôle |
| SaaS | Technology > Tech Enthusiasts | Base d'audience tech-forward |
| Ecommerce | Home & Garden > Home Decor Enthusiasts | Intérêt de catégorie à long terme |
| Ecommerce | Shoppers > Value Shoppers | Comportement d'acheteur sensible au prix |

---

### Type 7 : Événements de vie

- **Température :** ❄️ Froid
- **Ce que c'est :** Segments d'utilisateurs vivant des changements majeurs de vie qui créent des déclencheurs d'achat.
- **Pourquoi c'est important :** Les transitions de vie provoquent l'entrée dans une catégorie - les utilisateurs qui déménagent, se marient ou créent une entreprise entrent dans des marchés où ils n'étaient pas avant.

#### Événements de vie disponibles

| Événement de vie | Déclencheurs d'achat |
|------------------|---------------------|
| Création d'entreprise | Services business, logiciels, équipement de bureau |
| Diplôme universitaire | Services carrière, déménagement, tenue professionnelle |
| Changement d'emploi | Outils logiciels, développement professionnel, déménagement |
| Mariage | Services événementiels, équipement maison, planification financière |
| Déménagement | Mobilier, services à domicile, services publics, assurance |
| Achat immobilier | Hypothèque, assurance, mobilier, rénovation |
| Retraite | Planification financière, voyage, santé |

#### Exemples de configurations par vertical

| Vertical | Événement de vie | Pourquoi ça fonctionne |
|----------|-----------------|------------------------|
| Lead Gen (Finance) | Achat immobilier, Retraite | Les décisions financières majeures poussent à chercher un conseiller |
| SaaS (RH) | Création d'entreprise | Les nouvelles entreprises ont besoin d'outils RH/paie |
| Ecommerce (Mobilier) | Déménagement, Achat immobilier | Le déménagement et la nouvelle maison stimulent les achats de mobilier |

---

### Type 8 : Segments similaires (Demand Gen uniquement)

- **Température :** ❄️ Frais
- **Ce que c'est :** Audiences générées par Google qui ressemblent à vos segments de clients ou visiteurs existants.
- **Pourquoi c'est important :** Les audiences similaires étendent la portée vers de nouveaux utilisateurs partageant des caractéristiques avec vos meilleurs clients, sans nécessiter de définir des critères de ciblage.

#### Règles de configuration

| Règle | Spécification |
|-------|--------------|
| Disponibilité | Campagnes Demand Gen uniquement |
| Minimum de seed | 1 000+ utilisateurs matchés dans la liste seed |
| Options de portée | Étroite, Équilibrée, Large |
| Qualité du seed | Des seeds de meilleure qualité (convertisseurs, clients à haut LTV) produisent de meilleures audiences similaires |

#### Paramètres de portée

| Paramètre | Portée | Similarité | Quand utiliser |
|-----------|--------|-----------|----------------|
| Étroite | La plus petite | La plus haute | Campagnes axées efficacité, budget limité |
| Équilibrée | Moyenne | Moyenne | Point de départ par défaut pour la plupart des campagnes |
| Large | La plus grande | La plus basse | Campagnes axées scaling, budgets importants |

#### Exemples de configurations par vertical

| Vertical | Liste seed | Paramètre de portée | Pourquoi ça fonctionne |
|----------|-----------|---------------------|------------------------|
| Lead Gen | SQLs des 6 derniers mois | Équilibrée | Trouve des utilisateurs ressemblant aux leads qualifiés |
| Lead Gen | Meilleurs deals fermés | Étroite | Cible les utilisateurs comme vos meilleurs clients |
| SaaS | Abonnés payants (actifs) | Équilibrée | Reflète les profils d'utilisateurs payants actifs |
| SaaS | Convertisseurs essai-vers-payant | Étroite | Trouve les utilisateurs avec la plus haute probabilité de conversion |
| Ecommerce | Acheteurs récurrents (2+ commandes) | Équilibrée | Trouve des utilisateurs comme les clients fidèles |
| Ecommerce | Clients à haut AOV | Étroite | Cible les utilisateurs susceptibles de passer de grosses commandes |

> 💡 **La qualité du seed détermine la qualité de l'audience similaire :** Une audience similaire basée sur "tous les visiteurs du site" sera bien plus faible qu'une basée sur "clients ayant acheté 3+ fois". Seedez toujours avec votre audience à plus haute valeur.

---

### Type 9 : Segments combinés

- **Ce que c'est :** Audiences construites sur mesure combinant plusieurs types de segments avec une logique ET/OU/SAUF.
- **Pourquoi c'est important :** Les segments combinés créent un ciblage précis en superposant des signaux d'intention, transformant des segments larges en segments spécifiques. C'est l'outil principal pour affiner les audiences froides en audiences plus chaudes et efficaces.

#### Règles de configuration

| Règle | Spécification |
|-------|--------------|
| Où les créer | Outils et paramètres > Gestionnaire d'audiences > Segments combinés |
| Types de composants | Tout type de segment : vos données, personnalisé, in-market, affinité, événements de vie, données démographiques détaillées |
| Limite conditions ET | 3 conditions ET maximum recommandées (chaque condition ET réduit typiquement la taille d'audience de 50-70%) |
| Approche de test | Testez dans un ad group séparé avec ciblage optimisé DÉSACTIVÉ avant de scaler |
| Vérification taille d'audience | Vérifiez le statut "Prêt" dans l'interface Google Ads : trop de conditions ET peuvent réduire l'audience en dessous du seuil diffusable |

#### Opérateurs logiques

| Opérateur | Effet | Exemple |
|-----------|-------|---------|
| ET | Doit correspondre à TOUTES les conditions | In-market pour CRM ET segment personnalisé (keywords CRM) |
| OU | Doit correspondre à N'IMPORTE QUELLE condition | Visiteurs du site OU Customer Match |
| SAUF | Exclure les utilisateurs correspondants | In-market pour CRM ET SAUF clients existants |

#### Schémas de combinaison

| Schéma | Logique | Ce que ça accomplit | Quand utiliser |
|--------|---------|---------------------|----------------|
| **Superposition d'intention** | In-market ET Custom keywords | Affine l'in-market large avec une intention de recherche déclarée | Quand l'in-market seul est trop large et le CPA trop élevé |
| **Superposition d'exclusion** | N'importe quel segment ET SAUF Customer Match | Acquisition pure de nouveaux clients | Quand les campagnes de prospection dépensent sur les clients existants |
| **Événement de vie + catégorie** | Événement de vie ET In-market | Cible l'entrée dans une catégorie déclenchée par un événement | Quand le produit correspond à une transition de vie spécifique |
| **Démographique + intention** | Données démographiques détaillées ET In-market | Ciblage d'intention qualifié démographiquement | Quand votre produit sert une démographie spécifique dans une catégorie large |
| **Précision multi-signaux** | Custom keywords ET Affinité ET SAUF convertisseurs | Précision maximale à partir de segments individuellement imprécis | Quand vous avez besoin d'une prospection très ciblée avec un budget limité |
| **DG : Audience similaire + Custom** | Audience similaire OU Segment personnalisé (même ad group) | Approche Demand Gen recommandée par Google : portée modélisée large plus utilisateurs qualifiés par intention | Par défaut pour la prospection Demand Gen |

#### Exemples de configurations par vertical

| Vertical | Segment combiné | Logique | Pourquoi ça fonctionne |
|----------|----------------|---------|------------------------|
| Lead Gen | In-market (services marketing) ET custom keywords (termes de recherche agence) ET SAUF clients existants | ET + SAUF | Prospection précise excluant la base actuelle |
| Lead Gen | Événement de vie (création d'entreprise) ET In-market (technologie business) | ET | Cible les nouveaux propriétaires d'entreprise évaluant activement des outils |
| Lead Gen | Données démographiques détaillées (décideurs business) ET Custom keywords (termes d'externalisation) ET SAUF visiteurs du site | ET + SAUF | Prospection senior uniquement, audience fraîche |
| SaaS | Custom keywords (termes CRM) ET In-market (logiciel CRM) | ET | Double qualification par comportement de recherche + navigation |
| SaaS | Audience similaire (convertisseurs essai-vers-payant) OU Custom keywords (termes de marque concurrents) | OU (même DG ad group) | Structure DG recommandée par Google : modélisé + intention |
| SaaS | In-market (gestion de projet) ET Affinité (passionnés de tech) ET SAUF utilisateurs plan gratuit | ET + SAUF | Évaluateurs actifs tech-savvy, nouveaux pour le produit |
| Ecommerce | In-market (mobilier) ET Événement de vie (déménagement) ET SAUF acheteurs passés | ET + SAUF | Acheteurs déclenchés par un événement de vie, nouveaux clients uniquement |
| Ecommerce | Custom keywords (termes produits premium) ET Données démographiques détaillées (top 10% revenus) | ET | Ciblage produit haute valeur : intention + pouvoir d'achat |
| Ecommerce | In-market (loisirs outdoor) ET Affinité (passionnés d'outdoor) ET SAUF convertisseurs (30 jours) | ET + SAUF | Passionnés de catégorie faisant activement leurs achats, excluant les acheteurs récents |

> 💡 **Les segments combinés transforment le froid en frais :** Un segment in-market seul est froid (large, faible précision). Combiné avec des custom keywords, il devient frais (spécifique, précision plus élevée). La combinaison est la stratégie de ciblage, pas le composant individuel.

---

### Type 10 : Schémas d'optimisation démographique

- **Température :** Couche uniquement (pas de ciblage autonome)
- **Ce que c'est :** Ajustements démographiques (exclusions et modificateurs d'enchères) appliqués par-dessus les segments d'audience existants pour affiner la performance.
- **Pourquoi c'est important :** Les données démographiques seules ne sont pas du ciblage. Appliquées comme couche, elles éliminent le gaspillage des groupes démographiques sous-performants et augmentent l'investissement dans les performants.

> ⚠️ **Les données démographiques sont une couche d'affinage :** N'utilisez jamais les données démographiques comme seule méthode de ciblage. "Hommes 25-34" n'est pas une stratégie de ciblage. "In-market pour logiciel CRM, hommes 25-34, excluant les clients existants" en est une.

#### Dimensions démographiques disponibles

| Dimension | Options | Action Stratégies d'enchères intelligentes | Action CPC manuel |
|-----------|---------|---------------------|-------------------|
| Âge | 18-24, 25-34, 35-44, 45-54, 55-64, 65+, Inconnu | Exclure les sous-performants | Ajustements d'enchères |
| Genre | Homme, Femme, Inconnu | Exclure les sous-performants | Ajustements d'enchères |
| Statut parental | Parent (par âge de l'enfant), Non parent, Inconnu | Exclure les sous-performants | Ajustements d'enchères |
| Revenus du foyer | Top 10% à 50% inférieur, Inconnu | Exclure les sous-performants (pays sélectionnés) | Ajustements d'enchères (pays sélectionnés) |

#### Gestion du segment "Inconnu"

| Situation | Recommandation |
|-----------|---------------|
| "Inconnu" performe au niveau ou en dessous de la moyenne de la campagne | Garder ciblé : aucune action nécessaire |
| CPA "Inconnu" > 2x la moyenne de la campagne pendant 30+ jours | Envisager l'exclusion, mais comprenez que vous perdrez 15-30% de l'inventaire disponible |
| "Inconnu" a des données insuffisantes (< 50 clics) | Ne pas exclure : laissez les données s'accumuler |
| Campagne nouvellement lancée | Ne jamais exclure "Inconnu" au lancement : attendez 30+ jours |

#### Exemples de schémas d'optimisation par vertical

| Vertical | Schéma | Action | Pourquoi ça fonctionne |
|----------|--------|--------|------------------------|
| B2B / Lead Gen | Âge 18-24 convertit rarement | Exclure 18-24 (Stratégies d'enchères intelligentes) ou bid down -50% (CPC manuel) | Les décideurs ont typiquement 25+ |
| Services haute valeur | Top 10-20% revenus convertit à un taux 2x | Bid up +30% sur les tranches de revenus supérieures (CPC manuel) | Les revenus plus élevés corrèlent avec la capacité à payer le service |
| SaaS | Âge 25-44 convertit au taux le plus élevé | Bid up +20% sur 25-44 (CPC manuel) | Démographie cœur de l'acheteur SaaS |
| Ecommerce (produits enfants) | Parents avec jeunes enfants convertissent à un taux 3x | Bid up +40% sur Parents : 0-1 an, Parents : 1-3 ans (CPC manuel) | Adéquation directe produit-audience |
| Ecommerce luxe | 50% inférieur des revenus a zéro conversion | Exclure 50% inférieur (Stratégies d'enchères intelligentes) | Le produit est inabordable pour cette tranche |
| B2C large | Le genre penche 70% féminin | Bid up +20% sur Femme, bid down -15% sur Homme (CPC manuel) | Suivre les données de conversion, pas les suppositions |

---

## Empilement de segments par objectif de campagne

### Stack remarketing (réengager les utilisateurs connus)

| Couche | Type de segment | Objectif | Pourquoi ça fonctionne |
|--------|----------------|----------|------------------------|
| Principale | Visiteurs du site (7-30 jours) | Visiteurs récents à forte intention | La récence corrèle avec la probabilité de conversion |
| Secondaire | Customer Match (inactifs) | Reconquête des clients existants | La relation connue réduit le coût de réacquisition |
| Exclusion | Convertisseurs récents (7-30 jours) | Éviter de gaspiller sur les acheteurs récents | Empêche les dépenses redondantes sur les utilisateurs déjà convertis |

### Stack prospection (trouver de nouveaux clients)

| Couche | Type de segment | Objectif | Pourquoi ça fonctionne |
|--------|----------------|----------|------------------------|
| Principale | Segments personnalisés (keywords + URLs) | Prospection basée sur l'intention | Le comportement de recherche révèle une intention d'achat déclarée |
| Secondaire | Segments in-market | Chercheurs actifs de catégorie | Les signaux comportementaux de Google identifient les chercheurs actifs |
| Tertiaire | Audiences similaires (Demand Gen) | Similaires aux meilleurs clients | La portée modélisée étend au-delà de l'intention déclarée |
| Exclusion | Tous visiteurs du site + Customer Match | Acquisition pure de nouveaux clients | Empêche les dépenses sur les utilisateurs déjà dans votre tunnel |

### Stack notoriété (portée large)

| Couche | Type de segment | Objectif | Pourquoi ça fonctionne |
|--------|----------------|----------|------------------------|
| Principale | Segments d'affinité | Alignement d'intérêt à long terme | Portée large au CPM le plus bas pour les objectifs de notoriété |
| Secondaire | Événements de vie | Entrée dans une catégorie déclenchée | Les transitions de vie créent de nouveaux besoins d'achat |
| Tertiaire | In-market large | Intérêt au niveau catégorie | Capture les utilisateurs entrant dans la phase de considération |
| Exclusion | Clients existants | Se concentrer sur de nouvelles audiences | Garantit que le budget atteint des utilisateurs incrémentaux |

---

### Référence rapide : bibliothèque support

| Document | Type | Utilisé pour |
|----------|------|-------------|
| [Audience Targeting Launch Checklist](<Audiences - [Review] Lancement du ciblage par audience.md>) | Checklist | Valide la configuration du ciblage après paramétrage |
| [Audience Targeting Reference](<Audiences - Signaux d'audience.md>) | Référence | Spécifications des segments, limites et modes de ciblage |
| [Audience Segments Reference](<Audiences - Segments d'audience.md>) | Référence | Liste complète de tous les noms de segments prédéfinis Google |
| [Audience Strategy Mental Model](<Audiences - Stratégie d'audience.md>) | Mental Model | Cadre conceptuel signaux vs. ciblage |

---

### SOPs liés

| SOP | Relation |
|-----|----------|
| [SOP - Configurer le ciblage par audience](<Audiences - Configurer le ciblage par audience.md>) | Utilise ce document pour sélectionner les configurations de segments |
| [SOP - Construire des listes Customer Match](<Audiences - Construire des listes Customer Match.md>) | Crée les listes Customer Match référencées ici |
