# Configuration des expériences

> **Plateforme :** Google Ads
> **Catégorie :** Strategie
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Documente les types d'expériences Google Ads, les options de configuration, les paramètres de répartition du trafic et les exigences statistiques pour mener des expériences de campagne valides.

---

## Ce que couvre cette fiche / Ce qu'elle ne couvre PAS

**Cette fiche :**

- Documente les types d'expériences disponibles dans Google Ads
- Explique les options de répartition du trafic et leurs implications
- Détaille les exigences de significativité statistique
- Fournit les paramètres et limites de configuration

**Cette fiche ne couvre PAS :**

- Expliquer quand tester vs. implémenter directement (Voir : [Testing and Experimentation Mental Model](<../../01-strategie/experimentation/Expérimentation - Tests et expérimentations.md>))
- Fournir la configuration étape par étape des expériences (Voir : [SOP - Executer une experimentation de campagne](<Strategie - Lancer une expérience de campagne.md>))
- Couvrir les tests au niveau annonce au sein des RSA (Voir : [SOP - Rediger des RSA performantes](<../search/Search - Rédiger des RSA performantes.md>))

---

## Aide-mémoire : types d'expériences

| **Type** | **Ce qu'il teste** | **Répartition du trafic** | **Idéal pour** |
|----------|-------------------|-------------------|--------------|
| **Expérience personnalisée** | Tout paramètre de campagne | Configurable | Stratégies d'enchères, cibles, audiences |
| **Expérience vidéo** | Créatif vidéo ou ciblage | Configurable | Variations d'annonces vidéo |
| **Expérience Performance Max** | Expansion d'URL finale PMax, texte | Configurable | Paramètres d'optimisation PMax |
| **Optimiser les annonces textuelles** | Titres/descriptions RSA | Automatique | Optimisation du texte d'annonce |

---

## 1️⃣ Expériences personnalisées

### Ce qu'elles testent

Les expériences personnalisées permettent le test A/B de paramètres au niveau campagne en répartissant le trafic entre un contrôle (original) et un traitement (variation).

| **Testable** | **Exemples** |
|--------------|--------------|
| Stratégie d'enchères | CPC manuel vs. CPA cible |
| Cibles d'enchères | CPA cible 50 € vs. 40 € |
| Audiences | Ajouter/supprimer des segments d'audience |
| Planification des annonces | Toute la journée vs. heures de bureau |
| Ajustements d'enchères par appareil | Enchères standard vs. modifiées |
| Paramètres de réseau | Search uniquement vs. Search + Partenaires |
| Ciblage géographique | Géographie large vs. restreinte |

### Options de configuration

| **Paramètre** | **Options** | **Recommandation** |
|-------------|-------------|-------------------|
| Répartition du trafic | 10-90% (défaut 50%) | 50/50 pour les résultats les plus rapides |
| Calendrier de synchronisation | Quotidien, Toutes les 12h, Toutes les 6h, Continu | Quotidien pour la plupart des tests |
| Date de fin | Date personnalisée ou en continu | Définissez une date de fin basée sur le volume |
| Métrique d'objectif | Action de conversion primary | Correspondez à votre objectif de campagne |

### Considérations sur la répartition du trafic

| **Répartition** | **Cas d'usage** | **Compromis** |
|-----------|--------------|---------------|
| 50/50 | Significativité statistique la plus rapide | Risque égal pour les deux bras |
| 70/30 | Protéger le contrôle tout en testant | Plus lent à atteindre la significativité |
| 90/10 | Test à risque minimal | Très lent à atteindre la significativité |

> 💡 **50/50 est presque toujours le meilleur choix :** Sauf si vous avez une raison forte de protéger le contrôle, les répartitions égales atteignent la significativité le plus rapidement.

### Paramètres de synchronisation expliqués

| **Paramètre** | **Comportement** | **Quand utiliser** |
|-------------|--------------|-----------------|
| **Continu** | Les changements se synchronisent immédiatement | Mises à jour en temps réel nécessaires |
| **Toutes les 6 heures** | Synchronisation 4x par jour | Itération rapide |
| **Toutes les 12 heures** | Synchronisation 2x par jour | Test standard |
| **Quotidien** | Synchronisation une fois par jour | La plupart des expériences |

