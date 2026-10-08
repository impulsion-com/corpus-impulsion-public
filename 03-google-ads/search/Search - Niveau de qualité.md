# Niveau de qualité

> **Plateforme :** Google Ads
> **Catégorie :** Search
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Documente le fonctionnement du Niveau de qualité comme outil diagnostique : ses trois composants, la formule Classement de l'annonce, les mécanismes de scoring, les fréquences de mise à jour, et ce que le QS influence ou non. Utilisez cette fiche pour comprendre le système avant de router vers le bon correctif.

---

## Ce que couvre cette fiche / Ce qu'elle ne couvre PAS

**Cette fiche :**

- Explique comment le Niveau de qualité est calculé et ce que chaque composant mesure
- Documente la formule Classement de l'annonce et comment la qualité y contribue
- Clarifie la différence entre le QS visible et les signaux de qualité au moment de l'enchère
- Couvre les fréquences de mise à jour du QS, le calcul pondéré par les impressions et les valeurs de statut

**Cette fiche ne couvre PAS :**

- Comment améliorer le Niveau de qualité (Voir : [Improve Niveau de qualité](<Search - Améliorer le Niveau de qualité.md>))
- Les étapes pour corriger la pertinence des annonces (Voir : [SOP - Ameliorer la pertinence des annonces](<Search - Améliorer la pertinence des annonces.md>))
- Les étapes pour corriger le CTR attendu (Voir : [SOP - Ameliorer le CTR attendu](<Search - Améliorer le CTR attendu.md>))
- Les étapes pour corriger l'expérience de la landing page (Voir : [SOP - Ameliorer l'experience de la page de destination](<../../02-site-web/audit/Audit - Test A-B de Landing Page.md>))
- L'exécution d'actions d'optimisation : c'est une référence de mécanismes, pas un document d'exécution

---

## Aide-mémoire : composants du Niveau de qualité

| Composant | Ce qu'il mesure | Valeurs de statut | Fréquence de mise à jour | Levier principal |
|-----------|-----------------|---------------|------------------|---------------|
| **CTR attendu** | La probabilité que votre annonce soit cliquée par rapport aux concurrents | Au-dessus de la moyenne, Moyenne, En dessous de la moyenne | Chaque enchère (temps réel) | Qualité du texte d'annonce, offre, différenciation |
| **Pertinence de l'annonce** | La correspondance entre votre annonce et l'intention derrière une recherche | Au-dessus de la moyenne, Moyenne, En dessous de la moyenne | Périodique (jours à semaines) | Structure des ad groups, alignement keyword-annonce |
| **Expérience de la landing page** | La pertinence et l'utilité de votre landing page pour les visiteurs | Au-dessus de la moyenne, Moyenne, En dessous de la moyenne | Périodique (semaines) | Cohérence du message, vitesse de page, UX mobile, confiance |

> 💡 **Le Niveau de qualité est un symptôme, pas une cause racine :** vous n'"optimisez" pas le QS directement. Vous corrigez les composants sous-jacents, et le QS s'améliore en conséquence.

---

## Échelle et calcul du Niveau de qualité

### L'échelle de 1 à 10

Le Niveau de qualité est reporté comme un nombre de 1 à 10 au niveau du keyword. C'est un composite des trois évaluations de composants :

| Plage QS | Interprétation |
|----------|----------------|
| 8-10 | Fort : tous les composants probablement Au-dessus de la moyenne ou Moyenne |
| 7 | Acceptable : la base est solide, peut avoir un composant Moyenne |
| 5-6 | Nécessite de l'attention : un ou plusieurs composants En dessous de la moyenne |
| 1-4 | Critique : plusieurs composants En dessous de la moyenne, l'annonce peut rarement s'afficher |

### Calcul pondéré par les impressions

Le QS n'est pas une simple moyenne des keywords. Les keywords avec plus d'impressions pèsent davantage dans les diagnostics QS au niveau du compte.

**Formule de priorisation (issue du playbook Improve Niveau de qualité) :**

`Score de priorité = (10 - Niveau de qualité) x Impressions`

Triez par ordre décroissant. Le keyword le plus prioritaire est celui avec le pire QS et le plus d'impressions : le corriger donne le plus grand impact.

