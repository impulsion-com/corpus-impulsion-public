# Cycle d'optimisation PMax e-commerce

> **Plateforme :** Google Ads
> **Catégorie :** Pmax
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Cette SOP exécute le cycle d'optimisation des campagnes Performance Max e-commerce (à la fois Full Assets et Feed-Only). Elle couvre les termes de recherche, les mots-clés à exclure, la performance des composants, l'allocation par canal, les signaux d'audience, la défense de marque, la revue structurelle, la santé du flux de produits et les emplacements.

> ❓ **La question clé :** Que dois-je vérifier, à quelle fréquence et dans quel ordre pour qu'une campagne PMax e-commerce reste performante ?

**Le principe fondamental : parfois, moins c'est mieux.** PMax a besoin de temps pour apprendre. La sur-optimisation détruit la capacité de l'algorithme à trouver des schémas. Faites des changements réfléchis, puis attendez les données. Respectez les périodes d'apprentissage de 4-6 semaines après tout changement significatif.

> 💡 **Full Assets vs Feed-Only :** cette SOP gère les deux. Les campagnes Feed-Only sautent la performance des composants (Phase 4) et les signaux d'audience (Phase 6), puisque le flux de produits est l'unique entrée créative et de ciblage. Les sections dont les consignes diffèrent selon le type sont étiquetées.

---

## Ce que cette SOP ne couvre PAS

Cette SOP ne couvre **pas :**

- Lancer de nouvelles campagnes PMax (Voir : [SOP - Lancer une campagne PMax complete e-commerce](<Pmax - Lancer une campagne PMax Full Assets e-commerce.md>) ou [SOP - Lancer une campagne PMax feed-only](<Pmax - Lancer une campagne PMax Feed-Only.md>))
- Configurer les flux de produits (Voir : [SOP - Configurer et optimiser le flux produits](<../flux-produit/Flux Produit - Configurer et optimiser le feed produit.md>))
- Optimiser PMax pour le lead gen/SaaS (Voir : [SOP - Cycle d'optimisation PMax lead gen/SaaS](<Pmax - Cycle d'optimisation PMax Lead Gen-SaaS.md>))
- Décider si PMax est le bon type de campagne (Voir : [PMax Configuration Guidelines](<Pmax - Configuration PMax.md>))
- Remplacer les revues de performance générales au niveau du compte (Voir : [SOP - Revue de performance hebdomadaire](<../../01-strategie/reporting/Reporting - Revue de performance hebdomadaire.md>))

## Quand utiliser cette SOP

**À exécuter quand :** la campagne PMax e-commerce est sortie de l'apprentissage (4+ semaines après le lancement), compte 30+ conversions/mois, et au moins 2 semaines se sont écoulées depuis tout changement structurel.

**NE PAS exécuter quand :** la campagne est en période d'apprentissage, a été lancée il y a moins de 4 semaines, ou vous avez effectué des changements structurels (division de groupe de composants, changement de stratégie d'enchères) il y a moins de 2 semaines.

---

## Avant de commencer

### Cadence d'optimisation

| Phase | Cadence | Pourquoi |
|-------|---------|-----|
| 1. Vérification de santé | Chaque cycle | Repère d'abord les fondamentaux cassés |
| 2. Revue des termes de recherche | Hebdomadaire | La dérive des requêtes va vite |
| 3. Gestion des mots-clés à exclure | Hebdomadaire | Découle directement de la revue des termes de recherche |
| 4. Performance des composants (Full Assets uniquement) | Bi-mensuelle | Les composants ont besoin de 2+ semaines pour donner des signaux exploitables |
| 5. Allocation par canal | Mensuelle | Les évolutions de canal sont graduelles |
| 6. Signaux d'audience (Full Assets uniquement) | Mensuelle | Les changements de signal mettent 4+ semaines à montrer leur impact |
| 7. Défense de marque | Mensuelle | Les schémas de cannibalisation de marque sont stables d'une semaine à l'autre |
| 8. Revue structurelle | Mensuelle | Les changements structurels déclenchent des périodes d'apprentissage |
| 9. Revue du flux | Mensuelle | Les problèmes de flux sont stables ou introduits par les mises à jour du flux |
| 10. Revue des emplacements | Mensuelle | Les schémas d'emplacements émergent sur plusieurs semaines |