> ⚠️ **Ne synchronisez pas pendant le test sauf si nécessaire :** Chaque synchronisation réinitialise l'apprentissage. Complétez la configuration de votre expérience avant le lancement.

---

## 2️⃣ Mécanique de répartition du trafic

### Comment fonctionne la répartition du trafic

| **Aspect** | **Comportement** |
|------------|--------------|
| Méthode de répartition | Attribution par cookie utilisateur |
| Cohérence | Le même utilisateur voit le même bras tout au long du test |
| Géographique | La répartition s'applique à toutes les localisations |
| Appareil | La répartition s'applique à tous les appareils |
| Temporel | La répartition s'applique 24h/24 |

### Paramètres liés à la répartition

| **Paramètre** | **Options** | **Effet** |
|-------------|-------------|-----------|
| **Répartition du trafic Search** | Basée sur cookie ou basée sur recherche | Cookie = niveau utilisateur, Recherche = niveau requête |
| **Activer l'expérience** | On/Off | Démarre/arrête la répartition du trafic |

**Répartition basée sur cookie vs. basée sur recherche :**

| **Type** | **Comportement** | **Idéal pour** |
|----------|--------------|--------------|
| Basée sur cookie | Le même utilisateur voit toujours le même bras | La plupart des expériences (données plus propres) |
| Basée sur recherche | Chaque recherche est assignée aléatoirement | Campagnes de marque à fort volume |

---

## 3️⃣ Exigences statistiques

### Tailles d'échantillon minimales

| **Taille d'effet à détecter** | **Conversions nécessaires par bras** | **Total conversions** |
|-----------------------------------|-------------------------------|----------------------|
| Amélioration de 20%+ | 100-150 | 200-300 |
| Amélioration de 15% | 200-300 | 400-600 |
| Amélioration de 10% | 400-500 | 800-1 000 |
| Amélioration de 5% | 1 500+ | 3 000+ |

> ⚠️ **Détecter de petits effets nécessite un volume massif :** Si votre campagne obtient 100 conversions/mois, vous ne pouvez pas détecter de manière fiable une amélioration de 5%. Ajustez vos attentes en conséquence.

### Niveaux de confiance

| **Confiance** | **Signification** | **Défaut Google Ads** |
|----------------|-------------|------------------------|
| 95% | 5% de chance que le résultat soit aléatoire | ✅ Standard |
| 90% | 10% de chance que le résultat soit aléatoire | Acceptable pour le directionnel |
| 99% | 1% de chance que le résultat soit aléatoire | Très conservateur |

### Exigences de durée

| **Facteur** | **Minimum** | **Justification** |
|------------|-------------|---------------|
| Période d'apprentissage | 2 semaines | Calibration Stratégies d'enchères intelligentes |
| Cycle jour de la semaine | 1 semaine complète | Couvre les 7 jours |
| Cycle business | 1 cycle complet | Le B2B peut nécessiter 4+ semaines |
| Délai de conversion | + votre période de délai | Attendre les conversions attribuées |

**Formule de durée :**
```
Durée du test = MAX(
    2 semaines,
    Temps pour atteindre la taille d'échantillon,
    Cycle business complet
) + Délai de conversion
```

### Significativité statistique dans Google Ads

Google Ads affiche :

| **Métrique** | **Ce qu'elle montre** |
|------------|-------------------|
| Différence de performance | % de changement entre les bras |
| Intervalle de confiance | Plage de la vraie différence probable |
| Significativité statistique | Si la différence est fiable |
| Probabilité de battre la baseline | Probabilité que le traitement > le contrôle |

**Interpréter les résultats :**

| **Résultat** | **Interprétation** | **Action** |
|------------|-------------------|-----------|
| "Statistiquement significatif" + positif | Le traitement est fiablement meilleur | Appliquer le traitement |
| "Statistiquement significatif" + négatif | Le traitement est fiablement pire | Garder le contrôle |
| "Non significatif" | Impossible de distinguer du bruit | Prolonger ou terminer sans gagnant |

