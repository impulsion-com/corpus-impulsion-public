# Créer et configurer un compte TikTok Ads

> **Plateforme :** TikTok
> **Catégorie :** Compte
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Configurer l'infrastructure TikTok Ads complète de zéro : Business Center, compte publicitaire, vérification, pixel, paiement, et liaison du compte organique. Cette SOP couvre chaque décision structurelle importante pour éviter les blocages, les bans et les erreurs coûteuses au démarrage.

---

## Ce que cette SOP ne couvre PAS

Cette SOP ne couvre **pas :**

- Les règles publicitaires détaillées et les motifs de refus (Voir : [Référence - Politiques publicitaires TikTok Ads](<Compte - Politiques publicitaires.md>))
- L'installation et la validation du pixel sur le site (Voir : [Procédure - Installer le pixel TikTok](<../suivi/Suivi - Installer le pixel.md>))
- La configuration des événements de conversion (Voir : [Procédure - Configurer les événements de conversion TikTok](<../suivi/Suivi - Configurer les événements de conversion.md>))
- L'architecture tracking (suivi des conversions/évènements) pixel + Events API (Voir : [Procédure - Configurer le tracking TikTok Ads](<../suivi/Suivi - Configurer le suivi.md>))
- La structure et le lancement de campagnes (Voir : [Procédure - Structurer ses campagnes TikTok Ads](<../lancement/Lancement - Structurer ses campagnes.md>))

---

## 1. Business Center vs Ads Manager — quelle différence ?

Le **TikTok Business Center** (BC) est la couche de gestion centrale. Le **TikTok Ads Manager** est l'interface opérationnelle pour lancer et piloter les campagnes. Ces deux outils sont complémentaires mais ont des rôles distincts.

