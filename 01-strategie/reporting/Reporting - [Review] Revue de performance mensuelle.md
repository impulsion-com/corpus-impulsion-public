# Revue de performance mensuelle

> **Plateforme :** Stratégie
> **Catégorie :** Reporting
> **Type :** Checklist
> **Mis à jour :** 2026-05-07

## Objectif

Valide que la revue de performance mensuelle couvre toutes les dimensions stratégiques, structurelles et de santé qui ne peuvent pas être correctement évaluées à cadence hebdomadaire. La revue mensuelle couvre les trois couches de monitoring : un audit approfondi Layer 1️⃣, le recalibrage des baselines Layer 2️⃣ et l'évaluation complète des objectifs Layer 3️⃣.

---

## Ce que cette checklist valide

Cette checklist confirme :

- L'intégrité du suivi des conversions est vérifiée par rapport aux données backend (approfondissement Layer 1️⃣)
- Les paramètres de campagne n'ont pas dérivé de la configuration prévue (approfondissement Layer 1️⃣)
- Les recommandations auto-appliquées de Google sont vérifiées (Layer 1️⃣)
- La structure du compte et les seuils de baseline sont recalibrés (Layer 2️⃣)
- Les changements du paysage concurrentiel sont identifiés (Layer 2️⃣/3️⃣)
- Les tendances de performance sont évaluées par rapport aux objectifs business sur des fenêtres de 30+ jours (Layer 3️⃣)

Cette checklist ne couvre **PAS** :

- Le remplacement des vérifications quotidiennes de santé (Voir : [Account Health Checklist](<../../03-google-ads/optimisation/Optimisation - [Review] Santé du compte.md>))
- Le remplacement des revues de performance hebdomadaires (Voir : [SOP - Revue de performance hebdomadaire](<Reporting - Revue de performance hebdomadaire.md>))
- Les procédures pas à pas (Voir : [SOP - Revue de performance mensuelle](<Reporting - Revue de performance mensuelle.md>))
- Les revues stratégiques trimestrielles (Voir : [Quarterly Review Checklist](<Reporting - [Review] Revue trimestrielle.md>))

> ↪️ **Contexte des couches de monitoring :** Cette checklist couvre les trois couches du [Account Monitoring Mental Model](<../../03-google-ads/optimisation/Optimisation - Surveillance de compte.md>). Les sections sont taguées avec leur couche principale pour référence.

---

## Quand l'utiliser

Exécuter cette checklist :

- Première semaine de chaque mois dans le cadre de la revue de performance mensuelle
- Après la fin d'un trimestre (combinée avec la revue stratégique trimestrielle)
- Lors de l'onboarding d'un nouveau compte (établissement de la baseline)

**Flexibilité de fréquence :**

| Conversions mensuelles | Périmètre par défaut | Ajuster quand |
|----------------|--------------|-------------|
| 200+ (élevé) | Checklist complète, toutes les sections | Ajouter une analyse concurrentielle approfondie en période de forte activité concurrentielle |
| 50-200 (moyen) | Checklist complète | Sauter l'approfondissement concurrentiel si marché stable, se concentrer sur l'efficacité et le pacing |
| 15-50 (faible) | Checklist complète avec fenêtres de données étendues (60-90 jours) | Utiliser les comparaisons YoY car les données MoM sont bruitées |

**Contexte d'automatisation :** Les sections marquées `[auto-prep]` peuvent être pré-remplies automatiquement via des scripts ou tableaux de bord avant la revue. Cela réduit la revue mensuelle de collecte de données + analyse à analyse uniquement.

---

## Checklist

### Diagnostics du suivi des conversions `[Layer 1️⃣ approfondissement]` `[auto-prep]`

- [ ] Les totaux de conversions Google Ads sont comparés aux données backend (CRM, analytics, plateforme e-commerce)
- [ ] Le pourcentage d'écart est calculé et dans la bande acceptable (typiquement <15%)
- [ ] Toutes les actions de conversion principales sont vérifiées actives
- [ ] Les paramètres des actions de conversion sont vérifiés (fenêtre, comptage, valeur)
- [ ] Le taux de correspondance Enhanced Conversions est vérifié (si applicable)
- [ ] La santé de l'import des conversions hors ligne est vérifiée (si applicable)

