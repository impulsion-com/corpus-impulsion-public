#!/usr/bin/env python3
"""Génère references/index-corpus.md : l'index navigable des documents du corpus.

À relancer après avoir ajouté, renommé ou supprimé des documents, pour que la
skill impulsion-corpus continue de router vers les bons fichiers :

    python skills/impulsion-corpus/scripts/generer_index.py

Le script lit le type de chaque document dans son en-tête (`> **Type :** SOP`)
et ne modifie aucun document du corpus.
"""

from __future__ import annotations

import re
import sys
from pathlib import Path

SECTIONS = [
    ("01-strategie", "Stratégie cross-plateforme"),
    ("02-site-web", "Site web & landing pages"),
    ("03-google-ads", "Google Ads"),
    ("04-meta-ads", "Meta Ads"),
    ("05-tiktok-ads", "TikTok Ads"),
]

# Abréviations pour garder l'index compact et lisible d'un coup d'œil.
ABREVIATIONS = {
    "SOP": "SOP",
    "Checklist": "CHK",
    "Fondamental": "FOND",
    "Fiche": "FICHE",
    "Framework": "FRWK",
    "Exemples": "EXPL",
    "Catalogue": "CATA",
}

TYPE_RE = re.compile(r"\*\*Type\s*:\*\*\s*(.+)")


def lire_type(chemin: Path) -> str:
    """Retourne le type déclaré dans l'en-tête du document, ou '?' si absent."""
    try:
        with chemin.open(encoding="utf-8", errors="replace") as f:
            for _ in range(12):  # le type vit toujours dans l'en-tête
                ligne = f.readline()
                if not ligne:
                    break
                trouve = TYPE_RE.search(ligne)
                if trouve:
                    return ABREVIATIONS.get(trouve.group(1).strip(), trouve.group(1).strip())
    except OSError:
        pass
    return "?"


def main() -> int:
    # Les consoles Windows sont en cp1252 par défaut et lèvent une
    # UnicodeEncodeError sur les accents et les puces du résumé.
    for flux in (sys.stdout, sys.stderr):
        try:
            flux.reconfigure(encoding="utf-8", errors="replace")
        except (AttributeError, OSError):
            pass

    racine = Path(__file__).resolve().parents[3]
    sortie = Path(__file__).resolve().parents[1] / "references" / "index-corpus.md"

    if not (racine / "01-strategie").is_dir():
        print(f"✗ Racine du corpus introuvable (attendu : {racine})", file=sys.stderr)
        return 1

    lignes = [
        "# Index du corpus impulsion",
        "",
        "Généré par `scripts/generer_index.py` — ne pas éditer à la main.",
        "",
        "Chemins relatifs à la racine du corpus. Types : `SOP` procédure à exécuter ·",
        "`CHK` checklist de validation · `FOND` fondamental · `FICHE` fiche technique ·",
        "`FRWK` framework · `EXPL` exemples · `CATA` catalogue.",
        "",
    ]

    total = 0
    for dossier, titre in SECTIONS:
        base = racine / dossier
        if not base.is_dir():
            continue
        lignes.append(f"## {dossier} — {titre}")
        lignes.append("")

        # Certaines sections posent un guide d'ensemble à leur racine
        # (ex. « Guide Meta.md ») : il doit apparaître avant les sous-dossiers.
        racine_section = sorted(base.glob("*.md"))
        if racine_section:
            lignes.append(f"### {dossier}/ (racine)")
            lignes.append("")
            for doc in racine_section:
                lignes.append(f"- `{doc.name}` — {lire_type(doc)}")
                total += 1
            lignes.append("")

        for sous in sorted(p for p in base.iterdir() if p.is_dir()):
            docs = sorted(sous.glob("*.md"))
            if not docs:
                continue
            lignes.append(f"### {dossier}/{sous.name}/")
            lignes.append("")
            for doc in docs:
                lignes.append(f"- `{doc.name}` — {lire_type(doc)}")
                total += 1
            lignes.append("")

    lignes.append("---")
    lignes.append("")
    lignes.append(f"**{total} documents indexés.**")
    lignes.append("")

    sortie.parent.mkdir(parents=True, exist_ok=True)
    sortie.write_text("\n".join(lignes), encoding="utf-8")
    print(f"✓ {total} documents indexés → {sortie.relative_to(racine)}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
