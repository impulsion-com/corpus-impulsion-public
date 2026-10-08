# Revoir et optimiser la structure de campagne

> **Plateforme :** Google Ads
> **Catégorie :** Strategie
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Cette SOP vous guide à travers l'évaluation de la structure de vos campagnes Search, l'identification des moments où il faut consolider ou séparer des campagnes, la résolution des écarts de pertinence au niveau du groupe d'annonces et la vérification que le volume d'impressions est distribué efficacement entre les groupes d'annonces.

> ❓ **La question clé :** Votre structure de campagne actuelle aide-t-elle ou nuit-elle à la performance, et quels changements structurels précis vont débloquer de meilleurs résultats ?

La structure de campagne se dégrade dans le temps. Ce qui démarre comme une architecture propre accumule des campagnes redondantes, des budgets fragmentés et des groupes d'annonces où la cohérence mot-clé-vers-annonce a dérivé. Cette SOP fournit une revue structurelle trimestrielle qui détecte ces problèmes avant qu'ils ne se transforment en chute de performance.

---

## Ce que cette SOP ne couvre PAS

Cette SOP ne couvre **pas :**

- Optimiser les enchères, budgets ou stratégies d'enchères (Voir : [SOP - Gerer les campagnes limitees par le budget](<../encheres/Enchères - Répartir le budget entre les campagnes.md>))
- Reconstruire une campagne à zéro (Voir : [SOP - Lancer une campagne Search](<../search/Search - Lancer une campagne Search.md>))
- Couvrir les structures de campagnes Shopping, PMax ou Display (chacune a son propre modèle structurel)
- Fournir le cadre conceptuel expliquant pourquoi la structure compte (Voir : [Campagne Search moderne](<../search/Search - Campagne Search moderne.md>))
- Exécuter un cycle d'optimisation complet sur tous les leviers (Voir : [SOP - Cycle d'optimisation campagne Search](<../search/Search - Cycle d'optimisation campagne Search.md>))

---

## Quand utiliser cette SOP

Exécuter cette SOP à une cadence trimestrielle. Hors cadence, l'exécuter quand :

| Déclencheur | Pourquoi |
|---------|-----|
| Une campagne fait moins de 30 conversions/mois sur 2+ mois consécutifs | Données insuffisantes pour que le stratégies d'enchères intelligentes optimise efficacement |
| Vous découvrez du ciblage redondant entre campagnes | Les campagnes se concurrencent dans la même enchère |
| Le budget est fragmenté sur 5+ campagnes à intention similaire | Les petits budgets affament chaque campagne en données d'apprentissage |
| Une campagne très performante est limitée par le budget et partage l'allocation avec des campagnes faibles | Les bons performeurs sont tirés vers le bas par le mélange structurel |
| Après des changements majeurs sur le compte (nouvelle gamme, sortie de marché, refonte de marque) | La structure doit refléter la réalité business actuelle |

---

## Avant de commencer

### Prérequis

- Accès au compte Google Ads avec droits d'édition complets
- Données de performance des 90 derniers jours (conversions, CPA/ROAS, coût, taux d'impressions)
- Données de performance groupe d'annonces sur 90 jours (impressions, clics, conversions, Niveau de qualité)
- Données Niveau de qualité au niveau mot-clé avec décomposition des sous-composants
- Rapports de termes de recherche des 30 derniers jours
- Budgets quotidiens actuels par campagne

### Documents de référence (à garder ouverts)

| Document | Utilisé pour |
|----------|----------|
| [Campagne Search moderne](<../search/Search - Campagne Search moderne.md>) | Philosophie consolidation-d'abord et trois règles d'or |
| [Scaling de campagne](<Strategie - Scaling de campagne.md>) | Méthode des axes de scaling pour les décisions de split |
| [SOP - Gerer les campagnes limitees par le budget](<../encheres/Enchères - Répartir le budget entre les campagnes.md>) | Référence méthode Copier-Coller |
| [SOP - Cycle d'optimisation campagne Search](<../search/Search - Cycle d'optimisation campagne Search.md>) | Aiguillage post-restructuration |
| [Structure des ad groups Search](<../search/Search - Structure des ad groups Search.md>) | Décisions de restructuration groupe d'annonces en Phase 4 |
| [SOP - Rediger des RSA performantes](<../search/Search - Rédiger des RSA performantes.md>) | Création de RSA en Phase 4 pour les nouveaux groupes d'annonces |

---

## Cadre d'exécution

| Phase | Objectif | Résultat |
|-------|---------|--------|
| **Phase 1️⃣ : Analyse au niveau campagne** | Évaluer le volume de conversion, l'utilisation budget et le chevauchement de ciblage par campagne | Instantané de performance, campagnes marquées pour action |
| **Phase 2️⃣ : Évaluation de consolidation** | Identifier les campagnes à fusionner | Plan de consolidation avec correspondance vers la campagne cible |
| **Phase 3️⃣ : Évaluation de split** | Identifier les campagnes à séparer via la méthode Copier-Coller | Plan de split avec définitions de segments et allocation budget |
| **Phase 4️⃣ : Restructuration groupe d'annonces** | Résoudre les écarts mot-clé-vers-annonce et les regroupements Niveau de qualité | Déplacements d'groupes d'annonces, nouveaux groupes d'annonces créés, RSA mises à jour |
| **Phase 5️⃣ : Vérification de la distribution de volume** | Vérifier que les impressions sont concentrées dans des groupes d'annonces viables | Ad groups à faible volume mis en pause ou fusionnés |
| **Phase 6️⃣ : Documentation et planification** | Enregistrer tous les changements, poser des points de surveillance | Journal des changements, plan de monitoring sur 30 jours |

---

## Phase 1️⃣ : Analyse au niveau campagne

### 1.1 Construire l'instantané de performance des campagnes

Récupérer les données des 90 derniers jours et remplir ce tableau pour chaque campagne Search active :

| Campagne | Conversions mensuelles (moy) | CPA ou ROAS | IS perdu (Budget) % | IS perdu (Classement) % | Budget quotidien | Utilisation budget % | Ad groups actifs |
|----------|--------------------------|-------------|---------------------|-------------------|--------------|---------------------|------------------|
| | | | | | | | |

Utilisation budget = (dépense réelle / budget quotidien) x 100, moyennée sur 90 jours.

### 1.2 Marquer les campagnes pour revue structurelle

Appliquer ces marqueurs à chaque campagne :

| Marqueur | Condition | Implication |
|------|-----------|-------------|
| **Faible volume** | Moins de 30 conversions/mois sur 2+ mois ET aucune stratégie d'enchère portefeuille n'est utilisée | Le stratégies d'enchères intelligentes ne peut pas optimiser de façon fiable. Une stratégie portefeuille pourrait fournir le volume nécessaire |
| **Affamée en budget** | IS perdu (Budget) au-dessus de 20% ET la campagne est rentable | Une correction structurelle peut libérer du budget sans augmenter la dépense |
| **Ciblage redondant** | Deux campagnes ou plus ciblent les mêmes thèmes de mots-clés ou segments d'audience | Concurrence interne, données fragmentées |
| **Performance mixte** | La campagne contient des groupes d'annonces avec un écart de CPA de plus de 3x entre meilleur et pire | Les performants subventionnent les sous-performants |
| **Sous-utilisée** | Utilisation budget sous 50% pendant 30+ jours | Budget alloué non dépensé, opportunité de réallocation |

### 1.3 Vérifier le chevauchement de ciblage

Comparer les listes de mots-clés entre campagnes. Deux campagnes se chevauchent quand :

1. Elles contiennent les mêmes mots-clés ou variantes proches dans des types de correspondance différents
2. Leurs rapports de termes de recherche montrent 20%+ de chevauchement sur les requêtes matchées
3. Elles ciblent les mêmes segments géographiques et d'audience avec des thèmes d'intention similaires

Documenter chaque paire de chevauchement avec l'estimation du gaspillage causé par la concurrence interne.

> 💡 **Preuve par les termes de recherche :** Récupérer les rapports de termes de recherche pour chaque campagne et comparer les 100 premières requêtes par coût. Les requêtes apparaissant dans plusieurs rapports sont une preuve directe de concurrence interne.

**Résultat :** Instantané de performance des campagnes avec marqueurs appliqués et paires de chevauchement documentées.

---

## Phase 2️⃣ : Évaluation de consolidation

### 2.1 Identifier les candidates à la consolidation

Une campagne est candidate à la consolidation quand elle remplit un ou plusieurs critères :

| Critère | Seuil | Pourquoi la consolidation aide |
|-----------|-----------|------------------------|
| Faible nombre de conversions mensuelles | Moins de 30/mois | La fusion fournit le volume combiné nécessaire au stratégies d'enchères intelligentes |
| Ciblage redondant | 20%+ de chevauchement de requêtes avec une autre campagne | Élimine la concurrence interne, concentre les données |
| Budget fragmenté | Budgets quotidiens faibles sur des campagnes à intention et objectifs similaires | Le budget combiné permet une meilleure couverture d'enchère et un apprentissage plus rapide |
| Stratégie d'enchère et cibles identiques | Même cible CPA cible/ROAS cible, même stratégie | Aucune raison structurelle de les garder séparées |
| Même thème créatif | Les mots-clés des deux campagnes pourraient être servis par la même RSA | La consolidation ne sacrifie pas la pertinence |

> ⚠️ **Ne pas consolider de campagnes ayant des raisons structurelles valides de séparation :** Raisons valides : cibles géographiques différentes avec CPA différents, gammes produit nécessitant des landing pages différentes, types de stratégie d'enchère différents, ou isolation budgétaire imposée (ex. brand vs. non-brand).

> 💡 **Alternative à la consolidation :** Si les campagnes partagent le même type de stratégie d'enchère et des cibles similaires mais ont des raisons structurelles valides de rester séparées (landing pages différentes, thèmes créatifs différents), envisager de les lier à une **stratégie d'enchère portefeuille** plutôt que de fusionner. Une stratégie portefeuille mutualise les données de conversion entre campagnes, donnant au stratégies d'enchères intelligentes le volume nécessaire sans perdre la séparation structurelle. Voir [SOP - Configurer les strategies d'encheres portefeuille](<../encheres/Enchères - Configurer les stratégies d'enchères de portefeuille.md>).

### 2.2 Planifier la consolidation

Pour chaque paire ou groupe de consolidation :

1. Sélectionner la **campagne survivante** : celle avec le plus d'historique de conversion et les meilleurs Niveau de qualités
2. Mapper quels groupes d'annonces de la campagne absorbée vont migrer dans la survivante
3. Vérifier les conflits de mots-clés : si les deux campagnes ont le même mot-clé, garder la version au Niveau de qualité le plus haut
4. Vérifier les conflits de mots-clés à exclure : examiner les listes négatives sur les deux campagnes. Après fusion, les négatifs de la campagne absorbée peuvent bloquer des requêtes performantes. Retirer tout négatif qui entre en conflit avec un mot-clé actif dans la campagne consolidée
5. Planifier le budget : la campagne survivante reçoit le budget combiné de toutes les campagnes fusionnées
6. Vérifier que la stratégie d'enchère de la campagne survivante peut absorber le volume accru

### 2.3 Exécuter la consolidation

1. **Dans Google Ads Editor :** Copier les groupes d'annonces de la campagne absorbée vers la survivante
2. **Mettre en pause** (sans supprimer) les groupes d'annonces de la campagne absorbée après la copie
3. **Augmenter le budget quotidien** de la campagne survivante pour égaler le total combiné
4. **Garder la campagne absorbée en pause** pendant 30 jours comme filet de sécurité
5. **Supprimer la campagne absorbée** uniquement après 30 jours de performance stable sur la survivante

> 💡 **Pause, pas suppression :** Garder la campagne absorbée en pause pendant 30 jours permet de revenir en arrière en cas de chute inattendue. La suppression est définitive.

**Résultat :** Plan de consolidation exécuté, campagnes absorbées mises en pause, budgets combinés.

---

## Phase 3️⃣ : Évaluation de split

### 3.1 Identifier les candidates au split

Une campagne est candidate au split quand :

| Critère | Signal | Pourquoi le split aide |
|-----------|--------|---------------------|
| Niveaux d'intention divergents | Ad groups servant des requêtes informationnelles et transactionnelles dans la même campagne | Des intentions différentes ont besoin d'enchères, budgets et landing pages différents |
| Limitée par le budget avec performance mixte | IS perdu (Budget) au-dessus de 20% ET écart CPA de 3x+ entre meilleurs et pires groupes d'annonces | Les performants sont affamés parce que les sous-performants consomment le budget partagé |
| Niveaux de performance différents | Certains groupes d'annonces convertissent à la moitié du CPA / au double du ROAS d'autres avec 90+ jours de données | Des budgets indépendants permettent de financer les gagnants et contenir les perdants |
| Divergence géographique | La performance varie fortement selon la localisation au sein de la même campagne | Les splits par localisation permettent budgets et cibles géo-spécifiques |

> 💡 **Avant de splitter, envisager les alternatives :**
> - **Stratégie d'enchère portefeuille :** Si le problème est que la performance mixte empêche le stratégies d'enchères intelligentes de fixer des enchères appropriées, une stratégie portefeuille entre campagnes peut partager les données de conversion sans split complet.
> - **Budget partagé :** Si le problème est l'allocation entre segments, un budget partagé laisse Google allouer dynamiquement sans séparation structurelle.
> Ne procéder au split que quand stratégies portefeuille et budgets partagés ne peuvent pas adresser la divergence de performance.

> ⚠️ **Ne splitter que quand les deux campagnes résultantes auront assez de volume :** Chaque campagne a besoin d'au moins 15 conversions par mois pour soutenir le stratégies d'enchères intelligentes. Splitter une campagne à 40 conversions en deux à 20 est viable. Splitter une campagne à 20 en deux à 10 crée deux campagnes affamées.

### 3.2 Exécuter le split avec la méthode Copier-Coller

La méthode Copier-Coller préserve l'apprentissage du segment fort en le gardant dans la campagne d'origine et en déplaçant le segment faible.

1. **Copier la campagne entière** dans Google Ads Editor (Copier > Coller comme nouvelle campagne)
2. **Dans la campagne D'ORIGINE :** Mettre en pause le segment faible (groupes d'annonces, mots-clés ou localisations à séparer). La campagne d'origine conserve son historique complet, ses Niveau de qualités et l'apprentissage de la stratégie d'enchère pour le segment fort
3. **Dans la NOUVELLE campagne (copiée) :** Mettre en pause le segment fort. La nouvelle campagne fait tourner le segment faible indépendamment
4. **Définir des budgets indépendants :** Allouer une part plus élevée à la campagne d'origine (performants), une part plus basse à la nouvelle (segment faible testé indépendamment)
5. **Garder les paramètres de stratégie d'enchère identiques** dans les deux campagnes au départ. Ajuster les cibles seulement après 2-4 semaines de données indépendantes

> 💡 **Pourquoi déplacer le segment FAIBLE hors de l'original :** La campagne d'origine préserve son historique de conversion et l'apprentissage de la stratégie d'enchère. Déplacer le segment fort réinitialiserait l'apprentissage sur vos meilleurs performeurs, exactement l'inverse de ce qu'on veut.

### 3.3 Surveillance post-split

| Délai | Action |
|-----------|--------|
| Jour 1-3 | Vérifier que les deux campagnes diffusent sans erreur |
| Semaine 1 | Période d'apprentissage : aucun changement sauf si une campagne ne diffuse pas du tout |
| Semaines 2-3 | Comparer la performance entre les deux campagnes vs. références pré-split |
| Semaine 4 | Évaluer : la campagne d'origine performe-t-elle mieux sans le poids du segment faible ? |
| Décision semaine 4 | Si la campagne du segment faible n'est pas rentable après 4 semaines, la mettre en pause et réallouer le budget |

**Résultat :** Plan de split exécuté, budgets indépendants définis, calendrier de surveillance créé.

---

## Phase 4️⃣ : Restructuration groupe d'annonces

> ↪️ **Référence document :** Les décisions de restructuration groupe d'annonces sont régies par [Structure des ad groups Search](<../search/Search - Structure des ad groups Search.md>). Règle de base : consolider par défaut, ne splitter que si une seule RSA ne peut pas servir crédiblement tous les mots-clés (le test de l'annonce unique). Utiliser DKI, personnalisateurs d'annonces et URLs finales au niveau mot-clé avant de splitter.

