# Construire des listes Customer Match

> **Plateforme :** Google Ads
> **Catégorie :** Audiences
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Exécution

### Phase 1️⃣ : Définir la stratégie de listes

**Objectif :** Déterminer quels segments client créer et quelles données inclure.

#### Étape 1.1 : Identifier les segments de listes

Documentez les listes dont vous avez besoin :
| Nom de la liste | Objectif | Critères de filtrage | Taille estimée |
|-----------|---------|----------------|---------------|
| Tous les clients | Signal large / exclusion | Tous les enregistrements du CRM | [Nombre] |
| Clients à forte valeur | Signal premium | Top 20 % par chiffre d'affaires | [Nombre] |
| [Segments supplémentaires] | [Objectif] | [Filtre] | [Nombre] |

#### Étape 1.2 : Vérifier la disponibilité des données

Pour chaque liste, confirmez les identifiants disponibles :
| Identifiant | Disponible ? | Couverture (% des enregistrements) |
|-----------|-----------|------------------------|
| Email | Oui/Non | [%] |
| Téléphone | Oui/Non | [%] |
| Adresse postale | Oui/Non | [%] |
| Prénom | Oui/Non | [%] |
| Nom | Oui/Non | [%] |
| Pays | Oui/Non | [%] |

> 💡 **Plus d'identifiants = meilleurs taux de match :** Email seul : taux de match de 29-62 %. Ajout du téléphone : +15-20 %. Ajout de l'adresse : +10-15 % supplémentaires. Importez toujours tous les identifiants disponibles.

#### Étape 1.3 : Vérifier le consentement (exigence EEE)

Pour les clients de l'Espace économique européen :

- [ ] Le consentement du client pour l'utilisation des données est documenté
- [ ] Le consentement couvre l'utilisation à des fins publicitaires
- [ ] Les signaux de consentement sont inclus dans l'import (si vous utilisez des imports partenaires)

**Résultat de la phase 1 :** Segments de listes définis, disponibilité des données confirmée, consentement vérifié.

---

### Phase 2️⃣ : Extraire et formater les données

**Objectif :** Exporter les données client depuis le CRM et les formater pour l'import dans Google Ads.

#### Étape 2.1 : Exporter les données du CRM

1. Exportez chaque segment défini au format CSV
2. Incluez toutes les colonnes d'identifiants disponibles
3. Supprimez tout enregistrement sans identifiant valide

#### Étape 2.2 : Formater le fichier CSV

