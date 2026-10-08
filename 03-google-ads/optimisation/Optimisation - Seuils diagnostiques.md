# Seuils diagnostiques

> **Plateforme :** Google Ads
> **Catégorie :** Optimisation
> **Type :** SOP
> **Mis à jour :** 2026-05-07

## Objectif

Consolide tous les seuils diagnostiques numériques utilisés par les skills en une seule référence. Chaque seuil définit quand une métrique déclenche un verdict PASS, WARN ou FAIL dans une vérification diagnostique.

---

## Ce que couvre cette fiche / Ce qu'elle ne couvre PAS

**Cette fiche :**

- Liste chaque seuil quantitatif utilisé dans les vérifications diagnostiques
- Organise les seuils par domaine (Keywords, Enchères, Budgets, etc.)
- Lie chaque seuil à l'ID de vérification du skill qui l'utilise
- Fournit la base de comparaison et la sévérité pour chaque seuil

**Cette fiche ne couvre PAS :**

- Comment corriger les problèmes qui échouent aux seuils (Voir : SOPs et playbooks spécifiques aux skills)
- Le modèle de scoring ou le calcul de notes (Voir : SKILL_INTERFACE_CONTRACTS.md)
- Le contexte de stratégie business ou de méthodologie (Voir : Mental Models spécifiques au domaine)

---

## Comment lire les tableaux

| Colonne | Signification |
|--------|---------|
| **Métrique** | Ce qui est mesuré |
| **Seuil** | La valeur numérique de déclenchement |
| **Comparaison** | À quoi la métrique est comparée |
| **Verdict** | PASS, WARN ou FAIL quand le seuil est franchi |
| **Sévérité** | Critical (15pts), High (10pts), Medium (5pts), Low (3pts) |
| **Check ID** | Le diagnostic du skill qui utilise ce seuil |

Tous les seuils supposent une fenêtre de lookback de 30 jours sauf indication contraire.

---

## Keywords

| Métrique | Seuil | Comparaison | Verdict | Sévérité | Check ID |
|--------|-----------|-----------|---------|----------|----------|
| Part des dépenses + conversions du keyword | >30 % du total de la campagne | Totaux de la campagne | Classification : Hero | N/A (classification) | KW-D05 |
| Part des dépenses vs part des conversions du keyword | Part de dépenses >20pp au-dessus de la part de conversions | Moyennes de la campagne | FAIL : Villain | High | KW-D07 |
| Impressions du keyword | 0 impression en 30 jours | Absolu | FAIL : Zombie | Medium | KW-D08 |
| Clics du keyword | 0 clic en 30 jours (avec des impressions) | Absolu | WARN : Faible performeur | Medium | KW-D08 |
| Dépenses du keyword, zéro conversion | Dépenses >2x CPA cible, 0 conversion | CPA cible | FAIL : Non-convertissant | High | KW-D07 |
| Requête large en CPC manuel | Tout keyword en requête large en CPC manuel ou Maximiser les clics | Type de stratégie | FAIL | Medium | KW-D02 |
| Même keyword en types de correspondance multiples | >1 type de correspondance du même keyword dans un ad group | Contenu du ad group | WARN | Low | KW-D03 |
| Keywords en double entre campagnes | Doublon exact trouvé | Cross-campagne | WARN | Medium | KW-D10 |
| En dessous de l'enchère première page (Manuel/Max Clicks) | Enchère < enchère première page estimée | Estimation Google | WARN | Low | KW-D14 |
| Keyword faible volume | Statut "Faible volume de recherche" depuis >30 jours | Statut Google | WARN | Low | KW-D15 |
| Changement de niveau de performance du keyword | Niveau changé vs période de 30 jours précédente | Classification de la période précédente | WARN (si dégradé) | Medium | KW-D09 |

---

## Termes de recherche

