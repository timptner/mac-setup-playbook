# Colors.
unset LSCOLORS
export CLICOLOR=1
export CLICOLOR_FORCE=1

# Nicer prompt.
PROMPT="%F{cyan}%n%f %F{yellow}%~%f %F{white}$%f "
RPROMPT="%F{magenta}%*%f"

# Enable plugins.
plugins=(git brew history)

# Tell homebrew to not autoupdate every single time I run it (just once a week).
export HOMEBREW_AUTO_UPDATE_SECS=604800

# Enable shell completion (compdef)
autoload -Uz compinit
compinit

# Auto-completion for 1password-cli
eval "$(op completion zsh)"; compdef _op op
