# Paramètres des campagnes Shopping

> **Plateforme :** Google Ads
> **Catégorie :** Shopping
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Cette fiche documente tous les paramètres au niveau de la campagne pour les campagnes Shopping standard et PMax Feed-Only, y compris où les trouver dans Google Ads et les configurations recommandées.

Cette fiche fournit un emplacement unique pour tous les paramètres de campagne Shopping. Elle couvre à la fois Shopping standard et PMax Feed-Only (qui partagent la surface Shopping mais ont des paramètres disponibles différents).

---

## Ce que couvre cette fiche / Ce qu'elle ne couvre PAS

Cette fiche ne couvre **pas** :

- Quand choisir Shopping standard vs PMax (Voir : [Shopping Campaign Type Mental Model](<Shopping - Types de campagne Shopping.md>))
- Les décisions de structure de campagne (Voir : [Standard Shopping Campaign Structure Mental Model](<Shopping - Structure de campagne Shopping standard.md>))
- La structure PMax (Voir : [PMax Structure Mental Model (Ecommerce)](<../pmax/Pmax - Structure PMax (E-commerce).md>))
- La création de campagne pas à pas (Voir : [SOP - Lancer une campagne Shopping standard](<Shopping - Lancer une campagne Shopping standard.md>))
- La configuration du flux produits (Voir : [Merchant Center Reference](<../flux-produit/Flux Produit - Merchant Center.md>))

---

## Aide-mémoire : disponibilité des paramètres

| **Paramètre** | **Shopping standard** | **PMax Feed-Only** |
|-------------|----------------------|-------------------|
| Priorité de campagne | Oui (Haute/Moyenne/Basse) | Non |
| CPC manuel | Oui | Non |
| Stratégies d'enchères portfolio | Oui (avec plafond CPC max) | Non |
| ROAS cible | Oui | Oui |
| Maximiser les clics | Oui | Non |
| Maximiser les conversions | Non | Oui |
| Maximiser la valeur de conversion | Non | Oui |
| Mots-clés à exclure | Oui (campagne + ad group) | Oui (niveau campagne) |
| Listes de mots-clés à exclure | Oui | Oui |
| Exclusions de marque | N/A (utiliser les négatifs) | Oui (paramètre dédié) |
| Partenaires du Réseau de Recherche | Oui | Non (contrôlé par Google) |
| Listing groups | Oui | Oui (dans les Asset Groups) |
| Filtre d'inventaire | Oui | Oui |
| Annonces d'inventaire local | Oui | Oui |
| Options d'URL | Oui | Oui |
| Signaux d'audience | Non | Non (pas nécessaire pour Feed-Only) |

---

## Paramètres des campagnes Shopping standard

### Paramètres au niveau de la campagne

#### Lien Merchant Center

| **Paramètre** | **Emplacement** | **Recommandation** |
|-------------|--------------|-------------------|
| Compte Merchant Center | Paramètres de campagne > Paramètres de campagne Shopping | Sélectionnez le bon compte Merchant Center. Un seul compte par campagne. |

> ⚠️ Vous ne pouvez pas changer le compte Merchant Center après la création de la campagne. Créez une nouvelle campagne si vous devez changer.

#### Pays cible

| **Paramètre** | **Emplacement** | **Options** |
|-------------|--------------|-------------|
| Pays de vente | Paramètres de campagne > Paramètres de campagne Shopping | Sélectionnez le pays où vous voulez vendre. Doit correspondre à un pays cible de flux dans Merchant Center. |

Les produits ne s'afficheront que pour les recherches dans le pays sélectionné. Pour la vente multi-pays, créez des campagnes séparées par pays ou utilisez une seule campagne avec plusieurs pays cibles (si le flux le supporte).

#### Priorité de campagne

| **Priorité** | **Comportement en enchères** | **Quand utiliser** |
|--------------|---------------------|-----------------|
| Haute | Entre en enchère en premier | Campagnes génériques/catch-all (combinées avec des négatifs pour faire descendre les requêtes) |
| Moyenne | Entre si la Haute est exclue | Campagnes par catégorie |
| Basse | Entre si Haute et Moyenne sont exclues | Campagnes marque, requêtes à haute intention |

**Par défaut :** Basse

> ↪️ **Pour la stratégie de query sculpting avec les priorités :** voir [Standard Shopping Campaign Structure Mental Model](<Shopping - Structure de campagne Shopping standard.md>).

