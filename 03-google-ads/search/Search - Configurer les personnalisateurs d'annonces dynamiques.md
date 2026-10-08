# Configurer les personnalisateurs dynamiques d'annonces

> **Plateforme :** Google Ads
> **Catégorie :** Search
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Exécution

### Phase 1️⃣: Planifier les attributs

1. Identifiez quelles valeurs doivent être dynamiques
2. Sélectionnez les attributs dans le [Dynamic Ad Customizer Attribute Catalog](<Search - Attributs de personnalisation dynamique.md>)
3. Décidez du niveau de ciblage (compte, campagne, ad group ou mot-clé)
4. Mappez les champs de votre source de données aux attributs

> 💡 **Commencez petit :** Sélectionnez une campagne ou un ad group avec ~10 mots-clés pour votre premier flux. Faites tout fonctionner avant de scaler.

---

### Phase 2️⃣: Construire le flux

#### Option 1 : Manuellement

1. Créez un CSV en utilisant les colonnes montrées dans la structure ci-dessous
2. Remplissez-le avec vos valeurs

**Modèle de flux Ad Customizer — colonnes :**

`Attribute` · `Data type` · `Account value` · `Campaign` · `Ad group` · `Keyword` · une colonne `Customizer:<Name>` par personnalisateur (voir **Exemple de structure** ci-dessous).

**Exemple de structure :**

| **Attribute** | **Data type** | **Account value** | **Campaign** | **Ad group** | **Keyword** | **Customizer:ProductName** | **Customizer:Price** |
| --- | --- | --- | --- | --- | --- | --- | --- |
| ProductName | Text | Our Products |  |  |  |  |  |
| Price | Price |  |  |  |  |  |  |
|  |  |  | Search - Furniture | Dining Tables | oak dining table | Oak Dining Table | €899 |
|  |  |  | Search - Furniture | Dining Tables | walnut dining table | Walnut Dining Table | €1,199 |

#### Option 2 : Outil de gestion de flux (Channable, etc.)

1. Connectez l'outil à votre source de données (Shopify, WooCommerce, ERP)
2. Configurez les règles de transformation
3. Exportez vers Google Sheets ou CSV
    1. Téléversez d'abord manuellement pour débuguer
    2. Configurez un téléversement planifié dans Google Ads (si nécessaire) en phase 7

---

### Phase 3️⃣ : Téléverser et vérifier

1. Allez dans **Tools & Settings** → **Bulk Actions** → **Uploads**
2. Cliquez sur **+** → sélectionnez votre fichier
3. Cliquez sur **Preview**. Vérifiez :
    - Le nombre d'attributs est correct
    - Les types de données sont reconnus
    - Aucune erreur
4. Cliquez sur **Apply**

---

### Phase 4️⃣: Ajouter les personnalisateurs à la RSA

1. Ouvrez votre RSA
2. Dans un titre/une description, tapez `{`
3. Sélectionnez **Ad customizer** → sélectionnez l'attribut → saisissez la valeur par défaut
4. Appliquez

**Syntaxe :** `{CUSTOMIZER.AttributeName:Default Text}`

**Exemple :** `{CUSTOMIZER.diy_houten_deur}`  L'Ad Customizer affiche le prix le plus bas de cette catégorie de produits

---

### Phase 5️⃣ : Validation

1. Allez dans **Tools & Settings** → **Ad Preview and Diagnosis**
2. Testez des mots-clés de votre flux
3. Vérifiez :
    - Les bonnes valeurs s'affichent
    - Le formatage des prix est correct
    - Les valeurs par défaut n'apparaissent que quand prévu
