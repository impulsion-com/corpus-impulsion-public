# Optimiser le panier et le tunnel de paiement

> **Plateforme :** Landing Pages
> **Catégorie :** Construction
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Audite et optimise la page panier et la page checkout pour réduire l'abandon, augmenter le taux de complétion et faire grimper le panier moyen. Panier et checkout sont traités comme un seul flow séquentiel parce que la friction dans l'une ou l'autre des étapes bloque le même résultat : des achats finalisés.

> ❓ **La question clé :** Où le flow panier-vers-achat perd-il des clients, et quels changements récupéreront le plus de revenus ?

Cette SOP est en aval de l'optimisation des pages produit et LP. Lance-la quand les taux d'add-to-cart sont sains mais que la complétion d'achat traîne.

---

## Ce que cette SOP ne couvre PAS

Cette SOP ne couvre **pas :**

- Construire les pages produit (Voir : [SOP - Construire une page produit a forte conversion](<Construction - Construire une page produit.md>))
- Construire les LP e-commerce dédiées (Voir : [SOP - Construire une page e-commerce a forte conversion](<Construction - Construire une LP e-commerce.md>))
- Définir le pricing, la politique d'expédition ou la politique de retour : ce sont des décisions business, pas de l'optimisation de page
- Couvrir la configuration du processeur de paiement ou l'intégration technique

## Quand utiliser cette SOP

Lance cette SOP quand :

- Le taux d'abandon panier est au-dessus de 70 % (benchmark (analyse comparative) typique : 65-75 %)
- Le taux d'abandon checkout est au-dessus de 50 %
- Le taux d'add-to-cart est sain mais le taux d'achat est disproportionnellement bas
- Tu lances un nouveau store ou migres vers une nouvelle plateforme
- Après des changements significatifs de prix, expédition ou politiques de retour

---

## Avant de commencer

### Prérequis

- Données analytics : taux d'abandon panier, taux d'abandon checkout, drop-off par étape (si checkout multi-étapes)
- Page panier et page checkout actuelles (URLs en ligne ou captures)
- Politique d'expédition : structure de coût, seuil de livraison gratuite, délais de livraison
- Politique de retour : fenêtre, conditions, processus
- Méthodes de paiement actuellement activées
- Flows email post-achat (si existants) : recovery panier abandonné, confirmation de commande

### Documents de référence (à garder ouverts)

| Document | Utilisé pour |
|----------|----------|
| [Catalogue Sections de pages e-commerce](<../exemples/Exemples - Sections de pages e-commerce.md>) | Patterns de sections panier et checkout (types de page 5-6) |
| [Checklist Qualité Page e-commerce](<../audit/Audit - [Review] Qualité de la LP.md>) | Validation (sections panier et checkout) |
| [Modèle mental Moteur de conversion e-commerce](<../methodes/Méthodes - Moteur de conversion e-commerce.md>) | Rôles du panier et du checkout dans le parcours d'achat |

---

## Cadre d'exécution

| Phase | Objectif | Résultat |
|-------|---------|--------|
| **Phase 1️⃣ : Auditer le flow actuel** | Identifier où les clients abandonnent et pourquoi | Rapport d'audit avec problèmes priorisés |
| **Phase 2️⃣ : Optimiser la page panier** | Corriger les causes d'abandon panier et augmenter le panier moyen | Page panier optimisée |
| **Phase 3️⃣ : Optimiser la page checkout** | Corriger les causes d'abandon checkout et augmenter la complétion | Page checkout optimisée |
| **Phase 4️⃣ : Valider et monitorer** | Passer la checklist, lancer, suivre l'impact | Flow validé avec monitoring en place |

---

## Phase 1️⃣ : Auditer le flow actuel

### 1.1 Cartographier le tunnel actuel

Documente le flow exact qu'un visiteur expérimente de l'add-to-cart à la confirmation de commande :

1. **Action add-to-cart :** Qu'est-ce qui se passe quand le visiteur clique "Ajouter au panier" ? (Reste sur la page ? Va au panier ? Popup mini-panier ?)
2. **Page panier :** Que voit le visiteur ? Décris chaque élément.
3. **Transition panier-vers-checkout :** Un clic ? Mur de login ? Création de compte ?
4. **Étapes de checkout :** Page unique ou multi-étapes ? Combien de champs ? Quelle séquence ?
5. **Options de paiement :** Quelles méthodes sont disponibles ? Le guest checkout est-il par défaut ?
6. **Confirmation de commande :** Que voit le visiteur après avoir payé ?

