# Pixel de conversion

> **Plateforme :** Google Ads
> **Catégorie :** Suivi
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Documente le pixel de suivi de conversion Google Ads (GACT), les trois méthodes d'implémentation et les essentiels de la configuration Google Tag Manager pour déclencher des tags de conversion sur les événements du site web.

---

## Ce que couvre cette fiche / Ce qu'elle ne couvre PAS

**Cette fiche :**

- Explique les trois méthodes d'implémentation du GACT sur les sites web
- Documente les essentiels de la configuration GTM (Google Tag, Conversion Linker, tag de suivi de conversion)
- Liste les exigences du data layer pour les événements d'achat et de lead (prospect)
- Couvre les méthodes de débogage et de validation

**Cette fiche ne couvre PAS :**

- Les procédures d'implémentation pas à pas (Voir : [SOP - Configurer le suivi des conversions Google Ads](<Suivi - Configurer le suivi des conversions Google Ads.md>))
- Quelles techniques de tracking (suivi des conversions/évènements) prioriser (Voir : [Measurement Maturity Mental Model](<../../01-strategie/reporting/Reporting - Maturité de la mesure.md>))
- Les options de configuration des actions de conversion (Voir : [Conversion Action Reference](<Suivi - Actions de conversion.md>))
- La configuration des Enhanced Conversions (Voir : [Enhanced Conversions Reference](<Suivi - Enhanced Conversions.md>))

---

## Aide-mémoire : méthodes d'implémentation

| **Méthode** | **Ce qu'elle fait** | **La configuration nécessite** | **Idéal pour** |
|------------|-----------------|-------------------|-------------|
| **gtag en dur** | Place les scripts Google Tag directement dans le code source du site web | Accès développeur au code source | Sites simples avec des besoins de tracking minimaux |
| **Google Tag Manager (GTM)** | Charge le conteneur GTM sur toutes les pages, puis gère tous les tags dans l'interface GTM | Compte GTM, snippet du conteneur sur toutes les pages, développeur pour le data layer | 95 % des implémentations : flexible, organisé, indépendant du développeur |
| **Plugins CMS** | Utilise des plugins natifs de la plateforme pour gérer le tracking automatiquement | Installation du plugin, configuration dans le CMS | Shopify, WooCommerce, Magento avec des plugins bien supportés |

---

## Méthode 1 : gtag en dur

### Fonctionnement

Un tag global de site (gtag.js) se charge sur chaque page. Les snippets d'événements de conversion se déclenchent sur les pages ou événements spécifiques où les conversions se produisent.

### Avantages et inconvénients

| **Avantages** | **Inconvénients** |
|----------|----------|
| Simple pour les configurations basiques | Nécessite un développeur pour chaque modification |
| Pas de dépendance à des outils tiers | Difficile à déboguer |
| Direct, latence minimale | Pas flexible pour le tracking multi-plateforme |
| | Mise à jour manuelle requise quand Google sort de nouvelles fonctionnalités |

### Quand utiliser

Utilisez le gtag en dur uniquement quand vous avez une seule action de conversion sur un site simple et pas besoin de tracking multi-plateforme (Meta, LinkedIn, GA4). Pour tout ce qui est plus complexe, utilisez GTM.

---

## Méthode 2 : Google Tag Manager (GTM)

### Fonctionnement

Le snippet du conteneur GTM se charge sur chaque page (head et body). Tous les tags, déclencheurs et variables sont gérés dans l'interface web GTM. Après l'installation initiale du conteneur, aucun développeur n'est nécessaire pour les modifications de tags.

### Avantages et inconvénients

| **Avantages** | **Inconvénients** |
|----------|----------|
| Flexibilité totale : ajouter, modifier, supprimer des tags sans développeur | Nécessite des connaissances basiques en GTM |
| Organisé : tous les tags de plateforme dans un seul conteneur | Possible latence mineure du chargement de script tiers |
| Débogage intégré (mode Aperçu + Tag Assistant) | Compte GTM requis |
| Facile d'adopter les nouvelles fonctionnalités (Enhanced Conversions, Cart Data) | |
| Contrôle de version et rollback intégrés | |

### Quand utiliser

GTM est la méthode recommandée pour toutes les implémentations. Elle donne un contrôle total sur la gestion des tags sans dépendance au développeur.

### Essentiels de la configuration GTM

Chaque implémentation GACT via GTM nécessite ces trois composants :