| Métrique | Seuil | Comparaison | Verdict | Sévérité | Check ID |
|--------|-----------|-----------|---------|----------|----------|
| Dépenses du terme de recherche, zéro conversion | Dépenses >1x CPA cible, 0 conversion | CPA cible | FAIL | High | ST-D02 |
| CPA du terme de recherche | CPA >2x moyenne de la campagne | CPA moyen de la campagne | FAIL : Sous-performant | Medium | ST-D03 |
| Part de dépenses non pertinentes | >5 % des dépenses totales de campagne sur des termes non pertinents | Dépenses totales de la campagne | FAIL | High | ST-D01 |
| Part de dépenses non pertinentes | 2-5 % des dépenses totales de campagne sur des termes non pertinents | Dépenses totales de la campagne | WARN | Medium | ST-D01 |
| Campagne sans mots-clés à exclure | 0 négatif sur toute campagne active | Absolu | FAIL | High | ST-D06 |
| Campagne sans liste de négatifs partagée | Aucune liste partagée liée | Absolu | WARN | Medium | ST-D07 |
| Conflit de mot-clé négatif | Un négatif bloque un keyword actif | Liste de keywords | FAIL | Critical | ST-D08 |
| Fraîcheur de l'analyse N-gram | Dernière analyse >30 jours | Date actuelle | WARN | Medium | ST-D15 |
| N-gram non convertissant | Pattern de mots avec >3x CPA cible en dépenses, 0 conversion | CPA cible | FAIL | High | ST-D13 |
| N-gram inefficace | CPA du pattern >2x moyenne de la campagne | CPA moyen de la campagne | WARN | Medium | ST-D14 |
| Dérive CPA des variantes proches | CPA variante proche >2x CPA du keyword parent | CPA du keyword parent | FAIL | High | ST-D17 |
| Part de dépenses des variantes proches | Dépenses variante proche >50 % des dépenses du keyword | Dépenses du keyword parent | WARN | Medium | ST-D18 |
| Part de requêtes marque PMax | Requêtes marque >30 % des termes de recherche PMax | Volume de termes de recherche PMax | WARN | High | ST-D25 |
| Terme performant non keyword | 3+ conversions, CPA sous la moyenne de la campagne, non ajouté | CPA moyen de la campagne | WARN : Candidat à la promotion | Medium | ST-D20 |

---

## Niveau de qualité

| Métrique | Seuil | Comparaison | Verdict | Sévérité | Check ID |
|--------|-----------|-----------|---------|----------|----------|
| QS moyen pondéré par les impressions | <5,0 | Absolu | FAIL | High | QS-D01 |
| QS moyen pondéré par les impressions | 5,0-6,9 | Absolu | WARN | Medium | QS-D01 |
| Keywords avec QS <=3 | >10 % des keywords actifs | Nombre de keywords actifs | FAIL | High | QS-D02 |
| Keyword à forte dépense avec QS <5 | Top 20 % par dépenses ET QS <5 | Classement par dépenses | FAIL | Critical | QS-D03 |
| Tout composant "En dessous de la moyenne" | 1+ composant En dessous de la moyenne | Statut Google | FAIL (pour ce composant) | High | QS-D07/D08/D09 |
| Composant limitant dominant | >50 % des notes En dessous de la moyenne sur un seul composant | Distribution des composants | WARN : Problème systémique | Medium | QS-D10 |
| Keywords sans QS | >30 % des keywords sans données QS | Nombre de keywords actifs | WARN | Low | QS-D06 |
| Tendance QS : déclin | QS baissé de 1+ point en moyenne sur 3 périodes consécutives | 3 périodes de reporting précédentes | WARN | Medium | QS-D15 |
| Tendance QS : déclin brutal | QS baissé de 2+ points en une période | Période précédente | FAIL | High | QS-D15 |
| Corrélation IS perdu (rank) avec QS faible | >15 % IS perdu pour le rank sur les campagnes avec QS <6 | Métriques IS de la campagne | FAIL : QS freine le rank | High | QS-D20 |
| Prime CPC sur keywords à faible QS | CPC >30 % au-dessus de la moyenne du ad group sur les keywords QS <5 | CPC moyen du ad group | WARN | Medium | QS-D21 |

