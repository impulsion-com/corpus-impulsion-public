# Configurer les ajustements de conversions

> **Plateforme :** Google Ads
> **Catégorie :** Suivi
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Phase 1️⃣ : Préparer le modèle d'upload

### 1.1 Créer le modèle

Créez un Google Sheet ou un CSV avec ces en-têtes de colonnes exacts :

| Colonne | Requis | Description |
|--------|----------|-------------|
| Order ID | Oui (ou GCLID) | Transaction ID de la conversion d'origine |
| Google Click ID | Oui (ou Order ID) | GCLID du clic d'origine |
| Conversion Name | Oui | Nom exact de l'action de conversion dans Google Ads |
| Adjustment Time | Oui | Moment où l'ajustement a eu lieu (date de retour, date d'annulation) |
| Adjustment Type | Oui | `RESTATE` ou `RETRACT` |
| Adjusted Value | Conditionnel | Nouvelle valeur de conversion (RESTATE uniquement) |
| Adjusted Currency Code | Conditionnel | Code devise (RESTATE uniquement) |

### 1.2 Définir le fuseau horaire

En haut du fichier (ligne 1), ajoutez le paramètre de fuseau horaire :

```
Parameters:TimeZone=America/New_York
```

Utilisez le fuseau horaire IANA correspondant à celui de votre compte Google Ads.

### 1.3 Comprendre les types d'ajustement

| Type | Ce que ça fait | Quand l'utiliser | Colonnes de valeur |
|------|-------------|-------------|---------------|
| RESTATE | Modifie la valeur de la conversion | Remboursement partiel, ajustement de prix, upsell | Requis : nouvelle valeur et devise |
| RETRACT | Supprime entièrement la conversion | Annulation totale, commande frauduleuse, lead (prospect) spam | Laissez les colonnes de valeur VIDES |

> ⚠️ **Les lignes RETRACT doivent laisser les colonnes de valeur vides :** Inclure une valeur dans une ligne RETRACT fait échouer l'upload. Seules les lignes RESTATE incluent une valeur et une devise ajustées.

---

## Phase 2️⃣ : Remplir avec les données d'ajustement

### 2.1 Exporter les données de retours et annulations

1. Exportez depuis votre backend/ERP : tous les retours, annulations et changements de valeur depuis le dernier upload
2. Incluez le transaction ID (order ID) pour chaque enregistrement
3. Incluez la date du retour/de l'annulation
4. Incluez le montant du remboursement (pour les remboursements partiels) ou l'indicateur d'annulation totale

### 2.2 Mapper vers le format d'upload

Pour chaque enregistrement d'ajustement :

**Annulation totale (RETRACT) :**

| Order ID | Google Click ID | Conversion Name | Adjustment Time | Adjustment Type | Adjusted Value | Adjusted Currency Code |
|----------|----------------|-----------------|-----------------|-----------------|----------------|----------------------|
| ORD-98765 | | Purchase | 2026-01-28 14:30:00 | RETRACT | | |

**Remboursement partiel (RESTATE) :**

| Order ID | Google Click ID | Conversion Name | Adjustment Time | Adjustment Type | Adjusted Value | Adjusted Currency Code |
|----------|----------------|-----------------|-----------------|-----------------|----------------|----------------------|
| ORD-98766 | | Purchase | 2026-01-29 10:15:00 | RESTATE | 75.00 | USD |

**Rétractation de lead (RETRACT) :**

| Order ID | Google Click ID | Conversion Name | Adjustment Time | Adjustment Type | Adjusted Value | Adjusted Currency Code |
|----------|----------------|-----------------|-----------------|-----------------|----------------|----------------------|
| LEAD-a7b3c9 | | Lead Submit | 2026-01-30 09:00:00 | RETRACT | | |

### 2.3 Inclure TOUS les ajustements, pas seulement ceux attribués à Google

Uploadez les ajustements pour toutes les conversions, quelle que soit la source d'attribution. Google Ads fait la correspondance par transaction ID ou GCLID et n'applique les ajustements qu'aux conversions attribuées à Google. Les lignes sans correspondance sont ignorées sans risque.

