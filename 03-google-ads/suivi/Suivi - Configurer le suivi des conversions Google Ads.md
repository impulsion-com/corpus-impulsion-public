# Configurer le suivi des conversions Google Ads

> **Plateforme :** Google Ads
> **Catégorie :** Suivi
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Phase 1️⃣: Créer les actions de conversion

### 1.1 Naviguez vers la configuration des conversions

1. Ouvrez Google Ads
2. Naviguez vers **Goals > Conversions > Summary**
3. Cliquez sur **New conversion action**
4. Sélectionnez **Website** comme source de conversion

### 1.2 Créer chaque action de conversion

Pour chaque évènement de conversion, configurez ce qui suit :

1. **Goal category :** Sélectionnez la catégorie la plus spécifique (Submit Lead Form, Purchase, Book Appointment, Contact, etc.)
2. **Conversion name :** Utilisez une convention de nommage cohérente : `[Initials] - GACT - [Event Name]` (ex : `BM - GACT - Purchase`)
3. **Primary vs secondary :** Définissez les macro-conversions en primary, les micro-conversions en secondary
4. **Value :** Sélectionnez « Use different values for each conversion » pour l'e-commerce. Pour le lead gen (génération de prospects) sans données de deal signé, laissez sur « Don't use a value »
5. **Count :** Réglez sur « One » pour les actions de lead gen (soumissions de formulaire, inscriptions). Réglez sur « Every » pour les achats e-commerce
6. **Attribution model :** Gardez la valeur par défaut (Data-Driven Attribution)
7. **Conversion windows :** Définissez la fenêtre post-clic selon votre cycle de vente (30 jours par défaut). Réglez la fenêtre post-affichage (view-through) sur 1 jour. Réglez l'engaged-view sur 3 jours

| Verticale | Macro-conversion typique | Count | Value |
| --- | --- | --- | --- |
| Lead Gen | Soumission de formulaire, appel téléphonique | One | Aucune valeur (ou moyenne calculée) |
| SaaS | Inscription, début d'essai, paiement | One | Valeurs différentes par action |
| E-commerce | Achat | Every | Dynamique (valeur de transaction) |

### 1.3 Enregistrer les IDs et labels de conversion

Pour chaque action, allez dans **Tag setup > Use Google Tag Manager** et notez :

| Action de conversion | Conversion ID | Conversion Label | Goal category |
| --- | --- | --- | --- |
| [Action 1] | [Identique pour toutes] | [Unique par action] | [Catégorie] |
| [Action 2] | [Identique pour toutes] | [Unique par action] | [Catégorie] |

> 💡 **Le Conversion ID est constant pour toutes les actions d'un même compte Google Ads :** Enregistrez-le comme variable Constant dans GTM pour ne le configurer qu'une seule fois.

---

## Phase 2A: Implémentation GTM (recommandée)

### 2A.1 Vérifier l'installation du Google Tag

1. Ouvrez le conteneur GTM
2. Vérifiez l'existence d'un Google Tag (gtag.js) qui se déclenche sur All Pages
3. S'il est absent : créez un **Google Tag** avec votre Google Tag ID (disponible dans Google Ads sous Tools > Google Tag)
4. Réglez le déclencheur sur **All Pages**

### 2A.2 Créer le tag Conversion Linker

1. Dans GTM, créez un nouveau tag
2. Sélectionnez le type de tag **Conversion Linker**
3. Réglez le déclencheur sur **All Pages**
4. Ce tag active le tracking cross-domain et stocke les informations de clic

### 2A.3 Créer la variable Constant du Conversion ID

1. Naviguez vers **Variables > User-Defined Variables > New**
2. Sélectionnez le type de variable **Constant**
3. Saisissez la valeur de votre Conversion ID
4. Nommez-la `cid - Google Ads Conversion ID`

### 2A.4 Créer les tags Google Ads Conversion Tracking

Pour chaque action de conversion :

1. Créez un nouveau tag
2. Sélectionnez le type de tag **Google Ads Conversion Tracking**
3. Configurez les champs :

