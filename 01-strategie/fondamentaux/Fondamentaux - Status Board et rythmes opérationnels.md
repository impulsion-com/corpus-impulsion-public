# Status Board et rythmes opérationnels

> **Plateforme :** Stratégie
> **Catégorie :** Fondamentaux
> **Type :** Fondamental
> **Mis à jour :** 2026-05-07

## Objectif

Définit le Status Board (une vue de santé unique par compte avec 1-2 métriques par catégorie) et les rythmes quotidiens, hebdomadaires et mensuels qui en font un outil opérationnel vivant. Couvre pourquoi la cadence bat la gestion de crise, comment séparer le signal du bruit, et ce qui casse quand on saute un rythme.

## Ce que ce document n'est PAS

- Pas un modèle de tableau de bord ou guide de configuration analytics
- Pas un SOP pour configurer des outils spécifiques (Looker Studio, tableurs, etc.)
- Pas un remplacement du [Moteur de diagnostic](<Fondamentaux - Moteur de diagnostic - du symptôme à la contrainte puis à la solution.md>) : le Status Board fait remonter les problèmes, le Moteur de diagnostic les explique
- Pas un guide d'exécution de Sprint (voir [Sprints contrainte et exécution focalisée](<Fondamentaux - Sprints contrainte et exécution focalisée.md>))

## Introduction

Un spécialiste Google Ads remarque que le CPA monte sur une campagne clé. Il réagit : met en pause les mots-clés peu performants, écrit de nouvelles annonces, baisse l'objectif de ROAS cible. Le CPA continue de monter. Trois semaines plus tard, il découvre que le tag de conversion était mal configuré suite à une mise à jour du site. Chaque "optimisation" faite pendant ces trois semaines était une décision basée sur des données fantômes. Il n'avait pas un problème de CPA. Il avait un problème de Mesure qui était invisible parce que personne n'avait vérifié.

C'est ce qui arrive quand on gère des comptes sans rythme. On ne regarde que quand un client appelle, qu'un rapport est dû, ou qu'une métrique crashe assez fort pour déclencher une alerte email. C'est de la gestion de crise. Ça a l'air réactif mais c'est structurellement en retard : vous êtes toujours derrière le problème.

La solution n'est pas plus de talent ou de meilleurs outils. C'est la **cadence**. Un rythme structuré de revues quotidiennes, hebdomadaires et mensuelles qui attrape la dérive à 5% avant qu'elle ne devienne un crash de 40%. Cet article définit l'instrument que vous utilisez pour ces revues (le Status Board) et les rythmes opérationnels qui le font fonctionner.

## L'analogie de la station météo

Pensez au Status Board comme une station météo pour votre compte. Un agriculteur ne sort pas une fois par trimestre en disant "les cultures ont l'air mauvaises". Un agriculteur vérifie la station météo chaque matin. Température, humidité, vent, précipitations : cinq relevés, trente secondes, c'est fait. La plupart des jours, tout va bien et l'agriculteur passe à autre chose. Mais le jour où une alerte gel apparaît, il agit immédiatement parce qu'il l'a attrapée au stade de la prévision, pas quand les cultures sont déjà mortes.

Votre Status Board fonctionne de la même façon. Cinq métriques, une par catégorie, vérifiées quotidiennement. La plupart des jours, tout est vert et vous passez à autre chose en dix minutes. Mais le jour où la Mesure passe au rouge, vous l'attrapez avant que trois semaines de décisions sur des données fantômes ne s'accumulent.

La station météo ne dit pas à l'agriculteur comment sauver les cultures. C'est le rôle du Moteur de diagnostic. La station météo dit à l'agriculteur que quelque chose nécessite attention, quel relevé est hors norme, et à quel point c'est urgent. C'est le travail du Status Board : faire remonter les problèmes vite, les router vers le bon système, et empêcher la dérive de composer en catastrophe.

## Qu'est-ce qu'un Status Board ?

