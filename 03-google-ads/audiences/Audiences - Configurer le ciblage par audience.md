# Configurer le ciblage par audience

> **Plateforme :** Google Ads
> **Catégorie :** Audiences
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Exécution

### Phase 1️⃣ : Définir l'objectif de ciblage et choisir l'approche

**Objectif :** Déterminer la stratégie d'audience de la campagne selon son objectif.

#### Étape 1.1 : Classer l'objectif de campagne

| Objectif de campagne | Types de segments principaux | Mode de ciblage | Ciblage optimisé |
|--------------|----------------------|----------------|-------------------|
| **Remarketing** | Visiteurs du site, Customer Match | Targeting | OFF |
| **Prospection** | Segments personnalisés, sur le marché, audiences similaires | Targeting | Tester ON/OFF |
| **Notoriété de marque** | Affinité, sur le marché large, événements de vie | Targeting | ON |
| **Collecte de données** | N'importe quel segment | Observation | N/A |

#### Étape 1.2 : Choisir l'approche par température

| Objectif | Focus de température | Types de segments |
|------|------------------|---------------|
| Remarketing | 🔥 Chaud + 🌡️ Tiède | Abandonnistes de panier/formulaire, visiteurs produit, tous les visiteurs, Customer Match |
| Prospection | ❄️ Frais + ❄️ Froid | Segments personnalisés, sur le marché, audiences similaires |
| Notoriété | ❄️ Froid + 🧊 Le plus froid | Affinité, événements de vie, sur le marché large |

**Résultat de la phase 1 :** Objectif de campagne classé, approche par température choisie.

---

### Phase 2️⃣ : Construire l'empilement d'audiences

**Objectif :** Sélectionner et configurer les bons segments d'audience à partir du catalogue.

#### Étape 2.1 : Sélectionner les segments d'audience principaux

Aller dans votre campagne → **Audiences, keywords, and content → Audiences → Edit audience segments**.

Pour les campagnes de remarketing :

1. Sélectionnez l'onglet **Your data**
2. Ajoutez les segments de visiteurs du site correspondant à votre objectif :
   - Abandonnistes de panier/formulaire (fenêtre de 7-14 jours) pour la récupération
   - Visiteurs des pages produit/service (14-30 jours) pour le ré-engagement
   - Tous les visiteurs (30-90 jours) pour un remarketing large
3. Ajoutez les segments Customer Match si disponibles

Pour les campagnes de prospection :

1. Sélectionnez l'onglet **Custom segments**
2. Ajoutez ou créez des segments personnalisés :
   - Segment de termes de recherche (10-15 requêtes convertissantes)
   - Segment d'URL (10-15 URL de concurrents/du secteur)
3. Sélectionnez l'onglet **In-market**
4. Ajoutez 1-3 catégories sur le marché pertinentes
5. Pour Demand Gen : ajoutez des segments d'audience similaire basés sur des listes sources à forte valeur

Pour les campagnes de notoriété :

1. Sélectionnez l'onglet **Affinity**, ajoutez les catégories d'affinité pertinentes
2. Sélectionnez l'onglet **Life events**, ajoutez les déclencheurs pertinents
3. Sélectionnez l'onglet **In-market**, ajoutez des segments de catégories larges

