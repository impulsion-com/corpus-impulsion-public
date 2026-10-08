# Alertes et règles Google Ads

> **Plateforme :** Google Ads
> **Catégorie :** Optimisation
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Documente le système de règles automatisées de Google Ads : types de règles, conditions disponibles, options de fréquence, portée, mécanique de planification et paramètres de notification. Couvre aussi les limites des règles natives et les alternatives existantes.

---

## Ce que couvre cette fiche / Ce qu'elle ne couvre PAS

**Cette fiche :**

- Documente tous les types de règles automatisées et leurs capacités
- Explique les conditions disponibles, les fréquences et les options de portée
- Couvre la mécanique de planification des règles et les paramètres de notification
- Associe les patterns de règles aux trois couches de monitoring
- Liste les limitations et les alternatives au-delà des règles natives

**Cette fiche ne couvre PAS :**

- Fournir une procédure étape par étape de configuration d'alertes (Voir : [SOP - Configurer les alertes du compte](<Optimisation - Configurer les alertes du compte.md>))
- Recommander quelles alertes configurer (Voir : [Alert Configuration Checklist](<Optimisation - [Review] Configuration des alertes.md>))
- Fournir des recettes d'automatisation (Voir : [Monitoring Automation Reference](<Optimisation - Automatisation du monitoring.md>))

---

## Aide-mémoire : types de règles

| **Type de règle** | **Disponible pour** | **Actions disponibles** |
|---------------|-------------------|----------------------|
| **Règles d'annonces** | Annonces à travers les campagnes/ad groups | Activer, Mettre en pause, Changer les libellés, Envoyer un email |
| **Règles de campagnes** | Campagnes | Activer, Mettre en pause, Changer les budgets, Changer les libellés, Envoyer un email |
| **Règles d'ad groups** | Ad groups | Activer, Mettre en pause, Changer les enchères, Changer les libellés, Envoyer un email |
| **Règles de keywords** | Keywords | Activer, Mettre en pause, Changer les enchères, Changer les URL finales, Changer les libellés, Envoyer un email |
| **Règles de keywords Display** | Keywords Display | Activer, Mettre en pause, Changer les enchères |
| **Règles de groupes d'assets** | Groupes d'assets (PMax) | Activer, Mettre en pause |

> 💡 Les règles "Envoyer un email" sont la base d'un système d'alerte. Elles notifient sans agir, vous laissant le contrôle sur la réponse.

---

## Configuration des règles par couche de monitoring

Les règles natives de Google Ads s'associent différemment aux trois couches de monitoring. Certaines couches sont bien couvertes par les règles, d'autres nécessitent un complément.

| **Couche de monitoring** | **Pattern de règle** | **Ce que les règles peuvent faire** | **Ce que les règles ne peuvent pas faire** |
|---------------------|------------------|-----------------------|--------------------------|
| **Couche 1️⃣ : Santé/gouvernance** | Alertes email basées sur le statut | Alerter sur les refus, zéro conversion, zéro impression, statut de budget | Vérifier la santé des URL, vérifier le déclenchement des tags, détecter les erreurs de flux, scanner l'historique des modifications |
| **Couche 2️⃣ : Alertes de performance** | Alertes email basées sur des seuils | Alerter quand les métriques franchissent des seuils absolus (CPA > X€, ROAS < Y%) | Calculer des variations en % relatif, comparer à des baselines glissantes, filtrer par volume minimum |
| **Couche 3️⃣ : Monitoring des objectifs** | Règles de budget et d'efficacité | Alerter sur le pacing du budget, la dégradation de l'efficacité | Calculer le rythme de dépense, comparer aux objectifs mensuels, agréger la performance multi-campagnes |

> ↪️ **Pour le document de monitoring à trois couches :** Voir : [Account Monitoring Mental Model](<Optimisation - Surveillance de compte.md>).

---

## Conditions disponibles

Les règles peuvent être déclenchées en fonction de n'importe quelle combinaison de métriques de performance et d'attributs d'entité. Les conditions varient significativement selon le type de règle.

### Conditions de métriques de performance

Disponibles pour tous les types de règles (Annonce, Campagne, Ad Group, Keyword) :

