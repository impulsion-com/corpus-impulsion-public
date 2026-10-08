# Tests et expérimentations

> **Plateforme :** Stratégie
> **Catégorie :** Expérimentation
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Ce document vous aide à décider quand tester, quoi tester, et comment mener des expérimentations qui produisent des résultats valides et actionnables.

> ❓ **La question centrale :** Ce changement vaut-il la peine d'être testé, et comment savoir si le résultat du test est réel ?

Tester sans rigueur produit une fausse confiance dans de mauvaises décisions. Tester correctement accélère l'apprentissage et protège contre les erreurs coûteuses. Ce document s'assure que vos expérimentations produisent des résultats fiables.

---

## Ce que ce modèle NE couvre PAS

Ce document NE couvre PAS :

- La configuration étape par étape des expérimentations (Voir : [SOP - Executer une experimentation de campagne](<../../03-google-ads/strategie/Strategie - Lancer une expérience de campagne.md>))
- Les options de configuration des expérimentations en détail (Voir : [Experiment Configuration Reference](<../../03-google-ads/strategie/Strategie - Configuration des expériences.md>))
- Les mécaniques de stratégie d'enchères (Voir : [Bidding Strategy Mental Model](<../../03-google-ads/encheres/Enchères - Stratégie d'enchères.md>))
- Les tests créatifs au niveau annonce (Voir : [SOP - Rediger des RSA performantes](<../../03-google-ads/search/Search - Rédiger des RSA performantes.md>))

---

## Le document de décision de test

Tout ne devrait pas être testé. Tester a des coûts : temps, complexité et décisions retardées.

