#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
PKG_DIR="$ROOT_DIR/pkg"
DEMO_PKG_DIR="$ROOT_DIR/web/wasm_demo/pkg"

cd "$ROOT_DIR"
wasm-pack build --release --target web --features wasm

mkdir -p "$DEMO_PKG_DIR"
cp -f \
  "$PKG_DIR/maigus.js" \
  "$PKG_DIR/maigus_bg.wasm" \
  "$PKG_DIR/maigus.d.ts" \
  "$PKG_DIR/maigus_bg.wasm.d.ts" \
  "$PKG_DIR/package.json" \
  "$DEMO_PKG_DIR/"
