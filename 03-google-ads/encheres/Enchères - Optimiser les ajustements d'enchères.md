# Optimiser les modificateurs d'enchères

> **Plateforme :** Google Ads
> **Catégorie :** Enchères
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Phase 1️⃣: Déterminer l'éligibilité aux ajustements

### 1.1 Confirmer le type de stratégie d'enchères

Ouvrez les paramètres de la campagne et vérifiez la stratégie d'enchères :

1. Naviguez vers la campagne dans Google Ads
2. Allez dans Paramètres > Enchères
3. Confirmez que la stratégie est CPC manuel

Si la campagne utilise une stratégie d'enchères intelligentes (CPA cible, ROAS cible, Maximiser les conversions, Maximiser la valeur de conversion), arrêtez-vous ici. Les stratégies d'enchères intelligentes ignorent tous les ajustements sauf appareil -100%.

### 1.2 Identifier les types d'ajustement disponibles

Examinez quelles dimensions d'ajustement s'appliquent à cette campagne :

| Type d'ajustement | Vérification | Continuer si |
|---------------|-------|------------|
| Appareil | Toujours disponible | La campagne cible plusieurs appareils |
| Zone géographique | Le ciblage géographique est défini | La campagne cible plusieurs zones géographiques |
| Calendrier de diffusion | Un calendrier de diffusion est configuré | La campagne diffuse selon un calendrier défini |
| Audience (RLSA) | Des listes d'audience sont associées | La campagne a des audiences en mode observation |
| Données démographiques (âge, sexe, revenu du foyer) | Le reporting démographique est actif | La campagne cible des réseaux éligibles aux données démographiques |

### 1.3 Exporter les données de performance par segment

Pour chaque type d'ajustement éligible, sortez les rapports par segment couvrant les 30 à 90 derniers jours :

1. Ouvrez la campagne dans Google Ads
2. Naviguez vers l'onglet de segment concerné (Appareils, Zones géographiques, Calendrier de diffusion, Audiences, Données démographiques)
3. Réglez la plage de dates sur les 30 derniers jours minimum (60 à 90 jours pour les campagnes à faible volume)
4. Exportez vers un tableur avec ces colonnes : nom du segment, clics, impressions, conversions, valeur de conversion, coût, CPA, ROAS

### 1.4 Enregistrer la référence de campagne

| Métrique | Moyenne de campagne |
|--------|-----------------|
| Total des clics (période) | |
| Total des conversions (période) | |
| Coût total (période) | |
| CPA moyen de la campagne | |
| ROAS moyen de la campagne | |
| CPA de rentabilité ou ROAS minimum | |

---

## Phase 2️⃣: Analyser la performance par segment

### 2.1 Vérifier les seuils minimaux de données

Avant d'analyser un segment, confirmez qu'il a suffisamment de données pour être exploitable :

| Seuil | Minimum | Pourquoi |
|-----------|---------|-----|
| Clics par segment | 100+ | En dessous de 100 clics, la variance est probablement du bruit |
| Conversions par segment | 10+ | En dessous de 10 conversions, le CPA n'est pas fiable |
| Dépense par segment | Significative par rapport à la campagne | Les segments à dépense minime ne justifient pas d'ajustement |

Les segments en dessous de ces seuils ne reçoivent aucun ajustement. Marquez-les « données insuffisantes » et passez au suivant.

### 2.2 Calculer la variance par rapport à la moyenne de campagne

Pour chaque segment qui atteint le seuil de données, calculez la variance :

**Formule basée sur le CPA :**
Variance = (CPA du segment / CPA moyen de la campagne - 1) x 100

**Formule basée sur le ROAS :**
Variance = (ROAS du segment / ROAS moyen de la campagne - 1) x 100

### 2.3 Signaler les segments par variance

Enregistrez chaque segment dans la feuille d'analyse :

| Segment | Clics | Conversions | CPA | ROAS | Variance (%) | Signal |
|---------|--------|-------------|-----|------|--------------|------|
| | | | | | | |

Utilisez cette logique de signalement :

| Performance du segment (basée CPA) | Signal | Direction de l'action |
|----------------------------------|------|------------------|
| CPA 30%+ sous la moyenne de campagne | Fort performeur | Augmenter l'ajustement |
| CPA à moins de 30% de la moyenne de campagne | Performeur moyen | Aucun changement |
| CPA 30-50% au-dessus de la moyenne de campagne | Performeur faible | Diminuer l'ajustement |
| CPA 50%+ au-dessus de la moyenne de campagne | Mauvais performeur | Forte diminution ou exclusion |
| Zéro conversion, dépense significative (50+ clics) | Non-convertisseur | Envisager une exclusion -100% |

