# Qualité du reporting

> **Plateforme :** Stratégie
> **Catégorie :** Reporting
> **Type :** Checklist
> **Mis à jour :** 2026-05-07

## Objectif

Valide que les tableaux de bord et rapports sont correctement configurés pour faire ressortir des insights exploitables, utiliser les bonnes métriques et correspondre aux besoins de l'audience.

---

## Ce que cette checklist valide

Cette checklist confirme :

- Les rapports incluent les bonnes métriques pour l'audience
- Les comparaisons et le contexte sont inclus
- Les sources de données et l'attribution sont cohérentes
- Le formatage permet une interprétation rapide
- Les rapports orientent vers des décisions, pas seulement un affichage de données

Cette checklist ne couvre **PAS** :

- La définition des KPIs à suivre (Voir : [Goals and KPIs Mental Model](<../objectifs/Objectifs - Objectifs et KPI.md>))
- L'explication des définitions de métriques (Voir : [Google Ads Metrics Reference](<../../03-google-ads/optimisation/Optimisation - Alertes et règles Google Ads.md>))

---

## Quand l'utiliser

Exécuter cette checklist :

- Après la création d'un nouveau tableau de bord ou rapport
- Avant de partager des rapports avec les parties prenantes
- Lors d'audits trimestriels du reporting
- Lors de la reprise d'un compte (audit des rapports existants)

---

## Checklist

### Sélection des métriques

- [ ] Les KPIs principaux correspondent aux objectifs business documentés
- [ ] Les KPIs secondaires (garde-fous) sont inclus
- [ ] Pas de métriques vaniteuses sans contexte exploitable
- [ ] Les métriques sont limitées à 5-7 par vue (pas de dump de données)
- [ ] Les colonnes personnalisées sont documentées et validées

### Comparaisons et contexte

- [ ] La période actuelle vs. l'objectif est affiché
- [ ] La période actuelle vs. la période précédente est affichée
- [ ] Le pourcentage de variation est calculé (pas seulement des chiffres bruts)
- [ ] Les plages de dates sont clairement libellées
- [ ] Le délai de conversion est pris en compte (périodes récentes marquées comme incomplètes si nécessaire)

### Cohérence de l'attribution

- [ ] Le même modèle d'attribution est utilisé dans tous les rapports
- [ ] Le modèle d'attribution est documenté dans le rapport
- [ ] Les actions de conversion incluses sont cohérentes
- [ ] Les notes d'attribution cross-plateforme sont incluses (si applicable)

### Précision des données

- [ ] Le suivi des conversions est vérifié fonctionnel
- [ ] Les données correspondent à l'interface Google Ads (vérification ponctuelle des chiffres clés)
- [ ] Les filtres sont correctement appliqués (pas d'exclusions accidentelles)
- [ ] La plage de dates est complète (semaines/mois complets pour une comparaison propre)
- [ ] Le fuseau horaire est cohérent

### Adéquation avec l'audience

- [ ] La profondeur du rapport correspond à l'audience (exécutif = vue d'ensemble, spécialiste = granulaire)
- [ ] Le jargon est approprié pour l'audience
- [ ] Les actions à mener sont claires pour l'audience
- [ ] La fréquence correspond à la cadence de décision (hebdomadaire pour le tactique, mensuel pour le stratégique)

### Formatage

- [ ] Les KPIs principaux sont visuellement proéminents (haut du rapport)
- [ ] Les nombres sont arrondis de manière appropriée (pas de décimales excessives)
- [ ] Les symboles de devise sont cohérents
- [ ] Les tableaux ont des en-têtes clairs et un alignement propre
- [ ] Les graphiques utilisent la bonne visualisation (tendances = courbe, comparaison = barres)
- [ ] Les outliers ou problèmes sont mis en évidence (code couleur ou annotations)

### Segmentation

- [ ] Le niveau de segmentation correspond à l'objectif (campagne pour le stratégique, keyword pour le tactique)
- [ ] Une seule dimension de segmentation par vue (pas de sur-segmentation)
- [ ] Des données suffisantes existent pour les conclusions au niveau segment (100+ conversions ou 30 jours)

### Exploitabilité

- [ ] Chaque métrique peut orienter une action d'optimisation spécifique
- [ ] La question "Et alors ?" est répondue pour chaque donnée
- [ ] Les prochaines étapes ou recommandations sont incluses (si le type de rapport le justifie)
- [ ] Les problèmes sont priorisés par impact

### Documentation

- [ ] L'objectif du rapport est documenté
- [ ] Les définitions des métriques sont accessibles (liées ou notées)
- [ ] La fréquence de mise à jour est documentée
- [ ] Le propriétaire/créateur est documenté
- [ ] La version ou la date de dernière mise à jour est incluse

---

## Vérifications spécifiques par type de rapport

### Rapports exécutifs

- [ ] Limité à 5 métriques de haut niveau ou moins
- [ ] Résumé clair "en bonne voie" ou "hors piste"
- [ ] Minimum de détails (lien vers les rapports détaillés si nécessaire)
- [ ] Langage orienté business (CA, profit) pas jargon plateforme

### Rapports de performance hebdomadaires

- [ ] Couvre une semaine complète (lundi-dimanche ou cohérent)
- [ ] Compare à la même semaine de la période précédente (semaine sur semaine ou year-over-year)
- [ ] Identifie le problème principal à investiguer
- [ ] Documente les actions prises

### Rapports diagnostiques

- [ ] La segmentation isole la variable investiguée
- [ ] La plage de temps est suffisamment longue pour la validité statistique
- [ ] Compare à une période de référence
- [ ] L'hypothèse de cause racine est documentée

---

## Référence rapide

| Document | Relation |
|----------|--------------|
| [Reporting Mental Model](<Reporting - Reporting.md>) | Méthode pour l'approche du reporting |
| [Goals and KPIs Mental Model](<../objectifs/Objectifs - Objectifs et KPI.md>) | Définit quelles métriques prioriser |
| [Google Ads Metrics Reference](<../../03-google-ads/optimisation/Optimisation - Alertes et règles Google Ads.md>) | Définitions des métriques |
| [Custom Columns Reference](<../../03-google-ads/optimisation/Optimisation - Colonnes personnalisées.md>) | Formules de métriques personnalisées |
| [SOP - Revue de performance hebdomadaire](<Reporting - Revue de performance hebdomadaire.md>) | Utilise les rapports validés par cette checklist |
