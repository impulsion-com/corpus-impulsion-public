# Santé des campagnes PMax

> **Plateforme :** Google Ads
> **Catégorie :** Pmax
> **Type :** Checklist
> **Mis à jour :** 2026-05-07

## Objectif

Valide qu'une campagne Performance Max active est saine sur toutes les dimensions contrôlables : asset groups, performance créative, termes de recherche, keywords négatifs, allocation par canal, signaux d'audience, défense de marque, budgets, Landing Pages, emplacements et intégration du flux.

---

## Ce que cette checklist valide

Cette checklist confirme :

- Les asset groups respectent les exigences minimum et maintiennent une cohérence thématique
- La performance des assets est vérifiée avec des métriques réelles, pas des labels vanité
- La qualité des termes de recherche est surveillée et les requêtes non convertissantes sont exclues
- Les listes de keywords négatifs sont liées et maintenues
- L'allocation par canal correspond à l'intention de la campagne
- Les signaux d'audience sont configurés et pertinents
- La cannibalisation de marque est contrôlée
- Les budgets sont utilisés de manière appropriée
- Les Landing Pages et les placements performent

Cette checklist ne couvre **PAS** :

- L'aide à la décision de lancer PMax (Voir : [PMax Launch Checklist (Lead Gen/SaaS)](<Pmax - [Review] Lancement PMax (Lead Gen-SaaS).md>))
- Les instructions de configuration de campagne pas à pas (Voir : [PMax Configuration Guidelines](<Pmax - Configuration PMax.md>))
- Les spécifications d'assets ou exigences créatives (Voir : [PMax Asset Group Strategy Reference](<Pmax - Stratégie des asset groups PMax.md>))

---

## Quand l'utiliser

Exécuter cette checklist :

- Lors des revues mensuelles des campagnes PMax
- Quand la performance PMax est en déclin ou volatile
- Après la fin de la période d'apprentissage initiale (2-4 semaines post-lancement)
- Lors de l'onboarding d'un compte existant avec des campagnes PMax actives

---

## Checklist

### Vérifications communes (toutes les campagnes PMax)

#### Santé des asset groups (PMax Full Assets uniquement, passer pour Feed-Only)

- [ ] Chaque asset group a les assets minimum requis (5+ titres, 5+ descriptions, 5+ images, 1+ logo)
- [ ] Les assets auto-générés sont identifiés et désactivés (notamment les vidéos auto-générées)
- [ ] Les directives texte sont configurées si la personnalisation texte est activée (exclusions de termes + restrictions de message)
- [ ] Les directives visuelles sont configurées si l'amélioration image/vidéo est activée (couleurs de marque + police)
- [ ] Les asset groups ont une cohérence thématique (pas de mélange de produits/services non liés)
- [ ] Aucun asset group avec 0 impression (problème de signal ou de ciblage)

#### Performance des assets

- [ ] Les données de performance au niveau asset sont vérifiées (impressions, clics, conversions réels par asset)
- [ ] Les assets sous-performants sont identifiés par les données réelles au niveau asset (pas par l'Ad Strength)
- [ ] Le score Ad Strength est ignoré (ce n'est pas un signal d'optimisation utile)
- [ ] La diversité créative est maintenue entre titres, descriptions et images

#### Qualité des termes de recherche

- [ ] Les rapports de termes de recherche PMax sont vérifiés (entièrement visibles, comme les STR des campagnes Search)
- [ ] Les requêtes non convertissantes sont identifiées et exclues
- [ ] La répartition requêtes marque vs. hors-marque est documentée
- [ ] Le chevauchement de requêtes avec les campagnes Search est vérifié

#### Gestion des keywords négatifs

- [ ] Les listes de keywords négatifs sont liées aux campagnes PMax (désormais supporté)
- [ ] La liste d'exclusion des N-grams non-convertissants est liée
- [ ] La liste d'exclusion des N-grams inefficaces est liée
- [ ] Les listes d'exclusion sont partagées avec les campagnes Search quand approprié

#### Allocation par canal (PMax Full Assets uniquement, passer pour Feed-Only)

- [ ] La distribution des dépenses entre Search/Shopping/Display/Video est vérifiée
- [ ] Pas de biais de canal inattendu (ex. 80%+ vers Display quand Shopping était attendu)
- [ ] Les tendances d'allocation par canal sont documentées (comparer à la période précédente)

#### Défense de marque

- [ ] La cannibalisation des termes de marque depuis les campagnes Search est vérifiée
- [ ] Les exclusions de marque sont en place (si applicable)
- [ ] La performance marque vs. hors-marque est séparée dans le reporting

#### Santé du budget

- [ ] L'utilisation du budget est vérifiée
- [ ] Pas de statut limité par le budget non intentionnel sur les campagnes performantes

#### Santé des emplacements

- [ ] Les rapports d'emplacements sont vérifiés (données d'impressions disponibles)
- [ ] Les emplacements suspects sont identifiés (patterns de trafic bot, sites non pertinents)

