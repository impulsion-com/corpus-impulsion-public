# Optimisation Meta Ads

> **Plateforme :** Meta
> **Catégorie :** Optimisation
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Cette SOP fournit le cadre de diagnostic et d'optimisation des performances d'une campagne Meta Ads en cours de diffusion. Elle ordonne les couches d'optimisation (tracking (suivi des conversions/évènements) → créatives → audiences → budget) pour éviter d'optimiser dans le désordre, et donne les actions correctives pour chaque symptôme.

> ❓ **La question clé :** Quand une campagne sous-performe ou se dégrade, où chercher la cause et dans quel ordre agir ?

---

## Ce que cette SOP ne couvre PAS

Cette SOP ne couvre **pas :**

- Le lancement initial d'une campagne (Voir : [Procédure - Lancer une campagne Meta Ads](<../lancement/Lancement - Lancer une campagne.md>))
- L'analyse structurée des performances et la cadence de revue (Voir : [Procédure - Analyser les performances Meta Ads](<../reporting/Reporting - Analyser les performances.md>))
- Le test et le renouvellement des créatives en détail (Voir : [Procédure - Optimiser les créatives Meta Ads](<../creatives/Creatives - Optimiser les créatives.md>))
- Le scaling d'une campagne qui performe déjà (Voir : [Procédure - Scaler une campagne Meta Ads](<../scaling/Scaling - Scaler une campagne.md>))
- L'installation du tracking et du CAPI (Voir : [Procédure - Configurer le Conversions API (CAPI)](<../tracking/Tracking - Configurer le Conversions API (CAPI).md>))
- L'automatisation des décisions simples via règles automatiques (Voir : [Procédure - Configurer les règles automatiques Meta Ads](<Optimisation - Configurer les règles automatiques.md>))
- Les benchmarks (analyses comparatives) chiffrés à utiliser comme seuils (Voir : [Référence - KPI Meta Ads](<../kpi/KPI - KPI.md>))

---

## Ordre d'optimisation

Ne jamais optimiser dans le désordre. Chaque couche dépend de la précédente.

```
1. Tracking    → Est-ce qu'on mesure la bonne chose ?
2. Créatives   → Est-ce que le message passe ?
3. Audiences   → Est-ce qu'on parle aux bonnes personnes ?
4. Budget      → Est-ce qu'on investit au bon endroit ?
```

Si le tracking est cassé, toutes les optimisations qui suivent sont basées sur de mauvaises données. Si les créatives sont mauvaises, changer d'audience ne changera rien.

---

## Couche 1 : Tracking - Est-ce qu'on optimise pour la bonne chose ?

### Diagnostic tracking

Avant toute optimisation de performance, vérifier :

| Check | Comment vérifier | Problème si KO |
|-------|------------------|----------------|
| **Pixel actif** | Events Manager > Pixel > Dernier événement reçu | Aucune donnée de conversion |
| **Événement correct** | Events Manager > Test Events > déclencher une conversion test | Meta optimise pour le mauvais événement |
| **CAPI configurée** | Events Manager > Aperçu > Méthode de réception = "Navigateur et serveur" | Perte de 15-40% des conversions (ad blockers, ITP) |
| **Déduplication** | Events Manager > Vérifier que le nombre de conversions match avec le CRM/backend | Double comptage = CPA artificiellement bas |
| **Attribution** | Paramètres du compte > Fenêtre d'attribution | Fenêtre trop courte = sous-estimation, trop longue = sur-estimation |
| **Agrégated Event Measurement** | Events Manager > AEM > Priorité des événements | Mauvaise priorité = Meta optimise pour un événement secondaire |

### Fenêtres d'attribution recommandées

| Business | Fenêtre recommandée | Pourquoi |
|----------|---------------------|----------|
| E-commerce (panier moyen < 50 EUR) | 7 jours clic, 1 jour vue | Achat impulsif, cycle court |
| E-commerce (panier moyen > 100 EUR) | 7 jours clic, 1 jour vue | Besoin de temps de réflexion |
| Lead gen (B2C) | 7 jours clic | Le formulaire se remplit vite ou pas du tout |
| Lead gen (B2B) | 7 jours clic | Cycle de décision plus long mais le clic initial compte |

### Signaux d'alerte tracking

- **0 conversion alors que le site en enregistre** → pixel cassé ou mal configuré
- **Conversions Meta >> conversions CRM** → problème de déduplication
- **Conversions Meta << conversions CRM** → pixel bloqué (ad blockers), CAPI manquante
- **CPA anormalement bas** → double comptage ou mauvais événement

---

## Couche 2 : Créatives - Est-ce que le message passe ?

Les créatives sont le levier d'optimisation n°1 sur Meta. Avant de toucher aux audiences ou au budget, analyser les métriques créatives.

### Métriques créatives - Le document d'analyse

#### Hook Rate (taux d'accroche)