---

## Enchères

| Métrique | Seuil | Comparaison | Verdict | Sévérité | Check ID |
|--------|-----------|-----------|---------|----------|----------|
| Enchères manuelles sur campagne à fort volume | CPC manuel sur campagne avec 50+ conversions/mois | Nombre de conversions mensuelles | WARN | Medium | BID-D02 |
| Stratégies d'enchères intelligentes sur campagne à faible volume | CPA/ROAS cible sur campagne avec <15 conversions/mois | Nombre de conversions mensuelles | FAIL | High | BID-D03 |
| Stratégies d'enchères intelligentes sur campagne limite | CPA/ROAS cible sur campagne avec 15-29 conversions/mois | Nombre de conversions mensuelles | WARN | Medium | BID-D03 |
| CPA cible vs équilibre | CPA cible >100 % du CPA d'équilibre | CPA d'équilibre | FAIL : Cible non rentable | Critical | BID-D05 |
| CPA cible vs équilibre | CPA cible >80 % du CPA d'équilibre | CPA d'équilibre | WARN : Marge fine | High | BID-D05 |
| ROAS cible vs équilibre | ROAS cible <100 % du ROAS d'équilibre | ROAS d'équilibre | FAIL : Cible non rentable | Critical | BID-D06 |
| CPA/ROAS réel vs cible | >20 % d'écart soutenu pendant 14+ jours | CPA/ROAS cible | FAIL | High | BID-D08 |
| CPA/ROAS réel vs cible | 10-20 % d'écart soutenu pendant 14+ jours | CPA/ROAS cible | WARN | Medium | BID-D08 |
| Durée de la phase d'apprentissage | >14 jours en statut "Apprentissage" | Statut de la stratégie | FAIL : Apprentissage prolongé | High | BID-D10 |
| Changements pendant l'apprentissage | Tout changement de campagne dans les 14 jours d'un changement de stratégie | Historique des changements | WARN | Medium | BID-D11 |
| Récence du changement de stratégie | Stratégie changée dans les 14 derniers jours | Historique des changements | WARN : En apprentissage | Low | BID-D13 |
| Types de campagnes mixtes dans un portfolio | Stratégie portfolio couvrant différents types de campagnes | Type de campagne | WARN | Medium | BID-D14 |
| Plafond CPC vs CPC top | Plafond CPC <80 % des CPC des keywords les plus performants | Distribution CPC des keywords | WARN : Le plafond peut limiter | Medium | BID-D16 |
| Conflit budget partagé + portfolio | Budget partagé ET stratégie portfolio sur les mêmes campagnes | Type de budget + stratégie | WARN | Medium | BID-D17 |
| Modificateurs non-zéro en Stratégies d'enchères intelligentes | Tout modificateur != 0 % et != -100 % en Stratégies d'enchères intelligentes | Valeurs des modificateurs | WARN : Ignoré par l'algorithme | Low | BID-D18 |
| Pic de CPC | Augmentation CPC >25 % vs 14 jours précédents | CPC moyen des 14 jours précédents | FAIL | High | BID-D22 |
| Tendance CPC à la hausse | CPC en augmentation pendant 3+ périodes consécutives de 7 jours | 3 périodes précédentes | WARN | Medium | BID-D23 |
| Opportunité simulateur d'enchères | Le simulateur montre >20 % d'augmentation de conversions pour <15 % d'augmentation de coût | Prévision du simulateur | WARN : Opportunité | Medium | BID-D24 |
| Règles de valeur de conversion sur campagne non-VBB | Règles de valeur actives mais campagne pas en enchères basées sur la valeur | Type de stratégie d'enchères | WARN | Low | BID-D25 |

---

## Budgets