Google Ads exige des en-têtes de colonnes et un formatage spécifiques :
| En-tête de colonne | Format | Exemple |
|--------------|--------|---------|
| `Email` | Minuscules, sans espaces superflus | `john@example.com` |
| `Phone` | Format E.164 (indicatif pays + numéro) | `+1234567890` |
| `First Name` | Tel quel (Google hache à l'import) | `John` |
| `Last Name` | Tel quel | `Smith` |
| `Country` | Code ISO à 2 lettres | `US`, `NL`, `GB` |
| `Zip` | Tel quel | `10001`, `1011 AB` |

#### Étape 2.3 : Pré-hacher les données (optionnel)

Si vous importez via l'API ou si votre politique de confidentialité impose un pré-hachage :
| Identifiant | Hachage | Pré-traitement |
|-----------|---------|---------------|
| Email | SHA-256 | Passer en minuscules et supprimer les espaces d'abord |
| Téléphone | SHA-256 | Format E.164 d'abord, puis hacher |
| Prénom/Nom | SHA-256 | Passer en minuscules et supprimer les espaces d'abord |
| Adresse | SHA-256 | Passer en minuscules et retirer les espaces superflus d'abord |

Si vous importez via l'interface Google Ads, Google hache automatiquement : aucun pré-hachage n'est nécessaire.

#### Étape 2.4 : Valider le fichier

| Contrôle | Exigence |
|-------|------------|
| Format de fichier | CSV (encodage UTF-8) |
| Taille du fichier | Moins de 5 Go |
| Nombre minimum d'enregistrements | 1 000+ (pour un matching efficace : 100 minimum absolu) |
| En-têtes de colonnes | Correspondre exactement au format attendu par Google |
| Pas de doublons | Supprimer les lignes en double |
| Pas de lignes vides | Supprimer les lignes sans identifiant |

**Résultat de la phase 2 :** Fichier(s) CSV formaté(s) prêt(s) pour l'import.

---

### Phase 3️⃣ : Importer et vérifier

**Objectif :** Importer les listes dans Google Ads et vérifier les taux de match.

#### Étape 3.1 : Importer via l'interface Google Ads

1. Naviguez vers **Tools & Settings → Audience Manager → Customer lists**
2. Cliquez sur **+ (bouton plus)** → **Customer list**
3. Nommez la liste clairement (ex : « Tous les clients - Janv. 2026 »)
4. Sélectionnez le type de données : **Upload emails, phones, and/or mailing addresses**
5. Importez le fichier CSV formaté
6. Acceptez les conditions de la politique Customer Match
7. Cliquez sur **Upload and create**

#### Étape 3.2 : Vérifier le taux de match

Après l'import (comptez 24-48 heures pour le traitement) :

1. Retournez dans **Audience Manager → Customer lists**
2. Vérifiez le taux de match de la liste importée

| Taux de match | Évaluation | Action |
|-----------|-----------|--------|
| 50 %+ | Excellent | Continuer vers la phase 4 |
| 29-49 % | Acceptable | Envisager d'ajouter plus d'identifiants |
| Sous 29 % | Faible | Dépanner (voir étape 3.3) |

#### Étape 3.3 : Dépanner les taux de match faibles

Si le taux de match est inférieur à 29 % :
| Cause | Correctif |
|-------|-----|
| Import email uniquement | Ajouter des numéros de téléphone et des adresses postales |
| Erreurs de formatage | Vérifier email en minuscules, téléphone au format E.164 |
| Emails anciens/invalides | Nettoyer la liste, retirer les emails en erreur et les enregistrements obsolètes |
| Liste à forte proportion B2B | Les taux de match B2B sont naturellement plus faibles ; ajouter téléphone/adresse pour compenser |
| Liste de petite taille | Augmenter la taille de la liste, le taux de match s'améliore avec l'échelle |
| Emails professionnels uniquement | Les emails personnels matchent mieux que les domaines d'entreprise |

#### Étape 3.4 : Vérifier la taille de la liste

| Contrôle | Minimum | Recommandé |
|-------|---------|-------------|
| Utilisateurs matchés | 100 | 1 000+ |
| La liste affiche « Ready » | Requis | - |

Si les utilisateurs matchés sont sous 100, la liste ne sera pas diffusée. Augmentez la taille de la liste ou ajoutez plus d'identifiants.

**Résultat de la phase 3 :** Liste Customer Match importée, taux de match vérifié, statut de la liste « Ready ».

---

### Phase 4️⃣ : Définir un calendrier de rafraîchissement et maintenir

**Objectif :** Établir une cadence de rafraîchissement régulière pour garder les listes à jour et efficaces.

#### Étape 4.1 : Déterminer la fréquence de rafraîchissement

| Type de liste | Rafraîchissement recommandé | Justification |
|-----------|-------------------|-----------|
| Tous les clients | Hebdomadaire (automatisé) ou mensuel (manuel) | De nouveaux clients sont ajoutés régulièrement |
| Clients à forte valeur | Mensuelle | Les données de chiffre d'affaires se mettent à jour chaque mois |
| Clients perdus | Mensuelle | Le statut de perte évolue dans le temps |
| Segments spécifiques à une campagne | Selon les besoins | S'aligner sur le cycle de vie de la campagne |

#### Étape 4.2 : Mettre en place la méthode de rafraîchissement

| Méthode | Idéale pour | Configuration |
|--------|---------|-------|
| **Import CSV manuel** | Petites listes, mises à jour peu fréquentes | Ré-importer le CSV chaque mois via Audience Manager |
| **API Google Ads** | Grandes listes, mises à jour fréquentes | L'équipe technique met en place des imports automatisés |
| **Intégration CRM** | Synchronisation automatisée | Connecter le CRM (HubSpot, Salesforce, etc.) via Data Manager |
| **Zapier/Make** | Automatisation no-code | Configurer un déclencheur automatisé à la création d'un nouveau client |

#### Étape 4.3 : Définir la durée d'appartenance

- Durée d'appartenance maximale : **540 jours**
- Après 540 jours, les utilisateurs sont automatiquement retirés sauf si la liste est rafraîchie
- Programmez un rappel dans l'agenda à 500 jours si vous utilisez le rafraîchissement manuel

#### Étape 4.4 : Documenter le calendrier de rafraîchissement

| Nom de la liste | Méthode de rafraîchissement | Fréquence | Prochaine date de rafraîchissement | Responsable |
|-----------|---------------|-----------|-------------------|-------|
| [Liste 1] | [Méthode] | [Fréquence] | [Date] | [Personne] |
| [Liste 2] | [Méthode] | [Fréquence] | [Date] | [Personne] |

#### Étape 4.5 : Valider la santé dans la durée

Effectuez ces contrôles chaque mois :

- [ ] La taille de la liste croît ou est stable (pas en déclin)
- [ ] Le taux de match est stable (pas en déclin)
- [ ] La dernière date de rafraîchissement est dans la fenêtre prévue
- [ ] Aucun avertissement de politique sur la liste

**Résultat de la phase 4 :** Calendrier de rafraîchissement documenté, méthode configurée, suivi continu établi.

---

### Validation et critères de complétion

Cette SOP est terminée quand :

- [ ] Au moins une liste Customer Match est importée et le statut affiche « Ready »
- [ ] Le taux de match est de 29 %+ (ou les actions de dépannage sont documentées)
- [ ] Le nombre d'utilisateurs matchés est de 1 000+ (100 minimum pour la diffusion)
- [ ] Le calendrier de rafraîchissement est documenté avec un responsable clair
- [ ] La liste est disponible dans Audience Manager pour être utilisée dans les campagnes

---

### Passerelle de sortie

| Après avoir complété cette SOP... | Rediriger vers... |
|-----------------------------|-------------|
| Utiliser la liste comme signal PMax | [SOP - Configurer les signaux d'audience](<Audiences - Configurer les signaux d'audience.md>) |
| Utiliser la liste pour le ciblage Display/Video/DG | [SOP - Configurer le ciblage par audience](<Audiences - Configurer le ciblage par audience.md>) |
| Utiliser la liste comme seed d'audience similaire (Demand Gen) | [SOP - Configurer le ciblage par audience](<Audiences - Configurer le ciblage par audience.md>) (Phase 2, Étape 2.3) |
| Utiliser la liste comme exclusion | Appliquer au niveau campagne dans la SOP concernée |

---

### FAQ

**Q : Quelle est la taille minimum de liste pour que Customer Match fonctionne ?**
R : 100 utilisateurs matchés pour la diffusion, mais 1 000+ est recommandé pour une qualité de signal significative. Les listes de moins de 1 000 utilisateurs apportent une valeur d'optimisation limitée.

**Q : Google voit-il mes données client brutes ?**
R : Non. Les données sont hashées (SHA-256) pendant l'upload. Google fait correspondre les données hashées à celles, également hashées, des comptes Google. Les données brutes ne sont jamais stockées.

**Q : Puis-je utiliser Customer Match sur tous les types de campagnes ?**
R : Oui. Customer Match fonctionne en Search, Shopping, Display, Video, Demand Gen et Performance Max. En PMax, il agit comme un signal ; dans les autres types de campagnes, il agit comme ciblage.

**Q : Pourquoi mon taux de match est-il bas pour les listes B2B ?**
R : Les contacts B2B utilisent souvent des emails professionnels qui ne matchent pas les comptes Google personnels. Ajoutez des numéros de téléphone et des adresses postales pour augmenter les taux de match. Les emails personnels matchent toujours mieux.

**Q : À quelle fréquence dois-je rafraîchir mes listes ?**
R : Un rafraîchissement hebdomadaire est idéal pour les listes de clients actifs. Un rafraîchissement mensuel est le minimum. Les listes expirent après 540 jours sans rafraîchissement.

---

### Référence rapide

| Document | Type | Utilisé pour |
|----------|------|---------|
| [Audience Signals Reference](<Audiences - Signaux d'audience.md>) | Référence | Spécifications Customer Match et hiérarchie des signaux |
| [Audience Targeting Reference](<Audiences - Signaux d'audience.md>) | Référence | Spécifications de ciblage Customer Match |
| [SOP - Configurer les signaux d'audience](<Audiences - Configurer les signaux d'audience.md>) | SOP | Utiliser les listes comme signaux PMax |
| [SOP - Configurer le ciblage par audience](<Audiences - Configurer le ciblage par audience.md>) | SOP | Utiliser les listes pour le ciblage de campagne |

---

### Erreurs fréquentes

| Erreur | Pourquoi ça arrive | Comment l'éviter |
|---------|---------------|--------------|
| Taux de match sous 20 % | Import email uniquement avec des données B2B | Importer plusieurs identifiants (email + téléphone + adresse) |
| La liste affiche « Not ready » | Moins de 100 utilisateurs matchés | Augmenter la taille de la liste ou ajouter plus d'identifiants |
| La liste devient obsolète | Aucun calendrier de rafraîchissement défini | Documenter la cadence de rafraîchissement et attribuer un responsable |
| Erreurs de formatage à l'import | En-têtes de colonnes ou format de données erronés | Utiliser les en-têtes de colonnes exacts de Google, format téléphone E.164 |
| Rejet par la politique | Consentement client manquant | Vérifier la documentation du consentement avant l'import |
| Import sur le mauvais compte | Confusion entre compte administrateur et compte enfant | Vérifier l'ID du compte avant d'importer |
