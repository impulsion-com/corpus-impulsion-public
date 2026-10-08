# Structure de campagne Search

> **Plateforme :** Google Ads
> **Catégorie :** Search
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Ce document vous aide à décider comment organiser les campagnes Search pour équilibrer contrôle, allocation budgétaire et apprentissage algorithmique.

> ❓ **La question centrale :** Faut-il séparer ça en campagnes distinctes, ou garder tout consolidé ?

Les campagnes sont le **plus haut niveau de contrôle** dans Google Ads. Elles déterminent :

- **Le budget :** Combien vous dépensez par jour/mois sur un ensemble de ciblage donné
- **La stratégie d'enchères :** Pour quoi vous optimisez et à quel objectif
- **La portée du ciblage :** Localisation, langue, réseaux, planning
- **Les objectifs de conversion :** Quelles actions vous optimisez

---

## Ce que ce modèle NE couvre PAS

Ce document NE couvre PAS :

- La structure des ad groups ou le groupement de keywords au sein des campagnes (Voir : [Search Ad Group Structure Mental Model](<Search - Structure des ad groups Search.md>))
- Les instructions étape par étape de configuration de campagne (Voir : [SOP - Construire la structure de campagne Search](<Search - Construire la structure de campagne Search.md>))
- La structure des campagnes Shopping ou PMax (Voir : [Shopping Campaign Type Mental Model](<../shopping/Shopping - Types de campagne Shopping.md>), [PMax Structure Mental Model (Ecommerce)](<../pmax/Pmax - Structure PMax (E-commerce).md>), [PMax Structure Mental Model (Lead Gen/SaaS)](<../pmax/Pmax - Structure PMax (Lead Gen-SaaS).md>))
- Les détails d'implémentation de la séparation de marque (Voir : [Brand Separation Reference](<Search - Séparation de marque.md>))

---

## Le compromis fondamental

> 💡 **Plus de campagnes = plus de contrôle, mais des données fragmentées. Moins de campagnes = plus de données pour Stratégies d'enchères intelligentes, mais moins de contrôle granulaire.**

| **Approche** | **Avantage** | **Risque** |
| --- | --- | --- |
| **Consolidation** | Plus de données par campagne, apprentissage plus rapide, gestion plus simple | Moins de contrôle granulaire sur les budgets/objectifs |
| **Segmentation** | Contrôle précis sur les budgets, objectifs et goals | Fragmentation des données, apprentissage plus lent, charge de gestion plus élevée |

**Pourquoi Search favorise la consolidation :**

- Stratégies d'enchères intelligentes enchérit au **niveau de la requête**, pas au niveau de la campagne
- Plus de requêtes dans une campagne = plus de signaux pour l'algorithme
- Les campagnes fragmentées doivent chacune atteindre les seuils de volume indépendamment
- Vous contrôlez le ciblage via les keywords : la structure concerne le contrôle du budget/enchères, pas la pertinence des annonces (c'est le rôle de l'ad group)

---

## La règle d'or

> 💡 **Consolider par défaut :** Ne segmenter que quand la segmentation permet un budget, une stratégie d'enchères, un ciblage ou un contrôle business différent.

**Le test :** Si vous ne pouvez pas décrire la différence de budget/objectif/contrôle en une phrase, ne séparez pas.

---

## Campagne vs. Ad Group : ce qui vit où

Avant de prendre des décisions de structure, comprenez ce qui appartient à chaque niveau :

| **Décision** | **Niveau campagne** | **Niveau ad group** |
| --- | --- | --- |
| **Budget** | ✅ Dépense quotidienne/mensuelle | ❌ Pas de budget par ad group |
| **Stratégie d'enchères** | ✅ CPA cible, ROAS cible, Max Clicks, etc. | ❌ Hérité de la campagne |
| **Objectifs** | ✅ Objectifs CPA/ROAS | ❌ Hérité de la campagne |
| **Localisation** | ✅ Pays, région, rayon | ❌ Hérité de la campagne |
| **Planning de diffusion** | ✅ Jours/heures | ❌ Hérité de la campagne |
| **Réseaux** | ✅ Search, Partenaires du Réseau de Recherche | ❌ Hérité de la campagne |
| **Objectifs de conversion** | ✅ Quelles actions optimiser | ❌ Hérité de la campagne |
| **Texte d'annonce/créatif** | ❌ Vit dans les ad groups | ✅ RSAs par ad group |
| **Keywords** | ❌ Vit dans les ad groups | ✅ Keywords, types de correspondance |
| **Landing pages** | ❌ Vit dans les ad groups | ✅ URLs finales au niveau annonce/keyword |

