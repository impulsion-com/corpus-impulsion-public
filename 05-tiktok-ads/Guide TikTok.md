# Guide TikTok Ads

> **Plateforme :** TikTok
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Ce document est la référence centrale TikTok Ads : pourquoi la plateforme, audience FR, formats et emplacements, économie d'enchères, signaux algorithmiques, écosystème créatif. Il sert de point d'entrée vers les SOP opérationnelles listées ci-dessous.

---

## Ce que ce document ne couvre PAS

Ce document ne couvre **pas :**

- L'ouverture et le paramétrage du compte (Voir : [Procédure - Créer et configurer un compte TikTok Ads](<compte/Compte - Créer et configurer un compte.md>))
- L'installation du pixel et du tracking (Voir : [Procédure - Configurer le tracking TikTok Ads](<suivi/Suivi - Configurer le suivi.md>))
- Le lancement pas-à-pas d'une campagne selon l'objectif (Voir : [Procédure - Structurer ses campagnes TikTok Ads](<lancement/Lancement - Structurer ses campagnes.md>) et les SOP de lancement par objectif)
- La construction des audiences custom et similaires (Voir : [Procédure - Configurer les audiences TikTok Ads](<audiences/Audiences - Configurer les audiences.md>))
- La stratégie créative et les briefs (Voir : [Procédure - Stratégie créative TikTok Ads](<creatives/Creatives - Stratégie créative.md>))
- L'optimisation et la gestion en continu (Voir : [Procédure - Optimiser ses campagnes TikTok Ads](<optimisation/Optimisation - Optimiser ses campagnes.md>))
- Les règles publicitaires détaillées (Voir : [Référence - Politiques publicitaires TikTok Ads](<compte/Compte - Politiques publicitaires.md>))

---

## Navigation — Fichiers de ce guide

| Fichier | Type | Contenu |
|---------|------|---------|
| [Guide TikTok Ads](<Guide TikTok.md>) | Guide | Ce fichier — vue d'ensemble et référence centrale |
| [Créer et configurer un compte TikTok Ads](<compte/Compte - Créer et configurer un compte.md>) | Procédure | Ouverture du Business Center et Ads Manager |
| [Installer le pixel TikTok](<suivi/Suivi - Installer le pixel.md>) | Procédure | Pixel TikTok via Tag Manager ou code natif |
| [Configurer le tracking TikTok Ads](<suivi/Suivi - Configurer le suivi.md>) | Procédure | Événements, pixel et CAPI |
| [Configurer le tracking TikTok sur Shopify](<suivi/Suivi - Configurer le suivi sur Shopify.md>) | Procédure | Intégration native Shopify + TikTok CAPI |
| [Configurer le tracking TikTok sur WordPress](<suivi/Suivi - Configurer le suivi sur WordPress.md>) | Procédure | Pixel + CAPI sur WordPress/WooCommerce |
| [Configurer les événements de conversion TikTok](<suivi/Suivi - Configurer les événements de conversion.md>) | Procédure | Mapping événements standard TikTok |
| [Structurer ses campagnes TikTok Ads](<lancement/Lancement - Structurer ses campagnes.md>) | Procédure | Architecture campagne / ad group / ad |
| [Lancer une campagne Lead Gen TikTok Ads](<lancement/Lancement - Lancer une campagne Lead Gen.md>) | Procédure | Campagne de génération de leads |
| [Lancer une campagne conversions TikTok Ads](<lancement/Lancement - Lancer une campagne conversions.md>) | Procédure | Campagne d'achat / conversion |
| [Lancer une campagne dynamique TikTok Ads](<lancement/Lancement - Lancer une campagne dynamique.md>) | Procédure | Dynamic Showcase Ads (catalogue) |
| [Configurer les audiences TikTok Ads](<audiences/Audiences - Configurer les audiences.md>) | Procédure | Audiences custom, similaires, intérêts |
| [Créer une audience Lookalike TikTok Ads](<audiences/Audiences - Créer une audience similaire.md>) | Procédure | Audience similaire TikTok — paramètres et bonnes pratiques |
| [Analyser son audience TikTok Ads](<audiences/Audiences - Analyser son audience.md>) | Procédure | Audience Insights et lecture des données |
| [Mettre en place le retargeting TikTok Ads](<audiences/Audiences - Mettre en place le retargeting.md>) | Procédure | Retargeting site, vidéo, profil |
| [Stratégie créative TikTok Ads](<creatives/Creatives - Stratégie créative.md>) | Procédure | Framework créatif, hooks, angles |
| [Rédiger un brief UGC](<creatives/Creatives - Rédiger un brief UGC.md>) | Procédure | Brief vidéo pour créateurs UGC |
| [Optimiser ses campagnes TikTok Ads](<optimisation/Optimisation - Optimiser ses campagnes.md>) | Procédure | Signaux de performance, actions correctives |
| [Configurer les règles automatisées TikTok Ads](<optimisation/Optimisation - Configurer les règles automatisées.md>) | Procédure | Règles auto pour gérer le budget et les perfs |
| [Analyse des créatives TikTok Ads](<creatives/Creatives - Analyse des créatives.md>) | Référence | Métriques créatives, seuils de décision |
| [Politiques publicitaires TikTok Ads](<compte/Compte - Politiques publicitaires.md>) | Référence | Ce qui est autorisé et interdit sur TikTok |
| [Gestion des commentaires TikTok Ads](<optimisation/Optimisation - Gérer les commentaires.md>) | Recommandations | Modération et stratégie commentaires |

---

## 1. Pourquoi TikTok Ads ?

### Chiffres clés (2025-2026)

