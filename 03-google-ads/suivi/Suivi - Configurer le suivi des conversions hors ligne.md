# Configurer le suivi des conversions hors ligne

> **Plateforme :** Google Ads
> **Catégorie :** Suivi
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Phase 1️⃣: Créer les actions de conversion d'import

### 1.1 Créer les actions de conversion hors ligne

Pour chaque étape de votre carte de tunnel :

1. Naviguez vers **Goals > Conversions > Summary**
2. Cliquez sur **New conversion action**
3. Sélectionnez **Import**
4. Sélectionnez **Other data sources or CRMs > Track conversions from clicks**

### 1.2 Configurer chaque action de conversion

| Paramètre | Configuration |
| --- | --- |
| Goal category | Sélectionnez la plus spécifique : Qualified Lead, Converted Lead ou autre |
| Conversion name | Utilisez la convention de nommage : `[Initials] - OCT - [Stage Name]` |
| Value | Sélectionnez « Use different values for each conversion » |
| Count | Réglez sur « One » (un lead (prospect) ne peut se qualifier qu'une seule fois par étape) |
| Click-through window | Alignez sur votre cycle de vente (30 à 90 jours) |
| Include in Conversions | Définissez comme Primary l'étape sur laquelle vous voulez que les Stratégies d'enchères intelligentes optimisent |

### 1.3 Définir principal et secondaire

| Action de conversion | Classification | Pourquoi |
| --- | --- | --- |
| Étape la plus importante (deal signé ou paiement) | Primary | Les Stratégies d'enchères intelligentes optimisent là-dessus |
| Étapes intermédiaires (MQL, SQL) | Secondary | Reporting et analyse uniquement |
| Soumission de formulaire web (GACT existant) | Secondary (une fois l'OCT stable) | Solution de secours, insights sur la qualité du trafic |

> ⚠️ **Ne basculez pas votre soumission de formulaire en secondaire tant que l'OCT n'est pas stable et n'importe pas de façon fiable depuis au moins 30 jours :** Gardez les deux en primary pendant la transition, puis basculez la conversion web en secondary une fois que les données OCT s'avèrent fiables.

---

## Phase 2A: Configurer la capture du GCLID

### 2A.1 Ajouter des champs cachés aux formulaires

Briefez votre développeur pour ajouter des champs de formulaire cachés qui capturent :

| Champ caché | Variable | Source |
| --- | --- | --- |
| GCLID | `gclid` | Paramètre d'URL ajouté par Google Ads |
| GBRAID | `gbraid` | Identifiant de clic cross-domain |
| WBRAID | `wbraid` | Identifiant de clic web-to-app |

Le développeur doit :

1. Ajouter des champs input cachés à chaque formulaire de capture de lead
2. Renseigner ces champs à partir des paramètres d'URL (au chargement de la page ou à la soumission du formulaire)
3. Stocker les valeurs avec la fiche du lead dans le CRM

### 2A.2 Stocker le GCLID dans le CRM

1. Créez des champs personnalisés dans votre CRM pour GCLID, GBRAID et WBRAID
2. Mappez les champs de formulaire cachés aux champs du CRM dans votre gestionnaire de formulaire
3. Vérifiez que le GCLID se renseigne sur la fiche du lead après une soumission de test depuis un clic Google Ads

### 2A.3 Stocker l'état du consentement

Si vous opérez dans l'UE/EEE :

1. Ajoutez un champ caché pour capturer l'état du consentement de l'utilisateur au moment de la soumission du formulaire
2. Stockez-le comme un champ dans le CRM (signaux de consentement `ad_user_data` et `ad_personalization`)
3. Incluez les données de consentement dans votre modèle d'upload

### 2A.4 Vérifier la capture du GCLID

1. Cliquez sur une annonce Google Ads (ou ajoutez `?gclid=test123` à l'URL de votre landing page)
2. Soumettez un formulaire de test
3. Vérifiez la fiche du lead dans le CRM : le champ GCLID doit contenir la valeur de test
4. S'il est vide : débuggez le JavaScript du champ caché avec votre développeur

---

## Phase 2B: Configurer Enhanced Conversions for Leads (EC4L)

### 2B.1 Activer EC4L dans Google Ads

1. Naviguez vers **Goals > Settings**
2. Trouvez **Enhanced conversions for leads**
3. Cliquez sur **Turn on**
4. Sélectionnez votre méthode d'implémentation (Google Tag Manager recommandé)
5. Acceptez les conditions relatives aux données client

### 2B.2 Configurer l'évènement User-Provided Data dans GTM

1. Dans GTM, créez une Data Layer Variable pour l'adresse email de l'utilisateur sur la page de soumission du formulaire
2. Créez une variable **User-Provided Data** :
   - Sélectionnez **Manual configuration**
   - Mappez le champ email à votre variable de data layer
3. Reliez cette variable User-Provided Data à votre tag de suivi des conversions web existant (le tag GACT pour la soumission de formulaire)

### 2B.3 Vérifier la capture des données EC4L

1. Entrez dans le mode Preview de GTM
2. Soumettez un formulaire de test
3. Vérifiez que la variable User-Provided Data capture l'email
4. Vérifiez que le tag de conversion inclut les données de conversion améliorée
5. Publiez le conteneur GTM

---

## Phase 3️⃣: Configurer le modèle d'import

### 3.1 Créer le modèle d'upload

Créez un Google Sheet ou un CSV avec les colonnes requises :

**Colonnes de la méthode GCLID :**

| Colonne | Description | Exemple |
| --- | --- | --- |
| Google Click ID | GCLID issu du CRM | `CjwKCAjw...` |
| Conversion Name | Correspond exactement au nom de l'action Google Ads | `BM - OCT - Closed Won` |
| Conversion Time | Horodatage de l'évènement hors ligne | `2026-01-15 14:30:00` |
| Conversion Value | Chiffre d'affaires ou valeur calculée | `5000` |
| Conversion Currency | Code devise ISO | `EUR` |

**Colonnes de la méthode EC4L :**

| Colonne | Description | Exemple |
| --- | --- | --- |
| Email | Email haché ou en clair | `user@example.com` |
| Conversion Name | Correspond exactement au nom de l'action Google Ads | `BM - OCT - Closed Won` |
| Conversion Time | Horodatage de l'évènement hors ligne | `2026-01-15 14:30:00` |
| Conversion Value | Chiffre d'affaires ou valeur calculée | `5000` |
| Conversion Currency | Code devise ISO | `EUR` |

**Méthode hybride :** Incluez à la fois les colonnes Google Click ID et Email. Google utilise le GCLID quand il est disponible, et se rabat sur la correspondance par email.

### 3.2 Configurer les imports automatisés

Les uploads manuels conviennent pour les tests mais ne passent pas à l'échelle. Mettez en place de l'automatisation :

| Outil | Méthode | Fréquence |
| --- | --- | --- |
| Zapier / Make | Déclenchement au changement d'étape dans le CRM, upload vers Google Ads | Temps réel ou quotidien |
| Google Ads API | Intégration API directe depuis le CRM | Temps réel |
| Upload programmé Google Sheets | Import programmé depuis un Google Sheet via l'interface Google Ads | Quotidien |

**Exemple de workflow Zapier/Make :**

1. Déclencheur : l'étape du deal dans le CRM passe à « Closed Won »
2. Action : Formatez les données de conversion (GCLID, nom, heure, valeur, devise)
3. Action : Uploadez vers les Offline Conversions de Google Ads

### 3.3 Configurer l'upload programmé Google Ads (le plus simple)

1. Naviguez vers **Goals > Conversions > Uploads**
2. Cliquez sur **Schedule uploads**
3. Sélectionnez **Google Sheets** comme source
4. Connectez votre Google Sheet
5. Réglez la fréquence sur **Daily**
6. Mappez les colonnes aux champs requis

---

## Phase 4️⃣: Planifier et valider

### 4.1 Lancer le premier upload manuel

1. Exportez 5 à 10 vraies conversions depuis votre CRM (avec GCLID et/ou email)
2. Formatez-les selon le modèle d'upload
3. Naviguez vers **Goals > Conversions > Uploads**
4. Cliquez sur **Upload** et sélectionnez votre fichier
5. Vérifiez l'aperçu de l'upload pour repérer les erreurs

### 4.2 Vérifier les résultats de l'upload

| Statut | Signification | Action |
| --- | --- | --- |
| Uploaded successfully | Données acceptées par Google Ads | Continuez vers la validation |
| Partial success | Certaines lignes comportaient des erreurs | Corrigez les erreurs des lignes en échec, ré-uploadez |
| Failed | Problèmes de format ou de données | Vérifiez les noms de colonnes, le format de date, et que les noms de conversion correspondent exactement |

### 4.3 Vérifier les conversions dans les rapports

1. Comptez 24 à 48 heures pour que les conversions importées apparaissent
2. Naviguez vers les rapports de campagne
3. Segmentez par **Conversion action** pour retrouver vos actions OCT
4. Comparez les conversions importées aux données du CRM pour la même période

### 4.4 Activer le planning automatisé

Une fois les uploads manuels vérifiés :

1. Activez votre automatisation Zapier/Make ou votre upload programmé Google Sheets
2. Surveillez pendant 7 jours pour confirmer que les uploads automatisés s'exécutent correctement
3. Mettez en place des alertes pour les échecs d'upload

### 4.5 Checklist finale

- [ ] Actions de conversion d'import créées avec les bonnes goal categories
- [ ] GCLID et/ou email capturés et stockés dans le CRM
- [ ] Modèle d'upload correctement formaté
- [ ] Premier upload manuel réalisé avec succès
- [ ] Les conversions apparaissent dans les rapports Google Ads sous 48 heures
- [ ] Planning d'import automatisé actif
- [ ] Classification primary/secondary correctement définie

---

### Validation et critères de complétion

Cette SOP est terminée quand :

- [ ] Au moins une action de conversion hors ligne est créée et définie comme primary
- [ ] La capture du GCLID et/ou de l'email est vérifiée dans le CRM
- [ ] Premier import réussi réalisé et visible dans Google Ads
- [ ] Le planning d'import automatisé tourne de façon fiable depuis 7 jours ou plus
- [ ] Les données de conversion concordent entre le CRM et les rapports Google Ads

---

### Passerelle de sortie

Une fois que l'OCT est en production et importe :

| Délai | Action |
| --- | --- |
| Semaine 1-2 | Surveillez la fiabilité des imports, corrigez les uploads en échec |
| Semaine 2-4 | Comparez la performance des Stratégies d'enchères intelligentes sur l'OCT vs les conversions web |
| Mois 2 | Basculez la soumission de formulaire web en secondary, l'OCT comme seule primary |
| En continu | Mettez en place des Conversion Adjustments pour réévaluer les valeurs des leads à mesure qu'ils progressent |

**En cas de problème :**

| Problème | Rediriger vers |
| --- | --- |
| GCLID non capturé | Débuggez le JavaScript du champ caché avec le développeur |
| Erreurs de format d'upload | Vérifiez que les noms de colonnes correspondent exactement, contrôlez le format de date |
| Faible taux de correspondance (EC4L) | Vérifiez que l'email est envoyé correctement, contrôlez les diagnostics Enhanced Conversions |
| Conversions qui n'apparaissent pas | Vérifiez la fenêtre de conversion (le clic doit être dans la fenêtre), vérifiez que le nom de conversion correspond exactement |

---

### FAQ

**Q : À quelle fréquence dois-je uploader les conversions hors ligne ?**

R : Le quotidien est recommandé. Des uploads plus fréquents donnent un feedback plus rapide aux Stratégies d'enchères intelligentes. Si vous utilisez Zapier/Make, des uploads en temps réel au changement d'étape sont idéaux.

**Q : Que faire si mon cycle de vente dépasse 90 jours ?**

R : La fenêtre de conversion post-clic maximale est de 90 jours. Si votre cycle de vente la dépasse systématiquement, envisagez d'importer une étape de tunnel plus précoce (MQL ou SQL) qui tombe dans la fenêtre de 90 jours comme conversion primary, avec le deal signé en secondary pour le reporting.

**Q : Dois-je importer toutes les étapes du tunnel ou seulement la conversion finale ?**

R : Commencez par l'étape la plus proche du chiffre d'affaires (deal signé ou paiement). Une fois stable, ajoutez les étapes intermédiaires comme conversions secondary pour le reporting et l'analyse de la qualité du trafic. Ne définissez pas plusieurs étapes OCT en primary simultanément : cela compte les conversions en double pour les Stratégies d'enchères intelligentes.

**Q : Quelle valeur attribuer si je ne connais pas encore la valeur réelle du deal ?**

R : Utilisez des valeurs proxy calculées à partir de données historiques. Multipliez votre valeur moyenne de deal par le taux de conversion de cette étape jusqu'à la signature. Exemple : si le deal moyen est de 10 000 EUR et que le taux de passage SQL-à-signature est de 25 %, attribuez au SQL une valeur de 2 500 EUR.

**Q : Puis-je utiliser l'OCT en parallèle du ProfitMetrics Conversion Booster ?**

R : Le ProfitMetrics Conversion Booster est conçu pour l'e-commerce. Pour le Lead Gen et le SaaS, l'OCT est la solution appropriée pour importer les données de conversion hors ligne. Ils servent des verticales différentes et n'entrent pas en conflit.

---

### Référence rapide : bibliothèque support

| Document | Type | Utilisé dans |
| --- | --- | --- |
| [Conversion Action Reference](<Suivi - Actions de conversion.md>) | Référence | Phase 1 |
| [Measurement Maturity Mental Model](<../../01-strategie/reporting/Reporting - Maturité de la mesure.md>) | Modèle mental | Contexte |
| [Conversion Volume Thresholds Reference](<Suivi - Seuils de volume de conversions.md>) | Référence | Phase 4 |

---

### Procédures liées

| SOP | Relation |
| --- | --- |
| [SOP - Configurer le suivi des conversions Google Ads](<Suivi - Configurer le suivi des conversions Google Ads.md>) | Amont (le GACT doit exister d'abord) |
| [SOP - Implementer les conversions ameliorees](<Suivi - Implémenter les conversions améliorées.md>) | Lié (fonctionnalité différente, EC web vs EC4L) |
| [SOP - Implementer le tracking server-side](<Suivi - Implémenter le Server-Side Tagging.md>) | Parallèle (peut router les données OCT via le serveur) |

---

### Erreurs fréquentes

| Erreur | Pourquoi ça arrive | Comment l'éviter |
| --- | --- | --- |
| GCLID non stocké dans le CRM | Script de champ caché cassé ou gestionnaire de formulaire non mappé | Testez avec ?gclid=test123, vérifiez la fiche CRM |
| Nom de conversion non concordant | Le nom du modèle d'upload ne correspond pas exactement à Google Ads | Copiez-collez le nom de l'action de conversion, ne le retapez pas |
| Format de date rejeté | Mauvais format d'horodatage dans le fichier d'upload | Utilisez le format : YYYY-MM-DD HH:MM:SS avec fuseau horaire |
| Conversions hors fenêtre d'attribution | L'upload a eu lieu plus de 90 jours après le clic | Importez les conversions dans la fenêtre post-clic |
| Plusieurs étapes OCT définies en primary | Toutes les étapes du tunnel marquées primary | Une seule étape doit être primary pour les Stratégies d'enchères intelligentes |
| Conversion web basculée en secondary trop tôt | OCT pas encore stable | Gardez la conversion web en primary pendant 30 jours ou plus durant la transition |
| Faible taux de correspondance EC4L | Problèmes de formatage de l'email ou faible couverture de comptes Google | Vérifiez que l'email est en texte brut, sans espace, envisagez la méthode hybride |
