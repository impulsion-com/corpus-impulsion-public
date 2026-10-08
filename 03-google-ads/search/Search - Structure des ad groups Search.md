# Structure des ad groups Search

> **Plateforme :** Google Ads
> **Catégorie :** Search
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Ce document vous aide à décider comment regrouper les keywords en ad groups pour maximiser la pertinence des annonces sans fragmenter les données.

> ❓ **La question centrale :** Est-ce qu'une seule RSA peut servir efficacement tous les keywords de cet ad group ?

Les ad groups sont la **couche de pertinence** de votre compte Search. Ils déterminent :

- **Quels keywords déclenchent quelles annonces :** Les keywords vivent dans les ad groups
- **Quelles annonces servent quelle intention :** Les RSAs vivent dans les ad groups
- **Quelles landing pages correspondent à quelles requêtes :** Les URLs finales sont définies au niveau annonce/keyword

---

## Ce que ce modèle NE couvre PAS

Ce document NE couvre PAS :

- Les décisions de structure au niveau campagne comme le budget ou la séparation de stratégie d'enchères (Voir : [Search Campaign Structure Mental Model](<Search - Structure de campagne Search.md>))
- Les instructions de rédaction de RSA ou l'affectation des emplacements de titres (Voir : [SOP - Rediger des RSA performantes](<Search - Rédiger des RSA performantes.md>))
- La structure des ad groups pour les campagnes Display, Video ou Demand Gen (Voir : [Upper Funnel Campaign Structure Mental Model](<../strategie/Strategie - Structure de campagne haut de tunnel.md>))
- L'explication de comment adapter le message au stade de conscience de l'audience (Voir : [Awareness Stage Mental Model](<../../01-strategie/redaction/Rédaction - Niveaux de conscience.md>))

---

## Campagne vs. Ad Group

Comprendre ce qui appartient à chaque niveau évite les erreurs de structure :

| **Décision** | **Niveau campagne** | **Niveau ad group** |
| --- | --- | --- |
| **Budget** | ✅ Contrôle les dépenses | ❌ Pas de budget par ad group |
| **Stratégie d'enchères** | ✅ CPA cible, ROAS cible, etc. | ❌ Hérité |
| **Objectifs d'efficacité** | ✅ Objectifs CPA/ROAS | ❌ Hérité (mais peut être outrepassé) |
| **Objectifs de conversion** | ✅ Quelles actions optimiser | ❌ Hérité |
| **Localisation/Langue** | ✅ Ciblage géographique | ❌ Hérité |
| **Planning de diffusion** | ✅ Jours/heures | ❌ Hérité |
| **Keywords** | ❌ | ✅ Les keywords vivent ici |
| **Texte d'annonce (RSAs)** | ❌ | ✅ Les RSAs vivent ici |
| **Landing pages** | ❌ | ✅ URLs finales ici |
| **Pertinence de l'annonce** | ❌ | ✅ Contrôlée ici |

> 💡 **La règle simple :** Les campagnes contrôlent le *budget et les objectifs*. Les ad groups contrôlent la *pertinence et le message*.

---

## Le compromis fondamental

> 💡 **Plus d'ad groups = des annonces plus adaptées, mais des données fragmentées. Moins d'ad groups = plus de données par RSA, mais un message moins spécifique.**

| **Approche** | **Avantage** | **Risque** |
| --- | --- | --- |
| **Consolidation** | Plus d'impressions par RSA, apprentissage plus rapide, gestion plus simple | Les annonces peuvent sembler génériques pour certains keywords |
| **Segmentation** | Annonces très spécifiques par thème de keyword | Fragmentation des données, plus de RSAs à gérer, duplication potentielle |

**Pourquoi les ad groups favorisent la consolidation plus que vous ne le pensez :**

- Les RSAs avec **7-8 titres** peuvent couvrir plusieurs angles sans pauvreté de données (Voir : SOP - [SOP - Test RSA avec la boucle d'iteration](<Search - Test RSA avec la boucle d'itération.md>) pour la combinatoire)
- L'**insertion dynamique de keyword (DKI)** adapte le H1 à la requête de recherche
- Les **URLs finales au niveau keyword** vous permettent de router vers différentes pages sans séparer
- Les **Ad Customizers** vous permettent de varier le message par keyword au sein d'une seule RSA
- Stratégies d'enchères intelligentes optimise au **niveau de la requête**, pas au niveau de l'ad group