| Indicateur | Valeur | Source / Note |
|------------|--------|---------------|
| **Utilisateurs actifs mensuels (MAU)** | 1,5 milliard+ | Global — en croissance constante |
| **Durée de session moyenne** | 95 min/jour | La plus élevée de toutes les plateformes sociales |
| **Taux d'ouverture quotidien** | 90%+ des utilisateurs actifs | Ouvrent l'appli au moins une fois/jour |
| **Part des moins de 30 ans** | ~60% | En baisse progressive — la tranche 25-54 ans explose |
| **Tranche 25-34 ans** | ~26% de la base | Pouvoir d'achat élevé, très monétisable |
| **Tranche 35-54 ans** | ~22% et croissant | Segment le plus dynamique en acquisition sur TikTok |
| **CPM moyen Europe** | €5–13 (en hausse de ~16% YoY en 2025) | Vs €8–15 sur Meta — l'écart se réduit progressivement |
| **Formats natifs vidéo** | 100% | Plateforme conçue pour la vidéo verticale plein écran |
| **#TikTokMadeMeBuyIt** | 80 milliards de vues | Preuve de l'influence directe sur les décisions d'achat |

### Avantages compétitifs de TikTok Ads

- **Algorithme de découverte** : contrairement à Meta, TikTok distribue le contenu à des utilisateurs qui ne vous connaissent pas encore, ce qui amplifie massivement la portée organique d'un bon créatif publicitaire.
- **Coût d'entrée plus bas** : les CPM restent inférieurs à Meta et Google en Europe, notamment hors Q4.
- **Natif vidéo** : la plateforme a été conçue pour la vidéo verticale. Les publicités s'intègrent parfaitement dans le flux organique si elles sont bien produites.
- **Audiences jeunes et très engagées** : idéal pour les marques qui veulent toucher les 18-34 ans avec des produits lifestyle, beauté, gaming, tech ou formation.
- **TikTok Shop** : l'intégration e-commerce native (disponible dans certains pays) permet d'acheter directement depuis la vidéo, supprimant le friction du passage sur un site externe.

