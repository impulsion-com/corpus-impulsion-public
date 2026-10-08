# Optimisation du flux produits

> **Plateforme :** Google Ads
> **Catégorie :** Flux Produit
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Ce document fournit des recommandations d'optimisation pour chaque groupe d'attributs majeur du flux produit. Elle encadre la configuration du flux produit en établissant les bonnes pratiques qui maximisent le matching de requêtes, améliorent le CTR et réduisent les refus.

---

## Ce que couvre / ne couvre pas ce document

**Ce document :**

- Fournit des recommandations d'optimisation par groupe d'attributs
- Explique les bonnes et mauvaises pratiques pour les attributs clés
- Établit les niveaux de priorité pour les efforts d'optimisation du flux

**Ce document ne couvre PAS :**

- La liste de toutes les spécifications d'attributs (Voir : [Product Feed Data Specification Reference](<Flux Produit - Spécifications du feed produit.md>))
- L'explication des concepts de qualité de flux (Voir : [Product Feed Quality Mental Model](<Flux Produit - Qualité du flux produits.md>))
- La configuration pas à pas (Voir : [SOP - Configurer et optimiser le flux produits](<Flux Produit - Configurer et optimiser le feed produit.md>))
- Les exemples de titres par catégorie (Voir : [Product Title Catalog](<Flux Produit - Titres de produits.md>))

---

## Cadre de priorité d'optimisation

| **Priorité** | **Groupe d'attributs** | **Impact** | **Effort** |
|--------------|---------------------|------------|------------|
| 1 Critique | Titre, Prix, Image, GTIN, Disponibilité | Affecte directement le matching, le CTR, le classement | Moyen-Élevé |
| 2 Important | Description, Marque, Type de produit, Images supplémentaires | Étend le matching, améliore l'UX | Moyen |
| 3 Recommandé | Variantes (Couleur, Taille), Labels personnalisés, Prix soldé | Permet le filtrage, la segmentation | Moyen |
| 4 Optionnel | Titre court, Points forts produit, Images lifestyle | Haut du tunnel, différenciation | Faible |

> Optimisez dans l'ordre de priorité. Les attributs de Niveau 1 délivrent l'impact le plus élevé par effort investi.

---

## Identifiants produit

### ID [id]

| **Recommandation** | **Justification** |
|--------------------|---------------|
| Utiliser les SKU comme IDs | Les SKU sont uniques et évitent la réutilisation accidentelle |
| Garder les IDs stables | Google stocke les données de performance au niveau de l'ID |
| Inclure les IDs de variante | Chaque variante a besoin d'un ID unique |
| Utiliser le même ID entre les marchés | Même ID quel que soit le pays/la langue ciblé |

**Faire :**
- Soumettre un ID unique pour chaque produit
- Inclure un ID unique pour chaque variante
- Utiliser le même ID pour chaque produit quel que soit le pays ou la langue

**Ne PAS faire :**
- Utiliser la casse pour rendre les IDs uniques
- Utiliser des espaces dans les valeurs d'ID
- Réutiliser ou recycler des IDs pour différents produits
- Changer les IDs : les données historiques sont perdues

### GTIN [gtin]

| **Recommandation** | **Justification** |
|--------------------|---------------|
| Fournir les GTIN pour tous les produits qui en ont | Permet la comparaison de prix, les avis produit, le matching fiable |
| Vérifier l'exactitude des GTIN | Des GTIN incorrects causent des refus |
| Inclure le GTIN pour chaque variante | Les variantes ont généralement des GTIN différents |
| Pour les bundles, utiliser le GTIN du produit principal | GTIN du bundle si disponible, sinon produit principal |

**Faire :**
- Utiliser le bon GTIN pour chaque variante produit
- Soumettre le GTIN tel que défini dans le guide de validation officiel GS1
- Combiner avec MPN et marque pour un matching maximal
- Pour les multipacks, utiliser le GTIN du multipack

**Ne PAS faire :**
- Soumettre un GTIN pour les produits génériques
- Inventer ou fabriquer des GTIN
- Soumettre un GTIN pour les produits qui n'en ont pas

