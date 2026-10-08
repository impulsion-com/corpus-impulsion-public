# Lancer un test A/B de Landing Page

> **Plateforme :** Landing Pages
> **Catégorie :** Audit
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Phase 1️⃣ : Sélectionner la page candidate au test

### 1.1 Identifier les pages à fort impact

Extrais les données de performance de tes landing pages depuis Google Ads (Campaigns > Insights & Reports > Landing Pages) et trie par volume de trafic.

Concentre-toi sur les pages qui remplissent les deux critères :

- **Fort trafic :** Top pages par volume de clics (plus de trafic = résultats de test plus rapides)
- **CVR sous benchmark (analyse comparative) :** Taux de conversion sous la moyenne du compte ou le benchmark sectoriel

| Priorité | Profil de la page | Pourquoi tester ici |
|----------|-------------|---------------|
| 1 | Fort trafic + CVR sous benchmark | Plus gros potentiel d'amélioration, significativité statistique la plus rapide |
| 2 | Fort trafic + CVR moyen | Bon volume pour résultats rapides, les gains incrémentaux se cumulent |
| 3 | Trafic moyen + CVR sous benchmark | Potentiel d'amélioration significatif, durée de test plus longue |
| 4 | Faible trafic + n'importe quel CVR | Trop lent pour atteindre la significativité, à reporter jusqu'à ce que le trafic croisse |

### 1.2 Consigner les métriques baseline

Documente l'état actuel de ta page sélectionnée :

| Métrique | Valeur actuelle | Source | Plage de dates |
|--------|--------------|--------|------------|
| Visiteurs mensuels (clics) | ___ | Google Ads | 30 derniers jours |
| Taux de conversion | ___% | Google Ads | 30 derniers jours |
| Taux de rebond | ___% | GA4 | 30 derniers jours |
| Temps moy. sur la page | ___ | GA4 | 30 derniers jours |
| CPA principal | $/___ | Google Ads | 30 derniers jours |
| Conversions mensuelles | ___ | Google Ads | 30 derniers jours |

### 1.3 Confirmer que le test est prêt

Avant de continuer, vérifie :

- [ ] Landing Page Experience = Average ou Above Average
- [ ] La page reçoit 1 000+ visiteurs mensuels
- [ ] La page génère 30+ conversions mensuelles (minimum pour des résultats significatifs)
- [ ] Aucun autre test actif sur cette page
- [ ] Le tracking (suivi des conversions/évènements) de conversion est précis et vérifié
- [ ] Pas de changements majeurs de campagne prévus pendant la période de test

> ⚠️ **Seuil de volume :** Si une page génère moins de 30 conversions par mois, l'expérimentation A/B prendra trop de temps pour produire des résultats fiables. Concentre tes efforts de test sur les pages à plus fort volume et fais des changements basés sur le jugement sur les pages à faible volume.

---

## Phase 2️⃣ : Formuler l'hypothèse et concevoir la variante

### 2.1 Sélectionner l'élément à tester

Choisis un seul élément à tester. Teste d'abord les éléments à plus fort impact :

| Priorité | Élément | Impact typique | Exemple de changement |
|----------|---------|---------------|----------------|
| 1 | Titre / offre | Haut | "Free Quote in 60 Seconds" vs "Save 30% on Your First Project" |
| 2 | Layout above-the-fold | Haut | Image hero + formulaire vs vidéo + bouton CTA |
| 3 | Design du formulaire (champs, étapes, friction) | Moyen-Haut | Formulaire multi-étapes vs simple étape, moins de champs |
| 4 | Bouton CTA (copy, taille, placement) | Moyen-Haut | "Get Started Free" vs "Request a Quote", above-fold vs below |
| 5 | Type et placement de la preuve sociale | Moyen | Témoignages vs logos clients vs notes d'avis |
| 6 | Format de la section hero | Moyen | Image statique vs vidéo vs illustration |
| 7 | Cadrage de la proposition de valeur | Moyen | Features d'abord vs bénéfices d'abord vs résultats d'abord |
| 8 | Signaux de confiance | Moyen | Garanties, certifications, badges de sécurité, logos partenaires |
| 9 | Ordre des sections / flux de page | Moyen | Réordonner les blocs de contenu pour suivre l'intention utilisateur |
| 10 | Présence de navigation | Moyen | Nav bar complète vs nav minimale vs pas de nav |

