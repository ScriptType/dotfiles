# Export forgit install directory (must be before plugins)
export FORGIT_INSTALL_DIR="$HOME/.local/share/forgit"

# Initialize completion system
autoload -Uz compinit
compinit

# Initialize Sheldon
eval "$(sheldon source)"

# Load aliases
source "$HOME/.config/zsh/aliases.zsh"

# Initialize Starship
eval "$(starship init zsh)"

# ZOXIDE (modern cd) - smart directory jumping
eval "$(zoxide init zsh --cmd cd)" # Replace cd command completely

# FZF Configuration
export FZF_DEFAULT_COMMAND='fd --type file --color=always --follow --hidden --exclude .git'
export FZF_DEFAULT_OPTS="--ansi --preview 'bat --color=always --style=numbers --line-range=:500 {}' --preview-window='right:60%:wrap'"

# Source fzf keybindings and completion
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Load local config if it exists
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local

# Enhanced FZF functions
# Quick file open with preview
fzf-open() {
    local file
    file=$(fd --type f --hidden --follow --exclude .git | \
           fzf --preview 'bat --color=always --style=numbers --line-range=:500 {}' \
               --preview-window='right:60%:wrap' \
               --bind='ctrl-/:change-preview-window(down|hidden|)' \
               --header 'CTRL-/ to toggle preview window')
    if [ -n "$file" ]; then
        $EDITOR "$file"
    fi
}

# Directory navigation with tree preview
fzf-cd() {
    local dir
    dir=$(fd --type d --hidden --follow --exclude .git | \
          fzf --preview 'eza --tree --level=2 --icons {}' \
              --preview-window='right:60%:wrap' \
              --bind='ctrl-/:change-preview-window(down|hidden|)' \
              --header 'CTRL-/ to toggle preview window')
    if [ -n "$dir" ]; then
        cd "$dir"
    fi
}

# Search in files content
fzf-grep() {
    if [ ! "$#" -gt 0 ]; then echo "Need a string to search for!"; return 1; fi
    local file
    file=$(rg --files-with-matches --no-messages "$1" | \
           fzf --preview "rg --color=always --line-number --context 5 '$1' {}" \
               --preview-window='right:60%:wrap' \
               --bind='ctrl-/:change-preview-window(down|hidden|)' \
               --header 'CTRL-/ to toggle preview window')
    if [ -n "$file" ]; then
        $EDITOR "$file"
    fi
}

# Git branch selection
fzf-git-branch() {
    git branch --color=always | \
    fzf --ansi --no-multi --preview-window right:70% \
        --preview 'git log --oneline --graph --date=short --color=always --pretty="format:%C(auto)%cd %h%d %s" $(sed s/^..// <<< {} | cut -d" " -f1)' | \
    sed 's/^..//' | cut -d' ' -f1
}

# Process management with fzf
fzf-kill() {
    local pid
    pid=$(ps -ef | sed 1d | fzf -m --header='[kill:process]' | awk '{print $2}')
    if [ "x$pid" != "x" ]; then
        echo $pid | xargs kill -${1:-9}
    fi
}

# Man pages with fzf
fzf-man() {
    man -k . | fzf --prompt='Man> ' --preview "echo {} | cut -d' ' -f1 | xargs -I% man %" | cut -d' ' -f1 | xargs -I% man %
}

# Interactive tldr lookup
fzf-tldr() {
    tldr --list | fzf --preview "tldr {1} --color=always" --preview-window=right:70% | xargs tldr
}

# Key Bindings Reference:
# CTRL-T - Paste selected files/folders onto the command line
# CTRL-R - Search command history
# ALT-C  - CD into selected directory
# CTRL-/ - Toggle preview window in custom functions
