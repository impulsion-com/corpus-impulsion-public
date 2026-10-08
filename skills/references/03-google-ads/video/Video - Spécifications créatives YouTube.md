# Spécifications créatives YouTube

> **Plateforme :** Google Ads
> **Catégorie :** Video
> **Type :** Fiche
> **Mis à jour :** 2026-03-12
> **Source :** [claude-ads](https://github.com/AgriciDaniel/claude-ads) par AgriciDaniel (MIT). Contenu original en anglais conservé.

## Objectif

Cette fiche couvre les specs créatives YouTube : formats d'annonces (Skippable In-Stream, Non-Skippable, Bumper, In-Feed, Shorts), thumbnails, safe zones Shorts, et prompts de génération pour images companion / storyboard.

> ❓ **La question centrale :** Quelle thumbnail générer pour maximiser le CTR sans tomber dans la zone UI ?

---

## Ce que couvre cette fiche / Ce qu'elle ne couvre PAS

**Cette fiche :**

- 5 formats d'annonces YouTube avec ratios, durées, règles de skip
- Specs thumbnails standard et Shorts
- Safe zone Shorts (1080×1920) avec diagramme
- Génération de storyboard frames (Pre-Skip Hook, Bumper)
- Limites de copy companion

**Cette fiche ne couvre PAS :**

- Génération de vidéos complètes (impossible avec image models seuls)
- Création d'une campagne Video (Voir : [Video - Lancer une campagne](<../../../../03-google-ads/video/Video - Lancer une campagne.md>))
- Specs Google Ads non-vidéo (Voir : [Creatives - Spécifications créatives Google Ads](<../creatives/Creatives - Spécifications créatives Google Ads.md>))

---

## YouTube Creative Specs: Generation Guide

<!-- Updated: 2026-03-12 -->

## Ad Format Overview

| Format | Ratio | Resolution | Duration | Skip |
|--------|-------|-----------|----------|------|
| Skippable In-Stream | 16:9 | 1920×1080 | 12s-3min (rec 15-30s) | After 5s |
| Non-Skippable | 16:9 | 1920×1080 | 15-60s (expanded 2025) | No |
| Bumper | 16:9 | 1920×1080 | ≤6s | No |
| In-Feed Video | 16:9 | 1920×1080 | Any | N/A |
| YouTube Shorts | 9:16 | 1080×1920 | ≤60s | Swipe |

---

## Thumbnail Generation

### Standard Thumbnail

| Property | Value |
|----------|-------|
| Dimensions | 1280×720 (16:9) |
| Format | JPG or PNG |
| Max size | 2MB |
| Min resolution | 640×360 |

**Thumbnail generation guidelines:**
- High contrast between subject and background
- Face or product in center-left (text overlays typically placed right side)
- Bright, saturated colors outperform muted palettes for CTR
- Include human faces when relevant (psychological click-trigger)
- Avoid cluttered backgrounds; viewer evaluates at 246×138px in search
- Shock or curiosity gap increases CTR more than informational thumbnails

### Shorts Thumbnail

| Property | Value |
|----------|-------|
| Dimensions | 1080×1080 (1:1) |
| Safe zone | Center 1080×1080 (full frame) |

---

## Shorts Safe Zone (1080×1920)

```
┌─────────────────────────────────┐ ← Top (Y:0)
│                                 │
│   ██████████████████████████   │ ← SAFE START Y:250
│   █                        █   │
│   █   SAFE CONTENT ZONE    █   │
│   █     1080×1420px        █   │
│   █   (full width, center) █   │
│   █                        █   │
│   ██████████████████████████   │ ← SAFE END Y:1670
│                                 │
│  SUBSCRIBE / LIKE / COMMENT UI  │ ← Y:1670-1920 (avoid)
└─────────────────────────────────┘ ← Bottom (Y:1920)
```

**Safe zone:** Full width, Y:250-1670. Bottom 250px is UI overlay (subscribe, like).

**Shorts CTA timing:** CTA button appears at **3 seconds** for PMax/App/Demand Gen campaigns, **10 seconds** for Video View/Reach campaigns. Music/voiceover increases conversions by 20%+.

---

## Storyboard Frame Generation

For agencies creating video assets, use image generation for storyboard frames:

### Pre-Skip Hook (Skippable In-Stream)
First 5 seconds must capture attention before the skip button appears.

**Generate as:** Single 1920×1080 frame capturing the hook visual.
Prompt modifier: `"dramatic opening frame, immediate visual interest, skip-proof hook"`

### Bumper Ad Frame (≤6s)
Single message, no time for story arc.

**Generate as:** One 1920×1080 frame = the entire bumper concept.
Prompt modifier: `"single clear message, product/brand front and center, high recall"`

---

## Copy Limits (YouTube Companion)

| Component | Limit |
|-----------|-------|
| Headline | 15 chars |
| CTA button | Predefined |
| Description (in-feed) | 2 lines, 35 chars each |

---

## Image Generation Prompt Modifiers

**For Standard Thumbnail (1280×720):**
- `"horizontal composition, 16:9 aspect ratio"`
- `"subject in center-left third of frame"`
- `"high contrast, bold colors"`
- `"dramatic lighting"` (thumbnails need visual pop)
- `"designed to be legible at thumbnail size"`

**For Shorts (1080×1920 vertical):**
- `"vertical composition, subject centered in upper portion"`
- `"bottom 250px is clear background only"`
- `"bold, full-bleed vertical visual"`
- `"designed for mobile fullscreen viewing"`

**For Storyboard Frames (1920×1080):**
- `"cinematic composition, widescreen"`
- `"broadcast quality, professional production"`
- `"clear storytelling in single frame"`
