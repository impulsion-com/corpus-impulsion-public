# Configurer les exclusions de données

> **Plateforme :** Google Ads
> **Catégorie :** Suivi
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Phase 1️⃣: Documenter le problème

### 1.1 Identifier l'événement de corruption

Déterminez quel type de problème s'est produit :

| Type d'événement | Symptômes | Causes fréquentes |
|------------|----------|---------------|
| Panne de tracking (suivi des conversions/évènements) | Conversions nulles ou quasi nulles pendant une période | Erreur de publication GTM, tag supprimé, mauvaise configuration du Consent Mode |
| Indisponibilité du site | Aucune conversion, probablement aucun clic ne convertit | Panne serveur, problème d'hébergement, défaillance du CDN |
| Défaillance de paiement | Clics et sessions normaux, les conversions tombent à zéro | Passerelle de paiement en panne, tunnel de paiement cassé |
| Gonflement par doublons | Le nombre de conversions grimpe anormalement | Tag qui se déclenche plusieurs fois, déduplication cassée |

### 1.2 Enregistrer les horodatages exacts

1. Consultez vos outils de monitoring, les logs serveur ou les données horaires de Google Ads
2. Identifiez l'heure de début précise (le moment où les données ont commencé à être corrompues)
3. Identifiez l'heure de fin précise (le moment où le problème a été résolu et où les données sont revenues à la normale)
4. Enregistrez les deux dans le fuseau horaire correspondant à votre compte Google Ads

| Champ | Valeur |
|-------|-------|
| Description de l'événement | |
| Date et heure de début | YYYY-MM-DD HH:MM |
| Date et heure de fin | YYYY-MM-DD HH:MM |
| Fuseau horaire du compte | |
| Portée affectée | Toutes les campagnes / Campagnes spécifiques / Appareils spécifiques |

### 1.3 Déterminer la portée

| Si... | Portée à utiliser | Ce que ça exclut |
|-------|-------------|-----------------|
| Le tracking était cassé sur tout le site | Toutes les campagnes | Supprime toutes les données de conversion de toutes les campagnes pour la période |
| Seuls certains types de campagnes étaient affectés | Campagnes spécifiques | Supprime les données de conversion des seules campagnes sélectionnées |
| Le problème était spécifique à un appareil (ex : tunnel de paiement mobile cassé) | Appareils spécifiques | Supprime les données de conversion des seuls appareils Mobile, Ordinateur ou Tablette |

> 💡 **Combinez les portées si besoin.** Si le tracking mobile n'était cassé que sur les campagnes Search, créez l'exclusion en la ciblant sur ces campagnes spécifiques ET sur le type d'appareil Mobile.

---

## Phase 2️⃣: Créer une exclusion de données

### 2.1 Naviguez vers Data Exclusions

1. Ouvrez Google Ads
2. Allez dans Tools > Shared Library > Bid Strategies
3. Cliquez sur « Advanced Controls » dans la navigation supérieure
4. Sélectionnez « Data Exclusions »

### 2.2 Créer l'exclusion

1. Cliquez sur le bouton « + » pour ajouter une nouvelle exclusion de données
2. Renseignez les champs :

| Champ | Ce qu'il faut saisir |
|-------|--------------|
| Name | Nom descriptif (ex : « Panne tunnel de paiement 28-29 janv. ») |
| Description | Brève explication de ce qui s'est passé |
| Start date and time | Début exact de la période corrompue |
| End date and time | Fin exacte de la période corrompue |
| Scope | Sélectionnez : All campaigns, specific campaigns ou specific devices |

3. Si vous sélectionnez specific campaigns :
   - Cochez les campagnes qui ont été affectées
   - Laissez décochées les campagnes non affectées

4. Si vous sélectionnez specific devices :
   - Cochez uniquement les types d'appareils affectés (Computer, Mobile, Tablet)

5. Cliquez sur Save

### 2.3 Revoir le résumé d'exclusion

Après l'enregistrement, vérifiez les détails de l'exclusion :