### Base en correspondance exacte

Google calcule le QS uniquement sur les impressions en correspondance exacte. Si votre keyword en requête large déclenche une requête de recherche, Google évalue votre performance sur la version en correspondance exacte de cette requête, quel que soit votre type de correspondance réel.

Cela signifie :

- Le QS d'un keyword en requête large reflète la performance sur son texte littéral en correspondance exacte
- Un keyword avec peu d'impressions en correspondance exacte peut afficher "Pas assez de données" pour le QS
- Changer le type de correspondance seul n'améliore pas le QS

---

## Composants du Niveau de qualité : détail approfondi

### CTR attendu

| Attribut | Détail |
|-----------|--------|
| **Ce qu'il mesure** | La probabilité que votre annonce soit cliquée quand elle est affichée pour ce keyword, par rapport aux autres annonces dans la même position |
| **Comment il est calculé** | Basé sur la performance CTR historique, normalisé pour la position de l'annonce (supprime l'avantage des positions plus élevées) |
| **Fréquence de mise à jour** | Temps réel : recalculé à chaque enchère |
| **Entrées clés** | CTR historique, qualité du texte d'annonce, force de l'offre, paysage concurrentiel |
| **Ce qui l'améliore** | Des titres plus forts, des propositions de valeur plus claires, une meilleure utilisation des extensions d'annonces, un messaging différencié |
| **Ce qui NE l'améliore PAS** | Des enchères plus élevées (la position est normalisée), ajouter plus de keywords, changer les types de correspondance |

### Pertinence de l'annonce

| Attribut | Détail |
|-----------|--------|
| **Ce qu'il mesure** | La correspondance entre le contenu de votre annonce et l'intention derrière la requête de recherche de l'utilisateur |
| **Comment il est calculé** | Analyse sémantique de l'alignement keyword-annonce au sein du ad group |
| **Fréquence de mise à jour** | Périodique : se met à jour sur des jours à semaines à mesure que Google réévalue le contenu de votre annonce |
| **Entrées clés** | Alignement keyword-annonce, cohérence thématique du ad group, pertinence des titres/descriptions RSA par rapport aux termes de recherche |
| **Ce qui l'améliore** | Structure de ad group plus serrée, thèmes de keywords reflétés dans le texte d'annonce, créatif aligné sur l'intention |
| **Ce qui NE l'améliore PAS** | Des enchères plus élevées, ajouter plus de titres sans alignement thématique, diffuser plus d'annonces par ad group |

> 💡 **La structure des ad groups détermine la pertinence de l'annonce :** quand un seul ad group contient des keywords avec des intentions différentes, l'annonce ne peut pas être pertinente pour tous. C'est un problème structurel, pas un problème créatif. (Voir : [Search Campaign Structure Mental Model](<Search - Structure de campagne Search.md>))

### Expérience de la landing page