| Métrique | Seuil | Comparaison | Verdict | Sévérité | Check ID |
|--------|-----------|-----------|---------|----------|----------|
| Campagne "Limitée par le budget" | Le statut indique limitée | Statut Google | WARN (vérifier la rentabilité) | Medium | BUD-D01 |
| IS perdu pour cause de budget | >10 % IS perdu pour le budget | Métriques IS de la campagne | WARN | Medium | BUD-D02 |
| IS perdu pour cause de budget | >25 % IS perdu pour le budget | Métriques IS de la campagne | FAIL | High | BUD-D02 |
| Rentable + limité par le budget | CPA sous la cible ET IS perdu pour le budget >10 % | CPA cible + métriques IS | FAIL : Opportunité manquée | Critical | BUD-D03 |
| Non rentable + limité par le budget | CPA au-dessus de la cible ET limité par le budget | CPA cible + statut Google | WARN : Réduire d'abord | High | BUD-D04 |
| Ratio budget journalier:CPA | Budget journalier <1x CPA cible | CPA cible | FAIL | High | BUD-D05 |
| Ratio budget journalier:CPA | Budget journalier 1-1,6x CPA cible | CPA cible | WARN : Atteint le min CPA cible mais pas le min ROAS cible | Medium | BUD-D05 |
| Budget épuisé avant 18h local | Budget épuisé avant 18:00 régulièrement (3+ jours/semaine) | Pattern de dépenses horaires | WARN | Medium | BUD-D06 |
| Pacing mensuel : sur-dépense | Dépenses projetées >110 % du budget mensuel | Budget mensuel cible | WARN | Medium | BUD-D10 |
| Pacing mensuel : sous-dépense | Dépenses projetées <90 % du budget mensuel | Budget mensuel cible | WARN | Medium | BUD-D11 |
| Désalignement performance vs part de budget | Campagne avec CPA 30 %+ sous la moyenne qui reçoit <15 % du budget | Part de budget du compte | WARN : Performeur sous-financé | High | BUD-D13 |
| Part de budget du sous-performeur | Campagne avec CPA 50 %+ au-dessus de la moyenne qui reçoit >20 % du budget | Part de budget du compte | FAIL : Gaspillage sur-financé | High | BUD-D14 |
| Campagne active sans dépense | Campagne activée avec 0 dépense depuis 14+ jours | Absolu | WARN | Medium | BUD-D16 |
| Déséquilibre de budget partagé | Une campagne consomme >70 % du budget partagé | Total du budget partagé | WARN | Medium | BUD-D17 |
| Budget partagé avec objectifs mixtes | Campagnes avec différentes actions de conversion sur le même budget partagé | Config des actions de conversion | FAIL | High | BUD-D18 |
| Conflit budget partagé + portfolio | Budget partagé en conflit avec la stratégie d'enchères portfolio | Type de stratégie + budget | WARN | Medium | BUD-D19 |

---

## Géographique, planning et appareils

| Métrique | Seuil | Comparaison | Verdict | Sévérité | Check ID |
|--------|-----------|-----------|---------|----------|----------|
| Méthode de ciblage géo : "Présence ou intérêt" | Réglé sur "Présence ou intérêt" sans justification | Paramètre de méthode de ciblage | WARN | Medium | GS-D01 |
| CPA/ROAS par localisation | CPA 30 %+ au-dessus de la moyenne du compte | CPA moyen du compte | WARN : Sous-performant | Medium | GS-D02 |
| CPA/ROAS par localisation | CPA 50 %+ au-dessus de la moyenne du compte | CPA moyen du compte | FAIL : Gaspillage élevé | High | GS-D02 |
| Localisation sans conversion | 0 conversion, dépenses >2x CPA cible, 50+ clics | CPA cible + nombre de clics | FAIL | High | GS-D03 |
| Localisation performante + IS limité | CPA 20 %+ sous la moyenne ET IS perdu pour le budget >10 % | CPA moyen du compte + IS | WARN : Opportunité | Medium | GS-D04 |
| Localisation non-cible non exclue | Diffusion dans des localisations hors du set cible | Paramètres de ciblage | WARN | Medium | GS-D05 |
| CPA par appareil | CPA de l'appareil 50 %+ au-dessus de la moyenne du compte | CPA moyen du compte | FAIL | High | GS-D06 |
| Créneau horaire du planning | CPA 60 %+ au-dessus de la moyenne OU zéro conversion (confirmé 4+ semaines) | CPA moyen du compte | FAIL : Créneau mort | High | GS-D07 |
| Confirmation du pattern de planning | Pattern observé sur <4 semaines de données | Durée des données | WARN : Non confirmé | Low | GS-D08 |
| Empilement de modificateurs | Modificateur combiné localisation + appareil + planning >50 % ou <-50 % | Effet combiné | WARN : Amplification non intentionnelle | Medium | GS-D09 |
| CPA segment démographique | CPA 50 %+ au-dessus de la moyenne du compte (âge, genre ou revenu) | CPA moyen du compte | WARN | Medium | GS-D10 |
| Segment démographique : sous-performance soutenue | CPA 50 %+ au-dessus de la moyenne pendant 60+ jours, 100+ clics | CPA moyen du compte | FAIL : Candidat à l'exclusion | High | GS-D13 |
| Changement géographique saisonnier | CPA de la période actuelle dévie >30 % vs même période l'an dernier pour une localisation | Comparaison YoY | WARN | Medium | GS-D12 |

