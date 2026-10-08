# Contrôle de l'optimisation des assets

> **Plateforme :** Google Ads
> **Catégorie :** Pmax
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Ce document définit les états recommandés (activé/désactivé) pour les paramètres d'optimisation et de génération automatique des assets Google dans les campagnes Display, Demand Gen et PMax.

---

## Ce que couvre / ne couvre pas ce document

**Ce document :**

- Définit les états recommandés pour chaque paramètre d'optimisation des assets
- Explique le raisonnement derrière chaque recommandation
- Établit les cas où des exceptions s'appliquent
- Couvre l'amélioration d'images, l'amélioration de vidéos et les paramètres de génération automatique

**Ce document ne couvre PAS :**

- Les spécifications créatives (Voir : Video Creative Reference, Image Creative Reference)
- La validation de la qualité créative (Voir : Video Creative Quality Checklist, Image Creative Quality Checklist)
- La configuration des assets automatisés comme les liens annexes ou les accroches (Voir : [Automated Assets Control Guidelines](<../composants/Composants - Contrôle des assets automatisés.md>))

---

## Que sont les paramètres d'optimisation des assets ?

Google propose divers paramètres qui modifient, améliorent ou génèrent automatiquement des assets créatifs. Ceux-ci existent au niveau de la campagne ou de l'annonce selon le type de campagne.

**Types de modification automatique :**

| Type | Ce que fait Google |
| --- | --- |
| Amélioration d'image | Ajuste les images (apparence, format, mise en page) |
| Amélioration vidéo | Crée des versions verticales/carrées, des montages plus courts |
| Vidéo générée automatiquement | Crée des annonces vidéo à partir d'images statiques |
| Assets redimensionnés | Crée des versions avec différents ratios d'aspect |
| Images de Landing Page | Récupère des images depuis votre Landing Page |
| Mises en page adaptatives | Force les assets dans des formats pour lesquels ils n'ont pas été conçus |

---

## Configuration recommandée

### Recommandation par défaut : DÉSACTIVER

Les assets générés et améliorés automatiquement produisent généralement des résultats de mauvaise qualité qui peuvent nuire à la perception de la marque. Créez plutôt vos propres assets de haute qualité.

**Pourquoi désactiver :**

| Problème | Impact |
| --- | --- |
| Vidéos générées automatiquement | Animations génériques de basse qualité à partir d'images statiques |
| Améliorations d'images | Recadrage imprévisible, ajustements de couleurs, mises en page |
| Vidéos redimensionnées | Peut couper du contenu important, déformer les ratios d'aspect, perdre des éléments visuels clés |
| Vidéos raccourcies | Tronque un message soigneusement travaillé, peut couper le branding ou le CTA |
| Images de Landing Page | Représentation visuelle générique et non contrôlée |
| Mises en page adaptatives | Assets forcés dans des formats pour lesquels ils n'ont pas été conçus |

**Qualité plutôt que portée :** Désactiver peut réduire la portée/couverture, mais préserver la qualité vidéo et la perception de marque est plus important qu'une portée incrémentale obtenue via du contenu auto-généré de mauvaise qualité.

---

## Paramètres par type de campagne

### Campagnes Display (niveau annonce)

**Emplacement :** "Options de format supplémentaires" lors de la création/modification d'une annonce display responsive

