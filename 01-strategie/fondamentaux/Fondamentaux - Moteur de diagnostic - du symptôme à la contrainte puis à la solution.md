# Moteur de diagnostic : du symptôme à la contrainte puis à la solution

> **Plateforme :** Stratégie
> **Catégorie :** Fondamentaux
> **Type :** Fondamental
> **Mis à jour :** 2026-05-07

## Objectif

Définit la boucle de diagnostic en quatre objets (Symptom Pattern, Contrainte, Solution Pattern, Playbook) et le processus reproductible pour passer de "quelque chose ne va pas" à un Sprint focalisé avec des tâches concrètes. C'est le moteur qui transforme l'observation en action.

## Ce que ce document n'est PAS

- Pas une liste de symptômes ou solutions spécifiques (ceux-ci vivent dans vos bibliothèques de Symptom et Solution Patterns)
- Pas un guide de gestion de Sprint : il couvre le diagnostic et le routage, pas l'exécution de tâches
- Pas un remplacement de la hiérarchie des cinq catégories : la classification par catégorie se fait avant que ce moteur ne tourne

## Introduction

Un spécialiste Google Ads remarque que le CPA augmente sur une campagne clé. Il réagit : met en pause les mots-clés peu performants, écrit de nouvelles annonces, baisse l'objectif de ROAS cible. Le CPA continue d'augmenter. Trois semaines plus tard, il découvre que le tag de conversion était mal configuré suite à une mise à jour du site. Chaque "optimisation" qu'il a faite reposait sur des données fantômes. Les mots-clés qu'il a mis en pause étaient rentables. Les annonces qu'il a remplacées allaient bien. Trois semaines de travail qualifié ont aggravé le compte, pas amélioré.

C'est ce qui arrive quand vous sautez le diagnostic et allez directement aux solutions. Le symptôme (CPA en hausse) était réel. La contrainte (tracking cassé) était invisible parce que personne n'a demandé "pourquoi le CPA monte ?" avant de demander "comment corriger le CPA ?". Les symptômes décrivent ce à quoi les données ressemblent. Les contraintes décrivent ce qui ne va réellement pas. Ce ne sont pas la même chose, et les confondre est l'erreur la plus coûteuse en gestion de comptes.

Le **Moteur de diagnostic** existe pour forcer une pause entre *"quelque chose ne va pas"* et *"laissez-moi changer quelque chose"*. Cette pause est là où le vrai diagnostic se fait.

## Les quatre objets

Le moteur repose sur quatre types de patterns réutilisables, utilisés dans l'ordre :

**1 - Symptom Pattern :** Une description récurrente de ce à quoi les données ressemblent quand un type spécifique de problème est présent. Pas un diagnostic, juste une empreinte. Exemples : "CPL en hausse de 40%, CPQL stable, SQLs stables". "ROAS élevé, profit en baisse". "Bon LP CVR, terrible taux Lead vers SQL".

**2 - Contrainte :** Un symptôme spécifique, dans un compte spécifique, en ce moment, choisi comme le goulot que vous vous engagez à corriger. La Contrainte est l'endroit où vous appliquez [un seul goulot à la fois](<Fondamentaux - Une seule contrainte, tout le reste est du bruit.md>) et respectez la [hiérarchie des cinq catégories](<Fondamentaux - Les cinq catégories et la hiérarchie des contraintes.md>).

**3 - Solution Pattern :** Une stratégie réutilisable pour supprimer un certain type de goulot, taguée par catégorie et levier de croissance. Pas une idée aléatoire : une approche structurée qui a fonctionné pour ce type de contrainte auparavant.

**4 - Playbook :** La recette atomique, étape par étape, qui implémente une partie d'un Solution Pattern dans un seul Sprint. C'est là que la stratégie devient des tâches.

Pensez-y comme des niveaux de zoom : le **Symptom Pattern** est ce qu'on voit. La **Contrainte** est là où on focalise. Le **Solution Pattern** est comment on compte corriger. Le **Playbook** est ce qu'on fait cette semaine.

## Le flux de diagnostic complet

### Étape 1 : Le Status Board signale un problème

Vous passez en revue le [Status Board](<Fondamentaux - Status Board et rythmes opérationnels.md>) pendant le triage quotidien ou le diagnostic hebdomadaire. Une ou plusieurs métriques sont rouges ou en dérive. C'est le déclencheur. Ne réagissez pas encore. Observez.