### Revue des paramètres de campagne `[Layer 1️⃣ approfondissement]` `[auto-prep]`

- [ ] Les paramètres de ciblage géographique n'ont pas changé par rapport à la configuration prévue
- [ ] Les paramètres de réseau sont vérifiés (Partenaires du Réseau de Recherche, Display Expansion)
- [ ] Les paramètres de rotation des annonces sont confirmés sur "Optimiser"
- [ ] Le ciblage linguistique est correct pour toutes les campagnes
- [ ] Les objectifs spécifiques aux campagnes sont alignés avec les actions de conversion prévues
- [ ] Les exclusions/inclusions de marque sont toujours précises (PMax, Search)

### Santé des Landing Pages `[Layer 1️⃣ approfondissement]` `[auto-prep]`

- [ ] La vitesse de chargement des principales Landing Pages est vérifiée (Core Web Vitals)
- [ ] Pas d'augmentation du taux de rebond sur les Landing Pages principales
- [ ] Les tendances du taux de conversion des Landing Pages sont vérifiées
- [ ] Le contenu des Landing Pages correspond toujours au message publicitaire

### Recommandations Google et auto-apply `[Layer 1️⃣]`

- [ ] Les paramètres d'auto-apply sont vérifiés (toutes les catégories désactivées selon les directives)
- [ ] L'historique des modifications est vérifié pour les recommandations auto-appliquées
- [ ] Les recommandations en attente sont vérifiées et rejetées ou appliquées
- [ ] Le score d'optimisation est noté (pour référence, pas comme objectif)

### Santé des audiences `[Layer 2️⃣]`

- [ ] Les tailles des listes de remarketing sont vérifiées (pas de diminution inattendue)
- [ ] La fraîcheur des listes Customer Match est vérifiée (uploadées dans les 90 derniers jours)
- [ ] La performance des segments d'audience est vérifiée pour des patterns exploitables
- [ ] Aucun segment d'audience avec zéro impression qui devrait être actif

### Revue du Niveau de qualité (Search) `[Layer 2️⃣]` `[auto-prep]`

