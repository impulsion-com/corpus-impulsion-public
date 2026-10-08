# Données nouveaux clients

> **Plateforme :** Google Ads
> **Catégorie :** Suivi
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Documente l'implémentation des données nouveau vs. client récurrent, l'objectif d'acquisition de nouveaux clients (NCA) pour les campagnes Performance Max et Shopping, et les méthodes d'analyse segmentée pour le reporting par type de client.

---

## Ce que couvre cette fiche / Ce qu'elle ne couvre PAS

**Cette fiche :**

- Définit le paramètre new_customer et comment l'implémenter
- Documente les méthodes de configuration GTM et gtag pour le suivi du type de client
- Explique l'objectif NCA et ses modes d'enchères dans PMax
- Fournit des conseils de reporting et d'analyse pour les segments nouveau vs. récurrent

**Cette fiche ne couvre PAS :**

- Fournir la configuration étape par étape des campagnes PMax (Voir : future SOP : Configurer une campagne Performance Max)
- Expliquer la construction de listes Customer Match (Voir : [SOP - Construire des listes Customer Match](<../audiences/Audiences - Construire des listes Customer Match.md>))
- Couvrir la configuration complète des actions de conversion (Voir : [Conversion Action Reference](<Suivi - Actions de conversion.md>))

---

## Aide-mémoire : données nouveaux clients

| **Élément** | **Détails** |
|-------------|------------|
| **Nom du paramètre** | `new_customer` |
| **Valeurs** | `true` (nouveau client) ou `false` (client récurrent) |
| **Envoyé avec** | L'événement d'achat/conversion |
| **Déterminé par** | Recherche en base de données backend au moment de la conversion |
| **Où le voir** | Rapport de campagne > Segments > Conversions > Nouveaux vs. clients récurrents |
| **Utilisé par** | Objectif NCA dans les campagnes PMax et Shopping |
| **Développeur nécessaire** | Oui, pour la logique de recherche nouveau/récurrent en backend |

---

## Pourquoi les données nouveaux clients comptent

### Le problème caché

Une part significative des conversions de campagnes non-marque peut provenir de clients récurrents. Sans données de nouveaux clients, vous ne pouvez pas distinguer entre :

- Une campagne qui acquiert véritablement de nouveaux clients à 50 € de CPA
- Une campagne qui re-convertit des clients existants qui auraient acheté de toute façon

**Exemple concret :** Un compte ecommerce découvre que 35% des conversions Search non-marque proviennent de clients récurrents. Le vrai CPA d'acquisition de nouveaux clients est de 77 €, pas les 50 € rapportés. Cela change l'évaluation des campagnes et les décisions d'allocation de budget.

### Trois bénéfices clés

| **Bénéfice** | **Ce que ça permet** | **Impact** |
|-------------|-------------------|-----------|
| Analyse segmentée | Voir la répartition nouveau vs. récurrent par campagne, ad group, keyword | Identifier quelles campagnes acquièrent réellement de nouveaux clients |
| Stratégie d'enchères avec l'objectif NCA | Enchérir plus agressivement (ou exclusivement) pour les nouveaux clients dans PMax | Volume de nouveaux clients plus élevé, coût d'acquisition contrôlé |
| Réévaluation de la stratégie | Repenser l'allocation de budget basée sur les vrais taux d'acquisition | Arrêter de surenchérir sur les campagnes qui re-convertissent principalement des clients existants |

---

## Implémentation

### Fonctionnement

1. L'utilisateur effectue un achat ou une conversion sur votre site
2. Votre backend vérifie si cet utilisateur est un nouveau ou un client récurrent
3. Le paramètre `new_customer` (`true` ou `false`) est poussé dans le data layer
4. Le tag de conversion récupère le paramètre et l'envoie à Google Ads
5. Google Ads segmente le reporting de conversion par type de client

### Exigence de développement

La détermination nouveau/récurrent nécessite une recherche en base de données côté serveur. Ce n'est pas quelque chose qui peut être résolu uniquement avec du JavaScript côté client.