> 💡 **Règle de base :** Si vous avez besoin de budgets, stratégies d'enchères, objectifs, localisations ou objectifs de conversion différents → séparation de campagne. Si vous avez besoin d'annonces ou de landing pages différentes → séparation d'ad group (ou URL finale au niveau keyword).

---

## Modes d'échec

Chaque problème de structure de campagne Search tombe dans l'une de deux catégories :

| **Mode d'échec** | **À quoi ça ressemble** | **Symptômes** |
| --- | --- | --- |
| **Sur-segmentation** | Trop de campagnes, données insuffisantes par campagne | Campagnes bloquées en "Apprentissage". Performance inconsistante. Charge de gestion élevée. Objectifs rarement atteints. Campagnes multiples pour des variations mineures de keywords. |
| **Sous-segmentation** | Trop peu de campagnes, impossible de contrôler budget/objectifs pour différents besoins business | Budget consommé par les mauvais services/intentions. Impossible de définir des objectifs différents pour des marges différentes. Marque et hors-marque mélangés. Pas de protection budgétaire pour les domaines clés. |

**Votre mission :** Trouver le juste milieu : assez de segmentation pour le contrôle business, assez de consolidation pour l'apprentissage algorithmique.

---

## Raisons de segmenter

Segmenter les campagnes quand vous avez besoin de :

| **Raison** | **Exemple** | **Pourquoi ça nécessite une séparation de campagne** |
| --- | --- | --- |
| **Budgets différents** | Marque vs. hors-marque, Service A vs. Service B | Le budget est défini au niveau campagne |
| **Stratégies d'enchères différentes** | CPA cible pour les leads, tSIS pour la marque | La stratégie d'enchères est définie au niveau campagne |
| **Objectifs d'efficacité différents** | CPA 30 € pour la haute marge, CPA 50 € pour la faible marge | Les objectifs sont définis au niveau campagne |
| **Objectifs de conversion différents** | Formulaire de lead vs. appel téléphonique | Les objectifs de conversion peuvent être définis par campagne |
| **Zones géographiques différentes** | Pays différents, régions avec performance différente | Ciblage géographique, langue, planning |
| **Réseaux différents** | Search uniquement vs. Search + Partners | Paramètres de réseau au niveau campagne |
| **Réglementaire/conformité** | Pharma, finance, alcool avec ciblage restreint | Peut nécessiter des paramètres de campagne séparés |
| **Nouveau vs. établi** | Lancement nouveau service vs. performeurs prouvés | Objectifs différents, protection budgétaire |
| **Keywords hero** | Top 1-3 keywords représentant >10 % des dépenses | Budget dédié et contrôle des enchères |

---

## Raisons de consolider

Consolider les campagnes quand :

| **Raison** | **Exemple** | **Pourquoi la consolidation aide** |
| --- | --- | --- |
| **Données de conversion insuffisantes** | Campagne avec <30 conversions/mois | Stratégies d'enchères intelligentes a besoin de données pour apprendre |
| **Même traitement business** | Services avec mêmes objectifs, budgets, goals | Fragmentation sans raison |
| **Nouveaux marchés/services** | Tester la traction dans un nouveau domaine | Commencer consolidé, segmenter quand les données le justifient |
| **Campagnes à court terme** | Promotions saisonnières | Pas assez de temps pour que la segmentation apprenne |
| **Contraintes de ressources** | Temps limité pour la gestion | Structures plus simples = meilleure optimisation |
| **Sur-segmentation legacy** | 50+ campagnes pour des variations mineures | Consolider agressivement |
| **Campagne par thème de keyword** | Campagnes séparées pour "CRM" vs "CRM software" | C'est le rôle de l'ad group, pas de la campagne |

---

## Seuils de volume

Stratégies d'enchères intelligentes a besoin d'un volume de conversions suffisant pour optimiser efficacement. Chaque campagne a besoin d'au moins 30 conversions/mois pour CPA cible, 50+ pour ROAS cible. En dessous de ces seuils, consolidez les campagnes ou utilisez des stratégies d'enchères de portefeuille.

> ↪️ **Pour les seuils complets par stratégie d'enchères, les vérifications de viabilité budgétaire et les tactiques quand le volume est insuffisant :** Voir [Conversion Volume Thresholds Reference](<../suivi/Suivi - Seuils de volume de conversions.md>).