| **Tester** | **Ne pas tester** |
|-----------|-------------------|
| Changements à fort impact (stratégie d'enchères, structure, ciblage) | Changements à faible impact (retouches mineures de texte) |
| Changements réversibles où se tromper est coûteux | Changements sur lesquels vous êtes confiant grâce à des données antérieures |
| Changements où le résultat est véritablement incertain | Changements imposés par la politique ou les exigences business |
| Décisions qui affectent des dépenses significatives | Micro-optimisations sur des campagnes à faible volume |

**L'arbre de décision des tests :**

```
Le changement a-t-il un fort impact (>10 % d'effet potentiel sur le KPI principal) ?
│
├─ NON → Implémenter directement, surveiller les résultats
│
└─ OUI → Le résultat est-il véritablement incertain ?
          │
          ├─ NON (confiant que c'est mieux) → Implémenter directement, surveiller
          │
          └─ OUI → Avez-vous assez de volume pour un test valide ?
                    │
                    ├─ NON → Prendre la meilleure décision au jugement, surveiller
                    │
                    └─ OUI → Lancer une expérimentation
```

> ⚠️ **Tester de petits changements gaspille du temps :** Une amélioration de titre de 2 % n'atteindra jamais la significativité statistique à la plupart des budgets. Concentrez les expérimentations sur les changements qui peuvent déplacer l'aiguille de 10 %+.

---

## Les trois approches de test

### 1️⃣ Test au niveau annonce (optimisation RSA)

*"Quelles variations d'annonce performent le mieux ?"*

| **Élément** | **Description** |
|-------------|-----------------|
| **Quoi** | Titres, descriptions, combinaisons d'assets au sein des RSAs |
| **Comment** | Le machine learning de Google optimise automatiquement |
| **Quand utiliser** | Toujours : c'est intégré aux mécaniques RSA |
| **Rigueur statistique** | Faible : le label "Meilleur" de Google ne signifie pas significativité statistique |
| **Votre rôle** | Fournir des assets diversifiés, retirer les sous-performeurs, itérer |

> ↪️ **Pour les tests au niveau annonce :** Voir [SOP - Rediger des RSA performantes](<../../03-google-ads/search/Search - Rédiger des RSA performantes.md>) pour l'approche par boucle d'itération.

### 2️⃣ Expérimentations de campagne

*"Quel paramètre ou stratégie de campagne performe le mieux ?"*

| **Élément** | **Description** |
|-------------|-----------------|
| **Quoi** | Stratégies d'enchères, objectifs, audiences, landing pages au niveau campagne |
| **Comment** | Google Ads Experiments (split de trafic, contrôle vs. traitement) |
| **Quand utiliser** | Pour tester des changements au niveau campagne qui affectent toutes les annonces/ad groups |
| **Rigueur statistique** | Haute : split de trafic contrôlé avec calcul de significativité statistique |
| **Votre rôle** | Concevoir l'expérimentation, définir la durée, interpréter les résultats, appliquer le gagnant |

**Meilleurs candidats pour les expérimentations de campagne :**

| Type de changement | Exemple | Potentiel d'impact |
|-------------------|---------|-------------------|
| Stratégie d'enchères | CPC manuel → CPA cible | Élevé |
| Objectif d'enchère | CPA cible 50 € → 40 € | Moyen-élevé |
| Ciblage d'audience | Ajouter un segment d'audience | Moyen |
| Landing page | Page d'accueil → LP dédiée | Élevé |
| Planning de diffusion | Toute la journée → heures ouvrées uniquement | Moyen |

### 3️⃣ Analyse avant/après

*"Ce changement a-t-il fonctionné ?"*

| **Élément** | **Description** |
|-------------|-----------------|
| **Quoi** | Tout changement où une expérimentation contrôlée n'est pas possible |
| **Comment** | Comparer la performance avant vs. après le changement |
| **Quand utiliser** | Quand les expérimentations ne sont pas faisables (changements au niveau compte, faible volume) |
| **Rigueur statistique** | Faible : les facteurs confondants (saisonnalité, concurrence) brouillent les résultats |
| **Votre rôle** | Contrôler les facteurs connus, documenter les hypothèses, être sceptique |

**Limites de l'analyse avant/après :**

| Facteur | Risque | Atténuation |
|---------|--------|-------------|
| Saisonnalité | Semaine 1 vs. Semaine 2 peuvent différer par cycles naturels | Comparer à la même période l'année précédente |
| Concurrence | Les changements des concurrents affectent vos données | Vérifier les auction insights |
| Facteurs externes | Actualités, météo, économie | Documenter les événements connus |
| Changements multiples | Impossible d'isoler quel changement a causé l'effet | Changer une seule chose à la fois |

> ⚠️ **L'avant/après est une preuve, pas une certitude :** L'utiliser quand les expérimentations ne sont pas possibles, mais pondérer les conclusions en conséquence.

---

## Significativité statistique : la fondation

La significativité statistique répond à : "Ce résultat est-il réel, ou juste du bruit aléatoire ?"

### Les concepts fondamentaux

| **Concept** | **Définition** | **Défaut Google Ads** |
|-------------|---------------|----------------------|
| **Niveau de confiance** | Probabilité que le résultat ne soit pas dû au hasard | 95 % (1 chance sur 20 de faux positif) |
| **Significativité statistique** | Le résultat dépasse votre seuil de confiance | Affiché dans Experiments |
| **Taille d'échantillon** | Nombre d'observations (clics, conversions) | Dépend de la taille d'effet |
| **Taille d'effet** | Amplitude de la différence entre contrôle et traitement | Ce que vous essayez de détecter |

### Pourquoi la taille d'échantillon compte

Les effets plus petits nécessitent des échantillons plus grands pour être détectés de manière fiable.

| **Effet que vous voulez détecter** | **Conversions approximatives nécessaires par bras** |
|------------------------------------|----------------------------------------------------|
| 20 %+ de différence | 100-200 |
| 10-20 % de différence | 300-500 |
| 5-10 % de différence | 1 000+ |
| <5 % de différence | 3 000+ (souvent pas la peine de tester) |

> 💡 **L'implication pratique :** Si votre campagne obtient 50 conversions/mois, vous ne pouvez pas détecter de manière fiable une amélioration de 10 %. Soit acceptez des seuils d'effet plus grands, soit ne lancez pas l'expérimentation.

### Quand conclure un test

| **Scénario** | **Action** |
|--------------|-----------|
| Statistiquement significatif + direction correcte | Appliquer le gagnant |
| Statistiquement significatif + direction inattendue | Investiguer avant d'appliquer |
| Non significatif après la durée complète | Pas de gagnant clair : choisir sur des facteurs secondaires |
| Un bras nuit clairement à la performance | Arrêter plus tôt si extrêmement mauvais (>30 % pire) |

> ⚠️ **N'arrêtez pas les tests tôt parce qu'un bras "semble" meilleur :** La variation aléatoire crée des séries. Attendre la significativité statistique ou votre durée pré-définie, selon ce qui arrive en premier.

---

## Principes de conception d'expérimentation

### La méthode scientifique pour le PPC

1. **Hypothèse :** Énoncer ce que vous attendez et pourquoi
2. **Contrôle :** Garder tout constant sauf la variable testée
3. **Mesure :** Définir les critères de succès avant le début du test
4. **Durée :** Fixer la durée du test avant de commencer (ne pas arrêter tôt)
5. **Interprétation :** Analyser les résultats par rapport à vos critères pré-définis

### Bonnes vs. mauvaises hypothèses

| **Mauvaise hypothèse** | **Bonne hypothèse** |
|------------------------|---------------------|
| "Le CPA cible pourrait être mieux" | "Passer de Maximiser les conversions à CPA cible à 50 € réduira le CPA de 15 % tout en maintenant 90 %+ du volume actuel" |
| "La nouvelle landing page pourrait aider" | "La nouvelle landing page orientée produit augmentera le CVR de 20 % par rapport à la page d'accueil" |
| "Des enchères plus basses pourraient fonctionner" | "Réduire le CPA cible de 60 € à 50 € diminuera le CPA de 15 % mais pourrait réduire les conversions de 10 %" |

**Pourquoi la spécificité compte :** Une hypothèse vague mène à une interprétation ambiguë. "Ça a plus ou moins fonctionné" n'est pas actionnable.

### Discipline de variable de contrôle

Pendant une expérimentation, changez **uniquement** la variable testée.

| **Pendant le test, NE PAS** | **Pourquoi** |
|-----------------------------|-------------|
| Mettre en pause/ajouter des keywords | Change la composition du trafic |
| Mettre à jour le texte d'annonce | Change le CTR et le CVR |
| Ajuster les enchères dans le contrôle | Invalide la comparaison |
| Changer le budget | Affecte la diffusion et la concurrence |
| Lancer d'autres expérimentations | Effets d'interaction |

> ⚠️ **La contamination tue les expérimentations :** Si vous changez autre chose pendant le test, vous ne pouvez pas isoler l'effet de votre variable de test.

---

## Directives de durée de test

### Durée minimale de test

| **Facteur** | **Minimum** | **Justification** |
|------------|-------------|-------------------|
| Période d'apprentissage | 1-2 semaines | Stratégies d'enchères intelligentes a besoin de temps pour se calibrer |
| Variation jour de la semaine | 1 semaine complète | Couvre les 7 jours au moins une fois |
| Volume de conversions | 100+ conversions par bras | Validité statistique |
| Délai de conversion | + votre délai moyen | Attendre les conversions attribuées |

**Formule de durée pratique :**

```
Durée du test = MAX(
    2 semaines minimum,
    Temps pour atteindre 100+ conversions par bras,
    Cycle business complet si saisonnier
) + Temps de délai de conversion
```

### Quand prolonger vs. arrêter

| **Situation** | **Action** |
|---------------|-----------|
| Non significatif, mais tendance vers un bras | Prolonger 1-2 semaines |
| Non significatif, pas de tendance claire | Arrêter à la durée planifiée, choisir sur des facteurs secondaires |
| Résultat significatif atteint | Peut arrêter tôt (mais attendre confirme la stabilité) |
| Un bras est catastrophiquement mauvais | Arrêter tôt pour limiter les dégâts |

---

## Quoi tester (méthode de priorité)

### Tests à fort impact (tester ceux-ci en premier)

| **Test** | **Impact typique** | **Risque** |
|----------|-------------------|-----------|
| Changement de stratégie d'enchères | 10-30 % de changement CPA/ROAS | Moyen : nécessite du volume |
| Landing page | 10-50 % de changement CVR | Faible : facile à reverter |
| Structure de campagne (consolidation) | 10-25 % de gain d'efficacité | Moyen : perturbe les données historiques |

### Tests à impact moyen

| **Test** | **Impact typique** | **Risque** |
|----------|-------------------|-----------|
| Ajustement de CPA cible/ROAS | 5-15 % de changement d'efficacité | Faible : incrémental |
| Ajout/exclusion d'audience | 5-20 % de changement d'efficacité | Faible : facilement ajustable |
| Planning de diffusion | 5-10 % de changement d'efficacité | Faible : facilement ajustable |

### Tests à faible impact (souvent pas la peine d'expérimentations formelles)

| **Test** | **Impact typique** | **Meilleure approche** |
|----------|-------------------|----------------------|
| Variations de titres individuels | 1-5 % | L'optimisation RSA gère ça |
| Ajustements mineurs d'enchères | 1-5 % | Utiliser les simulateurs d'enchères |
| Keywords négatifs individuels | <1 % | Simplement les ajouter |

---

## Interpréter les résultats

### Scénarios de résultats

| **Résultat** | **Action** | **Précaution** |
|-------------|-----------|----------------|
| **Gagnant clair (sig. + effet large)** | Appliquer le gagnant à la campagne complète | Documenter les apprentissages |
| **Gagnant marginal (sig. + petit effet)** | Appliquer si pas d'inconvénient, mais ne pas sur-interpréter | Les petits effets peuvent ne pas se répliquer |
| **Pas de gagnant (non significatif)** | Choisir sur des facteurs secondaires ou la simplicité | Ne pas prétendre "pas de différence" sans puissance suffisante |
| **Perdant surprenant** | Investiguer avant de rejeter | Erreur d'exécution ? Mauvaise hypothèse ? |

### Facteurs secondaires quand les tests sont non concluants

Si votre test n'atteint pas la significativité, choisissez en fonction de :

| **Facteur** | **Favoriser l'option qui...** |
|------------|-------------------------------|
| Simplicité | Nécessite moins de gestion continue |
| Scalabilité | Supporte mieux la croissance future |
| Alignement | S'intègre mieux à votre stratégie globale |
| Tendance directionnelle | Tendait positivement (même si non significatif) |

---

## Erreurs de test courantes

| **Erreur** | **Problème** | **Correction** |
|-----------|-------------|----------------|
| **Arrêter trop tôt** | La variation aléatoire crée de faux gagnants | S'engager sur la durée à l'avance |
| **Trop de variables** | Impossible d'isoler la cause | Tester une seule chose à la fois |
| **Volume insuffisant** | Impossible d'atteindre la significativité | Consolider ou accepter des seuils d'effet plus grands |
| **Pas d'hypothèse** | Impossible d'interpréter les résultats de manière significative | Écrire l'hypothèse avant de commencer |
| **Changer des choses pendant le test** | Invalide les résultats | Geler toutes les autres variables |
| **Tester de petits effets** | N'atteindra jamais la significativité | Se concentrer sur un potentiel d'impact de 10 %+ |
| **Ignorer les métriques secondaires** | Le gagnant sur la métrique principale peut perdre sur la secondaire | Définir les métriques garde-fous à l'avance |
| **Ne pas documenter** | Perdre les apprentissages au fil du temps | Enregistrer hypothèse, résultats, décisions |

---

## Principes clés

1. **Tout ne nécessite pas de test :** Réserver les expérimentations aux décisions à fort impact, incertaines et avec un volume suffisant.
2. **L'hypothèse d'abord :** Définir ce que vous attendez et pourquoi avant de commencer. Des expérimentations vagues produisent des conclusions vagues.
3. **La significativité statistique est le seuil :** "Ça a l'air mieux" ne suffit pas. Attendre que les mathématiques confirment.
4. **Contrôler tout le reste :** Une seule variable à la fois. La contamination tue les expérimentations.
5. **S'engager sur la durée à l'avance :** Fixer la durée du test avant de commencer et s'y tenir. Ne pas regarder et arrêter tôt.
6. **Tout documenter :** Votre test de ce mois-ci est le savoir institutionnel de l'année prochaine.

---

## Documents liés

| **Document** | **Relation** |
|--------------|-------------|
| [Reporting Mental Model](<../reporting/Reporting - Reporting.md>) | Fondation : comment mesurer et interpréter les résultats |
| [Experiment Configuration Reference](<../../03-google-ads/strategie/Strategie - Configuration des expériences.md>) | Référence : types d'expérimentations et paramètres |
| [Experiment Quality Checklist](<../../03-google-ads/strategie/Strategie - [Review] Qualité des expérimentations.md>) | Validation : checklist pré-lancement d'expérimentation |
| [SOP - Executer une experimentation de campagne](<../../03-google-ads/strategie/Strategie - Lancer une expérience de campagne.md>) | Exécution : processus d'expérimentation étape par étape |
| [Bidding Strategy Mental Model](<../../03-google-ads/encheres/Enchères - Stratégie d'enchères.md>) | Lié : expérimentations de stratégie d'enchères |
| [Goals and KPIs Mental Model](<../objectifs/Objectifs - Objectifs et KPI.md>) | Fondation : définit les métriques de succès |