- [ ] La plage de dates correspond exactement à la fenêtre de l'incident
- [ ] La portée couvre toutes les campagnes ou tous les appareils affectés
- [ ] Le nom et la description sont clairs pour référence ultérieure

> ⚠️ **Soyez précis sur les horodatages :** Exclure une fenêtre trop large supprime de bonnes données dont les Stratégies d'enchères intelligentes ont besoin. Exclure une fenêtre trop étroite laisse des données corrompues dans l'ensemble d'apprentissage. Utilisez les horodatages les plus précis disponibles.

---

## Phase 3️⃣: Valider

### 3.1 Confirmez que l'exclusion est active

1. Retournez dans Tools > Shared Library > Bid Strategies > Advanced Controls > Data Exclusions
2. Vérifiez que votre exclusion apparaît dans la liste
3. Confirmez que le statut est affiché comme actif
4. Vérifiez que la plage de dates et la portée sont correctes

> ⚠️ **Exclusion active vs impact sur les enchères.** Une exclusion s'affiche comme « Active » dans l'interface immédiatement. Les Stratégies d'enchères intelligentes mettent 24 à 48 heures à ajuster complètement leurs modèles. N'évaluez pas la performance des enchères pendant les 48 heures suivant l'application d'une exclusion.

### 3.2 Surveiller le comportement des Stratégies d'enchères intelligentes

Une fois l'exclusion appliquée :

| Période | Ce qu'il faut vérifier |
|-----------|--------------|
| Premières 24 heures | Les Stratégies d'enchères intelligentes peuvent ajuster les enchères en recalculant sans les données exclues |
| Premiers 7 jours | Les cibles de CPA/ROAS devraient se stabiliser à mesure que l'algorithme s'adapte |
| Après 14 jours | La performance devrait revenir aux niveaux d'avant l'incident (à condition que la cause racine soit corrigée) |

### 3.3 Vérifiez que la cause racine est résolue

L'exclusion de données protège les Stratégies d'enchères intelligentes des mauvaises données, mais le problème sous-jacent doit lui aussi être corrigé :

- [ ] Le tracking fonctionne de nouveau correctement
- [ ] Les conversions de test se déclenchent correctement
- [ ] Les données de conversion des dernières 24 heures correspondent aux données du backend

> 💡 **Les exclusions de données sont réactives, pas préventives :** Elles indiquent aux Stratégies d'enchères intelligentes d'ignorer une période passée. Mettez en place du monitoring et des alertes pour détecter plus vite les problèmes de tracking à l'avenir.

### 3.4 Checklist finale

- [ ] Incident documenté avec des horodatages de début/fin précis
- [ ] Exclusion de données créée dans Google Ads avec la bonne portée
- [ ] L'exclusion apparaît comme active dans Advanced Controls
- [ ] La cause racine de la corruption des données est résolue
- [ ] Les Stratégies d'enchères intelligentes s'ajustent normalement après l'exclusion

---

### Limitations

Comprenez ces contraintes avant de vous reposer sur les exclusions de données :

| Limitation | Détail |
|------------|--------|
| Durée maximale | 14 jours par exclusion de données individuelle |
| Fenêtre d'exclusion totale | N'excluez pas plus de 2 à 3 semaines de données au total, toutes exclusions confondues |
| Rétroactif uniquement | Impossible d'exclure des périodes futures (utilisez les ajustements de saisonnalité pour les changements anticipés) |
| Stratégies d'enchères intelligentes uniquement | Les exclusions de données n'affectent que les stratégies d'enchères intelligentes, pas les enchères manuelles |
| Données toujours visibles | Les données exclues apparaissent toujours dans les rapports ; l'exclusion n'affecte que l'optimisation des enchères |

> ⚠️ **N'abusez pas des exclusions de données :** Des exclusions excessives privent les Stratégies d'enchères intelligentes de données d'apprentissage. Si vous devez exclure plus de 2 à 3 semaines au total, cherchez pourquoi les problèmes de tracking se répètent et corrigez la cause racine.

---

### Validation et critères de complétion

Cette SOP est terminée quand :

