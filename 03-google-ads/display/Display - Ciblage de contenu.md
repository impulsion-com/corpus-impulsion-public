# Ciblage de contenu

> **Plateforme :** Google Ads
> **Catégorie :** Display
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Documente les options de ciblage de contenu (emplacements, thèmes, keywords) et les exclusions de contenu pour les campagnes Display et Vidéo, couvrant OÙ les annonces apparaissent plutôt que QUI les voit.

---

## Ce que couvre cette fiche / Ce qu'elle ne couvre PAS

**Cette fiche :**

- Documente les types et formats de ciblage par emplacement
- Explique le ciblage de contenu par thème et keyword
- Explique les types d'exclusion de contenu (paramètres recommandés dans [Content Exclusion Guidelines](<Display - Exclusions de contenu.md>))
- Couvre les contrôles de contenu des campagnes Display et Vidéo

**Cette fiche ne couvre PAS :**

- Couvrir le ciblage d'audience (Voir : [Audience Targeting Reference](<../audiences/Audiences - Signaux d'audience.md>))
- Expliquer les signaux d'audience pour PMax (Voir : [Audience Signals Reference](<../audiences/Audiences - Signaux d'audience.md>))
- Fournir les étapes de configuration de campagne (Voir : [SOP - Lancer une campagne Display](<Display - Lancer une campagne.md>))
- Couvrir Demand Gen (Demand Gen ne supporte pas le ciblage de contenu)

---

## Aide-mémoire : types de ciblage de contenu

| **Type** | **Ce qu'il contrôle** | **Disponible dans** | **Précision** |
|----------|---------------------|------------------|---------------|
| **Emplacements** | Sites, apps, chaînes/vidéos YouTube spécifiques | Display, Vidéo | La plus élevée |
| **Thèmes** | Catégories de contenu prédéfinies par Google | Display, Vidéo | Moyenne |
| **Keywords** | Pages contenant des termes spécifiques | Display, Vidéo | Moyenne-Basse |
| **Exclusions de contenu** | Catégories, labels, types à éviter | Display, Vidéo | N/A (exclusion) |

> ⚠️ **Ciblage de contenu ≠ Ciblage d'audience :** Le ciblage de contenu contrôle OÙ les annonces apparaissent. Le ciblage d'audience contrôle QUI les voit. Ils peuvent être combinés (logique ET) ou utilisés indépendamment.

---

## 1️⃣ Ciblage par emplacement

### Ce que ça fait

Restreint la diffusion des annonces à des sites web, apps, chaînes YouTube ou vidéos YouTube individuelles spécifiques que vous sélectionnez.

> 💡 **Emplacements = contrôle maximum :** Vous décidez exactement où vos annonces apparaissent. Le compromis est une portée limitée : vous n'obtenez des impressions que de vos emplacements sélectionnés.

### Types d'emplacements

| **Type** | **Format** | **Exemple** | **Disponible dans** |
|----------|------------|-------------|------------------|
| Site web | Domaine ou URL | `nytimes.com` ou `nytimes.com/section/business` | Display |
| Chaîne YouTube | URL de chaîne | `youtube.com/c/nomdelachaine` | Vidéo |
| Vidéo YouTube | URL de vidéo | `youtube.com/watch?v=VIDEO_ID` | Vidéo |
| App mobile | Nom de l'app ou ID du package | `com.spotify.music` | Display |
| Catégorie d'app | Sélection de catégorie | Jeux > Puzzle | Display |

### Syntaxe des emplacements

| **Syntaxe** | **Comportement** | **Exemple** |
|------------|--------------|-------------|
| `domain.com` | Toutes les pages du domaine | `forbes.com` |
| `domain.com/chemin` | Section spécifique uniquement | `forbes.com/technology` |
| `youtube.com/c/nom` | Chaîne entière | `youtube.com/c/mkbhd` |
| `youtube.com/watch?v=ID` | Vidéo unique | `youtube.com/watch?v=abc123` |

### Limites des emplacements

