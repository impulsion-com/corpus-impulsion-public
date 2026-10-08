# Structurer ses campagnes TikTok Ads

> **Plateforme :** TikTok
> **Catégorie :** Lancement
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Définir une architecture de campagnes TikTok Ads robuste, scalable et lisible — que ce soit pour une boutique e-commerce, un service local ou une offre multi-produits. Cette SOP couvre les décisions structurelles fondamentales : CBO vs ABO, nomenclature, budgets, phases d'apprentissage, scaling, et exemples concrets.

---

## Ce que cette SOP ne couvre PAS

Cette SOP ne couvre **pas :**

- Le pas-à-pas pour lancer une campagne conversions (Voir : [Procédure - Lancer une campagne conversions TikTok Ads](<Lancement - Lancer une campagne conversions.md>))
- Le pas-à-pas pour lancer une campagne Lead Gen (Voir : [Procédure - Lancer une campagne Lead Gen TikTok Ads](<Lancement - Lancer une campagne Lead Gen.md>))
- Le pas-à-pas pour lancer une campagne dynamique (catalogue) (Voir : [Procédure - Lancer une campagne dynamique TikTok Ads](<Lancement - Lancer une campagne dynamique.md>))
- L'installation du tracking (suivi des conversions/évènements) nécessaire avant tout lancement (Voir : [Procédure - Configurer le tracking TikTok Ads](<../suivi/Suivi - Configurer le suivi.md>))
- La construction des audiences (Voir : [Procédure - Configurer les audiences TikTok Ads](<../audiences/Audiences - Configurer les audiences.md>))
- L'optimisation post-lancement (Voir : [Procédure - Optimiser ses campagnes TikTok Ads](<../optimisation/Optimisation - Optimiser ses campagnes.md>))

---

## 1. Les 3 niveaux de la structure TikTok Ads

```
Campagne
└── Groupe d'annonces (Ad Group)
    └── Annonce (Ad / Créatif)
```

| Niveau | Rôle | Décisions clés |
|---|---|---|
| **Campagne** | Définit l'objectif publicitaire global | Objectif (conversions, trafic, génération de leads), CBO ou ABO, budget total |
| **Groupe d'annonces** | Définit l'audience, les emplacements, le calendrier | Ciblage, budget (ABO), enchère, événement de conversion |
| **Annonce** | Le créatif vu par l'utilisateur | Vidéo, texte, CTA, URL de destination, identité (organique ou Spark) |

---

## 2. CBO vs ABO — quelle stratégie de budget choisir ?

C'est l'une des décisions structurelles les plus importantes. Elle détermine qui contrôle la distribution du budget : vous ou l'algorithme.

### Tableau comparatif

| Critère | CBO (Campaign Budget Optimization) | ABO (Ad Group Budget Optimization) |
|---|---|---|
| **Définition** | Le budget est défini au niveau campagne — TikTok distribue automatiquement entre les ad groups | Le budget est défini au niveau de chaque ad group individuellement |
| **Contrôle** | Faible (TikTok décide) | Total (vous décidez par ad group) |
| **Efficacité algorithmique** | Maximale — TikTok optimise vers les meilleurs ad groups | Moindre — chaque ad group apprend séparément |
| **Idéal pour** | Scaling, campagnes stables avec audiences éprouvées | Tests A/B, phase de découverte, contrôle budgétaire strict |
| **Risque principal** | Un seul ad group reçoit tout le budget (les autres meurent) | Budget gaspillé sur des ad groups peu performants si pas de surveillance |
| **Nombre minimum d'ad groups recommandé** | 3 minimum pour que l'algo ait un choix réel | 1 suffit (mais 2-5 recommandés pour le test) |
| **Phase d'apprentissage** | Plus rapide (budget consolidé) | Plus lente (chaque ad group apprend séparément) |
| **Quand l'utiliser** | Après validation des audiences en ABO / scaling d'une structure gagnante | Lancement, tests créatifs, audiences nouvelles, retargeting segmenté |