Un Status Board est une vue unique par compte qui montre 1-2 métriques clés par catégorie (Mesure, Business, Conversion, Traffic, Creative), leurs valeurs actuelles comparées aux objectifs sur des fenêtres temporelles appropriées, et un statut simple par catégorie : vert, orange ou rouge.

Ce n'est pas un tableau de bord analytics complet. Pas de rapport de 20 pages. Pas de graphiques vanité. Pas de découpage par chaque dimension. C'est **cinq métriques avec trois couleurs possibles**, conçu pour répondre à une question :

> "Quelle catégorie est rouge, et est-ce juste du bruit, ou est-ce une vraie Contrainte sur laquelle agir ?"

> 💡 **Distinction clé :** Le Status Board est là où vous remarquez les problèmes. Le [Moteur de diagnostic](<Fondamentaux - Moteur de diagnostic - du symptôme à la contrainte puis à la solution.md>) est là où vous les expliquez. Les [Sprints](<Fondamentaux - Sprints contrainte et exécution focalisée.md>) sont là où vous les corrigez.

## Choisir les métriques du Status Board

Construisez le Status Board en tirant les noeuds clés de votre arbre de métriques et en les taguant par catégorie. L'objectif est 1-2 métriques par catégorie par compte : assez pour repérer les vrais problèmes, pas assez pour se noyer dans les données.

### Mesure : "Est-ce qu'on fait confiance aux chiffres ?"

Métriques typiques : pourcentage d'écart entre Ads et backend (ex : "conversions Google Ads vs deals CRM") et santé des événements OCT (ex : "% de deals avec un click ID attribué"). Vert signifie que les écarts sont dans la fourchette convenue et que les événements sont stables. Orange signifie dérive mineure ou problèmes temporaires connus. Rouge signifie décalage majeur ou tracking (suivi des conversions/évènements) cassé, et c'est votre goulot jusqu'à correction.

### Business : "Est-ce que les unit economics et la capacité sont saines ?"

Métriques typiques : CAC moyen vs CAC cible, taux Lead vers SQL et SQL vers Won (ou étapes équivalentes), période de payback pour le SaaS, marge de contribution ou POAS pour l'e-commerce. Vert signifie dans les fourchettes acceptables. Rouge signifie clairement non rentable ou opérationnellement non durable.

### Conversion : "Est-ce que nos tunnels convertissent le bon traffic ?"

Métriques typiques : LP CVR (clic vers lead), taux d'ajout au panier et taux de complétion de checkout pour l'e-commerce, taux d'inscription ou de démarrage d'essai pour le SaaS. Utilisez vos fourchettes de baseline : "Cassé / Acceptable / Fort". Vert signifie acceptable ou fort. Rouge signifie cassé.

### Traffic : "Est-ce qu'on obtient assez de la bonne demande ?"

Métriques typiques : clics pour les campagnes et mots-clés clés, Search Lost IS (Budget) sur les campagnes prouvées, Search Lost Absolute Top IS (Rank) pour les mots-clés les plus importants. Vert signifie assez de volume sur les segments gagnants avec le Lost IS gérable. Rouge signifie sous-livraison claire ou mauvais mix de traffic.

### Creative : "Est-ce que notre message fait son travail ?"

Métriques typiques : CTR vs benchmarks (analyse comparative) réalistes sur le bon inventaire, métriques Niveau de qualité (Ad Relevance et Expected CTR), CPI/RPI au niveau groupe d'assets, RSA ou asset. Vert signifie que le CTR et le coût par lead qualifié sont raisonnablement consistants sur les concepts principaux. Rouge signifie CTR clairement faible ou énorme variance de coût par concept, signalant un goulot créatif.

> ↪️ **Hiérarchie des catégories :** Les [cinq catégories](<Fondamentaux - Les cinq catégories et la hiérarchie des contraintes.md>) ont un ordre de priorité strict : Mesure d'abord, Business ensuite, puis Conversion, Traffic, Creative. Si Mesure ou Business est rouge, ceux-ci priment quelle que soit ce que les autres catégories montrent.

## Fenêtres temporelles et seuils

Le Status Board n'est utile que s'il regarde la bonne fenêtre et a des seuils clairs pour rouge, orange et vert.

