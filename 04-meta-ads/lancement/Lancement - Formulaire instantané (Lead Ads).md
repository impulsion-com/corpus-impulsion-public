# Lancer une campagne Formulaire instantané (Lead Ads)

> **Plateforme :** Meta
> **Catégorie :** Lancement
> **Type :** SOP
> **Mis à jour :** 2026-07-09

## Objectif

Cette SOP couvre le lancement d'une campagne avec **formulaire instantané natif Meta** (Lead Ads) : le prospect remplit un formulaire **sans quitter Facebook/Instagram**, pré-rempli avec ses données de profil. C'est la typologie « Formulaire instantané » du corpus (Voir : [Fiche - Les 5 typologies de campagne](<Lancement - Les 5 typologies de campagne.md>)).

> ❓ **La question clé :** Comment générer des leads (prospects) à faible friction avec un formulaire natif, tout en gardant un lead exploitable (bien tracké, bien qualifié, bien routé vers le CRM) ?

Le formulaire instantané maximise le **volume** (friction minimale) mais au prix de la **qualité** (le prospect ne visite pas de landing page, l'intention est plus faible). Cette SOP compense en ajoutant une question filtre, un routage CRM propre et le passage des UTM.

---

## Ce que cette SOP ne couvre PAS

Cette SOP ne couvre **pas :**

- Le lancement d'une campagne classique vers une landing page (Voir : [Procédure - Lancer une campagne Meta Ads](<Lancement - Lancer une campagne.md>))
- Le choix entre les typologies de campagne (Voir : [Fiche - Les 5 typologies de campagne](<Lancement - Les 5 typologies de campagne.md>))
- L'installation du tracking (suivi des conversions/évènements) pixel / CAPI (Voir : [Procédure - Configurer le Conversions API (CAPI)](<../tracking/Tracking - Configurer le Conversions API (CAPI).md>))
- La configuration détaillée du CRM (propre à chaque outil)

## Quand utiliser cette SOP

Lancez cette SOP quand :

- L'objectif est le **volume de leads** à coût maîtrisé (B2C, lead gen local, événementiel)
- Le tunnel n'a pas encore de landing page performante
- Le mobile domine et la friction d'un site externe fait chuter la conversion
- Le client accepte un lead un peu moins chaud en échange de plus de volume

> ⚠️ **Formulaire instantané vs landing dédiée** : le formulaire instantané donne un **lead moins qualifié** qu'une landing dédiée. Pour du B2B à ticket élevé ou une offre qui demande de la pédagogie, préférer la landing page.

---

## Avant de commencer

### Prérequis

- Objectif business clair : **CPL cible** (5-50 € selon secteur) et volume hebdo visé
- Avatar / ICP documenté (Voir : [Procédure - Définir l'avatar (ICP)](<../../01-strategie/cible/Cible - Définir l'avatar (ICP).md>))
- Page Facebook liée au compte publicitaire (obligatoire pour les Lead Ads)
- CRM cible identifié et méthode d'intégration choisie (natif, Zapier ou Make)
- Créatives prêtes (3-5 angles)
- Pixel + CAPI configurés (pour tracker l'événement Lead et alimenter l'optimisation)

### Documents de référence (à garder ouverts)

| Document | Utilisé pour |
|----------|----------|
| [Fiche - Les 5 typologies de campagne](<Lancement - Les 5 typologies de campagne.md>) | Positionnement de cette typologie |
| [Procédure - Lancer une campagne Meta Ads](<Lancement - Lancer une campagne.md>) | Structure campagne / ad set / ad, audiences, budget |
| [Référence - KPI Meta Ads](<../kpi/KPI - KPI.md>) | CPL cible par secteur |

---

## Cadre d'exécution

| Phase | Objectif | Résultat |
|-------|---------|--------|
| **Phase 1️⃣ : Structure de campagne** | Créer la campagne Leads optimisée pour le formulaire | Campagne prête |
| **Phase 2️⃣ : Créer le formulaire** | Question filtre + 3-5 champs | Formulaire optimisé qualité/volume |
| **Phase 3️⃣ : Champs cachés & UTM** | Tracer la source de chaque lead | Attribution en place |
| **Phase 4️⃣ : Intégration CRM** | Router les leads en temps réel | Leads dans le CRM |
| **Phase 5️⃣ : Test et lancement** | Valider de bout en bout | Campagne active et tracée |

---

## Phase 1️⃣ : Structure de campagne

1. Objectif Meta : **Prospects (Leads)**
2. Type de formulaire : **Formulaire instantané** (natif Meta), pas de redirection site
3. Optimisation : pour l'événement **Lead** (formulaire complété)
4. Nomenclature (Voir : [Guide Meta Ads](<../Guide Meta.md>) > Convention de nomenclature) :
   ```
   FR_LEADS_PROSP_Broad_LeadForm
   ```
5. Budget, audiences et emplacements : suivre la [Procédure - Lancer une campagne Meta Ads](<Lancement - Lancer une campagne.md>) (Phase 2)

## Phase 2️⃣ : Créer le formulaire

Objectif : équilibrer volume et qualité.

| Élément | Recommandation |
|---------|----------------|
| **Type de formulaire** | « Volume plus élevé » pour le volume, « Intention plus forte » (écran de confirmation) pour la qualité |
| **Question d'intro (filtre)** | Une question de qualification en tête pour écarter les curieux (ex : « Êtes-vous propriétaire ? ») |
| **Nombre de champs** | 3-5 maximum (nom, email, téléphone + 1-2 champs de qualification) |
| **Champs de qualification** | Selon l'offre : budget, délai, zone géographique, besoin |
| **Écran de fin** | CTA clair (appeler, prendre RDV, télécharger) pour prolonger l'engagement |

> 💡 **Plus de champs = moins de volume mais plus de qualité.** Calibrer selon l'objectif : lead gen de masse (3 champs) vs lead qualifié (5 champs + question filtre).

## Phase 3️⃣ : Champs cachés & UTM

Sans landing page, l'attribution repose sur les **champs cachés** du formulaire.

1. Ajouter des **champs cachés** (hidden fields) au formulaire : `utm_source`, `utm_campaign`, `utm_content`
2. Les renseigner via l'intégration (Zapier / Make post-soumission) ou les paramètres dynamiques Meta
3. Vérifier que chaque lead arrive dans le CRM **avec sa source** (quelle campagne / quelle créa l'a généré)

## Phase 4️⃣ : Intégration CRM

Un lead non routé en temps réel = un lead perdu (délai de rappel critique).

| Méthode | Quand |
|---------|-------|
| **Connexion native** | Le CRM a une intégration Meta Lead Ads officielle |
| **Zapier / Make** | Pas d'intégration native : webhook Meta → Zapier/Make → CRM |
| **Export manuel** | À éviter (délai de rappel trop long, leads froids) |

1. Connecter le formulaire au CRM (natif ou via Zapier/Make)
2. Mapper les champs (nom, email, téléphone, qualification, UTM)
3. Déclencher une **notification immédiate** à l'équipe commerciale (rappel < 5-10 min = taux de closing bien supérieur)

## Phase 5️⃣ : Test et lancement

1. **Test de bout en bout** : remplir un formulaire test → vérifier son arrivée dans le CRM avec tous les champs et les UTM
2. Vérifier que l'événement **Lead** remonte dans Events Manager (qualité ≥ Bonne)
3. Suivre la checklist pré-lancement (Voir : [Procédure - Lancer une campagne Meta Ads](<Lancement - Lancer une campagne.md>) > Phase 4)
4. Activer et monitorer (J1, J3, J7)

---

## Arbitrage qualité vs volume

| Levier | Plus de volume | Plus de qualité |
|--------|----------------|-----------------|
| Type de formulaire | « Volume plus élevé » | « Intention plus forte » (écran de confirmation) |
| Question filtre | Aucune | 1 question de qualification en tête |
| Nombre de champs | 3 | 5 + champs de qualification |
| Écran de fin | Générique | CTA de prise de RDV / appel |

> Si les leads arrivent en volume mais ne se transforment pas : durcir le formulaire (filtre + champs) avant de conclure que la campagne ne marche pas.

---

## Validation et critères de complétion

Cette SOP est terminée quand :

- [ ] La campagne est en objectif Leads, optimisée pour l'événement Lead
- [ ] Le formulaire a une question filtre et 3-5 champs
- [ ] Les champs cachés UTM sont en place
- [ ] L'intégration CRM route les leads en temps réel (test validé)
- [ ] La notification à l'équipe commerciale est immédiate
- [ ] L'événement Lead remonte (qualité ≥ Bonne)
- [ ] La campagne est active et documentée

---

## Passerelle de sortie

| Résultat | Action suivante |
|----------|----------------|
| Volume OK, qualité faible | Durcir le formulaire (filtre, champs), ou passer en landing dédiée |
| CPL trop élevé | [Procédure - Optimisation Meta Ads](<../optimisation/Optimisation - Optimiser les performances.md>) |
| Bons leads | Scaler (Voir : [Procédure - Scaler une campagne Meta Ads](<../scaling/Scaling - Scaler une campagne.md>)) |
| Leads non exploités par le commercial | Revoir le délai de rappel et le routage CRM |

---

## Erreurs fréquentes

| Erreur | Pourquoi ça arrive | Comment l'éviter |
|---------|----------------|--------------|
| Aucune question filtre | Vouloir maximiser le volume | Toujours 1 question de qualification pour un lead exploitable |
| Pas d'intégration CRM temps réel | « On exportera plus tard » | Router en temps réel, rappel < 10 min |
| Oublier les UTM cachés | Pas de landing = pas de tracking auto | Ajouter les champs cachés dès la création |
| Trop de champs | Vouloir tout savoir | 3-5 champs max, sinon le volume s'effondre |
| Juger la qualité trop tôt | Impatience | Attendre que le commercial ait rappelé un échantillon |
| Croire qu'un lead form = un lead chaud | Confondre volume et intention | Briefer le client : lead form = moins qualifié qu'une landing |

---

## Procédures liées

| SOP | Relation |
|-----|-------------|
| [Fiche - Les 5 typologies de campagne](<Lancement - Les 5 typologies de campagne.md>) | Amont (choix de la typologie) |
| [Procédure - Lancer une campagne Meta Ads](<Lancement - Lancer une campagne.md>) | Amont (structure, audiences, budget, checklist pré-lancement) |
| [Procédure - Configurer le Conversions API (CAPI)](<../tracking/Tracking - Configurer le Conversions API (CAPI).md>) | Lié (tracker l'événement Lead) |
| [Procédure - Définir l'avatar (ICP)](<../../01-strategie/cible/Cible - Définir l'avatar (ICP).md>) | Amont (qualification et question filtre) |
