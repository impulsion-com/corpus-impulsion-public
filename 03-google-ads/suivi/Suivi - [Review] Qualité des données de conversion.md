# Qualité des données de conversion

> **Plateforme :** Google Ads
> **Catégorie :** Suivi
> **Type :** Checklist
> **Mis à jour :** 2026-05-07

## Objectif

Valide la qualité continue des données de suivi des conversions. Exécuter cette checklist trimestriellement, après des anomalies de performance, ou après toute modification du site web, du CMS ou de la configuration du tracking (suivi des conversions/évènements).

---

## Ce que cette checklist valide

Cette checklist confirme :

- Le volume et la valeur des conversions correspondent aux données backend
- Aucune conversion dupliquée ou de test ne pollue les données
- Le modèle d'attribution et les fenêtres sont correctement configurés
- Le Consent Mode est actif et la modélisation dans les fourchettes attendues
- Les fonctionnalités avancées sont saines et remontent des données
- Les pratiques d'hygiène des données sont respectées (ajustements, exclusions)

Cette checklist ne couvre **PAS** :

- La validation de la complétude de la configuration initiale (Voir : [Conversion Tracking Setup Checklist](<Suivi - Configuration du suivi des conversions.md>))
- Les recommandations de paramètres spécifiques (Voir : [Conversion Tracking Configuration Guidelines](<Suivi - Configuration du suivi des conversions.md>))
- L'explication des types d'actions de conversion (Voir : [Conversion Action Reference](<Suivi - Actions de conversion.md>))
- Les instructions de dépannage pas à pas

---

## Quand l'utiliser

Exécuter cette checklist :

- Trimestriellement dans le cadre d'un audit programmé du tracking
- Après des anomalies de performance (pics soudains de CPA, baisses de ROAS, changements de volume de conversions)
- Après des modifications du site web ou du CMS (refonte, migration de plateforme, mise à jour de thème)
- Après une baisse du volume de conversions de plus de 20% sans cause connue
- Après des mises à jour du conteneur GTM ou des modifications de tags
- Lors de l'onboarding d'un nouveau compte client (audit de référence)
- Après un changement de stratégie d'enchères

---

## Checklist

### Précision des données