### 4.1 Auditer la pertinence mot-clé-vers-annonce

Pour chaque groupe d'annonces avec 100+ impressions mensuelles, vérifier que les mots-clés correspondent au message de la RSA :

1. Récupérer la liste de mots-clés de l'groupe d'annonces
2. Lire les headlines et descriptions de la RSA
3. Se demander : "Cette RSA parle-t-elle crédiblement à chaque mot-clé de cet groupe d'annonces ?"

| Si... | Alors... |
|-------|---------|
| Tous les mots-clés partagent la même intention et la RSA y répond | Pas d'action |
| Certains mots-clés représentent une intention ou catégorie produit différente | Déplacer ces mots-clés vers un nouvel groupe d'annonces avec une RSA dédiée |
| Les mots-clés correspondent à la RSA mais le sous-composant Niveau de qualité "Pertinence de l'annonce" est en dessous de la moyenne | La RSA a besoin de headlines spécifiques au mot-clé, pas d'une restructuration d'groupe d'annonces |

### 4.2 Identifier les regroupements Niveau de qualité

Regrouper les mots-clés par Niveau de qualité pour repérer les schémas structurels :

| Plage QS | Cause structurelle typique | Correction structurelle |
|----------|------------------------|----------------|
| QS 7-10 | Ad group bien aligné | Aucun changement nécessaire |
| QS 5-6 | Écart de pertinence modéré | Vérifier si splitter en groupes d'annonces plus serrés améliore la Pertinence de l'annonce |
| QS 1-4 | Décalage sévère entre mot-clé, annonce et landing page | Déplacer le mot-clé dans un groupe d'annonces dédié avec RSA et landing page alignées sur l'intention |

