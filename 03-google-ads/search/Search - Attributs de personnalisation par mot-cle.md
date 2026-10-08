# Attributs de personnalisation par mot-clé

> **Plateforme :** Google Ads
> **Catégorie :** Search
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Liste les attributs de personnalisation réutilisables au niveau keyword pour l'optimisation de la pertinence des RSA.

---

## Ce que c'est / Ce que ce n'est PAS

**Ce document :**

- Liste les types d'attributs au niveau keyword et leurs objectifs
- Fournit des exemples de valeurs par vertical
- Explique quand chaque attribut est utile

**Ce document NE fait PAS :**

- Fournir des instructions de configuration étape par étape (Voir : [SOP - Configurer les personnalisateurs au niveau mot-cle](<Search - Configurer les personnalisateurs au niveau keyword.md>))
- Valider la qualité des customizers (Voir : [Ad Customizer Quality Checklist](<Search - [Review] Qualité des personnalisateurs d'annonces.md>))

---

## Attributs keywords principaux

| **Attribut** | **Type de données** | **Objectif** | **Quand utiliser** |
|-------------|--------------------|--------------|--------------------|
| **KeywordSingular** | Text | Forme singulière du keyword principal | Quand vous avez besoin de la variante singulière du keyword |
| **KeywordPlural** | Text | Forme plurielle du keyword principal | Quand vous avez besoin de la variante plurielle du keyword |
| **FullKeywordSingular** | Text | Expression keyword complète (singulier) | Quand vous avez besoin du keyword complet |
| **FullKeywordPlural** | Text | Expression keyword complète (pluriel) | Quand vous avez besoin du keyword complet |

> 💡 **Ces attributs sont entièrement personnalisables :** Vous pouvez les renommer selon votre compte. Ce qui compte, c'est une utilisation cohérente dans vos keywords et RSAs.

---

## Exemples de mappings par vertical

### 1️⃣ Ecommerce (tables à manger)

**Ad Group : Dining Tables**

Cet ad group consolide les variations de matériau (chêne, marbre), les variations de style (ronde, extensible) et les variations de synonymes (dining table, dining-room table).

| **Keyword** | **KeywordSingular** | **KeywordPlural** | **FullKeywordSingular** | **FullKeywordPlural** | Material | Modifier |
|------------|--------------------|--------------------|------------------------|----------------------|----------|----------|
| dining tables | dining table | dining tables | dining table | dining tables |  |  |
| dining-room table | dining table | dining tables | dining-room table | dining-room tables |  |  |
| oak dining table | dining table | dining tables | oak dining table | oak dining tables | oak |  |
| marble dining tables | dining table | dining tables | marble dining table | marble dining tables | marble |  |
| round dining table | dining table | dining tables | round dining table | round dining tables |  | round |
| extendable dining table | dining table | dining tables | extendable dining table | extendable dining tables |  | extendable |
| walnut dining-room table | dining-room table | dining-room tables | walnut dining-room table | walnut dining-room tables | walnut |  |

### 2️⃣ Lead Gen (plombier urgence)

**Ad Group : Emergency Plumber**

Cet ad group consolide les variations d'urgence (emergency, 24 hour, same day, after hours).

| **Keyword** | **KeywordSingular** | **KeywordPlural** | **FullKeywordSingular** | **FullKeywordPlural** | **Descriptor** |
|------------|--------------------|--------------------|------------------------|----------------------|----------------|
| emergency plumber | Plumber | Plumbers | Emergency Plumber | Emergency Plumbers | Emergency |
| 24 hour plumber | Plumber | Plumbers | 24 Hour Plumber | 24 Hour Plumbers | 24 Hour |
| 24/7 plumber | Plumber | Plumbers | 24/7 Plumber | 24/7 Plumbers | 24/7 |
| urgent plumber | Plumber | Plumbers | Urgent Plumber | Urgent Plumbers | Urgent |
| same day plumber | Plumber | Plumbers | Same-Day Plumber | Same-Day Plumbers | Same-Day |
| after hours plumber | Plumber | Plumbers | After Hours Plumber | After Hours Plumbers | After Hours |
| weekend plumber | Plumber | Plumbers | Weekend Plumber | Weekend Plumbers | Weekend |
| night plumber | Plumber | Plumbers | Night Plumber | Night Plumbers | Night |

> ⚠️ **Important :** Les valeurs d'Ad Customizer sont insérées littéralement. Entrez toujours les valeurs avec la casse exacte que vous voulez voir apparaître dans les annonces.

---

## Exemples RSA par vertical

### 1️⃣ Ecommerce (tables à manger)

| Type | **Contenu** |
|------|------------|
| H1 | Shop `{CUSTOMIZER.KeywordPlural:dining tables}` online |
| H2 | 200+ `{CUSTOMIZER.KeywordPlural:dining tables}` in stock |
| H3 | Find your perfect `{CUSTOMIZER.KeywordSingular:dining table}` |
| H4 | High-quality `{CUSTOMIZER.Material:tables}` only |
| D1 | Shop our `{CUSTOMIZER.Material:high-quality} {CUSTOMIZER.KeywordPlural:dining tables}`. Free shipping on orders over €500. |
| D2 | Find the perfect `{CUSTOMIZER.FullKeywordSingular:dining table}` for your home. 100-day returns & 10-year warranty. |

**Exemples de rendus :**

| **Keyword** | **H1** | **H4** | **D2** |
|------------|--------|--------|--------|
| oak dining table | Shop `dining tables` online | High-quality `oak` only | Find the perfect `oak dining table` for your home. 100-day returns & 10-year warranty. |
| round dining table | Shop `dining tables` online | High-quality `tables` only | Find the perfect `round dining table` for your home. 100-day returns & 10-year warranty. |
| dining-room tables | Shop `dining-room tables` online | High-quality `tables` only | Find the perfect `dining-room table` for your home. 100-day returns & 10-year warranty. |

### 2️⃣ Lead Gen (plombier urgence)

| **Slot** | **Contenu** |
|----------|------------|
| H1 | `{CUSTOMIZER.Descriptor:Fast}` Service Available Now |
| H2 | Trusted `{CUSTOMIZER.FullKeywordPlural:Emergency Plumbers}` |
| H3 | Call Your `{CUSTOMIZER.KeywordSingular:Plumber}` Now |
| H4 | Licensed & Insured `{CUSTOMIZER.KeywordPlural:Plumbers}` |
| D1 | `{CUSTOMIZER.Descriptor:Emergency}` plumbing service available right now. Call for a free quote: we're standing by. |
| D2 | Trusted `{CUSTOMIZER.Descriptor:local} {CUSTOMIZER.KeywordPlural:plumbers}` in your area. Fast response, fair prices, guaranteed. |

**Exemples de rendus :**

| **Keyword** | **H1** | **H2** | **D1** |
|------------|--------|--------|--------|
| emergency plumber | `Emergency` Service Available Now | Trusted `Emergency Plumbers` | `Emergency` plumbing service available right now. Call for a free quote: we're standing by. |
| 24 hour plumber | `24 Hour` Service Available Now | Trusted `24 Hour Plumbers` | `24 Hour` plumbing service available right now. Call for a free quote: we're standing by. |
| same day plumber | `Same-Day` Service Available Now | Trusted `Same-Day Plumbers` | `Same-Day` plumbing service available right now. Call for a free quote: we're standing by. |

> 💡 **Commencez simple :** N'ajoutez plus d'attributs que quand vos variations de keywords l'exigent.
