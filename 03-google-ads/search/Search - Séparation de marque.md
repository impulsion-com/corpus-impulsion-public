# Séparation de marque

> **Plateforme :** Google Ads
> **Catégorie :** Search
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Documente comment implémenter la séparation de marque par type de campagne (Search, Shopping standard, PMax) et comment vérifier qu'elle fonctionne.

---

## Ce que couvre cette fiche / Ce qu'elle ne couvre PAS

**Cette fiche :**

- Fournit les étapes d'implémentation par type de campagne (Search, Shopping standard, PMax)
- Documente les mécanismes d'exclusion de marque dans PMax
- Fournit les méthodes de vérification et signaux d'alerte

**Cette fiche ne couvre PAS :**

- La stratégie d'enchères sur les keywords de marque (Voir : [Bidding Strategy Mental Model](<../encheres/Enchères - Stratégie d'enchères.md>))
- La structure des campagnes de marque (Voir : les modèles mentaux par type de campagne)
- La recherche de keywords de marque (Voir : [SOP - Construire la structure de campagne Search](<Search - Construire la structure de campagne Search.md>))
- Les paramètres de sécurité de la marque / brand suitability (c'est la brand suitability de contenu, pas la séparation de marque)

---

## Aide-mémoire : séparation de marque par type de campagne

| **Type de campagne** | **Méthode** | **Implémentation** |
| --- | --- | --- |
| **Search** | Campagne de marque dédiée + mots-clés à exclure | Créer une campagne de marque avec les keywords de marque. Ajouter les termes de marque en mots-clés à exclure dans toutes les campagnes non-marque. |
| **Shopping standard** | Campagne Shopping de marque dédiée + mots-clés à exclure | Créer une campagne Shopping de marque. Ajouter les termes de marque en mots-clés à exclure dans les campagnes Shopping non-marque. |
| **PMax** | Exclusions de marque au niveau campagne | Aller dans les paramètres de la campagne PMax > Exclusions de marque > sélectionner votre marque. |

---

## Quand utiliser cette fiche

La séparation de marque est un prérequis structurel pour une mesure précise des campagnes. Les modèles mentaux de structure expliquent pourquoi et quand elle s'applique :

- [Search Campaign Structure Mental Model](<Search - Structure de campagne Search.md>) : la marque se sépare toujours au niveau campagne
- [Shopping Campaign Type Mental Model](<../shopping/Shopping - Types de campagne Shopping.md>) : séparation de marque à travers tous les types de campagnes E-commerce
- [PMax Structure Mental Model (Ecommerce)](<../pmax/Pmax - Structure PMax (E-commerce).md>) : exclusions de marque pour les PMax E-commerce
- [PMax Structure Mental Model (Lead Gen/SaaS)](<../pmax/Pmax - Structure PMax (Lead Gen-SaaS).md>) : exclusions de marque pour les PMax Lead Gen/SaaS

**Ne pas faire la séparation de marque uniquement quand :** le compte est exclusivement de marque, ou le compte est tout neuf avec zéro notoriété. Réévaluer mensuellement.

---

## Implémentation : Search

Créer une campagne Search de marque dédiée avec tous les keywords de marque (nom de marque, marque + produit, marque + tarif, fautes d'orthographe). Définir les enchères Max CPC ciblant un taux de première position absolue >85%. Créer une liste partagée de mots-clés à exclure "Branded" en **requête large** (capture plus de variations qu'exact ou phrase) et l'appliquer à toutes les campagnes Search non-marque. Vérifier en consultant les termes de recherche dans les campagnes non-marque pour détecter les fuites de requêtes de marque.

> Étapes complètes de configuration : voir [SOP - Build Search Campaign Structure](<Search - Construire la structure de campagne Search.md>) pour la SOP complète de construction de la campagne de marque.

---

## Implémentation : Shopping standard

Créer une campagne Shopping de marque dédiée (priorité Basse) ciblant les produits dont le nom de marque apparaît dans le titre ou l'attribut brand. Définir les campagnes Shopping non-marque en priorité Haute avec les termes de marque en mots-clés à exclure. Cela crée un query sculpting : les requêtes de marque touchent la campagne non-marque haute priorité d'abord, sont rejetées par le negative keyword, et retombent dans la campagne de marque basse priorité.

> Étapes complètes de configuration : voir [SOP - Launch Standard Shopping Campaign](<../shopping/Shopping - Lancer une campagne Shopping standard.md>) pour la SOP complète de construction de la campagne Shopping.

---

## Implémentation : Performance Max

Dans chaque campagne PMax non-marque, aller dans **Paramètres > Exclusions de marque > Exclure des marques spécifiques**, rechercher votre marque et la sélectionner (ajouter en personnalisé si elle n'est pas listée). Exclure votre nom de marque principal, les variantes, les fautes d'orthographe et les sous-marques. Après l'enregistrement, confirmer que les exclusions s'affichent correctement et vérifier le rapport sur les termes de recherche dans la première semaine pour détecter les fuites de marque.

> Les exclusions de marque dans PMax ne sont pas des mots-clés à exclure : Google utilise son propre système de classification de marque (pas basé sur les keywords). Certaines requêtes de marque passent au travers si Google ne les classifie pas comme marque. Compléter avec des listes de mots-clés à exclure et un monitoring hebdomadaire.

> Étapes complètes de configuration : voir [SOP - Manage PMax Search Terms and Brand Defense](<../pmax/Pmax - Gérer les termes de recherche PMax et la défense de marque.md>) pour la SOP complète d'exclusion de marque PMax.

### Limitations des exclusions de marque (fuites marque/non-marque)

Les exclusions de marque PMax matchent les noms de marque exacts mais ne capturent pas les variations :

| **Limitation** | **Impact** | **Solution** |
| --- | --- | --- |
| Fautes d'orthographe non détectées | Les requêtes de marque avec des fautes (ex : "Nikee" pour "Nike") sont servies dans les PMax non-marque | Ajouter les fautes courantes aux listes de mots-clés à exclure |
| Abréviations non détectées | Les noms de marque raccourcis (ex : "MS" pour "Microsoft") contournent les exclusions | Ajouter les abréviations aux listes de mots-clés à exclure |
| Variations d'ordre des mots | Des arrangements de mots différents peuvent contourner les filtres | Construire des listes de mots-clés à exclure complètes |

**Recommandation :** Traitez les exclusions de marque PMax comme la première couche de défense. Utilisez les listes de mots-clés à exclure comme mécanisme principal pour une séparation marque/non-marque stricte dans PMax.

> AI Max a la même limitation : les inclusions et exclusions de marque d'AI Max matchent uniquement les noms de marque exacts, manquant les fautes d'orthographe, abréviations et variations d'ordre des mots. Sans exclusions de marque configurées avant d'activer AI Max, le matching étendu peut agressivement scaler vers les requêtes de marques concurrentes. Voir [AI Max for Search Mental Model](<Search - Activer AI Max.md>) pour le profil de risque complet.

---

## Vérification : comment confirmer que la séparation de marque fonctionne

| **Vérification** | **Comment** | **Fréquence** |
| --- | --- | --- |
| **Rapport sur les termes de recherche** | Examiner les campagnes non-marque pour les fuites de requêtes de marque | Hebdomadaire |
| **Métriques de la campagne de marque** | La campagne de marque montre un CTR élevé (15%+), un CPA bas, un ROAS élevé | Hebdomadaire |
| **Métriques non-marque** | Le non-marque montre un CTR réaliste (plus bas) et un CPA plus élevé/ROAS plus bas que la marque | Hebdomadaire |
| **Termes de recherche PMax** | Vérifier les requêtes de marque apparaissant dans les campagnes PMax non-marque | Hebdomadaire |
| **Auction insights** | La campagne de marque montre 90%+ de taux d'impressions sur les termes de marque | Mensuelle |

### Signaux d'alerte que la séparation ne fonctionne pas

| **Signal** | **Cause probable** | **Solution** |
| --- | --- | --- |
| Campagne non-marque avec CTR >10% | Requêtes de marque qui fuient | Ajouter plus de mots-clés à exclure de marque |
| Termes de recherche PMax montrent des requêtes de marque | Exclusions de marque incomplètes | Ajouter la marque à la liste d'exclusion PMax |
| Campagne de marque avec <80% de taux d'impressions | Keywords de marque manquants ou budget trop bas | Ajouter des keywords, augmenter le budget |
| ROAS blended baisse quand la campagne de marque est mise en pause | Le non-marque était masqué derrière la performance de marque | Ajuster les cibles non-marque à des niveaux réalistes |

---

## Erreurs courantes

| **Erreur** | **Problème** | **Solution** |
| --- | --- | --- |
| Ne pas faire la séparation de marque du tout | Métriques gonflées, Stratégies d'enchères intelligentes optimise pour le mauvais signal | Implémenter la séparation de marque par type de campagne |
| N'utiliser que des mots-clés à exclure en mot-clé exact pour la marque | Les requêtes phrase et broad de marque passent encore | Ajouter des mots-clés à exclure de marque en expression exacte au minimum |
| Oublier les exclusions de marque PMax | PMax capture le trafic de marque, gonfle ses métriques | Ajouter les exclusions de marque dans chaque campagne PMax non-marque |
| Se reposer uniquement sur les exclusions de marque (PMax/AI Max) | Les fautes d'orthographe, abréviations et variations passent au travers | Compléter avec des listes de mots-clés à exclure pour une couverture complète |
| Pas de monitoring après la configuration | Les requêtes de marque évoluent dans le temps | Examiner les termes de recherche chaque semaine |
| Séparer la marque mais ne pas ajuster les cibles non-marque | Les cibles non-marque étaient basées sur des données blended gonflées | Réévaluer les cibles CPA/ROAS après la séparation |

---

## Documents liés

| **Document** | **Relation** |
| --- | --- |
| [Search Campaign Structure Mental Model](<Search - Structure de campagne Search.md>) | Utilise la séparation de marque comme prérequis structurel |
| [Standard Shopping Campaign Structure Mental Model](<../shopping/Shopping - Structure de campagne Shopping standard.md>) | Utilise la séparation de marque pour la structure Shopping standard |
| [PMax Structure Mental Model (Ecommerce)](<../pmax/Pmax - Structure PMax (E-commerce).md>) | Utilise les exclusions de marque pour la structure PMax E-commerce |
| [PMax Structure Mental Model (Lead Gen/SaaS)](<../pmax/Pmax - Structure PMax (Lead Gen-SaaS).md>) | Utilise les exclusions de marque pour la structure PMax Lead Gen/SaaS |
| [Shopping Campaign Type Mental Model](<../shopping/Shopping - Types de campagne Shopping.md>) | Séparation de marque comme principe à travers tous les types de campagnes E-commerce |
| [Search PMax Query Routing Reference](<../pmax/Pmax - Routage des requêtes Search PMax.md>) | Coordination des exclusions de marque entre Search et PMax |
| [AI Max for Search Mental Model](<Search - Activer AI Max.md>) | Limitations des contrôles de marque dans AI Max for Search |
| [SOP - Construire la structure de campagne Search](<Search - Construire la structure de campagne Search.md>) | Exécution (configuration de la campagne de marque) |