### Vérifications spécifiques e-commerce

- [ ] La configuration Feed-Only vs Full Assets est documentée et intentionnelle
- [ ] Le flux produits est connecté et sain
- [ ] La structure des groupes de fiches est alignée avec la segmentation produit
- [ ] L'allocation du canal Shopping est vérifiée (pour PMax Feed-Only : devrait être majoritairement Shopping)
- [ ] La segmentation de performance produit est active (hero/sidekick/villain/zombie), si applicable (Voir : [Feed Segmentation Catalog](<../flux-produit/Flux Produit - Tactiques de segmentation.md>))
- [ ] Le taux de produits sans clic est vérifié
- [ ] Le budget est entièrement dépensé (le PMax e-commerce ne devrait pas constamment sous-dépenser)

> ↪️ **Structure PMax e-commerce :** Voir [PMax Structure Mental Model (Ecommerce)](<Pmax - Structure PMax (E-commerce).md>) pour les décisions Feed-Only vs Full Assets et l'architecture de campagne.

### Vérifications spécifiques Lead Gen/SaaS

- [ ] Le signal de qualité des leads est configuré (import de conversions hors ligne, intégration CRM, ou scoring de leads)
- [ ] Au moins une action de conversion en aval est importée (MQL, SQL ou opportunité)
- [ ] Les valeurs de conversion sont assignées aux actions en aval (pas seulement binaire 0/1)
- [ ] Les signaux d'audience sont configurés avec des données first-party (listes clients, visiteurs du site)
- [ ] La qualité des signaux d'audience est vérifiée : les signaux correspondent au profil client cible
- [ ] La qualité des soumissions de formulaire est surveillée (taux de spam, taux de qualification)
- [ ] Le dépassement de budget est surveillé (le PMax lead gen peut dépenser agressivement sans signaux de qualité)
- [ ] Les paramètres d'expansion d'URL finale sont vérifiés (DÉSACTIVÉ si contrôle strict des LPs nécessaire)

> ↪️ **Structure PMax Lead Gen :** Voir [PMax Structure Mental Model (Lead Gen/SaaS)](<Pmax - Structure PMax (Lead Gen-SaaS).md>) pour la hiérarchie des signaux de qualité des leads et l'architecture de campagne.

---

## Référence rapide

| Document | Relation |
|----------|--------------|
| [PMax Structure Mental Model (Ecommerce)](<Pmax - Structure PMax (E-commerce).md>) | Méthode de structure de campagne pour le PMax e-commerce |
| [PMax Structure Mental Model (Lead Gen/SaaS)](<Pmax - Structure PMax (Lead Gen-SaaS).md>) | Méthode de structure de campagne pour le PMax lead gen |
| [PMax Configuration Guidelines](<Pmax - Configuration PMax.md>) | Recommandations de configuration par défaut |
| [PMax Asset Group Strategy Reference](<Pmax - Stratégie des asset groups PMax.md>) | Spécifications des assets et structure |
| [Feed Segmentation Catalog](<../flux-produit/Flux Produit - Tactiques de segmentation.md>) | Tactiques de segmentation produit pour l'e-commerce |
| [Product Feed Quality Checklist](<../flux-produit/Flux Produit - Qualité du flux produits.md>) | Validation spécifique au flux pour l'e-commerce |
| [Audience Signal Quality Checklist](<../audiences/Audiences - [Review] Qualité des signaux d'audience.md>) | Validation des signaux d'audience |
