# Ajustements de conversion

> **Plateforme :** Google Ads
> **Catégorie :** Suivi
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Documente les deux types d'ajustements de conversion (RESTATE et RETRACT) pour corriger les données de conversion après l'événement initial. Couvre le format d'upload, les prérequis, le timing et l'impact sur le reporting.

---

## Ce que couvre cette fiche / Ce qu'elle ne couvre PAS

**Cette fiche :**

- Définit les types d'ajustement RESTATE et RETRACT avec les cas d'usage
- Documente le format d'upload, les colonnes requises et la configuration
- Explique l'impact sur le reporting et Stratégies d'enchères intelligentes
- Liste les prérequis et les erreurs courantes

**Cette fiche ne couvre PAS :**

- Expliquer comment configurer le suivi des conversions (Voir : [SOP - Configurer le suivi des conversions Google Ads](<Suivi - Configurer le suivi des conversions Google Ads.md>))
- Couvrir les corrections de données basées sur des périodes temporelles (Voir : [Data Exclusions Reference](<Suivi - Exclusions de données.md>))
- Définir les types et paramètres des actions de conversion (Voir : [Conversion Action Reference](<Suivi - Actions de conversion.md>))
- Fournir le document stratégique pour la maturité de la mesure (Voir : [Measurement Maturity Mental Model](<../../01-strategie/reporting/Reporting - Maturité de la mesure.md>))

---

## Pourquoi les ajustements de conversion existent

Le parcours d'un client ne s'arrête pas à la conversion. Les achats sont retournés, les réservations annulées, les leads (prospects) s'avèrent frauduleux, et des upsells se produisent après la transaction initiale. Sans ajustements, les données Google Ads s'éloignent de la réalité, et Stratégies d'enchères intelligentes optimise vers des signaux inexacts.

Les ajustements de conversion résolvent ce problème en vous permettant de corriger les enregistrements de conversion individuels après coup : changer la valeur (RESTATE) ou supprimer la conversion entièrement (RETRACT).

---

## Aide-mémoire : types d'ajustement

| Type | Ce que ça fait | Nombre de conversions | Valeur de conversion | Quand utiliser |
|------|-------------|-----------------|-----------------|----------|
| **RESTATE** | Change la valeur de conversion, conserve la conversion | Inchangé | Mise à jour avec la nouvelle valeur | Retour partiel, upsell, mise à jour de la valeur du lead |
| **RETRACT** | Supprime la conversion entièrement | Réduit de 1 | Mise à zéro | Retour complet, fraude, conversion de test, annulation |

---

## 1. RESTATE : changer la valeur, conserver la conversion

RESTATE ajuste la valeur monétaire d'une conversion sans la supprimer du comptage. Utilisez-le quand une conversion est toujours valide mais que la valeur a changé.

### Exemples RESTATE

| Scénario | Valeur originale | Valeur ajustée | Pourquoi |
|----------|---------------|----------------|-----|
| Retour partiel (ecommerce) | 500 € | 377 € | Le client a retourné un article de la commande |
| Upsell après achat (ecommerce) | 500 € | 750 € | Le client a ajouté des articles après le checkout |
| Mise à jour de la valeur du lead (lead gen) | 100 € (estimé) | 2 500 € (valeur réelle du deal) | Le CRM a été mis à jour avec la valeur réelle du deal signé |
| Upgrade d'abonnement (SaaS) | 29 €/mois | 99 €/mois | Le client a upgradé son plan dans la fenêtre d'attribution |
| Ajustement de prix de commande (ecommerce) | 200 € | 180 € | Remise ou coupon appliqué après l'achat |

### Impact de RESTATE sur les données