> GTIN manquants ? Vérifiez les codes-barres sur l'emballage du produit, contactez le fabricant, ou utilisez des services de recherche de code-barres.

### MPN [mpn]

| **Recommandation** | **Justification** |
|--------------------|---------------|
| Fournir le MPN quand le GTIN n'est pas disponible | Identifiant alternatif requis |
| Utiliser le MPN officiel du fabricant | Des MPN incorrects causent des refus |
| Inclure le MPN pour chaque variante | Les variantes ont généralement des MPN différents |

**Faire :**
- Utiliser le MPN officiel attribué par le fabricant
- Utiliser le bon MPN pour chaque variante produit

**Ne PAS faire :**
- Inventer ou fabriquer des valeurs MPN
- Soumettre un MPN pour les produits qui n'en ont pas (produits personnalisés)

### Identifier exists [identifier_exists]

| **Recommandation** | **Justification** |
|--------------------|---------------|
| Définir à `false` uniquement pour les produits vraiment personnalisés | Biens sur mesure, pièces uniques, produits vintage |
| La valeur par défaut est `true` si non spécifié | La plupart des produits ont des identifiants |

**Quand définir à `false` :**
- Produits faits sur mesure (T-shirts personnalisés, art, produits artisanaux)
- Produits sans GTIN ou combinaison MPN+marque
- Articles médias sans GTIN
- Vêtements sans marque
- Produits vintage, livres avant 1970

---

## Données produit essentielles

### Titre [title]

**Les titres sont votre levier d'optimisation le plus impactant :** Ils déterminent à la fois le matching de requêtes et le CTR.

| **Recommandation** | **Justification** |
|--------------------|---------------|
| Placer les détails importants en premier | Les utilisateurs ne voient que 70-100 caractères |
| Utiliser les 150 caractères | Plus de mots clés = meilleur matching |
| Inclure les détails distinctifs de variante | Taille, couleur, matériau pour chaque variante |
| Suivre les formules par catégorie | Différentes catégories nécessitent différentes structures |

**Formules de titres par catégorie :**

| **Catégorie** | **Formule** |
|--------------|-------------|
| Mode | Marque + Genre + Type de produit + Attributs (taille/couleur/matériau) |
| Électronique | Marque + Attributs + Type de produit + Numéro de modèle |
| Consommables | Marque + Type de produit + Attributs (poids/quantité) |
| Livres | Titre + Auteur + Format + ISBN |
| Saisonnier | Occasion + Type de produit + Attributs |

**Faire :**
- Utiliser des titres pertinents qui décrivent clairement le produit
- Placer les détails produit les plus importants en premier
- Essayer d'utiliser les 150 caractères
- Ajouter les détails distinctifs pour les variantes

**Ne PAS faire :**
- Inclure du texte promotionnel (cause des refus)
- Utiliser des majuscules pour l'emphase
- Utiliser des mots inconnus non utilisés par les clients

> Google peut automatiquement réordonner votre titre pour correspondre aux recherches. Placer les infos importantes en premier reste important car ça affecte ce que les utilisateurs voient dans les annonces Shopping.

> Pour des exemples de titres par catégorie : Voir [Product Title Catalog](<Flux Produit - Titres de produits.md>).

### Description [description]

| **Recommandation** | **Justification** |
|--------------------|---------------|
| Placer les détails clés dans les 160 premiers caractères | Les utilisateurs cliquent "plus" pour voir la description complète |
| Inclure les caractéristiques, specs, attributs | Améliore le matching et la conversion |
| Utiliser une formule de description pour la cohérence | Assure l'exhaustivité sur tous les produits |

**Formule de description :**
`{Marque} présente {produit}, parfait pour {audience cible} qui {besoin de l'utilisateur}. Ce {type de produit} dispose de {caractéristique 1}, {caractéristique 2} et {caractéristique 3}, ce qui en fait {proposition de valeur unique}.`

