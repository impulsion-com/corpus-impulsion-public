# Exclusions de données

> **Plateforme :** Google Ads
> **Catégorie :** Suivi
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Documente la fonctionnalité Exclusions de données pour indiquer à Stratégies d'enchères intelligentes d'ignorer des périodes spécifiques où les données de conversion étaient compromises. Couvre quand utiliser, les options de configuration, les limitations et la distinction avec les ajustements de conversion.

---

## Ce que couvre cette fiche / Ce qu'elle ne couvre PAS

**Cette fiche :**

- Définit ce que font les exclusions de données et quand les utiliser
- Documente les options de configuration, la portée et les limitations
- Explique la différence entre les exclusions de données et les ajustements de conversion
- Liste les erreurs courantes et les critères de décision

**Cette fiche ne couvre PAS :**

- Couvrir les corrections de conversion individuelles (Voir : [Conversion Adjustments Reference](<Suivi - Offline Conversion Tracking.md>))
- Expliquer les paramètres des actions de conversion (Voir : [Conversion Action Reference](<Suivi - Actions de conversion.md>))
- Fournir la configuration étape par étape du tracking (suivi des conversions/évènements) (Voir : [SOP - Configurer le suivi des conversions Google Ads](<Suivi - Configurer le suivi des conversions Google Ads.md>))

---

## Ce que font les exclusions de données

Les exclusions de données indiquent à Stratégies d'enchères intelligentes d'ignorer toutes les données de conversion d'une période spécifique. Pendant la fenêtre exclue, Stratégies d'enchères intelligentes agit comme si aucune donnée de conversion n'existait : il n'apprend pas des résultats de cette période et ne les intègre pas dans ses prédictions d'enchères.

C'est critique quand une panne technique cause des données de conversion artificiellement basses (ou nulles) pendant une période. Sans exclusion, Stratégies d'enchères intelligentes interprète les faibles conversions comme une mauvaise performance et réduit les enchères, créant une spirale de récupération qui peut prendre des semaines à corriger.

---

## Quand utiliser les exclusions de données

| Scénario | Pourquoi exclure |
|----------|-----------|
| Panne de suivi des conversions | Le pixel a cessé de se déclencher, les conversions sont tombées à zéro |
| Temps d'arrêt du site web | Le site était inaccessible, aucune conversion possible |
| Panne du processeur de paiement | Le checkout était cassé, les achats ne pouvaient pas aboutir |
| Erreur de déploiement de tagging | Une mise à jour GTM a cassé les tags de conversion |
| Erreurs 404 sur les pages de conversion | La page de remerciement ou la confirmation de checkout retournait des erreurs |
| Perturbation du server-side tagging | Le conteneur serveur est tombé, les données ont cessé de circuler |
| Mise à jour CMS ayant cassé le tracking | La mise à jour de la plateforme a supprimé ou modifié les scripts de conversion |
| Mauvaise configuration du Consent Mode | Une mise à jour CMP a bloqué tous les signaux de consentement |

### Quand NE PAS utiliser les exclusions de données

| Situation | Pourquoi pas | Utiliser à la place |
|-----------|---------|-------------|
| Des conversions individuelles sont erronées | Les exclusions fonctionnent sur des périodes, pas des enregistrements individuels | [Ajustements de conversion](<Suivi - Offline Conversion Tracking.md>) (RESTATE/RETRACT) |
| Baisse saisonnière de performance | Les faibles conversions sont de vraies données, pas des erreurs de tracking | Laissez Stratégies d'enchères intelligentes apprendre du pattern saisonnier |
| Une restructuration de campagne a causé une baisse de volume | Le changement de performance est réel, pas une erreur de données | Donnez du temps à l'algorithme pour se recalibrer |
| Une réduction de budget a diminué les conversions | Moins de conversions sont attendues avec moins de dépense | Ajustez les objectifs, pas les données |

---

## Aide-mémoire : exclusions de données vs. ajustements de conversion

| | Exclusions de données | Ajustements de conversion |
|--|----------------|----------------------|
| **Portée** | Période temporelle (toutes les conversions dans la fenêtre) | Conversions individuelles |
| **Objectif** | Ignorer les périodes de données corrompues | Corriger des valeurs de conversion spécifiques ou supprimer des conversions spécifiques |
| **Déclencheur** | Panne de tracking, temps d'arrêt du site | Retours, annulations, fraude, upsells |
| **Identifiant nécessaire** | Aucun (basé sur le temps) | Transaction ID ou GCLID |
| **Durée maximale** | 14 jours par exclusion | Pas de limite de temps |
| **Affecte** | Les prédictions Stratégies d'enchères intelligentes uniquement | Les colonnes de reporting et Stratégies d'enchères intelligentes |
| **Emplacement** | Outils > Stratégies d'enchères > Contrôles avancés | Outils > Conversions > Uploads |

---

## Configuration

### Emplacement dans Google Ads