### 1.2 Identifier les points de chute

Extrais les données analytics pour trouver où les clients partent :

| Métrique | Où la trouver | Ce qu'elle t'indique |
|--------|-----------------|-------------------|
| Taux d'abandon panier | Analytics : utilisateurs qui ont vu le panier mais n'ont pas atteint le checkout | Friction sur la page panier ou manque de confiance |
| Taux d'abandon checkout | Analytics : utilisateurs qui ont démarré le checkout mais n'ont pas complété | Friction au checkout, frais surprises, problèmes de paiement |
| Drop-off par étape de checkout | Analytics de checkout multi-étapes (si dispo) | Quelle étape précise perd le plus de visiteurs |
| Taux add-to-cart vers achat | Événements add-to-cart depuis la page produit vs achats | Santé globale du tunnel |

### 1.3 Lancer l'audit checklist

Passe les sections panier et checkout de la [Checklist Qualité Page e-commerce](<../audit/Audit - [Review] Qualité de la LP.md>) sur les pages actuelles. Documente chaque vérification qui échoue.

### 1.4 Prioriser les problèmes

Classe les vérifications échouées par impact :

| Priorité | Critère | Exemples |
|----------|----------|---------|
| Critique | Cause directement l'abandon | Inscription forcée, frais de livraison surprise au checkout, pas de guest checkout |
| Haute | Augmente significativement la friction | Pas d'indicateur de seuil de livraison gratuite, champ code promo trop visible, pas de validation inline |
| Moyenne | Réduit la confiance ou le panier moyen | Pas de badges de confiance, pas de cross-sell, copy CTA faible |
| Faible | Améliorations nice-to-have | Micro-animations, order bumps, "save for later" |

---

## Phase 2️⃣ : Optimiser la page panier

Utilise les sections 5.1-5.6 du [Catalogue Sections de pages e-commerce](<../exemples/Exemples - Sections de pages e-commerce.md>) pour les patterns.

### 2.1 Corriger le récapitulatif de commande

Le visiteur doit instantanément comprendre ce qu'il achète et ce que ça coûte.

1. **Affichage produit :** Chaque item montre : miniature (correspondant à la variante sélectionnée), nom, détails de variante, quantité, prix unitaire, total ligne.
2. **Détail du total :** Affiche : sous-total, estimation d'expédition (pas "calculé au checkout"), estimation de taxes, remises appliquées, total.
3. **Estimation de livraison :** Affiche la date de livraison estimée pour la commande.

> ⚠️ **"Expédition calculée au checkout" tue les conversions :** Si tu ne peux pas afficher l'expédition exacte sur la page panier, montre une estimation ou une fourchette. Les frais surprises au checkout sont la cause n°1 d'abandon.

### 2.2 Permettre une édition facile

1. **Ajustement de quantité :** Boutons +/- avec mise à jour live du total (sans rechargement de page).
2. **Retrait avec annulation :** Quand un visiteur retire un item, affiche "Item retiré" avec un lien "Annuler" pendant 5 secondes.
3. **Save for later :** Propose une option "Déplacer dans la wishlist" plutôt que juste "Retirer".

### 2.3 Implémenter des boosters de panier moyen

1. **Barre de progression livraison gratuite :** Si tu as un seuil de livraison gratuite, montre une barre de progression visuelle : "Plus que 15 € pour la livraison gratuite !" Si le seuil est atteint, affiche : "Tu as obtenu la livraison gratuite !"
2. **Cross-sell panier :** Montre 2-3 produits complémentaires à bas prix avec des boutons "Ajouter" en un clic. Si le visiteur est sous le seuil de livraison gratuite, suggère un produit qui le qualifierait.
3. **Champ code promo discret :** Remplace tout input de code promo trop visible par un lien texte rétractable "Tu as un code promo ?".

### 2.4 Renforcer le CTA checkout

1. **Copy du CTA :** "Passer au checkout sécurisé" (pas "Continuer" ni "Suivant").
2. **Double placement :** Bouton checkout en haut et en bas du panier.
3. **Express pay :** Boutons Apple Pay, Google Pay, PayPal, Shop Pay visibles.
4. **Badges de confiance :** Logos de méthodes de paiement + badge de sécurité près du CTA.
5. **Politique de retour :** Rappel d'une ligne : "Retours gratuits sous 60 jours".

---

## Phase 3️⃣ : Optimiser la page checkout

