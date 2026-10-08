# Améliorer la pertinence des annonces

> **Plateforme :** Google Ads
> **Catégorie :** Search
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Phase 1️⃣: Diagnostiquer

### 1.1 Audit sémantique (le Single Ad Test)

**Objectif :** Confirmer que le groupe d'annonces représente **un seul thème d'intention de recherche cohérent**.

Si un groupe d'annonces contient des mots-clés demandant des *définitions* ET des mots-clés demandant des *tarifs*, vous ne pouvez pas rédiger une annonce pertinente pour les deux.

**Action :**

1. Ouvrez le groupe d'annonces.
2. Triez les mots-clés par **Impressions (décroissant)**.
3. Listez les 10 principaux mots-clés.
4. Lancez le **Single Ad Test** (Voir : [Search Ad Group Structure Mental Model](<Search - Structure des ad groups Search.md>)) :

> ❓ **Posez-vous la question :** Une seule RSA peut-elle servir tous les mots-clés de ce groupe d'annonces sans qu'aucun titre ou description ne semble générique ou en décalage ?

- **Oui (réussi) :** Aucun découpage structurel nécessaire. Continuer vers 1.2.
- **Non (échoué) :** Une divergence d'intention existe. Diagnostiquez le type de divergence → Signalez pour la Phase 2 (Split & Route).

>
> 💡 **Si le test échoue :** Utilisez la Intent Divergence Taxonomy dans le [Search Ad Group Structure Mental Model](<Search - Structure des ad groups Search.md>) pour diagnostiquer *quel type* de divergence existe. Cela détermine si vous devez découper ou si vous pouvez résoudre avec DKI/personnalisateurs.

---

### 1.2 Vérification de l'alignement intention → message

**Objectif :** S'assurer que le *type* d'annonce correspond à l'*intention* de la requête.

La pertinence ne consiste pas seulement à intégrer des mots-clés dans les composants de votre RSA, il s'agit aussi de correspondre à l'étape du tunnel.

| Intention du mot-clé | L'utilisateur veut… | L'annonce (& LP) doit fournir… | Exemple de titre |
| --- | --- | --- | --- |
| **Informationnelle** ("how to", "what is") | Des réponses | Guide, définition, explication | "Project Management 101 Guide" |
| **Commerciale** ("best", "review", "vs") | Une comparaison | Différenciateurs, preuve sociale | "Rated #1 by 10,000+ Teams" |
| **Transactionnelle** ("buy", "price", "demo") | Passer à l'action | Prix, offre, rapidité, CTA | "Start Free Trial - 2 Min Setup" |

**Action :** Passez en revue vos principaux mots-clés. Dans quelle catégorie d'intention tombent-ils ? Votre texte d'annonce actuel correspond-il à ce type d'intention ?

- **Oui (aligné) :** Continuer vers la Phase 3.
- **Non (mal aligné) :** Signalez pour la Phase 3 (réécriture du texte nécessaire).

> Intention mixte dans un seul groupe d'annonces ? Cela signifie généralement que vous avez échoué au Single Ad Test en **1.1**. Revenez à ce diagnostic et signalez pour la Phase 2.

---

## Phase 2️⃣: Corriger la structure

*N'exécutez cette phase que si la Phase 1 a révélé des problèmes structurels.*

### 2.1 Split & route (version abrégée)

**Objectif :** Corriger la divergence d'intention sans priver le compte de données.

> ⚠️ **La règle d'or :** Ne consolidez jamais au-delà du point où les annonces cessent d'être spécifiques. Si l'offre, le CTA ou l'intention utilisateur change entre les mots-clés, ils appartiennent à des groupes différents.

**Avant de découper, envisagez les alternatives :**

| Alternative | À utiliser quand | Référence |
| --- | --- | --- |
| Dynamic Keyword Insertion | Les mots-clés sont des synonymes/variantes | [Dynamic Text Reference](<Search - Texte dynamique.md>) |
| Ad Customizers au niveau du mot-clé | Besoin de descripteurs différents par mot-clé | [Keyword Ad Customizer Attribute Catalog](<Search - Attributs de personnalisation par mot-cle.md>) |
| Final URLs au niveau du mot-clé | Même intention, pages de destination différentes | - |
| Location Insertion | Variantes de localisation | [Dynamic Text Reference](<Search - Texte dynamique.md>) |

