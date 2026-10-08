# Analyser son audience TikTok Ads

> **Plateforme :** TikTok
> **Catégorie :** Audiences
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Comprendre l'audience cible avant et pendant la diffusion pour construire des hypothèses de ciblage solides, valider ces hypothèses à moindre coût, et structurer un cadre de test rigoureux pour identifier les segments les plus performants.

---

## Ce que cette SOP ne couvre PAS

Cette SOP ne couvre **pas :**

- La création des audiences (custom, audience similaire, intérêts) une fois les hypothèses validées (Voir : [Procédure - Configurer les audiences TikTok Ads](<Audiences - Configurer les audiences.md>))
- La construction d'une audience similaire à partir d'une audience source identifiée (Voir : [Procédure - Créer une audience Lookalike TikTok Ads](<Audiences - Créer une audience similaire.md>))
- La mise en place du retargeting (reciblage) des segments analysés (Voir : [Procédure - Mettre en place le retargeting TikTok Ads](<Audiences - Mettre en place le retargeting.md>))
- L'analyse des performances créatives par segment (Voir : [Procédure - Analyse des créatives TikTok Ads](<../creatives/Creatives - Analyse des créatives.md>))
- L'optimisation post-lancement basée sur les insights (Voir : [Procédure - Optimiser ses campagnes TikTok Ads](<../optimisation/Optimisation - Optimiser ses campagnes.md>))

---

## Vue d'ensemble des outils d'analyse d'audience

| Outil | Accès | Données disponibles | Utilisation principale |
|---|---|---|---|
| **TikTok Audience Insights** (Ads Manager) | Compte Ads actif requis | Démographie, intérêts, comportements de votre audience | Analyse de vos Custom Audiences |
| **TikTok Creative Center — Audience Insights** | Public, sans connexion | Tendances générales par catégorie, pays | Exploration initiale, benchmark marché |
| **TikTok Creative Center — Ads Library** | Public, sans connexion | Publicités en diffusion, Top Ads par industrie | Analyse concurrentielle créative |
| **Google Analytics / GA4** | Compte GA requis | Comportement site, source de trafic | Compléter les données TikTok |
| **Outils tiers (Minea, AdSpy, BigSpy)** | Abonnement payant | Publicités concurrentes, angles créatifs | Recherche concurrentielle avancée |

---

## 1. TikTok Audience Insights — Version Ads Manager

### Accès

**TikTok Ads Manager → Research → Audience Insights**

💡 Disponible uniquement si le compte a déjà diffusé des campagnes. Les données deviennent pertinentes à partir de ~50 000 impressions accumulées.

### Ce que vous pouvez analyser

- **Démographie** : répartition âge/sexe de votre audience actuelle ou d'une Custom Audience spécifique.
- **Intérêts** : les catégories d'intérêts sur-indexées dans votre audience vs l'audience TikTok générale.
- **Comportements** : types de contenu consommés, fréquence d'utilisation.
- **Device & OS** : iOS vs Android, modèles d'appareils — utile pour détecter des biais dans le pixel.

### Workflow recommandé

1. Sélectionner une Custom Audience existante (ex. Acheteurs 90j) comme segment d'analyse.
2. Identifier les intérêts sur-indexés (index > 120 = forte surreprésentation).
3. Comparer avec l'audience "Tous visiteurs site" pour isoler ce qui distingue les acheteurs des simples visiteurs.
4. Utiliser ces insights pour construire les groupes d'intérêts des campagnes de prospection.

---

## 2. TikTok Creative Center — Version publique

### Accès

**ads.tiktok.com/business/creativecenter** — aucune connexion requise.

### Fonctionnalités disponibles

#### Audience Insights (public)
- Données tendancielles sur les comportements des utilisateurs TikTok par pays et catégorie.
- Moins précis que la version Ads Manager (pas de données liées à votre compte), mais utile pour :
  - Comprendre les pics d'activité par tranche d'âge.
  - Identifier quelles industries génèrent le plus d'engagement.

#### Interest & Hashtag Research
- Rechercher un hashtag ou un centre d'intérêt et voir son volume, sa croissance, et les créateurs associés.
- Identifier les hashtags utilisés par votre cible pour trouver des angles créatifs et des intérêts de ciblage.

⚠️ **Limite importante** : les catégories d'intérêts TikTok sont beaucoup moins granulaires que Meta. Là où Meta offre des centaines de micro-intérêts (ex. "yoga prénatal", "trail running", "investissement immobilier locatif"), TikTok propose des catégories larges (ex. "Sport & fitness", "Finance personnelle"). Ne pas chercher la précision Meta — l'algorithme TikTok compense par l'optimisation comportementale.

---

## 3. Analyse concurrentielle

### TikTok Creative Center — Top Ads

**Accès** : Creative Center → Top Ads → filtrer par pays, industrie, objectif.

- Voir les publicités TikTok les plus performantes par secteur.
- Identifier les formats, accroches, durées, et tendances visuelles dominantes.
- Analyser ce qui fonctionne dans votre catégorie avant d'investir en production.

### TikTok Ads Library

**Accès** : library.tiktok.com

- Rechercher les publicités actuellement en diffusion d'un annonceur spécifique.
- Voir la durée de diffusion (une pub diffusée depuis longtemps = elle convertit probablement).
- Identifier les messages et angles de vente de vos concurrents directs.

### Outils tiers

