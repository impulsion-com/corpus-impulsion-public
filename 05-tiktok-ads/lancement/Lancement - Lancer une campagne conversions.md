# Lancer une campagne conversions TikTok Ads

> **Plateforme :** TikTok
> **Catégorie :** Lancement
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Créer et lancer une campagne TikTok Ads optimisée pour les conversions sur site internet (achat, inscription, lead qualifié), avec une maîtrise complète des mécaniques d'apprentissage, des stratégies d'enchères et des leviers d'optimisation avancés.

---

## Ce que cette SOP ne couvre PAS

Cette SOP ne couvre **pas :**

- Le lancement d'une campagne de génération de leads avec formulaire instantané (Voir : [Procédure - Lancer une campagne Lead Gen TikTok Ads](<Lancement - Lancer une campagne Lead Gen.md>))
- Le lancement d'une campagne dynamique catalogue (Catalog Sales / Smart+) (Voir : [Procédure - Lancer une campagne dynamique TikTok Ads](<Lancement - Lancer une campagne dynamique.md>))
- Les choix structurels (CBO vs ABO, nomenclature, hiérarchie) (Voir : [Procédure - Structurer ses campagnes TikTok Ads](<Lancement - Structurer ses campagnes.md>))
- L'installation du pixel et du tracking (suivi des conversions/évènements) (Voir : [Procédure - Configurer le tracking TikTok Ads](<../suivi/Suivi - Configurer le suivi.md>))
- La configuration des événements de conversion (Voir : [Procédure - Configurer les événements de conversion TikTok](<../suivi/Suivi - Configurer les événements de conversion.md>))
- La construction des audiences (Voir : [Procédure - Configurer les audiences TikTok Ads](<../audiences/Audiences - Configurer les audiences.md>))
- La stratégie et la production créative (Voir : [Procédure - Stratégie créative TikTok Ads](<../creatives/Creatives - Stratégie créative.md>))
- L'optimisation post-lancement (Voir : [Procédure - Optimiser ses campagnes TikTok Ads](<../optimisation/Optimisation - Optimiser ses campagnes.md>))

---

## Prérequis

Avant de créer la campagne, vérifier que les éléments suivants sont en place :

- Pixel TikTok installé et actif → voir [Procédure - Installer le pixel TikTok](<../suivi/Suivi - Installer le pixel.md>)
- Événements de conversion configurés et testés → voir [Procédure - Configurer les événements de conversion TikTok](<../suivi/Suivi - Configurer les événements de conversion.md>)
- Créatifs vidéo prêts (format 9:16, minimum 3 variantes) → voir [Procédure - Rédiger un brief UGC](<../creatives/Creatives - Rédiger un brief UGC.md>)
- Structure de compte définie → voir [Procédure - Structurer ses campagnes TikTok Ads](<Lancement - Structurer ses campagnes.md>)

---

## Étape 1 — Choisir entre CBO et ABO

Avant de créer la campagne, décider du mode de contrôle du budget.

### Tableau comparatif CBO vs ABO

| Critère | CBO (Campaign Budget Optimization) | ABO (Ad Group Budget Optimization) |
|---|---|---|
| **Définition** | Budget défini au niveau campagne, TikTok répartit automatiquement entre les groupes | Budget défini individuellement pour chaque groupe d'annonces |
| **Contrôle** | Faible — l'algorithme décide de l'allocation | Fort — vous contrôlez chaque groupe |
| **Efficacité** | Meilleure sur des campagnes matures avec données suffisantes | Meilleure pour les tests isolés et la phase d'apprentissage |
| **Quand l'utiliser** | Campagne de scale avec 3+ groupes d'annonces validés | Phase de test, audiences nouvelles, budgets différenciés par groupe |
| **Risque** | Concentre le budget sur un seul groupe et néglige les autres | Sur-dépense sur un groupe sous-performant si mal surveillé |
| **Budget minimum** | 50 €/jour pour le niveau campagne | 20 €/jour par groupe d'annonces |