| **Élément** | **Limite** |
|-------------|-----------|
| Emplacements par ad group | 10 000 maximum |
| Recommandé par ad group | 20-50 pour la gérabilité |
| Minimum pour une portée significative | 10+ emplacements à fort trafic |

### Trouver des emplacements

| **Méthode** | **Comment** | **Idéal pour** |
|------------|---------|--------------|
| Rapport d'emplacements | Rapports > Où les annonces ont été diffusées > Emplacements | Trouver de nouveaux emplacements à partir de l'automatique |
| Recherche manuelle | Sites du secteur, analyse concurrentielle | Campagnes à fort contrôle |
| Planificateur Display | Outils > Planificateur Display | Découvrir la portée par emplacement |
| Recherche YouTube | Rechercher des termes pertinents sur YouTube | Découverte d'emplacements vidéo |

### Bonnes pratiques des emplacements

| **À faire** | **À ne pas faire** |
|--------|-----------|
| Commencer avec 20-50 emplacements pertinents | Ajouter des milliers sans vérification |
| Revoir les rapports d'emplacements chaque semaine | Configurer et oublier |
| Exclure les mauvaises performances | Garder tous les emplacements indéfiniment |
| Grouper les emplacements similaires dans des ad groups | Mélanger des emplacements sans rapport |
| Tester les emplacements automatiques dans une campagne séparée | Supposer que le manuel est toujours meilleur |

### Quand utiliser les emplacements

| **Utiliser les emplacements quand** | **Éviter les emplacements quand** |
|------------------------|--------------------------|
| La sécurité de la marque est critique | Vous avez besoin de portée maximale |
| Vous savez où se trouve votre audience | Vous testez de nouvelles audiences |
| Le positionnement premium compte | Le budget est limité |
| Campagnes de sponsoring/takeover | Campagnes en phase d'apprentissage |

---

## 2️⃣ Ciblage par thème

### Ce que ça fait

Montre les annonces sur les pages que Google classifie dans les catégories de thèmes que vous sélectionnez. Google utilise le contenu de la page, l'URL et la structure des liens pour déterminer la classification par thème.

### Structure des thèmes

Les thèmes sont organisés hiérarchiquement :

```
Catégorie de premier niveau
└── Sous-catégorie
    └── Sous-sous-catégorie
```

**Exemple :**
```
Maison et jardin
└── Amélioration de l'habitat
    └── Plomberie
```

### Règles de sélection des thèmes

| **Règle** | **Détails** |
|----------|-------------|
| Sélectionner le parent inclut les enfants | "Maison et jardin" inclut toutes les sous-catégories |
| Plusieurs thèmes = logique OU | Les annonces s'affichent sur les pages correspondant à N'IMPORTE QUEL thème sélectionné |
| Thème + Audience = logique ET | Utilisateurs dans l'audience SUR les pages du thème |
| Thèmes disponibles | ~2 700 catégories prédéfinies |

### Ciblage par thème par secteur

| **Secteur** | **Thèmes pertinents** |
|--------------|---------------------|
| **Ecommerce** | Shopping, Catégories de produits, Style de vie |
| **Lead Gen** | Business et industrie, Services professionnels |
| **SaaS** | Informatique et électronique, Logiciels professionnels |
| **Local** | Local, Immobilier, Automobile |

### Bonnes pratiques des thèmes

| **À faire** | **À ne pas faire** |
|--------|-----------|
| Commencer avec 3-5 thèmes pertinents | Sélectionner 50+ thèmes (trop large) |
| Utiliser les sous-catégories pour la précision | Se fier uniquement aux catégories de premier niveau |
| Combiner avec le ciblage d'audience | Utiliser les thèmes seuls pour les conversions |
| Revoir les rapports d'emplacements | Supposer que tous les emplacements thématiques sont pertinents |

### Quand utiliser les thèmes