**Formule** : ThruPlay 3s / Impressions x 100

**Ce que ça mesure** : est-ce que les 3 premières secondes captent l'attention ?

| Hook Rate | Interprétation | Action |
|-----------|----------------|--------|
| > 30% | Excellent - le hook fonctionne | Garder ce type de hook, le décliner |
| 20-30% | Correct - il y a de la marge | Tester des hooks plus percutants |
| < 20% | Faible - les gens scrollent | Changer le hook complètement |

**Hypothèses si hook rate faible :**
- Le visuel d'ouverture n'est pas assez impactant
- Le texte d'accroche (première ligne) ne crée pas de curiosité
- Le format n'est pas adapté à l'emplacement (ex: vidéo horizontale sur Reels)
- L'audience n'est pas la bonne (le sujet ne les concerne pas)

#### Hold Rate (taux de rétention)

**Formule** : ThruPlay / Lectures vidéo de 3s x 100

**Ce que ça mesure** : est-ce que les gens restent après les 3 premières secondes ?

| Hold Rate | Interprétation | Action |
|-----------|----------------|--------|
| > 50% | Excellent - le contenu engage | Le message résonne, développer cet angle |
| 30-50% | Correct | Le hook attire mais le corps perd l'audience |
| < 30% | Faible | Le contenu après le hook ne tient pas la promesse |

**Hypothèses si hold rate faible (mais hook rate OK) :**
- Le hook promet quelque chose que la vidéo ne délivre pas
- La vidéo est trop longue pour le message
- Le rythme est trop lent (pas de coupes, pas de dynamisme)
- Le message n'est pas clair ou trop complexe

#### CTR (Click-Through Rate)

**Formule** : Clics sur le lien / Impressions x 100

**Ce que ça mesure** : est-ce que les gens passent à l'action (clic vers le site) ?

| CTR | Interprétation | Action |
|-----|----------------|--------|
| > 2% | Excellent | Le CTA et la proposition de valeur fonctionnent |
| 1-2% | Correct | Tester des CTA plus clairs ou des offres plus fortes |
| < 1% | Faible | Le message ne donne pas envie de cliquer |

**Hypothèses si CTR faible (mais hook rate et hold rate OK) :**
- Le CTA n'est pas clair ou pas visible
- L'offre n'est pas assez attractive (pas de raison de cliquer maintenant)
- Le message est intéressant mais pas actionnable
- La Landing Page semble pas cohérente avec la pub (le lien ne donne pas confiance)

#### CPC (Coût par Clic)

**Ce que ça mesure** : combien vous payez pour chaque clic vers votre site.

| CPC | Interprétation | Action |
|-----|----------------|--------|
| < benchmark secteur | Bon signal | Le créatif est pertinent pour l'audience |
| > benchmark secteur x 1.5 | Alerte | L'audience est trop saturée ou le créatif ne performe pas |
| En hausse constante | Fatigue créative | Renouveler les créatives, élargir l'audience |

**Un CPC élevé peut venir de :**
- CTR faible (Meta compense par un coût plus élevé)
- Audience trop petite (compétition élevée)
- Période concurrentielle (Q4, Black Friday, soldes)
- Score de pertinence faible

#### CPM (Coût pour 1000 impressions)

**Ce que ça mesure** : le coût pour atteindre 1000 personnes. C'est le "prix d'entrée" de l'audience.

| CPM | Ce que ça indique |
|-----|-------------------|
| CPM bas + CPC bas | Audience accessible et créatif pertinent |
| CPM bas + CPC élevé | L'audience est accessible mais le créatif ne convertit pas |
| CPM élevé + CPC bas | Audience chère mais créatif très performant |
| CPM élevé + CPC élevé | Audience saturée ou trop compétitive |

**Le CPM est largement hors de votre contrôle** - il dépend de la saisonnalité, de la concurrence, du pays. Le CPC et le CTR sont les vrais leviers.

### Matrice de diagnostic créatif

Utilisez cette matrice pour identifier rapidement où se situe le problème :

| Hook Rate | Hold Rate | CTR | Diagnostic | Action prioritaire |
|-----------|-----------|-----|------------|-------------------|
| ❌ Faible | - | - | Le hook ne capte pas l'attention | Changer les 3 premières secondes / première image |
| ✅ OK | ❌ Faible | - | Le contenu ne tient pas la promesse du hook | Retravailler le corps du message |
| ✅ OK | ✅ OK | ❌ Faible | Le message intéresse mais ne pousse pas à l'action | Renforcer le CTA et l'offre |
| ✅ OK | ✅ OK | ✅ OK | Le créatif fonctionne | Scaler le budget, décliner l'angle |
| ❌ Faible | ❌ Faible | ❌ Faible | Le créatif ne fonctionne pas du tout | Changer complètement d'angle créatif |

### Process de test créatif

