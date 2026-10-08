---
name: impulsion-site-vitrine
description: "Crée un vrai site vitrine de Media Buyer freelance sous WordPress avec Claude Code : plusieurs pages (accueil, une page par service, contact, pages légales), textes optimisés pour le référencement et tracking en place. Skill interactif : toutes les questions sont posées via des prompts interactifs (popups AskUserQuestion), en plusieurs vagues. Étapes avec validation : intake infos légales et services, choix du nombre de maquettes HTML de design (2 à 5, vraies pages à ouvrir dans le navigateur) à valider AVANT tout déploiement, montage du site (stack Kadence + Rank Math, moins de 8 extensions, conteneur GTM), puis relecture ordinateur et mobile. Use when user says crée mon site, créer mon site vitrine, site media buyer, monte mon site WordPress, site freelance, showcase site, build my website."
argument-hint: "[optionnel : nom de marque ou services, ex. Google Ads + Meta Ads]"
license: MIT (skill base) + impulsion.com (corpus content)
---

# impulsion-site-vitrine : Créer un site vitrine de Media Buyer avec Claude Code

> Source dans le corpus : `02-site-web/construction/Construction - Créer un site vitrine de Media Buyer avec Claude Code.md` (SOP).
> Objectif : passer d'un hébergement vide à un site vitrine complet, propre et référençable, sous WordPress, en pilotant Claude Code.

Ce n'est **pas** une simple landing page, mais un site complet (plusieurs pages) qui présente une activité de Media Buyer freelance.

---

## Règle d'interaction (non négociable)

**Toutes les questions à l'utilisateur passent par l'outil `AskUserQuestion` (prompt interactif / popup). Jamais de questions tapées en texte dans le chat, jamais de liste numérotée à laquelle il faudrait répondre au clavier.**

- Regroupe les questions en **vagues de 4 maximum** (limite de l'outil). Plusieurs vagues sont attendues : ne cherche pas à tout caser en une fois.
- Chaque question a **2 à 4 options** pertinentes. Pour un **champ à saisie libre** (nom commercial, SIRET, adresse, email, hébergeur), pose quand même la question en popup : propose des options utiles quand elles existent, et l'utilisateur saisit la valeur exacte via l'entrée **« Autre »** (toujours disponible). Ne demande jamais ces infos en texte dans le chat.
- Si l'utilisateur a déjà donné une info dans son message de départ, **pré-remplis** et ne la redemande pas.
- N'avance à la vague suivante qu'une fois la vague en cours répondue.

---

## Étape 0 : Prérequis (popup de contrôle)

Avant l'intake, vérifie les prérequis avec **un premier `AskUserQuestion`** (multiSelect) :

- Question `Prérequis` (multiSelect) : « Qu'avez-vous déjà de prêt ? » - options : **Hébergement configuré** (Claude peut s'y connecter) · **Design system** (couleurs, typo, ton) · **Infos légales** (SIRET, adresse, hébergeur) · **Rien encore, on verra au fil de l'eau**.

Si l'**hébergement** n'est pas prêt, signale-le et propose de traiter d'abord la config hébergement (SOP / leçon « Configurer son hébergement ») avant de continuer. Le reste peut se compléter pendant l'intake.

---

## Étape 1 : Intake (2 vagues de popups)

### Vague 1 - Identité & structure juridique (`AskUserQuestion`, 4 questions)

1. `Marque` : « Nom commercial (ou marque) de votre activité ? » - options : *Mon nom / prénom* · *Un nom de marque dédié*. → l'utilisateur saisit le nom exact via « Autre ».
2. `Statut` : « Votre forme juridique ? » - options : *Micro-entreprise* · *Entreprise individuelle (EI)* · *EURL* · *SASU*.
3. `SIRET` : « Votre numéro SIRET ? » - options : *Je le saisis maintenant* (→ via « Autre ») · *Je le donnerai plus tard*.
4. `Contact` : « Adresse du siège + email de contact ? » - options : *Je les saisis maintenant* (→ via « Autre ») · *Plus tard*.

