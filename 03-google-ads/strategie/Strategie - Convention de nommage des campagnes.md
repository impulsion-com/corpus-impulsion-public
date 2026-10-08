# Convention de nommage des campagnes

> **Plateforme :** Google Ads
> **Catégorie :** Strategie
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Cette fiche définit une convention de nommage structurée pour les campagnes Google Ads. Un système de nommage cohérent assure l'organisation, la clarté et une collaboration efficace entre les équipes et les outils.

---

## Ce que couvre cette fiche / Ce qu'elle ne couvre PAS

**Cette fiche :**

- Définit la structure de la convention de nommage (variables, ordre, formatage)
- Fournit les valeurs de type et sous-type de campagne
- Liste les bonnes pratiques pour la cohérence des noms

**Cette fiche ne couvre PAS :**

- La logique de structure ou segmentation des campagnes (Voir : [Search Campaign Structure Mental Model](<../search/Search - Structure de campagne Search.md>))
- Les instructions de création de campagne pas à pas (Voir : [SOP - Construire la structure de campagne Search](<../search/Search - Construire la structure de campagne Search.md>))
- Les conventions de nommage des groupes d'annonces (Voir : [Search Ad Group Structure Mental Model](<../search/Search - Structure des ad groups Search.md>) pour le nommage des groupes d'annonces)

---

## Aide-mémoire

**Format de la convention :**

```
[Pays]_[Langue]_[TypeCampagne]_[Theme]_[Modificateur]
```

**Exemples :**

```
NL_NL_Search_CRM_Brand
BE_FR_Search_TV_8K
USA_EN_Pmax_AllProducts
DE_DE_YouTube_Remarketing
```

---

## Structure de la convention de nommage

Construisez votre nom de campagne de gauche à droite en utilisant ces cinq variables dans l'ordre.

### 1. Ciblage géographique

Utilisez les codes pays ISO 3166 Alpha-2.

| Portée | Valeur |
|-------|-------|
| Pays unique | `NL`, `USA`, `DE`, `BE`, `FR` |
| Plusieurs pays | `EU`, `Global`, `EMEA` |
| Spécifique à une région/ville | `NL_Amsterdam`, `USA_CA` |

### 2. Ciblage linguistique

Utilisez les codes langue ISO 639-1.

| Langue | Valeur |
|----------|-------|
| Néerlandais | `NL` |
| Anglais | `EN` |
| Français | `FR` |
| Allemand | `DE` |
| Toutes les langues | `ALL` |

### 3. Type de campagne

| Type de campagne | Valeur |
|---------------|-------|
| Search | `Search` |
| Performance Max | `Pmax` |
| Display | `Display` |
| Shopping | `Shopping` |
| Video/YouTube | `YouTube` |
| App | `App` |
| Demand Gen | `DemandGen` |

### 4. Thème de la campagne ou audience cible

Pour les campagnes bas du tunnel (Search, Shopping, PMax) : utilisez le thème de mot-clé ou la catégorie produit.

| Exemple | Nom de campagne |
|---------|---------------|
| Mots-clés télévision | `NL_NL_Search_TV` |
| Sous-ensemble télévisions 8K | `NL_NL_Search_TV_8K` |
| Service d'automatisation marketing | `NL_EN_Pmax_MarketingAutomation` |
| Tous les produits | `NL_NL_Shopping_AllProducts` |

Pour les campagnes haut du tunnel (Display, YouTube, Demand Gen) : utilisez l'audience cible ou le type d'emplacement. Si vous ciblez une large gamme d'audiences, spécifiez au niveau du groupe d'annonces.

### 5. Modificateurs additionnels

Utilisez des modificateurs pour les sous-types de campagne ou la segmentation spéciale.

| Modificateur | Quand l'utiliser |
|----------|-------------|
| `Brand` | Campagnes de marque |
| `NB` | Campagnes hors marque |
| `DSA` | Campagnes Dynamic Search Ads |
| `Competitors` | Campagnes ciblant les concurrents |
| `Remarketing` | Campagnes de remarketing |
| `Prospecting` | Campagnes de prospection/acquisition |
| `Heroes` | Campagnes produits phares |