---

## 4️⃣ Approfondissement par type d'expérience

### Expériences Performance Max

| **Testable** | **Options** |
|--------------|-------------|
| Expansion d'URL finale | Activée vs. Désactivée |
| Automatisation des assets textuels | Activée vs. Désactivée |
| Assets créés automatiquement | Activés vs. Désactivés |

**Limites des expériences PMax :**

| **Limite** | **Valeur** |
|-----------|-----------|
| Expériences max par campagne | 1 active |
| Campagnes max dans l'expérience | 1 |

### Expériences vidéo

| **Testable** | **Ce que vous comparez** |
|--------------|---------------------|
| Créatif | Différentes annonces vidéo |
| Ciblage | Différentes combinaisons d'audience |
| Enchères | Différentes stratégies d'enchères |

**Métriques des expériences vidéo :**

| **Métrique** | **Ce qu'elle mesure** |
|------------|---------------------|
| Brand Lift | Changement de notoriété de marque basé sur des sondages |
| Conversion Lift | Conversions incrémentales |
| Efficacité des coûts | Comparaison CPV, CPA |

### Variations d'annonces (Search)

| **Testable** | **Ce que vous modifiez** |
|--------------|---------------------|
| Rechercher et remplacer | Substitutions de texte dans les annonces |
| Mettre à jour le texte | Changements spécifiques de titres/descriptions |
| Mettre à jour les URL | Changements d'URL finale ou de chemin d'affichage |

**Limites des variations d'annonces :**

| **Limite** | **Valeur** |
|-----------|-----------|
| Variations par expérience | 1 |
| Campagnes incluses | Multiples (sélectionnables) |
| Ad groups affectés | Tous dans les campagnes sélectionnées |

---

## 5️⃣ Limites et contraintes des expériences

### Limites au niveau compte

| **Limite** | **Valeur** |
|-----------|-----------|
| Expériences actives par compte | 5 |
| Expériences par campagne | 5 sur la durée de vie (incluant les terminées) |
| Campagnes brouillon | Illimitées |

### Support par type de campagne

| **Type de campagne** | **Expériences personnalisées** | **Expériences vidéo** | **Variations d'annonces** |
|-------------------|----------------------|----------------------|-------------------|
| Search | ✅ | ❌ | ✅ |
| Shopping | ✅ | ❌ | ❌ |
| Display | ✅ | ❌ | ❌ |
| Vidéo | ✅ | ✅ | ❌ |
| Demand Gen | ✅ | ❌ | ❌ |
| Performance Max | ✅ (limité) | ❌ | ❌ |
| App | ❌ | ❌ | ❌ |

### Ce que vous ne pouvez pas tester

| **Non testable** | **Solution** |
|-----------------|----------------|
| Paramètres au niveau compte | Créer un compte de test séparé |
| Configuration du suivi des conversions | Analyse pré/post |
| Plusieurs variables à la fois | Tests séquentiels |
| Comparaisons cross-campagnes | Exécuter des expériences séparées |

---

## 6️⃣ Workflow d'expérience

### Avant le lancement

| **Étape** | **Action** |
|----------|-----------|
| 1 | Définir l'hypothèse (ce que vous attendez et pourquoi) |
| 2 | Choisir la métrique principale de succès |
| 3 | Calculer la taille d'échantillon requise |
| 4 | Déterminer la durée du test |
| 5 | Configurer la campagne brouillon avec les changements |
| 6 | Revoir et vérifier les paramètres |

### Pendant l'expérience

| **Règle** | **Justification** |
|----------|---------------|
| Ne changez aucun des deux bras | Maintient une comparaison valide |
| Ne terminez pas en avance (généralement) | La variation aléatoire crée de faux signaux |
| Surveillez les échecs catastrophiques | >30% moins bon peut justifier un arrêt anticipé |
| N'exécutez pas d'autres expériences sur la même campagne | Effets d'interaction |

### Après l'expérience

