# Lancer une campagne Lead Gen TikTok Ads

> **Plateforme :** TikTok
> **Catégorie :** Lancement
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Créer et optimiser une campagne TikTok Ads de génération de leads, en choisissant entre formulaire instantané (Instant Form) et destination site internet, en qualifiant les leads (prospects) par le design du formulaire, et en intégrant le pipeline de traitement des prospects pour maximiser le ROI.

---

## Ce que cette SOP ne couvre PAS

Cette SOP ne couvre **pas :**

- Le lancement d'une campagne conversions site (achat, signup site) (Voir : [Procédure - Lancer une campagne conversions TikTok Ads](<Lancement - Lancer une campagne conversions.md>))
- Le lancement d'une campagne dynamique catalogue (Voir : [Procédure - Lancer une campagne dynamique TikTok Ads](<Lancement - Lancer une campagne dynamique.md>))
- Les choix structurels (Voir : [Procédure - Structurer ses campagnes TikTok Ads](<Lancement - Structurer ses campagnes.md>))
- L'installation du tracking (suivi des conversions/évènements) côté site (pour la destination Site Web) (Voir : [Procédure - Configurer le tracking TikTok Ads](<../suivi/Suivi - Configurer le suivi.md>))
- La construction des audiences (Voir : [Procédure - Configurer les audiences TikTok Ads](<../audiences/Audiences - Configurer les audiences.md>))
- La stratégie créative et le brief vidéo (Voir : [Procédure - Stratégie créative TikTok Ads](<../creatives/Creatives - Stratégie créative.md>) et [Procédure - Rédiger un brief UGC](<../creatives/Creatives - Rédiger un brief UGC.md>))
- L'optimisation post-lancement (Voir : [Procédure - Optimiser ses campagnes TikTok Ads](<../optimisation/Optimisation - Optimiser ses campagnes.md>))

---

## Prérequis

- Compte TikTok Ads Manager actif avec politique publicitaire acceptée → voir [Référence - Politiques publicitaires TikTok Ads](<../compte/Compte - Politiques publicitaires.md>)
- URL de politique de confidentialité (obligatoire pour les formulaires UE)
- Créatifs vidéo prêts (minimum 3 variantes) → voir [Procédure - Rédiger un brief UGC](<../creatives/Creatives - Rédiger un brief UGC.md>)
- CRM ou outil de gestion des leads configuré
- Structure de compte définie → voir [Procédure - Structurer ses campagnes TikTok Ads](<Lancement - Structurer ses campagnes.md>)

---

## Étape 1 — Choisir la destination : Instant Form vs Site Web

Le choix de la destination est la décision stratégique la plus importante d'une campagne Lead Gen. Elle détermine le volume, la qualité et le coût des leads.

### Comparaison Instant Form vs Site Web

