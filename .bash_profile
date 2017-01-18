#!/usr/bin/env bash

source ~/dev/dotfiles/shell/bash_prompt.sh
source ~/dev/dotfiles/shell/aliases.sh
source ~/dev/dotfiles/shell/environment.sh
source ~/dev/dotfiles/shell/generators.sh
export GITHUB_USERNAME='nolds9'
export PATH=$PATH:$HOME/.cargo/bin
export PATH=$PATH:/usr/local/src/rust/bin
export RUST_SRC_PATH=/usr/local/src/rustc-1.9.0/src
export GH_PERSONAL_TOKEN="6873b971f7890e12e1310aecc0d72424bfd9b914"
export PATH=$PATH:/usr/local/m-cli
export PATH=$PATH:/Applications/Atom\ Beta.app
# added by Anaconda2 4.1.1 installer
export PATH="//anaconda/bin:$PATH"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
