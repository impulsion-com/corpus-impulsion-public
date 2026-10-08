# Cycle d'optimisation PMax lead gen/SaaS

> **Plateforme :** Google Ads
> **Catégorie :** Pmax
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Cette SOP exécute le cycle d'optimisation des campagnes Performance Max pour la génération de leads (prospects) et le SaaS. Elle couvre les termes de recherche, les mots-clés à exclure, la performance des composants, l'allocation par canal, les signaux d'audience, la défense de marque, la revue structurelle, la qualité des conversions et les emplacements.

> ❓ **La question clé :** Que dois-je vérifier, à quelle fréquence et dans quel ordre pour qu'une campagne PMax lead gen/SaaS continue de produire des leads de qualité ?

**Le principe fondamental : la qualité avant le volume.** En lead gen, PMax optimise vers le signal de conversion que vous lui donnez. Si ce signal correspond à de simples soumissions de formulaire, PMax générera de gros volumes de leads de faible qualité. L'import de conversions hors ligne (offline conversion import) avec un signal de qualité (MQL, SQL ou chiffre d'affaires) est le socle sur lequel tout le reste repose.

---

## Ce que cette SOP ne couvre PAS

Cette SOP ne couvre **pas :**

- Lancer de nouvelles campagnes PMax (Voir : [SOP - Lancer une campagne PMax pour lead gen/SaaS](<Pmax - Lancer une campagne PMax pour Lead Gen-SaaS.md>))
- Optimiser les campagnes PMax e-commerce (Voir : [SOP - Cycle d'optimisation PMax e-commerce](<Pmax - Cycle d'optimisation PMax e-commerce.md>))
- Configurer le suivi des conversions hors ligne (Voir : [SOP - Configurer le suivi des conversions hors ligne](<../suivi/Suivi - Configurer le suivi des conversions hors ligne.md>))
- Décider si PMax est le bon type de campagne (Voir : [PMax Configuration Guidelines](<Pmax - Configuration PMax.md>))
- Remplacer les revues de performance générales au niveau du compte (Voir : [SOP - Revue de performance hebdomadaire](<../../01-strategie/reporting/Reporting - Revue de performance hebdomadaire.md>))

## Quand utiliser cette SOP

**À exécuter quand :** la campagne PMax lead gen/SaaS est sortie de l'apprentissage (4+ semaines après le lancement), compte 30+ conversions/mois sur le signal de qualité, et au moins 2 semaines se sont écoulées depuis tout changement structurel.

**NE PAS exécuter quand :** la campagne est en période d'apprentissage, a été lancée il y a moins de 4 semaines, ou vous avez effectué des changements structurels (division de groupe de composants, changement de stratégie d'enchères) il y a moins de 2 semaines.

---

## Avant de commencer

### Prérequis

