# Qualité des pages e-commerce

> **Plateforme :** Landing Pages
> **Catégorie :** Audit
> **Type :** Checklist
> **Mis à jour :** 2026-05-07

## Objectif

Valide que les pages e-commerce (pages produit, pages catégorie, panier, checkout, page d'accueil et LPs e-commerce dédiées) respectent les exigences de conversion avant le lancement ou après un audit.

---

## Ce que cette checklist valide

Cette checklist confirme :

- Chaque type de page a ses sections requises dans la bonne hiérarchie
- Les éléments de confiance, preuve sociale et offre sont présents là où c'est important
- Les points de friction sont minimisés dans les flux panier et checkout
- L'expérience mobile répond aux exigences spécifiques e-commerce
- La cohérence inter-pages (signaux de confiance, info livraison, politique de retour)

Cette checklist ne couvre **PAS** :

- La validation de la qualité du texte publicitaire ou des titres (Voir : [Headline Quality Checklist](<../../03-google-ads/search/Search - [Review] Qualité des titres.md>))
- La validation des patterns de sections LP pour Lead Gen ou SaaS (Voir : [LP Quality Checklist](<Audit - [Review] Qualité de la LP.md>))
- Les patterns de sections ou exemples (Voir : [Ecommerce Page Section Catalog](<../exemples/Exemples - Sections de pages e-commerce.md>))
- La configuration du tracking (suivi des conversions/évènements) ou de la mesure (Voir : les checklists liées à la mesure)

---

## Quand l'utiliser

Exécuter cette checklist :

- Après la création d'une nouvelle page e-commerce (page produit, page catégorie, LP dédiée)
- Après la refonte ou l'optimisation du flux panier/checkout
- Lors de l'audit d'un site e-commerce existant pour des problèmes de conversion
- Avant le lancement d'une campagne de trafic payant vers une destination e-commerce

Sélectionnez les sections de type de page qui s'appliquent. Exécutez la section Inter-pages pour chaque audit.

---

## Vérifications inter-pages (tous les types de pages)

### Performance et mobile

- [ ] Les pages principales se chargent en moins de 3 secondes sur mobile (tester avec PageSpeed Insights ou WebPageTest)
- [ ] Toutes les pages sont entièrement responsives : pas de scroll horizontal, pas de contenu coupé sur mobile
- [ ] Les cibles tactiles (boutons, liens, champs de formulaire) font minimum 44x44px avec un espacement adéquat
- [ ] Les images sont optimisées : compressées, lazy-loaded sous la ligne de flottaison, format WebP ou moderne
- [ ] Aucun pop-up ou interstitiel intrusif qui bloque le contenu sur mobile dans les 5 premières secondes

### Cohérence de la confiance et des politiques

- [ ] La politique de retour/remboursement utilise le même libellé sur la page produit, le panier et le checkout
- [ ] Les informations de livraison (coût, délai, seuil de livraison gratuite) sont cohérentes sur toutes les pages
- [ ] Les logos des moyens de paiement apparaissent dans le même ordre sur le panier, le checkout et le footer
- [ ] Le moyen de contact (chat, téléphone, email) est accessible depuis chaque page
- [ ] Le certificat SSL est actif et le cadenas est visible dans le navigateur

### Navigation et UX

- [ ] Le logo renvoie vers la page d'accueil depuis chaque page
- [ ] Le fil d'Ariane est présent sur les pages catégorie et produit
- [ ] Le widget panier dans le header affiche le nombre d'articles et est accessible depuis chaque page
- [ ] La barre de recherche est visible et fonctionnelle sur chaque page (avec suggestion automatique)
- [ ] Les éléments cliquables ont l'air cliquables (états au survol, style bouton, liens soulignés)
- [ ] Les éléments non cliquables n'ont pas l'air cliquables (pas de style trompeur)

---

## Vérifications page d'accueil

### Proposition de valeur et hero

- [ ] La proposition de valeur est instantanément claire : le visiteur sait ce que vend la boutique en 3 secondes
- [ ] Le CTA principal est visible au-dessus de la ligne de flottaison avec une destination spécifique (pas "En savoir plus")
- [ ] L'image ou vidéo hero renforce la marque et la gamme de produits (pas de stock générique)

### Navigation et découverte

- [ ] Les catégories principales de produits sont visibles avec des images descriptives et des labels clairs
- [ ] Les labels de catégories sont descriptifs (pas créatifs/ambigus)
- [ ] La section produits mis en avant affiche les best-sellers, nouveautés ou collection sélectionnée

### Offres et preuve sociale

- [ ] La barre d'offre site-wide est présente avec une offre spécifique, un déclencheur d'urgence et un CTA lié
- [ ] La preuve sociale au niveau boutique est visible : notes tierces (Trustpilot), logos presse, ou nombre de clients
- [ ] L'histoire de marque ou la mission est présente (brève, sous la ligne de flottaison)

---

## Vérifications page catégorie

### Header et orientation

- [ ] Le nom de la catégorie (H1) est descriptif et correspond à l'intention de recherche du visiteur
- [ ] Le fil d'Ariane montre la hiérarchie de la catégorie
- [ ] Le nombre de produits est visible ("47 produits")

### Filtrage et tri

- [ ] Les options de tri sont disponibles : meilleures ventes, prix (croissant/décroissant), nouveautés, mieux notés
- [ ] Les filtres sont visibles par défaut sur desktop (pas cachés derrière un bouton)
- [ ] Les filtres appliqués sont affichés sous forme de tags supprimables
- [ ] Les filtres mettent à jour les résultats dynamiquement sans rechargement complet de la page
- [ ] Les combinaisons de filtres à zéro résultat sont prévenues ou gérées gracieusement

### Cartes produit

- [ ] Chaque carte affiche : image produit, titre, prix (actuel + original si remisé), note étoiles, nombre d'avis
- [ ] Les images produit sont cohérentes en taille, style et fond
- [ ] La disponibilité des variantes est visible sur les cartes (ex. "5 couleurs" ou nuancier)
- [ ] Les badges de preuve sociale sont présents sur les cartes pertinentes : "Best-seller", "Nouveau", "Tendance"
- [ ] Les indicateurs de stock faible sont affichés quand légitimes : "Plus que 3 en stock"
- [ ] La disposition en grille est utilisée pour les produits visuels, la disposition en liste pour les produits orientés spécifications

---

## Vérifications page produit

### Identité produit (au-dessus de la ligne de flottaison)

- [ ] La galerie d'images a minimum 4-5 images : vue principale, angles, lifestyle, détail, référence d'échelle
- [ ] La galerie supporte le zoom sur desktop et le pinch-to-zoom sur mobile
- [ ] La galerie inclut une vidéo ou vue 360° (si applicable)
- [ ] La galerie se met à jour quand le visiteur sélectionne une variante différente (couleur, style)
- [ ] Le titre produit est descriptif et inclut les attributs clés
- [ ] La note étoiles et le nombre d'avis sont visibles près du titre produit, liés aux avis complets

### Pile de l'offre

- [ ] Le prix est proéminent et placé près du bouton d'ajout au panier
- [ ] Si remisé : le prix original (barré), le nouveau prix et le montant/pourcentage d'économie sont tous affichés
- [ ] Les informations de livraison sont visibles près du CTA : coût, délai estimé ou seuil de livraison gratuite
- [ ] La politique de retour/garantie est résumée près du CTA (pas seulement dans le footer)
- [ ] La disponibilité est affichée : "En stock", "Expédié sous 24h" ou "Plus que X en stock"

### Action d'ajout au panier

- [ ] Le bouton d'ajout au panier est l'élément visuellement le plus proéminent de la page
- [ ] Les sélecteurs de variantes (taille, couleur) sont fonctionnels et mettent à jour la galerie/prix en temps réel
- [ ] Un guide des tailles est accessible près du sélecteur de taille (pour les produits taillés)
- [ ] Un sélecteur de quantité est présent avec des contrôles +/- simples
- [ ] Les options de paiement express (Apple Pay, Google Pay, Shop Pay) sont visibles sous le CTA principal
- [ ] Un retour clair est donné après l'ajout au panier (changement d'état du bouton, mise à jour du mini-panier)
- [ ] Une barre CTA sticky apparaît sur mobile lors du scroll au-delà de la section principale d'ajout au panier

