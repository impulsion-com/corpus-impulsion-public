# Construire la structure de campagne Search

> **Plateforme :** Google Ads
> **Catégorie :** Search
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Phase 1️⃣ : Mapper les clusters vers les campagnes

### 1.1 Réviser vos clusters de keywords

Ouvrez vos clusters de keywords finalisés depuis la SOP de clustering en amont. Pour chaque cluster, confirmez :

1. Le cluster a un label d'intention clair (marque, concurrent, générique haute intention, générique basse intention, etc.)
2. Le cluster a une landing page assignée
3. Le cluster a suffisamment de keywords pour justifier son existence (minimum 5 keywords)

### 1.2 Appliquer le réglage par défaut : consolider

Partez du principe que tous les clusters non-marque appartiennent à une seule campagne. C'est le réglage par défaut car :

- Stratégies d'enchères intelligentes enchérit au niveau de la requête, pas au niveau de la campagne
- Plus de données par campagne signifie un apprentissage plus rapide et une meilleure optimisation
- Moins de campagnes signifie moins de charge de gestion

### 1.3 Vérifier les 8 raisons valides de segmentation

Ouvrez le [Search Campaign Structure Mental Model](<Search - Structure de campagne Search.md>) et passez chaque cluster en revue par rapport aux 8 raisons valides de séparation de campagne.

Pour chaque cluster, demandez-vous : ce cluster nécessite-t-il un...

| Raison de segmentation | Si OUI : campagne séparée | Si NON : garder consolidé |
|---------------------|--------------------------|--------------------------|
| Budget | Ce cluster a besoin de son propre plafond de dépense quotidien/mensuel | Un même pool de budget convient |
| Stratégie d'enchères | Ce cluster a besoin d'un objectif d'optimisation différent | Même stratégie d'enchères applicable |
| Cible d'enchères | Ce cluster a besoin d'un CPA cible ou ROAS cible différent | Même cible applicable |
| Conversion goal | Ce cluster optimise vers une action de conversion différente | Même conversion goal applicable |
| Ciblage géographique | Ce cluster cible un ensemble de localisations différent | Même ciblage géo applicable |
| Ad schedule | Ce cluster a besoin d'un planning jour/heure différent | Même planning applicable |
| Network settings | Ce cluster a besoin que Partenaires du Réseau de Recherche soit on/off différemment | Mêmes network settings applicables |
| Marque vs. non-marque | Ce cluster contient des keywords de marque | Ce cluster contient des keywords non-marque |

> ⚠️ **Les keywords de marque ont toujours leur propre campagne :** C'est non-négociable. Le trafic de marque se comporte différemment du trafic non-marque sur les taux de conversion, les CPC et l'intention.

### 1.4 Documenter votre plan de campagne

Créez un plan de campagne listant chaque campagne et ses clusters assignés :

| Nom de campagne | Clusters inclus | Raison de segmentation | Stratégie d'enchères | Budget quotidien |
|---------------|-------------------|---------------------|--------------|--------------|
| NL_NL_Search_Brand | Cluster(s) de marque | Séparation marque | | |
| NL_NL_Search_NB_CRM | Clusters génériques 1, 2, 3 | Par défaut (consolidé) | | |
| BE_FR_Search_NB_CRM | Clusters pour géo spécifique | Ciblage géo différent | | |

> ↪️ **Voir [Campaign Naming Convention Reference](<../strategie/Strategie - Convention de nommage des campagnes.md>)** pour la structure complète de la convention de nommage : `[Country]_[Language]_[CampaignType]_[Theme]_[Modifier]`.

Laissez les colonnes stratégie d'enchères et budget pour le moment. Vous les remplirez en Phase 6.

> 💡 **Moins de campagnes vaut mieux :** Si vous ne pouvez pas articuler une raison de segmentation spécifique parmi la liste ci-dessus, gardez les clusters dans une seule campagne.

---

## Phase 2️⃣ : Créer les ad groups par thème créatif

### 2.1 Appliquer le Single Ad Test

Pour chaque campagne, prenez ses clusters de keywords assignés et regroupez-les en ad groups en utilisant le Single Ad Test du [Search Ad Group Structure Mental Model](<Search - Structure des ad groups Search.md>).

Pour chaque ad group proposé, demandez : **Une seule RSA avec un seul jeu de titres et descriptions peut-elle servir tous les keywords de ce groupe ?**

- Si OUI : gardez-les dans un seul ad group
- Si NON : séparez en ad groups distincts par thème créatif