---

## Emplacements

| Métrique | Seuil | Comparaison | Verdict | Sévérité | Check ID |
|--------|-----------|-----------|---------|----------|----------|
| Catégorie d'apps mobiles non exclue | Emplacements de catégories d'apps actifs sur Display/Video/DG/PMax | Liste d'exclusions | WARN | Medium | PL-D01 |
| Part de dépenses apps mobiles (sans conversions) | Dépenses apps >5 % du total de la campagne, 0 conversion | Dépenses totales de la campagne | FAIL | High | PL-D01 |
| Emplacement Display : zéro clic | Emplacement avec 1 000+ impressions, 0 clic | Absolu | WARN : Invalide | Medium | PL-D02 |
| Emplacement Display : CTR anormalement élevé | CTR du emplacement >10 % | Absolu | FAIL : Clics accidentels | High | PL-D02 |
| Emplacement Display : CTR élevé, zéro conversion | CTR du emplacement >3 %, 0 conversion | Absolu | FAIL : Trafic invalide | High | PL-D02 |
| Emplacement Display : CPA élevé | CPA du emplacement >3x moyenne de la campagne | CPA moyen de la campagne | FAIL | High | PL-D02 |
| Vidéo : contenu enfants | Emplacement sur du contenu pour enfants connu | Classification du contenu | FAIL : sécurité de la marque | Critical | PL-D03 |
| Patterns de domaines connus problématiques | Domaines garés, sites MFA, domaines à caractères aléatoires | Pattern matching | FAIL | High | PL-D04 |
| Pas de liste d'exclusion au niveau du compte | Aucune liste d'exclusion n'existe au niveau du compte | Paramètres du compte | FAIL | High | PL-D05 |
| Liste d'exclusion non mise à jour | Liste non mise à jour depuis 90+ jours | Date de dernière mise à jour | WARN | Medium | PL-D09 |
| Liste d'exclusion proche de la capacité | Liste >80 % de la limite de 65K | Taille de la liste | WARN | Low | PL-D09 |
| Sécurité de la marque : inventaire étendu | Type d'inventaire réglé sur "Étendu" | Paramètre d'inventaire | WARN | Medium | PL-D06 |

---

## Concurrence