> ⚠️ **L'import de conversions hors ligne doit être actif et vérifié.** Si la campagne optimise sur de simples soumissions de formulaire au lieu d'un signal de qualité (MQL, SQL ou chiffre d'affaires), arrêtez et corrigez cela d'abord. Sans signal de qualité, PMax génère du volume, pas de la valeur. Voir [SOP - Configurer le suivi des conversions hors ligne](<../suivi/Suivi - Configurer le suivi des conversions hors ligne.md>).

### Cadence d'optimisation

| Phase | Cadence | Pourquoi |
|-------|---------|-----|
| 1. Vérification de santé | Chaque cycle | Repère d'abord les fondamentaux cassés |
| 2. Revue des termes de recherche | Hebdomadaire | La dérive des requêtes va vite |
| 3. Gestion des mots-clés à exclure | Hebdomadaire | Découle directement de la revue des termes de recherche |
| 4. Performance des composants | Bi-mensuelle | Les composants ont besoin de 2+ semaines pour donner des signaux exploitables |
| 5. Allocation par canal | Mensuelle | Les évolutions de canal sont graduelles |
| 6. Signaux d'audience | Mensuelle | Les changements de signal mettent 4+ semaines à montrer leur impact |
| 7. Défense de marque | Mensuelle | Les schémas de cannibalisation de marque sont stables d'une semaine à l'autre |
| 8. Revue structurelle | Mensuelle | Les changements structurels déclenchent des périodes d'apprentissage |
| 9. Revue de la qualité des conversions | Mensuelle | Les tendances de qualité nécessitent 30+ jours de données |
| 10. Revue des emplacements | Mensuelle | Les schémas d'emplacements émergent sur plusieurs semaines |

**Temps total :** cycle hebdomadaire (Phases 1-3) : ~30 min. Bi-mensuel (Phases 1-4) : ~45 min. Mensuel (toutes les phases) : ~110 min.

### Documents de référence (à garder ouverts)

| Document | Utilisé pour |
|----------|----------|
| [PMax Campaign Health Checklist](<Pmax - [Review] Santé des campagnes PMax.md>) | Phase 1 |
| [PMax Configuration Guidelines](<Pmax - Configuration PMax.md>) | Phase 5, 8 |
| [PMax Asset Group Strategy Reference](<Pmax - Stratégie des asset groups PMax.md>) | Phase 8 |
| [Brand Separation Reference](<../search/Search - Séparation de marque.md>) | Phase 7 |
| [Conversion Volume Thresholds Reference](<../suivi/Suivi - Seuils de volume de conversions.md>) | Phase 9 |

---

## Phase 1️⃣: Vérification de santé (chaque cycle, 5 min)

1. Déroulez la [PMax Campaign Health Checklist](<Pmax - [Review] Santé des campagnes PMax.md>)
2. Vérifiez le statut de la campagne, l'utilisation du budget, le suivi des conversions
3. Confirmez que la campagne n'est **pas** en période d'apprentissage
4. **Vérifiez que l'import de conversions hors ligne est actif :** contrôlez que les conversions à signal de qualité (MQL, SQL, chiffre d'affaires) sont bien importées dans la fenêtre de délai attendue

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
| **Convertit, pertinent** | Conversions de qualité à un CPA acceptable | Aucune action |
| **Ne convertit pas, forte dépense** | A dépensé 3x le CPA cible sans aucune conversion | Ajouter à la liste de mots-clés à exclure |
| **Trafic non pertinent** | Requête sans rapport avec le service/produit | Ajouter à la liste de mots-clés à exclure |
| **Requêtes de marque** | Contient le nom de votre marque | À noter pour la Phase 7 |
| **Requêtes concurrents** | Contient des noms de marques concurrentes | Évaluer : convertit ou gaspille ? |
| **Informationnel à faible intention** | « what is », « how to », « free » | Exclure, sauf si une intention de haut du tunnel est recherchée |
| **Chercheurs d'emploi / intention non acheteuse** | « jobs », « careers », « salary », « internship » | Ajouter à la liste de mots-clés à exclure |

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

