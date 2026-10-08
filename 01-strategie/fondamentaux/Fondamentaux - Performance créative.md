# Performance créative

> **Plateforme :** Stratégie
> **Catégorie :** Fondamentaux
> **Type :** Fondamental
> **Mis à jour :** 2026-05-07

## Objectif

Documente les métriques, seuils et cadres diagnostiques pour évaluer la performance des assets RSA. Couvre le CPI, RPI, PPI, AIS et le système de quadrants de performance utilisé dans la boucle d'itération.

---

## Ce que couvre cette fiche / Ce qu'elle ne couvre PAS

**Cette fiche :**

- Définit les métriques de performance créative et leurs formules
- Fournit les seuils de suffisance de données pour les décisions au niveau des assets
- Documente le système de classification par quadrants de performance
- Spécifie les seuils d'alerte de concentration et de visibilité

**Cette fiche ne couvre PAS :**

- Comment rédiger des titres ou des descriptions (Voir : [Headline Angle Catalog](<../../03-google-ads/search/Search - Angles de headlines.md>))
- Les procédures de test pas à pas (Voir : [SOP - Test RSA avec la boucle d'iteration](<../../03-google-ads/search/Search - Test RSA avec la boucle d'itération.md>))
- L'optimisation au niveau de l'annonce ou de la campagne (Voir : [SOP - Executer un cycle de test creative](<../../03-google-ads/creatives/Creatives - Cycle de test créatif.md>))

---

## Aide-mémoire : métriques principales

| Métrique | Nom complet | Formule | Cas d'usage |
|--------|-----------|---------|----------|
| **CPI** | Conversions Per Impression | Conversions / Impressions | Lead Gen, SaaS (orienté conversion) |
| **RPI** | Revenue Per Impression | Valeur de conversion / Impressions | E-commerce (orienté revenu) |
| **PPI** | Profit Per Impression | (Valeur de conversion - Coût) / Impressions | E-commerce avec données de marge (orienté profit) |
| **AIS** | Asset Impression Share | Impressions de l'asset / Impressions totales de l'annonce | Tous secteurs (mesure de visibilité) |

---

## Pourquoi CPI et RPI, pas le CTR

Les labels de performance d'assets de Google (Low / Good / Best) sont basés sur le CTR. Le CTR mesure l'attrait au clic mais pas les résultats business. Un asset avec un CTR élevé et zéro conversion coûte de l'argent sans générer de résultats.

CPI et RPI combinent deux étapes du tunnel en une seule métrique :

| Métrique | Ce qu'elle capture | Pourquoi c'est important |
|--------|-----------------|----------------|
| **CTR** | Attrait au clic uniquement | Un titre qui attire des clics d'utilisateurs non qualifiés augmente le CPC sans améliorer les conversions |
| **Taux de conversion** | Conversion post-clic uniquement | Ignore la fréquence à laquelle l'asset a été montré et cliqué |
| **CPI** | Attrait au clic + efficacité de conversion | Mesure le parcours complet : impression → clic → conversion. Un asset qui convertit bien mais est rarement cliqué score quand même bas. |
| **RPI** | Attrait au clic + génération de revenus | Comme le CPI mais pondéré par le revenu, donc les conversions à AOV élevé sont correctement valorisées |

CPI = CTR × Taux de conversion. Il récompense les assets qui à la fois attirent des clics ET les convertissent.

> ⚠️ **N'utilisez pas les labels de performance d'assets de Google comme métrique de décision principale.** Ils reflètent l'optimisation de Google basée sur le CTR, pas vos résultats business. Un asset labellisé "Low" par Google peut avoir le CPI le plus élevé de votre compte.

---

## Sélection de métrique par secteur

| Secteur | Métrique principale | Quand utiliser | Repli |
|----------|---------------|-------------|----------|
| **Lead Gen** | CPI | Toutes les campagnes orientées leads | CPI est la valeur par défaut pour tout objectif de comptage de conversions |
| **SaaS** | CPI | Inscriptions essai, demandes de démo | RPI si la valeur d'abonnement est suivie |
| **E-commerce (basique)** | RPI | Revenu suivi, marges inconnues | CPI si le suivi des revenus n'est pas disponible |
| **E-commerce (avancé)** | PPI | Marges connues, données de profit disponibles | RPI comme étape intermédiaire vers le PPI |

