# Server-Side Tagging

> **Plateforme :** Google Ads
> **Catégorie :** Suivi
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Documente l'architecture du server-side tagging (SST), les trois méthodes d'implémentation, et quand l'investissement en infrastructure est justifié par les améliorations de qualité des données.

---

## Ce que couvre cette fiche / Ce qu'elle ne couvre PAS

**Cette fiche :**

- Explique comment fonctionne le server-side tagging et pourquoi il prévient la perte de données
- Compare l'architecture de tracking (suivi des conversions/évènements) client-side vs server-side
- Documente les trois méthodes d'implémentation avec les exigences d'infrastructure
- Fournit des recommandations de coût et de seuil pour savoir quand implémenter

**Cette fiche ne couvre PAS :**

- Les instructions de mise en place SST pas à pas (Voir : [SOP - Implementer le tracking server-side](<Suivi - Implémenter le Server-Side Tagging.md>))
- Quelles techniques de tracking prioriser (Voir : [Measurement Maturity Mental Model](<../../01-strategie/reporting/Reporting - Maturité de la mesure.md>))
- La configuration du pixel de conversion (Voir : [Conversion Pixel Reference](<Suivi - Pixel de conversion.md>))
- La configuration des Enhanced Conversions (Voir : [Enhanced Conversions Reference](<Suivi - Enhanced Conversions.md>))

---

## Aide-mémoire : client-side vs server-side

| **Dimension** | **Tracking client-side** | **Tracking server-side** |
|--------------|-------------------------|------------------------|
| **Flux des données** | Le navigateur charge les tags, envoie les requêtes HTTP directement aux serveurs des plateformes (Google, Meta, etc.) | Le navigateur envoie les données à votre conteneur serveur, le conteneur serveur les transmet aux serveurs des plateformes |
| **Impact des bloqueurs de pub** | Tags bloqués : conversions perdues | Les requêtes vont vers votre propre sous-domaine : les bloqueurs ne peuvent pas distinguer le tracking du trafic normal du site |
| **Restrictions de cookies** | Cookies tiers bloqués par les navigateurs (Safari, Firefox), cookies first-party limités à 7 jours (ITP) | Le serveur pose des cookies first-party sur votre domaine : aucune restriction navigateur ne s'applique |
| **Limitations navigateur** | Le JavaScript doit s'exécuter dans le navigateur de l'utilisateur : le chargement de page, les extensions et les paramètres de confidentialité interfèrent tous | Le traitement passe sur votre serveur : pas de dépendance au comportement du navigateur |
| **Vitesse de page** | Plusieurs scripts tiers ralentissent le chargement de page | Les tags se déclenchent côté serveur : moins de scripts sur la page, chargement plus rapide |
| **Précision des données** | 15-30 % de perte de données courante due aux bloqueurs, au consentement et à l'expiration des cookies | Récupère la plupart des données autrement perdues : précision proche de la vérité backend |
| **Contrôle de la vie privée** | Les données sont envoyées directement du navigateur aux tiers | Vous contrôlez quelles données quittent votre serveur : propriété totale des données first-party |
| **Complexité** | Faible : ajouter des tags au conteneur web GTM | Moyenne-élevée : nécessite une infrastructure serveur, un sous-domaine personnalisé, SSL |

---

## Fonctionnement du server-side tagging

### Flux architectural

1. **L'utilisateur visite votre site web** et déclenche un événement (vue de page, achat, soumission de formulaire)
2. **Le conteneur web GTM** collecte les données de l'événement et les envoie à votre **conteneur serveur** (hébergé sur votre sous-domaine)
3. **Le conteneur serveur** reçoit les données, les traite et les transmet aux plateformes de destination (Google Ads, GA4, Meta, etc.)
4. **Les serveurs des plateformes** reçoivent les données comme si elles venaient d'une source first-party sur votre domaine

### Pourquoi cela prévient la perte de données

| **Cause de perte de données** | **Impact client-side** | **Solution server-side** |
|--------------------|----------------------|------------------------|
| Bloqueurs de pub (uBlock, Ghostery) | Bloquent les requêtes vers les domaines de tracking connus (google-analytics.com, googleadservices.com) | Les requêtes vont vers votre sous-domaine (ex. : sst.votredomaine.com) : indétectable par les bloqueurs |
| Safari ITP (Intelligent Tracking Prevention) | Limite les cookies JavaScript first-party à 7 jours | Le serveur pose des cookies HTTP-only first-party : non soumis aux restrictions ITP |
| Firefox ETP (Enhanced Tracking Protection) | Bloque les trackers tiers connus | La même approche par sous-domaine contourne la détection |
| Extensions navigateur | Bloquent ou modifient les scripts de tracking | Les scripts s'exécutent côté serveur, pas dans le navigateur |
| Connexions lentes / abandon de page | Les tags ne se chargent jamais si l'utilisateur part avant que les scripts s'exécutent | Un chargement client-side plus léger signifie une exécution des tags plus rapide |

