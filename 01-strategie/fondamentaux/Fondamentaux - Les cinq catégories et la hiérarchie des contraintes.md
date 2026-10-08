# Les cinq catégories et la hiérarchie des contraintes

> **Plateforme :** Stratégie
> **Catégorie :** Fondamentaux
> **Type :** Fondamental
> **Mis à jour :** 2026-05-07

## Objectif

Fournir un système de classification pour trier chaque problème de performance dans l'une des cinq catégories (Mesure, Business, Conversion, Traffic, Creative) et imposer une hiérarchie stricte qui vous empêche d'optimiser en aval tant que l'amont est cassé.

## Ce que ce document n'est PAS

- Pas une procédure d'exécution : il ne vous dit pas comment corriger les contraintes, seulement comment les classifier et les prioriser
- Pas un remplacement des arbres de métriques ou de la définition d'objectifs : vous avez toujours besoin d'objectifs clairs avant de diagnostiquer
- Pas un exercice ponctuel : la hiérarchie s'applique à chaque diagnostic, pas seulement lors de l'onboarding

## Introduction

Une agence B2B augmente le budget Google Ads d'un client de 40%. Les leads explosent. Le client est ravi pendant deux semaines. Puis l'équipe commerciale implose : les délais de relance s'allongent à cinq jours, les taux de closing s'effondrent, et le pipeline se transforme en cimetière de leads (prospects) périmés. L'agence a optimisé le Traffic alors que le Business était la contrainte. Chaque euro supplémentaire de dépense a aggravé le problème, pas amélioré.

C'est ce qui arrive quand on travaille dans la mauvaise catégorie. Pas mal au sens subtil et théorique. Mal au sens de *"vous venez de gaspiller 30k € en prouvant que l'équipe commerciale de votre client ne suit pas"*.

Les cinq catégories existent pour empêcher ça. Elles vous donnent un système de classification pour chaque problème de performance (Mesure, Business, Conversion, Traffic, Creative) et une règle stricte sur lesquelles prioriser en premier. Pensez-y comme un triage : un patient avec une hémorragie interne et un ongle cassé - on traite l'hémorragie d'abord, pas parce que l'ongle n'a pas d'importance, mais parce que traiter l'ongle pendant que le patient se vide de son sang n'est pas de la médecine. C'est de la distraction.

## Les cinq catégories

Tout système d'acquisition que vous touchez se décompose en cinq couches. Les catégories répondent à une question : "Où vit cette contrainte ?"

### 0 - Mesure (prérequis)

Est-ce qu'on voit la réalité assez clairement pour prendre des décisions ?

- Les conversions sont-elles trackées précisément et dédupliquées ?
- Voit-on la qualité en aval (SQLs, deals, CA, profit) ?
- Les valeurs et le CA sont-ils correctement mappés ?
- Le consentement et les politiques sont-ils gérés pour ne pas voler à l'aveugle ?

Si la Mesure est cassée, le **goulot d'étranglement est toujours la Mesure** jusqu'à ce que ce soit corrigé. Vous ne pouvez pas classifier les autres catégories avec confiance quand les données mentent.

### 1 - Business

Est-ce que les fondamentaux économiques et la capacité du business supportent le scaling ?

- Y a-t-il une vraie demande de marché pour cette offre/ce positionnement ?
- Les unit economics (LTV, marges, payback) sont-ils compatibles avec les objectifs d'acquisition ?
- La capacité commerciale/support existe-t-elle pour gérer plus de volume à une qualité acceptable ?
- Le pricing, les remises, le stock et les niveaux de service sont-ils cohérents ?
- Les leads se transforment-ils en pipeline et en CA à des taux acceptables ?

La catégorie Business inclut tout ce qui se situe en dehors de vos campagnes Google Ads mais limite directement leur impact : équipes commerciales, fulfillment, marges, force de l'offre et capacité opérationnelle.

### 2 - Conversion

Peut-on transformer efficacement les bons visiteurs en leads, commandes ou essais ?

- Clarté et force de l'offre sur les Landing Pages
- Design de formulaire, parcours de checkout, expériences de réservation
- Parcours d'essai et d'inscription, UX d'onboarding
- Les mécaniques pour transformer un clic en première action significative

La qualité de ces leads une fois dans le CRM est mesurée dans Business. Les mécaniques du clic au lead/commande sont dans Conversion.

### 3 - Traffic

Est-ce qu'on atteint suffisamment de bonnes personnes ?

