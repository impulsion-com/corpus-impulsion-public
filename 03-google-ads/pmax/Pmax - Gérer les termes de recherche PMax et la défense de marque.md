# Gérer le routage des termes de recherche PMax

> **Plateforme :** Google Ads
> **Catégorie :** Pmax
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Phase 1️⃣ : Exporter et fusionner les données de termes de recherche

### 1.1 Exporter le rapport sur les termes de recherche PMax

1. Dans Google Ads, accédez à la campagne PMax > **Insights et rapports** > **Termes de recherche**.
2. Définissez la période sur les 30 derniers jours.
3. Ajoutez les colonnes nécessaires : Terme de recherche, Impressions, Clics, Coût, Conversions, Valeur de conversion, CTR, CPA (calculé).
4. Exportez le rapport.

### 1.2 Exporter le rapport sur les termes de recherche des campagnes Search

1. Accédez aux campagnes Search > **Insights et rapports** > **Termes de recherche**.
2. Définissez la même période de 30 jours.
3. Exportez avec les mêmes colonnes.

### 1.3 Fusionner et identifier les requêtes qui se chevauchent

1. Combinez les deux jeux de données dans un seul tableur.
2. Faites correspondre les lignes sur la colonne Terme de recherche.
3. Pour chaque requête, indiquez si elle apparaît uniquement en PMax, uniquement en Search, ou dans les deux.
4. Triez par coût PMax décroissant pour prioriser les requêtes à forte dépense.

---

## Phase 2️⃣ : Identifier les candidats à la promotion

### 2.1 Filtrer les requêtes PMax qui méritent d'être promues

Examinez les termes de recherche PMax et marquez les requêtes qui répondent à ces critères :

| Critère | Seuil | Pourquoi |
| --- | --- | --- |
| Conversions | 2+ conversions sur la période d'analyse | Potentiel de conversion prouvé |
| Pertinence | Directement liée à vos produits/services | Vaut la peine d'être contrôlée sur le long terme |
| Volume | 50+ impressions sur la période d'analyse | Demande suffisante pour justifier une gestion par mot-clé |
| Pas déjà en Search | Statut "Aucun" (pas un mot-clé Search existant) | Évite de dupliquer des mots-clés exacts existants |
| Hors marque | Ne contient pas votre nom de marque | Le routage marque est géré séparément |

### 2.2 Comparer la performance PMax vs Search sur les requêtes qui se chevauchent

Pour les requêtes apparaissant à la fois en PMax et en Search, comparez la performance :

| Métrique | Valeur PMax | Valeur Search | Meilleur performeur |
| --- | --- | --- | --- |
| CPA | [valeur] | [valeur] | CPA le plus bas gagne |
| ROAS | [valeur] | [valeur] | ROAS le plus haut gagne |
| Taux de conversion | [valeur] | [valeur] | CVR le plus haut gagne |

### 2.3 Construire la liste de promotion

Pour chaque candidat à la promotion, notez :