→ Pour des exemples de segments par secteur : voir [Audience Segment Catalog](<Audiences - Segments d'audience.md>)

> ↪️ **Parcourir les noms de segments :** Voir [Audience Segments Reference](<Audiences - Segments d'audience.md>) pour la liste complète des segments sur le marché, d'affinité et d'événements de vie disponibles dans Google Ads.

#### Étape 2.2 : Envisager les segments combinés

Si vous avez besoin d'un ciblage plus précis, créez des segments combinés :

1. Naviguez vers **Audience Manager → Combined segments → New combined segment**
2. Utilisez la logique ET pour superposer les segments : ex. Sur le marché (logiciel CRM) ET Segment personnalisé (mots-clés CRM)
3. Utilisez la logique NON pour exclure : ex. ET NON clients existants

#### Étape 2.3 : Configurer les audiences similaires Demand Gen (le cas échéant)

1. Naviguez vers campagne → Audiences → Lookalike segments
2. Sélectionnez la liste source (utilisez la meilleure qualité : convertisseurs, clients à forte LTV)
3. Définissez la couverture : Narrow (efficacité) / Balanced (par défaut) / Broad (échelle)
4. Vérifiez que la liste source compte 1 000+ utilisateurs matchés

**Résultat de la phase 2 :** Tous les segments d'audience sélectionnés et ajoutés à la campagne.

---

### Phase 3️⃣ : Configurer le mode de ciblage et les paramètres d'expansion

**Objectif :** Définir le bon mode de ciblage et les paramètres de ciblage optimisé/d'expansion.

#### Étape 3.1 : Définir le mode de ciblage (Display/Video uniquement)

| Mode | Effet | Quand l'utiliser |
|------|--------|-------------|
| **Targeting** | Restreint la diffusion aux audiences sélectionnées | Remarketing, prospection axée conversions |
| **Observation** | Diffuse largement, collecte des données d'audience | Collecte de données, phase d'apprentissage |

1. Dans votre groupe d'annonces → Audiences → Settings
2. Sélectionnez **Targeting** ou **Observation**
3. Vérifiez que le paramètre est correct pour chaque groupe d'annonces

#### Étape 3.2 : Configurer le ciblage optimisé

| Objectif de campagne | Ciblage optimisé | Justification |
|--------------|-------------------|-----------|
| Remarketing (strict) | OFF | Préserver la restriction d'audience |
| Prospection (conversions) | ON | Laisser Google trouver des convertisseurs supplémentaires |
| Notoriété de marque | ON | Maximiser la couverture qualifiée |

1. Naviguez vers les paramètres du groupe d'annonces → Optimized targeting
2. Activez (ON) ou désactivez (OFF) selon le tableau ci-dessus
3. Si ON : fournissez vos segments d'audience comme « indications », Google trouvera des utilisateurs similaires

> ⚠️ **Le ciblage optimisé prime sur vos sélections :** Une fois activé, Google peut réduire ou cesser la diffusion vers vos audiences sélectionnées s'il trouve ailleurs des utilisateurs plus performants. Laissez-le sur OFF quand la précision d'audience compte plus que le volume.

#### Étape 3.3 : Configurer l'expansion d'audience (Video uniquement)

Pour les campagnes Video avec des objectifs de considération de marque ou de notoriété :

1. Naviguez vers les paramètres du groupe d'annonces → Audience expansion
2. Définissez le niveau d'expansion selon vos objectifs de couverture
3. L'expansion trouve des utilisateurs similaires à votre audience sélectionnée : plus large que le ciblage, plus étroit que l'absence d'audience

#### Étape 3.4 : Vérifier l'expansion démographique Demand Gen

Pour les campagnes Demand Gen :

1. Vérifiez si l'expansion démographique est activée (peut primer sur vos sélections démographiques)
2. Ne restreignez à l'âge/au genre que si la précision démographique est critique (peut limiter les performances)

**Résultat de la phase 3 :** Mode de ciblage et paramètres d'expansion configurés pour chaque groupe d'annonces.

---

### Phase 4️⃣ : Définir les exclusions et valider

**Objectif :** Configurer les exclusions et dérouler la checklist qualité.

#### Étape 4.1 : Définir les exclusions d'audience

| Exclusion | Quand l'appliquer | Configuration |
|-----------|--------------|---------------|
| Convertisseurs récents | Campagnes de remarketing | Exclure le segment de convertisseurs (fenêtre de 7-30 jours) |
| Clients existants | Acquisition de nouveaux clients | Exclure Customer Match (tous les clients) |
| Visiteurs actuels | Campagnes de prospection uniquement | Exclure le segment de tous les visiteurs du site |

1. Naviguez vers campagne → Audiences → Exclusions
2. Ajoutez les segments d'exclusion pertinents
3. Vérifiez que les exclusions n'entrent pas en conflit avec le ciblage (ex. ne pas exclure l'audience que vous ciblez)

#### Étape 4.2 : Définir les exclusions de contenu (Display/Video uniquement)

1. Naviguez vers campagne → Content → Exclusions
2. Excluez les catégories à risque pour la sécurité de la marque :
   - Sujets de société sensibles
   - Tragédies et conflits
   - Contenu pour adultes (sauf si pertinent)
3. Excluez les emplacements non pertinents (sites/apps de faible qualité connus)

#### Étape 4.3 : Définir la limitation de la répétition (Display/Video uniquement)

1. Naviguez vers les paramètres de campagne → Frequency capping
2. Définissez des plafonds d'impressions selon le type de campagne :
   - Remarketing : 3-5 impressions par utilisateur par jour
   - Prospection : 2-3 impressions par utilisateur par jour
   - Notoriété : 1-2 impressions par utilisateur par jour

#### Étape 4.4 : Dérouler la checklist de validation

Déroulez la [Audience Targeting Launch Checklist](<Audiences - [Review] Lancement du ciblage par audience.md>). Corrigez tout point en échec avant le lancement.

#### Étape 4.5 : Documenter la configuration finale

| Groupe d'annonces | Segments | Mode | Ciblage optimisé | Exclusions | Checklist validée |
|----------|----------|------|--------------------| -----------|-----------------|
| [Nom] | [Lister les types] | Targeting/Observation | ON/OFF | [Lister les exclusions] | ☐ |

**Résultat de la phase 4 :** Exclusions configurées, plafonds de répétition définis, checklist qualité validée, configuration documentée.

---

### Validation et critères de complétion

Cette SOP est terminée quand :

- [ ] Les segments d'audience correspondent à l'objectif de campagne (remarketing/prospection/notoriété)
- [ ] Le mode de ciblage est défini correctement (Targeting ou Observation)
- [ ] Le ciblage optimisé est ON ou OFF selon l'objectif
- [ ] Les exclusions sont configurées (convertisseurs, clients, contenu)
- [ ] La limitation de la répétition est définie (Display/Video)
- [ ] La [Audience Targeting Launch Checklist](<Audiences - [Review] Lancement du ciblage par audience.md>) est validée

---

### Passerelle de sortie

| Après avoir complété cette SOP... | Rediriger vers... |
|-----------------------------|-------------|
| Besoin de créer une liste Customer Match | [SOP - Construire des listes Customer Match](<Audiences - Construire des listes Customer Match.md>) |
| Besoin de configurer plutôt des signaux PMax | [SOP - Configurer les signaux d'audience](<Audiences - Configurer les signaux d'audience.md>) |
| Prêt à étendre la couverture d'audience | [Expand Audience Reach](<Audiences - Étendre la portée d'audience.md>) |

