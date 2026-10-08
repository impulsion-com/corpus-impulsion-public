# Qualité des expérimentations

> **Plateforme :** Google Ads
> **Catégorie :** Strategie
> **Type :** Checklist
> **Mis à jour :** 2026-05-07

## Objectif

Valide que les expérimentations de campagne sont correctement conçues, configurées et documentées avant le lancement pour garantir des résultats valides et exploitables.

---

## Ce que cette checklist valide

Cette checklist confirme :

- L'hypothèse est claire et testable
- La taille d'échantillon et la durée sont suffisantes
- Le contrôle et le traitement sont correctement configurés
- Les critères de succès sont définis avant le lancement
- Aucun facteur confondant n'invalidera les résultats

Cette checklist ne couvre **PAS** :

- Quand tester vs. implémenter directement (Voir : [Testing and Experimentation Mental Model](<../../01-strategie/experimentation/Expérimentation - Tests et expérimentations.md>))
- Les options de configuration des expérimentations (Voir : [Experiment Configuration Reference](<Strategie - Configuration des expériences.md>))
- La configuration pas à pas (Voir : [SOP - Executer une experimentation de campagne](<Strategie - Lancer une expérience de campagne.md>))

---

## Quand l'utiliser

Exécuter cette checklist :

- Avant de lancer toute expérimentation Google Ads
- Avant de démarrer une analyse formelle pré/post
- Lors de la revue de propositions d'expérimentations

---

## Checklist

### Hypothèse

- [ ] L'hypothèse est rédigée et documentée
- [ ] L'hypothèse est spécifique (quel changement, résultat attendu, magnitude attendue)
- [ ] L'hypothèse inclut le "pourquoi" (justification du résultat attendu)
- [ ] L'hypothèse est falsifiable (possible de prouver qu'elle est fausse)

### Conception de l'expérimentation

- [ ] Une seule variable est testée (contrôler tout le reste)
- [ ] Le test a un impact potentiel élevé (10%+ d'effet potentiel sur le KPI principal)
- [ ] La taille d'effet que vous voulez détecter est réaliste pour votre volume
- [ ] Les approches alternatives ont été considérées (l'expérimentation est-elle la bonne méthode ?)

### Taille d'échantillon et durée

- [ ] La taille d'échantillon requise est calculée en fonction de la taille d'effet
- [ ] La campagne a assez de volume pour atteindre la taille d'échantillon dans un délai raisonnable
- [ ] La durée tient compte de la période d'apprentissage (minimum 2 semaines)
- [ ] La durée couvre un cycle jour-de-la-semaine complet (minimum 1 semaine)
- [ ] La durée tient compte du délai de conversion (ajouter votre délai moyen)
- [ ] La durée tient compte des cycles business (si applicable)

### Critères de succès

- [ ] La métrique principale est définie avant le lancement
- [ ] Les métriques secondaires (garde-fous) sont définies avant le lancement
- [ ] Le seuil de succès est défini (quelle magnitude = "gagnant" ?)
- [ ] Le niveau de confiance est défini (95% recommandé)
- [ ] Les règles de décision sont documentées (que se passe-t-il si résultat non concluant ?)

### Configuration

- [ ] La répartition du trafic est définie de manière appropriée (50/50 recommandé sauf raison spécifique)
- [ ] Le calendrier de synchronisation est défini (Quotidien recommandé)
- [ ] La date de fin est définie selon la durée calculée
- [ ] La métrique objectif dans Google Ads correspond à votre métrique principale
- [ ] Les deux bras sont vérifiés identiques sauf pour la variable testée

### Exclusion des facteurs confondants

- [ ] Aucune autre expérimentation en cours sur la même campagne
- [ ] Aucune modification de campagne prévue pendant la période de test
- [ ] Aucun facteur externe connu qui affectera les résultats (saisonnalité, promotions)
- [ ] Le suivi des conversions est vérifié stable
- [ ] Le budget est stable pour la durée du test

### Documentation

- [ ] L'hypothèse est documentée dans un emplacement partagé
- [ ] La date de début et la date de fin prévue sont documentées
- [ ] La répartition du trafic et les paramètres sont documentés
- [ ] Les critères de succès sont documentés
- [ ] L'équipe est informée (personne ne fera de changements pendant le test)

### Vérification pré-lancement

- [ ] Les paramètres de la campagne brouillon sont vérifiés corrects
- [ ] La variable de test est correctement implémentée dans le traitement
- [ ] Le contrôle correspond exactement à la campagne active actuelle
- [ ] Aucune violation de politique sur aucun des deux bras
- [ ] La performance de référence est documentée pour comparaison

---

## Vérifications de validité de l'expérimentation

### Validité statistique

- [ ] La taille d'effet attendue est détectable avec votre volume
- [ ] La durée est suffisante pour atteindre la significativité statistique
- [ ] La taille d'échantillon est suffisante par bras (pas seulement au total)

### Validité interne

- [ ] Une seule variable diffère entre les bras
- [ ] L'assignation est aléatoire (répartition basée sur les cookies)
- [ ] Pas de biais de sélection dans la répartition du trafic
- [ ] La mesure est identique pour les deux bras

### Validité externe

- [ ] La période de test est représentative (pas pendant des événements inhabituels)
- [ ] Les résultats seront applicables aux périodes futures
- [ ] Les apprentissages peuvent être appliqués à des campagnes similaires

---

## Surveillance post-lancement

- [ ] Un tableau de bord est configuré pour surveiller les deux bras
- [ ] Une alerte est configurée si l'un des bras chute catastrophiquement (>30% pire)
- [ ] L'équipe est rappelée de ne pas faire de changements
- [ ] Un rappel calendrier est programmé pour la date de fin
- [ ] Un rappel calendrier est programmé pour la revue des résultats (date de fin + délai de conversion)

---

## Référence rapide

| Document | Relation |
|----------|--------------|
| [Testing and Experimentation Mental Model](<../../01-strategie/experimentation/Expérimentation - Tests et expérimentations.md>) | Méthode pour les décisions de test |
| [Experiment Configuration Reference](<Strategie - Configuration des expériences.md>) | Options de configuration et paramètres |
| [SOP - Executer une experimentation de campagne](<Strategie - Lancer une expérience de campagne.md>) | Utilise cette checklist avant le lancement |
| [Google Ads Metrics Reference](<../optimisation/Optimisation - Alertes et règles Google Ads.md>) | Définitions des métriques pour les critères de succès |