>
> ↪️ Voir [Search Ad Group Structure Mental Model](<Search - Structure des ad groups Search.md>) → « Alternatives to Splitting » pour l'orientation de décision complète.

**Si le découpage est nécessaire :**

1. Isolez le thème divergent (par ex. séparer « running shoes » de « trail running shoes »).
2. Créez un nouveau groupe d'annonces pour le thème spécifique.
3. Déplacez les mots-clés concernés vers le nouveau groupe d'annonces.

> ⚠️ **Routage du trafic (critique) :**
> - Ajoutez les mots-clés du *nouveau* groupe d'annonces comme **mots-clés à exclure** dans l'*ancien* groupe d'annonces.
> - *Pourquoi ?* Si vous ne le bloquez pas, l'ancien groupe d'annonces continuera de voler du trafic, et votre nouveau groupe d'annonces, plus pertinent, sera « affamé ».
> - *Exemple :* Si vous découpez « trail running shoes » dans un nouveau groupe d'annonces, ajoutez le mot-clé à exclure « trail » en requête large dans le groupe d'annonces générique « running shoes ».

>
> ↪️ **Note :** Pour une SOP complète sur les principes de structure des groupes d'annonces, voir : [Search Ad Group Structure Mental Model](<Search - Structure des ad groups Search.md>).

---

### 2.2 Promotion des requêtes (version abrégée)