> ⚠️ **Pourquoi 7-8 titres, pas 15 ?** Plus de titres = plus de combinaisons = moins de données par combinaison = apprentissage plus lent. Une RSA à 15 titres crée 2 730 combinaisons possibles de 3 titres. Il faudrait ~273 000 impressions pour des données significatives. Avec 7-8 titres, ça descend à ~33 600.

---

## La règle d'or

> ⚠️ **Consolider par défaut. Séparer uniquement quand une seule RSA ne peut pas servir de manière crédible tous les keywords.**

**Le test :** Si vous avez besoin d'un message fondamentalement différent (pas juste un H1 différent), séparez l'ad group.

---

## Le test de l'annonce unique

Le test de l'annonce unique détermine si les keywords appartiennent ensemble dans un ad group.

> ❓ **Posez-vous la question :** Est-ce qu'une seule RSA peut servir tous les keywords de cet ad group sans qu'aucun titre ou description ne semble générique ou inadapté ?

### Comment exécuter le test

1. Lister les 10 keywords principaux de l'ad group (par impressions)
2. Pour chaque keyword, imaginez l'annonce idéale :
    1. Que dirait la combinaison de 2/3 titres ?
    2. Que mettrait en avant la description ?
3. Demandez-vous : Est-ce qu'une seule RSA peut couvrir toutes ces variations ?
    1. SI **oui** → Garder consolidé
    2. SI **non** → Diagnostiquer le type de divergence (voir ci-dessous)

### Exemples qui passent le test

| **Keywords** | **Pourquoi ça passe** | **Stratégie RSA** |
| --- | --- | --- |
| "logiciel crm", "plateforme crm", "outil crm" | Même intention, synonymes | DKI dans H1, H2-H7 couvrent les angles standard (proposition de valeur, USP, preuve sociale, suppression du risque, CTA) |
| "plombier urgence", "plombier 24h", "plombier proche maintenant" | Même urgence, même besoin | DKI dans H1, H2-H7 couvrent les angles restants identiquement avec des modificateurs d'urgence |
| "chaussures de course", "chaussures de course livraison gratuite", "chaussures de course promo" | Même produit, modificateurs commerciaux | H1 ancre produit, modificateurs commerciaux adressés dans les emplacements H2-H7 (par ex. livraison dans le value booster, promo dans le CTA) |
| "avocat divorce amsterdam", "avocat divorce amsterdam" | Même intention, synonyme + localisation | DKI ou insertion de localisation dans H1, H2-H7 identiques pour les deux keywords |

### Exemples qui échouent au test

| **Keywords** | **Pourquoi ça échoue** | **La séparation** |
| --- | --- | --- |
| "logiciel crm" + "qu'est-ce qu'un crm" | Intention d'achat vs. intention d'apprentissage | AG Transactionnel vs. AG Informationnel |
| "crm pour petites entreprises" + "crm entreprise" | Audiences différentes, messages différents | AG PME vs. AG Entreprise |
| "logiciel crm" + "certification crm" | Produit vs. éducation | AG Logiciel vs. AG Certification |
| "chaussures de course" + "meilleures chaussures pour pieds plats" | Générique vs. besoin spécifique | AG Principal vs. AG Pieds plats |

---

## Taxonomie de divergence d'intention

Quand le test de l'annonce unique échoue, diagnostiquez *quel type* de divergence vous observez :

| **Type de divergence** | **Description** | **Séparer ?** | **Raisonnement** |
| --- | --- | --- | --- |
| **Étape du tunnel** | Informationnelle vs. commerciale vs. transactionnelle | ✅ Toujours | Message d'annonce complètement différent requis |
| **Segment d'audience** | PME vs. Entreprise, B2B vs. B2C | ✅ Oui | Points de douleur, preuves et CTAs différents |
| **Problème / cas d'usage** | "CRM pour les ventes" vs. "CRM pour le support" | ⚠️ Souvent | Peut nécessiter des propositions de valeur différentes ; évaluer le volume |
| **Type de produit / service** | "CRM" vs. "gestion de projet" | ✅ Toujours | Produits différents = ad groups différents |
| **Fonctionnalité / attribut** | "CRM avec email" vs. "CRM avec reporting" | ⚠️ Si volume élevé | Peut souvent être géré avec des titres multiples |
| **Modificateur commercial** | "CRM" vs. "meilleur CRM" vs. "avis CRM" | ❌ Non | Même intention, formulation de requête différente |
| **Synonyme / variante** | "CRM" vs. "gestion de la relation client" | ❌ Non | Intention identique |
| **Modificateur de localisation** | "plombier" vs. "plombier amsterdam" | ❌ Non | Utiliser l'insertion de localisation ou les URLs au niveau keyword |
| **Singulier / pluriel** | "chaussure de course" vs. "chaussures de course" | ❌ Non | Variantes proches, même intention |