| **Méthode** | **Fonctionnement** | **Précision** |
|-----------|-----------------|-------------|
| Correspondance email | Vérifier si l'email d'achat existe dans la base clients | Élevée (la plus fiable) |
| Statut de connexion au compte | Vérifier si l'utilisateur était connecté avec un compte existant | Moyenne (rate les achats en mode invité) |
| Recherche dans l'historique de commandes | Vérifier si l'email/téléphone a des commandes antérieures | Élevée |
| Basé sur les cookies (non recommandé) | Vérifier la présence d'un cookie de visiteur récurrent | Basse (les cookies s'effacent, le cross-device échoue) |

> ⚠️ **La recherche côté serveur est requise pour la précision :** Les méthodes basées sur les cookies échouent quand les utilisateurs effacent leurs cookies, changent d'appareil ou utilisent la navigation privée. Utilisez toujours une recherche en base de données contre l'email ou l'ID de compte.

### Configuration GTM

**Étape 1️⃣ : Pousser dans le data layer**

Votre développeur ajoute la valeur `new_customer` au push data layer d'achat :

```javascript
dataLayer.push({
  'event': 'purchase',
  'transaction_id': 'ORD-12345',
  'value': 149.99,
  'currency': 'USD',
  'new_customer': true
});
```

**Étape 2️⃣ : Créer la variable de data layer**

| **Paramètre** | **Valeur** |
|-------------|----------|
| Type de variable | Variable de couche de données |
| Nom de la variable | `new_customer` |
| Version de couche de données | Version 2 |

**Étape 3️⃣ : Configurer le tag de conversion**

1. Ouvrez votre tag Google Ads Conversion Tracking
2. Faites défiler jusqu'à la section "Données de nouveau client"
3. Cochez "Envoyer les données de nouveau client"
4. Source de données : Couche de données
5. Mappez la variable `new_customer`

### Configuration gtag

Ajoutez le paramètre `new_customer` à l'événement d'achat :

```javascript
gtag('event', 'purchase', {
  'send_to': 'AW-XXXXXXXXX/XXXXXXXXXXXXX',
  'transaction_id': 'ORD-12345',
  'value': 149.99,
  'currency': 'USD',
  'new_customer': true
});
```

---

## Voir les données de nouveaux clients

### Segmentation des rapports

| **Étape** | **Action** |
|----------|-----------|
| 1 | Ouvrez n'importe quel rapport de campagne, ad group ou keyword dans Google Ads |
| 2 | Cliquez sur l'icône "Segment" |
| 3 | Sélectionnez Conversions > Nouveaux vs. clients récurrents |
| 4 | Le rapport divise chaque ligne en segments "Nouveau" et "Récurrent" |

### Métriques clés à comparer

| **Métrique** | **Nouveaux clients** | **Clients récurrents** | **Ce qu'il faut observer** |
|-----------|-------------------|------------------------|---------------------|
| Conversions | Volume de primo-acheteurs | Volume d'acheteurs répétés | % récurrent élevé en non-marque = problème |
| CPA | Vrai coût d'acquisition | Coût de re-conversion | Le CPA nouveau est la vraie métrique de croissance |
| Valeur de conv. | Valeur de première commande | Valeur de commande répétée | Le récurrent a souvent un AOV plus élevé |
| Taux de conv. | Taux de conversion primo-acheteur | Taux de conversion acheteur répété | Le récurrent convertit à des taux plus élevés (attendu) |

---

## Objectif NCA dans Performance Max

### Ce que ça fait

L'objectif d'acquisition de nouveaux clients (NCA) dit à PMax de prioriser l'acquisition de nouveaux clients plutôt que la re-conversion des clients existants. Il utilise le paramètre `new_customer` et les listes Customer Match pour identifier qui est nouveau.

### Deux modes NCA

