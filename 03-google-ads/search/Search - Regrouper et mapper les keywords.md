# Regrouper et mapper les mots-cles

> **Plateforme :** Google Ads
> **Catégorie :** Search
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Phase 1️⃣ : Coder les mots-clés par couleur

### 1.1 Configurer la feuille de calcul

Créez une feuille de calcul avec ces colonnes :

| Colonne | Source |
|--------|--------|
| Mot-clé | Sortie de la SOP de recherche |
| Volume de recherche | Sortie de la SOP de recherche |
| Concurrence | Sortie de la SOP de recherche |
| CPC estimé | Sortie de la SOP de recherche |
| Code couleur | Cette phase |
| Nom du cluster | Phase 2 |
| Label d'intention | Phase 4 |
| Landing Page | Phase 5 |

### 1.2 Appliquer les codes couleur

Examinez chaque mot-clé et attribuez une couleur :

| Couleur | Signification | Action |
|-------|---------|--------|
| Rouge | Non pertinent pour l'activité | Exclure immédiatement |
| Orange | Douteux, nécessite un examen supplémentaire | Mettre de côté pour une évaluation secondaire |
| Vert | Clairement pertinent, correspond à un produit ou service | Inclure |

**Critères Rouge (exclure immédiatement) :**

1. Le mot-clé décrit un produit ou service que vous n'offrez pas
2. Le mot-clé cible une zone géographique que vous ne desservez pas
3. Le mot-clé décrit un tout autre secteur ou cas d'usage
4. Le mot-clé est purement informationnel ET vous n'avez aucun chemin de conversion pour cette intention (pas de lead magnet, d'outil gratuit ni de tunnel de consultation)

**Critères Vert (inclure) :**

1. Le mot-clé décrit directement ce que vous vendez
2. Le mot-clé décrit un problème que votre produit ou service résout
3. Le mot-clé inclut des modificateurs commerciaux ou transactionnels pertinents pour votre offre
4. Le mot-clé correspond au sujet d'une page de destination existante

**Critères Orange (mettre de côté pour examen) :**

1. Le mot-clé est adjacent à votre offre mais ne correspond pas directement
2. Le mot-clé cible un segment d'audience dont vous n'êtes pas sûr
3. Le mot-clé a une viabilité commerciale mais un faible volume de recherche
4. Le mot-clé pourrait être pertinent selon la roadmap produit ou une offre saisonnière

### 1.3 Traiter les mots-clés orange

Pour chaque mot-clé orange, répondez à cette question : « Si quelqu'un cherchait cela, pourrais-je lui proposer une page de destination pertinente et satisfaire son intention ? »

- Oui : Passer en vert
- Non : Passer en rouge
- Incertain : Garder en orange et signaler pour l'avis du propriétaire de l'entreprise

### 1.4 Extraire les mots-clés rouges vers la liste d'exclusion

Déplacez tous les mots-clés rouges vers une liste de mots-clés à exclure séparée. Ils deviennent des exclusions au niveau campagne ou au niveau compte lors de la construction de la campagne.

> ⚠️ **Ne supprimez pas les mots-clés rouges :** Déplacez-les vers une feuille dédiée aux mots-clés à exclure. Ils orientent votre stratégie de mots-clés à exclure lors de la phase de construction de la campagne.

### 1.5 Résultat de la Phase 1

- Mots-clés verts : prêts pour le regroupement en clusters
- Mots-clés orange : signalés pour revue par le propriétaire de l'entreprise (max 10-15 % de la liste totale)
- Mots-clés rouges : documentés sur une feuille de mots-clés à exclure

---

## Phase 2️⃣ : Regrouper par thème créatif

### 2.1 Appliquer le Single Ad Test

Pour chaque paire de mots-clés verts, demandez : « Une seule RSA peut-elle servir efficacement ces deux mots-clés ? »

- Oui : Ils appartiennent au même cluster
- Non : Ils appartiennent à des clusters distincts

Le Single Ad Test est la règle déterminante. Si le même titre, la même description et la même page de destination ont du sens pour deux mots-clés, ils partagent un cluster. Si un mot-clé nécessitait une annonce sensiblement différente, il obtient son propre cluster.

> ↪️ **Voir [Search Ad Group Structure Mental Model](<Search - Structure des ad groups Search.md>)** pour la méthode complète derrière le Single Ad Test.