1. **Tester les hooks d'abord** : même message, 3-5 hooks différents
2. **Identifier le hook gagnant** : celui avec le meilleur hook rate
3. **Tester les corps** : même hook gagnant, 3-5 corps/angles différents
4. **Tester les CTA** : même hook + corps gagnant, 3-5 CTA différents
5. **Winner = hook gagnant + corps gagnant + CTA gagnant**

Budget test minimum : 2x le CPA cible par variante. Si CPA cible = 20 EUR, budget test = 40 EUR par variante.

---

## Couche 3 : Audiences - Est-ce qu'on parle aux bonnes personnes ?

### Diagnostic audience

| Métrique | Seuil d'alerte | Interprétation |
|----------|----------------|----------------|
| **Fréquence > 3-3,5** (prospection froide) / **> 7** (retargeting, reciblage) sur 7 jours | L'audience est saturée | Élargir ou exclure les personnes déjà exposées |
| **Couverture stagne** | L'audience est épuisée | Passer à une audience plus large |
| **CPA en hausse progressive** | Fatigue d'audience | Tester de nouvelles audiences ou élargir |
| **CPM en hausse** | Plus de compétition ou audience trop petite | Élargir l'audience |

### Ordre de test des audiences

1. **Advantage+ / Broad** (aucun ciblage) - tester en premier
2. **Lookalike 1%** basé sur les acheteurs/leads (prospects)
3. **Lookalike 5%** si le 1% est trop petit
4. **Intérêts** - uniquement si Broad et Lookalike ne marchent pas

### Règles d'exclusion

- Toujours exclure les **acheteurs des 30 derniers jours** en prospection
- Exclure les **leads existants** des campagnes de génération de leads
- En retargeting, exclure les **visiteurs < 5 secondes** (rebonds)

---

## Couche 4 : Budget - Est-ce qu'on investit au bon endroit ?

### Règles de réallocation

| Situation | Action |
|-----------|--------|
| Ad set avec CPA < objectif depuis 7 jours | Augmenter budget de 20% max |
| Ad set avec CPA > 2x objectif depuis 5 jours | Couper l'ad set |
| Ad set en phase d'apprentissage | Ne pas toucher pendant 7 jours |
| Toutes les ads d'un ad set sont fatiguées | Ajouter de nouvelles créatives avant d'augmenter le budget |

### Quand couper vs quand attendre

| Dépense | Conversions | Décision |
|---------|-------------|----------|
| < 2x CPA cible | 0 | Attendre |
| 2-3x CPA cible | 0 | Alerter, surveiller |
| > 3x CPA cible | 0 | Couper |
| > CPA cible | 1+ mais CPA > 2x objectif | Attendre encore 24-48h |
| > 2x CPA cible | 1+ mais CPA > 2x objectif | Couper |

---

## Niveaux de décision

Une fois la cause identifiée (couches 1-4), classer l'action à mener par **niveau d'engagement**, du plus léger au plus lourd. Toujours épuiser le niveau 1 avant de monter au 2, et le 2 avant le 3.

| Niveau | Nature | Exemples | Réversibilité |
|--------|--------|----------|---------------|
| **Niveau 1 — Réallocation** | Déplacer le budget vers ce qui marche | Couper un ad set loser, +20% sur un gagnant, redistribuer entre ad sets | Immédiate, faible risque |
| **Niveau 2 — In-platform** | Optimiser dans Meta | Nouvelles créas/angles, tester une audience, changer l'événement d'optimisation, ajuster les enchères | Quelques jours (réapprentissage) |
| **Niveau 3 — Structurel** | Agir hors Meta Ads | Revoir l'offre, le tunnel, la landing page, le positionnement, le pricing | Lourd, implique le client |

**Règle de séquençage** : ne pas répondre à un problème de niveau 3 par des actions de niveau 1. Exemple typique : bon CTR mais 0 conversion → le problème est la landing page ou l'offre (niveau 3) ; changer d'audience ou de budget (niveaux 1-2) ne réglera rien et brûlera du budget.

> Ce cadre structure aussi l'audit post-J+7 et le reporting client (Voir : [Procédure - Analyser les performances Meta Ads](<../reporting/Reporting - Analyser les performances.md>)).

---

## Cadence d'optimisation

| Fréquence | Actions |
|-----------|---------|
| **Quotidien** | Vérifier la dépense, les CPA, les anomalies. Ne pas modifier les campagnes en phase d'apprentissage |
| **Tous les 3 jours** | Analyser les métriques créatives (hook rate, hold rate, CTR). Identifier les créatives fatiguées |
| **Hebdomadaire** | Couper les ad sets/ads non performants. Lancer de nouvelles créatives. Ajuster les budgets |
| **Bi-mensuel** | Analyser les audiences. Tester de nouvelles audiences si saturation |
| **Mensuel** | Bilan global. Rapport client. Révision de la stratégie. Renouvellement créatif majeur |
