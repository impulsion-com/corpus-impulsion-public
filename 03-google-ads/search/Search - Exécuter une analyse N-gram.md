# Exécuter une analyse N-gram

> **Plateforme :** Google Ads
> **Catégorie :** Search
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Phase 1️⃣ : Exporter et préparer les données

### 1.1 Extraire le rapport sur les termes de recherche

1. Dans Google Ads, accédez à Campaigns > Insights and reports > Search terms.
2. Définissez la plage de dates en fonction du volume de données :

| Volume de données | Plage de dates |
| --- | --- |
| Campagnes à fort volume (1 000+ clics/mois) | 30 derniers jours |
| Campagnes à volume moyen (200-1 000 clics/mois) | 60 derniers jours |
| Campagnes à faible volume (<200 clics/mois) | 90 derniers jours |

3. Sélectionnez toutes les campagnes concernées.

### 1.2 Inclure les colonnes requises

| Colonne | Objectif |
| --- | --- |
| Search term | La requête réelle |
| Campaign | Campagne source |
| Impressions | Indicateur de volume |
| Clicks | Indicateur d'engagement |
| Cost | Répartition de la dépense |
| Conversions | Résultat de performance |
| Conversion value | Indicateur de revenu (comptes en ROAS cible uniquement) |

### 1.3 Préparer le jeu de données

1. Exportez le rapport sous forme de tableur (.csv ou .xlsx).
2. Ajoutez des colonnes calculées en fonction de votre stratégie d'enchères :
   - **Tous les comptes :** **CPA** = Cost / Conversions
   - **Comptes en ROAS cible uniquement :** **ROAS** = Conversion value / Cost, **AOV** = Conversion value / Conversions (nécessaire pour le seuil des non-convertissants en Phase 3)
3. Retirez les termes de marque du jeu de données. Analysez le trafic de marque séparément.
4. Vérifiez la taille minimale du jeu de données : 500+ termes de recherche ou 30 jours de données, selon ce qui est atteint en premier.

> ⚠️ **Alerte données insuffisantes :** Si vous avez moins de 500 termes de recherche et moins de 30 jours de données, reportez cette analyse. Les motifs N-gram ont besoin de volume pour être statistiquement significatifs.

---

## Phase 2️⃣: Extraire les N-grams

### 2.1 Découper les termes de recherche en N-grams

Pour chaque terme de recherche, extrayez :

| Type de N-gram | Définition | Exemple tiré de « best crm software free trial » |
| --- | --- | --- |
| 1-gram (unigramme) | Mots isolés | "best", "crm", "software", "free", "trial" |
| 2-gram (bigramme) | Séquences de deux mots | "best crm", "crm software", "software free", "free trial" |
| 3-gram (trigramme) | Séquences de trois mots | "best crm software", "crm software free", "software free trial" |

> 💡 **Concentrez-vous sur les 1-grams et 2-grams :** Ils couvrent la majorité des motifs actionnables. Les 3-grams sont optionnels pour la plupart des comptes.

### 2.2 Agréger les métriques par N-gram

Pour chaque N-gram unique, additionnez les métriques sur l'ensemble des termes de recherche contenant ce N-gram : total des impressions, total des clics, total du coût, total des conversions, total de la valeur de conversion.

### 2.3 Calculer l'efficacité par N-gram

Ajoutez des colonnes calculées : CPA (coût total / conversions totales) et fréquence (nombre de termes de recherche distincts contenant ce N-gram). Pour les comptes en ROAS cible, calculez aussi le ROAS (valeur de conversion totale / coût total) et l'AOV (valeur de conversion totale / conversions totales).

Filtrez les N-grams qui apparaissent dans moins de 3 termes de recherche distincts. Les N-grams à faible fréquence ne représentent pas des motifs : traitez-les comme des décisions individuelles de termes de recherche dans [SOP - Analyser les rapports de termes de recherche](<Search - Analyser les rapports de termes de recherche.md>).

---

## Phase 3️⃣: Classifier les N-grams dans deux catégories

### 3.1 Catégorie 1 : N-grams non convertissants

Les N-grams non convertissants génèrent de la dépense mais ne convertissent jamais. Ce sont des motifs fondamentalement non pertinents ou à mauvaise intention.

| Métrique | Comptes basés sur le CPA | Comptes basés sur le ROAS |
| --- | --- | --- |
| Conversions | Zéro | Zéro |
| Seuil de coût | Coût du N-gram > 2x CPA cible | Coût du N-gram > 2x AOV avec 0 conversion |
| Fréquence | Apparaît dans 3+ termes de recherche distincts | Apparaît dans 3+ termes de recherche distincts |