---

## Le document de décision de segmentation

```
                 ┌─────────────────────────────────────┐
                 │  Avez-vous besoin de DIFFÉRENT...    │
                 │  • Budget ?                          │
                 │  • Stratégie d'enchères ?             │
                 │  • Objectifs (CPA/ROAS) ?             │
                 │  • Objectifs de conversion ?           │
                 │  • Localisation/langue ?               │
                 │  • Paramètres réseau ?                 │
                 └──────────────┬──────────────────────┘
                                │
                 ┌──────────────┴──────────────┐
                 │                             │
                OUI                            NON
                 │                             │
                 ▼                             ▼
    ┌────────────────────────┐    ┌────────────────────────┐
    │ Les campagnes séparées │    │ Pouvez-vous résoudre   │
    │ auront assez de volume?│    │ au niveau ad group ?   │
    │ (≥30 conv/mois chacune)│    │ (Annonces, LPs diff.)  │
    └───────────┬────────────┘    └───────────┬────────────┘
                │                             │
     ┌──────────┴──────────┐       ┌──────────┴──────────┐
     │                     │       │                     │
    OUI                    NON    OUI                    NON
     │                     │       │                     │
     ▼                     ▼       ▼                     ▼
┌─────────┐        ┌─────────────┐ ┌─────────┐    ┌─────────────┐
│  SÉPARER│        │ Envisager : │ │ SÉPARER │    │ Réévaluer   │
│         │        │ • Strat.    │ │ AD GROUP│    │ le besoin   │
└─────────┘        │   portefeuil│ └─────────┘    └─────────────┘
                   │ • Consolider│
                   │   & labels  │
                   └─────────────┘
```

---

## Coordination Search + PMax

Quand vous lancez à la fois Search et Performance Max dans le même compte, la structure de votre campagne Search affecte directement le routage des requêtes. Les keywords mot-clé exact dans Search sont prioritaires sur PMax. Les phrase/requête large peuvent perdre face à PMax en fonction du Classement de l'annonce.

> ↪️ **Pour la hiérarchie complète de sélection des keywords, les tactiques de protection des requêtes et la coordination des exclusions de marque :** Voir [Search PMax Query Routing Reference](<../pmax/Pmax - Routage des requêtes Search PMax.md>).

**Implications structurelles clés :**

- Protéger les requêtes à haute valeur en les ajoutant en mot-clé exact dans Search
- Créer une campagne Search de marque dédiée + exclusions de marque dans PMax (Voir : [Brand Separation Reference](<Search - Séparation de marque.md>))
- Ne pas sur-keyworter les campagnes Search : laisser PMax découvrir les requêtes incrémentales

> 💡 **PMax et Search sont complémentaires :** Search vous donne un contrôle au niveau keyword pour les requêtes que vous connaissez. PMax trouve les requêtes que vous ne connaissez pas. Structurez Search pour couvrir vos termes connus à haute valeur, et laissez PMax s'étendre au-delà.

**AI Max comme option supplémentaire :** AI Max pour les campagnes Search ajoute un matching sans keyword de type DSA et une personnalisation de texte par IA au sein des campagnes Search standard. Si vous lancez du PMax feed-only (sans assets créatifs), AI Max peut fournir la couverture Search dont vous avez besoin sans construire des campagnes DSA séparées. Cependant, AI Max manque des contrôles de page feed des DSA et peut s'étendre au-delà de votre focus prévu. Voir [AI Max for Search Mental Model](<Search - Activer AI Max.md>) pour savoir quand AI Max correspond à votre structure.

---

## Le pattern des keywords Hero

Si vous avez 1-2 keywords représentant **>30 % des dépenses totales Search et/ou des conversions**, envisagez une campagne "Hero" dédiée.

### Critères de qualification

| **Critère** | **Exigence** |
| --- | --- |
| Part des dépenses | >30 % des dépenses totales Search |
| OU part des conversions | >30 % des conversions totales Search |
| Types de correspondance | Exact + Phrase (par défaut). Ajouter Broad uniquement avec un routage et des négatifs prouvés. |
| SAUF | Termes de marque (ceux-ci appartiennent à la campagne de marque) |

### Pourquoi les "campagnes Hero" fonctionnent

