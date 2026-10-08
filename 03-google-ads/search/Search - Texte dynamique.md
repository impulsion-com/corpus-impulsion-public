# Texte dynamique

> **Plateforme :** Google Ads
> **Catégorie :** Search
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Documente les options d'insertion de texte dynamique disponibles dans les RSA Google Ads pour la personnalisation automatique du texte d'annonce.

---

## Ce que couvre cette fiche / Ce qu'elle ne couvre PAS

**Cette fiche :**

- Documente la syntaxe de l'**insertion de keyword**, l'**insertion de localisation** et les **comptes à rebours**
- Explique quand utiliser chaque élément dynamique
- Fournit des exemples et les erreurs courantes

**Cette fiche ne couvre PAS :**

- Les attributs de personnalisation d'annonces en profondeur (Voir : [Keyword Ad Customizer Attribute Catalog](<Search - Attributs de personnalisation par mot-cle.md>), [Dynamic Ad Customizer Attribute Catalog](<Search - Attributs de personnalisation dynamique.md>))
- Les instructions de configuration pas à pas

---

## Aide-mémoire

| **Élément dynamique** | **Syntaxe** | **Idéal pour** | **Complexité** |
| --- | --- | --- | --- |
| **1️⃣ Insertion de keyword** | `{KeyWord:Défaut}` | Ancres de pertinence, H1 | Faible |
| **2️⃣ Insertion de localisation** | `{LOCATION(City):Défaut}` | Services locaux, ciblage géo | Faible |
| **3️⃣ Compte à rebours** | `{COUNTDOWN(date):Défaut}` | Offres limitées, urgence | Faible |
| **4️⃣ Personnalisateurs d'annonces** | `{CUSTOMIZER.attribut:Défaut}` | Personnalisation complexe, feeds | Élevée |

> Le texte dynamique augmente la pertinence sans créer des dizaines de variations d'annonces manuellement. Bien utilisé, **il améliore la pertinence de l'annonce et le CTR**. Mal utilisé, il crée des annonces maladroites et cassées.

---

## 1️⃣ Insertion de keyword

### Ce que ça fait

Insère dynamiquement le keyword qui a déclenché l'annonce dans votre titre ou description.

> ⚠️ **Important :** l'insertion de keyword insère le *keyword*, pas le *terme de recherche*. Si votre keyword est "logiciel crm" et quelqu'un cherche "meilleur logiciel crm pour startups", l'annonce affiche "logiciel crm", pas le terme de recherche complet.

### Syntaxe

`{KeyWord:Texte par défaut}`

**Options de capitalisation :**

| **Syntaxe** | **Keyword saisi** | **Résultat** |
| --- | --- | --- |
| `{keyword:défaut}` | chaussures de course | chaussures de course |
| `{Keyword:Défaut}` | Chaussures de course | Chaussures de course |
| `{KeyWord:Défaut}` | Chaussures De Course | Chaussures De Course |

**Le plus courant :** `{KeyWord:Défaut}` (capitalisation titre)

### Règles

| **Règle** | **Détails** |
| --- | --- |
| **Limite de caractères** | Si le keyword + texte environnant dépasse la limite de caractères, le texte par défaut s'affiche à la place |
| **Défaut requis** | Incluez toujours un texte par défaut solide : il s'affichera quand le keyword est trop long |
| **Un par titre** | Vous pouvez en utiliser plusieurs, mais un par titre est typique |
| **Fonctionne dans** | Titres, descriptions, chemins |

### Bonnes pratiques pour le texte par défaut

Le texte par défaut s'affiche quand le keyword est trop long. Il doit être assez fort pour fonctionner seul.

| ❌ **Mauvais défaut** | ✅ **Bon défaut** | **Pourquoi** |
| --- | --- | --- |
| `{KeyWord:Nos Produits}` | `{KeyWord:Logiciel CRM}` | Générique vs spécifique |
| `{KeyWord:Cliquez Ici}` | `{KeyWord:Gestion de Projet}` | CTA vs catégorie |
| `{KeyWord:En Savoir Plus}` | `{KeyWord:Outils de Vente}` | Action vs nom |

