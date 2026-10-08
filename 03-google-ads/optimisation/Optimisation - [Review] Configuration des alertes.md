# Configuration des alertes

> **Plateforme :** Google Ads
> **Catégorie :** Optimisation
> **Type :** Checklist
> **Mis à jour :** 2026-05-07

## Objectif

Valide que les alertes automatisées sont correctement configurées sur les trois couches de monitoring, avec des seuils, fenêtres de données et méthodes d'implémentation appropriés.

---

## Ce que cette checklist valide

Cette checklist confirme :

- Les alertes Layer 1️⃣ (santé/gouvernance) détectent les pannes avant qu'elles ne causent des dégâts
- Les alertes Layer 2️⃣ (performance) détectent les changements de métriques inattendus avec filtrage du bruit
- Les alertes Layer 3️⃣ (suivi des objectifs) détectent les écarts de pacing et d'efficacité
- Les seuils d'alerte sont calibrés au volume et au contexte du compte
- Les méthodes d'implémentation correspondent à la complexité des vérifications (règles vs. scripts vs. outils)

Cette checklist ne couvre **PAS** :

- Comment créer des règles (Voir : [SOP - Configurer les alertes du compte](<Optimisation - Configurer les alertes du compte.md>))
- La mécanique des règles (Voir : [Google Ads Alerts and Rules Reference](<Optimisation - Alertes et règles Google Ads.md>))
- Les recettes d'implémentation d'automatisation (Voir : [Monitoring Automation Reference](<Optimisation - Automatisation du monitoring.md>))
- Le remplacement du monitoring manuel (Voir : [Account Health Checklist](<Optimisation - [Review] Santé du compte.md>))

---

## Quand l'utiliser

Exécuter cette checklist :

- Après la configuration initiale du compte ou l'onboarding
- Après l'exécution du [SOP - Configurer les alertes du compte](<Optimisation - Configurer les alertes du compte.md>)
- Lors des revues trimestrielles de paramètres pour vérifier la couverture des alertes
- Après l'ajout de nouvelles campagnes (s'assurer que les alertes les couvrent)
- Lors de la transition d'outils d'automatisation (vérifier le maintien de la couverture)

**Flexibilité de fréquence :**

| Contexte du compte | Fréquence de revue par défaut | Augmenter quand | Diminuer quand |
|----------------|------------------------|---------------|---------------|
| Tout compte | Trimestrielle | Après des changements structurels majeurs, migrations d'outils | Jamais : le trimestriel est déjà le minimum |

---

## Layer 1️⃣ : Alertes de santé et gouvernance

Ces alertes détectent les pannes structurelles. Toutes sont haute priorité.

### Suivi des conversions

- [ ] Alerte configurée pour les campagnes avec zéro conversion sur les 7 derniers jours qui convertissent normalement [défaut : fenêtre 7 jours, vérification quotidienne]
- [ ] Alerte configurée pour une baisse du volume de conversions au niveau compte de >50% vs. les 7 jours précédents [défaut : baisse de 50%]
- [ ] Les alertes de conversion utilisent des fenêtres de données minimum de 7 jours pour tenir compte du délai de conversion
- [ ] Toutes les actions de conversion principales sont couvertes (pas seulement un sous-ensemble)

### Conformité des annonces et assets

- [ ] Alerte configurée pour les annonces avec statut "Refusée" sur toutes les campagnes [vérification quotidienne, email immédiat]
- [ ] Alerte configurée pour les assets avec statut "Refusé" [vérification quotidienne]
- [ ] Alerte configurée pour les campagnes avec zéro annonce éligible [vérification quotidienne]
- [ ] Les alertes de refus couvrent tous les types de campagnes actives (Search, Shopping, PMax)

### Santé des URLs

- [ ] Une vérification des URLs est implémentée pour les Landing Pages à fort trafic
- [ ] Les alertes d'URL cassée incluent le contexte campagne et ad group pour un diagnostic rapide
- [ ] La fréquence de vérification des URLs correspond au volume de trafic (quotidienne pour fort trafic, hebdomadaire pour plus faible)