| **Avantage** | **Explication** |
| --- | --- |
| **Contrôle** | Les dépenses élevées exigent un budget et un contrôle d'enchères dédiés |
| **Précision** | Annonces et extensions sur mesure pour votre keyword le plus précieux |
| **Visibilité** | Crée un "pouls" pour la santé du compte |
| **Auction insights** | Intelligence concurrentielle plus claire |

**Exemples :** `[assurance auto]`, `[chaussures de course]`, `[logiciel crm]`, `[plombier urgence]`

> ⚠️ **Ce n'est PAS du SKAG :** Les campagnes Hero sont pour vos 1-3 keywords à plus fort impact uniquement. Ne créez pas de campagnes mono-keyword pour chaque keyword.
> ⚠️ **Attention au type de correspondance :** Le broad/expression exacte dans une campagne Hero peut polluer le signal. Commencez par l'exact.

---

## Exemples de structures par secteur

Chaque exemple montre les mêmes principes appliqués : marque séparée, campagnes divisées par besoins de contrôle business, consolidées là où c'est possible.

### Lead Generation (B2B SaaS)

| **Campagne** | **Raison de la séparation** |
| --- | --- |
| Marque (Target Impression Share) | Protéger les requêtes de marque, stratégie d'enchères différente |
| Hero : top keyword (CPA cible 45 €) | >30 % des conversions mérite un budget dédié |
| Hors-marque : Haute intention (CPA cible 50 €) | Keywords transactionnels avec taux de conversion prouvés |
| Hors-marque : Recherche (CPA cible 80 €) + ad group DSA | Tolérance CPA plus élevée pour les keywords de début de tunnel avec DSA pour la découverte long-tail |

### Services locaux (multi-sites)

| **Campagne** | **Raison de la séparation** |
| --- | --- |
| Marque (Target Impression Share) | Protéger les requêtes de marque |
| Services d'urgence (CPA cible 75 €, 24/7) | Objectif de conversion par appel, planning différent |
| Services planifiés (CPA cible 50 €, heures ouvrées) | Objectif de conversion par formulaire, heures standard |
| Spécifique à la localisation (seulement si nécessaire) | Isolation budgétaire par ville (sinon utiliser le ciblage géographique) |

### E-commerce (partie Search)

| **Campagne** | **Raison de la séparation** |
| --- | --- |
| Marque (Target Impression Share) | Protéger les requêtes de marque |
| Hero : top keyword (ROAS cible 350 %) | >30 % des dépenses justifie un contrôle dédié |
| Catégorie : Running (ROAS cible 350 %) + ad group DSA | Objectif ROAS spécifique à la catégorie avec DSA pour la découverte long-tail |
| Catégorie : Training (ROAS cible 400 %) + ad group DSA | Marge plus élevée = objectif ROAS plus élevé avec DSA pour la découverte long-tail |

> ↪️ Pour l'e-commerce, Search est généralement complété par Shopping/PMax. Voir [Shopping Campaign Type Mental Model](<../shopping/Shopping - Types de campagne Shopping.md>) pour les décisions Shopping vs. PMax, et [PMax Structure Mental Model (Ecommerce)](<../pmax/Pmax - Structure PMax (E-commerce).md>) pour la structure PMax.

---

## Erreurs courantes

| **Erreur** | **Pourquoi c'est un problème** | **Que faire à la place** |
| --- | --- | --- |
| Segmenter pour le reporting | Crée de la fragmentation sans bénéfice de contrôle | Utiliser des labels, colonnes personnalisées, segments |
| Campagne par thème de keyword | C'est le rôle de l'ad group, pas de la campagne | Utiliser les ad groups pour les thèmes |
| Campagne par RSA/thème d'annonce | C'est le rôle de l'ad group, pas de la campagne | Utiliser les ad groups pour les angles de message |
| Campagne par appareil | Fragmente les données ; Stratégies d'enchères intelligentes gère les appareils | Utiliser les ajustements d'enchères par appareil |
| Campagne par audience | Fragmente les données inutilement | Utiliser le mode observation + ajustements d'enchères |
| Campagne par variation géo mineure | Fragmente sans contrôle significatif | Utiliser le ciblage géographique ; séparer uniquement pour l'isolation budgétaire |
| Sur-segmenter les nouveaux comptes | Pas assez de données pour alimenter plusieurs campagnes | Commencer consolidé, segmenter quand les données le supportent |
| Sous-segmenter la marque | La marque gonfle les métriques hors-marque | Séparer la marque au niveau campagne |
| Mélanger les objectifs de conversion | Confond l'optimisation de Stratégies d'enchères intelligentes | Un objectif principal par campagne |
| Trop de campagnes en ROAS cible | Chacune a besoin de 50+ conversions/mois | Consolider ou utiliser une stratégie d'enchères de portefeuille |
| Pas de catch-all/fallback | Manque les opportunités long-tail | Ajouter des ad groups DSA au sein des campagnes keyword (Voir : [Dynamic Search Ads Mental Model](<Search - Dynamic Search Ads.md>)) |
| Laisser PMax voler la marque | Gonfle les métriques PMax, perte de contrôle de la marque | Campagne Search de marque + exclusions de marque dans PMax |

