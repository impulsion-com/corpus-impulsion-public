# Lancer une campagne Meta Ads

> **Plateforme :** Meta
> **Catégorie :** Lancement
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Cette SOP vous guide du choix d'objectif jusqu'au lancement d'une campagne Meta Ads, en passant par la configuration de chaque niveau (campagne, Ad Set, ads). Elle couvre les vérifications pré-lancement et la mise en place du monitoring initial.

> ❓ **La question clé :** Comment structurer et lancer une campagne Meta Ads qui collecte des données exploitables dès le premier jour ?

---

## Ce que cette SOP ne couvre PAS

Cette SOP ne couvre **pas :**

- L'installation du pixel ou de CAPI (Voir : [Procédure - Configurer le Conversions API (CAPI)](<../tracking/Tracking - Configurer le Conversions API (CAPI).md>))
- L'analyse des performances post-lancement (Voir : [Procédure - Analyser les performances Meta Ads](<../reporting/Reporting - Analyser les performances.md>))
- L'optimisation des créatives (Voir : [Procédure - Optimiser les créatives Meta Ads](<../creatives/Creatives - Optimiser les créatives.md>))
- Le scaling d'une campagne qui performe (Voir : [Procédure - Scaler une campagne Meta Ads](<../scaling/Scaling - Scaler une campagne.md>))
- Le choix de la typologie de campagne (Voir : [Fiche - Les 5 typologies de campagne](<Lancement - Les 5 typologies de campagne.md>))
- Les spécificités du formulaire instantané et des campagnes d'appels (Voir : [Procédure - Formulaire instantané (Lead Ads)](<Lancement - Formulaire instantané (Lead Ads).md>) et [Procédure - Campagnes d'appels (Call Ads)](<Lancement - Campagnes d'appels (Call Ads).md>))
- La création des créatives en elles-mêmes (scripts vidéo, design graphique)

## Quand utiliser cette SOP

Lancez cette SOP quand :

- Vous lancez une nouvelle campagne Meta Ads pour un client ou pour vous-même
- Vous relancez une campagne après un changement de stratégie majeur (nouvel objectif, nouvelle offre)
- Vous structurez un compte Meta Ads from scratch

---

## Avant de commencer

### Prérequis

- Pixel Meta installé et actif (Events Manager > Pixel > dernier événement reçu)
- Événements de conversion configurés et testés (Purchase, Lead, etc.)
- CAPI configurée idéalement (Voir : [Procédure - Configurer le Conversions API (CAPI)](<../tracking/Tracking - Configurer le Conversions API (CAPI).md>))
- Domaine vérifié dans le Business Manager
- Page Facebook et compte Instagram liés au compte publicitaire
- Landing Page en ligne, testée et mobile-friendly (chargement < 3s)
- Créatives prêtes (images, vidéos, textes, CTA)
- Budget quotidien validé avec le client
- CPA ou ROAS cible défini

### Documents de référence (à garder ouverts)

| Document | Utilisé pour |
|----------|----------|
| [Guide Meta Ads](<../Guide Meta.md>) | Nomenclature, structure, audiences, checklist |
| [Référence - KPI Meta Ads](<../kpi/KPI - KPI.md>) | Benchmarks (analyses comparatives), seuils de décision |
| [Recommandations - Optimisation Meta Ads](<../optimisation/Optimisation - Optimiser les performances.md>) | Matrice de diagnostic, cadence d'optimisation |

---

## Cadre d'exécution

| Phase | Objectif | Résultat |
|-------|---------|--------|
| **Phase 1️⃣ : Objectif et structure** | Choisir l'objectif Meta et définir la structure | Campagne créée avec le bon objectif |
| **Phase 2️⃣ : Configuration Ad Set** | Configurer audiences, emplacements, budget, calendrier | Ad Sets prêts à diffuser |
| **Phase 3️⃣ : Configuration Ads** | Uploader les créatives, rédiger les textes, configurer les CTA | Ads prêtes à diffuser |
| **Phase 4️⃣ : Vérifications pré-lancement** | Valider tracking (suivi des conversions/évènements), nomenclature, budget, créatives | Tous les feux au vert |
| **Phase 5️⃣ : Lancement et première vérification** | Activer et valider la diffusion | Campagne active et monitorée |

---

## Phase 1️⃣ : Objectif et structure

### 1.1 Choisir l'objectif de campagne

Utilisez le mapping du Guide Meta Ads :

| Objectif business | Objectif Meta | Événement d'optimisation |
|-------------------|---------------|--------------------------|
| Générer des leads (prospects) | Leads (Prospects) | Lead, CompleteRegistration |
| Vendre en ligne | Ventes | Purchase |
| Vendre en ligne (panier moyen élevé) | Ventes | AddToCart ou InitiateCheckout |
| Trafic qualifié | Trafic | Landing Page Views (pas Link Clicks) |
| Notoriété | Notoriété | ThruPlay ou Couverture |

> ⚠️ **Règle de volume** : Meta a besoin de ~50 conversions par Ad Set par semaine. Si le budget ne le permet pas, remonter dans le tunnel (ex: AddToCart au lieu de Purchase).

> ↪️ **Pour les détails du mapping objectif-événement :** Voir [Guide Meta Ads](<../Guide Meta.md>) > Objectifs de campagne.

### 1.2 Créer la campagne

1. Ads Manager > Créer
2. Sélectionner l'objectif
3. Nommer la campagne selon la convention de nomenclature :

```
[Pays]_[Objectif]_[Type]_[Audience]
```

Exemples :
- `FR_LEADS_PROSP_Broad`
- `FR_VENTES_RTG_Website-30j`
- `FR_LEADS_PROSP_Lookalike-Acheteurs`

> ↪️ **Pour les conventions de nomenclature complètes :** Voir [Guide Meta Ads](<../Guide Meta.md>) > Convention de nomenclature.

### 1.3 Choisir la stratégie de budget

| Situation | Stratégie | Pourquoi |
|-----------|-----------|----------|
| Cas par défaut | Advantage+ Campaign Budget (ex-CBO) | Meta répartit le budget automatiquement, plus efficace dans 80% des cas |
| Test créatif (contrôle strict) | ABO (budget par Ad Set) | Garantit un budget égal par variante |
| Test d'audiences spécifiques | ABO | Contrôle du budget par audience |
| Budget très serré (< 20 EUR/jour) | ABO | CBO risque de concentrer tout sur un seul Ad Set |

### 1.4 Définir la structure campagne

| Type de campagne | Structure recommandée |
|------------------|----------------------|
| Prospection | 1 campagne prospection + 1 campagne retargeting (reciblage) (toujours séparées) |
| Test créatif | 1 campagne ABO + 1 Ad Set par variante créative |
| Scaling | Campagne CBO avec les Ad Sets/Ads gagnants |

---

## Phase 2️⃣ : Configuration Ad Set

### 2.1 Nommer l'Ad Set

Format :

```
[Pays]_[Objectif]_[Type]_[Audience]_[Tranche-âge]_[Placement]
```

Exemple : `FR_LEADS_PROSP_Broad_H25-45_AllPlacement`

### 2.2 Configurer l'audience

| Paramètre | Recommandation |
|-----------|----------------|
| Localisation | Pays cible (Personnes vivant dans cette zone) |
| Âge | Selon le persona client. En cas de doute, large (25-55) |
| Genre | Tous, sauf si le produit est clairement genré |
| Ciblage détaillé | Broad par défaut. Intérêts uniquement si budget < 20 EUR/jour |
| Langues | Laisser vide sauf si vous ciblez une langue spécifique dans un pays multilingue |

**Ordre de test des audiences :**

1. Advantage+ / Broad (aucun ciblage) - tester en premier
2. Lookalike 1% basé sur les acheteurs/leads
3. Lookalike 5% si le 1% est trop petit
4. Intérêts - uniquement si Broad et Lookalike ne marchent pas

### 2.3 Configurer les exclusions

- Exclure les acheteurs des 30 derniers jours (Custom Audience) en prospection
- Exclure les leads existants des campagnes de génération de leads
- En retargeting : exclure les visiteurs < 5 secondes (rebonds)

### 2.4 Configurer les emplacements

| Situation | Recommandation |
|-----------|----------------|
| Par défaut | Advantage+ Placements (laisser Meta optimiser) |
| Si vous voulez du contrôle | Manual : Feed + Stories + Reels (exclure Audience Network si la qualité des leads est faible) |
| Vidéo uniquement | Reels + Stories + In-Stream |

### 2.5 Budget et calendrier

| Paramètre | Recommandation |
|-----------|----------------|
| Budget quotidien minimum | CPA cible x 50 / 7 (pour viser 50 conversions/semaine) |
| Date de début | Le jour même ou le lendemain (ne pas programmer trop loin) |
| Date de fin | Laisser vide pour les campagnes evergreen. Mettre une date de fin pour les promos |
| Heure de diffusion | Toute la journée par défaut. Restreindre uniquement si les données le justifient |

### 2.6 Événement d'optimisation et attribution

| Paramètre | Recommandation |
|-----------|----------------|
| Événement d'optimisation | L'événement le plus proche de l'objectif business (Purchase, Lead...) |
| Fenêtre d'attribution | 7 jours clic, 1 jour vue (par défaut) |
| Stratégie d'enchères | Coût le plus bas (Lowest Cost) par défaut. Cost Cap ou Bid Cap uniquement si CPA cible strict |

---

## Phase 3️⃣ : Configuration Ads

### 3.1 Nommer les ads

Format :

```
[Pays]_[Objectif]_[Type]_[Audience]_[Format]-[Angle]-[Détail]
```

Exemple : `FR_LEADS_PROSP_Broad_Video-UGC-Temoignage-Marine`

### 3.2 Configurer les créatives

Pour chaque ad :

1. **Format** : choisir le format adapté au contenu (image, vidéo, carousel, collection)
2. **Média** : uploader le fichier aux bons formats
   - Feed : 1:1 (carré) ou 4:5
   - Stories/Reels : 9:16 (vertical)
   - Prévoir les deux ratios si Advantage+ Placements activé
3. **Primary text** : le texte principal (max 125 caractères visibles avant "Voir plus")
   - Hook en première ligne - c'est le seul texte visible sans cliquer
   - Proposition de valeur claire
   - CTA dans le texte
4. **Headline** : titre sous le média (max 40 caractères recommandés)
5. **Description** : texte additionnel sous le titre (pas toujours affiché)
6. **CTA button** : choisir le bouton adapté (En savoir plus, S'inscrire, Acheter, etc.)
7. **URL de destination** : landing page correspondante

### 3.3 Nombre d'ads par Ad Set

- Minimum : 3 ads (assez de données pour comparer)
- Maximum : 5 ads (au-delà, le budget se dilue trop)
- Varier les formats et les angles entre les ads

### 3.4 Règles sur les textes

- Tester 2-3 textes différents avec le même visuel
- Hook percutant en première ligne (question, statistique choc, pain point)
- Pas de texte trop long : sur mobile, personne ne clique "Voir plus"
- CTA clair et explicite

---

## Phase 4️⃣ : Vérifications pré-lancement

### 4.1 Checklist pré-lancement

Parcourir chaque point avant d'activer :

**Tracking :**
- [ ] Pixel Meta actif (dernier événement < 24h dans Events Manager)
- [ ] Événement de conversion correct (tester avec Test Events)
- [ ] CAPI configurée si possible (méthode de réception = "Navigateur et serveur")
- [ ] Déduplication vérifiée (pas de double comptage)
- [ ] Domaine vérifié dans le Business Manager

**Structure :**
- [ ] Convention de nomenclature respectée (campagne, Ad Set, ads)
- [ ] 1 campagne = 1 objectif
- [ ] Prospection et retargeting séparés
- [ ] 3-5 ads par Ad Set

**Audiences :**
- [ ] Exclusions en place (acheteurs, leads existants)
- [ ] Pas de chevauchement entre Ad Sets
- [ ] Taille d'audience suffisante (> 100 000 pour la prospection)

**Créatives :**
- [ ] Formats corrects (1:1 feed, 9:16 stories/reels)
- [ ] Textes avec hook, proposition de valeur et CTA
- [ ] URL de destination correcte (pas de 404)
- [ ] Landing page cohérente avec la pub

**Budget :**
- [ ] Budget cohérent avec l'objectif (assez pour ~50 conversions/semaine)
- [ ] Account Spending Limit configurée (120% du budget mensuel)
- [ ] Au moins 1 règle automatique de sécurité (pause si CPA > 2x objectif)

### 4.2 Vérification dans Ads Manager

1. Passer en revue chaque Ad Set dans l'aperçu
2. Vérifier les aperçus de chaque ad sur mobile et desktop
3. Confirmer que tous les emplacements affichent correctement le contenu

---

## Phase 5️⃣ : Lancement et première vérification

### 5.1 Activer les campagnes

1. Passer le statut des campagnes sur "Actif"
2. Vérifier que le statut passe bien à "Actif" (et pas "En attente d'examen")
3. Si le statut reste "En attente d'examen" : c'est normal, l'examen Meta prend 15 minutes à 24h

> ⚠️ **Examen Meta** : les premières campagnes d'un nouveau compte sont souvent examinées plus longtemps. Prévoir jusqu'à 24-48h pour la première activation.

### 5.2 Première vérification (2-4 heures après activation)

| Vérification | Ce qu'il faut chercher | Action si problème |
|-------|-----------------|-----------------|
| Statut | "Actif" sur tous les niveaux | Vérifier les refus d'ads, les problèmes de paiement |
| Impressions | En progression | Si 0 impression : vérifier l'audience, le budget, les refus |
| Dépense | Budget en train d'être consommé | Si 0 dépense : vérifier le moyen de paiement, les limites |
| CTR | Entre 0.5% et 3% | Si < 0.5% : le créatif ne résonne pas avec l'audience |
| Tracking | Conversions remontent dans Events Manager | Si 0 conversion après des clics : vérifier le pixel/CAPI |

### 5.3 Phase d'apprentissage

- Meta entre en phase d'apprentissage dès l'activation
- Durée : environ 50 conversions par Ad Set (ou 7 jours)
- **Ne rien modifier** pendant cette phase (pas de changement de budget, d'audience, de créative)
- Le CPA sera instable pendant cette période - c'est normal

### 5.4 Cadence de suivi post-lancement

| Période | Fréquence | Focus |
|-----------|-----------|-------|
| Jour 1 | Vérifier 2-4h après activation + fin de journée | Diffusion, refus d'ads, tracking |
| Jours 2-3 | Quotidien | Dépense, CPA, premiers signaux |
| Jours 4-7 | Quotidien (lecture seule) | Phase d'apprentissage, tendances |
| Semaine 2 | Tous les 2-3 jours | Sortie de la phase d'apprentissage, premières optimisations |
| Semaine 3+ | Hebdomadaire | Optimisation créative et audiences |

> ↪️ **Pour la cadence d'optimisation complète :** Voir [Recommandations - Optimisation Meta Ads](<../optimisation/Optimisation - Optimiser les performances.md>) > Cadence d'optimisation.

### 5.5 Documenter le lancement

Enregistrez :

| Champ | Valeur |
|-------|-------|
| Date de lancement | |
| Nom de la campagne | |
| Objectif Meta | |
| Événement d'optimisation | |
| Budget quotidien | |
| Type d'audience | |
| Nombre d'ads | |
| CPA/ROAS cible | |

---

## Validation et critères de complétion

Cette SOP est terminée quand :

- [ ] L'objectif Meta est aligné avec l'objectif business
- [ ] La nomenclature est respectée à tous les niveaux
- [ ] Le tracking est vérifié et fonctionnel (pixel + CAPI)
- [ ] Les exclusions d'audience sont en place
- [ ] Les créatives sont au bon format et les textes ont un hook + CTA
- [ ] La checklist pré-lancement est complètement validée
- [ ] La campagne est active et diffuse des impressions
- [ ] La cadence de suivi est planifiée
- [ ] Le lancement est documenté

---

## Passerelle de sortie

| Délai | Action |
|-----------|--------|
| Jours 1-7 | Monitorer sans modifier (phase d'apprentissage) |
| Semaine 2 | Évaluer la sortie de phase d'apprentissage, première analyse des créatives |
| Semaine 2-3 | Lancer le cycle d'optimisation créatif |
| Mois 1+ | Entrer dans la cadence d'optimisation régulière |

**En cas de problème :**

| Problème | Rediriger vers |
|-------|----------|
| Ads refusées | Modifier le contenu selon les policies Meta, resoumettre |
| 0 conversion après 7 jours | Vérifier tracking, puis CAPI, puis landing page |
| CPA > 2x objectif après la phase d'apprentissage | [Recommandations - Optimisation Meta Ads](<../optimisation/Optimisation - Optimiser les performances.md>) > Matrice de diagnostic créatif |
| Phase d'apprentissage qui ne se termine pas | Consolider les Ad Sets, augmenter le budget, remonter dans le tunnel |
| Budget épuisé trop vite | Réduire le budget ou vérifier les enchères |

---

## Erreurs fréquentes

| Erreur | Pourquoi ça arrive | Comment l'éviter |
|---------|----------------|--------------|
| Lancer sans avoir vérifié le tracking | Pression du client pour aller vite | Toujours exécuter la Phase 4 complètement |
| Modifier la campagne pendant la phase d'apprentissage | Impatience face à un CPA instable | Briefer le client sur la phase d'apprentissage avant le lancement |
| Budget trop faible pour l'objectif | Sous-estimation du CPA cible | Calculer : CPA cible x 50 / 7 = budget quotidien minimum |
| Prospection et retargeting dans la même campagne | Simplification excessive | Toujours séparer, même avec un petit budget |
| Nomenclature non respectée | Pas de processus en place | Appliquer le format dès la création, pas après |
| Trop d'ads par Ad Set | Vouloir tout tester d'un coup | Maximum 5 ads par Ad Set, tester par itérations |
| Ciblage trop restreint | Habitudes de ciblage 2018-2020 | Commencer en Broad, l'algorithme fait le travail |

---

## Procédures liées

| SOP | Relation |
|-----|-------------|
| [Procédure - Configurer le Conversions API (CAPI)](<../tracking/Tracking - Configurer le Conversions API (CAPI).md>) | Amont (tracking configuré avant le lancement) |
| [Procédure - Optimiser les créatives Meta Ads](<../creatives/Creatives - Optimiser les créatives.md>) | Aval (optimisation une fois les données collectées) |
| [Procédure - Analyser les performances Meta Ads](<../reporting/Reporting - Analyser les performances.md>) | Aval (analyse post-lancement) |
| [Procédure - Scaler une campagne Meta Ads](<../scaling/Scaling - Scaler une campagne.md>) | Aval (scaling si la campagne performe) |
| [Fiche - Les 5 typologies de campagne](<Lancement - Les 5 typologies de campagne.md>) | Amont (choix de la typologie avant le lancement) |
| [Procédure - Formulaire instantané (Lead Ads)](<Lancement - Formulaire instantané (Lead Ads).md>) | Variante (typologie formulaire natif) |
| [Procédure - Campagnes d'appels (Call Ads)](<Lancement - Campagnes d'appels (Call Ads).md>) | Variante (typologie appels) |