---

## Trois méthodes d'implémentation

### Méthode 1 : Implémentation personnalisée

| **Aspect** | **Détails** |
|-----------|-----------|
| **Fonctionnement** | Construire votre propre solution de tracking server-side de zéro |
| **Infrastructure** | Votre propre serveur (n'importe quel fournisseur cloud ou sur site) |
| **Flexibilité** | Maximum : contrôle total sur le traitement, le routage et le stockage des données |
| **Exigence technique** | Élevée : nécessite une expertise en développement backend |
| **Idéal pour** | Comptes entreprise avec des équipes de développement dédiées |
| **Coût typique** | Variable : dépend de l'infrastructure et des heures de développement |

### Méthode 2 : Conteneur serveur GTM + Google Cloud Platform

| **Aspect** | **Détails** |
|-----------|-----------|
| **Fonctionnement** | Google Tag Manager fournit un conteneur server-side qui s'exécute sur Google Cloud Platform (GCP) App Engine |
| **Infrastructure** | Instance GCP App Engine, sous-domaine personnalisé, certificat SSL |
| **Flexibilité** | Élevée : interface GTM native pour la gestion des tags, supporte les modèles personnalisés |
| **Exigence technique** | Moyenne-élevée : configuration GCP, configuration DNS, configuration du conteneur serveur GTM |
| **Idéal pour** | Comptes qui veulent une infrastructure native Google avec toutes les capacités GTM |
| **Coût typique** | L'hébergement GCP évolue avec le trafic : 50-500+ €/mois selon le volume |

### Méthode 3 : Conteneur serveur GTM + middleware tiers

| **Aspect** | **Détails** |
|-----------|-----------|
| **Fonctionnement** | Utilise un service middleware (ex. : Stape.io) pour héberger et gérer le conteneur serveur GTM au lieu de GCP directement |
| **Infrastructure** | Le middleware gère l'hébergement, la configuration du sous-domaine et le SSL : vous configurez les tags dans GTM |
| **Flexibilité** | Moyenne-élevée : mêmes fonctionnalités du conteneur serveur GTM, hébergement simplifié |
| **Exigence technique** | Moyenne : configuration plus facile que GCP brut, hébergement plug-and-play |
| **Idéal pour** | La plupart des comptes : simplifie la complexité d'infrastructure tout en préservant les capacités complètes du GTM server-side |
| **Coût typique** | Les plans Stape.io commencent à ~20 €/mois, évoluent avec le volume de requêtes |

> 💡 **La méthode 3 est l'approche recommandée pour la plupart des comptes :** un middleware tiers comme Stape.io gère la complexité d'infrastructure (hébergement, scaling, SSL, sous-domaine) pendant que vous vous concentrez sur la configuration des tags dans l'interface GTM familière.

---

## Exigences d'infrastructure

| **Exigence** | **Objectif** | **Détails** |
|----------------|-----------|-----------|
| **Hébergement du conteneur serveur** | Exécute le conteneur GTM server-side | GCP App Engine, Stape.io, ou serveur personnalisé |
| **Sous-domaine personnalisé** | Route les requêtes de tracking via votre propre domaine | Ex. : `sst.votredomaine.com` ou `data.votredomaine.com` |
| **Certificat SSL** | Sécurise la connexion entre le client et le conteneur serveur | Requis pour le sous-domaine personnalisé : la plupart des fournisseurs d'hébergement l'incluent |
| **Configuration DNS** | Pointe le sous-domaine vers le conteneur serveur | Enregistrement A/CNAME pointant vers votre fournisseur d'hébergement |
| **Conteneur web GTM** | Envoie les données du navigateur au conteneur serveur | Conteneur web existant avec URL de transport configurée |

---

## Résumé des bénéfices

| **Bénéfice** | **Impact** |
|------------|----------|
| **Prévenir la perte de données des bloqueurs de pub** | Récupérer 10-20 % des conversions autrement perdues dans les marchés à forte utilisation de bloqueurs |
| **Surmonter les restrictions de cookies** | Les cookies first-party posés par le serveur persistent au-delà des limites imposées par les navigateurs (ITP, ETP) |
| **Chargement de page plus rapide** | Le traitement passe de l'appareil de l'utilisateur au serveur : moins de scripts, rendu plus rapide |
| **Précision des données améliorée** | Les données de conversion plus proches de la réalité backend : meilleure entrée pour le Stratégies d'enchères intelligentes |
| **Contrôle des données first-party** | Toutes les données passent par votre serveur : vous décidez ce qui est transmis aux plateformes |
| **Support multi-plateforme** | Un seul conteneur serveur peut transmettre les données à Google Ads, GA4, Meta, TikTok, LinkedIn |

---

## Considérations de coût

| **Facteur** | **Détails** |
|-----------|-----------|
| **Coûts d'hébergement** | Évoluent avec le volume de trafic : plus de requêtes = facture d'hébergement plus élevée |
| **Abonnement middleware** | Stape.io et services similaires facturent mensuellement par paliers de requêtes |
| **Temps de configuration** | Configuration initiale : 4-8 heures pour le middleware, 8-20 heures pour le GCP personnalisé |
| **Maintenance** | Minimale en continu : mises à jour du conteneur serveur, ajustements de tags |
| **Calcul du ROI** | Comparer : (conversions récupérées x valeur moyenne de conversion) vs (hébergement mensuel + coût de mise en place) |

---

## Quand implémenter

### Implémenter le SST quand

| **Condition** | **Pourquoi** |
|--------------|--------|
| Les dépenses publicitaires mensuelles dépassent 5 000 € | Le ROI de la qualité des données justifie le coût d'infrastructure à ce seuil |
| Les taux de bloqueurs de pub sont élevés dans votre marché | Europe du Nord, audiences technophiles, B2B : les taux de blocage peuvent dépasser 25 % |
| Écart significatif entre les conversions reportées Google Ads et les données backend | Le SST comble l'écart en récupérant les événements de tracking perdus |
| Campagnes multi-plateformes (Google + Meta + autres) | Un seul conteneur serveur gère toutes les plateformes |
| Les réglementations de confidentialité exigent un contrôle des données first-party | Le SST garde les données sur votre infrastructure avant de les transmettre |

### Ne pas prioriser le SST quand

| **Condition** | **Pourquoi** |
|--------------|--------|
| Les dépenses publicitaires mensuelles sont en dessous de 2 000 € | Les coûts d'infrastructure peuvent dépasser les gains en qualité de données |
| Le pixel GACT n'est pas encore correctement implémenté | Corrigez les fondations d'abord (Voir : [Conversion Pixel Reference](<Suivi - Pixel de conversion.md>)) |
| Pas d'écart entre Google Ads et les données backend | Le SST ajoute de la complexité avec un bénéfice minimal si le tracking est déjà précis |
| Pas de développeur ou ressource technique disponible | Le SST nécessite une mise en place technique initiale : budgétez-la ou utilisez un middleware |

---

## Erreurs courantes

| **Erreur** | **Problème** | **Solution** |
|-------------|-------------|---------|
| Implémenter le SST avant de corriger la configuration GACT de base | Amplifie les erreurs de tracking existantes au lieu d'améliorer les données | Faites fonctionner le GACT correctement d'abord, puis ajoutez le SST |
| Ne pas configurer de sous-domaine personnalisé | Les requêtes vont toujours vers des domaines tiers : les bloqueurs peuvent toujours les bloquer | Configurez un sous-domaine sur votre domaine racine (sst.votredomaine.com) |
| Certificat SSL manquant sur le sous-domaine | Les navigateurs bloquent les requêtes non sécurisées : les tags échouent silencieusement | Assurez-vous que le SSL est actif sur le sous-domaine personnalisé |
| Ne pas configurer le Conversion Linker dans le conteneur serveur | L'attribution des clics casse malgré la configuration server-side | Ajoutez un tag Conversion Linker dans les conteneurs web ET serveur |
| Ignorer les coûts d'hébergement à grande échelle | Factures surprises quand le trafic augmente | Surveillez le volume de requêtes, configurez des alertes de facturation, choisissez le bon palier d'hébergement |
| Exécuter les tags client-side ET server-side pour la même plateforme | Double comptage des conversions | Supprimez les tags de plateforme client-side quand les équivalents server-side sont actifs |
| Ne pas tester avec le mode Aperçu GTM pour le conteneur serveur | Tags déployés sans vérification | Utilisez les modes Aperçu des conteneurs web ET serveur pour déboguer toute la chaîne |

---

## Documents liés

| **Document** | **Relation** |
|--------------|------------------|
| [Measurement Maturity Mental Model](<../../01-strategie/reporting/Reporting - Maturité de la mesure.md>) | Cadre pour savoir quand implémenter le SST dans le parcours de maturité du tracking |
| [Conversion Pixel Reference](<Suivi - Pixel de conversion.md>) | Fondation : la configuration du pixel GACT doit être correcte avant d'ajouter le SST |
| [Enhanced Conversions Reference](<Suivi - Enhanced Conversions.md>) | Le SST et les Enhanced Conversions travaillent ensemble pour maximiser la récupération de données |
| [Conversion Action Reference](<Suivi - Actions de conversion.md>) | La configuration des actions de conversion s'applique indépendamment de l'implémentation client-side ou server-side |
| [Conversion Volume Thresholds Reference](<Suivi - Seuils de volume de conversions.md>) | Le SST aide les comptes à atteindre les seuils de volume de conversion en récupérant les données perdues |