---

## Méthode de décision

```
           ┌─────────────────────────────────────┐
           │  Exécuter le test de l'annonce unique│
           │  Une RSA peut servir tous les KWs ?  │
           └──────────────┬──────────────────────┘
                          │
           ┌──────────────┴──────────────┐
           │                             │
          OUI                            NON
           │                             │
           ▼                             ▼
┌──────────────────┐         ┌──────────────────────┐
│GARDER CONSOLIDÉ  │         │ Diagnostiquer le type │
│                  │         │ de divergence         │
└──────────────────┘         └──────────┬───────────┘
                                        │
                     ┌──────────────────┴──────────────────┐
                     │                                     │
           Funnel / Audience /                    Modificateur / Synonyme /
           Problème / Produit                     Localisation / Variante
                     │                                     │
                     ▼                                     ▼
           ┌──────────────────┐                 ┌──────────────────────┐
           │ SÉPARER LES AG   │                 │ GARDER CONSOLIDÉ     │
           │                  │                 │ Utiliser DKI,        │
           │                  │                 │ customizers,         │
           │                  │                 │ ou URLs au niv. KW   │
           └──────────────────┘                 └──────────────────────┘
```

---

## Alternatives à la séparation

Avant de créer un nouvel ad group, considérez ces alternatives :

| **Alternative** | **Quand l'utiliser** | **Comment ça fonctionne** |
| --- | --- | --- |
| **Insertion dynamique de keyword (DKI)** | Les keywords sont des synonymes/variantes | H1 s'adapte pour correspondre au keyword déclencheur. Voir : [Dynamic Text Reference](<Search - Texte dynamique.md>) pour la syntaxe, les limites et le comportement de fallback |
| **Ad Customizers au niveau keyword** | Besoin de descripteurs différents par keyword | Attributs personnalisés par keyword. Voir : [Dynamic Ad Customizer Attribute Catalog](<Search - Attributs de personnalisation dynamique.md>) et [SOP - Configurer les personnalisateurs dynamiques d'annonces](<Search - Configurer les personnalisateurs d'annonces dynamiques.md>) |
| **URLs finales au niveau keyword** | Même intention, landing pages différentes | Outrepasser l'URL de la RSA par keyword |
| **Insertion de localisation** | Variantes de localisation | Insère la localisation géographique de l'utilisateur dans l'annonce. Voir : [Dynamic Text Reference](<Search - Texte dynamique.md>) pour la syntaxe et les niveaux de localisation disponibles (ville, région, pays) |
| **Titres multiples** | Angles différents nécessaires | Utiliser H2-H7 pour les variations |

> ⚠️ **Règle de base :** Si vous pouvez résoudre le problème avec DKI, customizers ou URLs au niveau keyword : ne séparez pas. La séparation doit être le dernier recours, pas le premier réflexe.

---

## Quand la séparation est correcte

Séparer les ad groups quand :

| **Situation** | **Pourquoi la séparation est correcte** |
| --- | --- |
| **L'étape du tunnel diffère** | "Qu'est-ce que X" a besoin d'une annonce éducative, "acheter X" a besoin d'une annonce transactionnelle |
| **Le segment d'audience diffère** | PME a besoin d'un message "abordable, facile" ; Entreprise a besoin de "scalable, sécurisé" |
| **L'intention de la landing page diffère** | Les keywords nécessitent des types de pages fondamentalement différents (blog vs. page produit) |
| **Le texte d'annonce ne peut pas être réconcilié** | Aucune RSA unique ne peut servir les deux sets de keywords sans être générique |
| **Le Niveau de qualité souffre** | Ad Relevance = En dessous de la moyenne malgré de bons keywords |

---

## Convention de nommage des ad groups

Un nommage clair évite la confusion et permet le filtrage :

**Pattern :** `[Intention/Thème] - [Modificateur si nécessaire]`

| **Bon** | **Mauvais** |
| --- | --- |
| `Logiciel CRM - Principal` | `Groupe d'annonces 1` |
| `Logiciel CRM - Entreprise` | `Keywords CRM` |
| `Plombier Urgence` | `Plombier truc` |
| `Chaussures Course - Trail` | `CC-T-001` |