| **Mode** | **Comportement** | **Idéal pour** |
|---------|-------------|-------------|
| **Mode valeur (enchérir plus haut)** | Ajoute une valeur bonus aux conversions de nouveaux clients, faisant enchérir Google plus agressivement pour eux | Comptes qui veulent les conversions de nouveaux ET de clients récurrents |
| **Nouveaux clients uniquement** | Ne compte et n'optimise que pour les conversions de nouveaux clients | Comptes focalisés purement sur l'acquisition client |

### Prérequis de configuration NCA

| **Prérequis** | **Détails** |
|-----------------|------------|
| Paramètre `new_customer` | Doit être implémenté sur le tag de conversion (voir configuration ci-dessus) |
| Liste Customer Match | Uploadez la liste d'emails de clients existants pour que Google puisse identifier les clients récurrents |
| Campagne PMax ou Shopping | L'objectif NCA n'est disponible que dans ces types de campagne |
| Suivi des conversions | L'action de conversion d'achat doit être active et primary |

### Configuration du mode valeur

En mode valeur, vous définissez une valeur supplémentaire pour les nouveaux clients :

| **Paramètre** | **Quoi saisir** | **Exemple** |
|-------------|------------------|-------------|
| Valeur nouveau client | Valeur vie client estimée moins la valeur de première commande | Si CLV = 500 € et AOV = 100 €, saisissez 400 € |

Google ajoute cette valeur à chaque conversion de nouveau client, faisant enchérir Stratégies d'enchères intelligentes plus haut pour les utilisateurs qu'il identifie comme probablement nouveaux.

> 💡 **Commencez conservateur avec la valeur nouveau client :** Démarrez à 50% de votre CLV additionnelle estimée et augmentez progressivement. Définir la valeur trop haute fait surenchérir Stratégies d'enchères intelligentes pour les nouveaux clients au détriment de la rentabilité totale.

---

## Erreurs courantes

| **Erreur** | **Problème** | **Solution** |
|-------------|-------------|---------|
| Utiliser la détection nouveau/récurrent basée sur les cookies | Données inexactes : l'effacement des cookies et l'usage cross-device causent des erreurs de classification | Implémentez une recherche en base de données côté serveur |
| Ne pas uploader la liste Customer Match avec NCA | Google ne peut pas identifier les clients récurrents avec précision, NCA moins efficace | Uploadez et rafraîchissez régulièrement la liste d'emails clients |
| Définir NCA sur "nouveaux clients uniquement" trop agressivement | Baisse significative du volume total de conversions | Commencez avec le mode valeur, testez pendant 4-6 semaines, puis évaluez |
| Valeur nouveau client définie trop haut | Surenchère pour les nouveaux clients, le ROAS total baisse | Commencez à 50% de la CLV additionnelle estimée |
| Ne pas vérifier la répartition nouveau/récurrent dans les campagnes non-marque | Surenchère pour des clients récurrents que vous obtiendriez organiquement | Revoyez les données de segment mensuellement, ajustez la stratégie en conséquence |
| Paramètre `new_customer` manquant sur certains chemins de conversion | Données incomplètes, segmentation biaisée | Auditez tous les chemins de conversion (web, app, téléphone) pour la couverture du paramètre |

---

## Documents liés

| **Document** | **Relation** |
|--------------|------------------|
| [Measurement Maturity Mental Model](<../../01-strategie/reporting/Reporting - Maturité de la mesure.md>) | Les données de nouveaux clients sont une technique de mesure avancée |
| [Conversion Action Reference](<Suivi - Actions de conversion.md>) | Paramètres des actions de conversion qui interagissent avec les données de nouveaux clients |
| [SOP - Construire des listes Customer Match](<../audiences/Audiences - Construire des listes Customer Match.md>) | Listes Customer Match requises pour la précision de l'objectif NCA |
| [Unit Economics Reference](<../../01-strategie/fondamentaux/Fondamentaux - Unit economics.md>) | Les calculs de CLV informent le paramétrage de la valeur nouveau client |
| [Transaction ID Reference](<Suivi - Transaction ID.md>) | Les Transaction ID sont envoyés aux côtés du paramètre nouveau client |