### 2.2 Nommer vos ad groups

Utilisez une convention de nommage claire et descriptive :

**Pattern :** `[Intent/Theme] - [Modifier]`

| Exemple | Ce que ça vous indique |
|---------|-------------------|
| Running Shoes - Generic | Termes génériques chaussures de course |
| Trail Running | Termes spécifiques au trail |
| Nike Running Shoes | Termes marque concurrente + produit |
| Free Shipping Running | Termes à intention promo |

Règles de nommage :

1. Le nom reflète le thème créatif, pas juste un keyword
2. Garder les noms sous 60 caractères
3. Pas de caractères spéciaux sauf tirets et espaces

### 2.3 Valider le nombre d'ad groups par campagne

Utilisez ces lignes directrices pour vérifier votre nombre d'ad groups. Ce ne sont pas des règles strictes mais des signaux pour revérifier votre structure :

- **Plage typique :** 5-25 ad groups par campagne
- **Si plus de 25 :** vérifiez si certains ad groups peuvent être consolidés (relancez le Single Ad Test avec des thèmes créatifs plus larges)
- **Si plus de 40 :** envisagez de séparer en campagnes distinctes avec une raison de segmentation documentée

> 💡 **Il n'y a pas non plus de règles strictes pour le nombre de keywords par ad group :** Utilisez le nombre de keywords comme signal : si un ad group a 50+ keywords, il peut contenir plusieurs thèmes créatifs à séparer. S'il a 1-2 keywords, envisagez de le fusionner avec un ad group connexe. Le Single Ad Test est le facteur décisif, pas un nombre arbitraire.

### 2.4 Documenter votre plan d'ad groups

| Campagne | Nom de l'ad group | Thème créatif | Nombre de keywords | Landing page |
|----------|---------------|----------------|---------------|--------------|
| | | | | |

---

## Phase 3️⃣ : Assigner les keywords et types de correspondance

### 3.1 Ajouter les keywords aux ad groups

Pour chaque ad group, ajoutez les keywords du/des cluster(s) correspondant(s) :

1. Ouvrez vos clusters de keywords
2. Copiez les keywords dans l'ad group assigné
3. Vérifiez qu'aucun keyword n'apparaît dans plus d'un ad group au sein de la même campagne

> ⚠️ **Les keywords dupliqués entre ad groups d'une même campagne créent une concurrence interne :** Vérifiez les doublons avant de continuer.

### 3.2 Sélectionner les types de correspondance

Ouvrez les [Keyword and Match Type Selection Guidelines](<Search - Sélection des mots clés et types de correspondance.md>) et appliquez le match type pour chaque keyword.

**Règle par défaut :** Utilisez requête large quand vous tournez en CPA cible ou ROAS cible ET que le compte a un historique de conversion suffisant. Requête large + Stratégies d'enchères intelligentes est le défaut moderne pour les comptes établis.

Appliquer le match type en fonction de la maturité du compte et des données :