**Temps total :** cycle hebdomadaire (Phases 1-3) : ~30 min. Bi-mensuel, Full Assets (Phases 1-4) : ~45 min. Mensuel, Full Assets (toutes les phases) : ~110 min. Mensuel, Feed-Only (sans 4, 6) : ~85 min.

### Documents de référence (à garder ouverts)

| Document | Utilisé pour |
|----------|----------|
| [PMax Campaign Health Checklist](<Pmax - [Review] Santé des campagnes PMax.md>) | Phase 1 |
| [PMax Configuration Guidelines](<Pmax - Configuration PMax.md>) | Phase 5, 8 |
| [PMax Asset Group Strategy Reference](<Pmax - Stratégie des asset groups PMax.md>) | Phase 8 |
| [Brand Separation Reference](<../search/Search - Séparation de marque.md>) | Phase 7 |
| [Product Feed Optimization Guidelines](<../flux-produit/Flux Produit - Optimisation du flux produits.md>) | Phase 9 |
| [Shopping Product Performance Reference](<../shopping/Shopping - Performance produit Shopping.md>) | Phase 9 |

---

## Phase 1️⃣: Vérification de santé (chaque cycle, 5 min)

1. Déroulez la [PMax Campaign Health Checklist](<Pmax - [Review] Santé des campagnes PMax.md>)
2. Vérifiez le statut de la campagne, l'utilisation du budget, le suivi des conversions
3. Confirmez que la campagne n'est **pas** en période d'apprentissage

| Déclencheur | Durée d'apprentissage |
|---------|-------------------|
| Nouvelle campagne | 4-6 semaines |
| Changement de stratégie d'enchères | 2-4 semaines |
| Changement de budget majeur (>20 %) | 1-2 semaines |
| Groupe de composants ajouté/supprimé | 1-2 semaines |
| Refonte des signaux d'audience | 2-3 semaines |

> ⚠️ **Si en période d'apprentissage, ARRÊTEZ.** Ne procédez pas aux phases d'optimisation. Notez la date de fin de la période d'apprentissage et revenez à ce moment-là. Les changements pendant l'apprentissage remettent le compteur à zéro et gaspillent des données.

---

## Phase 2️⃣: Revue des termes de recherche (hebdomadaire, 15 min)

Les rapports de termes de recherche PMax fonctionnent désormais comme ceux des campagnes Search : entièrement visibles, avec les données d'impressions, de clics et de conversions au niveau de la requête.

1. Accédez à la campagne PMax > **Insights and reports** > **Search terms**
2. Réglez la plage de dates sur les 7 derniers jours, triez par coût (le plus élevé en premier)
3. Passez en revue les 50-100 principales requêtes et catégorisez :

| Catégorie | Critères | Action |
|----------|----------|--------|
| **Convertit, pertinent** | Conversions à un ROAS acceptable | Aucune action |
| **Ne convertit pas, forte dépense** | A dépensé 3x l'équivalent du CPA cible sans aucune conversion | Ajouter à la liste de mots-clés à exclure |
| **Trafic non pertinent** | Requête sans rapport avec les produits | Ajouter à la liste de mots-clés à exclure |
| **Requêtes de marque** | Contient le nom de votre marque | À noter pour la Phase 7 |
| **Requêtes concurrents** | Contient des noms de marques concurrentes | Évaluer : convertit ou gaspille ? |
| **Informationnel à faible intention** | « what is », « how to », « free » | Exclure, sauf si une intention de haut du tunnel est recherchée |

4. Vérifiez la répartition marque vs. non-marque : la marque devrait représenter <30 % des impressions. Si la marque domine, votre reporting PMax est gonflé par des victoires faciles.

> ↪️ **Pour une gestion détaillée des termes de recherche :** voir [SOP - Gerer les termes de recherche PMax et la defense de marque](<Pmax - Gérer les termes de recherche PMax et la défense de marque.md>).

---

## Phase 3️⃣: Gestion des mots-clés à exclure (hebdomadaire, 10 min)

