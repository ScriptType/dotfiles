# Editor
export EDITOR='code-insiders'
export VISUAL='code-insiders'

# History
export HISTFILE=~/.zsh_history
export HISTSIZE=10000
export SAVEHIST=10000
export HISTCONTROL=ignorespace:ignoredups

# Colors
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# FZF
export FZF_DEFAULT_COMMAND='fd --type file --color=always --follow --hidden --exclude .git'
export FZF_DEFAULT_OPTS="--ansi --preview 'bat --color=always --style=numbers --line-range=:500 {}' --preview-window='right:60%:wrap'"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND='fd --type d --color=always --follow --hidden --exclude .git'

# Locale
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Path
export PATH="$PATH:$HOME/bin"
export PATH="/Users/aleksovski/.local/share/mise/shims:$PATH"


# Man pages
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# Forgit
export FORGIT_INSTALL_DIR="$HOME/.local/share/forgit"

export NODE_OPTIONS="--max-old-space-size=8192"

export LDFLAGS="-L/opt/homebrew/opt/ruby/lib"
export CPPFLAGS="-I/opt/homebrew/opt/ruby/include"

export PKG_CONFIG_PATH="/opt/homebrew/opt/ruby/lib/pkgconfig"
