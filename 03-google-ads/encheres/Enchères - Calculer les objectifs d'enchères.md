# Calculer les objectifs d'enchères

> **Plateforme :** Google Ads
> **Catégorie :** Enchères
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Cette SOP vous guide dans le calcul des objectifs d'enchères CPA, ROAS et POAS à partir des unit economics, en utilisant le profit-to-acquisition ratio (PAR).

> ❓ **La question clé :** Quel objectif d'enchères devez-vous fixer pour équilibrer croissance et rentabilité pour ce compte ?

---

## Ce que cette SOP ne couvre PAS

Cette SOP ne couvre **pas :**

- Expliquer la théorie des objectifs d'enchères ou le document PAR (Voir : [Bid Targets Reference](<Enchères - Cibles d'enchères.md>))
- Calculer ou valider les unit economics (Voir : [SOP - Calculer et valider les unit economics](<../../01-strategie/analyse/Analyse - Calculer et valider les unit economics.md>))
- Définir les objectifs de campagne ou les KPIs (Voir : [SOP - Definir les objectifs et KPIs de campagne](<../strategie/Strategie - Définir les objectifs et KPIs de campagne.md>))
- Expliquer le fonctionnement du scaling des enchères (Voir : [Bid Scaling Mental Model](<Enchères - Scaling des enchères.md>))
- Configurer les stratégies d'enchères dans la plateforme (c'est une SOP distincte)

## Quand utiliser cette SOP

Lancez cette SOP quand :

