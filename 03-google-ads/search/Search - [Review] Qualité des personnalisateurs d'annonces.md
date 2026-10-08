# Qualité des personnalisateurs d'annonces

> **Plateforme :** Google Ads
> **Catégorie :** Search
> **Type :** Checklist
> **Mis à jour :** 2026-05-07

## Objectif

Valide que les personnalisateurs d'annonces sont correctement configurés, s'affichent correctement et ne créent pas de risques de politique ou de marque.

---

## Ce que cette checklist valide

Cette checklist confirme :

- La configuration et la syntaxe sont correctes
- L'intégrité des données du flux (personnalisateurs dynamiques)
- La complétude de la couverture des valeurs
- Le comportement de rendu sur différents keywords
- La conformité aux politiques et à la marque

Cette checklist ne couvre **PAS** :

- L'implémentation des personnalisateurs
    - Voir : [SOP - Configurer les personnalisateurs au niveau mot-cle](<Search - Configurer les personnalisateurs au niveau keyword.md>)
    - Voir : [SOP - Configurer les personnalisateurs dynamiques d'annonces](<Search - Configurer les personnalisateurs d'annonces dynamiques.md>)
- L'explication des types de personnalisateurs et cas d'usage (Voir : [Dynamic Text Reference](<Search - Texte dynamique.md>))
- Les recommandations stratégiques sur quand utiliser les personnalisateurs

---

## Quand l'utiliser

Exécuter cette checklist :

- Après la configuration initiale des personnalisateurs, avant le lancement
- Après l'upload ou la mise à jour des données du flux
- Lors du dépannage de problèmes d'affichage des personnalisateurs
- Lors de l'audit de RSAs existantes utilisant des personnalisateurs

---

## Checklist

### Configuration et syntaxe

- [ ]  Attributs créés dans Business Data avec les bons types de données
- [ ]  Noms d'attributs cohérents entre Business Data et la syntaxe RSA
- [ ]  Syntaxe correcte : `{CUSTOMIZER.NomAttribut:Defaut}`
- [ ]  Le texte par défaut est un texte autonome de qualité (pas générique)
- [ ]  Le nombre total de caractères (statique + valeur la plus longue) ≤ limite (30/90)

### Intégrité du flux (personnalisateurs dynamiques)

- [ ]  Les lignes d'attributs précèdent les lignes de valeurs dans le flux
- [ ]  Les keywords n'ont pas de crochets (`table chene` et non `[table chene]`)
- [ ]  Les valeurs de prix incluent le symbole de devise (`899€` et non `899`)
- [ ]  Les valeurs en pourcentage incluent le symbole % (`25%` et non `25`)
- [ ]  Les noms de campagne/ad group/keyword correspondent exactement (sensible à la casse)

### Couverture des valeurs

- [ ]  Tous les keywords ont des valeurs assignées (pas de défauts involontaires)
- [ ]  Aucune cellule vide là où des valeurs sont attendues
- [ ]  Les valeurs ont une longueur appropriée (pas de troncature)

### Vérification du rendu

- [ ]  Testé sur 5+ keywords dans Aperçu et diagnostic des annonces
- [ ]  Les bonnes valeurs dynamiques apparaissent (pas les défauts)
- [ ]  Le formatage prix/pourcentage s'affiche correctement
- [ ]  Aucune troncature, débordement ou grammaire cassée
- [ ]  L'annonce se lit naturellement sur plusieurs variations de keywords

### Comportement par défaut

- [ ]  Les défauts n'apparaissent que quand c'est attendu (scénarios non ciblés)
- [ ]  Les défauts ne créent pas de texte maladroit ou générique
- [ ]  Les défauts ne violent pas les directives de marque

### Politique et sécurité de la marque

- [ ]  Aucune affirmation non vérifiable (rareté artificielle, promotions trompeuses)
- [ ]  Aucun terme réglementé sans vérification de conformité
- [ ]  Les affirmations de prix/remise correspondent à la Landing Page
- [ ]  Les affirmations de disponibilité sont basées sur des données d'inventaire réelles

### Automatisation (si synchronisation programmée)

- [ ]  Upload programmé configuré et en fonctionnement
- [ ]  Données source précises et à jour
- [ ]  Fréquence de synchronisation appropriée au rythme de changement des données

---

## Référence rapide

| Document | Relation |
| --- | --- |
| [Dynamic Text Reference](<Search - Texte dynamique.md>) | Syntaxe pour DKI, personnalisateurs, fonctions |
| [SOP - Rediger des RSA performantes](<Search - Rédiger des RSA performantes.md>) | Workflow de création RSA |
| [Headline Quality Checklist](<Search - [Review] Qualité des titres.md>) | Valide les titres y compris les défauts DKI |