### Vague 2 - Offre, hébergeur & design (`AskUserQuestion`, 4 questions)

1. `Raison sociale` : « Raison sociale exacte ? » - options : *Identique à mon nom (micro / EI)* · *Autre* (saisie).
2. `Hébergeur` : « Nom de votre hébergeur ? (pour les mentions légales) » - options : *Hostinger* · *o2switch* · *OVH* · *Autre*.
3. `Services` (multiSelect) : « Quels services proposez-vous ? (une page par service) » - options : *Google Ads* · *Meta Ads* · *TikTok Ads* · *Tracking & mesure*. (« Autre » pour en ajouter.)
4. `Design` : « Avez-vous un design system ? » - options : *Oui, j'ai un lien à donner* · *Non, je décris mes préférences*.

### Vague 2 bis - Préférences visuelles (seulement si « pas de design system »)

Si la réponse `Design` = « Non », enchaîne un `AskUserQuestion` (3 questions) :
- `Ambiance` : *Sobre & pro* · *Moderne & tech* · *Chaleureux & humain* · *Premium & épuré*.
- `Couleur` : *Bleu / confiance* · *Vert / croissance* · *Noir & blanc* · *Autre*.
- `Typo` : *Sans-serif nette (Inter, Manrope)* · *Serif éditoriale* · *Mix serif titres + sans corps* · *Peu importe*.

Si un champ critique reste vide (infos légales, services, direction visuelle), repose-le en popup avant de continuer.

---

## Étape 2 : Le design d'abord (maquettes HTML réelles, validation obligatoire)

### 2a - Combien de directions ? (popup, AVANT de générer)

Avant de créer quoi que ce soit, demande via **`AskUserQuestion`** combien de directions de design l'utilisateur veut comparer, en le **prévenant que plus de versions = plus de temps** : chaque maquette est une page HTML complète à produire, donc plus de versions = génération plus longue.

- Question `Nombre de designs` : « Combien de directions de design voulez-vous comparer avant de lancer le site ? »
  - *2 - le plus rapide* : deux styles, pour aller vite.
  - *3 - bon compromis* : trois styles distincts.
  - *5 - éventail large* : cinq styles vraiment différents ; le plus de choix, mais le plus long à obtenir.
  - (« Autre » pour un autre nombre.)

Retiens ce nombre = **N** pour la suite.

### 2b - Générer N maquettes HTML

Crée **N directions de design nettement différentes** et, pour chacune, **une vraie page HTML** de la page d'accueil. **Pas une description en texte, pas un schéma ASCII** : N **fichiers HTML autonomes et affichables** que l'utilisateur ouvre dans son navigateur pour comparer pour de vrai.

