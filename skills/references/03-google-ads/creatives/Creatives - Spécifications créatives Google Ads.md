# Spécifications créatives Google Ads

> **Plateforme :** Google Ads
> **Catégorie :** Creatives
> **Type :** Fiche
> **Mis à jour :** 2026-03-12
> **Source :** [claude-ads](https://github.com/AgriciDaniel/claude-ads) par AgriciDaniel (MIT). Contenu original en anglais conservé.

## Objectif

Cette fiche donne les specs techniques (dimensions, ratios, limites de caractères, prompts de génération) pour les créatives Google Ads : PMax, RSA, Demand Gen, YouTube thumbnails. À utiliser pour briefer un designer ou générer des assets via IA.

> ❓ **La question centrale :** Quel format générer en premier pour couvrir le maximum de placements ?

---

## Ce que couvre cette fiche / Ce qu'elle ne couvre PAS

**Cette fiche :**

- Specs PMax asset groups (image, vidéo, logos), Demand Gen, YouTube
- Limites de caractères RSA (titres, descriptions, display paths)
- Prompts de génération IA recommandés et à éviter
- Priorité des aspect ratios quand on a peu de temps

**Cette fiche ne couvre PAS :**

- Les specs YouTube standalone (Voir : [Video - Spécifications créatives YouTube](<../video/Video - Spécifications créatives YouTube.md>))
- Les specs cross-plateforme (Voir : [Specs - Spécifications créatives cross-plateforme](<../../01-strategie/specs-creatives/Specs - Spécifications créatives cross-plateforme.md>))
- La rédaction de RSA (Voir : [Search - Rédiger des RSA performantes](<../../../../03-google-ads/search/Search - Rédiger des RSA performantes.md>))

---

## Google Creative Specs: Generation Guide

<!-- Updated: 2026-03-12 -->

## Performance Max Asset Group

### Image Assets (required for full coverage)

| Asset Type | Dimensions | Ratio | Priority |
|-----------|-----------|-------|----------|
| Marketing image (landscape) | 1200×628 | 1.91:1 | **Required** |
| Square image | 1200×1200 | 1:1 | **Required** |
| Portrait image | 960×1200 | 4:5 | High |
| Logo (landscape) | 1200×300 | 4:1 | Required |
| Logo (square) | 1200×1200 | 1:1 | Required |

**Max per asset group:** 20 images total across marketing + square + portrait.
**File requirements:** JPG or PNG, max 5MB, min 128×128.

### Generation targets per campaign

Minimum viable set (3 images):
1. `1200×628` landscape: primary ad creative
2. `1200×1200` square: feed placements
3. `960×1200` portrait: mobile-optimized

Full coverage set (5 images): add `1080×1920` vertical for YouTube Shorts placements.

---

## Demand Gen (formerly Discovery)

| Placement | Ratio | Recommended Size |
|-----------|-------|-----------------|
| Google Discover | 1:1 | 1080×1080 |
| Google Discover | 4:5 | 1080×1350 |
| Gmail Promotions | 1.91:1 | 1200×628 |
| YouTube In-Feed | 1:1 | 1080×1080 |

Generate both 1:1 and 4:5 variants for maximum placement coverage.

---

## YouTube Thumbnails

| Type | Dimensions | Notes |
|------|-----------|-------|
| Standard thumbnail | 1280×720 (16:9) | Used for in-feed, search results |
| Square thumbnail | 1080×1080 (1:1) | Shorts feed |

**Thumbnail generation guidelines:**
- High contrast between subject and background
- Face or product in center-left position (text overlays go right)
- Avoid busy backgrounds; viewer scans at thumbnail size
- Bright, saturated colors outperform muted palettes for CTR
- Include product or person; abstract imagery underperforms

---

## RSA Copy Limits

| Component | Min | Max | Character Limit |
|-----------|-----|-----|-----------------|
| Headlines | 3 | 15 | 30 chars each |
| Descriptions | 2 | 4 | 90 chars each |
| Display paths | N/A | 2 | 15 chars each |

Best practice: 8+ headlines, 2+ descriptions.

---

## Image Generation Prompt Modifiers

Apply these modifiers to every Google ad image prompt:

**Always include:**
- `"horizontal composition"` (for 1.91:1 and 16:9 assets)
- `"clean background"` (PMax images compete for attention in content feeds)
- `"product or subject centered with breathing room"`
- `"no text overlay"` (text is applied by the ad platform, not baked into the image)
- `"high contrast, vibrant colors"`

**Avoid in prompts:**
- Extreme close-ups (PMax crops images across many placements)
- Complex scene layouts (will crop poorly to 1:1 and 4:5)
- Text or logos embedded in the image (violates Google policy for some ad types)

---

## AI Max for Search (2026)

AI Max is Google's broad match + AI-generated creative system. When active:
- Headlines may be auto-generated from landing page content
- URL expansion sends traffic to best-fit page (not just Final URL)
- Image generation for PMax applies AI selection from asset pool

**Implication for generation:** Provide diverse asset pool (3+ aspect ratios, 3+ visual angles) to give AI Max more to work with.

---

## Aspect Ratio Priority

When generating a single image for Google (time-constrained):
1. `1200×628` (1.91:1): covers most placements
2. `1200×1200` (1:1): adds feed placements
3. `960×1200` (4:5): adds mobile portrait placements

Always generate 1 and 2 at minimum.