> ↪️ **Exécution amélioration QS :** Cette phase identifie les causes structurelles d'un Niveau de qualité bas. Pour le processus complet d'amélioration QS, aiguiller vers [Améliorer le Niveau de qualité](<../search/Search - Améliorer le Niveau de qualité.md>).

### 4.3 Exécuter les déplacements d'groupe d'annonces

Pour chaque mot-clé à déplacer :

1. Créer le nouvel groupe d'annonces dans la même campagne (ou la campagne appropriée si consolidation/splits ont changé la structure)
2. Rédiger une nouvelle RSA adaptée à l'intention du regroupement de mots-clés
3. Régler l'URL de landing page sur la page la plus pertinente pour cette intention
4. Mettre en pause le mot-clé dans l'ancien groupe d'annonces
5. Ajouter le mot-clé au nouvel groupe d'annonces
6. Copier les mots-clés à exclure pertinents depuis l'ancien groupe d'annonces

> ⚠️ **Ne pas déplacer plus de 30% des mots-clés d'une campagne en un seul tour :** Les déplacements à grande échelle déstabilisent l'apprentissage de la stratégie d'enchère. Si plus de 30% des mots-clés ont besoin d'être restructurés, exécuter en deux tours espacés de 2 semaines.

**Résultat :** Écarts mot-clé-vers-annonce résolus, nouveaux groupes d'annonces créés avec RSA dédiées.