### Preuve sociale

- [ ] Les avis clients sont présents avec notes étoiles, texte d'avis et badges acheteur vérifié
- [ ] Le tri/filtrage des avis est disponible : plus utiles, plus récents, par étoile, photos uniquement
- [ ] Les photos de clients acheteurs vérifiés sont affichées
- [ ] Le nombre d'avis est suffisant pour être crédible (si < 5 avis, compléter avec d'autres signaux de confiance)

### Détails produit

- [ ] La description produit commence par les bénéfices, pas seulement les caractéristiques/specs
- [ ] Les spécifications techniques sont dans un format tableau scannable
- [ ] Une section FAQ couvre les questions spécifiques au produit
- [ ] Les sections de contenu sont extensibles/réductibles sur mobile

### Cross-sell et confiance

- [ ] Une section "Fréquemment achetés ensemble" ou "Complétez le set" est présente sous le CTA principal
- [ ] La section produits associés/recommandés affiche 4-6 alternatives pertinentes
- [ ] La section de renforcement de confiance inclut : politique de retour, badge paiement sécurisé, option de contact

---

## Vérifications LP e-commerce dédiée

### Structure

- [ ] Pas de navigation du site : pas de nav header, pas de liens footer, pas de sortie sauf le CTA
- [ ] La page suit la séquence de persuasion e-commerce : Présentation produit > Preuves clients > Bénéfices produit > Les détails > Confiance d'achat > Agissez maintenant > Finalisez votre achat
- [ ] L'image/vidéo produit est le visuel hero (pas une image de marque générique)
- [ ] Le prix est visible au-dessus de la ligne de flottaison
- [ ] Plusieurs CTAs apparaissent tout au long de la page (minimum : au-dessus de la ligne de flottaison, après les bénéfices, bas de page)

