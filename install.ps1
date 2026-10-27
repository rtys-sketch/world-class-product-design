<#
.SYNOPSIS
    Universal installer for World-Class Product Design Intelligence Skill on Windows.
.DESCRIPTION
    Installs the skill across Codex, Antigravity, Claude Code, and Agent workspaces globally.
#>
$ErrorActionPreference = "Stop"

$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
Write-Host "Installing World-Class Product Design Intelligence from $ScriptDir..." -ForegroundColor Cyan

$Targets = @(
    "$HOME\.codex\skills\world-class-product-design",
    "$HOME\.claude\skills\world-class-product-design",
    "$HOME\.agents\skills\world-class-product-design",
    "$HOME\.gemini\config\skills\world-class-product-design",
    "$HOME\.gemini\config\plugins\world-class-product-design\skills\world-class-product-design"
)

foreach ($target in $Targets) {
    Write-Host "-> Installing to $target..." -ForegroundColor Gray
    if (!(Test-Path $target)) {
        New-Item -ItemType Directory -Path $target -Force | Out-Null
    }
    
    # Copy SKILL.md, references, assets
    Copy-Item -Path "$ScriptDir\SKILL.md" -Destination "$target\SKILL.md" -Force
    if (Test-Path "$ScriptDir\references") {
        Copy-Item -Path "$ScriptDir\references" -Destination $target -Recurse -Force
    }
    if (Test-Path "$ScriptDir\assets") {
        Copy-Item -Path "$ScriptDir\assets" -Destination $target -Recurse -Force
    }
}

# Create Antigravity plugin manifest
$pluginDir = "$HOME\.gemini\config\plugins\world-class-product-design"
if (!(Test-Path $pluginDir)) {
    New-Item -ItemType Directory -Path $pluginDir -Force | Out-Null
}
$pluginJson = @"
{
  "name": "world-class-product-design",
  "displayName": "World-Class Product Design",
  "version": "1.0.0",
  "description": "World-class product design intelligence for creating, redesigning, auditing, and implementing exceptional digital interfaces."
}
"@
Set-Content -Path "$pluginDir\plugin.json" -Value $pluginJson -Encoding UTF8

# Register in Antigravity config.json if it exists
$configFile = "$HOME\.gemini\config\config.json"
if (Test-Path $configFile) {
    try {
        $json = Get-Content -Raw -Path $configFile | ConvertFrom-Json
        if (-not $json.plugins) {
            $json | Add-Member -NotePropertyName "plugins" -NotePropertyValue (New-Object PSObject)
        }
        if (-not $json.plugins."world-class-product-design") {
            $json.plugins | Add-Member -NotePropertyName "world-class-product-design" -NotePropertyValue ([PSCustomObject]@{ enabled = $true })
            $json | ConvertTo-Json -Depth 20 | Set-Content -Path $configFile -Encoding UTF8
            Write-Host "-> Registered plugin in $configFile" -ForegroundColor Green
        }
    } catch {
        Write-Warning "Could not update config.json automatically: $_"
    }
}

Write-Host "`nInstallation completed successfully!" -ForegroundColor Green
Write-Host "Skill is now active in:" -ForegroundColor White
Write-Host "  1. Codex CLI / Desktop (~/.codex/skills)" -ForegroundColor Yellow
Write-Host "  2. Antigravity Global (~/.gemini/config/plugins)" -ForegroundColor Yellow
Write-Host "  3. Claude Code (~/.claude/skills)" -ForegroundColor Yellow
Write-Host "  4. Agent Global (~/.agents/skills)" -ForegroundColor Yellow