### Fenêtres temporelles

Pour le triage quotidien, regardez Business et Conversion sur les 7 à 14 derniers jours (selon le volume), Traffic et Creative sur les 7 derniers jours (on peut réagir plus vite), et Mesure sur les 7 à 30 derniers jours selon le délai de conversion.

Pour le diagnostic hebdomadaire, utilisez des fenêtres de 30 jours pour lisser le bruit, et comparez les 30 derniers jours vs les 30 jours précédents et l'année précédente quand c'est utile.

Ajustez selon le volume. Les comptes à fort volume (50+ conversions/semaine) peuvent utiliser des fenêtres plus courtes où 7 jours suffisent. Les comptes à faible volume (moins de 10 conversions/semaine) peuvent nécessiter des fenêtres de 30 à 60 jours pour les métriques Business et Conversion.

### Rouge, orange, vert

Utilisez vos fourchettes de baseline de l'arbre de métriques. Vert signifie "fort ou acceptable pour ce compte et cette verticale". Orange signifie "pas idéal, mais pas clairement le goulot encore". Rouge signifie "clairement hors fourchette comparé à ce que ce compte peut réaliser".

Rendez les seuils explicites. Par exemple, LP CVR dans un compte et une verticale donnés : en dessous de 2% = rouge, 2 à 5% = orange, 5 à 10% = vert. Pour le CAC : au-dessus de la cible de plus de 30% = rouge, légèrement au-dessus de la cible = orange, à la cible ou en dessous = vert.

> 💡 **Point clé :** L'objectif n'est pas d'avoir des seuils parfaits. C'est d'en avoir de consistants sur lesquels raisonner et ajuster avec le temps. La version 1 de vos fourchettes sera approximative. La version 5 sera calibrée sur le comportement réel du compte.

## Signal vs bruit : quand rouge veut vraiment dire rouge

Une métrique qui passe au rouge ne signifie pas automatiquement que vous avez une nouvelle Contrainte. Le bruit à court terme, les effets jour de la semaine, les creux de vacances et les phases d'apprentissage Stratégies d'enchères intelligentes produisent des relevés rouges qui reviennent seuls. La discipline est de savoir quand un relevé rouge est du bruit et quand c'est du signal.

### Fenêtres d'observation minimales

Toutes les catégories ne se stabilisent pas à la même vitesse. Les métriques Traffic et Creative (CTR, clics, Impression Share) sont haute fréquence : 7 jours de données suffisent en général pour voir un vrai pattern. Les métriques Conversion (LP CVR, taux de checkout) nécessitent plus de signal : 14 jours minimum, 30 jours pour les comptes à faible volume. Les métriques Business (CAC, taux Lead vers SQL, payback) dépendent fortement du délai aval : 14 à 30 jours, parfois plus si le cycle de vente dépasse 60 jours.

### La règle des deux périodes

Une métrique doit être rouge pendant **deux périodes de revue consécutives** avant d'être promue en Contrainte active. Si le LP CVR est rouge dans le diagnostic de cette semaine mais était vert la semaine dernière, signalez-le et surveillez. S'il est encore rouge la semaine prochaine, le signal est confirmé et il entre dans le Moteur de diagnostic comme un vrai Symptom Pattern.

Ça empêche l'erreur la plus courante en gestion de comptes : réagir à une seule mauvaise semaine. Une semaine où le LP CVR passe de 6% à 3,5% semble urgent. Deux semaines consécutives à 3,5% est un vrai problème. Une semaine suivie d'un rebond à 5,8% était du bruit.

### L'exception Mesure

Les problèmes de Mesure **ne suivent pas la règle des deux périodes**. Un tag de conversion cassé, un paramètre de valeur mal configuré, ou un bandeau de consentement qui bloque tout le tracking sont des problèmes d'action immédiate. Si la Mesure passe au rouge aujourd'hui, vous investiguez aujourd'hui. Vous n'attendez pas deux semaines pour confirmer que vos données vous mentent.