> 💡 **Commencez par le CPI.** Passez au RPI quand vous avez un suivi fiable de la valeur de conversion. Passez au PPI quand vous avez les données de marge. N'attendez pas des données parfaites pour commencer à mesurer.

---

## Asset Impression Share (AIS)

L'AIS mesure la fréquence à laquelle Google affiche un asset spécifique par rapport aux impressions totales de l'annonce.

| Plage AIS | Signification | Interprétation |
|-----------|---------|----------------|
| >40 % | Dominant | Google favorise fortement cet asset. Vérifiez qu'il mérite cette exposition. |
| 25-40 % | Haute visibilité | Position de rotation forte. Attendu pour les assets les plus performants. |
| 15-25 % | Modéré | Plage de rotation normale pour la plupart des assets. |
| 5-15 % | Faible visibilité | Google déprioritise cet asset. Vérifiez si le CPI/RPI justifie de le garder. |
| <5 % | Quasi-nul | L'asset ne diffuse pratiquement pas. Remplacez ou investiguez l'épinglage. |

### Alertes de concentration AIS

| Signal | Seuil | Ce que ça signifie | Action |
|--------|-----------|---------------|--------|
| Dominance d'un seul asset | Un asset >60 % AIS | Google sur-rotation un titre, limitant le test de combinaisons | Épinglez un titre différent en position 1 pour forcer la diversité de rotation |
| Cluster à faible visibilité | 3+ assets sous 5 % AIS | Plusieurs assets effectivement inactifs | Supprimez les assets inactifs pour réduire le nombre de combinaisons |
| Distribution uniforme | Tous les assets à ±5 % les uns des autres | Google n'a pas identifié de gagnants, possiblement données insuffisantes | Allongez la période de collecte de données ou réduisez le nombre d'assets |

---

## Le système de quadrants de performance

Le système de quadrants classifie les assets selon deux dimensions : CPI/RPI (résultat business) et AIS (visibilité).

### Définitions des quadrants

|  | AIS élevé (>25 %) | AIS faible (<15 %) |
|--|-----------------|----------------|
| **CPI/RPI élevé** (au-dessus de la moyenne du cluster) | **Champions** | **Pépites cachées** |
| **CPI/RPI faible** (en dessous de la moyenne du cluster) | **Tueurs silencieux** | **Sous-performants** |

### Interprétation et action par quadrant

| Quadrant | Profil | Impact business | Action | Priorité |
|----------|---------|-----------------|--------|----------|
| **Champions** | CPI/RPI élevé + AIS élevé | Génère des résultats avec une forte visibilité | Protéger : ne pas modifier. Documentez l'angle gagnant dans votre journal d'apprentissage. | La plus basse (maintenir) |
| **Pépites cachées** | CPI/RPI élevé + AIS faible | Convertit bien mais rarement montré | Augmenter l'exposition : épinglez en position 1, ou réduisez les assets concurrents pour que Google lui alloue plus de rotations. | Élevée (opportunité) |
| **Tueurs silencieux** | CPI/RPI faible + AIS élevé | Consomme des impressions sans convertir | Supprimer immédiatement : ils dégradent activement la performance en absorbant des impressions qui devraient aller à de meilleurs assets. | Critique (urgent) |
| **Sous-performants** | CPI/RPI faible + AIS faible | Ni conversion ni affichage | Remplacer quand c'est opportun : faible urgence car la faible visibilité signifie peu de dégâts. Remplacez lors du prochain cycle d'itération. | Basse (nettoyage) |

> ⚠️ **Les Tueurs silencieux sont la priorité numéro un.** Ils sont le plus gros frein à la performance RSA car Google les montre fréquemment malgré de faibles taux de conversion. Supprimer un seul Tueur silencieux améliore le CPI/RPI de l'annonce entière.

### Définir les seuils "élevé" vs "faible"

| Métrique | Élevé | Faible | Zone grise |
|--------|------|-----|-----------|
| CPI/RPI | Au-dessus de la moyenne du cluster | En dessous de la moyenne du cluster | À ±10 % de la moyenne : attendre un cycle de plus |
| AIS | >25 % | <15 % | 15-25 % : visibilité modérée, classifier selon la direction du CPI/RPI |

