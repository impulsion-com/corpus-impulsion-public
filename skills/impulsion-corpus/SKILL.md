---
name: impulsion-corpus
description: "Donne accès au Corpus Impulsion : 314 documents opérationnels de media buying en français (SOP, checklists, fiches techniques) couvrant Google Ads, Meta Ads, TikTok Ads, landing pages et stratégie d'acquisition. Localise la racine du corpus depuis n'importe quel dossier de travail, trouve le bon document, et route vers les 12 skills spécialisées impulsion. Utilise cette skill dès que la demande touche à la publicité payante, même si l'utilisateur ne mentionne pas le corpus : Google Ads, Search, PMax, Performance Max, Demand Gen, Shopping, RSA, mots-clés, niveau de qualité, Meta Ads, Facebook Ads, Instagram Ads, Advantage+, pixel, CAPI, TikTok Ads, Spark Ads, landing page, tunnel de conversion, suivi des conversions, tracking, ROAS, CPA, CTR, budget média, enchères, scaling, créatives, angles marketing, audit de compte, stratégie d'acquisition, media buying, media buyer."
argument-hint: "[sujet ou question, ex. : suivi des conversions Google Ads]"
license: impulsion.com (contenu du corpus)
---

# Corpus Impulsion — accès et routage

Le Corpus Impulsion est une bibliothèque de **314 documents opérationnels** de media buying en français, conçus par [impulsion.com](https://impulsion.com). C'est la **source de vérité** pour toute tâche Google Ads, Meta Ads, TikTok Ads, site web / landing page ou stratégie d'acquisition.

L'intérêt du corpus n'est pas d'être une encyclopédie de plus : ce sont des procédures testées, avec des seuils chiffrés et des ordres d'opérations qui évitent les erreurs coûteuses (budgets cramés, tracking faux, comptes cassés). Une méthode improvisée sur le moment passera à côté de ces détails. Cherche donc le document avant de répondre de mémoire.

## Étape 0 — Localiser la racine du corpus

Cette skill est livrée **à l'intérieur** du corpus : elle vit dans `<RACINE>/skills/impulsion-corpus/`. La racine est donc le **grand-parent du dossier de cette skill** — deux niveaux au-dessus du `SKILL.md` que tu viens de lire.

Vérifie que le chemin obtenu contient bien `00-contexte/`, `01-strategie/` et `03-google-ads/`. Si oui, tu as la racine ; garde-la en tête pour la suite de la conversation.

Ne code jamais en dur un chemin machine : redérive toujours la racine depuis l'emplacement de ce `SKILL.md` (son grand-parent, deux niveaux au-dessus). Le dossier peut être déplacé, synchronisé (OneDrive, iCloud) ou installé comme plugin selon la machine ; l'emplacement de la skill reste la source fiable.

Le corpus est chargé comme plugin via un lien de répertoire, donc tu liras peut-être cette skill depuis `~/.claude/skills/corpus-impulsion/…`. **Ce n'est pas une copie** : c'est le même dossier vu sous un autre chemin, et écrire d'un côté modifie l'autre. Les deux chemins sont valides ; cite toujours les documents en **relatif** (`03-google-ads/search/…`) plutôt qu'en absolu, pour que la référence reste lisible quel que soit le chemin emprunté.

**Tu travailles presque toujours depuis un autre dossier que le corpus.** Deux conséquences :

- Le corpus est en **lecture seule**. N'y écris rien, sauf demande explicite de l'utilisateur.
- Les **livrables** (audits, plans, assets de campagne, maquettes) vont dans le **dossier de travail courant**, pas dans le corpus. Un rapport d'audit pour un client n'a rien à faire dans une bibliothèque de référence.

## Étape 1 — Charger le contexte client, à la juste dose

Le corpus prévoit un brief client dans `00-contexte/projet-1/` (entreprise, finance, cible, offre, marché, système d'acquisition) et les identifiants de comptes dans `00-contexte/comptes-pubs.md`.

Le niveau de contexte nécessaire dépend de ce qu'on te demande. Exiger le brief complet pour une question de connaissance ferait perdre du temps à l'utilisateur ; s'en passer pour produire des annonces donnerait des livrables génériques et inutilisables.

**Aucun contexte requis** — réponds directement depuis le corpus :
questions de connaissance ou de méthode (« comment fonctionne le niveau de qualité ? », « quelle différence entre PMax et Demand Gen ? »), explications de concept, comparaisons de plateformes, lecture d'un document.

**Contexte requis** — c'est le cas de toute tâche dont le résultat dépend du client :
rédiger des annonces ou des créatives, choisir des mots-clés, allouer un budget, lancer ou auditer une campagne, bâtir une stratégie, configurer un suivi de conversions.

Dans ce second cas, cherche le contexte dans cet ordre :

1. Un dossier de contexte **dans le projet courant** (`00-contexte/`, `contexte/`, un brief, un README client). C'est la source la plus à jour quand tu travailles sur un client précis.
2. `<RACINE>/00-contexte/projet-1/` (ou `projet-N` si l'utilisateur en désigne un autre).

Si aucune des deux ne contient d'information exploitable — les fichiers de `projet-1` sont livrés avec `_À compléter._` — **ne bloque pas la conversation et n'invente pas de contexte**. Demande à l'utilisateur les éléments dont tu as réellement besoin pour la tâche demandée, en une seule fois et de façon ciblée. Pour rédiger des annonces Search, l'offre, la cible et la zone géographique suffisent : réclamer les six fichiers serait disproportionné.

Quand le contexte manque et que l'utilisateur veut démarrer un client de zéro, `/impulsion-strategie` fait exactement ce travail de recueil.

## Étape 2 — Trouver le bon document

```
00-contexte/    brief client (par projet) + identifiants de comptes
01-strategie/   cross-plateforme : offre, cible/avatar, fondamentaux, objectifs,
                analyse, rédaction, reporting, expérimentation
02-site-web/    landing pages & pages site : construction, audit, méthodes, exemples
03-google-ads/  search, pmax, demand-gen, shopping, display, video, suivi, enchères,
                audiences, composants, créatives, optimisation, flux-produit, compte, stratégie
04-meta-ads/    lancement, suivi (CAPI, server-side), créatives, optimisation, scaling, kpi, reporting
05-tiktok-ads/  lancement, suivi, audiences, créatives, optimisation, compte
```

Les noms de fichiers sont explicites : tu peux identifier le bon document sans ouvrir les autres.

Pour la liste complète des 314 documents avec leur type, lis `references/index-corpus.md`. Consulte-le quand le nom du document ne se devine pas ou que tu veux couvrir un sujet exhaustivement ; pour une demande évidente, va directement au fichier.

### Convention de nommage

Format : `Catégorie - [Tag optionnel] Nom.md`

| Indice dans le nom | Type | Comment l'utiliser |
|---|---|---|
| Verbe d'action (« Lancer », « Configurer ») | **SOP** | Suivre les étapes dans l'ordre |
| Nom de concept, sans tag | **Fiche / Fondamental / Framework** | Consulter pour comprendre ou décider |
| `[Review]` | **Checklist** | Valider avant ou après une action |

Exemples : `Search - Lancer une campagne Search.md` (SOP) · `Search - Niveau de qualité.md` (fiche) · `Search - [Review] Lancement de campagne Search.md` (checklist).

## Étape 3 — Exécuter

1. **Lis le document en entier** avant d'agir. La section « Ce que ce document fait / ne fait pas » renvoie vers les documents complémentaires — c'est souvent là que se trouve la pièce manquante.
2. **Suis les étapes du document** plutôt que ta propre méthode. Quand le corpus donne un seuil ou un ordre d'opérations, il y a une raison derrière : respecte-le, ou dis explicitement pourquoi tu t'en écartes.
3. **Cite le document utilisé** avec son chemin relatif à la racine du corpus, pour que l'utilisateur puisse le rouvrir. Exemple : « d'après `03-google-ads/suivi/Suivi - Configurer le suivi des conversions Google Ads.md` ».
4. Si aucun document ne couvre le sujet, dis-le franchement avant de répondre de tes connaissances générales. L'utilisateur doit savoir ce qui vient du corpus et ce qui n'en vient pas.

## Déléguer aux skills spécialisées

Douze skills couvrent le cycle de vie d'un compte. Quand la demande correspond à l'une d'elles, invoque-la au lieu de refaire le travail à la main — elles embarquent leurs propres références (scoring, benchmarks, checklists) et vont plus loin que ce que tu improviserais.

| Demande | Skill |
|---|---|
| Nouveau client, stratégie de zéro | `impulsion-strategie` |
| Plan média par vertical (12 templates) | `impulsion-plan-media` |
| Créer une campagne Google Ads (mots-clés, RSA, composants, audiences) | `impulsion-creer-campagne-google-ads` |
| Créer une campagne Meta (angles, textes, visuels) | `impulsion-creer-campagne-meta` |
| Monter un site vitrine WordPress | `impulsion-site-vitrine` |
| Audit complet multi-plateforme | `impulsion-audit` |
| Audit Google Ads (80 checks) | `impulsion-audit-google-ads` |
| Audit Meta Ads (50 checks) | `impulsion-audit-meta-ads` |
| Audit TikTok Ads (28 checks) | `impulsion-audit-tiktok-ads` |
| Audit des créatives | `impulsion-audit-creatives` |
| Audit d'une landing page | `impulsion-audit-landing` |
| Allocation budgétaire et enchères | `impulsion-audit-budget` |

Ces skills ont été écrites en supposant que le corpus était le dossier courant : leurs chemins (`01-strategie/…`, `04-meta-ads/…`) sont relatifs à la racine du corpus. **Résous-les contre la racine trouvée à l'étape 0**, pas contre le dossier de travail courant — sinon tu chercheras des fichiers qui n'existent pas là où tu es.

Reste sur cette skill quand la demande est une question de connaissance, une lecture de document, ou une tâche qui ne rentre dans aucune des douze cases.

## Terminologie

Le corpus emploie les termes officiels de la documentation Google Ads française, et tu dois faire de même : l'utilisateur retrouvera ces libellés tels quels dans son interface.

**Niveau de qualité** (Quality Score) · **Mots-clés à exclure** (negative keywords) · **Stratégies d'enchères intelligentes** (Smart Bidding) · **Insights sur les enchères** (Auction Insights) · **Liens annexes** (sitelinks) · **Rapport sur les termes de recherche** (Search Terms Report).

Certains termes restent en anglais parce que l'usage métier le commande : Performance Max (PMax), Demand Gen, Customer Match, AI Max, RSA, DSA, ROAS, CPA, CTR, CVR.

## Ce que cette skill fait / ne fait pas

**Fait** : localiser le corpus depuis n'importe quel dossier, cadrer le contexte client nécessaire, trouver le bon document, router vers la bonne skill spécialisée, imposer les conventions de citation et de terminologie.

**Ne fait pas** : exécuter les workflows lourds — c'est le rôle des douze skills du tableau ci-dessus. Ne remplace pas non plus l'accès aux comptes publicitaires : quand une tâche exige des données réelles (dépenses, conversions, termes de recherche), demande-les ou demande un export.

## Maintenance

Après avoir ajouté, renommé ou supprimé des documents du corpus, régénère l'index pour que le routage reste juste :

```bash
python skills/impulsion-corpus/scripts/generer_index.py
```
