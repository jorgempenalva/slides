#!/usr/bin/env bash
set -euo pipefail

# Slidev Presentations — Project Scaffolding
# Idempotent: safe to run multiple times.

PRESENTATIONS_DIR="${1:-presentations}"

if [ -f "$PRESENTATIONS_DIR/package.json" ]; then
  echo "✓ $PRESENTATIONS_DIR/ already initialized, skipping."
  exit 0
fi

echo "Creating $PRESENTATIONS_DIR/ directory structure..."
mkdir -p "$PRESENTATIONS_DIR/output"
touch "$PRESENTATIONS_DIR/output/.gitkeep"

cat > "$PRESENTATIONS_DIR/.gitignore" << 'EOF'
node_modules/
output/*.md
output/*.pdf
!output/.gitkeep
EOF

cat > "$PRESENTATIONS_DIR/package.json" << 'EOF'
{
  "name": "presentations",
  "private": true,
  "scripts": {
    "dev": "slidev",
    "export": "slidev export"
  },
  "dependencies": {
    "@slidev/cli": "^51",
    "@slidev/theme-default": "latest",
    "playwright-chromium": "^1.49"
  }
}
EOF

echo "Installing dependencies..."
(cd "$PRESENTATIONS_DIR" && npm install)

echo "✓ Slidev presentations initialized at $PRESENTATIONS_DIR/"
