# Implémenter les conversions améliorées

> **Plateforme :** Google Ads
> **Catégorie :** Suivi
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Phase 1️⃣: Préparer le data layer (travail développeur)

### 1.1 Identifier les données utilisateur disponibles

Déterminez quelles données first-party sont accessibles sur vos pages de conversion :

| Type de données | Priorité | Où les trouver |
| --- | --- | --- |
| Adresse email | Requis | Données de soumission de formulaire, confirmation de commande, création de compte |
| Numéro de téléphone | Recommandé | Champs de formulaire, données de paiement, profil de compte |
| Prénom, nom | Optionnel | Données de paiement, champs de formulaire |
| Adresse postale | Optionnel | Données de paiement / de livraison |

> 💡 **L'adresse email est la variable la plus importante :** Combinée au numéro de téléphone, Google dispose de suffisamment de données pour matcher les conversions. Dans la plupart des cas, vous n'avez pas besoin d'envoyer l'adresse postale ou le nom.

### 1.2 Briefer le développeur

Envoyez au développeur un brief contenant :

1. **Quelles pages/quels évènements** ont besoin des données utilisateur dans le data layer (ex : évènement purchase sur la page de confirmation de paiement, évènement form_submit sur la page de remerciement)
2. **Quel évènement de data layer** existe déjà (s'il y en a un en place, enrichissez-le avec les données utilisateur)
3. **Quelles variables inclure :** email (requis), phone_number (recommandé)
4. **Format du data layer :** Le développeur doit pousser les données fournies par l'utilisateur au sein de l'évènement de conversion existant, ou via un push de data layer distinct avant que le tag de conversion ne se déclenche

### 1.3 Vérifier la sortie du data layer

1. Ouvrez le mode Preview de GTM
2. Naviguez vers la page de conversion et déclenchez une conversion de test
3. Cliquez sur l'évènement de conversion dans le debugger GTM
4. Naviguez vers **Data Layer** et vérifiez :

| Vérification | Résultat attendu |
| --- | --- |
| Variable email présente | Affiche la valeur email hachée ou en clair |
| Variable téléphone présente | Affiche la valeur du numéro de téléphone (si incluse) |
| L'évènement se déclenche avant le tag de conversion | Les données sont disponibles au moment où le tag en a besoin |

---

## Phase 2A: Configurer dans GTM (recommandé)

### 2A.1 Créer les variables de data layer

Pour chaque champ de données utilisateur, créez une Data Layer Variable dans GTM :

1. Naviguez vers **Variables > User-Defined Variables > New**
2. Sélectionnez **Data Layer Variable**
3. Définissez le nom de la variable pour correspondre à votre clé de data layer (ex : `user_email`, `fields.email.value`)
4. Nommez-la de manière descriptive : `dlv - User Email`, `dlv - User Phone`

### 2A.2 Créer la variable User-Provided Data

1. Naviguez vers **Variables > User-Defined Variables > New**
2. Sélectionnez le type de variable **User-Provided Data**
3. Cliquez sur **Edit** dans la configuration de la variable
4. Sélectionnez **Manual configuration**
5. Mappez les champs :

| Champ | Valeur |
| --- | --- |
| Email | Sélectionnez votre variable `dlv - User Email` |
| Phone | Sélectionnez votre variable `dlv - User Phone` |

6. Enregistrez la variable sous le nom : `upd - User Provided Data`

### 2A.3 Relier aux tags de suivi des conversions

Pour chaque tag Google Ads Conversion Tracking :

1. Ouvrez la configuration du tag
2. Faites défiler jusqu'à **Include user-provided data from your website**
3. Sélectionnez votre variable `upd - User Provided Data`
4. Enregistrez le tag

### 2A.4 Débugger la configuration

1. Entrez dans le mode Preview de GTM
2. Déclenchez une conversion de test
3. Cliquez sur l'évènement de conversion dans le debugger
4. Ouvrez le tag Google Ads Conversion Tracking
5. Vérifiez que les valeurs Enhanced Conversions apparaissent dans les détails du tag (email et numéro de téléphone renseignés)
6. Publiez le conteneur GTM

---

## Phase 2B: Configurer avec gtag (alternative)

### 2B.1 Ajouter le snippet enhanced_conversions

Sous votre snippet d'évènement de conversion existant, ajoutez le snippet de données fournies par l'utilisateur. Le snippet envoie les variables email et numéro de téléphone en même temps que l'évènement de conversion.

Fournissez au développeur :

1. Le modèle de snippet pour les données enhanced_conversions
2. Les noms de variables pour l'email et le téléphone correspondant à son implémentation
3. L'instruction de placer le snippet sous l'évènement de conversion sur chaque page de conversion

### 2B.2 Mettre à jour le Google Tag

Ajoutez `allow_enhanced_conversions: true` à la configuration de votre Google Tag (gtag.js) sur toutes les pages où les snippets de conversion se déclenchent.

### 2B.3 Transmission au développeur

Envoyez au développeur :

- Le modèle de snippet Enhanced Conversions
- Le mapping des variables pour l'email et le téléphone
- Les instructions indiquant quelles pages nécessitent la mise à jour
- Les instructions de test (comment vérifier dans Tag Assistant)

---

## Phase 3️⃣: Activer dans Google Ads

### 3.1 Activer Enhanced Conversions

1. Naviguez vers **Goals > Settings** (ou **Measurement > Conversions > Settings**)
2. Trouvez **Enhanced conversions**
3. Cliquez sur **Turn on**
4. Sélectionnez votre méthode d'implémentation :

| Méthode | Sélectionner |
| --- | --- |
| Implémentation GTM | Google Tag Manager |
| Implémentation gtag | Google tag |

5. Enregistrez les modifications

### 3.2 Vérifier le paramètre niveau compte

1. Retournez dans **Goals > Settings**
2. Confirmez qu'Enhanced Conversions est affiché comme **On**
3. Confirmez que la bonne méthode d'implémentation est sélectionnée

---

## Phase 4️⃣ : Valider

### 4.1 Vérifier les diagnostics de l'action de conversion

1. Naviguez vers **Goals > Conversions > Summary**
2. Cliquez sur une action de conversion pour laquelle Enhanced Conversions est configuré
3. Cliquez sur **Diagnostics**
4. Vérifiez le statut d'Enhanced Conversions :

| Statut | Signification | Action |
| --- | --- | --- |
| Coche verte | Fonctionne correctement | Aucune action nécessaire |
| En attente de données | Implémenté récemment | Attendez 48 à 72 heures |
| Erreur / indicateur rouge | Problème de configuration | Consultez le message d'erreur, débuggez la configuration |

### 4.2 Attendre les données

Comptez 48 à 72 heures avant qu'Enhanced Conversions ne commence à enregistrer. Google a besoin de temps pour matcher les données utilisateur hachées avec sa base de comptes.

### 4.3 Surveiller l'uplift

Après 7 à 14 jours, comparez les volumes de conversion avant et après l'implémentation :

| Métrique | Avant EC | Après EC | Uplift |
| --- | --- | --- | --- |
| Conversions totales | [Relever] | [Relever] | [Calculer %] |
| Conversions haut du tunnel | [Relever] | [Relever] | [Calculer %] |

> 💡 **Attendez-vous à l'uplift le plus important sur les types de campagnes du haut et du milieu du tunnel :** Les campagnes Display, YouTube et Demand Gen en profitent le plus, car Enhanced Conversions boucle l'attribution pour les utilisateurs qui ont vu (sans cliquer) une annonce puis ont converti plus tard.

### 4.4 Checklist finale

- [ ] Le data layer pousse l'email (et éventuellement le téléphone) sur les évènements de conversion
- [ ] Les variables GTM sont correctement mappées aux clés du data layer
- [ ] La variable User-Provided Data est reliée à tous les tags de suivi des conversions
- [ ] Enhanced Conversions est activé dans les paramètres du compte Google Ads
- [ ] Les diagnostics affichent une coche verte sur les actions de conversion
- [ ] Uplift observé dans les 14 jours

---

### Validation et critères de complétion

Cette SOP est terminée quand :

- [ ] Enhanced Conversions activé dans Google Ads
- [ ] Tous les tags de suivi des conversions envoient les données fournies par l'utilisateur
- [ ] Les diagnostics affichent une coche verte (ou le statut « recording data »)
- [ ] Conteneur GTM publié avec la configuration Enhanced Conversions
- [ ] Le délai d'attente de 48 à 72 heures est écoulé avec enregistrement des données

---

### Passerelle de sortie

Une fois qu'Enhanced Conversions est en production :

| Délai | Action |
| --- | --- |
| 48-72 heures | Vérifiez que les diagnostics affichent une coche verte |
| Semaine 1 | Surveillez l'uplift du volume de conversions |
| Semaine 2 | Comparez l'attribution des campagnes du haut du tunnel |
| Si Lead Gen/SaaS | Configurez Enhanced Conversions for Leads (EC4L) via [SOP - Configurer le suivi des conversions hors ligne](<Suivi - Configurer le suivi des conversions hors ligne.md>) |

**En cas de problème :**

| Problème | Rediriger vers |
| --- | --- |
| Les diagnostics affichent une erreur | Vérifiez le mapping des variables du data layer, vérifiez le format de l'email |
| Aucun uplift après 14 jours | Vérifiez que les données sont bien envoyées (re-débuggez dans le mode Preview de GTM) |
| Format d'email rejeté | Assurez-vous que l'email est en texte brut (Google le hache automatiquement), sans espace |

---

### FAQ

**Q : Google voit-il les adresses email réelles ?**

R : Non. Enhanced Conversions hache les données utilisateur (SHA-256) avant de les envoyer à Google. Google compare les données hachées à sa propre base d'utilisateurs hachée. Aucune donnée personnelle en clair n'est stockée par Google via Enhanced Conversions.

**Q : Ai-je besoin du numéro de téléphone, ou l'email suffit-il ?**

R : L'email seul suffit pour la plupart des implémentations. Ajouter le numéro de téléphone augmente les taux de correspondance, mais reste optionnel. Ne retardez pas l'implémentation en attendant d'avoir accès au numéro de téléphone.

**Q : Quel uplift dois-je attendre ?**

R : L'uplift varie selon le type de campagne et l'audience. Attendez-vous à 15-25 % de conversions attribuées en plus pour les campagnes du haut du tunnel (Display, Video, Demand Gen). Les campagnes Search du bas du tunnel voient des uplifts plus faibles (5-10 %), puisque l'attribution basée sur le clic capte déjà la plupart des conversions.

**Q : Enhanced Conversions est-il identique à Enhanced Conversions for Leads (EC4L) ?**

R : Non. Enhanced Conversions améliore l'attribution des conversions web en matchant les données utilisateur au moment de la conversion. EC4L fait partie d'Offline Conversion Tracking : il matche les données hachées au moment de la capture du lead (prospect), puis importe les conversions en aval (leads qualifiés, deals signés). EC4L est traité dans [SOP - Configurer le suivi des conversions hors ligne](<Suivi - Configurer le suivi des conversions hors ligne.md>).

---

### Référence rapide : bibliothèque support

| Document | Type | Utilisé dans |
| --- | --- | --- |
| [Conversion Action Reference](<Suivi - Actions de conversion.md>) | Référence | Phase 1, Phase 3 |
| [Measurement Maturity Mental Model](<../../01-strategie/reporting/Reporting - Maturité de la mesure.md>) | Modèle mental | Contexte |

---

### Procédures liées

| SOP | Relation |
| --- | --- |
| [SOP - Configurer le suivi des conversions Google Ads](<Suivi - Configurer le suivi des conversions Google Ads.md>) | Amont (le GACT doit exister d'abord) |
| [SOP - Implementer le tracking server-side](<Suivi - Implémenter le Server-Side Tagging.md>) | Parallèle (peut aussi envoyer les données EC via le serveur) |
| [SOP - Configurer le suivi des conversions hors ligne](<Suivi - Configurer le suivi des conversions hors ligne.md>) | Lié (EC4L est une fonctionnalité différente) |

---

### Erreurs fréquentes

| Erreur | Pourquoi ça arrive | Comment l'éviter |
| --- | --- | --- |
| Variable email vide | Data layer non configuré sur la page de conversion | Vérifiez avec le développeur que les données sont poussées avant le déclenchement du tag |
| Mauvaise hiérarchie de variable | Structure de data layer imbriquée (ex : fields.email.value) | Utilisez le debugger GTM pour inspecter la structure exacte du data layer |
| Les diagnostics restent en « waiting » | Faible volume de conversions | Comptez jusqu'à 72 heures, assurez-vous d'un volume de conversions suffisant |
| Aucun uplift observé | Implémentation uniquement sur le bas du tunnel | Vérifiez séparément l'uplift sur les campagnes du haut du tunnel |
| Erreurs de hachage | Hachage manuel appliqué avant l'envoi | Ne pré-hachez pas : Google hache automatiquement via GTM et gtag |
| Mauvaise méthode d'implémentation sélectionnée dans Google Ads | GTM sélectionné mais gtag utilisé (ou l'inverse) | Faites correspondre le paramètre à votre implémentation réelle |
