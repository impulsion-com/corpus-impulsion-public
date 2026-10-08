# Test RSA avec la boucle d'itération

> **Plateforme :** Google Ads
> **Catégorie :** Search
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Pilier 1️⃣ : Standardiser

### 1.1 Définir vos clusters de tests

**Objectif :** Regrouper les ad groups qui peuvent partager le même modèle RSA.

Un **cluster** est un ensemble d'ad groups avec une intention similaire qui peuvent utiliser un creative identique (sauf pour le slot de relevance anchor).

**Clusters courants :**

| Cluster | Description | Exemples d'ad groups |
| --- | --- | --- |
| Non-brand Generic | Termes core produit/service | "crm software", "sales crm", "crm platform" |
| Non-brand Category | Catégories spécifiques | "enterprise crm", "small business crm" |
| Competitor | Termes concurrents | "[competitor] alternative", "[competitor] vs" |

**Action :**

1. Listez tous les ad groups de votre compte.
2. Regroupez par intention et besoins de messaging partagés.
3. Nommez chaque cluster.
4. Commencez par votre cluster à plus haut volume.

---

### 1.2 Créer le modèle RSA

**Objectif :** Assigner à chaque slot de titre un type d'angle spécifique (depuis le [Catalogue d'angles de headlines](<Search - Angles de headlines.md>)).

**Les 7 types d'angle canoniques**

Chaque RSA est construite à partir de ces types d'angles :

| # | Type d'angle | Ce qu'il fait |
| --- | --- | --- |
| 1 | **Relevance Anchor** | Correspondre à la requête de recherche |
| 2 | **Value Proposition** | Offre principale + bénéfice principal |
| 3 | **Problem/Pain** | Refléter la frustration du chercheur |
| 4 | **USP / Benefit** | Pourquoi vous êtes différent/meilleur |
| 5 | **Social Proof** | Signaux de confiance + credentials |
| 6 | **Risk Removal** | Réduire la barrière à l'action |
| 7 | **Call-to-Action** | Quoi faire ensuite |

**Modèle standard (7-8 titres, 2-3 descriptions)**

| Slot | Type d'angle | Objectif | Exemple |
| --- | --- | --- | --- |
| H1 | **Relevance Anchor** | Correspondre à la requête de recherche | `\{KeyWord:CRM Software\}` |
| H2 | **Value Proposition** | Offre principale + bénéfice principal | "All-in-One Sales Platform" |
| H3 | **USP / Benefit** | Pourquoi vous êtes différent/meilleur | "Setup in Just 2 Minutes" |
| H4 | **Social Proof** | Signaux de confiance + credentials | "Trusted by 50,000+ Teams" |
| H5 | **Risk Removal** | Réduire la barrière à l'action | "No Credit Card Required" |
| H6 | **Call-to-Action** | Quoi faire ensuite | "Start Your Free Trial" |
| H7 | **[Variable]** | 2e titre pour l'angle lead | (voir note ci-dessous) |
| H8 | **[Optionnel]** | Angle supplémentaire (haut volume uniquement) | (si 10k+ impressions/mois) |
| D1 | **Problem + Solution** | Reconnaissance du pain + bénéfice (inclure keyword) | "Tired of deals slipping through? Our CRM software keeps your pipeline organized." |
| D2 | **Proof + CTA** | Confiance + déclencheur d'action | "Join 12,000+ teams who've transformed their sales. Start your free trial today!" |
| D3 | **Risk + Urgency (optionnel)** | Lever les dernières barrières | "No credit card required. Start free and upgrade when ready." |

**Note sur le slot variable (H7)**

Votre RSA initiale (depuis [SOP - Test RSA avec la boucle d'iteration](<Search - Test RSA avec la boucle d'itération.md>)) assigne H7 en fonction de la **température du trafic** depuis votre document [SOP - Creer vos angles d'offre](<../../01-strategie/offre/Offre - Travailler vos angles d'offre.md>) :

| Température du trafic | Type d'angle H7 | Pourquoi |
| --- | --- | --- |
| ❄️ Froid (Unaware/Problem Aware) | Problem/Pain (2e variation) | Ils ont besoin de se sentir compris |
| 🌤️ Tiède (Solution Aware) | USP ou Value Proposition (2e variation) | Ils comparent des solutions |
| 🔥 Chaud (Product/Most Aware) | Social Proof ou Risk Removal (2e variation) | Ils ont besoin du dernier push |

