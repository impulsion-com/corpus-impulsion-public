# Maturité de la mesure

> **Plateforme :** Stratégie
> **Catégorie :** Reporting
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Ce document vous aide à prioriser les techniques de suivi des conversions dans le bon ordre afin de construire une base de données complète et de qualité avant d'ajouter des fonctionnalités avancées.

> ❓ **La question centrale :** Quelles techniques de tracking (suivi des conversions/évènements) dois-je implémenter, dans quel ordre, et que manque-t-il à ma configuration actuelle ?

Se perdre dans les possibilités de tracking est la norme. Ce document associe chaque technique à fort impact à un niveau de maturité, vous montre où vous en êtes aujourd'hui, et vous dit quoi construire ensuite.

---

## Ce que ce modèle NE couvre PAS

Ce document NE couvre PAS :

- Les instructions d'implémentation étape par étape (Voir : les SOPs individuels de suivi des conversions)
- La configuration des actions de conversion (Voir : [Conversion Action Reference](<../../03-google-ads/suivi/Suivi - Actions de conversion.md>))
- La sélection de stratégie d'enchères basée sur les données de conversion (Voir : *Bidding Strategy Mental Model* [TBD, Phase 5])
- Le remplacement du [Goals and KPIs Mental Model](<../objectifs/Objectifs - Objectifs et KPI.md>) : les objectifs définissent quoi mesurer, ce modèle définit comment le mesurer

---

## Le document de maturité de la mesure en trois niveaux

| **Niveau** | **Objectif** | **Techniques** | **À qui ça s'adresse** |
|-----------|-------------|----------------|----------------------|
| **1️⃣ Fondation** | Établir un tracking de base fiable | Pixel de conversion (GACT), tracking côté serveur, suivi des conversions hors ligne | Tout le monde : c'est non négociable |
| **2️⃣ Enrichissement** | Enrichir la qualité des données et débloquer des signaux de stratégie d'enchères avancés | Conversions améliorées, Consent Mode, données panier, suivi du profit, données nouveaux clients, IDs de transaction, variables personnalisées | Annonceurs prêts à scaler et à alimenter le Stratégies d'enchères intelligentes avec des signaux plus riches |
| **3️⃣ Correction** | Corriger, ajuster et nettoyer les données de conversion après la collecte | Ajustements de conversions, exclusions de données | Annonceurs avec des campagnes en cours nécessitant de l'hygiène de données |

> ⚠️ **Toujours construire de bas en haut :** Ne passez pas aux techniques d'Enrichissement tant que votre Fondation n'est pas solide. Les fonctionnalités d'Enrichissement construites sur une fondation cassée amplifient les mauvaises données.

---

## Niveau 1 : Fondation

*"Bien faire les bases avant tout".*

La fondation garantit que Google Ads reçoit des signaux de conversion pour chaque action significative. Sans ce niveau, le Stratégies d'enchères intelligentes opère sur des hypothèses, pas des données.

| **Technique** | **Ce que ça fait** | **S'applique à** | **Priorité** |
|---------------|-------------------|-----------------|-------------|
| **Google Ads Conversion Tracking (GACT)** | Suit les conversions on-site (achats, soumissions de formulaire, inscriptions) via un pixel basé sur le navigateur | Tous les secteurs | Requis pour tous |
| **Tracking côté serveur (SST)** | Achemine les données de conversion via un conteneur côté serveur, contournant les restrictions du navigateur | Tous les secteurs (impact le plus fort où la perte ITP/cookies est élevée) | Indispensable au-dessus de 3 000 EUR/mois |
| **Suivi des conversions hors ligne (OCT)** | Importe les conversions hors site (leads (prospects) qualifiés, deals conclus) depuis le CRM dans Google Ads | Lead Gen, SaaS | Requis pour Lead Gen/SaaS |

**Vérification de complétude de la Fondation :**

| Secteur | GACT | SST | OCT | Fondation complète ? |
|---------|------|-----|-----|---------------------|
| **E-commerce** | Requis | Recommandé | Non applicable | GACT implémenté = minimum viable |
| **Lead Gen** | Requis | Recommandé | Requis | GACT + OCT implémentés = minimum viable |
| **SaaS** | Requis | Recommandé | Requis | GACT + OCT implémentés = minimum viable |

> 💡 **Le tracking côté serveur devient indispensable au-dessus de 3 000 EUR/mois de dépense :** au-delà de ce palier, la perte de signal (ITP, ad blockers, iOS) coûte plus cher que l'infrastructure server-side. En dessous de 3 000 EUR/mois, priorisez d'abord le GACT et l'OCT, puis basculez server-side dès que la dépense franchit ce seuil.

---

## Niveau 2 : Enrichissement

