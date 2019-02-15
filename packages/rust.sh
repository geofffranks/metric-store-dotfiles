#!/bin/bash

. ~/workspace/log-cache-dotfiles/support/helpers.sh

APP="rust"
VERSION="latest"

echo_installing

start_install
  if [[ -e $HOME/.cargo/bin/rustup ]]; then
    rustup self update
    rustup update
  else
    curl https://sh.rustup.rs -sSf | sh -s -- --default-toolchain stable -y
    source $HOME/.cargo/env
  fi
end_install