**Faire :**
- Lister les détails produit importants dans les 160 premiers caractères
- Inclure matériau, couleur, motif, texture, forme, taille, tranche d'âge, caractéristiques, bénéfices

**Ne PAS faire :**
- Inclure des liens
- Inclure du texte promotionnel (prix, prix soldé)
- Utiliser du balisage HTML
- Utiliser des majuscules pour l'emphase
- Décrire des accessoires ou des produits compatibles

> Pour des modèles et patterns de description : Voir [Product Description Catalog](<Flux Produit - Descriptions de produits.md>).

### Marque [brand]

| **Recommandation** | **Justification** |
|--------------------|---------------|
| Utiliser un nom de marque reconnaissable | Les clients filtrent par marque |
| Une seule langue | Ne pas mélanger les langues dans la valeur de marque |
| Utiliser le nom du magasin pour les produits sans marque | Quand vous êtes le fabricant et le seul vendeur |

**Faire :**
- Utiliser la bonne valeur de marque que les clients reconnaissent
- Utiliser le nom du magasin quand vous êtes le fabricant et seul vendeur

**Ne PAS faire :**
- Soumettre une marque pour les produits sans marque claire
- Utiliser plusieurs langues ou alphabets
- Inventer ou fabriquer des valeurs de marque

### Lien [link]

| **Recommandation** | **Justification** |
|--------------------|---------------|
| Diriger vers la page produit | Pas de redirections |
| Pré-sélectionner les variantes | Inclure les paramètres d'URL pour la bonne variante |
| Assurer l'accessibilité au crawling | Accessible via robots.txt |

**Faire :**
- Commencer l'URL par http:// ou https://
- S'assurer que l'URL est accessible et crawlable
- Pré-sélectionner la bonne variante produit via les paramètres d'URL

**Ne PAS faire :**
- Utiliser des redirections
- Inclure des symboles ou espaces dans l'URL
- Inclure des paramètres Google Ads ValueTrack

---

## Images

### Lien image [image_link]

**Les images peuvent faire ou défaire une vente.** C'est l'un des attributs les plus importants à optimiser.

| **Recommandation** | **Justification** |
|--------------------|---------------|
| Utiliser des images haute résolution (1500x1500px minimum) | Plus haute qualité = meilleur CTR |
| Le produit remplit 75-90% du cadre | Visibilité optimale sans problèmes de recadrage |
| Fond blanc ou neutre | Apparence professionnelle, conformité aux politiques |
| Montrer le produit entier | Ne pas mettre en avant seulement une partie du produit |

**Faire :**
- Utiliser des images de haute qualité d'au moins 1500x1500 pixels
- Le produit occupe 75-90% de l'image complète
- Afficher le produit entier
- Montrer la bonne variante vendue
- Pour les bundles, montrer tous les produits du bundle

**Ne PAS faire :**
- Utiliser des images de plus de 16 Mo ou 64 mégapixels
- Utiliser des bordures ou fonds personnalisés
- Inclure du contenu promotionnel (prix, CTAs, filigranes, surcouches)
- Utiliser des images générées par IA sans les métadonnées appropriées

> Astuce ratio d'aspect : Si les concurrents montrent des images verticales/portrait et les vôtres sont carrées, expérimentez avec des images verticales. Elles prennent plus d'espace visuel et peuvent améliorer le CTR.

### Lien image supplémentaire [additional_image_link]

| **Recommandation** | **Justification** |
|--------------------|---------------|
| Ajouter plusieurs angles | Les utilisateurs interagissent plus avec plusieurs images |
| Montrer les détails du produit | Gros plans des caractéristiques et points forts |
| Montrer le produit sans emballage | Aide les utilisateurs à visualiser le produit réel |

**Faire :**
- Suivre les bonnes pratiques du lien image
- Montrer différents angles, des points forts spécifiques, ou sans emballage
- Ajouter jusqu'à 10 images supplémentaires par produit

**Ne PAS faire :**
- Soumettre des images lifestyle ici (utiliser lifestyle_image_link à la place)

### Lien image lifestyle [lifestyle_image_link]