4. Passez la [Ad Customizer Quality Checklist](<Search - [Review] Qualité des personnalisateurs d'annonces.md>)

---

### Phase 6️⃣: Scaler (après validation)

Une fois que votre flux minimal viable fonctionne correctement :

1. Étendez le flux pour inclure des campagnes/ad groups supplémentaires
2. Ajoutez les mots-clés restants
3. Relancez la validation sur un échantillon de nouvelles entrées
4. Continuez vers l'automatisation (le cas échéant)

---

### Phase 7️⃣: Configurer l'automatisation (si nécessaire)

**Synchronisation planifiée Google Sheets :**

1. Créez un Google Sheet ou un CSV avec les données de votre flux
2. Allez dans **Tools & Settings** → **Bulk Actions** → **Uploads** → **Schedules**
3. Cliquez sur **+** → sélectionnez Google Sheets → sélectionnez votre feuille de calcul
4. Réglez la fréquence (quotidienne recommandée) et l'heure
5. Enregistrez

---

### Critères de complétion

- [ ]  Attributs créés avec les bons types de données
- [ ]  Flux téléversé sans erreurs
- [ ]  RSA mise à jour avec la syntaxe des personnalisateurs
- [ ]  5+ mots-clés testés dans Ad Preview : bonnes valeurs + formatage
- [ ]  Synchronisation planifiée active (le cas échéant)
- [ ]  [Ad Customizer Quality Checklist](<Search - [Review] Qualité des personnalisateurs d'annonces.md>) réussie

---

### Passerelle de sortie

| **Prochaine étape** | **Quand** |
| --- | --- |
| Vérifier que la synchronisation tourne | Quotidien (première semaine) |
| Surveiller les refus | En continu |
| Scaler vers des campagnes/ad groups supplémentaires | Après la réussite de la validation |
| Continuer vers [SOP - Test RSA avec la boucle d'iteration](<Search - Test RSA avec la boucle d'itération.md>)  | Quand la RSA est en ligne + stable |

---

### Hygiène continue (pas un doc séparé)

- **Quotidien (première semaine) :** vérifiez que le téléversement planifié s'est exécuté
- **Hebdomadaire :** contrôlez par sondage 3-5 mots-clés dans Ad Preview
- **Quand les prix changent :** vérifiez que le flux s'est bien mis à jour
- **Quand des promotions démarrent/se terminent :** mettez à jour le flux, vérifiez le résultat

---

### FAQ

**Q : À quelle fréquence mon flux doit-il se mettre à jour ?**

R : Cela dépend de la volatilité de vos données. Une fréquence quotidienne suffit pour la plupart des comptes Ecommerce. Si les prix changent plusieurs fois par jour ou si vous avez des ventes flash, envisagez des mises à jour horaires via un outil de gestion de flux.

**Q : Que se passe-t-il si le téléversement de mon flux échoue ?**

R : Vos RSA continuent d'afficher les dernières valeurs téléversées avec succès. Google ne revient pas aux valeurs par défaut en cas d'échec de téléversement : il conserve les données précédentes. Consultez **Tools & Settings → Bulk Actions → Uploads** pour les journaux d'erreurs.

**Q : Puis-je utiliser du texte plutôt que le type de données Price ?**

R : Oui. Utiliser Text vous donne plus de contrôle sur le formatage. Au lieu de `{CUSTOMIZER.Price:€99}` avec le type Price, utilisez `€ {CUSTOMIZER.Price:99}` avec le type Text. Cela vous permet de contrôler le placement du symbole monétaire et l'espacement.

**Q : Mes prix s'affichent avec un mauvais formatage. Pourquoi ?**

R : Si vous utilisez le type de données Price, assurez-vous que les valeurs incluent les symboles monétaires (€89.99 et non 89.99). Si le formatage est toujours incorrect, passez au type de données Text et gérez le formatage dans votre syntaxe RSA.

**Q : Comment gérer les produits en rupture de stock ?**

R : Deux options : (1) supprimez la ligne de votre flux (les valeurs par défaut s'afficheront), ou (2) mettez à jour l'attribut StockStatus avec un message du type « Back Soon » et mettez en pause les mots-clés des produits en rupture de stock.

**Q : Puis-je cibler le même mot-clé avec des valeurs différentes dans des campagnes différentes ?**

R : Oui. Utilisez les colonnes Campaign et Ad Group de votre flux pour préciser où chaque valeur s'applique. Un mot-clé peut avoir des prix différents dans des campagnes différentes.

**Q : Quelle est la différence entre Account value et les valeurs au niveau mot-clé ?**

R : Account value est la valeur de repli universelle : elle s'affiche lorsqu'aucune valeur plus spécifique n'existe. Les valeurs au niveau mot-clé remplacent les valeurs de compte pour ce mot-clé précis. Les valeurs Campaign et Ad Group se situent entre les deux.

---

### Documents liés

| **Document** | **Type** | **Utilisé dans** |
| --- | --- | --- |
| [Dynamic Ad Customizer Attribute Catalog](<Search - Attributs de personnalisation dynamique.md>) | Catalogue | Phase 1 |
| [Ad Customizer Quality Checklist](<Search - [Review] Qualité des personnalisateurs d'annonces.md>) | Checklist | Phase 5 |
| [Dynamic Text Reference](<Search - Texte dynamique.md>)  | Référence | Contexte Phase 4 |
| [SOP - Configurer les personnalisateurs au niveau mot-cle](<Search - Configurer les personnalisateurs au niveau keyword.md>) | SOP | Si vous utilisez aussi les personnalisateurs au niveau mot-clé |