**Pour l'agrégation :** Étiquetez H7 par son type d'angle réel (ex. "USP"), pas par son numéro de slot. Cela garantit une agrégation correcte dans le Pilier 2.

**Note sur l'urgence**

L'urgence est un *modifieur*, pas un type d'angle core. Appliquez l'urgence à n'importe quel titre si besoin :

- "Start Your Free Trial" → "Start Your Free Trial Today"
- "Get 20% Off" → "Get 20% Off - Ends Friday"

Ne dédiez pas un slot à l'urgence seule. Tissez-la dans d'autres types d'angles quand c'est approprié, ou incluez-la dans D3 si vous avez des offres authentiquement limitées dans le temps.

**Pourquoi les modèles fonctionnent**

- H3 est **toujours** "USP / Benefit" pour tous les ad groups du cluster.
- Cela signifie que vous pouvez agréger toutes les données H3 pour voir quel angle USP gagne.
- Sans modèles, chaque ad group est une expérience isolée avec des données insuffisantes.

---

### 1.3 Appliquer le modèle à tout le cluster

**Objectif :** Déployer le même modèle à tous les ad groups du cluster.

**Règles :**

1. **Mêmes slots, mêmes types d'angles :** H3 = USP / Benefit partout dans le cluster.
2. **Seul H1 change :** Le relevance anchor s'adapte à chaque ad group.
3. **Tous les autres slots identiques :** Même titre USP, même CTA, même Social Proof.
4. **Une RSA par ad group :** Pas de RSA concurrentes qui splittent le trafic.

**Exemple :**

| Ad Group | H1 (Relevance Anchor) | H3 (USP / Benefit) | H4 (Social Proof) |
| --- | --- | --- | --- |
| CRM Software | `\{KeyWord:CRM Software\}` | "Setup in 2 Minutes" | "Trusted by 50,000+ Teams" |
| Sales CRM | `\{KeyWord:Sales CRM\}` | "Setup in 2 Minutes" | "Trusted by 50,000+ Teams" |
| Enterprise CRM | `\{KeyWord:Enterprise CRM\}` | "Setup in 2 Minutes" | "Trusted by 50,000+ Teams" |

> 20 ad groups × 5 000 impressions chacun = 100 000 impressions pour "Setup in 2 Minutes". **Vous avez maintenant des vraies données pour bosser.**

---

## Pilier 2️⃣ : Agréger

### 2.1 Extraire les données au niveau asset

**Objectif :** Sortir les données de performance pour chaque asset à travers le cluster.

**Où trouver les données :**

- Interface Google Ads : Assets → Performance → Titres
- Exporter vers spreadsheet
- Ou utiliser API/outil pour automatisation

**Métriques requises :**

| Métrique | Source |
| --- | --- |
| Impressions | Asset performance report |
| Clics | Asset performance report |
| Conversions | Asset performance report |
| Valeur de conversion | Asset performance report |
| Coût | Asset performance report |

---

### 2.2 Calculer les métriques de performance

**Objectif :** Calculer les métriques qui comptent.

**KPI principaux :**

| Métrique | Formule | Cas d'usage |
| --- | --- | --- |
| **CPI** | Conversions ÷ Impressions | Lead Gen / SaaS |
| **RPI** | Revenu ÷ Impressions | Ecommerce |
| **PPI** | (Revenu - Coût) ÷ Impressions | Ecommerce avec marges |

**Métrique de visibilité :**

| Métrique | Formule | Signification |
| --- | --- | --- |
| **AIS** | Impressions de l'asset ÷ Total des impressions d'annonce | À quelle fréquence l'asset s'affiche |

> ⚠️ **N'utilisez pas le CTR comme métrique principale :** Les assets à haut CTR peuvent attirer des clics non qualifiés. Le CPI/RPI mesure les vrais résultats business.

---

### 2.3 Agréger par type d'angle et sous-angle

**Objectif :** Pooler les données entre ad groups pour voir des patterns.

**Process :**

