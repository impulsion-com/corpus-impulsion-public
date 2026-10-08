# Mettre en place le retargeting TikTok Ads

> **Plateforme :** TikTok
> **Catégorie :** Audiences
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Mettre en place des campagnes de retargeting (reciblage) TikTok Ads structurées par segment d'intention, avec les bonnes fenêtres temporelles, créatives adaptées et garde-fous techniques pour maximiser les conversions sans saturer l'audience.

---

## Ce que cette SOP ne couvre PAS

Cette SOP ne couvre **pas :**

- La configuration des audiences de prospection (custom, audience similaire, intérêts) (Voir : [Procédure - Configurer les audiences TikTok Ads](<Audiences - Configurer les audiences.md>))
- La création d'une audience similaire à partir d'un segment chaud (Voir : [Procédure - Créer une audience Lookalike TikTok Ads](<Audiences - Créer une audience similaire.md>))
- L'analyse de l'audience pour valider les hypothèses de segments (Voir : [Procédure - Analyser son audience TikTok Ads](<Audiences - Analyser son audience.md>))
- L'installation du pixel et des événements (prérequis du retargeting) (Voir : [Procédure - Configurer les événements de conversion TikTok](<../suivi/Suivi - Configurer les événements de conversion.md>))
- Le lancement opérationnel d'une campagne retargeting (Voir : [Procédure - Lancer une campagne conversions TikTok Ads](<../lancement/Lancement - Lancer une campagne conversions.md>))

---

## Pourquoi le retargeting sur TikTok ?

Le retargeting s'adresse à des utilisateurs qui ont déjà manifesté une intention. Ils connaissent votre marque : le travail de sensibilisation est fait. L'objectif devient la conversion ou la réactivation.

- **Relancer** les utilisateurs n'ayant pas finalisé une action (achat, formulaire, téléchargement)
- **Rappeler** votre produit à une audience chaude à fort potentiel de conversion
- **Réduire le CPA** en ciblant des profils déjà qualifiés plutôt que du trafic froid
- **Maximiser le ROAS** sur les segments à haute valeur (gros paniers, visiteurs fréquents)

> ⚠️ **TikTok vs Meta : la différence fondamentale**
> Les pools de retargeting sont structurellement plus petits sur TikTok que sur Meta. Meta bénéficie d'une base installée massive et d'un pixel omniprésent depuis des années. Sur TikTok, le pixel est plus récent et moins diffus : attendez-vous à des audiences retargeting 3 à 5× plus petites pour un même niveau de trafic. Cela impose un seuil minimum de trafic plus élevé avant de lancer du retargeting.

---

## Prérequis : seuils minimaux avant de lancer

Lancer un retargeting trop tôt est l'erreur la plus fréquente. Une audience trop petite génère une diffusion erratique, un CPM gonflé, et une fatigue créative accélérée.

| Condition | Seuil minimum recommandé |
|---|---|
| Visiteurs uniques mensuels sur le site | **500 – 1 000 visiteurs/mois** |
| Taille d'audience matchée dans TikTok Ads Manager | **1 000 utilisateurs matchés minimum** |
| Événements pixel enregistrés (ViewContent, ATC, etc.) | **50+ événements/semaine sur l'événement ciblé** |
| Durée de collecte de données avant activation | **2 – 4 semaines minimum après installation pixel** |

> 💡 En dessous de 1 000 utilisateurs matchés, TikTok ne peut pas diffuser correctement. L'audience n'est pas éligible à la livraison ou sera sous-diffusée avec des CPM très élevés. Attendez d'atteindre ce seuil avant d'activer.

---

## Étape 1 — Vérifier et valider le pixel

Avant toute chose, le pixel doit être opérationnel et les événements correctement configurés.

1. Aller dans **TikTok Ads Manager → Assets → Events**
2. Vérifier que les événements clés remontent : `ViewContent`, `AddToCart`, `InitiateCheckout`, `CompletePayment`
3. Contrôler la fenêtre de déduplication et le mode de correspondance (browser + server-side si possible)
4. Confirmer que le pixel collecte depuis au moins 2 à 4 semaines

> ↪️ Voir [Procédure - Installer le pixel TikTok](<../suivi/Suivi - Installer le pixel.md>) pour l'installation complète
> ↪️ Voir [Procédure - Configurer les événements de conversion TikTok](<../suivi/Suivi - Configurer les événements de conversion.md>) pour la configuration des événements

---

## Étape 2 — Créer les audiences personnalisées

Les audiences se créent dans **TikTok Ads Manager → Assets → Audiences → Create Audience → Custom Audience**.