| Condition | Match type | Justification |
|-----------|-----------|-----------|
| Compte établi + CPA cible/ROAS cible + 30+ conversions/mois | Requête large | Défaut : le stratégies d'enchères intelligentes a assez de données pour contrôler le requête large efficacement |
| Compte neuf (pas d'historique de conversion) | Exact et/ou expression exacte | Le stratégies d'enchères intelligentes n'a pas de données au niveau requête pour apprendre. Le requête large génère du gaspillage. Tester le broad plus tard via un experiment 50/50 |
| Campagne à faible volume (<30 conversions/mois) | Exact et/ou expression exacte | Données insuffisantes pour que le stratégies d'enchères intelligentes optimise le requête large. Concentrer la dépense sur les requêtes high-intent connues |
| Budget limité | Exact et/ou expression exacte | Contrôler la pertinence et la température du trafic. Le requête large devient viable quand le budget augmente ou que les données prouvent l'efficacité |
| B2B niche avec keywords prévisibles | Exact et/ou expression exacte | L'espace de requête est assez étroit pour être couvert manuellement. Le requête large produit surtout des requêtes non pertinentes avec un faible uplift incrémental |
| Keywords de marque | Phrase et/ou mot-clé exact | Protéger les termes de marque. Le requête large est inutile pour les campagnes de marque : utiliser uniquement phrase/exact |
| Keywords éprouvés avec un historique de performance solide | Garder le match type actuel | Ne pas changer ce qui marche |

### 3.3 Créer et lier les listes de keywords négatifs

Construisez l'infrastructure de listes de keywords négatifs partagées et liez les listes aux campagnes. Utilisez les listes partagées (pas les négatifs au niveau campagne) par défaut. Ajoutez des négatifs au niveau campagne uniquement quand des requêtes spécifiques nécessitent un blocage spécifique à une campagne.

**Étape 1️⃣ : Créer les listes obligatoires**

Dans Google Ads, naviguez vers Outils > Bibliothèque partagée > Listes de keywords négatifs. Créez ces trois listes :

| Nom de la liste | Objectif |
|-----------|---------|
| `Irrelevant Keywords` | Termes complètement non liés à votre activité (alimenté à partir des rejets de la keyword research + revue STR continue) |
| `Poor Performing Keywords` | Termes à mauvaise performance prouvée par les données (alimenté plus tard via l'analyse N-gram) |
| `Branded Keywords` | Vos propres termes de marque, pour exclusion des campagnes non-marque |

**Étape 2️⃣ : Créer les listes optionnelles**

| Nom de la liste | Quand la créer | Objectif |
|-----------|----------------|---------|
| `Competitors` | Quand vous n'enchérissez pas sur les termes concurrents | Garde les exclusions concurrentielles séparées pour pouvoir facilement délier si vous testez des campagnes concurrents plus tard |
| `Spam Prevention` | Quand votre secteur attire du trafic spam | Termes explicites, torrent, coupon |

**Étape 3️⃣ : Alimenter les négatifs initiaux depuis la keyword research**

1. Ouvrez la sortie de votre keyword research depuis [SOP - Rechercher des mots-cles](<Search - Rechercher des keywords.md>).
2. Sortez chaque keyword marqué comme non pertinent (codé rouge) pendant la recherche.
3. Passez en revue le [Catalogue de keywords négatifs](<Search - Catalogue de mots-clés à exclure.md>) pour votre vertical et ajoutez les patterns de catégorie qui s'appliquent mais qui n'ont pas été capturés pendant la keyword research.
4. Formattez tous les négatifs : minuscules, pas de caractères spéciaux. Utilisez requête large (pas de symboles) pour les termes en un seul mot, expression exacte (entre guillemets) pour les patterns multi-mots.
5. Ajoutez les négatifs formattés aux listes appropriées (la plupart iront dans la liste Irrelevant Keywords).
6. Alimentez la liste Branded Keywords avec toutes les variations du nom de marque, y compris les fautes d'orthographe courantes.
7. Laissez la liste Poor Performing Keywords vide. Elle sera alimentée par l'analyse N-gram une fois que la campagne aura des données.

> ⚠️ **Les négatifs ne matchent pas les close variants :** Ajoutez manuellement les variantes singulier, pluriel et fautes d'orthographe pour chaque keyword négatif.

**Étape 4️⃣ : Lier les listes aux campagnes**

| Liste | Lier à | Ne pas lier à |
|------|---------|----------------|
| Irrelevant Keywords | Toutes les campagnes Search, toutes les campagnes Shopping, toutes les campagnes PMax | N/A |
| Poor Performing Keywords | Toutes les campagnes Search, toutes les campagnes Shopping, toutes les campagnes PMax | N/A |
| Branded Keywords | Campagnes Search non-marque uniquement | Campagnes de marque |
| Competitors | Toutes les campagnes (sauf si vous tournez des campagnes concurrents) | Campagnes ciblant les concurrents |
| Spam Prevention | Toutes les campagnes | N/A |

Vérifier : confirmez que les campagnes de marque n'ont PAS la liste Branded Keywords liée.

**Étape 5️⃣ : Négatifs au niveau ad group**

1. Bloquez la pollinisation croisée entre ad groups uniquement quand nécessaire (empêcher les keywords de l'ad group A de déclencher les annonces de l'ad group B).
2. **Campagne de marque :** Utilisez phrase et/ou mot-clé exact uniquement pour vos keywords de marque. Cela restreint naturellement les requêtes aux termes de marque sans avoir besoin de négatifs génériques. Ajoutez des négatifs au niveau campagne uniquement si des requêtes génériques non pertinentes passent malgré le phrase/mot-clé exact.

### 3.4 Valider les assignations de keywords

Pour chaque ad group, confirmez :

- [ ] Tous les keywords correspondent au thème créatif de l'ad group
- [ ] Les types de correspondance suivent les Guidelines
- [ ] Aucun keyword dupliqué n'existe entre ad groups d'une même campagne
- [ ] Les keywords négatifs sont en place pour empêcher la pollinisation croisée
- [ ] La campagne de marque a des keywords négatifs qui bloquent les termes génériques

---

## Phase 4️⃣ : Définir les Landing Pages

### 4.1 Assigner les Final URLs

Pour chaque ad group, définissez l'URL de landing page :

1. Utilisez la landing page mappée pendant le clustering des keywords
2. Définissez la Final URL au **niveau annonce** (défaut) ou au **niveau keyword** si différents keywords du même ad group nécessitent des pages différentes

| Approche | Quand l'utiliser |
|----------|-------------|
| Final URL au niveau annonce | Tous les keywords de l'ad group pointent vers la même page (défaut) |
| Final URL au niveau keyword | Les keywords d'un même ad group nécessitent des landing pages différentes |

### 4.2 Valider les landing pages

Pour chaque URL assignée, confirmez :

- [ ] La page charge sans erreur (HTTP 200)
- [ ] La page est pertinente pour les keywords de l'ad group
- [ ] La page contient le keyword principal ou un close variant dans le H1 ou le contenu above-the-fold
- [ ] La page correspond à l'offre référencée dans l'ad copy
- [ ] La version mobile charge correctement et est utilisable

> ⚠️ **N'envoyez pas le trafic vers une homepage sauf si la campagne est de marque uniquement :** Chaque ad group non-marque nécessite une landing page dédiée qui correspond à l'intention de recherche.

---

## Phase 5️⃣ : Uploader via Google Ads Editor

### 5.1 Télécharger le compte

1. Ouvrez Google Ads Editor
2. Téléchargez les dernières données du compte (Accounts > Download Recent Changes)
3. Confirmez que le téléchargement se termine sans erreur

### 5.2 Créer les campagnes

Pour chaque campagne de votre plan :

1. Cliquez sur **Add Campaign** > Search
2. Définissez le nom de la campagne selon votre campaign map
3. Laissez les paramètres aux valeurs par défaut pour l'instant (vous les configurerez en Phase 6)

### 5.3 Créer les ad groups

Pour chaque ad group de votre ad group map :

1. Sélectionnez la campagne parente
2. Cliquez sur **Add Ad Group**
3. Entrez le nom de l'ad group depuis votre ad group map
4. Définissez le bid par défaut (placeholder : utilisez €1.00 si vous utilisez Stratégies d'enchères intelligentes, l'algorithme va l'écraser)

### 5.4 Ajouter les keywords

Pour chaque ad group :

1. Sélectionnez l'ad group
2. Cliquez sur **Add Keyword**
3. Collez les keywords avec la notation des types de correspondance :
   - Requête large : `keyword` (pas de modifieurs)
   - Expression exacte : `"keyword"`
   - Mot-clé exact : `[keyword]`
4. Définissez les Final URLs au niveau keyword si applicable (depuis la Phase 4)

### 5.5 Ajouter les keywords négatifs

1. Ajoutez les négatifs au niveau campagne : sélectionnez la campagne > Mots-clés à exclure > Add
2. Ajoutez les négatifs au niveau ad group : sélectionnez l'ad group > Mots-clés à exclure > Add

### 5.6 Poster les changements

1. Cliquez sur **Check Changes** pour valider l'upload
2. Vérifiez et résolvez toute erreur ou avertissement
3. Cliquez sur **Post** pour pousser les changements vers Google Ads
4. Vérifiez que le post se termine avec succès

> 💡 **Sauvegardez une copie avant de poster :** Dans Google Ads Editor : File > Export > Export Whole Account. Cela vous donne un point de rollback.

---

## Phase 6️⃣ : Configurer les paramètres de campagne

### 6.1 Appliquer les paramètres de campagne

Ouvrez les [Search Campaign Settings Guidelines](<Search - Paramètres de campagne Search.md>) et configurez chaque campagne.

Pour chaque campagne, définissez :

| Paramètre | Action |
|---------|--------|
| Networks | Désactiver Partenaires du Réseau de Recherche et Display Network (sauf si les Guidelines spécifient autrement) |
| Localisations | Définir les localisations cibles selon votre campaign map. Commencer par "Presence or interest" (défaut), restreindre à "Presence only" en fonction des données du location report. |
| Langues | Définir sur la/les langue(s) de votre audience cible |
| Ad schedule | Définir sur "All day" sauf si un planning spécifique est requis par votre campaign map |
| Ad rotation | Définir sur "Optimize: prefer best performing ads" |
| Dates de début/fin | Définir la date de début sur votre date de lancement prévue. Pas de date de fin sauf si vous tournez une promotion limitée dans le temps. |

### 6.2 Définir la stratégie d'enchères

Pour chaque campagne, appliquez la stratégie d'enchères sélectionnée dans [SOP - Selectionner une strategie d'encheres](<../encheres/Enchères - Sélectionner une stratégie d'enchères.md>) :

1. Naviguez vers les paramètres de campagne > Enchères
2. Sélectionnez la stratégie d'enchères
3. Définissez la cible (CPA cible ou ROAS cible) selon votre documentation de stratégie d'enchères
4. Confirmez que la campagne utilise le(s) bon(s) conversion goal(s)

### 6.3 Définir le budget

Pour chaque campagne, appliquez le budget depuis [SOP - Repartir le budget entre les campagnes](<../encheres/Enchères - Répartir le budget entre les campagnes.md>) :

1. Naviguez vers les paramètres de campagne > Budget
2. Entrez le budget quotidien
3. Confirmez que le budget est aligné avec votre plan d'allocation

### 6.4 Configurer les paramètres DSA (si applicable)

Si vous utilisez les Dynamic Search Ads dans une campagne :

1. Ajoutez un ad group DSA avec page feeds ou URL targets
2. Définissez les négatifs spécifiques DSA pour éviter le chevauchement avec les ad groups ciblés par keywords
3. Vérifiez que les targets DSA ne dupliquent pas les landing pages ciblées par keywords

> ⚠️ **N'ajoutez du DSA que si votre stratégie de campagne le requiert :** Le DSA n'est pas requis dans toute campagne Search. Si votre couverture de keywords est exhaustive, le DSA ajoute de la complexité sans bénéfice clair.

### 6.5 Vérification finale des paramètres

Pour chaque campagne, confirmez :

- [ ] Les networks sont définis correctement (Partenaires du Réseau de Recherche et Display Network désactivés par défaut)
- [ ] Le ciblage géographique est défini (défaut : "Presence or interest", restreindre à "Presence only" si les données le justifient)
- [ ] Le ciblage linguistique correspond à votre audience
- [ ] La stratégie d'enchères et la cible sont configurées
- [ ] Le budget quotidien est défini
- [ ] Les conversion goals sont corrects
- [ ] L'ad rotation est définie sur Optimize
- [ ] La date de début est définie

---

### Validation et critères de complétion

Cette SOP est terminée quand :

- [ ] Tous les clusters de keywords sont assignés à des campagnes avec des raisons de segmentation documentées
- [ ] Chaque campagne a des ad groups organisés par thème créatif, validés avec le Single Ad Test
- [ ] Les keywords sont assignés aux ad groups avec les bons types de correspondance selon les Guidelines
- [ ] Aucun keyword dupliqué n'existe entre ad groups d'une même campagne
- [ ] Les listes de keywords négatifs partagées sont liées aux bonnes campagnes
- [ ] Les landing pages sont assignées et validées pour chaque ad group
- [ ] La structure est uploadée vers Google Ads via Editor sans erreur
- [ ] Les paramètres de campagne sont configurés selon les Search Campaign Settings Guidelines
- [ ] Les stratégies d'enchères et les budgets sont appliqués selon les SOPs en amont
- [ ] Dérouler la [Checklist de lancement de campagne Search](<Search - [Review] Lancement de campagne Search.md>) et passer tous les items applicables

---

### Passerelle de sortie

Une fois que la structure de campagne est construite et que tous les paramètres sont configurés :

| Délai | Action |
|-----------|--------|
| Immédiatement | Rédiger les RSA pour chaque ad group avec [SOP - Rediger des RSA performantes](<Search - Rédiger des RSA performantes.md>) |
| Après que les RSA sont live | Dérouler la [Checklist de lancement de campagne Search](<Search - [Review] Lancement de campagne Search.md>) pour la validation finale pré-lancement |
| Jour du lancement | Exécuter [SOP - Lancer une campagne Search](<Search - Lancer une campagne Search.md>) |

**En cas de problème :**

| Problème | Rediriger vers |
|-------|----------|
| Pas sûr de séparer ou consolider les campagnes | Relire [Search Campaign Structure Mental Model](<Search - Structure de campagne Search.md>) |
| Les thèmes créatifs des ad groups ne sont pas clairs | Relire [Search Ad Group Structure Mental Model](<Search - Structure des ad groups Search.md>) et refaire le Single Ad Test |
| La sélection des types de correspondance est ambiguë | Relire [Keyword and Match Type Selection Guidelines](<Search - Sélection des mots clés et types de correspondance.md>) |
| Questions sur la stratégie d'enchères | Relire [SOP - Selectionner une strategie d'encheres](<../encheres/Enchères - Sélectionner une stratégie d'enchères.md>) |
| Questions sur l'allocation budgétaire | Relire [SOP - Repartir le budget entre les campagnes](<../encheres/Enchères - Répartir le budget entre les campagnes.md>) |

---

### Erreurs fréquentes

| Erreur | Pourquoi ça arrive | Comment l'éviter |
|---------|----------------|--------------|
| Trop de campagnes | Sur-segmentation sans raisons valides | Appliquer les 8 raisons de segmentation strictement. Si pas de raison, consolider. |
| Ad groups basés sur des keywords plutôt que des thèmes créatifs | Regrouper par similarité de keywords plutôt que par pertinence d'annonce | Utiliser le Single Ad Test : une seule RSA peut-elle servir tous les keywords de ce groupe ? |
| Keywords dupliqués entre ad groups | Erreurs de copier-coller ou clusters qui se chevauchent | Vérifier les doublons avant d'uploader. Un keyword vit dans un seul ad group. |
| Listes de keywords négatifs partagées manquantes | Ne pas créer ou lier les listes de négatifs aux campagnes | Créer les listes en Phase 3.3 et lier à toutes les campagnes pertinentes avant le lancement |
| Envoyer le trafic non-marque vers la homepage | Tomber sur la homepage par défaut au lieu de landing pages dédiées | Chaque ad group non-marque a une landing page qui correspond à l'intention de recherche |
| Partenaires du Réseau de Recherche laissé activé | Oublier de désactiver les paramètres réseau par défaut | Vérifier le paramètre Networks pour chaque campagne avant de poster |
| Keywords de marque et non-marque dans la même campagne | Ne pas séparer le trafic de marque | Les keywords de marque ont toujours leur propre campagne |

---

### Référence rapide : bibliothèque support

| Document | Type | Utilisé dans |
|----------|------|---------|
| [Search Campaign Structure Mental Model](<Search - Structure de campagne Search.md>) | Mental Model | Phase 1 |
| [Search Ad Group Structure Mental Model](<Search - Structure des ad groups Search.md>) | Mental Model | Phase 2 |
| [Modern Search Campaign Mental Model](<Search - Campagne Search moderne.md>) | Mental Model | Phase 1, Phase 3 |
| [Keyword and Match Type Selection Guidelines](<Search - Sélection des mots clés et types de correspondance.md>) | Guideline | Phase 3 |
| [Search Campaign Settings Guidelines](<Search - Paramètres de campagne Search.md>) | Guideline | Phase 6 |
| [Search Campaign Launch Checklist](<Search - [Review] Lancement de campagne Search.md>) | Checklist | Validation, Exit bridge |
| [Bidding Strategy Mental Model](<../encheres/Enchères - Stratégie d'enchères.md>) | Mental Model | Phase 6 |
| [Budget Allocation Mental Model](<../../01-strategie/analyse/Analyse - Allocation de budget.md>) | Mental Model | Phase 6 |

---

### Procédures liées

| SOP | Relation |
|-----|--------------|
| [SOP - Regrouper et mapper les mots-cles](<Search - Regrouper et mapper les keywords.md>) | Amont : doit être complété avant cette SOP |
| [SOP - Definir les objectifs et KPIs de campagne](<../strategie/Strategie - Définir les objectifs et KPIs de campagne.md>) | Amont : les objectifs et KPI doivent être définis |
| [SOP - Selectionner une strategie d'encheres](<../encheres/Enchères - Sélectionner une stratégie d'enchères.md>) | Amont : la stratégie d'enchères doit être sélectionnée |
| [SOP - Repartir le budget entre les campagnes](<../encheres/Enchères - Répartir le budget entre les campagnes.md>) | Amont : l'allocation budgétaire doit être déterminée |
| [SOP - Rediger des RSA performantes](<Search - Rédiger des RSA performantes.md>) | Aval : rédiger les annonces après que la structure est construite |
| [SOP - Lancer une campagne Search](<Search - Lancer une campagne Search.md>) | Aval : lancer après que la structure et les annonces sont complètes |