#### Filtre d'inventaire

| **Paramètre** | **Emplacement** | **Options** |
|-------------|--------------|-------------|
| Filtre d'inventaire | Paramètres de campagne > Paramètres supplémentaires > Filtre d'inventaire | Filtrer par : Marque, ID article, Type de produit, État, Catégorie Google Product, Canal, Custom Label |

Utilisez les filtres d'inventaire pour restreindre quels produits de Merchant Center apparaissent dans cette campagne. Utile pour :
- Exclure des marques spécifiques
- Limiter à des types de produits spécifiques
- Exécuter des campagnes séparées par custom label

> ⚠️ Les filtres d'inventaire s'appliquent à la création de la campagne. Les changements nécessitent une nouvelle campagne.

### Paramètres de réseau

| **Réseau** | **Par défaut** | **Recommandation** | **Impact** |
|-------------|-------------|-------------------|------------|
| Réseau Search | Activé | Garder activé | Vos annonces apparaissent dans l'onglet Shopping de Google Search |
| Partenaires du Réseau de Recherche | Activé | Tester les deux | Les annonces apparaissent sur les Partenaires du Réseau de Recherche de Google (volume mineur) |

**Où configurer :** Paramètres de campagne > Réseaux

### Paramètres d'enchères

#### Stratégies d'enchères disponibles

| **Stratégie d'enchères** | **Shopping standard** | **PMax Feed-Only** | **Exigence de volume** |
|------------------|----------------------|-------------------|----------------------|
| CPC manuel | Oui | Non | Aucune |
| Maximiser les clics | Oui | Non | Aucune |
| ROAS cible | Oui | Oui | 50+ conversions/mois |
| Maximiser les conversions | Non | Oui | Aucune |
| Maximiser la valeur de conversion | Non | Oui | Aucune |
| Stratégies portfolio (avec plafond CPC max) | Oui | Non | Variable |

> ⚠️ **Maximiser la valeur de conversion et Maximiser les conversions ne sont pas disponibles pour Shopping standard :** Shopping standard utilise CPC manuel, Maximiser les clics ou ROAS cible. PMax utilise Maximiser les conversions ou Maximiser la valeur de conversion (avec cibles optionnelles).

#### Configuration du CPC manuel

| **Paramètre** | **Emplacement** | **Recommandation** |
|-------------|--------------|-------------------|
| Enchères CPC max | Groupes de produits (dans les ad groups) | Définir au niveau du groupe de produits, pas au niveau de la campagne |

**Où définir les enchères des groupes de produits :** Campagnes > Ad groups > Groupes de produits > colonne CPC max

> ↪️ **Pour les seuils de volume pour passer du CPC manuel au Stratégies d'enchères intelligentes :** voir [Conversion Volume Thresholds Reference](<../suivi/Suivi - Seuils de volume de conversions.md>).

#### Configuration du ROAS cible

| **Paramètre** | **Emplacement** | **Recommandation** |
|-------------|--------------|-------------------|
| Pourcentage ROAS cible | Paramètres de campagne > Enchères | Définir basé sur la performance historique (commencer avec le ROAS réel moins 10-20 %) |
| Stratégie d'enchères portfolio | Bibliothèque partagée > Stratégies d'enchères | Utiliser quand vous partagez la cible entre campagnes |
| Limite CPC max | Stratégies portfolio uniquement | Définir un plafond pour éviter les CPC incontrôlés |

> ⚠️ **Les stratégies d'enchères portfolio avec plafond CPC max** sont exclusives au Shopping standard. PMax ne permet pas les plafonds d'enchères.

### Paramètres de mots-clés à exclure

| **Niveau** | **Où ajouter** | **Portée** |
|-----------|-----------------|----------|
| Négatifs de campagne | Campagne > Keywords > Mots-clés à exclure | Affecte tous les ad groups de la campagne |
| Négatifs de ad group | Ad group > Keywords > Mots-clés à exclure | Affecte uniquement ce ad group |
| Listes de mots-clés à exclure | Bibliothèque partagée > Listes de mots-clés à exclure | Appliquer à plusieurs campagnes |

**Types de correspondance supportés pour les négatifs Shopping :**
- Requête large (sans modificateur)
- Expression exacte
- Mot-clé exact