> 💡 **Commence par le haut :** Les changements de titre et d'offre produisent typiquement 2-5x plus de lift que les éléments moins prioritaires. Descends dans la liste au fil des cycles de test trimestriels.

> 💡 **Cette liste n'est pas exhaustive.** Elle fournit des priorités de départ. Pour la gamme complète d'éléments testables, voir : [Checklist Qualité LP](<Audit - [Review] Qualité de la LP.md>), [Modèle mental Hiérarchie LP](<../methodes/Méthodes - Hiérarchie de Landing Page.md>), [Catalogue Headlines LP](<../exemples/Exemples - Headlines.md>), [Catalogue CTA LP](<../exemples/Exemples - CTA.md>), [Catalogue Sections LP](<../exemples/Exemples - Sections.md>), [SOP - Construire une page de destination a forte conversion](<../construction/Construction - Construire une LP e-commerce.md>), et [SOP - Auditer et optimiser une page de destination existante](<Audit - Auditer et optimiser une LP existante.md>).

### 2.2 Rédiger l'hypothèse

Documente une hypothèse spécifique et testable :

**Modèle :**
```
Si on [change l'élément X] de [état actuel] vers [nouvel état],
alors [métrique principale] va [s'améliorer/augmenter] de [% estimé]
parce que [rationnel basé sur les données ou l'observation du comportement utilisateur].
```

**Exemple :**
```
Si on change le headline hero de "Professional Roofing Services"
vers "Licensed Roofers in [City] - Free Quote in 60 Seconds",
alors le taux de conversion augmentera de 15-25 %
parce que le headline actuel manque de spécificité et de proposition de valeur claire,
et nos données de taux de rebond montrent que 72 % des visiteurs partent sans scroller.
```

### 2.3 Définir les critères de succès

| Élément | Définition |
|---------|------------|
| Métrique principale | Taux de conversion (CVR) |
| Seuil de succès | Amélioration relative minimum de 10 % (ex. : 3,0 % à 3,3 %) |
| Métrique garde-fou 1 | Taux de rebond (ne doit pas augmenter de plus de 5 %) |
| Métrique garde-fou 2 | Temps moyen sur la page (ne doit pas baisser significativement) |
| Niveau de confiance | 95 % (standard) |

### 2.4 Concevoir la variante

Construis une seule variante (Version B) qui ne change que l'élément testé.

**Règles de conception :**

| Règle | Pourquoi |
|------|-----|
| Ne changer qu'un seul élément | Isoler la variable permet d'attribuer le résultat à ce changement précis |
| Rendre le changement significatif | Les petits tweaks (couleur de bouton, taille de police) produisent rarement un lift mesurable |
| Garder tout le reste identique | Même layout, mêmes images (sauf si on teste les visuels), mêmes champs de formulaire |
| Tester sur la même structure d'URL | Éviter les différences d'URL qui pourraient impacter le tracking |

> ⚠️ **Une seule variable :** Si tu changes le titre ET le CTA ET le layout, tu n'apprends rien sur ce qui a causé le résultat. Un élément par cycle.

---

## Phase 3️⃣ : Configurer l'infrastructure de test

### 3.1 Choisir ta méthode de test

| Méthode | Idéale pour | Configuration |
|--------|----------|-------|
| **A/B test du landing page builder** (Unbounce, Instapage, Leadpages, VWO) | Landing pages dédiées | Split testing intégré, configuration la plus simple |
| **Successeur de Google Optimize / outil tiers** (VWO, Optimizely, Convert) | Pages de site que tu contrôles | Overlay JavaScript, pas besoin de nouvelle URL |
| **Ad Variations Google Ads** | Split d'URL au niveau campagne | Split 50/50 sur Final URL, comparaison CVR, CPA, ROAS, AOV |
| **Split d'URL manuel** | Quand aucun outil n'est dispo | Deux URLs, trafic réparti via paramètres de campagne ou rotation d'annonces |

**Recommandé :** Utilise l'A/B test intégré de ton landing page builder si dispo. Il gère automatiquement la répartition du trafic, les calculs statistiques et la diffusion des variantes.