- Volume et mix de requêtes, audiences et canaux
- Impression Share (Budget et Rank) sur les segments prouvés
- Demande de recherche, compétition de catégorie
- Mix de canaux : Search vs Shopping vs PMax vs YouTube vs Demand Gen

> 💡 **Distinction clé :** Une mauvaise qualité de traffic se manifeste souvent comme des "problèmes de Conversion". Avant de blâmer la Landing Page, inspectez la qualité des requêtes/audiences/emplacements. Si l'intention est clairement mauvaise, traitez ça comme un goulot de Traffic, pas de Conversion.

### 4 - Creative

Est-ce que notre message attire et pré-qualifie les bonnes personnes ?

- Titres, descriptions, hooks, concepts visuels
- Cadrage de l'offre, preuve, preuve sociale, urgence
- Pour les formats lourds en ML (PMax, Demand Gen, YouTube) : le creative est en fait un signal de ciblage qui dit à l'algorithme qui trouver

Traffic et Creative sont les deux moitiés du moteur d'acquisition. On les sépare pour que vous puissiez diagnostiquer "mauvaise portée" vs "mauvais message" séparément.

## La règle de la hiérarchie

C'est la partie cruciale :

> On n'optimise pas sérieusement une catégorie inférieure tant qu'une catégorie supérieure est cassée.

- Si la Mesure est cassée, tout le reste est de la devinette
- Si le Business (économie/capacité) est cassé, scaler le Traffic est irresponsable
- Si la Conversion est cassée, micro-optimiser le Traffic et le Creative c'est mettre du rouge à lèvres sur un cochon
- Si la qualité du Traffic est cassée, polir le Creative est surtout du bruit

La hiérarchie ne signifie pas que vous ne touchez jamais les catégories inférieures. Elle signifie que vous ne les déclarez pas comme contrainte principale et ne concevez pas des Sprints entiers autour d'elles quand les catégories supérieures sont en feu.

## Erreur de catégorie : l'erreur la plus coûteuse en Google Ads

L'**erreur de catégorie** est la façon la plus courante dont les spécialistes Google Ads compétents perdent du temps et de l'argent. Voici quatre scénarios qui se jouent dans de vrais comptes chaque jour :

**Scénario 1 - Focus Creative, contrainte Conversion :** Une agence réécrit chaque RSA, teste trois angles de titre, et pousse le CTR de 20%. Le CPA reste stable. Pourquoi ? Le LP CVR est à 0,3%. Plus de clics sur une page qui ne convertit pas, ça fait juste des non-conversions plus chères. La bonne catégorie était Conversion, pas Creative.

**Scénario 2 - Push Traffic, contrainte Business :** Un freelance augmente le budget de 40% sur une campagne rentable. Les leads explosent. Le taux de closing passe de 25% à 8% en trois semaines. L'équipe commerciale ne peut pas gérer le volume : les temps de réponse passent de 2 heures à 5 jours. La bonne catégorie était Business (capacité commerciale), pas Traffic.

**Scénario 3 - Test Conversion, contrainte Mesure :** Une équipe lance trois variantes de Landing Page et fait un A/B test. Résultats : la variante B gagne de 15%. Ils l'implémentent. Trois mois plus tard, ils découvrent que le tag de conversion se déclenche au scroll, pas à la soumission du formulaire. Tout le test a été mesuré sur une métrique fantôme. La bonne catégorie était Mesure, pas Conversion.

**Scénario 4 - Optimisation Traffic, contrainte Business :** Un spécialiste in-house passe des semaines à construire des audiences et affiner les types de correspondance. La qualité du traffic s'améliore. Le ROAS atteint 600%. Le DAF est furieux : les produits les plus vendus ont 8% de marge, et 600% de ROAS sur 8% de marge signifie que l'entreprise perd de l'argent sur chaque vente. La bonne catégorie était Business (marges/offre), pas Traffic.

Chaque scénario implique une vraie compétence appliquée à la mauvaise couche. La règle de la hiérarchie existe pour attraper ça avant que ça vous coûte des semaines et des milliers d'euros de dépense gaspillée.

## La contrainte que vous voulez corriger vs celle qui existe vraiment

La plupart des spécialistes Google Ads gravitent vers la catégorie où ils sont à l'aise. Un media buyer se tourne naturellement vers Traffic et Creative. Un spécialiste CRO voit de la Conversion partout. Un stratège de marque veut parler Business. La contrainte que vous voulez corriger est celle qui utilise les compétences que vous avez déjà.