### Cas d'usage

| **Cas d'usage** | **Exemple** | **Notes** |
| --- | --- | --- |
| **Ancre de pertinence H1** | `{KeyWord:Logiciel CRM}` | Usage le plus courant : fait correspondre l'annonce à la recherche |
| **Correspondance keyword en description** | `Notre {KeyWord:logiciel} aide les équipes...` | Pour le texte en gras correspondant |
| **Chemin d'affichage** | `exemple.com/{KeyWord:Produits}` | Chemins d'URL dynamiques |

### Quand NE PAS utiliser

| **Situation** | **Pourquoi** | **Alternative** |
| --- | --- | --- |
| Campagnes de marque | Le nom de marque doit être exact | Titre de marque statique |
| Industries sensibles | Les keywords peuvent être maladroits dans l'annonce | Texte statique soigneusement rédigé |
| Keywords longue traîne | Dépasseront la limite de caractères fréquemment | Texte statique avec un message fort |
| Quand vous avez besoin de contrôle | L'insertion réduit le contrôle du message | Titres statiques |

---

## 2️⃣ Insertion de localisation

### Ce que ça fait

Insère dynamiquement la localisation de l'utilisateur (ville, région ou pays) dans votre annonce.

### Syntaxe

`{LOCATION(Niveau):Texte par défaut}`

**Niveaux de localisation :**

| **Niveau** | **Syntaxe** | **Exemple de résultat** |
| --- | --- | --- |
| Ville | `{LOCATION(City):Votre Ville}` | Amsterdam |
| Région | `{LOCATION(State):Votre Région}` | Hollande du Nord |
| Pays | `{LOCATION(Country):Votre Pays}` | Pays-Bas |

### Règles

| **Règle** | **Détails** |
| --- | --- |
| **Ciblage requis** | Ne fonctionne que si vous ciblez le niveau de localisation que vous insérez |
| **Le défaut s'affiche quand** | La localisation ne peut pas être déterminée, ou dépasse la limite de caractères |
| **Limites de caractères** | Certains noms de ville/région sont longs (testez vos défauts) |
| **Fonctionne dans** | Titres, descriptions |

### Cas d'usage

| **Cas d'usage** | **Exemple** | **Idéal pour** |
| --- | --- | --- |
| **Titre de service local** | `Plombier à {LOCATION(City):Votre Ville}` | Services à domicile, entreprises locales |
| **Landing géo-spécifique** | `{LOCATION(City):Local} Devis Assurance` | Assurance, immobilier, juridique |
| **Offres régionales** | `Livraison Gratuite vers {LOCATION(State):Votre Région}` | E-commerce avec livraison régionale |

### Bonnes pratiques

| **Pratique** | **Pourquoi** |
| --- | --- |
| **Toujours tester les défauts** | Les noms de ville longs déclencheront le défaut fréquemment |
| **Faire correspondre ciblage et insertion** | Si vous ciblez au niveau national, l'insertion de ville peut être imprécise |
| **Considérer les noms maladroits** | Certaines localisations sonnent bizarrement dans des phrases |
| **Utiliser pour l'intention locale** | Meilleur quand l'utilisateur s'attend à des résultats locaux |

### Quand NE PAS utiliser

| **Situation** | **Pourquoi** | **Alternative** |
| --- | --- | --- |
| Campagnes nationales | La localisation n'ajoute pas de valeur | Se concentrer sur d'autres angles |
| B2B/SaaS (généralement) | Les acheteurs ne se soucient pas de votre localisation | Se concentrer sur les bénéfices |
| Quand la localisation n'est pas pertinente | La personnalisation forcée semble manipulatrice | Ne pas l'utiliser |

---

## 3️⃣ Comptes à rebours

### Ce que ça fait

Compte dynamiquement à rebours vers une date/heure spécifique, créant de l'urgence dans votre annonce.

