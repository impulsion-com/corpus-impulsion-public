# Santé des campagnes Display et Video

> **Plateforme :** Google Ads
> **Catégorie :** Display
> **Type :** Checklist
> **Mis à jour :** 2026-05-07

## Objectif

Valide que les campagnes Display et Video sont saines sur les dimensions ciblage, créative, budget, enchères, sécurité de marque et audiences. Les campagnes Video partagent de nombreux leviers d'optimisation avec le Display (placements, audiences, sécurité de marque) tout en ayant des considérations créatives et de mesure uniques. Exécutez cette checklist pour identifier les domaines nécessitant une attention, puis orientez vers la fiche ou le SOP approprié pour l'exécution.

---

## Ce que cette checklist valide

Cette checklist confirme :

- Le ciblage Display est intentionnel et contrôlé
- Les sous-types de campagnes Video et les formats créatifs correspondent aux objectifs
- L'allocation budgétaire est documentée et le pacing est correct
- Les stratégies d'enchères sont appropriées au type et à l'objectif de campagne
- Les exclusions de sécurité de marque sont en place pour les deux types de campagnes
- Les segments d'audience sont configurés, dimensionnés et correctement délimités

Cette checklist ne couvre **PAS** :

- Les instructions de configuration de campagne (Voir : [Upper Funnel Campaign Launch Checklist](<../strategie/Strategie - [Review] Lancement de campagne haut de tunnel.md>))
- L'audit des paramètres au niveau compte (Voir : [Account Health Checklist](<../optimisation/Optimisation - [Review] Santé du compte.md>))
- L'évaluation de la qualité créative vidéo (Voir : [Video Creative Quality Checklist](<../creatives/Creatives - [Review] Qualité des créatives vidéo.md>))
- L'évaluation de la qualité créative image (Voir : [Image Creative Quality Checklist](<../creatives/Creatives - [Review] Qualité des créatives image.md>))

---

## Quand l'utiliser

Exécuter cette checklist :

- Lors des revues mensuelles des campagnes Display et Video
- Quand la performance des campagnes Display ou Video est en déclin
- Après avoir hérité d'un compte avec des campagnes Display ou Video actives
- Avant d'augmenter les dépenses sur les campagnes haut du tunnel

---

## Checklist

### Vérifications spécifiques Display