| Attribut | Détail |
|-----------|--------|
| **Ce qu'il mesure** | La pertinence, la transparence et la facilité de navigation de votre landing page pour les utilisateurs qui cliquent sur votre annonce |
| **Comment il est calculé** | Combinaison d'évaluation automatisée de la page et de signaux comportementaux utilisateur (taux de rebond, temps sur le site, taux de conversion) |
| **Fréquence de mise à jour** | Lente : se met à jour sur des semaines à mesure que Google crawle et évalue les changements de page |
| **Entrées clés** | Cohérence du message (promesse de l'annonce vs contenu de la page), vitesse de chargement, compatibilité mobile, signaux de confiance, clarté de la navigation |
| **Ce qui l'améliore** | Faire correspondre le titre/contenu de la landing page à la promesse de l'annonce, améliorer la vitesse de la page, ajouter des éléments de confiance, corriger l'UX mobile |
| **Ce qui NE l'améliore PAS** | Les changements de texte d'annonce (ceux-ci affectent le CTR attendu et la pertinence de l'annonce), les changements d'enchères, les changements de keywords |

---

## La formule Classement de l'annonce

### Formule

```
Classement de l'annonce = Enchère x Qualité x Impact attendu des extensions + Seuils de Classement de l'annonce
```

Où **Qualité** est l'évaluation en temps réel de :

```
Qualité = CTR attendu x Pertinence de l'annonce x Expérience de la landing page
```

### Distinctions clés

| Concept | QS visible (1-10) | Qualité au moment de l'enchère |
|---------|-------------------|---------------------|
| **Quand calculé** | Périodiquement, comme un instantané | À chaque enchère, en temps réel |
| **Utilisé dans l'enchère** | Non | Oui |
| **Granularité** | Niveau keyword | Niveau requête, utilisateur, contexte |
| **Objectif** | Outil diagnostique pour les annonceurs | Entrée réelle du Classement de l'annonce |
| **Signaux utilisés** | Sous-ensemble (3 composants) | Ensemble complet de signaux (appareil, localisation, heure, audience, requête, et plus) |

> ⚠️ **Le QS visible n'est PAS utilisé dans l'enchère :** Google calcule des signaux de qualité en temps réel pour chaque enchère indépendamment. Le QS de 1 à 10 que vous voyez dans l'interface Google Ads est un diagnostic simplifié et décalé. Améliorer le QS visible de 7 à 8 ne fait pas directement baisser votre CPC : ce qui baisse le CPC, c'est l'amélioration des signaux sous-jacents que le QS visible et la qualité au moment de l'enchère reflètent tous les deux.

### Seuils de Classement de l'annonce

Google impose des seuils minimaux de Classement de l'annonce que votre annonce doit dépasser pour être éligible à l'affichage. Ces seuils varient selon :

- La compétitivité de la requête
- Le contexte utilisateur (appareil, localisation)
- La position de l'annonce (les seuils du haut de page sont plus élevés que les autres positions)

Si votre Classement de l'annonce tombe en dessous du seuil, votre annonce n'entre pas du tout dans l'enchère, quelle que soit votre enchère.

---

## Ce que le Niveau de qualité affecte

| Domaine | Comment le QS l'influence |
|------|---------------------|
| **Éligibilité de l'annonce** | Une qualité faible peut pousser le Classement de l'annonce en dessous des seuils, empêchant votre annonce de s'afficher |
| **CPC réel** | Vous payez juste assez pour battre le Classement de l'annonce de l'annonceur suivant. Une qualité plus élevée = un CPC plus bas à la même position |
| **Position de l'annonce** | Une qualité plus élevée = une meilleure position à la même enchère, ou la même position à une enchère plus basse |
| **Éligibilité aux extensions** | Les extensions ne s'affichent que quand votre Classement de l'annonce est assez élevé : la qualité contribue à atteindre ce seuil |
| **Éligibilité au haut de page** | Les positions du haut nécessitent des seuils de Classement de l'annonce plus élevés : la qualité vous aide à les atteindre sans augmenter les enchères |

## Ce que le Niveau de qualité N'affecte PAS

| Domaine | Pourquoi le QS n'est pas pertinent |
|------|---------------------|
| **Cibles Stratégies d'enchères intelligentes** | Le CPA cible et le ROAS cible sont des objectifs d'efficacité définis indépendamment : le Stratégies d'enchères intelligentes ajuste les enchères autour d'eux quel que soit le QS |
| **Taux de conversion** | Le QS mesure la qualité pré-clic : le taux de conversion est une métrique post-clic déterminée par la landing page, l'offre et l'adéquation de l'audience |
| **Valeur de conversion** | La valeur est déterminée par le prix de votre produit/service et le comportement client, pas la qualité de l'annonce |
| **Allocation budgétaire** | Les budgets sont définis au niveau de la campagne et ne sont pas influencés par le QS |
| **Part d'impression (budget)** | L'IS perdu pour cause de budget est un problème de budget, pas un problème de qualité |

---

## Comment voir le Niveau de qualité dans Google Ads

### Activer les colonnes QS

1. Naviguez vers l'onglet **Keywords** dans votre campagne ou ad group
2. Cliquez sur **Colonnes** > **Modifier les colonnes**
3. Sous **Niveau de qualité**, ajoutez ces colonnes :

| Colonne | Ce qu'elle montre |
|--------|--------------|
| **Niveau de qualité** | Score composite actuel de 1 à 10 |
| **CTR attendu** | Statut du composant (Au-dessus de la moyenne, Moyenne, En dessous de la moyenne) |
| **Pertinence de l'annonce** | Statut du composant |
| **Exp. landing page** | Statut du composant |
| **Niveau de qualité (hist.)** | Instantanés historiques du QS pour l'analyse de tendance |
| **CTR attendu (hist.)** | Statut historique du composant |
| **Pertinence annonce (hist.)** | Statut historique du composant |
| **Exp. landing page (hist.)** | Statut historique du composant |

### Valeurs de statut QS et interprétation

| Statut | Signification | Action requise |
|--------|---------|-----------------|
| **Au-dessus de la moyenne** | Performe mieux que la plupart des concurrents pour ce keyword | Aucune : maintenir l'approche actuelle |
| **Moyenne** | En ligne avec la performance des concurrents | Surveiller : amélioration possible mais pas urgente |
| **En dessous de la moyenne** | Sous-performance par rapport aux concurrents | Correction requise : router vers le SOP approprié |
| **"--" (null)** | Pas assez de données d'impressions pour calculer | Accumuler plus d'impressions ou vérifier si le keyword est actif |

---

## Guide de décision : quel composant corriger en premier

```
Pertinence de l'annonce = En dessous de la moyenne ?
|
+-- OUI --> Corriger la pertinence de l'annonce en premier (fondation structurelle)
|           Router vers : SOP - Améliorer la pertinence des annonces
|
+-- NON --> CTR attendu = En dessous de la moyenne ?
            |
            +-- OUI --> Corriger le CTR attendu (couche de compétitivité)
            |           Router vers : SOP - Améliorer le CTR attendu
            |
            +-- NON --> Expérience landing page = En dessous de la moyenne ?
                        |
                        +-- OUI --> Corriger l'exp. landing page (couche de conversion)
                        |           Router vers : SOP - Améliorer l'exp. landing page
                        |
                        +-- NON --> Tous les composants Moyenne ou Au-dessus de la moyenne
                                   Contrainte QS résolue
                                   Router vers : Boucle d'itération pour l'optimisation continue
```

La séquence est fixe : Pertinence de l'annonce avant CTR attendu avant Expérience landing page. Corriger les composants en amont résout souvent ceux en aval (par exemple, une structure de ad group plus serrée améliore à la fois la pertinence de l'annonce et le CTR attendu).

> ↪️ **Logique de routage complète :** voir [Improve Niveau de qualité](<Search - Améliorer le Niveau de qualité.md>) pour le playbook de décision complet.

---

## Interprétation des tendances QS

Les données historiques du QS permettent une analyse période par période pour détecter une qualité en amélioration, stable ou en déclin.

### Comment lire les tendances QS

Le QS est une métrique relative : il compare votre performance à celle des concurrents dans les mêmes enchères. Un changement de QS peut signifier que votre qualité a changé, que celle de vos concurrents a changé, ou les deux.

| Pattern de tendance | Définition | Cause probable | Action |
|---------------|-----------|-------------|--------|
| **Stable (pas de changement)** | QS inchangé pendant 3+ périodes de reporting | La qualité et le paysage concurrentiel sont stables | Surveiller, pas d'intervention nécessaire |
| **Déclin progressif** | QS baissé de 1 point en moyenne sur 3+ périodes | Les concurrents s'améliorent, ou votre qualité se dégrade lentement | Investiguer quel composant provoque le déclin |
| **Déclin brutal** | QS baissé de 2+ points en une seule période | Entrée concurrentielle majeure, problème de landing page, ou détérioration du texte d'annonce | Urgent : vérifier les composants, croiser avec Insights sur les enchères |
| **Amélioration** | QS augmenté de 1+ point sur 2+ périodes | Vos efforts d'optimisation portent leurs fruits | Continuer l'approche actuelle, passer au keyword prioritaire suivant |
| **Oscillation** | QS fluctue de haut en bas entre les périodes | Faible volume d'impressions causant des signaux bruités, ou changements fréquents de rotation d'annonces | Vérifier le volume d'impressions : si <1 000 impressions/mois, les données QS ne sont pas fiables |

### Distinguer le signal du bruit

| Condition | Fiable ? | Pourquoi |
|-----------|----------|-----|
| Keyword avec >1 000 impressions/mois | Oui | Données suffisantes pour un calcul QS stable |
| Keyword avec 100-1 000 impressions/mois | Partiellement | Le QS peut être en retard ou fluctuer : confirmez les tendances sur 3+ périodes |
| Keyword avec <100 impressions/mois | Non | Le QS est essentiellement aléatoire à ce volume : ne prenez pas de décisions basées dessus |
| Changement de QS coïncide avec un changement de texte d'annonce | Oui (pour CTR attendu, pertinence annonce) | Probablement causé par votre changement : évaluez s'il faut garder ou annuler |
| Changement de QS coïncide avec un changement de LP | Oui (pour exp. LP, après 2-4 semaines de délai) | L'exp. LP se met à jour lentement : attendez 3-4 semaines avant de conclure |
| Changement de QS sans changement de votre côté | À investiguer | Probablement concurrentiel : vérifiez Insights sur les enchères pour de nouveaux entrants ou améliorations concurrentes |

### Reporter les tendances QS

Quand vous suivez le QS dans le temps, utilisez des moyennes pondérées par les impressions pour éviter que les keywords à faible volume ne déforment l'image :

```
QS pondéré par les impressions = SOMME(QS x Impressions) / SOMME(Impressions)
```

Calculez par période de reporting (hebdomadaire ou bimensuel) et tracez la tendance. Un déclin soutenu de 0,5+ point sur 4+ périodes est actionnable.

---

## Contexte concurrentiel et Niveau de qualité

Le QS n'existe pas dans le vide. C'est une mesure relative par rapport aux concurrents dans les mêmes enchères.

### Corrélation QS et Insights sur les enchères

Quand les déclins de QS coïncident avec des changements concurrentiels, la cause racine est externe, pas interne :

| Signal Insights sur les enchères | Impact QS | Mécanisme |
|------------------------|-----------|-----------|
| Nouveau concurrent entre (IS >15 %) | Le CTR attendu peut décliner | Le texte d'annonce du nouveau concurrent peut être plus convaincant, déplaçant les benchmarks (analyses comparatives) CTR relatifs |
| Un concurrent principal augmente son IS de >10pp | Le QS peut décliner de 1-2 points | Le concurrent a amélioré sa qualité, relevant la barre pour "Moyenne" et "Au-dessus de la moyenne" |
| Un concurrent sort ou réduit son IS | Le QS peut s'améliorer | Moins de concurrence abaisse la barre de qualité |
| La position moyenne des concurrents monte | Le CTR attendu peut décliner | Les concurrents mieux positionnés captent plus de clics, réduisant votre CTR relatif |

### Comment investiguer les interactions QS-concurrence

1. Tirez les données de tendance QS (colonnes QS historiques) pour la période du keyword affecté
2. Tirez les Insights sur les enchères pour la même période au niveau du keyword ou du ad group
3. Cherchez une corrélation temporelle : le QS a-t-il décliné quand un nouveau concurrent est apparu ou qu'un existant a gagné de l'IS ?
4. Si corrélé : la correction est concurrentielle (améliorer le texte d'annonce, LP, ou augmenter les enchères) plutôt que structurelle
5. Si non corrélé : la correction est interne (vérifier les changements de LP, la dégradation du texte d'annonce, ou les problèmes structurels)

### Impact CPC d'un QS faible

Un QS faible augmente directement le CPC car vous devez enchérir plus pour atteindre le même Classement de l'annonce. La prime de coût est significative :

| QS | Multiplicateur CPC approximatif (vs QS 7 référence) |
|----|----------------------------------------------|
| 10 | 0,5x (50 % de réduction) |
| 9 | 0,6x |
| 8 | 0,7x |
| 7 | 1,0x (référence) |
| 6 | 1,3x |
| 5 | 1,6x |
| 4 | 2,0x |
| 3 | 2,5x |
| 2 | 3,5x |
| 1 | 5,0x+ |

> ⚠️ **Ces multiplicateurs sont des approximations** basées sur les mécanismes de la formule Classement de l'annonce. Le CPC réel dépend des dynamiques d'enchères, mais l'impact directionnel est constant : chaque point de QS en dessous de 7 vous coûte matériellement plus par clic.

### Patterns saisonniers du QS

Certaines fluctuations de QS sont saisonnières et attendues :

| Saison | Effet typique sur le QS | Cause |
|--------|------------------|-------|
| Fêtes/Black Friday | Le QS peut décliner de 1-2 points temporairement | Plus de concurrents entrent dans l'enchère, relevant les benchmarks de qualité |
| Janvier (post-fêtes) | Le QS récupère souvent | Les concurrents saisonniers sortent, abaissant la barre |
| Pics spécifiques au secteur | Pression sur le QS pendant les périodes de forte demande | Même mécanisme que les fêtes mais spécifique au secteur |
| Ralentissements estivaux | Le QS peut légèrement s'améliorer | Moins de concurrence dans certains secteurs |

Ne réagissez pas aux baisses saisonnières de QS avec des changements structurels. Attendez 2-4 semaines après la saison pour voir si le QS récupère avant d'intervenir.

---

## Erreurs courantes

| Erreur | Problème | Approche correcte |
|---------|---------|-----------------|
| Confondre le QS visible avec la qualité au moment de l'enchère | Optimiser un nombre diagnostique décalé au lieu des signaux réels d'enchère | Se concentrer sur les trois statuts de composants, pas le nombre composite |
| Viser un QS de 10 au lieu de corriger les causes racines | Gaspiller de l'effort sur des gains marginaux quand les composants sont déjà Moyenne ou Au-dessus | Arrêter d'optimiser le QS une fois que tous les composants sont Moyenne ou Au-dessus : rendements décroissants au-delà |
| Ignorer le détail des composants | Regarder uniquement le nombre de 1 à 10 sans diagnostiquer quel composant est faible | Toujours vérifier le CTR attendu, la pertinence de l'annonce et l'exp. LP individuellement |
| Augmenter les enchères pour compenser un QS faible | Payer plus par clic sans corriger le problème de qualité sous-jacent | Corriger la qualité d'abord, puis évaluer les niveaux d'enchères |
| Traiter le QS comme un objectif au lieu d'un diagnostic | Optimiser pour la métrique plutôt que pour les résultats business (CPA, ROAS) | Le QS permet des CPC plus bas et un meilleur Classement de l'annonce : ce sont les vrais objectifs |
| S'attendre à des changements de QS instantanés | Faire des corrections et vérifier le QS le lendemain | Les mises à jour des composants prennent 7-30 jours selon le composant |
| Travailler sur plusieurs composants QS à la fois | Impossible d'isoler ce qui a fonctionné, gaspillage d'effort si la correction en amont résout le problème en aval | Corriger un composant à la fois dans la séquence prescrite |

---

## Documents liés

| Document | Relation |
|----------|-------------|
| [Improve Niveau de qualité](<Search - Améliorer le Niveau de qualité.md>) | Route vers la bonne correction selon quel composant QS est En dessous de la moyenne |
| [SOP - Ameliorer la pertinence des annonces](<Search - Améliorer la pertinence des annonces.md>) | Procédure d'exécution pour corriger le composant pertinence de l'annonce |
| [SOP - Ameliorer le CTR attendu](<Search - Améliorer le CTR attendu.md>) | Procédure d'exécution pour corriger le composant CTR attendu |
| [SOP - Ameliorer l'experience de la page de destination](<../../02-site-web/audit/Audit - Test A-B de Landing Page.md>) | Procédure d'exécution pour corriger le composant expérience landing page |
| [Search Campaign Structure Mental Model](<Search - Structure de campagne Search.md>) | Explique comment la structure de campagne impacte le ciblage |
| [Search Ad Group Structure Mental Model](<Search - Structure des ad groups Search.md>) | Explique comment la structure des ad groups impacte directement la pertinence de l'annonce |
| [Diagnostic Thresholds Reference](<../optimisation/Optimisation - Seuils diagnostiques.md>) | Seuils numériques pour les vérifications diagnostiques liées au QS |
| [Insights sur les enchères Reference](<Search - Insights sur les enchères.md>) | Données concurrentielles utilisées dans l'analyse du contexte QS-concurrence |