> 💡 **Uploadez tout, laissez Google matcher :** Envoyer tous les retours et annulations est plus simple que de filtrer uniquement les conversions Google. Google ignore les lignes qu'il ne peut pas matcher.

### 2.4 Utiliser les noms exacts des actions de conversion

1. Allez dans Google Ads > Goals > Conversions > Summary
2. Copiez le nom exact de chaque action de conversion
3. Collez-le dans la colonne Conversion Name

Le nom doit correspondre exactement, y compris la casse et les espaces.

---

## Phase 3️⃣ : Upload

### 3.1 Upload manuel

1. Allez dans Google Ads > Goals > Conversions > Uploads
2. Cliquez sur le bouton « + »
3. Sélectionnez « Upload file » et choisissez votre CSV ou Google Sheet
4. Vérifiez l'aperçu pour repérer les erreurs
5. Cliquez sur « Apply »

### 3.2 Upload programmé (recommandé pour un usage continu)

1. Allez dans Google Ads > Goals > Conversions > Uploads > Schedules
2. Créez un nouveau planning
3. Reliez-le à un Google Sheet mis à jour régulièrement
4. Réglez la fréquence : quotidienne ou hebdomadaire selon le volume de retours
5. Enregistrez le planning

| Fréquence d'upload | Idéale pour | Volume de retours minimum |
|-----------------|----------|----------------------|
| Quotidienne | E-commerce à fort volume (100+ retours par jour) | 50+ ajustements par upload |
| Hebdomadaire | Volume moyen ou lead gen | 10+ ajustements par upload |
| Bimensuelle | Entreprises à faible volume | Peu importe |

### 3.3 Revoir les résultats de l'upload

Après l'upload, vérifiez le statut de traitement :

| Statut | Signification | Action |
|--------|---------|--------|
| Successfully applied | Ajustement traité | Aucune |
| Not matched | Transaction ID/GCLID introuvable | Vérifiez l'exactitude de l'ID, contrôlez que la conversion a eu lieu dans les 55 jours |
| Error | Problème de format de colonne ou de données | Corrigez les lignes signalées et ré-uploadez |

> ⚠️ **Uploadez au plus vite pour un impact maximal sur les Stratégies d'enchères intelligentes :** Plus les ajustements arrivent tôt dans Google Ads, plus vite les Stratégies d'enchères intelligentes apprennent des données corrigées. Les retards réduisent le bénéfice sur les enchères.

---

## Phase 4️⃣ : Valider

### 4.1 Vérifier le segment Conversion Adjustment

1. Allez dans Google Ads > Campaigns
2. Cliquez sur Segment > Conversions > Conversion Adjustment
3. Examinez les données :

| Valeur du segment | Ce que ça montre |
|---------------|--------------|
| Original | Les données de conversion enregistrées initialement |
| Adjusted | Les données corrigées après ajustements |
| Retracted | Les conversions entièrement supprimées |

### 4.2 Vérifier les valeurs ajustées

1. Sélectionnez une campagne ou une plage de dates spécifique où vous savez que des ajustements ont été appliqués
2. Comparez la valeur de conversion « Adjusted » à vos enregistrements backend
3. Confirmez que les conversions rétractées ne comptent plus dans le total

### 4.3 Surveiller la couverture des ajustements

Suivez votre taux d'ajustement dans le temps :

| Métrique | Comment calculer | Plage saine |
|--------|-----------------|---------------|
| Taux d'ajustement | Conversions ajustées / Conversions totales | Dépend de l'activité, mais constant d'un mois à l'autre |
| Taux de rétractation | Conversions rétractées / Conversions totales | Devrait correspondre à votre taux de retours/annulations |
| Délai moyen d'ajustement | Nombre de jours entre la conversion et l'upload de l'ajustement | Moins de 14 jours idéalement |

### 4.4 Checklist finale