### Éléments de persuasion

- [ ] La section bénéfices traduit les caractéristiques en résultats pour le visiteur
- [ ] La preuve sociale inclut les meilleurs avis sélectionnés, photos clients et/ou résultats avant/après
- [ ] Le traitement des objections couvre : politique de retour, livraison, taille/fit, "ce qui est inclus"
- [ ] L'urgence est légitime : rareté de stock, date limite de livraison ou promotion limitée dans le temps
- [ ] La section CTA finale récapitule la valeur, affiche le prix et inclut le checkout express + rappel de garantie

### Décision LP dédiée vs page produit

- [ ] Si promotion/offre saisonnière : la LP dédiée est utilisée (pas la page produit)
- [ ] Si trafic des annonces Shopping : atterrissage sur la page produit (pas une LP dédiée)
- [ ] Si trafic froid depuis Display/YouTube/Demand Gen : la LP dédiée est utilisée

---

## Vérifications page panier

### Récapitulatif de commande

- [ ] Chaque article affiche : miniature (correspondant à la variante), nom, détails de variante, quantité, prix
- [ ] Le total de commande est ventilé : sous-total, estimation livraison, taxes, remises, total
- [ ] Aucun frais n'est caché ou n'apparaît qu'au checkout
- [ ] La date de livraison estimée est affichée par article ou pour la commande

### Modifier et ajuster

- [ ] Le visiteur peut changer la quantité avec mise à jour du total en temps réel (pas de rechargement de page)
- [ ] Le visiteur peut supprimer des articles avec une option d'annulation
- [ ] L'option "Sauvegarder pour plus tard" ou wishlist est disponible

### Livraison et promotions

- [ ] La barre de progression de livraison gratuite est présente (si un seuil de livraison gratuite existe)
- [ ] Les remises appliquées sont visibles avec le nom du code et le montant d'économie
- [ ] Le champ de code promo est présent mais discret (lien texte réductible, pas un champ de saisie proéminent)

### Cross-sell

- [ ] Le cross-sell du panier affiche 2-3 produits complémentaires à faible coût avec ajout en un clic
- [ ] Si en dessous du seuil de livraison gratuite : un produit suggéré pour se qualifier est affiché

### CTA et confiance

- [ ] Le bouton "Continuer vers le paiement" est l'élément le plus proéminent, placé en haut et en bas
- [ ] Les boutons de paiement express (Apple Pay, Google Pay, PayPal) sont visibles
- [ ] Les badges de confiance et logos de moyens de paiement sont près du CTA checkout
- [ ] Le rappel de la politique de retour est visible

---

## Vérifications page checkout

### Checkout invité et accès