PMax prend en charge les listes de mots-clés à exclure liées directement aux campagnes. Utilisez les listes partagées comme vous gérez les exclusions dans Search.

1. Ouvrez **Tools** > **Shared library** > **Negative keyword lists**
2. Ajoutez les termes d'exclusion identifiés en Phase 2
3. Confirmez que la liste est liée à la campagne PMax
4. Pour les campagnes à volume suffisant, lancez une analyse N-gram sur les exports de termes de recherche à 30 jours pour identifier à grande échelle les schémas qui gaspillent

> ↪️ **Pour le workflow N-gram complet :** voir [SOP - Executer une analyse N-gram](<../search/Search - Exécuter une analyse N-gram.md>).

5. Validez : aucun mot-clé à exclure conflictuel ne bloque de requêtes performantes, listes organisées par catégorie (termes non pertinents, concurrents, termes de marque)

---

## Phase 4️⃣: Performance des composants (Full Assets uniquement, bi-mensuel, 15 min)

> ⚠️ **Campagnes Feed-Only : sautez cette phase.** Les campagnes Feed-Only n'ont aucun composant créatif à optimiser. La performance au niveau produit est examinée en Phase 9.

PMax fournit des données de performance au niveau du composant : impressions, clics et conversions par composant individuel. Utilisez ces métriques réelles. **Ignorez l'Ad Strength (efficacité de l'annonce), ce n'est pas un signal d'optimisation utile.**

1. Accédez à la campagne PMax > groupe de composants > onglet **Assets**
2. Examinez les colonnes de performance : impressions, clics, CTR, conversions, taux de conversion
3. Évaluez chaque type de composant (titres, descriptions, images, vidéos) :

| Palier | Critères | Action |
|------|----------|--------|
| **Solide** | CTR et taux de conversion au-dessus de la moyenne | Conserver |
| **Correct** | Performance moyenne, impressions suffisantes | Surveiller |
| **Sous-performant** | Sous la moyenne après 1 000+ impressions | Remplacer |
| **Manque de données** | <500 impressions après 2+ semaines | Vérifier le statut d'approbation |
| **Zéro conversion** | 1 000+ impressions sans aucune conversion | Remplacer immédiatement |

4. Remplacez 1-2 composants les plus faibles par type par des remplaçants qui testent un **angle différent**, pas de simples variations mineures
5. Vérifiez la présence de vidéos générées automatiquement (Google les crée à partir de vos images). Désactivez-les si vous avez les vôtres.

> ⚠️ **Remplacez un ou deux composants à la fois.** Échanger tous les composants simultanément détruit votre capacité à mesurer ce qui a amélioré les résultats.