| Performance du segment (basée ROAS) | Signal | Direction de l'action |
|-----------------------------------|------|------------------|
| ROAS 30%+ au-dessus de la moyenne de campagne | Fort performeur | Augmenter l'ajustement |
| ROAS à moins de 30% de la moyenne de campagne | Performeur moyen | Aucun changement |
| ROAS 30-50% sous la moyenne de campagne | Performeur faible | Diminuer l'ajustement |
| ROAS 50%+ sous la moyenne de campagne | Mauvais performeur | Forte diminution ou exclusion |
| Zéro conversion, dépense significative (50+ clics) | Non-convertisseur | Envisager une exclusion -100% |

### 2.4 Prioriser les dimensions d'ajustement

Si plusieurs dimensions ont des segments signalés, priorisez par impact :

| Priorité | Dimension | Pourquoi |
|----------|-----------|-----|
| 1 | Appareil | Plus grande différence comportementale, plus forte variance de dépense |
| 2 | Zone géographique | La performance géographique varie fortement |
| 3 | Calendrier de diffusion | Les tendances par heure et par jour de la semaine sont exploitables |
| 4 | Audience (RLSA) | La qualité des listes d'audience crée des écarts de taux de conversion |
| 5 | Données démographiques | Souvent moins de volume de données, à appliquer en dernier |

---

## Phase 3️⃣ : Calculer et appliquer les ajustements

### 3.1 Calculer les ajustements de départ

Utilisez la formule basée sur la performance pour chaque segment signalé :

**Campagnes basées sur le CPA :**
Ajustement de départ = (CPA moyen de la campagne / CPA du segment - 1) x 100

**Campagnes basées sur le ROAS :**
Ajustement de départ = (ROAS du segment / ROAS moyen de la campagne - 1) x 100

**Exemple (basé CPA) :**

| Segment | CPA du segment | CPA de la campagne | Ajustement brut |
|---------|-------------|-------------|--------------|
| Mobile | 35 € | 50 € | +43% |
| Ordinateur | 50 € | 50 € | 0% |
| Tablette | 85 € | 50 € | -41% |

### 3.2 Plafonner les ajustements initiaux

N'appliquez jamais directement l'ajustement brut calculé. Plafonnez les ajustements initiaux pour éviter la surcorrection :

| Règle de plafonnement | Ajustement initial maximum |
|----------|---------------------------|
| Ajustements positifs | Plafonner à +30% |
| Ajustements négatifs | Plafonner à -30% |
| Exclusions (-100%) | Uniquement pour les segments à zéro conversion après 200+ clics |

Après le premier cycle d'évaluation (2+ semaines), élargissez les plafonds à +/- 50% si les premières données le justifient.

> 💡 **Commencez prudemment, ajustez progressivement :** La surcorrection provoque un effondrement du volume. Un segment qui fait 40% de mieux que la moyenne justifie un ajustement de +30% au départ, pas +43%. Validez, puis élargissez.

### 3.3 Appliquer les ajustements dans Google Ads

Appliquez les ajustements en commençant par les segments à plus forte dépense :

1. Ouvrez la campagne dans Google Ads
2. Naviguez vers l'onglet de segment concerné
3. Cliquez sur la colonne d'ajustement d'enchères du segment
4. Saisissez l'ajustement calculé (plafonné)
5. Enregistrez le changement
6. Répétez pour chaque segment signalé

### 3.4 Documenter tous les changements

Enregistrez chaque ajustement appliqué pour la comparaison post-vérification :

| Dimension | Segment | Ajustement précédent | Nouvel ajustement | Date d'application | Justification |
|-----------|---------|-------------------|-------------|-------------|-----------|
| Appareil | Mobile | 0% | +30% | | CPA 30% sous la moyenne |
| Appareil | Tablette | 0% | -30% | | CPA 70% au-dessus de la moyenne |
| Zone géographique | [Ville] | 0% | +20% | | CPA 25% sous la moyenne |

### 3.5 Attention au cumul des ajustements

Quand vous appliquez des ajustements sur plusieurs dimensions, rappelez-vous que les ajustements se cumulent de façon multiplicative, pas additive.

**Exemple :** Un utilisateur mobile (+30%) dans une zone géographique performante (+20%) pendant les heures de pointe (+15%) reçoit un ajustement combiné de :
1,30 x 1,20 x 1,15 = 1,794 (une hausse de 79,4%, pas 65%)