### Règle de décision rapide

```
Nouveau compte ou nouvelle audience ?          → ABO
Test de créatifs sur audience connue ?         → ABO
Scaling d'audiences déjà validées ?            → CBO
Structure stable depuis > 4 semaines ?         → CBO
Campagne retargeting (audiences petites) ?     → ABO (budgets fixes nécessaires)
```

> 💡 La pratique recommandée est de tester en ABO d'abord pour identifier les audiences et créatifs gagnants, puis de les consolider en CBO pour scaler efficacement. Le passage de ABO à CBO est une étape naturelle de maturité d'un compte.

> ⚠️ En CBO, évitez de mélanger des audiences très différentes en taille (ex : une audience large de 5 millions et une audience similaire de 200 000). TikTok favorisera massivement la plus large et ignorera la petite.

---

## 3. Convention de nommage — format et exemples

Une nomenclature stricte est non-négociable pour gérer plusieurs comptes ou campagnes simultanément. Elle permet des filtres rapides dans Ads Manager et une lecture instantanée des résultats.

### Format recommandé

**Campagne :**
```
[Objectif] - [Service/Produit] - [Type] - [Date]
```

**Groupe d'annonces :**
```
[Audience] - [Âge] - [Pays] - [Placement]
```

**Annonce :**
```
[Type de créatif] - [Angle] - [Version] - [Date]
```

### Exemples concrets

| Niveau | Exemple |
|---|---|
| **Campagne** | `CONV - Programme Coaching - Prospection - 2026-04` |
| **Campagne** | `CONV - Boutique Mode - Retargeting - 2026-04` |
| **Campagne** | `LEAD - Formation Immobilier - Prospection - 2026-04` |
| **Ad Group** | `Intérêts_FitnessNutrition - 25-44 - FR - Feed` |
| **Ad Group** | `LAL_Acheteurs90j - 18-45 - FR_BE - Feed` |
| **Ad Group** | `Retargeting_VisiteursLP30j - 18-55 - FR - Feed` |
| **Annonce** | `UGC_TémoignageClient_v1_2026-04` |
| **Annonce** | `Hook_QuestionProblème_v2_2026-04` |
| **Annonce** | `DémoProduit_Avantages_v1_2026-04` |

### Abréviations standard

| Abréviation | Signification |
|---|---|
| `CONV` | Campagne Conversions |
| `LEAD` | Campagne Lead Generation |
| `TRAF` | Campagne Trafic |
| `NOT` | Campagne Notoriété |
| `LAL` | Lookalike (audience similaire) |
| `RET` | Retargeting |
| `PROS` | Prospection |
| `UGC` | User Generated Content |
| `v1, v2...` | Numéro de version du créatif |

---

## 4. Limites techniques et recommandations

| Paramètre | Limite technique TikTok | Recommandation opérationnelle |
|---|---|---|
| **Ad groups par campagne** | 999 (limite théorique) | 3 à 8 ad groups par campagne (lisibilité et apprentissage) |
| **Annonces par ad group** | 20 (limite théorique) | **3 à 5 créatifs par ad group** (optimal pour le test sans dilution) |
| **Campagnes actives simultanément** | Illimité | Limiter à ce qui peut être suivi activement |
| **Budget minimum par ad group (ABO)** | €5/jour (limite technique) | **€20/jour minimum** — en dessous, l'algo manque de données |
| **Budget recommandé par ad group** | — | **€50+/jour** pour des apprentissages fiables en moins de 7 jours |

> 💡 Avec 3 à 5 créatifs par ad group, TikTok peut identifier rapidement le créatif dominant et concentrer les impressions dessus. Avec 1 seul créatif, aucun test possible. Avec 8+, le budget se dilue trop et aucun créatif n'obtient suffisamment d'impressions pour être évalué.