Utilise les sections 6.1-6.7 du [Catalogue Sections de pages e-commerce](<../exemples/Exemples - Sections de pages e-commerce.md>) pour les patterns.

### 3.1 Corriger l'accès et l'inscription

1. **Guest checkout par défaut :** Le formulaire de checkout doit se charger immédiatement sans demander de login ou d'inscription. Si tu forces actuellement la création de compte, retire-la.
2. **Email d'abord :** Mets l'adresse email en premier champ. Si le visiteur abandonne le checkout, tu peux déclencher des emails de recovery.
3. **Express checkout en évidence :** Boutons Apple Pay, Google Pay, Shop Pay au-dessus du formulaire en alternative au formulaire complet.
4. **Login client existant :** Petit lien "Tu as déjà un compte ? Se connecter". Disponible mais pas bloquant pour le chemin invité.

### 3.2 Minimiser la friction du formulaire

1. **Audit du nombre de champs :** Liste chaque champ de ton formulaire de checkout. Retire tout champ qui n'est pas requis pour finaliser l'achat. Champs typiquement supprimables : nom de l'entreprise (optionnel), téléphone (si pas nécessaire pour la livraison), prénom/nom séparés (utilise "Nom complet").
2. **Layout colonne unique :** Tous les champs dans une colonne sur desktop et mobile.
3. **Smart defaults :** Détection auto du pays par IP, auto-remplissage de la ville à partir du code postal, "facturation identique à la livraison" coché par défaut.
4. **Validation inline :** Coche verte sur les champs valides au fil du remplissage. Highlight rouge + texte d'erreur spécifique sur les champs invalides. N'attends pas le "Soumettre" pour valider.
5. **Claviers mobile :** Clavier numérique pour code postal, téléphone, carte bancaire. Clavier email (avec bouton @) pour le champ email.

### 3.3 Assurer la transparence des coûts

1. **Récap de commande persistant :** Visible à côté du formulaire sur desktop (sidebar). Repliable sur mobile mais facile à ouvrir.
2. **Miniatures des items :** Petites images produit dans le récap pour que les visiteurs puissent confirmer visuellement leur commande.
3. **Le total doit correspondre au panier :** Le total affiché au checkout doit correspondre à celui affiché sur la page panier. Aucun nouveau frais qui apparaît pour la première fois au checkout.

### 3.4 Étendre les options de paiement

1. **Méthodes de paiement minimum :** Carte de crédit/débit + PayPal + au moins une méthode supplémentaire pertinente pour ton marché.
2. **Buy-now-pay-later :** Pour les produits au-dessus de 50 €, active Klarna, Afterpay ou équivalent. Affiche le prix en mensualités : "Paie en 4 fois de 34,50 €".
3. **Logos des méthodes de paiement :** Affiche visuellement toutes les méthodes acceptées près de la section de paiement.

### 3.5 Maximiser la confiance au paiement

1. **Retirer la navigation :** Pas de nav header, pas de liens footer. Seul "Retour au panier" comme sortie.
2. **Badge SSL/sécurité :** Icône cadenas + "Ton paiement est chiffré et sécurisé" près des champs de paiement.
3. **Rappel de garantie :** "Garantie satisfait ou remboursé 60 jours" près du bouton de validation de commande.
4. **Accès au contact :** Chat ou numéro de téléphone visible depuis le checkout.
5. **Bouton de validation de commande :** Texte clair : "Valider la commande" ou "Payer 138,00 €". Pas "Soumettre".

---

## Phase 4️⃣ : Valider et surveiller

### 4.1 Passer la checklist

Passe les sections panier et checkout de la [Checklist Qualité Page e-commerce](<../audit/Audit - [Review] Qualité de la LP.md>). Chaque élément doit passer.

### 4.2 Tester le flow complet

1. Complète un achat test sur mobile : ajoute le produit, regarde le panier, ajuste la quantité, passe au checkout, remplis le formulaire, paie.
2. Complète un achat test en guest checkout.
3. Complète un achat test avec express pay (Apple Pay ou équivalent).
4. Vérifie que l'email de panier abandonné se déclenche si tu abandonnes à l'étape de l'email.
5. Vérifie que la page de confirmation de commande charge correctement.

### 4.3 Mettre en place le monitoring

Suis ces métriques avant et après optimisation pour mesurer l'impact :

| Métrique | Baseline (avant) | Cible |
|--------|-------------------|--------|
| Taux d'abandon panier | | Réduire de 5-15 % en relatif |
| Taux d'abandon checkout | | Réduire de 10-20 % en relatif |
| Panier moyen | | Augmenter de 5-10 % (via cross-sell/seuil) |
| Taux panier-vers-achat | | Augmenter proportionnellement |

