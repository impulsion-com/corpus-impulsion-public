# Créer une audience Lookalike TikTok Ads

> **Plateforme :** TikTok
> **Catégorie :** Audiences
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Créer des audiences similaires performantes sur TikTok Ads en maîtrisant la qualité de la seed, le choix de la taille, et les stratégies adaptées aux petits marchés comme la France et la Belgique.

---

## Ce que cette SOP ne couvre PAS

Cette SOP ne couvre **pas :**

- La configuration des autres types d'audiences (custom, intérêts, démo) (Voir : [Procédure - Configurer les audiences TikTok Ads](<Audiences - Configurer les audiences.md>))
- La mise en place du retargeting (reciblage) (Voir : [Procédure - Mettre en place le retargeting TikTok Ads](<Audiences - Mettre en place le retargeting.md>))
- L'analyse de l'audience source via Audience Insights (Voir : [Procédure - Analyser son audience TikTok Ads](<Audiences - Analyser son audience.md>))
- L'installation et la qualité du pixel (impact direct sur la qualité de la seed) (Voir : [Procédure - Configurer le tracking TikTok Ads](<../suivi/Suivi - Configurer le suivi.md>))
- L'usage de l'audience similaire dans une campagne de prospection (Voir : [Procédure - Lancer une campagne conversions TikTok Ads](<../lancement/Lancement - Lancer une campagne conversions.md>))

---

## Pourquoi utiliser une audience similaire ?

- Atteindre des utilisateurs nouveaux qui partagent les caractéristiques comportementales et démographiques de vos meilleurs clients.
- Scaler une campagne de prospection au-delà des audiences par intérêts, souvent saturées rapidement.
- Réduire le CPA : **une audience similaire bien construite affiche en moyenne 10 à 30 % de CPA inférieur** à une audience par intérêts standard, à condition que la seed soit de qualité.

💡 **Condition sine qua non** : la qualité de l'audience similaire est entièrement déterminée par la qualité de l'audience source. Une audience similaire construite sur une seed générique produira des résultats génériques.

---

## Prérequis — Tailles minimales par type de source

| Type de source (seed) | Taille minimale requise | Taille recommandée |
|---|---|---|
| Liste clients (CSV) | 100 utilisateurs correspondants | 500–1 000+ |
| Visiteurs pixel (événement) | 100 utilisateurs | 1 000–5 000+ |
| Engagement TikTok | 100 utilisateurs | 500–2 000+ |
| Acheteurs (Purchase pixel) | 100 utilisateurs | 300–1 000+ |

⚠️ **Le minimum de 100 correspond aux utilisateurs "matchés"**, pas au nombre de lignes uploadées. Avec un match rate de 25–35 % sur TikTok, une liste de 400 emails est le strict minimum pour espérer 100 correspondances. Visez 1 000+ correspondances pour une audience similaire de qualité.

---

## Le concept de qualité de seed (SEED Quality)

### Principe fondamental

> **50 acheteurs à haute valeur vie (LTV) valent mieux que 10 000 abonnés non qualifiés.**

