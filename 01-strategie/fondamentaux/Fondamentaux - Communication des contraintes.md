# Communication des contraintes

> **Plateforme :** Stratégie
> **Catégorie :** Fondamentaux
> **Type :** Fondamental
> **Mis à jour :** 2026-05-07

## Objectif

Ce document définit comment communiquer le système de scaling basé sur les contraintes aux clients et parties prenantes. Elle fournit les quatre livrables client, des scripts pour les conversations courantes, un format structuré de revue trimestrielle (QBR) et un format d'appel hebdomadaire qui maintient l'alignement des parties prenantes sans faire dérailler les Sprints actifs.

---

## Ce que ne couvre PAS ce document

**Ce document ne couvre PAS :**

- La théorie derrière l'optimisation basée sur les contraintes (Voir : [One constraint, everything else is noise](<Fondamentaux - Une seule contrainte, tout le reste est du bruit.md>))
- La définition du tableau de bord ou des rythmes opérationnels (Voir : [Status board and operating rhythms](<Fondamentaux - Status Board et rythmes opérationnels.md>))
- Le fonctionnement des Sprints (Voir : [Constraint sprints and focused execution](<Fondamentaux - Sprints contrainte et exécution focalisée.md>))
- Les instructions d'exécution pas à pas pour le diagnostic ou la planification de Sprint
- Le remplacement de la prise de décision stratégique sur la contrainte à prioriser

---

## Les quatre livrables client

Chaque interaction client utilise une combinaison de ces quatre livrables. Créez-les une fois par compte, mettez-les à jour à chaque Sprint.

| Livrable | Ce qu'il montre | Quand l'utiliser | Fréquence de mise à jour |
|----------|---------------|-------------|----------------|
| **Tableau de bord** | Vue d'ensemble sur une page avec un bilan vert/orange/rouge sur les cinq catégories (Mesure, Business, Conversion, Trafic, Créatif) et résultats principaux vs objectifs | Chaque appel hebdomadaire et ouverture de QBR | Hebdomadaire |
| **Fiche contrainte** | Un seul slide : le goulot d'étranglement sur lequel vous vous concentrez, avec la métrique, la catégorie, le point de départ, l'objectif et l'impact attendu | Chaque appel hebdomadaire, chaque QBR, chaque fois que quelqu'un demande "pourquoi on ne fait pas X ?" | Par Sprint |
| **Backlog de contraintes** | Liste priorisée des problèmes identifiés et idées client, avec tags de catégorie et estimations d'impact approximatives | Chaque fois qu'un client propose une idée, chaque revue de backlog en QBR | En continu (ajouter les éléments au fur et à mesure) |
| **Plan de Sprint** | Plan d'exécution sur 2-4 semaines : quels Playbooks vous exécutez, quelle métrique vous ciblez, calendrier prévu | Lancement de Sprint, mise à jour de progression en appel hebdomadaire, revue de Sprint en QBR | Par Sprint |

> Ces ne sont pas de nouveaux livrables. Vous les maintenez déjà en interne. La recommandation porte sur leur visibilité auprès des clients dans un langage qu'ils comprennent.

---

## Expliquer le système aux parties prenantes non techniques

Utilisez ce script lors de l'intégration d'un nouveau client ou d'une nouvelle partie prenante. Adaptez les détails à leur activité.

**Le script de l'usine :**

