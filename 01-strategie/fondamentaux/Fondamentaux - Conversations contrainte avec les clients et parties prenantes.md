# Conversations contrainte avec les clients et parties prenantes

> **Plateforme :** Stratégie
> **Catégorie :** Fondamentaux
> **Type :** Fondamental
> **Mis à jour :** 2026-05-07

## Objectif

Cet article vous apprend à communiquer le système de scaling basé sur les contraintes aux clients et parties prenantes pour qu'ils comprennent votre focus, se sentent écoutés, et arrêtent de faire dérailler les Sprints actifs avec des demandes d'objets brillants.

## Ce que ce document n'est PAS

- Pas un SOP de gestion client (pas d'exécution étape par étape)
- Pas un pitch commercial pour le système
- Pas une bibliothèque de modèles pour slides

## Introduction

L'ensemble du système de scaling Google Ads fonctionne parfaitement dans votre tête. Vous avez un Status Board, un arbre de métriques, un Moteur de diagnostic, une Contrainte active par compte, et un plan de Sprint lié à des Playbooks.

Le problème est que votre client ne vit pas dans ce système. Il vit dans un monde de mises à jour Loom, de *"On peut essayer cette nouvelle beta ?"*, et de *"Mon CEO a vu une pub d'un concurrent et veut qu'on fasse pareil"*.

Sans un **récit de contrainte** partagé, vous êtes entraîné dans du whack-a-mole tactique. Chaque appel devient une négociation entre ce que vous savez qui compte et ce que quelqu'un d'autre pense être urgent. Vous perdez le focus sur le vrai goulot, et vous perdez la capacité de dire "pas maintenant" avec une raison claire et non-défensive.

Cet article vous donne un moyen de rendre la logique de contrainte visible aux personnes non-techniques, en utilisant quatre artefacts que vous avez déjà en interne. L'objectif est simple : transformer les conversations de *"Pouvez-vous appuyer sur ce bouton ?"* en *"Mettons-nous d'accord sur la contrainte actuelle, puis décidons où votre idée se situe dans le système"*.

## Pourquoi vous avez besoin d'un récit de contrainte

Les clients et parties prenantes ne jugent pas votre travail par le fait d'avoir supprimé la contrainte active ce mois-ci. Ils le jugent par le fait d'avoir "fait quelque chose", d'avoir implémenté leur idée, d'avoir essayé la dernière fonctionnalité que Google a sortie.

Sans récit de contrainte, chaque demande de partie prenante a le même poids, et la voix la plus forte gagne. Vous finissez par tester AI Max parce que le CMO en a entendu parler, pousser du budget parce que le CEO veut plus de leads, ou reconstruire une Landing Page parce que quelqu'un a lu un article de blog - tout ça pendant que le vrai goulot (disons, un taux Lead vers SQL de 5%) reste intact.

La solution est de rendre la logique basée sur les contraintes visible. Vous n'avez pas besoin d'enseigner la Théorie des Contraintes aux clients. Vous avez besoin d'un petit ensemble de visuels et artefacts qui cadrent chaque conversation autour de "qu'est-ce qui limite réellement vos résultats en ce moment".

## Les quatre éléments de communication client

Vous les avez déjà en interne. Voici comment ils apparaissent aux clients :

Le **Status Board** est un bilan de santé d'une page par catégorie. Il montre les résultats business (CAC, CA, pipeline), la santé du tunnel (Conversion), les signaux Traffic et Creative, et la fiabilité de la Mesure. Les clients voient une vue simple vert/orange/rouge de ce qui marche et ce qui ne marche pas.

La **carte de Contrainte** est un slide ou visuel unique qui dit : "Voici le seul goulot sur lequel on se concentre maintenant". Elle inclut la métrique et la catégorie (ex : taux Lead vers SQL, Business), l'impact sur l'objectif (ex : bloque 80 SQLs/mois), et la baseline vs la cible. C'est l'ancre de chaque conversation.

Le **backlog de Contraintes** (ou parking d'idées) est une liste des autres problèmes que vous avez repérés et des idées que le client a soulevées. Il montre où vivent leurs idées et quand elles pourraient entrer en jeu. C'est ce qui fait que les clients se sentent écoutés sans faire dérailler le focus.

Le **plan de Sprint** est un plan court : "Pour les 2 à 4 prochaines semaines, on exécute ces Playbooks pour faire bouger cette métrique". Il rend votre travail intentionnel et visible.

Si vous apportez ces quatre éléments à un appel, vous pouvez cadrer pratiquement n'importe quelle conversation.

## Comment expliquer le système en langage client

Vous ne parlez pas de catégories de contraintes ou de Solution Patterns avec les clients. Gardez ça simple. Voici un script qui marche :

> Pensez à Google Ads comme une usine.
>
> Chaque mois, on veut que cette usine produise [X de CA / Y SQLs / Z nouveaux clients].
>
> En ce moment, il y a plein de choses sur lesquelles on pourrait travailler (campagnes, Landing Pages, nouvelles betas) mais une seule partie de l'usine limite réellement la production. C'est le goulot d'étranglement.
>
> Notre travail est de :
>
> 1. Trouver ce goulot en utilisant vos métriques.
> 2. Focaliser nos Sprints pour le corriger.
> 3. Mettre toutes les autres idées dans un backlog jusqu'à ce qu'elles aident réellement le goulot.
>
> C'est pourquoi on exécute ce Sprint sur [Contrainte] au lieu de tester [objet brillant] ce mois-ci.

S'ils comprennent cette histoire une fois, vous pouvez y revenir chaque fois que vous devez dire "pas maintenant".

## Gérer "On veut tester X" sans perdre le fil

C'est là que la plupart des spécialistes craquent. Une partie prenante dit "On peut tester X ?" et le spécialiste soit cède immédiatement (perte de focus) soit dit non sans explication (perte de confiance).

Il y a un meilleur pattern. Il a quatre étapes :

D'abord, **reconnaître et clarifier**. *"Bonne idée. Pouvez-vous me dire ce que vous espériez changer ? Les leads ? Le CAC ? Le pipeline ?"* Ça fait que la partie prenante se sent écoutée et la force à connecter son idée à une métrique.

Ensuite, **placer dans le backlog visiblement**. Ajoutez-la à votre backlog de Contraintes à l'écran. Taguez avec quelle catégorie ça concerne et si c'est probablement un levier More, Better ou New. Le client peut voir que son idée est capturée, pas rejetée.

Puis, **contraster avec la Contrainte actuelle**. Montrez la carte de Contrainte et la métrique du Status Board. Expliquez pourquoi le focus actuel a plus de levier maintenant : *"Si on ne corrige pas la mesure / le CAC / le taux Lead vers SQL ici, tester X n'atteindra pas vraiment votre objectif principal"*.

Enfin, **offrir un point de revue**. *"Une fois qu'on aura fait bouger cette métrique dans une fourchette saine, probablement à la prochaine revue de Sprint, on réévaluera les items du backlog, y compris votre idée X"*.

De cette façon, leur idée n'est pas rejetée, elle est visiblement capturée, et vous maintenez le focus sur la Contrainte.

## Exemples de scénarios et scripts

### Scénario A : La mesure est cassée, le client veut une nouvelle fonctionnalité

Le Status Board montre Mesure rouge, Business/Conversion non fiables. Le client dit : *"Lançons AI Max, j'ai entendu que ça performe super bien pour d'autres"*.

> On veut définitivement explorer ça, et j'ai ajouté "test AI Max" à notre backlog.
>
> En ce moment, notre problème est plus basique : on ne fait pas encore confiance aux chiffres (la Mesure est rouge). Si on lance AI Max maintenant, on ne saura pas si ça marche vraiment - on devinerait.
>
> Notre Sprint actuel est focalisé sur corriger la Mesure pour voir la vérité. Une fois que c'est en place (probablement vers [date]), on pourra revoir AI Max comme Solution Pattern potentiel pour le prochain goulot.

### Scénario B : Contrainte Business (qualité des leads), le client pousse plus de volume

Le Status Board montre Business rouge (taux Lead vers SQL mauvais, équipe commerciale débordée) tandis que Traffic est globalement correct. Le client dit : *"On peut juste dépenser plus pour atteindre l'objectif SQL ?"*

> On pourrait augmenter la dépense et obtenir plus de leads, mais en ce moment votre équipe commerciale nous dit que la plupart de ces leads ne sont pas qualifiés, et votre taux Lead vers SQL n'est qu'à ~5%. Ça veut dire qu'on paierait juste plus pour envoyer plus de mauvaises personnes dans un tunnel commercial déjà surchargé.
>
> Notre goulot actuel est la qualité des leads et le processus commercial, pas le volume haut du tunnel. Ce Sprint, on se concentre sur améliorer la qualification et le suivi. Une fois que c'est sain, on veut définitivement utiliser votre budget pour scaler - mais seulement quand on peut le faire de manière rentable.

### Scénario C : Conversion vs qualité du Traffic

Le Status Board montre que la Conversion a l'air mauvaise (LP CVR bas), mais le mix de requêtes révèle des requêtes "emploi", "gratuit", "exemples". Le client dit : *"On devrait reconstruire la Landing Page, le CVR est terrible"*.

> Vous avez raison que le CVR est actuellement faible, et on va améliorer la page. Mais quand on regarde les termes de recherche, beaucoup de traffic vient de chercheurs d'emploi et de chasseurs de gratuit. C'est d'abord un problème de qualité de Traffic. Si on reconstruit la page sans corriger ça, on continuera de vendre au mauvais public.
>
> Du coup notre Contrainte actuelle est : qualité du Traffic. Ce Sprint, on rééquilibre les requêtes et on resserre les types de correspondance et les négatifs, puis on revisera les changements de Landing Page une fois qu'on sera sûr de parler aux bonnes personnes.

## Quand le client a raison et la Contrainte change

Parfois l'instinct du client pointe vers le vrai goulot. Il apporte des données, du contexte, ou des contraintes internes que vous n'aviez pas vues. Son idée expose une contrainte Business de plus haut niveau (ex : capacité, trésorerie) qui change vraiment l'image.

Quand ça arrive, écoutez-le complètement. Puis rouvrez votre équation d'objectif, arbre de métriques, Status Board et hiérarchie des catégories. Si son information montre véritablement qu'un noeud différent est maintenant la contrainte active, ou que l'objectif principal a changé, mettez à jour la carte de Contrainte et expliquez ce shift explicitement :

> "Basé sur votre nouvelle réalité de capacité commerciale / marge, je suis d'accord que le goulot s'est déplacé en amont. Mettons à jour la Contrainte et ajustons le plan de Sprint en conséquence".

Ça garde la relation collaborative et le système comme un outil de confiance, pas un dogme rigide.

## À quoi ça ressemble en QBR et appels hebdo

### Structure QBR

Pour chaque compte clé, un QBR suit quatre slides. Le **slide Status Board** donne une vue vert/orange/rouge avec les résultats principaux vs objectifs. Le **slide histoire de la Contrainte** montre quel était le goulot à la dernière revue, ce que vous avez fait (Solution Pattern et Playbooks), et comment la métrique cible a bougé. Le **slide Backlog** présente les principales idées Symptôme/Contrainte en file d'attente, avec les idées précédentes du client visiblement listées. La **proposition de Sprint suivant** couvre la Contrainte proposée pour le prochain Sprint, la justification depuis le Status Board et l'arbre de métriques, et les Playbooks proposés.

### Structure appel hebdomadaire

Les appels hebdo sont plus tactiques mais suivent les mêmes éléments : 5 à 10 minutes sur le Status Board et tout problème Remove urgent, 10 à 15 minutes sur le progrès du Sprint actif (ce qui a été implémenté, ce qui vient), et 10 à 15 minutes pour les questions client, idées, et discussions backlog/Contrainte.

## Checklist d'implémentation

Quand vous avez terminé, vous devriez pouvoir :

- [ ] Expliquer le système de scaling à une nouvelle partie prenante en moins de 2 minutes en utilisant le Status Board, une carte de Contrainte, et le backlog.
- [ ] Gérer "On peut tester X ?" avec : reconnaissance, entrée au backlog, explication de la Contrainte, point de revue.
- [ ] Montrer, à tout moment : la Contrainte actuelle et le Sprint pour leur compte. Où vivent leurs idées passées dans le backlog. Comment votre dernier Sprint a fait bouger une métrique spécifique du Status Board.
- [ ] Quitter chaque QBR ou appel hebdo avec : accord sur le goulot. Accord sur le focus du prochain Sprint. Client qui se sent écouté, même si son idée n'a pas "gagné" ce Sprint.

## Documents liés

- [Status Board et rythmes opérationnels](<Fondamentaux - Status Board et rythmes opérationnels.md>)
- [Sprints contrainte et exécution focalisée](<Fondamentaux - Sprints contrainte et exécution focalisée.md>)
- [Les cinq catégories et la hiérarchie des contraintes](<Fondamentaux - Les cinq catégories et la hiérarchie des contraintes.md>)
- [Moteur de diagnostic : du symptôme à la contrainte puis à la solution](<Fondamentaux - Moteur de diagnostic - du symptôme à la contrainte puis à la solution.md>)
- [Une seule contrainte, tout le reste est du bruit](<Fondamentaux - Une seule contrainte, tout le reste est du bruit.md>)
- [Vous êtes peut-être aussi une contrainte](<Fondamentaux - Vous êtes peut-être aussi une contrainte.md>)

## Termes

| Terme | Définition |
|-------|-----------|
| Status Board | Vue de santé unique par compte à travers les cinq catégories |
| Carte de Contrainte | Visuel d'un slide identifiant la métrique et catégorie du goulot actuel |
| Backlog de contraintes | Liste priorisée des problèmes identifiés et idées client en attente de focus Sprint |
| Plan de Sprint | Plan d'exécution cadencé ciblant une Contrainte avec 1-3 Playbooks |