### 2.2 Regrouper les synonymes et variantes proches

Au sein de chaque cluster, regroupez les mots-clés qui sont des variations du même concept :

| Regrouper | Exemples |
|----------------|----------|
| Synonymes | « lawyer » et « attorney », « software » et « tool » |
| Variantes proches | « running shoes » et « running shoe » |
| Changements d'ordre des mots | « cheap flights london » et « london cheap flights » |
| Variations de modificateurs | « best crm software » et « top crm software » |

Ceux-ci partagent un même groupe d'annonces. Le système de types de correspondance gère la correspondance des variantes au sein du groupe.

### 2.3 Nommer chaque cluster

Attribuez à chaque cluster un nom descriptif qui reflète le thème créatif :

| Modèle de nommage | Exemple |
|----------------|---------|
| Produit/service + modificateur | "CRM Software - Enterprise" |
| Problème + solution | "Back Pain - Physiotherapy" |
| Catégorie + intention | "Running Shoes - Purchase" |

Le nom du cluster devient le nom du groupe d'annonces lors de la construction de la campagne.

### 2.4 Assigner les mots-clés aux clusters

Placez chaque mot-clé vert dans exactement un cluster. Aucun mot-clé n'appartient à plusieurs clusters.

Si un mot-clé pourrait convenir à deux clusters, placez-le dans le cluster où il a la plus forte cohérence créative (là où le titre de la RSA serait le plus pertinent).

### 2.5 Valider la taille du cluster

Vérifiez chaque cluster par rapport à ces fourchettes :

| Taille du cluster | Action |
|--------------|--------|
| 1-3 mots-clés | Envisagez une fusion avec un cluster proche si le Single Ad Test passe |
| 4-20 mots-clés | Cluster sain typique |
| 21+ mots-clés | Cherchez des opportunités de découpage : y a-t-il des sous-thèmes nécessitant des annonces différentes ? |

> 💡 **La taille du cluster est un signal, pas une règle :** Un cluster de 2 mots-clés à fort volume est valide s'ils nécessitent leur propre thème créatif. Un cluster de 25 mots-clés convient parfaitement s'ils passent tous le Single Ad Test.

---

## Phase 3️⃣ : Prioriser les clusters

### 3.1 Scorer chaque cluster

Évaluez chaque cluster selon cinq dimensions :

| Dimension | Ce qu'il faut évaluer | Signal haute priorité |
|-----------|---------------|---------------------|
| Volume de recherche | Somme du volume de recherche mensuel sur tous les mots-clés du cluster | Volume agrégé plus élevé |
| Concurrence | Niveau de concurrence moyen (faible/moyen/élevé) | Concurrence plus faible |
| Viabilité du CPC | CPC moyen par rapport à votre CPA cible ou ROAS | CPC dans une fourchette rentable |
| Force de l'intention | Proportion de mots-clés transactionnels et commerciaux | Proportion plus élevée d'intention d'achat |
| Marge business | Potentiel de revenu du produit ou service que ce cluster représente | Offres à plus forte marge |

### 3.2 Créer le classement de priorité

Classez les clusters en trois paliers :

| Palier | Critères | Action |
|------|----------|--------|
| Palier 1 : Lancer en premier | Fort volume + forte intention + CPC viable + forte marge | Construire ces groupes d'annonces en premier |
| Palier 2 : Lancer en deuxième | Volume modéré ou intention modérée, toujours rentable | Construire une fois le Palier 1 en ligne et performant |
| Palier 3 : Tester plus tard | Faible volume, forte concurrence, ou ROI incertain | Mettre en file pour une expansion ultérieure ou une activation saisonnière |

### 3.3 Enregistrer les scores de priorité

Ajoutez l'attribution du palier à chaque cluster dans votre feuille de calcul. Incluez une justification d'une ligne pour le classement.

| Nom du cluster | Palier | Justification |
|--------------|------|-----------|
| (issu de la Phase 2) | (1, 2 ou 3) | (une phrase : pourquoi ce palier) |

---

## Phase 4️⃣ : Attribuer les labels d'intention

### 4.1 Étiqueter chaque cluster

Attribuez un label d'intention principal par cluster en fonction de l'intention dominante des mots-clés :

