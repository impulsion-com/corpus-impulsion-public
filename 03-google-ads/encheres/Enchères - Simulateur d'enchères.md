# Simulateur d'enchères

> **Plateforme :** Google Ads
> **Catégorie :** Enchères
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Documente les outils de simulation d'enchères et de planification des performances : ce qu'ils montrent, comment y accéder, comment les utiliser pour l'analyse du profit optimum, et leurs limitations.

---

## Ce que couvre cette fiche / Ce qu'elle ne couvre PAS

**Cette fiche :**

- Explique comment accéder et lire les données du simulateur d'enchères
- Documente l'utilisation du Performance Planner pour les prévisions d'enchères/budget
- Couvre la méthode de calcul du profit optimum
- Note les limitations et quand ne pas faire confiance aux prévisions

**Cette fiche ne couvre PAS :**

- Le fonctionnement de Stratégies d'enchères intelligentes (Voir : [Stratégies d'enchères intelligentes Mechanics Reference](<Enchères - Mécanismes des stratégies d'enchères intelligentes.md>))
- Le choix des cibles CPA/ROAS/POAS (Voir : [Bid Targets Reference](<Enchères - Cibles d'enchères.md>))
- Les instructions de scaling pas à pas (Voir : [SOP - Scaler encheres et budgets](<Enchères - Scaler les enchères et budgets.md>))

---

## Aide-mémoire : outils de prévision

| Outil | Ce qu'il montre | Idéal pour | Accès |
|------|-------------|---------|--------|
| **Simulateur d'enchères** | Résultats estimés à différents niveaux de cible pour les campagnes existantes | Modéliser les changements CPA/ROAS/POAS, trouver le profit optimum | Rapport de stratégie d'enchères > Simulateur d'enchères |
| **Performance Planner** | Résultats projetés sur plusieurs campagnes/portefeuilles à différents niveaux de dépense | Planification budgétaire, prévisions trimestrielles, validation des objectifs de croissance | Outils > Planification > Performance Planner |
| **Keyword Planner** | Volume de recherche et estimations de CPC pour les mots-clés | Validation de marché, faisabilité budgétaire pour les nouvelles campagnes | Outils > Planification > Keyword Planner |

---

## Simulateur d'enchères

### Ce qu'il fait

Le simulateur d'enchères utilise les données historiques de votre campagne pour estimer les résultats à différentes cibles d'enchères. Il modélise des scénarios sur une gamme de cibles CPA ou ROAS/POAS et montre les conversions projetées, la valeur de conversion et le coût pour chaque scénario.

### Comment y accéder

**Rapport de stratégie d'enchères au niveau campagne :**

1. Ajouter la colonne "Type de stratégie d'enchères" à votre vue campagne
2. Cliquer sur le lien bleu du nom de la stratégie
3. Dans le rapport de stratégie d'enchères, trouver la section simulateur d'enchères

**Rapport de stratégie d'enchères de portefeuille :**

1. Aller dans Outils > Budgets et Enchères > Stratégies d'enchères
2. Sélectionner la stratégie de portefeuille
3. Voir la section simulateur d'enchères dans le rapport

### Ce que montre le simulateur

| Colonne | Ce que ça signifie |
|--------|--------------|
| **CPA cible / ROAS cible** | Le niveau de cible d'efficacité simulé |
| **Conversions estimées** | Volume de conversions projeté à cette cible |
| **Valeur de conversion estimée** | Valeur de conversion projetée à cette cible |
| **Coût estimé** | Dépenses publicitaires projetées à cette cible |
| **Cible actuelle** | Ligne surlignée montrant votre cible active |

### Lire les résultats

- En baissant les cibles CPA (plus agressif) : les conversions augmentent, le coût augmente, le coût par conversion reste proche de la cible
- En augmentant les cibles CPA (moins agressif) : les conversions baissent, le coût baisse
- En baissant les cibles ROAS (plus agressif) : la valeur de conversion augmente, le coût augmente, le ROAS approche du seuil de rentabilité
- En augmentant les cibles ROAS (moins agressif) : la valeur de conversion baisse, le coût baisse

---

## Performance Planner

### Ce qu'il fait

Le Performance Planner prévoit la performance des campagnes à différents niveaux de budget et de cible sur une période future (typiquement le mois ou trimestre suivant). Il utilise les données historiques plus les tendances saisonnières pour projeter les résultats.

### Comment y accéder

1. Aller dans Outils > Planification > Performance Planner
2. Sélectionner les campagnes à inclure
3. Choisir une plage de dates (mois suivant, trimestre suivant, personnalisée)
4. Définir les métriques cibles (CPA, ROAS, budget)
5. Examiner les projections

### Ce que montre le planner

| Résultat | Ce que ça vous dit |
|--------|------------------|
| **Conversions projetées** | Volume de conversions attendu au niveau de dépense/cible modélisé |
| **Valeur de conversion projetée** | Revenu ou profit brut attendu |
| **Coût projeté** | Dépenses publicitaires attendues |
| **Courbe de réponse** | Visuel des rendements décroissants quand vous augmentez les dépenses |
| **Comparaison de scénarios** | Côte à côte de différentes combinaisons cible/budget |

### Quand le Performance Planner est disponible

Le Performance Planner nécessite :

- Des campagnes actives avec au moins 7 jours d'historique
- Suffisamment de données de conversion (les campagnes à très faible volume peuvent ne pas être incluses)
- Des types de campagne standard (Search, Shopping, Display, PMax)

Le Performance Planner peut ne pas être disponible pour :

- Les campagnes très récentes
- Les campagnes avec des données de conversion incohérentes
- Certains types de campagne spécialisés

---

## Trouver le profit optimum

Le profit optimum est le niveau de cible où le profit net est maximisé. Il existe en raison des rendements décroissants : chaque conversion incrémentale coûte plus que la précédente.

### Méthode pas à pas

1. **Ouvrir le simulateur d'enchères** pour votre campagne ou portefeuille
2. **Noter 5-7 scénarios** à différents niveaux de cible, allant de votre cible actuelle jusqu'à proche du seuil de rentabilité
3. **Exporter vers un tableur** avec les colonnes : Cible, Conversions estimées, Valeur de conversion estimée, Coût estimé
4. **Calculer le profit net** pour chaque ligne : Valeur de conversion moins Coût
5. **Tracer la courbe de profit net** (cible sur l'axe X, profit net sur l'axe Y)
6. **Identifier le pic :** le niveau de cible où le profit net est le plus élevé

### Exemple (basé sur le POAS)

| Cible POAS | Profit brut estimé | Coût estimé | Profit net |
|------------|----------------------|----------------|-----------|
| 300% | 45 000 EUR | 15 000 EUR | 30 000 EUR |
| 250% | 55 000 EUR | 22 000 EUR | 33 000 EUR |
| 210% | 65 000 EUR | 31 000 EUR | 34 000 EUR |
| 180% | 72 000 EUR | 40 000 EUR | 32 000 EUR |
| 150% | 78 000 EUR | 52 000 EUR | 26 000 EUR |
| 120% | 82 000 EUR | 68 000 EUR | 14 000 EUR |
| 100% | 85 000 EUR | 85 000 EUR | 0 EUR |

Dans cet exemple, le profit optimum est à environ 210% POAS (34 000 EUR de profit net). Être plus agressif que 210% augmente le profit brut mais augmente le coût plus vite, réduisant le profit net.

### Automatiser l'analyse du profit optimum

Pour les gros comptes, automatisez via l'API Google Ads :

1. Extraire les données du simulateur d'enchères chaque semaine via des scripts API
2. Calculer automatiquement le profit optimum par campagne
3. Générer un tableur avec la cible actuelle vs l'optimum suggéré
4. Examiner et appliquer les modifications via des expériences de campagne

---

## Limitations et mises en garde

> Ne prenez jamais les prévisions pour argent comptant : les simulateurs et planners sont des outils directionnels, pas des garanties.

| Limitation | Impact | Atténuation |
|-----------|--------|-----------|
| **Suppose des conditions stables** | Les changements de concurrence, saisonnalité et marché ne sont pas modélisés | Recouper avec les tendances historiques et les événements connus |
| **Les courbes lisses suggèrent une croissance linéaire** | La réalité a des rendements décroissants plus marqués | Appliquer une décote de 10-20% aux scénarios agressifs |
| **Ne modélise pas la fatigue publicitaire** | Suppose un CTR et un taux de conversion constants à des volumes plus élevés | Surveiller les tendances réelles de CTR et CR lors du scaling |
| **Basé sur les données historiques** | Si la performance récente est atypique (soldes, panne, nouveau concurrent), les projections sont biaisées | Utiliser des périodes représentatives pour l'analyse |
| **Le délai de conversion n'est pas toujours pris en compte** | Les données de conversion récentes peuvent être incomplètes | S'assurer que la fenêtre d'analyse tient compte de votre cycle de conversion |
| **Interprétation des données POAS** | Google montre "ROAS cible" dans l'interface même avec le tracking de profit | Interpréter la valeur de conversion comme profit brut quand le POAS est actif |

### Quand faire davantage confiance aux prévisions

- Campagnes à fort volume avec un historique de performance stable
- Cycles de conversion courts (données récentes plus complètes)
- Paysage concurrentiel stable
- Pas de changement saisonnier majeur à venir

### Quand faire moins confiance aux prévisions

- Campagnes à faible volume avec une performance volatile
- Cycles de conversion longs (données récentes incomplètes)
- Changements de marché connus à venir (Black Friday, lancement concurrent)
- Campagnes avec des changements significatifs récents

---

## Rapports de stratégie d'enchères

### Accéder au rapport

| Type de stratégie | Comment y accéder |
|--------------|---------------|
| Au niveau campagne | Ajouter la colonne "Type de stratégie d'enchères" > cliquer sur le lien bleu |
| Portefeuille | Outils > Budgets et Enchères > Stratégies d'enchères > sélectionner la stratégie |

### Métriques clés du rapport

| Métrique | Ce qu'elle montre |
|--------|-------------|
| **Délai moyen de conversion** | Jours entre le clic et la conversion (égal à votre cycle de conversion) |
| **Cible** | Votre cible CPA ou ROAS/POAS actuelle |
| **Performance réelle** | Écart entre le CPA/ROAS réel et la cible |
| **Simulateur d'enchères** | Scénarios projetés à différentes cibles |
| **Statut** | Apprentissage, Limité, Éligible, etc. |
| **Projections de conversions** | Estimations de conversions prospectives |

> Le délai moyen de conversion dans votre rapport de stratégie d'enchères vous indique votre cycle de conversion : utilisez-le pour déterminer combien de temps attendre avant d'évaluer la performance après des modifications et combien de temps lancer les expériences.

---

## Erreurs courantes

| Erreur | Problème | Solution |
|---------|---------|-----|
| Prendre les projections du simulateur pour des garanties | Sur-engagement vers des cibles agressives | Utiliser les projections comme entrée directionnelle, valider avec des expériences |
| Sauter l'étape de calcul du profit | Regarder uniquement les conversions ou le ROAS, ignorer le profit net | Toujours calculer le profit net = valeur de conversion moins coût |
| Utiliser des périodes de données incomplètes | Le délai de conversion rend les données récentes moins bonnes | Exclure les [délai de conversion] jours les plus récents de l'analyse |
| Ne pas valider avec des expériences | Appliquer les cibles optimales sans tester | Lancer une expérience de campagne 50/50 pendant 30+ jours avant de s'engager |
| Ignorer les rendements décroissants | Supposer un scaling linéaire d'après les résultats du simulateur | Tracer la courbe complète, chercher où les rendements marginaux s'aplatissent |
| Vérifier le simulateur trop fréquemment | Les données changent lentement, crée une paralysie d'analyse | Examiner toutes les 2 semaines ou mensuellement, pas quotidiennement |

---

## Documents liés

| Document | Relation |
|----------|-------------|
| [Bid Scaling Mental Model](<Enchères - Scaling des enchères.md>) | Cadre pour le concept de profit optimum |
| [Stratégies d'enchères intelligentes Mechanics Reference](<Enchères - Mécanismes des stratégies d'enchères intelligentes.md>) | Comment Stratégies d'enchères intelligentes utilise les données (contexte pour les entrées du simulateur) |
| [Bid Targets Reference](<Enchères - Cibles d'enchères.md>) | Calcul de cible qui alimente l'analyse du simulateur |
| [Budget Allocation Mental Model](<../../01-strategie/analyse/Analyse - Allocation de budget.md>) | Validation budgétaire avec le Performance Planner |
| [SOP - Scaler encheres et budgets](<Enchères - Scaler les enchères et budgets.md>) | Scaling pas à pas avec les données du simulateur |
| [SOP - Calculer les objectifs d'encheres](<Enchères - Calculer les objectifs d'enchères.md>) | L'étape de validation utilise le Performance Planner |