---

## Principes clés

1. **Consolider par défaut :** Ne segmenter que quand vous avez besoin d'un budget, d'une stratégie d'enchères, d'objectifs ou d'objectifs de conversion différents.
2. **La structure de campagne concerne le contrôle, pas la pertinence :** La pertinence des annonces est le rôle de l'ad group.
3. **Le volume active l'apprentissage :** Chaque campagne a besoin de ≥30 conversions/mois pour CPA cible, ≥50 pour ROAS cible. Voir [Conversion Volume Thresholds Reference](<../suivi/Suivi - Seuils de volume de conversions.md>).
4. **La marque se sépare toujours :** Métriques différentes, objectifs différents, usage différent. Voir [Brand Separation Reference](<Search - Séparation de marque.md>).
5. **Les keywords Hero méritent l'isolation.** >30 % des dépenses/conversions = campagne dédiée.
6. **Search + PMax sont complémentaires :** Search contrôle les requêtes connues à haute valeur (mot-clé exact). PMax découvre les requêtes incrémentales. Voir [Search PMax Query Routing Reference](<../pmax/Pmax - Routage des requêtes Search PMax.md>).
7. **DSA attrape ce que les keywords manquent :** Ajouter des ad groups DSA au sein des campagnes keyword pour la découverte long-tail. Ne créer une campagne DSA séparée que quand l'isolation budgétaire ou des objectifs d'efficacité différents sont nécessaires. (Voir : [Dynamic Search Ads Mental Model](<Search - Dynamic Search Ads.md>))

---

## Documents liés

| **Document** | **Relation** |
| --- | --- |
| [Modern Search Campaign Mental Model](<Search - Campagne Search moderne.md>) | En amont (philosophie Search globale : consolidation, interaction enchères-type de correspondance, thèmes créatifs) |
| [Search Ad Group Structure Mental Model](<Search - Structure des ad groups Search.md>) | En aval (décisions d'ad group au sein des campagnes) |
| [Dynamic Search Ads Mental Model](<Search - Dynamic Search Ads.md>) | En aval (placement des DSA au sein de la structure de campagne) |
| [PMax Structure Mental Model (Ecommerce)](<../pmax/Pmax - Structure PMax (E-commerce).md>) | Parallèle (coordination avec la structure Search, e-commerce) |
| [PMax Structure Mental Model (Lead Gen/SaaS)](<../pmax/Pmax - Structure PMax (Lead Gen-SaaS).md>) | Parallèle (coordination avec la structure Search, Lead Gen/SaaS) |
| [Conversion Volume Thresholds Reference](<../suivi/Suivi - Seuils de volume de conversions.md>) | Référence (seuils de volume par stratégie d'enchères) |
| [Search PMax Query Routing Reference](<../pmax/Pmax - Routage des requêtes Search PMax.md>) | Référence (routage des requêtes entre Search et PMax) |
| [Brand Separation Reference](<Search - Séparation de marque.md>) | Référence (implémentation de la séparation de marque) |
| [SOP - Ameliorer la pertinence des annonces](<Search - Améliorer la pertinence des annonces.md>) | Utilise le contexte de hiérarchie campagne/ad group |
| [Bid Strategy Selection Reference](<../encheres/Enchères - Sélection de stratégie d'enchères.md>) | Référence (sélection et exigences des stratégies d'enchères) |
| [Match Type Reference](<Search - Types de correspondance.md>) | Référence (comportement des types de correspondance et hiérarchie de sélection des keywords) |
| [AI Max for Search Mental Model](<Search - Activer AI Max.md>) | Lié (option d'automatisation par IA au sein des campagnes Search) |
| SOP: Build Search Campaign Structure | Exécution (construction de structure de campagne étape par étape) |