| **Métrique** | **Opérateurs** | **Exemple** |
|------------|---------------|-------------|
| Impressions | >, <, =, >=, <= | Impressions < 10 (7 derniers jours) |
| Clics | >, <, =, >=, <= | Clics < 5 (7 derniers jours) |
| Coût | >, <, =, >=, <= | Coût > 500 € (7 derniers jours) |
| CTR | >, <, =, >=, <= | CTR < 1% (14 derniers jours) |
| CPC moyen | >, <, =, >=, <= | CPC moyen > 10 € |
| Conversions | >, <, =, >=, <= | Conversions = 0 (7 derniers jours) |
| Coût/conv. | >, <, =, >=, <= | Coût/conv. > 100 € |
| Taux de conv. | >, <, =, >=, <= | Taux de conv. < 1% |
| Valeur de conv. | >, <, =, >=, <= | Valeur de conv. < 1000 € |
| ROAS (Valeur de conv./coût) | >, <, =, >=, <= | ROAS < 200% |
| Part d'impressions | >, <, =, >=, <= | Search IS < 50% |
| Niveau de qualité | >, <, =, >=, <= | QS < 5 (keywords uniquement) |
| Search lost IS (budget) | >, <, =, >=, <= | Lost IS (budget) > 20% |
| Search lost IS (rank) | >, <, =, >=, <= | Lost IS (rank) > 30% |

### Catégories de conditions spécifiques aux campagnes

Les règles de campagne ont un ensemble de conditions significativement plus riche que les autres types :

| **Catégorie** | **Métriques clés** | **Cas d'usage** |
|--------------|-----------------|--------------|
| **Configuration** | Nombre d'annonces éligibles/refusées, keywords, ad groups, RSA, liens annexes, images | Surveiller la santé structurelle (ex. : alerter si annonces refusées > 0) |
| **Historique des modifications** | Toutes les modifications, changements de budget/enchère/keyword/statut/ciblage/annonce/réseau | Détecter les modifications non autorisées |
| **Métriques concurrentielles** | Détail complet de l'IS (search, top, abs. top, budget, rank), part de clics, CTR relatif | Surveiller la position concurrentielle |
| **Simulateur de budget** | Budget recommandé, interactions/coût supplémentaires estimés au budget recommandé | Identifier les campagnes contraintes |
| **Attributs** | Type de campagne, type de stratégie d'enchères, CPA/ROAS cible, raison du statut, score d'optimisation, budget quotidien, objectifs de conversion | Filtrer par configuration de campagne |

### Conditions d'attributs d'entité

| **Attribut** | **Disponible pour** | **Exemple** |
|---------------|-------------------|-------------|
| Nom de campagne | Campagnes | Contient "Brand" |
| Nom d'ad group | Ad groups | Contient "Exact" |
| Texte de keyword | Keywords | Contient "acheter" |
| Texte d'annonce | Annonces | Contient "Soldes" |
| Libellé | Tous | A le libellé "Priorité" |
| Statut | Tous | Est activé/en pause |
| Type de campagne | Campagnes | Search, Shopping, etc. |

### Colonnes personnalisées comme conditions

Toute colonne personnalisée créée dans le compte peut être utilisée comme condition dans les règles. Cela étend les capacités des règles au-delà des métriques intégrées.

---

## Options de fréquence

| **Fréquence** | **Fonctionnement** | **Idéal pour** |
|---------------|------------------|--------------|
| **Une fois** | S'exécute une seule fois à la date/heure spécifiée | Événements promotionnels, ajustements ponctuels |
| **Toutes les heures** | S'exécute chaque heure dans une fenêtre horaire spécifiée | Monitoring intra-journalier, plafonds de budget, plafonds de clics |
| **Quotidien** | S'exécute chaque jour à l'heure spécifiée | Monitoring continu, alertes de budget |
| **Hebdomadaire** | S'exécute le jour et l'heure spécifiés chaque semaine | Revues de performance, vérifications hebdomadaires |
| **Mensuel** | S'exécute à la date et l'heure spécifiées chaque mois | Réinitialisations de budget mensuelles, revues périodiques |

### Options de plage de données