| Critère | Business Center | Ads Manager |
|---|---|---|
| **Rôle principal** | Administration, structure multi-comptes | Création et gestion des campagnes |
| **Création de comptes pub** | Oui (crée et héberge les comptes) | Non (accès à un compte déjà existant) |
| **Gestion des pixels** | Oui (partage entre comptes) | Oui (installation et tests) |
| **Gestion des utilisateurs** | Oui (droits Admin / Opérateur / Finances) | Non |
| **Gestion des actifs** | Oui (audiences, catalogues, pages) | Partiellement |
| **Facturation centralisée** | Oui (un seul moyen de paiement pour plusieurs comptes) | Par compte individuel |
| **Accès agence** | Oui (partage d'accès à des tiers) | Non directement |
| **Quand l'utiliser** | Toujours, comme point de départ | Pour le travail quotidien (campagnes, créatifs, budgets) |

> ⚠️ Ne pas confondre : vous pouvez techniquement lancer des pubs directement depuis Ads Manager sans Business Center, mais cette configuration est déconseillée en environnement professionnel. Sans BC, vous ne pouvez pas gérer plusieurs comptes publicitaires, partager des pixels ou accorder des accès structurés.

---

## 2. Comptes Agence vs Comptes Annonceur Direct

| Critère | Compte Annonceur Direct | Compte Agence |
|---|---|---|
| **Propriétaire du compte** | L'annonceur lui-même | L'agence (avec partage au client) |
| **Création** | Via business.tiktok.com | Via le programme partenaire TikTok ou Business Center |
| **Accès aux représentants TikTok** | Limité ou inexistant | Account Manager TikTok dédié (si volumes suffisants) |
| **Limites de dépenses initiales** | €500/jour (standard) | Potentiellement plus élevées selon statut agence |
| **Support en cas de ban** | Support standard (lent) | Support prioritaire partenaire |
| **Facturation** | Directe (CB ou prépayé) | Souvent post-pay (mensuel selon contrat) |
| **Recommandé pour** | Annonceurs gérant eux-mêmes leurs pubs | Agences gérant plusieurs clients |
| **Permissions multi-utilisateurs** | Basique (Admin / Opérateur) | Avancée (rôles granulaires par client) |

> 💡 Si vous êtes une agence, créez un Business Center au nom de l'agence et ajoutez les comptes clients comme comptes publicitaires enfants. Chaque client conserve la propriété de son compte publicitaire et de son pixel — c'est une pratique critique pour la continuité d'activité en cas de fin de contrat.

---

## 3. Étapes de création du compte

### Étape 1 — Créer le Business Center

1. Accéder à [business.tiktok.com](https://business.tiktok.com)
2. Cliquer sur **Créer un compte Business Center**
3. Renseigner :
   - Nom de l'entreprise (identique au KBIS ou document officiel)
   - Secteur d'activité
   - Pays/région de l'entreprise (irréversible — choisir avec soin)
   - Devise (irréversible — EUR pour la France)
4. Valider l'adresse e-mail professionnelle

> ⚠️ Le pays et la devise sélectionnés lors de la création du Business Center sont **définitifs**. Une erreur ici nécessite de tout recommencer. Utilisez toujours l'entité légale principale de l'entreprise.

### Étape 2 — Créer un compte publicitaire

1. Dans le Business Center → **Comptes publicitaires** → **Créer**
2. Renseigner :
   - Nom du compte (ex : `NomClient_FR_Conversions`)
   - Fuseau horaire (Europe/Paris pour la France — irréversible)
   - Devise (EUR)
   - Secteur d'activité
   - URL du site web principal
3. Soumettre — le compte est généralement actif dans les **30 minutes à 2 heures**

### Étape 3 — Accorder les accès utilisateurs

| Rôle | Permissions |
|---|---|
| **Admin** | Accès complet : création, modification, facturation, suppression |
| **Opérateur** | Création et modification des campagnes, pas accès à la facturation |
| **Finances** | Accès uniquement à la facturation et aux rapports financiers |

> 💡 Principe du moindre privilège : donner le rôle **Opérateur** aux chargés de campagnes, réserver le rôle **Admin** au responsable du compte ou au propriétaire de l'agence.

---

## 4. Limites de dépenses — comptes nouveaux

Les nouveaux comptes TikTok Ads sont soumis à des plafonds de dépenses automatiques destinés à limiter les risques de fraude.

| Statut du compte | Limite quotidienne typique | Limite mensuelle typique |
|---|---|---|
| **Nouveau compte (< 30 jours)** | €500/jour | ~€5 000/mois |
| **Compte validé (30-90 jours)** | €2 000/jour | ~€20 000/mois |
| **Compte établi (> 90 jours, historique positif)** | €10 000+/jour | Selon négociation |
| **Compte agence partenaire** | Illimité (selon contrat) | Illimité (selon contrat) |

**Comment augmenter les limites :**
1. Dépenser régulièrement (ne pas rester en dessous de la limite pendant les 30 premiers jours)
2. Maintenir un bon historique de paiement (aucun échec CB, aucune rétrofacturation)
3. Soumettre une demande d'augmentation via le support TikTok (onglet **Aide** → **Contacter le support**)
4. Fournir des preuves de volume d'activité (fiches de paie, bilans, contrats clients)

> ⚠️ Ne pas tenter de contourner les limites en créant plusieurs comptes publicitaires pour un même annonceur. TikTok détecte et ban les structures de comptes multiples sans justification légitime.

---

## 5. Vérification du compte — exigences par pays

La vérification est obligatoire pour accéder à certains formats (ex : Spark Ads, TopView) et pour augmenter les limites de dépenses.

### Documents généralement requis (France / Europe)

| Type de document | Format accepté | Validité |
|---|---|---|
| **Extrait KBIS** (< 3 mois) | PDF, JPG, PNG | Obligatoire pour les entreprises |
| **Numéro de TVA intracommunautaire** | Saisie manuelle | Obligatoire en France |
| **Pièce d'identité du dirigeant** | CNI recto/verso ou passeport | Requis si nom du dirigeant différent du compte |
| **Justificatif bancaire** | RIB ou relevé (< 3 mois) | Selon méthode de paiement |

### Vérification par région

| Région | Documents spécifiques | Délai typique |
|---|---|---|
| **France** | KBIS + TVA FR + ID dirigeant | 1 à 3 jours ouvrés |
| **Belgique** | BCE + TVA BE + ID | 1 à 3 jours ouvrés |
| **Suisse** | Extrait RC + ID + preuve de domiciliation | 2 à 5 jours ouvrés |
| **Canada** | Business Number CRA + ID | 1 à 3 jours ouvrés |
| **USA** | EIN + ID | 1 à 2 jours ouvrés |
| **Marché sensible (crypto, finance, santé)** | Documents sectoriels supplémentaires | 5 à 10 jours ouvrés |

> 💡 Soumettez la vérification le jour de la création du compte. Ne pas attendre d'avoir des campagnes actives — le processus prend du temps et bloque certaines fonctionnalités.

---

## 6. Méthodes de paiement par région

### Types de paiement disponibles

| Méthode | Disponibilité | Notes |
|---|---|---|
| **Carte bancaire (Visa / Mastercard)** | Mondial | Paiement automatique, plafond CB parfois bloquant |
| **Virement bancaire (SEPA)** | Europe | Rechargement manuel, délai 2-3 jours ouvrés |
| **PayPal** | Certains marchés (US, UK, AU) | Non disponible en France |
| **Post-pay (facturation mensuelle)** | Comptes agence partenaire uniquement | Sous contrat TikTok |
| **Prépayé (top-up manuel)** | Mondial | Recommandé pour les nouveaux comptes pour contrôler les dépenses |

### Mode prépayé vs post-pay

| Mode | Avantages | Inconvénients |
|---|---|---|
| **Prépayé** | Contrôle total des dépenses, pas de surprise | Campagnes stoppent si solde insuffisant |
| **Post-pay** | Continuité des campagnes, facturation mensuelle | Accès réservé aux comptes agence / gros volumes |

> ⚠️ En mode prépayé, définissez une alerte de solde bas dans les paramètres de facturation. Un solde à zéro stoppe toutes les campagnes actives immédiatement, ce qui casse la phase d'apprentissage de l'algorithme.

---

## 7. Risques de ban — ce qui déclenche une suspension de compte

Un ban TikTok Ads peut être partiel (compte mis en pause) ou total (compte définitivement suspendu). Connaître les déclencheurs est essentiel pour protéger l'infrastructure.

### Tableau des risques

| Déclencheur | Niveau de risque | Description |
|---|---|---|
| **Violation de politiques publicitaires** | Très élevé | Publicité de produits/services interdits (crypto, jeux d'argent non réglementés, contenu médical non approuvé) |
| **Trop de modifications rapides** | Élevé | Modifier budget, audience, créatifs trop souvent en peu de temps — TikTok interprète cela comme un comportement suspect |
| **Échecs de paiement répétés** | Élevé | CB expirée, fonds insuffisants, rétrofacturations |
| **Landing page non conforme** | Élevé | Page inexistante, URL brisée, contenu différent de l'annonce, pas de politique de confidentialité |
| **Plusieurs comptes pour un même annonceur** | Élevé | Sans autorisation expresse de TikTok |
| **Utilisation d'un VPN** | Moyen | Connexion depuis un pays différent du pays du compte |
| **Créatifs rejetés répétitivement** | Moyen | Plusieurs annonces refusées en succession rapide signalent un comportement à risque |
| **Email/IP associé à un compte banni** | Élevé | Utiliser les mêmes identifiants qu'un compte précédemment banni |
| **Informations d'entreprise incohérentes** | Élevé | Nom légal différent du nom sur le compte ou les documents de vérification |

> ⚠️ En cas de ban, ne pas créer immédiatement un nouveau compte avec les mêmes informations. Contacter d'abord le support TikTok pour faire appel. Un deuxième compte créé avec les mêmes données aggrave la situation.

> ⚠️ En cas de compte banni, les fonds prépayés restants sont généralement remboursés dans les 30 jours, mais les données de pixel, audiences et historique de campagnes sont perdus définitivement.

---

## 8. Lier un compte TikTok organique pour les Spark Ads

Les **Spark Ads** permettent de booster des publications organiques TikTok en publicités payantes, conservant ainsi les engagements (likes, commentaires, partages) sur la publication originale — contrairement aux publicités classiques qui repartent de zéro à chaque lancement.

### Prérequis

- Avoir un compte TikTok professionnel ou entreprise (pas un compte personnel)
- Le compte organique doit être dans le même pays que le compte publicitaire (recommandé)
- La publication à booster doit respecter les politiques publicitaires TikTok

### Procédure de liaison

1. Dans TikTok Ads Manager → **Actifs** → **Comptes TikTok**
2. Cliquer sur **Connecter un compte TikTok**
3. Se connecter avec les identifiants du compte organique TikTok
4. Autoriser l'accès
5. Le compte apparaît maintenant comme disponible lors de la création d'annonces Spark Ads

> 💡 Un compte organique peut être lié à plusieurs comptes publicitaires (cas fréquent en agence). En revanche, chaque publication ne peut être boostée que depuis un seul compte publicitaire à la fois.

> 💡 Pour les Spark Ads sur des publications de créateurs tiers (UGC / influenceurs), il faut obtenir un **code d'autorisation Spark** depuis le compte du créateur (valable 7, 30 ou 365 jours selon l'accord). Ce code s'entre dans la section **Identité** lors de la création de l'annonce.

---

## 9. Délais de validation et de revue

| Élément | Délai standard | Délai avec vérification complexe |
|---|---|---|
| **Création du compte publicitaire** | 30 min à 2 heures | Immédiat si Business Center déjà vérifié |
| **Vérification d'entreprise** | 1 à 3 jours ouvrés | 3 à 10 jours ouvrés (marchés sensibles) |
| **Revue des annonces (créatifs)** | 24 heures | Jusqu'à 72 heures (week-ends inclus) |
| **Augmentation de plafond de dépenses** | 3 à 7 jours ouvrés | Jusqu'à 14 jours |
| **Appel après ban** | 5 à 14 jours ouvrés | Parfois sans réponse (ban définitif) |

> 💡 Les annonces soumises en fin de semaine (vendredi après-midi / week-end) sont souvent examinées le lundi. Planifiez vos lancements en milieu de semaine pour éviter les délais.

---

## 10. Exigences pour la landing page

TikTok inspecte automatiquement les landing pages lors de la revue des annonces. Une page non conforme entraîne le rejet de l'annonce, voire la suspension du compte.

| Exigence | Détail |
|---|---|
| **Page fonctionnelle** | L'URL doit charger correctement depuis les IP de TikTok (vérifier qu'aucun blocage géographique ou pare-feu ne bloque TikTok) |
| **Correspondance avec l'annonce** | Le contenu de la page doit correspondre à l'offre présentée dans la publicité (pas de bait-and-switch) |
| **Politique de confidentialité** | Obligatoire — doit être accessible depuis la landing page (lien dans le footer) |
| **Mentions légales** | Requises pour les secteurs réglementés (finance, santé, alcool) |
| **Pas de pop-up intrusif** | Les pages avec pop-up immédiat bloquant le contenu sont souvent rejetées |
| **Chargement mobile** | La page doit charger en moins de 3 secondes sur mobile (TikTok est une plateforme mobile-first) |
| **Langue cohérente** | La langue de la landing page doit correspondre à la langue du ciblage géographique |

> ⚠️ Les pages en construction, les pages d'erreur 404, ou les pages protégées par mot de passe entraînent un rejet automatique. Testez toujours l'URL depuis un navigateur en navigation privée avant de soumettre.

---

## 11. Récapitulatif — checklist de configuration complète

```
[ ] Business Center créé avec les informations légales exactes
[ ] Pays et devise corrects (irréversibles)
[ ] Compte publicitaire créé (nom, fuseau horaire, devise)
[ ] Utilisateurs ajoutés avec les bons rôles
[ ] Documents de vérification soumis (KBIS, TVA, ID)
[ ] Moyen de paiement actif (CB ou virement SEPA)
[ ] Alerte de solde bas configurée
[ ] Pixel TikTok installé et testé
[ ] Compte TikTok organique lié (pour Spark Ads)
[ ] Landing page vérifiée (fonctionnelle, conforme, politique de confidentialité présente)
```

---

## Références croisées

- ↪️ [Installer le pixel TikTok](<../suivi/Suivi - Installer le pixel.md>)
- ↪️ [Configurer le tracking TikTok Ads](<../suivi/Suivi - Configurer le suivi.md>)
- ↪️ [Référence - Politiques publicitaires TikTok Ads](<Compte - Politiques publicitaires.md>)
- ↪️ [Configurer les événements de conversion TikTok](<../suivi/Suivi - Configurer les événements de conversion.md>)
- ↪️ [Structurer ses campagnes TikTok Ads](<../lancement/Lancement - Structurer ses campagnes.md>)