> ↪️ **Pour la séparation de marque via les négatifs :** voir [Brand Separation Reference](<../search/Search - Séparation de marque.md>).

### Paramètres des ad groups

| **Paramètre** | **Emplacement** | **Objectif** |
|-------------|--------------|-------------|
| Nom du ad group | Paramètres du ad group | Organiser par regroupement de produits |
| Enchère par défaut | Paramètres du ad group | Enchère de repli pour les produits non regroupés |
| Groupes de produits | Ad group > Groupes de produits | Subdivision par attribut (marque, catégorie, custom label, ID article) |

### Structure des groupes de produits

Les groupes de produits définissent quels produits reçoivent quelles enchères. Options de structure :

| **Niveau** | **Options de subdivision** |
|-----------|------------------------|
| Tous les produits | Point de départ |
| Catégorie | Google Product Category |
| Marque | Attribut marque du flux produits |
| Type de produit | Attribut type de produit du flux produits |
| Custom label | custom_label_0 à custom_label_4 |
| ID article | IDs de produits individuels |
| État | Neuf, Reconditionné, Occasion |
| Canal | En ligne, Local |
| Exclusivité de canal | Mono-canal, Multi-canal |

**Bonne pratique :** subdivisez par l'attribut qui reflète votre stratégie d'enchères (custom label pour les niveaux de performance, marque pour les enchères par marque, etc.).

---

## Paramètres des campagnes PMax Feed-Only

PMax Feed-Only utilise uniquement votre flux produits sans assets créatifs supplémentaires. Cette section couvre les paramètres spécifiques à PMax.

### Paramètres au niveau de la campagne

#### Lien Merchant Center

Identique au Shopping standard. Sélectionnez le compte Merchant Center à la création de la campagne.

#### Expansion de l'URL finale

| **Paramètre** | **Par défaut** | **Recommandation** |
|-------------|-------------|-------------------|
| Expansion de l'URL finale | ON | Désactiver pour Feed-Only |

**Où configurer :** Paramètres de campagne > Assets créés automatiquement > Expansion de l'URL finale

#### Exclusions de marque

| **Paramètre** | **Emplacement** | **Recommandation** |
|-------------|--------------|-------------------|
| Exclusions de marque | Paramètres > Autres paramètres > Exclusions de marque | Ajoutez vos noms de marque |

Les exclusions de marque empêchent votre campagne PMax de diffuser sur les recherches de marque. C'est essentiel pour :
- Séparer la performance marque vs générique
- Empêcher PMax de cannibaliser le trafic de marque peu coûteux
- Mesurer précisément l'acquisition de nouveaux clients

**Comment ajouter :**
1. Allez dans Paramètres > Autres paramètres > Exclusions de marque
2. Cliquez sur "Ajouter des listes de marques"
3. Ajoutez vos noms de marque

> ↪️ **Pour l'implémentation complète de la séparation de marque :** voir [Brand Separation Reference](<../search/Search - Séparation de marque.md>).

### Paramètres d'enchères

| **Stratégie d'enchères** | **Disponibilité** | **Quand utiliser** |
|------------------|-----------------|-----------------|
| Maximiser les conversions | Oui | Construction de volume, historique de conversion insuffisant |
| Maximiser la valeur de conversion | Oui | Valeurs de conversion disponibles, optimisation par la valeur souhaitée |
| ROAS cible | Oui (avec Maximiser la valeur de conv.) | 50+ conversions/mois, cible d'efficacité souhaitée |
| CPA cible | Oui (avec Maximiser les conversions) | Objectif CPA fixe (moins courant en e-commerce) |

> ⚠️ **Le CPC manuel et les plafonds d'enchères ne sont PAS disponibles dans PMax :** si vous avez besoin de contrôle sur les enchères, utilisez Shopping standard.

#### Bonnes pratiques pour les cibles

| **Scénario** | **Stratégie recommandée** |
|--------------|-------------------------|
| Nouvelle campagne, pas d'historique | Maximiser la valeur de conversion (sans cible) |
| 30-50 conversions/mois | Maximiser la valeur de conversion avec un ROAS cible souple |
| 50+ conversions/mois | ROAS cible basé sur la performance réelle |

### Paramètres des asset groups (Listing groups)

Dans PMax, les "Asset Groups" contiennent vos listing groups. Pour Feed-Only :