| **Recommandation** | **Justification** |
|--------------------|---------------|
| Montrer le produit en contexte réel | Emplacements haut du tunnel, engagement plus élevé |
| Utiliser un ratio portrait 2:3 | Performe bien visuellement |
| Résolution minimum 600x600px | Exigence de qualité |

**Faire :**
- Montrer le produit en utilisation : vêtements sur un modèle, meuble dans une pièce
- Utiliser des arrière-plans colorés ou des décors attrayants
- Utiliser le ratio portrait (2:3) quand possible

**Ne PAS faire :**
- Utiliser un simple fond blanc (annule l'intérêt de l'image lifestyle)

---

## Prix et coûts

### Prix [price]

**Le prix est l'attribut le plus important.** Google est une plateforme de comparaison : meilleur est votre prix, meilleure est votre position et votre part de clics.

| **Recommandation** | **Justification** |
|--------------------|---------------|
| Correspondre exactement au prix de la Landing Page | Les écarts causent des refus |
| Mettre à jour fréquemment | Garder les prix à jour |
| Activer les mises à jour automatiques | Filet de sécurité pour les écarts temporaires |
| Inclure la TVA si requis | Exigences spécifiques par pays |

**Faire :**
- S'assurer que le prix du flux correspond au prix de la Landing Page
- Garder les prix à jour (planifier les mises à jour du flux après les changements de prix)
- Activer les mises à jour automatiques des articles pour le prix
- Inclure la TVA si requis pour le pays cible
- Utiliser la conversion de devises pour le ciblage multi-marchés

