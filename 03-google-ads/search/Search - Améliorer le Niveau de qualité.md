# Améliorer le Niveau de qualité

> **Plateforme :** Google Ads
> **Catégorie :** Search
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## À lire en premier

Le Niveau de qualité n'est **pas** quelque chose qu'on optimise directement.

C'est le *résultat* de la confiance que Google accorde au fait que :

1. Votre annonce correspond à l'intention de l'utilisateur (**Ad Relevance**)
2. Les utilisateurs sont susceptibles de cliquer sur votre annonce (**Expected CTR**)
3. La Landing Page tient la promesse de l'annonce (**Landing Page Experience**)

Ce playbook **ne contient pas de tactiques**. Il vous indique **quelle contrainte corriger en priorité** et vous oriente vers la bonne SOP.

> Ne travaillez jamais sur **plus d'un composant du Niveau de qualité en même temps**. Corrigez la contrainte en amont, puis avancez.

---

## Comment prioriser

Utilisez le Niveau de qualité pondéré par les impressions pour créer une liste de priorités personnalisée, afin de vous concentrer sur ce qui compte le plus en premier.

**Formule de priorisation :**

`Score de priorité = (10 - Niveau de qualité) x Impressions`

Triez par ordre décroissant. Travaillez sur le mot-clé/groupe d'annonces ayant la priorité la plus haute en premier.

> N'appliquez pas ce playbook sur des dizaines de mots-clés en même temps. Corrigez un thème → validez → répliquez.

---

## Phase 1 : Pertinence de l'annonce

### Ce que vous vérifiez

Google considère-t-il que votre annonce **correspond de manière pertinente à l'intention de l'utilisateur** ?

### Signaux

- Ad Relevance = *Below Average* ou *Average*
- Les RSA semblent génériques ou interchangeables
- Les requêtes à fort volume ne sont pas reflétées dans les annonces

### Décision

| Si... | Alors... |
|-------|----------|
| Ad Relevance = *Below Average* | **STOP :** Exécutez [SOP - Ameliorer la pertinence des annonces](<Search - Améliorer la pertinence des annonces.md>) |
| Ad Relevance = *Average* ou *Above Average* | **OK :** Passez à la Phase 2 |

> L'Ad Relevance est un problème **structurel**. On corrige la fondation (structure du groupe d'annonces, alignement mot-clé/annonce) avant de tester des angles créatifs.

---

## Phase 2 : CTR attendu

### Ce que vous vérifiez

Google s'attend-il à ce que les utilisateurs **cliquent sur votre annonce plus souvent que celles des concurrents** ?

### Signaux

- Expected CTR = *Below Average* ou *Average*
- Le CTR stagne malgré les corrections de pertinence
- Les concurrents ont des offres/preuves plus fortes dans leurs annonces

> Les mécanismes d'enchères et les métriques concurrentielles de Google impactent votre CTR. Comparez **ce qui est comparable**. Consultez les Insights sur les enchères pour le contexte.

### Décision

| Si... | Alors... |
|-------|----------|
| Expected CTR = *Below Average* | **STOP :** Exécutez [SOP - Ameliorer le CTR attendu](<Search - Améliorer le CTR attendu.md>) |
| Expected CTR = *Average* ou *Above Average* | **OK :** Passez à la Phase 3 |

> L'Expected CTR est un problème de **compétitivité**. Concentrez-vous sur la force du message (bénéfices, preuve sociale, CTAs, différenciation), pas seulement sur la pertinence.

---

## Phase 3 : Expérience de la landing page

### Ce que vous vérifiez

La Landing Page **prolonge-t-elle la promesse de l'annonce sans friction** ?

### Signaux

- Landing Page Experience = *Below Average* ou *Average*
- Taux de conversion faible / Taux de rebond élevé / Faible engagement post-clic
- Mauvaise cohérence de message entre l'annonce et la page
- Temps de chargement lent ou mauvaise expérience mobile

### Décision

