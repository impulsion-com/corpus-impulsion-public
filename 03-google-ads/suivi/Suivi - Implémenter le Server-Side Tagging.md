# Implémenter le tracking server-side

> **Plateforme :** Google Ads
> **Catégorie :** Suivi
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Phase 1️⃣: Configurer le conteneur serveur

### 1.1 Créer le conteneur serveur GTM

1. Ouvrez [tagmanager.google.com](https://tagmanager.google.com)
2. Dans votre compte existant, cliquez sur **Create Container**
3. Nommez-le : `[domain] - Server`
4. Sélectionnez **Server** comme plateforme cible
5. Cliquez sur **Create**

### 1.2 Configurer l'hébergement

**Méthode Taggrs.io (recommandée) :**

1. Créez un compte Taggrs.io sur [taggrs.io](https://taggrs.io)
2. Ajoutez un nouveau conteneur serveur
3. Saisissez votre GTM Server Container ID (commence par `GTM-`)
4. Sélectionnez votre région d'hébergement préférée (la plus proche de votre audience principale)
5. Taggrs provisionne le serveur automatiquement

**Méthode Stape.io (recommandée) :**

1. Créez un compte Stape.io sur [stape.io](https://stape.io)
2. Ajoutez un nouveau conteneur serveur
3. Saisissez votre GTM Server Container ID (commence par `GTM-`)
4. Sélectionnez votre région d'hébergement préférée (la plus proche de votre audience principale)
5. Stape provisionne le serveur automatiquement

**Méthode Google Cloud Platform :**

1. Ouvrez [cloud.google.com](https://cloud.google.com)
2. Créez un nouveau projet ou sélectionnez-en un existant
3. Dans GTM, allez sur votre conteneur serveur et cliquez sur **Provision tagging server**
4. Suivez l'assistant pour déployer sur Google Cloud Run (ou App Engine)
5. Notez l'URL de serveur générée

### 1.3 Configurer un sous-domaine personnalisé

1. Choisissez un sous-domaine : `ss.yourdomain.com` ou `data.yourdomain.com`
2. Chez votre fournisseur DNS, créez un enregistrement CNAME pointant le sous-domaine vers :

| Méthode d'hébergement | Cible CNAME |
| --- | --- |
| Taggrs.io | L'URL d'endpoint fournie par Taggrs |
| Stape.io | L'URL d'endpoint fournie par Stape |
| Google Cloud | L'URL du service Cloud Run |
| Serveur personnalisé | Le domaine de votre serveur |

3. Configurez le SSL pour le sous-domaine (Taggrs et Stape le gèrent automatiquement, GCP nécessite une configuration manuelle)

### 1.4 Vérifier le chargement du conteneur serveur

1. Ouvrez l'URL du conteneur serveur dans un navigateur : `https://ss.yourdomain.com`
2. Confirmez qu'une réponse est renvoyée (une page blanche ou une réponse de health check est attendue)
3. Dans GTM, ouvrez le conteneur serveur et cliquez sur **Preview** pour confirmer que le debugger se connecte

---

## Phase 2️⃣: Configurer le routage web-to-server

### 2.1 Mettre à jour Google Tag dans le conteneur web

1. Ouvrez votre conteneur GTM **web**
2. Naviguez vers votre Google Tag (le tag qui se déclenche sur All Pages)
3. Dans la configuration du tag, développez **Configuration Settings**
4. Ajoutez un paramètre : `server_container_url` avec la valeur `https://ss.yourdomain.com`
5. Enregistrez le tag

### 2.2 Mettre à jour l'URL de transport

1. Dans la configuration du Google Tag, définissez l'URL de transport sur le sous-domaine de votre conteneur serveur
2. Cela achemine toutes les requêtes de mesure via votre serveur first-party au lieu d'aller directement à Google

### 2.3 Vérifier le routage dans le conteneur web

1. Activez le mode Preview de GTM sur le conteneur web
2. Chargez votre site web
3. Vérifiez dans l'onglet réseau que les requêtes vont vers `ss.yourdomain.com` au lieu de `www.googletagmanager.com` ou `www.google-analytics.com`

---

## Phase 3️⃣: Configurer les tags côté serveur

### 3.1 Créer le client GA4 (si vous utilisez GA4)

1. Ouvrez votre conteneur GTM **server**
2. Naviguez vers **Clients**
3. Vérifiez que le client **GA4** est présent (il est créé par défaut)
4. Ce client reçoit les requêtes GA4 entrantes et les analyse pour les tags côté serveur

### 3.2 Créer le tag Google Ads Conversion Tracking

1. Dans le conteneur serveur, créez un nouveau tag
2. Sélectionnez le type de tag **Google Ads Conversion Tracking**
3. Configurez :

| Champ | Valeur |
| --- | --- |
| Conversion ID | Votre Google Ads Conversion ID |
| Conversion Label | Le label de cette action de conversion |
| Conversion Value | Variable de données d'évènement pour la valeur |
| Transaction ID | Variable de données d'évènement pour transaction_id |
| Currency Code | Variable de données d'évènement pour la devise |

4. Réglez le déclencheur pour qu'il se déclenche sur l'évènement approprié (ex : évènement `purchase` depuis le client GA4)

### 3.3 Créer le tag GA4 (si vous utilisez GA4)

1. Créez un nouveau tag dans le conteneur serveur
2. Sélectionnez le type de tag **Google Analytics: GA4**
3. Configurez-le avec votre GA4 Measurement ID
4. Réglez le déclencheur pour qu'il se déclenche sur tous les évènements du client GA4

### 3.4 Répliquer pour toutes les actions de conversion

Répétez l'étape 3.2 pour chaque action de conversion Google Ads. Chaque action a besoin de son propre tag côté serveur avec le bon Conversion Label.

---

## Phase 4️⃣ : Valider et lancer

### 4.1 Débugger avec le Preview du conteneur serveur

1. Dans GTM, cliquez sur **Preview** sur le conteneur serveur
2. Ouvrez votre site web et déclenchez une conversion de test
3. Dans le debugger du conteneur serveur, vérifiez :

| Vérification | Résultat attendu |
| --- | --- |
| Le client revendique la requête | Le client GA4 affiche « Claimed » |
| Le tag Google Ads se déclenche | Le tag apparaît sous « Tags Fired » |
| Données de conversion correctes | La valeur, le Transaction ID et la devise passent tous |
| Réponse envoyée à Google Ads | Requête HTTP sortante vers googleads.g.doubleclick.net |

### 4.2 Comparer le nombre de conversions

1. Comptez 48 à 72 heures de tracking (suivi des conversions/évènements) parallèle (web et serveur)
2. Comparez les nombres de conversions dans Google Ads :

| Métrique | Source | Action en cas d'écart |
| --- | --- | --- |
| Conversions totales | Rapport Google Ads | Vérifiez le déclenchement du tag du conteneur serveur |
| Valeur de conversion | Rapport Google Ads | Vérifiez le mapping de la variable de valeur |
| Conversions backend | CRM ou plateforme e-commerce | Ajustez en fonction de la fenêtre d'attribution |

### 4.3 Publier les deux conteneurs

1. Publiez le conteneur **server** avec un nom de version descriptif
2. Publiez le conteneur **web** avec les mises à jour de routage
3. Surveillez pendant 7 jours pour confirmer un flux de données stable

### 4.4 Checklist finale

- [ ] Le conteneur serveur est en production sur un sous-domaine personnalisé avec SSL
- [ ] Le conteneur web achemine les requêtes vers le conteneur serveur
- [ ] Tous les tags de conversion Google Ads se déclenchent correctement dans le conteneur serveur
- [ ] Le tag GA4 transmet les données correctement (le cas échéant)
- [ ] Les nombres de conversions concordent entre le côté client et le côté serveur
- [ ] La vitesse de chargement des pages s'est améliorée (vérifiez avec PageSpeed Insights)
- [ ] Les deux conteneurs sont publiés

---

### Validation et critères de complétion

Cette SOP est terminée quand :

- [ ] Conteneur serveur déployé et accessible sur un sous-domaine personnalisé
- [ ] Le conteneur web achemine les données via le conteneur serveur
- [ ] Tous les tags de conversion se déclenchent correctement dans le conteneur serveur
- [ ] 48 à 72 heures de tracking parallèle vérifié
- [ ] Concordance des données de conversion confirmée

---

### Passerelle de sortie

Une fois que le SST est en production :

| Délai | Action |
| --- | --- |
| Immédiatement | Implémentez Enhanced Conversions via le conteneur serveur si ce n'est pas fait |
| Semaine 1 | Surveillez les améliorations de vitesse des pages |
| Semaine 2 | Comparez les volumes de conversion avant et après le SST |
| En continu | Vérifiez la santé du conteneur serveur chaque mois |

**En cas de problème :**

| Problème | Rediriger vers |
| --- | --- |
| Le conteneur serveur ne reçoit pas de données | Vérifiez l'URL de routage du conteneur web et les enregistrements DNS |
| Les tags ne se déclenchent pas dans le conteneur serveur | Vérifiez la configuration du Client et la correspondance des évènements |
| Les nombres de conversions chutent après le SST | Vérifiez que les déclencheurs des tags correspondent aux bons évènements |
| Certificat SSL expiré | Renouvelez-le via le fournisseur d'hébergement |

---

### FAQ

**Q : Le server-side tagging remplace-t-il le tracking côté client ?**

R : Non. Le SST fonctionne en parallèle de votre conteneur web. Le conteneur web collecte les données dans le navigateur et les achemine vers le conteneur serveur, qui les transmet ensuite aux plateformes. Les deux conteneurs fonctionnent ensemble.

**Q : Combien coûte le server-side tagging ?**

R : Taggrs.io et Stape.io démarrent autour de 20 €/mois pour les sites à faible trafic. Les coûts de Google Cloud Platform varient selon le volume de requêtes. Les serveurs personnalisés dépendent de votre infrastructure. Pour la plupart des annonceurs, un fournisseur middleware comme Taggrs.io ou Stape.io est l'option la plus rentable.

**Q : Le SST comblera-t-il toutes mes lacunes de tracking ?**

R : Le SST traite les problèmes de bloqueurs de publicités, les restrictions sur les cookies et les limitations des navigateurs. Il ne comble pas les lacunes liées au consentement (vous avez toujours besoin du Consent Mode pour cela) ni les lacunes d'attribution entre canaux.

---

### Référence rapide : bibliothèque support

| Document | Type | Utilisé dans |
| --- | --- | --- |
| [Measurement Maturity Mental Model](<../../01-strategie/reporting/Reporting - Maturité de la mesure.md>) | Modèle mental | Contexte |
| [Conversion Action Reference](<Suivi - Actions de conversion.md>) | Référence | Phase 3 |

---

### Procédures liées

| SOP | Relation |
| --- | --- |
| [SOP - Configurer le suivi des conversions Google Ads](<Suivi - Configurer le suivi des conversions Google Ads.md>) | Amont (le GACT doit exister d'abord) |
| [SOP - Implementer les conversions ameliorees](<Suivi - Implémenter les conversions améliorées.md>) | Parallèle (peut se faire via le conteneur serveur) |

---

### Erreurs fréquentes

| Erreur | Pourquoi ça arrive | Comment l'éviter |
| --- | --- | --- |
| DNS non propagé | Enregistrement CNAME mal configuré | Vérifiez la propagation DNS avant de continuer (comptez 24 heures) |
| Problèmes de certificat SSL | Étapes manquées lors de la configuration manuelle sur GCP | Utilisez Taggrs.io ou Stape.io pour le SSL automatique, ou vérifiez que le certificat couvre le sous-domaine |
| Double comptage des conversions | Les tags web et serveur se déclenchent pour la même action | Supprimez les tags de conversion du conteneur web une fois les tags serveur vérifiés |
| Conteneur serveur hors service | Hébergement non dimensionné pour le trafic | Surveillez la santé du serveur, mettez en place des alertes |
| Temps de réponse lents | Serveur hébergé dans la mauvaise région | Choisissez la région d'hébergement la plus proche de l'audience principale |
| Évènements non revendiqués par le client | Mauvais type de client ou format d'évènement | Vérifiez que le client GA4 est activé et que le conteneur web envoie au format GA4 |
