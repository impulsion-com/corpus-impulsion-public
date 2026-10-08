# Améliorer l'expérience de la page de destination

> **Plateforme :** Landing Pages
> **Catégorie :** Construction
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Phase 1️⃣ : Audit

### 1.1 Audit du message match

**Objectif :** Vérifier que ta landing page délivre ce que ton annonce promet.

> ❓ **Question centrale :** Si quelqu'un clique sur une annonce, la landing page lui confirme-t-elle immédiatement qu'il est au bon endroit ?

**Action :**

1. Extrais tes 10 meilleurs keywords par dépense.
2. Pour chaque keyword, note les assets RSA qui s'affichent.
3. Visite la landing page et compare :
    - Le titre de la LP reflète-t-il les assets RSA ?
    - Le contenu de la LP répond-il à ce que sous-entend le keyword ?
    - L'offre mentionnée dans l'annonce est-elle visible sur la LP ?

**Modèle d'audit message match :**

| Keyword | Titre annonce | Titre LP | Match ? | Problème |
| --- | --- | --- | --- | --- |
| "crm software" | "All-in-One CRM for Sales Teams" | "Welcome to Our Company" | ❌ | Le titre LP ne mentionne pas CRM |
| "free crm trial" | "Start Your Free CRM Trial" | "CRM Software - Free Trial" | ✅ | Bon match |
| "sales pipeline tool" | "Manage Your Sales Pipeline" | "All-in-One CRM for Sales Teams" | ⚠️ | Partiel - mentionne sales mais pas pipeline |

**Échecs courants de message match :**

| Échec | Exemple | Impact |
| --- | --- | --- |
| **Titre LP générique** | Annonce : "Emergency Plumber 24/7" → LP : "Welcome to ABC Services" | Le visiteur ne sait pas s'il est au bon endroit |
| **Offre différente** | Annonce : "50% Off First Month" → LP : aucune mention de réduction | Le visiteur se sent trompé |
| **Mauvais focus produit** | Annonce : "Running Shoes" → LP : page générique d'équipement athlétique | Le visiteur doit chercher ce qu'il veut |
| **Mismatch d'intention** | Annonce : "Get Instant Quote" → LP : Homepage | Le visiteur ne peut pas faire l'action promise |

> 💡 **Astuce :** Utilise le Dynamic Text Replacement (DTR) pour faire correspondre automatiquement les titres de LP aux keywords. La plupart des landing page builders (Unbounce, Instapage, Leadpages) l'intègrent en natif.

---

### 1.2 Le test des 5 secondes

**Objectif :** Vérifier que les visiteurs peuvent comprendre ton offre immédiatement.

Quand les visiteurs arrivent sur ta page, ils se posent inconsciemment ces questions dans cet ordre :

| Question | Ce qu'ils pensent | Élément de la LP qui y répond |
| --- | --- | --- |
| **"So what ?"** | C'est quoi ? Qu'est-ce que tu proposes ? | Proposition de valeur centrale / titre |
| **"Who cares ?"** | Pourquoi je devrais m'y intéresser ? En quoi ça m'aide ? | Section bénéfices |
| **"Says who ?"** | Pourquoi je devrais te croire ? | Signaux de confiance / preuve sociale |
| **"What if... ?"** | Et si ça ne marche pas pour moi ? | Gestion des objections / garanties |
| **"Why now ?"** | Pourquoi agir aujourd'hui ? | Urgence / rareté |
| **"Now what ?"** | Qu'est-ce que je dois faire ? | Call to action |

**Lancer le test des 5 secondes :**

1. Ouvre ta landing page.
2. Regarde-la pendant exactement 5 secondes.
3. Détourne le regard et réponds :
    - Que propose cette entreprise ?
    - À qui c'est destiné ?
    - Qu'est-ce que je dois faire ensuite ?
    - Pourquoi je devrais leur faire confiance ?

Si tu ne peux pas répondre, tes visiteurs non plus.

**Audit rapide :**

| Question | Si non → |
| --- | --- |
| Que proposes-tu ? | Corriger la proposition de valeur (section hero) |
| Pourquoi je devrais m'y intéresser ? | Corriger les bénéfices |
| Pourquoi je devrais te faire confiance ? | Corriger la preuve sociale |
| Qu'est-ce que je dois faire ? | Corriger le CTA |
| Pourquoi toi plutôt que la concurrence ? | Corriger la différenciation |
| Pourquoi agir maintenant ? | Corriger urgence / réduction du risque |