| Label d'intention | Mots signaux | Objectif utilisateur |
|--------------|-------------|-----------|
| Transactionnel | buy, purchase, order, pricing, quote, hire, book | Prêt à convertir |
| Investigation commerciale | best, compare, review, vs, top, alternative | Évalue les options avant d'acheter |
| Informationnel | what is, how to, guide, definition, examples | Apprend, n'achète pas |
| Navigationnel | nom de marque, nom de produit spécifique | Cherche une marque ou un site spécifique |

### 4.2 Déterminer l'intention dominante

Si un cluster contient des mots-clés à intention mixte :

1. Comptez les mots-clés par catégorie d'intention
2. Attribuez le label de la majorité
3. En cas d'égalité, attribuez la catégorie à plus forte intention (transactionnel > commercial > informationnel)

### 4.3 Signaler les clusters informationnels

Marquez tout cluster étiqueté « Informationnel » pour une revue secondaire. Ces clusters :

- Peuvent ne pas justifier une dépense en Search payant
- Pourraient être mieux servis par le SEO ou le content marketing
- Ne devraient rester que s'ils ont un chemin de conversion clair (lead magnet, outil gratuit, consultation)

Si aucun chemin de conversion n'existe, déplacez le cluster vers le Palier 3 ou supprimez-le entièrement.

> ⚠️ **N'incluez des mots-clés informationnels que lorsque :** (1) le message de votre annonce correspond à l'intention informationnelle, (2) votre page de destination répond au besoin de l'utilisateur, et (3) vous avez un tunnel de conversion clair (guide gratuit, quiz, outil, offre de consultation). Évaluez tout le chemin de la requête à la conversion avant d'inclure.

---

## Phase 5️⃣ : Mapper vers les Landing Pages

### 5.1 Faire correspondre les clusters aux pages existantes

Pour chaque cluster, identifiez la page de destination existante la plus pertinente :

1. Passez en revue votre liste de pages de destination existantes
2. Faites correspondre sur la base de l'alignement thématique : le contenu de la page traite-t-il directement le sujet du cluster de mots-clés ?
3. Vérifiez que la page a une action de conversion claire (formulaire, achat, inscription, appel)

### 5.2 Évaluer la pertinence de la landing page

Pour chaque correspondance cluster-page, confirmez :

| Vérification | OK | Échec |
|-------|------|------|
| Le sujet de la page correspond au thème du cluster | La page traite directement le sujet du mot-clé | La page n'est que vaguement liée ou générique |
| La page a une action de conversion | CTA clair visible au-dessus de la ligne de flottaison | Pas de CTA ou CTA enterré |
| La page se charge correctement | Aucune erreur, responsive mobile | Page cassée ou mauvaise expérience mobile |

### 5.3 Signaler les manques

Pour les clusters sans page de destination appropriée :

1. Ajoutez « LP NEEDED » dans la colonne Landing Page
2. Documentez ce que la page devrait couvrir (sujet, offre, action de conversion)
3. Signalez ces clusters comme bloqués jusqu'à ce que la page de destination soit créée

| Nom du cluster | Statut LP | Description de la page requise |
|--------------|-----------|--------------------------|
| (cluster) | LP NEEDED | (sujet, offre, action de conversion nécessaires) |

### 5.4 Enregistrer les mappings finaux

Complétez la colonne Landing Page dans votre feuille de calcul pour chaque cluster :

| Nom du cluster | URL de la Landing Page | Statut LP |
|--------------|-----------------|-----------|
| (issu de la Phase 2) | (URL ou « LP NEEDED ») | (Ready / Needs Update / LP NEEDED) |

---

### Validation et critères de complétion

Cette SOP est terminée quand :

- [ ] Chaque mot-clé est codé par couleur (rouge, orange ou vert)
- [ ] Les mots-clés rouges sont documentés sur une feuille de mots-clés à exclure
- [ ] Les mots-clés orange sont résolus (passés en vert ou rouge) ou signalés pour revue par le propriétaire de l'entreprise (max 10-15 % de la liste)
- [ ] Chaque mot-clé vert appartient à exactement un cluster
- [ ] Chaque cluster passe le Single Ad Test
- [ ] Chaque cluster a un nom descriptif
- [ ] Tous les clusters sont classés en Palier 1, 2 ou 3
- [ ] Chaque cluster a un label d'intention principal
- [ ] Les clusters informationnels sont revus et justifiés ou supprimés
- [ ] Chaque cluster est mappé à une page de destination ou signalé « LP NEEDED »
- [ ] La feuille de calcul finale est exportée et prête pour la construction de la campagne