---

## Phase 5️⃣ : Vérification de la distribution de volume

### 5.1 Récupérer les données d'impressions par groupe d'annonces

Exporter les 90 derniers jours de données groupe d'annonces. Se concentrer sur :

| Métrique | Cible | Action si en deçà |
|--------|--------|-----------------|
| Impressions mensuelles par groupe d'annonces | 4 000+ (1 000/semaine) | Évaluer pour fusion ou pause |
| Clics mensuels par groupe d'annonces | 50+ | Sous 50 clics = quasiment aucun signal d'apprentissage |
| Conversions mensuelles par groupe d'annonces | 1+ | Les groupes d'annonces à zéro conversion après 90 jours nécessitent un diagnostic |

> ↪️ **Source du seuil de volume :** 1 000 impressions/semaine (4 000/mois) par groupe d'annonces est le minimum pour des données exploitables au niveau asset. Voir [Campagne Search moderne](<../search/Search - Campagne Search moderne.md>).

### 5.2 Classer les groupes d'annonces par viabilité

| Classification | Critères | Action |
|----------------|----------|--------|
| **En bonne santé** | 4 000+ impressions mensuelles, convertit | Pas d'action |
| **Faible volume, convertit** | Sous 4 000 impressions mensuelles mais génère des conversions | Fusionner dans un groupe d'annonces lié à intention compatible si possible |
| **Faible volume, ne convertit pas** | Sous 4 000 impressions mensuelles, zéro conversion sur 90 jours | Mettre en pause sauf si les mots-clés sont stratégiquement importants pour la couverture |
| **Fort volume, ne convertit pas** | 4 000+ impressions mensuelles, zéro conversion sur 90 jours | Diagnostiquer : landing page, intention de mot-clé ou pertinence d'annonce. Ne pas mettre en pause sans investigation |