Exemple concret : un compte e-commerce passe à une nouvelle plateforme de checkout le mardi. Jeudi, le Status Board montre que les conversions d'achat ont chuté de 70%. Ce n'est pas un scénario de règle des deux périodes. C'est un scénario "vérifiez le tag maintenant". La différence entre attraper ça jeudi et l'attraper trois semaines plus tard est potentiellement des centaines de décisions prises sur des données fantômes.

## Pourquoi les rythmes battent la gestion de crise

Fonctionner sans rythme signifie ne regarder un compte que quand un client appelle, qu'un rapport est dû, ou qu'une métrique crashe assez fort pour déclencher une alerte email. C'est de la gestion de crise. Ça semble réactif mais c'est structurellement en retard : vous êtes toujours derrière le problème.

Les rythmes inversent ça. Au lieu d'attendre l'incendie, vous scannez la station météo selon un planning. Vous attrapez la dérive à 5% et la corrigez avant qu'elle ne compose en un problème de 40%.

Le calcul est simple. Une baisse de 5% du CVR attrapée en semaine un vous coûte une semaine de performance sous-optimale. La même baisse attrapée en semaine quatre vous coûte quatre semaines, plus toutes les mauvaises décisions prises entre-temps parce que chaque métrique aval était contaminée par la dérive. Le rythme ne vous rend pas plus rapide pour corriger les problèmes. Il **rend les problèmes plus petits** au moment où vous les corrigez.

### L'effet composé des corrections hebdomadaires

Les petites corrections chaque semaine composent de la même manière que les petites améliorations composent dans tout système. Ajuster un modificateur d'enchère de 10% basé sur deux semaines de données est une petite correction. L'ajuster de 60% après deux mois d'ignorance du signal est une correction large et risquée avec une attribution floue. Le rythme hebdomadaire garde les corrections petites, sûres et instructives.

## Triage quotidien : 10 à 15 minutes

Le triage quotidien n'est pas le moment de diagnostiquer ou de planifier de grands changements. C'est un scan rapide pour répondre à deux questions : "Est-ce que quelque chose de majeur a cassé ?" et "Faut-il une action Remove urgente ?"

La routine : ouvrez votre Status Board. Scannez la Mesure pour de nouveaux signaux rouges, de gros écarts, ou des baisses dans l'enregistrement de conversions. Si quelque chose est anormal, créez une tâche Remove/Mesure immédiatement. Scannez le Business pour des pics soudains de CAC ou des crashs de leads qualifiés. Si quelque chose semble anormal, notez-le pour le diagnostic hebdomadaire mais ne paniquez pas. Scannez Conversion, Traffic et Creative pour des baisses majeures clairement au-delà du bruit aléatoire, surtout après de gros changements. Notez-les comme candidats Symptom Patterns. Jetez un oeil à vos tâches Sprint actives pour confirmer que vous êtes sur la bonne voie.

Le résultat du triage quotidien est une courte liste de problèmes "supprimer maintenant" (trucs cassés) et de notes "signaler pour l'hebdo" (symptômes potentiels). Vous ne créez pas de nouvelles Contraintes pendant le triage sauf si quelque chose est catastrophiquement cassé.

Exemple concret : triage du lundi matin sur un compte e-commerce. La Mesure est verte (le tag se déclenche, les valeurs correspondent au backend à 5% près). Le Business montre que le CAC a bondi de 22 € à 31 € pendant le week-end, mais seulement deux jours de données avec un volume week-end plus bas. À noter pour l'hebdo, ne pas réagir. Le Traffic est vert. Le Creative montre que le CTR a baissé sur une campagne. À noter pour l'hebdo. Temps total : 8 minutes. Passez à autre chose.

## Diagnostic hebdomadaire : 60 à 90 minutes

C'est là que le Status Board montre sa valeur. Le rythme hebdomadaire est l'épine dorsale de tout le workflow du [Moteur de diagnostic](<Fondamentaux - Moteur de diagnostic - du symptôme à la contrainte puis à la solution.md>).

