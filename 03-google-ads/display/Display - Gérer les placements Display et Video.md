# Gérer les placements Display et Video

> **Plateforme :** Google Ads
> **Catégorie :** Display
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Procédure pour auditer, évaluer et exclure les placements sous-performants ou non sûrs pour la marque sur les campagnes Display, Video, Demand Gen et PMax. Couvre les exclusions d'apps mobiles, l'exclusion basée sur la performance, la configuration de sécurité de la marque, la revue spécifique aux placements PMax, l'évaluation des canaux Demand Gen et la gestion continue des listes d'exclusion.

> ❓ **La question clé :** Vos annonces apparaissent-elles sur des placements de qualité, sûrs pour la marque, qui produisent du vrai engagement, ou perdent-elles du budget sur des jeux mobiles, des domaines parked et des sites à trafic bot ?

Chaque campagne Display et Video accumule de mauvais placements dans le temps. Sans gestion active, ces placements consomment du budget sans produire de conversions. Cette SOP fournit le workflow complet de gestion des placements référencé par le cycle d'optimisation mensuel.

---

## Ce que cette SOP ne couvre PAS

Cette SOP ne couvre **pas :**

- Optimiser audiences, créatifs, enchères ou budgets (Voir : [SOP - Cycle d'optimisation campagnes Display & Video](<Display - Cycle d'optimisation Display et Video.md>))
- Couvrir les méthodes de ciblage par contenu comme topics ou mots-clés (Voir : [Référence ciblage de contenu](<Display - Ciblage de contenu.md>))
- Configurer de nouvelles campagnes Display, Video ou Demand Gen à zéro
- Remplacer la configuration de sécurité de la marque au niveau compte faite au lancement

## Quand utiliser cette SOP

| Déclencheur | Fréquence |
|---------|-----------|
| Cycle d'optimisation mensuel (Phase 2) | Mensuelle |
| Après le lancement de nouvelles campagnes Display ou Video | 2 semaines après le lancement, puis mensuel |
| Pic soudain de CPA en Display ou Video | Au besoin |
| Onboarding de compte (compte hérité) | Immédiatement |
| Après activation de nouveaux types de campagne (Demand Gen, PMax) | Dans la première semaine de données |

---

## Avant de commencer

### Prérequis

- Accès au compte Google Ads avec des campagnes Display, Video, Demand Gen ou PMax actives
- 30 jours de données de performance minimum (14 jours acceptable pour une revue post-lancement)
- Listes d'exclusion de placements existantes (le cas échéant)
- Données de conversion backend pour valider la qualité des placements (recommandé)

### Documents de référence (à garder ouverts)

| Document | Utilisé pour |
|----------|----------|
| [Référence performance des placements](<../demand-gen/Demand Gen - Performance.md>) | Seuils de métriques, catégories d'exclusion, guide de décision |
| [Checklist Santé des campagnes Display et Video](<Display - [Review] Santé des campagnes Display et Video.md>) | Pré-check avant la revue de placements |
| [Référence performance Demand Gen](<../demand-gen/Demand Gen - Performance.md>) | Contexte canaux et placements Demand Gen |

### Temps estimé

| Section | Temps |
|---------|------|
| Phase 1️⃣ : Export des données de placements | 10 min |
| Phase 2️⃣ : Exclusions par défaut (apps mobiles, mauvais connus) | 10 min |
| Phase 3️⃣ : Exclusion basée sur la performance | 20 min |
| Phase 4️⃣ : Revue sécurité de la marque | 10 min |
| Phase 5️⃣ : Revue spécifique PMax et Demand Gen | 10 min |
| Phase 6️⃣ : Gestion des listes d'exclusion | 10 min |
| **Total** | **70 min** |

> ⚠️ **Limiter à 90 minutes maximum :** La revue de placements peut tourner en analyse ligne par ligne. Se concentrer sur les placements qui consomment du budget significatif. Un placement avec 10 impressions ne mérite pas d'investigation.

---

## Cadre d'exécution