TikTok construit l'audience similaire en identifiant les signaux communs dans la seed : comportements, centres d'intérêt, données démographiques, habitudes de consommation de contenu. Si la seed est hétérogène (visiteurs lambda, abonnés sans intention d'achat), les signaux se neutralisent et l'audience similaire ressemble à l'audience générale TikTok.

### Hiérarchie des seeds par qualité

| Seed | Score qualité | Volume typique disponible |
|---|---|---|
| Acheteurs récurrents (2+ commandes) | ★★★★★ | Faible — nécessite une base client mature |
| Acheteurs récents 30–60 jours | ★★★★☆ | Moyen — bon équilibre signal/volume |
| Leads convertis (SQL, contrat signé) | ★★★★☆ | Variable selon le secteur |
| Visiteurs page produit / fiche service 30j | ★★★☆☆ | Élevé — intention sans conversion |
| Viewers 75–100 % d'une vidéo clé | ★★★☆☆ | Variable selon les vues |
| Abonnés TikTok actifs | ★★☆☆☆ | Élevé mais signal dilué |
| Tous visiteurs du site 90j | ★☆☆☆☆ | Très élevé — signal trop générique |

↪️ Pour la création et la configuration des audiences source, voir [Configurer les audiences TikTok Ads](<Audiences - Configurer les audiences.md>).

---

## Tailles de l'audience similaire — Définition précise

TikTok propose trois niveaux, exprimés en **pourcentage de la population TikTok du pays cible** :

| Niveau | Pourcentage | Caractéristiques | Recommandation |
|---|---|---|---|
| **Narrow (Étroite)** | 1 – 5 % | Très similaire à la seed, petite audience | Marchés larges (US, UK) ou seed ultra-qualifiée |
| **Balanced (Équilibrée)** | 5 – 10 % | Compromis similarité / volume | Recommandé pour la France en première approche |
| **Broad (Large)** | 10 – 20 % | Moins similaire, audience plus grande | Marchés restreints, saturation Narrow, phase de scale |

### En volume absolu — Exemple France (~15M utilisateurs TikTok)

| Niveau | Volume estimé France |
|---|---|
| Narrow (1–5 %) | 150 000 – 750 000 |
| Balanced (5–10 %) | 750 000 – 1 500 000 |
| Broad (10–20 %) | 1 500 000 – 3 000 000 |

💡 **Sur la France, le Narrow peut saturer en 2–3 semaines** avec un budget de 50–100 €/jour. Commencer par Balanced et tester Broad en parallèle est souvent plus rentable.

---

## Guidance pour les petits marchés (France, Belgique, Suisse)

### Le problème d'overlap

Sur les marchés à faible base d'utilisateurs, les audiences Lookalike Narrow se chevauchent fortement avec vos Custom Audiences existantes (retargeting, engagements). Cela produit :
- Une audience nette effective très réduite.
- Une surexposition des mêmes utilisateurs sur plusieurs campagnes.
- Des CPM élevés par compétition interne au compte.

### Recommandations spécifiques

| Marché | Stratégie recommandée |
|---|---|
| **France** | Démarrer en Balanced (5–10 %), tester Broad si saturation. Ajouter exclusion CRM systématique. |
| **Belgique** | Broad quasi systématiquement. Segmenter par langue (FR/NL) pour éviter le ciblage mixte. |
| **Suisse** | Broad + exclusion agressive. Population TikTok limitée (~2M), risque de saturation très rapide. |

⚠️ **Dans certains cas sur ces marchés, un ciblage Broad sans audience similaire (démographie uniquement) surperforme le Lookalike Narrow.** Toujours tester les deux en parallèle avant de conclure.

---

## Stacking audience similaire + Filtres d'intérêts

### Quand ça aide
- Seed de faible qualité (signal dilué) : ajouter des intérêts permet de restreindre à un sous-ensemble plus pertinent.
- Offre très niche : l'intérêt sert de garde-fou si l'audience similaire est trop large.

### Quand ça nuit
- Seed de haute qualité sur un petit marché : empiler des intérêts rétrécit l'audience sous les seuils de diffusion efficace.
- Phase de scale : les restrictions limitent la capacité de l'algo à optimiser.

| Situation | Action recommandée |
|---|---|
| Seed qualité + marché large | Audience similaire sans restriction d'intérêts |
| Seed qualité + petit marché (FR, BE) | Lookalike Broad, sans intérêts |
| Seed faible qualité | Audience similaire + 1–2 intérêts pertinents |
| Test initial | Tester les deux versions en ad groups séparés |

---

## Mise à jour automatique et fréquence de rafraîchissement

💡 **Les audiences similaires TikTok se mettent à jour automatiquement** lorsque la source change. Dès que de nouveaux utilisateurs entrent dans la Custom Audience source (nouveaux acheteurs, nouveaux visiteurs), l'audience similaire est recalculée sans action manuelle.

### Fréquence de revue recommandée

| Fréquence | Action |
|---|---|
| **Toutes les 2 semaines** | Vérifier la taille de la seed source — est-elle toujours au-dessus de 1 000 matchs ? |
| **Mensuel** | Évaluer les performances (CPA, ROAS, fréquence) — l'audience similaire se dégrade-t-elle ? |
| **Trimestriel** | Recréer l'audience similaire depuis une nouvelle seed si les résultats ont décliné de > 20 % |

⚠️ **Si la seed source est une liste statique (CSV)**, elle ne se met pas à jour automatiquement. Importer une nouvelle version du fichier chaque mois pour garder la fraîcheur.

---

## Création pas à pas dans TikTok Ads Manager

1. Aller dans **TikTok Ads Manager → Actifs → Audiences**.
2. Cliquer sur **Créer une audience → Audience similaire (Lookalike)**.
3. Sélectionner l'**audience source** (Custom Audience déjà créée).
4. Choisir le **pays / région** de ciblage.
5. Sélectionner la **taille** :
   - Narrow (1–5 %)
   - Balanced (5–10 %)
   - Broad (10–20 %)
6. Nommer selon la convention : `LAL - [Source] - [Taille] - [Marché]`
   - Exemple : `LAL - Acheteurs 30j - Balanced - FR`
7. Enregistrer. Le statut passe à **En cours de traitement** (24–48 h), puis **Prête**.

💡 **Créer une audience similaire par niveau de taille dès le départ** (Narrow + Balanced + Broad) pour pouvoir les tester rapidement sans attendre le traitement à chaque itération.

---

## Test et validation des performances

| Phase | Durée | Budget indicatif | KPI à surveiller |
|---|---|---|---|
| **Apprentissage** | 7–14 jours | 30–50 €/jour | Coût par résultat, fréquence |
| **Comparaison** | 14–21 jours | Budget stable | CPA audience similaire vs intérêts |
| **Scale** | Après validation | +20–30 % budget/semaine | ROAS, CPA tendance |

↪️ Pour le cadre complet de test d'audiences, voir [Analyser son audience TikTok Ads](<Audiences - Analyser son audience.md>).

---

## Références croisées

- [Configurer les audiences TikTok Ads](<Audiences - Configurer les audiences.md>)
- [Analyser son audience TikTok Ads](<Audiences - Analyser son audience.md>)
- [Structurer ses campagnes TikTok Ads](<../lancement/Lancement - Structurer ses campagnes.md>)
- [Optimiser ses campagnes TikTok Ads](<../optimisation/Optimisation - Optimiser ses campagnes.md>)