> ⚠️ TikTok Ads n'est pas disponible dans tous les pays. Vérifiez l'éligibilité de votre marché avant tout lancement : [Liste des pays éligibles TikTok Ads](https://ads.tiktok.com/help/article/placements-available-locations?lang=fr). En France, Belgique, Suisse et Canada francophone, la plateforme est pleinement disponible.

---

## 2. L'écosystème TikTok Ads

TikTok a construit un ensemble d'outils interconnectés. Il est crucial de comprendre lequel faire lequel avant de commencer.

| Outil | Rôle | Qui l'utilise |
|-------|------|---------------|
| **TikTok Business Center** | Espace central de gestion : relie les comptes publicitaires, pages, pixels, membres d'équipe et agences. Équivalent du Meta Business Manager. | Agences, annonceurs multi-comptes |
| **TikTok Ads Manager** | Interface de création et gestion des campagnes. C'est ici que vous créez les campagnes, ad groups, ads, audiences et analysez les résultats. | Media buyers, équipes marketing |
| **TikTok Creative Center** | Bibliothèque d'inspiration publicitaire, outils d'analyse des tendances (hashtags, sons, créatifs), générateur de scripts IA. Accès gratuit, sans compte publicitaire. | Créatifs, stratèges, media buyers |
| **TikTok Creator Marketplace** | Plateforme de mise en relation entre marques et créateurs TikTok pour des partenariats sponsorisés. Permet de gérer les campagnes d'influence directement. | Brand managers, équipes influence |
| **TikTok Seller Center** | Interface dédiée aux vendeurs TikTok Shop. Gestion du document produit, des commandes, des affiliés et des lives shopping. | E-commerçants (marchés éligibles) |
| **TikTok Pixel Helper** | Extension Chrome pour débugger le pixel TikTok en temps réel. | Développeurs, media buyers |
| **Events Manager** | Dans l'Ads Manager — outil de configuration, test et monitoring des événements de conversion (pixel + CAPI). | Media buyers, développeurs |

> 💡 Commencez toujours par créer le **Business Center** avant l'Ads Manager. Cela vous permettra de gérer plusieurs comptes publicitaires, d'ajouter des membres d'équipe et de partager les actifs (pixels, audiences) entre comptes.

> ↪️ Voir [Créer et configurer un compte TikTok Ads](<compte/Compte - Créer et configurer un compte.md>) pour le pas-à-pas complet.

---

## 3. Structure des campagnes

### Hiérarchie

```
Campagne (objectif + budget optionnel)
  └── Ad Group / Groupe d'annonces (audience + placement + budget + enchère)
        └── Ad / Annonce (créative vidéo + texte + CTA + page de destination)
```

### Règles de structure

| Règle | Pourquoi |
|-------|----------|
| **1 campagne = 1 objectif** | Mélanger trafic et conversions empêche l'algorithme TikTok d'optimiser correctement |
| **2–5 ads par ad group** | Moins de 2 = pas de test. Plus de 5 = budget trop dilué et données peu significatives par créatif |
| **1–3 ad groups par campagne** | Au-delà, les audiences se chevauchent et vous enchérissez contre vous-même |
| **Budget au niveau campagne par défaut** | Le budget campagne (équivalent CBO) laisse TikTok optimiser entre les ad groups |
| **Laisser sortir de la phase d'apprentissage** | 50 conversions/semaine/ad group — ne pas modifier pendant cette phase |
| **Séparer prospection et retargeting** | Audiences, créatives et CPA cibles différents |

### Convention de nomenclature recommandée

```
[Pays]_[Objectif]_[Type]_[Audience]_[Détail]
```

**Exemples :**
```
FR_CONV_PROSP_Broad_Video-UGC-Hook1
FR_LEADS_RTG_Visiteurs30j_Image-Offre
FR_TRAFIC_PROSP_Lookalike1pct_Video-Demo
```

| Variable | Valeurs possibles |
|----------|------------------|
| **Pays** | FR, BE, CH, CA, EU, WORLD |
| **Objectif** | CONV (conversions), LEADS, TRAFIC, NOTORIETE, VIDEO |
| **Type** | PROSP, RTG (retargeting), RETENTION |
| **Audience** | Broad, Lookalike1pct, Intérêts, CustomAudience, Visiteurs30j |

---

## 4. Objectifs de campagne

TikTok Ads organise les objectifs en trois grandes étapes du tunnel.

### Tableau complet des objectifs

| Étape du tunnel | Objectif | Événement d'optimisation | Quand l'utiliser |
|-------------|----------|--------------------------|------------------|
| **Notoriété** | Reach (Couverture) | Impressions uniques | Notoriété de marque, lancement, faible budget |
| **Notoriété** | Video Views (Vues vidéo) | 2s views, 6s views, ThruPlay | Branding vidéo, viral, éducation produit |
| **Consideration** | Traffic (Trafic) | Clics, Landing Page Views | Tests de LP, contenu, événements |
| **Consideration** | App Install | Installations, Événements in-app | Lancement ou acquisition d'app mobile |
| **Consideration** | Engagement | Likes, partages, commentaires, abonnés | Preuve sociale, croissance de page |
| **Consideration** | Lead Generation | Soumissions de formulaire instantané | Génération de prospects (formulaire natif TikTok) |
| **Conversion** | Website Conversions | Purchase, AddToCart, Lead, SignUp | E-commerce, services, SaaS — objectif principal |
| **Conversion** | Catalog Sales | Purchase (catalogue dynamique) | E-commerce avec catalogue produit |
| **Conversion** | App Promotion | Événements in-app (achat, abonnement) | Monétisation app mobile |
| **Conversion** | Lead Generation (avancé) | CRM Lead, Contact | Lead gen avec qualification renforcée |

> 💡 Règle d'or : choisissez l'objectif le plus bas dans le tunnel que votre volume de données permet d'alimenter. Si vous avez plus de 50 achats/semaine → optimisez pour Purchase. Moins de 50 achats → remontez dans le tunnel (AddToCart, InitiateCheckout ou même Traffic + pixel mature).

> ↪️ Voir [Structurer ses campagnes TikTok Ads](<lancement/Lancement - Structurer ses campagnes.md>) pour l'application pratique.

---

## 5. La phase d'apprentissage — règle des 50 conversions

C'est la règle la plus importante à comprendre sur TikTok Ads (identique à Meta).

### Comment fonctionne la phase d'apprentissage

Quand vous créez un nouvel ad group ou faites une modification significative, l'algorithme entre en **phase d'apprentissage**. Il explore différentes audiences, créneaux et emplacements pour trouver les meilleures combinaisons.

- **Durée** : jusqu'à 7 jours, mais peut se terminer plus tôt si le seuil de conversions est atteint
- **Seuil de sortie initial** : **25 conversions par ad group** OU 7 jours — la volatilité des CPA commence à diminuer à ce stade
- **Seuil d'optimisation complète** : **50 conversions par ad group par semaine** pour des performances stables et fiables
- **Pendant la phase** : les CPA sont instables, souvent élevés. C'est normal. Ne pas paniquer.
- **Statut affiché** : "Learning" (apprentissage) dans l'Ads Manager

### Ce qui réinitialise la phase d'apprentissage

| Action | Réinitialise la phase ? |
|--------|------------------------|
| Modifier le budget de plus de 50% | Oui |
| Modifier le ciblage (audience, âge, géo) | Oui |
| Modifier l'emplacement | Oui |
| Modifier l'événement d'optimisation | Oui |
| Modifier l'enchère ou la stratégie d'enchère | Oui |
| Ajouter ou supprimer une créative | Oui (partiel) |
| Modifier le texte de l'annonce | Non |
| Augmenter le budget de moins de 50% | Non (en général) |
| Pause puis reprise | Oui si pause > 7 jours |

### Que faire si vous n'atteignez pas 50 conversions/semaine ?

| Problème | Solution |
|----------|---------|
| Budget trop faible | Augmenter le budget (voir section 7) |
| Événement d'optimisation trop rare | Remonter dans le tunnel : Purchase → AddToCart → ViewContent → Traffic |
| Audience trop restreinte | Élargir : passer en Broad ou augmenter le rayon géographique |
| Ad groups trop fragmentés | Consolider 2–3 ad groups en 1 |
| CPA cible trop ambitieux (si en CPA cible) | Supprimer la contrainte ou assouplir le CPA cible |

> ⚠️ La modification impulsive d'un ad group en phase d'apprentissage est la première cause d'échec des campagnes TikTok. Laissez l'algorithme apprendre. Intervenez uniquement si la dépense est clairement hors budget ou si le CPA dépasse 3x votre objectif après 3+ jours.

---

## 6. Formats publicitaires

### Tableau complet des formats

| Format | Description | Spécifications | Budget minimum | Idéal pour |
|--------|-------------|----------------|----------------|------------|
| **In-Feed Ads** | Vidéo dans le flux "Pour toi". Le format standard. Ressemble à un post organique. | Vidéo 9:16, 5–60s (optimum 15–30s), son recommandé, résolution min. 540×960 | €20/jour | Tout type d'objectif — format de base |
| **TopView** | Vidéo plein écran dès l'ouverture de l'appli, avant le flux. Réservation directe. | Vidéo 9:16, jusqu'à 60s, son auto-activé | Achat réservation (CPM garanti, €50–200 CPM) | Lancements, grandes marques, notoriété nationale |
| **Spark Ads** | Amplification d'un post TikTok organique existant (de votre compte ou d'un créateur). Même look que le contenu natif. | Reprend les specs du post original | Même que In-Feed | E-commerce, lead gen, marques avec présence organique forte |
| **Shopping Ads — Basic** | Annonces In-Feed liées à un produit TikTok Shop ou à une page produit externe. | Vidéo ou image, fiche produit en bas | €20/jour | E-commerce avec catalogue |
| **Shopping Ads — LIVE** | Affichage d'annonces pendant un Live TikTok pour rediriger vers les produits présentés. | Lié à un live en cours | €20/jour | E-commerce live shopping |
| **Dynamic Showcase Ads (DSA)** | Annonces générées automatiquement à partir d'un catalogue produit. Personnalisation dynamique selon le comportement de l'utilisateur. | Flux catalogue (CSV, XML ou intégration) | €50/jour recommandé | Retargeting e-commerce, grands catalogues |
| **Branded Hashtag Challenge** | Défi sponsorisé sur un hashtag. Les utilisateurs créent du contenu autour du défi. | Contrat réservation, 6 jours minimum | À partir de €100 000 | Grandes marques, campagnes virales |
| **Branded Effects** | Filtres, stickers ou effets AR créés pour la marque, utilisables par tous. | AR développé avec TikTok Effect House | À partir de €30 000 | Notoriété, engagement, campagnes interactives |

