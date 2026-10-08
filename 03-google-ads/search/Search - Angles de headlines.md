# Angles de titres

> **Plateforme :** Google Ads
> **Catégorie :** Search
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Fondamentaux des titres

### La contrainte des 30 caractères

Google autorise 30 caractères par titre. Ça impose la précision.

| Nombre de caractères | Verdict |
|---------------------|---------|
| 25-30 | ✅ Optimal (maximiser l'espace) |
| 20-24 | ⚠️ Acceptable (pourrait être plus serré) |
| <20 | ❌ Espace gaspillé |

### Les titres fonctionnent ensemble

Les RSAs affichent 2-3 titres en combinaison. Chaque titre doit :

- Fonctionner seul (avoir du sens sans contexte)
- Compléter les autres (ne pas répéter le même message)
- Couvrir différents angles (pertinence, bénéfice, preuve, action)

---

## Statique vs. Dynamique : porte de décision

Avant de rédiger les titres, déterminez votre approche :

| Si... | Alors utilisez... | Référence... |
|-------|-------------------|-------------|
| La valeur change rarement | Titre statique | Ce document |
| Le prix/inventaire/promo change | Ad Customizers | [Dynamic Text Reference](<Search - Texte dynamique.md>) |
| Besoin de variation par keyword | DKI ou Keyword Customizers | [Dynamic Text Reference](<Search - Texte dynamique.md>) |
| Offre à durée limitée avec deadline réelle | Countdown Timer | [Dynamic Text Reference](<Search - Texte dynamique.md>) |
- → Pour la syntaxe, les règles et la configuration :
    - Voir [Dynamic Text Reference](<Search - Texte dynamique.md>)
- → Pour les attributs de personnalisation au niveau keyword :
    - Voir [Keyword Ad Customizer Attribute Catalog](<Search - Attributs de personnalisation par mot-cle.md>)
- → Pour les attributs de personnalisation dynamique (prix, inventaire, promos) :
    - Voir [Dynamic Ad Customizer Attribute Catalog](<Search - Attributs de personnalisation dynamique.md>)

> ⚠️ **Ce document se concentre sur les patterns d'angles, pas la syntaxe dynamique :** Les exemples ci-dessous sont principalement statiques. Là où les variantes dynamiques sont particulièrement pertinentes, elles sont signalées avec une référence au document approprié.

---

## Les 7 types de titres fondamentaux

Chaque RSA a besoin de titres couvrant ces sept types :

| Type | Objectif | Recommandation de slot |
|------|----------|----------------------|
| Ancre de pertinence | Matcher la requête de recherche | H1 |
| Proposition de valeur | Ce que vous offrez + bénéfice principal | H2 |
| Call-to-Action | Quoi faire ensuite | H3 |
| Reconnaissance problème/douleur | Refléter la frustration du chercheur | H4 |
| USP / Bénéfice | Pourquoi vous êtes différent/meilleur | H5 |
| Preuve sociale et autorité | Pourquoi vous faire confiance | H6 |
| Suppression du risque | Abaisser la barrière | H7 |

---

## Rédiger des titres par type

## Type 1️⃣ : Ancre de pertinence

**Objectif :** Signaler à Google et au chercheur que cette annonce correspond à sa requête.

#### Méthodes :

| Méthode | Quand utiliser | Syntaxe |
|---------|---------------|---------|
| **Ancrage statique** | Termes de marque, sensibles ou complexes | Coder en dur le keyword |
| **Dynamic Keyword Insertion (DKI)** | Keywords à haut volume, prévisibles | `{KeyWord:Default Text}` |

#### Patterns d'ancrage statique :

| Vertical | Titre | Chars |
|----------|----------|-------|
| Lead Gen | "Google Ads Agency" | 17 |
| SaaS | "Sales CRM Platform" | 18 |
| Ecommerce | "Premium Running Shoes" | 21 |

#### Note d'usage DKI

**Syntaxe :** `{KeyWord:Default Text}`

**Règle :** Le texte par défaut doit être suffisamment fort pour fonctionner seul.

- Mauvais : `{KeyWord:Our Products}` ← Trop générique
- Bon : `{KeyWord:CRM Software}` ← Fallback spécifique

→ Pour les règles complètes DKI et options de capitalisation : Voir [Dynamic Text Reference](<Search - Texte dynamique.md>)

---

## Type 2️⃣ : Reconnaissance problème/douleur

**Objectif :** Refléter la frustration du chercheur pour créer une reconnaissance instantanée.

**Formule :** `[Tired of / Stop / End / No More] + [Leur problème]`

**Formules alternatives :**

- `[Thing] That Actually [Works]` (Implique que l'actuel ne fonctionne pas)
- `[End/Fix/Solve] + [Symptôme spécifique]`
- `[Résultat négatif] + [No More]`

#### Exemples Lead Gen :

| Titre | Chars | Pourquoi ça fonctionne |
|----------|-------|------------------------|
| "Tired of Unqualified Leads?" | 25 | Reflète une frustration courante |
| "Stop Wasting Ad Spend" | 19 | Nomme la douleur directement |
| "Leads That Actually Convert" | 25 | Implique que les actuels ne le font pas |
| "End the Agency Churn" | 18 | Point de douleur B2B spécifique |
| "No More Ghost Leads" | 18 | Langage de problème vivide |
| "Frustrated With Your CPA?" | 24 | Reconnaissance directe de la douleur |

#### Exemples SaaS :

| Titre | Chars | Pourquoi ça fonctionne |
|----------|-------|------------------------|
| "CRM Your Team Will Use" | 21 | Implique que l'actuel est ignoré |
| "Stop Losing Deals to Chaos" | 25 | Nomme la conséquence |
| "End Spreadsheet Chaos" | 20 | Reconnaissance spécifique du problème |
| "No More Missed Follow-Ups" | 24 | Point de douleur courant |
| "Stop the 'Where's That?' Chaos" | 28 | Reflète le dialogue interne |
| "Finally, A CRM That Works" | 24 | Implique des déceptions passées |

#### Exemples Ecommerce :

| Titre | Chars | Pourquoi ça fonctionne |
|----------|-------|------------------------|
| "Furniture That Actually Fits" | 27 | Implique des déceptions passées |
| "Skip the Assembly Headache" | 25 | Nomme une douleur courante |
| "No More Delivery Nightmares" | 26 | Problème qu'ils ont vécu |
| "End Showroom Sticker Shock" | 25 | Frustration spécifique |
| "Stop Guessing Your Size" | 22 | Douleur mode/vêtement |
| "Supplements That Work" | 21 | Implique que les autres ne fonctionnent pas |

> ⚠️ **Équilibrez langage problème et solution :** Votre RSA doit inclure À LA FOIS des titres centrés sur le problème (reconnaissance) et des titres centrés sur la solution (aspiration). Ne faites pas tous les titres négatifs !

---

## Type 3️⃣ : Proposition de valeur

**Objectif :** Communiquer ce que vous offrez et le bénéfice principal.

**Formule :** `[Offre spécifique] + [Bénéfice principal]` ou `[Résultat] + [Sans point de douleur]`

#### Exemples Lead Gen :

| Titre | Chars | Pourquoi ça fonctionne |
|----------|-------|------------------------|
| "Grow Your Pipeline Fast" | 23 | Centré résultat |
| "More Leads, Less Spend" | 21 | Contraste de bénéfice |
| "Fill Your Sales Calendar" | 23 | Résultat spécifique |
| "Qualified Leads Delivered" | 25 | Quoi + signal de qualité |
| "Scale Without Extra Staff" | 24 | Bénéfice + supprime la friction |

#### Exemples SaaS :

| Titre | Chars | Pourquoi ça fonctionne |
|----------|-------|------------------------|
| "Close Deals 40% Faster" | 22 | Bénéfice quantifié |
| "All-in-One Sales Platform" | 25 | Clarté + périmètre |
| "Never Miss a Follow-Up" | 21 | Suppression du point de douleur |
| "Your Pipeline, Organized" | 23 | Résultat + spécificité |
| "Sell More, Manage Less" | 21 | Contraste de bénéfice |

#### Exemples Ecommerce :

| Titre | Chars | Pourquoi ça fonctionne |
|----------|-------|------------------------|
| "Designer Quality, Half Price" | 28 | Valeur + économies |
| "Premium Sofas From €999" | 23 | Produit + ancrage prix |
| "Skip the Retail Markup" | 21 | Suppression du point de douleur |
| "Luxury Without the Price Tag" | 27 | Bénéfice + contraste |
| "Find Your Perfect Fit" | 20 | Résultat + personnalisation |

> ↪️ **Variante dynamique :** Pour les titres de pricing dynamique, voir [Dynamic Ad Customizer Attribute Catalog](<Search - Attributs de personnalisation dynamique.md>).

---

## Type 4️⃣ : Call-to-Action (CTA)

**Objectif :** Dire au chercheur exactement quoi faire ensuite.

**Formule :** `[Verbe d'action] + [Résultat spécifique] + [Modificateur]`

#### Hiérarchie de force des CTA :

| Faible | Moyen | Fort |
|--------|-------|------|
| "Contact Us" | "Learn More" | "Get Your Free Quote" |
| "Submit" | "See Pricing" | "Start Free Trial Now" |
| "Click Here" | "Request Demo" | "Book Your Free Audit" |

#### Exemples Lead Gen :

| Titre | Chars | Correspondance d'intention |
|----------|-------|---------------------------|
| "Get Your Free Audit" | 19 | Lead magnet haute valeur |
| "Book a Strategy Call" | 20 | Consultation directe |
| "Request a Custom Quote" | 22 | Intention centrée prix |
| "Claim Your Free Report" | 22 | Lead magnet contenu |
| "See Available Time Slots" | 24 | Réservation faible friction |

#### Exemples SaaS :

| Titre | **Chars** | Correspondance d'intention |
|----------|-----------|---------------------------|
| "Start Your Free Trial" | 21 | Transactionnel |
| "Try Free for 14 Days" | 19 | Essai avec durée spécifique |
| "See It in Action" | 16 | Centré démo |
| "Get Started in Minutes" | 22 | Rapidité + facilité |
| "Create Your Free Account" | 24 | Centré inscription |

#### Exemples Ecommerce :

| Titre | Chars | Correspondance d'intention |
|----------|-------|---------------------------|
| "Shop the Collection" | 19 | Intention de navigation |
| "Order Free Samples" | 18 | Premier pas à faible engagement |
| "Find Your Size" | 14 | Personnalisation |
| "Build Your Custom Sofa" | 22 | Configurateur |
| "Get 20% Off Today" | 17 | Offre + urgence |

> ↪️ **Variante dynamique :** Pour les CTA de réduction dynamique, voir [Dynamic Ad Customizer Attribute Catalog](<Search - Attributs de personnalisation dynamique.md>).

---

## Type 5️⃣ : USP / Bénéfice

**Objectif :** Expliquer pourquoi vous êtes différent et pourquoi c'est important.

**Formule :** `[Différenciateur] + [Bénéfice]` ou `[Revendication unique]`

#### Exemples Lead Gen :

| Titre | Chars | Type d'USP |
|----------|-------|-----------|
| "We Only Work With SaaS" | 22 | Spécialisation |
| "Results in 30 Days" | 18 | Rapidité |
| "No Long-Term Contracts" | 22 | Flexibilité |
| "Avg 40% Lower CPA" | 17 | Résultat quantifié |
| "Senior Experts Only" | 19 | Signal de qualité |

#### Exemples SaaS :

| Titre | Chars | Type d'USP |
|----------|-------|-----------|
| "Setup in 2 Minutes" | 18 | Rapidité/facilité |
| "No Credit Card Needed" | 21 | Faible friction |
| "Built for Remote Teams" | 22 | Spécifique à l'audience |
| "50+ Integrations" | 16 | Écosystème |
| "AI Handles the Busywork" | 23 | Bénéfice d'automatisation |

#### Exemples Ecommerce :

| Titre | Chars | Type d'USP |
|----------|-------|-----------|
| "Delivered Assembled" | 19 | Commodité |
| "100+ Fabrics to Choose" | 22 | Personnalisation |
| "Factory-Direct Pricing" | 22 | Valeur |
| "Ships Free Over €50" | 18 | Bénéfice de seuil |
| "Handmade in Europe" | 18 | Origine/qualité |

> ↪️ **Variante dynamique :** Pour les USPs dynamiques de livraison/stock, voir [Dynamic Ad Customizer Attribute Catalog](<Search - Attributs de personnalisation dynamique.md>).

---

## Type 6️⃣ : Preuve sociale et autorité

**Objectif :** Rendre les affirmations crédibles par des preuves.

**Formule :** `[Nombre/Note] + [Contexte]` ou `[Crédentiel]`

#### Types de preuve sociale :

| Type | Formule | Exemple |
|------|---------|---------|
| Nombre d'utilisateurs | "Trusted by [#]+ [Audience]" | "Trusted by 50,000+ Teams" |
| Note | "[Rating]/5 From [#]+ Reviews" | "4.8/5 From 2,000+ Reviews" |
| Volume | "[#]+ [Actions] Delivered" | "1M+ Campaigns Managed" |
| Autorité | Autorité de catégorie | "#1 Rated CRM on G2" |
| Preuve nommée | "[Company] + [#] Others" | "Nike & 500+ Brands" |
| Crédentiels | "[Certification/Award]" | "Google Premier Partner" |
| Expérience | "[#] Years of [Expertise]" | "10+ Years in B2B SaaS" |

#### Exemples Lead Gen :

| Titre | Chars | Type de preuve |
|----------|-------|---------------|
| "Trusted by 500+ SaaS Cos" | 24 | Nombre + audience |
| "€50M+ in Managed Spend" | 22 | Volume |
| "Google Premier Partner" | 22 | Crédentiel |
| "Avg 4.9/5 Client Rating" | 23 | Note |
| "10+ Years in B2B" | 16 | Expérience |

#### Exemples SaaS :

| Titre | Chars | Type de preuve |
|----------|-------|---------------|
| "Trusted by 12,000+ Teams" | 24 | Nombre d'utilisateurs |
| "4.8/5 on G2 (2,400 Reviews)" | 26 | Note + nombre |
| "G2 Leader, 3 Years Running" | 26 | Autorité + durée |
| "Join Spotify & 10K+ Teams" | 25 | Nommé + nombre |
| "Award-Winning Platform" | 22 | Autorité |

#### Exemples Ecommerce :

| Titre | Chars | Type de preuve |
|----------|-------|---------------|
| "23,000+ Happy Customers" | 23 | Nombre de clients |
| "4.7/5 (8,400 Reviews)" | 21 | Note + nombre |
| "Best-Seller Since 2019" | 22 | Volume + durée |
| "As Seen in Vogue & GQ" | 20 | Autorité média |
| "#1 in Customer Satisfaction" | 27 | Autorité de catégorie |

> ⚠️ **La preuve sociale dynamique est rarement nécessaire :** Les notes et nombres d'avis ne changent pas assez fréquemment pour justifier la maintenance du flux. Le statique fonctionne pour la plupart des comptes.

---

## Type 7️⃣ : Suppression du risque

**Objectif :** Abaisser la barrière à l'action en adressant l'hésitation.

**Formule :** `[Garantie/Essai] + [Conditions]` ou `[No X Required]`

#### Types de suppression du risque :

| Type | Formule | Exemple |
|------|---------|---------|
| Satisfaction | "Love It or [Outcome]" | "Love It or Money Back" |
| Remboursement | "[Period] Money Back" | "60-Day Money Back" |
| Essai gratuit | "Try Free for [Period]" | "Try Free for 14 Days" |
| Sans engagement | "No [Barrier] Required" | "No Credit Card Required" |
| Sortie facile | "Cancel [Ease]" | "Cancel Anytime" |

#### Exemples Lead Gen :

| Titre | Chars | Type de risque |
|----------|-------|---------------|
| "No Long-Term Commitment" | 23 | Sortie facile |
| "Free Audit, No Obligation" | 25 | Sans engagement |
| "Month-to-Month Available" | 24 | Flexibilité |
| "Satisfaction Guaranteed" | 23 | Garantie |
| "Results or You Don't Pay" | 24 | Garantie de performance |

#### Exemples SaaS :

| Titre | Chars | Type de risque |
|----------|-------|---------------|
| "No Credit Card Required" | 23 | Sans engagement |
| "Cancel Anytime, No Fees" | 23 | Sortie facile |
| "Free Forever Plan" | 17 | Sans engagement |
| "30-Day Money Back" | 17 | Remboursement |
| "Try Before You Buy" | 18 | Essai |

#### Exemples Ecommerce :

| Titre | Chars | Type de risque |
|----------|-------|---------------|
| "100-Night Home Trial" | 20 | Essai étendu |
| "Free Returns, Always" | 19 | Sortie facile |
| "Love It or Full Refund" | 22 | Satisfaction |
| "10-Year Warranty Included" | 25 | Garantie longue durée |
| "Easy 60-Day Returns" | 19 | Fenêtre de retour spécifique |

---

## L'urgence comme modificateur

L'urgence n'est pas un angle fondamental. On la considère comme un **modificateur** que vous pouvez ajouter à n'importe quel type de titre :

| Titre de base | + Modificateur d'urgence |
|------------------|-------------------------|
| "Start Your Free Trial" | "Start Your Free Trial `Today`" |
| "Get 20% Off" | "Get 20% Off `- Ends Friday`" |
| "Join 10,000+ Teams" | "Join 10,000+ Teams `This Month`" |

> 💡 **Utilisez l'urgence avec parcimonie :** Si chaque titre crie urgence, aucun d'entre eux ne le fait.

> ↪️ **Urgence dynamique :** Pour la syntaxe countdown timer, voir [Dynamic Text Reference](<Search - Texte dynamique.md>).

---

## Titres de prix (situationnel)

Pour les recherches à **intention transactionnelle** (surtout ecommerce), le prix peut être un titre légitime :

| Titre | Chars | Quand utiliser |
|----------|-------|----------------|
| "From €29/Month" | 14 | SaaS avec pricing compétitif |
| "Premium Sofas From €999" | 23 | Ancrage prix ecommerce |
| "Save 40% Today" | 14 | Promotion active |
| "Free Plan Available" | 19 | SaaS freemium |
| "50% Off First Month" | 19 | Réduction abonnement |

> 💡 **N'utilisez les titres de prix que si votre prix est compétitif :** Si vous êtes positionné premium, menez avec la valeur.

> ↪️ Pour les titres de prix dynamiques, voir [Dynamic Ad Customizer Attribute Catalog](<Search - Attributs de personnalisation dynamique.md>).

---

### Référence rapide : bibliothèque support

| Document | Type | Utilisé pour |
|----------|------|-------------|
| [Headline Quality Checklist](<Search - [Review] Qualité des titres.md>) | Checklist | Valide les titres après rédaction |
| [Dynamic Text Reference](<Search - Texte dynamique.md>) | Référence | Syntaxe DKI, Countdown, Location |
| [Keyword Ad Customizer Attribute Catalog](<Search - Attributs de personnalisation par mot-cle.md>) | Catalogue | Attributs de personnalisation au niveau keyword |
| [Dynamic Ad Customizer Attribute Catalog](<Search - Attributs de personnalisation dynamique.md>) | Catalogue | Attributs prix, inventaire, promo |

---

### SOPs liés

| SOP | Relation |
|-----|----------|
| [SOP - Rediger des RSA performantes](<Search - Rédiger des RSA performantes.md>) | Utilise ce document en Phase 1 |
| [SOP - Ameliorer la pertinence des annonces](<Search - Améliorer la pertinence des annonces.md>) | Utilise les patterns Type 1 en Phase 3.1 |
| [SOP - Ameliorer le CTR attendu](<Search - Améliorer le CTR attendu.md>) | Route ici pour les lacunes de titres |
| [SOP - Test RSA avec la boucle d'iteration](<Search - Test RSA avec la boucle d'itération.md>) | Utilise les types d'angles pour les tests |
