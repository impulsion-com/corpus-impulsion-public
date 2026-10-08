# Auditer et optimisér une page de destination existante

> **Plateforme :** Landing Pages
> **Catégorie :** Audit
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Cette SOP vous guide pour auditer une landing page existante au regard des standards LP Hierarchy et Conversion Amplifier, identifier les fuites de conversion et appliquer des corrections priorisées.

> ❓ **La question clé :** Pourquoi cette Landing Page ne convertit-elle pas au taux attendu, et quelles sont les corrections à plus fort impact ?

---

## Ce que cette SOP ne couvre PAS

Cette SOP ne couvre **pas :**

- Construire une nouvelle LP à partir de zéro (Voir : [SOP - Construire une page de destination a forte conversion](<../construction/Construction - Construire une LP e-commerce.md>))
- Expliquer la théorie de structure des LP (Voir : [LP Hierarchy Mental Model](<../methodes/Méthodes - Hiérarchie de Landing Page.md>))
- Lancer des tests A/B (Voir : *Testing Mental Model* [TBD, Phase 6])
- Corriger les problèmes de suivi des conversions (Voir : *Conversion Tracking SOPs* [TBD, Phase 2])

## Quand utiliser cette SOP

Lancez cette SOP quand :

- Une LP existante a un taux de conversion en dessous des attentes
- Le taux de rebond dépasse 60 % sur une LP de trafic payant
- Le CPA dépasse la cible malgré de bons indicateurs de qualité de trafic (CTR, niveau de qualité)
- Avant de scaler la dépense sur une campagne (auditez d'abord la LP)

---

## Avant de commencer

### Prérequis

- Accès à la Landing Page en ligne
- Données de performance Google Ads (CVR, taux de rebond, CPA, volume de trafic)
- Données GA4 ou analytics (profondeur de scroll, temps passé sur la page, répartition par appareil)
- Le texte d'annonce/la campagne qui amène le trafic vers cette LP

### Documents de référence (à garder ouverts)

| Document | Utilisé pour |
|----------|----------|
| [LP Quality Checklist](<Audit - [Review] Qualité de la LP.md>) | Critères d'audit structurés |
| [LP Hierarchy Mental Model](<../methodes/Méthodes - Hiérarchie de Landing Page.md>) | Standard de structure des sections |
| [LP Headline Catalog](<../exemples/Exemples - Headlines.md>) | Patterns de correction pour les titres |
| [LP CTA Catalog](<../exemples/Exemples - CTA.md>) | Patterns de correction pour les CTA |
| [LP Section Catalog](<../exemples/Exemples - Sections.md>) | Patterns de correction pour les sections |

---

## Cadre d'exécution

| Phase | Objectif | Résultat |
|-------|---------|--------|
| **Phase 1️⃣ : Référence** | Documenter la performance actuelle | Instantané de performance |
| **Phase 2️⃣ : Audit structurel** | Comparer la LP à la hiérarchie et à la checklist | Liste d'écarts avec sévérité |
| **Phase 3️⃣ : Diagnostic** | Identifier où les visiteurs décrochent | Liste de problèmes priorisée |
| **Phase 4️⃣ : Correction** | Appliquer les changements à plus fort impact | LP mise à jour |
| **Phase 5️⃣ : Validation** | Confirmer que les corrections ont amélioré la performance | Comparaison avant/après |

---

## Phase 1️⃣ : Référence

### 1.1 Enregistrer les métriques actuelles

| Métrique | Valeur | Source |
|--------|-------|--------|
| Trafic mensuel (sessions) | | GA4 |
| Taux de conversion | | Google Ads ou GA4 |
| Taux de rebond | | GA4 |
| Temps moyen sur la page | | GA4 |
| Profondeur de scroll (% atteignant le bas) | | Suivi du scroll GA4 |
| CPA | | Google Ads |
| Répartition CVR mobile vs desktop | | GA4 |
| Texte d'annonce de la source de trafic principale | | Google Ads |

### 1.2 Capturer un screenshot de la page actuelle

Capturez des screenshots pleine page des versions mobile et desktop. Elles deviennent la référence « avant ».

---

## Phase 2️⃣ : Audit structurel

### 2.1 Dérouler la checklist qualité de la LP

Ouvrez le [LP Quality Checklist](<Audit - [Review] Qualité de la LP.md>) et évaluez chaque élément. Notez chaque échec.

### 2.2 Évaluation section par section

Pour chacune des 7 sections de la hiérarchie, évaluez :

| Section | Présent ? | Qualité (1-5) | Problèmes trouvés |
|---------|----------|---------------|-------------|
| 1. Hero | | | |
| 2. Bénéfices | | | |
| 3. Confiance/Autorité | | | |
| 4. Preuve sociale | | | |
| 5. Traitement des objections | | | |
| 6. Urgence/Rareté | | | |
| 7. CTA (répété) | | | |

### 2.3 Vérifier le principe une page = un objectif

- [ ] Navigation supprimée ou minimisée
- [ ] Aucun lien concurrent qui éloigne de la conversion
- [ ] Pied de page réduit aux seules obligations légales
- [ ] Aucune icône de réseau social sur la page

### 2.4 Vérifier le message match

Ouvrez l'annonce qui amène le trafic. Comparez côte à côte :

- [ ] Le titre de la LP reflète le langage du titre de l'annonce
- [ ] Les visuels de la LP correspondent aux visuels de l'annonce (si Display/Vidéo)
- [ ] L'offre promise dans l'annonce correspond à l'offre sur la page
- [ ] Le mot-clé principal apparaît dans le titre de la LP (pour le trafic Search)

---

## Phase 3️⃣ : Diagnostic

### 3.1 Identifier les points de décrochage

| Symptôme | Cause probable | Investigation |
|---------|-------------|---------------|
| Taux de rebond élevé (>60 %) | La section hero échoue au test des 5 secondes | Vérifiez la clarté du titre, le message match, la vitesse de chargement |
| Faible profondeur de scroll (<30 % atteignent le milieu de page) | La section bénéfices n'accroche pas | Vérifiez la formulation des bénéfices (caractéristiques vs résultats ?) |
| Scroll mais pas de conversion | Objections non traitées, CTA faible | Vérifiez le traitement des objections, la garantie, le texte du CTA |
| CVR mobile bien plus faible que desktop | Expérience mobile cassée | Vérifiez le responsive mobile, l'ergonomie du formulaire, les zones de tap des CTA |
| Abandon de formulaire élevé | Trop de champs ou étape suivante peu claire | Réduisez les champs, ajoutez un indicateur de progression, clarifiez ce qui se passe après la soumission |

### 3.2 Prioriser les problèmes

Classez tous les constats par impact et effort :

| Priorité | Impact | Effort | Corriger en premier |
|----------|--------|--------|-----------|
| **P1 : Quick wins** | Impact élevé | Faible effort | À corriger immédiatement |
| **P2 : Corrections stratégiques** | Impact élevé | Effort élevé | À planifier ensuite |
| **P3 : Optimisations** | Faible impact | Faible effort | À grouper avec d'autres changements |
| **P4 : Reporter** | Faible impact | Effort élevé | Seulement si tout le reste est fait |

### 3.3 Créer la liste priorisée des corrections

| # | Problème | Section | Priorité | Description de la correction | Référence catalogue |
|---|-------|---------|----------|----------------|------------------|
| 1 | | | | | |
| 2 | | | | | |
| 3 | | | | | |

---

## Phase 4️⃣ : Correction

### 4.1 Appliquer d'abord les corrections P1

Pour chaque correction P1 :

1. Référez-vous au catalogue pertinent pour les patterns ([LP Headline Catalog](<../exemples/Exemples - Headlines.md>), [LP CTA Catalog](<../exemples/Exemples - CTA.md>), [LP Section Catalog](<../exemples/Exemples - Sections.md>))
2. Rédigez le contenu de remplacement
3. Implémentez le changement
4. Vérifiez que le changement s'affiche correctement sur mobile et desktop

### 4.2 Patterns de correction courants

| Problème | Correction |
|-------|-----|
| Titre vague | Réécrire avec un pattern orienté résultat du catalogue de titres |
| Pas de CTA au-dessus de la ligne de flottaison | Ajouter un CTA principal à la section hero |
| Bénéfices axés caractéristiques | Réécrire avec la méthode FAB (Caractéristique → Avantage → Bénéfice) |
| Témoignages anonymes | Remplacer par des témoignages nominatifs incluant photo, entreprise, résultats spécifiques |
| Images de banque génériques | Remplacer par de vraies photos produit, photos d'équipe ou résultats clients |
| Plusieurs CTA concurrents | Supprimer toute navigation secondaire, consolider en un seul CTA principal |
| Garantie absente | Ajouter une garantie spécifique près du CTA principal |
| Temps de chargement lent | Compresser les images, minimiser les scripts, supprimer les éléments superflus |
| Trop de champs de formulaire | Supprimer tous les champs non essentiels |

### 4.3 Relancer la checklist

Après les corrections, redéroulez le [LP Quality Checklist](<Audit - [Review] Qualité de la LP.md>). Tous les éléments doivent passer.

---

## Phase 5️⃣ : Validation

### 5.1 Autoriser la collecte de données

Après avoir déployé les corrections, prévoyez au moins :
- 50+ conversions pour une comparaison statistiquement significative
- 2 semaines minimum pour la normalisation saisonnière

### 5.2 Comparer avant/après

| Métrique | Avant | Après | Changement |
|--------|--------|-------|--------|
| Taux de conversion | | | |
| Taux de rebond | | | |
| Temps moyen sur la page | | | |
| CPA | | | |

### 5.3 Documenter les apprentissages

Notez ce qui a changé et pourquoi. Cela construit un journal d'hypothèses d'optimisation :

| Modification | Impact attendu | Impact réel | Garder/annuler |
|-------------|----------------|---------------|-------------|
| | | | |
| | | | |

---

## Validation et critères de complétion

Cette SOP est terminée quand :

- [ ] Métriques de référence documentées
- [ ] Audit structurel complet réalisé avec la LP Quality Checklist
- [ ] Points de décrochage diagnostiqués avec preuves
- [ ] Liste de corrections priorisées créée
- [ ] Corrections P1 appliquées et vérifiées
- [ ] LP Quality Checklist validée après corrections
- [ ] Période de validation démarrée avec suivi en place

---

## Passerelle de sortie

Après validation :

| Résultat | Prochaine étape |
|---------|-----------|
| CVR nettement amélioré | Passez aux corrections P2, puis envisagez de tester en A/B des optimisations supplémentaires |
| CVR inchangé | Rediagnostiquez : les corrections ont ciblé le mauvais problème. Relancez le diagnostic de la Phase 3. |
| CVR en baisse | Annulez les changements, rediagnostiquez à partir de la Phase 3 |

**Calendrier récurrent :**

| Cadence | Action |
|---------|--------|
| Mensuelle | Vérifiez les métriques de la LP au regard de la référence |
| Trimestrielle | Relancez un audit structurel complet |
| Avant de scaler la dépense | Auditez toujours la LP avant d'augmenter significativement le budget |

---

## Erreurs fréquentes

| Erreur | Pourquoi ça arrive | Comment l'éviter |
|---------|----------------|--------------|
| Tout changer d'un coup | Impossible d'attribuer l'amélioration à un changement précis | Priorisez et appliquez les corrections par lots |
| Aucune référence capturée | Aucun moyen de mesurer l'amélioration | Enregistrez toujours les métriques de la Phase 1 avant de changer quoi que ce soit |
| Évaluer trop tôt | Pas assez de données pour une comparaison valide | Attendez au minimum 50+ conversions |
| Corriger d'abord les problèmes cosmétiques | Les ajustements de design bougent rarement le CVR de façon significative | Concentrez-vous d'abord sur le hero, l'offre et les objections |
| Ignorer le mobile | Plus de 50 % du trafic est mobile pour beaucoup de verticaux | Vérifiez toujours l'expérience mobile séparément |

---

## Référence rapide : bibliothèque support

| Document | Type | Utilisé dans |
|----------|------|---------|
| [LP Quality Checklist](<Audit - [Review] Qualité de la LP.md>) | Checklist | Phases 2 et 4 |
| [LP Hierarchy Mental Model](<../methodes/Méthodes - Hiérarchie de Landing Page.md>) | Mental Model | Phase 2 |
| [LP Headline Catalog](<../exemples/Exemples - Headlines.md>) | Catalogue | Phase 4 |
| [LP CTA Catalog](<../exemples/Exemples - CTA.md>) | Catalogue | Phase 4 |
| [LP Section Catalog](<../exemples/Exemples - Sections.md>) | Catalogue | Phase 4 |

---

## Procédures liées

| SOP | Relation |
|-----|--------------|
| [SOP - Construire une page de destination a forte conversion](<../construction/Construction - Construire une LP e-commerce.md>) | Amont : processus de construction initial |
| *Testing Mental Model* [TBD, Phase 6] | Aval : tests A/B structurés après les corrections d'audit |