Pour chaque compte clé : passez en revue le Status Board sur les 28 à 30 derniers jours, en cherchant les métriques rouges ou oranges persistantes et en comparant les 30 derniers jours vs les 30 jours précédents. Parcourez l'arbre de métriques de haut en bas, en utilisant les métriques du Status Board comme points de départ pour identifier quels noeuds sont clairement hors cible. Mappez le pire noeud à une catégorie en utilisant la [hiérarchie des cinq catégories](<Fondamentaux - Les cinq catégories et la hiérarchie des contraintes.md>) : si Mesure ou Business sont rouges, ceux-ci priment. Décidez si la Contrainte active actuelle est toujours le vrai goulot (la garder) ou si une métrique différente est maintenant clairement pire (mettre à jour la Contrainte). Alimentez le Moteur de diagnostic : transformez les métriques rouges et oranges persistantes en Symptom Patterns, créez ou mettez à jour les Contraintes, et choisissez les Solution Patterns et Playbooks pour le prochain [Sprint](<Fondamentaux - Sprints contrainte et exécution focalisée.md>).

Le résultat du diagnostic hebdomadaire est une déclaration claire par compte : "Notre goulot pour le prochain Sprint est [Contrainte], dans [Catégorie], mesuré par [Métrique]".

Exemple concret : une agence fait le diagnostic hebdomadaire sur un compte lead gen B2B. Le Status Board montre Mesure vert, Business orange (taux Lead vers SQL à 12%, cible à 25%), Conversion vert (LP CVR à 7%), Traffic vert, Creative vert. La Contrainte active du Sprint précédent était le LP CVR, qui est passé de 4% à 7% et est maintenant dans la fourchette "acceptable". Le Business est maintenant la catégorie la plus faible. Nouvelle Contrainte : taux Lead vers SQL dans la catégorie Business. Le prochain Sprint se focalisera sur les améliorations de qualification des leads (prospects). Temps de diagnostic total : 55 minutes.

## Revue mensuelle et trimestrielle

Les revues mensuelles et trimestrielles servent à réaligner avec les objectifs business globaux et mettre à jour les baselines, objectifs et la structure de l'arbre de métriques.

### Mensuel

Vérifiez si vos fourchettes de baseline reflètent encore la réalité. Si vous dépassez systématiquement le "vert", relevez la barre. Si le produit, le pricing ou le positionnement a changé, recalibrez ce qui est réaliste. Comparez les résultats au niveau global vs les objectifs business (CA, Profit, Nouveau MRR) et les tendances du Status Board sur le mois. Décidez si l'ensemble actuel de métriques est toujours le bon ou si vous devez ajouter, supprimer ou ajuster des métriques et des seuils.

### Trimestriel

Comparez le trimestre vs le trimestre précédent. Êtes-vous sur la trajectoire impliquée par [l'équation d'objectif](<Fondamentaux - Pas d'objectif, pas de goulot d'étranglement.md>) ? Des catégories sont-elles restées rouges trop longtemps sans changements structurels ? Considérez si l'objectif lui-même nécessite une révision (le business a changé, le macro a changé) et si votre arbre de métriques a besoin de nouveaux noeuds (rétention, achats répétés, CA d'expansion).

## Modes d'échec des rythmes

Connaître les rythmes ne suffit pas. Vous devez comprendre ce qui casse quand vous les sautez, parce que vous serez tenté de les sauter. Les comptes ont l'air "stables". Les semaines deviennent chargées. Le triage semble inutile. Puis le coût arrive.

### Sauter le triage quotidien

Un script de tracking casse un mercredi. Personne ne vérifie jusqu'au diagnostic hebdomadaire du lundi suivant. Cinq jours de données fantômes. Chaque métrique du Status Board pour cette semaine est contaminée. Le diagnostic hebdomadaire produit une mauvaise Contrainte parce que les entrées étaient fausses. Vous sprintez sur un problème qui n'existe pas. Deux semaines perdues avant de découvrir que le vrai problème était un tag cassé.

### Sauter le diagnostic hebdomadaire