> ↪️ **Fondation méthodologique :** l'optimisation des composants PMax suit la même méthode Templatize, Aggregate, Diagnose, Iterate que le test RSA. Voir [SOP - Test RSA avec la boucle d'iteration](<../search/Search - Test RSA avec la boucle d'itération.md>) pour la méthodologie complète. Pour la coordination de l'expérimentation créative multi-format, voir [SOP - Executer un cycle de test creative](<../creatives/Creatives - Cycle de test créatif.md>).

---

## Phase 5️⃣: Allocation par canal (mensuel, 10 min)

PMax répartit la dépense sur Search, Shopping, Display, Video, Gmail et Discover. Les données au niveau du canal sont disponibles dans l'interface et via l'API.

1. Accédez à la campagne PMax > **Insights** > **Campaign insights** pour la répartition par canal
2. Comparez aux fourchettes saines :

**Full Assets :**

| Canal | Fourchette saine | Signaler si... |
|---------|--------------|------------|
| Shopping | 40-70 % | En dessous de 30 % |
| Search | 15-35 % | En dessous de 10 % ou au-dessus de 50 % |
| Display | 5-15 % | Au-dessus de 25 % avec peu de conversions |
| Video | 5-15 % | Au-dessus de 20 % sans composant vidéo |
| Gmail/Discover | 2-10 % | Au-dessus de 15 % avec un faible engagement |

**Feed-Only :**

| Canal | Attendu | Signaler si... |
|---------|----------|------------|
| Shopping | 85 %+ | En dessous de 70 % (a probablement des composants créatifs ajoutés par erreur) |
| Autres canaux | <15 % au total | Au-dessus de 15 % de dépense cumulée |

3. Diagnostiquez les évolutions inattendues :
   - Chute de Shopping : vérifiez le flux/Merchant Center, les refus de produits
   - Pic sur Display : examinez les emplacements (Phase 10)
   - Pic sur Video sans composant vidéo : désactivez la vidéo générée automatiquement
   - Search anormalement élevé : vérifiez la cannibalisation de marque (Phase 7)
   - Feed-Only qui dépense hors Shopping : vérifiez qu'aucun composant créatif n'a été ajouté

---

## Phase 6️⃣: Signaux d'audience (Full Assets uniquement, mensuel, 10 min)

> ⚠️ **Campagnes Feed-Only : sautez cette phase.** Le flux de produits est le ciblage. Ajouter des signaux d'audience pousse Google à s'étendre au-delà de Shopping.

1. Accédez au groupe de composants > **Audience signals**
2. Vérifiez quels signaux génèrent des conversions, comparez aux moyennes de la campagne
3. Mettez à jour les segments :

| Type de signal | Action de revue |
|-------------|---------------|
| **Customer Match** | Rafraîchir avec les dernières données d'acheteurs (trimestriel minimum) |
| **Visiteurs du site** | Vérifier que les listes se remplissent correctement |
| **Clients à forte valeur** | Mettre à jour avec les dernières données d'achat |
| **Abandons de panier** | Vérifier que l'audience est active et en croissance |
| **Segments personnalisés** | Ajouter de nouvelles URL de concurrents ou des termes de recherche produit |
| **Audiences sur le marché** | Ajouter ou retirer selon les données de conversion |

4. Retirez les signaux qui restent constamment en dessous des moyennes de la campagne après 4+ semaines. Ajoutez des signaux basés sur les schémas de conversion des campagnes Search ou Shopping.

---

## Phase 7️⃣: Défense de marque (mensuel, 10 min)

1. Examinez les données de termes de recherche de la Phase 2 pour les requêtes de marque
2. Recoupez avec la performance de marque des campagnes Search
3. Recherchez les signaux de cannibalisation :

| Signal | Signification |
|--------|---------|
| CPC de marque dans PMax supérieur à Search | PMax surenchérit sur la marque |
| Baisse du volume de la campagne de marque Search | PMax cannibalise le trafic de marque de Search |
| Les requêtes de marque génèrent la majorité des conversions PMax | Reporting gonflé par des victoires de marque faciles |

4. Accédez aux paramètres de la campagne > **Brand exclusions**, vérifiez que votre marque et toutes ses variantes sont exclues
5. Ajoutez les nouvelles fautes d'orthographe apparues dans les termes de recherche

> ↪️ **Pour la stratégie complète de séparation de marque :** voir [Brand Separation Reference](<../search/Search - Séparation de marque.md>) et [SOP - Gerer les termes de recherche PMax et la defense de marque](<Pmax - Gérer les termes de recherche PMax et la défense de marque.md>).

---

## Phase 8️⃣: Revue structurelle (mensuel, 15 min)

### 8.1 Revue des groupes de composants et des listing groups

1. Examinez l'organisation des groupes de composants au regard de ces seuils :

| Vérification | Action |
|-------|--------|
| Groupes avec <30 conversions/mois | Envisager la consolidation |
| Groupes avec >200 conversions/mois | Envisager une division pour un contrôle plus fin |
| Groupes mélangeant des catégories de produits sans rapport | Diviser en groupes cohérents |
| Listing groups qui se chevauchent | Éliminer pour prévenir la concurrence interne |

2. **Diviser** quand : le volume le permet (100+ conversions/mois), des catégories de produits distinctes existent, des produits différents nécessitent des messages différents
3. **Consolider** quand : les groupes ont <30 conversions/mois, ciblent des audiences similaires, ou un groupe n'apporte aucune valeur incrémentale

### 8.2 Revue de la segmentation basée sur la performance

Si vous utilisez une segmentation basée sur la performance (hero/sidekick/villain/zombie via ProductHero ou similaire) :

1. Vérifiez la distribution des paliers pour des changements inattendus
2. Vérifiez que chaque segment de campagne dispose d'un volume de conversions suffisant (30+ par mois)
3. Confirmez que tous les segments utilisent le même ROAS cible pour laisser les produits circuler naturellement entre les paliers

> 💡 **Tous les comptes e-commerce n'utilisent pas la segmentation basée sur la performance.** Votre revue structurelle doit correspondre à votre stratégie de segmentation réelle. Voir [Feed Segmentation Catalog](<../flux-produit/Flux Produit - Tactiques de segmentation.md>) pour des approches alternatives et [Product Feed Segmentation Mental Model](<../flux-produit/Flux Produit - Choisir une segmentation.md>) pour la méthode de décision.

> ⚠️ **Les changements structurels déclenchent des périodes d'apprentissage.** Un changement structurel maximum par mois, puis attendez 4 semaines.

> ↪️ **Pour la stratégie des groupes de composants :** voir [PMax Asset Group Strategy Reference](<Pmax - Stratégie des asset groups PMax.md>).

---

## Phase 9️⃣: Revue du flux (mensuel, 10 min)

1. Vérifiez la couverture des produits dans Merchant Center : taux d'approbation >95 %, prix et disponibilité alignés sur le site
2. Examinez la performance des listing groups (campagne > groupe de composants > **Listing groups**, triez par coût) :

| Performance | Action |
|-------------|--------|
| Convertit au ROAS cible | Maintenir |
| Faible volume, ROAS acceptable | Surveiller |
| Dépense sans convertir | Exclure ou déplacer dans un groupe séparé |
| Zéro impression | Vérifier la qualité du flux : titres, images, GTIN |

3. Contrôlez ponctuellement la qualité du flux : titres riches en mots-clés, images de haute qualité, catégorisation correcte, labels personnalisés pour la segmentation
4. Examinez le CPA/ROAS au niveau produit pour identifier quels produits génèrent des conversions vs. drainent le budget

> ↪️ **Pour l'optimisation du flux :** voir [SOP - Configurer et optimiser le flux produits](<../flux-produit/Flux Produit - Configurer et optimiser le feed produit.md>).

---

## Phase 🔟: Revue des emplacements (mensuel, 10 min)

PMax fournit des données d'emplacement au niveau de l'impression.

1. Accédez à **Insights and reports** > **When and where ads showed** > **Placements**, triez par impressions
2. Signalez les emplacements suspects :

| Signal d'alerte | Action |
|----------|--------|
| Emplacements d'applications mobiles sans aucune conversion | Exclure |
| Domaines de fermes de contenu avec beaucoup d'impressions | Exclure |
| Chaînes YouTube non pertinentes | Exclure |
| Tout emplacement isolé avec >5 % de la dépense et zéro conversion | Exclure |

3. Appliquez les exclusions via **Tools** > **Content suitability** > **Placement exclusions**

> ⚠️ **Les exclusions d'emplacements sont au niveau du compte.** Elles suppriment les emplacements de toutes les campagnes. Vérifiez que l'emplacement n'est souhaité nulle part avant de l'exclure.

---

## Validation et critères de complétion

Cette SOP est terminée quand :

- [ ] Vérification de santé passée, aucun bloqueur
- [ ] Termes de recherche examinés, candidats à l'exclusion identifiés
- [ ] Listes de mots-clés à exclure mises à jour et liées
- [ ] Performance des composants examinée, sous-performants signalés (Full Assets, bi-mensuel)
- [ ] Allocation par canal évaluée (mensuel)
- [ ] Signaux d'audience examinés (Full Assets, mensuel)
- [ ] Défense de marque vérifiée (mensuel)
- [ ] Opportunités structurelles évaluées (mensuel)
- [ ] Santé du flux vérifiée (mensuel)
- [ ] Emplacements examinés (mensuel)
- [ ] Actions documentées avec priorité et échéances
- [ ] Date du prochain cycle planifiée

---

## Passerelle de sortie

| Délai | Action |
|-----------|--------|
| Le jour même | Exécuter les correctifs prioritaires (exclusions, remplacements de composants) |
| Cette semaine | Terminer les actions restantes |
| Prochain cycle hebdomadaire | Phases 1-3 |
| Prochain cycle bi-mensuel | Phases 1-4 (Full Assets) |
| Prochain cycle mensuel | Toutes les phases |

**Si des problèmes nécessitent une investigation plus poussée :**

| Problème | Rediriger vers |
|-------|----------|
| Problèmes de qualité des termes de recherche | [SOP - Gerer les termes de recherche PMax et la defense de marque](<Pmax - Gérer les termes de recherche PMax et la défense de marque.md>) |
| Performance des composants en baisse | [SOP - Executer un cycle de test creative](<../creatives/Creatives - Cycle de test créatif.md>) (Phase 2.2 pour PMax) |
| Cannibalisation de marque | [Brand Separation Reference](<../search/Search - Séparation de marque.md>) |
| Problèmes de qualité du flux | [SOP - Configurer et optimiser le flux produits](<../flux-produit/Flux Produit - Configurer et optimiser le feed produit.md>) |
| Question sur le type de campagne | [PMax Configuration Guidelines](<Pmax - Configuration PMax.md>) |
| Besoin de basculer entre Feed-Only et Full Assets | [SOP - Lancer une campagne PMax complete e-commerce](<Pmax - Lancer une campagne PMax Full Assets e-commerce.md>) ou [SOP - Lancer une campagne PMax feed-only](<Pmax - Lancer une campagne PMax Feed-Only.md>) |

---

## Erreurs fréquentes

| Erreur | Pourquoi ça arrive | Comment l'éviter |
|---------|----------------|--------------|
| Optimiser pendant l'apprentissage | Impatience après des changements | Vérifier d'abord le statut d'apprentissage en Phase 1 |
| Remplacer tous les composants d'un coup | Vouloir « tout corriger » | Max 1-2 remplacements par type par cycle |
| Ignorer les termes de recherche | « PMax gère ça automatiquement » | La revue hebdomadaire est non négociable |
| Changements structurels chaque semaine | Sur-optimisation | Mensuel maximum, puis attendre 4 semaines |
| Ajouter des composants aux campagnes Feed-Only | Croire que plus de composants = mieux | Feed-Only signifie zéro composant. Tout élément créatif la fait basculer vers un comportement Full Assets. |
| Ignorer la qualité du flux | « Le flux, on le règle et on l'oublie » | Les revues mensuelles du flux repèrent les refus et les opportunités d'optimisation |
| Aucune documentation entre les cycles | Semble inutile | La continuité capte des tendances que vous manqueriez |

---

## Procédures liées

| SOP | Relation |
|-----|--------------|
| [SOP - Lancer une campagne PMax complete e-commerce](<Pmax - Lancer une campagne PMax Full Assets e-commerce.md>) | Amont (configuration Full Assets) |
| [SOP - Lancer une campagne PMax feed-only](<Pmax - Lancer une campagne PMax Feed-Only.md>) | Amont (configuration Feed-Only) |
| [SOP - Gerer les termes de recherche PMax et la defense de marque](<Pmax - Gérer les termes de recherche PMax et la défense de marque.md>) | Approfondissement des Phases 2, 3, 7 |
| [SOP - Executer un cycle de test creative](<../creatives/Creatives - Cycle de test créatif.md>) | Coordination de l'expérimentation créative multi-format |
| [SOP - Test RSA avec la boucle d'iteration](<../search/Search - Test RSA avec la boucle d'itération.md>) | Méthodologie Iteration Loop appliquée aux composants PMax |
| [SOP - Executer une analyse N-gram](<../search/Search - Exécuter une analyse N-gram.md>) | Utilisé en Phase 3 |
| [SOP - Configurer et optimiser le flux produits](<../flux-produit/Flux Produit - Configurer et optimiser le feed produit.md>) | Utilisé en Phase 9 |
| [SOP - Cycle d'optimisation campagne Shopping](<../shopping/Shopping - Cycle d'optimisation campagne Shopping.md>) | Parallèle (optimisation Standard Shopping) |
| [SOP - Revue de performance hebdomadaire](<../../01-strategie/reporting/Reporting - Revue de performance hebdomadaire.md>) | Revue au niveau du compte |