1. Étiquetez chaque asset avec son **type d'angle** en utilisant les 7 types canoniques :
    - Relevance Anchor
    - Value Proposition
    - Problem/Pain
    - USP / Benefit
    - Social Proof
    - Risk Removal
    - Call-to-Action
2. Étiquetez chaque asset avec son **sous-angle** si applicable :
    - Problem/Pain : Tool Chaos
    - Problem/Pain : Missed Deals
    - Social Proof : User Count
    - Social Proof : Rating
    - etc.
3. Sommez les métriques sur tous les ad groups du cluster.
4. Calculez le CPI/RPI agrégé et l'AIS moyen.

> ⚠️ **Gestion du slot variable :** Si H7 est un 2e titre USP, étiquetez-le comme "USP / Benefit", pas comme "H7". Ce qui compte pour l'agrégation c'est le type d'angle, pas la position du slot.

**Exemple de vue agrégée :**

| Angle | Type de titre | Sous-angle | Type d'angle | Conv. totales | CPI | AIS moyen |
| --- | --- | --- | --- | --- | --- | --- |
| Benefit | Problem/Pain | Tool Chaos | "End Spreadsheet Chaos" | 0.25% | 34% | 124 000 |
| Benefit | Problem/Pain | Missed Deals | Missed Deals | 178 | 24% |  |
| Social Proof | User Count | "Trusted by 50,000+ Teams" | 156 000 | User count | 390 | 42% |
| Risk Reversal | Risk Removal | "Try Free for 14 Days" | 67 000 | 201 | Trial | 18% |

> Au lieu de 5k impressions par asset isolément, vous avez 100k+ par type d'angle. Des patterns émergent et les décisions deviennent claires.

---

## Pilier 3️⃣ : Diagnostiquer

### 3.1 Les Performance Quadrants

**Objectif :** Classer les assets dans des catégories actionnables.

**La grille 2×2 :**

|  | AIS élevée | AIS faible |
| --- | --- | --- |
| **CPI/RPI élevé** | ✅ **Champions** | 🚀 **Hidden Gems** |
| **CPI/RPI faible** | 💀 **Silent Killers** | 🗑️ **Trash** |

**Définitions des quadrants :**

| Quadrant | Profil | Ce que ça signifie |
| --- | --- | --- |
| **Champions** | CPI élevé, AIS élevée | Vos meilleurs assets. Google les montre souvent ET ils convertissent bien. |
| **Hidden Gems** | CPI élevé, AIS faible | Excellents convertisseurs que Google ne montre pas assez. Opportunité ! |
| **Silent Killers** | CPI faible, AIS élevée | Google les montre beaucoup, mais ils ne convertissent pas. Tirent la performance vers le bas. |
| **Trash** | CPI faible, AIS faible | Mauvais convertisseurs qui s'affichent rarement de toute façon. Faible priorité. |

**Comment définir "Élevé" vs "Faible" :**

| Métrique | Élevé | Faible |
| --- | --- | --- |
| CPI/RPI | Au-dessus de la moyenne du cluster | En dessous de la moyenne du cluster |
| AIS | Au-dessus de 25% | En dessous de 15% |

*Ajustez les seuils en fonction de votre nombre d'assets et du volume de données.*

---

### 3.2 Actions par quadrant

**Objectif :** Prendre la bonne action pour chaque quadrant.

| Quadrant | Action | Priorité | Comment |
| --- | --- | --- | --- |
| **Champions** | **Protéger** | - | Ne pas toucher. Documenter dans le learning log. |
| **Hidden Gems** | **Augmenter l'exposition** | Haute | Pinner en position 1, ou ajouter des variations en descriptions |
| **Silent Killers** | **Tuer immédiatement** | Critique | Retirer ou remplacer par une nouvelle hypothèse |
| **Trash** | **Remplacer quand pratique** | Faible | Échanger pendant le prochain cycle d'itération |

> 💡 **Les "Silent Killers" sont la priorité :** Ils nuisent activement à la performance parce que Google les montre fréquemment. Retirez-les en premier.

---

### 3.3 Diagnostic au niveau du type d'angle

**Objectif :** Identifier les types d'angles gagnants et perdants au niveau agrégé.

**Résumé de performance par type d'angle :**