| Paramètre | Ce que ça fait | Recommandation |
| --- | --- | --- |
| Utiliser les améliorations d'assets | Améliore les assets et optimise les mises en page des annonces | DÉSACTIVER |
| Utiliser la vidéo générée automatiquement | Crée des annonces vidéo à partir des titres, descriptions et images | DÉSACTIVER |
| Utiliser les formats natifs | Étend la portée aux emplacements natifs | ACTIVER (expansion de format, pas de modification d'asset) |

**Comportement de la vidéo auto-générée :** Si vous avez ajouté votre propre contenu vidéo, les vidéos auto-générées ne sont diffusées que lorsque votre vidéo ne peut pas être utilisée. On recommande quand même de désactiver pour éviter le repli vers du contenu de basse qualité.

### Campagnes PMax (niveau campagne)

**Emplacement :** Paramètres de campagne - Optimisation des assets

| Paramètre | Ce que ça fait | Recommandation |
| --- | --- | --- |
| Texte : Personnalisation | Titres/descriptions générés par IA à partir du site, des Landing Pages et des annonces existantes | EXAMINER ATTENTIVEMENT : configurez d'abord les directives textuelles si vous activez |
| Texte : Expansion de l'URL finale | Sélection dynamique de Landing Page (nécessite la Personnalisation activée) | DÉSACTIVER (sauf si des exclusions d'URL complètes sont en place) |
| Image : Amélioration | Ajuste les images (apparence, format, mise en page) | DÉSACTIVER |
| Image : Images de Landing Page | Récupère des images depuis la Landing Page pour les utiliser dans les annonces | DÉSACTIVER |
| Vidéo : Amélioration | Crée des versions verticales/carrées et des montages plus courts à partir des vidéos téléchargées | DÉSACTIVER |

**Si aucune vidéo n'est téléchargée :** Google peut générer automatiquement des vidéos à partir d'images. Téléchargez vos propres vidéos pour éviter cela, ou désactivez la génération automatique dans les paramètres.

### Directives textuelles et directives visuelles

Les directives textuelles et visuelles permettent de contrôler comment Google génère et modifie les assets lorsque les paramètres d'optimisation sont activés.

**Les directives textuelles** encadrent le texte généré par IA lorsque la Personnalisation de texte est activée :

| Contrôle | Limite | Objectif |
| --- | --- | --- |
| Exclusions de termes | Jusqu'à 25 mots/phrases | Exclure des mots ou phrases spécifiques du texte généré |
| Restrictions de messages | Jusqu'à 40 règles en langage naturel | Empêcher certains concepts, sujets ou approches (ex. : "Ne pas mentionner de noms de concurrents", "Ne pas référencer de prix spécifiques", "Ne pas utiliser de superlatifs") |

**Accès :** Paramètres de campagne > Optimisation des assets > Texte > "Modifier les directives textuelles" OU Paramètres > Directives de marque > Directives textuelles

**Les directives visuelles** encadrent comment Google modifie les images et vidéos lorsque l'amélioration est activée :

| Contrôle | Objectif |
| --- | --- |
| Couleurs personnalisées (principale + accent) | Restreindre la palette de couleurs pour les assets améliorés |
| Police | Restreindre l'utilisation des polices pour les assets améliorés |

**Accès :** Paramètres de campagne > Optimisation des assets > Image/Vidéo > "Ajouter des directives visuelles" OU Paramètres > Directives de marque > Directives visuelles

**Recommandation :** Si vous activez la Personnalisation de texte, configurez toujours les directives textuelles en premier. Si vous activez une amélioration d'image ou de vidéo, configurez les directives visuelles en premier.

### Campagnes Demand Gen (niveau annonce)

**Emplacement :** Optimisation des assets lors de la création/modification d'annonces Demand Gen

**Paramètres des annonces vidéo :**

| Paramètre | Ce que ça fait | Recommandation |
| --- | --- | --- |
| Vidéos redimensionnées | Crée des versions avec différents ratios (horizontal vers vertical/carré) | DÉSACTIVER |
| Vidéos raccourcies | Tronque les vidéos pour créer des versions plus courtes | DÉSACTIVER |
| Afficher une capture d'écran de votre Landing Page dans vos annonces | Utilise une capture de la Landing Page comme contenu vidéo | DÉSACTIVER |

**Paramètres des annonces image :**

| Paramètre | Ce que ça fait | Recommandation |
| --- | --- | --- |
| Vidéos | Crée des vidéos à partir de vos assets image existants | DÉSACTIVER |
| Mises en page adaptatives | Les assets s'adaptent pour convenir à plus de mises en page, styles et ratios | DÉSACTIVER |

**Prévisualiser avant de décider :** Cliquez sur "Afficher des exemples" dans les paramètres d'optimisation des assets Demand Gen pour voir comment vos assets seront modifiés.