> 💡 **Les règles Google natives ne peuvent pas vérifier la santé des URLs :** Utilisez un script Google Ads avec UrlFetchApp ou un outil de monitoring tiers. Les vérifications manuelles ponctuelles sont un filet de sécurité, pas une méthode de détection principale.

### Santé du flux (comptes Shopping/PMax uniquement)

- [ ] Les notifications email Merchant Center sont activées pour les erreurs de flux et les refus
- [ ] Le nombre de produits refusés est surveillé par rapport à la baseline
- [ ] Les erreurs de traitement du flux sont signalées avant qu'elles ne causent une perte significative de produits
- [ ] Les problèmes de synchronisation d'inventaire sont détectés (publicité pour des produits en rupture de stock)

### Statut de la stratégie d'enchères

- [ ] Alerte configurée pour les stratégies d'enchères affichant un statut "Mal configurée" [vérification quotidienne]
- [ ] Alerte configurée pour les stratégies d'enchères en "Apprentissage" depuis >14 jours
- [ ] Alerte configurée pour un CPA/ROAS cible déviant de >30% par rapport au réel depuis 14+ jours

### Dérive des paramètres de campagne

- [ ] L'historique des modifications est vérifié pour les recommandations auto-appliquées
- [ ] Les paramètres critiques (localisation, réseau, objectifs de conversion) ont une détection de dérive

---

## Layer 2️⃣ : Alertes de performance

Ces alertes détectent les changements de métriques inattendus. Nécessite un filtrage du bruit via des fenêtres de données minimum et des seuils de volume.

### Alertes budget et dépenses

- [ ] Alerte configurée pour les campagnes dépassant le budget quotidien [défaut : >120% du budget quotidien, jour précédent]
- [ ] Alerte configurée pour les campagnes avec 0€ de dépenses qui devraient être actives [vérification quotidienne]
- [ ] Alerte configurée pour les campagnes limitées par le budget perdant >20% de part d'impressions au budget [défaut : >20%, hebdomadaire]
- [ ] Les alertes budget couvrent toutes les campagnes actives (pas seulement un sous-ensemble)

### Écart d'efficacité des coûts

- [ ] Alerte configurée pour les campagnes où le CPA dépasse le seuil [défaut : >150% du CPA cible, fenêtre 14 jours]
- [ ] Alerte configurée pour les campagnes où le ROAS passe sous le seuil [défaut : <70% du ROAS cible, fenêtre 14 jours]
- [ ] Alerte configurée pour un CPC dépassant la baseline historique [défaut : >130% de la moyenne 30 jours]
- [ ] Les alertes de coûts utilisent des fenêtres de données minimum de 14 jours pour les métriques basées sur les conversions
- [ ] Les alertes de coûts incluent des filtres de volume minimum (ignorer les campagnes avec <10 conversions dans la fenêtre)

### Changements de volume de conversions

