# VSCode Insiders shortcuts
alias code='code-insiders'  # Make 'code' always use insiders
alias c='code-insiders'     # Short alias
alias c.='code-insiders .'  # Open current directory
alias cdot='code-insiders ~/dotfiles'  # Quick access to dotfiles

# Modern CLI tool aliases
alias cat='bat'     # Modern cat replacement
alias find='fd'     # Modern find replacement
alias grep='rg'     # Modern grep replacement
alias count='scc'   # Count lines of code


# Modern ls aliases
alias ls='eza --icons --group-directories-first'
alias ll='eza -l --icons --group-directories-first --git'
alias la='eza -la --icons --group-directories-first --git'
alias lt='eza --tree --icons --level=2'
alias l.='eza -a --icons | rg "^\."' # Show only hidden files

# Directory navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# Git shortcuts
alias g='git'
alias gs='git status'
alias gp='git push'
alias gl='git pull'
alias gco='git checkout'
alias gc='git commit'
alias gca='git commit --amend'
alias gd='git diff'
alias gb='git branch'

# Modern disk usage
alias du='dust'              # Better du with graphs
alias df='duf'              # Better df with colors
alias usage='btm'           # Better top with graphs
alias top='btm'             # Replace top with bottom

# Network tools
alias ping='gping -4'       # Ping with graph
alias ping6='gping -6'      # Ping with graph
alias dns='dig +short'      # DNS lookup with short output
alias dns6='dig +short -6'  # DNS lookup with short output

# JSON/YAML processing
alias yaml='yq'             # YAML processor
alias yml='yq'             # YAML processor (short)
alias json='jq'            # JSON processor

# Docker shortcuts
alias d='docker'
alias dc='docker compose'
alias dps='docker ps'
alias dpsa='docker ps -a'
alias dimg='docker images'
alias drm='docker rm'
alias drmi='docker rmi'

# Kubernetes shortcuts
alias k='kubectl'
alias kns='kubectl config set-context --current --namespace'  # Set namespace
alias kctx='kubectl config use-context'                      # Switch context
alias kk='k9s'                                               # Launch k9s
alias h='helm'                                               # Helm package manager

# Common operations with safety
alias rm='rm -i'    # Prompt before removal
alias cp='cp -i'    # Prompt before overwrite
alias mv='mv -i'    # Prompt before overwrite
alias mkdir='mkdir -p'  # Create parent directories

# Quick edits
alias zshrc='code-insiders ~/.zshrc'
alias aliases='code-insiders ~/dotfiles/zsh/aliases.zsh'
alias reload='source ~/.zshrc'

# FZF shortcuts
alias fo='fzf-open'
alias fd='fzf-cd'
alias fg='fzf-grep'
alias fb='fzf-git-branch'
alias fk='fzf-kill'
alias fm='fzf-man'
alias fh='fzf-tldr'  # help pages

#global npm aliases
alias ng='npx @angular/cli'

# Metal HUD toggle
alias mhud='toggle_metal_hud'  # Toggle Metal HUD on/off

# #weird mise hack aliases (bug in warp)
# alias node='node'
# alias go='go'
# alias rusts='rustc'

# Fallback for when eza is not available
if ! command -v eza &> /dev/null; then
    alias ll='ls -lah'
    alias la='ls -A'
    alias l='ls -CF'
fi
