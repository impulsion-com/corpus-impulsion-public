---
name: impulsion-creer-campagne-google-ads
description: "Produit tous les ASSETS de création d'une campagne Google Ads (Search, PMax, Demand Gen) prêts à coller dans l'interface, à partir du brief projet : mots-clés (règle 80/20 + colonnes sans géo / avec géo), mots-clés à exclure, annonces RSA (titres + descriptions avec socle identitaire épinglé), composants d'annonce (liens annexes, accroches, extraits, formulaire lead), signaux d'audience (PMax vs Demand Gen) et visuels. Use when user says créer une campagne Google Ads, lancer une campagne Search, générer les mots-clés, écrire les annonces RSA, les composants, les signaux d'audience, create Google Ads campaign, keywords, RSA, negative keywords, audience signals."
argument-hint: "[mots-cles | negatifs | annonces | composants | audiences | visuel | tout]  (défaut : tout)"
license: MIT (skill base) + impulsion.com (corpus content)
---

# impulsion-creer-campagne-google-ads — Produire les assets d'une campagne Google Ads

> S'appuie sur les SOP du corpus impulsion. Chemins relatifs depuis la racine du repo `corpus-impulsion/`.
> Conçu pour être invoqué quand le corpus est cloné dans le projet courant (le brief client vit dans `00-contexte/`).
> Objectif : transformer un brief projet en **assets prêts à coller** dans Google Ads, pas en conseils théoriques.

Ce skill **produit du livrable copiable**. Il ne remplace pas la stratégie (voir `impulsion-strategie`) ni l'audit (voir `impulsion-audit-google-ads`) : il exécute la **création** des campagnes une fois le cadre posé.

---

## Étape 0 — Charger le brief + compléter les champs tactiques

1. **Lis le brief projet** dans `00-contexte/projet-N/` (par défaut `projet-1/`) : `entreprise.md`, `offre.md`, `cible.md`, `finance.md`, `marché.md`, `systeme-acquisition.md`. Récupère : entreprise, site web, secteur, offre précise, persona, objectif + KPI, budget mensuel, panier moyen, CAC cible.
   - Si un fichier porte encore `_À compléter._` sur un champ critique (offre, cible, objectif), **arrête-toi et demande l'info** avant de produire quoi que ce soit. Un asset bâti sur un brief vide est inutilisable.
2. **Complète les champs que le brief ne contient pas** (indispensables aux assets). Regroupe-les en **un seul appel `AskUserQuestion`** (ou une relance texte courte si l'outil n'est pas disponible) :
   - **Marque** : nom exact + variantes et fautes d'orthographe courantes.
   - **Ce que l'entreprise NE fait PAS** (services voisins à exclure).
   - **Zone géographique** ciblée (si campagne locale).
   - **Concurrents directs** (noms de marque + sites).
   - **Différenciateurs réels** : preuves, chiffres, garanties, certifications **vérifiables**.
   - **Pages réellement existantes** sur le site (pour les liens annexes : /tarifs, /contact, /avis…).
   - **Données 1st party réellement disponibles** (liste clients avec consentement, visiteurs taggés, convertisseurs 90j, abonnés YouTube).
