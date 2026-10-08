#!/usr/bin/env bash
set -euo pipefail

# Installer pour les skills d'audit publicitaire du corpus impulsion
# Crée des symlinks dans ~/.claude/skills/ vers les skills du corpus

main() {
    SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
    CLAUDE_SKILLS_DIR="${HOME}/.claude/skills"

    echo "════════════════════════════════════════════════"
    echo "║  Skills publicitaires - Impulsion              ║"
    echo "║  Installation des 13 skills (corpus + stratégie + création + audit + plan-media + site-vitrine) ║"
    echo "════════════════════════════════════════════════"
    echo ""

    # Vérifier que le corpus est bien à côté
    if [ ! -f "${SCRIPT_DIR}/../README.md" ] || [ ! -d "${SCRIPT_DIR}/../01-strategie" ]; then
        echo "✗ Erreur : ce script doit être exécuté depuis le dossier skills/ du corpus impulsion."
        echo "  Chemin attendu : <corpus-impulsion>/skills/install.sh"
        echo "  Chemin courant : ${SCRIPT_DIR}"
        exit 1
    fi
    echo "✓ Corpus impulsion détecté à : $(cd "${SCRIPT_DIR}/.." && pwd)"

    # Créer le dossier ~/.claude/skills/ si inexistant
    mkdir -p "${CLAUDE_SKILLS_DIR}"
    echo "✓ Dossier cible : ${CLAUDE_SKILLS_DIR}"
    echo ""

    # Installer chaque skill via symlink
    SKILLS=(impulsion-corpus impulsion-audit impulsion-audit-google-ads impulsion-audit-meta-ads impulsion-audit-tiktok-ads impulsion-audit-creatives impulsion-audit-landing impulsion-audit-budget impulsion-plan-media impulsion-strategie impulsion-site-vitrine impulsion-creer-campagne-google-ads impulsion-creer-campagne-meta)

    INSTALLED=0
    REPLACED=0
    SKIPPED=0

    for skill in "${SKILLS[@]}"; do
        SOURCE="${SCRIPT_DIR}/${skill}"
        TARGET="${CLAUDE_SKILLS_DIR}/${skill}"

        if [ ! -d "${SOURCE}" ]; then
            echo "  ⚠ ${skill} : source manquante, skip"
            SKIPPED=$((SKIPPED + 1))
            continue
        fi

        if [ -L "${TARGET}" ]; then
            # Symlink existant : on remplace
            rm "${TARGET}"
            ln -s "${SOURCE}" "${TARGET}"
            echo "  ↻ ${skill} (symlink mis à jour)"
            REPLACED=$((REPLACED + 1))
        elif [ -e "${TARGET}" ]; then
            # Dossier ou fichier physique : on n'écrase pas
            echo "  ⚠ ${skill} : ${TARGET} existe déjà (non symlink). Skip."
            echo "    Pour forcer : rm -rf ${TARGET} puis relancer ce script."
            SKIPPED=$((SKIPPED + 1))
        else
            ln -s "${SOURCE}" "${TARGET}"
            echo "  ✓ ${skill}"
            INSTALLED=$((INSTALLED + 1))
        fi
    done

    echo ""
    echo "════════════════════════════════════════════════"
    echo "║  Installation terminée                          ║"
    echo "════════════════════════════════════════════════"
    echo "  Installés     : ${INSTALLED}"
    echo "  Mis à jour    : ${REPLACED}"
    echo "  Skippés       : ${SKIPPED}"
    echo ""
    echo "Vérification : tapez '/' dans Claude Code"
    echo "Vous devriez voir : /impulsion-strategie, /impulsion-creer-campagne-google-ads, /impulsion-creer-campagne-meta, /impulsion-audit, etc."
    echo ""
    echo "Avantage du symlink : git pull sur le corpus = skills auto à jour"
}

main "$@"