| Si... | Alors... |
|-------|----------|
| Landing Page Experience = *Below Average* | **STOP :** Exécutez [SOP - Ameliorer l'experience de la page de destination](<../../02-site-web/audit/Audit - Test A-B de Landing Page.md>) |
| Landing Page Experience = *Average* ou *Above Average* | **OK :** Contrainte Niveau de qualité résolue |

> Google utilise le **taux de conversion** comme indicateur indirect d'une bonne Landing Page Experience. Les pages qui convertissent bien signalent que les visiteurs ont trouvé ce qu'ils cherchaient.

---

## Le flux

Naviguez à travers les pages pour voir le flux décisionnel complet du Niveau de qualité, du diagnostic à la résolution.

<pdf-embed src="/quality-score-flowchart.pdf"></pdf-embed>

---

## Après validation des trois phases : La boucle d'itération

Une fois que les trois composants du Niveau de qualité sont *Average* ou *Above Average*, votre fondation est solide.

**Prochaine étape :** Passez à l'optimisation créative continue avec [SOP - Test RSA avec la boucle d'iteration](<Search - Test RSA avec la boucle d'itération.md>).

La boucle d'itération est un **système d'optimisation continue** pour tester et améliorer systématiquement la performance créative des RSA dans le temps.

---

## Validation et fenêtres de temps

Les mises à jour du Niveau de qualité sont des **indicateurs retardés**. Utilisez ces fenêtres :

| Type de correction | Fenêtre de mise à jour attendue |
|-------------------|--------------------------------|
| Corrections structurelles (Ad Relevance) | 7-14 jours |
| Améliorations du CTR (Expected CTR) | 7-21 jours |
| Changements de Landing Page Experience | 14-30 jours |

### Quoi suivre

| Métrique | Ce qu'elle vous indique |
|----------|------------------------|
| Mouvement des composants | Below Avg → Avg → Above Avg |
| Tendance du CPC | CPC en baisse = meilleure efficacité Classement de l'annonce |
| Impression Share (Rank) | Part plus élevée = plus d'enchères remportées |
| CTR | Indicateur précoce d'amélioration de l'Expected CTR |
| Taux de conversion | Indicateur précoce d'amélioration de la Landing Page Experience |

> Utilisez un outil de suivi historique du Niveau de qualité (script ou outil) pour surveiller les changements hebdomadaires. Des visualisations claires vous aident à voir l'impact de votre travail dans le temps.

---

## Échecs courants

| Échec | Pourquoi ça arrive | Comment l'éviter |
|-------|-------------------|------------------|
| Travailler sur le CTR alors que la pertinence est cassée | Sauter la Phase 1 | Toujours vérifier l'Ad Relevance en premier |
| Refondre les Landing Pages avant de corriger les annonces | Mauvais ordre | Suivre l'ordre des phases |
| Poursuivre des hausses de Niveau de qualité qui nuisent aux KPIs business | Le Niveau de qualité est un indicateur indirect, pas l'objectif | Suivre les résultats business, pas seulement le Niveau de qualité |
| Appliquer ce playbook à trop de thèmes en même temps | Se disperser | Corriger un thème, valider, puis répliquer |
| Traiter le Niveau de qualité comme l'objectif au lieu de l'efficacité en enchères | Incompréhension du rôle du Niveau de qualité | Le Niveau de qualité permet des CPC plus bas et un meilleur Classement de l'annonce (c'est le vrai objectif) |
| Lancer des tests créatifs sur une fondation cassée | Optimisation prématurée | Compléter les SOPs Ad Relevance + Expected CTR d'abord |

---

## Base de connaissances

Ce playbook oriente vers les SOPs suivantes :

### SOPs principales (séquentielles)

| SOP | Objectif | Quand l'exécuter |
|-----|----------|-----------------|
| [SOP - Ameliorer la pertinence des annonces](<Search - Améliorer la pertinence des annonces.md>) | Corriger le décalage sémantique entre groupes d'annonces, mots-clés et assets RSA | Ad Relevance = Below Average |
| [SOP - Ameliorer le CTR attendu](<Search - Améliorer le CTR attendu.md>) | Corriger la compétitivité de base des RSA (éléments manquants, messages faibles) | Expected CTR = Below Average |
| [SOP - Ameliorer l'experience de la page de destination](<../../02-site-web/audit/Audit - Test A-B de Landing Page.md>) | Corriger les problèmes fondamentaux de Landing Page (cohérence message, vitesse, confiance, structure) | Landing Page Experience = Below Average |

### Optimisation continue

| SOP | Objectif | Quand l'exécuter |
|-----|----------|-----------------|
| [SOP - Test RSA avec la boucle d'iteration](<Search - Test RSA avec la boucle d'itération.md>) | Framework de test créatif systématique | Les 3 composants = Average+ |

### SOPs de support (référencées dans les SOPs principales)

- *SOP - Promouvoir les termes de recherche en mots-clés*
- *SOP - Structure de groupe d'annonces et mapping d'intentions*

---

## Critères de complétion

Ce playbook est terminé quand :

- [ ] Les trois composants du Niveau de qualité sont **Average ou Above Average**
- [ ] Niveau de qualité >= 7/10 (stable depuis 14+ jours)
- [ ] Le CPC s'est stabilisé ou a diminué
- [ ] L'Impression Share (Rank) s'est amélioré sans inflation des enchères

**À ce stade :**

1. Répliquez le processus pour le **prochain mot-clé/thème prioritaire**
2. Passez à [SOP - Test RSA avec la boucle d'iteration](<Search - Test RSA avec la boucle d'itération.md>) pour l'optimisation créative continue
