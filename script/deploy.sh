#!/usr/bin/env bash
set -eu

hash vsce 2>/dev/null || { echo 'missing vsce'; exit 1; }

echo '--- packaging'
vsce package

echo '--- publishing'
vsce publish