| Métrique | Impact |
|--------|--------|
| Colonne Conversions | Pas de changement |
| Colonne Valeur de conversion | Mise à jour avec la nouvelle valeur |
| CPA | Pas de changement (le comptage n'a pas changé) |
| ROAS | Mis à jour (la valeur a changé) |
| Stratégies d'enchères intelligentes (CPA cible) | Pas d'impact direct du changement de valeur |
| Stratégies d'enchères intelligentes (ROAS cible) | L'algorithme apprend des valeurs corrigées |

---

## 2. RETRACT : supprimer la conversion entièrement

RETRACT supprime définitivement une conversion de vos données. La conversion et sa valeur sont toutes les deux retirées des colonnes de reporting principales.

### Exemples RETRACT

| Scénario | Pourquoi faire un RETRACT |
|----------|------------|
| Commande entièrement retournée | Le client a retourné toute la commande, aucun chiffre d'affaires généré |
| Transaction frauduleuse | Paiement annulé pour fraude |
| Conversion de test | Commande de test interne polluant les données |
| Réservation annulée | Le client a annulé avant la prestation |
| Commande en double | Erreur système ayant créé une conversion en doublon |
| Rétrofacturation | Le processeur de paiement a annulé le débit |

### Impact de RETRACT sur les données

| Métrique | Impact |
|--------|--------|
| Colonne Conversions | Réduit de 1 |
| Colonne Valeur de conversion | Réduite de la valeur originale |
| CPA | Augmente (moins de conversions, même coût) |
| ROAS | Diminue (moins de valeur, même coût) |
| Stratégies d'enchères intelligentes (CPA cible) | L'algorithme apprend à éviter des patterns similaires |
| Stratégies d'enchères intelligentes (ROAS cible) | L'algorithme apprend à éviter des patterns similaires |

---

## 3. Prérequis

Avant de pouvoir uploader des ajustements de conversion, vous devez avoir l'un de ces identifiants déjà en place :

| Identifiant | Utilisé pour | Comment l'implémenter |
|------------|----------|-----------------|
| **Transaction ID** | Conversions en ligne (ecommerce) | Passez le paramètre `transaction_id` dans votre tag d'événement d'achat |
| **GCLID** | Conversions hors ligne (lead gen, SaaS) | Capturez le GCLID depuis l'URL et stockez-le dans votre CRM |

> ⚠️ **Le Transaction ID ou le GCLID doit être en place AVANT que vous ayez besoin d'ajustements :** Vous ne pouvez pas ajouter rétroactivement un Transaction ID aux conversions passées. Si aucun des deux identifiants n'est configuré, les ajustements de conversion ne fonctionneront pas.

---

## 4. Format d'upload

Le fichier d'upload (Google Sheet ou CSV) nécessite six colonnes :

| Colonne | Description | Requis | Exemple |
|--------|------------|----------|---------|
| **Order ID / GCLID** | Transaction ID (ecommerce) ou Google Click ID (lead gen) | Oui | `ORD-12345` ou `CjwKCAjw...` |
| **Conversion Name** | Nom exact de l'action de conversion dans Google Ads | Oui | `Purchase` |
| **Adjustment Time** | Date et heure de l'événement d'ajustement (pas la date d'upload) | Oui | `2026-01-15 14:30:00` |
| **Adjustment Type** | `RESTATE` ou `RETRACT` | Oui | `RETRACT` |
| **Adjusted Value** | Nouvelle valeur de conversion (RESTATE uniquement) | RESTATE uniquement | `377.00` |
| **Adjusted Value Currency** | Code devise ISO | RESTATE uniquement | `USD` ou `EUR` |

### Règles d'upload critiques

1. **Utilisez la date de l'événement, pas la date d'upload :** L'Adjustment Time doit correspondre au moment où le retour/annulation/upsell a eu lieu, pas au moment où vous uploadez le fichier.
2. **Laissez les colonnes de valeur vides pour RETRACT :** Si vous entrez une valeur (même zéro) avec un type RETRACT, Google retourne une erreur.
3. **Utilisez les noms exacts des actions de conversion :** Le Conversion Name doit correspondre exactement au nom dans Google Ads, y compris les majuscules et les espaces.
4. **Uploadez TOUS les ajustements, pas seulement ceux attribués à Google :** Vous ne pouvez pas savoir quelles commandes ont été attribuées à Google Ads. Uploadez chaque ajustement depuis votre backend. Google fait la correspondance pour ceux qu'il peut et ignore le reste. Les erreurs pour les conversions non matchées sont attendues et inoffensives.
5. **Utilisez les codes devise ISO :** Vérifiez le code correct pour votre devise (USD, EUR, GBP, etc.).

---

## 5. Méthodes d'upload

| Méthode | Comment | Idéal pour |
|--------|-----|----------|
| **Upload manuel** | Google Ads > Outils > Mesure > Conversions > Uploads > cliquez "+" | Comptes à faible volume, tests |
| **Google Sheets planifié** | Liez un Google Sheet et définissez un calendrier d'upload | Comptes à volume moyen, exports automatisés |
| **API Google Ads** | Upload programmatique via l'API | Comptes à fort volume, automatisation complète |

### Étapes d'upload manuel

1. Allez dans Outils > Mesure > Conversions > Uploads
2. Cliquez le bouton "+" pour créer un nouvel upload
3. Sélectionnez votre fichier (Google Sheet ou CSV)
4. Vérifiez l'aperçu pour les erreurs
5. Confirmez l'upload

### Uploads planifiés

1. Préparez un Google Sheet dans le format requis
2. Automatisez le remplissage du Sheet depuis votre plateforme ecommerce ou CRM (travaillez avec votre développeur)
3. Dans Google Ads, liez le Sheet comme source d'upload planifié
4. Définissez la fréquence (quotidien recommandé pour l'ecommerce)

---

## 6. Timing

Uploadez les ajustements de conversion dès que possible après l'événement. Plus vite les données atteignent Google Ads, plus vite Stratégies d'enchères intelligentes peut intégrer les signaux corrigés.

| Timing | Impact |
|--------|--------|
| Le jour même | Bénéfice maximal pour la stratégie d'enchères, données en temps réel les plus précises |
| Sous 1 semaine | Bon bénéfice pour la stratégie d'enchères, léger décalage dans le reporting |
| Sous 30 jours | Bénéfice modéré pour la stratégie d'enchères, décalage notable dans le reporting |
| Au-delà de 30 jours | Bénéfice minimal pour la stratégie d'enchères, correction historique uniquement |

> 💡 **Automatisez vos uploads d'ajustements :** Pour les comptes ecommerce avec des taux de retour significatifs, travaillez avec votre développeur pour pousser les commandes retournées/ajustées dans un Google Sheet automatiquement. Des uploads quotidiens planifiés gardent vos données propres et votre stratégie d'enchères affûtée.

---

## 7. Impact sur le reporting

Après l'upload des ajustements, vous pouvez voir leur impact dans Google Ads :

**Comment voir :** Ajoutez le segment Conversions > Ajustement de conversion à n'importe quel rapport. Cela montre les données de conversion originales à côté des ajustements appliqués.

| Colonne du rapport | Ce qu'elle montre |
|---------------|-------|
| Conversions | Comptage mis à jour (après les suppressions RETRACT) |
| Valeur de conversion | Valeur mise à jour (après RESTATE et RETRACT) |
| Toutes les conversions | Comptage mis à jour incluant les actions secondary |
| Ajustement de conversion | Le delta entre les données originales et ajustées |

---

## 8. Impact sur la stratégie d'enchères

| Stratégie | Impact de RESTATE | Impact de RETRACT |
|----------|------------------|------------------|
| CPA cible | Pas d'impact direct (le comptage n'a pas changé) | L'algorithme apprend quels clics ont mené à des conversions rétractées |
| ROAS cible | L'algorithme s'ajuste aux valeurs corrigées | L'algorithme s'ajuste à la valeur zéro pour les conversions rétractées |
| Maximiser les conversions | Pas d'impact direct | L'algorithme apprend à éviter les patterns rétractés |
| Maximiser la valeur de conversion | L'algorithme s'ajuste aux valeurs corrigées | L'algorithme s'ajuste à la valeur zéro |

Les deux types d'ajustement fournissent à Stratégies d'enchères intelligentes des données historiques plus précises, menant à de meilleures prédictions d'enchères au fil du temps. C'est particulièrement précieux pour les comptes ecommerce avec des taux de retour significatifs.

---

## Erreurs courantes

| Erreur | Problème | Solution |
|---------|---------|-----|
| Pas de Transaction ID configuré | Impossible d'ajuster les conversions en ligne | Implémentez le Transaction ID dans le tag d'événement d'achat avant d'avoir besoin d'ajustements |
| Entrer une valeur pour RETRACT | L'upload retourne une erreur | Laissez les colonnes Adjusted Value et Currency vides pour les lignes RETRACT |
| Utiliser la date d'upload au lieu de la date de l'événement | L'ajustement est enregistré au mauvais moment, déforme les rapports temporels | Utilisez la date à laquelle le retour/annulation/upsell a réellement eu lieu |
| N'uploader que les ajustements attribués à Google | Rate les ajustements pour les conversions que vous ne pouvez pas identifier comme attribuées à Google | Uploadez tous les ajustements depuis votre backend, laissez Google faire la correspondance |
| Mauvais nom d'action de conversion | L'ajustement ne peut pas être apparié | Copiez le nom exact depuis Google Ads (sensible à la casse) |
| Upload des mois après l'événement | Bénéfice minimal pour la stratégie d'enchères | Automatisez les uploads, visez le jour même ou sous une semaine |
| Ne pas uploader les retours partiels | Les données ROAS sont gonflées par la portion non retournée | RESTATE avec la valeur réellement conservée |

---

## Guide de décision : RESTATE vs. RETRACT

| Situation | Utiliser | Justification |
|-----------|-----|-----------|
| Le client a retourné une partie de la commande | RESTATE | La conversion est valide, la valeur a changé |
| Le client a retourné toute la commande | RETRACT | Pas de chiffre d'affaires, la conversion ne devrait pas exister |
| Le client a upgradé ou ajouté des articles | RESTATE | La conversion est valide, la valeur a augmenté |
| Lead qualifié avec valeur de deal connue | RESTATE | Mise à jour de la valeur estimée vers la valeur réelle |
| Commande frauduleuse détectée | RETRACT | La conversion n'était pas légitime |
| Conversion de test/interne | RETRACT | N'aurait jamais dû être comptée |
| Le client a annulé avant la livraison | RETRACT | Aucun chiffre d'affaires généré |
| Ajustement de prix après achat | RESTATE | La conversion est valide, la valeur a diminué |

---

## Documents liés

| Document | Relation |
|----------|--------------|
| [Conversion Action Reference](<Suivi - Actions de conversion.md>) | Types et paramètres des actions de conversion que les ajustements modifient |
| [Data Exclusions Reference](<Suivi - Exclusions de données.md>) | Corrections de données basées sur des périodes temporelles (différent des ajustements individuels) |
| [Conversion Volume Thresholds Reference](<Suivi - Seuils de volume de conversions.md>) | Seuils de volume affectés par les conversions rétractées |
| [Measurement Maturity Mental Model](<../../01-strategie/reporting/Reporting - Maturité de la mesure.md>) | Où les ajustements de conversion s'inscrivent dans le stack de mesure |
| [Conversion Tracking Configuration Guidelines](<Suivi - Configuration du suivi des conversions.md>) | Configuration recommandée incluant la planification des ajustements |
| [Conversion Data Quality Checklist](<Suivi - [Review] Qualité des données de conversion.md>) | Valide que les ajustements sont uploadés régulièrement |
| [SOP - Configurer le suivi des conversions Google Ads](<Suivi - Configurer le suivi des conversions Google Ads.md>) | Étapes d'implémentation incluant la configuration du Transaction ID |