---

## 5. Phase d'apprentissage — le seuil des 50 conversions

TikTok Ads, comme Meta Ads, a une **phase d'apprentissage algorithmique**. Pendant cette phase, l'algorithme cherche à comprendre qui convertit pour votre offre.

| Paramètre | Valeur |
|---|---|
| **Seuil de sortie initial** | **25 conversions par ad group** OU 7 jours — la volatilité commence à diminuer |
| **Seuil d'optimisation complète** | **50 conversions par semaine par ad group** — performances stables et fiables |
| **Durée typique de la phase** | Jusqu'à 7 jours (peut se terminer dès 25 conversions atteintes) |
| **Durée maximale avant instabilité** | 30 jours sans atteindre le seuil = performances dégradées |
| **Événement à optimiser** | Choisir l'événement le plus bas dans le tunnel avec suffisamment de volume |

### Sélection de l'événement d'optimisation

Si votre événement cible (achat, lead) génère moins de 50 conversions/semaine par ad group, remontez dans le tunnel :

```
Achat (idéal si volume > 50/semaine/ad group)
  ↓ sinon
Initiation du paiement
  ↓ sinon
Ajout au panier
  ↓ sinon
Vue de page produit / Consultation de contenu
  ↓ sinon
Trafic vers le site (Clic sur le lien)
```

> ⚠️ Optimiser sur un événement qui génère moins de 10 conversions/semaine entraîne une phase d'apprentissage sans fin et des CPAs instables et gonflés. Mieux vaut descendre d'un niveau dans le tunnel et remonter progressivement.

> ⚠️ Ne jamais modifier l'audience, le budget (de plus de 20%), l'enchère ou l'événement d'optimisation pendant la phase d'apprentissage. Chaque modification réinitialise l'apprentissage.

---

## 6. Répartition budgétaire recommandée

| Type de campagne | Part du budget total | Justification |
|---|---|---|
| **Prospection (audiences froides)** | **70 à 80 %** | C'est là que se trouve la croissance — nouvelles audiences, nouvelles acquisitions |
| **Retargeting (audiences chaudes)** | **20 à 30 %** | Clôture les conversions sur les visiteurs déjà engagés |

> 💡 Cette répartition 70/30 est un point de départ, pas une règle absolue. Pour un compte jeune avec peu de trafic, le retargeting (reciblage) peut être réduit à 10-15% (audiences trop petites). Pour un compte mature avec fort trafic, le retargeting peut monter jusqu'à 40%.

### Budget minimal recommandé par type de campagne

| Type | Budget quotidien minimum | Budget recommandé pour apprentissage rapide |
|---|---|---|
| **Campagne prospection (ABO, 3 ad groups)** | €60/jour (3 × €20) | **€150/jour** (3 × €50) |
| **Campagne prospection (CBO)** | €50/jour total | **€100-200/jour** |
| **Campagne retargeting (ABO, 2 ad groups)** | €40/jour (2 × €20) | **€80/jour** |

---

## 7. Campagnes "Always-On" vs campagnes "Burst"

### Always-On

Campagnes tournant en continu, sans date de fin, avec des budgets stables. L'algorithme s'optimise sur le long terme.

**Caractéristiques :**
- Pas de date de fin définie
- Rafraîchissement créatif régulier (toutes les 3 à 6 semaines selon la fatigue)
- Idéal pour : génération de leads (prospects) régulière, e-commerce à volume constant, notoriété

**Avantages :** Apprentissage algorithmique profond, performances stables, moins de travail de gestion quotidienne

**Inconvénients :** Fatigue créative si pas de renouvellement, budget consommé même en basse saison

### Burst (campagnes ponctuelles)

Campagnes avec une fenêtre temporelle définie, budget concentré sur une période courte.

**Caractéristiques :**
- Dates de début et de fin définies
- Budget élevé sur une courte période (7 à 30 jours)
- Idéal pour : lancements de produit, promotions saisonnières, événements (Black Friday, soldes, webinaires)

