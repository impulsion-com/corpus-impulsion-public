# Spécifications créatives cross-plateforme

> **Plateforme :** Stratégie
> **Catégorie :** Specs créatives
> **Type :** Fiche
> **Mis à jour :** 2026-04-13
> **Source :** [claude-ads](https://github.com/AgriciDaniel/claude-ads) par AgriciDaniel (MIT). Contenu original en anglais conservé.

## Objectif

Cette fiche regroupe les specs créatives essentielles pour TOUTES les plateformes (Google, Meta, TikTok, LinkedIn, Microsoft) au même endroit : tableau master des aspect ratios, normalisation des limites de caractères, encodage vidéo standard, safe zone universelle pour vertical cross-plateforme.

> ❓ **La question centrale :** Si je dois produire UN asset qui marche partout, quelles dimensions et contraintes utiliser ?

---

## Ce que couvre cette fiche / Ce qu'elle ne couvre PAS

**Cette fiche :**

- Tableau master des aspect ratios par plateforme
- Normalisation cross-plateforme des limites de caractères
- Encodage vidéo standard (H.264, AAC, frame rate, bitrate)
- Safe zone universelle pour vidéo verticale (TikTok + Reels + Shorts + Stories)
- Quand utiliser chaque ratio

**Cette fiche ne couvre PAS :**

- Specs détaillées par plateforme (Voir : `[Plateforme] - Spécifications créatives.md` dans chaque dossier plateforme)
- Stratégie créative par plateforme (Voir : `[Plateforme]/creatives/` ou `Stratégie créative`)

---

## Cross-Platform Standards

<!-- Updated: 2026-04-13 | v1.5 -->

## Universal Safe Zone (Vertical Video)

For content running across TikTok + Reels + Shorts + Stories:

```
Safe intersection: 900×1000px center
X: 40-940px (900px wide)
Y: 450-1450px (1000px tall)
```

This is the strictest intersection of all major vertical placements. Content produced within this zone will display safely on all platforms.

---

## Character Normalization

When writing copy that needs to work across platforms, use the strictest limit:

| Component | Safe Limit | Strictest Platform |
|-----------|-----------|-------------------|
| Short headline | 30 chars | Google/Microsoft RSA |
| Long headline | 70 chars | LinkedIn recommended |
| Primary description | 90 chars | Google/Microsoft RSA |
| Short description | 25 chars | Extension callouts |

---

## Video Encoding Standard

| Component | Recommended |
|-----------|-------------|
| Video codec | H.264 High Profile |
| Audio codec | AAC |
| Audio level | -14 LUFS |
| Container | MP4 |
| Frame rate | 30fps |
| Color space | Rec. 709 |
| Bitrate (1080p) | 8-12 Mbps |

---

## Aspect Ratio Master Chart

| Ratio | Dimensions | Used By |
|-------|-----------|---------|
| 16:9 | 1920×1080 | YouTube, Google Display, LinkedIn Landscape |
| 9:16 | 1080×1920 | TikTok, Reels, Shorts, Stories |
| 4:5 | 1080×1350 | Meta Feed (preferred) |
| 1:1 | 1080×1080 | Meta Feed, LinkedIn, Carousel |
| 1.91:1 | 1200×628 | Google PMax, LinkedIn Single Image |
| 4:1 | 1200×300 | Google Logo (landscape) |

---

## Production Priority by Use Case

**Single platform launch :**
- Google PMax → 1200×628 + 1200×1200 + 960×1200 + 1080×1920 + logos
- Meta → 1080×1350 (Feed) + 1080×1920 (Stories/Reels)
- TikTok → 1080×1920 only
- LinkedIn → 1080×1080 + 1200×628
- Microsoft → 1200×628 (Multimedia) + reuse Google assets

**Multi-platform launch (e-commerce ROAS-focus) :**
1. 1080×1350 (Meta Feed prioritaire)
2. 1080×1920 (Vertical universel : TikTok + Reels + Stories + Shorts)
3. 1200×628 (Google PMax + LinkedIn + Microsoft Multimedia)
4. 1080×1080 (LinkedIn + Meta carousel)

**B2B SaaS launch :**
1. 1080×1080 (LinkedIn + Meta carousel)
2. 1200×628 (Google PMax + LinkedIn + Microsoft + Document Ads cover)
3. 1080×1350 (Meta Feed)

---

## Cross-Platform Production Cost Optimization

Éviter de payer 5x pour le même message :

- **Base image 1200×628** : réutilisable Google PMax, LinkedIn landscape, Microsoft Multimedia, Audience Network
- **Base vidéo 1080×1920 dans safe zone universel** : réutilisable TikTok, Reels, Stories, Shorts, LinkedIn 9:16
- **Copy RSA Google** : copiable tel quel sur Microsoft RSA (limites identiques)
- **Asset Meta 1080×1350** : recadrable en 1080×1080 (LinkedIn) avec marge en bas

Production minimale pour 5 plateformes : **3 assets** (1080×1920 dans safe zone, 1200×628, 1080×1350).
