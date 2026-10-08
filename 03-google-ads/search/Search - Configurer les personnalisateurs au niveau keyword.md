# Configurer les personnalisateurs au niveau mot-cle

> **Plateforme :** Google Ads
> **Catégorie :** Search
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Exécution

### Phase 1️⃣: Planifier les attributs

1. Passez en revue votre liste de mots-clés
2. Identifiez les schémas de variation (singulier/pluriel, descripteurs, synonymes)
3. Sélectionnez les attributs dans le [Keyword Ad Customizer Attribute Catalog](<Search - Attributs de personnalisation par mot-cle.md>)
4. Mappez les valeurs aux mots-clés dans un tableur avant de les saisir

**Ensemble d'attributs typique :**

| **Attribut** | **Objectif** | **Exemples de valeurs** |
| --- | --- | --- |
| KeywordSingular | Forme singulière du mot-clé principal | dining table, plumber |
| KeywordPlural | Forme plurielle du mot-clé principal | dining tables, plumbers |
| FullKeywordSingular | Expression complète du mot-clé (singulier) | oak dining table, emergency plumber |
| FullKeywordPlural | Expression complète du mot-clé (pluriel) | oak dining tables, emergency plumbers |

**Attributs spécifiques au vertical (à ajouter au besoin) :**

| **Vertical** | **Attribut supplémentaire** | **Objectif** | **Exemples de valeurs** |
| --- | --- | --- | --- |
| Ecommerce | Material | Type de matériau | oak, marble, walnut |
| Ecommerce | Modifier | Modificateur de style/caractéristique | round, extendable |
| Services | Descriptor | Modificateur de service | emergency, 24 hour, same-day |

> 💡 **Commencez simple :** Les quatre attributs de base couvrent 80 % des cas d'usage. N'ajoutez des attributs spécifiques au vertical que lorsque vos variations de mots-clés l'exigent.

---

### Phase 2️⃣: Créer les attributs dans Business Data

1. Allez dans **Tools & Settings** → **Business Data** → **Ad customizer attributes**
2. Cliquez sur **+**
3. Pour chaque attribut :
    - Saisissez le nom (ex : « KeywordSingular »)
    - Sélectionnez le type de données : **Text**
    - Laissez Account value vide (les valeurs par défaut sont définies dans la RSA)
4. Cliquez sur **Create**

---

### Phase 3️⃣: Attribuer les valeurs au niveau mot-clé

1. Allez dans la vue **Keywords** de votre ad group cible
2. Cliquez sur l'icône **Columns** → développez **Ad customizer attributes** → cochez vos attributs → **Apply**
3. Pour chaque mot-clé :
    - Cliquez sur la cellule sous la colonne de l'attribut
    - Sélectionnez **« Use custom value »**
    - Saisissez la valeur pour ce mot-clé
    - Cliquez sur **Save**
4. Répétez pour tous les mots-clés et tous les attributs

> 💡 **Travaillez systématiquement :** Complétez une colonne d'attribut pour tous les mots-clés avant de passer à la suivante. Cela réduit les erreurs et accélère le processus.

---

### Phase 4️⃣: Ajouter les personnalisateurs à la RSA

1. Ouvrez votre RSA
2. Dans un titre/une description, tapez `{`
3. Sélectionnez **Ad customizer** → sélectionnez l'attribut → saisissez la valeur par défaut
4. Appliquez

**Syntaxe :** `{CUSTOMIZER.AttributeName:Default Text}`

> ⚠️ **Le texte par défaut est critique :** Le défaut s'affiche lorsqu'aucune valeur au niveau mot-clé n'existe. Il doit se lire naturellement et être grammaticalement correct dans chaque position où il est utilisé.

---

### Phase 5️⃣ : Validation