**Règles pour ces maquettes :**
- **N fichiers HTML** (ex. `maquettes/direction-a.html`, `-b.html`, …), **un par direction**, chacun montrant la page d'accueil du site.
- **Autonomes, rien à installer** : HTML + CSS **inline** dans le fichier, **aucune dépendance externe** (pas de framework, pas de build, **aucun WordPress**, pas d'appel réseau). L'utilisateur les ouvre en double-cliquant (`file://`).
- **Vraiment différentes** entre elles, pas des variantes de la même page : chaque direction a **son propre parti pris** (mise en page, ambiance, typographie, palette, structure des sections). Vise des **univers distincts** - par exemple minimaliste épuré, éditorial / magazine, corporate sobre, agence créative audacieuse, sombre / tech. **Pas juste une couleur d'accent qui change.**
- **Contenu réaliste** tiré du contexte (marque, services = sections), pas du lorem ipsum vide.
- **Responsive** (lisibles sur mobile).
- Ce sont des **maquettes visuelles jetables**, uniquement pour choisir la direction : **rien n'est déployé, rien n'est monté** à ce stade.

### 2c - Choisir (popup)

Présente les N fichiers (leurs chemins), invite à les **ouvrir dans le navigateur** pour comparer, puis fais choisir via **`AskUserQuestion`** (single-select).

- ⚠️ L'outil plafonne à **4 options** par question. Si N ≤ 4, mets chaque direction en option (avec un court descriptif en `preview`). Si N = 5, mets 4 directions en options **+ l'option « Autre »** pour la 5e, un ajustement ou un mélange.
- **Ne construis le vrai site (étape 3) qu'après validation d'une direction.** Comparer avant de s'engager évite de refaire un site déjà monté.

---

## Étape 3 : Créer le site (après validation du design)

- **Thème léger et rapide** : installe **Kadence** (avec l'éditeur Gutenberg et les blocs Kadence), bon choix pour un site léger.
- **Pages** : Accueil, une page par service, Contact (avec formulaire), et les pages légales (mentions légales, politique de confidentialité, conditions générales de vente) rédigées à partir des informations collectées.
- **Textes** : clairs, orientés prise de contact, optimisés pour le référencement (titres, meta descriptions, structure Hn, balises alt, maillage interne).
- **Extensions essentielles, en restant simple au départ** : sécurité, formulaire de contact et référencement (SEO). Recommandation SEO : **Rank Math** (efficace même en version gratuite : suivi des 404, redirections, données structurées).
- **Cache : pas nécessaire au lancement dans la plupart des cas.** Beaucoup d'hébergeurs gèrent déjà le cache côté serveur (Hostinger tourne sur LiteSpeed). Si le site a besoin d'être accéléré plus tard, ajouter **LiteSpeed Cache** (gratuit, idéal sur un hébergement LiteSpeed). Principe : **pas plus de 8 extensions**, et on n'ajoute que si le besoin est réel.
- **RGPD et tracking** : le suivi et le bandeau cookies passent par **Google Tag Manager**. Prévois l'insertion du conteneur GTM dans l'en-tête du site (l'utilisateur fournit le code ; au besoin, demande-le via un `AskUserQuestion` : *Je colle le code GTM* / *Je le mettrai plus tard*).

---

## Étape 4 : Livrer et relire

- Donne l'**URL** du site et un **récapitulatif** des pages créées.
- Fais une **première relecture** (cohérence, liens, fautes, bases du référencement) et liste ce qui mériterait d'être ajusté.
- Rappelle de **vérifier le rendu sur ordinateur ET sur mobile** avant de considérer le site comme terminé.

---

## Stack recommandé

| Rôle | Outil conseillé | Pourquoi |
|---|---|---|
| **Thème** | **Kadence** (gratuit, + blocs Kadence sur Gutenberg) | Site le plus léger et rapide possible. |
| **Référencement** | **Rank Math** (gratuit) | Efficace même en version gratuite : suivi des 404, redirections, données structurées / schemas. |
| **Tracking / RGPD** | **Google Tag Manager** | Conteneur GTM dans l'en-tête ; sert au suivi et au bandeau cookies. |

**Rester simple au lancement.** Le stack de départ est volontairement minimal et **100 % gratuit** (Kadence + Rank Math + GTM). **Le cache n'est pas nécessaire au début** : l'hébergeur le gère souvent côté serveur (Hostinger tourne sur LiteSpeed). Si le site doit être accéléré plus tard, ajouter **LiteSpeed Cache** (gratuit, idéal sur un hébergement LiteSpeed). On ajoute une extension seulement quand le besoin est réel.

---

## Bon à savoir

- **Le design se valide avant le déploiement.** Les maquettes HTML (nombre au choix, ouvertes dans le navigateur, choix en popup) servent à comparer de vraies directions avant de s'engager. Plus de versions = plus de temps de génération.
- **Un thème léger** garde le site rapide. L'optimisation fine de la vitesse (PageSpeed, Core Web Vitals) fait l'objet d'une étape dédiée, une fois le site en ligne.
- **Le tracking** (récupérer le conteneur GTM et le donner à Claude) est traité en détail dans la SOP / leçon tracking. Ici, on se contente de l'insérer.
- **Rester sobre en extensions** : au-delà de 8 extensions, le site ralentit et la surface à surveiller grandit.
