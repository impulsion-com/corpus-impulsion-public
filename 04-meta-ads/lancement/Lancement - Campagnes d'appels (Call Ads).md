# Lancer une campagne d'appels (Call Ads)

> **Plateforme :** Meta
> **Catégorie :** Lancement
> **Type :** SOP
> **Mis à jour :** 2026-07-09

## Objectif

Cette SOP couvre le lancement d'une campagne **d'appels** (Call Ads) : la publicité pousse le prospect à **appeler directement** l'entreprise (clic-vers-appel), sans formulaire ni landing page. C'est la typologie « Appels » du corpus (Voir : [Fiche - Les 5 typologies de campagne](<Lancement - Les 5 typologies de campagne.md>)).

> ❓ **La question clé :** Comment générer des appels qualifiés depuis Meta, et surtout comment les **mesurer** pour piloter la campagne comme n'importe quelle autre acquisition ?

Les Call Ads conviennent aux activités où **l'appel est le point de conversion naturel** : artisans, services locaux, urgences (plomberie, serrurerie, dépannage), santé, services à forte composante conseil. Le défi n'est pas de générer des appels, c'est de les **tracker** — sinon la campagne pilote à l'aveugle.

---

## Ce que cette SOP ne couvre PAS

Cette SOP ne couvre **pas :**

- Les campagnes vers landing page ou formulaire (Voir : [Procédure - Lancer une campagne Meta Ads](<Lancement - Lancer une campagne.md>) et [Procédure - Formulaire instantané (Lead Ads)](<Lancement - Formulaire instantané (Lead Ads).md>))
- Le choix entre typologies (Voir : [Fiche - Les 5 typologies de campagne](<Lancement - Les 5 typologies de campagne.md>))
- La configuration détaillée de l'outil de call tracking (propre à chaque outil : Aircall, Ringover…)
- Le script de vente au téléphone (hors périmètre media buying)

## Quand utiliser cette SOP

Lancez cette SOP quand :

- L'appel est le mode de conversion principal du client (artisan, service local, urgence)
- Le client a une équipe / une personne disponible pour répondre aux heures de diffusion
- La vente ou la prise de RDV se fait naturellement au téléphone
- Une landing page ajouterait une friction inutile

> ⚠️ **Prérequis absolu : quelqu'un doit décrocher.** Une Call Ad qui diffuse quand personne ne répond brûle du budget. La disponibilité horaire est aussi importante que la créa.

---

## Avant de commencer

### Prérequis

- **Numéro de téléphone** de l'entreprise, configuré dans le Business Manager
- **Disponibilité horaire** claire (jours et heures où quelqu'un répond)
- **Outil de call tracking** choisi (Aircall, Ringover…) pour mesurer les appels comme des conversions
- Objectif business : coût par appel cible et volume visé
- Avatar / ICP documenté (Voir : [Procédure - Définir l'avatar (ICP)](<../../01-strategie/cible/Cible - Définir l'avatar (ICP).md>))
- Créatives prêtes (format carrousel ou statique avec CTA « Appeler »)

### Documents de référence (à garder ouverts)

| Document | Utilisé pour |
|----------|----------|
| [Fiche - Les 5 typologies de campagne](<Lancement - Les 5 typologies de campagne.md>) | Positionnement de cette typologie |
| [Procédure - Lancer une campagne Meta Ads](<Lancement - Lancer une campagne.md>) | Structure, audiences, budget, checklist |
| [Référence - KPI Meta Ads](<../kpi/KPI - KPI.md>) | Coût par appel cible par secteur |

---

## Cadre d'exécution

| Phase | Objectif | Résultat |
|-------|---------|--------|
| **Phase 1️⃣ : Configurer le numéro et la disponibilité** | Numéro dans le BM, plages horaires | Base prête, appels reçus quand ils tombent |
| **Phase 2️⃣ : Structure de campagne** | Objectif et optimisation clic-vers-appel | Campagne prête |
| **Phase 3️⃣ : Créatives et CTA** | Format et message orientés appel | Ads prêtes |
| **Phase 4️⃣ : Call tracking** | Mesurer les appels comme des conversions | Appels trackés |
| **Phase 5️⃣ : Lancement et suivi** | Diffuser aux bonnes heures et piloter | Campagne active et mesurée |

---

## Phase 1️⃣ : Configurer le numéro et la disponibilité

1. Renseigner le **numéro de téléphone** dans le Business Manager / au niveau de l'annonce
2. Définir la **plage horaire de diffusion** alignée sur les heures où quelqu'un répond (calendrier de diffusion de l'ad set)
3. Prévoir un **plan B** hors horaires (messagerie, renvoi) pour ne pas perdre les appels tardifs

## Phase 2️⃣ : Structure de campagne