> 💡 Pour 95% des annonceurs PME, le combo **In-Feed Ads + Spark Ads** est la base. TopView, Branded Hashtag Challenge et Branded Effects sont des formats de marques avec des budgets de réservation importants.

> ↪️ Pour les Spark Ads : voir [Stratégie créative TikTok Ads](<creatives/Creatives - Stratégie créative.md>).

### Spécifications techniques des formats principaux

| Paramètre | In-Feed Ads | Spark Ads | Dynamic Showcase Ads |
|-----------|-------------|-----------|----------------------|
| **Ratio** | 9:16 (vertical), 1:1 (carré), 16:9 (paysage, déconseillé) | Hérite du post original | 9:16 ou 1:1 selon le modèle |
| **Durée vidéo** | 5–60s (optimal : 15–30s) | 5–60s | 5–60s |
| **Résolution minimale** | 540×960 (recommandé : 1080×1920) | Idem post original | 540×960 |
| **Taille fichier max** | 500 MB | 500 MB | 500 MB |
| **Formats acceptés** | MP4, MOV, AVI, GIF | MP4, MOV | MP4, MOV |
| **Texte de l'annonce** | 1–100 caractères (optimal : 50–80) | Reprend la légende du post | 1–100 caractères |
| **CTA** | Bouton parmi 20 options (Shop Now, Learn More, Sign Up…) | Bouton personnalisable | Automatique (Shop Now) |
| **Logo/texte dans les zones sûres** | Éviter les 164px en bas et 250px à droite | Idem | Idem |

---

## 7. Planification budgétaire

### Budgets minimum par objectif

| Objectif | Budget minimum quotidien (ad group) | Budget recommandé pour données significatives | Horizon de données suffisantes |
|----------|-------------------------------------|----------------------------------------------|-------------------------------|
| **Conversions (Purchase)** | €20/jour | €50–100/jour | 7–14 jours minimum |
| **Lead Generation** | €20/jour | €50/jour | 5–10 jours |
| **Traffic** | €20/jour | €30/jour | 3–5 jours |
| **Video Views** | €20/jour | €30/jour | 3–5 jours |
| **Reach** | €20/jour | €20/jour | 3–5 jours |
| **App Install** | €20/jour | €50/jour | 7 jours |
| **Catalog Sales (DSA)** | €50/jour | €100/jour | 14 jours minimum |

> ⚠️ €20/jour est le **strict minimum technique**. En dessous, l'algorithme manque de données pour optimiser correctement. Avec un objectif Conversions à €20/jour, comptez 14–21 jours avant d'avoir assez de données pour prendre une décision. Avec €50–100/jour, 5–7 jours suffisent généralement.

### Formule budget minimum par objectif de conversion

```
Budget quotidien minimum = (CPA cible × 50) / 7
```

**Exemples :**
- CPA cible de €10 (lead) → budget minimum = (10 × 50) / 7 = **€71/jour**
- CPA cible de €30 (achat) → budget minimum = (30 × 50) / 7 = **€214/jour**
- CPA cible de €5 (lead magnet) → budget minimum = (5 × 50) / 7 = **€36/jour**

> 💡 Si votre budget est inférieur au minimum calculé, remontez l'événement d'optimisation dans le tunnel (ex : Purchase → AddToCart) ou réduisez votre CPA cible en travaillant sur la landing page et l'offre.

### Répartition budgétaire recommandée

| Phase | Répartition | Action |
|-------|-------------|--------|
| **Test (0–30 jours)** | 100% en ABO (budget par ad group) | Contrôle strict, tester créatives et audiences séparément |
| **Scale (30–90 jours)** | 70% en CBO + 30% en ABO | CBO sur les ad groups prouvés, ABO pour les nouveaux tests |
| **Croissance (90 jours+)** | 80% CBO + 20% ABO | CBO dominant, ABO réservé aux tests de nouvelles créatives |

---

## 8. TikTok vs Meta vs Google — Comparaison