| **Paramètre** | **Recommandation** |
|-------------|-------------------|
| Nom de l'asset group | Nommer par segment de produits (ex. : "Héros", "Tous les produits") |
| Structure des listing groups | Subdiviser par custom label pour la segmentation par performance |
| Images/Titres/Descriptions | Laisser vide pour Feed-Only (pas d'assets = diffusion Shopping uniquement) |

> ⚠️ **Si vous ajoutez des assets créatifs, PMax diffusera sur Display et YouTube :** gardez les asset groups vides pour le comportement Feed-Only.

### Signaux d'audience

> ⚠️ **Les signaux d'audience sont uniquement pour PMax Full Assets :** pour PMax Feed-Only, votre flux produits EST votre ciblage. N'ajoutez pas de signaux d'audience aux campagnes Feed-Only.

| **Paramètre** | **Emplacement** | **Objectif** |
|-------------|--------------|-------------|
| Signaux d'audience | Asset group > Signaux d'audience | Guider le ciblage de Google (Full Assets uniquement) |

**Signaux recommandés pour e-commerce Full Assets :**
- Liste Customer Match (acheteurs)
- Visiteurs du site web (convertisseurs)
- Segments personnalisés (URLs concurrentes, keywords in-market)

> ↪️ **Pour l'implémentation des signaux d'audience :** voir [Audience Signals Reference](<../audiences/Audiences - Signaux d'audience.md>).

### Exclusions de données (Contrôle du remarketing)

| **Paramètre** | **Emplacement** | **Objectif** |
|-------------|--------------|-------------|
| Exclusions de vos données | Paramètres de campagne > Paramètres supplémentaires > Vos données | Exclure les audiences de remarketing de l'optimisation |

Utilisez les exclusions de données quand :
- Le ROAS semble artificiellement élevé (le remarketing gonfle les chiffres)
- Vous voulez mesurer la vraie acquisition de nouveaux clients
- Vous testez l'incrémentalité

---

## Paramètres partagés (les deux types de campagnes)

### Ciblage géographique

| **Paramètre** | **Options** | **Recommandation** |
|-------------|-------------|-------------------|
| Zones géographiques | Pays, régions, villes, rayon | Ciblez là où vous pouvez expédier et voulez vendre |
| Options de localisation | Présence, Intérêt, ou Les deux | Utilisez "Présence" pour la plupart des campagnes Shopping |

**Présence vs Intérêt :**
- **Présence :** l'utilisateur est physiquement dans la zone
- **Intérêt :** l'utilisateur a montré de l'intérêt pour la zone
- **Les deux :** l'une ou l'autre condition

> 💡 Pour l'e-commerce avec livraison géographiquement limitée, utilisez "Présence" pour éviter de diffuser auprès d'utilisateurs que vous ne pouvez pas livrer.

### Paramètres de planning

| **Paramètre** | **Options** | **Recommandation** |
|-------------|-------------|-------------------|
| Planning des annonces | Jours et heures | Diffuser 24/7 initialement. Ajoutez des plannings uniquement après que les données montrent des patterns clairs. |
| Dates de début/fin | Sélecteur de date | Définissez une date de début pour un lancement futur. Évitez les dates de fin sauf pour les promotions à durée limitée. |

### Paramètres de budget

| **Paramètre** | **Options** | **Recommandation** |
|-------------|-------------|-------------------|
| Budget journalier | Montant par jour | Définir en fonction de votre ROAS cible et de vos objectifs de revenus. Budget = Revenu cible / ROAS cible. |

> ⚠️ **Les budgets partagés** sont disponibles pour Shopping standard (via la Bibliothèque partagée) mais pas pour PMax.

### Options d'URL

| **Paramètre** | **Objectif** | **Recommandation** |
|-------------|-------------|-------------------|
| Modèle de suivi | Ajouter des paramètres URL pour le tracking | Utilisez si votre analytics nécessite des paramètres au niveau de la campagne |
| Suffixe d'URL finale | Ajouter des paramètres à toutes les landing pages | Courant pour le tracking cross-platform |
| Paramètres personnalisés | Définir des {_variables} pour le tracking dynamique | Usage avancé uniquement |

---

## Tableau comparatif des paramètres

| **Catégorie de paramètre** | **Shopping standard** | **PMax Feed-Only** |
|---------------------|----------------------|-------------------|
| **Priorité de campagne** | Haute/Moyenne/Basse | Non disponible |
| **CPC manuel** | Oui | Non |
| **Maximiser les clics** | Oui | Non |
| **ROAS cible** | Oui | Oui |
| **Maximiser les conversions** | Non | Oui |
| **Maximiser la valeur de conversion** | Non | Oui |
| **Stratégies portfolio** | Oui (avec plafond CPC max) | Non |
| **Mots-clés à exclure** | Campagne + Ad group | Campagne uniquement |
| **Listes de mots-clés à exclure** | Oui | Oui |
| **Exclusions de marque** | Via les négatifs | Paramètre dédié |
| **Partenaires du Réseau de Recherche** | Configurable | Automatique |
| **Expansion de l'URL finale** | Non | Oui (désactiver) |
| **Signaux d'audience** | Non | Oui (pas nécessaire pour Feed-Only) |
| **Exclusions de données** | Non | Oui |
| **Budgets partagés** | Oui | Non |
| **Filtre d'inventaire** | Oui | Oui |

---

## Paramètres par objectif

### Contrôle maximum

| **Objectif** | **Type de campagne** | **Paramètres clés** |
|--------------|------------------|-----------------|
| Contrôler les montants d'enchères | Shopping standard | CPC manuel, enchères par groupe de produits |
| Contrôler le routage des requêtes | Shopping standard | Priorité de campagne + négatifs |
| Contrôler les placements | Shopping standard | Opt-out Partenaires du Réseau de Recherche |
| Plafonds CPC max | Shopping standard | Stratégies d'enchères portfolio avec limite CPC max |

### Efficacité automatisée

| **Objectif** | **Type de campagne** | **Paramètres clés** |
|--------------|------------------|-----------------|
| Enchères automatisées (standard) | Shopping standard | ROAS cible |
| Enchères automatisées (PMax) | PMax Feed-Only | Maximiser la valeur de conversion + ROAS cible |
| Gestion réduite | PMax Feed-Only | Asset groups vides, segmentation par listing groups |
| Scaling du volume | PMax Feed-Only | Maximiser la valeur de conversion (sans cible) |
| Chemin de migration | PMax Feed-Only | Peut migrer depuis Shopping standard quand le volume le supporte |

> 💡 **Shopping standard avec CPC manuel ou Maximiser les clics nécessite plus de gestion :** avec le ROAS cible, Shopping standard peut aussi être automatisé. Seul le CPC manuel nécessite une gestion manuelle des enchères.

### Protection de marque

| **Objectif** | **Type de campagne** | **Paramètres clés** |
|--------------|------------------|-----------------|
| Exclure les requêtes de marque (Shopping) | Shopping standard | Termes de marque en mots-clés à exclure |
| Exclure les requêtes de marque (PMax) | PMax Feed-Only | Exclusions de marque dans les paramètres de campagne |
| Éviter les conflits entre campagnes | Les deux | Filtre d'inventaire ou exclusions par custom label |

---

## Documents liés

| **Document** | **Relation** |
|--------------|------------------|
| [Shopping Campaign Type Mental Model](<Shopping - Types de campagne Shopping.md>) | Décision (quel type de campagne utiliser) |
| [Standard Shopping Campaign Structure Mental Model](<Shopping - Structure de campagne Shopping standard.md>) | Structure (priorité et query sculpting) |
| [PMax Structure Mental Model (Ecommerce)](<../pmax/Pmax - Structure PMax (E-commerce).md>) | Structure (configuration PMax) |
| [Brand Separation Reference](<../search/Search - Séparation de marque.md>) | Implémentation (méthodes d'exclusion de marque) |
| [Conversion Volume Thresholds Reference](<../suivi/Suivi - Seuils de volume de conversions.md>) | Référence (exigences de volume par stratégie d'enchères) |
| [Audience Signals Reference](<../audiences/Audiences - Signaux d'audience.md>) | Référence (types de signaux d'audience) |
| [Merchant Center Reference](<../flux-produit/Flux Produit - Merchant Center.md>) | Prérequis (configuration du flux produits) |
| [SOP - Lancer une campagne Shopping standard](<Shopping - Lancer une campagne Shopping standard.md>) | Exécution (mise en place Shopping standard) |
| [SOP - Lancer une campagne PMax feed-only](<../pmax/Pmax - Lancer une campagne PMax Feed-Only.md>) | Exécution (mise en place PMax Feed-Only) |