---

### FAQ

**Q : Dois-je utiliser le mode Targeting ou Observation ?**
R : Utilisez Targeting quand vous savez qui vous voulez toucher (remarketing, prospection ciblée). Utilisez Observation quand vous voulez découvrir quelles audiences performent le mieux sans restreindre la diffusion.

**Q : Dois-je activer le ciblage optimisé ?**
R : ON pour les campagnes de prospection et de notoriété où vous voulez que Google trouve des convertisseurs supplémentaires. OFF pour les campagnes de remarketing où vous avez besoin d'un contrôle strict de l'audience.

**Q : Combien de segments d'audience dois-je ajouter par groupe d'annonces ?**
R : Pour le remarketing, 1-3 segments spécifiques. Pour la prospection, 2-5 segments répartis entre les types. Évitez d'en ajouter trop : cela dilue la clarté du ciblage et complique l'analyse des performances.

**Q : Puis-je utiliser la même audience sur plusieurs campagnes ?**
R : Oui, mais définissez des exclusions différentes par campagne pour éviter le chevauchement. Les campagnes de remarketing et de prospection doivent avoir des audiences mutuellement exclusives.

---

### Référence rapide

| Document | Type | Utilisé pour |
|----------|------|---------|
| [Audience Segment Catalog](<Audiences - Segments d'audience.md>) | Catalogue | Sélection des segments et exemples |
| [Audience Targeting Reference](<Audiences - Signaux d'audience.md>) | Référence | Spécifications, modes et limites de ciblage |
| [Audience Targeting Launch Checklist](<Audiences - [Review] Lancement du ciblage par audience.md>) | Checklist | Validation finale |
| [Audience Strategy Mental Model](<Audiences - Stratégie d'audience.md>) | Modèle mental | Cadre conceptuel |

---

### Erreurs fréquentes

| Erreur | Pourquoi ça arrive | Comment l'éviter |
|---------|---------------|--------------|
| Utiliser Observation quand Targeting est nécessaire | Se rabattre sur la suggestion de Google | Définir consciemment le mode selon l'objectif de campagne |
| Laisser le ciblage optimisé sur ON pour le remarketing | Ne pas vérifier les paramètres par défaut | Vérifier le paramètre par groupe d'annonces après la configuration |
| Aucune exclusion configurée | Oubli pendant la configuration | Toujours dérouler la phase 4 avant le lancement |
| Audiences qui se chevauchent entre campagnes | Aucune stratégie d'isolation | Utiliser les exclusions pour séparer remarketing et prospection |
| Liste source d'audience similaire trop petite | Utiliser tous les visiteurs comme source | Alimenter avec des convertisseurs ou des clients à forte valeur (1 000+ minimum) |
| Ajouter tous les segments sur le marché disponibles | Croire que « plus = mieux » | Ne sélectionner que 1-3 catégories les plus pertinentes |
