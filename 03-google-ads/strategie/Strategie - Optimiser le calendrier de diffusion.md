# Optimiser le calendrier de diffusion

> **Plateforme :** Google Ads
> **Catégorie :** Strategie
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Phase 1️⃣ : Exporter et analyser les données temporelles

### 1.1 Extraire le rapport heure du jour

1. Ouvrez Google Ads > Rapports, sélectionnez la ou les campagne(s)
2. Ajoutez les segments : **Heure de la journée** et **Jour de la semaine**
3. Définissez la plage de dates : les 30 à 60 derniers jours (excluez la fenêtre de délai de conversion la plus récente)
4. Incluez les colonnes : Clics, Conversions, Coût, Taux de conv., Coût/conv. (CPA), Valeur de conv./coût (ROAS)
5. Exportez vers un tableur

### 1.2 Construire la matrice heure de la semaine

Créez une matrice de 24 lignes (heures) par 7 colonnes (jours). Utilisez le CPA pour les campagnes lead gen, le ROAS pour l'e-commerce, ou le POAS pour le value-based bidding.

### 1.3 Valider la suffisance des données

| Niveau de données | Fiabilité | Action |
|-----------|-------------|--------|
| 50+ clics par créneau | Fiable | Utiliser pour les ajustements d'enchères |
| 20-49 clics par créneau | Directionnel | Regrouper en blocs horaires plus larges |
| Moins de 20 clics par créneau | Insuffisant | Regrouper avec les heures adjacentes |

> 💡 **Les comptes à faible volume ont besoin de blocs plus larges :** regroupez en blocs de 3 à 4 heures (matin, midi, après-midi, soir) si les créneaux d'une heure ont moins de 20 clics.

### 1.4 Vérifier la cohérence

N'agissez pas sur des anomalies d'une seule semaine. Découpez la plage de dates en semaines individuelles et vérifiez que les mêmes heures/jours affichent une performance élevée ou faible sur 4+ semaines. Les créneaux dont la performance bascule d'une semaine à l'autre sont du bruit, pas du signal.

---

## Phase 2️⃣: Identifier les patterns actionnables

### 2.1 Calculer la déviation au niveau du créneau

**Formule :** Déviation du créneau = (CPA du créneau - CPA moyen) / CPA moyen x 100