Consultez [Bid Modifier Reference](<Enchères - Modificateurs d'enchères.md>) pour les règles de cumul complètes. Évitez de combiner plus de trois ajustements positifs sur la même combinaison de dimensions pour éviter l'inflation des enchères.

---

## Phase 4️⃣ : Valider et surveiller

### 4.1 Définir le calendrier d'évaluation

| Délai | Action |
|-----------|--------|
| Jours 1-14 | Aucun changement. Laissez les ajustements tourner et collecter des données. |
| Jour 14 | Sortez les premières données de comparaison. Vérifiez l'absence d'effondrement du volume ou d'inflation des enchères. |
| Jour 21-30 | Évaluation complète avec comparaison avant/après. |

### 4.2 Comparer la performance avant et après

Sortez les données au niveau segment pour la période après l'application des ajustements (excluez les 3 premiers jours comme marge de stabilisation) :

| Segment | CPA avant | CPA après | Écart | Volume avant | Volume après | Écart |
|---------|-----------|-----------|--------|--------------|-------------|--------|
| | | | | | | |

### 4.3 Évaluer et ajuster

| Résultat | Action |
|--------|--------|
| CPA du segment amélioré, volume stable ou en hausse | L'ajustement fonctionne. Gardez-le ou élargissez vers la valeur calculée complète. |
| CPA du segment amélioré, volume en forte baisse (>30%) | L'ajustement est trop agressif. Réduisez-le de moitié. |
| CPA du segment dégradé | Retirez l'ajustement. Cherchez la cause racine. |
| CPA global de la campagne amélioré | Les ajustements sont globalement positifs. Passez au cycle suivant. |
| CPA global de la campagne dégradé | Annulez tous les ajustements. Réanalysez avec une fenêtre de données plus longue. |

### 4.4 Gérer l'effondrement du volume

Si un ajustement négatif fait chuter le volume à presque zéro sans améliorer la performance globale de la campagne :

1. Réduisez l'ajustement de moitié (ex. -30% devient -15%)
2. Attendez encore 2 semaines
3. Si le volume est toujours effondré, retirez complètement l'ajustement
4. Déterminez si le segment doit être exclu (-100%) ou laissé sans ajustement

### 4.5 Checklist de validation finale

- [ ] Tous les segments modifiés ont 2+ semaines de données post-changement
- [ ] Aucun segment n'a subi d'effondrement de volume involontaire
- [ ] Le CPA ou le ROAS global de la campagne s'est amélioré ou est resté stable
- [ ] Les effets de cumul ont été vérifiés pour les segments à ajustements multiples
- [ ] Tous les changements sont documentés dans la feuille de suivi des ajustements

---

### Validation et critères de complétion

Cette SOP est terminée quand :

- [ ] Stratégie d'enchères confirmée comme CPC manuel (campagnes en stratégies d'enchères intelligentes exclues)
- [ ] Données de performance par segment exportées et analysées pour tous les types d'ajustement éligibles
- [ ] Variance calculée par segment avec les seuils de données appliqués
- [ ] Ajustements de départ calculés, plafonnés et appliqués
- [ ] Tous les changements documentés avec justification
- [ ] Période d'évaluation de 2+ semaines terminée
- [ ] La comparaison avant/après montre un impact globalement positif ou neutre
- [ ] Surcorrections identifiées et ajustées

---

### Passerelle de sortie

Une fois que les ajustements sont validés et stables :

