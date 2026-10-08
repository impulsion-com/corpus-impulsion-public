# Seuils de volume de conversions

> **Plateforme :** Google Ads
> **Catégorie :** Suivi
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Documente le volume minimum de conversions requis pour chaque stratégie d'enchères sur tous les types de campagne, plus les tactiques à appliquer quand vous n'atteignez pas les seuils.

---

## Ce que couvre cette fiche / Ce qu'elle ne couvre PAS

**Cette fiche :**

- Liste les seuils minimum de conversions par stratégie d'enchères et par type de campagne
- Explique les vérifications de viabilité budgétaire et de délai de conversion
- Fournit une liste priorisée de tactiques quand le volume est insuffisant

**Cette fiche ne couvre PAS :**

- Quelle stratégie d'enchères choisir (Voir : [Bid Strategy Selection Reference](<../encheres/Enchères - Sélection de stratégie d'enchères.md>))
- Les décisions de structure de campagne (Voir : les modèles mentaux par type de campagne)
- La configuration pas à pas de la stratégie d'enchères (Voir : les SOP par type de campagne)

---

## Aide-mémoire : seuils par type de campagne

### Search

| **Stratégie d'enchères** | **Minimum absolu** | **Minimum fonctionnel** | **Recommandé** | **Notes** |
| --- | --- | --- | --- | --- |
| **CPA cible** | 15 | 30 | 50+ | |
| **ROAS cible** | 30 | 50 | 50+ | Nécessite plus de données en raison de la variance des valeurs |
| **Maximiser les conversions** | 15 | 30 | 50+ | Sans cible : plus de risque/moins de contrôle |
| **Maximize Conv. Value** | 30 | 50 | 50+ | Sans cible : plus de risque/moins de contrôle |
| **Target Impression Share** | N/A | N/A | N/A | Basé sur le volume, pas les conversions |

### Shopping standard

| **Stratégie d'enchères** | **Minimum absolu** | **Minimum fonctionnel** | **Recommandé** | **Notes** |
| --- | --- | --- | --- | --- |
| **CPC manuel** | N/A | N/A | N/A | Bon point de départ : plus de gestion |
| **Maximiser les clics** | N/A | N/A | N/A | À éviter dans la plupart des cas |
| **ROAS cible** | 30 | 50 | 50+ | Nécessite des données en raison de la variance des valeurs |

### Performance Max (tous secteurs)

| **Stratégie d'enchères** | **Minimum absolu** | **Minimum fonctionnel** | **Recommandé** | **Notes** |
| --- | --- | --- | --- | --- |
| **Maximiser les conversions** | N/A | N/A | N/A | Bon pour la montée en puissance (sans cible) |
| **Maximize Conv. Value** | N/A | N/A | N/A | Bon pour la montée en puissance (sans cible) |
| **CPA cible** | 15 | 30 | 50+ | Ajouté par-dessus Max Conversions |
| **ROAS cible** | 30 | 50 | 50+ | Ajouté par-dessus Max Conv Value |

### Display

| **Stratégie d'enchères** | **Minimum absolu** | **Minimum fonctionnel** | **Recommandé** | **Notes** |
| --- | --- | --- | --- | --- |
| **CPA cible** | 15 | 30 | 50+ | Seuil standard |
| **ROAS cible** | 30 | 50 | 50+ | Barre plus haute en raison de la variance des valeurs |
| **Maximiser les conversions** | 15 | 30 | 50+ | Bon pour la montée en puissance |

### Video

| **Stratégie d'enchères** | **Minimum absolu** | **Minimum fonctionnel** | **Recommandé** | **Notes** |
| --- | --- | --- | --- | --- |
| **Target CPM** | N/A | N/A | N/A | Basé sur les impressions, pas les conversions |
| **Max CPV** | N/A | N/A | N/A | Basé sur les vues, pas les conversions |
| **CPA cible** | 15 | 30 | 50+ | Uniquement via Demand Gen (les Video Action Campaigns ont été fusionnées dans Demand Gen en 2025) |

### Demand Gen

| **Stratégie d'enchères** | **Minimum absolu** | **Minimum fonctionnel** | **Recommandé** | **Notes** |
| --- | --- | --- | --- | --- |
| **CPA cible** | 15 | 30 | 50+ | Seuil standard |
| **ROAS cible** | 30 | 50 | 50+ | Barre plus haute en raison de la variance des valeurs |
| **Maximiser les conversions** | 15 | 30 | 50+ | Bon pour la montée en puissance |