- [ ] Alerte configurée pour une baisse du volume de conversions de >40% vs. la période précédente [défaut : 40%, 7 jours vs. 7 jours précédents]
- [ ] Alerte configurée pour une baisse de la valeur de conversion (chiffre d'affaires/marge brute) de >40% vs. la période précédente [défaut : 40%, 7 jours vs. 7 jours précédents]
- [ ] Les alertes de volume agrègent au niveau compte pour les comptes à faible volume

### Filtrage du bruit

- [ ] Toutes les alertes Layer 2️⃣ ont des fenêtres de données appropriées (ni trop courtes, ni trop longues)
- [ ] Comptes à fort volume (200+ conv./mois) : alertes au niveau campagne avec fenêtres de 7 jours
- [ ] Comptes à volume moyen (50-200) : alertes au niveau campagne avec fenêtres de 14 jours
- [ ] Comptes à faible volume (15-50) : alertes au niveau compte avec fenêtres de 30 jours
- [ ] Des seuils de volume minimum sont appliqués pour prévenir les faux positifs sur les entités à faible volume de données
- [ ] Les fenêtres de données tiennent compte du délai de conversion si on utilise des métriques de conversion standard au lieu des conversions (par date)

---

## Layer 3️⃣ : Alertes de suivi des objectifs

Ces alertes suivent la progression vers les objectifs business.

### Pacing mensuel (si applicable)

- [ ] Le pacing du budget mensuel est calculé et surveillé [défaut : alerte si les dépenses quotidiennes requises >150% ou <50% du budget quotidien initial]
- [ ] Les alertes de pacing couvrent toutes les campagnes contribuant aux objectifs mensuels
- [ ] Le tableau de bord de pacing est alimenté automatiquement (Sheets ou outil tiers)

### Objectifs de croissance

- [ ] La comparaison volume de conversions vs. objectif est suivie [défaut : mensuel]
- [ ] La comparaison valeur de conversion (CA/marge brute) vs. objectif est suivie [défaut : mensuel]

### Objectifs d'efficacité

- [ ] La comparaison CPA vs. objectif est automatisée [défaut : hebdomadaire]
- [ ] La comparaison ROAS vs. objectif est automatisée [défaut : hebdomadaire]

---

## Infrastructure d'alertes

- [ ] Tous les emails d'alerte sont envoyés au(x) bon(s) destinataire(s)
- [ ] La fréquence de notification des alertes est appropriée (pas de surcharge de la boîte mail)
- [ ] L'historique des règles d'alerte est vérifié au moins hebdomadairement pour confirmer que les règles se déclenchent
- [ ] Des labels sont utilisés pour cibler les alertes sur les bonnes campagnes
- [ ] Les seuils d'alerte sont documentés (pour pouvoir être recalibrés)
- [ ] Les seuils d'alerte sont recalibrés trimestriellement en fonction de la performance du compte

---

## Méthodes d'implémentation

> ↪️ **Comment implémenter les alertes.** Voir [SOP - Configurer les alertes du compte](<Optimisation - Configurer les alertes du compte.md>) pour la SOP de configuration et [Monitoring Automation Reference](<Optimisation - Automatisation du monitoring.md>) pour les recettes d'implémentation par type d'outil (règles Google, Scripts, outils tiers, agents IA).

---

## Référence rapide

| Document | Relation |
|----------|--------------|
| [Account Monitoring Mental Model](<Optimisation - Surveillance de compte.md>) | Méthode : les trois couches de monitoring validées par cette checklist |
| [Monitoring Automation Reference](<Optimisation - Automatisation du monitoring.md>) | Référence : recettes d'implémentation pour chaque type d'alerte |
| [Google Ads Alerts and Rules Reference](<Optimisation - Alertes et règles Google Ads.md>) | Référence : types de règles, conditions et mécaniques |
| [SOP - Configurer les alertes du compte](<Optimisation - Configurer les alertes du compte.md>) | Exécution : procédure de configuration des alertes |
| [Account Health Checklist](<Optimisation - [Review] Santé du compte.md>) | Compagnon : vérifications manuelles que les alertes complètent |
| [Optimization Cadence Mental Model](<../strategie/Strategie - Cadence d'optimisation.md>) | Fondation : alignement de la fréquence des alertes avec les tiers de cadence |

---

## Détails de version

- **Changelog :** v4.0 : Ajout de la colonne Agents IA/skills au tableau des méthodes d'implémentation par couche. v3.0 : Suppression des annotations d'outils inline des éléments de vérification, ajout de la section "Méthodes d'implémentation par couche" avec le mapping d'adéquation des outils. v2.0 : Réorganisation par couche de monitoring, ajout des défauts configurables, méthode d'implémentation par alerte, guide de filtrage du bruit, fenêtres de données par tier de volume
