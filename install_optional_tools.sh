#!/usr/bin/env sh

set -ex

# https://github.com/avh4/elm-format
if ! command -v elm-format > /dev/null 2>&1; then
  brew install elm-format
  ln -s /usr/local/bin/elm-format-0.18 /usr/local/bin/elm-format
fi

# https://github.com/tomekwi/elm-live
if ! command -v elm-live > /dev/null 2>&1; then
  npm install --global elm-live
fi

# https://github.com/ElmCast/elm-oracle
if ! command -v elm-oracle > /dev/null 2>&1; then
  npm install --global elm-oracle
fi
