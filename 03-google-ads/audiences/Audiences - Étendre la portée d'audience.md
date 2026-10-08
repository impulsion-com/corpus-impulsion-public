# Étendre la portée d'audience

> **Plateforme :** Google Ads
> **Catégorie :** Audiences
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## À lire en premier

L'expansion d'audience ne consiste **pas** à ajouter plus de segments ou à activer toutes les fonctionnalités disponibles.

C'est le résultat d'avoir :

1. **Des signaux PMax de haute qualité** qui donnent à Google des données fiables pour apprendre
2. **Un ciblage correctement configuré** sur les campagnes Display, Vidéo et Demand Gen
3. **Des données first-party actives** (Customer Match) actualisées régulièrement avec un bon taux de correspondance

Ce playbook **ne contient pas de tactiques**. Il vous indique **quelle fondation d'audience corriger en priorité** et vous oriente vers la bonne SOP.

> N'élargissez jamais la portée d'audience avant que vos fondations soient solides. Élargir avec des signaux faibles ou un ciblage mal configuré gaspille du budget sur du trafic de mauvaise qualité.

---

## Comment prioriser

Utilisez la couverture d'audience et la qualité des données pour déterminer votre point de départ.

**Logique de priorisation :**

```
1. Les signaux PMax sont-ils de haute qualité et en couches ? → Si NON, corriger en priorité
2. Le ciblage Display/Vidéo/DG est-il correctement configuré ? → Si NON, corriger ensuite
3. Le Customer Match est-il actif et actualisé ? → Si NON, corriger ensuite
4. Toutes les fondations sont solides ? → Passer à l'expansion
```

Suivez les phases dans l'ordre. Ne sautez pas d'étapes.

---

## Phase 1 : Vérification de la qualité des signaux

### Ce que vous vérifiez

Vos groupes d'assets PMax ont-ils des **signaux d'audience de haute qualité et en couches** qui donnent à Google des données de départ fiables ?

### Signaux

- Les groupes d'assets PMax n'ont aucun signal d'audience configuré
- Seuls des signaux de Tier 4-5 sont utilisés (affinités, données démographiques uniquement)
- La liste Customer Match est manquante, obsolète ou en dessous de 1 000 utilisateurs correspondants
- Les segments personnalisés utilisent des termes génériques au lieu de requêtes de recherche qui convertissent
- Les thèmes de recherche dupliquent les mots-clés des campagnes Search actives

### Décision

