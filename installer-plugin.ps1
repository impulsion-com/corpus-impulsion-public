<#
.SYNOPSIS
    Installe le Corpus Impulsion comme plugin Claude Code, chargé sur place.

.DESCRIPTION
    Crée un lien de répertoire (junction) de ~\.claude\skills\corpus-impulsion
    vers ce dossier. Claude Code y détecte .claude-plugin\plugin.json et charge
    les 13 skills dans TOUTES les sessions, quel que soit le dossier de travail.

    Le corpus n'est ni copié ni déplacé : le lien pointe sur les fichiers réels,
    donc toute modification du corpus est prise en compte immédiatement.

    Une junction ne demande pas de droits administrateur (contrairement à un lien
    symbolique), et se supprime sans jamais toucher aux fichiers du corpus.

.EXAMPLE
    powershell -ExecutionPolicy Bypass -File .\installer-plugin.ps1

.EXAMPLE
    powershell -ExecutionPolicy Bypass -File .\installer-plugin.ps1 -Desinstaller
#>

[CmdletBinding()]
param(
    # Retire le lien et laisse le corpus intact.
    [switch]$Desinstaller
)

$ErrorActionPreference = 'Stop'
try { [Console]::OutputEncoding = [System.Text.Encoding]::UTF8 } catch {}

$corpus = $PSScriptRoot
$lien   = Join-Path $HOME '.claude\skills\corpus-impulsion'

Write-Host ''
Write-Host '=============================================='
Write-Host '  Corpus Impulsion - plugin Claude Code'
Write-Host '=============================================='
Write-Host ''

function Get-LienExistant {
    param([string]$Chemin)
    if (-not (Test-Path $Chemin)) { return $null }
    return Get-Item $Chemin -Force
}

# --- Desinstallation -------------------------------------------------------
if ($Desinstaller) {
    $item = Get-LienExistant $lien
    if ($null -eq $item) {
        Write-Host '  Rien a desinstaller : aucun lien present.'
        exit 0
    }
    if ($null -eq $item.LinkType) {
        Write-Host "  X $lien est un vrai dossier, pas un lien." -ForegroundColor Red
        Write-Host '    Par securite le script ne le supprime pas. Verifie son contenu'
        Write-Host '    puis supprime-le a la main si tu es sur.'
        exit 1
    }
    # Delete($path, $false) retire le lien sans descendre dans la cible.
    [System.IO.Directory]::Delete($item.FullName, $false)
    Write-Host '  OK Lien retire. Le corpus est intact.'
    Write-Host '  Redemarre Claude Code pour appliquer.'
    Write-Host ''
    exit 0
}

# --- Verifications --------------------------------------------------------
$manifeste = Join-Path $corpus '.claude-plugin\plugin.json'
if (-not (Test-Path $manifeste)) {
    Write-Host "  X Manifeste introuvable : $manifeste" -ForegroundColor Red
    Write-Host '    Lance ce script depuis la racine du corpus impulsion.'
    exit 1
}
foreach ($requis in @('01-strategie', '03-google-ads', 'skills')) {
    if (-not (Test-Path (Join-Path $corpus $requis))) {
        Write-Host "  X Dossier manquant : $requis" -ForegroundColor Red
        Write-Host '    Ce dossier ne ressemble pas a la racine du corpus.'
        exit 1
    }
}
Write-Host "  OK Corpus detecte : $corpus"

# --- Creation du lien ------------------------------------------------------
$parent = Split-Path $lien -Parent
if (-not (Test-Path $parent)) {
    New-Item -ItemType Directory -Force -Path $parent | Out-Null
}

$item = Get-LienExistant $lien
if ($null -ne $item) {
    if ($null -eq $item.LinkType) {
        Write-Host "  X $lien existe deja et n'est pas un lien." -ForegroundColor Red
        Write-Host '    Deplace ou supprime ce dossier, puis relance le script.'
        exit 1
    }
    [System.IO.Directory]::Delete($item.FullName, $false)
    Write-Host '  OK Ancien lien retire.'
}

New-Item -ItemType Junction -Path $lien -Target $corpus | Out-Null
Write-Host "  OK Lien cree : $lien"

# --- Controle -------------------------------------------------------------
$controles = @{
    'manifeste du plugin' = '.claude-plugin\plugin.json'
    'skill routeur'       = 'skills\impulsion-corpus\SKILL.md'
    'index du corpus'     = 'skills\impulsion-corpus\references\index-corpus.md'
    'documents Google Ads' = '03-google-ads\search'
}
$ok = $true
foreach ($cle in $controles.Keys) {
    $present = Test-Path (Join-Path $lien $controles[$cle])
    if (-not $present) { $ok = $false }
    $marque = if ($present) { 'OK  ' } else { 'X   ' }
    Write-Host ("  $marque lisible via le lien : $cle")
}
if (-not $ok) {
    Write-Host '  X Le lien est cree mais certains fichiers ne repondent pas.' -ForegroundColor Red
    exit 1
}

Write-Host ''
Write-Host '  Installation terminee.'
Write-Host ''
Write-Host '  Redemarre Claude Code, puis verifie avec :'
Write-Host '    claude plugin list          -> corpus-impulsion@skills-dir : loaded'
Write-Host '    claude plugin details corpus-impulsion'
Write-Host ''
Write-Host '  Les 13 skills /impulsion-* sont ensuite disponibles dans toutes tes sessions.'
Write-Host ''