**Ne PAS faire :**
- Inclure les frais de livraison dans le prix (utiliser les attributs d'expédition)
- Inclure les coûts d'import/export dans le prix
- Changer le prix pour les soldes (utiliser sale_price à la place)
- Utiliser plus de deux décimales
- Changer le prix en fonction de la localisation de l'utilisateur

> Si les prix changent plusieurs fois par jour, utilisez l'API Content ou un script pour augmenter la fréquence de mise à jour.

### Prix soldé [sale_price]

| **Recommandation** | **Justification** |
|--------------------|---------------|
| Utiliser uniquement pour les vraies soldes | Active le badge de soldes |
| Assurer une remise de 5-90% | Exigence d'éligibilité au badge |
| Respecter la règle UE des 30 jours | L'UE exige le prix le plus bas des 30 derniers jours comme référence |

**Éligibilité au badge de soldes :**
- Le prix de base doit être valide
- Le prix soldé doit être inférieur au prix de base
- La remise doit être de 5-90%
- UE : Le prix de référence doit être le plus bas des 30 derniers jours

**Faire :**
- Respecter les exigences techniques de l'attribut prix
- Afficher les prix régulier et soldé sur la Landing Page
- Toujours soumettre le prix régulier via l'attribut prix

**Ne PAS faire :**
- Soumettre un prix soldé supérieur au prix régulier

### Date d'effet du prix soldé [sale_price_effective_date]

| **Recommandation** | **Justification** |
|--------------------|---------------|
| Programmer les promotions à l'avance | Assure un timing précis |
| Inclure le fuseau horaire | Prévient les erreurs de timing |

**Format :** `YYYY-MM-DDThh:mm[+hhmm]/YYYY-MM-DDThh:mm[+hhmm]`

> Sans fuseau horaire, Google utilise UTC par défaut. Sans heure, le défaut est 00:00 pour le début et 23:59 pour la fin.

### Coût des marchandises vendues [cost_of_goods_sold]

| **Recommandation** | **Justification** |
|--------------------|---------------|
| Inclure pour le reporting de profit | Permet les calculs de profit brut |
| Nécessite Conversions with Cart Data | Dépendance fonctionnelle |

---

## Disponibilité

### Disponibilité [availability]

| **Recommandation** | **Justification** |
|--------------------|---------------|
| Synchroniser fréquemment | Les écarts gaspillent du budget et causent des refus |
| Activer les mises à jour automatiques | Filet de sécurité pour les écarts |
| Utiliser le temps réel pour les stocks qui bougent vite | Empêche la diffusion de produits en rupture |

**Faire :**
- Garder la disponibilité synchronisée avec l'inventaire réel
- Activer les mises à jour automatiques des articles pour la disponibilité
- Utiliser l'API Content pour la synchronisation en temps réel si l'inventaire change fréquemment

**Ne PAS faire :**
- Afficher in_stock quand le produit est en rupture de stock

### Date de disponibilité [availability_date]

| **Recommandation** | **Justification** |
|--------------------|---------------|
| Utiliser pour les produits en pré-commande/réapprovisionnement | Indique aux clients quand le produit sera disponible |
| Requis quand availability = preorder ou backorder | Doit fournir la date prévue |

### Date d'expiration [expiration_date]

| **Recommandation** | **Justification** |
|--------------------|---------------|
| Définir pour les produits à durée limitée | Supprime automatiquement à l'expiration |
| Utile pour l'inventaire saisonnier | Empêche la diffusion de produits expirés |

---

## Catégorisation

### Catégorie de produit Google [google_product_category]

| **Recommandation** | **Justification** |
|--------------------|---------------|
| Utiliser uniquement pour remplacer la catégorisation automatique | Google catégorise bien automatiquement |
| Être le plus spécifique possible | Utiliser la catégorie de niveau le plus bas |

**Faire :**
- Utiliser la catégorie la plus spécifique disponible
- Vérifier que la catégorisation automatique est correcte avant de la remplacer

**Ne PAS faire :**
- Soumettre une catégorie incorrecte (cause des refus)

### Type de produit [product_type]

| **Recommandation** | **Justification** |
|--------------------|---------------|
| Utiliser votre propre taxonomie | Structure de campagne, organisation des groupes de listings |
| Créer une hiérarchie détaillée | Meilleure organisation et filtrage |
| 750 caractères maximum | Utiliser la profondeur complète si nécessaire |

**Exemple :** `Vêtements > Femme > Robes > Robes longues`

**Faire :**
- Utiliser le type de produit pour l'organisation des campagnes
- Créer une hiérarchie logique correspondant à la structure de votre catalogue

### Labels personnalisés [custom_label_0-4]

| **Recommandation** | **Justification** |
|--------------------|---------------|
| Implémenter avant le lancement de campagne | Impossible de segmenter rétroactivement |
| Utiliser des labels basés sur la performance | Segmentation Hero/Sidekick/Villain/Zombie |
| Utiliser des labels basés sur la marge | Enchérir différemment sur les produits à haute/basse marge |
| Utiliser des labels basés sur l'inventaire | Protéger les stocks bas, pousser les stocks élevés |

**Exemples de stratégie de labels personnalisés :**

| **Label** | **Objectif** | **Exemples de valeurs** |
|-----------|-------------|-------------------|
| custom_label_0 | Niveau de performance | hero, sidekick, villain, zombie |
| custom_label_1 | Niveau de marge | high_margin, medium_margin, low_margin |
| custom_label_2 | Saisonnalité | evergreen, seasonal, clearance |
| custom_label_3 | Niveau de stock | high_stock, low_stock, critical |
| custom_label_4 | Priorité | featured, standard, deprioritize |

> Les labels personnalisés doivent être remplis avant le lancement de campagne. Vous ne pouvez pas segmenter des produits qui ne sont pas labellisés.

> Pour les stratégies de labels personnalisés : Voir [Feed Segmentation Catalog](<Flux Produit - Tactiques de segmentation.md>).

---

## Variantes produit

### ID de groupe d'articles [item_group_id]

| **Recommandation** | **Justification** |
|--------------------|---------------|
| Regrouper toutes les variantes du même produit | Active les fonctionnalités Shopping pour les variantes |
| Utiliser l'identifiant du produit parent | Regroupement cohérent |

### Couleur, Taille, Matériau, Motif

| **Recommandation** | **Justification** |
|--------------------|---------------|
| Inclure pour les vêtements et les variantes | Requis pour les vêtements dans de nombreux marchés |
| Utiliser des valeurs cohérentes | Permet le filtrage dans l'onglet Shopping |
| Ajouter au titre | Améliore le matching et le CTR |

**Exigences vêtements (BR, FR, DE, JP, UK, USA) :**
- Tranche d'âge : Requis
- Genre : Requis
- Couleur : Requis
- Taille : Requis

**Faire :**
- Utiliser des noms de couleurs standards (pas "rouge vin", utiliser "rouge")
- Inclure jusqu'à 3 couleurs séparées par "/"
- Utiliser le système de tailles approprié au marché cible

---

## Destinations et exclusions

### Destination exclue [excluded_destination]

| **Recommandation** | **Justification** |
|--------------------|---------------|
| Utiliser pour exclure des produits de surfaces spécifiques | Mieux que des flux séparés |
| Garder tous les produits dans un flux principal | Recommandation Google |

**Exclusions courantes :**
- Exclure de Shopping_ads quand la marge est trop faible
- Exclure de Free_listings quand le stock est critique
- Exclure de Display_ads pour des produits spécifiques

### Pause [pause]

| **Recommandation** | **Justification** |
|--------------------|---------------|
| Utiliser pour le retrait temporaire | Ne pas supprimer et recréer les produits |
| Préserve l'historique produit | Les données de performance sont conservées |

---

## Expédition

### Expédition [shipping]

| **Recommandation** | **Justification** |
|--------------------|---------------|
| Configurer au niveau du compte quand possible | Gestion plus simple |
| Utiliser le niveau produit pour les exceptions | Articles surdimensionnés, manutention spéciale |
| Inclure les frais d'expédition dans la compétitivité | Google intègre l'expédition dans le classement |

### Label d'expédition [shipping_label]

| **Recommandation** | **Justification** |
|--------------------|---------------|
| Utiliser pour regrouper les produits avec les mêmes règles d'expédition | Surdimensionné, fragile, périssable |
| Référencer dans les paramètres d'expédition Merchant Center | Associe les produits aux services d'expédition |

> Ne sous-estimez pas les frais d'expédition. Google intègre l'expédition dans la compétitivité du prix total. La livraison gratuite peut significativement améliorer le classement.

---

## Checklist de vérification d'optimisation

Après avoir optimisé votre flux, vérifiez :

| **Attribut** | **Vérification** |
|---------------|-----------|
| Titre | Infos importantes en premier, utilise 150 caractères, suit la formule par catégorie |
| Prix | Correspond à la Landing Page, inclut la TVA si requis |
| Image | 1500x1500px minimum, 75-90% du cadre, fond blanc |
| GTIN | Fourni pour tous les produits avec GTIN |
| Disponibilité | Synchronisé avec l'inventaire réel |
| Description | Détails clés dans les 160 premiers caractères |
| Marque | Précise, reconnaissable |
| Type de produit | Hiérarchique, correspond à la structure du document |
| Labels personnalisés | Remplis avant le lancement de campagne |
| Variantes | Regroupées avec item_group_id, attributs de variante inclus |

---

## Documents liés

| **Document** | **Relation** |
|--------------|------------------|
| [Product Feed Quality Mental Model](<Flux Produit - Qualité du flux produits.md>) | Concepts de qualité de flux |
| [Product Feed Data Specification Reference](<Flux Produit - Spécifications du feed produit.md>) | Spécifications d'attributs |
| [Merchant Center Reference](<Flux Produit - Merchant Center.md>) | Configuration Merchant Center |
| [Product Title Catalog](<Flux Produit - Titres de produits.md>) | Exemples de titres par catégorie |
| [Product Description Catalog](<Flux Produit - Descriptions de produits.md>) | Modèles de descriptions |
| [Feed Segmentation Catalog](<Flux Produit - Tactiques de segmentation.md>) | Stratégies de labels personnalisés |
| [Product Feed Quality Checklist](<Flux Produit - Qualité du flux produits.md>) | Checklist de validation |
| [SOP - Configurer et optimiser le flux produits](<Flux Produit - Configurer et optimiser le feed produit.md>) | Configuration pas à pas |