> 💡 **Recommandation experte** : commencer en ABO pendant la phase de test (chaque groupe d'annonces reçoit un budget fixe), puis basculer en CBO une fois les groupes gagnants identifiés pour maximiser le scale.

---

## Étape 2 — Créer la campagne

1. Dans TikTok Ads Manager, cliquer sur **Créer une campagne**
2. Sélectionner l'objectif : **Conversions sur site internet**
3. Choisir le mode budget : **CBO** ou **ABO** selon le tableau ci-dessus
4. **Désactiver les campagnes Smart+** (sauf usage délibéré → voir section dédiée ci-dessous) pour garder le contrôle total des paramètres
5. Nommer la campagne avec une convention claire : `[Objectif]_[Audience]_[Date]` — ex. : `CONV_Broad_Avr2026`

### Destination de conversion

Choisir la **Conversion Location** en fonction de votre objectif :

| Option | Description | Quand l'utiliser |
|---|---|---|
| **Website** | Optimise pour les événements pixel sur votre site | E-commerce, génération de leads via landing page |
| **App** | Optimise pour les événements in-app (install, achat) | Applications mobiles |
| **TikTok Shop** | Optimise pour les ventes directement dans TikTok Shop | Marchands TikTok Shop actifs |

> ⚠️ **Attention** : si vous sélectionnez Website mais que votre pixel est mal configuré, TikTok ne recevra aucun signal de conversion et la campagne ne sortira jamais de la phase d'apprentissage.

---

## Étape 3 — Configurer le groupe d'annonces

### Budget

- **Minimum 20 €/jour par groupe** en ABO pour entrer en phase d'apprentissage
- **Recommandé : 50 €/jour** pour accumuler 50 conversions/semaine (seuil d'apprentissage)
- Ne pas modifier le budget de plus de 20 % en une fois pendant l'apprentissage

### Stratégie d'enchères

Choisir la stratégie en fonction de votre objectif et de votre tolérance au risque :

| Stratégie | Description | Quand l'utiliser | Niveau de risque |
|---|---|---|---|
| **Lowest Cost** (coût le plus bas) | TikTok dépense le budget en cherchant les conversions au coût le plus bas possible | Phase de test, objectif de volume, campagnes nouvelles | Faible — mais CPA peut varier fortement |
| **Cost Cap** (plafond de coût) | TikTok tente de maintenir le CPA autour d'une cible définie | Phase de scale, CPA cible connu, maturité suffisante | Moyen — peut limiter la dépense si la cible est trop basse |
| **Bid Cap** (plafond d'enchère) | Fixe une enchère maximale par impression/clic | Contrôle strict des coûts, audiences très compétitives | Élevé — risque de sous-dépense ou non-diffusion |

> 💡 **Recommandation** : commencer en **Lowest Cost** les 7 premiers jours pour laisser l'algorithme explorer. Passer en **Cost Cap** une fois le CPA cible établi avec au moins 50 conversions de référence.

> ⚠️ **Bid Cap** : à éviter pour les débutants. Mal calibré, il bloque complètement la diffusion.

### Audience

- **Commencer en audience large (Broad Targeting)** : pas de ciblage par intérêt, laisser TikTok trouver les convertisseurs
- Tester les **centres d'intérêt** dans des groupes d'annonces séparés — ne jamais mélanger broad et intérêts dans le même groupe
- Tester les **hashtags** comme signal comportemental dans un groupe isolé
- Utiliser des **exclusions** : exclure les acheteurs récents (Custom Audience pixel) pour éviter de dépenser sur des convertisseurs déjà acquis

> ↪️ Pour la configuration des audiences : [Procédure - Configurer les audiences TikTok Ads](<../audiences/Audiences - Configurer les audiences.md>)

### Emplacements — TikTok vs Pangle

| Emplacement | Description | Recommandation |
|---|---|---|
| **TikTok** | Flux principal, onglet Pour Toi | Toujours activer |
| **Pangle** | Réseau de partenaires (apps tierces) | Désactiver par défaut |
| **Automatic** | TikTok décide des emplacements | Acceptable en phase d'apprentissage, surveiller la part Pangle |

> ⚠️ **Désactiver Pangle** dans la majorité des cas : qualité du trafic inférieure, CPM plus bas mais taux de conversion nettement plus faible. L'activer uniquement si vous cherchez à augmenter le volume d'impressions à moindre coût pour des objectifs de notoriété.

### Événement d'optimisation

- Sélectionner l'événement le plus proche de l'objectif business final (ex. : `Purchase`, `CompleteRegistration`)
- Si le volume de l'événement final est insuffisant (< 50/semaine), remonter d'un cran dans l'entonnoir : `AddToCart` → `InitiateCheckout` → `Purchase`

> ↪️ Vérifier les événements disponibles : [Procédure - Configurer les événements de conversion TikTok](<../suivi/Suivi - Configurer les événements de conversion.md>)

---

## Étape 4 — Phase d'apprentissage : mécaniques et règles

### Comment fonctionne l'apprentissage

TikTok utilise une **phase d'apprentissage algorithmique** au démarrage de chaque nouveau groupe d'annonces. Pendant cette période, l'algorithme explore différents profils d'utilisateurs pour identifier ceux qui convertissent.

- **Seuil de sortie initial** : **25 conversions par ad group** OU 7 jours — la volatilité du CPA commence à diminuer
- **Seuil d'optimisation complète** : **50 conversions par ad group par semaine** — performances stables et fiables
- Tant que le seuil de 50 n'est pas atteint, les performances restent partiellement instables
- Le statut "Apprentissage" est visible dans l'interface Ads Manager

### Règle des 48 premières heures

> ⚠️ **Ne toucher à rien pendant les 48 premières heures.** Toute modification dans cette fenêtre perturbe l'exploration algorithmique et peut produire des résultats non représentatifs.

Cela inclut :
- Modification du budget
- Changement d'audience
- Ajout ou suppression d'annonces
- Changement de stratégie d'enchères

### Ce qui réinitialise la phase d'apprentissage

Les actions suivantes **remettent le compteur à zéro** et relancent l'apprentissage depuis le début :

| Action | Réinitialisation |
|---|---|
| Modification du budget (> 20 %) | Oui |
| Changement d'audience | Oui |
| Changement d'événement d'optimisation | Oui |
| Ajout/suppression d'annonces | Oui partiel |
| Changement de stratégie d'enchères | Oui |
| Modification du CTA | Non |
| Pause puis réactivation (< 7 jours) | Non |
| Pause puis réactivation (> 7 jours) | Oui |

> 💡 **Principe** : pendant les 7 premiers jours, observer sans intervenir. Intervenir uniquement si les dépenses sont clairement hors contrôle (CPA > 5x la cible).

---

## Étape 5 — Créer les annonces

### Spark Ads vs Annonces classiques

- **Spark Ads** : booster un post organique existant. Conserve l'engagement (likes, commentaires, partages). Recommandé pour les contenus organiques performants.
- **Annonces classiques** : uploader directement un créatif vidéo. Plus de flexibilité sur le contenu mais sans historique d'engagement.

### DCO — Dynamic Creative Optimization

L'option **DCO** permet de combiner automatiquement plusieurs éléments créatifs (vidéos, textes, CTA) pour laisser TikTok identifier les meilleures combinaisons.

| Élément | Nombre recommandé |
|---|---|
| Vidéos | 3 à 5 |
| Textes d'accroche | 3 à 5 |
| CTA | 2 à 3 |

> 💡 **Quand utiliser DCO** : idéal en phase de test créatif pour identifier rapidement les gagnants sans créer des dizaines de groupes d'annonces séparés. À désactiver une fois les gagnants identifiés pour optimiser manuellement.

> ⚠️ **Limitation DCO** : impossible d'attribuer les performances à un créatif spécifique dans les rapports — la transparence analytique est réduite.

### Format et spécifications

- Ratio : **9:16 vertical** obligatoire
- Durée recommandée : **15 à 30 secondes**
- Les 3 premières secondes sont décisives pour le taux de rétention
- Toujours sous-titrer les vidéos (50 % des utilisateurs regardent sans son)

### Call to Action

Personnaliser le CTA selon l'objectif :
- "Acheter maintenant" → e-commerce
- "En savoir plus" → notoriété / trafic froid
- "Inscrivez-vous" → lead gen / événement
- "Obtenir un devis" → services B2B

---

## Étape 6 — Fenêtre d'attribution et réconciliation avec GA4

### Configuration recommandée

- **7 jours clic + 1 jour vue** : fenêtre large, recommandée au démarrage pour capter un maximum de conversions
- **7 jours clic uniquement** : plus conservatrice, se rapproche davantage de GA4

### Pourquoi TikTok sur-reporte par rapport à GA4

> ⚠️ **Écart TikTok vs GA4 : normal et attendu.** TikTok utilise un modèle d'attribution basé sur la dernière interaction publicitaire, incluant les vues (view-through). GA4 utilise un modèle basé sur les sessions avec last-click. Les deux mesurent des réalités différentes.

| Source | Ce qu'elle mesure | Tendance |
|---|---|---|
| TikTok Ads Manager | Conversions attribuées à TikTok (clic + vue) | Sur-reporte |
| GA4 | Sessions et conversions basées sur les clics | Sous-reporte TikTok |
| Source de vérité | Revenus réels dans votre CRM / back-office | Référence absolue |

> 💡 **Bonne pratique** : utiliser TikTok Ads Manager pour comparer les créatifs et groupes d'annonces entre eux (comparaison relative). Utiliser GA4 + données back-office pour évaluer la rentabilité réelle.

---

## Étape 7 — Smart+ Campaigns (alternative automatisée)

Les **Smart+ Campaigns** sont la version entièrement automatisée de TikTok : ciblage, enchères et créatifs sont gérés par l'IA de TikTok.

| Critère | Smart+ | Campagne manuelle |
|---|---|---|
| Contrôle | Minimal | Total |
| Facilité de lancement | Très facile | Complexe |
| Performance sur budgets faibles | Instable | Contrôlable |
| Performance sur budgets élevés (500 €+/jour) | Souvent supérieure | Dépend de l'optimisation |
| Transparence | Faible | Totale |

> 💡 **Quand utiliser Smart+** : si vous avez un budget > 100 €/jour, un catalogue produit synchronisé, et que vous souhaitez minimiser le temps de gestion. Tester en parallèle d'une campagne manuelle pour comparer les ROAS.

> ↪️ Pour l'optimisation continue des campagnes actives : [Procédure - Optimiser ses campagnes TikTok Ads](<../optimisation/Optimisation - Optimiser ses campagnes.md>)

---

## Étape 8 — Lancer et surveiller

### Checklist de lancement

- [ ] Pixel actif et événements vérifiés dans l'Event Manager
- [ ] Événement d'optimisation sélectionné avec volume suffisant (> 50/semaine)
- [ ] Budget journalier défini (min. 50 €/jour recommandé)
- [ ] Stratégie d'enchères choisie (Lowest Cost pour démarrer)
- [ ] Pangle désactivé
- [ ] Minimum 3 créatifs uploadés
- [ ] Attribution window configurée (7j clic + 1j vue)
- [ ] DCO activé ou créatifs séparés selon approche choisie
- [ ] Règles automatisées configurées → voir [Procédure - Configurer les règles automatisées TikTok Ads](<../optimisation/Optimisation - Configurer les règles automatisées.md>)

### Surveillance post-lancement

| Période | Action |
|---|---|
| J+1 à J+2 | Ne rien modifier. Observer uniquement. |
| J+3 à J+7 | Identifier les créatifs sous-performants (CTR < 0,5 %) |
| J+7 | Couper les créatifs perdants, scaler les gagnants |
| J+14 | Évaluer le CPA vs cible. Décision scale / arrêt / test nouvelle audience |

---

## Benchmarks (analyse comparative) de référence

| Métrique | Bon | Moyen | À optimiser |
|---|---|---|---|
| CTR (Click-Through Rate) | > 1,5 % | 0,8 – 1,5 % | < 0,8 % |
| CPM | 10 – 25 € | 25 – 50 € | > 50 € |
| Taux de conversion page | > 3 % | 1 – 3 % | < 1 % |
| CPA (e-commerce) | < 15 € | 15 – 35 € | > 35 € |
| ROAS | > 3x | 2 – 3x | < 2x |

---

## Références croisées

- [Procédure - Installer le pixel TikTok](<../suivi/Suivi - Installer le pixel.md>)
- [Procédure - Configurer les événements de conversion TikTok](<../suivi/Suivi - Configurer les événements de conversion.md>)
- [Procédure - Structurer ses campagnes TikTok Ads](<Lancement - Structurer ses campagnes.md>)
- [Procédure - Configurer les audiences TikTok Ads](<../audiences/Audiences - Configurer les audiences.md>)
- [Procédure - Optimiser ses campagnes TikTok Ads](<../optimisation/Optimisation - Optimiser ses campagnes.md>)
- [Procédure - Configurer les règles automatisées TikTok Ads](<../optimisation/Optimisation - Configurer les règles automatisées.md>)
- [Procédure - Rédiger un brief UGC](<../creatives/Creatives - Rédiger un brief UGC.md>)
- [Référence - Analyse des créatives TikTok Ads](<../creatives/Creatives - Analyse des créatives.md>)