La **contrainte qui existe vraiment** peut nécessiter des compétences que vous n'avez pas. Ou des conversations que vous ne voulez pas avoir. Dire à un client que son équipe commerciale est le goulot d'étranglement, c'est inconfortable. Admettre que le tracking (suivi des conversions/évènements) est cassé signifie que les trois derniers mois d'"optimisation" étaient basés sur de mauvaises données. Ce sont des vérités difficiles. La hiérarchie vous force à les affronter.

Quand vous vous retrouvez à graviter vers une catégorie familière, demandez-vous : *"Est-ce que je travaille ici parce que c'est la vraie contrainte, ou parce que c'est là que je suis à l'aise ?"* Si la réponse est le confort, arrêtez. Vérifiez la hiérarchie depuis le haut.

## Signaux et métriques par catégorie

Voici comment mapper rapidement un problème à sa catégorie.

### Mesure : "Est-ce qu'on fait confiance aux chiffres ?"

**Signaux :** Google Ads et le backend ne sont pas du tout d'accord. Les comptages de conversion sont volatils sans changements réels du compte. Les imports de conversions offline manquent ou sont incorrects. Les tags se déclenchent au chargement de page au lieu de l'événement réel.

**Métriques :** Pourcentage d'écart entre Ads et le backend. Stabilité des métriques de conversion principales. Présence et exactitude des événements de valeur clés (SQL, deals, CA). Santé des tags via les outils de debug.

### Business : "Est-ce que ce business peut supporter et gérer la croissance ?"

**Signaux :** Le ROAS a l'air "bon" mais le compte en banque ne confirme pas. Le CAC est acceptable mais le payback est irréaliste. Les leads arrivent mais les taux Lead vers MQL, MQL vers SQL, SQL vers Won sont mauvais. Les commerciaux sont surchargés. Le stock ou le fulfillment explose quand on pousse le volume.

**Métriques :** CAC, CPQL, période de payback, LTV, marge de contribution. Taux Lead vers MQL, MQL vers SQL, SQL vers Won. Taux de closing, cycle de vente, vélocité du pipeline. Niveaux de stock, taux de remboursement (e-com).

### Conversion : "Peut-on transformer l'intérêt en valeur ?"

**Signaux :** Beaucoup de traffic haute intention mais LP CVR bas. Formulaires longs ou confus avec un fort taux d'abandon. Beaucoup d'ajouts au panier mais peu de checkouts complétés. Faibles taux d'inscription ou de démarrage d'essai.

**Métriques :** LP CVR (clic vers lead). Taux de complétion de formulaire multi-étapes. CVRs vue vers ajout au panier vers checkout vers achat. UX, copywriting (rédaction), offres, friction.

### Traffic : "Est-ce qu'on atteint suffisamment de bonnes personnes ?"

**Signaux :** Faible Impression Share sur les campagnes prouvées. Bon CVR là où on apparaît, mais on apparaît à peine. Le mix de requêtes est surtout du junk. Tout le volume concentré sur la marque.

**Métriques :** Search Lost IS (Budget et Rank). Mix de requêtes (marque, haute intention, moyenne intention, junk). CPC vs valeur. Portée et fréquence sur vidéo/display.

### Creative : "Est-ce que notre message attire et pré-qualifie correctement ?"

**Signaux :** CTR faible vs benchmarks (analyse comparative) sur l'inventaire pertinent. L'algorithme ne sert que 1-2 assets périmés. La qualité des leads souffre parce que les annonces sur-promettent. La performance PMax/Demand Gen/YouTube dépend fortement d'un seul thème créatif.

**Métriques :** CTR, taux de vues engagées, taux de vues vidéo par asset. CPI/RPI et données de performance au niveau asset.

## Mapper votre arbre de métriques aux catégories

Chaque noeud de votre [arbre de métriques](<Fondamentaux - Pas d'objectif, pas de goulot d'étranglement.md>) appartient à une catégorie :

- **Business :** Profit, CA, coûts, CAC, LTV, payback, marge, taux Lead vers SQL, taux de closing, vélocité du pipeline
- **Conversion :** LP CVR, taux par étape de formulaire, checkout CVR, inscription/démarrage d'essai
- **Traffic :** Impressions, clics, portée, fréquence, Lost IS
- **Creative :** CTR, vue engagée, taux de vue vidéo, CPI/RPI
- **Mesure :** Recouvre tout ce qui précède : est-ce que chaque métrique est suffisamment précise pour qu'on lui fasse confiance ?

