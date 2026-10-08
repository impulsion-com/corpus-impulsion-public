# Rédiger des RSA performantes

> **Plateforme :** Google Ads
> **Catégorie :** Search
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Phase 1️⃣: Rédiger les titres

### 1.1 Distribution des slots

La sortie de votre [SOP - Creer vos angles d'offre](<../../01-strategie/offre/Offre - Travailler vos angles d'offre.md>) inclut une distribution des slots. Utilisez ce modèle standard :

| Slot | Type de titre | Objectif |
| --- | --- | --- |
| H1 | **Ancrage de pertinence** | Correspondre à la requête de recherche |
| H2 | **Proposition de valeur** | Offre principale + bénéfice clé |
| H3 | **USP / Bénéfice** | Pourquoi vous êtes différent |
| H4 | **Preuve sociale** | Confiance + crédibilité |
| H5 | **Suppression du risque** | Abaisser la barrière à l'action |
| H6 | **Call-to-Action** | Quoi faire ensuite |
| H7 | **[Angle principal x2]** | Deuxième slot pour l'angle prioritaire |
| H8 | **(Optionnel)** | Uniquement si ad group à fort volume |

**Attribution de H7 selon la température du trafic :**

| Trafic | H7 devrait être |
| --- | --- |
| ❄️ Froid | Problème/Douleur (seconde variante) |
| 🌤️ Tiède | USP ou Proposition de valeur (seconde variante) |
| 🔥 Chaud | Preuve sociale ou Suppression du risque (seconde variante) |

### 1.2 Rédiger les titres

Pour chaque slot, appliquez vos points de preuve en utilisant les patterns du [Headline Angle Catalog](<Search - Angles de headlines.md>).

#### H1 : Ancrage de pertinence

| Méthode | Quand l'utiliser | Référence |
| --- | --- | --- |
| Statique | Marque, sensible, contrôlé | [Headline Angle Catalog](<Search - Angles de headlines.md>) → Type 1 |
| DKI | Listes de mots-clés étendues | [Dynamic Text Reference](<Search - Texte dynamique.md>) |
| Personnalisateurs au niveau mot-clé | Besoin d'un contrôle granulaire de la pertinence | [SOP - Configurer les personnalisateurs au niveau mot-cle](<Search - Configurer les personnalisateurs au niveau keyword.md>) |

**Si vous utilisez DKI :** Le texte par défaut doit tenir seul.

Mauvais : `{KeyWord:Products}`. Bon : `{KeyWord:CRM Software}`.

#### H2-H7 : Titres d'angle

Pour chaque slot restant :

1. **Identifiez le type d'angle** dans la distribution des slots
2. **Récupérez votre point de preuve** dans votre document Angles d'offre
3. **Trouvez un pattern** dans le [Headline Angle Catalog](<Search - Angles de headlines.md>) (Type 2-7)
4. **Appliquez votre point de preuve** au pattern
5. **Vérifiez ≤30 caractères**

**Si vous utilisez du pricing/des promos dynamiques (Ecommerce) :**

| Type d'angle | Exemple statique | Alternative dynamique |
| --- | --- | --- |
| Proposition de valeur | "Premium Sofas From €999" | "`{CUSTOMIZER.ProductName:Sofas}` From `{CUSTOMIZER.PriceFrom:€999}`" |
| CTA | "Get 20% Off Today" | "Get `{CUSTOMIZER.Discount:20%}` Off Today" |
| Urgence | "Sale Ends Friday" | "Sale Ends `{COUNTDOWN(date):Soon}`" |

Voir [Dynamic Text Reference](<Search - Texte dynamique.md>) pour la liste complète des attributs.

#### Ton du CTA selon la température du trafic

| Trafic | Ton du CTA | Exemples |
| --- | --- | --- |
| ❄️ Froid | Doux, éducatif | "See How It Works", "Learn More" |
| 🌤️ Tiède | Moyen, exploratoire | "Get Your Free Demo", "Compare Plans" |
| 🔥 Chaud | Direct, transactionnel | "Start Free Trial", "Get Started Now" |

### 1.3 Valider les titres

Passez tous les titres au crible de la [Headline Quality Checklist](<Search - [Review] Qualité des titres.md>).

### 1.4 Feuille de travail des titres

| Slot | Type d'angle | Votre titre | Caractères |
| --- | --- | --- | --- |
| H1 | Ancrage de pertinence |  | /30 |
| H2 | Proposition de valeur |  | /30 |
| H3 | USP / Bénéfice |  | /30 |
| H4 | Preuve sociale |  | /30 |
| H5 | Suppression du risque |  | /30 |
| H6 | Call-to-Action |  | /30 |
| H7 | [Angle principal x2] |  | /30 |
| H8 | [Optionnel] |  | /30 |