### 5.3 Fusionner les groupes d'annonces à faible volume

Lors de la fusion :

1. Sélectionner l'groupe d'annonces receveur (celui avec plus d'historique et de meilleurs Niveau de qualités)
2. Déplacer les mots-clés du faible volume vers le receveur
3. Vérifier que la RSA du receveur couvre toujours l'intention des mots-clés entrants
4. Sinon, mettre à jour les headlines de la RSA pour inclure la nouvelle intention
5. Mettre en pause l'groupe d'annonces vidé après tout déplacement

### 5.4 Vérifier la concentration de volume

Après les fusions, recalculer : quel pourcentage des impressions totales de la campagne est concentré dans les groupes d'annonces à 4 000+ impressions mensuelles ?

| Concentration | Évaluation |
|---------------|------------|
| 90%+ des impressions dans des groupes d'annonces en bonne santé | Bien. La structure soutient une optimisation efficace |
| 70-89% | Acceptable. Surveiller les groupes d'annonces à faible volume pour future consolidation |
| Sous 70% | Structure trop fragmentée. Revoir la Phase 4 pour fusions supplémentaires |

**Résultat :** Ad groups à faible volume fusionnés ou mis en pause, concentration d'impressions vérifiée.

---

## Phase 6️⃣ : Documentation et planification

### 6.1 Enregistrer tous les changements structurels

Documenter chaque changement réalisé pendant cette revue :

| Type de changement | Détails à enregistrer |
|-------------|-------------------|
| Campagne consolidée | Quelles campagnes fusionnées, nom de la survivante, budget combiné |
| Campagne splittée | Campagne d'origine, nouvelle campagne, définitions de segments, allocation budget |
| Ad group créé | Campagne, nom de l'groupe d'annonces, regroupement de mots-clés, résumé RSA |
| Ad group fusionné | Ad group source, groupe d'annonces receveur, mots-clés déplacés |
| Ad group mis en pause | Campagne, nom de l'groupe d'annonces, raison de la pause |
| Mots-clés déplacés | Depuis l'groupe d'annonces, vers l'groupe d'annonces, nombre, raison |

### 6.2 Poser les points de surveillance

| Échéance | Vérification |
|-----------|-------|
| Semaine 1 | Toutes les campagnes et groupes d'annonces diffusent, aucune erreur ni rejet |
| Semaine 2 | Les stratégies d'enchère sont sorties de la période d'apprentissage, les impressions affluent comme prévu |
| Semaine 4 | Comparer la performance vs. références pré-restructuration : CPA, ROAS, volume de conversion |
| Semaine 8 | Évaluation complète : les changements ont-ils amélioré ou nui à la performance globale du compte ? |

### 6.3 Programmer la prochaine revue trimestrielle

Poser un rappel calendrier pour la prochaine revue structurelle dans 90 jours. Inclure les métriques de référence de cette revue pour comparaison.

**Résultat :** Journal des changements complété, points de surveillance posés, prochaine revue planifiée.

---

## Validation et critères de complétion

Cette SOP est terminée quand :

- [ ] Instantané de performance au niveau campagne construit avec marqueurs appliqués (Phase 1)
- [ ] Chevauchement de ciblage documenté pour toutes les paires de campagnes (Phase 1)
- [ ] Candidates à la consolidation identifiées et fusionnées dans les campagnes survivantes (Phase 2)
- [ ] Candidates au split identifiées et séparées via la méthode Copier-Coller (Phase 3)
- [ ] Pertinence mot-clé-vers-annonce auditée et écarts résolus (Phase 4)
- [ ] Clusters Niveau de qualité identifiés et corrections structurelles appliquées (Phase 4)
- [ ] Ad groups à faible volume fusionnés ou mis en pause (Phase 5)
- [ ] Concentration d'impressions vérifiée à 70%+ dans les groupes d'annonces en bonne santé (Phase 5)
- [ ] Tous les changements documentés avec points de surveillance posés (Phase 6)
- [ ] Prochaine revue trimestrielle programmée (Phase 6)

---

## Passerelle de sortie

Après avoir terminé la revue structurelle :

| Délai | Action |
|-----------|--------|
| Semaine 1-2 | Surveiller les campagnes restructurées pendant la période d'apprentissage, sans changement |
| Semaine 3-4 | Comparer aux références pré-restructuration, signaler les anomalies |
| Semaine 4+ | Reprendre la cadence d'optimisation normale sur la nouvelle structure |
| 90 jours | Relancer cette SOP pour la prochaine revue trimestrielle |

**En cas de problème après restructuration :**

| Problème | Rediriger vers |
|-------|----------|
| La campagne consolidée sous-performe vs. référence pré-fusion | Revenir en arrière : réactiver la campagne absorbée en pause, mettre en pause les groupes d'annonces fusionnés |
| Les campagnes splittées manquent de volume des deux côtés | Re-fusionner via le processus de consolidation en Phase 2 |
| Limitée par le budget après restructuration | [SOP - Gerer les campagnes limitees par le budget](<../encheres/Enchères - Répartir le budget entre les campagnes.md>) |
| Le Niveau de qualité chute après les déplacements de mots-clés | [Améliorer le Niveau de qualité](<../search/Search - Améliorer le Niveau de qualité.md>) |
| Anomalie de performance pendant la période de surveillance | [SOP - Investiguer les anomalies de performance](<../optimisation/Optimisation - Investiguer les anomalies de performance.md>) |

---

## Erreurs fréquentes

| Erreur | Pourquoi ça arrive | Comment l'éviter |
|---------|----------------|--------------|
| Splitter des campagnes sans volume suffisant | Croire que la séparation améliore toujours la performance | Vérifier que les deux campagnes résultantes auront 15+ conversions/mois avant de splitter |
| Consolider des campagnes aux cibles légitimement différentes | Traiter tout chevauchement comme du gaspillage | Vérifier les raisons structurelles valides (géos, produits, stratégies) avant de fusionner |
| Déplacer le segment fort hors de la campagne d'origine | Mauvaise compréhension du segment à déplacer | Toujours déplacer le segment FAIBLE. La campagne d'origine préserve historique et apprentissage |
| Restructurer plus de 30% des mots-clés d'un coup | Vouloir tout corriger en une passe | Exécuter par tours de 30% max, espacés de 2 semaines |
| Sauter la période de surveillance | Présumer que les changements ont marché | Exécuter le calendrier complet de 8 semaines avant tout changement structurel supplémentaire |
| Supprimer les campagnes en pause trop tôt | Volonté d'avoir un compte propre | Garder les campagnes absorbées en pause 30 jours comme filet de sécurité |

---

## Documents liés

| Document | Type | Relation |
|----------|------|--------------|
| [Campagne Search moderne](<../search/Search - Campagne Search moderne.md>) | Modèle Mental | Philosophie consolidation-d'abord et trois règles d'or |
| [Scaling de campagne](<Strategie - Scaling de campagne.md>) | Modèle Mental | Méthode des axes de scaling pour décider entre split et consolidation |
| [SOP - Gerer les campagnes limitees par le budget](<../encheres/Enchères - Répartir le budget entre les campagnes.md>) | SOP | Référence méthode Copier-Coller, résolution de contrainte budgétaire |
| [SOP - Cycle d'optimisation campagne Search](<../search/Search - Cycle d'optimisation campagne Search.md>) | SOP | Aiguillage post-restructuration |
| [Améliorer le Niveau de qualité](<../search/Search - Améliorer le Niveau de qualité.md>) | Playbook | Aiguillage amélioration QS après changements structurels |
| [SOP - Lancer une campagne Search](<../search/Search - Lancer une campagne Search.md>) | SOP | Quand la restructuration révèle le besoin d'une nouvelle campagne |
| [Structure des ad groups Search](<../search/Search - Structure des ad groups Search.md>) | Modèle Mental | Principes de consolidation vs. segmentation des groupes d'annonces |
| [SOP - Configurer les strategies d'encheres portefeuille](<../encheres/Enchères - Configurer les stratégies d'enchères de portefeuille.md>) | SOP | Alternative à la consolidation pour les campagnes affamées en volume |
| [SOP - Rediger des RSA performantes](<../search/Search - Rédiger des RSA performantes.md>) | SOP | Création de RSA quand de nouveaux groupes d'annonces sont construits en Phase 4 |