| Type d'angle | CPI moyen | AIS moyen | Verdict |
| --- | --- | --- | --- |
| Problem/Pain | 0.27% | 32% | ✅ Type Champion : tester plus de sous-angles |
| Value Proposition | 0.23% | 29% | ✅ Continuer à tester des variations |
| Social Proof | 0.25% | 42% | ✅ Type Champion : protéger |
| Risk Removal | 0.30% | 18% | 🚀 Hidden gem : augmenter l'exposition |
| USP / Benefit | 0.19% | 26% | ⚠️ Sous-performant : tester de nouveaux sous-angles |
| Call-to-Action | 0.22% | 24% | ⚠️ Tester des CTA plus forts |

**Questions clés :**

1. Quels types d'angles gagnent clairement ? → Doubler la mise avec des tests de sous-angles.
2. Quels types d'angles perdent clairement ? → Tester de nouveaux sous-angles ou réduire la priorité du slot.
3. Quels types d'angles ont besoin de plus de données ? → Maintenir ou augmenter légèrement l'exposition.

---

## Pilier 4️⃣ : Itérer

### 4.1 La hiérarchie d'expérimentation

**Objectif :** Tester au bon niveau de granularité.

| Niveau | Ce que vous testez | Exemple | Quand l'utiliser |
| --- | --- | --- | --- |
| **Type de titre vs. Type** | Grandes catégories les unes contre les autres | Problem/Pain vs. Social Proof vs. Risk Removal | **Type d'angle vs. Type** |
| **Sous-angle vs. Sous-angle** | Variations dans un type de titre | Problem : Tool Chaos vs. Problem : Missed Deals | Affiner les gagnants |
| **Asset vs. Asset** | Phrasing dans un sous-angle | "End Spreadsheet Chaos" vs. "Stop the Chaos" | Optimiser les angles éprouvés |