3. **Type de campagne** visé : Search / Performance Max / Demand Gen (ou plusieurs). Il conditionne les blocs à produire (surtout mots-clés vs signaux d'audience).

> **Règle d'or, valable pour TOUS les blocs :** n'invente jamais un chiffre, une garantie, une page, un service ou une donnée 1st party absents du brief. S'il manque une info, produis un gabarit « à compléter » et signale-le, plutôt qu'un élément inventé.

Selon l'argument (`mots-cles`, `negatifs`, `annonces`, `composants`, `audiences`, `visuel`), ne produis que le bloc demandé. Sans argument (`tout`), enchaîne les blocs 1 à 6.

---

## Bloc 1 — Mots-clés (Search)

**Docs :** `03-google-ads/search/Search - Rechercher des keywords.md`, `Search - Sélection des mots clés et types de correspondance.md`, `Search - Types de correspondance.md`, `Search - Regrouper et mapper les keywords.md`.

Cible les mots-clés à **forte intention** (bas de funnel). Filtre impitoyablement : ~80 % du business vient de ~20 % des mots-clés. Garde un mot-clé seulement s'il coche **≥ 3 critères** : (1) intention transactionnelle/commerciale claire (devis, tarif, prix, agence, prestataire), pas d'informationnel pur ; (2) le chercheur sait ce qu'il veut ; (3) matche directement l'offre, pas un produit voisin ; (4) volume plausible ; (5) CPC plausiblement rentable vs panier / CAC.

**Règle géo (importante).** La zone est déjà ciblée par le paramètre géographique de la campagne. Produis donc **deux colonnes** :
- **Sans géo** : le mot-clé nu (capte la majorité du volume local). Cœur de compte.
- **Avec géo** : la variante avec ville, uniquement en `[exact]`, réservée aux requêtes les plus chaudes. Ne pas spammer la ville partout (redondant avec le ciblage, fragmente les données).

**Correspondances :** `[exact]` = requêtes ultra-qualifiées ; `« expression »` = variantes proches contrôlées ; `large` = capter des variantes (le BMM +modifié n'existe plus depuis 2021, à réserver au Smart Bidding).

**Livrable** — un tableau par segment, dans cet ordre :
1. **Génériques TOP 5** (incontournables) : `Sans géo | Avec géo | Correspondance | Pourquoi ça convertit (1 phrase)`
2. **Génériques TOP 10** (élargissement) : `Sans géo | Avec géo | Correspondance`
3. **Génériques TOP 20** (longue traîne forte intention) : `Sans géo | Avec géo | Correspondance`
4. **Marque** (à protéger, CPC bas, conv élevé) : `Mot-clé | Correspondance`
5. **Concurrents** (conquête) : `Mot-clé | Correspondance | Note tactique`
6. **Négatifs de départ** (à ne pas cramer) : liste des termes à exclure d'emblée.

Termine par une note (3-5 lignes) : segments d'intention délibérément exclus et pourquoi. Tout doit être prêt à coller dans Google Ads.

---

## Bloc 2 — Mots-clés à exclure (négatifs)

**Docs :** `03-google-ads/search/Search - Mots-clés à exclure.md`, `Search - Catalogue de mots-clés à exclure.md`.

Objectif : protéger le budget **sans** bloquer par erreur du trafic rentable. Correspondance `[exact]` ou `« expression »` (évite le `large`, qui sur-bloque).

**Livrable** — un tableau par catégorie (10 à 30 termes chacune), colonnes `Mot-clé négatif | Correspondance | ⚠️ À vérifier ? (oui/non + raison)` :
1. Gratuit / petit budget (gratuit, free, pas cher, discount)
2. Emploi / formation / stage (emploi, salaire, devenir, fiche métier)
3. DIY / informationnel (comment, tuto, modèle, définition, loi, c'est quoi)
4. Recherche d'outils / logiciels (logiciel, application, excel, tableur)
5. Mauvais côté du marché / mauvais persona (déduis qui cherche le service « à l'envers » : ex. pour de la gestion locative, les locataires qui veulent LOUER, pas les propriétaires qui veulent déléguer)
6. Concurrents / marques (**sauf** conquête assumée ; dans ce cas, à part et signalé)
7. Hors cible géographique (villes/régions confondues, si campagne locale)
8. Services NON proposés (déduits du bloc « ce que je NE fais PAS »)

Après tous les tableaux, ajoute une section **« PRÊT À COLLER DANS GOOGLE ADS »** : tous les termes validés (hors ceux marqués ⚠️), un par ligne, sans puce, regroupés par correspondance (`[exact]` d'un côté, `« expression »` de l'autre).

**Règles :** signale les termes **ambigus** à ne pas exclure aveuglément (un négatif trop large peut couper des requêtes acheteuses : « estimation », « pas cher »…) → colonne ⚠️ = oui + raison. N'invente aucune marque concurrente : n'utilise que celles fournies. Termine par une note (3-5 lignes) sur les pièges de sur-exclusion propres au secteur.

---

## Bloc 3 — Annonces RSA (titres + descriptions)

**Docs :** `03-google-ads/search/Search - Rédiger des RSA performantes.md`, `Search - Angles de headlines.md`, `Search - Améliorer la pertinence des annonces.md`, `Search - [Review] Qualité des titres.md`.

**Livrable** — 3 blocs, en tableau `# | Texte | Caractères | Angle | Épingle suggérée` :

**1. 15 titres courts (30 caractères max, espaces inclus)** — compte exact entre parenthèses après chaque titre.
- **Socle identitaire obligatoire, en tête** : 3 titres « base » épinglables en position 1, AVANT le reste :
  - le nom de marque seul `[marque]`
  - « [catégorie] [ville] » (ex. Agence immobilière Marseille) `[identité+géo]`
  - le mot-clé principal `[mot-clé]`
  - Ces **3 titres seuls** sont épinglés en position 1 (Google en fait tourner un par impression). Tout le reste reste **non épinglé** pour laisser l'algo optimiser. Ne jamais épingler un bénéfice, un prix ou une preuve en position 1.
- Les 12 autres : varie les angles et étiquette chacun `[bénéfice] [mot-clé] [preuve sociale] [urgence] [prix/offre] [CTA] [question] [géo] [levée d'objection]`. Mot-clé principal dans ≥ 3 titres. ≥ 2 titres avec un chiffre concret. 15 angles réellement différents, pas 15 reformulations.

**2. 5 titres longs (90 caractères max)** — phrase complète : bénéfice + preuve ou CTA.

**3. 5 descriptions (90 caractères max)** — un argument clé + un CTA en verbe d'action ; varie garantie / délai / expertise / résultat / offre.

**Règles Google (strict) :** recompte chaque limite à la lettre (un titre à 31 c est invalide). Pas de majuscules abusives ni de ponctuation excessive (`!!`, `???`). Pas de superlatif non prouvé (« le meilleur », « n°1 ») ni de promesse non tenue. **N'invente aucun chiffre ni garantie** : n'utilise que les différenciateurs fournis ; s'il en manque, propose un titre « à compléter ». Termine par une note (3-5 lignes) : angles qui convertissent le mieux pour cette cible + 1-2 tests A/B prioritaires.

---

## Bloc 4 — Composants d'annonce (assets)

**Docs :** `03-google-ads/composants/Composants - Configurer les extensions d'annonces.md`, `Composants - Utilisation des extensions.md`, `Composants - [Review] Couverture des extensions.md`.

Chaque composant renforce l'intention, lève une objection ou pousse à l'action. Compte de caractères entre parenthèses. **N'invente aucune page, aucun service, aucun chiffre.**

**Livrable** — 4 blocs :

**1. Liens annexes (6 liens)** vers des pages **réelles** (listées au brief) : `Titre (25c) | Desc 1 (35c) | Desc 2 (35c) | URL`.

**2. Accroches (10, 25c max)** : un USP concret par accroche (garantie, délai, gratuité, expertise, certification, zone d'intervention) : `Accroche | Caractères | USP`.

**3. Extraits structurés (2 listes)** : choisis 2 en-têtes pertinents parmi Services, Marques, Cours, Quartiers desservis, Styles, Types, Destinations, Programmes, Recommandations, Modèles, Assurances. Pour chacun : 4 à 10 valeurs (25c max).

**4. Formulaire de lead** (si objectif = prospects, pas vente e-commerce directe) : Titre (30c) · Description (200c) · 3 à 5 questions (privilégier les questions natives Google : nom, e-mail, téléphone, code postal + 1-2 questions de qualification) · Message de confirmation (200c). Sinon : « Non pertinent pour ce type de campagne. »

Termine par une note (3-5 lignes) : quels assets pèsent le plus sur le CTR / Niveau de qualité pour cette offre + 1 conseil d'activation.

---

## Bloc 5 — Signaux d'audience (Performance Max / Demand Gen)

**Docs :** `03-google-ads/audiences/Audiences - Signaux d'audience.md`, `Audiences - Patterns de signaux d'audience.md`, `Audiences - Configurer les signaux d'audience.md`, `Audiences - [Review] Qualité des signaux d'audience.md`.

**Distinction fondamentale, à rappeler en tête de livrable :**
- **Performance Max** : un signal d'audience est un **accélérateur d'apprentissage, PAS une limite**. Google diffuse au-delà. On nourrit le signal avec les audiences **les plus qualifiées**, pas les plus larges.
- **Demand Gen** : les audiences se rapprochent d'un **vrai ciblage** (avec extension possible via le ciblage optimisé). On peut être plus large et structurer par niveau d'intention.

**N'invente aucune donnée 1st party ni liste client** non listée au brief : si une donnée manque, signale-la et propose un gabarit « à activer » avec son prérequis (tag, import Customer Match, taille minimale, consentement). Indique systématiquement le niveau d'intention (chaud/tiède/froid), le volume attendu et les contraintes Google.

**Livrable** — 7 blocs :
1. **Rappel stratégique** (3-4 lignes) : lecture PMax vs Demand Gen pour cette offre + priorité des sources : 1st party > intention de recherche > centres d'intérêt > démographie.
2. **Segments personnalisés (levier n°1)** : 3 segments (CHAUD intention immédiate / TIÈDE comparaison / FROID prise de conscience). Pour chacun : nom (≤ 40c), « personnes ayant recherché ces termes » (8-15 requêtes réelles), « personnes ayant parcouru des sites similaires » (3-8 URLs réelles). **À la fin, redonne toutes les listes en blocs copiables** (un terme/URL par ligne).
3. **Vos données (1st party confirmées)** : par priorité, avec source, fenêtre (ex. convertisseurs 90j), prérequis, taille min, drapeau « À ACTIVER » si non confirmé.
4. **Centres d'intérêt & segments Google** : In-market (2-5), Événements de vie (0-3), Affinités (2-4). Nom exact du segment + adéquation persona (1 ligne).
5. **Démographie** : âge/sexe/statut parental/revenu à privilégier ou exclure. Rappelle que sur PMax ce sont des signaux, pas des exclusions dures.
6. **Segments similaires (UNIQUEMENT si Demand Gen)** : seed parmi les données 1st party confirmées + portée Restreint (~2,5 %)/Équilibré (~5 %)/Large (~10 %) + prérequis de taille. Sinon : « Non applicable ».
7. **Exclusions** : 3 à 6 (clients déjà signés, marque déjà convertie, chercheurs d'emploi, placements non pertinents).

Note finale (3-5 lignes) : quels signaux accélèrent le plus la sortie de phase d'apprentissage + 1 conseil d'activation + rappeler que « signaux d'audience » ≠ « thèmes de recherche » (search themes) ≠ « ciblage optimisé ».

---

## Bloc 6 — Visuels

**Docs :** `03-google-ads/creatives/Creatives - Création image.md`, `03-google-ads/creatives/Creatives - [Review] Qualité des créatives image.md`.

Adapte le visuel au type de campagne :
- **Réseau de Recherche** : l'image accompagne l'annonce texte (le message reste porté par les titres). Sobre, concret, rassurant.
- **Demand Gen** : l'image est centrale. Esthétique, lifestyle, esprit contenu natif qui accroche dans un flux.
- **Performance Max** : produis **plusieurs scènes** (gros plan produit, mise en situation, résultat client) pour nourrir l'algo.

**Contraintes de production :** reprendre la charte du site (couleurs, style, ambiance) ; **aucun texte ni logo incrusté** (Google ajoute son texte, le logo est un composant à part ; un visuel chargé de texte est souvent refusé) ; rendu photo pro, lumineux, sans watermark ; sujet centré avec de la marge (recadrage auto en 1:1, 1.91:1, 4:5).

**Production :** décris d'abord en une phrase la scène retenue (sujet + ambiance). Puis, si un outil de génération d'images est disponible dans l'environnement, génère l'image ; sinon, **livre le prompt image finalisé** prêt à coller dans un générateur (gpt-image, Gemini/Nano Banana, Midjourney…).

---

## Livrable global

Sans argument (`tout`), écris un document **`CAMPAGNE-GOOGLE-<projet>.md`** à la racine du projet courant, regroupant les blocs produits (mots-clés, négatifs, RSA, composants, signaux d'audience, plan visuel). Avec un argument précis, produis uniquement ce bloc (inline ou en fichier selon la préférence de l'utilisateur).

## Garde-fous

- **Prêt à coller** : chaque bloc doit pouvoir être copié tel quel dans Google Ads (comptes de caractères respectés, sections copiables).
- **Zéro invention** : chiffres, garanties, pages, services, données 1st party → uniquement ce qui vient du brief. Sinon, gabarit « à compléter » signalé.
- **Cite** chaque doc du corpus utilisé (chemin relatif) pour que l'utilisateur puisse le rouvrir.
- Ce skill **crée** ; pour vérifier la qualité d'un compte existant, enchaîne avec `impulsion-audit-google-ads`.