| **Utiliser les thèmes quand** | **Éviter les thèmes quand** |
|--------------------|----------------------|
| Vous voulez de la pertinence contextuelle | La précision est critique |
| L'audience est inconnue mais le contexte est clair | Vous avez de fortes données first-party |
| Campagnes de notoriété | Réponse directe avec objectifs serrés |
| En complément du ciblage d'audience | Comme seule méthode de ciblage |

---

## 3️⃣ Ciblage par keyword (contenu)

### Ce que ça fait

Montre les annonces sur les pages contenant vos keywords spécifiés. Google scanne le contenu de la page et fait la correspondance avec vos keywords en utilisant une correspondance contextuelle large.

> ⚠️ **Keywords de contenu ≠ Keywords Search :** Ils correspondent au contenu de la page, pas aux requêtes de recherche de l'utilisateur. La correspondance est large et contextuelle : les résultats peuvent être imprévisibles.

### Syntaxe des keywords

| **Saisie** | **Comportement de correspondance** |
|-----------|----------------------|
| `chaussures course` | Pages sur la course, les chaussures, l'athlétisme |
| `"chaussures course"` | Guillemets ignorés : toujours correspondance large |
| `nike chaussures course` | Pages sur Nike, la course, les chaussures |

### Limites des keywords

| **Élément** | **Limite** |
|-------------|-----------|
| Keywords par ad group | Pas de limite stricte |
| Recommandé par ad group | 5-20 keywords |
| Minimum pour la portée | 5+ termes liés |

### Bonnes pratiques des keywords de contenu

| **À faire** | **À ne pas faire** |
|--------|-----------|
| Utiliser des thèmes de keywords liés | Mélanger des keywords sans rapport |
| Inclure les termes de marque (contextuel) | S'attendre à un comportement de correspondance exacte |
| Revoir où les annonces ont été diffusées | Supposer que keywords = emplacements |
| Combiner avec d'autres ciblages | Utiliser les keywords seuls |

### Quand utiliser les keywords de contenu

| **Utiliser les keywords de contenu quand** | **Éviter les keywords de contenu quand** |
|------------------------------|--------------------------------|
| Tester la pertinence contextuelle | La précision est critique |
| Les thèmes sont trop larges | Vous avez besoin d'emplacements prévisibles |
| En complément d'autres ciblages | Comme méthode de ciblage principale |
| Thèmes de niche pas dans la taxonomie Google | Campagnes à enjeux élevés |

---

## 4️⃣ Exclusions de contenu

### Ce qu'elles font

Empêchent les annonces d'apparaître sur des types de contenu, catégories ou emplacements individuels spécifiques. Les exclusions supplantent les inclusions.

### Types d'exclusion

| **Type** | **Ce qu'il exclut** | **Niveau** |
|----------|---------------------|-----------|
| **Exclusions d'emplacement** | Sites/apps/chaînes spécifiques | Ad group, Campagne, Compte |
| **Exclusions de thème** | Catégories de contenu | Ad group, Campagne |
| **Exclusions de keyword** | Pages avec des termes spécifiques | Ad group, Campagne |
| **Pertinence du contenu** | Catégories de contenu sensible | Compte |
| **Type d'inventaire** | Standard/Limité/Étendu | Campagne |

### Paramètres de pertinence du contenu (niveau compte)

| **Catégorie** | **Défaut** | **Recommandation** |
|--------------|-------------|-------------------|
| Tragédie et conflit | Exclu | Garder exclu |
| Questions sociales sensibles | Exclu | Garder exclu |
| Langage grossier | Inclus | Exclure pour la plupart des marques |
| Contenu à caractère sexuel | Exclu | Garder exclu |
| Sensationnel et choquant | Exclu | Garder exclu |

### Type d'inventaire (campagnes vidéo)

| **Type** | **Contenu inclus** | **Recommandation** |
|----------|---------------------|-------------------|
| **Étendu** | Tout le contenu monétisable | Éviter (inclut du sensible) |
| **Standard** | Exclut la plupart du sensible | Défaut pour la plupart |
| **Limité** | Uniquement le contenu vérifié | Marques premium, exigences strictes |

