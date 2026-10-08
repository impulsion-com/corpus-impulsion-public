# Lancement PMax (Lead Gen/SaaS)

> **Plateforme :** Google Ads
> **Catégorie :** Pmax
> **Type :** Checklist
> **Mis à jour :** 2026-05-07

## Objectif

Valide que tous les prérequis sont complets avant de lancer une campagne Performance Max pour Lead Gen ou SaaS.

Cette checklist s'assure que vous avez les signaux de qualité des leads, les données d'audience, les assets créatifs et la séparation de marque requis pour le succès de PMax. Sans ces prérequis, PMax optimisera pour le volume, pas pour la valeur.

---

## Ce que cette checklist valide

Cette checklist confirme :

- Le suivi de la qualité des leads est configuré (pas seulement les soumissions de formulaire)
- Les signaux d'audience sont préparés et atteignent les tailles minimum
- Les assets créatifs sont prêts et respectent les spécifications
- La séparation de marque est configurée
- Les exigences de volume sont remplies

Cette checklist ne couvre **PAS** :

- L'aide à la décision d'utiliser PMax (Voir : [PMax Structure Mental Model (Lead Gen/SaaS)](<Pmax - Structure PMax (Lead Gen-SaaS).md>))
- La configuration pas à pas de la campagne (Voir : [SOP - Lancer une campagne PMax pour lead gen/SaaS](<Pmax - Lancer une campagne PMax pour Lead Gen-SaaS.md>))
- La validation de la préparation PMax e-commerce (Voir : [Shopping Campaign Launch Checklist](<../shopping/Shopping - [Review] Lancement de campagne Shopping.md>))

---

## Quand l'utiliser

Exécuter cette checklist :

- Avant de lancer toute nouvelle campagne PMax Lead Gen ou SaaS
- Lors de la migration de Search-only vers PMax
- Lors de l'audit d'une campagne PMax sous-performante

---

## Checklist

### Prérequis de qualité des leads (Critique)

> ⚠️ **Ce sont des prérequis non négociables :** Sans suivi de la qualité des leads, PMax générera des leads de faible qualité.

La clé est de sélectionner la BONNE action de conversion principale. PMax optimise vers votre action principale, donc choisissez un signal de qualité en aval (MQL, SQL ou Deal Closé) plutôt que les soumissions de formulaire brutes.

- [ ] **Action de conversion principale** définie sur un signal de qualité en aval (MQL, SQL ou Deal Closé)
- [ ] Import de conversions hors ligne configuré pour les signaux en aval
- [ ] Conversions web brutes (formulaires, démos, essais) définies comme **secondaires** (pour la mesure uniquement)
- [ ] Valeurs de conversion assignées aux actions en aval (valeur plus élevée = meilleure qualité)
- [ ] 30+ conversions/mois sur votre action de conversion **principale**

**Configuration des actions de conversion :**

| Signal | Rôle | Pourquoi |
|--------|------|-----|
| Deal Closé / CA | Principale (idéal) | Optimise pour les résultats business réels |
| SQL | Principale (bon) | Optimise pour les leads qualifiés par les ventes |
| MQL | Principale (acceptable) | Optimise pour les leads qualifiés par le marketing |
| Soumissions de formulaire | Secondaire | Suivre le volume, mais ne pas optimiser dessus |
| Demandes de démo | Secondaire | Suivre le volume, mais ne pas optimiser dessus |
| Inscriptions à l'essai | Secondaire | Suivre le volume, mais ne pas optimiser dessus |

> ⚠️ **Si PMax optimise vers les soumissions de formulaire, il trouvera les formulaires les moins chers, souvent vos leads de plus basse qualité :** Utilisez toujours un signal de qualité en aval comme action de conversion principale, si le volume de conversions le permet.

> ↪️ **Import de conversions hors ligne manquant ?** Ne lancez pas PMax. Configurez d'abord l'import de conversions hors ligne. Voir [SOP - Configurer le suivi des conversions hors ligne](<../suivi/Suivi - Configurer le suivi des conversions hors ligne.md>).

### Prérequis de signaux d'audience

- [ ] Liste Customer Match uploadée (1 000+ utilisateurs matchés)
- [ ] Audience de visiteurs du site créée (1 000+ utilisateurs sur 30 jours)
- [ ] Audience de convertis du site créée
- [ ] Segments personnalisés préparés (URLs de concurrents, termes de recherche)
- [ ] Tailles de listes vérifiées dans le gestionnaire d'audiences Google Ads

**Inventaire des signaux d'audience :**

| Type de signal | Taille de liste | Statut |
|-------------|-----------|--------|
| Customer Match | | Actif / En attente / Non configuré |
| Visiteurs du site | | Actif / En attente / Non configuré |
| Convertis | | Actif / En attente / Non configuré |
| Segments personnalisés | | Actif / En attente / Non configuré |

> ↪️ **Minimum pour le lancement :** Au moins un signal Customer Match ou Audience du site.

### Prérequis d'assets créatifs