| Terme de recherche | Conversions PMax | CPA/ROAS PMax | Déjà en Search ? | Action recommandée |
| --- | --- | --- | --- | --- |
| [terme] | [#] | [valeur] | Non | Promouvoir en mot-clé exact dans [campagne/ad group] |
| [terme] | [#] | [valeur] | Oui (expression/large) | Ajouter en mot-clé exact pour récupérer la priorité de routage |

**Ordre de priorité pour la promotion :**

1. Requêtes à fort volume et fort taux de conversion pas encore en Search (la plus grosse opportunité)
2. Requêtes qui se chevauchent avec Search où PMax surperforme (le routage est sous-optimal)
3. Requêtes apparaissant en PMax qui collent aux thèmes des campagnes Search existantes
4. Nouveaux patterns de requêtes qui suggèrent de nouvelles opportunités d'ad group ou de campagne

---

## Phase 3️⃣ : Promouvoir vers les campagnes Search

### 3.1 Router les requêtes vers une structure Search existante ou nouvelle

| Scénario | Action |
| --- | --- |
| La requête colle à un thème d'ad group existant | Ajouter en mot-clé exact dans cet ad group |
| La requête représente un nouveau thème avec 3+ termes liés | Créer un nouvel ad group avec ces termes en mot-clé exact |
| La requête suggère une catégorie de campagne entièrement nouvelle | Marquer pour planification de campagne (ne pas créer ad hoc) |

### 3.2 Exécuter les promotions

Routez les candidats à la promotion vers la [SOP - Promouvoir les termes de recherche en mots-cles](<../search/Search - Promouvoir les termes de recherche en keywords.md>) pour exécution.

Points clés pour les promotions PMax vers Search :

1. Toujours ajouter en **mot-clé exact** dans Search. Les mots-clés exacts ont la priorité de routage sur PMax.
2. Vérifiez que la campagne Search a une copy d'annonce adaptée aux termes promus.
3. Vérifiez que la landing page correspond à l'intention de la requête.
4. Définissez l'enchère ou la cible initiale en cohérence avec la stratégie de la campagne Search.

### 3.3 NE PAS ajouter de mots-clés à exclure en PMax pour les termes promus

N'ajoutez pas les termes promus en exclusions PMax. La priorité de routage Google gère cela automatiquement : un mot-clé exact en Search prime sur PMax. Ajouter des exclusions en PMax risque de bloquer des variantes proches et des requêtes liées que PMax peut très bien gérer.

---

## Phase 4️⃣ : Valider le routage

### 4.1 Suivi post-promotion

Après avoir promu les termes :

1. Attendez 7 à 14 jours pour que les changements de routage prennent effet.
2. Re-extrayez les rapports sur les termes de recherche PMax et Search.
3. Confirmez que les requêtes promues apparaissent désormais dans les rapports des campagnes Search avec impressions et clics.

### 4.2 Évaluer les résultats

| Vérification | Résultat attendu | Si non rempli |
| --- | --- | --- |
| Requête promue qui apparaît en Search | Impressions et clics dans la campagne Search | Vérifier que le mot-clé est actif, non en pause, approuvé, et avec une enchère suffisante |
| Volume PMax pour la requête promue qui diminue | Moins d'impressions sur la même requête en PMax | Comportement attendu : Search récupère la priorité de routage |
| Conversions totales pour la requête promue stables ou en hausse | Conversions combinées PMax + Search >= PMax seul auparavant | Si les conversions totales chutent, investiguer : décalage de copy, problème de LP, ou enchère trop basse |
| CPA/ROAS Search sur les termes promus | Dans la cible de la campagne | Si pire que ce que faisait PMax, revoir la copy d'annonce et l'alignement LP |

### 4.3 Documenter les constats

Notez pour chaque cycle : requêtes promues (nombre), requêtes par résultat de routage (Search a récupéré / encore en PMax / split), impact total sur les conversions, et nouveaux patterns de requêtes identifiés pour le prochain cycle.

---

### Validation et critères de complétion

Cette SOP est terminée quand :

- [ ] Rapports sur les termes de recherche PMax et Search exportés et fusionnés
- [ ] Candidats à la promotion identifiés (convertissent, pertinents, volume suffisant)
- [ ] Performance des requêtes qui se chevauchent comparée entre PMax et Search
- [ ] Liste de promotion construite avec campagnes et ad groups cibles
- [ ] Promotions exécutées via la SOP - Promouvoir les termes de recherche en mots-cles
- [ ] Aucun mot-clé à exclure inutile ajouté en PMax pour les termes promus
- [ ] Validation du routage planifiée (7 à 14 jours après promotion)
- [ ] Constats documentés avec nombre et actions menées

---

### Passerelle de sortie

Une fois le routage des termes de recherche PMax terminé :

| Délai | Action |
| --- | --- |
| 7 à 14 jours | Valider le routage : confirmer que les requêtes promues apparaissent en Search |
| Cycle suivant | Re-exécuter cette SOP selon la cadence (mensuelle ou bi-hebdomadaire) |

**En cas de problème :**

| Problème | Rediriger vers |
| --- | --- |
| Mot-clé promu qui ne capte pas d'impressions en Search | Vérifier le statut du mot-clé, l'enchère, le Niveau de qualité et le type de correspondance |
| Conversions totales en baisse après promotion | Revoir la copy d'annonce et l'alignement de la landing page pour les termes promus |
| Qualité des requêtes PMax en baisse (termes non pertinents) | [SOP - Analyser les rapports de termes de recherche](<../search/Search - Analyser les rapports de termes de recherche.md>) et [SOP - Executer une analyse N-gram](<../search/Search - Exécuter une analyse N-gram.md>) |
| Requêtes marque qui apparaissent en PMax | [Référence séparation marque](<../search/Search - Séparation de marque.md>) |
| Chevauchement de requêtes qui ne se résout pas via la priorité de routage | [Référence routage des requêtes Search PMax](<Pmax - Routage des requêtes Search PMax.md>) pour des tactiques de routage avancées |

---

### FAQ

**Q : Pourquoi promouvoir en mot-clé exact ?**
R : La priorité de routage Google donne aux mots-clés exacts en campagne Search la priorité sur PMax. Ajouter une requête en mot-clé exact garantit que Search la sert, ce qui vous donne un contrôle au niveau mot-clé sur les enchères, la copy d'annonce et les landing pages.

**Q : Faut-il ajouter les termes promus en exclusions dans PMax ?**
R : Non. Google gère le routage automatiquement quand un mot-clé exact existe en Search. Ajouter des exclusions PMax risque de bloquer des variantes proches et des requêtes liées que PMax pourrait servir correctement.

**Q : Et les requêtes marque en PMax ?**
R : La défense de marque se gère via les exclusions de marque PMax et les listes de mots-clés à exclure. Voir la [Référence séparation marque](<../search/Search - Séparation de marque.md>) pour l'implémentation.

**Q : Quel rapport entre cette SOP et la SOP - Analyser les rapports de termes de recherche ?**
R : La SOP - Analyser les rapports de termes de recherche s'occupe de l'identification et de l'exclusion des termes non pertinents. Cette SOP s'occupe du côté positif : promouvoir les requêtes PMax précieuses vers Search pour le contrôle de routage. Les deux SOPs tournent sur des cadences distinctes.

---

### Documents liés

| Document | Type | Relation |
| --- | --- | --- |
| [Référence routage des requêtes Search PMax](<Pmax - Routage des requêtes Search PMax.md>) | Référence | Règles de priorité de routage des requêtes entre Search et PMax |
| [SOP - Promouvoir les termes de recherche en mots-cles](<../search/Search - Promouvoir les termes de recherche en keywords.md>) | SOP | Aval : exécute les promotions de mots-clés identifiées en Phase 2 |
| [SOP - Analyser les rapports de termes de recherche](<../search/Search - Analyser les rapports de termes de recherche.md>) | SOP | Parallèle : gère l'identification des termes non pertinents pour PMax |
| [SOP - Executer une analyse N-gram](<../search/Search - Exécuter une analyse N-gram.md>) | SOP | Parallèle : gère l'exclusion basée sur la performance pour PMax |
| [Référence séparation marque](<../search/Search - Séparation de marque.md>) | Référence | Implémentation et vérification des exclusions de marque |
| [Référence rapport sur les termes de recherche](<../search/Search - Rapport sur les termes de recherche.md>) | Référence | Définitions des colonnes, filtrage, interprétation des données |
| [SOP - Cycle d'optimisation PMax e-commerce](<Pmax - Cycle d'optimisation PMax e-commerce.md>) | SOP | Parent : cycle d'optimisation PMax e-commerce |
| [SOP - Cycle d'optimisation PMax lead gen/SaaS](<Pmax - Cycle d'optimisation PMax Lead Gen-SaaS.md>) | SOP | Parent : cycle d'optimisation PMax lead gen/SaaS |