**Règle :** Démarrez large (niveau type d'angle), puis affinez (niveau asset) au fur et à mesure que vous apprenez.

---

### 4.2 Phases de maturité d'expérimentation

**Objectif :** Adapter votre approche d'expérimentation à la maturité du compte.

#### Phase 1️⃣ : Exploration (Nouveau compte / nouvelle offre)

| Focus | Expérimentation Type d'angle vs. Type d'angle |
| --- | --- |
| Objectif | Découvrir 2-3 types d'angles gagnants |
| Modèle | Inclure les 7 types d'angles |
| Durée | 1-3 premiers mois |

**Actions :**

- Tester les 7 types d'angles
- Ne pas optimiser le phrasing encore. Trouver d'abord les concepts gagnants
- S'attendre à une forte variance ; certains types sous-performeront

#### Phase 2️⃣ : Consolidation (Gagnants basiques éprouvés)

| Focus | Mix d'expérimentation type d'angle et sous-angle |
| --- | --- |
| Objectif | Stabiliser le modèle, pousser les gagnants vers une AIS élevée |
| Modèle | Mettre l'accent sur 4-5 types d'angles éprouvés |
| Durée | Mois 3-6 |

**Actions :**

- Réduire l'emphase sur les types d'angles perdants
- Tester des sous-angles dans les gagnants (ex. Problem : Tool Chaos vs. Problem : Lead Quality)
- Augmenter l'exposition des Hidden Gems
- Documenter les Champions

#### Phase 3️⃣ : Raffinement (compte mature)

| Focus | Expérimentation asset vs. asset |
| --- | --- |
| Objectif | Extraire du CPI/RPI supplémentaire des meilleurs types d'angles |
| Modèle | Stable avec les types Champions éprouvés |
| Durée | En continu |

**Actions :**

- Tester des variations de phrasing dans les sous-angles éprouvés
- Petits tweaks : hooks, ordre des mots, spécificité, formatage
- Sonder occasionnellement de nouveaux types d'angles pour détecter des shifts

---

### 4.3 Expérimentation pilotée par hypothèse

**Objectif :** Ne jamais tester aléatoirement. Toujours avoir une hypothèse.

> 💡 **Format d'hypothèse :** "Si nous [CHANGEMENT], alors [KPI] va [AMÉLIORATION] parce que [RAISON]".

**Sources d'hypothèses :**

| Source | Ce qu'il faut chercher | Exemple |
| --- | --- | --- |
| **Offer Angles** 
(depuis [SOP - Creer vos angles d'offre](<../../01-strategie/offre/Offre - Travailler vos angles d'offre.md>)) | **Offer Angles** 
(depuis [SOP - Creer vos angles d'offre](<../../01-strategie/offre/Offre - Travailler vos angles d'offre.md>)) | "Si on teste une headline 'Risk Removal', le CPI va s'améliorer parce que notre garantie est plus forte que les concurrents" |
| Avis clients | Louanges/plaintes répétées | "Si on met l'accent sur 'easy setup' en Problem/Pain, le CPI va s'améliorer parce que c'est mentionné dans 70% des avis positifs" |
| Annonces concurrents | Gaps dans le messaging | "Si on met en avant 'support 24/7' en USP/Benefit, on va se différencier parce qu'aucun concurrent ne le mentionne" |
| Équipe commerciale | Objections courantes | "Si on adresse les inquiétudes pricing en Risk Removal, le CVR va s'améliorer parce que c'est l'objection n°1" |
| Tickets support | Pain points | "Si on met l'accent sur 'no learning curve' en Problem/Pain, le CPI va s'améliorer parce que l'onboarding est une plainte top" |
| Analyse des quadrants | Hidden Gems | "Si on augmente l'exposition de 'Free Trial' Risk Removal, le CPI global va s'améliorer parce que c'est un Hidden Gem" |

**Connexion à votre document Offer Angles :**

Le document d'angles depuis [SOP - Creer vos angles d'offre](<../../01-strategie/offre/Offre - Travailler vos angles d'offre.md>) est votre mine d'or à hypothèses. Chaque type d'angle peut générer plusieurs tests de titres et descriptions :

| Type d'angle | Idées de sous-angles à tester |
| --- | --- |
| **Problem/Pain** | Symptômes différents, frustrations différentes, alternatives échouées différentes |
| **Value Proposition** | Bénéfices différents, résultats différents, framings différents |
| **USP / Benefit** | Rapidité, facilité, technologie, spécialisation, fit avec l'audience |
| **Social Proof** | Nombres d'utilisateurs, ratings, clients nommés, credentials, résultats obtenus |
| **Risk Removal** | Types de garanties différents, framings de trial différents, niveaux d'engagement différents |
| **Call-to-Action** | CTA soft vs. hard, CTA orientés bénéfice, CTA d'urgence |

> ⚠️ **La température du trafic affecte la priorité des hypothèses :** Si vous optimisez un cluster de trafic froid, priorisez les tests de sous-angles Problem/Pain. Pour le trafic chaud, priorisez les tests Social Proof et Risk Removal. Référez-vous à votre classification de trafic depuis [SOP - Creer vos angles d'offre](<../../01-strategie/offre/Offre - Travailler vos angles d'offre.md>) .

---

### 4.4 Génération d'assets par IA

**Objectif :** Utiliser l'IA pour générer des variations d'assets à grande échelle.

**Trois "modes de génération" :**

| Mode | Objectif | Exemple de prompt |
| --- | --- | --- |
| **Iterate** | Micro-tweaks sur les gagnants | "Écris 5 variations de ce titre Problem/Pain qui maintiennent la même frustration : [titre]" |
| **Explore** | Nouveaux sous-angles dans le même type | "Écris 10 titres Problem/Pain qui mettent l'accent sur [tool chaos] pour [CRM software]. Varie le phrasing". |
| **Reinvent** | Nouveaux angles entièrement | "À partir de ces avis clients, quels angles Problem/Pain est-ce qu'on rate ? Propose 5 nouvelles approches". |

**Sources d'input IA :**

- Votre document d'extraction des 6 angles ([SOP - Creer vos angles d'offre](<../../01-strategie/offre/Offre - Travailler vos angles d'offre.md>) )
- Scraping des annonces concurrentes
- Mining des avis clients
- Analyse des résultats de recherche
- Learning log des tests passés

> 💡 **Approbation humaine requise :** L'IA génère, les humains approuvent. Chaque asset doit passer une vérification avant déploiement.

---

### 4.5 Le learning log

**Objectif :** Construire votre base de connaissances sur ce qui marche.

**Modèle d'entrée du learning log :**

```jsx
═══════════════════════════════════════════════════════
TEST ID: [CLUSTER]-[DATE]-[NUMBER]
═══════════════════════════════════════════════════════

CLUSTER: Non-brand CRM
TEST DATES: 2026-01-15 to 2026-01-29
TEST LEVEL: Sub-angle vs. Sub-angle

───────────────────────────────────────────────────────
HYPOTHESIS
───────────────────────────────────────────────────────
"If we test 'Missed Deals' as a Problem/Pain sub-angle 
instead of 'Tool Chaos', CPI will improve because sales 
teams care more about lost revenue than organization".

───────────────────────────────────────────────────────
ANGLE TYPE TESTED
───────────────────────────────────────────────────────
Slot: H4 (Problem/Pain)

Control (Tool Chaos):
- "End Spreadsheet Chaos"

Challenger (Missed Deals):
- "Stop Losing Deals to Chaos"
- "No More Missed Follow-Ups"

───────────────────────────────────────────────────────
RESULTS
───────────────────────────────────────────────────────
| Asset                       | Impressions | Conv. | CPI   | AIS |
|-----------------------------|-------------|-------|-------|-----|
| End Spreadsheet Chaos       | 87,000      | 218   | 0.25% | 38% |
| Stop Losing Deals to Chaos  | 45,000      | 126   | 0.28% | 20% |
| No More Missed Follow-Ups   | 31,000      | 84    | 0.27% | 14% |

WINNER: "Stop Losing Deals to Chaos" (Missed Deals)
- Highest CPI, but needs more exposure
- Both Missed Deals headlines outperform Tool Chaos on CPI

───────────────────────────────────────────────────────
VERDICT
───────────────────────────────────────────────────────
✅ HYPOTHESIS CONFIRMED

Missed Deals sub-angle outperforms Tool Chaos at the sub-angle level.
Both challengers are Hidden Gems worth scaling.

───────────────────────────────────────────────────────
LEARNINGS
───────────────────────────────────────────────────────
- Revenue/deal-focused pain resonates more than organization pain
- "Losing Deals" framing slightly better than "Missed Follow-Ups"
- Tool Chaos may work better in descriptions (lower stakes)

───────────────────────────────────────────────────────
ACTIONS
───────────────────────────────────────────────────────
🚀 PROMOTE: "Stop Losing Deals to Chaos"
🚀 KEEP TESTING: "No More Missed Follow-Ups"
⬇️ DEMOTE: "End Spreadsheet Chaos" (move to D2 or remove)

───────────────────────────────────────────────────────
NEXT HYPOTHESIS
───────────────────────────────────────────────────────
Test "Lost Revenue" vs "Missed Deals" framing within 
the Problem/Pain angle type.

═══════════════════════════════════════════════════════
```

> Après quelques mois, vous aurez un playbook d'angles éprouvés spécifiques à votre marché qu'aucun concurrent n'a.

---

### Le cycle d'itération

**Cadence :** Toutes les 2-8 semaines (selon vos volumes)

```jsx
  Semaine 1:      Semaine 2:      Semaine 3:      Semaine 4:
┌──────────┐    ┌──────────┐    ┌──────────┐    ┌──────────┐
│ DEPLOY   │ →  │ COLLECT  │ →  │ DIAGNOSE │ →  │ ITERATE  │
│          │    │  DATA    │    │          │    │          │
│New assets│    │Let tests │    │Quadrant  │    │Actions + │
│go live   │    │run       │    │analysis  │    │learning  │
└──────────┘    └──────────┘    └──────────┘    └──────────┘
                                                      │
                                                      ▼
                                                 ┌─────────┐
                                                 │  NEXT   │
                                                 │  CYCLE  │
                                                 └─────────┘
```

**Checklist de cycle :**

- [ ]  Extraire les données au niveau asset pour le cluster
- [ ]  Calculer CPI/RPI et AIS pour chaque asset
- [ ]  Agréger par type d'angle et sous-angle
- [ ]  Tracer les quadrants
- [ ]  Identifier les Silent Killers → Retirer
- [ ]  Identifier les Hidden Gems → Augmenter l'exposition
- [ ]  Documenter les Champions
- [ ]  Mettre à jour le learning log
- [ ]  Générer les hypothèses pour le prochain cycle (référer votre document des 6 angles)
- [ ]  Créer de nouveaux assets basés sur les hypothèses
- [ ]  Déployer sur le cluster

---

### Validation et critères de complétion

#### Critères de complétion d'un cycle

Chaque cycle d'itération est complet quand :

- [ ]  Tous les Silent Killers sont identifiés et retirés
- [ ]  Tous les Hidden Gems sont identifiés et leur exposition augmentée
- [ ]  Le learning log est mis à jour avec les findings
- [ ]  Les hypothèses du prochain cycle sont documentées
- [ ]  Les nouveaux assets sont déployés

#### Métriques de succès en continu

Suivez ces métriques dans le temps :

| Métrique | Cible | Période |
| --- | --- | --- |
| CPI/RPI du cluster | Tendance à l'amélioration | Trimestre sur trimestre |
| Nombre de Silent Killers | Zéro | Chaque cycle |
| Nombre de Champions | En augmentation | Dans le temps |
| Entrées du learning log | En croissance | Chaque cycle |

> ⚠️ **Cette SOP ne "finit" jamais :** La boucle d'itération est une optimisation continue. Même les comptes matures doivent dérouler des cycles pour rester devant la concurrence.

---

### Erreurs fréquentes

| Mode de défaillance | Symptôme | Cause racine | Fix |
| --- | --- | --- | --- |
| **Pauvreté de données** | Impossible d'atteindre la significativité | Trop d'assets, trop peu de trafic | Réduire à 7-8 titres, agréger entre ad groups |
| **Expérimentation aléatoire** | Pas d'apprentissages clairs | Tester sans hypothèses | Utiliser le document d'hypothèse + document des 6 angles |
| **Course au CTR** | CTR élevé, conversions faibles | Mauvaise métrique | Passer au CPI/RPI |
| **Drift de modèle** | Impossible d'agréger les données | Les ad groups ont des structures différentes | Imposer la cohérence du modèle |
| **Incohérence de modèle** | Impossible d'agréger les données | Types d'angles différents dans le même slot à travers le cluster | Imposer le modèle : même slot = même type d'angle dans le cluster |
| **Aveuglement aux silent killers** | CPI qui décline | Ne pas dérouler l'analyse des quadrants | Faire la phase de diagnostic chaque cycle |
| **Optimisation prématurée** | Tester des mots avant les concepts | Tests au niveau asset avant le niveau type | Commencer par type d'angle vs. type |
| **Amnésie d'apprentissage** | Répéter des tests ratés | Ne pas maintenir le learning log | Documenter chaque test |
| **Fondation d'angle faible** | Rien de convaincant à tester | SOPs en amont sautées | Revenir à Travailler vos angles d'offre |

---

### Outils et implémentation

#### Implémentation manuelle (Spreadsheets)

1. **Standardiser :** Documenter le modèle dans un spreadsheet, l'appliquer manuellement à tous les ad groups
2. **Agréger :** Exporter les rapports d'assets mensuellement, étiqueter les types d'angles, sommer dans des tableaux croisés
3. **Diagnostiquer :** Calculer CPI/AIS, tracer les quadrants manuellement
4. **Itérer :** Générer les hypothèses dans un doc, créer les assets, déployer manuellement

✅ **Pour :** Gratuit, contrôle total

❌ **Contre :** Chronophage, facile de rater des cycles

#### Implémentation outillée (Loop AI ou similaire)

1. **Standardiser :** Auto-appliquer les modèles à tous les ad groups
2. **Agréger :** Import automatique et mapping des types d'angles
3. **Diagnostiquer :** Tableaux de bord live de KPI + AIS quadrants
4. **Itérer :** Génération IA avec workflow d'approbation, push automatique vers Google Ads

✅ **Pour :** Scalable, cohérent, cycles plus rapides

❌ **Contre :** Dépendance à l'outil, coût

---

### FAQ

**Q : À quelle fréquence dois-je dérouler les cycles ?**

R : Toutes les 2-8 semaines pour une optimisation active, selon le volume de votre compte.

**Q : Combien d'assets dois-je tester par cycle ?**

R : 2-3 nouveaux assets par slot par cycle. Plus fragmente vos données.

**Q : Et si je n'ai pas assez de trafic ?**

R : Combinez plus d'ad groups dans un seul cluster, ou prolongez la durée du cycle à 8-12 semaines.

**Q : Est-ce que je dois quand même regarder les labels d'assets de Google ?**

R : Uniquement comme sanity check. Votre analyse CPI/RPI est la source de vérité.

**Q : Quel est le rapport avec l'Expected CTR ?**

R : L'amélioration de l'Expected CTR est un sous-produit. À mesure que vous trouvez des assets qui convertissent mieux, le CTR s'améliore aussi typiquement. Mais le CPI/RPI est l'objectif, pas le CTR.

**Q : Est-ce que je peux faire ça en parallèle d'autres tests (stratégies d'enchères, audiences) ?**