**Action :** Ajouter à la liste d'exclusion partagée « Non-converting N-grams ».

### 3.2 Catégorie 2 : N-grams inefficaces

Les N-grams inefficaces convertissent, mais à une efficacité inacceptable.

| Métrique | Comptes basés sur le CPA | Comptes basés sur le ROAS |
| --- | --- | --- |
| CPA/ROAS | CPA du N-gram > 1,75x CPA cible | ROAS du N-gram < 0,7x ROAS cible |
| Fréquence | Apparaît dans 3+ termes de recherche distincts | Apparaît dans 3+ termes de recherche distincts |

**Action :** Ajouter à la liste d'exclusion partagée « Inefficient N-grams ».

> 💡 **Ajustez les multiplicateurs selon votre tolérance au risque.** Les seuils de 1,75x CPA et 0,7x ROAS sont des points de départ. Abaissez les multiplicateurs (par ex. 1,5x CPA, 0,8x ROAS) pour exclure plus agressivement. Relevez-les (par ex. 2x CPA, 0,5x ROAS) pour être plus prudent et laisser passer davantage de trafic.

### 3.3 Valider avant de classifier

Pour chaque N-gram qui remplit les critères ci-dessus :

1. Passez en revue tous les termes de recherche contenant ce N-gram.
2. Vérifiez si l'un de ces termes de recherche est très performant.
3. Si le N-gram sous-performe systématiquement sur TOUS les termes : classez-le et ajoutez-le à la catégorie appropriée.
4. Si le N-gram apparaît à la fois dans de bons et de mauvais termes : ne l'excluez pas au niveau N-gram. Excluez plutôt les termes individuellement via [SOP - Analyser les rapports de termes de recherche](<Search - Analyser les rapports de termes de recherche.md>).

> ⚠️ **N'excluez jamais un N-gram présent dans un terme de recherche performant :** L'exclusion en expression exacte bloque toute la séquence de mots, y compris le bon trafic.

---

## Phase 4️⃣: Appliquer les exclusions

### 4.1 Utiliser expression exacte pour toutes les exclusions N-gram

Toutes les exclusions N-gram utilisent l'**expression exacte** (entre guillemets). L'expression exacte bloque la séquence de mots exacte tout en autorisant d'autres mots avant ou après. C'est plus ciblé qu'une exclusion en requête large (qui bloque toute recherche contenant les mots individuels dans n'importe quel ordre) et plus large qu'un mot-clé exact (qui ne bloque que la requête exacte).

### 4.2 Ajouter aux listes partagées de mots-clés à exclure

1. Dans Google Ads, accédez à Tools > Shared Library > Negative keyword lists.
2. Créez la liste « Non-converting N-grams » si elle n'existe pas.
3. Créez la liste « Inefficient N-grams » si elle n'existe pas.
4. Ajoutez tous les N-grams de la Catégorie 1 à la liste « Non-converting N-grams ».
5. Ajoutez tous les N-grams de la Catégorie 2 à la liste « Inefficient N-grams ».

> 💡 **Utilisez Google Ads Editor pour les opérations en masse :** Collez tous les N-grams d'un coup au lieu de les ajouter un par un dans l'interface web.

### 4.3 Lier les listes aux campagnes

Liez les deux listes à toutes les campagnes Search, campagnes Shopping et campagnes PMax où les motifs sont pertinents.

> 💡 **Campagnes PMax :** Liez les listes d'exclusion directement aux campagnes PMax. La prise en charge des listes de mots-clés à exclure est disponible pour PMax.

### 4.4 Vérifier l'absence de conflits

1. Vérifiez la présence d'alertes « Negative keyword conflict » dans Google Ads.
2. Confirmez que les annonces continuent de s'afficher pour les termes à forte valeur.
3. Si un conflit est détecté, retirez le N-gram en conflit et traitez les termes de recherche sous-jacents individuellement.

---

## Phase 5️⃣: Gestion des listes

### 5.1 Définir les cadences de revue par liste

| Liste | Cadence de revue | Justification |
| --- | --- | --- |
| Non-converting N-grams | Rarement (revue annuelle) | Ces motifs sont fondamentalement non pertinents. Ils ne deviennent presque jamais efficaces. |
| Inefficient N-grams | Tous les 6-12 mois (via expérience) | Certains motifs peuvent devenir efficaces après des changements de LP, des changements d'offre ou des variations saisonnières. Validez via une expérience de campagne 50/50 (voir 5.3). |