- [ ] Le Niveau de qualité pondéré non-marque est calculé et comparé au mois précédent
- [ ] Les keywords à fort volume avec QS <5 sont identifiés et signalés
- [ ] Les tendances des composants QS sont vérifiées (CTR attendu, Pertinence de l'annonce, Expérience de la Landing Page)
- [ ] Les keywords avec QS en déclin sont investigués ou mis en file pour action

### Recalibrage des baselines `[Layer 2️⃣]`

- [ ] Les seuils vert/orange/rouge du Status Board sont vérifiés par rapport aux 30 derniers jours de données
- [ ] Les seuils sont ajustés si la performance de baseline a significativement changé
- [ ] Les seuils d'alerte sont recalibrés si le taux de faux positifs était élevé
- [ ] La classification du tier de volume est confirmée (le compte a-t-il changé de tier ?)

### Paysage concurrentiel `[Layer 2️⃣/3️⃣]` `[auto-prep]`

- [ ] Les Insights sur les enchères sont vérifiés pour les tendances de part d'impressions sur les 3 derniers mois
- [ ] Les nouveaux concurrents sont identifiés (si apparus)
- [ ] Les disparitions de concurrents sont notées (et l'impact CPC évalué)
- [ ] Les tendances de taux de surclassement sont évaluées pour les 3-5 principaux concurrents
- [ ] La compétitivité prix Merchant Center est vérifiée (e-commerce uniquement)

### Performance de la stratégie d'enchères `[Layer 2️⃣/3️⃣]` `[auto-prep]`

- [ ] La performance cible vs. réelle de chaque stratégie d'enchères est vérifiée
- [ ] Le statut de la stratégie d'enchères est "Éligible" pour toutes les stratégies actives
- [ ] Les plafonds CPC des stratégies d'enchères de portefeuille sont toujours appropriés
- [ ] Les stratégies avec <30 conversions/mois sont signalées pour envisager une consolidation
- [ ] Les ajustements de saisonnalité sont vérifiés et mis à jour si nécessaire

### Analyse des tendances de performance `[Layer 3️⃣]` `[auto-prep]`

- [ ] Les KPIs principaux (conversions, CPA/ROAS, CA) sont vérifiés pour une comparaison 30 jours vs. 30 jours précédents
- [ ] Les KPIs principaux sont vérifiés pour une comparaison year-over-year (ajustement saisonnalité)
- [ ] La trajectoire month-over-month est évaluée par rapport aux objectifs annuels
- [ ] Les campagnes outliers significatives sont identifiées et notées
- [ ] Les campagnes les plus et les moins performantes sont documentées

### Structure du compte `[Layer 3️⃣]`

- [ ] Les campagnes avec <30 conversions/mois sont vérifiées pour consolidation
- [ ] Les ad groups à faible volume d'impressions sont vérifiés pour fusion
- [ ] Le nombre de campagnes est approprié pour le volume et la complexité du compte
- [ ] Aucune campagne orpheline ou oubliée ne tourne sans supervision

### Budget et allocation `[Layer 3️⃣]` `[auto-prep]`

- [ ] Les dépenses mensuelles vs. le budget mensuel sont évaluées
- [ ] L'allocation budgétaire entre les campagnes est vérifiée pour une distribution optimale
- [ ] Les campagnes limitées par le budget sont identifiées et priorisées
- [ ] Le budget du mois prochain est confirmé avec les parties prenantes (si applicable)

### Alignement stratégique `[Layer 3️⃣]`

- [ ] L'activité du compte est alignée avec la roadmap trimestrielle
- [ ] Les sprints de contraintes sont en bonne voie (le goulot d'étranglement actuel est traité)
- [ ] La roadmap de tests est vérifiée : expérimentations en cours, terminées ou planifiées
- [ ] Les actions à mener sont documentées pour le mois prochain

---

## Référence rapide

| Document | Relation |
|----------|--------------|
| [Account Monitoring Mental Model](<../../03-google-ads/optimisation/Optimisation - Surveillance de compte.md>) | Méthode : les trois couches de monitoring que couvre cette checklist |
| [SOP - Revue de performance mensuelle](<Reporting - Revue de performance mensuelle.md>) | Exécution : procédure de revue mensuelle utilisant cette checklist |
| [SOP - Revue de performance hebdomadaire](<Reporting - Revue de performance hebdomadaire.md>) | Compagnon : revue hebdomadaire (la mensuelle s'appuie dessus) |
| [SOP - Analyser les Insights sur les enchères](<../../03-google-ads/search/Search - Analyser les Insights sur les enchères.md>) | Exécution : analyse concurrentielle pour la section paysage |
| [SOP - Gerer les recommandations Google](<../../03-google-ads/optimisation/Optimisation - Gérer les recommandations Google.md>) | Exécution : procédure de revue des recommandations |
| [Optimization Cadence Mental Model](<../../03-google-ads/strategie/Strategie - Cadence d'optimisation.md>) | Fondation : définition du tier de cadence mensuelle |
| [Monitoring Automation Reference](<../../03-google-ads/optimisation/Optimisation - Automatisation du monitoring.md>) | Référence : recettes d'automatisation pour pré-remplir les données de revue |
| [Quarterly Review Checklist](<Reporting - [Review] Revue trimestrielle.md>) | Compagnon : checklist stratégique trimestrielle (s'appuie sur la mensuelle) |
| [Reporting Mental Model](<Reporting - Reporting.md>) | Fondation : hiérarchie et types de reporting |

---

## Détails de version

- **Changelog :** v5.0 : Réorganisation des sections de la checklist du Layer 1️⃣ au Layer 3️⃣ pour une progression logique. v4.0 : Lien de référence trimestrielle vers la Quarterly Review Checklist publiée. v3.0 : Ajout de la fiche trimestrielle. v2.0 : Ajout du mapping par couche par section, tags de contexte d'automatisation, flexibilité de fréquence, section de recalibrage des baselines, référence croisée Account Monitoring Mental Model, titres en minuscules