### Labels de contenu numérique

| **Label** | **Type de contenu** | **Action** |
|-----------|-----------------|-----------|
| DL-G | Public général | Inclure |
| DL-PG | Accompagnement parental | Inclure (généralement) |
| DL-T | Adolescents | Évaluer selon la marque |
| DL-MA | Public mature | Exclure (généralement) |
| Non encore labélisé | Non classifié | Exclure par sécurité |

### Exclusions obligatoires (toutes les campagnes)

| **Exclusion** | **Pourquoi** |
|---------------|---------|
| Domaines garés | Pas de vrai contenu, dépense gaspillée |
| Pages d'erreur | Pas de vrai contenu |
| Applications mobiles (sauf si campagne app) | Clics accidentels, faible intention |
| Contenu pour enfants | Restrictions légales (COPPA) |
| Sites MFA (faits pour la publicité) | Qualité basse, trafic bot |

### Configuration des exclusions

| **Niveau** | **Portée** | **Utiliser pour** |
|-----------|-----------|-------------|
| **Compte** | Toutes les campagnes | Sécurité de la marque, règles universelles |
| **Campagne** | Tous les ad groups de la campagne | Exclusions spécifiques à la campagne |
| **Ad group** | Un seul ad group | Contrôle granulaire |

### Bonnes pratiques des exclusions

| **À faire** | **À ne pas faire** |
|--------|-----------|
| Définir d'abord la sécurité de la marque au niveau compte | Démarrer sans exclusions |
| Revoir les rapports d'emplacements pour les mauvaises performances | Tout exclure préventivement |
| Construire les listes d'exclusion au fil du temps | Créer des listes massives dès le premier jour |
| Partager les listes d'exclusion entre campagnes | Recréer les listes par campagne |
| Exclure les concurrents (si la politique le permet) | Violer les politiques de Google |

---

## Combiner ciblage de contenu et audiences

### Règles logiques

| **Combinaison** | **Logique** | **Effet** |
|-----------------|-----------|-----------|
| Thème A + Thème B | OU | Pages dans l'un ou l'autre thème |
| Emplacement A + Emplacement B | OU | L'un ou l'autre emplacement |
| Audience + Thème | ET | Membres de l'audience SUR les pages du thème |
| Audience + Emplacement | ET | Membres de l'audience SUR ces emplacements |

### Stratégies de combinaison

| **Objectif** | **Stratégie** | **Portée attendue** |
|----------|--------------|-------------------|
| Portée maximale | Audience OU Contenu (pas les deux) | La plus élevée |
| Boost contextuel | Audience + Thèmes | Moyenne |
| Précision maximale | Audience + Emplacements | La plus basse |

> 💡 **La logique ET restreint significativement la portée :** Chaque couche que vous ajoutez réduit les impressions éligibles. N'utilisez que quand la précision justifie un volume plus faible.

---

## Guide de décision : quel ciblage de contenu ?

```
Savez-vous exactement où vous voulez apparaître ?
│
├─ OUI → Utilisez les EMPLACEMENTS
│        └─ Construisez une liste de 20-50 sites/chaînes vérifiés
│
└─ NON → Votre produit est-il lié à des thèmes de contenu spécifiques ?
         │
         ├─ OUI → Utilisez les THÈMES
         │        └─ Sélectionnez 3-5 catégories de thèmes pertinentes
         │
         └─ NON → Avez-vous des termes de niche absents de la taxonomie thématique ?
                  │
                  ├─ OUI → Utilisez les KEYWORDS (contenu)
                  │        └─ Ajoutez 5-20 termes liés
                  │
                  └─ NON → Passez le ciblage de contenu
                          └─ Utilisez le ciblage d'audience à la place
```

---

## Le ciblage de contenu comme levier d'expansion

Si vos campagnes Display ou Vidéo n'utilisent actuellement que le ciblage d'audience sans ciblage de contenu, le ciblage de contenu est un levier d'optimisation inexploité. Ajouter des signaux contextuels peut améliorer la pertinence et ouvrir de l'inventaire nouveau.