| Champ | Valeur |
| --- | --- |
| Conversion ID | Sélectionnez votre variable Constant |
| Conversion Label | Collez le label unique de cette action |
| Conversion Value | Data Layer Variable (pour l'e-commerce) ou laissez vide |
| Transaction ID | Data Layer Variable (évite le double comptage) |
| Currency Code | Data Layer Variable ou statique (ex : EUR, USD) |

4. Réglez le déclencheur sur l'évènement approprié :

| Type de conversion | Type de déclencheur | Exemple |
| --- | --- | --- |
| Achat (évènement de data layer) | Custom Event | Nom d'évènement : `purchase` |
| Soumission de formulaire | Custom Event | Nom d'évènement : `form_submit` ou spécifique à la plateforme |
| Page de remerciement | Page View | L'URL contient `/thank-you` |
| Clic sur un bouton | Click | L'élément cliqué correspond au sélecteur |

### 2A.5 Configurer les variables de data layer (e-commerce)

Pour les valeurs dynamiques (valeur, transaction ID, devise), créez des Data Layer Variables :

1. Naviguez vers **Variables > User-Defined Variables > New**
2. Sélectionnez **Data Layer Variable**
3. Mappez le nom de la variable à la clé du data layer (ex : `ecommerce.purchase.value`)

> ⚠️ **La configuration du data layer nécessite l'implication du développeur :** Briefez votre développeur sur les évènements qui doivent pousser des données dans le data layer et sur les variables à inclure. Fournissez le nom de l'évènement et la structure de variable attendue.

---

## Phase 2B: Implémentation gtag (alternative)

### 2B.1 Vérifier le global site tag

Confirmez que le snippet Google Tag (gtag.js) est installé sur chaque page dans la section `<head>`.

### 2B.2 Ajouter les snippets d'évènement de conversion

Pour chaque action de conversion, ajoutez le snippet d'évènement sur la page de conversion ou dans le gestionnaire d'évènement :

Placez le snippet de conversion sous le global site tag sur les pages de conversion. Incluez les paramètres dynamiques pour value, transaction_id et currency le cas échéant.

### 2B.3 Coordination avec le développeur

Fournissez à votre développeur :

- Le Conversion ID et le Label de chaque action
- Les pages ou évènements où chaque snippet se déclenche
- Les noms de variables pour les valeurs dynamiques (value, transaction_id, currency)

---

## Phase 3️⃣: Configurer et valider

### 3.1 Débugger avec GTM Preview (ou Tag Assistant)

1. Dans GTM, cliquez sur **Preview** pour entrer en mode debug
2. Ouvrez votre site web dans l'onglet de navigateur connecté
3. Naviguez vers la page de conversion ou déclenchez l'évènement de conversion
4. Dans le debugger GTM, vérifiez :

| Vérification | Résultat attendu |
| --- | --- |
| Le tag Conversion Linker s'est déclenché | Apparaît sous « Tags Fired » sur All Pages |
| Le tag de conversion s'est déclenché | Apparaît sous « Tags Fired » sur le bon évènement |
| Conversion ID correct | Correspond à votre compte Google Ads |
| Conversion Label correct | Correspond à l'action de conversion spécifique |
| Valeur transmise correctement | Affiche la valeur dynamique (e-commerce) |
| Transaction ID renseigné | Affiche un ID unique par conversion |

### 3.2 Compléter une conversion de test

1. Soumettez un formulaire de test, réalisez un achat de test ou déclenchez l'évènement de conversion
2. Vérifiez que le tag de conversion se déclenche dans le debugger GTM
3. Vérifiez le data layer pour vous assurer que les valeurs des variables sont correctes

### 3.3 Publier le conteneur GTM

1. Cliquez sur **Submit** dans GTM
2. Ajoutez un nom et une description de version (ex : « GACT setup: [conversion actions added] »)
3. Cliquez sur **Publish**

---

## Phase 4️⃣: Définir les objectifs et vérifier

### 4.1 Configurer les objectifs par défaut du compte

1. Naviguez vers **Goals > Conversions > Summary**
2. Cliquez sur **Edit goal** sur la goal category de votre macro-conversion primary
3. Sélectionnez **Use [category] as an account-default goal**
4. Vérifiez que les bonnes actions de conversion sont définies en primary au sein de cette goal category

### 4.2 Vérifier la classification principale et secondaire

| Action de conversion | Classification attendue | Utilisée pour |
| --- | --- | --- |
| Macro-conversion (achat, soumission de formulaire) | Primary | Stratégie d'enchères + reporting |
| Micro-conversion (ajout au panier, vue de page) | Secondary | Reporting uniquement |

### 4.3 Attendre et vérifier

1. Comptez 24 à 48 heures pour que les conversions apparaissent
2. Vérifiez le statut actif (point vert) dans **Goals > Conversions > Summary**
3. Naviguez vers les rapports de campagne et vérifiez que les conversions apparaissent dans la colonne Conversions
4. Segmentez par **Conversion action** pour confirmer que les bonnes actions enregistrent
5. Recoupez les conversions rapportées avec les données backend (CRM, plateforme e-commerce, analytics)

### 4.4 Checklist finale

- [ ] Toutes les macro-conversions se déclenchent correctement avec des valeurs dynamiques
- [ ] Le Transaction ID se renseigne avec une valeur unique par conversion
- [ ] Le Conversion Linker se déclenche sur toutes les pages
- [ ] L'objectif account-default inclut la bonne macro-conversion primary
- [ ] Aucune action de conversion en double (GACT et import GA4 pour le même évènement)
- [ ] Les conversions apparaissent dans les rapports de campagne sous 48 heures
- [ ] Le recoupement avec les données backend montre une concordance raisonnable

---

### Validation et critères de complétion

Cette SOP est terminée quand :

- [ ] Toutes les actions de conversion prévues sont créées dans Google Ads
- [ ] Tous les tags sont déployés et se déclenchent sur les bons déclencheurs
- [ ] Le conteneur GTM est publié (ou les snippets gtag sont en production)
- [ ] Les objectifs account-default sont configurés avec les bonnes actions primary
- [ ] Les conversions s'enregistrent dans les rapports de campagne sous 48 heures
- [ ] Le recoupement avec les données backend confirme une concordance raisonnable

---

### Passerelle de sortie

Une fois que le GACT est en production et vérifié :

| Délai | Action |
| --- | --- |
| Immédiatement | [SOP - Implementer les conversions ameliorees](<Suivi - Implémenter les conversions améliorées.md>) pour une meilleure attribution |
| Immédiatement | Implémentez le Consent Mode si vous ciblez des utilisateurs de l'UE/EEE |
| Si Lead Gen/SaaS | [SOP - Configurer le suivi des conversions hors ligne](<Suivi - Configurer le suivi des conversions hors ligne.md>) |
| Semaine 2+ | [SOP - Implementer le tracking server-side](<Suivi - Implémenter le Server-Side Tagging.md>) pour la précision des données |

**En cas de problème :**

| Problème | Rediriger vers |
| --- | --- |
| Conversions qui ne s'enregistrent pas | Vérifiez le déclenchement du tag dans le debugger GTM, vérifiez le Conversion Linker |
| Conversions en double | Vérifiez si le GACT et l'import GA4 comptent tous deux le même évènement |
| Valeur incorrecte | Vérifiez le mapping de la variable de data layer |
| Le statut affiche « No recent conversions » | Comptez 48 heures, puis re-débuggez |

---

### FAQ

**Q : Dois-je utiliser le GACT ou importer les conversions GA4 ?**

R : Utilisez le GACT natif comme entrée pour les Stratégies d'enchères intelligentes. Le GACT se déclenche directement vers Google Ads et fournit une meilleure attribution pour l'optimisation des enchères. Les évènements importés de GA4 peuvent servir de solution de secours secondaire pour comparaison, mais évitez d'utiliser les deux en primary pour le même évènement (cela provoque un double comptage).

**Q : Combien d'actions de conversion dois-je créer ?**

R : Créez une action de conversion par évènement business significatif. Suivez toutes les macro-conversions (achats, soumissions de formulaire, appels) et les micro-conversions clés (ajout au panier, début de paiement, étapes d'inscription). Évitez les vanity metrics comme les visites de qualité ou le temps passé sur le site.

**Q : Que faire si j'ai plusieurs domaines ou landing pages ?**

R : Le Google Tag et le Conversion Linker gèrent le tracking cross-domain. Assurez-vous que GTM est installé sur tous les domaines. Configurez le tracking cross-domain dans les paramètres du Google Tag si les utilisateurs naviguent entre domaines pendant le parcours de conversion.

**Q : Dois-je utiliser « One » ou « Every » pour le comptage des conversions ?**

R : Utilisez « One » pour les actions de lead gen où les soumissions en double du même utilisateur n'ont pas de valeur. Utilisez « Every » pour les achats e-commerce où chaque transaction est une conversion distincte.

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
| [SOP - Implementer les conversions ameliorees](<Suivi - Implémenter les conversions améliorées.md>) | Aval (améliore l'attribution du GACT) |
| [SOP - Implementer le tracking server-side](<Suivi - Implémenter le Server-Side Tagging.md>) | Aval (améliore la précision des données) |
| [SOP - Configurer le suivi des conversions hors ligne](<Suivi - Configurer le suivi des conversions hors ligne.md>) | Aval (Lead Gen/SaaS uniquement) |

---

### Erreurs fréquentes

| Erreur | Pourquoi ça arrive | Comment l'éviter |
| --- | --- | --- |
| Tag Conversion Linker manquant | Oublié lors de la configuration | Créez toujours le Conversion Linker sur All Pages |
| Conversions en double | GACT et import GA4 tous deux définis en primary | Utilisez une méthode en primary, l'autre en secours secondary |
| Pas de valeurs dynamiques (e-commerce) | Data layer non configuré | Briefez le développeur avant la configuration des tags |
| Transaction ID manquant | Non mappé depuis le data layer | Incluez toujours le Transaction ID pour éviter le double comptage |
| Mauvaise méthode de comptage | « Every » utilisé pour les formulaires de lead gen | Utilisez « One » pour les leads, « Every » pour les achats |
| Les tags se déclenchent sur les mauvaises pages | Déclencheur mal configuré | Débuggez soigneusement en mode Preview de GTM |
| Lien GA4 non configuré en premier | Passage direct à la création de conversions | Reliez GA4 à Google Ads avant de créer les actions de conversion |