| Métrique | Seuil | Comparaison | Verdict | Sévérité | Check ID |
|--------|-----------|-----------|---------|----------|----------|
| Trajectoire de part d'impression | >10pp de déclin IS sur 3 mois | Tendance 3 mois | FAIL | High | CA-D01 |
| Trajectoire de part d'impression | 5-10pp de déclin IS sur 3 mois | Tendance 3 mois | WARN | Medium | CA-D01 |
| Perte IS combinée (budget + rank) | >20 % de perte IS combinée | Métriques IS de la campagne | FAIL | High | CA-D02 |
| Classification concurrent principal | IS >30 % ET taux de chevauchement >50 % | Insights sur les enchères | Classification : Core | N/A (classification) | CA-D03 |
| Croissance IS du concurrent | IS du concurrent principal en croissance >10pp par trimestre | Tendance trimestrielle | WARN | Medium | CA-D04 |
| Déclin du taux haut de page | IS absolu haut de page en déclin >5pp sur 30 jours | Tendance 30 jours | WARN | Medium | CA-D05 |
| Déclin de la part de surclassement | Part de surclassement vs concurrent principal baissée >15pp | Tendance 3 mois | FAIL | High | CA-D06 |
| Menace de nouvel entrant | Nouveau concurrent apparaissant avec IS >20 % soutenu 30+ jours | Historique Insights sur les enchères | WARN | High | CA-D12 |
| Corrélation CPC-concurrence | Hausse CPC >15 % corrélée avec IS du nouveau concurrent >15 % | Tendance CPC + Insights sur les enchères | WARN : Pression concurrentielle | Medium | CA-D11 |

---

## Détection de gaspillage

| Métrique | Seuil | Comparaison | Verdict | Sévérité | Check ID |
|--------|-----------|-----------|---------|----------|----------|
| Dépenses emplacement apps mobiles | >5 % des dépenses de campagne sur les apps sans conversions | Dépenses totales de la campagne | FAIL | High | WD-D02 |
| Différentiel CPA Partenaires du Réseau de Recherche | CPA Partenaires du Réseau de Recherche >2x CPA Google Search | CPA Google Search | FAIL | High | WD-D03 |
| Différentiel CPA Partenaires du Réseau de Recherche | CPA Partenaires du Réseau de Recherche 1,5-2x CPA Google Search | CPA Google Search | WARN | Medium | WD-D03 |
| Réseau Display sur campagne Search | Réseau Display activé sur toute campagne Search | Paramètres réseau | FAIL | High | WD-D04 |
| Dérive CPA variantes proches | CPA variante proche >2x CPA du keyword parent | CPA du keyword parent | FAIL | High | WD-D05 |
| Recommandations auto-appliquées actives | Tout paramètre d'application automatique activé sans revue | Paramètres du compte | WARN | Medium | WD-D06 |
| Valeur monétaire IS perdu | IS perdu (budget) × CPC estimé × CVR estimé × CPA moyen | Coût d'opportunité calculé | Classification : estimation du gaspillage | N/A (quantification) | WD-D07 |
| Trou de mots-clés à exclure : pattern récurrent | Même terme non pertinent apparaissant 3+ fois en 30 jours | Rapport sur les termes de recherche | FAIL : Trou | High | WD-D08 |
| Créneau mort sans -100 % | Créneau sans conversion confirmé (4+ semaines) sans exclusion de planning | Planning + données de conversion | WARN | Medium | WD-D10 |
| Dépenses géographiques non-cible | >3 % des dépenses dans des localisations hors du set de ciblage | Dépenses totales de la campagne | WARN | Medium | WD-D11 |
| Cannibalisation de keywords | Même requête déclenchée par 3+ keywords dans différentes campagnes | Chevauchement des termes de recherche | WARN | Medium | WD-D12 |
| Chevauchement Shopping/Search/PMax | Même produit/requête servi par 2+ types de campagnes simultanément | Termes de recherche + rapports Shopping | WARN | Medium | WD-D12 |
| Tracking (suivi des conversions/évènements) cassé + dépenses actives | Nombre de conversions baissé >80 % pendant 3+ jours alors que la campagne dépense | Tendance des conversions | FAIL : Urgence | Critical | WD-D13 |
| CPC marque vs baseline organique | CPC marque >3x valeur implicite du CTR organique moyen du secteur | Valeur estimée du clic organique | WARN | Medium | WD-D14 |

---

## Seuils cross-domaines

Ces seuils s'appliquent à travers plusieurs skills et domaines.