### Quand tester le ciblage de contenu

| État actuel | Recommandation |
| --- | --- |
| Uniquement ciblage d'audience, performance stable | Testez l'ajout de 3-5 catégories de thèmes dans un ad group séparé |
| Ciblage d'audience avec bon CPA mais faible volume | Le ciblage de contenu peut débloquer de l'inventaire supplémentaire |
| Audiences larges avec CPA élevé | Superposez des thèmes ou emplacements avec la logique ET pour augmenter la précision |
| Ciblage de contenu déjà en place | Revoyez la performance, supprimez les thèmes/keywords zéro conversion après 30+ jours |

### Approche de test

1. Créez un ad group de test dans la campagne existante
2. Appliquez les mêmes segments d'audience que l'ad group de contrôle
3. Ajoutez 3-5 catégories de thèmes pertinentes en logique ET (audience + contenu)
4. Définissez la même stratégie d'enchères et laissez les deux ad groups tourner pendant 30 jours
5. Comparez le CPA/ROAS entre l'ad group audience-seule et l'ad group audience + contenu

### Table de décision : quel ciblage de contenu tester

| Situation | Type de contenu à tester | Pourquoi |
| --- | --- | --- |
| Vous savez exactement quels sites/chaînes votre audience visite | Emplacements | Contrôle maximum, inventaire prévisible |
| Votre produit correspond à des catégories de contenu claires | Thèmes | Précision moyenne, portée plus large que les emplacements |
| Votre niche n'est pas couverte par la taxonomie thématique de Google | Keywords (contenu) | Comble les lacunes des catégories prédéfinies |
| Pas de correspondance de contenu claire | Passez le ciblage de contenu | Le ciblage audience-seule est la bonne approche |

> ↪️ **Optimisation du ciblage de contenu dans le cycle :** Voir [SOP - Cycle d'optimisation campagnes Display & Video](<Display - Cycle d'optimisation Display et Video.md>) Phase 3.5 pour le processus de revue récurrente.

---

## Erreurs courantes

| **Erreur** | **Problème** | **Solution** |
|-------------|-------------|---------|
| Pas d'exclusions | Annonces sur des sites de faible qualité | Définissez d'abord les exclusions au niveau compte |
| Keywords de contenu = intention de recherche | S'attendre à un ciblage de type Search | Comprendre la correspondance contextuelle large |
| Thèmes trop larges | Emplacements non pertinents | Utilisez les sous-catégories |
| Emplacements trop restreints | Pas de diffusion | Ajoutez plus d'emplacements ou passez aux thèmes |
| Tout combiner | Presque aucune portée | Superposez intentionnellement, pas par défaut |
| Ignorer les rapports d'emplacements | Les mauvais sites continuent de consommer du budget | Revoyez chaque semaine, ajoutez des exclusions |
| Applications mobiles incluses | Clics accidentels | Excluez les apps sauf si campagne centrée app |

---

## Documents liés

| **Document** | **Relation** |
|--------------|------------------|
| [Content Exclusion Guidelines](<Display - Exclusions de contenu.md>) | Guideline : paramètres d'exclusion recommandés |
| [Audience Targeting Reference](<../audiences/Audiences - Signaux d'audience.md>) | Compagnon : ciblage basé sur l'audience |
| [Upper Funnel Campaign Structure Mental Model](<../strategie/Strategie - Structure de campagne haut de tunnel.md>) | Méthode : contexte de structure de campagne |
| [SOP - Lancer une campagne Display](<Display - Lancer une campagne.md>) | Exécution : configuration de campagne Display |
| [SOP - Lancer une campagne Video](<../video/Video - Lancer une campagne.md>) | Exécution : configuration de campagne Vidéo |
| [Upper Funnel Campaign Launch Checklist](<../strategie/Strategie - [Review] Lancement de campagne haut de tunnel.md>) | Validation : vérifications pré-lancement |
