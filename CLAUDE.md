# Corpus Impulsion

Tu as accès au **Corpus Impulsion** : 308 documents opérationnels de media buying en français, conçus par [impulsion.com](https://impulsion.com).

Utilise ces documents comme source de vérité pour toute tâche liée à Google Ads, Meta Ads, TikTok Ads, site web / landing pages, ou stratégie de media buying.

---

## Comment naviguer le corpus

```
corpus-impulsion/
├── 00-contexte/         contexte client à compléter (entreprise, finance, cible, offre, marché, acquisition) + ID comptes
├── 01-strategie/        cross-plateforme (offre, cible/avatar, fondamentaux, reporting, expérimentation…)
├── 02-site-web/         landing pages & pages site : construction, audit, méthodes, exemples
├── 03-google-ads/       search, PMax, suivi, enchères, audiences, compte (MCC), shopping…
├── 04-meta-ads/         lancement (+ typologies), suivi (CAPI + server-side), creatives, optimisation, scaling, kpi…
└── 05-tiktok-ads/       suivi, audiences, lancement, creatives, optimisation, compte
```

Chaque sous-dossier regroupe les documents d'un sujet. Le nom du fichier est explicite : tu peux trouver un document utile sans le lire en entier.

---

## Convention de nommage

Format : `Catégorie - [Tag optionnel] Nom.md`

| Tag | Type | Usage |
|---|---|---|
| _(verbe d'action)_ | **SOP** | Suivre les étapes pour exécuter une tâche |
| _(concept, sans tag)_ | **Fiche / Framework / Exemples** | Consulter une référence ou décider |
| `[Review]` | **Checklist** | Valider avant ou après une action |

**Exemples :**
- `Search - Lancer une campagne Search.md` → SOP
- `Search - Niveau de qualité.md` → fiche technique
- `Search - [Review] Lancement de campagne Search.md` → checklist

Le frontmatter de chaque document précise `Plateforme`, `Catégorie`, `Type`, `Mis à jour`.

---

## Comment l'utiliser

1. **Avant toute tâche de media buying, tu DOIS lire le contexte client dans `00-contexte/projet-1/`** (entreprise, finance, cible, offre, marché, système d'acquisition) et les identifiants dans `00-contexte/comptes-pubs.md`. **Si ces fichiers contiennent encore `_À compléter._`, arrête-toi et demande à l'utilisateur de renseigner le contexte de `projet-1` avant de continuer** — tout le corpus s'appuie sur ce contexte. (Pour un autre client, duplique `projet-1/` et utilise le dossier `projet-N` correspondant.)
2. **Quand l'utilisateur te demande une tâche de media buying**, cherche d'abord le document pertinent dans `corpus-impulsion/`
3. **Lis le document complet** avant d'agir : la section *"Ce que ce document fait / ne fait pas"* renvoie vers les docs complémentaires
4. **Suis les étapes du document** plutôt que de générer ta propre méthode
5. **Cite le document utilisé** dans ta réponse (chemin relatif) pour que l'utilisateur puisse le rouvrir

**Exemple de demande :**
> Configure le suivi des conversions pour mon client plombier à Lyon

Tu ouvres `03-google-ads/suivi/Suivi - Configurer le suivi des conversions Google Ads.md` et tu suis les étapes.

---

## Terminologie

Le corpus utilise les termes officiels de la documentation Google Ads française :
- **Niveau de qualité** (Quality Score)
- **Mots-clés à exclure** (Negative keywords)
- **Stratégies d'enchères intelligentes** (Smart Bidding)
- **Insights sur les enchères** (Auction Insights)
- **Liens annexes** (Sitelinks)
- **Rapport sur les termes de recherche** (Search Terms Report)

Certains termes restent en anglais quand l'usage métier le commande : Performance Max (PMax), Demand Gen, Customer Match, AI Max, RSA, DSA, ROAS, CPA, CTR, CVR.

---

## Skills (`skills/`)

Le dossier `skills/` contient 13 skills Claude Code couvrant le cycle de vie complet d'un compte (stratégie → création → audit), invocables en commande une fois installés (`./skills/install.sh`) :

- **Stratégie** : `/impulsion-strategie` (nouveau projet : intake → recherche marché → stratégie + plan média), `/impulsion-plan-media` (plan média, 12 verticals)
- **Création** : `/impulsion-creer-campagne-google-ads` (mots-clés, négatifs, RSA, composants, signaux d'audience, visuels), `/impulsion-creer-campagne-meta` (angles, textes 3 variantes, visuels)
- **Site** : `/impulsion-site-vitrine` (site vitrine WordPress Media Buyer)
- **Audit** : `/impulsion-audit` (orchestrateur), `/impulsion-audit-google-ads` (80 checks), `-meta-ads` (50), `-tiktok-ads` (28), `-creatives`, `-landing`, `-budget`

Les skills d'audit et de stratégie sont **autonomes** : leurs références (scoring, benchmarks, compliance, verticals, checklists) sont embarquées dans `skills/references/`. Les skills de **création** s'appuient sur les SOP du corpus (`03-google-ads/`, `04-meta-ads/`, `01-strategie/`) et sur le brief projet (`00-contexte/`). Voir `skills/README.md`.

---

## Licence

Tous droits réservés © impulsion.com. Voir `LICENSE`.