### 3.2 Configurer le test

| Paramètre | Valeur | Justification |
|---------|-------|-----------|
| Répartition du trafic | 50/50 | Chemin le plus rapide vers la significativité statistique |
| Durée minimum | 14 jours | Capture les patterns de trafic hebdomadaires (2 cycles business complets) |
| Conversions minimum par variante | 100+ | Requis pour une significativité fiable à 95 % de confiance |
| Ciblage | Tout le trafic sur cette page | Les tests segmentés réduisent l'échantillon et retardent les résultats |

**Calculer la durée estimée du test :**

```
Conversions nécessaires par variante : 100 (minimum pour 95 % de confiance à 10 % de MDE)
Total de conversions nécessaires : 200

Conversions mensuelles sur cette page : ___
Taux de conversion quotidien : mensuel ÷ 30 = ___

À un split 50/50, chaque variante reçoit : quotidien ÷ 2 = ___ conversions/jour
Jours pour atteindre 100 par variante : 100 ÷ (quotidien ÷ 2) = ___ jours

Durée minimum : MAX(jours calculés, 14 jours)
```

> 💡 **MDE = Minimum Detectable Effect :** Avec 100 conversions par variante, tu peux détecter de manière fiable un lift relatif de 15-20 % à 95 % de confiance. Pour détecter des effets plus petits (10 %), il faut 300-500 conversions par variante.

### 3.3 Configurer via Ad Variations Google Ads (si applicable)

Si tu testes via Ad Variations Google Ads plutôt qu'avec un outil de landing page :

1. Naviguez vers Campaigns > Experiments > Ad Variations
2. Sélectionne les campagnes à inclure dans le test
3. Crée une variation "Update URLs" qui pointe vers ta landing page variante
4. Configure le split 50/50 et fixe le calendrier d'après ton calcul de durée
5. Lance la variation et monitore-la dans le tableau de bord Experiments

Les Ad Variations permettent une comparaison directe de CVR, CPA, ROAS et AOV entre les URLs contrôle et variante sur les campagnes sélectionnées.

(Voir : [SOP - Executer une experimentation de campagne](<../../03-google-ads/strategie/Strategie - Lancer une expérience de campagne.md>) et [Référence Configuration des expériences](<../../03-google-ads/strategie/Strategie - Configuration des expériences.md>) pour les étapes détaillées)

### 3.4 Validation avant lancement

Avant de passer en live, vérifie :

- [ ] La page variante charge correctement sur desktop et mobile
- [ ] Le tracking de conversion se déclenche sur le contrôle et la variante
- [ ] Les soumissions de formulaire ou flows de checkout fonctionnent sur les deux versions
- [ ] La vitesse de page est comparable entre contrôle et variante
- [ ] Le tracking analytics est configuré pour les deux URLs (si tu utilises des URLs séparées)
- [ ] Aucun autre test ne tourne sur cette page ou campagne

---

## Phase 4️⃣ : Monitorer le test pendant son exécution

### 4.1 Définir le calendrier de monitoring

| Échéance | À vérifier | Action |
|-----------|---------------|--------|
| Jour 1 | Les deux variantes reçoivent du trafic | Vérifier que le split 50/50 fonctionne |
| Jour 2-3 | Aucun problème technique (formulaires cassés, gaps de tracking) | Corriger immédiatement si trouvé, relancer le compteur de test |
| Hebdomadaire | Répartition de trafic toujours équilibrée, pas de perturbations externes | Documenter toute anomalie |
| Date de fin | Résultats complets prêts à l'analyse | Continuer vers Phase 5 |

### 4.2 Règles "ne pas toucher" pendant le test

| À FAIRE | À NE PAS FAIRE |
|----|--------|
| Monitorer les défaillances techniques | Jeter un œil aux résultats et arrêter tôt parce qu'une variante "a l'air" mieux |
| Documenter les événements externes qui pourraient impacter les résultats (promos, saisonnalité, pannes) | Changer quoi que ce soit sur l'une ou l'autre page pendant le test |
| Surveiller une défaillance catastrophique (CVR variante chute de 50 %+) | Ajuster le split de trafic en cours de test |
| S'assurer que le volume de trafic reste constant | Lancer d'autres tests sur la même page simultanément |