| Déviation | Catégorie | Tag d'action |
|-----------|----------|------------|
| CPA 30 %+ sous la moyenne | Fort performeur | Augmenter les enchères (CPC manuel) ou laisser actif (Stratégies d'enchères intelligentes) |
| CPA à moins de 30 % de la moyenne | Moyen | Aucun ajustement nécessaire |
| CPA 30-60 % au-dessus de la moyenne | Faible performeur | Baisser les enchères (CPC manuel) ou surveiller (Stratégies d'enchères intelligentes) |
| CPA 60 %+ au-dessus de la moyenne ou zéro conversion | Créneau mort | Mettre en pause (-100 %) |

### 2.2 Hypothèses de départ propres au vertical

| Vertical | Heures de pic typiques | Heures creuses typiques |
|----------|-------------------|-------------------|
| E-commerce | Soirées (18h-22h), week-ends | Nuit (01h-06h) |
| Lead gen | Soirées (18h-21h) | Week-ends (varie selon B2B vs B2C) |
| SaaS B2B | Heures de bureau lun-ven (09h-17h) | Week-ends, fins de soirée |

> ⚠️ **Vos données priment sur tout schéma général :** vérifiez toujours face à la performance réelle avant d'appliquer des hypothèses de vertical.

---

## Phase 3️⃣: Configurer le planning et les ajustements

### 3.1 Planifier vos créneaux horaires

Google Ads autorise jusqu'à 6 créneaux horaires par jour, d'une durée minimale de 15 minutes. Les créneaux ne peuvent pas se chevaucher. Les heures non couvertes sont mises en pause. Regroupez les heures adjacentes à performance similaire dans un même créneau.

### 3.2 Calculer les ajustements d'enchères (CPC manuel uniquement)

**Formule :** Ajustement d'enchères = (CPA cible / CPA du créneau - 1) x 100

| CPA du créneau vs cible | Ajustement d'enchères | Effet |
|-----------------------------|----------------|--------|
| 30 % sous la cible | +40 % à +50 % | Capter plus de volume sur les créneaux peu chers |
| Correspond à la cible | 0 % | Aucun changement |
| 30 % au-dessus de la cible | -20 % à -30 % | Réduire la dépense sur les créneaux chers |
| 60 %+ au-dessus de la cible | -50 % à -70 % | Quasiment supprimer |
| Aucune conversion, dépense significative | -100 % | Pause totale |

> ↪️ **Voir [Bid Modifier Reference](<../encheres/Enchères - Modificateurs d'enchères.md>)** pour les règles de cumul et la plage autorisée de -90 % à +900 %.

### 3.3 Configurer pour les campagnes en Stratégies d'enchères intelligentes

Ne mettez en pause que les créneaux morts confirmés : zéro conversion avec une dépense significative sur 30+ jours, cohérente sur plusieurs semaines. Appliquez -100 % à ces créneaux uniquement. N'appliquez aucun autre pourcentage d'ajustement.

### 3.4 Appliquer le planning dans Google Ads

1. Naviguez vers la campagne > Calendrier de diffusion, cliquez sur l'icône crayon
2. Ajoutez chaque créneau horaire pour chaque jour
3. Pour le CPC manuel : saisissez l'ajustement d'enchères calculé par créneau
4. Pour les Stratégies d'enchères intelligentes : appliquez -100 % sur les créneaux morts uniquement
5. Enregistrez et vérifiez que tous les créneaux sont actifs

---

## Phase 4️⃣ : Valider et affiner

### 4.1 Attendre suffisamment de données

| Volume du compte | Période d'évaluation minimale |
|---------------|--------------------------|
| Élevé (100+ conversions/semaine) | 2 semaines |
| Moyen (25-99 conversions/semaine) | 3 semaines |
| Faible (moins de 25 conversions/semaine) | 4 semaines |

### 4.2 Comparer avant vs. après

Extrayez le même rapport heure de la journée x jour de la semaine pour la période post-planning. Comparez le total des conversions, le coût total, le CPA/ROAS global, le taux de conversion et le taux d'impressions face à la référence d'avant le planning.

### 4.3 Vérifier la sur-restriction

| Signal d'alerte | Cause probable | Correction |
|-------------|-------------|-----|
| Conversions en baisse de 20 %+ | Trop d'heures mises en pause ou ajustements trop négatifs | Réactiver les créneaux marginaux |
| Taux d'impressions en baisse aux heures de pic | Les concurrents ont comblé vos créneaux en pause | Élargir les créneaux actifs |
| CPA resté stable | Les heures à faible CPA manquaient de volume pour compenser les coupes | Le planning n'était pas la contrainte |

Après la période d'évaluation, recalculez la performance au niveau des créneaux avec des données fraîches, affinez les ajustements sur les gagnants confirmés, et réévaluez les créneaux en pause chaque trimestre.

---

### Validation et critères de complétion

Cette SOP est terminée quand :

- [ ] Matrice de performance heure de la semaine construite avec 30 à 60 jours de données
- [ ] Suffisance des données validée (50+ clics par créneau ou regroupés en blocs)
- [ ] Cohérence du schéma confirmée sur 4+ semaines
- [ ] Calendrier de diffusion configuré dans Google Ads avec les bons ajustements
- [ ] Période d'évaluation terminée (2 à 4 semaines après implémentation)
- [ ] La comparaison avant/après montre une efficacité améliorée sans perte de volume excessive

---

### Passerelle de sortie

Une fois le calendrier de diffusion validé :

| Délai | Action |
|-----------|--------|
| Mensuelle | Contrôle ponctuel de la performance des créneaux, ajuster si la déviation a changé |
| Trimestrielle | Réanalyse complète (répéter les Phases 1-2) pour rattraper les variations saisonnières |
| Après des changements majeurs | Relancer cette SOP si la stratégie d'enchères, les campagnes ou le ciblage changent |

**En cas de problème :**

| Problème | Rediriger vers |
|-------|----------|
| La performance se dégrade après les changements de planning | Revenir à un planning 24/7, enquêter sur la cause racine |
| Les ajustements d'enchères se cumulent de façon inattendue | [Bid Modifier Reference](<../encheres/Enchères - Modificateurs d'enchères.md>) |
| Les Stratégies d'enchères intelligentes chutent après la mise en pause de créneaux | Retirer les ajustements -100 % |
| Budget contraint sur les heures actives | [SOP - Repartir le budget entre les campagnes](<../encheres/Enchères - Répartir le budget entre les campagnes.md>) |

---

### FAQ

**Q : Dois-je optimiser le calendrier de diffusion sur les campagnes en Stratégies d'enchères intelligentes ?**

R : Uniquement si vous avez des créneaux morts avec zéro conversion et une dépense significative sur 30+ jours. Les Stratégies d'enchères intelligentes ajustent déjà les enchères selon l'heure de la journée. La seule action qu'elles respectent est -100 % (pause totale).

**Q : De combien de données ai-je besoin avant de faire des ajustements de planning ?**

R : Minimum 30 jours avec 50+ clics par créneau horaire. Pour les comptes à faible volume, regroupez les heures en blocs de 3 à 4 heures. N'agissez jamais sur une seule semaine de données.

**Q : Dois-je programmer les annonces pour coller aux heures de bureau ?**

R : Pas automatiquement. Les heures de bureau et les heures de conversion diffèrent souvent. Laissez les données déterminer votre planning.

**Q : Les ajustements de planning se cumulent-ils avec les ajustements d'appareil et de zone géographique ?**

R : Oui. Ils se multiplient. Un ajustement horaire de +20 % avec un ajustement d'appareil de +30 % = +56 % au total, et non +50 %. Voir la [Bid Modifier Reference](<../encheres/Enchères - Modificateurs d'enchères.md>).

---

### Référence rapide : bibliothèque support

| Document | Type | Utilisé dans |
|----------|------|---------|
| [Ad Schedule Reference](<Strategie - Calendrier de diffusion.md>) | Référence | Phase 3 |
| [Bid Modifier Reference](<../encheres/Enchères - Modificateurs d'enchères.md>) | Référence | Phase 3 |
| [Stratégies d'enchères intelligentes Mechanics Reference](<../encheres/Enchères - Mécanismes des stratégies d'enchères intelligentes.md>) | Référence | Porte de décision |

---

### Procédures liées

| SOP | Relation |
|-----|-------------|
| [SOP - Selectionner une strategie d'encheres](<../encheres/Enchères - Sélectionner une stratégie d'enchères.md>) | Amont (la stratégie d'enchères détermine les actions possibles) |
| [SOP - Calculer les objectifs d'encheres](<../encheres/Enchères - Calculer les objectifs d'enchères.md>) | Amont (cibles utilisées pour le calcul des ajustements) |
| [SOP - Repartir le budget entre les campagnes](<../encheres/Enchères - Répartir le budget entre les campagnes.md>) | Lié (redistribution du budget) |
| [SOP - Scaler encheres et budgets](<../encheres/Enchères - Scaler les enchères et budgets.md>) | Lié (le scaling peut nécessiter de revoir le planning) |

---

### Erreurs fréquentes

| Erreur | Pourquoi ça arrive | Comment l'éviter |
|---------|----------------|--------------|
| Agir sur des données insuffisantes | Anomalie d'une seule semaine ou faible volume | Exiger 50+ clics par créneau et 4+ semaines |
| Ajustements en pourcentage sur les Stratégies d'enchères intelligentes | Seul -100 % fonctionne | Utiliser -100 % uniquement sur les Stratégies d'enchères intelligentes |
| Sur-restreindre les heures actives | Mettre en pause trop de créneaux | Commencer prudemment, resserrer progressivement |
| Ignorer le cumul des ajustements d'enchères | Les ajustements se multiplient | Calculer d'abord l'ajustement combiné |
| Régler puis oublier | Le comportement varie selon les saisons | Réanalyser chaque trimestre |
