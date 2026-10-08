# Performance des emplacements

> **Plateforme :** Google Ads
> **Catégorie :** Display
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Documente les types de placements, les métriques de performance, les catégories d'exclusion et les paramètres de sécurité de la marque pour les campagnes Display, Video, PMax et Demand Gen. Utilisez cette fiche pour évaluer où les annonces apparaissent et décider quels placements garder, exclure ou investiguer.

---

## Ce que couvre cette fiche / Ce qu'elle ne couvre PAS

**Cette fiche :**

- Documente les types de placements et où ils s'appliquent par type de campagne
- Définit les métriques au niveau du placement et les seuils de données minimaux pour agir
- Liste les catégories d'exclusion par défaut et les paramètres de sécurité de la marque
- Couvre les limitations du reporting de placements PMax et les canaux de placements Demand Gen
- Fournit des patterns d'exclusion automatisés pour les scripts

**Cette fiche ne couvre PAS :**

- Les méthodes de ciblage de contenu (topics, keywords) (Voir : [Content Targeting Reference](<Display - Ciblage de contenu.md>))
- La configuration du plafonnement de fréquence (Voir : [Frequency Capping Reference](<../video/Video - Plafonnement de fréquence.md>))
- Les décisions de structure de campagne (Voir : [Upper Funnel Campaign Structure Mental Model](<../strategie/Strategie - Structure de campagne haut de tunnel.md>))
- Les étapes d'exclusion de placements (couvertes dans les SOPs de campagne)

---

## Aide-mémoire : types de placements par type de campagne

| Type de placement | Où les annonces apparaissent | Types de campagne | Niveau d'exclusion |
|----------------|-----------------|----------------|-----------------|
| Sites web | Sites d'éditeurs (GDN) | Display, Demand Gen, PMax | Site individuel ou catégorie |
| Chaînes YouTube | Chaînes YouTube spécifiques | Video, Display, PMax | Chaîne individuelle |
| Vidéos YouTube | Vidéos YouTube spécifiques | Video, Display | Vidéo individuelle |
| Applications mobiles | Applications et catégories d'applications | Display, Video, Demand Gen, PMax | Application individuelle ou catégorie |
| Catégories d'applications | Catégories complètes de l'app store | Display, PMax | Niveau catégorie |

> ⚠️ **Le contrôle des placements PMax est limité :** vous pouvez voir où PMax a diffusé des impressions, mais vous ne pouvez pas cibler des placements spécifiques. Vous ne pouvez qu'ajouter des exclusions de placements au niveau du compte.

---

## Détail des types de placements

### Sites web (éditeurs GDN)

Les annonces apparaissent sur des sites web tiers à travers le Google Display Network.

| Détail | Valeur |
|--------|-------|
| Disponible dans | Display, Demand Gen, PMax |
| Précision du ciblage | Domaine individuel ou chemin URL (Display, Video). Géré par l'IA Google, pas de ciblage granulaire de placement (Demand Gen, PMax). |
| Portée de l'exclusion | Niveau ad group, campagne ou compte |
| Volume typique | Portée la plus large de tous les types de placements |

**Ce qu'il faut surveiller :**

- Sites "made-for-advertising" (MFA) qui existent uniquement pour afficher des publicités
- Domaines garés sans contenu réel
- Sites en langues étrangères non pertinents pour votre audience
- Sites avec un CTR anormalement élevé (probablement des clics accidentels ou frauduleux)

### Chaînes YouTube

Les annonces apparaissent sur toutes les vidéos d'une chaîne YouTube spécifique.

| Détail | Valeur |
|--------|-------|
| Disponible dans | Video, Display, PMax |
| Précision du ciblage | Niveau chaîne pour les campagnes Video et Display. PMax : reporting uniquement, pas de ciblage. |
| Portée de l'exclusion | Niveau campagne ou compte |
| Volume typique | Modéré (dépend de la taille de la chaîne) |

**Ce qu'il faut surveiller :**

- Chaînes avec du contenu en conflit avec votre marque
- Chaînes de contenu pour enfants (restrictions COPPA)
- Chaînes inactives avec du contenu obsolète

### Vidéos YouTube

Les annonces apparaissent sur des vidéos YouTube individuelles spécifiques.