> Imaginez Google Ads comme une usine.
>
> Chaque mois, on veut que cette usine produise [X de chiffre d'affaires / Y SQL / Z nouveaux clients].
>
> En ce moment, il y a plein de choses sur lesquelles on pourrait travailler : campagnes, Landing Pages, nouvelles fonctionnalités. Mais une seule partie de l'usine limite réellement la production. C'est le goulot d'étranglement.
>
> Notre travail c'est de :
> 1. Trouver ce goulot d'étranglement en utilisant vos métriques.
> 2. Concentrer nos Sprints sur sa résolution.
> 3. Mettre toutes les autres idées dans un backlog jusqu'à ce qu'elles aident réellement le goulot d'étranglement.
>
> C'est pour ça qu'on travaille sur [Contrainte] au lieu de tester [leur demande] ce mois-ci.

**Delivery recommandée :**

| Contexte | Comment livrer |
|---------|---------------|
| Intégration nouveau client | Parcourir les quatre livrables une fois, expliquer l'analogie de l'usine, poser les attentes pour la cadence |
| Nouvelle partie prenante arrive | Version 2 minutes : montrer le tableau de bord, pointer la fiche contrainte, expliquer le backlog |
| Le client demande "comment vous travaillez ?" | Partager le script de l'usine, puis montrer les quatre livrables comme preuve du système en action |

---

## Gérer "On peut tester X ?"

Quand une partie prenante demande quelque chose en dehors du focus du Sprint en cours, suivez ce schéma en quatre étapes. Ne sautez pas d'étapes.

### Étape 1 : Accuser réception et clarifier

Dites : "C'est une bonne idée. Pouvez-vous me dire ce que vous espérez que ça change ? Les leads ? Le CAC ? Le pipeline ?"

Cela permet à la partie prenante de se sentir entendue et la force à connecter son idée à une métrique. S'il ne peut pas la connecter à une métrique, c'est une information utile.

### Étape 2 : Placer dans le backlog de manière visible

Ajoutez l'idée à votre backlog de contraintes à l'écran pendant l'appel. Taguez-la avec la catégorie pertinente et si c'est probablement un levier Plus, Mieux ou Nouveau. Le client voit que son idée est capturée, pas rejetée.

### Étape 3 : Contraster avec la contrainte actuelle

Montrez la fiche contrainte et la métrique du tableau de bord. Expliquez pourquoi le focus actuel est un levier plus important en ce moment.

Utilisez un langage comme : "Si on ne résout pas [contrainte actuelle] d'abord, tester X n'atteindra pas vraiment votre objectif principal parce que [raison spécifique]".

### Étape 4 : Proposer un point de revue

Dites : "Une fois qu'on aura fait bouger cette métrique dans une zone saine, probablement à la prochaine revue de Sprint le [date], on réévaluera les éléments du backlog y compris votre idée".

**Tableau récapitulatif :**

| Étape | Ce que vous faites | Ce que le client vit |
|------|-------------|---------------------------|
| Accuser réception | Demander quelle métrique il espère faire bouger | Se sent entendu, pas bloqué |
| Backlog | Ajouter visiblement avec tag de catégorie | Voit son idée capturée |
| Contraster | Montrer la fiche contrainte et le tableau de bord | Comprend pourquoi le focus actuel est prioritaire |
| Point de revue | Donner une date spécifique de réévaluation | Sait quand son idée sera réexaminée |

> Ne sautez pas l'étape d'accusé de réception. Aller directement à "non, on se concentre sur X" crée de la défensivité. Demander "qu'est-ce que ça changerait ?" rend la conversation collaborative.

---

## Scripts de scénario

Ces trois scénarios couvrent les points de tension les plus courants entre l'exécution basée sur les contraintes et les attentes des clients.

### Scénario A : Mesure cassée, le client veut une nouvelle fonctionnalité

**Situation :** Le tableau de bord montre Mesure en rouge, les données Business/Conversion ne sont pas fiables. Le client dit : "Lançons AI Max, j'ai entendu dire que ça performe bien pour d'autres".

**Réponse recommandée :**

> On veut clairement explorer ça, et j'ai ajouté "Test AI Max" à notre backlog.
>
> En ce moment, notre problème est plus fondamental : on ne fait pas encore confiance aux chiffres. La Mesure est rouge sur notre tableau de bord. Si on lance AI Max maintenant, on ne saura pas si ça fonctionne vraiment - on ferait juste des suppositions.
>
> Notre Sprint actuel est focalisé sur la correction de la Mesure pour qu'on puisse voir la réalité. Une fois que c'est en bonne forme, probablement d'ici [date], on pourra réexaminer AI Max comme candidat pour le prochain Sprint.

**Pourquoi ça marche :** Ça ne rejette pas l'idée. Ça montre la mesure comme un prérequis pour évaluer toute nouvelle initiative. Le client comprend que lancer sans mesure c'est naviguer à l'aveugle.

### Scénario B : Contrainte business (qualité des leads), le client pousse pour plus de volume

**Situation :** Le tableau de bord montre Business en rouge (taux Lead vers SQL à 5%, équipe commerciale débordée). Le Trafic est globalement correct. Le client dit : "On peut juste dépenser plus pour atteindre l'objectif de SQL ?"

**Réponse recommandée :**

> On pourrait augmenter les dépenses et obtenir plus de leads, mais en ce moment votre équipe commerciale nous dit que la plupart de ces leads ne sont pas qualifiés. Votre taux Lead vers SQL est d'à peine 5%. Ça veut dire qu'on paierait plus pour envoyer plus de mauvaises personnes dans un tunnel commercial déjà surchargé.
>
> Notre goulot d'étranglement actuel est la qualité des leads et le processus de vente, pas le volume en haut de tunnel. Ce Sprint, on se concentre sur l'amélioration de la qualification et du suivi. Une fois que c'est sain, on voudra clairement utiliser votre budget pour scaler, mais seulement quand on peut le faire de manière rentable.

**Pourquoi ça marche :** Ça recadre "plus de dépenses" comme du gaspillage tant que le problème de qualité n'est pas résolu. Ça positionne le scaling comme la récompense de la résolution de la vraie contrainte, pas comme l'alternative.

### Scénario C : La qualité du trafic se fait passer pour un problème de Conversion

**Situation :** Le tableau de bord montre que la Conversion semble mauvaise (CVR de LP bas), mais les termes de recherche révèlent des requêtes "emploi", "gratuit" et "exemples". Le client dit : "On devrait refaire la Landing Page, le CVR est terrible".

**Réponse recommandée :**

> Vous avez raison que le CVR est actuellement faible, et on va améliorer la page. Mais quand on regarde les termes de recherche, beaucoup de trafic vient de chercheurs d'emploi et de chercheurs de gratuit. C'est d'abord un problème de qualité de Trafic. Si on refait la page sans corriger ça, on convertira toujours le mauvais public.
>
> Donc notre Contrainte actuelle est la qualité du Trafic. Ce Sprint, on rééquilibre les requêtes et on resserre les types de correspondance et les négatifs. Ensuite on revistera les changements de LP une fois qu'on sera sûr de s'adresser aux bonnes personnes.

**Pourquoi ça marche :** Ça valide l'observation du client (le CVR est mauvais) tout en corrigeant le diagnostic. Le client voit que vous n'ignorez pas le problème, vous en adressez la cause racine.

---

## Quand le client a raison

Parfois l'instinct du client pointe vers le vrai goulot d'étranglement. Il apporte des données, du contexte ou des contraintes internes que vous n'aviez pas vus. Son idée révèle une contrainte Business de niveau supérieur (capacité, trésorerie, tarification) qui change réellement le tableau.

**Comment gérer :**

| Étape | Action |
|------|--------|
| 1. Écouter complètement | Ne pas interrompre ni se défendre. Le laisser présenter ses données et son raisonnement. |
| 2. Rouvrir le cadre de diagnostic | Parcourir l'équation d'objectif, l'arbre de métriques, le tableau de bord et la hiérarchie des catégories avec ses nouvelles informations. |
| 3. Mettre à jour si justifié | Si ses informations montrent réellement qu'un noeud différent est la contrainte limitante, mettre à jour la fiche contrainte à l'écran. |
| 4. Expliquer le changement explicitement | Dire : "Sur la base de vos nouvelles données [capacité / marge / commercial], je suis d'accord que le goulot d'étranglement a bougé. Mettons à jour la Contrainte et ajustons ce plan de Sprint". |

**Ce qu'il faut éviter :**

| Ne pas | Pourquoi |
|--------|-----|
| Défendre l'ancienne Contrainte par ego | Le système est un outil, pas un dogme. Mettre à jour la Contrainte quand les preuves changent, c'est le système qui fonctionne correctement. |
| Changer la Contrainte sans analyse | "Vous avez raison, allons-y" sans parcourir le cadre sape toute l'approche de diagnostic. |
| Traiter chaque suggestion comme un changement de Contrainte | La plupart des idées appartiennent au backlog. Réservez les mises à jour de Contrainte aux informations véritablement nouvelles qui changent le tableau diagnostique. |

---

## Structure du QBR

Utilisez quatre slides par compte. Gardez le temps total du QBR à 30-45 minutes par compte.

### Slide 1 : Tableau de bord

| Élément | Ce qu'il faut montrer |
|---------|-------------|
| Résultats principaux | Chiffre d'affaires, leads, SQL ou achats vs objectifs |
| Statut des cinq catégories | Vert/orange/rouge par catégorie avec la métrique clé |
| Direction de la tendance | Flèches ou sparklines montrant l'amélioration, la stabilité ou le déclin |

Ouvrir avec : "Voici où on en est sur l'ensemble du périmètre". Passer 5-7 minutes. Ne pas aller en profondeur sur une seule métrique ici.

### Slide 2 : Histoire de la contrainte

| Élément | Ce qu'il faut montrer |
|---------|-------------|
| Dernière Contrainte | Quel était le goulot d'étranglement au début du trimestre |
| Ce que vous avez fait | Quels Playbooks vous avez exécutés, quels changements vous avez faits |
| Comment la métrique a bougé | Point de départ vs actuel, avec le changement de statut (rouge vers orange, orange vers vert) |
| Résultats des Sprints | Résolu, Partiellement Résolu, Non Concluant ou Mal Diagnostiqué par Sprint |

C'est votre slide de résultats. Il répond directement à : "Qu'est-ce que vous avez fait et est-ce que ça a marché ?"

### Slide 3 : Backlog

| Élément | Ce qu'il faut montrer |
|---------|-------------|
| Top 5-10 éléments du backlog | Priorisés par catégorie et impact estimé |
| Idées précédentes du client | Mises en évidence pour qu'il voie que ses contributions sont suivies |
| Tags de statut | "Identifié", "Planifié pour le prochain Sprint", "Dépriorisé (avec raison)" |

Ce slide est ce qui fait que les clients se sentent entendus. Ils voient leurs idées sur le tableau, pas oubliées.

### Slide 4 : Proposition de prochain Sprint

| Élément | Ce qu'il faut montrer |
|---------|-------------|
| Contrainte proposée | Catégorie, métrique, point de départ, objectif |
| Justification | Pourquoi c'est la contrainte limitante selon le tableau de bord et l'arbre de métriques |
| Playbooks proposés | 1-3 Playbooks spécifiques que vous prévoyez d'exécuter |
| Calendrier | Durée du Sprint et date de revue prévue |

Conclure avec : "Est-ce que ça s'aligne avec vos priorités ? Un élément du backlog qui devrait passer devant selon vous ?"

---

## Structure de l'appel hebdomadaire

Gardez les appels hebdomadaires à 30 minutes. Trois blocs, minutés.

### Bloc 1 : Scan du tableau de bord (5-10 minutes)

| Action | Détails |
|--------|---------|
| Parcourir le tableau de bord | Mettre en évidence toute catégorie dont le statut a changé depuis la semaine dernière |
| Signaler les problèmes urgents | Tout problème de Mesure ou chute importante de métrique |
| Noter les éléments "à surveiller" | Les métriques en orange qui pourraient nécessiter une attention si elles persistent |

Ne pas diagnostiquer les problèmes dans ce bloc. Les faire remonter.

### Bloc 2 : Progression du Sprint (10-15 minutes)

| Action | Détails |
|--------|---------|
| Rapport sur l'exécution des Playbooks | Ce qui a été implémenté cette semaine, ce qui est en cours |
| Montrer le mouvement de la métrique | Comment la métrique de la Contrainte a bougé depuis le début du Sprint |
| Signaler les blocages | Tout ce qui empêche l'exécution du Sprint (attente d'assets client, accès développeur, données de l'équipe commerciale) |

Ce bloc répond à : "Qu'est-ce que vous avez fait cette semaine et est-ce que ça marche ?"

### Bloc 3 : Questions client et backlog (10-15 minutes)

| Action | Détails |
|--------|---------|
| Parole ouverte | Le client soulève des idées, questions, préoccupations |
| Appliquer le schéma en quatre étapes | Accuser réception, backlog, contraster, point de revue |
| Mettre à jour le backlog en direct | Ajouter les nouveaux éléments à l'écran pour que le client les voie capturés |

Ce bloc est celui où vous empêchez la dérive du périmètre tout en maintenant la confiance.

> Terminez chaque appel par une seule phrase. "Notre focus pour la semaine à venir est [tâche spécifique liée à la Contrainte], et on fera le point la semaine prochaine le [jour]". Ça renforce la discipline et donne de la clarté au client.

---

## Conditions d'exception

### Quand rompre le focus du Sprint pour une demande client

| Condition | Action | Justification |
|-----------|--------|-----------|
| Le client fournit des données qui changent réellement le diagnostic de Contrainte | Mettre à jour la fiche contrainte et ajuster le Sprint | Le système est basé sur les preuves, pas rigide |
| Un événement externe change la réalité business (acquisition, nouveau produit, changement de marché) | Mettre en pause le Sprint, re-diagnostiquer depuis l'équation d'objectif | L'objectif a peut-être changé |
| Rupture urgente de Mesure découverte lors d'une demande client | Traiter immédiatement quel que soit le focus du Sprint | Les problèmes de Mesure ne suivent pas la règle des deux périodes |

### Quand NE PAS rompre le focus du Sprint

| Condition | Réponse | Justification |
|-----------|----------|-----------|
| Le client a entendu parler d'une nouvelle fonctionnalité Google | Accuser réception, backlog, contraster, point de revue | Les nouvelles fonctionnalités ne sont pas des contraintes |
| Le CEO a vu une pub d'un concurrent | Accuser réception, backlog, contraster, point de revue | L'activité concurrentielle n'est pas un diagnostic |
| Le client veut augmenter le budget en plein Sprint | Expliquer pourquoi le scaling pendant un travail actif sur une contrainte introduit du bruit | Les changements de budget pendant les Sprints contaminent les données du Sprint |
| Les demandes du client correspondent à une catégorie de moindre priorité | Backlog avec tag de catégorie, montrer la hiérarchie | La hiérarchie des catégories existe pour cette raison |

---

## Documents liés

| Document | Relation |
|----------|--------------|
| [One constraint, everything else is noise](<Fondamentaux - Une seule contrainte, tout le reste est du bruit.md>) | Théorie : pourquoi le focus sur une seule contrainte fonctionne |
| [Status board and operating rhythms](<Fondamentaux - Status Board et rythmes opérationnels.md>) | Théorie : le livrable tableau de bord et les cadences de revue |
| [Constraint sprints and focused execution](<Fondamentaux - Sprints contrainte et exécution focalisée.md>) | Théorie : planification, exécution et évaluation des Sprints |
| [The five buckets & hierarchy of constraints](<Fondamentaux - Les cinq catégories et la hiérarchie des contraintes.md>) | Théorie : ordre de priorité des catégories utilisé dans les conversations client |
| [Diagnostic engine: Symptom to Constraint to Solution](<Fondamentaux - Moteur de diagnostic - du symptôme à la contrainte puis à la solution.md>) | Théorie : comment les contraintes sont identifiées et routées |
| [No goal, no bottleneck](<Fondamentaux - Pas d'objectif, pas de goulot d'étranglement.md>) | Théorie : pourquoi l'alignement sur l'objectif est un prérequis pour les conversations sur les contraintes |
| [You might be a constraint too](<Fondamentaux - Vous êtes peut-être aussi une contrainte.md>) | Théorie : reconnaître quand le goulot d'étranglement est interne, pas dans le compte |

---

## Termes

| Terme | Définition |
|------|-----------|
| Tableau de bord | Vue unique de la santé par compte montrant 1-2 métriques par catégorie avec un statut vert/orange/rouge |
| Fiche contrainte | Visuel d'un slide identifiant la métrique du goulot d'étranglement actuel, la catégorie, le point de départ et l'objectif |
| Backlog de contraintes | Liste priorisée des problèmes identifiés et idées client en attente d'un focus Sprint |
| Plan de Sprint | Plan d'exécution sur une période définie ciblant une Contrainte avec 1-3 Playbooks |
| Schéma en quatre étapes | Accuser réception, backlog, contraster, point de revue : la séquence pour gérer les demandes hors-Sprint |
| QBR | Revue Trimestrielle : revue structurée utilisant quatre slides par compte |