- [ ] Le modèle d'upload a les bonnes colonnes et le bon paramètre de fuseau horaire
- [ ] Les lignes RETRACT ont des colonnes de valeur vides
- [ ] Les lignes RESTATE ont une valeur et une devise ajustées
- [ ] Les noms d'actions de conversion correspondent exactement à Google Ads
- [ ] Upload traité avec succès (vérifiez le statut)
- [ ] Le segment Conversion Adjustment affiche les données ajustées
- [ ] L'upload programmé est actif (pour un usage continu)

---

### Validation et critères de complétion

Cette SOP est terminée quand :

- [ ] Le modèle d'upload est créé au bon format
- [ ] Le premier lot d'ajustements est uploadé avec succès
- [ ] Google Ads affiche les données de conversion ajustées dans le segment Conversion Adjustment
- [ ] Les types RETRACT et RESTATE sont tous deux vérifiés
- [ ] Un planning d'upload continu est configuré (quotidien ou hebdomadaire)

---

### Passerelle de sortie

Une fois que les ajustements de conversion sont en flux :

| Délai | Action |
|-----------|--------|
| Immédiatement | Les Stratégies d'enchères intelligentes commencent à apprendre des données corrigées |
| Après 7 jours | Comparez les données de conversion ajustées au backend |
| Après 30 jours | Évaluez l'amélioration de la performance des Stratégies d'enchères intelligentes grâce à des données plus propres |

**En cas de problème :**

| Problème | Rediriger vers |
|-------|----------|
| Erreurs d'upload sur certaines lignes | Vérifiez le formatage des colonnes et les noms d'actions de conversion |
| Ajustements sans correspondance | Vérifiez que les transaction IDs correspondent aux conversions d'origine |
| Stratégies d'enchères intelligentes qui ne s'améliorent pas | Vérifiez le délai d'ajustement : uploadez plus vite, assurez un volume constant |

---

### FAQ

**Q : Combien de temps après un retour dois-je uploader l'ajustement ?**

R : Dès que possible. Les ajustements uploadés dans les 7 jours suivant la conversion d'origine ont le plus d'impact sur les Stratégies d'enchères intelligentes. La fenêtre maximale est de 55 jours.

**Q : Que faire si je n'ai que le GCLID, pas l'Order ID ?**

R : Vous pouvez utiliser l'un ou l'autre. Le GCLID est le Google Click ID du clic d'origine. L'Order ID est le transaction ID envoyé avec la conversion. L'un des deux suffit.

**Q : Les ajustements affectent-ils le reporting historique ?**

R : Oui. Les valeurs ajustées remplacent les valeurs originales dans tous les rapports, y compris les plages de dates historiques. La valeur d'origine reste visible via le segment Conversion Adjustment.

---

### Procédures liées

| SOP | Relation |
|-----|--------------|
| [SOP - Implementer la deduplication par Transaction ID](<Suivi - Implémenter la déduplication par Transaction ID.md>) | Amont : les transaction IDs sont nécessaires pour la correspondance des ajustements |
| [SOP - Configurer le suivi panier et profit](<Suivi - Configurer le suivi panier et profit.md>) | Parallèle : les ajustements corrigent les données de profit fournies par le suivi panier |
| [SOP - Configurer les exclusions de donnees](<Suivi - Configurer les exclusions de données.md>) | Lié : les exclusions de données gèrent les pannes de tracking, les ajustements gèrent les corrections de conversions individuelles |

---

### Erreurs fréquentes

| Erreur | Pourquoi ça arrive | Comment l'éviter |
|---------|----------------|--------------|
| Les lignes RETRACT incluent une valeur | Erreur de modèle, valeur non effacée | Laissez toujours la valeur et la devise vides pour RETRACT |
| Nom de conversion non concordant | Le nom dans le fichier ne correspond pas exactement à Google Ads | Copiez-collez depuis Google Ads, ne tapez jamais manuellement |
| Ajustements uploadés trop tard | Le traitement par lots s'exécute rarement | Mettez en place des uploads programmés quotidiens ou hebdomadaires |
| Transaction IDs manquants | La conversion d'origine n'a pas envoyé de transaction ID | Corrigez d'abord la déduplication (SOP_28), puis les ajustements fonctionneront |
