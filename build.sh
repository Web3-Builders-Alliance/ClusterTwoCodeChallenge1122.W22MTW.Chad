#!/usr/bin/env bash

set -e
set -o pipefail

docker run --rm -v "$(pwd)":/code \
  --mount type=volume,source="$(basename "$projectPath")_cache",target=/code/target \
  --mount type=volume,source=registry_cache,target=/usr/local/cargo/registry \
  cosmwasm/workspace-optimizer:0.12.5
