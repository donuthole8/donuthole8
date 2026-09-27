#!/usr/bin/env bash
# default テーマのカードを OpenWork 風の水色（ライト / ダーク）に塗り替える
set -euo pipefail
out=profile-summary-card-output

rm -rf "$out/openwork" "$out/openwork_dark"
cp -r "$out/default" "$out/openwork"
cp -r "$out/default" "$out/openwork_dark"

perl -pi -e '
  s/font-size: 22px; fill: #586e75/font-size: 22px; fill: #1b7fbe/g;
  s/(fill|stroke)="#586e75"/$1="#61a3ce"/g;
  s/#e4e2e2/#d6dfe5/g;
' "$out"/openwork/*.svg

perl -pi -e '
  s/font-size: 22px; fill: #586e75/font-size: 22px; fill: #61a3ce/g;
  s/(fill|stroke)="#586e75"/$1="#61a3ce"/g;
  s/#586e75/#c9d1d9/g;
  s/#e4e2e2/#30363d/g;
  s/#ffffff/#161b22/g;
' "$out"/openwork_dark/*.svg