### 4.3 Critères d'arrêt anticipé

N'arrête un test tôt que si :

| Condition | Action |
|-----------|--------|
| Le taux de conversion de la variante chute de 50 %+ ET tient pendant 7+ jours | Arrêter le test, garder le contrôle, investiguer |
| Défaillance technique (tracking cassé, erreurs de page) | Pause, correction, redémarrage avec données fraîches |
| Événement externe qui invalide le test (panne globale, grosse promo lancée) | Arrêter, documenter, relancer une fois les conditions normalisées |

> ⚠️ **N'arrête pas tôt parce qu'une variante "a l'air" mieux :** La variation aléatoire crée des séries, surtout dans la première semaine. Engage-toi sur la durée prévue complète.

---

## Phase 5️⃣ : Analyser les résultats et déclarer un gagnant

### 5.1 Attendre les critères de complétion

Avant d'analyser, confirme que les deux conditions sont remplies :

- [ ] Le test a tourné au moins 14 jours (deux cycles hebdomadaires complets)
- [ ] Chaque variante a reçu au moins 100 conversions (ou ton minimum pré-calculé)

Si une seule condition est remplie, prolonge le test jusqu'à ce que les deux soient satisfaites.

### 5.2 Consigner les résultats

| Métrique | Contrôle (A) | Variante (B) | Différence | Significatif stat. ? |
|--------|------------|-------------|------------|---------------------|
| Visiteurs | ___ | ___ | - | - |
| Conversions | ___ | ___ | ___% | Oui / Non |
| Taux de conversion | ___% | ___% | ___% relatif | Oui / Non (p < 0,05) |
| Taux de rebond | ___% | ___% | ___% | - |
| Temps moy. sur la page | ___ | ___ | ___ | - |

### 5.3 Interpréter les résultats

| Résultat | Interprétation | Action |
|--------|---------------|--------|
| La variante gagne sur la métrique principale (95 % de confiance) | La variante est réellement meilleure | Déployer la variante (Phase 6) |
| Le contrôle gagne sur la métrique principale (95 % de confiance) | La page d'origine est meilleure | Garder le contrôle, documenter pourquoi l'hypothèse était fausse |
| Pas de significativité statistique après la durée complète | Impossible de distinguer les versions | Garder le contrôle (plus simple), formuler une nouvelle hypothèse |
| La variante gagne sur la principale mais échoue sur un garde-fou | L'amélioration a un coût | Évaluer le trade-off : le lift CVR vaut-il la baisse du garde-fou ? |

### 5.4 Analyse par segment (optionnelle, à titre informatif)

Si ton outil de test supporte la segmentation, vérifie si les résultats diffèrent selon :

| Segment | Pourquoi vérifier |
|---------|-----------|
| Appareil (mobile vs desktop) | La variante peut gagner sur un appareil et perdre sur l'autre |
| Source de trafic (branded vs non-branded) | Des niveaux d'intention différents peuvent réagir différemment |
| Jour de la semaine | Les pages B2B peuvent montrer des patterns différents en semaine vs week-end |

> ⚠️ **L'analyse par segment est informative, pas décisive :** Ta décision principale se base sur le résultat global. Utilise les segments pour générer des hypothèses pour les futurs tests, pas pour cherry-picker un gagnant.

---

## Phase 6️⃣ : Déployer le gagnant et documenter les apprentissages

### 6.1 Déployer la variante gagnante

Si la variante a gagné :

1. Faire de la variante la nouvelle page par défaut
2. Retirer le split A/B (tout le trafic va au gagnant)
3. Mettre à jour les final URLs des campagnes si tu as utilisé des URLs séparées
4. Vérifier que le tracking de conversion fonctionne toujours sur la page désormais permanente

Si le contrôle a gagné (ou résultats inconclusifs) :

1. Retirer la variante
2. Mettre fin au test
3. Tout le trafic retourne sur la page d'origine

### 6.2 Documenter les apprentissages

Consigne le résultat du test dans ta base de connaissances d'optimisation :