### Syntaxe

`{COUNTDOWN(AAAA-MM-JJ HH:MM:SS):Texte par défaut}`

**Options de syntaxe complète :**

`{COUNTDOWN(AAAA-MM-JJ HH:MM:SS,langue,jours_avant):Défaut}`

| **Paramètre** | **Options** | **Par défaut** |
| --- | --- | --- |
| Date/Heure | `AAAA-MM-JJ HH:MM:SS` | Requis |
| Langue | `fr`, `nl`, `de`, etc. | Langue du compte |
| Jours avant | Nombre (quand commencer à afficher) | 5 |

### Exemples de résultat

| **Temps restant** | **Résultat** |
| --- | --- |
| 3 jours, 4 heures | "3 jours" |
| 5 heures, 30 min | "5 heures" |
| 45 minutes | "45 minutes" |
| 30 secondes | "30 secondes" |
| Expiré | Le texte par défaut s'affiche |

### Exemples de titres

| **Cas d'usage** | **Syntaxe** | **Résultat (2 jours restants)** |
| --- | --- | --- |
| Fin de soldes | `Soldes Finissent dans {COUNTDOWN(2026-01-15 23:59:59):Bientôt}` | "Soldes Finissent dans 2 jours" |
| Inscription événement | `Inscrivez-vous - {COUNTDOWN(2026-02-01 09:00:00):Temps Limité}` | "Inscrivez-vous - 14 jours" |
| Expiration offre | `{COUNTDOWN(2026-01-20 00:00:00):Offre Bientôt Finie} Restants` | "5 jours Restants" |

### Règles

| **Règle** | **Détails** |
| --- | --- |
| **Fuseau horaire** | Utilise le fuseau horaire du compte par défaut |
| **Après expiration** | Le texte par défaut s'affiche (faites-le solide) |
| **Affichage minimum** | Affiche les secondes quand sous 1 minute |
| **Fonctionne dans** | Titres, descriptions |

### Bonnes pratiques

| **Pratique** | **Pourquoi** |
| --- | --- |
| **N'utiliser que pour de vraies échéances** | La fausse urgence endommage la confiance |
| **Planifier pour l'expiration** | Le texte par défaut devient votre titre après l'échéance |
| **Tester les limites de caractères** | "3 jours" vs "30 secondes" ont des longueurs différentes |
| **Faire correspondre à la landing page** | Si l'annonce dit "finit dimanche", la LP doit confirmer |

### Quand NE PAS utiliser

| **Situation** | **Pourquoi** | **Alternative** |
| --- | --- | --- |
| Pas de vraie échéance | La fausse urgence est non éthique et inefficace | Urgence authentique ou rien |
| Offres permanentes | Crée une charge opérationnelle de mise à jour | Message statique |
| Comptes à rebours longs | "47 jours restants" n'est pas urgent | Commencer le compte à rebours plus près de l'échéance |

---

## 4️⃣ Personnalisateurs d'annonces

### Ce que ça fait

Tire des valeurs dynamiques depuis un feed de données business ou des paramètres au niveau du keyword dans vos annonces. L'option la plus flexible mais la plus complexe.

### Syntaxe de base

`{CUSTOMIZER.nom_attribut:Texte par défaut}`

### Deux approches

| **Approche** | **Idéal pour** | **Référence** |
| --- | --- | --- |
| **Personnalisateurs au niveau keyword** | Optimisation de pertinence (singulier/pluriel, descripteurs) | [Keyword Ad Customizer Attribute Catalog](<Search - Attributs de personnalisation par mot-cle.md>) + [SOP - Configurer les personnalisateurs au niveau mot-cle](<Search - Configurer les personnalisateurs au niveau keyword.md>) |
| **Personnalisateurs dynamiques** | Prix, inventaire, promotions qui changent fréquemment | [Dynamic Ad Customizer Attribute Catalog](<Search - Attributs de personnalisation dynamique.md>) + [SOP - Configurer les personnalisateurs dynamiques d'annonces](<Search - Configurer les personnalisateurs d'annonces dynamiques.md>) |