"Moyenne du cluster" = la moyenne du CPI/RPI sur tous les assets du cluster de test (même modèle déployé sur plusieurs ad groups).

---

## Seuils de suffisance de données

Les décisions au niveau des assets nécessitent des données suffisantes. Agir sur de petits échantillons produit des conclusions non fiables.

### Données minimales pour les décisions au niveau des assets

| Type de décision | Impressions minimales | Conversions minimales | Niveau de confiance |
|--------------|--------------------|--------------------|-----------------|
| Supprimer un Tueur silencieux | 5 000+ par asset | 0 conversion à 5 000+ impressions | Confiance élevée (signal clair) |
| Promouvoir une Pépite cachée (épinglage) | 3 000+ par asset | 5+ conversions | Confiance moyenne |
| Déclarer un Champion | 5 000+ par asset | 10+ conversions | Confiance élevée |
| Remplacer un Sous-performant | 1 000+ par asset | 0-1 conversion | Confiance faible (acceptable pour un remplacement à faible priorité) |
| Comparer deux assets | 5 000+ par asset chacun | 10+ conversions chacun | 90 %+ de confiance statistique pour la différence CPI/RPI |

### Atteindre la suffisance plus rapidement

La boucle d'itération résout le problème de pauvreté de données par l'agrégation :

| Approche | Données par asset | Délai de décision |
|----------|---------------|-----------------|
| Ad group unique (isolé) | 500-2 000 impressions/mois | 3-6 mois (insuffisant pour la plupart des décisions) |
| Cluster templatisé (5 ad groups) | 5 000-10 000 impressions/mois | 2-4 semaines |
| Cluster templatisé (20 ad groups) | 20 000-50 000 impressions/mois | 1-2 semaines |

> ↪️ **Comment configurer des clusters templatisés.** Voir [SOP - Test RSA avec la boucle d'iteration](<../../03-google-ads/search/Search - Test RSA avec la boucle d'itération.md>) Pilier 1 pour la création de clusters et le déploiement de modèles.

### Le problème d'explosion combinatoire

Chaque titre supplémentaire augmente exponentiellement le nombre de combinaisons que Google doit tester :

| Titres | Combinaisons à 2 titres | Combinaisons à 3 titres | Impressions min. nécessaires (100 par combo) |
|-----------|------------------------|------------------------|-----------------------------------------|
| 5 | 10 | 10 | 1 000 |
| 7 | 21 | 35 | 3 500 |
| 8 | 28 | 56 | 5 600 |
| 10 | 45 | 120 | 12 000 |
| 15 | 105 | 455 | 45 500 |

À 7-8 titres, le nombre de combinaisons est gérable (3 500-5 600 impressions minimum). À 15 titres, la plupart des ad groups n'accumulent jamais assez de données pour que Google identifie les combinaisons gagnantes.

**Règle : utilisez 7-8 titres et 2-3 descriptions.** Cela concentre les impressions sur moins d'assets, produisant des signaux de performance plus rapides et plus fiables.

---

## Confiance statistique pour la comparaison d'assets

