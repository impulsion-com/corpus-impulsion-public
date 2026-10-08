# Configurer les règles automatisées TikTok Ads

> **Plateforme :** TikTok
> **Catégorie :** Optimisation
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Configurer des règles automatisées dans TikTok Ads Manager pour protéger le budget, automatiser les ajustements de performance, et réduire le temps de gestion manuelle — sans remplacer l'analyse humaine hebdomadaire.

---

## Ce que cette SOP ne couvre PAS

Cette SOP ne couvre **pas :**

- L'analyse humaine et le diagnostic d'optimisation (que les règles ne remplacent pas) (Voir : [Procédure - Optimiser ses campagnes TikTok Ads](<Optimisation - Optimiser ses campagnes.md>))
- La gestion des commentaires (qui requiert un jugement humain) (Voir : [Procédure - Gestion des commentaires TikTok Ads](<Optimisation - Gérer les commentaires.md>))
- L'analyse créative en amont d'une décision automatisée (Voir : [Procédure - Analyse des créatives TikTok Ads](<../creatives/Creatives - Analyse des créatives.md>))
- Le lancement et la structure de campagne sur lesquels les règles s'appliquent (Voir : [Procédure - Structurer ses campagnes TikTok Ads](<../lancement/Lancement - Structurer ses campagnes.md>))

---

## Principes fondamentaux des règles automatisées

Avant de créer la moindre règle, comprendre ces contraintes techniques :

| Contrainte | Détail |
|---|---|
| **Fréquence d'exécution** | Maximum **une fois toutes les 30 minutes** — TikTok ne peut pas déclencher une règle plus souvent |
| **Niveau d'application** | Les règles s'appliquent à un niveau spécifique : Campagne, Groupe d'annonces, ou Annonce — pas les trois simultanément |
| **Budget increase cap** | Une règle d'augmentation de budget **ne s'exécute pas** si le nouveau budget dépasse le budget maximum de la campagne parente |
| **Phase d'apprentissage** | Les règles s'appliquent même en phase d'apprentissage — risque de couper une campagne prématurément |
| **Notifications** | Deux canaux disponibles : email et notification in-platform (TikTok Ads Manager) |

⚠️ **La fréquence minimale de 30 minutes signifie qu'une règle Stop Loss ne protège pas contre un dérapage soudain dans la demi-heure qui suit la dernière vérification.** Toujours coupler les règles automatisées avec un budget journalier strict au niveau du compte ou de la campagne.

---

## Relation entre règles manuelles et campagnes Smart+

Les campagnes **Smart+ (anciennement "Automatisées")** ont leur propre logique d'optimisation gérée par TikTok. Les règles automatisées manuelles ont une interaction limitée avec les Smart+ :

- Les règles de **pause** et de **notification** fonctionnent normalement sur les Smart+
- Les règles d'**ajustement de budget** peuvent interférer avec l'optimisation automatique de Smart+
- **Recommandation :** sur les campagnes Smart+, utiliser uniquement des règles de notification et de Stop Loss, pas de règles de scaling — laisser TikTok gérer l'optimisation du budget

💡 Pour le scaling budgétaire des campagnes Smart+, préférer l'ajustement manuel ponctuel plutôt que des règles automatiques d'augmentation.

---

## Seuil minimum avant déclenchement d'une règle Stop Loss

⚠️ **Règle critique :** Ne jamais déclencher une règle Stop Loss avant que la campagne ait dépensé suffisamment pour avoir des données représentatives.

**Seuil minimum recommandé selon le secteur :**

| Secteur | CPA cible typique | Seuil Stop Loss (0 conversion) |
|---|---|---|
| E-commerce (produit < €50) | €15-30 | €60-90 dépensés (= 3x CPA cible) |
| E-commerce (produit €50-200) | €30-70 | €120-210 dépensés |
| Lead Gen (B2C) | €5-20 | €30-60 dépensés |
| Lead Gen (B2B) | €30-100 | €150-300 dépensés |
| Application mobile | €5-15 | €30-45 dépensés |

**Formule universelle :** Seuil Stop Loss = **3x CPA cible** dépensés sans aucune conversion.

En dessous de ce seuil, les fluctuations normales de l'algorithme en apprentissage peuvent générer 0 conversion sans que cela signifie que la campagne est défaillante.

---