- [ ] Le volume de conversions dans Google Ads est à moins de 10% des données backend (CRM, plateforme e-commerce)
- [ ] La valeur de conversion dans Google Ads est à moins de 15% du chiffre d'affaires backend
- [ ] Aucune conversion dupliquée détectée (vérifier le taux de répétition : devrait être ~1,0 pour le lead gen, raisonnable pour l'e-commerce)
- [ ] Les Transaction IDs sont uniques par conversion (pas de blancs, pas d'IDs répétés)
- [ ] Aucune conversion de test ou interne ne pollue les données de production
- [ ] Les valeurs de conversion sont dynamiques (pas toutes avec la même valeur statique)
- [ ] La devise est correcte sur toutes les actions de conversion
- [ ] Le nombre de conversions n'a pas soudainement augmenté ou baissé sans explication

> ⚠️ **Un écart de plus de 15% entre Google Ads et les données backend signale un problème de tracking :** Investiguer avant de modifier la stratégie d'enchères. Causes fréquentes : déclenchement en double, Transaction IDs manquants, tags cassés, blocage du consentement.

### Santé de l'attribution

- [ ] Le modèle d'attribution est défini sur Data-Driven (pas Last Click)
- [ ] Le ratio de sur-attribution est connu et documenté (conversions Google Ads vs. backend)
- [ ] Les cibles d'efficacité (CPA/ROAS) sont calibrées par rapport au ratio de sur-attribution
- [ ] Les conversions après affichage ne gonflent pas le CPA/ROAS des campagnes haut du tunnel
- [ ] Les conversions après visionnage engagé sont évaluées séparément des conversions après clic
- [ ] Le délai de conversion est compris (vérifié via Path Metrics)
- [ ] Les fenêtres d'évaluation respectent le délai de conversion (ne pas juger les campagnes avant la fin du délai)
- [ ] Aucune modification récente des paramètres d'attribution qui pourrait causer une discontinuité des données

### Consentement et conformité

- [ ] Le Consent Mode est actif (vérifier via les diagnostics Google Ads)
- [ ] La modélisation des conversions est active et affiche des conversions modélisées
- [ ] L'augmentation de la modélisation est raisonnable (5-20% est normal, pas 50%+)
- [ ] La CMP (Consent Management Platform) est fonctionnelle et la bannière de consentement s'affiche correctement
- [ ] La bannière de consentement est accessible sur tous les types d'appareils (desktop, mobile, tablette)
- [ ] Aucune mise à jour récente de la CMP n'a cassé le flux de signal de consentement
- [ ] Le taux de refus de consentement est suivi et dans la fourchette attendue pour votre région

> 💡 **Si l'augmentation de la modélisation dépasse 30%, vérifiez la configuration de votre CMP :** Un pourcentage de modélisation très élevé signifie souvent que la bannière de consentement est trop agressive, cassée sur certains appareils, ou bloque trop d'utilisateurs.

### Santé des fonctionnalités avancées

- [ ] Les diagnostics Enhanced Conversions affichent un statut sain (coche verte ou actif)
- [ ] Le taux de correspondance Enhanced Conversions est acceptable (vérifier la page diagnostics)
- [ ] Les colonnes Cart Data sont remplies dans les rapports (e-commerce)
- [ ] Les Cart Data affichent des ventilations de chiffre d'affaires au niveau produit (e-commerce)
- [ ] La segmentation nouveaux clients affiche des données dans les rapports de conversions (si implémentée)
- [ ] Le pourcentage de nouveaux clients est dans la fourchette attendue (si implémenté)
- [ ] Les variables personnalisées affichent des valeurs récentes dans les segments (si implémentées)
- [ ] Le conteneur de tagging server-side est opérationnel et traite des requêtes (si implémenté)

### Hygiène des données

- [ ] Les ajustements de conversion sont uploadés régulièrement (retours e-commerce, mises à jour de valeur des leads (prospects))
- [ ] La fréquence d'upload des ajustements correspond à la recommandation (quotidien pour l'e-commerce à fort taux de retour, hebdomadaire minimum)
- [ ] Aucune panne de tracking n'a eu lieu sans exclusion de données appliquée
- [ ] Toutes les exclusions de données passées ont des dates de début/fin correctes et un périmètre approprié
- [ ] Les actions de conversion secondaires ne sont pas accidentellement définies comme principales
- [ ] Aucune métrique vaniteuse n'est définie comme action de conversion (profondeur de scroll, temps passé sur le site, taux de rebond)
- [ ] Les actions de conversion obsolètes ou inutilisées sont en pause ou supprimées
- [ ] Les actions d'import GA4 ne comptent pas en double avec les actions pixel GACT

### Santé du suivi des conversions hors ligne (Lead Gen / SaaS)

- [ ] Les uploads OCT fonctionnent selon le calendrier prévu (quotidien ou hebdomadaire)
- [ ] Le taux d'erreur des uploads est acceptable (quelques enregistrements non matchés sont normaux)
- [ ] Les étapes du pipeline CRM correspondent toujours aux actions de conversion Google Ads
- [ ] La capture de GCLID fonctionne toujours sur toutes les variantes de formulaire/Landing Page
- [ ] Les valeurs de conversion issues de l'OCT reflètent les valeurs réelles des deals (pas des estimations obsolètes)
- [ ] Les actions de conversion d'import sont toujours définies au bon niveau d'optimisation

---

## Référence rapide

| Document | Relation |
|----------|--------------|
| [Conversion Tracking Setup Checklist](<Suivi - Configuration du suivi des conversions.md>) | Validation de la configuration initiale (exécuter en premier si la configuration est nouvelle) |
| [Conversion Action Reference](<Suivi - Actions de conversion.md>) | Types et paramètres des actions de conversion |
| [Conversion Adjustments Reference](<Suivi - Offline Conversion Tracking.md>) | RESTATE et RETRACT pour corriger des conversions individuelles |
| [Data Exclusions Reference](<Suivi - Exclusions de données.md>) | Exclusions par période pour les pannes de tracking |
| [Conversion Tracking Configuration Guidelines](<Suivi - Configuration du suivi des conversions.md>) | Paramètres recommandés pour toutes les fonctionnalités de tracking |
| [Conversion Volume Thresholds Reference](<Suivi - Seuils de volume de conversions.md>) | Volumes minimum pour les stratégies d'enchères |
| [Measurement Maturity Mental Model](<../../01-strategie/reporting/Reporting - Maturité de la mesure.md>) | Méthode stratégique pour la progression de la mesure |