---

## Phase 2️⃣: Rédiger les descriptions

### 2.1 Stratégie de description

Les descriptions **développent les titres :** elles ne les répètent pas.

**Objectif : 2-3 descriptions**

| Slot | Pattern | Objectif |
| --- | --- | --- |
| D1 | **Problème + Solution** | Valider la douleur, présenter votre réponse |
| D2 | **Preuve + CTA** | Instaurer la confiance, pousser à l'action |
| D3 | **(Optionnel) Offre + Urgence** | Détails de la promo + deadline |

> 💡 **Incluez le mot-clé principal en D1 :** Google met en gras le texte correspondant à la requête de recherche. **Plus de gras = plus de proéminence visuelle.**

### 2.2 Rédiger les descriptions

Pour chaque slot, utilisez les patterns du [Description Expansion Catalog](<Search - Patterns d'expansion de descriptions.md>).

#### D1 : Problème + Solution

**Pattern :** `[Problem acknowledgment]. [Your solution + benefit].`

Trouvez des exemples dans le [Description Expansion Catalog](<Search - Patterns d'expansion de descriptions.md>) → Section A, Type 1.

#### D2 : Preuve + CTA

**Pattern :** `[Proof point/social proof]. [CTA with benefit].`

Trouvez des exemples dans le [Description Expansion Catalog](<Search - Patterns d'expansion de descriptions.md>) → Section B, Pattern 3.

#### D3 : Offre + Urgence (Optionnel)

**Pattern :** `[Offer details]. [Deadline/scarcity].`

> ⚠️ **N'incluez D3 que si vous avez une urgence authentique :** Une fausse rareté détruit la confiance. Pas de vraie deadline ? Sautez D3 ou utilisez une pure suppression du risque.

**Si vous utilisez des promos dynamiques (Ecommerce) :**

| Statique | Dynamique |
| --- | --- |
| "Sale ends Sunday: 20% off + free shipping". | "`{CUSTOMIZER.PromoText:Sale}`: `{CUSTOMIZER.Discount:15%}` off. Ends `{COUNTDOWN(date):soon}`". |

Voir [Description Expansion Catalog](<Search - Patterns d'expansion de descriptions.md>) → Section B pour les patterns combinés avec variantes dynamiques.

### 2.3 Valider les descriptions

Passez toutes les descriptions au crible de la [Description Quality Checklist](<../strategie/Strategie - [Review] Qualité des descriptions.md>).

### 2.4 Feuille de travail des descriptions

| Slot | Pattern | Votre description | Caractères |
| --- | --- | --- | --- |
| D1 | Problème + Solution |  | /90 |
| D2 | Preuve + CTA |  | /90 |
| D3 | Offre + Urgence (optionnel) |  | /90 |

---

## Phase 3️⃣: Rédiger les extensions

### 3.1 Sélectionner les types d'extensions

Utilisez le [Extension Leverage Catalog](<../composants/Composants - Utilisation des extensions.md>) pour identifier les extensions à créer.

**Extensions de base (obligatoires) :**

| Extension | Minimum | Objectif |
| --- | --- | --- |
| Liens annexes | 4 | Diriger vers les pages clés |
| Callouts | 4 | Mettre en avant bénéfices/fonctionnalités |
| Structured Snippets | 2 en-têtes | Catégoriser les offres |
| Business Name | 1 | Identité de marque |
| Business Logo | 1 | Reconnaissance visuelle |

**Extensions situationnelles :**

| Extension | Idéal pour | À sauter si |
| --- | --- | --- |
| Image | Tous | Pas d'images de qualité |
| Promotion | Soldes actives | Pas de vraie promotion |
| Price | Prix compétitifs/transparents | Tarification complexe |
| Call | Leads téléphoniques précieux | Pas de support téléphonique |
| Location | Entreprises locales | National/digital uniquement |
| Lead Form | Test de capture in-ad | Qualification complexe |

### 3.2 Composer les extensions

Utilisez les patterns du [Description Expansion Catalog](<Search - Patterns d'expansion de descriptions.md>).

**Principe clé :** Les extensions ajoutent de l'information. Elles ne dupliquent pas le contenu de la RSA.

**Stratégie de liens annexes (couvrir différentes intentions) :**

| Intention | Exemple |
| --- | --- |
| Apprendre | "How It Works" |
| Comparer | "See Pricing" |
| Confiance | "Case Studies" |
| Essayer | "Free Demo" |

**Stratégie de callouts (couvrir différents bénéfices) :**

| Catégorie | Exemple |
| --- | --- |
| Confiance | "Google Premier Partner" |
| Valeur | "Free Consultation" |
| Rapidité | "Same-Day Response" |
| Risque | "No Contracts" |

### 3.3 Valider les extensions

Passez au crible de la [Extension Coverage Checklist](<../composants/Composants - [Review] Couverture des extensions.md>).

---

## Phase 4️⃣: Déployer et configurer

### 4.1 Téléverser les assets

1. Ouvrez Google Ads Editor ou l'interface
2. Naviguez vers l'ad group cible
3. Créez une nouvelle Responsive Search Ad
4. Saisissez tous les titres
5. Saisissez toutes les descriptions
6. Définissez l'URL finale
7. Ajoutez le chemin d'affichage

### 4.2 Décisions de pinning

> ⚠️ **Par défaut : ne pinnez pas :** Le pinning restreint l'optimisation de Google. Ne pinnez que lorsque vous avez une raison structurelle forte.

| Quand pinner | Action |
| --- | --- |
| L'ancrage de pertinence doit toujours s'afficher | Pinnez H1 en Position 1 |
| Exigence légale/de conformité | Pinnez le texte requis |
| Charte de marque | Pinnez le message de marque en Position 1 ou 2 |

| Quand NE PAS pinner | Pourquoi |
| --- | --- |
| « Je veux que ce titre s'affiche plus » | Laissez Google optimiser |
| « C'est mon meilleur titre » | Testez-le, ne présumez pas |
| « Je veux le contrôle » | Le pinning nuit généralement à la performance |

### 4.3 Ajouter les extensions

Allez dans Ads & Assets → Assets et ajoutez les extensions aux niveaux appropriés :

| Niveau | Quoi ajouter |
| --- | --- |
| Compte | Business name, logo, liens annexes universels |
| Campagne | Extensions spécifiques à la campagne |
| Ad Group | Extensions spécifiques au thème (si nécessaire) |

### 4.4 Checklist finale

- [ ]  Tous les titres saisis correctement
- [ ]  Toutes les descriptions saisies correctement
- [ ]  URL finale correcte
- [ ]  Chemin d'affichage défini
- [ ]  Pins appliqués uniquement là où nécessaire
- [ ]  Extensions rattachées
- [ ]  Enregistrer et publier
- [ ]  Surveiller l'approbation (1-2 jours ouvrés)

---

### Validation et critères de complétion

Cette SOP est terminée quand :

- [ ]  7-8 titres composés et validés
- [ ]  2-3 descriptions composées et validées
- [ ]  Toutes les extensions de base composées et validées
- [ ]  RSA téléversée et soumise à validation
- [ ]  Tous les assets approuvés (aucun refus)

---

### Passerelle de sortie

Une fois la RSA en ligne et approuvée :

| Délai | Action |
| --- | --- |
| Jours 1-7 | Surveillez le statut d'approbation, corrigez les refus |
| Jours 7-14 | Surveillez la performance initiale (CTR, conversions) |
| Jour 14+ | Démarrez le [SOP - Test RSA avec la boucle d'iteration](<Search - Test RSA avec la boucle d'itération.md>) |

**En cas de problème :**

| Problème | Rediriger vers |
| --- | --- |
| Ad Relevance = Below Average | [SOP - Ameliorer la pertinence des annonces](<Search - Améliorer la pertinence des annonces.md>) |
| Expected CTR = Below Average | [SOP - Ameliorer le CTR attendu](<Search - Améliorer le CTR attendu.md>) |
| LP Experience = Below Average | [SOP - Ameliorer l'experience de la page de destination](<../../02-site-web/audit/Audit - Test A-B de Landing Page.md>) |

---

### FAQ

**Q : Pourquoi 7-8 titres plutôt que le maximum de 15 ?**

R : Plus de titres = plus de combinaisons = moins de données par combinaison = apprentissage plus lent. Avec 15 titres, Google crée 2 730 combinaisons possibles de 3 titres. Il vous faudrait ~273 000 impressions pour des données significatives. Avec 8 titres, il vous en faut ~33 600. Démarrez léger, expérimentez avec les titres via la boucle d'itération une fois que vous avez des données de performance.

**Q : Dois-je toujours pinner H1 ?**

R : Par défaut, non. Ne pinnez H1 que si votre ancrage de pertinence *doit* apparaître dans chaque annonce (charte de marque, conformité ou signal de pertinence critique). En cas de doute, ne pinnez pas et laissez Google optimiser. Vous pouvez toujours ajouter des pins plus tard si les données en montrent le besoin.

**Q : Et si je n'ai pas de points de preuve pour les 6 angles ?**

R : Retournez au [SOP - Creer vos angles d'offre](<../../01-strategie/offre/Offre - Travailler vos angles d'offre.md>). Si vous ne trouvez vraiment pas de preuve pour un angle (ex : aucune preuve sociale n'existe), sautez ce slot et doublez sur votre angle le plus fort. Mais encore mieux : Exécutez cette SOP : [SOP - Creer une offre irresistible](<../../01-strategie/offre/Offre - Créer une offre irrésistible.md>).

**Q : Puis-je utiliser la même RSA sur plusieurs ad groups ?**

R : Non, pas telle quelle, car vous sacrifieriez la pertinence. Pour préparer le test d'ad copy, vous devriez idéalement modéliser vos RSA quand c'est possible. (Voir : [SOP - Test RSA avec la boucle d'iteration](<Search - Test RSA avec la boucle d'itération.md>)).

**Q : Dois-je rédiger les descriptions avant ou après les titres ?**

R : Après. Les titres établissent vos messages clés. Les descriptions développent ces messages. Si vous rédigez les descriptions en premier, vous risquez la répétition ou le désalignement.

**Q : Quelle est la RSA minimale viable si je manque de temps ?**

R : 6 titres (un par angle de base) + 2 descriptions + 4 liens annexes + 4 callouts. C'est le plancher. En dessous, vous handicapez la performance.

---

### Référence rapide : bibliothèque support

| Document | Type | Utilisé dans |
| --- | --- | --- |
| [SOP - Creer vos angles d'offre](<../../01-strategie/offre/Offre - Travailler vos angles d'offre.md>) | SOP | Prérequis |
| [Headline Angle Catalog](<Search - Angles de headlines.md>) | Catalogue | Phase 1 |
| [Headline Quality Checklist](<Search - [Review] Qualité des titres.md>) | Checklist | Phase 1 |
| [Description Expansion Catalog](<Search - Patterns d'expansion de descriptions.md>) | Catalogue | Phase 2 |
| [Description Quality Checklist](<../strategie/Strategie - [Review] Qualité des descriptions.md>) | Checklist | Phase 2 |
| [Extension Leverage Catalog](<../composants/Composants - Utilisation des extensions.md>) | Catalogue | Phase 3 |
| [Extension Coverage Checklist](<../composants/Composants - [Review] Couverture des extensions.md>) | Checklist | Phase 3 |
| [Dynamic Text Reference](<Search - Texte dynamique.md>) | Référence | Si vous utilisez du dynamique |
| [Keyword Ad Customizer Attribute Catalog](<Search - Attributs de personnalisation par mot-cle.md>) | Catalogue | Si personnalisateurs au niveau mot-clé |
| [Dynamic Ad Customizer Attribute Catalog](<Search - Attributs de personnalisation dynamique.md>) | Catalogue | Si personnalisateurs dynamiques |

---

### Procédures liées

| SOP | Relation |
| --- | --- |
| [SOP - Creer une offre irresistible](<../../01-strategie/offre/Offre - Créer une offre irrésistible.md>) | Amont (l'offre doit être solide) |
| [SOP - Creer vos angles d'offre](<../../01-strategie/offre/Offre - Travailler vos angles d'offre.md>) | Amont (prérequis) |
| [SOP - Ameliorer la pertinence des annonces](<Search - Améliorer la pertinence des annonces.md>) | Parallèle (si problèmes de pertinence) |
| [SOP - Test RSA avec la boucle d'iteration](<Search - Test RSA avec la boucle d'itération.md>) | Aval (optimisation continue) |
| [SOP - Configurer les personnalisateurs au niveau mot-cle](<Search - Configurer les personnalisateurs au niveau keyword.md>) | Conditionnel (si nécessaire) |
| [SOP - Configurer les personnalisateurs dynamiques d'annonces](<Search - Configurer les personnalisateurs d'annonces dynamiques.md>) | Conditionnel (si nécessaire) |

---

### Erreurs fréquentes

| Erreur | Pourquoi ça arrive | Comment l'éviter |
| --- | --- | --- |
| Trop de titres (15) | Anciennes bonnes pratiques suivies | Tenez-vous-en à 7-8 |
| Tous les titres sur le même angle | Structure de slots non suivie | Un titre par type d'angle |
| Les descriptions répètent les titres | Mentalité copier-coller | Les descriptions développent, ne répètent pas |
| Défaut DKI faible | Configuration bâclée | Le texte par défaut doit tenir seul |
| Mauvais ton de CTA | Température du trafic ignorée | Alignez le CTA sur le stade de notoriété |
| Tout pinné | Volonté de « contrôle » | Ne pinnez que H1 au maximum |
| Extensions sautées | Manque de temps | Les extensions sont obligatoires |
| Personnalisateurs lancés avant que les flux soient prêts | Empressement à personnaliser | Configurez d'abord les flux, puis rédigez la RSA |
