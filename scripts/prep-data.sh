#!/usr/bin/env bash
set -euo pipefail

local_root="$(git rev-parse --show-toplevel)"
cd "${local_root}"

data='./data/.minetest'

mkdir -p "${data}"/{games,mods,textures}

### GAMES

# MineClone2
if [[ ! -f "${data}"/games/mineclone2.zip ]] ; then
  printf 'Downloading MineClone2...\n'
  curl \
    -fsSL \
    -o "${data}"/games/mineclone2.zip \
    'https://content.minetest.net/packages/Wuzzy/mineclone2/releases/19585/download/'
  unzip -q -d "${data}"/games "${data}"/games/mineclone2.zip
fi

### MODS
