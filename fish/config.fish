if status is-interactive
    # Commands to run in interactive sessions can go here
end

eval "$(/opt/homebrew/bin/brew shellenv)"

function fcd
    set dir (find . -type d 2>/dev/null | fzf)
    if test -n "$dir"
        cd $dir
        echo "Switched to directory: "(pwd)
    end
end


# Rust SETUP
set -gx PATH $HOME/.cargo/bin $PATH


set -x GOPATH $HOME/go
set -x PATH $PATH $GOPATH/bin
set -x PATH  $PATH $HOME/dev/flutter/bin

# set -x NVM_DIR $HOME/nvm

set -gx PATH $HOME/Library/Python/3.9/bin:$PATH

# ALIASES
alias rosetta "arch -x86_64 /usr/bin/env bash"
alias get_idf ". $HOME/esp/esp-idf/export.fish"
source $HOME/.config/fish/private_aliases.fish # Load private aliases
# END ALIASES
# eval (pyenv init - | psub)

starship init fish | source

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# Setting PATH for Python 3.8
# The original version is saved in $HOME/.config/fish/config.fish.pysave

# OpenMPI
set --export OMPI_CXX g++-14 # This need to be set to use -fopenmp flag with mpi

# pnpm
set -gx PNPM_HOME "$HOME/Library/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