| Phase | Objectif | Résultat |
|-------|---------|--------|
| **Phase 1️⃣ : Export des données de placements** | Récupérer les rapports de placements sur tous les types de campagne | Données de placements exportées, triées par dépense |
| **Phase 2️⃣ : Exclusions par défaut** | Retirer les catégories de placements mauvais connus | Apps mobiles exclues, domaines connus mauvais exclus |
| **Phase 3️⃣ : Exclusion basée sur la performance** | Retirer les placements qui ne passent pas les seuils | Placements individuels exclus selon les données |
| **Phase 4️⃣ : Revue sécurité de la marque** | Configurer l'adéquation contenu et les catégories sensibles | Paramètres sécurité de la marque vérifiés et appliqués |
| **Phase 5️⃣ : Revue PMax et Demand Gen** | Examiner les données de placements spécifiques au type de campagne | Rapport PMax revu, canaux Demand Gen évalués |
| **Phase 6️⃣ : Gestion des listes d'exclusion** | Consolider, organiser et partager les listes | Listes d'exclusion au niveau compte mises à jour |

---

## Phase 1️⃣ : Export des données de placements (10 min)

### 1.1 Récupérer les rapports de placements pour Display et Video

Toutes les données de placements s'exportent depuis le même endroit :

1. Dans Google Ads, naviguer vers **Insights & rapports > Quand et où les annonces ont été diffusées > Où les annonces ont été diffusées**
2. Régler la plage sur les 30 derniers jours
3. Filtrer par type de campagne (Display, Video) pour exporter séparément
4. Exporter le rapport complet (inclut sites web, chaînes YouTube et placements d'apps)
5. Trier par coût décroissant pour prioriser les placements à forte dépense

### 1.2 Récupérer les données de placements PMax

Les données de placements PMax demandent de sélectionner la campagne d'abord :

1. Sélectionner la campagne PMax dans Google Ads
2. Naviguer vers **Insights & rapports > Quand et où les annonces ont été diffusées > Où les annonces ont été diffusées**
3. Exporter les données (au niveau impression uniquement : pas de clics ni conversions par placement)
4. Pour l'allocation par canal : sélectionner la campagne PMax, puis aller dans **Insights & rapports > Performance des canaux** et exporter

> ⚠️ **PMax fournit uniquement des données d'impressions :** Vous verrez quels placements ont reçu des impressions, mais pas les clics ou conversions par placement. Évaluer les placements PMax sur la sécurité de la marque et la pertinence, pas sur des métriques de performance.

### 1.3 Récupérer les données de placements et canaux Demand Gen

1. Exporter les données de placements depuis **Insights & rapports > Quand et où les annonces ont été diffusées > Où les annonces ont été diffusées** (filtrer sur les campagnes Demand Gen)
2. Pour la performance par canal : ouvrir la campagne Demand Gen et segmenter par **Réseau** pour voir la performance sur YouTube, Discover, Gmail et GDN

---

## Phase 2️⃣ : Exclusions par défaut (10 min)

Appliquer ces exclusions indépendamment des données de performance. Ce sont des catégories à exclure systématiquement.

### 2.1 Exclure les placements d'apps mobiles

Les apps mobiles sont la principale source de gaspillage en Display. Les clics accidentels depuis les apps de jeux, les apps pour enfants et les placements interstitiels génèrent fort volume de clics avec une valeur de conversion proche de zéro.

1. Naviguer vers **Contenu > Exclusions > Catégories d'apps** (niveau compte recommandé)
2. Exclure toutes les catégories d'apps (Jeux, Utilitaires, Divertissement, toutes les autres)
3. Vérifier que les exclusions sont appliquées au niveau compte pour couvrir toutes les campagnes

**Exception :** Si vous lancez une campagne app install, ne pas exclure les catégories pertinentes pour votre cible. Tous les autres types de campagne devraient avoir les apps exclues.

### 2.2 Exclure les patterns de domaines mauvais connus

Examiner les données de placements pour les domaines correspondant à ces patterns et les exclure immédiatement sans attendre les seuils de performance :

| Pattern | Exemple | Pourquoi exclure |
|---------|---------|-------------|
| Domaines parked / sites MFA | `bestdeals123.xyz`, sites avec 90%+ de couverture pub | Pas de vraie audience, trafic bot, impressions gaspillées |
| Domaines aléatoires ou bourrés de mots-clés | `abc123xyz.com`, `bestcheaponlinedealsnow.com` | Arbitrage publicitaire, réseaux de bots, enregistrement programmatique |
| TLDs à risque | `.click`, `.download`, `.bid`, `.win`, `.loan` | Le but du TLD est de pousser à l'action, corrélé avec l'arbitrage publicitaire |

> ↪️ **Patterns complets de qualité de domaine.** Voir [Référence performance des placements](<../demand-gen/Demand Gen - Performance.md>) pour le document complet de risque par TLD et signaux de qualité de domaine.

> 💡 **Construire une blocklist en continu :** Maintenir un fichier ou un doc partagé des mauvais domaines rencontrés au fil du temps. Les ajouter à votre liste d'exclusion au niveau compte à chaque revue.

### 2.3 Vérifier que les exclusions par défaut existantes sont toujours appliquées

1. Naviguer vers Outils > Bibliothèque partagée > Listes d'exclusion de placements
2. Confirmer que toutes les listes d'exclusion créées précédemment sont encore appliquées aux bonnes campagnes
3. Vérifier que les nouvelles campagnes ajoutées depuis la dernière revue ont bien les listes appliquées

### Vérification Phase 2

- [ ] Toutes les catégories d'apps exclues au niveau compte (ou exception confirmée pour les campagnes app install)
- [ ] Catégories d'apps mobiles exclues sur toutes les campagnes hors app install
- [ ] Patterns de domaines mauvais connus revus et exclus
- [ ] Listes d'exclusion existantes vérifiées comme appliquées à toutes les campagnes actuelles

---

## Phase 3️⃣ : Exclusion basée sur la performance (20 min)

Examiner les placements individuels qui passent les filtres d'exclusion par défaut mais échouent aux seuils de performance. Appliquer les seuils minimaux de la [Référence performance des placements](<../demand-gen/Demand Gen - Performance.md>) avant d'agir.

### 3.1 Seuils minimaux de données

Ne pas exclure un placement sauf s'il atteint ces minimums :

| Seuil | Minimum requis | Pourquoi |
|-----------|-----------------|-----|
| Impressions | 1 000+ | Les petits échantillons produisent des métriques peu fiables |
| Clics (pour évaluation CPA/ROAS) | 100+ | Un CPA/ROAS sur moins de 100 clics est statistiquement insignifiant |
| Période | 30+ jours | Les fenêtres courtes ratent les conversions différées |

### 3.2 Évaluation des placements Display

Trier votre rapport de placements Display par coût décroissant. Travailler les 50 premiers par dépense. Pour chaque placement, appliquer les critères de décision :

| Signal | Seuil | Action |
|--------|-----------|--------|
| Fortes impressions, zéro clic | 1 000+ impressions, 0 clic | Exclure (probable trafic bot ou slot d'annonce invisible) |
| CTR anormalement élevé | CTR > 10% | Marquer pour revue manuelle (peut être des clics accidentels, mais vérifier avant d'exclure) |
| CTR élevé, zéro conversion | CTR > 3%, 0 conversion, 100+ clics | Marquer pour revue manuelle (investiguer avant d'exclure) |
| Taux de rebond élevé | Taux de rebond > 90% (si Analytics lié) | Exclure (trafic de faible qualité) |
| CPA très au-dessus de la moyenne | CPA > 3x moyenne campagne avec 100+ clics | Exclure |
| CPA au-dessus de la moyenne | CPA 1,5-3x moyenne campagne | Surveiller, ne pas exclure tout de suite |
| CPA à ou sous la moyenne | CPA dans la cible campagne | Garder, envisager comme placement géré |

### 3.3 Évaluation des placements Video

Trier les placements de chaînes et vidéos YouTube par coût décroissant. Examiner les 30 premiers par dépense.

| Signal | Action |
|--------|--------|
| Contenu pour enfants (sauf si vous ciblez les parents) | Exclure : mauvaise audience, risque de conformité COPPA |
| Chaînes de musique/lyrics avec zéro engagement | Exclure : viewers passifs qui passent ou ignorent les annonces |
| Chaînes de contenu généré ou spam | Exclure |
| Chaîne de moins de 90 jours avec fort volume d'impressions | Marquer : probable content farm ou chaîne spam récemment créée |
| Beaucoup de vidéos, peu d'abonnés (ratio vidéos/abonnés > 50:1) | Marquer : opération de revenu publicitaire, pas une vraie audience |
| Langue du contenu vidéo qui ne matche pas le marché cible | Exclure : décalage d'audience |
| Vidéo marquée "Made for Kids" (sauf si vous ciblez les parents) | Exclure : mauvaise audience, formats publicitaires restreints |
| Commentaires désactivés avec zéro signal d'engagement | Marquer : investiguer la qualité du contenu avant d'exclure |
| Fort taux de visionnage + conversions | Garder, envisager comme placement géré |
| Faible taux de visionnage, forte dépense | Investiguer : décalage annonce-contenu ou mauvaise audience |

Pour une analyse systématique de chaînes et vidéos YouTube à grande échelle, utiliser Google Ads Scripts avec accès YouTube Data API. La revue manuelle est viable pour les 10-20 placements vidéo top par dépense.

> ↪️ **Méthode qualité YouTube :** Voir [Référence performance des placements](<../demand-gen/Demand Gen - Performance.md>) pour le document complet à quatre dimensions.

### 3.4 Appliquer les exclusions au bon niveau

| Type d'exclusion | Appliquer à | Quand utiliser |
|----------------|----------|-------------|
| Mauvais placement universel | Niveau compte (liste d'exclusion partagée) | Domaines parked, sites MFA, contenu non sûr pour la marque |
| Mauvais performeur spécifique à une campagne | Niveau campagne | Le placement performe mal pour une campagne mais peut marcher ailleurs |
| Mauvais performeur spécifique à un ad group | Niveau ad group | Exclusion granulaire quand la performance varie au sein de la campagne |

> ⚠️ **Toujours préférer les listes d'exclusion au niveau compte :** Exclure le même domaine sur 15 campagnes individuelles crée le chaos de maintenance. Utiliser les listes partagées depuis Outils > Bibliothèque partagée.

### Vérification Phase 3

- [ ] Top 50 placements Display par dépense examinés contre les seuils de performance
- [ ] Top 30 placements Video par dépense examinés contre les critères de qualité
- [ ] Liste d'exclusion mise à jour avec les mauvais performeurs nouvellement identifiés
- [ ] Exclusions appliquées au bon niveau (compte, campagne ou ad group)

---

## Phase 4️⃣ : Revue sécurité de la marque (10 min)

### 4.1 Vérifier les paramètres d'adéquation contenu

1. Naviguer vers Admin > Paramètres du compte > Adéquation du contenu (ou Paramètres > Exclusions de contenu au niveau campagne)
2. Vérifier le réglage du type d'inventaire :

| Type d'inventaire | Ce qu'il inclut | Quand utiliser |
|----------------|-----------------|-------------|
| Étendu | Tout le contenu monétisable, y compris sensible | Jamais recommandé |
| Standard | Exclut la plupart du contenu sensible | Par défaut pour la majorité |
| Limité | Uniquement contenu vetté, sûr pour la marque | Marques premium, secteurs régulés |

3. Si réglé sur Étendu, passer à Standard immédiatement
4. Si votre client est dans un secteur régulé ou sensible à la marque, régler sur Limité

### 4.2 Examiner les exclusions de catégories de contenu sensible

Aller dans les exclusions de contenu et s'assurer que les catégories sensibles suivantes sont exclues :

| Catégorie | Exclure ? |
|----------|----------|
| Tragédie et conflit | Oui (toujours) |
| Sujets sociaux sensibles | Oui (toujours) |
| Vulgarité et langage cru | Oui (pour la plupart des marques) |
| Contenu sexuellement suggestif | Oui (toujours) |
| Sensationnel et choquant | Oui (toujours) |
| Sous la ligne de flottaison | Recommandé (faible visibilité) |

### 4.3 Vérifier les exclusions de digital content labels

| Label | Type de contenu | Action |
|-------|-------------|--------|
| DL-G | Tout public | Inclure |
| DL-PG | Conseil parental | Inclure (à revoir pour marques sensibles) |
| DL-T | Contenu adolescent | À examiner selon la marque |
| DL-MA | Public adulte | Exclure (toujours) |
| Non encore labellisé | Contenu non classé | Exclure par sécurité |

### 4.4 Spot-check sécurité de la marque des placements

Examiner les top 10 placements par impressions de vos rapports exportés. Visiter manuellement ou vérifier 3-5 des sites à plus fortes impressions pour valider :

- Le contenu est approprié pour votre marque
- Le site a du vrai contenu éditorial (pas que de la pub)
- Langue et géographie matchent votre marché cible
- Aucune marque concurrente n'est mise en avant

Si un placement échoue à la sécurité de la marque, l'ajouter à la liste d'exclusion au niveau compte.

### Vérification Phase 4

- [ ] Type d'inventaire confirmé en Standard ou Limité (pas Étendu)
- [ ] Catégories sensibles d'adéquation contenu exclues selon le tableau ci-dessus
- [ ] Digital content labels DL-MA et "Non encore labellisé" exclus
- [ ] Top 10 placements par impressions vérifiés pour sécurité de la marque

---

## Phase 5️⃣ : Revue spécifique PMax et Demand Gen (10 min)

### 5.1 Revue de placements PMax

PMax fournit uniquement des données au niveau impression. Vous ne pouvez pas voir les clics ou conversions par placement, et vous ne pouvez pas cibler des placements spécifiques. Se concentrer sur la sécurité de la marque et la pertinence.

1. Ouvrir chaque campagne PMax > onglet Insights > Placements
2. Examiner la liste des sites web, chaînes YouTube et apps qui ont reçu des impressions
3. Marquer tout placement qui :

| Problème | Action |
|-------|--------|
| Site web ou chaîne non sûr pour la marque | Ajouter à la liste d'exclusion au niveau compte |
| Placement d'app mobile (si les apps ne sont pas voulues) | Vérifier que les exclusions d'apps sont appliquées au niveau compte |
| Pattern de domaine suspect (caractères aléatoires, etc.) | Ajouter à la liste d'exclusion au niveau compte |

4. Vérifier l'allocation des canaux PMax dans l'onglet Insights pour comprendre où va la dépense (Search, Shopping, Display, Video, Gmail, Discover)

> 💡 **Les exclusions PMax sont uniquement au niveau compte :** Vous ne pouvez pas exclure de placements au niveau campagne PMax. Toute exclusion ajoutée à la liste partagée au niveau compte s'appliquera aussi à PMax.

> ⚠️ **La revue manuelle seule est insuffisante pour PMax à grande échelle.** PMax génère bien plus de données de placements qu'un humain ne peut en revoir ligne par ligne. Pour les comptes avec 3+ campagnes PMax, utiliser Google Ads Scripts pour extraire les données via `performance_max_placement_view` et marquer les domaines correspondant aux patterns de risque TLD et d'anatomie de domaine de la [Référence performance des placements](<../demand-gen/Demand Gen - Performance.md>). Réserver la revue manuelle aux placements marqués.

### 5.2 Revue de placements Demand Gen

Demand Gen sert sur YouTube, Discover, Gmail et GDN. Vous pouvez sélectionner des canaux spécifiques au niveau ad group.

1. Examiner les données de performance au niveau canal (segmenter la campagne Demand Gen par **Réseau**) :

| Canal | Quoi vérifier |
|---------|---------------|
| YouTube | Taux de visionnage, engagement, qualité de la chaîne |
| Discover | CTR, taux de conversion, pertinence d'audience |
| Gmail | Proxy de taux d'ouverture (CTR), taux de conversion |
| GDN | Qualité de placement (mêmes critères que Display) |

2. Si un canal consomme un budget disproportionné avec mauvaise performance, créer des ad groups séparés avec sélections de canal spécifiques pour contrôler l'allocation (Voir : [SOP - Lancer une campagne Demand Gen](<../demand-gen/Demand Gen - Lancer une campagne.md>), Phase 2.6)

3. Appliquer les mêmes listes d'exclusion au niveau compte pour couvrir les placements Demand Gen
4. Examiner les placements GDN qui apparaissent dans le reporting Demand Gen et exclure les mauvais performeurs

> ↪️ **Benchmarks (analyse comparative) et attribution Demand Gen :** Voir : [Référence performance Demand Gen](<../demand-gen/Demand Gen - Performance.md>)

---

## Phase 6️⃣ : Gestion des listes d'exclusion (10 min)

### 6.1 Consolider les listes d'exclusion

1. Naviguer vers Outils > Bibliothèque partagée > Listes d'exclusion de placements
2. Examiner toutes les listes existantes :

| Type de liste | Convention de nommage | Contenu |
|-----------|------------------|----------|
| Sécurité de la marque | `Brand Safety - [Nom du compte]` | Placements universellement non sûrs |
| Apps mobiles | `Mobile App Exclusions` | Toutes les catégories d'apps |
| Basée performance | `Low Performers - [Mois Année]` | Placements qui n'atteignent pas les seuils |
| Mauvais connus | `Known Bad Domains` | Sites MFA, domaines parked, domaines à trafic bot |

3. Fusionner les listes qui se recoupent pour réduire l'encombrement. Garder les listes sous la limite Google Ads de 65 000 placements par liste.

### 6.2 Appliquer les listes à toutes les campagnes

1. Vérifier que chaque campagne Display, Video et Demand Gen active a toutes les listes pertinentes appliquées
2. Vérifier que les campagnes lancées depuis la dernière revue ont les listes appliquées

### 6.3 Documenter les changements

Enregistrer ce qui a été fait dans cette session :

| Item | Valeur |
|------|-------|
| Date de la revue | [Date du jour] |
| Placements examinés | [Nombre] |
| Nouvelles exclusions ajoutées | [Nombre] |
| Campagnes affectées | [Liste] |
| Listes mises à jour | [Noms de listes] |
| Prochaine date de revue | [Date, typiquement le mois suivant] |

Comparer les conclusions du mois aux mois précédents. Suivre mois après mois :

| Métrique | Ce que ça montre | Tendance préoccupante |
|--------|--------------|-----------------|
| Placements signalés au total | Volume de problèmes de qualité | Hausse régulière mois après mois |
| % d'impressions venant de TLDs à faible barrière | Proportion d'extensions risquées | En hausse sans nouvelles campagnes |
| Nouvelles exclusions ajoutées par cycle | Rythme d'apparition de nouveaux mauvais placements | Accélération malgré une gestion active |

Si une tendance s'aggrave 3+ mois consécutifs, investiguer le ciblage et les paramètres d'automatisation qui peuvent provoquer la dégradation.

### 6.4 Patterns d'exclusion automatisés

Pour les comptes avec 3+ campagnes ou 5 000 €+/mois de dépense Display/Video, utiliser Google Ads Scripts pour le monitoring automatique des placements. Pour les comptes plus petits, la revue manuelle suffit. Patterns de scripts efficaces :

| Pattern de script | Ce qu'il fait | Seuil |
|----------------|-------------|-----------|
| Exclusion zéro-clic | Marque les placements avec 1 000+ impressions et 0 clic | Scan quotidien |
| Marqueur CTR élevé | Marque les placements avec CTR > 10% pour revue manuelle | Scan hebdomadaire |
| Exclusion basée CPA | Marque les placements avec CPA > 3x moyenne et 100+ clics | Scan hebdomadaire |
| Matching de pattern de domaine | Marque les domaines correspondant aux patterns d'URL suspects | À chaque exécution |
| Analyse de concentration TLD | Agrège dépense/conversions par TLD, marque les clusters TLD à zéro conversion | Scan hebdomadaire |
| Score d'anatomie de domaine | Marque les domaines correspondant à 2+ patterns structurels ou d'intention selon la Référence | À chaque exécution |
| Autorité de chaîne YouTube | Marque les chaînes avec âge, pattern d'upload ou ratio d'abonnés suspects | Scan hebdomadaire |

> ⚠️ **Toujours examiner avant d'exclure en masse :** Les scripts doivent marquer pour revue, pas auto-exclure sans vérification humaine. Un nouveau placement de qualité peut afficher initialement des métriques faibles avant d'accumuler assez de données.

---

## Validation et critères de complétion

Cette SOP est terminée quand :

- [ ] Rapports de placements exportés pour toutes les campagnes Display, Video, Demand Gen et PMax actives
- [ ] Placements d'apps mobiles exclus sur toutes les campagnes hors app install
- [ ] Domaines mauvais connus (parked, MFA, patterns suspects) exclus
- [ ] Top 50 placements Display par dépense examinés contre les seuils de performance
- [ ] Top 30 placements Video par dépense examinés contre les critères de qualité
- [ ] Adéquation contenu réglée sur Standard ou Limité (jamais Étendu)
- [ ] Catégories de contenu sensible exclues
- [ ] Digital content labels examinés (DL-MA et non labellisé exclus)
- [ ] Rapport de placements PMax examiné pour les problèmes de sécurité de la marque
- [ ] Performance par canal Demand Gen examinée
- [ ] Listes d'exclusion au niveau compte mises à jour et appliquées à toutes les campagnes
- [ ] Changements documentés avec date, comptes et prochaine date de revue

---

## Passerelle de sortie

| Délai | Action |
|-----------|--------|
| Le jour même | Appliquer toutes les exclusions identifiées dans cette revue |
| Cette semaine | Configurer ou mettre à jour les scripts d'exclusion automatisés (le cas échéant) |
| Mois prochain | Relancer cette SOP dans le cadre du cycle d'optimisation mensuel |

**Si des problèmes significatifs sont trouvés :**

| Problème | Rediriger vers |
|-------|----------|
| Les campagnes diffusent encore sur des placements exclus | Vérifier que les listes sont appliquées au bon niveau, vérifier les overrides au niveau campagne |
| PMax dépense fortement sur Display/Video avec ROAS faible | Examiner la structure des asset groups PMax et les signaux d'audience |
| Placements GDN Demand Gen constamment mauvais | Créer des ad groups par canal ou ajuster le mix créatif |
| Violations de sécurité de la marque sur des placements à forte visibilité | Escalader au client, resserrer sur Limité |
| Mauvais placements récurrents chaque mois | Investiguer si le ciblage optimisé ou l'expansion d'audience est activé |

---

## Documents liés

| Document | Type | Relation |
|----------|------|--------------|
| [Référence performance des placements](<../demand-gen/Demand Gen - Performance.md>) | Référence | Seuils de métriques, catégories d'exclusion, guide de décision |
| [Checklist Santé des campagnes Display et Video](<Display - [Review] Santé des campagnes Display et Video.md>) | Checklist | Pré-check avant la revue de placements |
| [SOP - Cycle d'optimisation campagnes Display & Video](<Display - Cycle d'optimisation Display et Video.md>) | SOP | SOP parente (cette SOP est la Phase 2 en détail) |
| [Référence performance Demand Gen](<../demand-gen/Demand Gen - Performance.md>) | Référence | Benchmarks canaux Demand Gen et attribution |
| [Référence ciblage de contenu](<Display - Ciblage de contenu.md>) | Référence | Ciblage par topics, placements et exclusions de contenu |
| [Structure de campagne upper funnel](<../strategie/Strategie - Structure de campagne haut de tunnel.md>) | Modèle Mental | Contexte structurel d'où s'inscrivent les placements |

---

## Erreurs fréquentes

| Erreur | Pourquoi ça arrive | Comment l'éviter |
|---------|----------------|--------------|
| Sauter l'exclusion d'apps mobiles | "Le défaut doit aller" | Les apps ne vont jamais par défaut. Exclure toutes les catégories d'apps dès le départ. |
| Exclure des placements avec données insuffisantes | Réagir à 2 jours de données sur un nouveau placement | Imposer des seuils minimaux : 1 000 impressions ou 100 clics avant d'agir |
| Examiner uniquement le top 10 | "Le reste est petit" | Travailler les top 50 par dépense. Des dizaines de petits mauvais placements s'additionnent. |
| Ne pas appliquer les listes aux nouvelles campagnes | Les nouvelles campagnes lancent sans hériter des listes au niveau compte | Vérifier l'application de listes à chaque création de campagne |
| Laisser le type d'inventaire sur Étendu | Défaut non changé après création | Régler Standard ou Limité dans chaque lancement de campagne |
| Revue ponctuelle au lieu de mensuelle | "J'ai nettoyé les placements le trimestre dernier" | De nouveaux mauvais placements apparaissent en permanence. Les revues mensuelles ne sont pas négociables. |
| Exclure des placements PMax au niveau campagne | Tenter d'appliquer des exclusions que PMax ne supporte pas | PMax n'accepte que les exclusions au niveau compte |
| Faire confiance aux scripts automatisés sans revue | Le script exclut prématurément un nouveau placement premium | Les scripts marquent, les humains décident. Toujours examiner avant les exclusions en masse. |