## Niveau d'application des règles (scope)

Choisir le bon niveau d'application est essentiel pour éviter des effets indésirables :

| Niveau | Usage recommandé | Risque si mal configuré |
|---|---|---|
| **Campagne** | Règles globales (budget total, pause d'urgence) | Coupe toutes les annonces d'un coup |
| **Groupe d'annonces** | Scaling et Stop Loss par audience | Peut désactiver une bonne audience |
| **Annonce** | Rotation créative, pause des créatives sous-performantes | Niveau le plus granulaire — recommandé pour les règles créatives |

💡 **Règle générale :** les règles Stop Loss et de scaling s'appliquent au niveau **Groupe d'annonces**. Les règles de rotation/pause créative s'appliquent au niveau **Annonce**.

---

## Catalogue de règles recommandées avec valeurs concrètes

### Règle 1 — Scale Up (Scaling automatique)

**Objectif :** Augmenter automatiquement le budget d'un groupe d'annonces performant.

```
Niveau : Groupe d'annonces
Condition : CPA ≤ [CPA cible × 0,8] ET Conversions ≥ 5 (sur les 3 derniers jours)
Action : Augmenter le budget journalier de 15%
Fréquence : 1 fois par jour (vérification toutes les 30 min, exécution max 1x/24h)
Notification : Email + in-platform
```

**Exemples par secteur :**
- E-commerce beauté (CPA cible €25) : déclencher si CPA ≤ €20 avec ≥ 5 conversions sur 3 jours
- Lead gen B2C (CPA cible €10) : déclencher si CPA ≤ €8 avec ≥ 5 leads sur 3 jours

---

### Règle 2 — Stop Loss (Protection budget)

**Objectif :** Mettre en pause un groupe d'annonces qui dépense sans convertir.

```
Niveau : Groupe d'annonces
Condition : Dépenses ≥ [3x CPA cible] ET Conversions = 0 (sur les 3 derniers jours)
Action : Mettre en pause le groupe d'annonces
Fréquence : Vérification toutes les 30 min
Notification : Email (urgent) + in-platform
```

**Exemples par secteur :**
- E-commerce (CPA cible €30) : pause si €90 dépensés sur 3 jours sans conversion
- Lead gen (CPA cible €8) : pause si €24 dépensés sans lead
- App installs (CPA cible €5) : pause si €15 dépensés sans install

⚠️ **Coupler obligatoirement avec une notification email** pour ne pas laisser une audience entière désactivée sans s'en rendre compte.

---

### Règle 3 — Fatigue créative (Pause annonce)

**Objectif :** Mettre en pause automatiquement une annonce dont le CTR chute.

```
Niveau : Annonce
Condition : CTR < 0,5% ET Impressions ≥ 5 000 (sur les 7 derniers jours)
Action : Mettre en pause l'annonce
Fréquence : 1 fois par jour
Notification : In-platform
```

💡 Ajouter la condition "Impressions ≥ 5 000" pour éviter de couper une annonce avec trop peu de données.

---

### Règle 4 — Scale Down (Protection CPA)

**Objectif :** Réduire le budget d'un groupe d'annonces dont le CPA dépasse le seuil acceptable.

```
Niveau : Groupe d'annonces
Condition : CPA ≥ [CPA cible × 1,5] ET Conversions ≥ 3 (sur les 3 derniers jours)
Action : Réduire le budget journalier de 25%
Fréquence : 1 fois par jour
Notification : In-platform
```

**Exemples :**
- E-commerce (CPA cible €30) : réduire si CPA ≥ €45 avec ≥ 3 conversions sur 3 jours
- Lead gen (CPA cible €10) : réduire si CPA ≥ €15 avec ≥ 3 leads

---

### Règle 5 — Week-end (Ajustement budgétaire)

⚠️ **Les patterns de performance du week-end varient fortement selon le secteur.** Analyser **au minimum 4 semaines** de données historiques avant de créer une règle week-end.

**Patterns typiques :**
- E-commerce lifestyle/mode : samedi-dimanche souvent +15-25% de CVR → augmenter le budget
- B2B / SaaS : week-end souvent -30-40% de CVR → réduire le budget
- Food, loisirs, entertainment : vendredi soir et samedi = pic → augmenter

```
Règle Week-end "E-commerce lifestyle" :
Niveau : Campagne
Condition : Jour = Samedi OU Dimanche
Action : Augmenter le budget journalier de 20%
Fréquence : 1 fois (déclenche vendredi soir à 22h)

Règle retour semaine :
Condition : Jour = Lundi
Action : Remettre le budget à la valeur de base
```

💡 **Budget increase cap :** Si la règle d'augmentation de 20% fait dépasser le budget maximum défini au niveau campagne, la règle **ne s'exécute pas**. Prévoir une marge dans le budget campagne ou utiliser des règles au niveau groupe d'annonces.

---

### Règle 6 — Dayparting (Ajustement horaire)

TikTok Ads Manager ne dispose pas nativement d'un dayparting automatique aussi granulaire que Google Ads. Contournement avec des règles :

```
Règle "Plage creuse nuit" :
Niveau : Groupe d'annonces
Condition : Heure = entre 01h et 06h ET CVR < 0,3% (sur 14 jours historiques)
Action : Mettre en pause
Fréquence : Vérification toutes les 30 min

Règle "Réactivation matin" :
Condition : Heure = 06h00
Action : Activer (si précédemment mis en pause par règle)
```

⚠️ **Le dayparting automatique via règles a une latence de 30 minutes.** Ne pas l'utiliser pour des fenêtres de moins d'1 heure — l'effet sera négligeable.

---

### Règle 7 — Alerte dépassement budget

**Objectif :** Être notifié quand les dépenses journalières dépassent un seuil.

```
Niveau : Campagne
Condition : Dépenses journalières ≥ [budget journalier × 0,85]
Action : Notification uniquement (pas d'action sur le budget)
Fréquence : Vérification toutes les 30 min
Notification : Email + in-platform
```

💡 Cette règle n'agit pas sur le budget — elle alerte simplement pour permettre une révision manuelle. Préférer toujours une notification d'alerte à une action automatique sur le budget pour les règles de dépassement.

---

## Canaux de notification

| Canal | Usage recommandé | Délai |
|---|---|---|
| **Email** | Règles critiques (Stop Loss, dépassement budget) | ~5-15 min après déclenchement |
| **In-platform** | Toutes les règles — log dans Automated Rules History | Immédiat |

Pour configurer les notifications email :
> Ads Manager → Règles Automatisées → Paramètres de notification → Ajouter une adresse email

💡 Configurer les alertes critiques sur une adresse email surveillée en temps réel (ou via une intégration Slack si disponible).

---

## Configuration étape par étape

1. Ads Manager → menu principal → **Outils** → **Règles automatisées**
2. Cliquer sur **Créer une règle**
3. Sélectionner le **niveau d'application** : Campagne / Groupe d'annonces / Annonce
4. Sélectionner les **entités concernées** (toutes ou sélection manuelle)
5. Définir les **conditions** (métrique + opérateur + valeur + fenêtre temporelle)
6. Définir l'**action** (pause, augmenter budget, réduire budget, notification)
7. Définir la **fréquence de vérification**
8. Activer les **notifications** (email et/ou in-platform)
9. Nommer la règle de façon descriptive (ex : "Stop Loss - CPA >3x - Groupe Lookalike FR")
10. Activer la règle

---

## Bonnes pratiques

- **Commencer par 2-3 règles simples** (Stop Loss + Scale Up + Alerte budget) avant d'ajouter des règles complexes
- **Nommer les règles précisément** : inclure le niveau, la condition et la cible dans le nom
- **Vérifier l'historique des règles** chaque semaine (Règles Automatisées → Historique d'exécution) pour s'assurer qu'elles se déclenchent comme prévu
- **Ne pas créer de règles contradictoires** : une règle Scale Up et une règle Scale Down sur le même groupe d'annonces avec des seuils qui se chevauchent créent des conflits
- **Les règles ne remplacent pas l'analyse manuelle hebdomadaire** — elles gèrent les dérapages entre deux sessions d'optimisation

---

## Références croisées

- [Procédure - Optimiser ses campagnes TikTok Ads](<Optimisation - Optimiser ses campagnes.md>)
- [Procédure - Structurer ses campagnes TikTok Ads](<../lancement/Lancement - Structurer ses campagnes.md>)
- [Procédure - Lancer une campagne conversions TikTok Ads](<../lancement/Lancement - Lancer une campagne conversions.md>)