*"Alimenter l'algorithme avec des signaux plus riches pour débloquer une meilleure stratégie d'enchères et des insights plus profonds".*

Les techniques d'Enrichissement ne remplacent pas les techniques de Fondation. Elles s'ajoutent par-dessus, donnant au Stratégies d'enchères intelligentes plus de dimensions pour optimiser.

| **Technique** | **Ce que ça fait** | **S'applique à** | **Quand implémenter** |
|---------------|-------------------|-----------------|---------------------|
| **Conversions améliorées** | Envoie des données client first-party hashées (email, téléphone) pour améliorer la précision de l'attribution | Tous les secteurs | Après que le GACT est stable, avant de scaler les dépenses |
| **Consent Mode** | Modélise les conversions des utilisateurs qui refusent les cookies, récupérant les données d'attribution perdues | Tous les secteurs (requis en UE/EEE) | Après le GACT, avant de scaler dans les régions RGPD |
| **Données panier** | Envoie les données de transaction au niveau produit (SKUs, quantités, marges) à Google Ads | E-commerce | Après le GACT, quand l'insight de stratégie d'enchères au niveau produit compte |
| **Suivi du profit** | Passe la marge brute/nette au lieu du CA, permettant l'optimisation POAS (Profit on Ad Spend) | E-commerce | Après les données panier, quand l'optimisation basée sur la marge est l'objectif |
| **Données nouveaux clients** | Segmente les clients nouveaux vs. existants, permettant les objectifs NCA (New Customer Acquisition) | E-commerce, SaaS | Après le GACT, quand le coût d'acquisition client compte |
| **IDs de transaction** | Déduplique les conversions en attribuant des IDs uniques, empêchant le double comptage | Tous les secteurs | Après le GACT, immédiatement si des doublons de conversions sont suspectés |
| **Variables personnalisées** | Passe des dimensions spécifiques au business (tier client, catégorie produit, score de lead) dans Google Ads | Tous les secteurs | Après la Fondation + enrichissements principaux, quand les segments par défaut sont insuffisants |

**Priorité d'enrichissement par secteur :**

| Technique | E-commerce | Lead Gen | SaaS |
|-----------|-----------|----------|------|
| Conversions améliorées | ★★★ | ★★★ | ★★★ |
| Consent Mode | ★★★ (UE) / ★★ (hors UE) | ★★★ (UE) / ★★ (hors UE) | ★★★ (UE) / ★★ (hors UE) |
| Données panier | ★★★ | N/A | N/A |
| Suivi du profit | ★★★ | N/A | N/A |
| Données nouveaux clients | ★★★ | ★ | ★★ |
| IDs de transaction | ★★★ | ★★ | ★★ |
| Variables personnalisées | ★★ | ★★★ | ★★★ |

**★★★** = Fort impact | **★★** = Impact modéré | **★** = Situationnel | **N/A** = Non applicable

---

## Niveau 3 : Correction

*"Nettoyer ce qui a mal tourné après coup".*

Les techniques de Correction sont réactives. Vous les utilisez quand les données de conversion sont erronées, incomplètes ou corrompues. Elles protègent le Stratégies d'enchères intelligentes d'apprendre sur de mauvaises données.

| **Technique** | **Ce que ça fait** | **Quand utiliser** |
|---------------|-------------------|-----------------|
| **Ajustements de conversions** | Restater (changer la valeur) ou rétracter (supprimer) des conversions individuelles enregistrées incorrectement | La valeur du lead change après import, remboursements, annulations, conversions frauduleuses |
| **Exclusions de données** | Dire au Stratégies d'enchères intelligentes d'ignorer une période spécifique de données de conversion | Panne de tracking, indisponibilité du site, défaillance du processeur de paiement, erreurs de tagging |

**Guide de décision de correction :**

```
Le problème concerne-t-il des conversions individuelles ?
│
├─ OUI → Utiliser les ajustements de conversions
│         ├─ La valeur a changé ? → RESTATER
│         └─ La conversion est invalide ? → RÉTRACTER
│
└─ NON → Le problème concerne-t-il une période de temps ?
          │
          ├─ OUI → Utiliser les exclusions de données
          │
          └─ NON → Investiguer : le problème est peut-être dans la Fondation
```

> ⚠️ **La Correction ne remplace pas la prévention :** Si vous utilisez fréquemment les ajustements de conversions ou les exclusions de données, la cause racine est probablement dans votre Fondation ou votre Enrichissement. Corrigez en amont d'abord.

---

## Mapping des fonctionnalités vers la méthode