Quand vous diagnostiquez : commencez en haut de l'arbre, trouvez la plus grande déviation par rapport à l'objectif, demandez "à quelle catégorie appartient ce noeud ?", et cette catégorie devient votre point de départ.

## Maturité des catégories

La hiérarchie fonctionne différemment selon l'âge et le stade du compte.

**Dans les comptes récents,** la hiérarchie vous dit où COMMENCER. Parcourez-la de haut en bas : mettez la Mesure au point, validez les fondamentaux économiques Business, construisez une Landing Page qui convertit, puis poussez le Traffic et testez le Creative. La hiérarchie est votre séquence de lancement (voir [Feuille de route Scaling Google Ads](<../../03-google-ads/strategie/Strategie - Feuille de route Scaling Google Ads.md>)).

**Dans les comptes matures,** la hiérarchie vous dit où REGARDER D'ABORD quand quelque chose casse. La performance chute, vous vérifiez la Mesure (le tracking a-t-il cassé ?), puis le Business (quelque chose a-t-il changé en externe ?), puis la Conversion, puis le Traffic, puis le Creative. La hiérarchie est votre protocole de diagnostic.

**Dans les deux cas,** la hiérarchie n'est pas une règle sur ce qu'il faut ignorer. Les catégories inférieures reçoivent toujours du travail de maintenance : vous écrivez toujours des annonces, gérez les mots-clés et surveillez les emplacements. La hiérarchie gouverne où vous investissez votre énergie de Sprint focalisée et déclarez la contrainte principale. La maintenance est différente du travail sur la contrainte.

## Checklist d'implémentation

- [ ] Assignez chaque métrique clé de votre équation d'objectif et Status Board à une catégorie
- [ ] Définissez "vert/orange/rouge" pour chaque métrique par catégorie
- [ ] Suivez la hiérarchie dans l'ordre quand vous diagnostiquez : Mesure vert ? Business viable ? Conversion réaliste ? Traffic suffisant ? Creative performant ?
- [ ] Pour tout nouveau symptôme : mappez-le à une catégorie en utilisant les signaux ci-dessus, pas générique "dans Google Ads"
- [ ] Quand vous planifiez un Sprint : confirmez la catégorie de la contrainte active et choisissez des playbooks qui travaillent sur cette catégorie
- [ ] Vérifiez-vous : "Est-ce que je travaille dans cette catégorie parce que c'est la vraie contrainte, ou parce que c'est confortable ?"

## Documents liés

- [Pensée systémique et analyse des goulots d'étranglement](<Fondamentaux - Pensée systémique et analyse des goulots d'étranglement.md>)
- [Pas d'objectif, pas de goulot d'étranglement](<Fondamentaux - Pas d'objectif, pas de goulot d'étranglement.md>)
- [Une seule contrainte, tout le reste est du bruit](<Fondamentaux - Une seule contrainte, tout le reste est du bruit.md>)
- [Volume vs efficacité (More Better New)](<Fondamentaux - Volume vs efficacité (More Better New).md>)
- [Moteur de diagnostic : du symptôme à la contrainte puis à la solution](<Fondamentaux - Moteur de diagnostic - du symptôme à la contrainte puis à la solution.md>)
- [Status Board et rythmes opérationnels](<Fondamentaux - Status Board et rythmes opérationnels.md>)
- [Feuille de route Scaling Google Ads](<../../03-google-ads/strategie/Strategie - Feuille de route Scaling Google Ads.md>)
- [Modèle mental Unit Economics](<Fondamentaux - Méthode unit economics.md>)
- [Modèle mental Goals and KPIs](<../objectifs/Objectifs - Objectifs et KPI.md>)

## Termes

| Terme | Définition |
|-------|-----------|
| Catégorie | L'une des cinq zones de classification (Mesure, Business, Conversion, Traffic, Creative) où une contrainte peut vivre |
| Règle de la hiérarchie | Le principe selon lequel les catégories amont doivent être résolues avant que les catégories aval ne deviennent le focus principal |
| Erreur de catégorie | Travailler dans la mauvaise catégorie : appliquer un effort qualifié à une couche qui n'est pas la vraie contrainte |
| Contrainte | Le goulot d'étranglement unique que vous vous engagez à corriger dans un Sprint donné |
| Arbre de métriques | Une décomposition de votre objectif en métriques composantes, chacune appartenant à une catégorie |
| Status Board | Le tableau de bord opérationnel qui suit les métriques clés mappées aux catégories et aux objectifs |