| Détail | Valeur |
|--------|-------|
| Disponible dans | Video, Display |
| Précision du ciblage | Niveau vidéo individuelle pour les campagnes Video et Display (plus haute précision). |
| Portée de l'exclusion | Niveau campagne ou compte |
| Volume typique | Faible (trafic d'une seule vidéo) |

### Applications mobiles

Les annonces apparaissent à l'intérieur des applications mobiles.

| Détail | Valeur |
|--------|-------|
| Disponible dans | Display, Video, Demand Gen, PMax |
| Précision du ciblage | Application individuelle ou catégorie d'application (Display, Video). Géré par l'IA Google (Demand Gen, PMax). |
| Portée de l'exclusion | Niveau ad group, campagne ou compte |
| Volume typique | Très élevé (souvent la majorité des impressions Display) |

> ⚠️ **Excluez les applications mobiles par défaut :** la plupart des placements d'applications mobiles produisent des clics accidentels depuis des jeux et des applications pour enfants. Excluez toutes les catégories d'applications sauf si vous avez une raison spécifique de les inclure.

---

## Catégories d'exclusion par défaut

Ces catégories doivent être exclues de toutes les campagnes Display et Video au niveau du compte avant le lancement.

| Catégorie | Pourquoi exclure | Comment exclure |
|----------|-----------|---------------|
| Applications mobiles (toutes) | Clics accidentels de faible qualité, jeux pour enfants | Campagne > Placements > Exclusions > Catégories d'applications : toutes |
| Domaines garés | Pas de contenu réel, trafic de bots | Listes d'exclusion de placements |
| Sites "made-for-advertising" | Faible engagement, mauvaise sécurité de la marque | Listes d'exclusion de placements |
| Pages d'erreur | Pas d'intention utilisateur, impressions gaspillées | Automatique via les exclusions de contenu |

### Gestion des listes d'exclusion

| Niveau | Portée | Utiliser pour |
|-------|-------|---------|
| Compte | Toutes les campagnes | Règles de sécurité de la marque, exclusions universelles |
| Campagne | Tous les ad groups de la campagne | Mauvais performeurs spécifiques à la campagne |
| Ad group | Un seul ad group | Exclusions granulaires basées sur la performance |

> 💡 **Construisez des listes d'exclusion partagées :** créez des listes d'exclusion de placements au niveau du compte et appliquez-les à toutes les campagnes Display et Video. Ajoutez les mauvais performeurs à ces listes au fil du temps plutôt que d'exclure campagne par campagne.

---

## Paramètres de sécurité de la marque

| Paramètre | Options | Recommandation |
|---------|---------|---------------|
| Pertinence du contenu | Étendu / Standard / Limité | Standard pour la plupart, Limité pour les marques sensibles |
| Exclusions de contenu | Catégories sensibles (tragédie, conflit, etc.) | Exclure toutes les catégories sensibles |
| Labels de contenu numérique | DL-G à DL-MA | Exclure DL-MA minimum |

### Niveaux de pertinence du contenu

| Niveau | Ce qu'il inclut | Quand utiliser |
|------|-----------------|-------------|
| Étendu | Tout contenu monétisable y compris sensible | Jamais recommandé |
| Standard | Exclut la plupart des contenus sensibles | Par défaut pour la plupart des annonceurs |
| Limité | Uniquement du contenu vérifié, sûr pour la marque | Marques premium, industries réglementées |

### Labels de contenu numérique

| Label | Type de contenu | Action |
|-------|-------------|--------|
| DL-G | Tous publics | Inclure |
| DL-PG | Accompagnement parental | Inclure (vérifier pour les marques sensibles) |
| DL-T | Contenu adolescent | Vérifier selon la marque |
| DL-MA | Audiences matures | Exclure |
| Pas encore labellisé | Contenu non classifié | Exclure par précaution |

---

## Reporting des placements PMax

**Où trouver les données de placement :**
Onglet Insights > Placements (montre quels sites web, chaînes YouTube et applications ont reçu des impressions).

**Ce que PMax montre :**

| Point de donnée | Disponible | Niveau de détail |
|-----------|-----------|-----------------|
| Sites web ayant reçu des impressions | Oui | Niveau domaine |
| Chaînes YouTube ayant reçu des impressions | Oui | Niveau chaîne |
| Applications ayant reçu des impressions | Oui | Niveau application |
| Données de clics par placement | Non | Non disponible |
| Données de conversion par placement | Non | Non disponible |
| Allocation de canal (Search/Shopping/Display/Video/Gmail/Discover) | Oui | Distribution des dépenses et impressions |

**Limitations :**

- Données au niveau des impressions uniquement : vous ne pouvez pas voir les clics ou conversions par placement individuel
- Pas de ciblage de placement : vous ne pouvez pas spécifier où PMax doit diffuser
- Les exclusions sont uniquement au niveau du compte : vous ne pouvez pas exclure des placements au niveau de la campagne PMax
- Les données d'allocation de canal sont disponibles dans l'interface et via l'API

> 💡 **Utilisez des scripts pour des insights PMax plus approfondis :** le script de distribution de canaux de Mike Rhodes fournit des ventilations plus granulaires de l'allocation des dépenses entre les canaux PMax que l'interface par défaut.

### Sources de données des placements PMax

Les données de placement PMax sont accessibles via plusieurs canaux, chacun avec une profondeur différente.

| Source de données | Ce qu'elle fournit | Méthode d'accès |
|-------------|-----------------|---------------|
| Onglet Insights PMax | Sites web, chaînes, applications avec impressions (pas de clics/conversions) | Interface Google Ads |
| `performance_max_placement_view` (GAQL) | Données de placement PMax incluant nom d'affichage, type de placement, URL cible, impressions | Google Ads Scripts ou API |
| `group_content_suitability_placement_view` (GAQL) | Données de placement de pertinence de contenu pour tous les types de campagnes (y compris PMax) | Google Ads Scripts ou API |
| Listes d'exclusion au niveau du compte | Seul mécanisme d'exclusion disponible pour PMax | Interface Google Ads ou API |

> ⚠️ **L'analyse par script est essentielle pour PMax à grande échelle :** l'interface montre les placements mais ne fournit ni filtrage, ni scoring, ni signalement automatisé. Pour les comptes avec 3+ campagnes PMax, utilisez Google Ads Scripts pour extraire les données de placement via les ressources GAQL ci-dessus et appliquer des vérifications de qualité de domaine et de risque TLD de manière programmatique.

---

## Placements Demand Gen

Les campagnes Demand Gen diffusent sur YouTube, Discover et Gmail avec des placements spécifiques au format.

| Canal | Placement | Format |
|---------|-----------|--------|
| YouTube | Home feed | Image, vidéo, carrousel |
| YouTube | Watch Next | Image, vidéo |
| YouTube | Shorts | Vidéo verticale |
| YouTube | In-stream | Vidéo skippable |
| YouTube | Résultats de recherche | Image, vidéo |
| Discover | Feed Discover | Image, carrousel |
| Gmail | Onglet Promotions | Image |
| GDN | Sites d'éditeurs | Image, vidéo |

**Contrôles des placements Demand Gen :**

| Contrôle | Disponible |
|---------|-----------|
| Reporting au niveau du canal | Oui |
| Reporting au niveau du placement | Oui |
| Exclusions de placements | Niveau compte, campagne et ad group (+ listes d'exclusion de placements) |
| Opt-out de canal | Oui (sélection de canal au niveau du ad group : YouTube in-stream, YouTube in-feed, YouTube Shorts, Discover, Gmail, GDN) |
| Exclusions de contenu | Oui (sécurité de la marque standard) |

---

## Patterns d'exclusion automatisés

Utilisez ces patterns dans Google Ads Scripts ou des outils tiers pour automatiser l'hygiène des placements.

### Signaler pour exclusion

| Pattern | Seuil | Cause probable |
|---------|-----------|-------------|
| Impressions élevées, zéro clic | 1 000+ impressions, 0 clic | Trafic de bots ou emplacements publicitaires invisibles |
| CTR anormalement élevé | CTR > 10 % | Signaler pour vérification manuelle : peut indiquer des clics accidentels ou de la fraude aux clics, mais peut aussi être légitime (créatif fort, placement de niche) |
| Patterns de domaine suspects | Beaucoup de chiffres dans l'URL, URLs très longues | Réseaux publicitaires de faible qualité |
| CPA constamment élevé | CPA > 3x la moyenne de la campagne avec 100+ clics | Qualité de placement médiocre |
| Analyse de concentration TLD | Agrégez dépenses/conversions par TLD, signalez les TLDs avec zéro conversion sur 3+ domaines | Cluster TLD de faible qualité systémique |
| Scoring d'anatomie de domaine | Signalez les domaines correspondant à 2+ patterns structurels ou d'intention (voir le cadre de signaux de qualité de domaine ci-dessous) | Domaine généré programmatiquement ou MFA |
| Vérification d'autorité de chaîne YouTube | Signalez les chaînes avec un âge, pattern d'upload ou ratio d'abonnés suspect (voir le cadre de signaux de qualité YouTube ci-dessous) | Ferme de contenu ou chaîne à revenus publicitaires uniquement |
| Signal d'audience YouTube | Signalez les vidéos avec inadéquation de langue ou statut madeForKids | Mauvaise audience ou formats publicitaires restreints |

> ⚠️ **Vérifiez toujours avant d'exclure :** les signalements automatisés captent des patterns, pas du contexte. Un placement avec 0 clic peut être un nouveau site de haute qualité qui n'a pas eu assez de temps. Un placement avec un CTR élevé peut être un site de niche de qualité avec des utilisateurs engagés, pas de la fraude aux clics. N'excluez jamais automatiquement sur la base de seuils seuls : vérifiez chaque placement signalé avant de l'ajouter aux listes d'exclusion.

---

## Cadre d'évaluation des risques TLD

Les domaines de premier niveau (TLDs) portent des signaux de qualité de placement. Plutôt que de maintenir une liste statique de "mauvais" TLDs, évaluez tout TLD selon trois angles.

### Angle 1 : Économie de l'enregistrement

Le coût et la difficulté d'enregistrement d'un domaine sur un TLD détermine la barrière à l'abus. Des barrières plus faibles attirent plus de domaines jetables et de faible qualité.

| Niveau de barrière | Caractéristiques | Ce que ça signifie pour la qualité du placement |
|--------------|----------------|---------------------------------------|
| Réglementé | Exigences imposées par le registre (`.edu`, `.gov`, `.bank`, `.law`) | Risque très faible : la propriété du domaine est vérifiée par le registre |
| Standard | Coût d'enregistrement modéré (8-15 €/an) : `.com`, `.net`, `.org`, ccTLDs établis | Pas de signal inhérent : la qualité dépend entièrement du propriétaire du domaine |
| Faible barrière | gTLDs bon marché sous 5 €/an (beaucoup de gTLDs lancés après 2012) | Risque élevé : le faible coût crée une barrière minimale à la création de domaines jetables |
| Barrière quasi-nulle | Enregistrement historiquement gratuit ou quasi-gratuit (certains ccTLDs africains utilisés par les services de domaines gratuits) | Risque élevé : attire les squatteurs de domaines, les opérateurs d'arbitrage publicitaire et les sites de phishing |

### Angle 2 : Alignement de la finalité

La finalité prévue d'un TLD indique si des éditeurs légitimes sont susceptibles de l'utiliser.

| Catégorie TLD | Signal de qualité du placement |
|--------------|------------------------|
| Usage général (`.com`, `.net`, `.org`) | Neutre : évaluez le domaine, pas l'extension |
| ccTLDs géographiques pour le marché cible (`.nl`, `.de`, `.co.uk`, `.fr`, `.be`) | Équivalent à `.com` pour ce marché |
| gTLDs spécifiques à un secteur (`.shop`, `.tech`, `.health`, `.store`) | Modéré : des entreprises légitimes les utilisent, mais aussi des opérateurs à contenu mince |
| gTLDs d'action/verbe (`.click`, `.download`, `.stream`, `.bid`, `.win`, `.loan`) | Élevé : le nom du TLD implique une action utilisateur, corrèle avec l'arbitrage publicitaire et le spam |
| gTLDs vanity/nouveauté (`.xyz`, `.top`, `.space`, `.site`, `.online`, `.buzz`) | Élevé : surreprésentés dans les écosystèmes "made-for-advertising" |
| Réglementés/restreints (`.edu`, `.gov`, `.bank`) | Faible risque : vérification au niveau du registre requise pour la propriété |

### Angle 3 : Analyse de concentration TLD spécifique au compte

Les listes TLD statiques deviennent obsolètes. L'approche la plus actionnable est d'analyser vos propres données de compte.

1. Extraire le TLD de chaque URL de placement dans le compte
2. Grouper les placements par TLD
3. Calculer les dépenses totales et les conversions totales par TLD
4. Signaler tout TLD où les dépenses totales dépassent un seuil significatif ET le nombre de conversions est zéro sur 3+ domaines distincts

Cette approche s'adapte au marché de tout annonceur. Un domaine `.ru` est suspect pour un compte e-commerce néerlandais mais parfaitement normal pour un annonceur russe. Les données au niveau du compte résolvent cette ambiguïté automatiquement.

> 💡 **Pattern de script :** un script hebdomadaire qui agrège les dépenses de placement par TLD et signale les clusters TLD à zéro conversion capte du gaspillage systémique que la revue par placement manque.

---

## Cadre de signaux de qualité de domaine et d'URL

Au-delà du TLD, le nom de domaine lui-même et la structure complète de l'URL portent des signaux de qualité. Ce cadre à quatre couches évalue les domaines de placement depuis la structure de surface jusqu'aux indicateurs d'autorité plus profonds.

### Couche 1 : Patterns structurels

| Signal | Ce qu'il faut chercher | Pourquoi c'est important |
|--------|-----------------|----------------|
| Composition des caractères | Ratio consonnes/voyelles élevé, caractères non alphabétiques excessifs | Les domaines légitimes sont prononçables : les enregistrements programmatiques ne le sont pas |
| Profondeur de sous-domaine | 3+ niveaux de sous-domaine (`ads.tracker.sub.domain.com`) | Les sous-domaines profonds indiquent une infrastructure de diffusion publicitaire, pas du contenu éditorial |
| Extrêmes de longueur de domaine | SLD sous 3 ou au-dessus de 25 caractères | Les extrêmes corrèlent avec des domaines jetables ou bourrés de mots-clés |
| Patterns de caractères répétitifs | Même caractère 3+ fois consécutivement | Typosquatting ou domaines auto-générés |
| Encodage internationalisé | Le domaine utilise punycode (`xn--`) | Peut indiquer des sites internationaux légitimes ou des domaines imitateurs trompeurs |

### Couche 2 : Patterns d'intention

| Signal | Ce qu'il faut chercher | Pourquoi c'est important |
|--------|-----------------|----------------|
| Densité de mots-clés | 3+ mots du dictionnaire concaténés dans le SLD (`bestcheaponlinedealsnow`) | Marque de l'enregistrement programmatique pour l'arbitrage publicitaire |
| Termes d'intention de monétisation | Le nom de domaine signale un objectif de revenus publicitaires plutôt qu'un objectif éditorial | Le site existe probablement pour afficher des publicités, pas pour servir une audience |
| Proximité de marque | Domaine à 1-2 distances d'édition de la marque de l'annonceur ou des grandes marques du secteur | Possible typosquatting ou usurpation de marque |

### Couche 3 : Signaux de chemin URL

| Signal | Ce qu'il faut chercher | Pourquoi c'est important |
|--------|-----------------|----------------|
| Profondeur du chemin | 5+ niveaux de répertoire ou segments de chemin aléatoires | Infrastructure de diffusion publicitaire ou pages générées dynamiquement |
| Densité de paramètres de tracking | 4+ paramètres de requête avec des noms de type tracking (`utm_`, `ref=`, `aff=`, `sub1=`) | La page est principalement un point de routage de trafic, pas une destination de contenu |
| Indicateurs de génération dynamique | URLs avec IDs numériques, tokens de session ou chemins aléatoires | Pages de contenu générées programmatiquement |

### Couche 4 : Autorité de domaine (avancé, nécessite des données tierces)

| Signal | Ce qu'il faut chercher | Pourquoi c'est important |
|--------|-----------------|----------------|
| Score d'autorité de domaine | DR/DA en dessous de 10-15 (via Ahrefs, Moz, SE Ranking) | Les sites à très faible autorité recevant des dépenses publicitaires méritent une vérification manuelle |
| Estimation du trafic organique | Zéro trafic organique estimé | Le site n'attire pas de vraies audiences par la qualité du contenu |

> ⚠️ **La couche 4 nécessite des outils tiers payants.** Les couches 1-3 peuvent être vérifiées via Google Ads Scripts en utilisant uniquement les données d'URL de placement. La couche 4 ajoute de la précision mais est optionnelle.

Un placement correspondant à des signaux dans 2+ couches mérite une vérification manuelle. Un placement correspondant à des signaux dans 3+ couches est un candidat fort à l'exclusion.

---

## Cadre de signaux de qualité des placements YouTube

Les placements de vidéos et de chaînes YouTube portent des signaux de qualité au-delà des métriques de performance basiques. Ce cadre à quatre dimensions évalue les placements YouTube depuis l'autorité de la chaîne jusqu'à la pertinence de l'audience.

### Dimension 1 : Autorité de la chaîne

| Signal | Ce qu'il faut vérifier | Interprétation |
|--------|--------------|----------------|
| Âge de la chaîne | Date de création via YouTube Data API | Les chaînes de moins de 90 jours recevant déjà un volume publicitaire élevé sont suspectes |
| Pattern d'upload | Nombre total de vidéos vs âge de la chaîne | Des centaines d'uploads en quelques jours suggèrent du farming de contenu automatisé |
| Ratio abonnés/vidéos | Abonnés totaux / vidéos totales | Beaucoup de vidéos avec peu d'abonnés indique une opération de revenus publicitaires, pas une vraie audience |
| Cohérence thématique | Dispersion des sujets sur les vidéos de la chaîne | Des sujets très disparates (cuisine, crypto, réparation auto, gaming sur une même chaîne) indiquent une ferme de contenu |

### Dimension 2 : Qualité de l'engagement

| Signal | Ce qu'il faut vérifier | Interprétation |
|--------|--------------|----------------|
| Ratio vues/abonnés | Vues vidéo / abonnés de la chaîne | Des ratios extrêmes suggèrent une distribution algorithmique ou virale plutôt qu'une audience organique |
| Activité de commentaires | Commentaires activés + nombre de commentaires relatif aux vues | Commentaires désactivés ou zéro commentaire malgré des milliers de vues suggère un visionnage passif ou par bots |
| Ratio likes/vues | Likes totaux / vues totales | En dessous de 1 % sur plusieurs vidéos d'une chaîne suggère une audience désengagée |

### Dimension 3 : Classification du contenu

| Signal | Ce qu'il faut vérifier | Interprétation |
|--------|--------------|----------------|
| Durée de la vidéo | Catégorie de durée : Shorts (<60s), standard (2-20min), long format (20min+) | Comportements d'audience et disponibilité de formats publicitaires différents par catégorie de durée |
| Indicateurs de qualité du titre | Majuscules excessives (10+ majuscules consécutives), patterns de ponctuation (!! ??), formulations sensationnalistes | Des standards éditoriaux faibles corrèlent avec des environnements de contenu de faible qualité |
| Alignement de catégorie | Catégorie attribuée par YouTube vs sujet réel du contenu | Une catégorisation inadéquate (labellisée "Éducation" mais contenu divertissement) suggère une manipulation du système |

### Dimension 4 : Pertinence de l'audience

| Signal | Ce qu'il faut vérifier | Interprétation |
|--------|--------------|----------------|
| Langue du contenu | Champs de métadonnées `defaultLanguage` et `defaultAudioLanguage` | L'inadéquation de langue avec le marché cible équivaut à une inadéquation d'audience |
| Paramètre d'audience | Indicateur de statut `madeForKids` | Mauvaise audience pour la plupart des annonceurs B2B/B2C, formats publicitaires restreints s'appliquent |
| Audience géographique (si disponible) | Géographie de l'audience via YouTube Analytics API | 90 %+ du visionnage depuis l'extérieur du marché cible signifie que les annonces servent la mauvaise audience |

> 💡 **Revue manuelle vs automatisée :** les dimensions 1 et 4 sont accessibles via YouTube Data API et peuvent être vérifiées programmatiquement avec Google Ads Scripts. Les dimensions 2 et 3 nécessitent un mélange de données API et de vérification manuelle ponctuelle pour les 10-20 principaux placements vidéo par dépenses.

---

## Seuils de données minimaux

Ne prenez pas de décisions de placement avec des données insuffisantes. Utilisez ces minimums avant d'agir.

| Action | Données minimales requises | Pourquoi |
|--------|----------------------|-----|
| Exclure un placement | 1 000+ impressions OU 100+ clics | Les petits échantillons produisent des métriques non fiables |
| Évaluer le CPA/ROAS | 100+ clics sur ce placement | Le CPA/ROAS avec <100 clics est statistiquement insignifiant |
| Juger le taux de conversion | 30+ jours de données | Les fenêtres courtes manquent les conversions retardées |
| Comparer à la moyenne de la campagne | Même plage de dates, même attribution | Comparaison à conditions égales uniquement |
| Signaler pour trafic de bots | 1 000+ impressions avec 0 clic | Des seuils plus bas signalent trop de nouveaux placements |

---

## Guide de décision : action par placement selon les données

```
Le placement a-t-il 1 000+ impressions ?
|
+-- NON --> Ne rien faire. Données insuffisantes.
|
+-- OUI --> A-t-il des clics ?
            |
            +-- NON --> Signaler pour exclusion (probable trafic de bots ou emplacement invisible)
            |
            +-- OUI --> Le CTR est-il > 10 % ?
                        |
                        +-- OUI --> Signaler pour revue manuelle (peut être des clics accidentels/frauduleux, vérifier avant d'exclure)
                        |
                        +-- NON --> A-t-il 100+ clics ?
                                   |
                                   +-- NON --> Surveiller. Pas assez de données de clics encore.
                                   |
                                   +-- OUI --> Le CPA est-il > 3x la moyenne de la campagne ?
                                               |
                                               +-- OUI --> Exclure le placement
                                               |
                                               +-- NON --> Le CPA est-il < la moyenne de la campagne ?
                                                          |
                                                          +-- OUI --> Garder. Bon performeur.
                                                          |
                                                          +-- NON --> Surveiller. Performeur moyen.
```

---

## Erreurs courantes

| Erreur | Problème | Solution |
|---------|---------|-----|
| Pas d'exclusions de placements définies | Les annonces diffusent sur des domaines garés, sites MFA, jeux mobiles | Définir les exclusions au niveau du compte avant le lancement |
| Exclure des placements avec <100 clics | Décisions prématurées basées sur des données insuffisantes | Attendre les seuils minimaux avant d'agir |
| Ne jamais consulter les rapports de placements | Les mauvais placements accumulent des dépenses silencieusement | Consulter les rapports de placements chaque semaine pour Display/Video |
| Ignorer les données de placements PMax | Inconscient des placements PMax de faible qualité | Vérifier PMax Insights > Placements mensuellement |
| Garder les applications mobiles activées | La majorité des clics sont accidentels | Exclure toutes les catégories d'applications par défaut |
| Optimiser sur les conversions post-vue | Attribution gonflée par les impressions passives | Suivre les post-vues pour la notoriété, optimiser uniquement sur le post-clic |
| Régler la sécurité de la marque sur Étendu | Les annonces apparaissent à côté de contenu sensible | Utiliser Standard minimum, Limité pour les comptes sensibles |
| Exclure des placements un par un par campagne | Effort dupliqué, exclusions incohérentes | Utiliser des listes d'exclusion partagées au niveau du compte |

---

## Documents liés

| Document | Relation |
|----------|--------------|
| [Content Targeting Reference](<Display - Ciblage de contenu.md>) | Compagnon : méthodes de ciblage pour OÙ les annonces apparaissent |
| [Frequency Capping Reference](<../video/Video - Plafonnement de fréquence.md>) | Compagnon : contrôler COMBIEN DE FOIS les utilisateurs voient les annonces |
| [Upper Funnel Campaign Structure Mental Model](<../strategie/Strategie - Structure de campagne haut de tunnel.md>) | Cadre : structure par niveaux de campagne et contexte de placement |
