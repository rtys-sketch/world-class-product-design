#!/usr/bin/env bash
# Universal installer for World-Class Product Design Intelligence Skill
# Supports: Linux, macOS, WSL, GitHub Codespaces, Cloud Shell, Gitpod

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
echo "🚀 Installing World-Class Product Design Skill from $SCRIPT_DIR..."

TARGETS=(
  "$HOME/.codex/skills/world-class-product-design"
  "$HOME/.claude/skills/world-class-product-design"
  "$HOME/.agents/skills/world-class-product-design"
  "$HOME/.gemini/config/skills/world-class-product-design"
  "$HOME/.gemini/config/plugins/world-class-product-design/skills/world-class-product-design"
)

# Optional project-specific installation if requested via: ./install.sh --project /path/to/repo
if [[ "${1:-}" == "--project" ]] && [[ -n "${2:-}" ]]; then
  PROJECT_DIR="$2"
  TARGETS+=(
    "$PROJECT_DIR/.agents/skills/world-class-product-design"
    "$PROJECT_DIR/.codex/skills/world-class-product-design"
  )
fi

for TARGET in "${TARGETS[@]}"; do
  echo "-> Installing to $TARGET..."
  mkdir -p "$TARGET"
  cp -f "$SCRIPT_DIR/SKILL.md" "$TARGET/"
  if [[ -d "$SCRIPT_DIR/references" ]]; then
    mkdir -p "$TARGET/references"
    cp -rf "$SCRIPT_DIR/references/"* "$TARGET/references/"
  fi
  if [[ -d "$SCRIPT_DIR/assets" ]]; then
    mkdir -p "$TARGET/assets"
    cp -rf "$SCRIPT_DIR/assets/"* "$TARGET/assets/"
  fi
done

# Antigravity plugin manifest
PLUGIN_DIR="$HOME/.gemini/config/plugins/world-class-product-design"
mkdir -p "$PLUGIN_DIR"
cat << 'EOF' > "$PLUGIN_DIR/plugin.json"
{
  "name": "world-class-product-design",
  "displayName": "World-Class Product Design",
  "version": "1.0.0",
  "description": "World-class product design intelligence for creating, redesigning, auditing, and implementing exceptional digital interfaces."
}
EOF

echo ""
echo "✅ World-Class Product Design Intelligence installed successfully!"
echo "Available in:"
echo "  • Codex (~/.codex/skills)"
echo "  • Antigravity (~/.gemini/config/plugins)"
echo "  • Claude Code (~/.claude/skills)"
echo "  • Agent Workspaces (~/.agents/skills)"