| Outil | Points forts | Limite |
|---|---|---|
| **Minea** | Base TikTok Ads large, filtres e-commerce, produits tendance | Coût élevé |
| **AdSpy** | Historique long, filtres avancés (call-to-action, landing page) | Interface dense |
| **BigSpy** | Multi-plateformes, bon rapport qualité/prix | Moins de données TikTok que les spécialistes |

💡 **Workflow concurrentiel recommandé** : commencer par le Creative Center (gratuit) → si besoin d'aller plus loin, utiliser Minea pour TikTok e-commerce ou AdSpy pour une analyse multi-plateformes.

---

## 4. Validation d'une hypothèse audience avant d'investir en paid

L'erreur classique : dépenser 500–1 000 € sur une audience non validée pour découvrir que le message ne résonne pas.

### Méthode de validation organique

Avant de lancer une campagne payante sur un nouveau segment :

1. **Publier 3 à 5 vidéos organiques** ciblant explicitement le segment (ton, vocabulaire, problème adressé).
2. Observer les métriques organiques sur 48–72h :
   - Taux de complétion > 30 % → le contenu retient l'attention.
   - Taux d'engagement (likes + commentaires + partages / vues) > 5 % → le message résonne.
   - Profil démographique des viewers dans TikTok Analytics → valide-t-il l'hypothèse ?
3. Si les métriques organiques sont positives → lancer la campagne payante avec confiance.
4. Si les métriques sont faibles → ajuster l'angle avant de dépenser en paid.

↪️ Cette approche est particulièrement pertinente pour les nouveaux marchés ou nouveaux produits où vous n'avez pas encore de données de conversion.

---

## 5. Tailles d'audience recommandées

TikTok recommande des audiences larges pour maximiser la capacité d'optimisation algorithmique.

| Type de ciblage | Taille minimale recommandée | Remarque |
|---|---|---|
| **Broad (sans intérêts)** | 1 M+ | TikTok peut optimiser librement |
| **Par intérêts** | 500 K+ | En dessous, saturation et CPM élevés |
| **Lookalike Balanced** | 500 K+ | Voir la SOP Lookalike |
| **Retargeting** | 10 K – 500 K | Budget proportionnel à la taille |

⚠️ **Sur les marchés étroits (France, Belgique, Suisse)**, ces seuils sont difficiles à atteindre avec des intérêts précis. Préférer le ciblage Broad ou Lookalike Broad, et laisser l'algorithme TikTok identifier les sous-segments performants.

---

## 6. Cadre de test d'audiences

### Principes

- Ne jamais modifier un ad group en cours de test — recréer un nouveau groupe si besoin.
- Un seul élément testé à la fois (audience OU créatif, pas les deux simultanément).
- Budget minimum par variant pour sortir de la phase d'apprentissage.

### Structure de test recommandée

| Variable | Recommandation |
|---|---|
| **Nombre d'audiences à tester simultanément** | 2 à 4 maximum (par campagne) |
| **Budget par variant** | 20–50 €/jour minimum |
| **Durée avant décision** | 7–14 jours (ou 50+ conversions par variant) |
| **KPI de décision principal** | CPA ou ROAS (selon objectif) |
| **KPI secondaire** | CPM, CTR, taux de complétion vidéo |

### Tableau de décision post-test

| Résultat | Action |
|---|---|
| Variant A CPA < Variant B de > 20 % | Couper B, scaler A progressivement (+20 % budget/semaine) |
| Variants proches (< 15 % d'écart) | Prolonger le test 7 jours supplémentaires ou augmenter le budget |
| Les deux variants sous-performent | Problème de créatif ou d'offre — tester de nouveaux angles avant de retester les audiences |
| Un variant brûle le budget sans conversion | Vérifier le pixel, l'événement d'optimisation, et l'URL de destination |

💡 **Phase d'apprentissage TikTok** : TikTok a besoin d'environ **50 événements d'optimisation** par ad group pour sortir de la phase d'apprentissage. Avant ce seuil, les résultats sont instables. Ne pas prendre de décision trop tôt.

---

## 7. Définir l'audience idéale — Buyer Persona opérationnel

Au-delà des données plateforme, construire un persona actionnable nécessite de croiser plusieurs sources :

| Source de données | Ce qu'elle apporte | Limite |
|---|---|---|
| TikTok Audience Insights | Comportements et intérêts sur TikTok | Limité aux données TikTok |
| Google Analytics / GA4 | Parcours site, pages vues, durée session | Pas de données créatives |
| Données CRM | LTV, fréquence d'achat, segment RFM | Nécessite un CRM structuré |
| Interviews clients (5–10) | Motivations profondes, vocabulaire exact | Non scalable mais très qualitatif |
| Commentaires TikTok & avis produit | Langage naturel, objections, désirs | Manuel mais très puissant pour les accroches |

### Variables essentielles du persona pour TikTok Ads

| Variable | Questions à poser |
|---|---|
| **Déclencheur d'achat** | Quel événement ou frustration les pousse à chercher une solution ? |
| **Objection principale** | Qu'est-ce qui les empêche d'acheter immédiatement ? |
| **Format de contenu préféré** | Tutoriel ? Témoignage ? Transformation avant/après ? Humour ? |
| **Moment de connexion** | Matin, soir, week-end ? (impact sur les horaires de diffusion) |
| **Device** | iOS ou Android dominant ? (impact sur le pixel et les audiences) |

---

## Références croisées

- [Configurer les audiences TikTok Ads](<Audiences - Configurer les audiences.md>)
- [Créer une audience Lookalike TikTok Ads](<Audiences - Créer une audience similaire.md>)
- [Structurer ses campagnes TikTok Ads](<../lancement/Lancement - Structurer ses campagnes.md>)
