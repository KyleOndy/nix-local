#!/usr/bin/env bash
set -euo pipefail

pushd "$HOME/src/nix-config"
nix-shell --command make