---

## Conditions d'exception

### Quand activer l'optimisation des assets

Activez uniquement si **toutes** les conditions suivantes sont remplies :

- Vous ne pouvez pas produire les variations d'assets requises vous-même
- La portée incrémentale compense les préoccupations de qualité de marque
- Vous avez configuré les directives de marque pour encadrer les modifications
- Vous vous engagez à surveiller et désactiver si des problèmes de qualité apparaissent

### Si vous devez activer : mesures d'atténuation

**1. Créez d'abord vos propres assets**

| Type d'asset | Quoi télécharger |
| --- | --- |
| Images | Horizontal (1.91:1), carré (1:1), vertical (4:5 ou 9:16) |
| Vidéos | Les trois ratios d'aspect + plusieurs durées (6s, 15s, 30s+) |

Télécharger vos propres variations réduit le besoin de Google de générer automatiquement.

**2. Ajouter les directives de marque (Demand Gen / PMax)**

| Paramètre | Action |
| --- | --- |
| Couleurs personnalisées | Définir les couleurs primaire et secondaire de la marque |
| Polices de marque | Définir les polices approuvées |
| Logos officiels | Télécharger des logos haute qualité |
| Nom de l'entreprise | Définir correctement |
| Directives textuelles : exclusions de termes | Ajouter jusqu'à 25 mots/phrases à exclure du texte généré |
| Directives textuelles : restrictions de messages | Ajouter jusqu'à 40 règles pour empêcher les messages hors-marque |

Les directives de marque encadrent la façon dont Google modifie et génère vos assets.

**3. Surveiller les performances**

| Vérification | Fréquence |
| --- | --- |
| Examiner les assets auto-générés dans le rapport d'assets | Hebdomadaire |
| Vérifier la qualité des versions améliorées en prévisualisation | Avant le lancement |
| Désactiver immédiatement si des problèmes de qualité apparaissent | En continu |

---

## Vérification de la configuration

### Campagnes Display

| Vérification | État attendu |
| --- | --- |
| Utiliser les améliorations d'assets | DÉSACTIVÉ |
| Utiliser la vidéo générée automatiquement | DÉSACTIVÉ |
| Utiliser les formats natifs | ACTIVÉ |

### Campagnes PMax

| Vérification | État attendu |
| --- | --- |
| Texte : Personnalisation | À examiner au cas par cas |
| Texte : Expansion de l'URL finale | DÉSACTIVÉ (sauf si exclusions d'URL configurées) |
| Directives textuelles (si Personnalisation activée) | Configurées (exclusions de termes + restrictions de messages) |
| Image : Amélioration | DÉSACTIVÉ |
| Image : Images de Landing Page | DÉSACTIVÉ |
| Directives visuelles (si amélioration activée) | Configurées (couleurs de marque + police) |
| Vidéo : Amélioration | DÉSACTIVÉ |

### Campagnes Demand Gen (annonces vidéo)

| Vérification | État attendu |
| --- | --- |
| Vidéos redimensionnées | DÉSACTIVÉ |
| Vidéos raccourcies | DÉSACTIVÉ |
| Captures d'écran de Landing Page | DÉSACTIVÉ |

### Campagnes Demand Gen (annonces image)

| Vérification | État attendu |
| --- | --- |
| Vidéos (à partir d'images) | DÉSACTIVÉ |
| Mises en page adaptatives | DÉSACTIVÉ |
| Si activé - Directives de marque | Configurées |

---

## Documents liés

| Document | Relation |
| --- | --- |
| Automated Assets Control Guidelines | Parallèle (couvre les assets automatisés au niveau du compte comme les liens annexes, accroches) |
| Video Creative Reference | En amont (spécifications créatives qui rendent la génération automatique inutile) |
| Image Creative Reference | En amont (spécifications créatives qui rendent la génération automatique inutile) |
| Video Creative Quality Checklist | Valide la qualité vidéo |
| Image Creative Quality Checklist | Valide la qualité image |