```
RÉSULTATS TEST A/B LANDING PAGE
================================
Page : [URL de la landing page]
Dates du test : [Début] au [Fin]
Élément testé : [Headline / CTA / Layout / etc.]
Hypothèse : [Ce à quoi tu t'attendais et pourquoi]

Contrôle (A) : [Description de l'original]
Variante (B) : [Description du changement]

Résultats :
| Métrique         | Contrôle | Variante | Diff    | Significatif ? |
|----------------|---------|---------|---------|--------------|
| Taux de conversion | ___% | ___% | ___% | Oui/Non |
| Taux de rebond     | ___% | ___% | ___% | - |
| Temps sur la page  | ___  | ___  | ___  | - |

Gagnant : [A / B / Inconclusif]
Déployé : [Oui / Non]

Apprentissage clé :
[Ce que ce test t'a appris sur ton audience, ton messaging ou le design de page]

Prochain test :
[Que tester ensuite à partir de ce que tu as appris]
```

### 6.3 Planifier le prochain test

Une fois les apprentissages documentés, identifie le prochain test dans la séquence prioritaire :

| Élément testé actuellement | Prochain test à envisager |
|---------------------|----------------------|
| Titre / offre | Layout above-the-fold |
| Layout above-the-fold | Formulaire / CTA |
| Formulaire / CTA | Preuve sociale |
| Preuve sociale | Optimisations de vitesse |
| Cycle complet terminé | Retour au titre / offre avec un nouvel angle |

Programme le prochain test pour le trimestre suivant (ou plus tôt si le volume de trafic permet des cycles de test plus rapides).

---

### Validation / définition de "terminé"

Cette SOP est terminée quand :

- [ ] Page candidate sélectionnée à partir du volume de trafic et de l'écart de CVR
- [ ] Hypothèse documentée avec résultat attendu et rationnel
- [ ] Test a tourné minimum 14 jours ET minimum de conversions atteint par variante
- [ ] Résultats analysés avec significativité statistique évaluée
- [ ] Gagnant déployé OU contrôle conservé avec raisonnement documenté
- [ ] Apprentissages consignés dans la base de connaissances d'optimisation
- [ ] Prochain test identifié et placé en file

---

### Passerelle de sortie

Après avoir terminé un test A/B de landing page :

| Délai | Action |
|-----------|--------|
| Immédiatement | Déployer le gagnant, retirer l'infrastructure de test |
| 7 jours post-déploiement | Monitorer la stabilité du gagnant déployé (pas de régression) |
| 14 jours post-déploiement | Confirmer que le lift CVR tient en production avec tout le trafic |
| Trimestre suivant | Démarrer le prochain cycle de test sur cette page (élément suivant dans la liste prioritaire) |

**Orientation après complétion :**

| Résultat | Prochaine étape |
|---------|-----------|
| Gagnant déployé, CVR amélioré | Mettre en file le prochain test d'élément pour cette page, envisager de tester le même élément sur d'autres pages à fort trafic |
| Contrôle conservé | Formuler une nouvelle hypothèse à partir des apprentissages, tester un autre élément ou angle |
| Inconclusif | Augmenter le trafic sur la page ou tester un changement plus audacieux (taille d'effet attendue plus grande) |
| LP Experience a baissé pendant le test | Lancer [SOP - Ameliorer l'experience de la page de destination](<Audit - Test A-B de Landing Page.md>) pour restaurer la baseline |

---

### Documents liés

| Document | Type | Relation |
|----------|------|-------------|
| [SOP - Surveiller la performance des pages de destination](<Audit - Suivre la performance.md>) | SOP | Amont : identifie les pages qui nécessitent une optimisation |
| [SOP - Ameliorer l'experience de la page de destination](<Audit - Test A-B de Landing Page.md>) | SOP | Prérequis : corrige les problèmes baseline de LP avant de tester |
| [Référence Configuration des expériences](<../../03-google-ads/strategie/Strategie - Configuration des expériences.md>) | Référence | Paramètres de split test et exigences statistiques |
| [SOP - Executer une experimentation de campagne](<../../03-google-ads/strategie/Strategie - Lancer une expérience de campagne.md>) | SOP | Parallèle : méthode de configuration d'expérience au niveau campagne |
| [Modèle mental Tests et expérimentations](<../../01-strategie/experimentation/Expérimentation - Tests et expérimentations.md>) | Modèle mental | Méthode : quand tester et comment évaluer les résultats |