1. Allez dans Outils et paramètres
2. Cliquez sur Bibliothèque partagée
3. Cliquez sur Stratégies d'enchères
4. Sur le côté gauche, cliquez sur Contrôles avancés
5. En haut, cliquez sur Exclusions de données

### Paramètres

| Paramètre | Description | Options |
|---------|------------|---------|
| **Nom** | Label descriptif pour l'exclusion | Texte libre (ex. "Panne processeur de paiement 5-6 jan") |
| **Description** | Détails sur ce qui s'est passé | Texte libre (optionnel mais recommandé) |
| **Date et heure de début** | Quand le problème a commencé | Sélecteur de date + heure (précision à l'heure) |
| **Date et heure de fin** | Quand le problème a été résolu | Sélecteur de date + heure (précision à l'heure) |
| **Portée** | Quelles campagnes sont affectées | Toutes les campagnes, types de campagne spécifiques, ou campagnes spécifiques |
| **Ciblage d'appareils** | Quels appareils étaient affectés | Tous les appareils, ou appareils spécifiques (ordinateur, mobile, tablette) |

### Options de portée

| Portée | Quand utiliser |
|-------|---------|
| Toutes les campagnes | La panne de tracking a affecté tout le compte (ex. panne globale de pixel) |
| Types de campagne spécifiques | Seuls certains types de campagne étaient affectés (ex. Search mais pas Shopping) |
| Campagnes spécifiques | Seules des campagnes individuelles étaient affectées (ex. campagnes utilisant une Landing Page spécifique) |

### Ciblage d'appareils

| Portée d'appareil | Quand utiliser |
|-------------|---------|
| Tous les appareils | Le problème a affecté tout le trafic indépendamment de l'appareil |
| Ordinateur uniquement | Le checkout desktop était cassé mais le mobile fonctionnait |
| Mobile uniquement | Problème de paiement spécifique mobile ou erreur de responsive design |
| Tablette uniquement | Problème de rendu spécifique tablette sur la page de conversion |

> 💡 **Soyez spécifique avec la portée et les appareils :** Si seul le checkout mobile était cassé, excluez uniquement les appareils mobiles. Exclure tous les appareils quand un seul était affecté supprime des données valides dont Stratégies d'enchères intelligentes a besoin.

---

## Limitations

| Limitation | Détail |
|-----------|--------|
| **Maximum 14 jours par exclusion** | Une seule exclusion ne peut pas couvrir plus de 14 jours |
| **Possibilité de chaîner plusieurs exclusions** | Pour des pannes plus longues, créez des exclusions consécutives de 14 jours |
| **N'excluez pas plus de 2-3 semaines au total** | Des exclusions prolongées privent l'algorithme de données, dégradant la qualité des enchères |
| **Stratégies d'enchères intelligentes uniquement** | Les exclusions de données affectent uniquement les stratégies d'enchères automatisées, pas le CPC manuel |
| **Ne corrige pas rétroactivement les rapports** | Les exclusions indiquent à Stratégies d'enchères intelligentes d'ignorer la période, elles ne changent pas les chiffres de conversion reportés |
| **Précision à l'heure** | Les heures de début et de fin sont définies à l'heure, pas à la minute |

> ⚠️ **N'utilisez pas les exclusions de données pour des périodes de plus de 2-3 semaines :** Des exclusions prolongées privent Stratégies d'enchères intelligentes des données dont il a besoin pour faire des prédictions précises. Si votre tracking était cassé depuis plus de 3 semaines, envisagez de réinitialiser les périodes d'apprentissage de la stratégie d'enchères au lieu d'exclure toute la fenêtre.

---

## Bonnes pratiques

| Pratique | Pourquoi |
|----------|-----|
| Appliquez l'exclusion dès que le problème est identifié | Plus Stratégies d'enchères intelligentes s'entraîne sur de mauvaises données, plus la récupération est difficile |
| Documentez le problème dans le nom et la description de l'exclusion | Référence future pour vous et votre équipe |
| Définissez des heures de début et de fin précises | Évitez d'exclure des données valides avant ou après le problème |
| Adaptez la portée à l'impact réel | N'excluez que les campagnes et appareils qui étaient affectés |
| Vérifiez que le tracking est complètement rétabli avant de définir l'heure de fin | Une heure de fin prématurée signifie que Stratégies d'enchères intelligentes reprend l'apprentissage sur des données encore cassées |
| Enregistrez toutes les exclusions dans votre piste d'audit de tracking | Utile pour diagnostiquer de futures anomalies de performance |

---

## Impact sur Stratégies d'enchères intelligentes

Quand une exclusion de données est active :

| Aspect | Comportement |
|--------|----------|
| Prédictions d'enchères | L'algorithme ignore la période exclue, utilise les données environnantes |
| Phase d'apprentissage | La période exclue ne compte ni pour ni contre l'apprentissage |
| Récupération | L'algorithme reprend l'apprentissage normal après la fin de la période exclue |
| Rapports historiques | Les données de conversion restent visibles dans les rapports (l'exclusion n'affecte que la stratégie d'enchères) |

### Sans exclusions de données (ce qui va mal)

1. Le tracking casse, les conversions tombent à zéro
2. Stratégies d'enchères intelligentes voit zéro conversion et interprète cela comme une mauvaise performance
3. L'algorithme réduit drastiquement les enchères
4. Le trafic chute, même après la réparation du tracking
5. Le faible trafic signifie moins de conversions, renforçant le signal de faible enchère
6. La récupération prend 2-4 semaines de reconstruction progressive

### Avec exclusions de données (approche correcte)

1. Le tracking casse, les conversions tombent à zéro
2. Vous appliquez une exclusion de données pour la période affectée
3. Stratégies d'enchères intelligentes ignore la période entièrement
4. Une fois le tracking rétabli, la stratégie d'enchères reprend depuis les baselines pré-panne
5. La récupération est immédiate

---

## Erreurs courantes

| Erreur | Problème | Solution |
|---------|---------|-----|
| Ne pas appliquer d'exclusion après une panne de tracking | Stratégies d'enchères intelligentes détruit les enchères basées sur des données zéro conversion | Appliquez l'exclusion immédiatement quand une panne est détectée |
| Exclure une période trop longue (4+ semaines) | L'algorithme est privé de données, les prédictions se dégradent | Gardez les exclusions sous 2-3 semaines au total, envisagez une réinitialisation de la stratégie d'enchères pour les pannes plus longues |
| Utiliser les exclusions de données au lieu des ajustements de conversion | Exclusion de période temporelle quand seules des conversions spécifiques sont erronées | Utilisez les ajustements de conversion pour les corrections individuelles |
| Exclure toutes les campagnes quand une seule était affectée | Les données valides sont supprimées des campagnes non affectées | Limitez l'exclusion aux campagnes affectées uniquement |
| Exclure tous les appareils quand seul le mobile était cassé | Les données valides desktop/tablette sont supprimées | Limitez aux appareils affectés uniquement |
| Définir l'heure de fin avant que le tracking soit confirmé rétabli | Stratégies d'enchères intelligentes reprend l'apprentissage sur des données encore cassées | Vérifiez que le tracking fonctionne avant de finaliser l'heure de fin |
| Oublier de documenter l'exclusion | Les futures anomalies de performance ne peuvent pas être tracées | Utilisez toujours des noms et descriptions descriptifs |

---

## Guide de décision : quel outil utiliser

| Situation | Outil | Pourquoi |
|-----------|------|-----|
| Le pixel a cessé de se déclencher pendant 3 jours | Exclusion de données | Problème de période temporelle affectant toutes les conversions |
| Le client a retourné une commande de 500 € | Ajustement de conversion (RETRACT) | Correction de conversion individuelle |
| Le processeur de paiement était en panne pendant 6 heures | Exclusion de données | Problème de période temporelle empêchant les conversions |
| Un lead (prospect) s'est avéré frauduleux | Ajustement de conversion (RETRACT) | Suppression de conversion individuelle |
| Le site était en maintenance pendant la nuit | Exclusion de données | Problème de période temporelle, aucune conversion possible |
| La valeur de commande d'un client a changé de 500 € à 377 € | Ajustement de conversion (RESTATE) | Correction de valeur individuelle |
| Le conteneur GTM avait le mauvais déclencheur pendant 2 jours | Exclusion de données | Erreur de tracking sur une période temporelle |
| Une conversion de test doit être supprimée | Ajustement de conversion (RETRACT) | Suppression de conversion individuelle |

---

## Documents liés

| Document | Relation |
|----------|--------------|
| [Conversion Adjustments Reference](<Suivi - Offline Conversion Tracking.md>) | Corrections de conversion individuelles (fonctionnalité complémentaire) |
| [Conversion Action Reference](<Suivi - Actions de conversion.md>) | Paramètres et types des actions de conversion |
| [Conversion Volume Thresholds Reference](<Suivi - Seuils de volume de conversions.md>) | Seuils de volume affectés par les périodes exclues |
| [Measurement Maturity Mental Model](<../../01-strategie/reporting/Reporting - Maturité de la mesure.md>) | Où les exclusions de données s'inscrivent dans le stack de mesure |
| [Conversion Tracking Configuration Guidelines](<Suivi - Configuration du suivi des conversions.md>) | Configuration recommandée incluant les protocoles d'exclusion |
| [Conversion Data Quality Checklist](<Suivi - [Review] Qualité des données de conversion.md>) | Valide que les pannes ont des exclusions appliquées |
| [SOP - Configurer le suivi des conversions Google Ads](<Suivi - Configurer le suivi des conversions Google Ads.md>) | Configuration du tracking qui prévient les pannes |