| Critère | Instant Form (formulaire natif TikTok) | Site Web (landing page externe) |
|---|---|---|
| **Friction utilisateur** | Très faible — reste sur TikTok | Modérée — redirection + chargement |
| **Volume de leads** | Élevé | Plus faible |
| **Qualité des leads** | Variable à faible (remplissage en 2 clics) | Meilleure (effort délibéré de l'utilisateur) |
| **Pré-remplissage** | Oui (nom, email, téléphone depuis le profil) | Non |
| **Coût par lead (CPL)** | Plus bas | Plus élevé |
| **Qualification possible** | Via design du formulaire | Via page de destination |
| **Pixel requis** | Non | Oui |
| **Idéal pour** | Volume, B2C, offres simples, webinaires | B2B, services premium, qualification poussée |

> 💡 **Règle empirique** : si votre offre est simple et que votre équipe commerciale peut traiter un grand volume de leads, choisir Instant Form. Si chaque lead a une valeur élevée et que la qualification est critique, préférer le site web.

> ↪️ Si vous utilisez la destination Site Web, configurer le tracking en amont : [Procédure - Configurer le tracking TikTok Ads](<../suivi/Suivi - Configurer le suivi.md>)

---

## Étape 2 — Créer la campagne

1. Dans TikTok Ads Manager, cliquer sur **Créer une campagne**
2. Sélectionner l'objectif : **Lead Generation**
3. **Désactiver Smart Campaign** pour conserver le contrôle des paramètres
4. Nommer avec convention : `LEAD_[Destination]_[Audience]_[Date]` — ex. : `LEAD_Form_Broad_Avr2026`

---

## Étape 3 — Configurer le groupe d'annonces

### Budget recommandé

> ⚠️ **Budget minimum expert : 50 à 100 €/jour.** En dessous de 50 €/jour, l'algorithme manque de données pour sortir de la phase d'apprentissage et les CPL sont instables et non représentatifs.

| Budget journalier | Résultat attendu |
|---|---|
| < 20 €/jour | Données insuffisantes, apprentissage bloqué |
| 20 – 50 €/jour | Apprentissage lent, 3-4 semaines pour des conclusions fiables |
| 50 – 100 €/jour | Données exploitables en 7-14 jours |
| > 100 €/jour | Apprentissage rapide, scale possible dès J+7 |

### Audience

- Commencer en **audience large (Broad Targeting)** — laisser TikTok identifier les profils convertisseurs
- Tester des audiences par **centres d'intérêt** dans des groupes séparés
- Utiliser des **Custom Audiences** (audiences CRM uploadées) pour le retargeting (reciblage) ou les audiences similaires

> ↪️ Configuration des audiences avancées : [Procédure - Analyser son audience TikTok Ads](<../audiences/Audiences - Analyser son audience.md>)

---

## Étape 4 — Concevoir le formulaire instantané

### Option 1 : Formulaire Standard (volume maximal)

- Pré-remplissage automatique des champs connus
- 2 à 3 questions maximum
- Soumission en 2 clics
- CPL bas, volume élevé, qualité variable

### Option 2 : Formulaire High-Intent (qualité prioritaire)

Le formulaire **High-Intent** ajoute une étape de révision avant soumission : l'utilisateur voit un résumé de ses réponses et doit confirmer activement.

> 💡 **Impact du formulaire High-Intent** : réduit le volume de leads de 20-40 %, mais augmente le taux de qualification de 30-60 %. Recommandé pour les services B2B, les offres premium et les secteurs où le CPL justifie une qualification stricte.

### Questions personnalisées — Types disponibles

| Type de question | Usage recommandé | Impact sur le volume |
|---|---|---|
| **Choix multiple** | Qualification rapide (budget, taille d'entreprise) | Faible réduction |
| **Menu déroulant** | Segmentation (secteur, localisation, besoin) | Faible réduction |
| **Réponse courte** | Qualification approfondie (description du projet) | Réduction significative |
| **Champs pré-remplis** | Email, nom, téléphone | Aucune réduction |

### Équilibre questions / qualité

> ⚠️ **Règle d'or : trop de questions tue le volume, trop peu produit des leads inutilisables.**

| Nombre de questions | Volume | Qualité | Recommandé pour |
|---|---|---|---|
| 2-3 (champs pré-remplis uniquement) | Maximum | Faible | Notoriété, liste email B2C |
| 3-5 (1-2 questions qualifiantes) | Bon | Correct | B2C premium, webinaires |
| 5-7 (questions personnalisées) | Modéré | Bon | B2B services, devis |
| > 7 questions | Très faible | Très bon | Rare — uniquement si CPL justifie |

### Page de remerciement (Thank You Page)

Configurer la page de remerciement avec :
- Confirmation claire de la soumission
- Délai de reponse attendu (ex. : "Notre équipe vous contacte sous 24h")
- Optionnel : lien vers le site web, ressource téléchargeable, ou offre de bienvenue

### Politique de confidentialité — Obligation UE

> ⚠️ **Obligatoire pour toute campagne diffusée en Union Européenne.** L'URL de politique de confidentialité doit être renseignée dans le formulaire. Sans cela, TikTok peut refuser le formulaire ou l'annonce.

La politique doit mentionner explicitement :
- La collecte de données personnelles (email, téléphone)
- L'usage de ces données (marketing, contact commercial)
- Le droit de désabonnement (RGPD)

---

## Étape 5 — Créer les annonces

### Créatifs recommandés pour le Lead Gen

- Format vertical 9:16
- Durée : 15 à 30 secondes
- Les 3 premières secondes doivent exposer clairement l'offre ou le problème résolu
- Inclure une promesse concrète dans les 5 premières secondes : "Recevez un devis gratuit", "Téléchargez le guide"
- Terminer avec un CTA verbal aligné sur le CTA bouton

### CTA recommandés

- "Inscrivez-vous gratuitement"
- "Obtenez votre devis"
- "Téléchargez maintenant"
- "Réservez votre place"

> ↪️ Pour la stratégie créative complète : [Procédure - Stratégie créative TikTok Ads](<../creatives/Creatives - Stratégie créative.md>)

---

## Étape 6 — Intégrations CRM natives

### Connexions disponibles directement dans TikTok Ads Manager

| CRM / Outil | Type d'intégration | Délai de synchronisation |
|---|---|---|
| **HubSpot** | Intégration native TikTok | Quasi-instantané |
| **Salesforce** | Intégration native TikTok | Quasi-instantané |
| **Zoho CRM** | Intégration native TikTok | Quasi-instantané |
| **Mailchimp** | Intégration native TikTok | Quasi-instantané |
| **Google Sheets** | Export manuel ou Zapier | Manuel ou automatique |
| **Autres outils** | Via Zapier / Make | Dépend du workflow |

### Configurer l'intégration CRM

1. Dans TikTok Ads Manager → **Assets** → **Lead Center**
2. Onglet **Intégrations CRM**
3. Sélectionner le CRM cible et s'authentifier
4. Mapper les champs TikTok (email, prénom, téléphone) aux champs du CRM
5. Tester avec un lead fictif avant le lancement

> 💡 **Priorité à l'automatisation** : un lead non traité dans les 5 minutes perd 80 % de son potentiel de conversion. L'intégration CRM native élimine les délais de transfert manuel.

---

## Étape 7 — Suivi et traitement des leads

### Fenêtre de contact critique

> ⚠️ **Contacter un lead dans les 5 minutes suivant sa soumission convertit 9x mieux qu'un contact à 30 minutes, et jusqu'à 100x mieux qu'un contact après 24 heures** (source : InsideSales / HBR).

Configuration recommandée :
- Activer les **notifications en temps réel** dans le CRM (email ou SMS à l'équipe commerciale)
- Mettre en place un **email automatique de confirmation** envoyé au lead dans les 60 secondes
- Définir un SLA interne : premier appel < 5 minutes pendant les heures de bureau

### Pipeline de traitement des leads

| Étape | Délai cible | Action |
|---|---|---|
| Réception du lead | 0 min | Email de confirmation automatique au prospect |
| Premier contact | < 5 min | Appel ou SMS de l'équipe commerciale |
| Qualification | < 24h | Évaluation du potentiel, mise à jour CRM |
| Nurturing si non converti | J+1, J+3, J+7 | Séquence email automatisée |

---

## Benchmarks CPL par secteur

| Secteur | CPL bas (bon) | CPL moyen | CPL élevé (à optimiser) |
|---|---|---|---|
| **E-commerce B2C** | 5 – 10 € | 10 – 20 € | > 20 € |
| **Services B2C (beauté, coaching)** | 8 – 15 € | 15 – 30 € | > 30 € |
| **Immobilier** | 20 – 40 € | 40 – 80 € | > 80 € |
| **Services B2B (SaaS, conseil)** | 15 – 30 € | 30 – 50 € | > 50 € |
| **Finance / Assurance** | 20 – 50 € | 50 – 100 € | > 100 € |
| **Formation / Éducation** | 5 – 15 € | 15 – 30 € | > 30 € |

> 💡 Ces benchmarks (analyse comparative) varient selon la qualité du créatif, la notoriété de la marque et le niveau de qualification exigé dans le formulaire.

---

## Points clés à retenir

- **Instant Form = volume, Site Web = qualité** : choisir en fonction de la capacité de traitement et de la valeur du lead
- **High-Intent form** : activer quand la qualification prime sur le volume
- **URL de politique de confidentialité** : obligatoire pour toutes les campagnes UE
- **Budget minimum 50-100 €/jour** pour des données exploitables rapidement
- **Contact en moins de 5 minutes** : multiplicateur de conversion x9
- **Intégration CRM native** : éliminer les délais de transfert manuel

---

## Références croisées

- [Procédure - Analyser son audience TikTok Ads](<../audiences/Audiences - Analyser son audience.md>)
- [Procédure - Structurer ses campagnes TikTok Ads](<Lancement - Structurer ses campagnes.md>)
- [Procédure - Configurer le tracking TikTok Ads](<../suivi/Suivi - Configurer le suivi.md>)
- [Procédure - Rédiger un brief UGC](<../creatives/Creatives - Rédiger un brief UGC.md>)
- [Procédure - Optimiser ses campagnes TikTok Ads](<../optimisation/Optimisation - Optimiser ses campagnes.md>)
- [Procédure - Stratégie créative TikTok Ads](<../creatives/Creatives - Stratégie créative.md>)
- [Référence - Politiques publicitaires TikTok Ads](<../compte/Compte - Politiques publicitaires.md>)
