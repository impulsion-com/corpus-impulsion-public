# Configurer les signaux d'audience

> **Plateforme :** Google Ads
> **Catégorie :** Audiences
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Exécution

### Phase 1️⃣ : Auditer les actifs de données existants

**Objectif :** Inventorier toutes les données first-party disponibles pour la configuration des signaux.

#### Étape 1.1 : Vérifier les listes Customer Match

1. Naviguez vers **Tools & Settings → Audience Manager → Customer lists**
2. Documentez les listes disponibles à l'aide du tableau ci-dessous
3. Critères d'utilisabilité : 1 000+ utilisateurs matchés, mis à jour depuis moins de 30 jours

| Nom de la liste | Taille (matchés) | Dernière mise à jour | Utilisable ? |
|-----------|---------------|--------------|---------|
| [Notez chaque liste] | [Nombre] | [Date] | Oui/Non |

#### Étape 1.2 : Vérifier les segments d'audience du site

1. Naviguez vers **Tools & Settings → Audience Manager → Vos segments de données**
2. Documentez les segments disponibles à l'aide du tableau ci-dessous
3. Critères d'utilisabilité : 100+ utilisateurs (1 000+ recommandé)

| Nom du segment | Taille | Durée d'appartenance | Utilisable ? |
|-------------|------|--------------------| --------|
| Tous les visiteurs | [Nombre] | [Jours] | Oui/Non |
| Tous les convertisseurs | [Nombre] | [Jours] | Oui/Non |
| [Visiteurs des pages produit/service] | [Nombre] | [Jours] | Oui/Non |

#### Étape 1.3 : Vérifier les données YouTube

1. Si une chaîne YouTube est associée : documentez le nombre d'abonnés et les segments de spectateurs de vidéos
2. Si aucune chaîne YouTube : notez comme indisponible et ignorez les signaux YouTube

#### Étape 1.4 : Documenter l'inventaire des actifs de données

| Actif de données | Disponible | Qualité | Action requise |
|-----------|-----------|---------|---------------|
| Customer Match | Oui/Non | Taille + fraîcheur | Importer/rafraîchir si nécessaire |
| Convertisseurs du site | Oui/Non | Taille | Créer le segment s'il manque |
| Tous les visiteurs du site | Oui/Non | Taille | Créer le segment s'il manque |
| Utilisateurs YouTube | Oui/Non | Chaîne associée ? | Associer la chaîne si disponible |

**Résultat de la phase 1 :** Inventaire complet des actifs de données disponibles avec évaluation de leur qualité.

**Vérification :** Tableau d'inventaire des actifs de données complété avec une évaluation de qualité pour chaque actif, et tout segment manquant signalé pour création.

---

### Phase 2️⃣ : Construire l'empilement de signaux

**Objectif :** Superposer les signaux de la qualité la plus élevée à la plus faible selon la hiérarchie de qualité des signaux.

> ⚠️ **Ajoutez tous les signaux de niveau 1-2 avant le lancement :** Ne lancez pas une campagne PMax sans avoir configuré Customer Match, les convertisseurs du site et tous les visiteurs du site. C'est le minimum pour une montée en puissance efficace de l'apprentissage automatique.

#### Étape 2.1 : Ajouter les signaux de niveau 1 (priorité maximale)

Ajoutez-les en premier, ce sont eux qui pèsent le plus :

| Signal | Source | Configuration |
|--------|--------|--------------|
| Customer Match | Audience Manager | Sélectionnez votre liste client principale (tous les clients pour la croissance, top 20 % pour l'efficacité) |
| Convertisseurs du site | Vos segments de données | Sélectionnez le segment de convertisseurs avec une fenêtre de 90-540 jours |

#### Étape 2.2 : Ajouter les signaux de niveau 2

| Signal | Source | Configuration |
|--------|--------|--------------|
| Tous les visiteurs du site | Vos segments de données | Sélectionnez le segment de tous les visiteurs avec une fenêtre de 30-90 jours |
| Utilisateurs YouTube engagés | Vos segments de données | Sélectionnez les spectateurs/abonnés YouTube (si disponible) |

#### Étape 2.3 : Ajouter les signaux de niveau 3

Créez des segments personnalisés s'ils n'existent pas déjà :

1. Naviguez vers **Audience Manager → Custom segments → New custom segment**
2. Créez un segment de termes de recherche :
   - Ajoutez 10-15 termes de recherche les plus convertissants de vos campagnes Search
   - Extrayez les termes du Rapport sur les termes de recherche, filtrés par conversions
   - Évitez les termes de marque et les génériques d'un seul mot
3. Créez un segment d'URL/d'app (optionnel) :
   - Ajoutez 10-15 URL de concurrents directs et de publications sectorielles
   - Utilisez des pages spécifiques, pas des pages d'accueil

> ↪️ Pour des exemples de termes et d'URL par secteur : voir [Audience Signal Catalog](<Audiences - Signaux d'audience.md>)

#### Étape 2.4 : Ajouter les signaux de niveau 4-5 (sélectif)