### Audiences basées sur le pixel (site web)

| Segment | Fenêtre recommandée | Priorité |
|---|---|---|
| Visiteurs de toutes les pages | 7 jours | Haute |
| Visiteurs de pages produit (ViewContent) | 7 jours | Haute |
| Ajouts au panier sans achat (ATC – Purchase) | 7 jours | Très haute |
| Abandons de checkout (InitiateCheckout – Purchase) | 7 jours | Critique |
| Acheteurs récents (Purchase) | 30 jours | Upsell/cross-sell |
| Visiteurs haute fréquence (3+ visites) | 14 jours | Haute |

### Audiences basées sur les interactions TikTok

| Segment | Fenêtre recommandée |
|---|---|
| Vues vidéo 75%+ | 7 – 14 jours |
| Clics sur CTA d'une publicité | 7 jours |
| Profil TikTok : followers + interactions | 30 jours |

> 💡 **Règle des fenêtres temporelles** : les audiences 7 jours convertissent en moyenne **2 à 4× mieux** que les audiences 30 jours. La fenêtre 30 jours est utile pour alimenter le volume si l'audience 7 jours est trop petite, mais elle dilue l'intention. Priorité systématique au 7 jours quand le volume le permet.

> ↪️ Voir [Procédure - Configurer les audiences TikTok Ads](<Audiences - Configurer les audiences.md>) pour le détail de création

---

## Étape 3 — Architecture séquentielle du retargeting

Ne pas traiter tous les retargeting de la même façon. Le message doit correspondre exactement au point de friction dans le tunnel.

### Matrice message × segment

| Segment | Point de friction | Message recommandé | Offre |
|---|---|---|---|
| Visiteur page produit | Pas encore convaincu | Preuve sociale, bénéfices, UGC | Aucune remise nécessaire |
| Abandon panier | Hésitation prix ou friction UX | Montrer le produit, urgence, réassurance | Remise légère (5–10%) ou livraison offerte |
| Abandon checkout | Friction paiement | Simplicité, réassurance sécurité paiement | Frais de port offerts |
| Acheteur passé | Opportunité upsell | Nouveau produit, offre exclusive fidélité | Accès anticipé, -15% |
| Vue vidéo 75%+ | Intérêt contenu mais pas passé à l'acte | Continuer l'histoire, CTA fort | Offre limitée dans le temps |

> ⚠️ **Créatives abandons de panier** : toujours montrer le produit exact abandonné (Dynamic Product Ads si catalogue disponible). Utiliser une tension narrative courte (urgence stock, date limite). Tester une variante avec remise explicite vs sans remise — la remise n'est pas toujours nécessaire si la créative est forte.

### Retargeting basé sur la valeur du panier

Segmenter par valeur de commande quand le volume le permet :

| Valeur panier | Stratégie | Budget alloué |
|---|---|---|
| Panier > AOV × 1,5 | Priorité absolue, budget augmenté, offre personnalisée | 40–50% du budget retargeting |
| Panier proche de l'AOV | Retargeting standard | 35–40% |
| Panier faible valeur | Retargeting low-budget, creative moins coûteuse | 15–20% |

> 💡 **Value-based retargeting** : dans TikTok Ads Manager, lors de la création d'une audience personnalisée basée sur AddToCart ou ViewContent, vous pouvez filtrer par valeur d'événement. Utilisez ce filtre pour créer une audience "gros panier" séparée et lui allouer un budget prioritaire avec des créatives premium.

---

## Étape 4 — Structurer les campagnes retargeting

### Structure recommandée

```
Campagne : Retargeting – [Nom Marque]
  └── Ad Group 1 : Abandon Panier – 7j
        └── Créative A : Produit + urgence
        └── Créative B : Produit + remise
  └── Ad Group 2 : ViewContent – 7j (excl. ATC)
        └── Créative A : Preuve sociale
        └── Créative B : UGC bénéfices
  └── Ad Group 3 : Vue vidéo 75%+ – 14j
        └── Créative A : Suite narrative + CTA
```

### Exclusions obligatoires

> ⚠️ **Erreur critique fréquente** : ne pas exclure les audiences retargeting des campagnes de prospection provoque un chevauchement d'audiences. Résultat : le budget prospection reciblage des utilisateurs déjà chauds, les CPM des deux campagnes s'envolent, et le reporting devient illisible.

Règles d'exclusion à appliquer systématiquement :