5. Validez : aucun mot-clé à exclure conflictuel ne bloque de requêtes performantes, listes organisées par catégorie (termes non pertinents, concurrents, termes de marque, termes de chercheurs d'emploi)

---

## Phase 4️⃣: Performance des composants (bi-mensuel, 15 min)

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

> 💡 **Angles créatifs à tester en lead gen :** captures d'écran du produit vs. photos de personnes, axé fonctionnalité vs. axé bénéfice vs. problème-solution, centré témoignage vs. centré démo, basé sur l'urgence vs. basé sur la valeur.

> ↪️ **Fondation méthodologique :** voir [SOP - Test RSA avec la boucle d'iteration](<../search/Search - Test RSA avec la boucle d'itération.md>) pour la méthode Iteration Loop. Pour la coordination de l'expérimentation créative multi-format, voir [SOP - Executer un cycle de test creative](<../creatives/Creatives - Cycle de test créatif.md>).

---

## Phase 5️⃣: Allocation par canal (mensuel, 10 min)

PMax répartit la dépense sur Search, Display, Video, Gmail et Discover. Les données au niveau du canal sont disponibles dans l'interface et via l'API.

1. Accédez à la campagne PMax > **Insights** > **Campaign insights** pour la répartition par canal
2. Comparez aux fourchettes saines :

| Canal | Fourchette saine | Signaler si... |
|---------|--------------|------------|
| Search | 40-60 % | En dessous de 30 % ou au-dessus de 70 % |
| Display | 10-25 % | Au-dessus de 30 % avec peu de conversions |
| Video | 5-20 % | Au-dessus de 25 % sans composant vidéo |
| Gmail/Discover | 5-15 % | Au-dessus de 20 % avec un faible engagement |

3. Diagnostiquez les évolutions inattendues :
   - Pic sur Display : examinez les emplacements (Phase 10), vérifiez la qualité créative
   - Pic sur Video sans composant vidéo : désactivez la vidéo générée automatiquement
   - Search anormalement élevé : vérifiez la cannibalisation de marque (Phase 7)
   - Gmail/Discover dominant : vérifiez la qualité des signaux d'audience, examinez l'engagement créatif

---

## Phase 6️⃣: Signaux d'audience (mensuel, 10 min)

Les signaux d'audience sont critiques pour le PMax lead gen/SaaS. Sans signaux forts, la qualité des leads se dégrade.

1. Accédez au groupe de composants > **Audience signals**
2. Vérifiez quels signaux génèrent des conversions, comparez aux moyennes de la campagne
3. Mettez à jour les segments :

| Type de signal | Priorité | Action de revue |
|-------------|----------|---------------|
| **Customer Match (clients gagnés/SQL)** | Maximale | Rafraîchir avec les dernières données CRM (trimestriel minimum). Minimum 1 000+ utilisateurs correspondants. |
| **Convertisseurs du site** | Élevée | Vérifier que les listes se remplissent correctement |
| **Visiteurs à forte intention** | Élevée | Visiteurs de la page démo, visiteurs de la page tarifs, personnes ayant démarré un essai gratuit |
| **Segments personnalisés** | Moyenne | Ajouter de nouvelles URL de concurrents, des termes de recherche pertinents |
| **Audiences sur le marché** | Plus faible | Ajouter ou retirer selon les données de conversion |

4. Retirez les signaux qui restent constamment en dessous des moyennes de la campagne après 4+ semaines
5. Ajoutez des signaux basés sur les schémas de conversion des campagnes Search

> ⚠️ **Customer Match est le signal le plus important pour le PMax lead gen.** Si votre liste Customer Match est périmée (>90 jours) ou trop petite (<1 000 utilisateurs), priorisez son rafraîchissement avant toute autre optimisation des signaux.

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

La structure d'un PMax lead gen/SaaS s'organise par type de service, offre ou segment d'audience (pas par groupes de produits).

### 8.1 Revue des groupes de composants

1. Examinez l'organisation des groupes de composants au regard de ces seuils :

| Vérification | Action |
|-------|--------|
| Groupes avec <30 conversions/mois sur le signal de qualité | Envisager la consolidation |
| Groupes avec >200 conversions/mois | Envisager une division pour un contrôle plus fin |
| Groupes mélangeant des services ou offres sans rapport | Diviser en groupes cohérents |
| Groupes aux profils de marge différents partageant une campagne | Envisager des campagnes séparées |

2. **Diviser** quand : le volume le permet (100+ conversions/mois sur le signal de qualité), des services/offres distincts existent, des offres différentes nécessitent des messages ou des landing pages différents
3. **Consolider** quand : les groupes ont <30 conversions/mois, ciblent des audiences similaires, ou un groupe n'apporte aucune valeur incrémentale

### 8.2 Revue de la structure de campagne

| Structure | Quand l'utiliser | Volume minimum |
|-----------|-------------|----------------|
| Campagne unique, groupe de composants unique | Une offre, une audience | 30+ conversions/mois |
| Campagne unique, plusieurs groupes de composants | Une offre, différents angles ou audiences | 30+ par groupe de composants |
| Plusieurs campagnes | Offres différentes avec des marges ou valeurs différentes | 30+ par campagne sur le signal de qualité |

> ⚠️ **Les changements structurels déclenchent des périodes d'apprentissage.** Un changement structurel maximum par mois, puis attendez 4 semaines.

> ↪️ **Pour la stratégie des groupes de composants :** voir [PMax Asset Group Strategy Reference](<Pmax - Stratégie des asset groups PMax.md>).

---

## Phase 9️⃣: Revue de la qualité des conversions (mensuel, 15 min)

Cette phase est propre au lead gen/SaaS. Le volume brut de conversions n'a aucun sens sans validation de la qualité.

### 9.1 Vérifier la santé de l'import de conversions hors ligne

1. Vérifiez que les conversions hors ligne (MQL, SQL, chiffre d'affaires) sont importées dans la fenêtre de délai attendue
2. Cherchez des trous : y a-t-il des jours sans aucun import alors qu'il devrait y avoir des données ?
3. Confirmez que la bonne action de conversion est définie comme signal d'enchères principal

### 9.2 Évaluer la qualité des leads

1. Comparez les métriques de qualité des 30 derniers jours vs. les 30 jours précédents :

| Métrique | Ce qu'il faut vérifier |
|--------|---------------|
| Taux soumission de formulaire → MQL | En baisse = dégradation de la qualité |
| Taux MQL → SQL | En baisse = problème de qualité d'audience |
| Taux SQL → signature | En baisse = problème de ciblage ou d'offre |
| Valeur moyenne des deals | En baisse = PMax trouve des leads moins chers mais de moindre valeur |

2. Si la qualité baisse alors que le volume est stable ou en hausse, PMax optimise pour des leads faciles, pas pour de bons leads. Resserrez les signaux d'audience, examinez les termes de recherche à la recherche de schémas à faible intention, ou déplacez le signal de conversion vers l'aval (p. ex. de MQL à SQL).

### 9.3 Comparaison de la qualité au niveau campagne

Si vous faites tourner PMax en parallèle de campagnes Search, comparez la qualité des leads entre les canaux. PMax devrait produire des leads de qualité comparable. Si les leads PMax convertissent à des taux nettement plus faibles en aval, investiguez les signaux d'audience et l'allocation par canal.

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

- [ ] Vérification de santé passée, import de conversions hors ligne vérifié
- [ ] Termes de recherche examinés, candidats à l'exclusion identifiés
- [ ] Listes de mots-clés à exclure mises à jour et liées
- [ ] Performance des composants examinée, sous-performants signalés (bi-mensuel)
- [ ] Allocation par canal évaluée (mensuel)
- [ ] Signaux d'audience examinés, fraîcheur de Customer Match vérifiée (mensuel)
- [ ] Défense de marque vérifiée (mensuel)
- [ ] Opportunités structurelles évaluées (mensuel)
- [ ] Qualité des conversions examinée, tendances de qualité documentées (mensuel)
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
| Prochain cycle bi-mensuel | Phases 1-4 |
| Prochain cycle mensuel | Les 10 phases |

**Si des problèmes nécessitent une investigation plus poussée :**

| Problème | Rediriger vers |
|-------|----------|
| Problèmes de qualité des termes de recherche | [SOP - Gerer les termes de recherche PMax et la defense de marque](<Pmax - Gérer les termes de recherche PMax et la défense de marque.md>) |
| Performance des composants en baisse | [SOP - Executer un cycle de test creative](<../creatives/Creatives - Cycle de test créatif.md>) (Phase 2.2 pour PMax) |
| Cannibalisation de marque | [Brand Separation Reference](<../search/Search - Séparation de marque.md>) |
| Import de conversions hors ligne cassé | [SOP - Configurer le suivi des conversions hors ligne](<../suivi/Suivi - Configurer le suivi des conversions hors ligne.md>) |
| Qualité des leads en baisse | Revoir la Phase 9. Si c'est systémique, déplacez la stratégie d'enchères vers un signal de conversion plus en aval. |
| Question sur le type de campagne | [PMax Configuration Guidelines](<Pmax - Configuration PMax.md>) |

---

## Erreurs fréquentes

| Erreur | Pourquoi ça arrive | Comment l'éviter |
|---------|----------------|--------------|
| Optimiser pendant l'apprentissage | Impatience après des changements | Vérifier d'abord le statut d'apprentissage en Phase 1 |
| Remplacer tous les composants d'un coup | Vouloir « tout corriger » | Max 1-2 remplacements par type par cycle |
| Ignorer les termes de recherche | « PMax gère ça automatiquement » | La revue hebdomadaire est non négociable |
| Changements structurels chaque semaine | Sur-optimisation | Mensuel maximum, puis attendre 4 semaines |
| Optimiser sur les soumissions de formulaire | Pas d'import de conversions hors ligne | Corriger le signal de conversion avant de lancer PMax |
| Liste Customer Match périmée | « On l'a importée une fois » | Rafraîchir au minimum chaque trimestre |
| Ignorer la qualité des leads | « Le volume a l'air super » | La revue de qualité en Phase 9 est non négociable |
| Aucune documentation entre les cycles | Semble inutile | La continuité capte des tendances que vous manqueriez |

---

## Procédures liées

| SOP | Relation |
|-----|--------------|
| [SOP - Lancer une campagne PMax pour lead gen/SaaS](<Pmax - Lancer une campagne PMax pour Lead Gen-SaaS.md>) | Amont (configuration initiale) |
| [SOP - Configurer le suivi des conversions hors ligne](<../suivi/Suivi - Configurer le suivi des conversions hors ligne.md>) | Prérequis (signal de qualité) |
| [SOP - Gerer les termes de recherche PMax et la defense de marque](<Pmax - Gérer les termes de recherche PMax et la défense de marque.md>) | Approfondissement des Phases 2, 3, 7 |
| [SOP - Executer un cycle de test creative](<../creatives/Creatives - Cycle de test créatif.md>) | Coordination de l'expérimentation créative multi-format |
| [SOP - Test RSA avec la boucle d'iteration](<../search/Search - Test RSA avec la boucle d'itération.md>) | Méthodologie Iteration Loop appliquée aux composants PMax |
| [SOP - Executer une analyse N-gram](<../search/Search - Exécuter une analyse N-gram.md>) | Utilisé en Phase 3 |
| [SOP - Revue de performance hebdomadaire](<../../01-strategie/reporting/Reporting - Revue de performance hebdomadaire.md>) | Revue au niveau du compte |