- [ ] L'événement de corruption des données est documenté avec des horodatages précis
- [ ] L'exclusion de données est créée et active dans Google Ads
- [ ] La portée couvre correctement toutes les campagnes ou tous les appareils affectés
- [ ] La cause racine du problème de données est identifiée et résolue
- [ ] La performance des Stratégies d'enchères intelligentes est surveillée jusqu'à stabilisation

---

### Passerelle de sortie

Une fois l'exclusion de données appliquée :

| Délai | Action |
|-----------|--------|
| Immédiatement | Reprenez le monitoring normal des campagnes |
| Après 7 jours | Vérifiez si la performance des Stratégies d'enchères intelligentes s'est stabilisée |
| Après 30 jours | Évaluez si l'exclusion peut être retirée (s'il s'agissait d'un événement ponctuel) |

**En cas de problème :**

| Problème | Rediriger vers |
|-------|----------|
| Stratégies d'enchères intelligentes toujours erratiques après l'exclusion | Vérifiez que l'exclusion couvre toute la période corrompue |
| Une autre panne de tracking survient | Relancez cette SOP pour le nouvel incident |
| Problèmes de données récurrents | Mettez en place monitoring et alertes pour détecter les problèmes plus vite |

---

### FAQ

**Q : Puis-je modifier une exclusion de données après l'avoir créée ?**

R : Oui. Vous pouvez modifier le nom, la description, la plage de dates et la portée d'une exclusion de données existante. Allez dans Advanced Controls > Data Exclusions, cliquez sur l'exclusion et modifiez-la.

**Q : Dois-je supprimer les anciennes exclusions de données ?**

R : Inutile. Les anciennes exclusions de données pour des périodes passées n'ont aucun impact continu. Conservez-les à des fins de documentation.

**Q : Quelle est la différence entre les exclusions de données et les ajustements de saisonnalité ?**

R : Les exclusions de données indiquent aux Stratégies d'enchères intelligentes d'ignorer les mauvaises données d'une période passée. Les ajustements de saisonnalité indiquent aux Stratégies d'enchères intelligentes de s'attendre à un changement temporaire des taux de conversion (comme une promotion ou une période de fêtes). Utilisez les exclusions pour les problèmes de qualité des données, les ajustements de saisonnalité pour les changements d'activité anticipés.

---

### Procédures liées

| SOP | Relation |
|-----|--------------|
| [SOP - Configurer les ajustements de conversions](<Suivi - Configurer les ajustements de conversion.md>) | Lié : les ajustements corrigent des conversions individuelles, les exclusions corrigent des périodes entières |
| [SOP - Configurer le Google Consent Mode](<Suivi - Configurer Google Consent Mode.md>) | Lié : les problèmes de Consent Mode sont une cause fréquente de pannes de tracking |
| [SOP - Implementer la deduplication par Transaction ID](<Suivi - Implémenter la déduplication par Transaction ID.md>) | Lié : les défaillances de déduplication peuvent nécessiter des exclusions de données pour les périodes gonflées |

---

### Erreurs fréquentes

| Erreur | Pourquoi ça arrive | Comment l'éviter |
|---------|----------------|--------------|
| Fenêtre d'exclusion trop large | Horodatages imprécis, arrondis à des jours entiers | Utilisez les données horaires pour cibler le début/la fin exacts |
| Fenêtre d'exclusion trop étroite | Le problème a commencé avant d'être remarqué | Consultez les outils de monitoring pour l'heure de début réelle, pas l'heure de découverte |
| Oublier de corriger la cause racine | Focalisation sur l'exclusion, oubli du problème sous-jacent | Résolvez toujours le problème de tracking d'abord, puis créez l'exclusion |
| Abuser des exclusions | Plusieurs incidents grignotant les données d'apprentissage des Stratégies d'enchères intelligentes | Corrigez les problèmes de tracking récurrents au lieu d'exclure à répétition |
| Appliquer aux mauvaises campagnes | Absence de vérification de la portée | Vérifiez bien quelles campagnes ont réellement été affectées avant de définir la portée |