- [ ] Méthode de ciblage configurée : pas de Display non ciblé (doit avoir un ciblage par audience, sujet ou placement)
- [ ] Statut du ciblage optimisé vérifié : DÉSACTIVÉ pour les campagnes de remarketing
- [ ] Audience de remarketing en mode CIBLAGE (pas Observation)
- [ ] Convertis exclus des campagnes de prospection par remarketing
- [ ] Placements d'apps mobiles exclus (exclusion par défaut pour le Display)
- [ ] Annonces display responsives configurées avec des images de qualité
- [ ] Exclusions de catégories de contenu en place (domaines parqués, pages d'erreur, sites made-for-ads)
- [ ] Exclusions de placements suspects/frauduleux appliquées
- [ ] Signaux de qualité des domaines vérifiés pour les meilleurs placements (patterns de risque TLD, indicateurs de domaines parqués, patterns de sites MFA. Voir [Placement Performance Reference](<../demand-gen/Demand Gen - Performance.md>))
- [ ] Tendance de qualité des placements vérifiée : pas de dégradation vs. le mois précédent

> ↪️ **Validation des créatives image :** Voir [Image Creative Quality Checklist](<../creatives/Creatives - [Review] Qualité des créatives image.md>) pour les critères complets de qualité image.

### Vérifications spécifiques Video

- [ ] Le sous-type de campagne correspond à l'objectif (Portée, Vues, Fréquence, Séquences)
- [ ] Les formats créatifs vidéo sont appropriés : vertical (Shorts), horizontal (in-stream), carré (Discover)
- [ ] La durée vidéo est appropriée pour le format (6s bumper, 15-30s skippable, 15s non-skippable)
- [ ] Le capping de fréquence est configuré et approprié pour l'objectif de campagne
- [ ] Le suivi des conversions après affichage est activé
- [ ] La fenêtre d'attribution après affichage est correctement définie (typiquement 1 jour)
- [ ] Les exclusions de chaînes/vidéos YouTube sont en place (sécurité de marque)
- [ ] Les bannières companion sont configurées (pour les annonces in-stream)
- [ ] Les signaux d'autorité des chaînes YouTube sont vérifiés pour les meilleurs placements vidéo (ancienneté, rythme de publication, abonnés)

> ↪️ **Validation des créatives vidéo :** Voir [Video Creative Quality Checklist](<../creatives/Creatives - [Review] Qualité des créatives vidéo.md>) pour les critères complets de format et qualité créative.

### Partagé : Santé du budget

- [ ] L'allocation budgétaire entre les campagnes de remarketing et de prospection est documentée
- [ ] Aucune campagne ne consomme un budget disproportionné sans justification
- [ ] Le pacing des dépenses mensuelles est en bonne voie

### Partagé : Santé de la stratégie d'enchères

- [ ] Les campagnes Display orientées conversion utilisent des enchères basées sur les conversions (CPA cible ou Max Conversions)
- [ ] Les campagnes Video de notoriété utilisent des enchères adaptées à la notoriété (Target CPM, Max CPV)
- [ ] La cible CPA est définie selon les benchmarks (analyse comparative) haut du tunnel (typiquement 1,5-2x le CPA cible Search Non-Branded)
- [ ] La cible ROAS est définie selon les benchmarks haut du tunnel (typiquement 50-70% du ROAS cible Search Non-Branded)
- [ ] La stratégie d'enchères n'est pas bloquée en "Apprentissage" depuis 14+ jours

### Partagé : Sécurité de marque

- [ ] Les exclusions de contenu sensible sont configurées
- [ ] Les exclusions de types de contenu et de labels sont appliquées
- [ ] Le paramètre de type d'inventaire est approprié (Standard pour la plupart, Limité pour les marques sensibles)
- [ ] Les listes d'exclusion de placements sont appliquées

> ↪️ **Analyse des placements :** Voir [Placement Performance Reference](<../demand-gen/Demand Gen - Performance.md>) pour la méthodologie d'évaluation et d'exclusion des placements.

### Partagé : Santé des audiences

- [ ] Les segments d'audience sont configurés et pertinents
- [ ] Les audiences de remarketing ont une taille suffisante (1 000+ utilisateurs)
- [ ] Les convertis sont exclus des campagnes de prospection
- [ ] La bonne fonctionnalité d'expansion est identifiée : ciblage optimisé (Display, Video Ventes/Leads/Trafic) vs expansion d'audience (Video Considération/Notoriété uniquement)
- [ ] La fonctionnalité d'expansion est DÉSACTIVÉE pour les campagnes de remarketing
- [ ] L'impact de l'expansion est vérifié via la ligne "Total : Expansion et ciblage optimisé" (si l'expansion est activée)
- [ ] Les segments en mode Observation sont vérifiés : aucun segment dormant depuis 60+ jours sans analyse
- [ ] La performance démographique est vérifiée : aucun groupe démographique avec un CPA > 2x la moyenne campagne et 50+ clics non traité

---

## Référence rapide

| Document | Relation |
|----------|--------------|
| [Placement Performance Reference](<../demand-gen/Demand Gen - Performance.md>) | Méthodologie d'évaluation et d'exclusion des placements |
| [Frequency Capping Reference](<../video/Video - Plafonnement de fréquence.md>) | Configuration du capping de fréquence par type de campagne |
| [Upper Funnel Campaign Structure Mental Model](<../strategie/Strategie - Structure de campagne haut de tunnel.md>) | Méthode structurelle pour les campagnes Display et Video |
| [Content Targeting Reference](<Display - Ciblage de contenu.md>) | Ciblage par sujet, placement et exclusions de contenu |
| [Upper Funnel Campaign Launch Checklist](<../strategie/Strategie - [Review] Lancement de campagne haut de tunnel.md>) | Validation pré-lancement (exécuter avant cette checklist) |
| [Video Creative Quality Checklist](<../creatives/Creatives - [Review] Qualité des créatives vidéo.md>) | Validation du format et de la qualité créative vidéo |
| [Image Creative Quality Checklist](<../creatives/Creatives - [Review] Qualité des créatives image.md>) | Validation de la qualité créative image |
| [Bid Strategy Health Checklist](<../encheres/Enchères - [Review] Santé de la stratégie d'enchères.md>) | Validation approfondie de la stratégie d'enchères |