Gardez les deux listes **séparées**. Cadences de revue différentes, potentiel de réactivation différent.

### 5.2 Documenter l'analyse

Consignez chaque cycle d'analyse N-gram : date, période analysée, total des termes de recherche dans le jeu de données, N-grams extraits, N-grams non convertissants ajoutés, N-grams inefficaces ajoutés, et gaspillage mensuel estimé évité (calculé à partir du coût total des N-grams exclus).

### 5.3 Revue périodique de la liste des inefficaces (optionnel)

Vous ne pouvez pas vérifier si les N-grams exclus atteignent désormais les objectifs d'efficacité en tirant un nouveau rapport, car vous les avez exclus : ils n'ont aucune donnée récente. Validez plutôt via une expérience contrôlée.

**Tous les 6-12 mois (optionnel) :**

1. Créez une expérience de campagne 50/50 sur une campagne à fort volume.
2. Dans le bras expérimental, déliez la liste d'exclusion « Inefficient N-grams ».
3. Faites tourner l'expérience pendant 4-6 semaines pour accumuler des données.
4. Analysez les résultats :
   - Si le bras expérimental performe dans les objectifs d'efficacité : les N-grams inefficaces se sont améliorés. Retirez-les de la liste (ou déliez la liste entièrement si la performance est globalement acceptable).
   - Si le bras expérimental performe moins bien : gardez la liste liée. Les N-grams sont toujours inefficaces.
5. Documentez le résultat de l'expérience et mettez à jour la liste d'exclusion en conséquence.

> 💡 **Cette étape est optionnelle.** La plupart des N-grams inefficaces le restent. Ne lancez cette expérience que si vous suspectez que des changements de page de destination, des changements d'offre ou des évolutions du marché ont pu améliorer des motifs précédemment exclus.

---

### Validation et critères de complétion

Cette SOP est terminée quand :

- [ ] Données de termes de recherche exportées et nettoyées (termes de marque retirés, métriques calculées)
- [ ] N-grams extraits (1-grams et 2-grams minimum) avec métriques agrégées
- [ ] N-grams classés dans les catégories non convertissants et inefficaces selon les seuils définis
- [ ] Tous les N-grams classés validés contre les termes de recherche performants
- [ ] Exclusions ajoutées aux bonnes listes partagées au format expression exacte
- [ ] Les deux listes liées à toutes les campagnes appropriées
- [ ] Aucun conflit de mot-clé négatif détecté après application
- [ ] Journal d'analyse mis à jour avec les décomptes et la réduction de gaspillage estimée

---

### Passerelle de sortie

Une fois l'analyse N-gram terminée :

| Délai | Action |
| --- | --- |
| Immédiatement | Vérifier que les annonces s'affichent toujours pour les termes à forte valeur (pas de sur-exclusion) |
| 7 jours | Contrôler par sondage le volume d'impressions : confirmer l'absence de baisse significative due aux exclusions |
| Prochain cycle planifié | Relancer l'analyse N-gram selon la cadence (hebdomadaire/bimensuelle/mensuelle) |
| Tous les 6-12 mois | Revoir la liste « Inefficient N-grams » via une expérience de campagne 50/50 (voir Phase 5.3) |

**En cas de problème :**

| Problème | Rediriger vers |
| --- | --- |
| Exclusion N-gram qui bloque du trafic souhaité | Retirer le N-gram, exclure les termes individuellement via [SOP - Analyser les rapports de termes de recherche](<Search - Analyser les rapports de termes de recherche.md>) |
| Conflit de mot-clé à exclure détecté | [Negative Keyword Reference](<Search - Mots-clés à exclure.md>) pour la résolution des conflits |
| Besoin d'exclure individuellement des termes de recherche non pertinents | [SOP - Analyser les rapports de termes de recherche](<Search - Analyser les rapports de termes de recherche.md>) |
| Les termes de recherche indiquent un décalage avec la page de destination | [SOP - Auditer et optimiser une page de destination existante](<../../02-site-web/audit/Audit - Auditer et optimiser une LP existante.md>) |

---

### FAQ

**Q : Pourquoi l'expression exacte pour les exclusions N-gram ?**
R : L'expression exacte bloque la séquence de mots exacte tout en autorisant d'autres mots avant ou après. Une exclusion en requête large bloque toute recherche contenant N'IMPORTE LEQUEL des mots individuels dans n'importe quel ordre (sur-exclut). Le mot-clé exact ne bloque que la requête exacte (sous-exclut). L'expression exacte est le juste milieu correct pour les motifs de séquences de mots.