> 💡 **Conseil :** Inclure le thème de keyword principal dans le nom. Vous devriez pouvoir comprendre ce qu'il y a dans l'ad group sans l'ouvrir.

---

## Exemples de structures par secteur

Chaque exemple montre le test de l'annonce unique en action : les ad groups sont séparés uniquement quand une seule RSA ne peut pas servir tous les keywords de manière crédible.

### Lead Generation (B2B SaaS)

| **Ad group** | **Raison de la séparation (test de l'annonce unique)** | **Technique clé** |
| --- | --- | --- |
| Logiciel CRM - Principal | Synonymes (logiciel/plateforme/outil) passent le test | DKI dans H1, ad customizers pour les modificateurs |
| Logiciel CRM - Entreprise | Divergence d'audience : message "scalable, sécurisé" | LP différente (/entreprise/) |
| Logiciel CRM - PME | Divergence d'audience : message "facile, abordable" | LP différente (/petite-entreprise/) |
| Tarification CRM | Divergence d'intention : comparaison de prix vs. évaluation de fonctionnalités | LP différente (/tarification/) |
| Démo CRM | Divergence d'étape de tunnel : bas de tunnel, CTA orienté essai | LP différente (/demo/) |

### Services locaux

| **Ad group** | **Raison de la séparation (test de l'annonce unique)** | **Technique clé** |
| --- | --- | --- |
| Plombier Urgence | Les keywords d'urgence passent ensemble (urgence, 24h, urgent) | CTA appel, message d'urgence |
| Plombier Proche | Les variantes de localisation passent ensemble | Insertion de localisation, URLs au niveau keyword par ville |
| Plombier Installation | Divergence de type de service par rapport à la réparation | LP spécifique au service |
| Plombier Réparation | Divergence de type de service par rapport à l'installation | LP spécifique au service |

### E-commerce

| **Ad group** | **Raison de la séparation (test de l'annonce unique)** | **Technique clé** |
| --- | --- | --- |
| Chaussures Course - Principal | Synonymes (chaussures/baskets/jogging) passent ensemble | DKI dans H1, ad customizers |
| Chaussures Course - Trail | Divergence de problème/cas d'usage : message accroche, durabilité | LP catégorie (/trail/) |
| Chaussures Course - Pieds plats | Divergence de problème/cas d'usage : message maintien/stabilité | LP catégorie (/pieds-plats/) |
| Chaussures Course - Marques | Même intention (marque + produit) : toutes les marques dans un AG | Ad customizers pour le nom de marque, URLs au niveau keyword |

---

## Erreurs courantes

| **Erreur** | **Pourquoi c'est un problème** | **Que faire à la place** |
| --- | --- | --- |
| **Un keyword par ad group (SKAGs)** | Fragmente les données, pas d'apprentissage RSA, charge massive | Consolider par thème d'intention |
| **Séparer par type de correspondance** | Même intention, fragmentation inutile | Garder les types de correspondance ensemble |
| **Séparer par variante mineure** | "Logiciel CRM" vs "Outil CRM" n'ont pas besoin d'AGs séparés | Utiliser DKI et/ou ad customizers au niveau keyword |
| **Séparer par localisation** | "plombier amsterdam" vs "plombier rotterdam" | Utiliser DKI, insertion de localisation, ad customizers au niveau keyword + URLs |
| **Trop d'ad groups par campagne** | Charge de gestion, données maigres | Viser max 25 ad groups par campagne |
| **Noms d'ad groups génériques** | Impossible de comprendre la structure d'un coup d'oeil | Nommer par thème/intention |
| **Mélanger les étapes du tunnel** | Impossible d'écrire une annonce pertinente pour les deux | Séparer par étape du tunnel |
| **Mélanger les audiences** | PME et Entreprise nécessitent des messages différents | Séparer par audience |
| **Dupliquer les keywords entre AGs** | Compétition interne, budget gaspillé | Un seul domicile par keyword |
| **Pas de catch-all / DSA** | Manque les opportunités long-tail | Utiliser un ad group DSA pour la découverte |

---

## La relation RSA-Ad Group

> 💡 **Une RSA par ad group est le standard :** Plusieurs RSAs divisent les impressions et ralentissent l'apprentissage.

| **Scénario** | **RSAs par ad group** | **Pourquoi** |
| --- | --- | --- |
| **Standard** | 1 | Consolide l'apprentissage, test clair |
| **Test d'angles** | 2 (via Expérimentations) | A/B test avec rigueur statistique |
| **Nettoyage legacy** | Consolider à 1 | Supprimer les sous-performeurs |

---

## Clusters de test : la structure active le test

Quand plusieurs ad groups partagent le même thème d'intention, ils peuvent partager un **modèle RSA :** les mêmes affectations d'emplacements (H1 = Ancre de pertinence, H2 = Proposition de valeur, etc.) avec seulement le H1 qui varie par ad group. Cela permet le **test agrégé** : au lieu de 5 000 impressions par ad group, vous obtenez 50 000+ impressions sur l'ensemble du cluster, atteignant la significativité statistique plus rapidement.

| **Concept de cluster** | **Ce que ça signifie** |
| --- | --- |
| **Modèle** | Mêmes emplacements de titres assignés aux mêmes types d'angles entre les ad groups |
| **Agrégation** | Mutualiser les données de performance des assets entre les ad groups pour un apprentissage plus rapide |
| **Itération** | Tester les types d'angles à grande échelle, pas des annonces individuelles en isolation |

> ⚠️ **La structure active le test :** Si vos ad groups sont structurés de manière cohérente (mêmes emplacements = mêmes angles), vous pouvez tester le créatif à grande échelle. Si chaque ad group est un cas unique, vous êtes piégé dans la pauvreté de données.

Voir : [SOP - Test RSA avec la boucle d'iteration](<Search - Test RSA avec la boucle d'itération.md>) pour la méthodologie de test complète.

---

## Principes clés

1. **Les ad groups contrôlent la pertinence, pas le budget :** Si vous avez besoin de budgets différents, c'est une décision de campagne.
2. **Le test de l'annonce unique est votre guide :** Si une seule RSA peut servir tous les keywords de manière crédible, gardez-les ensemble.
3. **Diagnostiquer avant de séparer :** Utilisez la taxonomie de divergence d'intention pour comprendre *quel type* de divergence existe.
4. **La séparation est le dernier recours :** DKI, customizers et URLs au niveau keyword résolvent souvent le problème sans fragmentation.
5. **L'étape du tunnel et l'audience justifient presque toujours les séparations :** Elles créent des besoins de message fondamentalement différents.
6. **Les synonymes, modificateurs et localisations ne justifient presque jamais les séparations :** Utilisez les fonctionnalités dynamiques à la place.
7. **Une RSA par ad group :** Plusieurs RSAs fragmentent l'apprentissage.
8. **7-8 titres par RSA :** Plus de titres = plus de combinaisons = pauvreté de données. (Voir : [SOP - Test RSA avec la boucle d'iteration](<Search - Test RSA avec la boucle d'itération.md>))
9. **Nommer les ad groups clairement :** Vous devriez comprendre le contenu sans ouvrir l'ad group.
10. **La structure active le test :** Une structure cohérente des ad groups permet le test créatif agrégé entre les clusters.

---

## Documents liés

| **Document** | **Relation** |
| --- | --- |
| [Modern Search Campaign Mental Model](<Search - Campagne Search moderne.md>) | En amont (philosophie Search globale : consolidation, interaction enchères-type de correspondance, thèmes créatifs) |
| [Search Campaign Structure Mental Model](<Search - Structure de campagne Search.md>) | En amont (les décisions de campagne alimentent les décisions d'ad group) |
| [Awareness Stage Mental Model](<../../01-strategie/redaction/Rédaction - Niveaux de conscience.md>) | Méthode pour adapter le message à l'étape d'intention (guide les séparations d'ad group par étape du tunnel) |
| [SOP - Ameliorer la pertinence des annonces](<Search - Améliorer la pertinence des annonces.md>) | Utilise le test de l'annonce unique dans le diagnostic Phase 1 |
| [SOP - Rediger des RSA performantes](<Search - Rédiger des RSA performantes.md>) | En aval (composition RSA, distribution des 7-8 emplacements de titres) |
| [SOP - Test RSA avec la boucle d'iteration](<Search - Test RSA avec la boucle d'itération.md>) | En aval (clusters de test, raisonnement sur la pauvreté de données, templating) |
| [Dynamic Text Reference](<Search - Texte dynamique.md>) | Référence pour DKI, customizers, insertion de localisation |
| [Keyword Ad Customizer Attribute Catalog](<Search - Attributs de personnalisation par mot-cle.md>) | Référence pour les customizers au niveau keyword |
| [Headline Angle Catalog](<Search - Angles de headlines.md>) | Référence pour les types de titres RSA |