Quand vous comparez deux assets (ex. : tester un nouveau titre USP contre l'actuel), utilisez ces niveaux de confiance :

| Niveau de confiance | Quand utiliser | Ce que ça signifie |
|-----------------|-------------|---------------|
| 80 % | Signal directionnel pour les décisions à faible enjeu | 1 chance sur 5 que le résultat soit aléatoire |
| 90 % | Standard pour la plupart des tests créatifs | 1 chance sur 10 de faux positif |
| 95 % | Décisions à fort enjeu (déploiements à l'échelle du compte) | 1 chance sur 20 de faux positif |

### Facteurs qui allongent le temps jusqu'à la confiance

| Facteur | Effet | Atténuation |
|--------|--------|------------|
| Petite différence CPI/RPI entre assets | Nécessite plus de données pour détecter | Acceptez 80 % de confiance pour les différences marginales |
| Faible volume d'impressions par asset | Accumulation de données lente | Réduisez le nombre de titres (7 au lieu de 15) ou élargissez la taille du cluster |
| Faible taux de conversion | Peu d'événements de conversion par asset | Utilisez des fenêtres d'évaluation plus longues (4+ semaines) |
| CPC élevé | Moins de clics par euro de budget | Concentrez les tests sur les clusters à plus haut volume en priorité |

---

## Détection de fatigue créative

Les assets se dégradent dans le temps à mesure que les audiences voient le même message de façon répétée.

| Signal | Seuil | Ce que ça signifie |
|--------|-----------|---------------|
| CTR en déclin | 2+ semaines consécutives de déclin | L'audience se lasse du message |
| CPI/RPI en déclin | 2+ semaines consécutives, CTR stable | La conversion post-clic se dégrade (fatigue de la landing page ou offre périmée) |
| AIS en mouvement | L'AIS de l'asset Champion chute de 10+ points | Google déprioritise l'asset (détecte possiblement un déclin de l'engagement) |

### Cadre de réponse à la fatigue

| Type de fatigue | Diagnostic | Action |
|-------------|-----------|--------|
| Déclin du CTR uniquement | Le message du titre est périmé | Remplacez le titre spécifique par une nouvelle variation du même type d'angle |
| Déclin du CPI/RPI, CTR stable | L'expérience post-clic est le problème | Investiguez la landing page, la fraîcheur de l'offre ou la saisonnalité avant de changer le créatif |
| CTR et CPI/RPI en déclin | Fatigue créative complète | Remplacez l'asset et testez une nouvelle variation d'angle lors du prochain cycle d'itération |

---

## Où trouver les données de performance des assets

| Point de donnée | Emplacement dans Google Ads |
|-----------|----------------------|
| Métriques au niveau de l'asset (impressions, clics, conversions, coût, valeur) | Annonces et assets > Assets > Onglet Performance > filtrer par Titre ou Description |
| Asset Impression Share | Calculer : impressions de l'asset / impressions totales de l'annonce (depuis le même rapport) |
| Labels de performance Google (Low/Good/Best) | Annonces et assets > Assets > colonne Évaluation de performance |
| Rapport de combinaisons | Annonces et assets > Combinaisons (montre quelles paires titre+description ont été diffusées) |

> 💡 **Les données d'assets se mettent à jour une fois par jour.** Les changements d'assets n'apparaîtront dans le rapport de performance que le lendemain.

---

## Erreurs courantes

| Erreur | Problème | Solution |
|---------|---------|-----|
| Utiliser les labels Low/Good/Best de Google comme métrique principale | Les labels sont basés sur le CTR, pas sur les conversions | Utilisez le CPI/RPI comme métrique principale, traitez les labels Google comme signal secondaire |
| Tester avec 15 titres | Données diluées sur 2 730 combinaisons, aucun asset n'atteint la significativité | Plafonnez à 7-8 titres pour concentrer les impressions |
| Supprimer des assets avec <1 000 impressions | Données insuffisantes pour des conclusions fiables | Attendez 5 000+ impressions avant de supprimer |
| Ignorer l'AIS lors de l'évaluation de la performance | Un asset à haut CPI avec 2 % d'AIS n'a aucun impact sur les résultats | Évaluez toujours le CPI/RPI en parallèle de l'AIS |
| Comparer des assets entre clusters différents | Différents clusters ont des audiences et des CPI de base différents | Comparez les assets au sein du même cluster uniquement |
| Réagir aux fluctuations hebdomadaires | Bruit à court terme, pas un signal | Évaluez sur des fenêtres de 2-4 semaines minimum |

---

## Documents liés

| Document | Relation |
|----------|-------------|
| [SOP - Test RSA avec la boucle d'iteration](<../../03-google-ads/search/Search - Test RSA avec la boucle d'itération.md>) | Exécution : le cadre de test qui utilise ces métriques |
| [SOP - Rediger des RSA performantes](<../../03-google-ads/search/Search - Rédiger des RSA performantes.md>) | En amont : crée la structure RSA initiale |
| [Headline Angle Catalog](<../../03-google-ads/search/Search - Angles de headlines.md>) | Catalogue : types d'angles utilisés dans le système de templates |
| [Description Expansion Catalog](<../../03-google-ads/search/Search - Patterns d'expansion de descriptions.md>) | Catalogue : patterns de descriptions |
| [Headline Quality Checklist](<../../03-google-ads/search/Search - [Review] Qualité des titres.md>) | Checklist : valide la qualité des titres |
| [SOP - Executer un cycle de test creative](<../../03-google-ads/creatives/Creatives - Cycle de test créatif.md>) | En parallèle : test créatif multi-format |