Une dérive de 5% du CVR commence en semaine un. Sans diagnostic hebdomadaire, personne ne remarque. Semaine deux, c'est 8%. Semaine trois, c'est 15%. Le temps que le client appelle pour les "mauvais résultats", la dérive a composé en un crash visible qui ressemble à une urgence. Vous paniquez, faites des changements réactifs, et ne pouvez pas dire si les changements ont aidé ou si le problème original s'est auto-corrigé. Vous avez perdu trois semaines de composition et trois semaines d'apprentissage.

### Sauter la revue mensuelle

Vos fourchettes de baseline disent qu'un LP CVR de 5% est "vert" parce que c'était une forte performance il y a six mois. Mais le compte s'est amélioré : le CVR a atteint 8% pendant trois mois suite à une refonte de Landing Page. Maintenant le CVR baisse à 6%. Le Status Board montre toujours vert parce que les fourchettes sont périmées. Vous ratez une vraie régression parce que votre instrument est mal calibré. Les revues mensuelles recalibrent l'instrument.

### Sur-surveiller

Le mode d'échec inverse : vérifier toutes les heures, paniquer sur le bruit intra-journalier, faire des changements basés sur quatre heures de données. Stratégies d'enchères intelligentes est en phase d'apprentissage, vous voyez un pic de CPA, vous baissez l'objectif. L'algorithme ne se stabilise jamais. Vous créez la volatilité que vous essayiez d'empêcher. La cadence de triage quotidien existe pour une raison : une fois par jour suffit. Plus que ça, c'est chasser le bruit.

## Status Board en 30 minutes : démarrage rapide

Si vous gérez un compte aujourd'hui sans Status Board, vous pouvez construire une version fonctionnelle en 30 minutes. Ce ne sera pas parfait. Ce sera infiniment mieux que rien.

**Étape 1 : Choisissez un compte.** Votre compte avec le plus gros budget ou les enjeux les plus élevés. N'essayez pas de construire des boards pour tous les comptes d'un coup.

**Étape 2 : Tirez une métrique par catégorie.** Cinq métriques au total. Utilisez la version la plus facile d'accès de chacune :
| Catégorie | Métrique rapide | Où la trouver |
|-----------|----------------|--------------|
| Mesure | Comptage conversions Ads vs backend (7 derniers jours) | Comparer les conversions Google Ads au CRM ou backend |
| Business | CAC ou CPQL (30 derniers jours) | Coût Google Ads / conversions confirmées backend |
| Conversion | LP CVR (14 derniers jours) | Clics Google Ads vers conversions sur les campagnes clés |
| Traffic | Clics sur les 3 meilleures campagnes (7 derniers jours) | Vue campagne Google Ads |
| Creative | CTR sur les 3 meilleures campagnes (7 derniers jours) | Vue campagne Google Ads |

**Étape 3 : Définissez des fourchettes rouge/orange/vert approximatives.** Utilisez les 90 derniers jours comme baseline. "Vert" est la fourchette dans laquelle vous avez opéré pendant les bonnes périodes. "Rouge" est pire que tout dans les 90 derniers jours. "Orange" est l'espace entre les deux.

**Étape 4 : Mettez-le quelque part que vous vérifierez quotidiennement.** Un tableur, une page Looker Studio, un document texte, un post-it sur votre écran. Le format ne compte pas. L'habitude compte.

C'est votre V1. Utilisez-la pendant deux semaines. Vous découvrirez immédiatement quelles métriques sont trop bruitées, quels seuils sont faux, et quelle catégorie vous avez ignorée. Itérez à partir de là.

## Le Status Board est l'habitude, pas l'outil

Vous pouvez construire un Status Board dans Google Sheets, Looker Studio, un tableau de bord personnalisé, ou un simple fichier texte. L'outil n'a pas d'importance. L'habitude a de l'importance.

Le praticien qui vérifie un tableur basique chaque matin et fait un diagnostic hebdomadaire sur un rythme calendaire surpassera le praticien avec un magnifique tableau de bord Looker Studio qu'il ouvre une fois par mois. À chaque fois. **Le rythme est le système.** Le board n'est que l'instrument.

