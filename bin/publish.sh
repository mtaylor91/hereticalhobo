#!/bin/sh
set -eu

if [[ -z $(git status --porcelain) ]]; then
  dirty="false"
else
  dirty="true"
fi

wrangler pages deploy public \
  --project-name="maninavan-ca-site" \
  --branch="$(git rev-parse --abbrev-ref HEAD)" \
  --commit-hash="$(git rev-parse HEAD)" \
  --commit-message="$(git log -1 --pretty=%B)" \
  --commit-dirty="$dirty"