> Demand Gen nécessite un volume plus élevé par ad group : visez 50+ conversions par ad group par 30 jours. Demand Gen diffuse sur plusieurs surfaces (YouTube, Discover, Gmail) et a besoin de plus de signal pour allouer entre elles. Consolidez les ad groups de manière agressive.

> Éligibilité Maximiser la valeur de conversion pour Demand Gen : nécessite au moins 50 conversions avec valeur dans les 30 derniers jours au sein de la campagne, ou au moins 100 conversions avec valeur sur toutes les campagnes Demand Gen dans les 30 derniers jours. Sans atteindre ce seuil, Maximiser la valeur de conversion (incluant le ROAS cible) n'est pas disponible comme stratégie d'enchères.

---

## Vérification de viabilité budgétaire

Atteindre le seuil de conversions est nécessaire mais pas suffisant. Vous avez aussi besoin d'assez de budget pour y arriver.

| **Vérification** | **Quoi évaluer** | **Exemple** |
| --- | --- | --- |
| **CPC vs budget** | Votre budget quotidien peut-il générer assez de clics pour produire 30+ conversions/mois ? | À 15 € de CPC et 3% de taux de conversion, il faut ~1 000 clics/mois = 15 000 €/mois. Si votre budget est de 5 000 €, vous ne pouvez pas atteindre 30 conversions. |
| **Secteurs à CPC élevé** | Juridique, assurance, B2B SaaS ont souvent des CPC de 20-80 €+ | Même 30 conversions/mois peut nécessiter 10 000-50 000 €+/mois de budget |
| **Secteurs à CPC faible** | E-commerce, services locaux ont souvent des CPC de 1-5 € | 30 conversions/mois peut ne nécessiter que 500-2 000 €/mois |

**La formule :**

Budget mensuel requis = (Conversions cibles / Taux de conversion) x CPC moyen

Si le résultat dépasse votre budget, vous devez consolider les campagnes ou revoir à la baisse vos ambitions de stratégie d'enchères.

---

## Vérification du délai de conversion

L'attribution Stratégies d'enchères intelligentes se fait sur votre fenêtre de conversion, pas instantanément. Des fenêtres d'évaluation courtes sous-comptent les conversions.

| **Délai de conversion** | **Fenêtre d'évaluation minimum** | **Courant dans** |
| --- | --- | --- |
| 1-3 jours | 7-14 jours | E-commerce, achats impulsifs |
| 7-14 jours | 21-30 jours | Services locaux, achats réfléchis |
| 14-30 jours | 30-60 jours | B2B SaaS, services à forte valeur |
| 30-90 jours | 60-180 jours | B2B entreprise, ventes complexes |

> Évaluez sur au moins 2x votre délai de conversion : une campagne qui semble avoir 15 conversions/mois peut en réalité en avoir 30+ une fois les conversions retardées attribuées. Vérifiez le rapport "Jours avant conversion" dans Google Ads pour comprendre votre délai.

---

## Quand vous ne pouvez pas atteindre les seuils

Utilisez ces tactiques par ordre de priorité. Commencez par le haut, descendez uniquement si l'option précédente n'est pas viable.

| **Priorité** | **Tactique** | **Comment ça fonctionne** | **Idéal pour** |
| --- | --- | --- | --- |
| 1re | **Consolider les campagnes** | Fusionner les campagnes avec une intention/des cibles similaires en moins de campagnes | Comptes sur-segmentés, campagnes avec <15 conversions chacune |
| 2e | **Stratégie d'enchères de portefeuille** | Regrouper plusieurs campagnes sous une stratégie d'enchères partagée | Campagnes nécessitant des budgets séparés mais pouvant partager les signaux d'enchères |
| 3e | **Supprimer les cibles (mode montée en puissance)** | Utiliser Maximiser les conversions ou Maximize Conv. Value sans cible CPA/ROAS | Nouvelles campagnes, campagnes sortant de l'apprentissage, historique insuffisant |
| 4e | **Remonter dans le tunnel** | Optimiser pour les micro-conversions (ajout au panier, début de formulaire) au lieu des conversions finales | Secteurs à faible volume où les conversions finales sont rares |
| 5e | **Réduire la segmentation** | Moins de segments produit, moins d'ad groups, moins de campagnes | Comptes Shopping/PMax avec trop de segments par bucket |
| 6e | **Élargir le ciblage** | Types de correspondance plus larges, audiences plus larges, nouvelles zones géo | Campagnes limitées par le ciblage, pas par le budget |
| Dernier | **Accepter un volume plus faible** | Utiliser CPC manuel ou Maximiser les clics s'il y a une raison business convaincante | Secteurs de niche où 30 conversions/mois est structurellement impossible |

