# Créer un site vitrine de Media Buyer avec Claude Code

> **Plateforme :** Site Web
> **Catégorie :** Construction
> **Type :** SOP
> **Mis à jour :** 2026-07-15

## Objectif

Cette SOP fournit un **prompt prêt à copier-coller** pour créer, avec Claude Code, un vrai site vitrine de Media Buyer freelance sous WordPress : plusieurs pages (accueil, une page par service, contact, pages légales), textes optimisés pour le référencement et tracking en place. Ce n'est pas une simple landing page, mais un site complet qui présente votre activité.

> ❓ **La question clé :** Comment passer d'un hébergement vide à un site vitrine complet, propre et référençable, en pilotant Claude Code plutôt qu'en tout faisant à la main ?

## Prérequis

- L'hébergement est **déjà configuré** (voir la SOP hébergement / la leçon « Configurer son hébergement »). Claude Code peut se connecter au serveur.
- Vous avez idéalement un **design system** défini au préalable (couleurs, typographies, ton). Il sert de guide visuel. À défaut, décrivez vos préférences dans le prompt.
- Vous avez sous la main les **informations légales** de votre entreprise (raison sociale, forme juridique, SIRET, adresse, email de contact, hébergeur).

## Comment l'utiliser

1. Ouvrez Claude Code dans le dossier de travail de votre site.
2. Copiez-collez le prompt ci-dessous.
3. Répondez aux questions que Claude vous pose (infos légales, services, design).
4. **Choisissez le nombre de maquettes** (Claude vous prévient que plus de versions = plus long), comparez-les dans votre navigateur, puis validez une direction avant tout déploiement.
5. Laissez Claude créer le site, puis relisez le résultat sur ordinateur et sur mobile.

## Le prompt

```
Tu es mon assistant pour créer mon site vitrine de Media Buyer freelance sous
WordPress, sur mon hébergement déjà configuré. On va procéder par étapes et tu
attends toujours ma validation avant de déployer.

ÉTAPE 1 - Poser le cadre. Pose-moi ces questions une par une et attends mes
réponses avant de continuer :
1. Le nom commercial (ou la marque) de mon activité.
2. Ma raison sociale et ma forme juridique (ex. micro-entreprise, EI).
3. Mon numéro SIRET.
4. Mon adresse (siège) et mon email de contact.
5. Le nom de mon hébergeur (pour les mentions légales).
6. Les services que je propose (ex. Google Ads, Meta Ads, tracking) : ce sera
   une page par service.
7. Le lien vers mon design system (ou, à défaut, mes préférences de couleurs,
   de typographie et de ton).

ÉTAPE 2 - Le design d'abord, en maquettes HTML. D'abord, demande-moi combien de
directions de design je veux comparer (2, 3 ou 5), en me prévenant que plus de
versions = plus de temps pour les obtenir. Ensuite, crée ce nombre de maquettes
sous forme de VRAIES pages HTML autonomes de la page d'accueil : un fichier par
direction (maquettes/direction-a.html, etc.), CSS inline, aucune dépendance,
aucun WordPress, que je peux ouvrir en double-cliquant dans mon navigateur. Des
styles VRAIMENT différents (pas des variantes d'une même page), contenu réaliste
tiré de mon contexte, responsive. Donne-moi les chemins, dis-moi de les ouvrir
pour comparer, et attends que je valide une direction. Ne monte rien tant que je
n'ai pas validé le design.

ÉTAPE 3 - Créer le site (après ma validation) :
- Installe un thème léger et rapide (Kadence, avec l'éditeur Gutenberg et les
  blocs Kadence, est un bon choix pour un site léger).
- Crée les pages : Accueil, une page par service, Contact (avec formulaire de
  contact), et les pages légales (mentions légales, politique de confidentialité,
  conditions générales de vente) rédigées à partir de mes informations.
- Rédige des textes clairs, orientés prise de contact, et optimisés pour le
  référencement : titres, meta descriptions, structure Hn, balises alt et
  maillage interne.
- Installe uniquement les extensions essentielles, en restant simple au départ :
  sécurité, formulaire de contact et référencement (SEO). Pour le SEO, Rank Math
  (efficace même en version gratuite : suivi des 404, redirections, données
  structurées). Pas besoin d'extension de cache au lancement : mon hébergeur gère
  souvent le cache côté serveur (Hostinger tourne sur LiteSpeed) ; si le site doit
  être accéléré plus tard, on ajoutera LiteSpeed Cache (gratuit). Reste sobre :
  pas plus de 8 extensions, et seulement si le besoin est réel.
- Le suivi et le bandeau cookies (RGPD) passeront par Google Tag Manager :
  prévois l'insertion du conteneur GTM dans l'en-tête du site (je te donnerai le
  code).

ÉTAPE 4 - Livrer et relire :
- Donne-moi l'URL du site et un récapitulatif des pages créées.
- Fais une première relecture (cohérence, liens, fautes, bases du référencement)
  et liste ce qui mériterait d'être ajusté.
- Rappelle-moi de vérifier le rendu sur ordinateur ET sur mobile avant de
  considérer le site comme terminé.
```

## Bon à savoir

- **Le design se valide avant le déploiement.** Comparer plusieurs maquettes HTML (le nombre est au choix ; plus de versions = plus de temps de génération) permet de choisir une direction avant de s'engager, plutôt que de corriger un site déjà construit.
- **Un thème léger** garde le site rapide. L'optimisation fine de la vitesse (PageSpeed, Core Web Vitals) fait l'objet d'une étape dédiée, une fois le site en ligne.
- **Le tracking** (récupérer le conteneur GTM et le donner à Claude) est traité en détail dans la SOP / leçon tracking. Ici, on se contente de l'insérer.
- **Rester sobre en extensions** : au-delà de 8 extensions, le site ralentit et la surface à surveiller grandit.

## Stack recommandé

Stack de départ **minimal et 100 % gratuit** :

- **Thème : Kadence** (gratuit, + blocs Kadence sur Gutenberg) pour un site le plus léger et rapide possible.
- **Référencement : Rank Math** (gratuit), efficace même en version gratuite (suivi des 404, redirections, gestion des données structurées / schemas).
- **Tracking / RGPD : Google Tag Manager**, conteneur GTM dans l'en-tête (suivi + bandeau cookies).
- **Cache : pas nécessaire au lancement.** L'hébergeur gère souvent le cache côté serveur (Hostinger tourne sur LiteSpeed). Si le site doit être accéléré plus tard, **LiteSpeed Cache** (gratuit, idéal sur un hébergement LiteSpeed).
