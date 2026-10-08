# Priorisation et séquençage des optimisations

> **Plateforme :** Stratégie
> **Catégorie :** Fondamentaux
> **Type :** Fondamental
> **Mis à jour :** 2026-05-07

## Objectif

Quand vous ouvrez un compte et trouvez cinq problèmes en même temps, cet article vous apprend à décider quoi corriger en premier, quoi planifier, quoi regrouper, et quoi ignorer. Il vous donne un modèle de scoring reproductible et un ensemble de règles de séquençage pour arrêter de deviner et commencer à exécuter dans le bon ordre.

## Ce que ce document n'est PAS

- Pas une explication de ce que sont les goulots ou comment les trouver (voir [Pensée systémique et analyse des goulots](<Fondamentaux - Pensée systémique et analyse des goulots d'étranglement.md>))
- Pas un guide pour classifier les problèmes en catégories (voir [Les cinq catégories et la hiérarchie des contraintes](<Fondamentaux - Les cinq catégories et la hiérarchie des contraintes.md>))
- Pas un guide d'exécution de Sprint (voir [Sprints contrainte et exécution focalisée](<Fondamentaux - Sprints contrainte et exécution focalisée.md>))
- Pas une décision sur les leviers More/Better/New (voir [Volume vs efficacité](<Fondamentaux - Volume vs efficacité (More Better New).md>))

## Introduction

Vous ouvrez trois comptes un lundi matin. Chacun a cinq problèmes. Ça fait quinze problèmes qui vous fixent avant votre premier café. Si vous travaillez sur ce qui attire votre oeil en premier, vous passerez la journée à cliquer, ajuster, et vous sentir productif. Vendredi, vous aurez fait quarante changements sur trois comptes et fait bouger zéro aiguille. **L'activité n'est pas le progrès.** La séquence est tout.

Le coût d'une mauvaise priorisation n'est pas juste du temps perdu. C'est du gaspillage composé. Chaque heure passée sur une tâche à faible impact est une heure où la contrainte à fort impact reste non corrigée. La contrainte continue de saigner de l'argent pendant que vous polissez des choses qui n'ont pas encore d'importance. Sur un mois, un mauvais séquençage peut coûter à un compte des milliers d'euros d'opportunité manquée - pas par manque de compétence, mais parce que vous avez appliqué la compétence à la mauvaise chose dans le mauvais ordre.

Cet article vous donne le document de décision qui se situe entre le diagnostic et l'exécution. Vous savez déjà [où vit le problème](<Fondamentaux - Les cinq catégories et la hiérarchie des contraintes.md>). Vous savez déjà [quel type de correction appliquer](<Fondamentaux - Volume vs efficacité (More Better New).md>). Maintenant vous devez savoir : quel problème, quelle correction, dans quel ordre, et quand attendre au lieu d'agir.

## L'analogie du service des urgences

Pensez à la gestion de comptes comme un service d'urgences. Les patients arrivent avec des sévérités différentes. Le médecin avec vingt patients ne les traite pas dans l'ordre d'arrivée. Il trie : danger vital d'abord, urgent ensuite, mineur après. Un poignet cassé attend pendant qu'un arrêt cardiaque obtient la salle.

Les comptes Google Ads fonctionnent de la même façon. Un tag de conversion cassé (le tracking se déclenche au chargement de page au lieu de la soumission de formulaire) est votre arrêt cardiaque : chaque décision que vous prenez tant qu'il reste cassé repose sur des mensonges. Une description de lien annexe médiocre est votre poignet cassé : réel, mais ça peut attendre. Le problème est que la plupart des spécialistes traitent chaque problème comme un poignet cassé. Ils parcourent une checklist propre, donnent la même attention à chaque item, et ne s'arrêtent jamais pour demander : *"Est-ce que c'est la chose qui compte vraiment maintenant ?"*

Cet article est votre protocole de triage.

## La matrice impact vs effort

Chaque optimisation que vous pourriez faire tombe dans l'un des quatre quadrants :

**Fort impact, faible effort - faites-les immédiatement :** Une campagne Shopping hémorragie de la dépense parce que les titres produit ne correspondent pas à l'intention de recherche sur les 20 produits les plus coûteux. Vous ouvrez le flux de produits, réécrivez vingt titres en trente minutes, et coupez le gaspillage de 15% en une semaine. Ce sont les actions qui déplacent les métriques de manière disproportionnée par rapport au temps qu'elles prennent.

**Fort impact, fort effort - planifiez comme tâches de Sprint :** La Landing Page convertit à 1,2% sur des termes mot-clé exact haute intention où le benchmark (analyse comparative) industrie est 5-8%. Corriger ça signifie redesigner la page, réécrire l'offre, et faire un A/B test. C'est un projet de deux semaines, pas une tâche du matin. Ça devient le coeur de votre prochain [Sprint contrainte](<Fondamentaux - Sprints contrainte et exécution focalisée.md>).

**Faible impact, faible effort - regroupez en fenêtres de maintenance :** Nettoyer les conventions de nommage des groupes d'annonces. Ajouter un quatrième lien annexe à des campagnes qui en ont trois. Ajuster une description ligne deux de "Livraison rapide" à "Livraison gratuite 2 jours". C'est bien de le faire, mais ça ne déplace pas l'aiguille seul. Regroupez dans votre bloc de maintenance hebdomadaire.

**Faible impact, fort effort - ignorez sauf si vous n'avez rien d'autre :** Migrer vers une nouvelle structure de compte quand l'actuelle performe bien. Construire des règles automatisées élaborées pour un compte avec trois campagnes. Construire un tableau de bord Looker Studio personnalisé quand le tableau de bord Ads par défaut répond à toutes vos questions.

> 💡 **Le piège de la productivité :** La plupart des gens gravitent vers le "faible impact, faible effort" parce que ça donne un sentiment de productivité. Mais empiler dix tâches à faible impact ne vaut pas une tâche à fort impact.

## Séquençage piloté par la contrainte

La matrice impact/effort vous dit quelles tâches prioriser au sein d'une catégorie. Mais la [hiérarchie des cinq catégories](<Fondamentaux - Les cinq catégories et la hiérarchie des contraintes.md>) vous dit quelle catégorie traiter en premier. La hiérarchie gagne toujours.

L'ordre est : Mesure, puis Business, puis Conversion, puis Traffic, puis Creative.

Ce n'est pas une suggestion. C'est une **chaîne de dépendances**. Chaque couche dépend de celles au-dessus pour fonctionner.

Ça signifie : même si vous repérez une correction créative "fort impact, faible effort", vous n'en faites pas le focus de votre [Sprint](<Fondamentaux - Sprints contrainte et exécution focalisée.md>) tant qu'un problème de Mesure ou Conversion est encore rouge sur le [Status Board](<Fondamentaux - Status Board et rythmes opérationnels.md>). Vous pouvez la corriger en maintenance, mais ce n'est pas votre contrainte principale. La hiérarchie ne dit pas d'ignorer les catégories inférieures. Elle dit où vous investissez votre énergie focalisée.

## La maturité du compte détermine le focus

Un compte tout neuf et un compte qui tourne depuis deux ans nécessitent des approches fondamentalement différentes.

**Au lancement, résistez à l'envie d'optimiser :** Vous avez un compte e-commerce qui vient de passer en ligne. Les campagnes Shopping tournent depuis huit jours. Le CPA a l'air élevé. L'instinct crie : baisser les enchères, mettre en pause les sous-performeurs, restructurer. Ne touchez à rien. Vous avez huit jours de données sur des produits qui ont besoin de 50-100 clics chacun pour montrer de vrais patterns de conversion. Votre travail maintenant est de vous assurer que le système marche. Collectez les données de base.

**En rampe, focalisez-vous sur faire marcher ce qui marche mieux :** Un compte lead gen a trois mois. Vous avez des données. Le rapport sur les termes de recherche montre que la Campagne A convertit à 6% sur les termes mot-clé exact et la Campagne B à 0,4% en requête large. Corrigez le mix de requêtes de la Campagne B, améliorez la Landing Page pour les groupes d'annonces les plus dépensiers, resserrez les champs de formulaire qui causent 40% de décrochage.

**En phase stable, vous gagnez le droit de scaler :** Vous avez des données fiables, des segments prouvés, et un historique d'atteinte d'objectifs. Maintenant vous pouvez mener de vrais Sprints, tester de nouveaux angles de titres, étendre les thèmes de mots-clés, et commencer le scaling horizontal.

**En maturité, optimisez les marges :** Les grosses victoires sont derrière vous. La prochaine amélioration de 10% vient de la composition de petits gains.

L'insight clé : **l'optimisation prématurée** à la mauvaise étape de maturité gaspille du temps et corrompt vos données.

## La règle des "données suffisantes"

C'est le principe le plus violé en gestion Google Ads. Les spécialistes agissent sur des données qui ne sont pas encore des données : c'est du bruit.

Seuils minimaux avant de prendre des décisions :

| Décision | Données minimales requises |
|----------|--------------------------|
| Juger le potentiel de conversion d'un mot-clé | 50 clics (au minimum) |
| Évaluer un changement de stratégie d'enchères | Période d'apprentissage de 14 jours complétée, ne pas toucher pendant l'apprentissage |
| Faire confiance à la performance Stratégies d'enchères intelligentes | 30-50 conversions dans le nouvel état |
| Tirer des conclusions d'un A/B test | 2 semaines minimum de durée |
| Juger le CTR de manière fiable | 100+ impressions par variante |
| Évaluer le LP CVR | 200+ sessions (idéalement 50+ conversions) |

Agir sur des **données insuffisantes est pire que de ne pas agir du tout**.

Trois règles pratiques :

1. **Ne pas mettre en pause un mot-clé avant 50 clics :** Ce mot-clé avec 12 clics et aucune conversion pourrait convertir au clic 15. Vous ne savez pas encore. Laissez-le.
2. **Ne pas juger une stratégie d'enchères pendant l'apprentissage :** L'algorithme explore. La performance aura l'air terrible. C'est le but. Attendez la fin de l'apprentissage, puis évaluez sur une fenêtre de 14 jours complète post-apprentissage.
3. **Ne pas appeler un A/B test trop tôt :** Un test qui "gagne" après 3 jours et 47 clics ne gagne pas. Il fluctue.

> 💡 **Le piège de l'impatience :** Les clients et managers feront pression pour "faire quelque chose" quand les chiffres ont l'air mauvais pendant quelques jours. Votre travail est de savoir quand l'action aide et quand elle aggrave les choses.

## Gestion du backlog d'optimisations

### Construire le backlog

Pendant chaque revue de compte (hebdomadaire ou bihebdomadaire), capturez chaque optimisation potentielle que vous repérez. Ne filtrez pas encore : notez juste.

Chaque item reçoit une description en une ligne et une classification par catégorie (Mesure, Business, Conversion, Traffic, Creative).

### Scorer chaque item

Scorez chaque item du backlog sur trois dimensions :

**Impact (1-3) :** À quel point ça fera bouger la métrique du goulot si ça marche ?

**Confiance (1-3) :** À quel point êtes-vous sûr que ça va marcher ?

**Effort (1-3) :** Combien de temps et de ressources ça nécessite ?

Le score de priorité : **(Impact x Confiance) / Effort**

Un task scorant Impact 3, Confiance 3, Effort 1 obtient un 9,0. C'est votre tâche "faites-le maintenant". Une tâche scorant Impact 1, Confiance 1, Effort 3 obtient un 0,11. C'est votre tâche "probablement jamais".

### Du backlog au Sprint

Prenez les 3 items les mieux scorés qui appartiennent à la même catégorie que votre [contrainte active](<Fondamentaux - Une seule contrainte, tout le reste est du bruit.md>). Ceux-ci deviennent votre focus de Sprint. Tout le reste reste au backlog.

Revoyez et re-scorez le backlog mensuellement. Les priorités changent quand les métriques changent.

## Lundi matin : un exemple de décision

C'est lundi matin. Vous gérez trois comptes. Voici ce qui est sur votre écran :

**Compte A (e-commerce, mature) :** Le ROAS Shopping a baissé de 15% la semaine dernière. Le temps de chargement mobile de la Landing Page a bondi à 6,8 secondes après une mise à jour du site vendredi. Avant la mise à jour, le temps de chargement mobile était de 2,1 secondes.

**Compte B (lead gen B2B, phase rampe) :** Le volume de leads (prospects) est à l'objectif à 180/mois mais le taux Lead vers SQL est passé de 22% à 9% sur le dernier mois. Le client a mentionné vendredi qu'il a remplacé deux de ses trois commerciaux il y a deux semaines.

**Compte C (SaaS, stable) :** Tout a l'air bien sauf que le Lost IS (Budget) sur la meilleure campagne a atteint 45%. Le client a approuvé une augmentation de budget de 30% jeudi dernier mais vous ne l'avez pas encore implémentée.

Par où commencer ?

### Étape 1 : Scanner les urgences (tâches Remove)

Le pic de temps de chargement mobile du Compte A est un signal rouge. Une page qui passe de 2,1 à 6,8 secondes n'est pas "lente" : elle est potentiellement cassée. C'est un problème de catégorie Conversion et c'est une tâche Remove. Vérifiez d'abord.

Vous chargez la page sur votre téléphone. 7 secondes pour rendre. Une image hero qui faisait 120KB fait maintenant 4,2MB. L'équipe dev a poussé un asset non optimisé. Vous signalez au client avec une capture d'écran et le fichier spécifique. Résolution : 5 minutes.

### Étape 2 : Vérifier la hiérarchie pour chaque compte

**Compte A :** Avec le problème de page signalé, la Conversion est la contrainte. Tout le reste dans le Compte A attend.

**Compte B :** Le taux Lead vers SQL a crashé de 22% à 9%. Le client a changé son équipe commerciale. C'est une contrainte de catégorie Business. Aucun changement Google Ads ne corrigera ça. Votre action : documenter la corrélation, la présenter au client avec des données spécifiques, et recommander qu'il adresse l'onboarding commercial avant d'ajuster le ciblage ou le volume des campagnes.

**Compte C :** Lost IS (Budget) à 45% sur une campagne prouvée avec une augmentation de budget approuvée. C'est une contrainte de catégorie Traffic avec une solution claire. Implémentez l'augmentation de budget par paliers de 20% sur la prochaine semaine.

### Étape 3 : Séquencer et exécuter

**Ordre de priorité :** A (correction urgente, escalader immédiatement), C (exécution rapide, implémenter l'augmentation de budget par paliers), B (planification de Sprint, préparer la conversation client pour l'appel hebdo).

**Temps total de triage des trois comptes :** 15 minutes.

**Temps total pour résoudre A (escalation) et C (ajustement budget) :** 25 minutes.

À 9h45, vous avez géré les urgences, exécuté la victoire facile, et correctement identifié le problème qui nécessite une conversation plutôt qu'un changement de campagne. Le reste de la journée est du travail de Sprint sur vos contraintes actives.

C'est à ça que ressemble un séquençage discipliné en pratique.

## Tout assembler

Quand vous vous asseyez devant un compte avec plusieurs problèmes, votre séquence de décision est :

1. **Scanner les urgences :** Quelque chose qui marchait est-il cassé ? Tracking (suivi des conversions/évènements) cassé, pages cassées, annonces désapprouvées. Corriger ou escalader immédiatement.
2. **Suivre la hiérarchie :** Quelle catégorie a le problème de plus haute priorité ? (Mesure > Business > Conversion > Traffic > Creative)
3. **Dans cette catégorie, lister toutes les corrections potentielles :** Tirer du backlog ou générer de nouveaux items pendant la revue.
4. **Scorer chaque correction :** Impact x Confiance / Effort.
5. **Vérifier la suffisance des données :** Avez-vous assez de données pour agir sur les items prioritaires ? Si non, attendez.
6. **Vérifier la maturité du compte :** Ce compte est-il prêt pour ce type d'optimisation ?
7. **Les 3 premiers deviennent votre Sprint :** Exécutez avec focus, mesurez le résultat, puis réévaluez.

Le spécialiste qui trie quinze problèmes sur trois comptes en quinze minutes et **travaille sur le bon toute la journée** surpassera le spécialiste qui passe huit heures à faire des changements sur les trois comptes sans priorité claire. À chaque fois.

## Checklist d'implémentation

Pour chaque compte que vous gérez, vous devriez pouvoir :

- [ ] Maintenir un backlog d'optimisations vivant avec des items scorés (Impact x Confiance / Effort)
- [ ] Confirmer que votre cible de Sprint actuelle respecte la [hiérarchie des cinq catégories](<Fondamentaux - Les cinq catégories et la hiérarchie des contraintes.md>) : pas de Sprint aval tant que l'amont est rouge
- [ ] Énoncer le stade de maturité du compte et confirmer que votre approche d'optimisation correspond
- [ ] Pointer les seuils de données que vous utilisez avant chaque décision (clics, conversions, temps)
- [ ] Montrer que vos 3 items de Sprint principaux sont les items les mieux scorés dans la catégorie de la contrainte active
- [ ] Revoir et re-scorer le backlog au moins mensuellement
- [ ] Distinguer entre "ça semble urgent" et "c'est vraiment la contrainte de plus haute priorité" avant d'agir

## Documents liés

- [Pas d'objectif, pas de goulot d'étranglement](<Fondamentaux - Pas d'objectif, pas de goulot d'étranglement.md>)
- [Les cinq catégories et la hiérarchie des contraintes](<Fondamentaux - Les cinq catégories et la hiérarchie des contraintes.md>)
- [Moteur de diagnostic : du symptôme à la contrainte puis à la solution](<Fondamentaux - Moteur de diagnostic - du symptôme à la contrainte puis à la solution.md>)
- [Status Board et rythmes opérationnels](<Fondamentaux - Status Board et rythmes opérationnels.md>)
- [Une seule contrainte, tout le reste est du bruit](<Fondamentaux - Une seule contrainte, tout le reste est du bruit.md>)
- [Pensée systémique et analyse des goulots d'étranglement](<Fondamentaux - Pensée systémique et analyse des goulots d'étranglement.md>)
- [Volume vs efficacité (More Better New)](<Fondamentaux - Volume vs efficacité (More Better New).md>)
- [Sprints contrainte et exécution focalisée](<Fondamentaux - Sprints contrainte et exécution focalisée.md>)
- [Modèle mental Optimization Cadence](<../../03-google-ads/strategie/Strategie - Cadence d'optimisation.md>)

## Termes

| Terme | Définition |
|-------|-----------|
| Matrice impact/effort | Une grille 2x2 classifiant les optimisations par impact attendu (fort/faible) et effort requis (fort/faible) pour déterminer la priorité d'exécution |
| Séquençage piloté par la contrainte | Le principe que la hiérarchie des cinq catégories (Mesure > Business > Conversion > Traffic > Creative) prime sur la préférence personnelle pour choisir sur quoi travailler |
| Stade de maturité du compte | L'une des quatre phases (Lancement, Rampe, Stable, Mature) qui détermine quels types d'optimisation sont appropriés |
| Seuil de données suffisantes | Le nombre minimum d'événements (clics, conversions, jours) requis avant d'agir sur une métrique |
| Backlog d'optimisations | Une liste scorée et classée de toutes les optimisations potentielles pour un compte, maintenue et réévaluée mensuellement |
| Score de priorité | Impact (1-3) x Confiance (1-3) / Effort (1-3), utilisé pour classer les items du backlog pour l'inclusion dans le Sprint |
| Triage | Le processus de scanner tous les problèmes à travers les comptes, classifier la sévérité, et déterminer l'ordre d'exécution avant de faire un changement |
