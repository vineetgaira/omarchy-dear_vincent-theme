#!/usr/bin/env bash
set -euo pipefail

theme_dir="${XDG_CONFIG_HOME:-$HOME/.config}/omarchy/themes/dear-vincent"
repo_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"

mkdir -p "$(dirname -- "$theme_dir")"
if [[ -e "$theme_dir" ]]; then
  printf 'Refusing to overwrite existing theme at %s\n' "$theme_dir" >&2
  exit 1
fi
cp -a "$repo_dir" "$theme_dir"
printf 'Installed Dear Vincent at %s\n' "$theme_dir"
printf 'It is now available in the Omarchy theme switcher; it has not been applied.\n'