| Métrique | Seuil | Comparaison | Verdict | Sévérité | Utilisé par |
|--------|-----------|-----------|---------|----------|---------|
| Chute du volume de conversions | >50 % de baisse vs moyenne glissante 7 jours | Moyenne glissante 7 jours | FAIL : Incident de tracking | Critical | TRK-D10, WD-D13, MON-D01 |
| Fraîcheur des données : données du compte | >7 jours depuis la dernière extraction de données | Date actuelle | WARN : Données obsolètes | Medium | Tous les skills |
| Fenêtre d'évaluation minimale | <2x le délai de conversion | Jours de délai de conversion | WARN : Évaluation prématurée | Medium | BID-D08, BUD-D09, GS-D08 |
| Confiance statistique pour les décisions | <95 % de confiance (standard) ou <90 % (directionnel) | Test statistique | WARN : Données insuffisantes | Medium | Tous les skills diagnostiques |
| Seuil minimum de clics pour le jugement | <30 clics sur l'entité évaluée | Nombre de clics | SKIP : Données insuffisantes | N/A | KW-D07, ST-D02, GS-D03, PL-D02 |
| Seuil minimum de dépenses pour le jugement | Dépenses <1x CPA cible sur l'entité évaluée | CPA cible | SKIP : Données insuffisantes | N/A | KW-D07, ST-D02, GS-D02 |

---

## Notes de calibration des seuils

1. **Tous les seuils CPA supposent que le CPA cible est correctement défini.** Si le CPA cible n'est pas configuré, utilisez le CPA d'équilibre comme point de référence. (Voir : [Bid Targets Reference](<../encheres/Enchères - Cibles d'enchères.md>))

2. **Les seuils en pourcentage sont des valeurs par défaut.** Les skills doivent permettre des surcharges de seuils via `config/ads-context.config.json` pour les comptes avec des mécanismes économiques non standard (B2B haute valeur, entreprises saisonnières, secteurs à faible volume).

3. **Fenêtres de lookback :** sauf indication, les seuils utilisent un lookback de 30 jours. Exceptions : pic de CPC (14 jours), phase d'apprentissage (14 jours), tendances QS (3 périodes de reporting), saisonnier (YoY), fraîcheur des listes d'exclusion (90 jours).

4. **Logique d'attribution de sévérité :**
   - **Critical (15pts) :** Perd activement de l'argent ou tracking cassé
   - **High (10pts) :** Gaspillage significatif ou opportunité manquée, corriger dans le cycle d'optimisation actuel
   - **Medium (5pts) :** Opportunité d'optimisation, planifier pour le prochain cycle
   - **Low (3pts) :** Écart de bonne pratique, traiter quand la capacité le permet

5. **Conditions SKIP :** quand les données sont insuffisantes pour porter un jugement (en dessous des seuils minimaux de clics/dépenses), les diagnostics doivent SKIP plutôt que PASS. SKIP retire la vérification du dénominateur pour ne pas gonfler les scores.

---

## Documents liés

| Document | Relation |
|----------|-------------|
| [Conversion Volume Thresholds Reference](<../suivi/Suivi - Seuils de volume de conversions.md>) | Minimums de volume par stratégie d'enchères (complémentaire, non dupliqué) |
| [Bid Targets Reference](<../encheres/Enchères - Cibles d'enchères.md>) | Calculs d'équilibre qui ancrent les seuils CPA/ROAS |
| [Niveau de qualité Reference](<../search/Search - Niveau de qualité.md>) | Interprétation de l'échelle QS |
| [Budget Pacing Reference](<../encheres/Enchères - Rythme de dépense.md>) | Mécanismes budgétaires derrière les seuils de budget |
| [Insights sur les enchères Reference](<../search/Search - Insights sur les enchères.md>) | Métriques concurrentielles derrière les seuils d'IS |
| [Improve Niveau de qualité](<../search/Search - Améliorer le Niveau de qualité.md>) | Route les constats QS vers le bon correctif |