| **Plage** | **Description** | **Idéal pour** |
|-----------|-----------------|--------------|
| Aujourd'hui | Données du jour uniquement | Monitoring intra-journalier |
| Hier | Données d'hier | Vérifications quotidiennes de performance |
| 7 derniers jours | Fenêtre glissante de 7 jours | Monitoring de tendance hebdomadaire |
| 14 derniers jours | Fenêtre glissante de 14 jours | Vérifications de performance bi-hebdomadaires |
| 30 derniers jours | Fenêtre glissante de 30 jours | Performance mensuelle et règles basées sur les conversions |
| Dernière semaine ouvrable | Lundi à vendredi de la semaine précédente | Vérifications de performance B2B |
| Ce mois-ci | Mois calendaire en cours à date | Règles de plafond de budget mensuel |
| Mois dernier | Mois calendaire précédent complet | Comparaisons mois sur mois |
| Depuis toujours | Toutes les données historiques disponibles | Seuils de performance sur la durée de vie |

> ⚠️ **Utilisez des plages de données plus longues pour les règles basées sur les conversions :** Les conversions prennent du temps à être reportées. Une règle vérifiant "conversions = 0 sur le dernier jour" déclenchera des faux positifs à cause du délai de conversion. Utilisez des fenêtres de 7 jours ou 14 jours minimum pour les métriques de conversion.

---

## Options de portée

| **Niveau** | **Ce qu'elle contrôle** | **Options de sélection** |
|-----------|---------------------|----------------------|
| **Campagne** | Les règles s'appliquent aux campagnes sélectionnées | Toutes les campagnes, campagnes spécifiques, par libellé |
| **Ad group** | Les règles s'appliquent aux ad groups sélectionnés | Tous les ad groups, ad groups spécifiques, par libellé |
| **Keyword** | Les règles s'appliquent aux keywords sélectionnés | Tous les keywords, keywords spécifiques, par libellé |
| **Annonce** | Les règles s'appliquent aux annonces sélectionnées | Toutes les annonces, annonces spécifiques, par libellé |

### Utiliser les libellés pour la portée

Les libellés fournissent le mécanisme de portée le plus flexible :
- Appliquez un libellé (ex. : "Monitor-Daily") aux entités que vous voulez couvrir par des règles
- Définissez la portée de la règle sur "Tous les [entités] avec le libellé : Monitor-Daily"
- Ajoutez ou retirez des entités du monitoring en ajoutant ou retirant des libellés

---

## Paramètres de notification

| **Option** | **Ce qu'elle fait** |
|------------|------------------|
| **À chaque exécution de la règle** | Envoie un email à chaque exécution, même si aucune action n'est prise |
| **Uniquement s'il y a des changements ou des erreurs** | Envoie un email uniquement quand la règle agit ou rencontre des erreurs |
| **Uniquement s'il y a des erreurs** | Envoie un email uniquement quand la règle rencontre des erreurs |
| **Pas d'emails** | La règle s'exécute silencieusement (visible uniquement dans l'historique des règles) |

Vous pouvez ajouter une ou plusieurs adresses email comme destinataires.

**Bonne pratique :** Utilisez "uniquement s'il y a des changements ou des erreurs" pour les règles d'action (pause, activation, changements d'enchères). Utilisez "à chaque exécution" pour les règles de monitoring par email uniquement afin de confirmer que la règle est active.

---

## Mécanique d'exécution des règles

| **Comportement** | **Détail** |
|-------------|-----------|
| **Fenêtre d'exécution** | Les règles planifiées à une heure spécifique peuvent s'exécuter dans une fenêtre de 2 heures autour de cette heure |
| **Actions par règle** | Jusqu'à 5 actions par règle, exécutées dans l'ordre que vous définissez |
| **Logique des conditions** | Toutes les conditions au sein d'une même action utilisent la logique ET : toutes doivent être remplies |
| **Ordre des règles** | Plusieurs règles sur la même entité s'exécutent dans l'ordre de création |
| **Gestion des conflits** | Si deux règles sont en conflit (l'une active, l'autre met en pause), les deux s'exécutent dans l'ordre |
| **Propriété MCC** | Les règles détenues par un MCC peuvent s'appliquer à tous les sous-comptes |
| **Aperçu** | Utilisez "Aperçu des résultats" avant d'enregistrer pour vérifier la logique de la règle |
| **Historique** | Toutes les exécutions de règles sont enregistrées dans l'historique des règles |
| **Fraîcheur des données** | Les règles évaluent les données au moment de l'exécution : les règles horaires peuvent avoir des données "aujourd'hui" incomplètes |

---

## Gestion des règles

### Accéder aux règles

1. Naviguez vers Outils et paramètres
2. Sous Actions groupées, sélectionnez Règles
3. Consultez toutes les règles, leur statut et leur historique d'exécution

### Actions sur les règles

