#!/usr/bin/env bash

# Add Homebrew `/usr/local/bin` and User `~/bin` to the `$PATH`
PATH=/usr/local/bin:$PATH
PATH=$HOME/bin:$PATH
export PATH="/usr/local/sbin:$PATH"

# Enable git tab completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/dotfiles/shell/{path,bash_prompt,exports,aliases,functions,extra}.sh; do
  echo "$file"
  [ -r "$file" ] && source "$file"
done