---

## Référence des sous-types de campagne

| Type de campagne | Valeur du sous-type | Exemple |
|---------------|---------------|---------|
| Search - Brand | `Search_Brand` | `NL_NL_Search_Brand` |
| Search - Non-brand | `Search_NB` | `NL_NL_Search_NB_CRM` |
| Search - DSA | `Search_DSA` | `NL_NL_Search_DSA` |
| Search - Concurrents | `Search_Competitors` | `NL_NL_Search_Competitors` |
| Performance Max - Full | `Pmax_Full` | `NL_NL_Pmax_Full` |
| Performance Max - Feed-Only | `Pmax_PLA` | `NL_NL_Pmax_PLA` |
| YouTube - Vues | `YouTube_Views` | `NL_NL_YouTube_Views` |
| YouTube - Conversions | `YouTube_Conversions` | `NL_NL_YouTube_Conversions` |
| YouTube - Remarketing | `YouTube_Remarketing` | `NL_NL_YouTube_Remarketing` |
| Display - Prospection | `Display_Prospecting` | `NL_NL_Display_Prospecting` |
| Display - Remarketing | `Display_Remarketing` | `NL_NL_Display_Remarketing` |
| App - Installations | `App_Installs_Android` | `NL_NL_App_Installs_Android` |

> Pour les campagnes Display, Video et Demand Gen : ajoutez `_Prospecting` ou `_Remarketing` pour différencier les deux.

---

## Règles de formatage

| Règle | À faire | À ne pas faire |
|------|-----|--------|
| Délimiteur | Utiliser des traits de soulignement (`_`) systématiquement | Mélanger les délimiteurs ou utiliser des espaces |
| Capitalisation | Majuscule pour chaque section pour la lisibilité : `Search`, `NL`, `Brand` | Utiliser tout en minuscules ou une capitalisation incohérente |
| Longueur | Garder en dessous de 75 caractères | Créer des noms tronqués dans les outils tiers |
| Caractères spéciaux | Lettres, chiffres, traits de soulignement uniquement | Utiliser `&`, `%`, `$`, `#` ou d'autres caractères spéciaux |
| Objectifs/cibles/budgets | Utiliser les libellés de campagne pour cela | Mettre les cibles ou budgets dans le nom de la campagne |

---

## Erreurs courantes

| Erreur | Pourquoi c'est un problème | Solution |
|---------|--------------------|----|
| Pas de convention de nommage du tout | Les noms de campagne sont incohérents, difficiles à filtrer, onboarding lent | Adopter cette convention pour toutes les nouvelles campagnes |
| Inclure les budgets ou cibles dans les noms | Les noms deviennent obsolètes quand les cibles changent, ajoute de l'encombrement | Utiliser les libellés pour le suivi budget/cible |
| Utiliser des espaces dans les noms | Cause des problèmes dans les exports et intégrations tierces | Utiliser des traits de soulignement |
| Abréviations incohérentes | `Srch` dans une campagne, `Search` dans une autre crée de la confusion | Choisir une valeur et l'utiliser partout |
| Géo ou langue manquante | Impossible de filtrer les campagnes par marché dans le reporting | Toujours inclure les codes pays et langue |
| Noms trop longs | Tronqués dans les colonnes de l'interface Google Ads et les tableaux de bord tiers | Garder en dessous de 75 caractères |

---

## Documents liés

| Document | Relation |
|----------|-------------|
| [Search Campaign Structure Mental Model](<../search/Search - Structure de campagne Search.md>) | Quand et pourquoi segmenter les campagnes (le nommage suit la structure) |
| [Search Ad Group Structure Mental Model](<../search/Search - Structure des ad groups Search.md>) | Conventions de nommage des groupes d'annonces |
| [SOP - Construire la structure de campagne Search](<../search/Search - Construire la structure de campagne Search.md>) | Processus de construction de campagne (applique cette convention de nommage) |
| [Search Campaign Launch Checklist](<../search/Search - [Review] Lancement de campagne Search.md>) | Validation pré-lancement (vérifie le nommage) |