| Critère | TikTok Ads | Meta Ads | Google Ads |
|---------|-----------|---------|-----------|
| **CPM moyen Europe** | €5–13 (en hausse) | €8–15 | €2–20 (Search), €1–5 (Display) |
| **Format principal** | Vidéo verticale 9:16 | Images, vidéos, carousels | Texte (Search), bannières (Display), vidéo (YouTube) |
| **Nature de l'intention** | Découverte (push) | Découverte (push) | Intention active (pull) pour Search |
| **Tranche d'âge dominante** | 18–34 ans (mais 25–54 en croissance) | 25–55 ans | Tous âges, orienté 25–55 ans |
| **Phase d'apprentissage** | 50 conversions/semaine | 50 conversions/semaine | 30–50 conversions/mois (Stratégies d'enchères intelligentes) |
| **Ciblage d'audience** | Intérêts, comportements, similaires, broad | Intérêts, comportements, similaires, broad, Custom Audiences très riches | Mots-clés, audiences en marché, similaires |
| **Forces** | CPM bas, engagement fort, algorithme de découverte puissant, format vidéo natif | Audience mature et large, outils d'audience très développés, CAPI solide | Intention d'achat forte (Search), réseau Display massif, YouTube |
| **Faiblesses** | Créatives très exigeantes (vidéo obligatoire), moins de données CRM, TikTok Shop limité géographiquement | CPM en hausse, saturation créative, RGPD pression | CPM Search élevé, Display peu performant seul, créatifs moins engageants |
| **Idéal pour** | E-commerce B2C (mode, beauté, lifestyle, food), Lead Gen services, apps, lancement de produit | Tout type d'objectif B2C et B2B, retargeting avancé, audience similaire sur CRM | Intent marketing, SEA, retargeting search, B2B avec keywords précis |
| **Minimum viable** | €20/jour/ad group | €20/jour/ad set | €10/jour/campagne (Search) |
| **Temps avant données** | 7–14 jours | 7 jours | 15–30 jours (Stratégies d'enchères intelligentes) |

> 💡 TikTok et Meta ne sont pas concurrents mais complémentaires. TikTok excelle dans la découverte de haut du tunnel à faible CPM, Meta dans le retargeting (reciblage) et la conversion grâce à ses Custom Audiences très granulaires. Une stratégie multiplateforme est idéale au-delà de €200/jour de budget total.

---

## 9. Audiences sur TikTok

### Types d'audiences

| Type | Description | Taille minimum | Quand l'utiliser |
|------|-------------|----------------|------------------|
| **Broad (sans ciblage)** | Aucun filtre d'audience. TikTok optimise seul. | — | Budget > €50/jour, pixel mature (500+ événements), compte qui a déjà des données |
| **Intérêts et comportements** | Ciblage basé sur les catégories d'intérêts TikTok et les interactions récentes | — | Début d'activité, niche spécifique, petit budget |
| **Custom Audiences — Pixel** | Visiteurs de votre site web (7, 14, 30, 60, 90, 180 jours) | 1 000 utilisateurs | Retargeting site |
| **Custom Audiences — Engagement TikTok** | Personnes ayant interagi avec vos vidéos, profil, publicités | 1 000 utilisateurs | Retargeting engagement, audience chaude |
| **Custom Audiences — CRM / Customer File** | Upload d'une liste clients (emails, numéros de téléphone) | 1 000 utilisateurs | Exclusion acheteurs, audience similaire source qualité |
| **Custom Audiences — App** | Utilisateurs de votre app (événements in-app) | 1 000 utilisateurs | Retargeting app, upsell |
| **Lookalike** | TikTok crée une audience similaire à votre source | Source : 1 000+ utilisateurs minimum | Prospection scalable et qualifiée |

### Paramètres des audiences similaires TikTok

| Niveau | % de similarité | Taille | Quand utiliser |
|--------|----------------|--------|----------------|
| **Narrow (1%)** | Très similaire à la source | Petit | Qualité maximale, budget limité |
| **Balanced (2–5%)** | Bon équilibre qualité/volume | Moyen | Campagnes de conversion scalables |
| **Broad (6–15%)** | Plus large, moins similaire | Grand | Volume maximal, objectifs de couverture/trafic |

> 💡 La source idéale pour une audience similaire TikTok : une Custom Audience d'acheteurs ou de leads (prospects) qualifiés avec au minimum 1 000 utilisateurs (recommandé : 5 000+). Plus la source est grande et qualifiée, plus l'audience similaire sera précise.

> ↪️ Voir [Créer une audience Lookalike TikTok Ads](<audiences/Audiences - Créer une audience similaire.md>) et [Configurer les audiences TikTok Ads](<audiences/Audiences - Configurer les audiences.md>).

---

## 10. Créatives TikTok — Fondamentaux

Les créatives sont **le levier numéro 1** sur TikTok. Plus encore que sur Meta, la qualité et la nativity de la vidéo détermine 70–80% du succès d'une campagne.

### Règle d'or : "TikTok-first"

Une publicité TikTok efficace ressemble à un contenu organique TikTok, pas à une publicité traditionnelle. Si votre vidéo ressemble à un spot TV, elle échouera.

| Caractéristique d'une bonne créative TikTok | Caractéristique d'une mauvaise créative TikTok |
|--------------------------------------------|------------------------------------------------|
| Hook fort dans les 3 premières secondes | Introduction lente avec logo ou branding |
| Son activé et optimisé (musique, voix-off) | Vidéo silencieuse ou son générique |
| Format vertical 9:16 natif | Format horizontal ou lettres pillar-box |
| Texte à l'écran (sous-titres, captions) | Texte absent ou trop petit |
| Authenticité, UGC, créateur visible | Production trop léchée, stock footage |
| Appel à l'action clair dans la vidéo | CTA absent ou flou |
| Durée 15–30s (sweet spot) | Vidéo > 60s sans rythme |

### Framework créatif : Hook → Problème → Solution → Preuve → CTA

1. **Hook (0–3s)** : Attraper l'attention immédiatement. Question, affirmation choc, scène d'action, démo impressionnante.
2. **Problème (3–8s)** : Identifier le problème ou la douleur de l'audience cible.
3. **Solution (8–18s)** : Présenter le produit/service comme la solution.
4. **Preuve (18–25s)** : Témoignage, stats, avant/après, démonstration.
5. **CTA (25–30s)** : Appel à l'action clair (Lien en bio, Acheter maintenant, Découvrir...).

> ↪️ Voir [Stratégie créative TikTok Ads](<creatives/Creatives - Stratégie créative.md>) et [Rédiger un brief UGC](<creatives/Creatives - Rédiger un brief UGC.md>) pour le détail opérationnel.

---

## 11. Tracking (suivi des conversions/évènements) et mesure

### Architecture de tracking recommandée

```
Événements TikTok
  ├── Pixel TikTok (côté navigateur) — tracking de base
  └── Events API / CAPI (côté serveur) — tracking avancé, contourne les bloqueurs
```

### Événements standard TikTok

| Événement | Quand le déclencher | Priorité |
|-----------|--------------------|---------:|
| **ViewContent** | Page produit, fiche service consultée | Haute |
| **Search** | Résultats de recherche interne | Moyenne |
| **AddToCart** | Ajout au panier | Haute |
| **InitiateCheckout** | Début du processus de paiement | Haute |
| **AddPaymentInfo** | Saisie des infos de paiement | Haute |
| **PlaceAnOrder** | Commande passée | Haute |
| **Purchase** | Paiement confirmé | Critique |
| **CompleteRegistration** | Inscription, création de compte | Haute |
| **SubmitForm** | Formulaire de lead soumis | Haute |
| **Subscribe** | Abonnement | Haute |
| **Contact** | Prise de contact (appel, email, chat) | Moyenne |
| **Download** | Téléchargement d'un asset | Basse |

### Pourquoi configurer la CAPI (Events API)

| Avec pixel seul | Avec pixel + CAPI |
|----------------|-------------------|
| Pertes dues aux bloqueurs de pubs (20–40%) | Récupération de 15–30% d'événements perdus |
| Pertes dues à l'ITP (Safari) | Tracking côté serveur non impacté par ITP |
| Qualité du signal dégradée | Signal plus propre, meilleure optimisation de l'algorithme |
| Attribution limitée | Attribution multi-touch plus précise |

> ⚠️ Depuis iOS 14+ et les restrictions de plus en plus strictes sur le tracking côté navigateur, la CAPI est devenue **indispensable** pour les campagnes de conversion. Sans CAPI, vous perdez en moyenne 20–35% de vos événements de conversion côté TikTok.

> ↪️ Voir [Configurer le tracking TikTok Ads](<suivi/Suivi - Configurer le suivi.md>), [Installer le pixel TikTok](<suivi/Suivi - Installer le pixel.md>), [Configurer le tracking sur Shopify](<suivi/Suivi - Configurer le suivi sur Shopify.md>) ou [sur WordPress](<suivi/Suivi - Configurer le suivi sur WordPress.md>).

---

## 12. Benchmarks (analyse comparative) de performance

### Benchmarks par objectif (marché Europe / France, 2025-2026)

#### Notoriété / Vidéo Views

| Métrique | Bas | Médiane | Bon | Excellent | Notes |
|----------|-----|---------|-----|-----------|-------|
| **CPM** | €2 | €3–6 | €6–8 | < €3 | Variable selon la saisonnalité |
| **CPV (coût par vue)** | €0.03 | €0.01–0.02 | €0.008 | < €0.005 | Vue = 2s (standard TikTok) |
| **Taux de vue 25%** | 25% | 35–45% | 50% | > 60% | |
| **Taux de vue 50%** | 15% | 22–30% | 35% | > 45% | |
| **Taux de vue 100%** | 5% | 10–18% | 22% | > 30% | |

#### Traffic / Trafic

| Métrique | Bas | Médiane | Bon | Excellent |
|----------|-----|---------|-----|-----------|
| **CPM** | €3 | €4–7 | €7–10 | < €3 |
| **CTR** | 0.5% | 1.0–1.5% | 2.0% | > 3.0% |
| **CPC** | €0.50 | €0.20–0.40 | €0.15 | < €0.10 |

#### Lead Generation

| Métrique | Bas | Médiane | Bon | Excellent | Notes |
|----------|-----|---------|-----|-----------|-------|
| **CPM** | €5 | €5–8 | €8–10 | < €4 | |
| **CTR** | 0.8% | 1.2–2.0% | 2.5% | > 3.5% | CTR élevé = créative très pertinente |
| **CPL (formulaire natif)** | €15 | €5–12 | €4 | < €3 | Lead Gen natif TikTok = CPL plus bas |
| **CPL (landing page externe)** | €30 | €10–20 | €7 | < €5 | Dépend fortement de la LP |
| **Taux de conversion LP** | 5% | 10–18% | 20% | > 30% | |

#### Conversions / E-commerce

| Métrique | Bas | Médiane | Bon | Excellent | Notes |
|----------|-----|---------|-----|-----------|-------|
| **CPM** | €6 | €5–9 | €9–12 | < €4 | |
| **CTR** | 0.5% | 1.0–1.5% | 2.0% | > 2.5% | |
| **CPA (achat)** | €35 | €15–25 | €10 | < €8 | Très variable selon le prix produit |
| **ROAS** | 1.5x | 2.5–4x | 5x | > 7x | Breakeven ROAS = 1 / marge brute |
| **Taux de conversion site** | 0.8% | 1.5–2.5% | 3.0% | > 4.0% | TikTok souvent moins bon que Meta |

### Benchmarks créatifs (métriques de créatives)

| Métrique | Définition | Mauvais | Correct | Bon | Excellent |
|----------|-----------|---------|---------|-----|-----------|
| **Hook Rate** | Vues 2–3s / Impressions | < 20% | 20–30% | 30–40% | > 40% |
| **Hold Rate** | Vues 100% / Vues 2–3s | < 15% | 15–25% | 25–40% | > 40% |
| **CTR** | Clics sur lien / Impressions | < 0.5% | 0.5–1.0% | 1.0–2.0% | > 2.0% |
| **Taux d'engagement** | (Likes + Comms + Partages) / Impressions | < 2% | 2–4% | 4–6% | > 6% |
| **Taux de partage** | Partages / Impressions | < 0.2% | 0.2–0.5% | 0.5–1% | > 1% |

> 💡 Sur TikTok, le **Hook Rate** (les 3 premières secondes) est le signe vital numéro 1 d'une créative. Un Hook Rate inférieur à 20% signifie que 80% des utilisateurs scrollent avant même de voir votre message. Priorité absolue à l'amélioration du hook.

---

## 13. Smart+ et automatisation

TikTok a introduit **Smart+** (équivalent des Advantage+ de Meta), un mode entièrement automatisé pour la gestion des campagnes.

| Fonctionnalité Smart+ | Description | Recommandé ? |
|----------------------|-------------|--------------|
| **Smart+ Campaigns** | Automatisation complète (audiences, créatives, emplacements, enchères). Depuis la mise à jour 2025, vous choisissez le niveau d'automatisation par module (ciblage, créatif, budget) au lieu du mode tout-ou-rien. | Oui pour les comptes avec historique et budget > €50/jour |
| **Smart Creative (DCO)** | Dynamic Creative Optimization — TikTok assemble automatiquement des combinaisons de hooks, corps de vidéo, textes et CTA. Supporte jusqu'à **30 asset groups par ad group** avec insights au niveau créatif. | Oui si vous avez > 5 actifs créatifs à tester |
| **Automatic Placement** | TikTok choisit automatiquement les emplacements (TikTok, Pangle, Global App Bundle) | Recommandé en début de campagne pour collecter des données |
| **Value-Based Bidding** | Optimisation automatique vers les acheteurs à valeur élevée (ROAS cible) | Oui si historique > 30 jours avec 50+ achats/semaine |

### Bonnes pratiques Smart+ (source : TikTok officiel 2025)

- **Budget** : configurer un budget quotidien de **30× votre CPA cible** (minimum 10× CPA cible)
- **Créatifs** : uploader **4 à 6 assets créatifs** minimum au lancement pour permettre l'itération rapide
- **Phase d'apprentissage** : laisser tourner **7 jours sans modification** majeure (enchère, audience, créatif)
- **Après 7 jours** : ajuster l'enchère de **maximum 15% tous les 2 jours**
- **Multi-campagnes** : utiliser des setups différents (ciblage ou créatifs) entre vos Smart+ pour éviter la cannibalisation

> ⚠️ Sur les campagnes Smart+, utiliser uniquement des règles automatisées de **notification et Stop Loss**, pas de scaling — laisser TikTok gérer l'optimisation du budget.

> ↪️ Voir [Optimiser ses campagnes TikTok Ads](<optimisation/Optimisation - Optimiser ses campagnes.md>) et [Configurer les règles automatisées TikTok Ads](<optimisation/Optimisation - Configurer les règles automatisées.md>).

---

## 14. Checklist de lancement

Avant de lancer une campagne TikTok Ads :

**Compte et tracking**
- [ ] Business Center TikTok créé et compte publicitaire lié
- [ ] Pixel TikTok installé et qui fire correctement (vérifier avec TikTok Pixel Helper)
- [ ] Événements de conversion configurés et testés (Test Event Tool dans Events Manager)
- [ ] TikTok Events API (CAPI) configurée si possible
- [ ] Domaine vérifié

**Créatives**
- [ ] Vidéos au format 9:16, résolution 1080×1920
- [ ] Hook clair dans les 3 premières secondes
- [ ] Son et sous-titres optimisés
- [ ] Durée entre 15 et 30 secondes
- [ ] CTA visible dans la vidéo ET dans le texte de l'annonce
- [ ] Minimum 3 créatives différentes par ad group (idéalement 3–5)
- [ ] Pas de logo ou branding au-delà des 164px inférieurs (zones d'interface TikTok)

**Campagne**
- [ ] Objectif cohérent avec le stade du tunnel
- [ ] Convention de nomenclature appliquée
- [ ] Budget cohérent avec l'objectif (CPA cible × 50 / 7)
- [ ] Audiences configurées : prospection séparée du retargeting
- [ ] Exclusions en place (acheteurs récents exclus de la prospection)
- [ ] Landing page mobile-first, chargement < 3s, cohérente avec la créative
- [ ] Règles automatisées de sécurité configurées (pause si CPA > 2× objectif)
- [ ] Account Spending Limit définie (120% du budget mensuel)

**Post-lancement (J+3 à J+7)**
- [ ] Vérifier que les conversions remontent correctement dans l'Ads Manager
- [ ] Surveiller la phase d'apprentissage (ne pas modifier avant 50 conversions)
- [ ] Analyser le Hook Rate et Hold Rate des créatives
- [ ] Identifier la créative la plus performante au bout de 5–7 jours

---

## 15. Glossaire TikTok Ads

| Terme | Définition |
|-------|-----------|
| **Ads Manager** | Interface principale de gestion des campagnes publicitaires TikTok |
| **Ad Group** | Niveau intermédiaire de la structure de campagne (entre campagne et annonce). Contient la définition d'audience, le budget, les emplacements et l'enchère. Équivalent de l'Ad Set sur Meta. |
| **Algorithm / "For You Page" (FYP)** | L'algorithme de recommandation de TikTok. Il détermine quel contenu (organique ou payant) est montré à chaque utilisateur. Se base sur les interactions, intérêts, et comportements. |
| **Broad targeting** | Absence de ciblage d'audience précis — TikTok optimise seul vers les profils les plus susceptibles de convertir. Très efficace sur les comptes avec de l'historique. |
| **Business Center** | Espace central de gestion multi-comptes TikTok. Permet de lier comptes publicitaires, pages TikTok, pixels et membres d'équipe. |
| **CAPI (Events API)** | TikTok Events API — tracking côté serveur qui envoie les événements de conversion directement depuis votre serveur vers TikTok, sans passer par le navigateur de l'utilisateur. Contourne les bloqueurs de pubs et les restrictions ITP. |
| **CBO (Campaign Budget Optimization)** | Budget défini au niveau de la campagne, TikTok répartit automatiquement entre les ad groups selon les performances. |
| **Click-Through Rate (CTR)** | Taux de clic : nombre de clics sur le lien / impressions × 100. |
| **CPA (Cost per Action)** | Coût par action / conversion. Dépense totale / nombre de conversions. |
| **CPL (Cost per Lead)** | Coût par lead généré. Cas particulier du CPA pour les objectifs de lead generation. |
| **CPM (Cost per Mille)** | Coût pour 1 000 impressions. Métrique de base pour comparer l'efficacité des emplacements et des créatives. |
| **Creative Center** | Outil gratuit TikTok pour explorer les créatives publicitaires performantes, les tendances hashtags, les sons viraux et générer des scripts créatifs. |
| **Creator Marketplace** | Plateforme de mise en relation avec les créateurs TikTok pour des partenariats de contenu sponsorisé. |
| **DCO (Dynamic Creative Optimization)** | Optimisation créative dynamique. TikTok assemble automatiquement différentes combinaisons de vidéos, textes et CTA pour tester et optimiser les meilleures variantes. Disponible via Smart Creative. |
| **DSA (Dynamic Showcase Ads)** | Annonces dynamiques basées sur un catalogue produit. TikTok génère automatiquement des annonces personnalisées selon le comportement de l'utilisateur (produits vus, ajoutés au panier). |
| **Hold Rate** | Taux de rétention. Mesure le % d'utilisateurs qui regardent votre vidéo jusqu'à la fin après avoir commencé. Calculé : Vues 100% / Vues 3s × 100. Indicateur de la qualité du corps de la vidéo. |
| **Hook** | Les 3 à 5 premières secondes d'une vidéo TikTok. Élément le plus critique d'une créative — doit stopper le scroll immédiatement. |
| **Hook Rate** | Taux de hook. % d'utilisateurs qui regardent au moins 3 secondes de votre vidéo. Calculé : Vues 3s / Impressions × 100. Indicateur de la puissance du hook. |
| **In-Feed Ads** | Format publicitaire standard TikTok. Vidéo insérée dans le flux "Pour toi" entre les vidéos organiques. |
| **Learning Phase (Phase d'apprentissage)** | Période pendant laquelle l'algorithme TikTok collecte des données pour optimiser la diffusion d'un ad group. Dure généralement 7–14 jours. Nécessite 50 conversions/semaine pour se terminer. |
| **Lookalike Audience** | Audience créée par TikTok qui ressemble à une audience source (acheteurs, visiteurs, liste CRM). Permet de trouver de nouveaux utilisateurs similaires aux meilleurs clients. |
| **Pangle** | Réseau publicitaire de TikTok (anciennement TopBuzz Video). Diffuse des annonces sur des applications tierces partenaires. |
| **Pixel TikTok** | Bout de code JavaScript installé sur votre site web qui envoie des événements de comportement à TikTok (pages vues, achats, formulaires, etc.). Base du tracking publicitaire. |
| **ROAS (Return on Ad Spend)** | Retour sur investissement publicitaire. Chiffre d'affaires généré / dépenses publicitaires. |
| **Smart+** | Suite de fonctionnalités d'automatisation TikTok Ads (campagnes, créatives, audiences, enchères). Équivalent des Advantage+ de Meta. |
| **Spark Ads** | Format publicitaire qui amplifie un post TikTok organique existant (de votre compte ou d'un créateur). Conserve les likes, commentaires et partages du post original — crédibilité accrue. |
| **TikTok Shop** | Fonctionnalité e-commerce native de TikTok permettant d'acheter des produits directement depuis l'application (vidéos, lives, onglet Shop). |
| **TopView** | Format publicitaire premium : vidéo plein écran affichée dès l'ouverture de l'appli TikTok. Disponible uniquement en achat direct (réservation). |
| **UGC (User Generated Content)** | Contenu créé par des utilisateurs (ou des créateurs qui imitent ce style). Format très performant sur TikTok car il ressemble à du contenu organique. |
| **Value-Based Bidding (VBB)** | Stratégie d'enchère qui optimise vers les utilisateurs susceptibles de générer la valeur d'achat la plus élevée (plutôt que le simple volume de conversions). |
| **Video Shopping Ads** | Format Shopping Ads basé sur une vidéo TikTok avec un overlay produit permettant l'achat direct. |

---

## Ressources officielles

| Ressource | Lien |
|-----------|------|
| Aide TikTok Ads Manager (FR) | https://ads.tiktok.com/help/ |
| Pays et placements éligibles | https://ads.tiktok.com/help/article/placements-available-locations?lang=fr |
| Spécifications des créatives | https://ads.tiktok.com/help/article/ad-specifications?lang=fr |
| TikTok Creative Center | https://ads.tiktok.com/business/creativecenter/ |
| Politiques publicitaires TikTok | https://ads.tiktok.com/help/article/tiktok-advertising-policies-overview |
| TikTok Events API (CAPI) | https://ads.tiktok.com/marketing_api/docs?id=1771100786070529 |
| TikTok Business Center | https://business.tiktok.com/ |

> ↪️ Pour les politiques publicitaires détaillées, voir [Politiques publicitaires TikTok Ads](<compte/Compte - Politiques publicitaires.md>).