R : Oui, mais soyez conscient des facteurs de confusion. L'expérimentation créative est plus sûre quand les autres variables sont stables.

**Q : Où est-ce que j'obtiens des idées pour les nouveaux assets à tester ?**

R : Votre document SOP - Creer vos angles d'offre est votre source principale. Chacun des 6 angles peut générer des dizaines de variations de titres et descriptions.

**Q : Et si je galère à trouver de nouvelles hypothèses ?**

R : Revenez à votre extraction des 6 angles. Passez en revue les avis clients, les annonces concurrentes et le feedback de l'équipe commerciale. Si votre document d'angles est mince, vous devrez peut-être revisiter SOP - Creer une offre irresistible.

**Q : Et si mon H7 varie par cluster à cause de la température du trafic ?**

R : C'est attendu. Étiquetez H7 par son type d'angle réel (ex. "USP" ou "Social Proof"), pas par numéro de slot. L'agrégation fonctionne par type d'angle, pas par position. Assurez juste la cohérence *dans* chaque cluster.

**Q : Est-ce que je dois inclure D3 dans ma RSA ?**

R : Uniquement si vous avez une urgence authentique (vraies deadlines, disponibilité limitée). D3 est optionnel. Si vous n'avez pas d'urgence réelle, restez avec D1-D2.