| Si... | Alors... |
|-------|----------|
| Un groupe d'assets PMax manque de signaux Tier 1-2 | **STOP :** Exécutez [SOP - Configurer les signaux d'audience](<Audiences - Configurer les signaux d'audience.md>) |
| Tous les groupes d'assets PMax ont des signaux Tier 1-3 en couches | **OK :** Passez à la Phase 2 |
| Aucune campagne PMax n'existe | **OK :** Passez à la Phase 2 |

> La qualité des signaux détermine la vitesse d'apprentissage. Une campagne PMax avec uniquement des signaux démographiques met beaucoup plus de temps à s'optimiser qu'une campagne PMax avec Customer Match + visiteurs convertis + segments personnalisés.

---

## Phase 2 : Vérification de la couverture de ciblage

### Ce que vous vérifiez

Vos campagnes Display, Vidéo et Demand Gen sont-elles **correctement configurées** avec les bons segments d'audience, le bon mode de ciblage et les bons paramètres d'expansion ?

### Signaux

- Campagnes en mode Observation alors que le mode Ciblage est nécessaire
- Ciblage optimisé activé pour les campagnes de remarketing (devrait être désactivé)
- Aucune exclusion configurée (diffusion involontaire aux clients existants)
- Chevauchement d'audience entre campagnes (gaspillage de budget sur les mêmes utilisateurs)
- Segments similaires utilisant des listes seed de faible qualité (tous les visiteurs au lieu des convertisseurs)

### Décision

| Si... | Alors... |
|-------|----------|
| Une campagne a un mode de ciblage ou des paramètres d'expansion incorrects | **STOP :** Exécutez [SOP - Configurer le ciblage par audience](<Audiences - Configurer le ciblage par audience.md>) |
| Toutes les campagnes ont une configuration correcte | **OK :** Passez à la Phase 3 |
| Aucune campagne Display/Vidéo/DG n'existe | **OK :** Passez à la Phase 3 |

---

## Phase 3 : Vérification des données first-party

### Ce que vous vérifiez

Le Customer Match est-il **actif, correctement formaté et régulièrement actualisé** dans vos campagnes ?

### Signaux

- Aucune liste Customer Match importée
- Taux de correspondance en dessous de 29%
- Liste non actualisée depuis plus de 30 jours
- Seuls les identifiants email sont importés (pas de téléphone/adresse)
- Taille de la liste en dessous de 1 000 utilisateurs correspondants
- Aucun calendrier de mise à jour ni responsable documenté

### Décision

| Si... | Alors... |
|-------|----------|
| Le Customer Match est manquant, obsolète ou mal apparié | **STOP :** Exécutez [SOP - Construire des listes Customer Match](<Audiences - Construire des listes Customer Match.md>) |
| Le Customer Match est actif, actualisé et bien apparié | **OK :** Passez à la Phase 4 |

> Le Customer Match est l'asset d'audience ayant le plus d'impact. Une liste Customer Match bien entretenue améliore simultanément la qualité des signaux (PMax), la précision du ciblage (Display/Vidéo/DG) et la qualité des segments similaires (Demand Gen).

---

## Phase 4 : Prêt pour l'expansion

### Ce que vous vérifiez

Toutes les fondations d'audience sont solides. Le compte est prêt pour une **expansion contrôlée**.

### Routes d'expansion

| Type d'expansion | Quand l'utiliser | Action |
|-----------------|------------------|--------|
| **Élargir les signaux PMax** | Les signaux actuels sont restreints (orientés efficacité) | Ajouter des signaux Tier 3-4 : plus de segments personnalisés, catégories In-Market adjacentes, thèmes de recherche (si pas de risque de cannibalisation avec Search) |
| **Ajouter des segments similaires Demand Gen** | Liste Customer Match de 1 000+ et Demand Gen actif | Créer un segment similaire à partir d'une seed de clients à haute valeur : commencer avec la portée Équilibrée |
| **Tester de nouveaux segments d'audience** | Les audiences actuelles performent bien, budget disponible | Ajouter 1-2 nouveaux segments In-Market ou personnalisés aux campagnes existantes : utiliser le mode Observation d'abord pour mesurer avant de s'engager |
| **Élargir vers de nouveaux types de campagnes** | Le remarketing performe bien, prêt pour la prospection | Lancer une campagne de prospection (Display ou Demand Gen) avec segments personnalisés + ciblage In-Market |
| **Ajouter des segments Customer Match** | Seule la liste "Tous les clients" existe | Créer des segments haute valeur, clients perdus et spécifiques par produit pour un ciblage différencié |

### Règles d'expansion

1. **Élargir une seule dimension à la fois :** Ajouter des signaux OU élargir le ciblage OU lancer une nouvelle campagne - pas les trois en même temps
2. **Mesurer avant de s'engager :** Utiliser le mode Observation ou de petits budgets pour valider les nouvelles audiences avant de scaler
3. **Chaud → Tiède → Froid :** Élargir la température progressivement selon le [Audience Strategy Mental Model](<Audiences - Stratégie d'audience.md>)
4. **Chaque expansion finance la suivante :** Les profits des audiences chaudes financent les tests d'audiences tièdes - les profits des audiences tièdes financent les tests d'audiences froides

---

## Le flux

```
DÉBUT
│
├─ Phase 1 : Signaux PMax en couches et de haute qualité ?
│   ├─ NON → STOP → SOP - Configurer les signaux d'audience
│   └─ OUI → Continuer
│
├─ Phase 2 : Ciblage Display/Vidéo/DG correctement configuré ?
│   ├─ NON → STOP → SOP - Configurer le ciblage par audience
│   └─ OUI → Continuer
│
├─ Phase 3 : Customer Match actif et actualisé ?
│   ├─ NON → STOP → SOP - Construire des listes Customer Match
│   └─ OUI → Continuer
│
└─ Phase 4 : Toutes les fondations solides → Prêt pour l'expansion
    ├─ Élargir les signaux PMax
    ├─ Ajouter des segments similaires Demand Gen
    ├─ Tester de nouveaux segments d'audience
    ├─ Élargir vers de nouveaux types de campagnes
    └─ Ajouter des segments Customer Match
```

---

## Après validation de toutes les phases : Optimisation continue

Une fois que toutes les fondations d'audience sont solides et que l'expansion initiale est en place :

1. **Surveiller la performance des signaux :** Revoir mensuellement la performance des groupes d'assets PMax par tier de qualité des signaux
2. **Actualiser le Customer Match :** Maintenir un rythme d'actualisation hebdomadaire ou mensuel
3. **Tester et promouvoir :** Passer les audiences performantes du mode Observation au mode Ciblage
4. **Élargir la température :** Passer progressivement des audiences chaudes → tièdes → froides à mesure que les données de performance s'accumulent
5. **Relancer ce playbook :** Trimestriellement, pour vérifier que les fondations restent solides avant toute nouvelle expansion

---

## Validation et fenêtres de temps

Les changements d'audience sont des indicateurs retardés. Utilisez ces fenêtres avant d'évaluer les résultats :

| Type de changement | Fenêtre de signal attendue |
|-------------------|---------------------------|
| Changements de signaux PMax | 14-21 jours (redémarrage de la période d'apprentissage) |
| Changements de mode de ciblage | 7-14 jours |
| Nouveaux segments d'audience | 14-30 jours (besoin de suffisamment d'impressions) |
| Lancement de segment similaire | 14-30 jours |
| Actualisation Customer Match | 24-48 heures (correspondance), 7 jours (impact) |

### Quoi suivre

| Métrique | Ce qu'elle vous indique |
|----------|------------------------|
| Volume de conversions | Les nouvelles audiences génèrent-elles des conversions incrémentales ? |
| CPA / ROAS par audience | L'expansion maintient-elle l'efficacité ? |
| Portée / Impressions | Le bassin d'audience s'élargit-il réellement ? |
| Utilisateurs nouveaux vs. récurrents | Touchez-vous vraiment de nouvelles personnes ? |
| Chevauchement d'audience (Insights) | Les campagnes se font-elles concurrence pour les mêmes utilisateurs ? |

---

## Base de connaissances

Ce playbook oriente vers les SOPs suivantes :

### SOPs principales

| SOP | Objectif | Quand l'exécuter |
|-----|----------|-----------------|
| [SOP - Configurer les signaux d'audience](<Audiences - Configurer les signaux d'audience.md>) | Configurer les signaux d'audience PMax | Signaux PMax manquants ou de faible qualité |
| [SOP - Configurer le ciblage par audience](<Audiences - Configurer le ciblage par audience.md>) | Configurer le ciblage Display/Vidéo/DG | Ciblage mal configuré |
| [SOP - Construire des listes Customer Match](<Audiences - Construire des listes Customer Match.md>) | Créer et maintenir le Customer Match | Pas de Customer Match ou listes obsolètes |

### Documents complémentaires

| Document | Type | Objectif |
|----------|------|----------|
| [Audience Strategy Mental Model](<Audiences - Stratégie d'audience.md>) | Modèle Mental | Cadre conceptuel pour les phases d'expansion |
| [Audience Signal Catalog](<Audiences - Signaux d'audience.md>) | Catalogue | Options de types de signaux pour PMax |
| [Audience Segment Catalog](<Audiences - Segments d'audience.md>) | Catalogue | Options de types de segments pour Display/Vidéo/DG |
| [Audience Signal Quality Checklist](<Audiences - [Review] Qualité des signaux d'audience.md>) | Checklist | Valide la configuration des signaux PMax |
| [Audience Targeting Launch Checklist](<Audiences - [Review] Lancement du ciblage par audience.md>) | Checklist | Valide la configuration du ciblage |
| [Audience Targeting Health Checklist](<Audiences - [Review] Santé du ciblage par audience.md>) | Checklist | Valide la santé continue du ciblage |
| [Audience Signals Reference](<Audiences - Signaux d'audience.md>) | Référence | Spécifications et limites des signaux |
| [Audience Targeting Reference](<Audiences - Signaux d'audience.md>) | Référence | Spécifications et limites du ciblage |

---

## Critères de complétion

Ce playbook est terminé quand :

- [ ] Tous les groupes d'assets PMax ont des signaux Tier 1-3 en couches
- [ ] Toutes les campagnes Display/Vidéo/DG ont le bon mode de ciblage et les bons paramètres d'expansion
- [ ] Le Customer Match est actif, apparié à 29%+, et sur un calendrier d'actualisation
- [ ] Au moins une action d'expansion identifiée et initiée
- [ ] Un plan de mesure est en place pour évaluer l'impact de l'expansion

**À ce stade :**

1. Surveillez la performance de l'expansion pendant la fenêtre de validation
2. Relancez ce playbook trimestriellement pour vérifier la santé des audiences
3. Élargissez vers des types d'audience supplémentaires à mesure que les données de performance le confirment

---

## Échecs courants

| Échec | Pourquoi ça arrive | Comment l'éviter |
|-------|-------------------|------------------|
| Élargir avant d'avoir corrigé la qualité des signaux | Sauter les Phases 1-3 | Suivre l'ordre des phases strictement |
| Ajouter toutes les audiences disponibles en une fois | Le réflexe "plus = mieux" | Élargir une seule dimension à la fois |
| Pas de plan de mesure pour l'expansion | L'excitation du lancement | Définir métriques et fenêtres avant d'élargir |
| Élargir les audiences froides avant que les chaudes performent | L'impatience | Progression chaud → tiède → froid |
| Ignorer le Customer Match | "On le fera plus tard" | Le Customer Match est l'action individuelle ayant le plus d'impact |
| Ne pas exclure les clients existants de la prospection | Oubli | Toujours vérifier les exclusions lors de l'expansion |