> Les stratégies d'enchères de portefeuille peuvent être un moyen à faible risque de tester la consolidation. Regroupez des campagnes avec des cibles similaires, laissez Stratégies d'enchères intelligentes optimiser sur l'ensemble. Si la performance s'améliore, envisagez une consolidation complète.

---

## Exceptions et nuances des seuils

| **Situation** | **Ajustement** |
| --- | --- |
| **E-commerce avec forte variance de valeur** | Le ROAS cible nécessite 50+ (pas 30+) car les valeurs de revenu varient largement entre les produits |
| **Lead Gen avec import de conversions offline** | Les seuils s'appliquent à l'action de conversion importée, pas aux soumissions de formulaire |
| **Activités saisonnières** | Évaluer les seuils sur votre saison haute, pas la basse saison |
| **Nouvelles campagnes** | Commencer avec Maximiser les conversions (sans cible) pour accumuler des données, puis ajouter des cibles une fois le volume stable |
| **Multi-compte / MCC** | Les stratégies d'enchères cross-compte ne sont pas disponibles : chaque compte doit atteindre les seuils indépendamment |
| **Buckets de segmentation produit** | Chaque bucket (Hero, Sidekick, Villain, Zombie) doit indépendamment atteindre les seuils. Sinon, consolidez les buckets. |

---

## Erreurs courantes

| **Erreur** | **Problème** | **Solution** |
| --- | --- | --- |
| Définir un ROAS cible avec <50 conversions/mois | L'algorithme oscille, performance instable | Utiliser Maximize Conv. Value (sans cible) jusqu'à atteindre 50 |
| Évaluer trop tôt | Le délai de conversion fait paraître le volume plus bas que la réalité | Attendre 2x votre délai de conversion avant de juger |
| Diviser les campagnes sans vérifier le volume | Chaque nouvelle campagne doit indépendamment atteindre les seuils | Calculer le volume attendu par campagne avant de diviser |
| Ignorer la viabilité budgétaire | La campagne a techniquement assez d'impressions mais le plafond budgétaire empêche les conversions | Vérifier CPC x clics requis vs budget quotidien |
| Utiliser des stratégies avec cible pendant la montée en puissance | Les nouvelles campagnes n'ont pas d'historique : les cibles contraignent trop tôt | Commencer sans cible, ajouter les cibles après 2-4 semaines de conversions stables |

---

## Documents liés

| **Document** | **Relation** |
| --- | --- |
| [Search Campaign Structure Mental Model](<../search/Search - Structure de campagne Search.md>) | Utilise les seuils pour les décisions de segmentation |
| [Standard Shopping Campaign Structure Mental Model](<../shopping/Shopping - Structure de campagne Shopping standard.md>) | Utilise les seuils pour la sélection de stratégie d'enchères Shopping standard |
| [PMax Structure Mental Model (Ecommerce)](<../pmax/Pmax - Structure PMax (E-commerce).md>) | Utilise les seuils pour les décisions de stratégie d'enchères PMax E-commerce |
| [PMax Structure Mental Model (Lead Gen/SaaS)](<../pmax/Pmax - Structure PMax (Lead Gen-SaaS).md>) | Utilise les seuils pour les décisions de stratégie d'enchères PMax Lead Gen/SaaS |
| [Shopping Campaign Type Mental Model](<../shopping/Shopping - Types de campagne Shopping.md>) | Utilise les seuils pour la sélection de type de campagne |
| [Upper Funnel Campaign Structure Mental Model](<../strategie/Strategie - Structure de campagne haut de tunnel.md>) | Utilise les seuils pour les décisions Display, Video, Demand Gen |
| [Product Feed Segmentation Mental Model](<../flux-produit/Flux Produit - Choisir une segmentation.md>) | Utilise les seuils pour la viabilité des buckets de segmentation |
| [Bid Strategy Selection Reference](<../encheres/Enchères - Sélection de stratégie d'enchères.md>) | En aval (sélection et configuration de la stratégie d'enchères) |