1. Allez dans **Tools & Settings** → **Ad Preview and Diagnosis**
2. Testez 5-10 mots-clés de votre liste
3. Vérifiez que les bonnes valeurs s'affichent (pas les valeurs par défaut)
4. Passez la [Ad Customizer Quality Checklist](<Search - [Review] Qualité des personnalisateurs d'annonces.md>)

---

### Critères de complétion

- [ ]  Attributs créés dans Business Data
- [ ]  Valeurs attribuées à tous les mots-clés
- [ ]  RSA mise à jour avec la syntaxe des personnalisateurs
- [ ]  5+ mots-clés testés dans Ad Preview : bonnes valeurs affichées
- [ ]  Les valeurs par défaut n'apparaissent que quand prévu
- [ ]  [Ad Customizer Quality Checklist](<Search - [Review] Qualité des personnalisateurs d'annonces.md>) réussie

---

### Passerelle de sortie

| **Prochaine étape** | **Quand** |
| --- | --- |
| Surveiller l'impact sur l'Ad Relevance | 7-14 jours |
| Ajouter les valeurs pour les nouveaux mots-clés | Quand des mots-clés sont ajoutés |
| Continuer vers [SOP - Test RSA avec la boucle d'iteration](<Search - Test RSA avec la boucle d'itération.md>) | Quand la RSA est en ligne + stable |

---

### Hygiène continue (pas un doc séparé)

- **En ajoutant de nouveaux mots-clés :** attribuez immédiatement les valeurs Ad Customizer
- **Mensuel :** contrôlez par sondage 5 mots-clés dans Ad Preview
- **En cas de restructuration des campagnes :** vérifiez que les noms de ciblage correspondent toujours

---

### FAQ

**Q : En quoi est-ce différent de l'insertion dynamique de mots-clés (DKI) standard ?**

R : Le DKI insère le mot-clé exactement tel qu'il existe dans votre compte. Les personnalisateurs au niveau mot-clé vous permettent de contrôler la *forme* de ce mot-clé (singulier vs. pluriel, avec ou sans descripteurs, etc.). Utilisez le DKI quand vos mots-clés se lisent déjà bien dans les annonces. Utilisez les personnalisateurs quand vous avez besoin d'un contrôle granulaire.

**Q : Dois-je définir des valeurs pour chaque mot-clé ?**

R : Oui. Tout mot-clé sans valeur affichera le texte par défaut de votre syntaxe RSA. Si vous avez 50 mots-clés et ne définissez de valeurs que pour 30, les 20 autres afficheront les valeurs par défaut. Ce n'est pas forcément mauvais, mais assurez-vous simplement que vos valeurs par défaut fonctionnent.

**Q : Que se passe-t-il quand j'ajoute de nouveaux mots-clés ?**

R : Les nouveaux mots-clés afficheront le texte par défaut jusqu'à ce que vous leur attribuiez des valeurs de personnalisateur. Prenez l'habitude : en ajoutant des mots-clés, attribuez immédiatement les valeurs de personnalisateur.

**Q : Puis-je l'utiliser en parallèle des Dynamic Ad Customizers (flux de prix/promo) ?**

R : Oui. Ils servent des objectifs différents. Les personnalisateurs au niveau mot-clé gèrent la pertinence (singulier/pluriel, descripteurs). Les personnalisateurs dynamiques gèrent les données changeantes (prix, inventaire, promotions). De nombreux comptes Ecommerce utilisent les deux.

**Q : Mes valeurs ne s'affichent pas dans Ad Preview. Quel est le problème ?**

R : Vérifiez trois choses : (1) le nom de l'attribut dans votre RSA correspond exactement (sensible à la casse), (2) le mot-clé que vous prévisualisez a bien une valeur attribuée, (3) il n'y a pas de dépassement de limite de caractères forçant l'affichage de la valeur par défaut.

**Q : Comment gérer les mots-clés avec différents types de correspondance ?**

R : Les valeurs de personnalisateur sont attribuées au mot-clé, pas au type de correspondance. Si vous avez « running shoes » à la fois en requête large et en mot-clé exact, vous devriez ajouter des valeurs de personnalisateur pour les mots-clés.

---

### Documents liés

| **Document** | **Type** | **Utilisé dans** |
| --- | --- | --- |
| [Keyword Ad Customizer Attribute Catalog](<Search - Attributs de personnalisation par mot-cle.md>) | Catalogue | Phase 1 |
| [Ad Customizer Quality Checklist](<Search - [Review] Qualité des personnalisateurs d'annonces.md>) | Checklist | Phase 5 |
| [Dynamic Text Reference](<Search - Texte dynamique.md>) | Référence | Contexte Phase 4 |
| [SOP - Configurer les personnalisateurs dynamiques d'annonces](<Search - Configurer les personnalisateurs d'annonces dynamiques.md>) | SOP | Si vous utilisez aussi les personnalisateurs prix/promo |