| Délai | Action |
|-----------|--------|
| Mensuelle | Relancez cette SOP pour rafraîchir les ajustements selon les données les plus récentes |
| Après un changement saisonnier | Réanalysez les segments, car les tendances de performance changent avec les saisons |
| Lors d'une migration vers les stratégies d'enchères intelligentes | Retirez tous les ajustements sauf appareil -100% (les stratégies d'enchères intelligentes les ignorent) |
| Trimestrielle | Remise à zéro complète : retirez tous les ajustements, réanalysez de zéro pour éviter les ajustements obsolètes |

**En cas de problème :**

| Problème | Rediriger vers |
|-------|----------|
| Campagne migrée vers les stratégies d'enchères intelligentes | Retirez tous les ajustements. Voir [SOP - Migrer des encheres manuelles vers Stratégies d'enchères intelligentes](<Enchères - Migrer des enchères manuelles vers les stratégies d'enchères intelligentes.md>) |
| Ajustements provoquant une inflation des enchères | Vérifiez le cumul dans [Bid Modifier Reference](<Enchères - Modificateurs d'enchères.md>), réduisez les ajustements qui se chevauchent |
| Les cibles doivent être recalculées | [SOP - Calculer les objectifs d'encheres](<Enchères - Calculer les objectifs d'enchères.md>) |
| Le budget doit être réalloué | [SOP - Repartir le budget entre les campagnes](<Enchères - Répartir le budget entre les campagnes.md>) |

---

### FAQ

**Q : Puis-je utiliser des ajustements d'enchères sur des campagnes en stratégies d'enchères intelligentes ?**

R : Non. Les stratégies d'enchères intelligentes ignorent tous les ajustements d'enchères sauf appareil -100%. Si vous définissez un ajustement mobile de +30% sur une campagne CPA cible, il n'a aucun effet. Les stratégies d'enchères intelligentes ajustent les enchères par segment automatiquement au moment de l'enchère à partir de leurs propres signaux.

**Q : Combien de temps dois-je attendre avant d'évaluer les ajustements ?**

R : Attendez au moins 2 semaines. Des fenêtres plus courtes ne fournissent pas assez de données post-changement pour une comparaison fiable, surtout pour les segments à volume modéré. Pour les segments à faible volume, étendez à 3-4 semaines.

**Q : Que faire si un segment a assez de clics mais zéro conversion ?**

R : Si un segment a 200+ clics et zéro conversion, envisagez une exclusion -100%. S'il a 50-200 clics avec zéro conversion, appliquez un ajustement de -50% à -70% et attendez plus de données avant de l'exclure entièrement.

**Q : Dois-je appliquer les ajustements au niveau campagne ou groupe d'annonces ?**

R : Appliquez au niveau campagne pour l'appareil, la zone géographique et le calendrier de diffusion. Appliquez au niveau groupe d'annonces pour les audiences et les données démographiques uniquement si les groupes d'annonces ont assez de données individuelles (100+ clics par segment par groupe d'annonces). Le niveau campagne est plus sûr pour la plupart des comptes.

---

### Référence rapide : bibliothèque support

| Document | Type | Utilisé dans |
|----------|------|---------|
| [Bid Modifier Reference](<Enchères - Modificateurs d'enchères.md>) | Référence | Phase 1 (éligibilité), Phase 3 (règles de cumul) |
| [Stratégies d'enchères intelligentes Mechanics Reference](<Enchères - Mécanismes des stratégies d'enchères intelligentes.md>) | Référence | Point de décision (vérification de la stratégie) |
| [Google Ads Metrics Reference](<../optimisation/Optimisation - Alertes et règles Google Ads.md>) | Référence | Phase 2 (définitions des métriques) |
| [Bid Targets Reference](<Enchères - Cibles d'enchères.md>) | Référence | Phase 2 (garde-fous de rentabilité) |

---

### Procédures liées

| SOP | Relation |
|-----|-------------|
| [SOP - Selectionner une strategie d'encheres](<Enchères - Sélectionner une stratégie d'enchères.md>) | Amont (détermine si les ajustements sont applicables) |
| [SOP - Calculer les objectifs d'encheres](<Enchères - Calculer les objectifs d'enchères.md>) | Amont (fournit les cibles CPA/ROAS pour l'analyse de variance) |
| [SOP - Repartir le budget entre les campagnes](<Enchères - Répartir le budget entre les campagnes.md>) | Parallèle (les changements de budget peuvent interagir avec les ajustements) |
| [SOP - Scaler encheres et budgets](<Enchères - Scaler les enchères et budgets.md>) | Aval (une fois les ajustements stabilisés, scalez les cibles globales) |
| [SOP - Migrer des encheres manuelles vers Stratégies d'enchères intelligentes](<Enchères - Migrer des enchères manuelles vers les stratégies d'enchères intelligentes.md>) | Conditionnel (quand vous êtes prêt à quitter le CPC manuel, retirez les ajustements) |

---

### Erreurs fréquentes

| Erreur | Pourquoi ça arrive | Comment l'éviter |
|---------|----------------|--------------|
| Appliquer des ajustements sur des campagnes en stratégies d'enchères intelligentes | Ne pas vérifier d'abord le type de stratégie d'enchères | Compléter le point de décision avant toute analyse |
| Agir sur des données insuffisantes | Le segment a 20 clics et 1 conversion | Imposer des minimums de 100 clics et 10 conversions par segment |
| Surcorriger avec de gros ajustements | Utiliser la sortie brute de la formule sans plafonner | Plafonner les ajustements initiaux à +/- 30%, élargir après validation |
| Ignorer le cumul multiplicatif | Traiter plusieurs ajustements comme additifs | Calculer l'effet combiné avant d'appliquer, vérifier le tableau de cumul |
| Ne jamais réévaluer les ajustements | Mentalité « configurer et oublier » | Relancer chaque mois, remise à zéro complète chaque trimestre |
| Retirer tous les ajustements lors de la migration vers les stratégies d'enchères intelligentes | Oublier que les exclusions appareil -100% fonctionnent encore | Garder les exclusions d'appareil intentionnelles, retirer tout le reste |
