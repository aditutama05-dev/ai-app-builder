#!/usr/bin/env bash
# Validate the product-neutral repository foundation without requiring a runtime stack.
set -euo pipefail

required_files=(
  AGENTS.md
  PROJECT_SPEC.md
  PROJECT_STATE.md
  README.md
  docs/README.md
  templates/application-brief.md
  .github/workflows/validate.yml
)

for file in "${required_files[@]}"; do
  if [[ ! -f "$file" ]]; then
    printf 'Missing required foundation file: %s\n' "$file" >&2
    exit 1
  fi
done

if ! rg --fixed-strings --quiet 'reusable AI App Builder' PROJECT_SPEC.md; then
  printf 'PROJECT_SPEC.md does not identify the reusable AI App Builder purpose.\n' >&2
  exit 1
fi

if ! rg --fixed-strings --quiet 'Live Chat Reader' PROJECT_SPEC.md; then
  printf 'PROJECT_SPEC.md must explicitly preserve the requested application boundary.\n' >&2
  exit 1
fi

printf 'Foundation validation passed (%d required files verified).\n' "${#required_files[@]}"