**Avantages :** Impact fort sur une courte période, urgence naturelle

**Inconvénients :** Phase d'apprentissage insuffisante si la durée est < 7 jours, CPM souvent plus élevé en période de forte compétition

| Critère | Always-On | Burst |
|---|---|---|
| **Durée** | Continue | 7 à 30 jours |
| **Budget** | Stable, modéré | Concentré, élevé |
| **Apprentissage algo** | Profond et stable | Partiel (court) |
| **Recommandé pour** | Acquisition continue | Promotions, lancements |
| **Fatigue créative** | Risque élevé | Risque faible |

---

## 8. Structure de scaling — isoler les créatifs gagnants

Lorsqu'un créatif ou une audience surperforme, la bonne pratique n'est pas d'augmenter indéfiniment le budget sur le même ad group — c'est de l'**isoler dans une nouvelle structure dédiée**.

### Processus de scaling

```
Étape 1 — TEST (ABO, budget modéré)
  Campagne : CONV - [Service] - Test Créatifs - [Date]
  Ad Group A : Audience Intérêts Large — 3 créatifs
  Ad Group B : Audience Lookalike 1% — 3 créatifs
  Ad Group C : Audience Intérêts Niche — 3 créatifs
  Budget : €20-50/jour par ad group
  Durée : 7 à 14 jours

Étape 2 — VALIDATION
  Identifier le/les créatif(s) gagnant(s) et la/les audience(s) gagnante(s)
  Seuil de validation : CPA < objectif sur 7 jours, > 10 conversions

Étape 3 — SCALING (CBO ou ABO horizontal)
  Option A — CBO Scale :
    Campagne : CONV - [Service] - Scale - [Date]
    Prendre uniquement les audiences validées
    Budget CBO : 3x le budget journalier de validation
  
  Option B — ABO Horizontal :
    Dupliquer le groupe gagnant
    Modifier légèrement l'audience (élargir les intérêts, tester LAL 2%, 3%)
    Budget : €50-100/jour par ad group dupliqué
```

> ⚠️ Ne jamais multiplier le budget par plus de 20-30% par jour sur un ad group existant sans risquer de réinitialiser la phase d'apprentissage. Pour une augmentation forte, dupliquez plutôt l'ad group avec le nouveau budget.

