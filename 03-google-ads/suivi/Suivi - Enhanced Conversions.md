# Enhanced Conversions

> **Plateforme :** Google Ads
> **Catégorie :** Suivi
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Documente les Enhanced Conversions (EC), comment les données first-party hachées améliorent la précision de l'attribution, les trois méthodes de configuration, et la variante Enhanced Conversions for Leads (EC4L) pour le lead gen et le SaaS.

---

## Ce que couvre cette fiche / Ce qu'elle ne couvre PAS

**Cette fiche :**

- Explique comment les Enhanced Conversions récupèrent des conversions autrement non mesurées
- Documente les trois méthodes de configuration (GTM, gtag, API Google Ads) avec comparaison
- Couvre les exigences de données, le hachage et les diagnostics
- Explique les Enhanced Conversions for Leads (EC4L) comme variante pour le lead gen/SaaS

**Cette fiche ne couvre PAS :**

- Fournir l'implémentation étape par étape des EC (Voir : [SOP - Implementer les conversions ameliorees](<Suivi - Implémenter les conversions améliorées.md>))
- Expliquer les workflows d'import de conversions hors ligne (Voir : [Offline Conversion Tracking Reference](<Suivi - Offline Conversion Tracking.md>))
- Couvrir la configuration du server-side tagging (Voir : [Server-Side Tagging Reference](<Suivi - Server-Side Tagging.md>))
- Documenter l'installation du pixel de conversion (Voir : [Conversion Pixel Reference](<Suivi - Pixel de conversion.md>))

---

## Comment fonctionnent les Enhanced Conversions

### Le flux d'attribution