| **Composant** | **Objectif** | **Déclencheur** |
|---------------|-----------|-------------|
| **Google Tag** | Établit la connexion entre votre site web et votre compte Google Ads. Charge le script de tracking Google de base. | Toutes les pages (se déclenche à chaque chargement de page) |
| **Conversion Linker** | Pose des cookies first-party qui stockent les informations de clic publicitaire (GCLID, GBRAID, WBRAID) pour l'attribution cross-page. | Toutes les pages (se déclenche à chaque chargement de page) |
| **Tag de suivi de conversion Google Ads** | Déclenche l'événement de conversion réel avec l'ID de conversion et le label de conversion. | Déclencheur spécifique à l'événement (événement d'achat, soumission de formulaire, clic sur bouton, vue de page) |

> 💡 **Liez d'abord votre propriété GA4 à Google Ads :** cela partage le Google Tag existant entre GA4 et Google Ads, évitant les Google Tags en double sur votre site. Liez via GA4 Admin > Liaison Google Ads.

### Concepts clés de GTM

| **Concept** | **Définition** |
|-------------|---------------|
| **Tags** | Snippets de code qui s'exécutent quand ils sont déclenchés (ex. : tag de conversion Google Ads, tag d'événement GA4) |
| **Déclencheurs** | Conditions qui causent le déclenchement des tags (ex. : vue de page, événement personnalisé, soumission de formulaire, clic) |
| **Variables** | Valeurs dynamiques utilisées par les tags et déclencheurs (ex. : variables du data layer, paramètres URL, cookies) |
| **Data Layer** | Un objet JavaScript sur la page qui transmet des données structurées à GTM (noms d'événements, valeurs de transaction, données utilisateur) |

### ID de conversion et label de conversion

| **Type d'ID** | **Portée** | **Où le trouver** |
|-------------|----------|------------------|
| **ID de conversion** | Niveau compte : identique pour toutes les actions de conversion du compte | Objectifs > Conversions > Récapitulatif > [Action] > Configuration du tag > Google Tag Manager |
| **Label de conversion** | Niveau action : unique par action de conversion | Même emplacement, unique par action |

Stockez l'ID de conversion comme variable Constante GTM pour pouvoir le réutiliser dans tous les tags de conversion sans le ressaisir.

---

## Méthode 3 : Plugins CMS

### Fonctionnement

Les plugins spécifiques à la plateforme gèrent l'implémentation des tags, la création du data layer et les fonctionnalités avancées automatiquement. Le plugin est installé dans le CMS et configuré via son interface.

### Avantages et inconvénients

| **Avantages** | **Inconvénients** |
|----------|----------|
| Facile à installer et configurer | Dépend du développeur tiers pour les mises à jour et la sécurité |
| Inclut souvent les fonctionnalités avancées prêtes à l'emploi (Enhanced Conversions, Cart Data) | Personnalisation limitée par rapport à GTM |
| Interfaces conviviales | Peut entrer en conflit avec d'autres plugins ou thèmes |
| | Toutes les plateformes n'ont pas des plugins de haute qualité |

### Plugins recommandés par plateforme

| **Plateforme** | **Plugin** | **Notes** |
|-------------|-----------|----------|
| **WooCommerce** | SweetCode | Supporte Google Ads, GA4, Meta, TikTok, Pinterest, LinkedIn dans un seul plugin |
| **Shopify** | Google Channel natif ou Shopify Pixels | L'intégration native gère la plupart du tracking |
| **Magento 2** | Variable | Moins de fonctionnalités avancées que les plugins WooCommerce |

> ⚠️ **Utilisez un seul plugin multi-plateforme, pas plusieurs plugins mono-plateforme :** les plugins de tracking multiples entrent en conflit, cassent les data layers et causent des déclenchements en double. Choisissez un plugin qui couvre toutes les plateformes.

### Quand utiliser

Utilisez les plugins CMS quand vous exploitez une plateforme e-commerce populaire (Shopify, WooCommerce) avec un plugin bien supporté. Combinez avec GTM si vous avez besoin de personnalisation supplémentaire au-delà de ce que le plugin fournit.

---

## Exigences du data layer

### Événement d'achat (e-commerce)

Le data layer de l'événement d'achat doit inclure ces variables pour un suivi de conversion correct :

| **Variable** | **Requis** | **Objectif** |
|-------------|-------------|-----------|
| `event: 'purchase'` | Oui | Identifie le type d'événement |
| `transaction_id` | Oui | ID de commande unique : empêche les conversions en double |
| `value` | Oui | Revenu de la commande (dynamique par transaction) |
| `currency` | Oui | Code devise à trois lettres (ex. : USD, EUR) |
| `items` | Recommandé | Tableau des produits achetés (active les Conversions with Cart Data) |

### Événement de lead (lead gen)

| **Variable** | **Requis** | **Objectif** |
|-------------|-------------|-----------|
| `event: 'form_submit'` | Oui | Identifie l'événement de soumission de formulaire |
| `value` | Optionnel | Valeur estimée du lead (si connue) |
| Données fournies par l'utilisateur (email, téléphone) | Recommandé | Active les Enhanced Conversions |

---

## Méthodes de débogage et validation

| **Outil** | **Ce qu'il fait** | **Quand utiliser** |
|---------|-----------------|----------------|
| **Mode Aperçu GTM** | Montre quels tags se sont déclenchés, lesquels non, ce qui les a déclenchés et le contenu du data layer en temps réel | Pendant la configuration et après tout changement de tag |
| **Google Tag Assistant** | Extension Chrome qui communique avec le mode Aperçu GTM pour le débogage cross-tab | En parallèle du mode Aperçu GTM |
| **Diagnostics d'action de conversion** | Montre le statut du tag (actif, inactif, pas de conversions récentes) et les données de conversion récentes dans Google Ads | Après la publication des tags : vérifier que les conversions sont enregistrées |
| **Rapports en temps réel (GA4)** | Confirme que les événements arrivent dans GA4 en temps réel | Quand vous utilisez GA4 en parallèle du GACT |
| **Chrome DevTools (onglet Réseau)** | Montre les requêtes HTTP vers les serveurs Google quand les tags se déclenchent | Résolution de problèmes de déclenchement |
| **Inspecteur de Data Layer** | Voir les pushes du data layer et les valeurs des variables en temps réel | Vérification de la structure et des valeurs du data layer |

### Checklist de validation

- [ ] Le Google Tag se déclenche sur toutes les pages
- [ ] Le Conversion Linker se déclenche sur toutes les pages
- [ ] Le tag de suivi de conversion se déclenche uniquement sur le bon événement déclencheur
- [ ] L'ID et le label de conversion correspondent aux valeurs dans Google Ads
- [ ] Le transaction ID est unique par conversion (pas de doublons)
- [ ] La valeur dynamique passe correctement (pas en dur, pas zéro)
- [ ] Le code devise est présent et correct
- [ ] Le statut du tag affiche "Actif" dans les diagnostics d'action de conversion Google Ads (peut prendre jusqu'à 24 heures)