### Étape 2 : Nommer le Symptom Pattern

Traduisez les chiffres bruts en un pattern nommé. *"CPL en hausse, CPQL stable, SQLs stables"* est plus utile que *"le CPL est passé de 38 à 52"*. Un pattern nommé correspond à une bibliothèque de causes et solutions connues. Ça vous force aussi à regarder plusieurs métriques ensemble plutôt que de vous fixer sur une seule.

### Étape 3 : Identifier la Contrainte

À partir du Symptom Pattern, posez trois questions :

1. À quelle [catégorie](<Fondamentaux - Les cinq catégories et la hiérarchie des contraintes.md>) ça appartient ? Vérifiez la hiérarchie depuis le haut.
2. Quelle métrique dans [l'équation d'objectif](<Fondamentaux - Pas d'objectif, pas de goulot d'étranglement.md>) ce symptôme pointe-t-il ?
3. Est-ce la contrainte active (celle qui, si corrigée, augmenterait le plus la production) ?

Créez une entrée de Contrainte : compte, catégorie, métrique du goulot, preuves, et pourquoi vous pensez que c'est la contrainte active. Tout le reste va dans le [backlog de contraintes](<Fondamentaux - Une seule contrainte, tout le reste est du bruit.md>).

### Étape 4 : Choisir un Solution Pattern

Avec la Contrainte identifiée :