Passez tous les clusters par la [Keyword Set Quality Checklist](<Search - [Review] Qualité du set de keywords.md>) avant de continuer.

---

### Passerelle de sortie

Une fois tous les clusters validés et mappés :

| Prochaine étape | Action |
|-----------|--------|
| Clusters du Palier 1 prêts | Démarrer la SOP - Construire la structure de campagne Search avec les clusters du Palier 1 |
| Manques de LP identifiés | Router la création de pages de destination avant de construire les groupes d'annonces pour ces clusters |
| Feuille de mots-clés à exclure complète | Alimenter la configuration des mots-clés à exclure lors de la construction de la campagne |

**En cas de problème :**

| Problème | Rediriger vers |
|-------|----------|
| Les mots-clés ne passent le Single Ad Test dans aucun cluster | Réévaluer les frontières des clusters, découper davantage |
| Pas de pages de destination appropriées pour les clusters prioritaires | Prioriser la création de pages de destination avant le lancement de la campagne |
| Des mots-clés orange restent non résolus | Escalader au propriétaire de l'entreprise pour confirmer le périmètre produit/service |

---

### Erreurs fréquentes

| Erreur | Pourquoi ça arrive | Comment l'éviter |
|---------|----------------|--------------|
| Clusters trop larges (échouent au Single Ad Test) | Regrouper par sujet au lieu du thème créatif | Appliquer le Single Ad Test à chaque paire de mots-clés du cluster |
| Clusters trop étroits (1-2 mots-clés chacun) | Sur-découpage sur des variations mineures | Fusionner synonymes et variantes proches en un seul cluster |
| Sauter l'étape rouge/orange/vert | Se précipiter vers le regroupement sans filtrer | Toujours coder par couleur d'abord : cela évite les clusters pollués |
| Ignorer les mots-clés informationnels | Les inclure sans chemin de conversion | Signaler les clusters informationnels et exiger un mécanisme de conversion ou les supprimer |
| Mapper les clusters vers une page d'accueil générique | Pas de pages de destination dédiées disponibles | Signaler « LP NEEDED » et bloquer le cluster jusqu'à ce qu'une page pertinente existe |
| Ne pas prioriser les clusters | Essayer de tout lancer d'un coup | Répartir les clusters en paliers et lancer le Palier 1 d'abord pour des apprentissages plus rapides |

---

### Référence rapide : bibliothèque support

| Document | Type | Utilisé dans |
|----------|------|---------|
| [Modern Search Campaign Mental Model](<Search - Campagne Search moderne.md>) | Mental Model | Phase 2 (logique de cluster) |
| [Search Ad Group Structure Mental Model](<Search - Structure des ad groups Search.md>) | Mental Model | Phase 2 (Single Ad Test) |
| [Keyword Set Quality Checklist](<Search - [Review] Qualité du set de keywords.md>) | Checklist | Validation |
| [Match Type Reference](<Search - Types de correspondance.md>) | Reference | Phase 2 (regroupement des variantes) |
| [Keyword and Match Type Selection Guidelines](<Search - Sélection des mots clés et types de correspondance.md>) | Guideline | Phase 2 (contexte de regroupement) |
| [Negative Keyword Reference](<Search - Mots-clés à exclure.md>) | Reference | Phase 1 (mots-clés rouges) |

---

### Procédures liées

| SOP | Relation |
|-----|--------------|
| SOP - Rechercher des mots-cles | Amont (fournit la liste brute de mots-clés) |
| SOP - Construire la structure de campagne Search | Aval (utilise les clusters pour construire les groupes d'annonces) |
| [SOP - Rediger des RSA performantes](<Search - Rédiger des RSA performantes.md>) | Aval (rédige les annonces pour chaque cluster) |
| [SOP - Promouvoir les termes de recherche en mots-cles](<Search - Promouvoir les termes de recherche en keywords.md>) | Parallèle (affinement continu des mots-clés après le lancement) |
