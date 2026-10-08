# Promouvoir les termes de recherche en mots-cles

> **Plateforme :** Google Ads
> **Catégorie :** Search
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Phase 1️⃣: Identifier

### 1.1 Extraire le Rapport sur les termes de recherche (STR)

**Action :**

1. Accédez au Rapport sur les termes de recherche du groupe d'annonces.
2. Réglez la plage de dates : **30 derniers jours** (étendez à 90 pour les groupes d'annonces à faible volume).
3. Triez par **Impressions (décroissant)**.

### 1.2 Appliquer le seuil de volume

Tous les termes de recherche ne méritent pas d'être évalués. Concentrez-vous sur les requêtes ayant assez de volume pour compter.

**Seuils (par palier selon le volume du compte) :**

| Type de compte | Impressions minimum (30 jours) |
| --- | --- |
| Fort volume | ≥ 100 |
| Volume moyen | ≥ 50 |
| Faible volume | Top 10 des requêtes pas encore ajoutées, triées par impressions (ignorez le seuil absolu) |

**Filtres de signal supplémentaires (optionnels) :**

- A des conversions (≥ 1)

> Commencez par le volume. Si un terme de recherche n'a pas d'impressions significatives, le promouvoir ne vous apportera de toute façon pas de bénéfices significatifs.

---

## Phase 2️⃣: Évaluer

### 2.1 La méthode de décision

Pour chaque requête candidate, déroulez ces trois questions dans l'ordre :

**1️⃣ Est-ce une variante proche d'un mot-clé existant ?**

Les variantes proches incluent : changements d'ordre des mots, singulier/pluriel, mots de remplissage (« for », « the », « a »), fautes/coquilles mineures.

- ✅ **Oui → Ignorer** (fragmente les données sans apporter de valeur)
- ❌ **Non → Continuer**

**2️⃣ Cette requête nécessiterait-elle une annonce sensiblement différente ?**

- ✅ **Oui → Stop.** Ce n'est pas un cas de promotion. Cette requête a besoin de son propre groupe d'annonces (voir le routage ci-dessous).
- ❌ **Non → Continuer**

> ↪️ **Où router les requêtes « Oui » :** Si un groupe d'annonces approprié existe déjà, notez la requête pour ce groupe d'annonces. Si aucun groupe d'annonces approprié n'existe, déclenchez [SOP - Construire la structure de campagne Search](<Search - Construire la structure de campagne Search.md>) (Phase 2 : Créer des groupes d'annonces par thème créatif). Référez-vous au [Modern Search Campaign Mental Model](<Search - Campagne Search moderne.md>) et au [Search Ad Group Structure Mental Model](<Search - Structure des ad groups Search.md>) pour les décisions de structure.

**3️⃣ La promotion crée-t-elle au moins un réel avantage ?**

Promouvez si **l'un** de ces points est vrai :

- Meilleur titre DKI (le mot-clé rend bien en H1)
- Vaut un suivi de QS séparé (assez de volume pour le suivre)
- Vous voulez les Insights sur les enchères pour ce mot-clé et les termes de recherche déclenchés
- Vous avez besoin d'automatisation ou de reporting au niveau du mot-clé
- Vous voulez une meilleure prévisibilité du routage/de la priorisation
- Vous voulez une Final URL au niveau du mot-clé pour une LP plus pertinente
- Vous voulez conserver/suivre l'évolution des données de performance dans le temps

**Résultat :**

- ✅ **Au moins un avantage → PROMOUVOIR**
- ❌ **Aucun avantage clair → IGNORER**

> 💡 **Toute la procédure en une ligne :** Ignorez les variantes proches. Découpez quand l'annonce doit changer. Promouvez quand cela ajoute du contrôle ou de la visibilité.

### 2.2 Le test décisif DKI

Quand vous hésitez, utilisez ce test complémentaire :

> Si ce terme de recherche devenait un mot-clé et déclenchait le DKI, le titre résultant paraîtrait-il meilleur à l'utilisateur ?

- **Oui → Promouvoir**
- **Non (identique ou maladroit) → Ignorer**

### 2.3 Ce qu'il faut promouvoir vs. ignorer

#### ✅ Promouvoir

Promouvez lorsqu'il s'agit d'une **formulation distincte** qui reste dans le thème du groupe d'annonces :

| Type | Exemples |
| --- | --- |
| **Modificateurs commerciaux** | "buy running shoes", "running shoes sale", "running shoes discount" |
| **Qualificatifs de bénéfice** | "running shoes free shipping", "running shoes free returns" |
| **Synonymes attendus des utilisateurs** | "jogging shoes" à côté de "running shoes", "attorney" à côté de "lawyer" |
| **Modificateurs d'offre** | "crm software free trial", "crm software demo" |

#### ❌ Ignorer

Ignorez lorsqu'il ne s'agit que de :

| Type | Exemples |
| --- | --- |
| **Changements d'ordre des mots** | "sale running shoes" vs. "running shoes sale" |
| **Singulier/pluriel** | "running shoe" vs. "running shoes" |
| **Mots de remplissage/grammaire** | "shoes for running" vs. "running shoes" |
| **Coquilles** | "runing shoes", "runnning shoes" |
| **Modificateurs génériques sans valeur pour le titre** | "running shoes online", "crm software online" |

---

## Phase 3️⃣: Exécuter

### 3.1 Choisir le type de correspondance

| Type de correspondance | Quand l'utiliser | Par défaut ? |
| --- | --- | --- |
| **Exact** | Mapping propre, routage plus clair | ✅ Oui |
| **Expression** | Vous voulez une expansion contrôlée depuis la racine sans ajouter plus de mots-clés | Parfois |
| **Requête large** | Couche de découverte : à utiliser intentionnellement pour l'exploration, pas pour la promotion | Rare |

### 3.2 Ajouter le mot-clé

**Action :**

1. Ajoutez le mot-clé au **même groupe d'annonces**.
2. Réglez le type de correspondance selon 3.1 (par défaut : Exact).
3. Si nécessaire, définissez une **Final URL au niveau du mot-clé** pour une page de destination plus pertinente.

> ⚠️ **Astuce Final URL au niveau du mot-clé :** Utilisez ceci quand la même annonce fonctionne mais qu'une LP différente convertirait mieux. Exemple : « running shoes sale » → router vers une page de collection avec les chaussures en promotion triées/priorisées, mais le texte d'annonce standard s'applique toujours (par ex. « Up to -40% Discount »). Cela évite des découpages inutiles de groupes d'annonces tout en améliorant la Landing Page Experience.

### 3.3 Vérification du routage (cas limite)

Dans la plupart des cas, promouvoir au sein du même groupe d'annonces ne nécessite aucun changement de routage.

Cependant, si la requête matchait auparavant depuis un **autre** groupe d'annonces :

1. Vérifiez si vous avez désormais un chevauchement interne (même requête, plusieurs points d'entrée de mots-clés).
2. Si oui, ajoutez un **mot-clé à exclure en exact** dans le groupe d'annonces non préféré pour nettoyer le routage.

> C'est rare pour les promotions au sein du même groupe d'annonces, mais cela peut arriver si vous avez des thèmes qui se chevauchent entre groupes d'annonces.

---

### Exemples

#### E-commerce : Running shoes

**Groupe d'annonces :** Running Shoes

**Mots-clés existants :** "running shoes"

| Search Term | Décision | Raisonnement |
| --- | --- | --- |
| "buy running shoes" | ✅ Promouvoir | Intention d'achat : le DKI affiche "Buy Running Shoes" |
| "running shoes sale" | ✅ Promouvoir | Modificateur commercial : le DKI affiche "Running Shoes Sale" |
| "jogging shoes" | ✅ Promouvoir | Synonyme attendu des utilisateurs + même LP |
| "running shoes free shipping" | ✅ Promouvoir | Qualificatif de bénéfice : valeur DKI + vaut le suivi |
| "running shoe" | ❌ Ignorer | Variante singulière : aucun bénéfice |
| "shoes for running" | ❌ Ignorer | Formulation maladroite : aucun bénéfice DKI |
| "sale running shoes" | ❌ Ignorer | Variante d'ordre des mots |
| "running shoes online" | ❌ Ignorer | « Online » n'ajoute aucune valeur au titre |

#### B2B SaaS : CRM software

**Groupe d'annonces :** CRM Software

**Mots-clés existants :** "crm software"

| Search Term | Décision | Raisonnement |
| --- | --- | --- |
| "buy crm software" | ✅ Promouvoir | Intention d'achat : valeur DKI |
| "crm software free trial" | ✅ Promouvoir | Modificateur d'offre : vaut un suivi séparé |
| "crm software demo" | ✅ Promouvoir | Modificateur d'offre : URL au niveau du mot-clé vers la page de démo |
| "crm platform" | ✅ Promouvoir | Synonyme : le DKI affiche "CRM Platform" |
| "crm tool" | ✅ Promouvoir | Synonyme : formulation différente que les utilisateurs recherchent |
| "software crm" | ❌ Ignorer | Variante d'ordre des mots |
| "crm softwares" | ❌ Ignorer | Variante de pluriel/grammaire |
| "crm software online" | ❌ Ignorer | « Online » n'ajoute aucune valeur |

#### Lead Gen : Divorce lawyer

**Groupe d'annonces :** Divorce Lawyer Amsterdam

**Mots-clés existants :** "divorce lawyer amsterdam"

| Search Term | Décision | Raisonnement |
| --- | --- | --- |
| "divorce attorney amsterdam" | ✅ Promouvoir | Synonyme : "attorney" vs. "lawyer" |
| "hire divorce lawyer amsterdam" | ✅ Promouvoir | Modificateur d'action : le DKI reflète l'intention |
| "divorce lawyer amsterdam free consultation" | ✅ Promouvoir | Modificateur d'offre : URL au niveau du mot-clé vers la page de consultation |
| "amsterdam divorce lawyer" | ❌ Ignorer | Variante d'ordre des mots |
| "divorce lawyers amsterdam" | ❌ Ignorer | Variante de pluriel |
| "lawyer for divorce amsterdam" | ❌ Ignorer | Formulation maladroite |

---

### Validation et critères de complétion

#### Comment valider

1. **Immédiat :** Confirmez que le mot-clé est actif (pas de statut limité) et accumule des impressions.
2. **Court terme (7-14 jours) :** Vérifiez que le mot-clé capture bien les termes de recherche visés.
3. **Moyen terme (14-30 jours) :** Le QS se renseigne : est-il en ligne avec la moyenne du groupe d'annonces ?

#### Signaux d'alerte à surveiller

| Signal | Signification | Action |
| --- | --- | --- |
| Le nouveau mot-clé a un QS significativement plus bas que la moyenne du groupe d'annonces | Décalage potentiel annonce/LP | Voir [Improve Niveau de qualité](<Search - Améliorer le Niveau de qualité.md>) |
| Le nouveau mot-clé génère des impressions mais aucune conversion | Fragmentation sans valeur | Envisager de mettre en pause/supprimer |

#### Définition du terminé

Cette SOP est terminée quand :

- [ ] Les termes de recherche à fort signal (selon les seuils de volume) ont été évalués
- [ ] Méthode de décision appliquée à chaque candidat
- [ ] Mots-clés promus ajoutés avec le bon type de correspondance
- [ ] Final URLs au niveau du mot-clé définies le cas échéant
- [ ] Aucun problème de chevauchement de routage
- [ ] Aucun signal d'alerte après la période de surveillance de 14 jours

---

### FAQ

**Q : Combien de mots-clés dois-je promouvoir par groupe d'annonces ?**

R : Pas de nombre magique. Ne promouvez que ce qui passe la méthode de décision. Certains groupes d'annonces n'ont besoin d'aucun nouveau mot-clé, d'autres en ont besoin de 5+. **La qualité prime sur la quantité.**

**Q : Dois-je promouvoir des requêtes qui convertissent même si ce sont des variantes proches ?**

R : Pas automatiquement. Une variante proche qui convertit reste une variante proche. Si elle fragmente sans ajouter de contrôle ni de visibilité, ignorez-la. Le mot-clé existant capture déjà ces conversions.

**Q : Que faire si une requête passe la méthode mais a un très faible volume ?**

R : Faible volume = retour QS lent. Vous pouvez tout de même promouvoir pour la valeur DKI ou le contrôle du routage, mais n'attendez pas d'insights diagnostiques rapides. Priorisez d'abord les candidats à fort volume.

**Q : Dois-je supprimer l'ancien mot-clé après avoir promu une version plus spécifique ?**

R : Généralement non. Le mot-clé d'origine sert de filet général (catch-all). Le mot-clé promu gère la variante spécifique. Ils fonctionnent ensemble.

**Q : Quel est le lien avec la stratégie de requête large ?**

R : La requête large est votre couche de découverte. Cette SOP porte sur ce que vous faites de ces découvertes. Les requêtes à fort signal passent de requête large → exact. On ne « promeut pas en requête large ».

**Q : Et si je n'utilise pas le DKI ?**

R : La promotion apporte tout de même de la valeur pour le suivi du QS, les Insights sur les enchères, le contrôle du routage et l'automatisation. Mais le DKI est un levier majeur : envisagez de l'activer.

**Q : Puis-je lancer cette SOP pour un groupe d'annonces tout neuf ?**

R : Oui, mais il vous faut d'abord des données. Attendez 30 jours que le Rapport sur les termes de recherche se remplisse, ou amorcez des mots-clés issus de la recherche, puis lancez cette SOP une fois les données accumulées.

**Q : Quand utiliser une Final URL au niveau du mot-clé plutôt que de découper vers un nouveau groupe d'annonces ?**

R : Utilisez une Final URL au niveau du mot-clé quand la même annonce fonctionne mais qu'une LP différente convertit mieux. Découpez quand vous avez besoin d'une annonce sensiblement différente (titre différent, CTA différent, offre différente).

---

### Erreurs courantes

| Erreur | Pourquoi c'est un problème | Correction |
| --- | --- | --- |
| Promouvoir chaque terme de recherche qui convertit | Crée de la fragmentation : beaucoup sont des variantes proches | Appliquer strictement la méthode de décision |
| Promouvoir des variantes d'ordre des mots | Aucun bénéfice DKI + fragmente les données | Les ignorer |
| Promouvoir en requête large | Va à l'encontre du but : la requête large est pour la découverte | Utiliser exact (par défaut) ou expression |
| Promouvoir des requêtes qui nécessitent des annonces différentes | Ce sont des cas de Split & Route | Les déplacer plutôt vers un nouveau groupe d'annonces |
| Ne pas définir de Final URLs au niveau du mot-clé quand c'est pertinent | Manque une opportunité de pertinence de LP | Définir une URL personnalisée pour une meilleure conversion |
| Ne pas surveiller après la promotion | On rate les signaux d'alerte : on n'apprend pas ce qui fonctionne | Vérifier à 7-30 jours |

---

### Passerelle de sortie

Une fois terminée, les mots-clés promus sont actifs et surveillés. À partir d'ici :

- Si les mots-clés promus font ressortir des problèmes d'Ad Relevance → [SOP - Ameliorer la pertinence des annonces](<Search - Améliorer la pertinence des annonces.md>)
- Si les mots-clés promus nécessitent une expérimentation créative → [SOP - Ameliorer le CTR attendu](<Search - Améliorer le CTR attendu.md>)
- Si un chevauchement de routage nécessite un nettoyage → ajoutez des mots-clés à exclure directement aux listes partagées ou via [SOP - Executer une analyse N-gram](<Search - Exécuter une analyse N-gram.md>)

---

### Procédures liées

| SOP | Relation |
| --- | --- |
| [SOP - Analyser les rapports de termes de recherche](<Search - Analyser les rapports de termes de recherche.md>) | Amont (identifie les candidats à la promotion) |
| [Search Ad Group Structure Mental Model](<Search - Structure des ad groups Search.md>) | Amont (détermine s'il faut découper ou promouvoir) |
| [SOP - Construire la structure de campagne Search](<Search - Construire la structure de campagne Search.md>) | Amont (crée de nouveaux groupes d'annonces quand aucun emplacement approprié n'existe) |
| [SOP - Ameliorer la pertinence des annonces](<Search - Améliorer la pertinence des annonces.md>) | Cette SOP est une dépendance de la Phase 2.2 |
| [SOP - Ameliorer le CTR attendu](<Search - Améliorer le CTR attendu.md>) | Aval (les mots-clés promus peuvent faire ressortir de nouveaux angles créatifs) |
| [SOP - Executer une analyse N-gram](<Search - Exécuter une analyse N-gram.md>) | Parallèle (nettoyage du routage si nécessaire) |

### Documents liés

| Document | Type | Relation |
| --- | --- | --- |
| [Search Term Report Reference](<Search - Rapport sur les termes de recherche.md>) | Reference | Colonnes du STR, filtres, interprétation |
| [Match Type Reference](<Search - Types de correspondance.md>) | Reference | Orientation de sélection du type de correspondance |
| [Modern Search Campaign Mental Model](<Search - Campagne Search moderne.md>) | Mental Model | Contexte de structure de campagne |