- Dans chaque **campagne prospection** : exclure toutes les audiences retargeting actives
- Dans chaque **ad group retargeting** : exclure les acheteurs récents (sauf objectif upsell)
- Dans l'ad group "abandon panier" : exclure les utilisateurs ayant converti dans les derniers 7 jours

---

## Étape 5 — Paramétrer la fréquence (frequency capping)

La sur-exposition est le tueur silencieux des campagnes retargeting. Elle génère de la fatigue, de l'irritation, et fait chuter le CTR sans améliorer les conversions.

### Recommandations de fréquence

| Fenêtre d'audience | Fréquence max recommandée | Fréquence d'alerte |
|---|---|---|
| 7 jours (très chaud) | **3 impressions / utilisateur / 7 jours** | > 5 → surveiller CTR et taux de skip |
| 14 jours | **4 impressions / utilisateur / 7 jours** | > 6 → risque de fatigue |
| 30 jours | **5 impressions / utilisateur / 7 jours** | > 7 → réduire budget |

> 💡 **Point de départ** : 3 impressions / utilisateur / 7 jours est le seuil de départ optimal pour le retargeting chaud. En dessous, la répétition n'est pas suffisante pour ancrer le message. Au-dessus, le coût par impression augmente sans gain proportionnel en conversion.

Comment paramétrer dans TikTok Ads Manager :
1. Au niveau **Ad Group → Delivery → Frequency & Scheduling**
2. Activer **Frequency Cap**
3. Saisir la valeur recommandée selon la fenêtre d'audience

> ⚠️ Le frequency capping dans TikTok Ads Manager s'applique au niveau de l'ad group, pas de la campagne. Si vous avez plusieurs ad groups retargeting dans une même campagne, chaque ad group a son propre cap. Un utilisateur présent dans deux ad groups peut donc recevoir le double d'impressions. Structurer les ad groups avec des audiences mutuellement exclusives.

---

## Étape 6 — Lancer et monitorer

### Métriques de suivi retargeting

| Métrique | Benchmark retargeting sain | Signal d'alerte |
|---|---|---|
| CTR (Click-Through Rate) | 1,5 – 3% | < 1% → fatigue créative ou audience trop froide |
| Fréquence | 3 – 5 sur 7 jours | > 6 sur 7 jours → saturation |
| CPM | 20 – 50€ selon secteur | > 80€ → audience trop petite ou forte concurrence |
| ROAS retargeting | 3× – 8× selon secteur | < 2× → revoir offre ou créative |
| Taux de conversion post-clic | 2 – 6% selon secteur | < 1% → problème landing page |

### Signaux de fatigue d'audience

- CTR en baisse progressive sur 3 à 5 jours consécutifs
- Fréquence montante avec CPM croissant
- Coût par conversion en hausse sans changement d'enchère

Actions correctives :
1. Renouveler les créatives (nouvelle variante de montage, nouveau hook)
2. Élargir la fenêtre d'audience temporairement
3. Réduire le budget sur cet ad group et surveiller

---

## Synthèse : checklist de lancement retargeting

- [ ] Pixel installé et validé, événements remontant correctement
- [ ] Minimum 1 000 utilisateurs matchés dans l'audience
- [ ] Minimum 500 – 1 000 visiteurs uniques/mois sur le site
- [ ] Audiences créées avec les bonnes fenêtres temporelles (priorité 7 jours)
- [ ] Segments distincts par niveau d'intention (visiteur / ATC / checkout)
- [ ] Audiences retargeting exclues des campagnes prospection
- [ ] Acheteurs récents exclus des ad groups retargeting (sauf upsell)
- [ ] Frequency cap configuré : 3 impressions / utilisateur / 7 jours comme point de départ
- [ ] Créatives adaptées à chaque segment (produit exact pour abandon panier)
- [ ] Segmentation par valeur panier si le volume le permet

---

## Références croisées

- ↪️ [Procédure - Installer le pixel TikTok](<../suivi/Suivi - Installer le pixel.md>)
- ↪️ [Procédure - Configurer les audiences TikTok Ads](<Audiences - Configurer les audiences.md>)
- ↪️ [Procédure - Configurer les événements de conversion TikTok](<../suivi/Suivi - Configurer les événements de conversion.md>)
- ↪️ [Procédure - Lancer une campagne conversions TikTok Ads](<../lancement/Lancement - Lancer une campagne conversions.md>)
- ↪️ [Procédure - Optimiser ses campagnes TikTok Ads](<../optimisation/Optimisation - Optimiser ses campagnes.md>)
- ↪️ [Procédure - Stratégie créative TikTok Ads](<../creatives/Creatives - Stratégie créative.md>)