Si vous avez des [objectifs sous forme d'équations](<Fondamentaux - Pas d'objectif, pas de goulot d'étranglement.md>), une carte des [cinq catégories](<Fondamentaux - Les cinq catégories et la hiérarchie des contraintes.md>) où vivent les goulots, et un [Moteur de diagnostic](<Fondamentaux - Moteur de diagnostic - du symptôme à la contrainte puis à la solution.md>) prêt à fonctionner, le Status Board et ses rythmes sont ce qui connecte tout ça à votre travail quotidien. Sans le rythme, vous avez de la théorie. Avec, vous avez un système opérationnel.

## Checklist d'implémentation

Pour chaque compte clé, vous devriez avoir :

- [ ] Un Status Board avec 1-2 métriques par catégorie, des fenêtres temporelles claires, et des fourchettes rouge/orange/vert explicites
- [ ] Un rituel de triage quotidien : 10 à 15 minutes pour scanner les cassures, avec des tâches Remove créées immédiatement pour les problèmes de Mesure
- [ ] Un rituel de diagnostic hebdomadaire : 60 à 90 minutes pour parcourir le Status Board, parcourir l'arbre de métriques, décider si la Contrainte active change, et alimenter le Moteur de diagnostic
- [ ] Une revue mensuelle pour recalibrer les baselines, seuils et s'assurer que le board reflète encore la réalité business
- [ ] La règle des deux périodes appliquée : aucune métrique ne passe en Contrainte active sur la base d'une seule mauvaise période (sauf la Mesure)
- [ ] Un lien clair : chaque Contrainte active et Sprint référence une métrique spécifique du Status Board, et chaque revue de Sprint demande explicitement "Est-ce que cette métrique a assez bougé pour changer son statut ?"

## Documents liés

- [Pas d'objectif, pas de goulot d'étranglement](<Fondamentaux - Pas d'objectif, pas de goulot d'étranglement.md>)
- [Les cinq catégories et la hiérarchie des contraintes](<Fondamentaux - Les cinq catégories et la hiérarchie des contraintes.md>)
- [Moteur de diagnostic : du symptôme à la contrainte puis à la solution](<Fondamentaux - Moteur de diagnostic - du symptôme à la contrainte puis à la solution.md>)
- [Sprints contrainte et exécution focalisée](<Fondamentaux - Sprints contrainte et exécution focalisée.md>)
- [Une seule contrainte, tout le reste est du bruit](<Fondamentaux - Une seule contrainte, tout le reste est du bruit.md>)
- [Pensée systémique et analyse des goulots d'étranglement](<Fondamentaux - Pensée systémique et analyse des goulots d'étranglement.md>)
- [Volume vs efficacité (More Better New)](<Fondamentaux - Volume vs efficacité (More Better New).md>)
- [Feuille de route Scaling Google Ads](<../../03-google-ads/strategie/Strategie - Feuille de route Scaling Google Ads.md>)

## Termes

| Terme | Définition |
|-------|-----------|
| Status Board | Vue de santé unique par compte montrant 1-2 métriques par catégorie avec un statut rouge/orange/vert |
| Triage quotidien | Scan de 10 à 15 minutes pour les cassures et problèmes Remove urgents |
| Diagnostic hebdomadaire | Revue approfondie de 60 à 90 minutes connectant le Status Board au Moteur de diagnostic et à la planification de Sprint |
| Revue mensuelle | Recalibration des baselines, seuils et sélection de métriques |
| Fourchettes de baseline | Plages "Cassé / Acceptable / Fort" par métrique, calibrées sur l'historique du compte et la verticale |
| Règle des deux périodes | Exiger qu'une métrique soit rouge pendant deux périodes de revue consécutives avant de la promouvoir en Contrainte active |
| Signal | Un changement réel et persistant dans une métrique confirmé par des données suffisantes sur la fenêtre temporelle appropriée |
| Bruit | Fluctuation à court terme causée par le faible volume, les effets jour de la semaine, la saisonnalité ou les phases d'apprentissage algorithme |