Si ta LP échoue à 2 questions ou plus, tu as identifié tes lacunes prioritaires.

---

### 1.3 Audit technique

**Objectif :** Identifier les problèmes techniques qui dégradent la LP Experience.

#### Test de vitesse de la page

1. Va sur [PageSpeed Insights](https://pagespeed.web.dev/) ou télécharge le [plugin Lighthouse Chrome](https://chromewebstore.google.com/detail/lighthouse/blipmdconlkpinefehnmjammfjpmpbjk)
2. Entre l'URL de ta landing page
3. Vérifie les scores Mobile et Desktop

**Benchmarks (analyse comparative) de vitesse :**

| Score | Évaluation | Action |
| --- | --- | --- |
| 90-100 | Bon | Aucune action requise |
| 50-89 | À améliorer | Traiter les problèmes majeurs |
| 0-49 | Mauvais | Priorité critique |

**Problèmes de vitesse fréquents :**

| Problème | Impact | Correction |
| --- | --- | --- |
| Images trop lourdes | Chargement lent | Compresser les images, utiliser le format WebP |
| JavaScript non optimisé | Bloque le rendu | Différer le JS non critique |
| Pas de cache | Temps de chargement répétés | Activer le cache navigateur |
| Trop de requêtes HTTP | Chargement lent | Combiner les fichiers, réduire les plugins |
| Pas de CDN | Latence géographique | Implémenter un CDN |

> ⚠️ **La vitesse mobile est critique :** Pour le retail, 1 seconde de latence supplémentaire en mobile peut impacter les conversions jusqu'à 20 % ([source]<!-- TODO: link target missing -->).

#### Test de mobile-friendliness

1. Va sur [PageSpeed Insights](https://pagespeed.web.dev/) ou télécharge le [plugin Lighthouse Chrome](https://chromewebstore.google.com/detail/lighthouse/blipmdconlkpinefehnmjammfjpmpbjk)
2. Entre l'URL de ta landing page
3. Vérifie les scores Mobile

**Problèmes mobile fréquents :**

| Problème | Symptôme | Correction |
| --- | --- | --- |
| Texte trop petit | Les utilisateurs doivent zoomer pour lire | Augmenter la taille de police (min 16px body) |
| Tap targets trop proches | Boutons difficiles à cliquer | Augmenter la taille et l'espacement (min 44×44px) |
| Scroll horizontal | Contenu plus large que l'écran | Corriger le viewport et le CSS responsive |
| Contenu non visible | Éléments cachés en mobile | Vérifier les breakpoints responsive |
| Chargement mobile lent | Prend 5+ secondes | Optimiser en mobile-first |

#### Vérification des Core Web Vitals

Vérifie ces trois métriques dans PageSpeed Insights :

| Métrique | Ce qu'elle mesure | Cible |
| --- | --- | --- |
| **LCP** (Largest Contentful Paint) | Vitesse de chargement du contenu principal | < 2,5 secondes |
| **INP** (Interaction to Next Paint) | Réactivité de la page aux inputs | < 200 millisecondes |
| **CLS** (Cumulative Layout Shift) | Décalage du contenu pendant le chargement | < 0,1 |

---

### 1.4 Audit du contenu et de la navigation

**Objectif :** Vérifier que ta page est utile et facile à naviguer.

**Checklist de navigation :**

| Élément | Vérification | Problème si échec |
| --- | --- | --- |
| **CTA principal visible** | Vois-tu le CTA principal sans scroller ? | CTA enterré sous la ligne de flottaison |
| **Hiérarchie d'information claire** | Le contenu est-il organisé logiquement ? | Structure confuse |
| **Distractions minimales** | Y a-t-il des liens/CTA en concurrence ? | Trop de points de sortie |
| **Contenu scannable** | Les visiteurs peuvent-ils survoler et comprendre ? | Mur de texte |
| **Flux logique** | Le contenu progresse-t-il naturellement ? | Sections décousues |

**Vérification de l'Attention Ratio :**

> 💡 **Attention Ratio** = Nombre de choses qu'on peut faire ÷ Nombre de choses qu'on devrait faire

**Idéal :** 1:1 (Une page, un objectif, un CTA)

**Audit de ta page :**

- Compte tous les liens cliquables (navigation, footer, social, etc.)
- Compte les CTA qui pointent vers ton objectif de conversion
- Calcule le ratio

| Ratio | Évaluation | Action |
| --- | --- | --- |
| 1:1 à 3:1 | Bon | Page focalisée |
| 4:1 à 10:1 | À retravailler | Retirer les liens qui distraient |
| 10:1+ | Mauvais | Restructuration majeure nécessaire |

**Problèmes de navigation fréquents :**

| Problème | Impact | Correction |
| --- | --- | --- |
| Navigation complète du site sur la LP | Les visiteurs fuient vers d'autres pages | Retirer la nav ou utiliser uniquement des liens d'ancrage |
| Plusieurs CTA en concurrence | Paralysie de décision | Un CTA principal par page |
| Liens dans le footer | Points de sortie | Minimiser ou retirer |
| Liens vers réseaux sociaux | Fuite de trafic | Déplacer vers la page de remerciement |
| Liens internes excessifs | Distraction | Retirer les liens non essentiels |

---

### 1.5 Audit de la confiance et de la transparence

**Objectif :** Vérifier que ta page établit la crédibilité.

Google cherche explicitement les signaux de transparence et de confiance. Leur absence peut dégrader la LP Experience.

**Checklist des éléments de confiance :**

| Élément | Présent ? | Priorité |
| --- | --- | --- |
| **Nom de l'entreprise visible** | Oui/Non | Haute |
| **Adresse physique** | Oui/Non | Haute (surtout en local) |
| **Numéro de téléphone** | Oui/Non | Haute (surtout en Lead Gen) |
| **Adresse email** | Oui/Non | Moyenne |
| **Lien vers la politique de confidentialité** | Oui/Non | Haute |
| **Lien vers les conditions d'utilisation** | Oui/Non | Moyenne |
| **Preuve sociale** (avis, témoignages) | Oui/Non | Haute |
| **Badges de confiance** (sécurité, certifications) | Oui/Non | Moyenne |
| **Photos réelles de l'équipe** | Oui/Non | Moyenne |
| **Études de cas / résultats** | Oui/Non | Moyenne |

> 💡 **Surtout en Lead Gen :** L'absence d'informations de contact est un tueur de confiance majeur. Si tu demandes les informations de quelqu'un, il doit savoir que tu es légitime.

---

## Phase 2️⃣ : Réparation

*Exécute cette phase pour chaque lacune identifiée en Phase 1.*

> ⚠️ **Tu n'arrives pas à corriger un problème fondamental ? Le problème est peut-être ton offre, pas ta landing page.**
> Si tu galères à créer une proposition de valeur convaincante, que tu ne peux pas articuler de bénéfices clairs, que tu n'as pas de preuve sociale à montrer ou que tu ne peux pas offrir de réduction du risque, le problème ne vient pas de ta landing page. **C'est ton offre.**
> 💡 **Une landing page ne peut être plus forte que l'offre qu'elle porte.**
> Avant de continuer, demande-toi :
> - Avons-nous une raison convaincante pour qu'on nous choisisse ?
> - Avons-nous des preuves que nous délivrons des résultats ?
> - Avons-nous quelque chose qui réduit le risque de nous essayer ?
> Si la réponse est "non" à plusieurs questions, mets cette SOP en pause et corrige d'abord l'offre. Aucune optimisation de landing page ne compensera une offre faible ou indifférenciée.

---

### 2.1 Corriger les problèmes de message match

**Objectif :** S'assurer que ta LP délivre exactement ce que ton annonce promet.

#### Option A : aligner la LP sur les annonces (le plus simple)

Si tu as quelques keywords à fort volume, ajuste ta LP pour correspondre :

1. Identifie tes 5 meilleurs keywords par dépense
2. Mets à jour le titre de la LP pour inclure le keyword/thème principal
3. Assure-toi que l'offre mentionnée dans les annonces est mise en avant sur la LP
4. Aligne le langage du CTA entre l'annonce et la LP

**Exemple :**

| Élément | Annonce | LP (avant) | LP (après) |
| --- | --- | --- | --- |
| Titre | "CRM for Sales Teams" | "Welcome to SalesForce Pro" | "CRM Software for Sales Teams" |
| CTA | "Start Free Trial" | "Get Started" | "Start Your Free Trial" |
| Offre | "Free 14-Day Trial" | (non mentionnée) | "Try Free for 14 Days" affiché en évidence |

#### Option B : utiliser le Dynamic Text Replacement (avancé)

Pour les comptes avec beaucoup de variations de keywords, implémente du DTR :

**Comment marche le DTR :**

1. Ajoute des paramètres d'URL à tes final URLs : `?keyword={keyword}`
2. Le builder de landing page lit le paramètre
3. Le titre de la LP s'adapte dynamiquement

**Exemple :**

- URL : [`yoursite.com/crm?keyword=sales+crm+software`](http://yoursite.com/crm?keyword=sales+crm+software)
- Le titre de la LP affiche : "Sales CRM Software" au lieu d'un titre générique

**Bénéfices du DTR :**

- Message match parfait sans construire plusieurs pages
- Trafic consolidé pour des données de conversion meilleures
- Expérimentation A/B plus rapide avec des tailles d'échantillon plus grandes

> La plupart des landing page builders (Unbounce, Instapage, Leadpages) ont du DTR intégré. Si tu n'utilises pas de builder, tu peux développer du DTR sur mesure. C'est une des premières choses que je demande aux développeurs de mes clients de construire pour moi.

---

### 2.2 Corriger les problèmes de section hero

**Objectif :** Rendre ta proposition de valeur limpide dès les 5 premières secondes.

La section hero capte 80 % de l'attention des visiteurs. Si elle échoue, le reste n'a aucune importance.

**Éléments de la section hero**

| Élément | Rôle | Exigence |
| --- | --- | --- |
| **Titre principal** | Capter l'attention, communiquer la valeur centrale | Clair, spécifique, axé bénéfice |
| **Sous-titre** | Compléter le titre, ajouter du détail | Clarifie le "comment" ou le "pour qui" |
| **Visuel hero** | Renforcer le message, montrer le résultat | Pertinent, haute qualité |
| **CTA principal** | Indiquer aux visiteurs quoi faire | Visible, orienté action |
| **Indicateur de confiance** | Établir la crédibilité immédiate | Preuve sociale ou autorité |

#### Formule de titre

**Titre principal :** Concentre-toi sur le résultat ou la transformation.

| Verticale | ❌ Faible | ✅ Fort |
| --- | --- | --- |
| Lead Gen | "Professional Roofing Services" | "Licensed Roofers in [City] - Free Quote in 1 Minute" |
| SaaS | "Powerful Business Software" | "Close Deals 40% Faster with AI-Powered CRM" |
| Ecommerce | "Quality Running Shoes" | "200+ Running Shoes - Free Shipping Over €50" |

#### Stratégies de sous-titre

Choisis une stratégie qui complète ton titre :

| Stratégie | Rôle | Exemple |
| --- | --- | --- |
| **Clarification** | Expliquer le titre | "Our AI-powered platform analyzes your pipeline and prioritizes deals most likely to close" |
| **Qualification** | Définir à qui c'est destiné | "For B2B sales teams managing 50+ deals per month" |
| **Réduction du risque** | Lever les objections | "No credit card required. Cancel anytime". |
| **Apport de preuve** | Ajouter de la crédibilité | "Trusted by 50,000+ sales professionals worldwide" |

#### Bonnes pratiques pour le visuel hero

| À faire | À éviter |
| --- | --- |
| Montrer le résultat final ou la transformation | Utiliser des photos stock génériques |
| Utiliser des images de qualité et pertinentes | Montrer des "happy people" sans rapport |
| Montrer le produit en utilisation | Utiliser des images chargées ou agitées |
| Utiliser de vraies photos clients si possible | Utiliser des témoignages bidons ou invérifiables |

---

### 2.3 Corriger les problèmes de contenu et de structure

**Objectif :** Organiser l'information pour que les visiteurs trouvent ce dont ils ont besoin.

#### Le Hierarchy Blueprint

Structure ta page pour répondre aux questions du visiteur dans l'ordre :

| Section | Question à laquelle elle répond | Contenu |
| --- | --- | --- |
| **Hero** | "So what ?" | Proposition de valeur centrale |
| **Bénéfices** | "Who cares ? / En quoi ça m'aide ?" | Résultats clés pour le visiteur |
| **Confiance/Autorité** | "Says who ? / Pourquoi je devrais te croire ?" | Crédentiels, expérience, résultats |
| **Preuve sociale** | "Que disent les autres ?" | Témoignages, avis, études de cas |
| **Gestion des objections** | "Et si ça ne marche pas ?" | FAQ, garanties, réduction du risque |
| **Urgence** | "Pourquoi agir maintenant ?" | Disponibilité limitée (si authentique) |
| **CTA** | "Now what ?" | Étape suivante claire |

#### Corrections de contenu

**Si le contenu est trop maigre :**

- Ajoute des sections axées bénéfices
- Inclus de la preuve sociale (témoignages, études de cas)
- Ajoute une FAQ qui adresse les préoccupations courantes
- Inclus une section processus / comment ça marche

**Si le contenu est trop dense :**

- Casse les murs de texte
- Utilise des bullet points pour un contenu scannable
- Ajoute des respirations visuelles (images, icônes)
- Implémente le progressive disclosure (sections dépliables)

**Si le contenu est désorganisé :**

- Réorganise les sections pour suivre le Hierarchy Blueprint
- Assure-toi que chaque section a un rôle clair
- Retire le contenu redondant ou hors-sujet
- Ajoute des en-têtes de section pour la scannabilité

---

### 2.4 Corriger les problèmes de CTA

**Objectif :** Rendre l'action évidente et facile à entreprendre.

**Règles de visibilité du CTA**

| Règle | Implémentation |
| --- | --- |
| **Above the fold** | CTA principal visible sans scroller |
| **Répété correctement** | Le CTA apparaît après les sections clés (sans excès) |
| **Visuellement saillant** | Couleur contrastée, taille suffisante |
| **Copy claire** | Axée bénéfice, action spécifique |

**Copy de CTA par verticale**

| Verticale | ❌ Faible | ✅ Fort |
| --- | --- | --- |
| Lead Gen | "Submit" | "Get My Free Quote" |
| SaaS | "Sign Up" | "Start My Free 14-Day Trial" |
| Ecommerce | "Buy" | "Add to Cart - Free Shipping" |

**Éléments de soutien à proximité du CTA**

Renforce ton CTA avec :

| Élément | Exemple |
| --- | --- |
| **Rappel de valeur** | "Join 50,000+ sales professionals" |
| **Réduction du risque** | "No credit card required" |
| **Urgence** (si authentique) | "Only 3 spots left this month" |
| **Bribe de preuve sociale** | "⭐ 4.9/5 from 2,000+ reviews" |

---

### 2.5 Corriger les problèmes de confiance et de crédibilité

**Objectif :** Donner aux visiteurs des raisons de te faire confiance.

#### Éléments de confiance essentiels

**Pour toutes les verticales :**

| Élément | Implémentation |
| --- | --- |
| **Informations de contact** | Téléphone, email, adresse visibles |
| **Politique de confidentialité** | Lien dans le footer |
| **Preuve sociale** | Avis, témoignages, nombre d'utilisateurs |
| **Design professionnel** | Propre, moderne, sans erreurs visibles |

**Éléments de confiance par verticale :**

| Verticale | Éléments de confiance prioritaires |
| --- | --- |
| **Lead Gen** | Numéro local, adresse physique, numéros de licence, photos de chantiers |
| **SaaS** | Nombre d'utilisateurs, logos clients, notes G2/Capterra, badges de sécurité, stats d'uptime |
| **Ecommerce** | Nombre d'avis, badges de checkout sécurisé, politique de retour, infos d'expédition, icônes de paiement |

#### Types de preuve sociale

| Type | Exemple | Idéal pour |
| --- | --- | --- |
| **Témoignages** | Citation d'un client avec photo/nom | Toutes les verticales |
| **Études de cas** | Histoire de succès détaillée avec résultats | B2B, SaaS |
| **Avis/notes** | "4,8/5 sur 10 000+ avis" | Ecommerce, SaaS |
| **Nombre d'utilisateurs** | "Trusted by 50,000+ teams" | SaaS |
| **Logos clients** | Logos d'entreprises reconnaissables | B2B, SaaS |
| **Mentions médias** | "As seen in Forbes, TechCrunch" | Toutes les verticales |
| **Certifications** | Badges sectoriels, certifs de sécurité | Toutes les verticales |

> 💡 **Rends ta preuve sociale vérifiable :** Inclus les noms complets, noms d'entreprise, photos et liens vers les avis originaux quand c'est possible. Les témoignages invérifiables créent de la suspicion et sont contre-productifs.

---

### 2.6 Corriger les problèmes techniques

**Objectif :** S'assurer que la page charge rapidement et fonctionne sur tous les appareils.

#### Corrections de vitesse

**Quick wins (à faire en premier) :**

| Correction | Impact | Implémentation |
| --- | --- | --- |
| Compresser les images | Haut | Utiliser [TinyPNG](https://tinypng.com/) ou [ShortPixel](https://shortpixel.com/) |
| Activer le cache | Haut | Configurer le cache navigateur |
| Minifier le CSS/JS | Moyen | Utiliser des outils de minification |
| Retirer les plugins inutilisés | Moyen | Auditer et retirer |

**Corrections plus lourdes (si nécessaire) :**

| Correction | Impact | Implémentation |
| --- | --- | --- |
| Utiliser un CDN | Haut | [Cloudflare](https://www.cloudflare.com/), [AWS CloudFront](https://aws.amazon.com/cloudfront/) |
| Lazy load des images | Moyen | Charger les images au fil du scroll |
| Optimiser l'hébergement | Haut | Passer à un serveur plus rapide |
| Réduire les requêtes HTTP | Moyen | Combiner les fichiers |

#### Corrections mobile

**Problèmes mobile fréquents et corrections :**

| Problème | Correction |
| --- | --- |
| Texte trop petit | Minimum 16px pour le body |
| Boutons trop petits | Tap targets minimum 44×44px |
| Scroll horizontal | Vérifier le viewport, corriger les éléments qui débordent |
| Chargement lent | Optimiser les images pour mobile, différer les ressources non critiques |
| Contenu caché | Revoir les breakpoints responsive |
| Formulaires difficiles à remplir | Champs plus grands, types de claviers appropriés |

**Checklist mobile-first**

| Vérification | Statut |
| --- | --- |
| Peux-tu lire tout le texte sans zoomer ? | Oui/Non |
| Peux-tu tapper tous les boutons facilement avec le pouce ? | Oui/Non |
| La page charge-t-elle en moins de 3 secondes en mobile ? | Oui/Non |
| Le CTA principal est-il visible sans scroller ? | Oui/Non |
| Peux-tu compléter l'action de conversion en mobile ? | Oui/Non |

---

### 2.7 Référence par verticale : exemples d'éléments

Utilise ce tableau pour adapter les corrections à ta verticale :

| Élément | Lead Gen | SaaS | Ecommerce |
| --- | --- | --- | --- |
| **Titre hero** | "Licensed Roofers in [City]" | "All-in-One CRM for Sales Teams" | "Running Shoes - 200+ Styles" |
| **Proposition de valeur** | "Free Quote in 60 Seconds" | "Close Deals 40% Faster" | "Free Shipping Over €50" |
| **Preuve sociale** | "500+ Local Projects Completed" | "Trusted by 50,000+ Teams" | "10,000+ 5-Star Reviews" |
| **Réduction du risque** | "No Obligation - Free Estimate" | "14-Day Free Trial - No Credit Card" | "Free Returns Within 30 Days" |
| **CTA** | "Get My Free Quote" | "Start Free Trial" | "Shop Now" |
| **Signal de confiance** | "Licensed & Insured" | "SOC 2 Certified" | "Secure Checkout" |
| **Urgence** | "Same-Day Estimates Available" | "Limited: 20% Off Annual Plans" | "Only 3 Left in Stock" |

---

## Phase 3️⃣ : Validation

### 3.1 Monitorer la Landing Page Experience

**Objectif :** Confirmer que les corrections ont amélioré la Landing Page Experience.

**Calendrier**

| Échéance | À vérifier |
| --- | --- |
| **7 jours** | Taux de conversion en hausse |
| **14 jours** | Vérifier le label LP Experience dans Google Ads |
| **21-30 jours** | LP Experience stable à "Average" ou au-dessus |

**Comment vérifier la LP Experience**

1. Google Ads → Keywords
2. Columns → Modify → Niveau de qualité → Landing Page Experience
3. Filtrer pour afficher "Below Average"

#### Utiliser le taux de conversion comme proxy

Google utilise les signaux de conversion dans son évaluation de la LP Experience. Suis :

| Métrique | Tendance cible |
| --- | --- |
| Taux de conversion | En hausse |
| Taux de rebond | En baisse (pas pertinent pour les onepagers) |
| Temps sur la page | En hausse (pour les achats réfléchis) |
| Pages par session | Dépend du contexte |

### 3.2 Dépannage

**Si la Landing Page Experience est toujours Below Average après 30 jours :**

| Symptôme | Cause probable | Action |
| --- | --- | --- |
| CVR amélioré mais label inchangé | Pas assez de données ou de temps | Attendre plus longtemps, s'assurer du trafic suffisant |
| CVR à plat | Les corrections n'ont pas adressé le vrai problème | Réauditer, regarder les LP concurrentes |
| CVR en baisse | La nouvelle LP est pire | Revenir en arrière, essayer une autre approche |
| CVR mobile toujours mauvais | Expérience mobile cassée | Se concentrer sur les corrections mobile |
| Taux de rebond élevé persistant | Problème de message match ou de pertinence | Réauditer le message match |
| Résultats mitigés selon les keywords | Les keywords ont besoin de LP différentes | Envisager des landing pages spécifiques par keyword |

---

### Validation et critères de complétion

#### Définition de "terminé"

Cette SOP est terminée quand :

- [ ]  La LP passe le test des 5 secondes (proposition de valeur claire)
- [ ]  Message match vérifié entre les annonces et la LP
- [ ]  Taux de clics mobile-friendly = 100 %
- [ ]  Score PageSpeed ≥ 50 (mobile)
- [ ]  Éléments de confiance essentiels présents
- [ ]  CTA clair visible above the fold
- [ ]  Landing Page Experience ≠ *Below Average* pendant **14 jours consécutifs ou plus**

#### Passerelle de sortie

Une fois la SOP terminée, tu as deux chemins possibles :

- **Chemin A : LP Experience = Average, autres composantes du QS toujours Below Average**
    
    → Retour à [SOP - Ameliorer la pertinence des annonces](<../../03-google-ads/search/Search - Améliorer la pertinence des annonces.md>) ou [SOP - Ameliorer le CTR attendu](<../../03-google-ads/search/Search - Améliorer le CTR attendu.md>)
    
- **Chemin B : toutes les composantes du QS = Average ou mieux, tu veux optimiser davantage**
    
    → Passer à de la CRO continue
    

> ⚠️ **L'optimisation continue des LP** passe par de la CRO et de l'expérimentation A/B systématiques, pas par des passages répétés de cette SOP. Cette SOP est faite pour des réparations ponctuelles.

---

### Lacunes courantes qui causent une Landing Page Experience Below Average

| Lacune | Symptôme | Impact | Correction |
| --- | --- | --- | --- |
| **Pas de message match** | Le titre LP ne reflète pas l'annonce/le keyword | Les visiteurs ne savent pas s'ils sont au bon endroit | Aligner le titre avec la promesse de l'annonce ou utiliser du DTR |
| **Proposition de valeur floue** | Impossible de comprendre l'offre en 5 secondes | Taux de rebond élevé, faible engagement | Réécrire la section hero avec un bénéfice clair |
| **Chargement lent** | Score PageSpeed < 50 | Les visiteurs partent avant le chargement | Compresser les images, optimiser le code, utiliser un CDN |
| **Mauvaise expérience mobile** | Taux mobile-friendly < 100 % | Les visiteurs mobiles ne peuvent pas convertir | Corriger les problèmes responsive, agrandir les tap targets |
| **Pas de preuve sociale** | Pas de témoignages, avis ni signaux de confiance | Les visiteurs ne te font pas confiance | Ajouter des éléments de preuve sociale vérifiables |
| **CTA enterré** | Action principale invisible above the fold | Les visiteurs ne savent pas quoi faire | Remonter le CTA above the fold, augmenter sa visibilité |
| **Trop de distractions** | Navigation, multiples CTA, liens de sortie | Les visiteurs fuient la page | Retirer la nav, se concentrer sur un seul CTA, attention ratio 1:1 |
| **Infos de contact manquantes** | Pas de téléphone, email ou adresse | Les visiteurs questionnent la légitimité | Ajouter les infos de contact visiblement |
| **Le contenu ne matche pas l'intention** | Keyword transactionnel → page informationnelle | Les visiteurs ne peuvent pas faire l'action voulue | Aligner le type de page sur l'intention de recherche |
| **Mur de texte** | Contenu dense et non formaté | Les visiteurs ne lisent pas | Casser le contenu, ajouter des visuels, utiliser des en-têtes |
| **Stock photos génériques** | Images visiblement bidons ou hors-sujet | Réduit la confiance | Utiliser de vraies photos, des shots produit ou des graphiques sur mesure |
| **Pas de réduction du risque** | Rien qui abaisse la barrière à l'engagement | Les visiteurs hésitent à agir | Ajouter garanties, essais gratuits, politiques de retour |

---

### FAQ

**Q : En quoi la Landing Page Experience diffère-t-elle des autres composantes du QS ?**

R : Ad Relevance mesure le match keyword-annonce. Expected CTR mesure la compétitivité de l'annonce. Landing Page Experience mesure si ta landing page délivre de la valeur après le clic. Tu peux avoir une Ad Relevance et un Expected CTR parfaits et quand même échouer sur la LP Experience si ta page est lente, confuse ou ne correspond pas aux attentes.

**Q : Puis-je utiliser la homepage de mon site comme landing page ?**

R : En général, non. Les homepages ont plusieurs objectifs et beaucoup de points de sortie. Les landing pages dédiées avec un focus unique (attention ratio 1:1) surperforment presque toujours les homepages pour le trafic payant. Exception : les campagnes de marque où les visiteurs s'attendent à atterrir sur ta homepage.

**Q : Combien de temps pour que la Landing Page Experience s'améliore ?**

R : Typiquement 14-30 jours pour que le label se mette à jour, sous réserve d'un trafic suffisant. Plus le keyword reçoit de trafic, plus Google met à jour le score rapidement.

**Q : Faut-il construire une landing page séparée pour chaque keyword ?**

R : Pas nécessairement. Utilise du DTR pour personnaliser une seule page pour plusieurs keywords. Construis des pages séparées quand l'intention est fondamentalement différente (ex. : keywords "buy" vs "compare").

**Q : Quel score PageSpeed viser ?**

R : Minimum 50 en mobile. Idéalement 70+. Ceci dit, ne sacrifie pas des éléments de conversion pour la vitesse. Une page un peu plus lente qui convertit mieux est préférable à une page rapide qui ne convertit pas.

**Q : La Landing Page Experience affecte-t-elle les campagnes Display et Vidéo ?**

R : Le rapport "Landing Pages" dans Google Ads couvre les campagnes Search, Display, Vidéo et Shopping. Cependant, le Niveau de qualité (y compris LP Experience) est avant tout un concept Search. Pour Display et Vidéo, concentre-toi sur le taux de conversion comme métrique LP principale.

---

### Outils et ressources

| Outil | Rôle | Coût |
| --- | --- | --- |
| [PageSpeed Insights](https://pagespeed.web.dev/) | Tester la vitesse de page | Gratuit |
| [Mobile-Friendly Test](https://search.google.com/test/mobile-friendly) | Tester la compatibilité mobile | Gratuit |
| [Microsoft Clarity](https://clarity.microsoft.com/) | Heatmaps et enregistrements de sessions | Gratuit |
| [Hotjar](https://www.hotjar.com/) | Heatmaps, enregistrements, sondages | Tier gratuit disponible |
| [Unbounce](https://unbounce.com/) | Landing page builder avec DTR | Payant |
| [Instapage](https://instapage.com/) | Landing page builder avec DTR | Payant |
| [Leadpages](https://www.leadpages.com/) | Landing page builder | Payant |

---

### Procédures liées

| SOP | Relation |
| --- | --- |
| [SOP - Ameliorer la pertinence des annonces](<../../03-google-ads/search/Search - Améliorer la pertinence des annonces.md>) | Parallèle (peut tourner en simultané) |
| [SOP - Ameliorer le CTR attendu](<../../03-google-ads/search/Search - Améliorer le CTR attendu.md>) | Parallèle (peut tourner en simultané) |
| [SOP - Test RSA avec la boucle d'iteration](<../../03-google-ads/search/Search - Test RSA avec la boucle d'itération.md>) | Aval (optimisation créative continue) |