- [ ] Le checkout invité est disponible par défaut (pas d'inscription forcée)
- [ ] L'adresse email est le premier champ demandé (permet la récupération de panier abandonné)
- [ ] La connexion client existant est disponible mais ne bloque pas le parcours invité
- [ ] Les options de checkout express (Apple Pay, Google Pay, Shop Pay) sont proéminentes au-dessus du formulaire

### Design du formulaire

- [ ] Le formulaire utilise une disposition en colonne unique
- [ ] Le nombre de champs est minimisé : uniquement les champs requis pour finaliser l'achat
- [ ] "Nom complet" est un seul champ (pas prénom/nom séparés sauf exigence légale)
- [ ] La case "Facturation identique à la livraison" est présente et cochée par défaut
- [ ] Des valeurs par défaut intelligentes sont utilisées : détection auto du pays, remplissage auto de la ville à partir du code postal
- [ ] La validation inline est active : feedback vert/rouge pendant que le visiteur remplit chaque champ
- [ ] Les messages d'erreur indiquent clairement ce qui ne va pas et comment corriger
- [ ] Le clavier numérique apparaît pour les champs numériques sur mobile (code postal, téléphone, carte bancaire)

### Visibilité du récapitulatif de commande

- [ ] Le récapitulatif de commande avec miniatures des articles est visible à côté du formulaire (sidebar sur desktop, réductible sur mobile)
- [ ] La ventilation du total affiche : sous-total, livraison, taxes, remises, total final
- [ ] Le total correspond à ce qui était affiché sur la page panier (pas de surprises)

### Paiement

- [ ] Plusieurs moyens de paiement sont proposés : carte bancaire, PayPal, plus au moins une option supplémentaire
- [ ] L'option de paiement en plusieurs fois est disponible pour les produits de plus de 50€ (Klarna, Afterpay, etc.)
- [ ] Les logos des moyens de paiement sont visibles près de la section paiement

### Confiance et finalisation

- [ ] Aucun lien de navigation : seulement "retour au panier" comme sortie
- [ ] Le badge SSL/sécurité est visible près des champs de paiement
- [ ] Le rappel de garantie/politique de retour est près du bouton de commande
- [ ] Le moyen de contact (chat, téléphone) est accessible depuis le checkout
- [ ] Le texte du bouton de commande est clair : "Commander" ou "Payer X€" (pas "Soumettre")
- [ ] Aucun frais surprise n'apparaît à l'étape finale
- [ ] La page de confirmation de commande se charge immédiatement avec un retour clair de succès

---

## Référence rapide

| Document | Relation |
|----------|-------------|
| [Ecommerce Conversion Engine Mental Model](<../methodes/Méthodes - Moteur de conversion e-commerce.md>) | Définit les types de pages, hiérarchies et logique de conversion |
| [Ecommerce Page Section Catalog](<../exemples/Exemples - Sections de pages e-commerce.md>) | Patterns de sections et exemples par type de page |
| [LP Quality Checklist](<Audit - [Review] Qualité de la LP.md>) | Validation pour les LPs Lead Gen/SaaS |
| [SOP - Construire une page produit a forte conversion](<../construction/Construction - Construire une page produit.md>) | Utilise cette checklist comme critère de validation |
| [SOP - Construire une page e-commerce a forte conversion](<../construction/Construction - Construire une LP e-commerce.md>) | Utilise cette checklist comme critère de validation |
| [SOP - Optimiser le panier et le tunnel de paiement](<../construction/Construction - Optimiser le panier et le tunnel.md>) | Utilise cette checklist comme critère de validation |

---

## Documents associés

| Document | Relation |
|----------|-------------|
| [Ecommerce Conversion Engine Mental Model](<../methodes/Méthodes - Moteur de conversion e-commerce.md>) | Méthode pour comprendre les types de pages e-commerce et leurs rôles |
| [Ecommerce Page Section Catalog](<../exemples/Exemples - Sections de pages e-commerce.md>) | Patterns de sections à implémenter quand les vérifications échouent |
| [Conversion Amplifier Mental Model](<../methodes/Méthodes - Amplificateur de conversion.md>) | Méthode compagne pour les Landing Pages Lead Gen/SaaS |
| [LP Hierarchy Mental Model](<../methodes/Méthodes - Hiérarchie de Landing Page.md>) | Méthode compagne : hiérarchie en 7 sections pour les LPs Lead Gen/SaaS |

---

## Version

| Version | Date | Changements |
|---------|------|---------|
| 1.0 | 2026-02-01 | Publication initiale |
