# Catalogue des actions d'optimisation

> **Plateforme :** Google Ads
> **Catégorie :** Strategie
> **Type :** Catalogue
> **Mis à jour :** 2026-05-08

## Objectif

Ce document mappe les **déclencheurs d'optimisation aux actions précises** sur tous les types de campagnes et zones d'optimisation. À utiliser comme tableau de référence : trouver le symptôme ou le signal dans votre compte, puis suivre l'action et la SOP qui l'exécute.

Il couvre 12 zones d'optimisation, des performances de mots-clés à la structure de campagne, et s'applique aux campagnes Search, Shopping, PMax, Demand Gen, Display et Video.

---

### Ce que c'est / Ce que ce n'est PAS

**Ce document :**

- Liste les déclencheurs (symptômes, signaux, seuils) qui indiquent une opportunité d'optimisation
- Mappe chaque déclencheur à une action précise et à la SOP qui l'exécute
- Précise à quels types de campagne chaque action s'applique
- Note l'impact, le risque et la fréquence de vérification recommandée
- Fournit un récap des fréquences pour bâtir des cadences de revue

**Ce document NE fait PAS :**

- Expliquer comment exécuter les actions (cela appartient aux SOP liées)
- Enseigner la théorie derrière les décisions d'optimisation (voir : [Pensée systémique et analyse des goulots d'étranglement](<../../01-strategie/fondamentaux/Fondamentaux - Pensée systémique et analyse des goulots d'étranglement.md>))
- Définir la cadence de revue ou la séquence du workflow (voir : [SOP - Revue de performance hebdomadaire](<../../01-strategie/reporting/Reporting - Revue de performance hebdomadaire.md>))
- Remplacer la logique d'aiguillage du playbook Améliorer le Niveau de qualité (voir : [Améliorer le Niveau de qualité](<../search/Search - Améliorer le Niveau de qualité.md>))
- Fournir les instructions d'exécution pas à pas pour les actions

---

## Comment utiliser ce document

1. **Identifier le signal** dans votre compte (une métrique qui franchit un seuil, un indicateur de statut, ou un pattern dans les rapports)
2. **Trouver la zone d'optimisation correspondante** dans les sections ci-dessous
3. **Repérer la ligne de déclencheur** qui matche votre situation
4. **Suivre l'action** et ouvrir la SOP liée pour exécuter

**Lecture des colonnes du tableau :**

| Colonne | Signification |
|--------|---------|
| Déclencheur | Le symptôme ou signal observé dans le compte |
| Action | Quoi faire |
| Types de campagne | À quels types de campagne ça s'applique |
| Impact | Amélioration de performance attendue (Élevé/Moyen/Faible) |
| Risque | Risque d'effets secondaires négatifs (Élevé/Moyen/Faible) |
| Fréquence | À quelle fréquence vérifier ce déclencheur |
| SOP d'exécution | La SOP ou le Playbook qui contient l'exécution pas à pas |

**Règle de priorisation :** Quand plusieurs déclencheurs sont présents, les traiter dans cet ordre :

1. Impact élevé, risque faible (quick wins : à faire en premier)
2. Impact élevé, risque moyen (mouvements à fort levier qui demandent du soin)
3. Impact moyen, risque faible (améliorations incrémentales)
4. Impact moyen, risque moyen (évaluer le ROI de l'effort avant exécution)
5. Impact faible, risque faible (tâches de maintenance, à grouper)

> 💡 **Démarrer par les actions à fort impact et faible risque :** Ce sont les quick wins qui améliorent la performance avec un minimum d'inconvénient. Garder les actions à risque élevé pour quand vous avez des données solides derrière la décision.

---

## Prérequis de données pour les déclencheurs

Avant d'agir sur un déclencheur, vérifier que vous avez assez de données. L'optimisation prématurée sur de petits échantillons crée plus de problèmes qu'elle n'en résout.

**Seuils minimaux de données :**

| Métrique | Minimum pour action | Pourquoi |
|--------|--------------------|-----|
| Clics | 50+ par entité (mot-clé, annonce, audience) | Sous 50, la variance du taux de conversion est trop élevée pour conclure |
| Impressions | 1 000+ pour les décisions sur le CTR | Le CTR se stabilise autour de ce volume sur la plupart des types de campagnes |
| Conversions | 15+ par entité pour les décisions sur le CPA | Sous 15, une seule conversion fait bouger le CPA fortement |
| Période | 14+ jours (2 cycles d'activité minimum) | Évite le biais de jour de semaine et les anomalies de court terme |
| Dépense | 2x le CPA cible par entité | Si vous n'avez pas assez dépensé pour espérer 2 conversions, attendre |

> ⚠️ **Ce sont des minimums, pas des recommandations :** Plus de données = meilleures décisions. Dans le doute, attendre plus de données plutôt que d'agir prématurément.

---

## Mots-clés et termes de recherche

| Déclencheur | Action | Types de campagne | Impact | Risque | Fréquence | SOP d'exécution |
|---------|--------|---------------|--------|------|-----------|---------------|
| Mot-clé avec 50+ clics, 0 conversion | Diagnostiquer : vérifier QS, LP, alignement d'intention. Mettre en pause si pas de correction possible | Search | Élevé | Faible | Hebdomadaire | [SOP - Analyser les rapports de termes de recherche](<../search/Search - Analyser les rapports de termes de recherche.md>) |
| Pattern de N-gram non-convertissant (dépense de 2x CPA cible, 0 conversion) | Ajouter à la liste d'exclusion "N-grams non-convertissants" (expression exacte) | Search, Shopping, PMax | Élevé | Faible | Hebdomadaire | [SOP - Analyser les rapports de termes de recherche](<../search/Search - Analyser les rapports de termes de recherche.md>) |
| N-gram inefficace (convertit mais CPA > 1,5x cible ou ROAS < 0,7x cible) | Ajouter à la liste d'exclusion "N-grams inefficaces" (expression exacte) | Search, Shopping, PMax | Moyen | Faible | Hebdomadaire | [SOP - Analyser les rapports de termes de recherche](<../search/Search - Analyser les rapports de termes de recherche.md>) |
| Terme de recherche convertissant non encore en mot-clé | Promouvoir en mot-clé exact dans l'ad group pertinent | Search | Moyen | Faible | Hebdomadaire | [SOP - Promouvoir les termes de recherche en mots-cles](<../search/Search - Promouvoir les termes de recherche en keywords.md>) |
| Deux mots-clés du même ad group cannibalisent (impressions partagées, aucun n'a assez de données) | Consolider ou restructurer les ad groups | Search | Moyen | Moyen | Mensuelle | [SOP - Construire la structure de campagne Search](<../search/Search - Construire la structure de campagne Search.md>) |
| Une variante proche obtient plus de trafic que le mot-clé parent avec une performance différente | Ajouter la variante performante en exact, négativer la mauvaise variante | Search | Moyen | Faible | Bi-hebdomadaire | [SOP - Promouvoir les termes de recherche en mots-cles](<../search/Search - Promouvoir les termes de recherche en keywords.md>) |
| Type de correspondance trop restrictif (IS faible, performance prouvée) | Élargir vers un type de correspondance plus large avec surveillance | Search | Moyen | Moyen | Mensuelle | [SOP - Analyser les rapports de termes de recherche](<../search/Search - Analyser les rapports de termes de recherche.md>) |
| Keyword IS (Rank) sous 50% sur un mot-clé convertissant | Diagnostiquer : problème QS, problème de bid, ou les deux. Aiguiller vers la correction appropriée | Search | Moyen | Faible | Bi-hebdomadaire | [SOP - Analyser les rapports de termes de recherche](<../search/Search - Analyser les rapports de termes de recherche.md>) |
| Mot-clé requête large qui déclenche > 30% de requêtes non pertinentes | Resserrer avec mots-clés à exclure ou passer en expression exacte | Search | Élevé | Faible | Hebdomadaire | [SOP - Analyser les rapports de termes de recherche](<../search/Search - Analyser les rapports de termes de recherche.md>) |
| Search IS (absolute top) sous 10% sur un mot-clé exact à forte intention | Investiguer : enchère trop basse, problème QS, ou contrainte budget. Corriger d'abord la contrainte qui fait blocage | Search | Moyen | Faible | Mensuelle | [SOP - Analyser les rapports de termes de recherche](<../search/Search - Analyser les rapports de termes de recherche.md>) |
| Mot-clé mis en pause pour performance mais qui reçoit encore du trafic via les variantes proches d'autres mots-clés | Ajouter le mot-clé en pause comme négatif exact pour empêcher le matching de variantes | Search | Moyen | Faible | Mensuelle | [SOP - Executer une analyse N-gram](<../search/Search - Exécuter une analyse N-gram.md>) |

> 💡 **L'analyse N-gram capte des patterns que la revue terme par terme rate :** Un terme isolé avec 3 clics est du bruit. Un pattern N-gram à travers 50 termes totalisant 200 clics et 0 conversion est un signal clair.

**Arbre de décision pour les actions sur mots-clés :**

| Performance du mot-clé | QS >= 7 | QS < 7 |
|---------------------|---------|--------|
| Convertit, efficace | Garder et scaler (augmenter budget/enchères) | Corriger le QS pour réduire encore le CPC |
| Convertit, inefficace (CPA > 1,3x cible) | Vérifier CVR de la LP et alignement d'intention | Corriger d'abord le QS (la baisse de CPC peut régler l'efficacité) |
| Ne convertit pas, 50+ clics | Vérifier LP et alignement d'intention, envisager pause | Corriger le QS, puis ré-évaluer après 50 clics de plus |
| Ne convertit pas, < 50 clics | Attendre plus de données | Corriger le QS pendant la collecte de données |

---

## Niveau de qualité

| Déclencheur | Action | Types de campagne | Impact | Risque | Fréquence | SOP d'exécution |
|---------|--------|---------------|--------|------|-----------|---------------|
| QS < 7 sur un mot-clé avec 100+ impressions mensuelles | Marquer pour amélioration QS, aiguiller vers le playbook Améliorer le QS | Search | Élevé | Faible | Bi-hebdomadaire | [Améliorer le Niveau de qualité](<../search/Search - Améliorer le Niveau de qualité.md>) |
| Expected CTR = en dessous de la moyenne | Aiguiller vers la SOP Expected CTR : améliorer les titres, ajouter DKI, tester le texte | Search | Élevé | Faible | Bi-hebdomadaire | [SOP - Ameliorer le CTR attendu](<../search/Search - Améliorer le CTR attendu.md>) |
| Ad Relevance = en dessous de la moyenne | Aiguiller vers la SOP Ad Relevance : restructurer ad groups, aligner mots-clés et annonces | Search | Élevé | Faible | Bi-hebdomadaire | [SOP - Ameliorer la pertinence des annonces](<../search/Search - Améliorer la pertinence des annonces.md>) |
| Landing Page Experience = en dessous de la moyenne | Aiguiller vers la SOP Experience LP : améliorer vitesse, pertinence du contenu, UX | Search | Élevé | Moyen | Mensuelle | [SOP - Ameliorer l'experience de la page de destination](<../../02-site-web/audit/Audit - Test A-B de Landing Page.md>) |
| Opportunité d'amélioration QS de 5 à 7 sur un mot-clé à forte dépense | Prioriser : QS 5 à 7 réduit les CPC d'environ 25% (le seuil "magic number") | Search | Élevé | Faible | Bi-hebdomadaire | [Améliorer le Niveau de qualité](<../search/Search - Améliorer le Niveau de qualité.md>) |
| Deux composants QS = en dessous de la moyenne sur le même mot-clé | Probablement un problème structurel : alignement mot-clé vers ad group à revoir, pas juste la créa | Search | Élevé | Moyen | Mensuelle | [SOP - Ameliorer la pertinence des annonces](<../search/Search - Améliorer la pertinence des annonces.md>) |
| QS chuté de 7+ vers <7 (auparavant stable) | Investiguer : changements concurrentiels, changements LP, mise à jour algo. Vérifier Insights sur les enchères | Search | Élevé | Faible | Bi-hebdomadaire | [SOP - Analyser les Insights sur les enchères](<../search/Search - Analyser les Insights sur les enchères.md>) |

> 💡 **Le passage QS 5 à 7 est le mouvement à plus fort levier :** L'amélioration de CPC entre QS 5 et 7 est proportionnellement plus grande que tout autre saut. À prioriser sur vos mots-clés à plus forte dépense.

**Ordre de priorité des composants QS :**

1. Pertinence de l'annonce (correction structurelle, résout souvent aussi l'Expected CTR)
2. Expected CTR (correction créative, impacte directement le CPC)
3. Landing Page Experience (besoin de ressources dev/design, le plus long à mettre en place)

---

## Enchères et budget

| Déclencheur | Action | Types de campagne | Impact | Risque | Fréquence | SOP d'exécution |
|---------|--------|---------------|--------|------|-----------|---------------|
| Campagne "Limited by Budget" sur une campagne rentable | Exécuter l'approche en 5 étapes pour budget contraint | Tous | Élevé | Moyen | Hebdomadaire | [SOP - Scaler encheres et budgets](<../encheres/Enchères - Scaler les enchères et budgets.md>) |
| Stratégie d'enchère en statut "Learning" depuis 14+ jours | Investiguer : conversions insuffisantes, trop de changements, problèmes structurels | Tous | Élevé | Faible | Hebdomadaire | [SOP - Selectionner une strategie d'encheres](<../encheres/Enchères - Sélectionner une stratégie d'enchères.md>) |
| Stratégie d'enchère qui rate constamment la cible (CPA > cible pendant 2+ semaines) | Diagnostiquer la cause racine, ajuster la cible progressivement (incréments 5-20%) | Tous | Élevé | Moyen | Hebdomadaire | [SOP - Scaler encheres et budgets](<../encheres/Enchères - Scaler les enchères et budgets.md>) |
| 50+ conversions mensuelles avec données stables, actuellement en CPC manuel | Migrer vers Stratégies d'enchères intelligentes (CPA cible ou Max Conversions) | Search, Shopping | Élevé | Moyen | Trimestrielle | [SOP - Migrer des encheres manuelles vers Stratégies d'enchères intelligentes](<../encheres/Enchères - Migrer des enchères manuelles vers les stratégies d'enchères intelligentes.md>) |
| Valeurs de conversion fiables + variance, actuellement en CPA cible | Envisager la migration vers ROAS cible ou Max Conversion Value | Search, Shopping, PMax | Moyen | Moyen | Trimestrielle | [SOP - Configurer les encheres basees sur la valeur](<../encheres/Enchères - Configurer les enchères basées sur la valeur.md>) |
| Suivi du profit en place, actuellement en ROAS cible | Migrer vers cibles basées sur le profit (POAS) | Search, Shopping, PMax | Élevé | Moyen | Trimestrielle | [SOP - Configurer le suivi panier et profit](<../suivi/Suivi - Configurer le suivi panier et profit.md>) |
| IS (Budget) > 10% sur une campagne éprouvée | Opportunité de scaling vertical : augmenter le budget | Tous | Moyen | Faible | Hebdomadaire | [SOP - Scaler encheres et budgets](<../encheres/Enchères - Scaler les enchères et budgets.md>) |
| Segment d'appareil sous-performe significativement (CPA 2x) en CPC manuel | Appliquer un modificateur d'enchère par appareil (à la baisse) | Search, Display | Moyen | Faible | Mensuelle | [SOP - Configurer les encheres basees sur les conversions](<../suivi/Suivi - Configurer le suivi des conversions Google Ads.md>) |
| Campagne qui atteint le budget quotidien avant midi systématiquement | Problème de pacing budget : augmenter le budget ou resserrer le ciblage pour réduire le gaspillage | Tous | Élevé | Moyen | Hebdomadaire | [SOP - Scaler encheres et budgets](<../encheres/Enchères - Scaler les enchères et budgets.md>) |
| Plusieurs campagnes en concurrence pour le même budget (pool de budget partagé) | Évaluer une stratégie d'enchère portefeuille ou réallouer le budget | Search, Shopping | Moyen | Moyen | Mensuelle | [SOP - Configurer les strategies d'encheres portefeuille](<../encheres/Enchères - Configurer les stratégies d'enchères de portefeuille.md>) |
| Perturbation des données de conversion (tracking cassé, panne site, événement saisonnier) | Appliquer une exclusion de données pour empêcher la stratégie d'apprendre sur de mauvaises données | Tous | Élevé | Faible | Au besoin | [SOP - Configurer les exclusions de donnees](<../suivi/Suivi - Configurer les exclusions de données.md>) |

> ⚠️ **Ne jamais faire de gros changements de cible :** Ajuster les cibles d'enchère par incréments de 5 à 20%. Les sauts importants réinitialisent la période d'apprentissage et peuvent crasher la performance.

**Échelle de maturité de l'enchère :**

| Étape | Stratégie d'enchère | Prérequis |
|-------|-------------|--------------|
| 1 | CPC manuel | Aucun |
| 2 | CPA cible ou Max Conversions | 50+ conversions mensuelles |
| 3 | ROAS cible ou Max Conv. Value | Valeurs de conversion fiables avec variance |
| 4 | POAS (basé sur le profit) | Suivi du profit en place (COGS dans le flux) |

Monter d'un cran uniquement quand le prérequis du suivant est rempli. Ne jamais sauter d'étape.

**Flux de décision pour campagne limitée par le budget :**

| Type de campagne limitée par le budget | Première action | Deuxième action |
|------------------------------|-------------|---------------|
| Rentable, ROAS élevé | Augmenter le budget (scaling vertical) | Détendre légèrement la cible pour plus de volume |
| Rentable, ROAS limite | Couper d'abord le gaspillage (négatifs, audiences) | Puis augmenter le budget si le ROAS s'améliore |
| Non rentable | Ne pas augmenter le budget. Corriger l'efficacité d'abord | Restructurer ou mettre en pause si pas de chemin vers la rentabilité |

---

## Annonces et créatifs

| Déclencheur | Action | Types de campagne | Impact | Risque | Fréquence | SOP d'exécution |
|---------|--------|---------------|--------|------|-----------|---------------|
| Titre/description RSA avec faible CPI/RPI après 30+ jours et impressions suffisantes | Remplacer par une nouvelle variante avec la méthode de la boucle d'itération | Search | Moyen | Faible | Mensuelle | [SOP - Test RSA avec la boucle d'iteration](<../search/Search - Test RSA avec la boucle d'itération.md>) |
| Ad group avec Pertinence de l'annonce = en dessous de la moyenne | Ajouter un titre DKI comme correction rapide de pertinence | Search | Moyen | Faible | Bi-hebdomadaire | [SOP - Ameliorer la pertinence des annonces](<../search/Search - Améliorer la pertinence des annonces.md>) |
| Asset PMax avec données de performance en dessous de la moyenne (impressions/clics/conversions réels) | Remplacer par une nouvelle variante, conserver la diversité des angles | PMax | Moyen | Faible | Bi-hebdomadaire | [SOP - Lancer une campagne PMax complete e-commerce](<../pmax/Pmax - Lancer une campagne PMax Full Assets e-commerce.md>) |
| Assets auto-générés détectés en PMax (notamment les vidéos auto-générées) | Désactiver les assets auto-générés, remplacer par des créatifs intentionnels | PMax | Moyen | Faible | Mensuelle | [SOP - Lancer une campagne PMax complete e-commerce](<../pmax/Pmax - Lancer une campagne PMax Full Assets e-commerce.md>) |
| Fatigue créative Demand Gen (CTR en baisse depuis 2+ semaines) | Rafraîchir les créatifs, tester de nouveaux formats (vidéo/image/carrousel/UGC) | Demand Gen | Moyen | Faible | Bi-hebdomadaire | [SOP - Lancer une campagne Demand Gen](<../demand-gen/Demand Gen - Lancer une campagne.md>) |
| Aucun test créatif actif depuis 30+ jours | Lancer un nouveau test depuis le backlog d'expérimentations | Tous | Moyen | Faible | Mensuelle | [SOP - Executer une experimentation de campagne](<Strategie - Lancer une expérience de campagne.md>) |
| Une RSA a moins de 7 titres ou 2 descriptions | Ajouter des titres/descriptions pour atteindre le seuil minimum de test | Search | Moyen | Faible | Mensuelle | [SOP - Rediger des RSA performantes](<../search/Search - Rédiger des RSA performantes.md>) |
| Tous les titres RSA utilisent le même angle (pas de diversité d'angles) | Ajouter des titres couvrant différents angles (bénéfice, fonctionnalité, preuve sociale, urgence) | Search | Moyen | Faible | Mensuelle | [SOP - Test RSA avec la boucle d'iteration](<../search/Search - Test RSA avec la boucle d'itération.md>) |
| Un ad group n'a qu'1 RSA (impossible de tester en A/B) | Ajouter une seconde variante RSA pour comparaison | Search | Moyen | Faible | Mensuelle | [SOP - Test RSA avec la boucle d'iteration](<../search/Search - Test RSA avec la boucle d'itération.md>) |

> ⚠️ **Le score Ad Strength n'est PAS un déclencheur d'optimisation valide :** L'ignorer. Utiliser les données réelles au niveau asset : CPI/RPI pour les RSA, impressions/clics/conversions pour les assets PMax. Ad Strength est un score de complétude, pas un prédicteur de performance.

**Priorité des tests créatifs :**

1. Angles de titre (impact le plus important sur le CTR)
2. Texte de description (soutient le titre, impacte la conversion)
3. Texte du chemin d'affichage (impact CTR mineur, souvent négligé)
4. Extensions et assets (amélioration incrémentale)

---

## Extensions et assets

| Déclencheur | Action | Types de campagne | Impact | Risque | Fréquence | SOP d'exécution |
|---------|--------|---------------|--------|------|-----------|---------------|
| Campagne sans le minimum d'extensions (< 4 liens annexes ou < 4 callouts) | Ajouter des extensions pour atteindre la couverture minimale | Search, Display | Moyen | Faible | Mensuelle | [SOP - Rediger des RSA performantes](<../search/Search - Rédiger des RSA performantes.md>) |
| Extension avec 0 clic après 30+ jours | Remplacer par une nouvelle variante | Search | Faible | Faible | Mensuelle | [SOP - Rediger des RSA performantes](<../search/Search - Rédiger des RSA performantes.md>) |
| Extensions auto-générées actives au niveau compte | Désactiver les extensions automatiques, remplacer par du manuel | Search | Moyen | Faible | Trimestrielle | [SOP - Rediger des RSA performantes](<../search/Search - Rédiger des RSA performantes.md>) |
| Liens annexes pointant vers des pages à fort taux de rebond | Remplacer par des liens annexes vers des pages plus performantes | Search | Moyen | Faible | Mensuelle | [SOP - Rediger des RSA performantes](<../search/Search - Rédiger des RSA performantes.md>) |
| Pas de structured snippets sur la campagne | Ajouter au moins 2 en-têtes de structured snippets avec 4+ valeurs chacun | Search | Faible | Faible | Mensuelle | [SOP - Rediger des RSA performantes](<../search/Search - Rédiger des RSA performantes.md>) |
| Extension d'appel affichée hors heures d'ouverture | Définir un planning sur les heures d'ouverture uniquement | Search | Faible | Faible | Trimestrielle | [SOP - Rediger des RSA performantes](<../search/Search - Rédiger des RSA performantes.md>) |

> 💡 **Couverture minimale d'extensions :** Chaque campagne Search a besoin d'au moins 4 liens annexes, 4 callouts et 2 structured snippets. Les extensions manquantes réduisent votre surface d'annonce et l'Expected CTR.

---

## Audiences et ciblage

| Déclencheur | Action | Types de campagne | Impact | Risque | Fréquence | SOP d'exécution |
|---------|--------|---------------|--------|------|-----------|---------------|
| Segment d'audience avec CPA 2x celui de la campagne (100+ clics) | Réduire le modificateur (Manual) ou exclure (si constamment mauvais) | Tous | Moyen | Moyen | Mensuelle | [SOP - Configurer le ciblage par audience](<../audiences/Audiences - Configurer le ciblage par audience.md>) |
| Liste de remarketing qui passe sous 1 000 utilisateurs | Diagnostiquer : déclenchement du tag, durée d'appartenance, baisse de trafic | Tous | Élevé | Faible | Mensuelle | [SOP - Configurer le ciblage par audience](<../audiences/Audiences - Configurer le ciblage par audience.md>) |
| Audience expansion activée sur une campagne de remarketing | Désactiver immédiatement (doit cibler des visiteurs passés spécifiques) | Display, Demand Gen | Élevé | Faible | Hebdomadaire | [SOP - Configurer le ciblage par audience](<../audiences/Audiences - Configurer le ciblage par audience.md>) |
| Segment démographique (âge, genre, revenu) avec CPA 3x après 500+ clics | Exclure le segment ou appliquer un modificateur d'enchère négatif | Search, Display | Moyen | Moyen | Trimestrielle | [SOP - Configurer le ciblage par audience](<../audiences/Audiences - Configurer le ciblage par audience.md>) |
| Pas d'audiences en observation sur les campagnes Search | Ajouter listes de remarketing, in-market et affinity comme couches d'observation | Search | Moyen | Faible | Mensuelle | [SOP - Configurer le ciblage par audience](<../audiences/Audiences - Configurer le ciblage par audience.md>) |
| Liste Customer Match non uploadée ou périmée (> 90 jours) | Uploader une liste fraîche, mettre en place une synchro récurrente si possible | Tous | Moyen | Faible | Trimestrielle | [SOP - Construire des listes Customer Match](<../audiences/Audiences - Construire des listes Customer Match.md>) |
| Audience en observation très performante identifiée (CPA < 0,5x moyenne campagne) | Augmenter le modificateur (Manual) ou créer une campagne dédiée pour cette audience | Search, Display | Moyen | Moyen | Mensuelle | [SOP - Configurer le ciblage par audience](<../audiences/Audiences - Configurer le ciblage par audience.md>) |

> ⚠️ **Attendre la significativité statistique :** Ne pas exclure de segments d'audience sur petits échantillons. Les seuils ci-dessus (100+ clics, 500+ clics) existent pour une raison. Les exclusions prématurées limitent votre portée sans données fiables derrière.

---

## Shopping et flux de produits

| Déclencheur | Action | Types de campagne | Impact | Risque | Fréquence | SOP d'exécution |
|---------|--------|---------------|--------|------|-----------|---------------|
| Best-seller produit avec IS (Budget) limité | Augmenter le budget ou créer une campagne séparée pour les top produits | Shopping, PMax | Élevé | Faible | Hebdomadaire | [SOP - Configurer et optimiser le flux produits](<../flux-produit/Flux Produit - Configurer et optimiser le feed produit.md>) |
| Produit avec 1 000+ impressions, CTR sous la moyenne de catégorie | Optimiser le titre produit et l'image principale | Shopping, PMax | Élevé | Faible | Mensuelle | [SOP - Configurer et optimiser le flux produits](<../flux-produit/Flux Produit - Configurer et optimiser le feed produit.md>) |
| Produit avec 0 clic après 30+ jours actif | Diagnostiquer : qualité du titre, compétitivité prix, qualité image, refus | Shopping, PMax | Moyen | Faible | Mensuelle | [SOP - Configurer et optimiser le flux produits](<../flux-produit/Flux Produit - Configurer et optimiser le feed produit.md>) |
| GMC indique compétitivité prix "Élevée" (tiers le plus cher) | Revoir le pricing, envisager une stratégie de sale price, vérifier les concurrents | Shopping, PMax | Moyen | Moyen | Mensuelle | [SOP - Configurer et optimiser le flux produits](<../flux-produit/Flux Produit - Configurer et optimiser le feed produit.md>) |
| Custom labels obsolètes (ne reflètent pas la performance actuelle) | Mettre à jour les custom labels basés sur la performance | Shopping, PMax | Moyen | Faible | Mensuelle | [SOP - Configurer la segmentation Shopping basee sur la performance](<../shopping/Shopping - Configurer la segmentation Shopping basée sur la performance.md>) |
| Produit éligible au badge baisse de prix (45-60 jours de prix stable) | Implémenter sale_price dans le flux pour déclencher le badge | Shopping, PMax | Moyen | Faible | Trimestrielle | [SOP - Configurer et optimiser le flux produits](<../flux-produit/Flux Produit - Configurer et optimiser le feed produit.md>) |
| Refus de flux > 5% des produits | Investiguer et corriger : attributs manquants, violations policy, qualité de données | Shopping, PMax | Élevé | Faible | Hebdomadaire | [SOP - Configurer et optimiser le flux produits](<../flux-produit/Flux Produit - Configurer et optimiser le feed produit.md>) |
| Titres produits sans attributs clés (marque, couleur, taille, matériau) | Enrichir les titres avec les attributs structurés du flux | Shopping, PMax | Élevé | Faible | Mensuelle | [SOP - Configurer et optimiser le flux produits](<../flux-produit/Flux Produit - Configurer et optimiser le feed produit.md>) |
| Produits "zombies" (fortes impressions, 0 conversion, 90+ jours) qui consomment du budget | Déplacer vers un segment à budget restreint ou exclure de la campagne | Shopping, PMax | Moyen | Faible | Mensuelle | [SOP - Configurer la segmentation Shopping basee sur la performance](<../shopping/Shopping - Configurer la segmentation Shopping basée sur la performance.md>) |

> ↪️ **Pour les stratégies de segmentation produit :** Voir [Catalogue Segmentation de feed produit](<../flux-produit/Flux Produit - Tactiques de segmentation.md>) pour les tactiques par tier.

**Priorité d'optimisation Shopping :**

1. Corriger les refus de flux (produits non affichés = zéro potentiel de revenu)
2. Optimiser les titres sur les produits à fortes impressions et faible CTR (visibilité sans clic = potentiel gaspillé)
3. Traiter les produits zombies qui consomment du budget (rediriger vers les performeurs)
4. Mettre à jour les custom labels pour une segmentation correcte (assure que le budget va aux bons produits)
5. Explorer les badges de baisse de prix et le pricing concurrentiel (gains de CTR incrémentaux)

---

## Landing Pages

| Déclencheur | Action | Types de campagne | Impact | Risque | Fréquence | SOP d'exécution |
|---------|--------|---------------|--------|------|-----------|---------------|
| CVR de landing page sous le benchmark réaliste (page à fort trafic) | Investiguer : message match, UX, offre, vitesse. Aiguiller vers optimisation ou test A/B | Tous | Élevé | Moyen | Mensuelle | [SOP - Auditer et optimiser une page de destination existante](<../../02-site-web/audit/Audit - Auditer et optimiser une LP existante.md>) |
| Vitesse de page sous 3 secondes (mobile) | Corriger : compression images, lazy loading, temps de réponse serveur | Tous | Élevé | Faible | Mensuelle | [SOP - Auditer et optimiser une page de destination existante](<../../02-site-web/audit/Audit - Auditer et optimiser une LP existante.md>) |
| Mots-clés qui envoient le trafic vers les mauvaises landing pages | Mettre à jour les URLs finales pour matcher l'intention | Search | Élevé | Faible | Mensuelle | [SOP - Construire la structure de campagne Search](<../search/Search - Construire la structure de campagne Search.md>) |
| Pas de test A/B LP actif sur la page à plus fort trafic | Lancer un test LP (titre/offre d'abord, puis mise en page, puis CTA) | Tous | Moyen | Faible | Trimestrielle | [SOP - Executer une experimentation de campagne](<Strategie - Lancer une expérience de campagne.md>) |
| Décalage de message entre le texte de l'annonce et le titre LP | Aligner le titre LP avec l'angle du titre de l'annonce qui performe | Tous | Élevé | Faible | Mensuelle | [SOP - Auditer et optimiser une page de destination existante](<../../02-site-web/audit/Audit - Auditer et optimiser une LP existante.md>) |
| Taux de rebond élevé (> 70%) sur LP avec 500+ sessions | Investiguer : vitesse, contenu au-dessus de la flottaison, UX mobile, alignement d'intention | Tous | Élevé | Moyen | Mensuelle | [SOP - Auditer et optimiser une page de destination existante](<../../02-site-web/audit/Audit - Auditer et optimiser une LP existante.md>) |
| Taux d'abandon panier/checkout au-dessus du benchmark sectoriel | Optimiser le tunnel : réduire les étapes, ajouter des signaux de confiance, corriger la friction UX | E-commerce | Élevé | Moyen | Mensuelle | [SOP - Optimiser le panier et le tunnel de paiement](<../../02-site-web/construction/Construction - Optimiser le panier et le tunnel.md>) |

> 💡 **L'optimisation des landing pages a souvent le meilleur ROI :** Une amélioration de 10% du taux de conversion a le même effet qu'une réduction de 10% du CPC, mais elle se compose sur toutes les sources de trafic, pas que le payant.

---

## Structure de campagne

| Déclencheur | Action | Types de campagne | Impact | Risque | Fréquence | SOP d'exécution |
|---------|--------|---------------|--------|------|-----------|---------------|
| Campagne avec < 30 conversions/mois et ciblage redondant | Consolider dans une campagne plus grande pour une meilleure densité de données | Tous | Moyen | Moyen | Trimestrielle | [SOP - Construire la structure de campagne Search](<../search/Search - Construire la structure de campagne Search.md>) |
| Campagne servant des intentions divergentes avec performances différentes | Splitter via la méthode Copier-Coller (déplacer le segment faible) | Search | Moyen | Moyen | Trimestrielle | [SOP - Construire la structure de campagne Search](<../search/Search - Construire la structure de campagne Search.md>) |
| Ad group avec < 5 000 impressions mensuelles | Consolider les mots-clés dans des ad groups plus petits en nombre, plus larges | Search | Moyen | Faible | Trimestrielle | [SOP - Construire la structure de campagne Search](<../search/Search - Construire la structure de campagne Search.md>) |
| Un seul ad group contenant 30+ mots-clés à intention mixte | Splitter par cluster d'intention dans des ad groups séparés | Search | Moyen | Moyen | Trimestrielle | [SOP - Regrouper et mapper les mots-cles](<../search/Search - Regrouper et mapper les keywords.md>) |
| Trafic brand et non-brand mélangé dans la même campagne | Splitter en campagnes brand et non-brand séparées avec isolation par mots-clés à exclure | Search | Élevé | Moyen | Trimestrielle | [SOP - Construire la structure de campagne Search](<../search/Search - Construire la structure de campagne Search.md>) |
| Campagne DSA générant du trafic pour des pages déjà couvertes par les campagnes mots-clés | Ajouter des exclusions de pages, ou restructurer le ciblage DSA | Search | Moyen | Faible | Mensuelle | [SOP - Configurer les Dynamic Search Ads](<../search/Search - Configurer les Dynamic Search Ads.md>) |

> ⚠️ **Les changements de structure réinitialisent l'apprentissage :** Consolider ou splitter relance la période d'apprentissage de la stratégie d'enchère. Ne faire des changements structurels que quand les données les soutiennent clairement et que vous pouvez vous permettre 2-3 semaines d'instabilité.

---

## Spécifique PMax

| Déclencheur | Action | Types de campagne | Impact | Risque | Fréquence | SOP d'exécution |
|---------|--------|---------------|--------|------|-----------|---------------|
| Termes de recherche PMax montrant des requêtes non pertinentes | Ajouter aux listes d'exclusion de mots-clés à exclure (désormais supportées) | PMax | Élevé | Faible | Hebdomadaire | [SOP - Analyser les rapports de termes de recherche](<../search/Search - Analyser les rapports de termes de recherche.md>) |
| PMax cannibalise le trafic de la campagne Search marque | Appliquer des exclusions marque au niveau campagne PMax | PMax | Élevé | Moyen | Mensuelle | [SOP - Gerer les termes de recherche PMax et la defense de marque](<../pmax/Pmax - Gérer les termes de recherche PMax et la défense de marque.md>) |
| Allocation canal PMax fortement biaisée vers Display (qualité faible) | Investiguer les signaux des asset groups, ajouter/améliorer les signaux d'audience | PMax | Moyen | Faible | Mensuelle | [SOP - Configurer les signaux d'audience](<../audiences/Audiences - Configurer les signaux d'audience.md>) |
| Vidéos auto-générées qui apparaissent en PMax | Désactiver les assets auto-générés, uploader des créatifs vidéo intentionnels | PMax | Moyen | Faible | Mensuelle | [SOP - Lancer une campagne PMax complete e-commerce](<../pmax/Pmax - Lancer une campagne PMax Full Assets e-commerce.md>) |
| Asset group PMax sans signaux d'audience | Ajouter des signaux (Customer Match, visiteurs site, custom segments) | PMax | Moyen | Faible | Mensuelle | [SOP - Configurer les signaux d'audience](<../audiences/Audiences - Configurer les signaux d'audience.md>) |
| PMax dépense surtout sur les emplacements Shopping en setup full-asset | Normal pour e-commerce : vérifier que la performance Shopping est solide. Vérifier la qualité de l'asset group si la performance non-Shopping est mauvaise | PMax | Faible | Faible | Mensuelle | [SOP - Lancer une campagne PMax complete e-commerce](<../pmax/Pmax - Lancer une campagne PMax Full Assets e-commerce.md>) |
| Campagne PMax Feed-Only montre des emplacements non-Shopping | Vérifier le setup : aucun asset hors-feed ne doit être attaché | PMax | Élevé | Faible | Hebdomadaire | [SOP - Lancer une campagne PMax feed-only](<../pmax/Pmax - Lancer une campagne PMax Feed-Only.md>) |

> 💡 **Les mots-clés à exclure PMax sont disponibles désormais :** Google a déployé les mots-clés à exclure au niveau campagne pour PMax. Vérifier les insights de termes de recherche chaque semaine et construire les listes d'exclusion comme pour les campagnes Search.

---

## Spécifique Demand Gen

| Déclencheur | Action | Types de campagne | Impact | Risque | Fréquence | SOP d'exécution |
|---------|--------|---------------|--------|------|-----------|---------------|
| Seed audience sous 1 000 utilisateurs | Élargir la définition de la seed ou attendre que la liste grandisse | Demand Gen | Élevé | Faible | Mensuelle | [SOP - Lancer une campagne Demand Gen](<../demand-gen/Demand Gen - Lancer une campagne.md>) |
| Lookalike en "Narrow" avec bonne efficacité | Tester l'expansion en "Balanced" pour plus de volume | Demand Gen | Moyen | Moyen | Mensuelle | [SOP - Lancer une campagne Demand Gen](<../demand-gen/Demand Gen - Lancer une campagne.md>) |
| GA4 affiche bien moins de conversions que Google Ads | Normal pour Demand Gen : utiliser Google Ads comme source de vérité | Demand Gen | N/A | N/A | Hebdomadaire | N/A (comportement attendu) |
| Emplacement YouTube qui consomme 80%+ du budget Demand Gen | Examiner la performance des emplacements, envisager des contrôles au niveau chaîne | Demand Gen | Moyen | Faible | Mensuelle | [SOP - Lancer une campagne Demand Gen](<../demand-gen/Demand Gen - Lancer une campagne.md>) |
| Campagne Demand Gen en apprentissage avec < 50 conversions sur 30 jours | Évaluer : élargir l'audience, augmenter le budget, ou baisser la cible CPA pour aider à sortir de l'apprentissage | Demand Gen | Élevé | Moyen | Mensuelle | [SOP - Lancer une campagne Demand Gen](<../demand-gen/Demand Gen - Lancer une campagne.md>) |

> ⚠️ **Les écarts de conversion Demand Gen sont attendus :** GA4 attribue différemment de Google Ads pour les campagnes haut de funnel. Ne pas paniquer quand les chiffres divergent. Utiliser les données de conversion Google Ads pour les décisions d'optimisation au sein des campagnes Demand Gen.

---

## Spécifique Display et Video

| Déclencheur | Action | Types de campagne | Impact | Risque | Fréquence | SOP d'exécution |
|---------|--------|---------------|--------|------|-----------|---------------|
| Emplacements d'apps mobiles générant des clics avec 0 conversion | Exclure toutes les catégories d'apps mobiles | Display, PMax | Élevé | Faible | Hebdomadaire | [SOP - Lancer une campagne Display](<../display/Display - Lancer une campagne.md>) |
| Emplacement suspect (fortes impressions, 0 CTR, ou CTR extrêmement élevé > 10%) | Exclure l'emplacement, marquer pour revue | Display, Video | Moyen | Faible | Hebdomadaire | [SOP - Lancer une campagne Display](<../display/Display - Lancer une campagne.md>) |
| Taux de visionnage vidéo sous 20% (in-stream skippable) | Tester un nouveau créatif vidéo (hook différent dans les 5 premières secondes) | Video | Moyen | Faible | Mensuelle | [SOP - Lancer une campagne Video](<../video/Video - Lancer une campagne.md>) |
| Fréquence > 5 par utilisateur par semaine (prospection) | Resserrer le frequency cap, élargir la portée d'audience | Video, Display | Moyen | Faible | Mensuelle | [SOP - Lancer une campagne Display](<../display/Display - Lancer une campagne.md>) |
| CTR Display sous 0,5% sur tous les emplacements | Évaluer : qualité créative, ciblage d'audience, qualité des emplacements. Un CTR Display faible est normal mais des extrêmes signalent un décalage | Display | Moyen | Faible | Mensuelle | [SOP - Lancer une campagne Display](<../display/Display - Lancer une campagne.md>) |
| Taux de complétion vidéo sous 15% (bumpers non-skippable exclus) | Problème créatif : la vidéo ne retient pas l'attention. Tester un format plus court ou une autre structure narrative | Video | Moyen | Faible | Mensuelle | [SOP - Lancer une campagne Video](<../video/Video - Lancer une campagne.md>) |

> ⚠️ **Les emplacements d'apps mobiles sont la principale source de gaspillage en Display :** Les exclure proactivement sur chaque campagne Display et PMax. Les paramètres par défaut incluent les apps mobiles, et elles ne convertissent quasiment jamais pour les business non-app.

---

## Santé du suivi de conversions

| Déclencheur | Action | Types de campagne | Impact | Risque | Fréquence | SOP d'exécution |
|---------|--------|---------------|--------|------|-----------|---------------|
| Chute du nombre de conversions > 30% semaine sur semaine avec trafic stable | Investiguer le tracking : déclenchement du tag, consent mode, changements de page, mises à jour GTM | Tous | Critique | Faible | Hebdomadaire | [SOP - Investiguer les anomalies de performance](<../optimisation/Optimisation - Investiguer les anomalies de performance.md>) |
| Enhanced Conversions non configurées sur l'action de conversion principale | Implémenter Enhanced Conversions pour récupérer les pertes de données dues au consent mode | Tous | Élevé | Faible | Trimestrielle | [SOP - Implementer les conversions ameliorees](<../suivi/Suivi - Implémenter les conversions améliorées.md>) |
| Déduplication par Transaction ID non active (e-commerce) | Implémenter pour éviter le double comptage et le ROAS gonflé | Shopping, PMax, Search | Élevé | Faible | Trimestrielle | [SOP - Implementer la deduplication par Transaction ID](<../suivi/Suivi - Implémenter la déduplication par Transaction ID.md>) |
| Délai de conversion > 7 jours sur la majorité des conversions | Tenir compte du délai de reporting dans toutes les décisions d'optimisation : utiliser des données ajustées, pas brutes | Tous | Moyen | Faible | Hebdomadaire | [SOP - Investiguer les anomalies de performance](<../optimisation/Optimisation - Investiguer les anomalies de performance.md>) |
| Plusieurs actions de conversion incluses dans la colonne "Conversions" qui ne devraient pas l'être | Régler les actions non-principales en "Secondary" pour les exclure de l'optimisation | Tous | Élevé | Faible | Trimestrielle | [SOP - Configurer le suivi des conversions Google Ads](<../suivi/Suivi - Configurer le suivi des conversions Google Ads.md>) |

> ⚠️ **Les problèmes de tracking de conversion sont la priorité absolue :** De mauvaises données rendent toutes les autres optimisations défectueuses. Si vous suspectez un problème de tracking, arrêter tout autre travail d'optimisation et corriger le tracking d'abord.

**Checklist santé du tracking de conversion (vérification rapide) :**

| Vérification | Comment vérifier | Signal de bonne santé |
|-------|---------------|----------------|
| Déclenchement du tag | Google Tag Assistant, mode Aperçu GTM | Tag déclenché sur toutes les pages de conversion |
| Enhanced Conversions | Paramètres de l'action de conversion | Statut "Active" avec taux de correspondance > 50% |
| Déduplication | Vérifier les transaction IDs dupliqués | Aucune conversion dupliquée dans le reporting |
| Délai de conversion | Rapport Time Lag dans Google Ads | Majorité des conversions sous 7 jours |
| Consent mode | Paramètres de consentement GTM | Consent mode actif, modélisation appliquée |

---

## Résumé des fréquences d'optimisation

À utiliser pour bâtir votre cadence de revue. Chaque fréquence renvoie aux SOP de revue dans le pilier opérationnel.

**Vérifications hebdomadaires :**

| Domaine | Déclencheurs à vérifier |
|------|--------------------|
| Mots-clés et termes de recherche | Non-convertisseurs à 50+ clics, patterns N-gram, promotions de termes de recherche, qualité des requêtes requête large |
| Enchères et budget | Campagnes limitées par le budget, statut d'apprentissage, IS (Budget), pacing budget |
| Spécifique PMax | Termes de recherche non pertinents, fuites d'emplacement Feed-Only |
| Display et Video | Emplacements d'apps mobiles, emplacements suspects |
| Audiences | Audience expansion sur le remarketing |
| Tracking de conversion | Chutes de comptes de conversion, conscience du délai de reporting |

**Vérifications bi-hebdomadaires :**

| Domaine | Déclencheurs à vérifier |
|------|--------------------|
| Niveau de qualité | QS < 7, sous-composants en dessous de la moyenne, chutes QS |
| Mots-clés | Cannibalisation par variante proche, IS (Rank) sur les convertisseurs |
| Annonces et créatifs | Performance des assets PMax, fatigue créative Demand Gen, pertinence d'annonce |

**Vérifications mensuelles :**

| Domaine | Déclencheurs à vérifier |
|------|--------------------|
| Shopping et flux de produits | CTR produit, produits sans clic, compétitivité prix, custom labels, refus flux, produits zombies |
| Landing pages | Benchmarks CVR, vitesse de page, alignement d'URL, message match, taux de rebond, abandon panier |
| Audiences | Performance des segments, taille des listes de remarketing, audiences en observation, fraîcheur Customer Match |
| Extensions | Lacunes de couverture, extensions à zéro clic, taux de rebond des liens annexes, structured snippets |
| Annonces et créatifs | CPI/RPI des RSA, assets auto-générés, backlog de tests créatifs, nombre de titres, diversité d'angles |
| Spécifique PMax | Cannibalisation marque, allocation de canal, vidéos auto-générées, signaux d'audience |
| Structure de campagne | Cannibalisation de mots-clés, chevauchement DSA |
| Demand Gen | Taille de seed audience, expansion d'audience similaire, allocation par emplacement, statut d'apprentissage |
| Enchères | Performance par segment d'appareil, évaluation de stratégie portefeuille |

**Vérifications trimestrielles :**

| Domaine | Déclencheurs à vérifier |
|------|--------------------|
| Enchères | Migration Stratégies d'enchères intelligentes, value-based bidding, cibles basées sur le profit |
| Structure de campagne | Consolidation, split, volume des ad groups, séparation brand/non-brand |
| Audiences | Exclusions démographiques, upload de listes Customer Match |
| Extensions | Audit des extensions auto-générées, plannings d'extension d'appel |
| Shopping | Éligibilité au badge baisse de prix |
| Tracking de conversion | Configuration Enhanced Conversions, déduplication, paramètres d'actions de conversion |

> ↪️ **Pour le workflow complet de revue :** Voir [SOP - Check quotidien de sante du compte](<../optimisation/Optimisation - Check quotidien de santé du compte.md>), [SOP - Revue de performance hebdomadaire](<../../01-strategie/reporting/Reporting - Revue de performance hebdomadaire.md>), [SOP - Revue de performance mensuelle](<../../01-strategie/reporting/Reporting - Revue de performance mensuelle.md>) et [SOP - Revue trimestrielle business](<../../01-strategie/reporting/Reporting - Revue business trimestrielle.md>).

---

### Référence rapide : bibliothèque support

| Document | Type | Utilisé pour |
|----------|------|----------|
| [Améliorer le Niveau de qualité](<../search/Search - Améliorer le Niveau de qualité.md>) | Playbook | Aiguille les décisions d'amélioration QS vers la SOP de sous-composant |
| [Étendre la portée d'audience](<../audiences/Audiences - Étendre la portée d'audience.md>) | Playbook | Aiguille les décisions d'expansion d'audience entre types de campagne |
| [Référence stratégie d'enchère](<../encheres/Enchères - Sélection de stratégie d'enchères.md>) | Référence | Critères de sélection de stratégie, règles de période d'apprentissage |
| [Référence rapport sur les termes de recherche](<../search/Search - Rapport sur les termes de recherche.md>) | Référence | Lecture et interprétation des données de termes de recherche |
| [Référence mots-clés à exclure](<../search/Search - Mots-clés à exclure.md>) | Référence | Mécanique des types de correspondance négatifs et résolution de conflits |
| [Référence Niveau de qualité](<../search/Search - Niveau de qualité.md>) | Référence | Composants du QS, mécaniques de score, priorités d'amélioration |
| [Catalogue Segmentation de feed produit](<../flux-produit/Flux Produit - Tactiques de segmentation.md>) | Catalogue | Stratégies de custom labels pour Shopping et PMax |
| [Catalogue mots-clés à exclure](<../search/Search - Catalogue de mots-clés à exclure.md>) | Catalogue | Patterns de mots-clés à exclure par vertical |

---

### SOPs liés

| SOP | Relation |
|-----|--------------|
| [SOP - Check quotidien de sante du compte](<../optimisation/Optimisation - Check quotidien de santé du compte.md>) | Utilise ce catalogue pour identifier les déclencheurs quotidiens |
| [SOP - Revue de performance hebdomadaire](<../../01-strategie/reporting/Reporting - Revue de performance hebdomadaire.md>) | Utilise ce catalogue pour les actions hebdomadaires |
| [SOP - Revue de performance mensuelle](<../../01-strategie/reporting/Reporting - Revue de performance mensuelle.md>) | Utilise ce catalogue pour les actions mensuelles |
| [SOP - Revue trimestrielle business](<../../01-strategie/reporting/Reporting - Revue business trimestrielle.md>) | Utilise ce catalogue pour les actions trimestrielles |
| [SOP - Investiguer les anomalies de performance](<../optimisation/Optimisation - Investiguer les anomalies de performance.md>) | Aiguille vers ici après diagnostic d'anomalie pour trouver l'action corrective |
| [SOP - Analyser les rapports de termes de recherche](<../search/Search - Analyser les rapports de termes de recherche.md>) | Exécute les actions sur mots-clés et termes de recherche |
| [SOP - Promouvoir les termes de recherche en mots-cles](<../search/Search - Promouvoir les termes de recherche en keywords.md>) | Exécute les actions de promotion de termes de recherche |
| [SOP - Executer une analyse N-gram](<../search/Search - Exécuter une analyse N-gram.md>) | Exécute les actions de mots-clés à exclure basés sur la performance |
| [SOP - Ameliorer le CTR attendu](<../search/Search - Améliorer le CTR attendu.md>) | Exécute les actions d'amélioration Expected CTR |
| [SOP - Ameliorer la pertinence des annonces](<../search/Search - Améliorer la pertinence des annonces.md>) | Exécute les actions d'amélioration Pertinence d'annonce |
| [SOP - Ameliorer l'experience de la page de destination](<../../02-site-web/audit/Audit - Test A-B de Landing Page.md>) | Exécute les actions d'amélioration Landing Page Experience |
| [SOP - Scaler encheres et budgets](<../encheres/Enchères - Scaler les enchères et budgets.md>) | Exécute les actions de scaling des enchères et budgets |
| [SOP - Migrer des encheres manuelles vers Stratégies d'enchères intelligentes](<../encheres/Enchères - Migrer des enchères manuelles vers les stratégies d'enchères intelligentes.md>) | Exécute les migrations vers Stratégies d'enchères intelligentes |
| [SOP - Test RSA avec la boucle d'iteration](<../search/Search - Test RSA avec la boucle d'itération.md>) | Exécute les actions d'optimisation RSA |
| [SOP - Rediger des RSA performantes](<../search/Search - Rédiger des RSA performantes.md>) | Exécute les actions de création d'extensions et d'assets |
| [SOP - Configurer le ciblage par audience](<../audiences/Audiences - Configurer le ciblage par audience.md>) | Exécute les actions d'optimisation d'audience |
| [SOP - Configurer les signaux d'audience](<../audiences/Audiences - Configurer les signaux d'audience.md>) | Exécute les actions de signaux d'audience PMax |
| [SOP - Construire des listes Customer Match](<../audiences/Audiences - Construire des listes Customer Match.md>) | Exécute les actions de listes Customer Match |
| [SOP - Configurer et optimiser le flux produits](<../flux-produit/Flux Produit - Configurer et optimiser le feed produit.md>) | Exécute les actions d'optimisation du feed produit |
| [SOP - Configurer la segmentation Shopping basee sur la performance](<../shopping/Shopping - Configurer la segmentation Shopping basée sur la performance.md>) | Exécute les actions de mise à jour de custom labels |
| [SOP - Auditer et optimiser une page de destination existante](<../../02-site-web/audit/Audit - Auditer et optimiser une LP existante.md>) | Exécute les actions d'optimisation de landing page |
| [SOP - Optimiser le panier et le tunnel de paiement](<../../02-site-web/construction/Construction - Optimiser le panier et le tunnel.md>) | Exécute les actions d'optimisation panier et checkout |
| [SOP - Construire la structure de campagne Search](<../search/Search - Construire la structure de campagne Search.md>) | Exécute les actions de structure de campagne |
| [SOP - Regrouper et mapper les mots-cles](<../search/Search - Regrouper et mapper les keywords.md>) | Exécute le regroupement de mots-clés et la restructuration d'ad groups |
| [SOP - Configurer les Dynamic Search Ads](<../search/Search - Configurer les Dynamic Search Ads.md>) | Exécute les actions de structure et d'exclusion DSA |
| [SOP - Lancer une campagne PMax complete e-commerce](<../pmax/Pmax - Lancer une campagne PMax Full Assets e-commerce.md>) | Exécute les actions de setup et d'asset PMax |
| [SOP - Lancer une campagne PMax feed-only](<../pmax/Pmax - Lancer une campagne PMax Feed-Only.md>) | Exécute le setup et le troubleshooting PMax Feed-Only |
| [SOP - Lancer une campagne Demand Gen](<../demand-gen/Demand Gen - Lancer une campagne.md>) | Exécute les actions d'optimisation Demand Gen |
| [SOP - Lancer une campagne Display](<../display/Display - Lancer une campagne.md>) | Exécute les actions d'emplacement et setup Display |
| [SOP - Lancer une campagne Video](<../video/Video - Lancer une campagne.md>) | Exécute les actions d'optimisation des campagnes Video |
| [SOP - Executer une experimentation de campagne](<Strategie - Lancer une expérience de campagne.md>) | Exécute les tests A/B sur annonces et landing pages |
| [SOP - Selectionner une strategie d'encheres](<../encheres/Enchères - Sélectionner une stratégie d'enchères.md>) | Exécute la sélection de stratégie d'enchère et le diagnostic |
| [SOP - Configurer les strategies d'encheres portefeuille](<../encheres/Enchères - Configurer les stratégies d'enchères de portefeuille.md>) | Exécute les actions de stratégie d'enchère portefeuille |
| [SOP - Configurer les exclusions de donnees](<../suivi/Suivi - Configurer les exclusions de données.md>) | Exécute les actions d'exclusion de données pendant les perturbations de tracking |
| [SOP - Configurer les encheres basees sur la valeur](<../encheres/Enchères - Configurer les enchères basées sur la valeur.md>) | Exécute la migration vers le value-based bidding |
| [SOP - Configurer le suivi panier et profit](<../suivi/Suivi - Configurer le suivi panier et profit.md>) | Exécute le setup du tracking de profit pour POAS |
| [SOP - Implementer les conversions ameliorees](<../suivi/Suivi - Implémenter les conversions améliorées.md>) | Exécute l'implémentation Enhanced Conversions |
| [SOP - Implementer la deduplication par Transaction ID](<../suivi/Suivi - Implémenter la déduplication par Transaction ID.md>) | Exécute le setup de déduplication |
| [SOP - Configurer le suivi des conversions Google Ads](<../suivi/Suivi - Configurer le suivi des conversions Google Ads.md>) | Exécute la configuration des actions de conversion |
| [SOP - Gerer les recommandations Google](<../optimisation/Optimisation - Gérer les recommandations Google.md>) | Références croisées : les recommandations peuvent recouper les déclencheurs de ce catalogue |
| [SOP - Resoudre les refus d'annonces](<Strategie - Résoudre les refus d'annonces.md>) | Adjacent : les refus apparaissent pendant les checks d'optimisation |
| [SOP - Analyser les Insights sur les enchères](<../search/Search - Analyser les Insights sur les enchères.md>) | Exécute l'analyse concurrentielle quand le QS chute ou que l'IS bouge |

---

### Documents liés

| Document | Relation |
|----------|--------------|
| [Pensée systémique et analyse des goulots d'étranglement](<../../01-strategie/fondamentaux/Fondamentaux - Pensée systémique et analyse des goulots d'étranglement.md>) | Fondement théorique pour prioriser les actions d'optimisation |
| [Améliorer le Niveau de qualité](<../search/Search - Améliorer le Niveau de qualité.md>) | Logique d'aiguillage pour les décisions d'amélioration QS |
| [Étendre la portée d'audience](<../audiences/Audiences - Étendre la portée d'audience.md>) | Logique d'aiguillage pour les décisions d'expansion d'audience |
| [Catalogue Segmentation de feed produit](<../flux-produit/Flux Produit - Tactiques de segmentation.md>) | Stratégies de segmentation produit référencées par les déclencheurs Shopping |
| [Catalogue mots-clés à exclure](<../search/Search - Catalogue de mots-clés à exclure.md>) | Patterns de mots-clés à exclure référencés par les déclencheurs mots-clés |