| **Fonctionnalité** | **Niveau** | **Référence** | **SOP** |
|-------------------|----------|-------------|---------|
| Pixel de conversion Google Ads | Fondation | [Conversion Pixel Reference](<../../03-google-ads/suivi/Suivi - Pixel de conversion.md>) | [SOP - Configurer le suivi des conversions Google Ads](<../../03-google-ads/suivi/Suivi - Configurer le suivi des conversions Google Ads.md>) |
| Tracking côté serveur | Fondation | [Server-Side Tagging Reference](<../../03-google-ads/suivi/Suivi - Server-Side Tagging.md>) | [SOP - Implementer le tracking server-side](<../../03-google-ads/suivi/Suivi - Implémenter le Server-Side Tagging.md>) |
| Suivi des conversions hors ligne | Fondation | [Offline Conversion Tracking Reference](<../../03-google-ads/suivi/Suivi - Offline Conversion Tracking.md>) | [SOP - Configurer le suivi des conversions hors ligne](<../../03-google-ads/suivi/Suivi - Configurer le suivi des conversions hors ligne.md>) |
| Conversions améliorées | Enrichissement | [Enhanced Conversions Reference](<../../03-google-ads/suivi/Suivi - Enhanced Conversions.md>) | [SOP - Implementer les conversions ameliorees](<../../03-google-ads/suivi/Suivi - Implémenter les conversions améliorées.md>) |
| Consent Mode | Enrichissement | [Consent Mode Reference](<../../03-google-ads/suivi/Suivi - Consent Mode.md>) | [SOP - Configurer le Google Consent Mode](<../../03-google-ads/suivi/Suivi - Configurer Google Consent Mode.md>) |
| Données panier + suivi du profit | Enrichissement | [Cart Data and Profit Tracking Reference](<../../03-google-ads/suivi/Suivi - Données panier et suivi du profit.md>) | [SOP - Configurer le suivi panier et profit](<../../03-google-ads/suivi/Suivi - Configurer le suivi panier et profit.md>) |
| Données nouveaux clients | Enrichissement | [New Customer Data Reference](<../../03-google-ads/suivi/Suivi - Données nouveaux clients.md>) | [SOP - Configurer le suivi nouveaux clients](<../../03-google-ads/suivi/Suivi - Configurer le suivi des nouveaux clients.md>) |
| IDs de transaction | Enrichissement | [Transaction ID Reference](<../../03-google-ads/suivi/Suivi - Transaction ID.md>) | [SOP - Implementer la deduplication par Transaction ID](<../../03-google-ads/suivi/Suivi - Implémenter la déduplication par Transaction ID.md>) |
| Variables personnalisées | Enrichissement | [Custom Variables Reference](<../../03-google-ads/suivi/Suivi - Variables personnalisées.md>) | [SOP - Configurer les variables personnalisees](<../../03-google-ads/suivi/Suivi - Configurer les variables personnalisées.md>) |
| Ajustements de conversions | Correction | [Conversion Adjustments Reference](<../../03-google-ads/suivi/Suivi - Offline Conversion Tracking.md>) | [SOP - Configurer les ajustements de conversions](<../../03-google-ads/suivi/Suivi - Configurer les ajustements de conversion.md>) |
| Exclusions de données | Correction | [Data Exclusions Reference](<../../03-google-ads/suivi/Suivi - Exclusions de données.md>) | [SOP - Configurer les exclusions de donnees](<../../03-google-ads/suivi/Suivi - Configurer les exclusions de données.md>) |

---

## Application pratique

### Pour l'E-commerce

Commencez par le GACT (achats, ajout au panier, début de checkout). Ajoutez ensuite les conversions améliorées et le Consent Mode. Puis ajoutez les données panier et le suivi du profit pour débloquer la stratégie d'enchères basée sur la marge. Les IDs de transaction sont critiques pour empêcher les événements d'achat en double (courant avec les flux de paiement par redirection). Les données nouveaux clients permettent la stratégie d'enchères NCA pour contrôler les dépenses d'acquisition vs. rétention.

**Ordre d'implémentation type :**
1. GACT (achat + micro-conversions)
2. Conversions améliorées
3. Consent Mode (si UE/EEE)
4. IDs de transaction
5. Données panier
6. Suivi du profit
7. Données nouveaux clients
8. Variables personnalisées (marges par catégorie produit, segments clients)

### Pour le Lead Gen

Commencez par le GACT (soumissions de formulaire, appels téléphoniques) et l'OCT (leads qualifiés, deals conclus depuis le CRM). Les conversions améliorées sont essentielles car les formulaires lead gen captent nativement email/téléphone. Le Consent Mode compte pour le lead gen basé en UE. Les variables personnalisées ont une forte valeur pour renvoyer les scores de qualité des leads et les étapes de deal dans Google Ads.