1. Passez la [pré-vérification Remove](<Fondamentaux - Volume vs efficacité (More Better New).md>) : est-ce que quelque chose est clairement cassé ? Corrigez avant d'optimiser.
2. Classifiez : est-ce principalement un [goulot de volume ou d'efficacité](<Fondamentaux - Volume vs efficacité (More Better New).md>) ?
3. Choisissez un Solution Pattern qui correspond à la catégorie, au type de goulot et à la verticale.

### Étape 5 : Exécuter via les Playbooks

Le Solution Pattern vous dit quel type de travail faire. Les Playbooks vous disent exactement quoi cliquer, construire ou changer. Choisissez 1-3 Playbooks pour le Sprint. Ceux-ci génèrent des tâches.

### Étape 6 : Revue

À la fin du Sprint, revérifiez les métriques du Status Board liées à la Contrainte. Décidez :

- **Résolu :** la contrainte a bougé. La métrique du goulot s'est améliorée à "suffisant". Le moment de trouver la prochaine contrainte.
- **Partiel :** la métrique s'est améliorée mais est toujours la contrainte active. Continuer ou ajuster l'approche.
- **Non concluant :** pas assez de données encore. Prolonger le Sprint.
- **Mal diagnostiqué :** la métrique n'a pas bougé malgré une bonne exécution. Le symptôme pointait vers la mauvaise contrainte. Re-diagnostiquer.

Mettez à jour le statut de la Contrainte et documentez ce que vous avez appris. Vos bibliothèques de patterns deviennent plus intelligentes à chaque cycle.

## Le diagnostic en 5 minutes

Quand le temps manque (triage quotidien, en pleine réunion, vérification rapide de compte), utilisez cette version compressée :

1. **Quelle métrique a bougé ?** Regardez le Status Board. Un chiffre est hors piste.
2. **Dans quelle direction et de combien ?** Est-ce une dérive de 10% ou un crash de 50% ? L'ampleur détermine l'urgence.
3. **Quoi d'autre a bougé en même temps ?** Vérifiez les métriques corrélées. CPA en hausse mais CVR stable signifie que le coût du traffic a changé, pas le taux de conversion. CPA en hausse et CVR en baisse signifie que la Landing Page ou l'offre a cassé quelque chose.
4. **Où dans la hiérarchie ?** Est-ce que la Mesure est fiable ? Est-ce que le Business est stable ? Descendez jusqu'à trouver le décalage.
5. **Est-ce que ça correspond à un Symptom Pattern connu ?** Si oui, vous avez un raccourci vers la Contrainte et la Solution. Si non, signalez-le pour un diagnostic approfondi dans la session hebdomadaire.

Cinq questions. Cinq minutes. Pas un remplacement du moteur complet, mais suffisant pour éviter les réactions impulsives pendant le triage quotidien.

## Parcours du tunnel : le point d'entrée diagnostique intuitif

Quand vous ne savez pas par où commencer, parcourez le tunnel depuis le haut.

Commencez par le résultat business (CA, Profit, Deals) et descendez à travers [l'arbre de métriques](<Fondamentaux - Pas d'objectif, pas de goulot d'étranglement.md>). À chaque noeud, comparez réel vs objectif. Le premier noeud où la réalité diverge significativement de l'exigence est votre point de départ pour le Symptom Pattern.

Exemple : Le CA est en deçà. Les Deals sont en deçà. Le taux de closing est correct. Les SQLs sont en deçà. Les Leads sont corrects. Le LP CVR est correct. Les Clics sont corrects. Les Impressions sont correctes. La divergence est au niveau Leads vers SQLs : beaucoup de leads (prospects), pas assez deviennent des SQLs. C'est un problème de catégorie Business (qualité des leads ou processus commercial). Le Symptom Pattern pourrait être "Bon LP CVR, terrible taux Lead vers SQL".

Le parcours du tunnel empêche l'erreur de diagnostic la plus courante : commencer par la métrique que l'interface Google Ads met devant vous. Google affiche CTR, CPC et Impression Share parce que ce sont des métriques de plateforme. La vraie contrainte est souvent à une étape du tunnel que Google Ads n'affiche même pas. Parcourir le tunnel vous force à vérifier les métriques business avant les métriques de campagne.

## Trois patterns de mauvais diagnostic

Même les spécialistes Google Ads expérimentés se trompent. Voici les trois patterns de mauvais diagnostic les plus courants.

### 1. Traiter un symptôme comme une contrainte

Le CPA monte. Vous "corrigez" le CPA en baissant le ROAS cible, en mettant en pause les mots-clés chers, et en resserrant les audiences. Le CPA baisse. Le volume aussi. Le CA chute. Vous avez traité le symptôme (CPA élevé) comme si c'était la contrainte, alors que la vraie contrainte était un tracking (suivi des conversions/évènements) cassé, une dynamique d'enchères changée, ou un shift saisonnier du taux de conversion.

**Le CPA n'est pas une contrainte :** C'est un ratio. Il monte quand quelque chose dans le numérateur (coût) ou le dénominateur (conversions) change. Votre job est de trouver lequel a changé et pourquoi, pas de "corriger le CPA" directement.

### 2. Confondre corrélation et causalité

Vous avez changé la stratégie d'enchères et le CPA s'est amélioré la même semaine. Conclusion : le changement de stratégie a marché. Mais il se trouve que c'était aussi un week-end férié où les taux de conversion montent naturellement. Ou le délai de tracking signifiait que des conversions de deux semaines avant se sont finalement attribuées. Ou le budget d'un concurrent s'est épuisé.

Le remède : n'attribuez jamais des résultats à un seul changement pendant des périodes où plusieurs variables ont bougé. Attendez des données propres. Comparez à un contrôle quand c'est possible. Soyez méfiant des victoires qui arrivent trop vite.

### 3. S'ancrer dans la catégorie confortable

Vous êtes media buyer. Traffic et Creative sont votre domaine. Quand la performance baisse, vous diagnostiquez des problèmes de Traffic ou Creative parce que ce sont ceux que vous savez corriger. Pendant ce temps, la vraie contrainte est dans la catégorie Business (processus commercial) ou Conversion (UX de la Landing Page), qui sont hors de votre zone de confort.

Le remède : parcourez toujours la hiérarchie depuis le haut. Commencez par Mesure, puis Business, puis Conversion, puis Traffic, puis Creative. **La hiérarchie prime sur votre instinct.**

## Se tromper bien

Le mauvais diagnostic n'est pas un échec. C'est de la donnée. Un Sprint qui résout la contrainte valide votre diagnostic. Un Sprint où la métrique ne bouge pas malgré une bonne exécution vous dit que le diagnostic était faux. Les deux ont de la valeur.

La réponse dangereuse au mauvais diagnostic n'est pas "je me suis trompé" (ça c'est sain). La réponse dangereuse est l'une de ces trois :

- **Le déni :** *"Ça doit marcher, on a juste besoin de plus de temps"*. Parfois vrai, souvent de l'auto-illusion. Fixez un point de décision clair avant le début du Sprint.
- **Le blâme :** *"L'algorithme est cassé"*. Peut-être. Mais avez-vous vérifié toutes les autres explications d'abord ?
- **L'abandon :** *"Cette approche ne marche pas, laissez-moi essayer quelque chose de complètement différent"*. Changer toute l'approche après un Sprint est tout aussi destructeur que de ne jamais changer. Itérez, n'oscillez pas.

Quand un Sprint ne fait pas bouger la métrique :

1. Vérifiez d'abord la qualité d'exécution. Avez-vous vraiment fait ce que vous aviez prévu ?
2. Vérifiez la suffisance des données. Aviez-vous assez de volume et de temps pour que le résultat soit significatif ?
3. Si l'exécution était propre et les données sont suffisantes : le diagnostic était faux. Retournez à l'Étape 2 du flux diagnostique et cherchez un Symptom Pattern différent ou une contrainte différente.

Documentez ce que vous avez appris. *"Hypothèse testée X, résultat Y, conclusion Z"*. Avec le temps, votre taux de mauvais diagnostic baisse parce que votre bibliothèque de patterns s'améliore.

> 💡 **Principe clé :** Le moteur de diagnostic est la méthode scientifique appliquée à Google Ads. Hypothèse (Contrainte), expérience (Sprint), conclusion (Revue), prochaine hypothèse. La qualité de votre diagnostic s'améliore à chaque cycle. Se tromper une fois, c'est apprendre. Se tromper sans mettre à jour son modèle, c'est de l'entêtement.

## Checklist d'implémentation

- [ ] Quand une métrique du Status Board passe au rouge : nommer le Symptom Pattern avant de prendre toute action
- [ ] Associer le Symptom Pattern à une catégorie en utilisant la hiérarchie (Mesure d'abord)
- [ ] Créer une entrée de Contrainte avec compte, catégorie, métrique, preuves et justification
- [ ] Choisir un Solution Pattern qui correspond à la catégorie et au type de goulot
- [ ] Exécuter via 1-3 Playbooks dans un seul Sprint
- [ ] Revoir à la fin du Sprint : Résolu, Partiel, Non concluant ou Mal diagnostiqué
- [ ] Documenter le résultat sur le Symptom Pattern et le Solution Pattern pour que la bibliothèque s'améliore

## Documents liés

- [Les cinq catégories et la hiérarchie des contraintes](<Fondamentaux - Les cinq catégories et la hiérarchie des contraintes.md>)
- [Une seule contrainte, tout le reste est du bruit](<Fondamentaux - Une seule contrainte, tout le reste est du bruit.md>)
- [Volume vs efficacité (More Better New)](<Fondamentaux - Volume vs efficacité (More Better New).md>)
- [Sprints contrainte et exécution focalisée](<Fondamentaux - Sprints contrainte et exécution focalisée.md>)
- [Status Board et rythmes opérationnels](<Fondamentaux - Status Board et rythmes opérationnels.md>)
- [Pas d'objectif, pas de goulot d'étranglement](<Fondamentaux - Pas d'objectif, pas de goulot d'étranglement.md>)
- [Pensée systémique et analyse des goulots d'étranglement](<Fondamentaux - Pensée systémique et analyse des goulots d'étranglement.md>)

## Termes

| Terme | Définition |
|-------|-----------|
| Symptom Pattern | Une description récurrente et nommée de ce à quoi les données ressemblent quand un type spécifique de problème est présent |
| Contrainte | Un symptôme spécifique dans un compte spécifique, en ce moment, choisi comme le goulot à corriger ce Sprint |
| Solution Pattern | Une stratégie réutilisable pour supprimer un certain type de goulot, taguée par catégorie et levier de croissance |
| Playbook | Une recette atomique, étape par étape, qui implémente une partie d'un Solution Pattern dans un seul Sprint |
| Moteur de diagnostic | La boucle complète : Status Board vers Symptôme vers Contrainte vers Solution vers Playbook vers Revue |
| Parcours du tunnel | La technique de commencer au résultat business et descendre l'arbre de métriques pour trouver la première divergence |
| Mauvais diagnostic | Quand un Sprint ne fait pas bouger la métrique cible malgré une bonne exécution, indiquant que la mauvaise contrainte a été sélectionnée |