### Quand utiliser les personnalisateurs vs les options plus simples

| **Scénario** | **Recommandation** |
| --- | --- |
| Correspondance keyword simple | Utiliser l'insertion de keyword |
| Personnalisation par localisation | Utiliser l'insertion de localisation |
| Urgence temporelle | Utiliser le compte à rebours |
| Contrôle singulier/pluriel par keyword | Utiliser les personnalisateurs au niveau keyword |
| Prix dynamiques, inventaire, promos | Utiliser les personnalisateurs dynamiques |

> ⚠️ **Avertissement de complexité :** les personnalisateurs d'annonces nécessitent une configuration et une maintenance avancées. Commencez par l'insertion de keyword avant de passer aux personnalisateurs. Voir les catalogues et SOPs dédiés pour le guide d'implémentation complet.

---

## Guide de décision : quel élément dynamique ?

```
Avez-vous besoin de texte dynamique ?
│
├─ NON → Utilisez des titres statiques (contrôle maximum)
│
└─ OUI → Quel type de personnalisation ?
         │
         ├─ Faire correspondre le keyword dans l'annonce ?
         │  └─ Utilisez l'insertion de keyword
         │
         ├─ Afficher la localisation de l'utilisateur ?
         │  └─ Utilisez l'insertion de localisation
         │
         ├─ Créer une urgence temporelle ?
         │  └─ Utilisez le compte à rebours
         │
         └─ Personnalisation complexe/multi-attribut ?
            │
            ├─ Pertinence (singulier/pluriel, descripteurs) ?
            │  └─ Utilisez les personnalisateurs au niveau keyword
            │
            └─ Données dynamiques (prix, inventaire, promos) ?
               └─ Utilisez les personnalisateurs dynamiques
```

---

## Erreurs courantes

| **Erreur** | **Problème** | **Solution** |
| --- | --- | --- |
| **Texte par défaut faible** | Quand le dynamique échoue, l'annonce est générique | Toujours rédiger les défauts comme s'ils s'affichaient 50 % du temps |
| **Trop compter sur l'insertion** | Tous les titres sont `{KeyWord:X}` | Utiliser l'insertion pour H1, du statique pour la persuasion |
| **Ignorer les limites de caractères** | Les défauts s'affichent plus que prévu | Tester avec les keywords les plus longs |
| **Fausse urgence de compte à rebours** | Endommage la confiance, risque de politique | N'utiliser que pour de vraies échéances |
| **Insertion de localisation partout** | N'augmente pas le CTR quand la localisation n'est pas pertinente pour l'offre | N'utiliser que quand la localisation compte vraiment |

---

## Documents liés

| **Document** | **Relation** |
| --- | --- |
| [SOP - Rediger des RSA performantes](<Search - Rédiger des RSA performantes.md>) | Utilise ces éléments pour les ancres de pertinence H1 |
| [SOP - Ameliorer la pertinence des annonces](<Search - Améliorer la pertinence des annonces.md>) | L'insertion comme correctif de pertinence |
| [Headline Angle Catalog](<Search - Angles de headlines.md>) | Patterns d'ancres de pertinence |
| [Keyword Ad Customizer Attribute Catalog](<Search - Attributs de personnalisation par mot-cle.md>) | Attributs de personnalisateurs au niveau keyword |
| [Dynamic Ad Customizer Attribute Catalog](<Search - Attributs de personnalisation dynamique.md>) | Attributs de personnalisateurs dynamiques |
| [SOP - Configurer les personnalisateurs au niveau mot-cle](<Search - Configurer les personnalisateurs au niveau keyword.md>) | Configuration des personnalisateurs keyword |
| [SOP - Configurer les personnalisateurs dynamiques d'annonces](<Search - Configurer les personnalisateurs d'annonces dynamiques.md>) | Configuration des personnalisateurs dynamiques |