### 4.4 Vérifications finales

- [ ] Le guest checkout fonctionne de bout en bout sans création de compte
- [ ] Aucun frais surprise n'apparaît au checkout sans avoir été visible sur le panier
- [ ] La barre de progression de livraison gratuite fonctionne (si seuil existant)
- [ ] Le champ code promo est discret (pas trop visible)
- [ ] Les options express pay fonctionnent (Apple Pay, Google Pay, PayPal)
- [ ] La validation inline du formulaire fonctionne sur tous les champs requis
- [ ] La page de confirmation charge immédiatement après le paiement
- [ ] L'email de panier abandonné se déclenche correctement (si activé)
- [ ] Le flow complet fonctionne sur un vrai appareil mobile

---

## Validation et critères de complétion

Cette SOP est terminée quand :

- [ ] La page panier passe toutes les vérifications panier de la [Checklist Qualité Page e-commerce](<../audit/Audit - [Review] Qualité de la LP.md>)
- [ ] La page checkout passe toutes les vérifications checkout de la [Checklist Qualité Page e-commerce](<../audit/Audit - [Review] Qualité de la LP.md>)
- [ ] Flow d'achat complet testé en mobile avec guest checkout
- [ ] Métriques baseline consignées pour comparaison
- [ ] Aucun frais surprise au checkout
- [ ] Options express pay et buy-now-pay-later activées

---

## Passerelle de sortie

Une fois que le flow optimisé est en ligne :

| Prochaine étape | Action |
|-----------|--------|
| Monitorer les métriques | Comparer les taux d'abandon panier et checkout vs baseline après 2 semaines |
| Recovery panier abandonné | S'il n'est pas déjà actif, configurer une séquence email de recovery |
| Itérer | Si certaines étapes montrent toujours un drop-off élevé, lancer des corrections ciblées |
| Scaler | Une fois que le flow convertit bien, augmenter le budget de trafic payant |

**En cas de problème :**

| Problème | Rediriger vers |
|-------|----------|
| Abandon panier toujours élevé malgré l'optimisation | Vérifier les problèmes techniques (vitesse, bugs mobile), revoir la compétitivité prix/expédition |
| Abandon au checkout à l'étape paiement | Tester d'autres providers de paiement, vérifier les erreurs de paiement dans les logs |
| Faible panier moyen malgré le cross-sell | Tester d'autres produits cross-sell, ajuster le seuil de livraison gratuite |
| Bonnes métriques de flow mais faible add-to-cart en amont | [SOP - Construire une page produit a forte conversion](<Construction - Construire une page produit.md>) |

---

## Référence rapide : bibliothèque support

| Document | Type | Utilisé dans |
|----------|------|---------|
| [Catalogue Sections de pages e-commerce](<../exemples/Exemples - Sections de pages e-commerce.md>) | Catalogue | Phase 2 (sections panier 5.1-5.6), Phase 3 (sections checkout 6.1-6.7) |
| [Checklist Qualité Page e-commerce](<../audit/Audit - [Review] Qualité de la LP.md>) | Checklist | Phase 1 (audit), Phase 4 (validation) |
| [Modèle mental Moteur de conversion e-commerce](<../methodes/Méthodes - Moteur de conversion e-commerce.md>) | Modèle mental | Compréhension du rôle du panier et du checkout |

---

## Documents liés

| Document | Relation |
|----------|-------------|
| [SOP - Construire une page produit a forte conversion](<Construction - Construire une page produit.md>) | Amont : la page produit doit bien convertir avant d'optimiser panier/checkout |
| [SOP - Construire une page e-commerce a forte conversion](<Construction - Construire une LP e-commerce.md>) | Amont : la LP dédiée alimente ce flow |
| [Modèle mental Moteur de conversion e-commerce](<../methodes/Méthodes - Moteur de conversion e-commerce.md>) | Méthode pour le rôle du panier et du checkout dans le parcours d'achat |
| [Catalogue Sections de pages e-commerce](<../exemples/Exemples - Sections de pages e-commerce.md>) | Patterns de section pour les pages panier et checkout |
| [Checklist Qualité Page e-commerce](<../audit/Audit - [Review] Qualité de la LP.md>) | Validation pour panier et checkout |

---

## Version

| Version | Date | Changements |
|---------|------|---------|
| 1.0 | 2026-02-01 | Publication initiale |