**Q : Pourquoi deux listes séparées plutôt qu'une seule ?**
R : Les N-grams non convertissants ne convertissent jamais et nécessitent rarement d'être revus. Les N-grams inefficaces convertissent mais coûtent trop cher, et pourraient devenir efficaces après des améliorations de LP, des changements d'offre ou des variations saisonnières. Les garder séparés vous permet de revoir périodiquement la liste des inefficaces (via expérience) sans avoir à trier des motifs définitivement non pertinents.

**Q : Puis-je appliquer l'analyse N-gram à Shopping et PMax ?**
R : Oui. Les termes de recherche Shopping et les termes de recherche PMax prennent tous deux en charge l'analyse N-gram. Liez les mêmes listes d'exclusion à ces campagnes là où les motifs sont pertinents.

**Q : Que faire si un N-gram apparaît à la fois dans de bons et de mauvais termes de recherche ?**
R : Ne l'excluez pas. Une exclusion en expression exacte bloque TOUS les termes de recherche contenant cette séquence, y compris les bons. Traitez les N-grams à performance mixte au niveau du terme individuel via [SOP - Analyser les rapports de termes de recherche](<Search - Analyser les rapports de termes de recherche.md>).

**Q : Quel est le lien entre cette SOP et la SOP - Analyser les rapports de termes de recherche ?**
R : La SOP - Analyser les rapports de termes de recherche gère l'identification des termes non pertinents (recherche de mots sans rapport avec votre activité) et les candidats à la promotion. Cette SOP gère toute l'exclusion basée sur la performance via les données N-gram agrégées. Les deux SOP tournent sur des cadences distinctes et produisent des sorties différentes.

---

### Erreurs fréquentes

| Erreur | Pourquoi ça arrive | Comment l'éviter |
| --- | --- | --- |
| Exclure un N-gram présent dans des termes performants | Sauter la validation en Phase 3.3 | Passer en revue TOUS les termes de recherche contenant un N-gram avant d'exclure |
| Utiliser la requête large pour des exclusions N-gram multi-mots | Mauvaise compréhension du comportement des types de correspondance négatifs | Pour les exclusions 2-gram et 3-gram, utilisez l'expression exacte. La requête large est acceptable pour les exclusions 1-gram (Voir : [Negative Keyword Reference](<Search - Mots-clés à exclure.md>)) |
| Combiner les deux listes en une seule | La commodité au détriment de la clarté | Garder les listes non convertissants et inefficaces séparées dès le premier jour |
| Analyser une plage de dates trop courte | Impatience ou envie de résultats rapides | Utiliser 30-90 jours selon le volume |
| Ne jamais revoir la liste des inefficaces | Traiter les exclusions comme permanentes | Lancer une expérience 50/50 tous les 6-12 mois pour valider (voir Phase 5.3) |
| Inclure les termes de marque dans l'analyse | Ne pas filtrer le jeu de données en Phase 1.3 | Toujours retirer les termes de marque avant d'extraire les N-grams |
| Agir sur des N-grams à faible fréquence | Traiter un motif trouvé dans 1-2 termes comme systématique | Exiger 3+ termes de recherche distincts par N-gram avant de classer |

---

### Documents liés

| Document | Type | Relation |
| --- | --- | --- |
| [N-gram Analysis Reference](<Search - Analyse N-gram.md>) | Reference | Méthodes d'extraction, seuils, catégorisation (toutes les phases) |
| [Negative Keyword Reference](<Search - Mots-clés à exclure.md>) | Reference | Règles de match type, formatage, résolution des conflits (Phase 4) |
| [Search Term Report Reference](<Search - Rapport sur les termes de recherche.md>) | Reference | Export du STR et définitions des colonnes (Phase 1) |
| [SOP - Analyser les rapports de termes de recherche](<Search - Analyser les rapports de termes de recherche.md>) | SOP | Amont : identifie les termes non pertinents à partir des données de termes de recherche. L'exclusion basée sur la performance est gérée par cette SOP |
| [SOP - Rechercher des mots-cles](<Search - Rechercher des keywords.md>) | SOP | Amont : expansion de mots-clés qui génère de nouveaux motifs de termes de recherche |
| [SOP - Promouvoir les termes de recherche en mots-cles](<Search - Promouvoir les termes de recherche en keywords.md>) | SOP | Parallèle : promeut les bons termes tandis que cette SOP exclut les mauvais motifs |