- Onboarding d'un nouveau client (après validation des unit economics et des objectifs)
- Changement de stratégie d'enchères (par ex. passage du CPC manuel au CPA cible ou ROAS cible)
- Les entrées d'unit economics changent (prix, marges, taux de conversion)
- Les objectifs de croissance changent (la partie prenante veut plus de volume ou plus d'efficacité)
- Les objectifs d'enchères actuels produisent des résultats hors de la plage acceptable

---

## Avant de commencer

### Prérequis

- Unit economics validées depuis [SOP - Calculer et valider les unit economics](<../../01-strategie/analyse/Analyse - Calculer et valider les unit economics.md>)
- Objectifs Google Ads documentés depuis [SOP - Definir les objectifs et KPIs de campagne](<../strategie/Strategie - Définir les objectifs et KPIs de campagne.md>)
- Suivi des conversions en place et vérifié
- Accès au Performance Planner ou au simulateur d'enchères dans Google Ads

### Documents de référence (à garder ouverts)

| Document | Utilisé pour |
|----------|----------|
| [Bid Targets Reference](<Enchères - Cibles d'enchères.md>) | Formules, définitions du PAR, plages de cibles |
| [Unit Economics Mental Model](<../../01-strategie/fondamentaux/Fondamentaux - Méthode unit economics.md>) | Comprendre les couches de marge et la logique du seuil de rentabilité |
| [Unit Economics Reference](<../../01-strategie/fondamentaux/Fondamentaux - Unit economics.md>) | Valeurs d'entrée vérifiées et seuils |
| [Goals and KPIs Mental Model](<../../01-strategie/objectifs/Objectifs - Objectifs et KPI.md>) | Cadrage croissance vs efficacité |
| [Bid Simulator Reference](<Enchères - Simulateur d'enchères.md>) | Lire les résultats du simulateur d'enchères et du Performance Planner |

---

## Cadre d'exécution

| Phase | Objectif | Résultat |
|-------|---------|--------|
| **Phase 1️⃣ : Collecter les entrées d'unit economics** | Rassembler les chiffres nécessaires aux calculs de seuil de rentabilité | Feuille d'entrées complétée par vertical |
| **Phase 2️⃣ : Calculer les niveaux de rentabilité** | Déterminer le point où la dépense publicitaire égale le profit | Valeurs de CPA, ROAS et POAS de rentabilité |
| **Phase 3️⃣ : Déterminer les objectifs d'enchères** | Appliquer le profit-to-acquisition ratio pour fixer les cibles opérationnelles | Cibles CPA/ROAS/POAS avec le paramètre PAR documenté |
| **Phase 4️⃣ : Valider les cibles** | Confirmer que les cibles sont atteignables avec les outils Google Ads | Cibles validées prêtes pour la configuration des campagnes |

---

## Phase 1️⃣ : Collecter les entrées d'unit economics

### 1.1 Identifier votre vertical

| Si le client... | Vertical | Métrique d'enchères principale |
|-----------------|----------|-------------------|
| Génère des leads (prospects) pour une équipe commerciale | Lead Gen | CPA |
| Vend des produits en ligne | Ecommerce | ROAS ou POAS |
| Vend des abonnements récurrents | SaaS | CPA (avec ajustement LTV) |

### 1.2 Collecter les entrées par vertical

**Entrées Lead Gen :**

1. **Valeur moyenne de deal :** Revenu par deal conclu
2. **Marge bénéficiaire % :** (Revenu - coûts de livraison) / Revenu
3. **Profit brut par deal :** Valeur du deal x Marge bénéficiaire %
4. **Taux lead-vers-close :** Deals conclus / Total des leads (depuis le CRM, 6 derniers mois)
5. **Taux de leads qualifiés (si tunnel multi-étapes) :** Leads qualifiés / Total des leads
6. **Taux QL-vers-close (si tunnel multi-étapes) :** Deals conclus / Leads qualifiés
7. **LTV client (si applicable) :** À utiliser à la place de la valeur d'un deal unique quand le réachat est significatif

**Entrées Ecommerce :**

1. **Valeur moyenne de commande (AOV) :** Revenu total / Total des commandes (90 derniers jours)
2. **Marge bénéficiaire % :** (Revenu - COGS) / Revenu
3. **Frais de commande % :** (Livraison + Frais de paiement + Retours) / AOV
4. **Marge effective :** Marge bénéficiaire % - Frais de commande %
5. **LTV client (si applicable) :** Commandes moyennes par client x Profit brut par commande

**Entrées SaaS :**

1. **ARPU :** MRR / Clients payants actifs
2. **Durée de vie client (mois) :** 1 / Taux de churn mensuel
3. **LTV :** ARPU x Durée de vie client x Marge brute %
4. **CAC max (règle 3:1) :** LTV / 3

### 1.3 Enregistrer les entrées

| Entrée | Valeur | Source | Date de vérification |
|-------|-------|--------|--------------|
| | | | |
| | | | |
| | | | |
| | | | |
| | | | |

> ⚠️ **Utilisez uniquement des données vérifiées :** N'acceptez pas les estimations du client sans recouper les données backend ou CRM. Des entrées incorrectes se répercutent en cibles erronées.

---

## Phase 2️⃣ : Calculer les niveaux de rentabilité

Le seuil de rentabilité est le point où 100 % du profit brut va à l'acquisition. Vous ne réalisez aucun profit au seuil de rentabilité.

### 2.1 Lead Gen : CPA de rentabilité

**Tunnel simple (le lead se convertit directement en deal) :**

```
CPA de rentabilité = Profit brut par deal x Taux lead-vers-close
```

**Exemple :** 5 000 € de valeur de deal x 60 % de marge = 3 000 € de profit brut. Taux lead-vers-close = 20 %.
CPA de rentabilité = 3 000 € x 0,20 = 600 €

**Tunnel multi-étapes (lead > lead qualifié > deal) :**

```
CPA de rentabilité = Profit brut par deal x Taux QL-vers-close x Taux lead-vers-QL
```

**Exemple :** 3 000 € de profit brut. Taux lead-vers-QL = 50 %. Taux QL-vers-close = 40 %.
CPA de rentabilité = 3 000 € x 0,40 x 0,50 = 600 €

> 💡 **Suivez le CPA au point de conversion vers lequel Google Ads optimise :** Si vous optimisez pour les leads, calculez le CPA de rentabilité au niveau du lead. Si vous importez des conversions hors ligne à l'étape du deal, calculez le CPA de rentabilité au niveau du deal.

### 2.2 Ecommerce : ROAS de rentabilité

```
ROAS de rentabilité = 1 / Marge effective
```

Où la marge effective = Marge bénéficiaire % - Frais de commande %

**Exemple :** 50 % de marge bénéficiaire - 15 % de frais de commande = 35 % de marge effective.
ROAS de rentabilité = 1 / 0,35 = 286 % (soit 2,86x)

À 286 % de ROAS, chaque euro de dépense publicitaire génère exactement assez de revenu pour couvrir le coût produit, les frais de commande et le coût publicitaire lui-même. Il ne reste aucun profit.

### 2.3 POAS de rentabilité

```
POAS de rentabilité = 100 % (toujours)
```

Le POAS (Profit on Ad Spend) utilise le profit comme valeur de conversion au lieu du revenu. À 100 % de POAS, chaque euro de dépense publicitaire génère exactement un euro de profit brut. C'est le seuil de rentabilité par définition.

> 💡 **Le POAS simplifie le calcul des objectifs d'enchères :** Comme le seuil de rentabilité est toujours à 100 %, vous sautez les calculs de marge en Phase 3. La marge est déjà intégrée dans la valeur de conversion.

### 2.4 Enregistrer les niveaux de rentabilité

| Métrique | Formule utilisée | Valeur de rentabilité |
|--------|-------------|----------------|
| CPA de rentabilité | | |
| ROAS de rentabilité | | |
| POAS de rentabilité | 100 % (toujours) | 100 % |

---

## Phase 3️⃣ : Déterminer les objectifs d'enchères

### 3.1 Comprendre le profit-to-acquisition ratio (PAR)

Le PAR contrôle la part de votre profit brut que vous allouez à l'acquisition (dépense publicitaire) vs. celle que vous conservez en profit net.

| Valeur PAR | Signification | Utiliser quand |
|-----------|---------|----------|
| 1.0 | 100 % du profit à l'acquisition, 0 % retenu | Jamais (c'est le seuil de rentabilité) |
| 0.75 | 75 % à l'acquisition, 25 % retenu | Croissance agressive |
| 0.50 | 50 % à l'acquisition, 50 % retenu | Croissance et profit équilibrés |
| 0.25 | 25 % à l'acquisition, 75 % retenu | Orienté efficacité |

> ⚠️ **Le PAR est une décision business, pas un exercice mathématique :** La partie prenante doit approuver le compromis croissance vs. efficacité. Utilisez les objectifs documentés dans [SOP - Definir les objectifs et KPIs de campagne](<../strategie/Strategie - Définir les objectifs et KPIs de campagne.md>) pour guider ce choix.

### 3.2 Calculer le CPA cible (Lead Gen / SaaS)

```
CPA cible = CPA de rentabilité x PAR
```

**Exemple :** CPA de rentabilité = 600 €. PAR = 0,50 (équilibré).
CPA cible = 600 € x 0,50 = 300 €

À 300 € de CPA, vous dépensez 50 % du profit brut en acquisition et en conservez 50 %.

| Paramètre PAR | CPA cible | Profit retenu par deal |
|-------------|-----------|------------------------|
| 0.75 (croissance) | 450 € | 150 € |
| 0.50 (équilibré) | 300 € | 300 € |
| 0.25 (efficacité) | 150 € | 450 € |

### 3.3 Calculer le ROAS cible (Ecommerce)

```
ROAS cible = ROAS de rentabilité / PAR
```

Note : le ROAS utilise la division (pas la multiplication) car un ROAS plus élevé signifie plus d'efficacité, ce qui est l'inverse du CPA.

**Exemple :** ROAS de rentabilité = 286 %. PAR = 0,50 (équilibré).
ROAS cible = 286 % / 0,50 = 572 % (soit 5,72x)

| Paramètre PAR | ROAS cible | Profit retenu par commande |
|-------------|-----------|--------------------------|
| 0.75 (croissance) | 381 % | Marge plus faible, volume plus élevé |
| 0.50 (équilibré) | 572 % | Moitié de la marge retenue |
| 0.25 (efficacité) | 1 144 % | Marge élevée, volume plus faible |

### 3.4 Calculer le POAS cible (Ecommerce avec tracking du profit)

Les cibles POAS sont simples car le seuil de rentabilité est toujours à 100 %.

```
POAS cible = 100 % / PAR
```

**Exemple :** PAR = 0,50 (équilibré).
POAS cible = 100 % / 0,50 = 200 %

| Paramètre PAR | POAS cible | Signification |
|-------------|-----------|---------|
| 0.75 (croissance) | 133 % | Pour chaque 1 € de dépense publicitaire, générer 1,33 € de profit |
| 0.50 (équilibré) | 200 % | Pour chaque 1 € de dépense publicitaire, générer 2 € de profit |
| 0.25 (efficacité) | 400 % | Pour chaque 1 € de dépense publicitaire, générer 4 € de profit |

### 3.5 Enregistrer les objectifs d'enchères

| Métrique | Rentabilité | PAR | Cible | Justification |
|--------|-----------|-----|--------|-----------|
| CPA | | | | |
| ROAS | | | | |
| POAS | | | | |

---

## Phase 4️⃣ : Valider les objectifs

### 4.1 Vérifier la faisabilité de la cible avec Performance Planner

1. Ouvrir le Performance Planner dans Google Ads
2. Sélectionner les campagnes qui utiliseront ces cibles
3. Saisir l'objectif d'enchères calculé (CPA ou ROAS)
4. Examiner le volume prévu (conversions, valeur de conversion)
5. Comparer le volume prévu aux objectifs de croissance documentés

| Vérification | Résultat |
|-------|--------|
| Les conversions prévues atteignent l'objectif de croissance ? | |
| Le CPA/ROAS prévu s'aligne sur la cible ? | |
| Le budget nécessaire est dans le budget alloué ? | |

### 4.2 Vérifier la faisabilité de la cible avec le simulateur d'enchères

1. Ouvrir le simulateur d'enchères pour les campagnes ou groupes d'annonces clés
2. Examiner la courbe de volume à votre cible calculée
3. Identifier le point de rendements décroissants

| Objectif d'enchères testé | Conversions estimées | Coût estimé | CPA/ROAS réel |
|------------------|----------------------|---------------|-----------------|
| Cible calculée | | | |
| Cible + 10 % | | | |
| Cible - 10 % | | | |

### 4.3 Évaluer les résultats

| Si... | Alors... |
|-------|---------|
| Le volume prévu atteint les objectifs de croissance aux cibles calculées | Les cibles sont validées. Continuer vers l'implémentation. |
| Le volume est trop faible aux cibles calculées | Augmenter le PAR (accepter une marge plus faible) ou élargir le ciblage (nouveaux mots-clés, audiences, types de campagne) |
| Le volume est suffisant mais le budget est insuffisant | Augmenter le budget ou réduire l'objectif de croissance |
| Les cibles sont irréalistes (aucune combinaison faisable ne fonctionne) | Revoir les unit economics ou les objectifs de croissance avec la partie prenante |

> ⚠️ **Ne baissez pas les objectifs sous le seuil de rentabilité pour courir après le volume :** Si les cibles au seuil de rentabilité ne délivrent toujours pas assez de volume, le problème est en amont (unit economics, taille du marché ou définition des objectifs), pas les objectifs d'enchères.

### 4.4 Ajuster et documenter les cibles finales

Si des ajustements ont été nécessaires, enregistrez à la fois la cible calculée d'origine et la cible ajustée avec la justification :

| Métrique | Cible calculée | Cible ajustée | Justification de l'ajustement |
|--------|------------------|----------------|---------------------|
| CPA | | | |
| ROAS | | | |
| POAS | | | |

### 4.5 Checklist finale

- [ ] Niveaux de rentabilité calculés à partir d'unit economics vérifiées
- [ ] PAR validé avec la partie prenante
- [ ] Cibles CPA/ROAS/POAS calculées correctement
- [ ] Cibles validées avec le Performance Planner ou le simulateur d'enchères
- [ ] Cibles au-dessus du seuil de rentabilité (jamais à ou en dessous)
- [ ] Cibles finales documentées avec justification

---

## Validation et critères de complétion

Cette SOP est terminée quand :

- [ ] Les entrées d'unit economics sont collectées depuis des sources de données vérifiées
- [ ] Le CPA, ROAS ou POAS de rentabilité est calculé pour le vertical du client
- [ ] Le PAR est choisi en fonction des objectifs documentés de croissance vs. efficacité
- [ ] Les objectifs d'enchères sont calculés avec la bonne formule par métrique
- [ ] Les cibles sont validées avec le Performance Planner ou le simulateur d'enchères
- [ ] Les cibles finales sont documentées avec le seuil de rentabilité, le PAR et la justification de l'ajustement
- [ ] La partie prenante a approuvé le compromis croissance vs. efficacité

---

## Passerelle de sortie

Une fois les objectifs d'enchères validés :

| Prochaine étape | Quand |
|-----------|------|
| Configurer les stratégies d'enchères dans la plateforme | Cibles validées, campagnes prêtes pour le lancement ou la migration |
| Revoir les unit economics | Si la validation révèle que les cibles ne sont pas viables à aucun niveau de PAR |
| Revoir les objectifs et KPIs | Si les cibles validées ne peuvent pas délivrer le volume requis |

**Si les objectifs d'enchères doivent être révisés :**

| Déclencheur | Action |
|---------|--------|
| Les unit economics changent (prix, marges, taux de conversion) | Relancer les Phases 1-3, puis revalider |
| Les objectifs de croissance changent | Relancer la Phase 3 (ajuster le PAR), puis revalider |
| Sous-performance persistante vs. cibles | Revalider en Phase 4, vérifier si les conditions de marché ont changé |
| Revue trimestrielle | Revalider les entrées et les cibles par rapport aux données actuelles |

---

## FAQ

**Q : Dois-je utiliser des objectifs CPA, ROAS ou POAS ?**

R : Le Lead Gen utilise des objectifs CPA. L'Ecommerce utilise des objectifs ROAS par défaut, ou des objectifs POAS si le tracking du profit est activé via les données du panier ou des variables personnalisées. Le POAS est préféré quand il est disponible car il simplifie le calcul et prend en compte la variation de marge entre produits. Voir [Bid Targets Reference](<Enchères - Cibles d'enchères.md>) pour les détails.

**Q : Quel PAR dois-je utiliser pour un nouveau compte ?**

R : Commencez avec 0,50 (équilibré) sauf si la partie prenante a une préférence claire. Les comptes orientés croissance peuvent démarrer à 0,75, ceux orientés efficacité à 0,25. Ajustez après 2-4 semaines en fonction des données de performance réelles.

**Q : Comment gérer les comptes avec plusieurs produits à marges différentes ?**

R : Calculez le seuil de rentabilité par catégorie de produits ou utilisez une stratégie d'enchères POAS, qui gère automatiquement les différences de marge (le profit est la valeur de conversion). Pour une stratégie d'enchères ROAS, utilisez la marge effective moyenne pondérée sur l'ensemble de votre gamme de produits.

**Q : Que faire si Performance Planner montre un budget nécessaire bien supérieur à ce qui est alloué ?**

R : Présentez les données au client/partie prenante avec trois options : augmenter le budget, baisser les objectifs de croissance, ou augmenter le PAR (accepter une marge plus faible par conversion). Ne fixez pas silencieusement des cibles sous le seuil de rentabilité.

---

## Référence rapide : bibliothèque support

| Document | Type | Utilisé dans |
|----------|------|---------|
| [Bid Targets Reference](<Enchères - Cibles d'enchères.md>) | Référence | Phases 2-3 |
| [Unit Economics Mental Model](<../../01-strategie/fondamentaux/Fondamentaux - Méthode unit economics.md>) | Modèle mental | Phase 1 |
| [Unit Economics Reference](<../../01-strategie/fondamentaux/Fondamentaux - Unit economics.md>) | Référence | Phase 1 |
| [Bid Scaling Mental Model](<Enchères - Scaling des enchères.md>) | Modèle mental | Phase 3 (compromis PAR) |
| [Goals and KPIs Mental Model](<../../01-strategie/objectifs/Objectifs - Objectifs et KPI.md>) | Modèle mental | Phase 3 (croissance vs efficacité) |
| [Bid Simulator Reference](<Enchères - Simulateur d'enchères.md>) | Référence | Phase 4 |

---

## Procédures liées

| SOP | Relation |
|-----|--------------|
| [SOP - Calculer et valider les unit economics](<../../01-strategie/analyse/Analyse - Calculer et valider les unit economics.md>) | Amont : à compléter avant cette SOP |
| [SOP - Definir les objectifs et KPIs de campagne](<../strategie/Strategie - Définir les objectifs et KPIs de campagne.md>) | Amont : les objectifs déterminent le choix du PAR |
| [SOP - Configurer les encheres basees sur les conversions](<../suivi/Suivi - Configurer le suivi des conversions Google Ads.md>) | Aval : utilise les objectifs d'enchères pour configurer dans la plateforme |
| *SOP: Set Up Cart Data and Profit Tracking* | Parallèle : requis avant que le ciblage POAS soit disponible |

---

## Erreurs fréquentes

| Erreur | Pourquoi ça arrive | Comment l'éviter |
|---------|----------------|--------------|
| Fixer les cibles au seuil de rentabilité | Ne laisse aucune marge d'erreur ou de profit | Toujours appliquer un PAR < 1.0 aux valeurs de seuil de rentabilité |
| Utiliser un ROAS basé sur le revenu sans tenir compte des frais de commande | Gonfle la rentabilité apparente | Calculer la marge effective (marge bénéficiaire moins frais de commande) |
| Accepter les marges annoncées par le client sans vérification | Les clients surestiment les marges | Recouper avec les données financières backend |
| Sauter la validation avec le Performance Planner | La cible peut être correcte mais inatteignable | Toujours valider la faisabilité du volume et du budget |
| Ne pas revoir les cibles quand les entrées changent | Les changements de prix ou de taux de conversion rendent les anciennes cibles erronées | Planifier un recalcul trimestriel |
| Confondre les formules ROAS et POAS | Le ROAS divise par le PAR, le CPA multiplie | Revérifier : ROAS plus élevé = plus efficace, CPA plus bas = plus efficace |