| **Étape** | **Action** |
|----------|-----------|
| 1 | Attendre la durée complète + délai de conversion |
| 2 | Vérifier la significativité statistique |
| 3 | Revoir les métriques principales ET secondaires |
| 4 | Appliquer le gagnant OU terminer sans changement |
| 5 | Documenter les résultats et apprentissages |

---

## 7️⃣ Configurations courantes

### Test de stratégie d'enchères

| **Paramètre** | **Valeur** |
|-------------|-----------|
| Contrôle | Stratégie d'enchères actuelle |
| Traitement | Nouvelle stratégie d'enchères |
| Répartition du trafic | 50/50 |
| Durée | 4 semaines minimum |
| Métrique principale | CPA ou ROAS |
| Métriques secondaires | Volume de conversions, dépense |

### Test de CPA cible

| **Paramètre** | **Valeur** |
|-------------|-----------|
| Contrôle | CPA cible actuel |
| Traitement | CPA cible plus bas/plus haut |
| Répartition du trafic | 50/50 |
| Durée | 2-4 semaines |
| Métrique principale | CPA |
| Métriques secondaires | Volume de conversions, part d'impressions |

### Test de Landing Page

| **Paramètre** | **Valeur** |
|-------------|-----------|
| Contrôle | Landing Page actuelle |
| Traitement | Nouvelle URL de Landing Page |
| Répartition du trafic | 50/50 |
| Durée | 2-4 semaines |
| Métrique principale | Taux de conversion |
| Métriques secondaires | Taux de rebond (si disponible), CPA |

---

## Guide de décision : quel type d'expérience ?

```
Que testez-vous ?
│
├─ Paramètres de campagne (stratégie d'enchères, cibles, audiences) ?
│   └─ Utilisez une EXPÉRIENCE PERSONNALISÉE
│
├─ Créatif vidéo ou ciblage vidéo ?
│   └─ Utilisez une EXPÉRIENCE VIDÉO
│
├─ Paramètres d'automatisation PMax ?
│   └─ Utilisez une EXPÉRIENCE PMAX
│
├─ Texte d'annonce à travers plusieurs campagnes ?
│   └─ Utilisez les VARIATIONS D'ANNONCES
│
└─ Quelque chose non supporté ?
    └─ Utilisez une ANALYSE PRÉ/POST (documentez soigneusement)
```

---

## Erreurs courantes

| **Erreur** | **Problème** | **Solution** |
|-------------|-------------|---------|
| Terminer le test en avance | La variation aléatoire crée de faux gagnants | Engagez-vous sur la durée à l'avance |
| Répartitions inégales sans raison | Ralentit la significativité | Utilisez 50/50 sauf besoin spécifique |
| Tester des petits effets | N'atteint jamais la significativité | Concentrez-vous sur un impact potentiel de 10%+ |
| Changer la campagne pendant le test | Invalide les résultats | Gelez tous les autres paramètres |
| Ignorer le délai de conversion | Juger des données incomplètes | Ajoutez le temps de délai à la durée |
| Plusieurs expériences simultanées | Effets d'interaction | Une expérience par campagne |
| Pas d'hypothèse documentée | Impossible d'interpréter les résultats | Écrivez l'hypothèse en premier |

---

## Documents liés

| **Document** | **Relation** |
|--------------|------------------|
| [Testing and Experimentation Mental Model](<../../01-strategie/experimentation/Expérimentation - Tests et expérimentations.md>) | Framework : quand et quoi tester |
| [Experiment Quality Checklist](<Strategie - [Review] Qualité des expérimentations.md>) | Validation : vérifications pré-lancement |
| [SOP - Executer une experimentation de campagne](<Strategie - Lancer une expérience de campagne.md>) | Exécution : processus étape par étape |
| [Google Ads Metrics Reference](<../optimisation/Optimisation - Alertes et règles Google Ads.md>) | Référence : définitions des métriques |
| [Bidding Strategy Mental Model](<../encheres/Enchères - Stratégie d'enchères.md>) | Lié : expériences de stratégie d'enchères |