1. **L'utilisateur voit ou clique sur votre annonce** en étant connecté à un compte Google
2. **L'utilisateur convertit sur votre site web** (achat, soumission de formulaire, inscription)
3. **Le tag de conversion capture les données first-party hachées** (adresse email, numéro de téléphone) aux côtés de l'événement de conversion standard
4. **Les données hachées sont envoyées à Google** dans un hachage SHA-256 unidirectionnel respectueux de la vie privée
5. **Google fait correspondre le hash** avec sa base de données d'utilisateurs connectés
6. **La conversion est attribuée** à l'interaction publicitaire qui n'aurait autrement pas pu être suivie (en raison de la perte de cookies, des parcours cross-device, ou des lacunes d'attribution par vue)

### Pourquoi c'est important

Les Enhanced Conversions récupèrent des conversions que le suivi par pixel standard rate. Sans EC, les conversions des utilisateurs qui ont vu (mais pas cliqué) votre annonce, qui ont changé d'appareil, ou dont les cookies ont été perdus sont invisibles. Avec EC, Google fait correspondre les données utilisateur hachées au compte Google connecté qui a interagi avec votre annonce.

> 💡 **Impact le plus fort sur les campagnes haut et milieu du tunnel :** Les EC produisent le plus grand uplift pour les campagnes Display, Vidéo et Demand Gen où les lacunes d'attribution par vue et cross-device sont les plus courantes. Attendez une augmentation de 5-25% des conversions attribuées selon le mix de campagnes.

---

## Aide-mémoire : méthodes de configuration

| **Méthode** | **Fonctionnement** | **Hachage** | **Exigence technique** | **Idéal pour** |
|-----------|-----------------|------------|--------------------------|-------------|
| **Google Tag Manager (GTM)** | Créer des variables de données fournies par l'utilisateur dans GTM, lier au tag de suivi de conversion | Automatique (GTM gère SHA-256) | Moyen : le data layer doit exposer les données utilisateur | La plupart des implémentations : flexible, débogable |
| **gtag (codé en dur)** | Ajouter le snippet enhanced_conversions sous le snippet d'événement de conversion | Automatique (gtag gère SHA-256) | Moyen : le développeur ajoute le snippet aux pages de conversion | Sites utilisant gtag codé en dur sans GTM |
| **API Google Ads** | Soumission programmatique des données utilisateur hachées via des appels API | Manuel (il faut pré-hacher avec SHA-256 avant l'envoi) | Élevé : nécessite un développeur avec expertise API | Comptes à fort volume, intégrations logicielles (ex. ProfitMetrics Conversion Booster) |

---

## EC (Web) vs EC for Leads : comparaison

| Caractéristique | Enhanced Conversions (Web) | Enhanced Conversions for Leads |
|---------|---------------------------|-------------------------------|
| **Objectif** | Améliorer la précision de la mesure des conversions web | Faire correspondre les conversions CRM hors ligne aux clics publicitaires |
| **Données envoyées** | Données utilisateur hachées au moment de la conversion en ligne | Données utilisateur hachées à la soumission du formulaire lead |
| **Méthode de correspondance** | Complète l'attribution basée sur le clic avec la correspondance de données utilisateur | Remplace la correspondance hors ligne GCLID-uniquement par la correspondance de données utilisateur |
| **Idéal pour** | Ecommerce, essais SaaS, toute conversion en ligne | Lead Gen et SaaS avec pipeline CRM (import de conversions hors ligne) |
| **Complexité de configuration** | Basse (modification de tag sur les pages de conversion) | Moyenne (nécessite intégration CRM + upload de conversions hors ligne) |
| **Objectif de taux de correspondance** | 50%+ (email + téléphone + adresse combinés) | 50%+ |
| **Type de conversion** | Conversions en ligne suivies par le tag Google | Conversions hors ligne importées via API ou upload |
| **Prérequis** | Tag Google ou GTM se déclenchant sur la page de conversion | Pipeline de suivi des conversions hors ligne opérationnel |

> 💡 **Utilisez les deux quand applicable.** Les EC (Web) améliorent la précision des conversions en ligne. Les EC for Leads améliorent la correspondance des conversions hors ligne. Ils servent des types de conversion différents et ne sont pas en conflit.

---

## Exigences de données

### Champs requis et optionnels

| **Champ** | **Requis** | **Format** | **Notes** |
|----------|-------------|-----------|----------|
| **Adresse email** | Oui (obligatoire) | Minuscules, espaces supprimés | Identifiant le plus important : envoyez toujours celui-ci |
| **Numéro de téléphone** | Optionnel (recommandé) | Format E.164 (+33612345678) | Augmente le taux de correspondance combiné avec l'email |
| **Prénom** | Optionnel | Minuscules | Impact minimal sur le taux de correspondance au-delà de l'email + téléphone |
| **Nom** | Optionnel | Minuscules | Impact minimal sur le taux de correspondance au-delà de l'email + téléphone |
| **Adresse** | Optionnel | Minuscules | Rarement nécessaire |
| **Ville** | Optionnel | Minuscules | Rarement nécessaire |
| **Région/état** | Optionnel | Minuscules | Rarement nécessaire |
| **Code postal** | Optionnel | Sans formatage | Rarement nécessaire |
| **Pays** | Optionnel | ISO 3166-1 alpha-2 | Rarement nécessaire |

> 💡 **Email + numéro de téléphone suffit dans 95% des cas :** L'envoi de champs supplémentaires (nom, adresse) fournit une amélioration marginale du taux de correspondance. Concentrez-vous sur l'obtention correcte de l'email et du numéro de téléphone.

### Hachage

| **Méthode** | **Comportement de hachage** |
|-----------|---------------------|
| **GTM** | Automatique : GTM hache les données utilisateur avec SHA-256 avant envoi à Google |
| **gtag** | Automatique : gtag.js hache les données utilisateur avec SHA-256 avant envoi |
| **API** | Manuel : vous devez pré-hacher avec SHA-256, mettre en minuscules et supprimer les espaces avant le hachage |

Les données utilisateur ne quittent jamais votre site en clair. Toutes les données sont hachées avec SHA-256 (unidirectionnel, irréversible) avant transmission. Google fait correspondre les hash avec sa propre base de données utilisateur hachée.

---

## Configuration GTM

### Prérequis

- Conteneur web GTM installé sur toutes les pages
- Tag Google Ads conversion tracking (suivi des conversions/évènements) déjà en déclenchement sur les événements de conversion
- Le data layer expose les données fournies par l'utilisateur (email, téléphone) sur l'événement de conversion

### Vue d'ensemble des étapes de configuration

1. **Créez des variables de data layer** dans GTM pour les champs de données utilisateur (email, téléphone). Les chemins de variables dépendent de la structure de votre data layer (ex. `fields.email.value` ou `userProvidedData.email`).

2. **Créez une variable de données fournies par l'utilisateur** dans GTM : Variables > Définies par l'utilisateur > Nouveau > sélectionnez le type "Données fournies par l'utilisateur". Mappez les champs email et téléphone aux variables de data layer créées à l'étape 1. Utilisez la configuration manuelle pour des résultats fiables.

3. **Liez au tag de suivi de conversion** : Éditez votre tag Google Ads Conversion Tracking > cochez "Inclure les données fournies par l'utilisateur depuis votre site web" > sélectionnez la variable de données fournies par l'utilisateur.

4. **Activez dans l'UI Google Ads** : Objectifs > Conversions > Paramètres > Enhanced Conversions > Activez > Sélectionnez "Google Tag Manager" comme méthode.

5. **Déboguez** : Utilisez le mode aperçu GTM pour vérifier que les variables de données utilisateur se remplissent correctement et apparaissent dans le payload enhanced conversions du tag de conversion.

---

## Configuration gtag

### Prérequis

- Tag global du site (gtag.js) installé sur toutes les pages
- Snippet d'événement de conversion déjà en déclenchement sur les pages de conversion
- Données utilisateur (email, téléphone) accessibles comme variables JavaScript sur la page de conversion

### Vue d'ensemble des étapes de configuration

1. **Ajoutez allow_enhanced_conversions au tag global du site** : Insérez `'allow_enhanced_conversions': true` dans votre appel gtag config.

2. **Ajoutez le snippet enhanced_conversions sous l'événement de conversion** : Placez un appel `gtag('set', 'user_data', {...})` sous votre snippet d'événement de conversion, remplissant email et téléphone depuis les variables de page.

3. **Activez dans l'UI Google Ads** : Objectifs > Conversions > Paramètres > Enhanced Conversions > Activez > Sélectionnez "Tag Google" comme méthode.

4. **Validez** : Vérifiez les diagnostics de l'action de conversion pour le statut enhanced conversions (peut prendre jusqu'à 48 heures).

---

## Configuration dans l'UI Google Ads

Quelle que soit la méthode d'implémentation (GTM, gtag ou API), activez ces paramètres dans Google Ads :

| **Paramètre** | **Emplacement** | **Action** |
|-----------|------------|----------|
| **Conditions de données client** | Objectifs > Conversions > Paramètres | Revoyez et acceptez les conditions de traitement des données client |
| **Enhanced Conversions** | Objectifs > Conversions > Paramètres > Enhanced Conversions | Activez, sélectionnez la méthode d'implémentation (GTM, Tag Google ou API) |
| **Enhanced Conversions for Leads** | Objectifs > Conversions > Paramètres > Enhanced Conversions for Leads | Activez si vous utilisez EC4L pour le lead gen/SaaS (séparé des EC standard) |

---

## Diagnostics et validation

### Où vérifier

Objectifs > Conversions > Résumé > [Action de conversion] > Diagnostics

### Indicateurs de statut

| **Statut** | **Signification** | **Action** |
|-----------|------------|----------|
| Coche verte | Enhanced Conversions actives et recevant des données | Aucune : fonctionne correctement |
| "En attente de réception de données" | Configuration terminée mais aucune donnée reçue encore | Attendez jusqu'à 48 heures après l'implémentation |
| Message d'erreur | Problème de configuration détecté | Lisez les détails de l'erreur : causes courantes - mauvais format de données, champs manquants, ou mauvais mapping de variable |

### Délai initial de reporting

Après l'activation des Enhanced Conversions, attendez 48 heures avant de vérifier les diagnostics. Le système a besoin de temps pour traiter le premier lot de données hachées et tenter les correspondances.

### Suivi de l'uplift

Comparez les volumes de conversion avant et après l'implémentation des EC :

| **Type de campagne** | **Uplift EC typique** |
|-------------------|----------------------|
| Search (bas du tunnel) | 5-10% |
| Display | 10-20% |
| Vidéo / YouTube | 15-25% |
| Demand Gen | 10-20% |

---

## Enhanced Conversions for Leads (EC4L)

### Ce qu'est EC4L

Une variante des Enhanced Conversions conçue spécifiquement pour les entreprises lead gen et SaaS qui utilisent le suivi des conversions hors ligne (OCT). EC4L utilise les mêmes données first-party hachées pour faire correspondre les conversions hors ligne (leads (prospects) qualifiés, deals signés) au clic publicitaire original.

### Comment EC4L diffère des EC standard

| **Aspect** | **EC standard** | **EC4L** |
|-----------|----------------|---------|
| **Objectif** | Récupérer les conversions en ligne manquées | Faire correspondre les conversions hors ligne aux clics publicitaires en ligne |
| **Type de conversion** | Conversions web (achat, inscription) | Conversions hors ligne importées (lead qualifié, deal signé) |
| **Quand les données sont envoyées** | Au moment de la conversion en ligne | Au moment de la soumission du formulaire (en ligne), puis à nouveau lors de l'import de conversion hors ligne |
| **Mécanisme de correspondance** | Données hachées correspondues à l'utilisateur Google qui a vu/cliqué l'annonce | Données hachées de la soumission de formulaire correspondues aux données hachées de l'import hors ligne |
| **Secteurs** | Tous (ecommerce, lead gen, SaaS) | Lead gen et SaaS uniquement |

### Comment fonctionne EC4L

1. **L'utilisateur clique sur l'annonce et soumet un formulaire lead** sur votre site web
2. **À la soumission du formulaire** : le tag de conversion se déclenche avec les données utilisateur hachées (email, téléphone) via Enhanced Conversions. Google sait maintenant quel utilisateur Google a soumis le formulaire.
3. **Les informations du lead sont stockées dans le CRM** (email, téléphone et autres données de contact sont déjà capturés)
4. **Le lead convertit hors ligne** (devient lead qualifié ou deal signé des semaines plus tard)
5. **La conversion hors ligne est uploadée dans Google Ads** avec le même email/téléphone comme identifiant
6. **Google fait la correspondance** entre l'email haché de l'import hors ligne et l'email haché de la soumission de formulaire originale, attribuant la conversion hors ligne au clic publicitaire original

### EC4L comme méthode OCT

EC4L peut servir de :

- **Méthode OCT principale** : Quand vous ne pouvez pas capturer les Google Click ID (GCLID), utilisez EC4L comme seule méthode de suivi des conversions hors ligne
- **Méthode OCT de secours** (recommandé) : Utilisez le GCLID comme principal, EC4L comme fallback pour les cas où le GCLID n'a pas été capturé. Cette approche hybride maximise les taux de correspondance.

> ↪️ **Voir [Offline Conversion Tracking Reference](<Suivi - Offline Conversion Tracking.md>)** pour l'approche hybride complète et les workflows d'import OCT.

---

## Erreurs courantes

| **Erreur** | **Problème** | **Solution** |
|-------------|-------------|---------|
| Ne pas activer Enhanced Conversions dans les paramètres Google Ads | Les tags envoient des données mais Google Ads les ignore | Activez Enhanced Conversions sous Objectifs > Conversions > Paramètres |
| Ne pas accepter les conditions de données client | Les Enhanced Conversions ne peuvent pas s'activer sans acceptation légale | Revoyez et acceptez les conditions dans les paramètres de conversion |
| Utiliser la détection automatique au lieu de la configuration manuelle du data layer | La détection automatique est peu fiable et peut récupérer les mauvais champs | Utilisez la configuration manuelle avec un mapping explicite des variables de data layer |
| Envoyer des données non hachées via API | Données rejetées ou violation de la vie privée | Pré-hachez toutes les données utilisateur avec SHA-256 avant soumission API |
| Email pas en minuscules/nettoyé avant hachage | Échec de correspondance du hash : Google ne peut pas faire correspondre la conversion | Normalisez l'email (minuscules, supprimer les espaces) avant le hachage |
| S'attendre à des résultats immédiats | Le reporting EC prend du temps à se remplir | Attendez 48 heures pour les diagnostics, 1-2 semaines pour des données d'uplift significatives |
| Implémenter les EC sans corriger la configuration GACT de base | Les EC complètent le tracking existant mais ne peuvent pas corriger des fondamentaux cassés | Assurez-vous que le pixel GACT se déclenche correctement d'abord, puis ajoutez les EC |
| Ne pas envoyer les données utilisateur à la soumission du formulaire (EC4L) | Google n'a pas de hash de baseline à faire correspondre quand la conversion hors ligne est importée | Déclenchez le tag de données fournies par l'utilisateur au moment de la soumission du formulaire, pas seulement à l'import |

---

## Documents liés

| **Document** | **Relation** |
|--------------|------------------|
| [Measurement Maturity Mental Model](<../../01-strategie/reporting/Reporting - Maturité de la mesure.md>) | Les EC s'inscrivent dans l'étape "Mesurer plus" de la méthode de maturité |
| [Conversion Pixel Reference](<Suivi - Pixel de conversion.md>) | Les EC s'appuient sur une implémentation pixel GACT fonctionnelle |
| [Offline Conversion Tracking Reference](<Suivi - Offline Conversion Tracking.md>) | EC4L est une méthode clé pour l'attribution des conversions hors ligne |
| [Server-Side Tagging Reference](<Suivi - Server-Side Tagging.md>) | Le SST et les EC sont des techniques complémentaires de récupération de données |
| [Conversion Action Reference](<Suivi - Actions de conversion.md>) | Les EC s'appliquent aux actions de conversion configurées comme primary ou secondary |
| [Conversion Volume Thresholds Reference](<Suivi - Seuils de volume de conversions.md>) | Les EC aident les comptes à atteindre les seuils de volume en récupérant les conversions perdues |