**Ordre d'implémentation type :**
1. GACT (formulaires, appels téléphoniques)
2. OCT (leads qualifiés, deals conclus)
3. Conversions améliorées
4. Consent Mode (si UE/EEE)
5. IDs de transaction (si des soumissions de leads en double surviennent)
6. Variables personnalisées (score de lead, étape du deal, tier client)
7. Ajustements de conversions (restater les valeurs des leads au fur et à mesure de l'avancement des deals)

### Pour le SaaS

Commencez par le GACT (inscriptions, démarrages d'essai, activations de fonctionnalités) et l'OCT (essai vers payant, renouvellements d'abonnement). Les conversions améliorées améliorent l'attribution pour les utilisateurs qui s'inscrivent sur un appareil et convertissent sur un autre. Les variables personnalisées passent le tier d'abonnement, le MRR et le risque de churn dans Google Ads.

**Ordre d'implémentation type :**
1. GACT (inscriptions, démarrages d'essai)
2. OCT (conversions essai vers payant, imports LTV)
3. Conversions améliorées
4. Consent Mode (si UE/EEE)
5. Variables personnalisées (tier de plan, MRR, score d'engagement essai)
6. Ajustements de conversions (restater la LTV au fur et à mesure de la maturation des abonnements)

---

## Le principe données en entrée = données en sortie

Un meilleur tracking en entrée produit un meilleur Stratégies d'enchères intelligentes en sortie. C'est la prémisse centrale de toute la méthode.

| | **Tracking faible** | **Tracking fort** |
|--|-------------------|---------------------|
| **Ce que le Stratégies d'enchères intelligentes voit** | Comptages de conversions basiques, signaux limités | Données de conversion riches avec valeurs, marges, segments clients |
| **Ce que le Stratégies d'enchères intelligentes fait** | Optimise sur des données limitées, fait des hypothèses larges | Optimise avec précision, cible les segments à forte valeur |
| **Résultat** | Performance inconsistante, phases d'apprentissage prolongées | Performance stable, apprentissage plus rapide, meilleure efficacité |

> ⚠️ **La sur-attribution est une arme à double tranchant :** Plus de données de conversion alimentent mieux l'algorithme, mais des métriques gonflées peuvent mener à des dépenses excessives. Vérifiez toujours les données in-platform par rapport à la réalité du backend et recalibrez les cibles d'efficacité en conséquence. (Voir : [Conversion Action Reference](<../../03-google-ads/suivi/Suivi - Actions de conversion.md>) pour les détails des modèles d'attribution.)

---

## Principes clés

1. **Construire de bas en haut :** Fondation avant Enrichissement, Enrichissement avant Correction. Sauter des niveaux crée des problèmes de qualité de données cumulatifs.
2. **Chaque technique sert un objectif :** N'implémentez pas des fonctionnalités dont vous n'avez pas besoin. Les données panier sont inutiles pour le Lead Gen. L'OCT est inutile pour le pur E-commerce.
3. **La qualité des données prime sur la quantité :** Suivre 20 micro-conversions mal vaut moins que suivre 3 macro-conversions bien.
4. **Auditer régulièrement :** Le suivi des conversions se dégrade avec le temps (changements de site, mises à jour CMS, modifications du tag manager). Exécutez la [Conversion Data Quality Checklist](<../../03-google-ads/suivi/Suivi - [Review] Qualité des données de conversion.md>) trimestriellement.
5. **La Fondation n'est jamais "terminée" :** Même les comptes matures devraient revoir les techniques de Fondation lors du lancement de nouveaux types de campagnes, de l'expansion à de nouveaux marchés ou du changement de plateforme CMS.

---

## Documents liés

| **Document** | **Relation** |
|--------------|------------------|
| [Goals and KPIs Mental Model](<../objectifs/Objectifs - Objectifs et KPI.md>) | Les objectifs définissent quoi mesurer, ce modèle définit comment |
| [Conversion Volume Thresholds Reference](<../../03-google-ads/suivi/Suivi - Seuils de volume de conversions.md>) | Seuils de volume qui dépendent d'un tracking de qualité |
| [Conversion Action Reference](<../../03-google-ads/suivi/Suivi - Actions de conversion.md>) | Spécifications détaillées pour configurer chaque action de conversion |
| [Conversion Tracking Configuration Guidelines](<../../03-google-ads/suivi/Suivi - Configuration du suivi des conversions.md>) | Paramètres recommandés pour toutes les fonctionnalités de conversion |
| [Conversion Tracking Setup Checklist](<../../03-google-ads/suivi/Suivi - Configuration du suivi des conversions.md>) | Valide la complétude de la Fondation et de l'Enrichissement |
| [Conversion Data Quality Checklist](<../../03-google-ads/suivi/Suivi - [Review] Qualité des données de conversion.md>) | Validation continue de la qualité des données |
| [Google Ads Success Formula Mental Model](<../../03-google-ads/strategie/Strategie - Formule de succès Google Ads.md>) | Le suivi des conversions est le Pilier 5 de la formule |