---

## Erreurs courantes

| **Erreur** | **Problème** | **Solution** |
|-------------|-------------|---------|
| Tag Conversion Linker manquant | Les IDs de clic ne sont pas stockés dans les cookies first-party : les conversions ne peuvent pas être attribuées | Ajouter un tag Conversion Linker déclenchant sur Toutes les pages |
| Google Tags en double | Plusieurs Google Tags issus d'implémentations GA4 et Google Ads séparées causent des conflits de données | Lier GA4 à Google Ads pour partager un seul Google Tag |
| Valeur de conversion en dur | Chaque transaction reporte la même valeur au lieu du revenu réel | Utiliser une variable du data layer pour la valeur dynamique |
| transaction_id manquant | Conversions en double comptées quand les utilisateurs rafraîchissent la page de remerciement | Transmettre un transaction_id unique avec chaque événement d'achat |
| Tag qui se déclenche sur le mauvais déclencheur | Le tag de conversion se déclenche au chargement de page au lieu de l'événement de conversion | Utiliser un déclencheur spécifique à l'événement (purchase, form_submit), pas Toutes les pages |
| Conteneur GTM pas sur toutes les pages | Les tags ne se déclenchent que sur les pages où le conteneur est installé | Vérifier que le snippet GTM est dans le head et le body de chaque page |
| Pas de débogage avant publication | Des tags cassés sont mis en production, causant une perte de données ou un sur-comptage | Toujours utiliser le mode Aperçu GTM avant de publier |
| Conflit plugin avec GTM | Le plugin et GTM déclenchent le même tag de conversion | Choisir une seule méthode : plugin ou GTM, pas les deux pour la même plateforme |

---

## Documents liés

| **Document** | **Relation** |
|--------------|------------------|
| [Measurement Maturity Mental Model](<../../01-strategie/reporting/Reporting - Maturité de la mesure.md>) | Cadre pour prioriser quelles techniques de tracking implémenter |
| [Conversion Action Reference](<Suivi - Actions de conversion.md>) | Options de configuration des actions de conversion (primaire/secondaire, attribution, fenêtres) |
| [Server-Side Tagging Reference](<Suivi - Server-Side Tagging.md>) | Implémentation avancée pour prévenir la perte de données des bloqueurs de publicités |
| [Enhanced Conversions Reference](<Suivi - Enhanced Conversions.md>) | Compléter le GACT avec des données first-party hashées |
| [Conversion Volume Thresholds Reference](<Suivi - Seuils de volume de conversions.md>) | Exigences de volume minimum qui dépendent d'une implémentation précise du pixel |
