#!/usr/bin/env bash

hash prettier 2>/dev/null || { echo 'missing prettier'; exit 1; }

echo '--- linting'
prettier --write 'themes/*.json' '*.json' '*.js'