> 💡 Le scaling horizontal (plus d'ad groups / plus d'audiences) est généralement plus stable que le scaling vertical (augmenter le budget d'un seul ad group) sur TikTok.

---

## 9. Exemples de structures réelles

### Exemple 1 — Service / Coach (multi-service)

```
COMPTE PUBLICITAIRE : NomCoach_FR

PROSPECTION (CBO, 70% du budget total)
├── Campagne : CONV - Programme 3 mois - Prospection - 2026-04
│   ├── Ad Group : Intérêts_DéveloppementPerso - 25-45 - FR [€60/j]
│   ├── Ad Group : LAL_Acheteurs90j_1% - 25-45 - FR [€60/j]
│   └── Ad Group : Intérêts_BusinessEntrepreneuriat - 28-50 - FR [€60/j]
│       ├── Annonce : UGC_TémoignageCliente_v1
│       ├── Annonce : Hook_AvantAprès_v1
│       └── Annonce : DémoProgramme_Bénéfices_v1
│
└── Campagne : CONV - Masterclass Gratuite - Prospection - 2026-04
    ├── Ad Group : Intérêts_Large_MixPerso - 22-40 - FR [€40/j]
    └── Ad Group : LAL_Leads60j_2% - 22-40 - FR [€40/j]

RETARGETING (ABO, 30% du budget total)
└── Campagne : CONV - Retargeting - 2026-04
    ├── Ad Group : Visiteurs_LP_Programme_30j [€25/j]
    └── Ad Group : Visiteurs_LP_Masterclass_7j [€25/j]
```

---

### Exemple 2 — E-commerce (boutique mode)

```
COMPTE PUBLICITAIRE : BoutiqueMode_FR

PROSPECTION (CBO, 75% du budget total)
├── Campagne : CONV - Achat - Prospection Large - 2026-04 [CBO €150/j]
│   ├── Ad Group : Intérêts_Mode_Femme - 18-35 - FR_BE
│   ├── Ad Group : LAL_Acheteurs180j_1% - 18-35 - FR
│   └── Ad Group : LAL_Acheteurs180j_2-3% - 18-35 - FR
│
└── Campagne : CONV - Achat - Nouveautés - 2026-04 [CBO €80/j]
    ├── Ad Group : Intérêts_NouveautésTendances - 18-30 - FR
    └── Ad Group : Broad_NoInterests - 18-35 - FR

RETARGETING (ABO, 25% du budget total)
└── Campagne : CONV - Retargeting E-commerce - 2026-04
    ├── Ad Group : AjoutPanier_NoPurchase_7j [€30/j]
    ├── Ad Group : VueFicheProduit_7j [€25/j]
    └── Ad Group : Acheteurs_Upsell_30j [€20/j]
```

---

### Exemple 3 — Lead Gen (formation / immobilier)

```
COMPTE PUBLICITAIRE : FormationImmo_FR

PROSPECTION (ABO phase test)
└── Campagne : LEAD - Formation Investissement - Test - 2026-04
    ├── Ad Group : Intérêts_ImmobilierInvestissement - 28-50 - FR [€50/j]
    ├── Ad Group : Intérêts_FinancePatrimoine - 30-55 - FR [€50/j]
    └── Ad Group : LAL_Leads90j_1% - 25-50 - FR [€50/j]
        ├── Annonce : Hook_DoubleRevenu_v1
        ├── Annonce : Témoignage_Investisseur_v1
        └── Annonce : Chiffres_Rendement_v1

RETARGETING
└── Campagne : LEAD - Retargeting - 2026-04
    └── Ad Group : VisiteursLP_7j_NoPurchase [€20/j]
```

---

## 10. Checklist de structure avant lancement

```
[ ] Objectif de campagne aligné avec l'action souhaitée sur la landing page
[ ] CBO ou ABO choisi selon la phase (test = ABO, scale = CBO)
[ ] Nomenclature respectée à tous les niveaux (campagne, ad group, annonce)
[ ] 3 à 5 créatifs par ad group (pas moins, pas plus)
[ ] Budget minimum de €20/jour par ad group (€50+ recommandé)
[ ] Événement d'optimisation capable de générer 50+ conversions/semaine
[ ] Répartition 70/30 entre prospection et retargeting respectée
[ ] Audiences de retargeting suffisamment grandes (> 1 000 personnes)
[ ] Pixel validé et événements de conversion actifs
[ ] UTM paramétrés sur toutes les URLs de destination
```

---

## Références croisées

- ↪️ [Lancer une campagne conversions TikTok Ads](<Lancement - Lancer une campagne conversions.md>)
- ↪️ [Lancer une campagne Lead Gen TikTok Ads](<Lancement - Lancer une campagne Lead Gen.md>)
- ↪️ [Configurer les règles automatisées TikTok Ads](<../optimisation/Optimisation - Configurer les règles automatisées.md>)
- ↪️ [Configurer les audiences TikTok Ads](<../audiences/Audiences - Configurer les audiences.md>)
- ↪️ [Optimiser ses campagnes TikTok Ads](<../optimisation/Optimisation - Optimiser ses campagnes.md>)
- ↪️ [Créer et configurer un compte TikTok Ads](<../compte/Compte - Créer et configurer un compte.md>)
- ↪️ [Configurer le tracking TikTok Ads](<../suivi/Suivi - Configurer le suivi.md>)
