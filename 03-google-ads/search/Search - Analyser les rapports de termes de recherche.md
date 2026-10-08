# Analyser les rapports de termes de recherche

> **Plateforme :** Google Ads
> **Catégorie :** Search
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Phase 1️⃣ : Exporter les données de termes de recherche

### 1.1 Extraire le rapport sur les termes de recherche

1. Dans Google Ads, accédez à Campaigns > Insights and reports > Search terms.
2. Réglez la plage de dates sur votre période d'analyse.

| Cadence | Plage de dates |
| --- | --- |
| Hebdomadaire | 7 derniers jours |
| Bimensuelle | 14 derniers jours |
| Mensuelle | 30 derniers jours |

3. Sélectionnez toutes les campagnes concernées (ou filtrez sur le groupe de campagnes analysé).

### 1.2 Ajouter les colonnes requises

Confirmez que ces colonnes sont visibles dans le rapport :

| Colonne | Objectif |
| --- | --- |
| Search term | La requête réelle |
| Match type | Comment le terme a été mis en correspondance |
| Keyword | Le mot-clé qui a déclenché la correspondance |
| Campaign | Campagne source |
| Ad group | Groupe d'annonces source |
| Impressions | Indicateur de volume |
| Clicks | Indicateur d'engagement |
| Cost | Répartition de la dépense |
| Conversions | Résultat de performance |
| Conversion rate | Métrique d'efficacité |
| Cost/conversion | Métrique d'efficacité |
| Added/Excluded | Si le terme est déjà un mot-clé ou une exclusion |

### 1.3 Exporter le rapport

1. Téléchargez le rapport sous forme de tableur (.csv ou .xlsx).
2. Supprimez les lignes avec zéro impression (pas de données exploitables).
3. Triez par terme de recherche (A→Z).

> 💡 **Pourquoi trier par ordre alphabétique ?** Le tri A→Z regroupe les termes liés et les variantes de longue traîne. Cela vous évite d'analyser le même thème plusieurs fois et vous aide à repérer les connexions entre requêtes liées. Par exemple, « crm software », « crm software free », « crm software for small business » et « crm tools » apparaissent tous à proximité, ce qui facilite l'identification de motifs de mots non pertinents à travers des requêtes liées.

---

## Phase 2️⃣ : Scanner les termes non pertinents

Cette phase identifie uniquement les termes clairement non pertinents. N'évaluez pas les métriques de performance individuelles des termes de recherche dans cette phase.

Avant de scanner, **écartez tous les termes de recherche ayant des conversions > 0 et un statut « None » (pas encore ajoutés comme mots-clés)**. Les termes de recherche qui convertissent restent dans le compte, aussi non pertinents qu'ils paraissent. Votre biais joue peut-être contre vous : si un terme de recherche convertit, les données vous disent quelque chose. Laissez-le tranquille.

### 2.1 Scanner la liste alphabétique pour mots et thèmes non pertinents