**Q : Comment la température du trafic affecte mes priorités d'expérimentation ?**

R : Votre température de trafic (depuis [SOP - Creer vos angles d'offre](<../../01-strategie/offre/Offre - Travailler vos angles d'offre.md>)) vous dit quels types d'angles prioriser pour l'expérimentation. Les clusters de trafic froid devraient prioriser les tests de sous-angles Problem/Pain. Les clusters de trafic chaud devraient prioriser les tests Social Proof et Risk Removal.

---

### Documents liés

| Document | Relation |
| --- | --- |
| [SOP - Creer une offre irresistible](<../../01-strategie/offre/Offre - Créer une offre irrésistible.md>)  | Fondamental (l'offre doit être solide) |
| [Headline Angle Catalog](<Search - Angles de headlines.md>) | Fondamental (les 6 angles + la température du trafic nourrissent vos hypothèses) |
| [SOP - Test RSA avec la boucle d'iteration](<Search - Test RSA avec la boucle d'itération.md>)  | Fondamental (crée la structure RSA prête au testing) |
| [Awareness Stage Mental Model](<../../01-strategie/redaction/Rédaction - Niveaux de conscience.md>)  | Reference (contexte de température du trafic) |
| [Headline Angle Catalog](<Search - Angles de headlines.md>)  | Reference (les 7 types d'angles définissent votre modèle) |
| [Description Expansion Catalog](<Search - Patterns d'expansion de descriptions.md>)  | Reference (patterns de descriptions) |
| [Extension Leverage Catalog](<../composants/Composants - Utilisation des extensions.md>)  | Parallèle (expérimentation des extensions) |
| [SOP - Ameliorer la pertinence des annonces](<Search - Améliorer la pertinence des annonces.md>)  | Prérequis |
| [SOP - Ameliorer le CTR attendu](<Search - Améliorer le CTR attendu.md>)  | Prérequis / Parallèle |
| [SOP - Ameliorer l'experience de la page de destination](<../../02-site-web/audit/Audit - Test A-B de Landing Page.md>)  | Parallèle |
| [SOP - Executer un cycle de test creative](<../creatives/Creatives - Cycle de test créatif.md>) | Amont (coordonne l'expérimentation entre Search, PMax, Demand Gen, Display) |