| **Action** | **Ce qu'elle fait** |
|------------|------------------|
| Activer/Mettre en pause | Basculer le statut actif de la règle |
| Modifier | Modifier les conditions, la fréquence ou les actions |
| Aperçu | Voir quelles entités correspondent actuellement aux conditions |
| Exécuter maintenant | Exécuter la règle immédiatement |
| Voir l'historique | Voir les exécutions passées et les actions prises |
| Supprimer | Supprimer la règle définitivement |

---

## Cas d'usage pratiques

### Planifier des annonces pour les promotions

**Événement ponctuel (ex. : soldes d'été) :** Créez les annonces promotionnelles à l'avance, gardez-les en pause. Définissez deux règles ponctuelles : la règle 1 active les annonces contenant "Soldes d'été" au début du week-end. La règle 2 met en pause ces mêmes annonces à la fin. Utilisez la condition Texte d'annonce pour cibler les bonnes annonces.

**Promotion récurrente (ex. : livraison gratuite le week-end) :** Deux règles hebdomadaires : la règle 1 active les annonces contenant "Livraison gratuite" chaque samedi à 1h00. La règle 2 les met en pause chaque dimanche à 23h00. Le même concept fonctionne au niveau campagne.

### Mettre en pause les mauvaises performances

**Keywords à CPA élevé :** Règle quotidienne qui met en pause les keywords avec Coût/conv. > cible ET Conversions > seuil minimum (ex. : >100), sur 30 jours de données. Le seuil de conversion garantit que vous agissez sur des données statistiquement significatives.

**Annonces à faible CTR :** Règle quotidienne qui met en pause les annonces avec CTR < 0,2% ET Impressions >= 1 000, sur 14 jours de données.

### Contrôle du budget

**Vérification de budget en milieu de journée :** Règle quotidienne de campagne pour envoyer un email si le coût dépasse un seuil à midi. Vous permet de décider si vous augmentez le budget pour le reste de la journée.

**Plafond de dépense mensuel :** Règle quotidienne de campagne qui met en pause les campagnes quand le coût dépasse votre plafond mensuel en utilisant la plage "Ce mois-ci".

**Scaler les bonnes performances :** Règle hebdomadaire qui augmente le budget de 10% pour les campagnes avec conversions > seuil ET coût/conv. < cible. Définissez une limite de budget maximum comme mesure de sécurité.

### Libellés par performance

Utilisez les actions "Changer les libellés" pour taguer automatiquement les entités selon les conditions : ajoutez un libellé "Top Performer" aux keywords avec ROAS > 5, ou un libellé "À revoir" aux annonces avec CTR < 1% et un budget significatif dépensé.

---

## Conseils et bonnes pratiques

### Mesures de sécurité

- **Définissez toujours des limites min/max** pour les règles d'enchères et de budget. Des augmentations continues d'enchères mènent à des CPC inutilement élevés. Des baisses continues tuent le trafic.
- **Faites toujours un aperçu avant d'enregistrer :** Une seule règle peut affecter une grande partie de votre compte.
- **Commencez avec la fréquence "Une fois" :** Surveillez l'impact réel avant de passer à un calendrier récurrent.

### Données et timing

- **Utilisez suffisamment de données :** Les règles sur les métriques de conversion ont besoin de fenêtres de 7-30 jours pour prendre en compte le délai de conversion. Ajoutez des seuils minimum d'impressions/clics comme conditions secondaires.
- **Décalez les heures de démarrage :** Planifiez les règles à des heures différentes pour que la première s'exécute en premier. Ne planifiez pas de règles qui se chevauchent sur les mêmes entités.
- **Prenez en compte la fenêtre d'exécution de 2 heures :** Une règle planifiée à 9h00 peut s'exécuter n'importe quand entre 9h00 et 11h00.

### Précautions sur les règles d'enchères

- **Attention aux spirales CTR-enchère :** Une règle qui baisse les enchères quand le CTR est faible peut créer une spirale négative : enchère plus basse → position plus basse → CTR plus bas → enchère plus basse. Ajoutez des conditions de part d'impressions ou de position comme garde-fous.
- **Formule de réversibilité des pourcentages :** Quand vous utilisez des règles d'augmentation/baisse en paire (ex. : augmenter les enchères aux heures de pointe, les baisser en heures creuses), le pourcentage de baisse n'est pas le même que celui d'augmentation. Formule : `% de baisse = (100 * % d'augmentation) / (100 + % d'augmentation)`. Exemple : une augmentation de 25% nécessite une baisse de 20% pour revenir à l'original. Une augmentation de 50% nécessite une baisse de 33,3%.

---

## Limitations

| **Limitation** | **Détail** | **Solution** |
|----------------|-----------|----------------|
| **Pas de règles cross-comptes** | Les règles sont par compte (les règles MCC sont limitées) | Utilisez les scripts MCC pour la logique cross-comptes |
| **Pas de déclencheurs en temps réel** | Les règles s'exécutent selon un calendrier, pas instantanément quand les conditions changent | Utilisez des outils tiers pour le monitoring en temps réel |
| **Fenêtre d'exécution de 2 heures** | Les règles peuvent s'exécuter jusqu'à 2 heures après l'heure planifiée | Intégrez cela dans votre planification sensible au temps |
| **Calculs limités** | Impossible de créer des champs calculés (ex. : "si CPA > 2x cible") | Utilisez les scripts pour les conditions calculées |
| **Pas de chaînage de règles** | Les règles ne peuvent pas déclencher d'autres règles | Utilisez les scripts pour la logique séquentielle |
| **Délai de conversion** | Les fenêtres de données courtes produisent des déclencheurs peu fiables basés sur les conversions | Utilisez des fenêtres de 7+ jours pour les métriques de conversion |
| **Pas de comparaisons relatives** | Impossible de comparer la période actuelle à la précédente (ex. : "30% plus haut que la semaine dernière") | Utilisez les scripts ou des outils tiers |
| **Pas de filtres de volume minimum** | Impossible d'ajouter "uniquement si > 100 clics" comme condition secondaire avec les seuils de performance | Utilisez les scripts pour les alertes filtrées par volume |
| **Règles de groupes d'assets extrêmement limitées** | Uniquement Activer/Mettre en pause, 3 métriques, pas d'email, pas de libellés | Utilisez des outils tiers pour le monitoring PMax |
| **Règles de keywords Display limitées** | Pas d'action Envoyer un email, pas d'action Changer les libellés | Utilisez les scripts ou le monitoring manuel |
| **Pas de vérification d'URL** | Impossible de vérifier le statut HTTP des Landing Pages | Utilisez les scripts (UrlFetchApp) ou des outils d'uptime |
| **Pas d'accès à la santé du flux** | Impossible de surveiller Merchant Center ou le statut des produits | Utilisez les alertes Merchant Center + outils de flux |

---

## Au-delà des règles natives

Les règles natives couvrent le monitoring de seuils basique mais ont des lacunes significatives. Voici ce que chaque type d'outil alternatif ajoute :

| **Capacité** | **Règles natives** | **Scripts Google Ads** | **Outils tiers** | **Agents IA** |
|----------------|-----------------|----------------------|----------------------|---------------|
| **Alertes de seuil absolu** | Oui | Oui | Oui | Oui |
| **Détection de variation en % relatif** | Non | Oui (calcul personnalisé) | Oui (intégré) | Oui |
| **Gestion des baselines** | Non | Oui (intégration Sheets) | Oui (automatique) | Oui |
| **Filtrage par volume minimum** | Non | Oui (logique personnalisée) | Oui (intégré) | Oui |
| **Monitoring cross-comptes** | Limité | Oui (scripts MCC) | Oui | Oui |
| **Vérification de la santé des URL** | Non | Oui (UrlFetchApp) | Oui | Oui |
| **Monitoring de la santé du flux** | Non | Partiel (API Shopping) | Oui (outils de flux) | Oui |
| **Scan de l'historique des modifications** | Non | Non | Oui (certains outils) | Oui |
| **Alertes composites multi-métriques** | Non | Oui | Oui (certains outils) | Oui |
| **Canaux de notification personnalisés** | Email uniquement | Email + Sheets + Slack (via webhook) | In-app + email + Slack | Oui |
| **Flexibilité de planification** | Horaire à mensuel | Horaire à quotidien | Temps réel à quotidien | Oui |

### Vue d'ensemble des scripts Google Ads

Les scripts Google Ads fournissent une automatisation basée sur JavaScript avec un accès complet à l'API Google Ads. Ils s'exécutent sur les serveurs de Google (pas d'hébergement nécessaire), peuvent lire et écrire les données du compte, envoyer des emails, écrire dans Google Sheets et faire des appels HTTP externes.

**Capacités clés pour le monitoring :**
- Calculs de métriques personnalisés (variations en % relatif, moyennes glissantes, métriques composites)
- Exécution planifiée (horaire, quotidien, hebdomadaire)
- Exécution multi-comptes via les scripts MCC
- Intégration Google Sheets pour les baselines et tableaux de bord
- Notifications par email avec mise en forme personnalisée
- Vérification d'URL via UrlFetchApp
- Libellés d'entités selon des conditions personnalisées

**Limitations :** Limite d'exécution de 30 minutes par exécution, JavaScript uniquement, pas de déclencheurs en temps réel, accès limité aux API externes.

### Catégories d'outils tiers

| **Catégorie** | **Exemples** | **Force** |
|--------------|-------------|-------------|
| **Monitoring complet** | TrueClicks, Adalysis | Couverture complète Couche 1️⃣ + Couche 2️⃣, vérifications de gouvernance, détection d'anomalies |
| **Focus flux** | Channable, DataFeedWatch | Santé du flux Shopping, monitoring au niveau produit |

> ↪️ **Pour les détails d'implémentation de l'automatisation :** Voir : [Monitoring Automation Reference](<Optimisation - Automatisation du monitoring.md>) pour des recettes spécifiques utilisant chaque type d'outil.

---

## Erreurs courantes

| **Erreur** | **Problème** | **Solution** |
|-------------|-------------|---------|
| Fenêtre de données courte sur les règles de conversion | Faux positifs à cause du délai de conversion | Utilisez des fenêtres de données de 7+ jours |
| Trop de règles d'action | Les règles entrent en conflit ou sur-optimisent | Préférez les alertes email aux actions automatiques |
| Pas d'aperçu avant d'enregistrer | La règle correspond à des entités non prévues | Faites toujours un aperçu avant d'enregistrer |
| Oubli de vérifier l'historique des règles | Les règles se déclenchent incorrectement sans qu'on le remarque | Consultez l'historique des règles chaque semaine |
| Utiliser les règles pour tout | La logique complexe échoue avec des conditions basiques | Utilisez les scripts ou des outils tiers pour le monitoring avancé |
| Pas de considération de volume minimum | Les alertes se déclenchent sur des entités avec peu de données | Ajoutez un filtrage par volume minimum via scripts ou outils |
| Règles qui se chevauchent sur les mêmes entités | Les deux règles s'exécutent, causant des conflits | Décalez les horaires, assurez-vous que les règles ne sont pas en conflit |
| Pas de limites d'enchère/budget définies | Les augmentations continues spiralent hors de contrôle | Définissez toujours des limites min/max sur les règles d'enchères et de budget |

---

## Documents liés

| **Document** | **Relation** |
|--------------|------------------|
| [Account Monitoring Mental Model](<Optimisation - Surveillance de compte.md>) | Méthode : trois couches de monitoring |
| [Monitoring Automation Reference](<Optimisation - Automatisation du monitoring.md>) | Référence : recettes d'automatisation au-delà des règles natives |
| [SOP - Configurer les alertes du compte](<Optimisation - Configurer les alertes du compte.md>) | Exécution : configuration d'alertes étape par étape |
| [Alert Configuration Checklist](<Optimisation - [Review] Configuration des alertes.md>) | Validation : quelles alertes configurer |
| [Optimization Cadence Mental Model](<../strategie/Strategie - Cadence d'optimisation.md>) | Fondation : alignement de la fréquence des alertes |

---

## Détails de version

- **Changelog :** v3.0 : Extension majeure de la source. Ajout des types de règles Groupes d'assets et Keywords Display. Ajout de la fréquence Horaire, plages de données supplémentaires (Ce mois-ci, Mois dernier, Depuis toujours). Extension des conditions spécifiques aux campagnes (Configuration, Historique des modifications, Métriques concurrentielles, Simulateur de budget, Attributs). Ajout des sections cas d'usage pratiques et conseils/bonnes pratiques. Colonne agents IA mise à jour à "Oui" pour toutes les capacités. Suppression des catégories Optimisation multi-usage et Outils de gestion d'enchères. Exemples d'outils focus flux mis à jour. Table des limitations étendue avec solutions de contournement. v2.0 : Ajout de la section "Configuration des règles par couche de monitoring", section "Au-delà des règles natives" avec couverture des scripts et outils tiers, limitations étendues, titres en minuscules