**Objectif :** Promouvoir des termes de recherche en mots-clés (au sein du même groupe d'annonces) pour permettre de meilleurs diagnostics de qualité d'annonce et une meilleure efficacité du DKI, sans fragmenter les données en créant des points d'entrée d'enchère redondants.

> 💡 **Le Niveau de qualité est basé sur les impressions historiques pour les recherches exactes de votre mot-clé :** Mais ajouter des mots-clés en variante proche crée plusieurs points d'entrée vers la même enchère → fragmentation des données → apprentissage algorithmique plus faible. Vous devez trouver un équilibre.

#### Le filtre de décision

Avant de promouvoir un terme de recherche dans le même groupe d'annonces, demandez-vous :

> Cette requête apporte-t-elle de la valeur en tant que mot-clé à part entière pour **(1)** l'insertion DKI, ou **(2)** un suivi de QS séparé, tout en utilisant la même annonce et la même page de destination ?

- **Oui → Promouvoir** (formulation distincte qui vaut la peine d'être mise en avant via DKI pour augmenter la qualité d'annonce ou pour un suivi séparé)
- **Non → Ignorer** (variante proche qui fragmente sans apporter de valeur diagnostique ni de pertinence)

> Si la requête nécessite une annonce ou une page de destination sensiblement différente, elle appartient à un nouveau groupe d'annonces **(voir 2.1)**.

---

#### Action

1. Ouvrez le **Rapport sur les termes de recherche** pour le groupe d'annonces (par défaut : 30 derniers jours. Étendez à 90 si faible volume).
2. Filtrez sur les **requêtes à fort signal** : Impressions ≥ 50 (abaissez le seuil si faible volume).
3. Appliquez le filtre de décision ci-dessus à chaque candidat.
    1. **Oui → Promouvoir** (formulation distincte qui vaut la peine d'être mise en avant via DKI pour augmenter la qualité d'annonce ou pour un suivi séparé)
    - **Non → Ignorer** (variante proche qui fragmente sans apporter de valeur diagnostique ni de pertinence)

>
> ↪️ **Note :** Pour l'exécution complète, voir : **SOP - Promouvoir les termes de recherche en mots-clés**. Ceci est la version abrégée à des fins de pertinence des annonces.

---

## Phase 3️⃣: Corriger le texte

*Exécutez cette phase pour chaque groupe d'annonces, indépendamment de la Phase 2.*

### 3.1 Pertinence au niveau des titres

**Objectif :** Combler l'écart entre le terme de recherche et votre annonce pour améliorer la pertinence de l'annonce (Ad Relevance).

#### Sélection de la méthode :

| Si… | Alors utilisez… | Référence |
| --- | --- | --- |
| Termes de marque, sensibles ou complexes | Static Anchoring | [Headline Angle Catalog](<Search - Angles de headlines.md>)  → Type 1 |
| Listes de mots-clés étendues | Dynamic Keyword Insertion (DKI) | [Dynamic Text Reference](<Search - Texte dynamique.md>) |
| Mixte : certains mots-clés nécessitent le DKI, d'autres du contrôle | Approche combinée | Les deux références ci-dessus |

#### Action :

1. **Sélectionnez votre méthode** à l'aide du tableau ci-dessus.
2. **Rédigez votre titre d'ancrage de pertinence (H1)** à partir des patterns du Headline Angle Catalog → Type 1 : Relevance Anchor.
3. **Répartissez les signaux sémantiques** sur plusieurs titres (pas seulement H1).

#### Règle de distribution sémantique :

Ne limitez pas le thème du mot-clé au seul H1. Répartissez les signaux de pertinence sur les titres là où cela sonne naturel.

*Pourquoi ?* Google assemble les RSA dynamiquement. Si vos signaux sémantiques sont concentrés dans un seul titre, de nombreuses combinaisons d'annonces sembleront génériques. Les répartir garantit que plus de combinaisons passent le test de pertinence de l'annonce.

> ⚠️ **L'objectif est une distribution naturelle**, pas une répétition forcée. Chaque titre doit rester lisible et servir un objectif (bénéfice, CTA, preuve sociale, etc.). Voir [Headline Angle Catalog](<Search - Angles de headlines.md>) pour les patterns par type.

---

### 3.2 Pertinence au niveau des descriptions (optimisation du texte en gras)

**Objectif :** Renforcer les signaux de pertinence des titres tout en développant le message.

Les descriptions doivent **poursuivre le fil de pertinence** établi dans vos titres, puis ajouter des informations complémentaires (contexte, preuve, bénéfices).

#### Action :

1. **Incluez l'expression clé principale** (ou une variante proche) naturellement dans au moins une description.
2. **Allez au-delà du titre** avec une preuve, des bénéfices ou du contexte en appui.
3. Utilisez les patterns du [Description Expansion Catalog](<Search - Patterns d'expansion de descriptions.md>).

#### Règles :

| À faire | À éviter |
| --- | --- |
| Inclure le mot-clé naturellement dans D1 | Bourrer les mots-clés de façon répétée |
| Ajouter de nouvelles informations (preuve, bénéfice, contexte) | Répéter les messages des titres avec d'autres mots |
| Faire le pont pertinence → persuasion | Faire des descriptions uniquement composées de mots-clés |

> ⚠️ **Principe clé :** Les descriptions ne sont pas une deuxième occasion de répéter ce que disent les titres. C'est l'occasion de *renforcer* la pertinence tout en *ajoutant* de la persuasion. Voir [Description Expansion Catalog](<Search - Patterns d'expansion de descriptions.md>) pour les patterns d'expansion, tout en améliorant la pertinence de l'annonce.

---

### Validation et critères de complétion

#### Comment valider

Le Niveau de qualité est un indicateur retardé. Ne vous attendez pas à ce qu'il change du jour au lendemain.

1. **Court terme (7-14 jours) :** Vérifiez le **CTR**. Si la pertinence s'améliore, le CTR devrait augmenter car les utilisateurs voient ce qu'ils ont recherché.
2. **Moyen terme (14-30 jours) :** Vérifiez le statut **Ad Relevance** (Below Avg → Average → Above Average).

> Vos enchères et la concurrence au niveau de l'enchère impacteront aussi votre CTR. Veillez à comparer ce qui est comparable.

#### Définition du terminé

Cette SOP est terminée quand :

- [ ]  Le groupe d'annonces passe le Single Ad Test (intention unifiée)
- [ ]  L'alignement intention → message est confirmé (l'étape du tunnel correspond au type d'annonce)
- [ ]  Le routage du trafic (mots-clés à exclure) est en place pour tout découpage
- [ ]  Les titres contiennent des signaux sémantiques répartis (pas seulement H1)
- [ ]  Au moins une description inclut l'expression clé principale (optimisation du texte en gras)
- [ ]  Ad Relevance ≠ *Below Average* pendant **14 jours consécutifs**

**Pont sortie → entrée :**

Une fois terminée, les critères de sortie de cette SOP deviennent les critères d'entrée de [SOP - Ameliorer le CTR attendu](<Search - Améliorer le CTR attendu.md>), là où commence l'expérimentation créative ([SOP - Test RSA avec la boucle d'iteration](<Search - Test RSA avec la boucle d'itération.md>)).

---

### FAQ

**Q : Dois-je lancer des tests créatifs pendant que je corrige l'Ad Relevance ?**

R : Non. Corrigez d'abord les fondations. L'expérimentation créative suppose que vos groupes d'annonces sont déjà sémantiquement resserrés. Si l'Ad Relevance est Below Average, vos tests seront faussés par du bruit structurel.

**Q : Combien de temps avant de voir l'Ad Relevance s'améliorer ?**

R : Généralement 7-14 jours pour que le label se mette à jour. Les améliorations de CTR apparaissent souvent plus tôt (en quelques jours).

**Q : Que faire si l'Ad Relevance reste bloquée sur « Average » ?**

R : « Average » est acceptable pour la plupart des comptes. Si vous avez besoin de « Above Average », revenez à la Phase 3 (distribution sémantique plus serrée et optimisation des descriptions). Ne sur-optimisez pas ici, passez plutôt à l'Expected CTR.

**Q : Dois-je utiliser le DKI ou le Static Anchoring ?**

R : Utilisez le DKI quand les mots-clés sont prévisibles, sûrs pour la marque et de longueur similaire. Utilisez le Static Anchoring pour les termes de marque, dans les situations complexes, ou quand vous avez besoin d'un contrôle serré du message.

**Q : Comment savoir s'il faut découper ou utiliser des alternatives (DKI, personnalisateurs) ?**

R : Utilisez la Intent Divergence Taxonomy dans le [Search Ad Group Structure Mental Model](<Search - Structure des ad groups Search.md>). La divergence d'étape de tunnel et d'audience nécessite presque toujours un découpage. La divergence de synonyme, de modificateur et de localisation peut généralement être gérée avec des fonctionnalités dynamiques.

---

### Référence rapide : bibliothèque support

| Document | Type | Utilisé dans |
| --- | --- | --- |
| [Search Ad Group Structure Mental Model](<Search - Structure des ad groups Search.md>) | Mental Model | Phase 1.1, Phase 2.1 |
| [Headline Angle Catalog](<Search - Angles de headlines.md>) | Catalog | Phase 3.1 |
| [Headline Quality Checklist](<Search - [Review] Qualité des titres.md>)  | Checklist | Phase 3.1 |
| [Description Expansion Catalog](<Search - Patterns d'expansion de descriptions.md>) | Catalog | Phase 3.2 |
| [Description Quality Checklist](<../strategie/Strategie - [Review] Qualité des descriptions.md>)  | Checklist | Phase 3.2 |
| [Dynamic Text Reference](<Search - Texte dynamique.md>)  | Reference | Phase 3.1 + 3.2 |
| [Keyword Ad Customizer Attribute Catalog](<Search - Attributs de personnalisation par mot-cle.md>) | Catalog | Phase 2.1 (alternatives) |

---

### Procédures liées

| SOP | Relation |
| --- | --- |
| [Search Ad Group Structure Mental Model](<Search - Structure des ad groups Search.md>) | Fondamental (principes de structure, Single Ad Test) |
| *SOP - Promouvoir les termes de recherche en mots-clés* | Amont (dépendance de la Phase 2.2) |
| [SOP - Ameliorer le CTR attendu](<Search - Améliorer le CTR attendu.md>)  | Phase suivante du QS Playbook |
| [SOP - Ameliorer l'experience de la page de destination](<../../02-site-web/audit/Audit - Test A-B de Landing Page.md>) | Dernière phase du QS Playbook |
| [SOP - Test RSA avec la boucle d'iteration](<Search - Test RSA avec la boucle d'itération.md>) | Optimisation continue |
