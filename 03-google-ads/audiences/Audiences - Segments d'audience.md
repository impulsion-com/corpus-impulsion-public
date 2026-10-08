# Segments d'audience

> **Plateforme :** Google Ads
> **Catégorie :** Audiences
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Explique le fonctionnement des segments d'audience Google Ads : mécanismes de matching, température d'intention, disponibilité par type de campagne, fraîcheur des données et comportement des segments. Inclut un annuaire complet des noms de segments pour toutes les catégories prédéfinies.

---

## Ce que couvre cette fiche / Ce qu'elle ne couvre PAS

**Cette fiche :**

- Explique comment Google matche les utilisateurs à chaque catégorie de segment
- Définit la température d'intention et ce que ça signifie pour la qualité du ciblage
- Documente la disponibilité et le comportement des segments par type de campagne
- Fournit un annuaire complet de tous les noms de segments prédéfinis

**Cette fiche ne couvre PAS :**

- La stratégie ou les recommandations de combinaison (Voir : [Audience Segment Catalog](<Audiences - Segments d'audience.md>))
- Comment configurer le ciblage par audience (Voir : [SOP - Configurer le ciblage par audience](<Audiences - Configurer le ciblage par audience.md>))
- Les spécifications système, modes de ciblage ou fonctionnalités d'expansion (Voir : [Audience Targeting Reference](<Audiences - Signaux d'audience.md>))
- La configuration des signaux PMax (Voir : [Audience Signals Reference](<Audiences - Signaux d'audience.md>))

---

## Aide-mémoire : catégories de segments

| Catégorie | Comment Google matche | Température | Nb approx. de segments | Disponibilité campagne |
|----------|-------------------|-------------|------------------|----------------------|
| Données démographiques basiques | Déclaratif + inféré des patterns de navigation/recherche | Couche uniquement (affine, ne cible pas) | ~20 options | Tous types de campagne |
| Données démographiques détaillées | Croisement navigation, recherche et signaux de phase de vie | Couche uniquement (affine, ne cible pas) | ~25 segments | Tous types de campagne |
| Audiences d'affinité | Patterns de navigation long terme, consommation de contenu, signaux de style de vie | Froid (intérêt large, pas d'intention d'achat) | ~130 segments | Display, Video, Demand Gen, PMax (signal) |
| Audiences In-Market | Comportement de recherche actif : recherches récentes, visites de sites, engagement contenu | Tiède (considération active, intention plus élevée que l'affinité) | ~500+ segments | Display, Video, Demand Gen, PMax (signal) |
| Événements de vie | Signaux comportementaux indiquant des transitions de vie majeures | Tiède (l'intention varie selon la proximité de l'événement) | ~15 événements | Display, Video, Demand Gen |
| Segments personnalisés | Keywords, URL ou applications que vous définissez | Variable selon la qualité des inputs | Illimité | Display, Video, Demand Gen, PMax (signal) |
| Vos données (Remarketing) | Interaction directe : visites de site, usage d'app, vues vidéo | Chaud à très chaud (selon la récence) | Illimité | Tous types de campagne |
| Customer Match | Données CRM first-party matchées aux comptes Google | Très chaud (clients/leads connus) | Illimité | Tous types de campagne |

---

## Mécanismes des segments

### Comment fonctionne le matching

Google assigne les utilisateurs aux segments prédéfinis en se basant sur le comportement observé. L'assignation est probabiliste, pas déterministe.

| Catégorie | Signal de matching | Fréquence de rafraîchissement | Comportement de déclin |
|----------|----------------|-------------------|----------------|
| **Données démographiques basiques** | Données du compte Google + signaux inférés | Continu | Ne décline pas (âge, genre sont stables) |
| **Données démographiques détaillées** | Croisement navigation, recherche, phase de vie | Hebdomadaire à mensuel | Déclin lent (les phases de vie changent sur des mois/années) |
| **Affinité** | 30+ jours de comportement de navigation cohérent | Continu | Déclin lent (les intérêts persistent des mois) |
| **In-Market** | Recherche active dans les 7-14 derniers jours | Glissant | Déclin rapide (les utilisateurs quittent le segment quand la recherche s'arrête) |
| **Événements de vie** | Patterns comportementaux indiquant une transition | Piloté par l'événement | Sort après le passage de l'événement (semaines à mois) |
| **Segments personnalisés** | Matche le comportement de recherche/navigation à vos keywords/URL | Glissant | Dépend de la récence des inputs : les recherches par keyword déclinent en 7-14 jours |
| **Vos données** | Basé sur les tags (visite de site, vue vidéo, action app) | Temps réel | Durée d'adhésion que vous définissez (défaut varie par type) |
| **Customer Match** | Email/téléphone/adresse matchés aux comptes Google | À l'upload + re-match périodique | Ne décline pas tant que vous ne retirez pas de la liste |

### Température d'intention expliquée

La température reflète à quel point un utilisateur est proche d'une action de conversion. Elle détermine le CPA attendu et les objectifs de campagne appropriés.

| Température | Types de segments | Comportement attendu | CPA typique par rapport au Search hors marque |
|-------------|--------------|-------------------|-------------------------------------------|
| **Très chaud** | Customer Match, convertisseurs récents, abandons panier | Taux de conversion élevé, couverture faible | 1,5-2x le CPA Search hors marque |
| **Chaud** | Visiteurs du site (7-30 jours), viewers YouTube | Taux de conversion modéré, couverture modérée | 2-2,5x le CPA Search hors marque |
| **Tiède** | In-Market, événements de vie, segments personnalisés (keyword) | Taux de conversion plus faible, couverture plus large | 2,5-3x le CPA Search hors marque |
| **Froid** | Affinité, segments personnalisés larges (URL/app) | Taux de conversion le plus faible, couverture la plus élevée | 3-4x le CPA Search hors marque |

### Disponibilité des segments par type de campagne

| Type de segment | Search | Shopping | PMax | Display | Video | Demand Gen |
|-------------|--------|----------|------|---------|-------|------------|
| Données démographiques basiques | Observation uniquement | Observation uniquement | Signal | Ciblage/Observation | Ciblage/Observation | Ciblage |
| Données démographiques détaillées | Observation uniquement | Observation uniquement | Signal | Ciblage/Observation | Ciblage/Observation | Ciblage |
| Affinité | Observation uniquement | Observation uniquement | Signal | Ciblage/Observation | Ciblage/Observation | Ciblage |
| In-Market | Observation uniquement | Observation uniquement | Signal | Ciblage/Observation | Ciblage/Observation | Ciblage |
| Événements de vie | Non | Non | Signal | Ciblage/Observation | Ciblage/Observation | Ciblage |
| Segments personnalisés | Non | Non | Signal | Ciblage/Observation | Ciblage/Observation | Ciblage |
| Vos données (Remarketing) | RLSA (Observation/Ciblage) | Non | Signal | Ciblage/Observation | Ciblage/Observation | Ciblage |
| Customer Match | RLSA (Observation/Ciblage) | Non | Signal | Ciblage/Observation | Ciblage/Observation | Ciblage |
| Segments similaires | Non | Non | Non | Non | Non | Ciblage |
| Segments combinés | Observation uniquement | Non | Signal | Ciblage/Observation | Ciblage/Observation | Ciblage |

> **Distinction clé.** En Search/Shopping, les segments d'audience fonctionnent comme des couches d'observation (modificateurs d'enchères) ou du ciblage RLSA. En Display/Video/Demand Gen, ils contrôlent qui voit vos annonces. En PMax, ils fonctionnent comme des signaux (indices pour l'algorithme).

### Le segment "Inconnu"

Chaque dimension démographique inclut une catégorie "Inconnu" représentant les utilisateurs que Google ne peut pas classer. Ce segment contient typiquement 20-40% du trafic.

- Ne pas exclure "Inconnu" sans 30+ jours de données montrant un CPA > 2x la moyenne de la campagne
- "Inconnu" contient souvent des utilisateurs de haute qualité dont les données démographiques ne sont simplement pas détectées
- Exclure "Inconnu" réduit la couverture de 20-40% avec un impact incertain sur la performance

---

## Annuaire complet des noms de segments

Les tableaux ci-dessous listent tous les noms de segments Google Ads prédéfinis. Utilisez le [Audience Segment Catalog](<Audiences - Segments d'audience.md>) pour les exemples de configuration et la stratégie par type de segment.

## Données démographiques basiques

| Âge | Genre | Revenu du foyer | Statut parental |
|-----|--------|------------------|-----------------|
| 18-24 | Femme | Top 10% | Non parent |
| 25-34 | Homme | 11-20% | Parent |
| 35-44 | Inconnu | 21-30% | Inconnu |
| 45-54 | | 31-40% | |
| 55-64 | | 41-50% | |
| 65+ | | 50% inférieur | |
| Inconnu | | Inconnu | |

---

## Données démographiques détaillées

### Éducation

| Segment | Détail |
|---------|--------|
| Étudiants actuels | Actuellement inscrits |
| Niveau le plus élevé : Diplôme avancé | Titulaires d'un diplôme de troisième cycle/professionnel |
| Niveau le plus élevé : Licence | Titulaires d'un diplôme de premier cycle |
| Niveau le plus élevé : Diplôme du secondaire | Titulaires du baccalauréat |

### Emploi

| Catégorie | Segment |
|----------|---------|
| Taille d'entreprise | Grand employeur (250-10k employés) |
| Taille d'entreprise | Petit employeur (1-249 employés) |
| Taille d'entreprise | Très grand employeur (10k+ employés) |
| Secteur | Secteur de la construction |
| Secteur | Secteur de l'éducation |
| Secteur | Secteur financier |
| Secteur | Secteur de la santé |
| Secteur | Secteur de l'hôtellerie |
| Secteur | Secteur manufacturier |
| Secteur | Secteur immobilier |
| Secteur | Secteur technologique |

### Statut de propriété

| Segment |
|---------|
| Propriétaires |
| Locataires |

### Statut matrimonial

| Segment |
|---------|
| En couple |
| Marié(e) |
| Célibataire |

### Statut parental (détaillé)

| Segment | Tranche d'âge |
|---------|-----------|
| Parents de nourrissons | 0-1 an |
| Parents de tout-petits | 1-3 ans |
| Parents de préscolaires | 4-5 ans |
| Parents d'écoliers | 6-12 ans |
| Parents d'adolescents | 13-17 ans |

---

## Audiences d'affinité

### Banque & Finance

| Segment |
|---------|
| Investisseurs assidus |
| Banque en ligne |

### Beauté & Bien-être

| Segment |
|---------|
| Passionnés de beauté |
| Fréquente régulièrement les salons |

### Alimentation & Restauration

| Catégorie | Sous-catégorie | Segment |
|----------|------------|---------|
| Principal | | Habitués des cafés |
| Principal | | Amateurs de fast-food |
| Principal | | Foodies |
| Principal | | Préfère la nourriture bio |
| Passionnés de cuisine | | Cuisiniers en 30 minutes |
| Passionnés de cuisine | | Chefs en herbe |
| Mange souvent dehors | Par repas | Mange souvent le petit-déjeuner dehors |
| Mange souvent dehors | Par repas | Mange souvent le dîner dehors |
| Mange souvent dehors | Par repas | Mange souvent le déjeuner dehors |
| Végétariens & Vegans | | Végétariens & Vegans |
| Végétariens & Vegans | | Vegans |

### Maison & Jardin

| Segment |
|---------|
| Bricoleurs |
| Passionnés de décoration |

### Styles de vie & Loisirs

| Catégorie | Segment |
|----------|---------|
| Principal | Amateurs d'art & théâtre |
| Principal | Professionnels |
| Principal | Donateurs & bénévoles |
| Principal | Fashionistas |
| Principal | Assiste régulièrement à des événements live |
| Principal | Passionnés de vie écologique |
| Principal | Passionnés de vie nocturne |
| Principal | Passionnés d'activités de plein air |
| Principal | Photographes amateurs |
| Principal | Amateurs de sensations fortes |
| Famille | Parents pratiquant l'école à la maison |
| Amoureux des animaux | Amoureux des chats |
| Amoureux des animaux | Amoureux des chiens |

### Médias & Divertissement

| Catégorie | Segment |
|----------|---------|
| Principal | Amateurs de livres |
| Principal | Fans de comics & animation |
| Principal | Petits consommateurs de TV |
| Gamers | Fans de jeux d'action |
| Gamers | Fans de jeux d'aventure & stratégie |
| Gamers | Joueurs casual & sociaux |
| Gamers | Joueurs console |
| Gamers | Fans de jeux de conduite & course |
| Gamers | Fans d'Esports |
| Gamers | Fans de nouveaux jeux vidéo |
| Gamers | Joueurs hardcore |
| Gamers | Joueurs PC |
| Gamers | Fans de jeux de rôle |
| Gamers | Fans de jeux de tir |
| Gamers | Fans de jeux de sport |
| Cinéphiles | Fans de films d'action & aventure |
| Cinéphiles | Fans de comédies |
| Cinéphiles | Fans de films familiaux |
| Cinéphiles | Fans de nouveaux films |
| Cinéphiles | Fans de films d'horreur |
| Cinéphiles | Fans de films romantiques & dramatiques |
| Cinéphiles | Fans de science-fiction & fantasy |
| Cinéphiles | Fans de cinéma sud-asiatique |
| Mélomanes | Fans de blues |
| Mélomanes | Passionnés de musique classique |
| Mélomanes | Fans de country |
| Mélomanes | Fans de musique électronique |
| Mélomanes | Passionnés de musique folk & traditionnelle |
| Mélomanes | Fans de rock indé & alternatif |
| Mélomanes | Passionnés de jazz |
| Mélomanes | Fans de métal |
| Mélomanes | Fans de pop |
| Mélomanes | Fans de rap & hip hop |
| Mélomanes | Fans de rock |
| Mélomanes | Fans de musique hispanique |
| Mélomanes | Fans de musique du monde |
| Fans de TV | Fans de documentaires & non-fiction |
| Fans de TV | Fans de TV familiale |
| Fans de TV | Fans de jeux télévisés, téléréalité & talk-shows |
| Fans de TV | Fans de TV science-fiction & fantasy |
| Fans de TV | Fans de comédies TV |
| Fans de TV | Fans de dramas TV |

### Actualités & Politique

| Catégorie | Segment |
|----------|---------|
| Lecteurs assidus d'actualités | Lecteurs assidus d'actualités business |
| Lecteurs assidus d'actualités | Lecteurs assidus d'actualités locales |
| Lecteurs assidus d'actualités | Lecteurs assidus d'actualités politiques |
| Lecteurs assidus d'actualités | Lecteurs assidus d'actualités internationales |
| Lecteurs assidus d'actualités | Passionnés d'actualités people |
| Lecteurs assidus d'actualités | Fans de médias masculins |
| Lecteurs assidus d'actualités | Fans de médias féminins |

### Acheteurs

| Catégorie | Segment |
|----------|---------|
| Principal | Chasseurs de bonnes affaires |
| Principal | Acheteurs de luxe |
| Principal | Accros du shopping |
| Principal | Acheteurs de valeur |
| Par type de magasin | Acheteurs de supérettes |
| Par type de magasin | Acheteurs de grands magasins |
| Par type de magasin | Acheteurs d'épiceries |
| Par type de magasin | Acheteurs de grandes surfaces |

### Sports & Fitness

| Catégorie | Segment |
|----------|---------|
| Passionnés de santé & fitness | Pratiquants de musculation |
| Passionnés de santé & fitness | Amoureux du yoga |
| Fans de sport | Fans de football américain |
| Fans de sport | Fans de football australien |
| Fans de sport | Fans de baseball |
| Fans de sport | Fans de basketball |
| Fans de sport | Passionnés de voile & bateau |
| Fans de sport | Passionnés de cricket |
| Fans de sport | Passionnés de cyclisme |
| Fans de sport | Fans de combat & catch |
| Fans de sport | Passionnés de golf |
| Fans de sport | Fans de hockey |
| Fans de sport | Passionnés de sports mécaniques |
| Fans de sport | Passionnés de racquetball |
| Fans de sport | Passionnés de rugby |
| Fans de sport | Passionnés de course à pied |
| Fans de sport | Passionnés de ski |
| Fans de sport | Fans de football |
| Fans de sport | Passionnés de natation |
| Fans de sport | Passionnés de tennis |
| Fans de sport | Passionnés de sports nautiques |
| Fans de sport | Passionnés de sports d'hiver |

### Technologie

| Catégorie | Segment |
|----------|---------|
| Principal | Passionnés de mobile |
| Principal | Passionnés de réseaux sociaux |
| Technophiles | Audiophiles |
| Technophiles | Utilisateurs avancés de services cloud |
| Technophiles | Passionnés d'ordinateurs haut de gamme |
| Technophiles | Passionnés de domotique |

### Voyage

| Catégorie | Segment |
|----------|---------|
| Principal | Voyageurs d'affaires |
| Passionnés de voyage | Voyageurs balnéaires |
| Passionnés de voyage | Vacanciers en famille |
| Passionnés de voyage | Voyageurs de luxe |
| Passionnés de voyage | Voyageurs d'hiver |

### Véhicules & Transport

| Catégorie | Segment |
|----------|---------|
| Passionnés d'automobile | Passionnés de motos |
| Passionnés d'automobile | Passionnés de véhicules de luxe & performance |
| Passionnés d'automobile | Passionnés de pick-ups & SUV |
| Modes de transport | Utilisateurs de transports en commun |
| Modes de transport | Utilisateurs de taxis |

---

## Audiences In-Market

### Vêtements & Accessoires

| Catégorie | Sous-catégorie | Segment |
|----------|------------|---------|
| Vêtements de sport | | Vêtements de course |
| Vêtements de sport | | Vêtements de yoga |
| Principal | | Sacs à dos |
| Principal | | Costumes |
| Principal | | Sacs à main |
| Principal | | Chapeaux |
| Principal | | Lingerie |
| Principal | | Bagages |
| Principal | | Vêtements homme |
| Principal | | Vêtements d'extérieur |
| Principal | | Pantalons |
| Principal | | Chemises & Hauts |
| Principal | | Chaussettes |
| Principal | | Maillots de bain |
| Principal | | Sous-vêtements |
| Principal | | Portefeuilles, mallettes & maroquinerie |
| Principal | | Vêtements femme |
| Lunetterie | | Lunettes de vue & lentilles de contact |
| Lunetterie | | Lunettes de soleil |
| Tenue habillée | | Tenue de mariée |
| Tenue habillée | | Costumes & tenue professionnelle |
| Bijoux & Montres | | Bijoux fins > Colliers |
| Bijoux & Montres | | Montres |
| Bijoux & Montres | | Alliances & bagues de fiançailles |
| Chaussures | | Chaussures de sport |
| Chaussures | | Bottes |
| Chaussures | | Chaussures habillées |

### Fournitures d'arts & loisirs créatifs

| Segment |
|---------|
| Fournitures d'arts & loisirs créatifs |

### Auto & Véhicules

**Pièces & Accessoires auto**

| Segment |
|---------|
| Pièces & accessoires extérieurs auto |
| Pièces & accessoires intérieurs auto |
| Composants électroniques auto |
| Batteries auto |
| Freins auto |
| Moteur & transmission |
| Pièces haute performance & aftermarket |
| Roues & pneus |

**Réparation & Entretien auto**

| Segment |
|---------|
| Service & réparation de freins |
| Carrosserie & réparation collision |
| Réparation & remplacement de vitres |
| Vidanges |
| Réparation de transmission |

**Véhicules motorisés**

| Catégorie | Segment |
|----------|---------|
| Principal | Véhicules motorisés (Neufs) |
| Principal | Véhicules motorisés (Occasion) |
| Par marque | Acura, Alfa Romeo, Audi, BMW, Buick, Cadillac, Chevrolet, Chrysler, Citroen, Dodge, Fiat, Ford, GMC, Honda, Hyundai, Infiniti, Isuzu, Jaguar, Jeep, Kia, Land Rover, Lexus, Lincoln, Maserati, Mazda, Mercedes-Benz, Mini, Mitsubishi, Nissan, Peugeot, Porsche, Ram, Renault, Subaru, Suzuki, Tesla, Toyota, Volkswagen, Volvo |
| Par type | Cabriolets, Coupés, Crossovers, Berlines compactes, Véhicules de luxe, Monospaces & Vans, Motos, Véhicules tout-terrain, Pick-ups, Scooters & Cyclomoteurs, Berlines, Breaks, SUV |

### Produits bébé & enfant

| Catégorie | Segment |
|----------|---------|
| Principal | Produits d'alimentation bébé & tout-petit |
| Principal | Produits de bain bébé |
| Principal | Produits de sécurité bébé |
| Principal | Produits de change |
| Principal | Meubles enfant |
| Principal | Jouets enfant |
| Principal | Couches |
| Transport bébé | Porte-bébés |
| Transport bébé | Poussettes |

### Produits & Services de beauté

| Catégorie | Sous-catégorie | Segment |
|----------|------------|---------|
| Principal | | Cosmétiques |
| Principal | | Parfums & Fragrances |
| Produits bain & corps | | Savons |
| Produits bain & corps | | Gel douche |
| Services beauté | | Services de coiffure |
| Services beauté | | Services spa |
| Soins capillaires | | Coloration |
| Soins capillaires | | Shampoing & Après-shampoing |
| Soins capillaires | | Produits coiffants |
| Soins de la peau | | Produits anti-âge |
| Soins de la peau | | Nettoyants visage |
| Soins de la peau | | Hydratants |

### Services aux entreprises

| Catégorie | Segment |
|----------|---------|
| Principal | Organisation d'événements d'entreprise |
| Principal | Services juridiques |
| Principal | Fournitures de bureau |
| Principal | Services de paie |
| Principal | Services de recrutement |
| Publicité & Marketing | Branding & objets promotionnels |
| Publicité & Marketing | Services de design |
| Publicité & Marketing | Services de marketing digital |
| Publicité & Marketing | Services d'impression & mailing direct |
| Publicité & Marketing | Services SEO & SEM |
| Publicité & Marketing | Services de marketing sur les réseaux sociaux |
| Services financiers aux entreprises | Services aux marchands |
| Impression d'entreprise | Services d'impression & de documents |
| Technologie d'entreprise | Logiciel CRM |
| Technologie d'entreprise | Logiciel d'entreprise |
| Technologie d'entreprise | Logiciel RH & Paie |
| Technologie d'entreprise | Automatisation marketing |
| Technologie d'entreprise | Logiciel de gestion de projet |
| Technologie d'entreprise | Services d'hébergement web |

### Ordinateurs & Périphériques

| Catégorie | Segment |
|----------|---------|
| Principal | Écrans d'ordinateur |
| Principal | Équipements réseau |
| Principal | Imprimantes, copieurs & fax |
| Principal | Projecteurs |
| Principal | Scanners |
| Ordinateurs | Ordinateurs de bureau |
| Ordinateurs | Ordinateurs portables |
| Ordinateurs | Tablettes |

### Électronique grand public

| Catégorie | Sous-catégorie | Segment |
|----------|------------|---------|
| Audio | | Casques audio |
| Audio | | Audio maison |
| Audio | | Enceintes portables |
| Caméras | | Caméscopes |
| Caméras | | Appareils photo numériques |
| Principal | | GPS & systèmes de navigation |
| Principal | | Systèmes home cinéma |
| Principal | | Montres connectées |
| Téléphones mobiles | | Accessoires de téléphone |
| Téléphones mobiles | Par marque | Apple iPhone |
| Téléphones mobiles | Par marque | Google Pixel |
| Téléphones mobiles | Par marque | Samsung Galaxy |
| TV | | TV écran plat |
| TV | | Smart TV |
| Consoles de jeux | Par marque | PlayStation |
| Consoles de jeux | Par marque | Xbox |

### Logiciels grand public

| Segment |
|---------|
| Logiciels antivirus & sécurité |
| Logiciels bureautiques & productivité |
| Logiciels de retouche photo & vidéo |

### Services de rencontre

| Segment |
|---------|
| Services de rencontre |

### Éducation

| Catégorie | Segment |
|----------|---------|
| Principal | Apprentissage des langues étrangères |
| Enseignement supérieur | Universités & Grandes écoles |
| Enseignement supérieur | Examens & tests standardisés |
| Enseignement primaire & secondaire | Écoles privées |

### Emploi

| Segment |
|---------|
| Emplois comptabilité & finance |
| Emplois administratifs |
| Développement de carrière > Services CV & portfolio |
| Emplois service client |
| Emplois éducation |
| Emplois secteur public |
| Emplois santé |
| Emplois hôtellerie & tourisme |
| Emplois IT & technique |
| Emplois juridiques |
| Emplois industrie & logistique |
| Emplois marketing |
| Emplois immobilier |
| Emplois commerce |
| Emplois vente |
| Emplois scientifiques & ingénierie |
| Emplois métiers manuels |

### Services financiers

| Catégorie | Sous-catégorie | Segment |
|----------|------------|---------|
| Services bancaires | | Comptes courants |
| Services bancaires | | Comptes d'épargne |
| Crédit & Prêts | | Prêts auto |
| Crédit & Prêts | | Prêts entreprise |
| Crédit & Prêts | | Cartes de crédit |
| Crédit & Prêts | | Gestion de dettes & conseil |
| Crédit & Prêts | | Crédit immobilier |
| Crédit & Prêts | | Prêts personnels |
| Crédit & Prêts | | Prêts étudiants |
| Crédit & Prêts | Prêts hypothécaires | Refinancement hypothécaire |
| Planification financière | | Planification retraite |
| Assurance | | Assurance auto |
| Assurance | | Assurance santé |
| Assurance | | Assurance habitation |
| Assurance | | Assurance vie |
| Assurance | | Assurance voyage |
| Services d'investissement | | Courtage & day trading |
| Principal | | Services fiscaux |

### Alimentation & Épicerie

| Catégorie | Segment |
|----------|---------|
| Principal | Ingrédients de cuisine |
| Principal | Livraison de repas |
| Principal | Kits repas |
| Plats préparés | Surgelés |
| Plats préparés | Plats préparés & accompagnements |

### Cadeaux & Occasions

| Segment |
|---------|
| Cartes & Vœux |
| Fleurs |
| Paniers cadeaux |
| Fournitures de fête & décoration |
| Cadeaux personnalisés |

### Santé

| Catégorie | Sous-catégorie | Segment |
|----------|------------|---------|
| Principal | | Services chiropratiques |
| Principal | | Soins dentaires |
| Principal | | Services de santé mentale |
| Principal | | Pharmacies |
| Principal | | Kinésithérapie |
| Principal | | Traitements des addictions |
| Principal | | Soins de la vue |
| Conditions médicales | | Allergies |
| Conditions médicales | | Arthrite |
| Conditions médicales | | Gestion du diabète |
| Conditions médicales | | Maladies cardiaques |
| Conditions médicales | | Troubles du sommeil |
| Dispositifs médicaux | | Équipement de gestion du diabète |
| Dispositifs médicaux | | Appareils auditifs |
| Dispositifs médicaux | | Équipement de mobilité & accessibilité |
| Perte de poids | | Programmes de perte de poids |
| Perte de poids | | Compléments minceur |
| Produits bien-être | | Remèdes naturels & phytothérapie |
| Produits bien-être | | Vitamines & compléments alimentaires |

### Maison & Jardin

| Catégorie | Sous-catégorie | Segment |
|----------|------------|---------|
| Principal | | Salle de bain |
| Principal | | Cheminées |
| Principal | | Sécurité maison |
| Principal | | Lutte antiparasitaire |
| Principal | | Outillage |
| Linge & Bain | | Produits de bain |
| Linge & Bain | | Literie & linge |
| Électroménager | | Lave-vaisselle |
| Électroménager | | Machines à laver |
| Électroménager | | Réfrigérateurs & congélateurs |
| Électroménager | | Petit électroménager cuisine |
| Électroménager | | Aspirateurs |
| Décoration | | Horloges |
| Décoration | | Bougies & parfums d'intérieur |
| Décoration | | Lampes & éclairage |
| Décoration | | Tapis & moquettes |
| Décoration | | Art mural |
| Décoration | | Habillage de fenêtres |
| Ameublement | | Mobilier de chambre |
| Ameublement | | Mobilier de salon |
| Ameublement | | Mobilier de bureau |
| Ameublement | | Mobilier de jardin |
| Rénovation | | Placards & plans de travail |
| Rénovation | | Portes & fenêtres |
| Rénovation | | Revêtements de sol |
| Rénovation | | Extérieur maison |
| Rénovation | | Chauffage & refroidissement |
| Rénovation | | CVC & climatisation |
| Rénovation | | Rénovation de cuisine |
| Rénovation | | Peinture & papier peint |
| Rénovation | | Plomberie |
| Rénovation | | Toiture |
| Entretien | | Produits ménagers |
| Entretien | | Rangement & organisation |
| Cuisine & Salle à manger | | Ustensiles de cuisine |
| Cuisine & Salle à manger | | Rangement cuisine |
| Cuisine & Salle à manger | | Petit électroménager cuisine |
| Cuisine & Salle à manger | | Vaisselle & arts de la table |
| Extérieur & Jardin | | Accessoires de jardin |
| Extérieur & Jardin | | Jardinage |
| Extérieur & Jardin | | Barbecues & cuisine extérieure |
| Extérieur & Jardin | | Entretien pelouse & outillage motorisé |
| Extérieur & Jardin | | Outillage motorisé extérieur |
| Extérieur & Jardin | | Rangement extérieur |
| Extérieur & Jardin | | Piscines & Spas |

### Immobilier

| Catégorie | Segment |
|----------|---------|
| Principal | Immobilier commercial |
| Principal | Gestion de propriétés |
| Principal | Immobilier résidentiel (Achat) |
| Principal | Immobilier résidentiel (Location) |
| Immobilier résidentiel | Appartements |
| Immobilier résidentiel | Maisons |
| Immobilier résidentiel | Propriétés de vacances & loisirs |

### Sports & Fitness

| Catégorie | Sous-catégorie | Segment |
|----------|------------|---------|
| Exercice & Fitness | | Équipement de fitness |
| Exercice & Fitness | | Programmes & produits fitness |
| Exercice & Fitness | | Abonnements salle de sport |
| Loisirs d'extérieur | | Accessoires vélo |
| Loisirs d'extérieur | | Vélos |
| Loisirs d'extérieur | | Équipement camping & randonnée |
| Loisirs d'extérieur | | Équipement d'escalade |
| Loisirs d'extérieur | | Équipement de pêche |
| Loisirs d'extérieur | | Équipement de chasse & tir |
| Loisirs d'extérieur | | Équipement de sports nautiques |
| Articles de sport | | Équipement de golf |
| Articles de sport | | Équipement de sports de raquette |
| Articles de sport | | Équipement de sports d'hiver |
| Principal | | Vêtements de sport |
| Équipement sports d'équipe | | Équipement baseball & softball |
| Équipement sports d'équipe | | Équipement basketball |
| Équipement sports d'équipe | | Équipement football américain |
| Équipement sports d'équipe | | Équipement football |

### Télécoms

| Catégorie | Segment |
|----------|---------|
| Principal | Fournisseurs TV câble & satellite |
| Principal | Fournisseurs d'accès internet |
| Opérateur mobile | AT&T |
| Opérateur mobile | Sprint |
| Opérateur mobile | T-Mobile |
| Opérateur mobile | Verizon |

### Voyage

| Catégorie | Sous-catégorie | Segment |
|----------|------------|---------|
| Principal | | Voyages aériens |
| Principal | | Voyages bus & train |
| Principal | | Croisières |
| Principal | | Bagages & accessoires de voyage |
| Principal | | Forfaits vacances |
| Location de voiture & Taxi | | Location de voiture |
| Location de voiture & Taxi | | Covoiturage & VTC |
| Hôtels & Hébergement | | Locations longue durée & de vacances |
| Hôtels & Hébergement | | Hôtels & Resorts |

**Voyages par destination : Asie-Pacifique**

| Pays/Région | Ville/Zone |
|---------------|-----------|
| Australie | Brisbane, Melbourne, Perth, Sydney |
| Bali | |
| Bangkok | |
| Cambodge | |
| Chine | Pékin, Guangzhou, Hong Kong, Shanghai |
| Fidji | |
| Inde | Bangalore, Chennai, Delhi, Goa, Hyderabad, Jaipur, Kerala, Kolkata, Mumbai, Pune |
| Indonésie | Jakarta |
| Japon | Fukuoka, Hokkaido, Kyoto, Osaka, Tokyo |
| Malaisie | Kuala Lumpur |
| Maldives | |
| Népal | |
| Nouvelle-Zélande | Auckland, Queenstown |
| Palawan | |
| Philippines | Cebu, Manille |
| Singapour | |
| Corée du Sud | Busan, Île de Jeju, Séoul |
| Sri Lanka | |
| Taiwan | Taipei |
| Thaïlande | Chiang Mai, Pattaya, Phuket |
| Vietnam | Da Nang, Hanoi, Hô Chi Minh-Ville |

**Voyages par destination : Amérique centrale & du Sud**

| Pays/Région | Ville/Zone |
|---------------|-----------|
| Argentine | Buenos Aires |
| Bogota | |
| Brésil | Rio de Janeiro, São Paulo |
| Caraïbes | Aruba, Bahamas, Barbade, Cancun & Riviera Maya, Îles Caïmans, Cuba, République Dominicaine (Punta Cana, Saint-Domingue), Jamaïque, Porto Rico, Saint-Martin, Trinité-et-Tobago, Turques-et-Caïques, Îles Vierges |
| Chili | Santiago |
| Colombie | Carthagène, Medellín |
| Costa Rica | |
| Équateur | Îles Galápagos |
| Guatemala | |
| Lima | |
| Mexique | Guadalajara, Los Cabos, Mexico, Monterrey, Puerto Vallarta |
| Nicaragua | |
| Panama | Panama City |
| Pérou | Cusco |
| Uruguay | |

**Voyages par destination : Europe**

| Pays/Région | Ville/Zone |
|---------------|-----------|
| Albanie | |
| Autriche | Salzbourg, Vienne |
| Belgique | Bruxelles |
| Bosnie-Herzégovine | |
| Bulgarie | |
| Croatie | Dubrovnik, Split, Zagreb |
| Chypre | |
| République tchèque | Prague |
| Danemark | Copenhague |
| Estonie | |
| Finlande | Helsinki |
| France | Bordeaux, Lyon, Marseille, Nice, Paris, Provence, Strasbourg |
| Allemagne | Berlin, Cologne, Düsseldorf, Francfort, Hambourg, Munich, Stuttgart |
| Grèce | Athènes, Crète, Îles grecques, Mykonos, Santorin, Thessalonique |
| Hongrie | Budapest |
| Islande | Reykjavik |
| Irlande | Dublin |
| Italie | Côte amalfitaine, Bologne, Florence, Milan, Naples, Rome, Sardaigne, Sicile, Turin, Venise |
| Lettonie | |
| Lituanie | |
| Luxembourg | |
| Malte | |
| Monaco | |
| Monténégro | |
| Pays-Bas | Amsterdam, Rotterdam |
| Norvège | Bergen, Oslo |
| Pologne | Cracovie, Varsovie |
| Portugal | Algarve, Lisbonne, Porto |
| Roumanie | Bucarest |
| Russie | Moscou, Saint-Pétersbourg |
| Écosse | Édimbourg, Glasgow |
| Serbie | |
| Slovaquie | |
| Slovénie | |
| Espagne | Îles Baléares, Barcelone, Bilbao, Îles Canaries, Madrid, Malaga & Costa del Sol, San Sebastián, Séville, Valence |
| Suède | Göteborg, Malmö, Stockholm |
| Suisse | Genève, Zurich |
| Turquie | Antalya, Istanbul |
| Royaume-Uni | Birmingham, Liverpool, Londres, Manchester |
| Ukraine | |

**Voyages par destination : Amérique du Nord**

| Pays/Région | Ville/Zone |
|---------------|-----------|
| Bermudes | |
| Canada | Calgary, Edmonton, Halifax, Montréal, Chutes du Niagara, Ottawa, Québec, Toronto, Vancouver, Victoria, Whistler, Winnipeg |
| États-Unis : Californie | Los Angeles, Orange County, San Diego, Baie de San Francisco |
| États-Unis : Floride | Fort Lauderdale, Fort Myers, Jacksonville, Key West, Miami, Orlando, Pensacola, Baie de Tampa |
| États-Unis : Hawaï | Maui, Oahu, Big Island |
| États-Unis : Autres villes | Albuquerque, Asheville, Atlanta, Atlantic City, Austin, Baltimore, Boston, Branson, Buffalo-Niagara, Charleston SC, Charlotte, Chicago, Cincinnati, Cleveland, Columbus, Dallas-Fort Worth, Denver, Detroit, Gatlinburg, Greenville SC, Hartford, Houston, Indianapolis, Kansas City, Las Vegas, Little Rock, Louisville, Memphis, Milwaukee, Minneapolis-Saint Paul, Myrtle Beach, Nashville, La Nouvelle-Orléans, New York, Norfolk-Virginia Beach, Ocean City MD, Oklahoma City, Omaha, Philadelphie, Phoenix, Pittsburgh, Portland OR, Raleigh-Durham, Reno, Richmond VA, Salt Lake City, San Antonio, Savannah, Seattle, St. Louis, Tucson, Washington D.C. |

**Voyages par destination : Moyen-Orient & Afrique**

| Pays/Région | Ville/Zone |
|---------------|-----------|
| Doha | |
| Égypte | |
| Israël | |
| Djeddah | |
| Jordanie | |
| Kenya | |
| Koweït | |
| Liban | |
| Maroc | |
| Riyad | |
| Afrique du Sud | Le Cap, Johannesburg |
| Téhéran | |
| Émirats arabes unis | Abu Dhabi, Dubaï |

---

## Documents liés

| Document | Type | Relation |
|----------|------|-------------|
| [Audience Segment Catalog](<Audiences - Segments d'audience.md>) | Catalogue | Guide de configuration pour les segments Display, Video, Demand Gen |
| [Audience Signal Catalog](<Audiences - Signaux d'audience.md>) | Catalogue | Guide de configuration pour les signaux d'audience PMax |
| [Audience Targeting Reference](<Audiences - Signaux d'audience.md>) | Référence | Spécifications système, modes de ciblage, limites |
| [Audience Signals Reference](<Audiences - Signaux d'audience.md>) | Référence | Types de signaux PMax et configuration |
| [Audience Strategy Mental Model](<Audiences - Stratégie d'audience.md>) | Modèle mental | Cadre conceptuel signaux vs ciblage |
| [Audience Targeting Launch Checklist](<Audiences - [Review] Lancement du ciblage par audience.md>) | Checklist | Valide la configuration du ciblage |
| [Audience Targeting Health Checklist](<Audiences - [Review] Santé du ciblage par audience.md>) | Checklist | Valide la santé continue du ciblage |
| [Audience Signal Quality Checklist](<Audiences - [Review] Qualité des signaux d'audience.md>) | Checklist | Valide la configuration des signaux |
| [SOP - Configurer le ciblage par audience](<Audiences - Configurer le ciblage par audience.md>) | SOP | Configuration du ciblage pas à pas |