Parcourez la liste triée (qui n'affiche désormais que les termes non convertissants) à la recherche de mots ou de thèmes individuels totalement sans rapport avec votre activité. Vous scannez la pertinence, pas la performance.

Découvrez les catégories non pertinentes dynamiquement. Ne vous fiez pas à une liste figée de catégories : chaque compte a des motifs de non-pertinence différents. Regroupez les termes signalés en catégories au fur et à mesure que vous les trouvez (minimum 3 termes par catégorie avant de la nommer). Nommez les catégories par intention, pas par mots individuels.

**Points de départ courants** (non exhaustifs, découvrez ce qui s'applique à votre compte) :

| Type de catégorie | Exemples | Pourquoi c'est non pertinent |
| --- | --- | --- |
| Mots sans rapport avec le secteur | "jobs", "salary", "hiring", "career", "DIY", "homemade" | Intention totalement erronée |
| Intention informationnelle (si vous ciblez du transactionnel) | "what is", "definition", "wiki", "pdf", "tutorial" | Trafic pas prêt à l'achat |
| Noms de concurrents (si vous n'enchérissez pas sur les concurrents) | Noms de marque de concurrents spécifiques | Pas votre marque, pas votre audience |
| Termes explicites/spam | Termes pour adultes, termes de torrent/piratage | Ne convertissent jamais pour les entreprises légitimes |
| Mauvais produit/service | Termes pour des produits ou services que vous n'offrez pas | Zéro chance de conversion |

> 💡 **Laissez les données guider la découverte des catégories :** Les catégories ci-dessus sont des points de départ, pas une checklist. Votre compte aura des motifs de non-pertinence uniques. Regroupez 3+ termes non pertinents similaires en une catégorie nommée, puis utilisez cette catégorie pour scanner systématiquement le reste du rapport.

> ⚠️ **Dans le doute, n'excluez pas.** Si vous n'êtes pas sûr qu'un terme de recherche soit vraiment non pertinent, laissez-le dans le compte et notez-le pour y revenir. Laissez parler les données : si le terme est réellement du gaspillage, il ressortira dans votre analyse N-gram une fois que vous aurez assez de données. Voir : [SOP - Executer une analyse N-gram](<Search - Exécuter une analyse N-gram.md>).

### 2.2 Enregistrer les candidats à l'exclusion

Pour chaque mot ou thème non pertinent identifié, consignez :

| Mot/thème non pertinent | Exemples de termes de recherche le contenant | Type de correspondance recommandé | Liste cible |
| --- | --- | --- | --- |
| {word} | {exemples de requêtes du rapport} | Expression exacte | Irrelevant Keywords |

**Règle de type de correspondance :** Utilisez l'expression exacte pour toutes les exclusions de termes non pertinents, y compris les mots isolés. L'expression exacte est le choix par défaut le plus sûr : elle bloque le mot ou la séquence exacte sans le risque de sur-exclusion des exclusions en requête large (qui bloquent toute requête contenant tous les mots dans n'importe quel ordre).

> ⚠️ **Cette phase identifie uniquement les termes clairement non pertinents.** N'excluez pas de termes sur la base des données de performance individuelles des termes de recherche (CPA élevé, ROAS faible, zéro conversion). L'exclusion basée sur la performance nécessite des données agrégées et est gérée via l'analyse N-gram. Voir : [SOP - Executer une analyse N-gram](<Search - Exécuter une analyse N-gram.md>).

---

## Phase 3️⃣ : Identifier les candidats à la promotion

### 3.1 Filtrer sur l'éligibilité à la promotion

Parcourez le rapport sur les termes de recherche à la recherche de termes qui ont des conversions et un statut « None » (pas encore ajoutés comme mots-clés).

**Condition 1 : Ce terme a-t-il converti ?**

Filtrez le rapport pour n'afficher que les termes avec au moins 1 conversion. Les termes avec zéro conversion ne sont pas des candidats à la promotion.

**Condition 2 : Ce terme est-il déjà ajouté ?**

1. Vérifiez la colonne « Added/Excluded » dans le rapport.
2. Si le statut est « Added » : ignorez (déjà un mot-clé).
3. Si le statut est « None » : ce terme est un candidat à la promotion.

**Condition 3 : Le volume est-il suffisant pour justifier la promotion ?**

| Volume du compte | Impressions minimum (par période d'analyse) |
| --- | --- |
| Fort volume (1 000+ clics/mois par campagne) | 100+ impressions |
| Volume moyen (200-1 000 clics/mois) | 50+ impressions |
| Faible volume (<200 clics/mois) | Top 10 des termes convertissants quel que soit le volume |

### 3.2 Construire la liste de promotion

Pour chaque terme qui remplit les trois conditions, consignez :

| Search term | Conversions | Taux de conv. | Coût/conv. | Mot-clé déclencheur actuel | Action recommandée |
| --- | --- | --- | --- | --- | --- |
| [term] | [#] | [%] | [$] | [keyword] | Promouvoir en [match type] dans [ad group] |

> 💡 **Ne promouvez pas dans cette SOP :** Collectez les candidats ici. Exécutez les promotions via [SOP - Promouvoir les termes de recherche en mots-cles](<Search - Promouvoir les termes de recherche en keywords.md>) en Phase 4.

---

## Phase 4️⃣ : Appliquer les modifications

### 4.1 Exécuter les exclusions

Prenez la liste des termes non pertinents de la Phase 2 et ajoutez-les directement à la liste partagée de mots-clés à exclure **Irrelevant Keywords** dans Google Ads :

1. Accédez à Tools > Shared Library > Negative keyword lists.
2. Ouvrez la liste « Irrelevant Keywords ».
3. Ajoutez toutes les exclusions formatées de la Phase 2 (minuscules, sans caractères spéciaux).
4. Vérifiez que la liste est liée à toutes les campagnes concernées.

> ⚠️ **Les exclusions ne matchent pas les variantes proches :** Contrairement aux mots-clés positifs, une exclusion en requête large ne s'étend pas aux synonymes, pluriels ou fautes d'orthographe. Ajoutez chaque variation explicitement (par ex. « job » et « jobs »).

### 4.2 Exécuter les promotions

Prenez la liste de promotion de la Phase 3 et lancez [SOP - Promouvoir les termes de recherche en mots-cles](<Search - Promouvoir les termes de recherche en keywords.md>) pour chaque candidat.

### 4.3 Vérifier les changements

Après application :

1. Confirmez que les mots-clés promus sont actifs et accumulent des impressions.
2. Confirmez que les exclusions n'entrent pas en conflit avec les mots-clés positifs (vérifiez les alertes « Negative keyword conflict » dans Google Ads).
3. Contrôlez par sondage que les annonces s'affichent toujours pour les termes à forte valeur.

---

## Phase 5️⃣ : Documenter les décisions

### 5.1 Mettre à jour le journal d'analyse

Consignez chaque cycle d'analyse dans un journal continu :

| Champ | Valeur |
| --- | --- |
| Date | [date d'analyse] |
| Période analysée | [plage de dates] |
| Total des termes de recherche examinés | [nombre] |
| Termes non pertinents exclus | [nombre] |
| Termes promus | [nombre] |
| Observations clés | [motifs notables, nouveaux thèmes, variations saisonnières] |

### 5.2 Signaler les items pour le prochain cycle

Consignez tous les termes que vous voulez revoir :

| Search term | Raison du report | Date de réévaluation |
| --- | --- | --- |
| [term] | [pertinence peu claire / nouveau motif à surveiller] | [date du prochain cycle] |

---

### Validation et critères de complétion

Cette SOP est terminée quand :

- [ ] Rapport sur les termes de recherche exporté et trié par ordre alphabétique
- [ ] Scan alphabétique complété pour les mots et thèmes non pertinents
- [ ] Candidats à la promotion identifiés (termes convertissants avec statut « None »)
- [ ] Candidats à la promotion validés contre la liste de mots-clés existante et les seuils de volume
- [ ] Termes non pertinents ajoutés à la liste partagée de mots-clés non pertinents
- [ ] Promotions exécutées via SOP - Promouvoir les termes de recherche en mots-cles
- [ ] Aucun conflit de mot-clé négatif détecté après application
- [ ] Journal d'analyse mis à jour avec les décisions et justifications

---

### Passerelle de sortie

Une fois l'analyse terminée :

| Délai | Action |
| --- | --- |
| Immédiatement | Router les candidats à la promotion vers [SOP - Promouvoir les termes de recherche en mots-cles](<Search - Promouvoir les termes de recherche en keywords.md>) |
| 7 jours | Contrôler par sondage les mots-clés promus : accumulent-ils des impressions et matchent-ils les requêtes visées ? |
| 7 jours | Contrôler par sondage les exclusions : les annonces s'affichent-elles toujours pour les termes à forte valeur ? |
| Prochain cycle planifié | Relancer cette SOP selon la cadence |
| Cadence séparée | Router l'exclusion basée sur la performance vers [SOP - Executer une analyse N-gram](<Search - Exécuter une analyse N-gram.md>) (hebdomadaire à mensuelle, selon la dépense) |

**En cas de problème :**

| Problème | Rediriger vers |
| --- | --- |
| Un mot-clé promu a un faible Niveau de qualité | [SOP - Ameliorer la pertinence des annonces](<Search - Améliorer la pertinence des annonces.md>) |
| Un mot-clé à exclure bloque du trafic souhaité | [Negative Keyword Reference](<Search - Mots-clés à exclure.md>) pour la résolution des conflits |
| Les termes de recherche indiquent un décalage avec la page de destination | [SOP - Auditer et optimiser une page de destination existante](<../../02-site-web/audit/Audit - Auditer et optimiser une LP existante.md>) |
| Exclusion basée sur la performance nécessaire | [SOP - Executer une analyse N-gram](<Search - Exécuter une analyse N-gram.md>) |

---

### Erreurs fréquentes

| Erreur | Pourquoi ça arrive | Comment l'éviter |
| --- | --- | --- |
| Exclure des termes sur la base de données de performance individuelles | Regarder le CPA/ROAS de termes de recherche individuels au lieu des données N-gram agrégées | Cette SOP ne gère que les termes non pertinents. Routez l'exclusion basée sur la performance vers la SOP - Executer une analyse N-gram |
| Manquer des candidats à la promotion à forte valeur | Ne revoir que les premières pages du rapport | Trier par ordre alphabétique et scanner toute la liste systématiquement |
| Exclure une variante proche d'un bon mot-clé | Ne pas vérifier les conflits avec les mots-clés positifs avant d'ajouter des exclusions | Valider chaque candidat à l'exclusion contre la liste de mots-clés actifs |
| Promouvoir des termes qui fragmentent les données des Stratégies d'enchères intelligentes | Promouvoir des variantes proches qui n'ajoutent ni contrôle ni visibilité | Appliquer la méthode de décision complète de la SOP - Promouvoir les termes de recherche en mots-cles |
| Ne pas documenter les décisions | Se fier à sa mémoire pour ce qui a été changé et pourquoi | Compléter la Phase 5 à chaque cycle, sans exception |
| Cadence d'analyse irrégulière | Oublier ou déprioriser les revues du STR | Programmer des rappels de calendrier alignés sur le stade de maturité de la campagne |

---

### Documents liés

| Document | Type | Relation |
| --- | --- | --- |
| [Search Term Report Reference](<Search - Rapport sur les termes de recherche.md>) | Reference | Définitions des colonnes, interprétation des données (Phase 1) |
| [Negative Keyword Reference](<Search - Mots-clés à exclure.md>) | Reference | Règles de match type, formatage, résolution des conflits (Phase 2, 4) |
| [Match Type Reference](<Search - Types de correspondance.md>) | Reference | Comprendre les déclenchements de match type (Phase 1) |
| [N-gram Analysis Reference](<Search - Analyse N-gram.md>) | Reference | Extraction N-gram, classification et modèle d'exclusion |
| [SOP - Promouvoir les termes de recherche en mots-cles](<Search - Promouvoir les termes de recherche en keywords.md>) | SOP | Aval : exécute les promotions identifiées en Phase 3 |
| [SOP - Executer une analyse N-gram](<Search - Exécuter une analyse N-gram.md>) | SOP | Parallèle : gère l'exclusion basée sur la performance via les données N-gram agrégées |