| Signal | Quand l'ajouter | Configuration |
|--------|-------------|--------------|
| Segments sur le marché (in-market) | Toujours : ajoutez 1-2 catégories pertinentes | Sélectionnez la catégorie sur le marché la plus spécifique pour votre produit/service |
| Événements de vie | Uniquement si un événement de vie spécifique déclenche vos achats | Sélectionnez les événements de vie pertinents |
| Segments d'affinité | Uniquement pour des objectifs de notoriété de marque | Superposez-les à des signaux de meilleure qualité, ne les utilisez jamais seuls |
| Données démographiques | Uniquement pour affiner par revenu du foyer ou statut parental | Ajoutez-les comme filtre par-dessus les autres signaux |

> ↪️ **Parcourir les noms de segments :** Voir [Audience Segments Reference](<Audiences - Segments d'audience.md>) pour la liste complète des segments sur le marché, d'affinité et d'événements de vie disponibles dans Google Ads.

#### Étape 2.5 : Vérifier l'empilement de signaux

Votre empilement de signaux terminé devrait ressembler à ceci :

| Niveau | Type de signal | Configuré ? |
|-------|------------|-------------|
| 1 | Customer Match | ☐ |
| 2 | Convertisseurs du site | ☐ |
| 3 | Tous les visiteurs du site | ☐ |
| 4 | Utilisateurs YouTube (si disponible) | ☐ |
| 5 | Segment personnalisé (termes de recherche) | ☐ |
| 6 | Segment personnalisé (URL) | ☐ |
| 7 | Segments sur le marché (1-2) | ☐ |

**Résultat de la phase 2 :** Tous les signaux pertinents ajoutés au groupe de composants.

**Vérification :** Tous les signaux de niveau 1-2 apparaissent comme configurés dans le groupe de composants, au moins un segment personnalisé est ajouté, et le tableau de vérification de l'empilement de signaux a toutes ses lignes applicables cochées.

---

### Phase 3️⃣ : Configurer les thèmes de recherche

**Objectif :** N'ajouter des thèmes de recherche que là où c'est pertinent, en maîtrisant le risque de cannibalisation.

#### Étape 3.1 : Évaluer le besoin de thèmes de recherche

| Question | Si OUI | Si NON |
|----------|--------|-------|
| Diffusez-vous des campagnes Search sur ces mots-clés ? | N'ajoutez PAS de thèmes de recherche (risque élevé de cannibalisation) | Continuer vers l'étape 3.2 |
| PMax est-elle votre seule campagne éligible à la recherche ? | Ajoutez des thèmes de recherche pour les catégories principales | Ignorez complètement les thèmes de recherche |
| Êtes-vous à l'aise avec le fait que PMax capte de l'inventaire de recherche ? | Ajoutez des thèmes de recherche de façon sélective | Ignorez complètement les thèmes de recherche |

#### Étape 3.2 : Ajouter des thèmes de recherche (si vous continuez)

1. Dans les paramètres du groupe de composants, accédez à **Search themes**
2. Ajoutez des thèmes au niveau catégorie (larges, pas des mots-clés spécifiques) :
   - Exemple : « google ads management » (catégorie) et non « google ads management agency pricing » (longue traîne)
3. Maximum : 25 thèmes de recherche par groupe de composants
4. Ne DUPLIQUEZ PAS les mots-clés de campagnes Search actives

#### Étape 3.3 : Documenter les décisions sur les thèmes de recherche

| Thème de recherche | Ajouté ? | Raison |
|-------------|--------|--------|
| [Thème 1] | Oui/Non | [Justification] |
| [Thème 2] | Oui/Non | [Justification] |

> ⚠️ **Les thèmes de recherche présentent un risque réel :** Dans une étude de cas, les thèmes de recherche PMax ont cannibalisé la campagne Search dédiée. Leur suppression a fait passer la dépense Shopping de 22 % à 70 % et a relancé les performances de Search. N'ajoutez des thèmes de recherche que si vous voulez délibérément que PMax entre en concurrence pour cet inventaire de recherche.

**Résultat de la phase 3 :** Configuration des thèmes de recherche documentée avec évaluation du risque de cannibalisation.

**Vérification :** Tableau de décision des thèmes de recherche documenté avec justification, et aucun thème ne duplique les mots-clés de campagnes Search actives.

---

### Phase 4️⃣ : Définir les exclusions et valider

**Objectif :** Configurer les exclusions et dérouler la checklist qualité.

#### Étape 4.1 : Définir les exclusions d'audience

| Exclusion | Quand l'appliquer | Comment la configurer |
|-----------|--------------|-----------------|
| Convertisseurs récents | Toujours (sauf cycle d'achat court) | Excluez le segment de convertisseurs (fenêtre de 7-30 jours) au niveau campagne |
| Clients existants | Campagnes d'acquisition de nouveaux clients | Excluez la liste Customer Match au niveau campagne |
| Mots-clés de marque | Protection de la campagne Search | Ajoutez les termes de marque comme mots-clés à exclure au niveau campagne |

1. Naviguez vers les paramètres au niveau campagne → **Audience exclusions**
2. Ajoutez les segments d'exclusion pertinents
3. Vérifiez que les exclusions sont appliquées au niveau campagne (pas seulement au groupe de composants)

#### Étape 4.2 : Dérouler la checklist de validation

Déroulez la [Audience Signal Quality Checklist](<Audiences - [Review] Qualité des signaux d'audience.md>). Corrigez tout point en échec avant le lancement.

#### Étape 4.3 : Documenter la configuration finale

| Groupe de composants | Types de signaux utilisés | Thèmes de recherche | Exclusions | Checklist validée |
|------------|------------------|---------------|------------|-----------------|
| [Nom] | [Lister les types] | [Oui/Non + nombre] | [Lister les exclusions] | ☐ |

**Résultat de la phase 4 :** Exclusions configurées, checklist qualité validée, configuration documentée.

**Vérification :** Exclusions appliquées au niveau campagne (pas au groupe de composants), la Audience Signal Quality Checklist est validée, et le tableau de configuration finale est complété.

---

### Validation et critères de complétion

Cette SOP est terminée quand :

- [ ] Tous les signaux de niveau 1-2 disponibles sont configurés
- [ ] Au moins un segment personnalisé de niveau 3 est ajouté
- [ ] Les thèmes de recherche ne sont configurés que là où le risque de cannibalisation est accepté
- [ ] Les exclusions sont définies au niveau campagne
- [ ] La [Audience Signal Quality Checklist](<Audiences - [Review] Qualité des signaux d'audience.md>) est validée

---

### Passerelle de sortie

| Après avoir complété cette SOP... | Rediriger vers... |
|-----------------------------|-------------|
| Besoin de créer une liste Customer Match | [SOP - Construire des listes Customer Match](<Audiences - Construire des listes Customer Match.md>) |
| Prêt à étendre la couverture d'audience | [Expand Audience Reach](<Audiences - Étendre la portée d'audience.md>) |
| Besoin de configurer le ciblage Display/Video/DG | [SOP - Configurer le ciblage par audience](<Audiences - Configurer le ciblage par audience.md>) |

---

### FAQ

**Q : Combien de signaux dois-je ajouter par groupe de composants ?**
R : Visez au minimum 5-7 types de signaux. Voir [Audience Strategy Mental Model](<Audiences - Stratégie d'audience.md>) pour la logique de superposition des signaux.

**Q : Les signaux limitent-ils qui voit mes annonces ?**
R : Non, les signaux sont des indications, pas des contrôles de ciblage. Voir [Audience Strategy Mental Model](<Audiences - Stratégie d'audience.md>) pour la distinction entre signal et ciblage.

**Q : Dois-je utiliser les mêmes signaux pour chaque groupe de composants ?**
R : Non, personnalisez les signaux selon le thème de chaque groupe de composants. Voir [Audience Signal Catalog](<Audiences - Signaux d'audience.md>) pour des exemples par secteur.

**Q : Quand dois-je supprimer les thèmes de recherche ?**
R : Supprimez les thèmes de recherche si PMax cannibalise les impressions ou la part de votre campagne Search.

---

### Référence rapide

| Document | Type | Utilisé pour |
|----------|------|---------|
| [Audience Signal Catalog](<Audiences - Signaux d'audience.md>) | Catalogue | Sélection des types de signaux et exemples |
| [Audience Signals Reference](<Audiences - Signaux d'audience.md>) | Référence | Spécifications, limites et hiérarchie des signaux |
| [Audience Signal Quality Checklist](<Audiences - [Review] Qualité des signaux d'audience.md>) | Checklist | Validation finale |
| [Audience Strategy Mental Model](<Audiences - Stratégie d'audience.md>) | Modèle mental | Cadre conceptuel |

---

### Erreurs fréquentes

| Erreur | Pourquoi ça arrive | Comment l'éviter |
|---------|---------------|--------------|
| Utiliser uniquement les données démographiques comme signaux | Mauvaise compréhension de la hiérarchie des signaux | Toujours commencer par les données first-party de niveau 1-2 |
| Entasser plus de 100 mots-clés dans les segments personnalisés | Croire que « plus = mieux » | N'utiliser que 10-15 termes les plus convertissants |
| Ajouter des thèmes de recherche tout en diffusant des campagnes Search | Ne pas comprendre le risque de cannibalisation | Vérifier la présence de campagnes Search actives avant d'ajouter des thèmes |
| Ne pas définir d'exclusions | Oublier la configuration des exclusions | Toujours configurer les exclusions en phase 4 |
| Copier des signaux identiques d'un groupe de composants à l'autre | Raccourci pour gagner du temps | Personnaliser les signaux selon le thème de chaque groupe de composants |
| Ignorer Customer Match parce que la liste est « trop petite » | Perfectionnisme | Importez ce que vous avez, même 1 000 utilisateurs aident |