- [ ] Images préparées (minimum : 1 paysage, 1 carré)
- [ ] Images conformes aux spécifications (1200x628, 1200x1200)
- [ ] Logo uploadé (format carré)
- [ ] Titres rédigés (minimum 3, recommandé 5-11)
- [ ] Titres longs rédigés (minimum 1, recommandé 2-5)
- [ ] Descriptions rédigées (minimum 2, recommandé 4)
- [ ] Vidéo uploadée sur YouTube (recommandé)
- [ ] Tous les assets approuvés (pas de violations de politique)

**Inventaire des assets :**

| Type d'asset | Nombre | Atteint le minimum ? |
|------------|-------|---------------|
| Images paysage | | Oui / Non |
| Images carrées | | Oui / Non |
| Images portrait | | Oui / Non |
| Logo (carré) | | Oui / Non |
| Titres | | Oui / Non |
| Titres longs | | Oui / Non |
| Descriptions | | Oui / Non |
| Vidéos | | Oui / Non |

> ↪️ **Pour les spécifications d'assets :** Voir [PMax Asset Group Strategy Reference](<Pmax - Stratégie des asset groups PMax.md>).

### Prérequis de séparation de marque

- [ ] Termes de marque identifiés
- [ ] Campagne Search marque existante et protégée
- [ ] Exclusions de marque préparées pour PMax
- [ ] Plan de vérification pour le contrôle post-lancement des requêtes marque

### Prérequis de volume et budget

- [ ] 30+ conversions/mois sur le signal de qualité (pour supporter l'apprentissage)
- [ ] Budget quotidien défini (suffisant pour l'apprentissage)
- [ ] Stratégie d'enchères sélectionnée appropriée au volume
- [ ] Attentes de la période d'apprentissage fixées (2-4 semaines)

**Vérification du volume :**

| Métrique | 30 derniers jours | Atteint le seuil ? |
|--------|--------------|------------------|
| Soumissions de formulaire (secondaire) | | |
| MQL/SQL/Deals Closés (principal) | | Oui (30+) / Non |

### Prérequis de Landing Page

- [ ] Une Landing Page existe pour chaque asset group
- [ ] Landing Page optimisée mobile
- [ ] Landing Page charge en <3 secondes
- [ ] Le suivi des conversions se déclenche correctement sur la Landing Page
- [ ] La Landing Page correspond au message publicitaire

---

## Critères de validation

### Exigences minimum pour le lancement

| **Critère** | **Seuil** |
|----------|---------------|
| Import de conversions hors ligne | Configuré |
| Conversions/mois (signal de qualité) | 30+ |
| Customer Match ou audience du site | 1 000+ utilisateurs |
| Images | 1 paysage + 1 carré minimum |
| Titres | 3 minimum |
| Exclusions de marque | Configurées |

### Recommandé pour une performance optimale

| **Critère** | **Seuil** |
|----------|---------------|
| Valeur du signal de qualité | MQL, SQL ou Deal Closé (avec CA) |
| Signal de qualité | SQL ou CA (pas seulement MQL) |
| Conversions/mois | 50+ |
| Customer Match | 5 000+ matchés |
| Images | 5+ par format |
| Vidéo | 1+ uploadée |
| Titres | 8-11 |

---

## Checklist du jour de lancement

Après l'activation de la campagne :

- [ ] La campagne affiche le statut "Éligible"
- [ ] Tous les assets sont approuvés (pas de signalements de politique)
- [ ] Les signaux d'audience affichent "Actif"
- [ ] Le budget se dépense comme prévu
- [ ] Pas d'erreurs inattendues dans les diagnostics de campagne

---

## Monitoring post-lancement (14 premiers jours)

- [ ] Jour 1-3 : Vérifier que les impressions apparaissent, pas d'erreurs
- [ ] Jour 3 : Vérifier le statut d'approbation des assets
- [ ] Jour 7 : Première vérification de performance (ne pas optimiser encore)
- [ ] Jour 7 : Vérifier qu'aucune requête marque n'apparaît
- [ ] Jour 14 : Revue de performance initiale
- [ ] Ne PAS faire de modifications majeures pendant la période d'apprentissage (2-4 semaines)

---

## Référence rapide

| **Document** | **Relation** |
|--------------|------------------|
| [PMax Structure Mental Model (Lead Gen/SaaS)](<Pmax - Structure PMax (Lead Gen-SaaS).md>) | Décisions de structure |
| [PMax Asset Group Strategy Reference](<Pmax - Stratégie des asset groups PMax.md>) | Spécifications des assets |
| [Audience Signals Reference](<../audiences/Audiences - Signaux d'audience.md>) | Types et tailles de signaux |
| [Brand Separation Reference](<../search/Search - Séparation de marque.md>) | Configuration des exclusions de marque |
| [SOP - Lancer une campagne PMax pour lead gen/SaaS](<Pmax - Lancer une campagne PMax pour Lead Gen-SaaS.md>) | Configuration de la campagne |