1. Objectif Meta : **Prospects** ou **Trafic**, optimisé pour le **clic-vers-appel**
2. Emplacements recommandés : **Facebook + Instagram + Messenger** (là où le clic-appel est natif sur mobile)
3. Nomenclature :
   ```
   FR_LEADS_PROSP_Broad_CallAd
   ```
4. Budget, audiences : suivre la [Procédure - Lancer une campagne Meta Ads](<Lancement - Lancer une campagne.md>) (Phase 2)

## Phase 3️⃣ : Créatives et CTA

| Élément | Recommandation |
|---------|----------------|
| **Format** | Carrousel ou image statique (le format vidéo fonctionne aussi, mais le clic-appel doit rester évident) |
| **CTA** | « Appeler maintenant » |
| **Message** | Mettre en avant l'urgence / la disponibilité (« Intervention aujourd'hui », « Devis par téléphone en 2 min ») |
| **Réassurance** | Zone d'intervention, délai, gratuité du devis |

## Phase 4️⃣ : Call tracking

Sans mesure, impossible de savoir quelle campagne / créa génère de vrais appels.

1. Mettre en place un **numéro de call tracking** (Aircall, Ringover…) pour attribuer les appels à la campagne
2. Définir ce qui compte comme **conversion** (ex : appel > 60 secondes = appel qualifié)
3. Idéalement, faire **remonter les appels qualifiés vers Meta** (conversion hors ligne / CAPI) pour nourrir l'optimisation
4. Croiser les appels trackés avec la dépense pour calculer le **coût par appel qualifié**

> 💡 **La durée d'appel est le meilleur proxy de qualité.** Un appel de 15 secondes ≠ un lead (prospect). Compter les appels > 60 s comme conversions.

## Phase 5️⃣ : Lancement et suivi

1. Vérifier la checklist pré-lancement (Voir : [Procédure - Lancer une campagne Meta Ads](<Lancement - Lancer une campagne.md>) > Phase 4)
2. Activer **uniquement sur les plages horaires** de disponibilité
3. Suivre : nombre d'appels, durée moyenne, coût par appel qualifié, taux d'appels manqués
4. Ajuster les horaires de diffusion selon les heures où les appels aboutissent

---

## Validation et critères de complétion

Cette SOP est terminée quand :

- [ ] Le numéro est configuré et la disponibilité horaire définie
- [ ] La campagne est optimisée pour le clic-vers-appel (FB + IG + Messenger)
- [ ] Les créatives ont un CTA « Appeler » clair
- [ ] Le call tracking mesure les appels (et idéalement les remonte à Meta)
- [ ] Le coût par appel qualifié est calculable
- [ ] La diffusion est cadrée sur les heures de disponibilité
- [ ] Le suivi des appels manqués est en place

---

## Passerelle de sortie

| Résultat | Action suivante |
|----------|----------------|
| Appels de qualité, coût OK | Scaler (Voir : [Procédure - Scaler une campagne Meta Ads](<../scaling/Scaling - Scaler une campagne.md>)) |
| Beaucoup d'appels courts / non qualifiés | Revoir le message (réassurance, filtre) et l'audience |
| Appels manqués nombreux | Réduire la diffusion aux heures couvertes, revoir le plan B |
| Coût par appel trop élevé | [Procédure - Optimisation Meta Ads](<../optimisation/Optimisation - Optimiser les performances.md>) |

---

## Erreurs fréquentes

| Erreur | Pourquoi ça arrive | Comment l'éviter |
|---------|----------------|--------------|
| Diffuser quand personne ne répond | Oublier la contrainte humaine | Caler la diffusion sur les heures de disponibilité |
| Ne pas tracker les appels | « On verra bien » | Call tracking obligatoire dès le lancement |
| Compter tous les appels comme des leads | Confondre volume et qualité | Compter les appels > 60 s |
| CTA ambigu | Créa générique | CTA « Appeler maintenant » explicite |
| Ne pas remonter les appels à Meta | Complexité perçue | Remonter les appels qualifiés (conversion hors ligne) pour l'optimisation |
| Ignorer les appels manqués | Focus sur le coût par appel | Suivre le taux d'appels manqués (c'est du budget perdu) |

---

## Procédures liées

| SOP | Relation |
|-----|-------------|
| [Fiche - Les 5 typologies de campagne](<Lancement - Les 5 typologies de campagne.md>) | Amont (choix de la typologie) |
| [Procédure - Lancer une campagne Meta Ads](<Lancement - Lancer une campagne.md>) | Amont (structure, audiences, budget, checklist) |
| [Procédure - Optimisation Meta Ads](<../optimisation/Optimisation - Optimiser les performances.md>) | Aval (optimiser le coût par appel) |
| [Procédure - Définir l'avatar (ICP)](<../../01-strategie/cible/Cible - Définir l'avatar (ICP).md>) | Amont (message et réassurance) |
