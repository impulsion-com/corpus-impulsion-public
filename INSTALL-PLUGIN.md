# Corpus Impulsion — plugin Claude Code

Ce dossier **est** un plugin Claude Code. Une fois installé, ses 13 skills sont disponibles dans **toutes** tes sessions Claude Code, quel que soit le dossier de travail — plus besoin d'avoir le corpus dans le projet courant.

## Installation

```bash
powershell -ExecutionPolicy Bypass -File .\installer-plugin.ps1
```

Puis **redémarre Claude Code** : les plugins sont chargés au démarrage de la session.

Le script crée un lien de répertoire (*junction*) de `~\.claude\skills\corpus-impulsion` vers ce dossier. Claude Code y trouve `.claude-plugin\plugin.json` et charge le plugin **sur place**.

Ce que ça implique, et c'est le point important :

- **Aucune copie.** Le lien pointe sur les fichiers réels. Tu enrichis un document du corpus, la modification est active immédiatement, sans réinstaller quoi que ce soit.
- **Pas de droits administrateur.** Une junction n'en demande pas, contrairement à un lien symbolique.
- **Suppression sans risque.** Retirer le lien ne touche jamais aux fichiers du corpus.

### Désinstaller

```bash
powershell -ExecutionPolicy Bypass -File .\installer-plugin.ps1 -Desinstaller
```

## Vérifier que ça marche

```bash
claude plugin list
```

Attendu : `corpus-impulsion@skills-dir` — `Status: ✔ loaded`, `Path: ~\.claude\skills\corpus-impulsion`.

Pour l'inventaire détaillé et le coût en tokens :

```bash
claude plugin details corpus-impulsion
```

Attendu : 13 skills, et un coût permanent d'environ **2 700 tokens** ajoutés à chaque session — c'est le prix des 13 descriptions qui permettent le déclenchement automatique. Le contenu d'une skill n'est chargé que lorsqu'elle se déclenche.

## Ce que le plugin apporte

| Skill | Rôle |
|---|---|
| `impulsion-corpus` | **Nouveau.** Routeur : localise le corpus depuis n'importe quel dossier, cadre le contexte client, trouve le bon document, délègue aux 12 autres |
| `impulsion-strategie` | Nouveau client : intake → recherche marché → stratégie + plan média |
| `impulsion-plan-media` | Plan média par vertical (12 templates) |
| `impulsion-creer-campagne-google-ads` | Assets Google Ads prêts à coller (mots-clés, RSA, composants, audiences) |
| `impulsion-creer-campagne-meta` | Assets Meta (angles, textes 3 variantes, visuels) |
| `impulsion-site-vitrine` | Site vitrine WordPress Media Buyer |
| `impulsion-audit` | Orchestrateur d'audit multi-plateforme |
| `impulsion-audit-google-ads` | Audit Google Ads (80 checks) |
| `impulsion-audit-meta-ads` | Audit Meta Ads (50 checks) |
| `impulsion-audit-tiktok-ads` | Audit TikTok Ads (28 checks) |
| `impulsion-audit-creatives` | Audit des créatives cross-plateforme |
| `impulsion-audit-landing` | Audit landing page |
| `impulsion-audit-budget` | Allocation budgétaire et enchères |

Les 12 dernières existaient déjà et n'ont pas été modifiées. La nouveauté est `impulsion-corpus`, qui résout le problème qui empêchait de les utiliser ailleurs : elles ont été écrites en supposant que le corpus était le dossier courant, avec des chemins relatifs comme `03-google-ads/…`. Le routeur établit la racine du corpus en début de tâche, et les autres skills résolvent leurs chemins contre elle.

## Utilisation

Tu n'as normalement rien à invoquer : les descriptions déclenchent les skills automatiquement dès qu'une demande touche à la publicité payante. Depuis n'importe quel projet :

> Configure le suivi des conversions pour mon client plombier à Lyon

Sinon, en explicite :

```
/impulsion-corpus suivi des conversions Google Ads
/impulsion-audit-google-ads
/impulsion-strategie
```

### Où vont les livrables

Le corpus est une bibliothèque de référence, lue et non écrite. Les audits, plans et assets produits vont dans le **dossier de travail courant**.

Corollaire pour le contexte client : le brief d'un client se met dans le projet sur lequel tu travailles, pas dans `00-contexte/projet-1/` du corpus. Le routeur cherche d'abord un dossier de contexte local, et ne retombe sur celui du corpus qu'à défaut. C'est ce qui permet de suivre plusieurs clients sans les mélanger.

## Maintenance

Après avoir ajouté, renommé ou supprimé des documents, régénère l'index qui sert au routage :

```bash
python skills/impulsion-corpus/scripts/generer_index.py
```

Le script relit les 308 documents, extrait leur type depuis l'en-tête (`> **Type :** SOP`) et réécrit `skills/impulsion-corpus/references/index-corpus.md`. Il ne modifie aucun document du corpus.

Comme le plugin est chargé sur place, il n'y a **rien d'autre à faire** : ni réinstallation, ni `claude plugin update`. La modification est active à la session suivante.

## Sur une autre machine

Le corpus est dans OneDrive, donc il se synchronise. Sur la nouvelle machine, lance simplement `installer-plugin.ps1` depuis le dossier synchronisé : le lien se crée avec le bon chemin local.

## Partager le plugin

Le dossier contient aussi `.claude-plugin/marketplace.json`, ce qui permet de l'installer comme marketplace plutôt que par lien :

```bash
claude plugin marketplace add "<chemin ou URL du dépôt>"
claude plugin install corpus-impulsion@corpus-impulsion
```

Attention à la différence de comportement : cette voie **copie** le corpus dans `~/.claude/plugins/cache/` (environ 6 Mo). C'est plus robuste pour distribuer à des tiers, mais la copie est un instantané — il faut lancer `claude plugin update corpus-impulsion@corpus-impulsion` après chaque évolution du corpus. Pour ton usage local, le lien est préférable.

## Licence

- Contenu du corpus : tous droits réservés © [impulsion.com](https://impulsion.com), voir [LICENSE](LICENSE)
- Base des skills d'audit : MIT, attribution AgriciDaniel ([claude-ads](https://github.com/AgriciDaniel/claude-ads))
