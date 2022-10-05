#
# .zshrc
#
# @author Jeff Geerling
#

# Colors.
unset LSCOLORS
export CLICOLOR=1
export CLICOLOR_FORCE=1

# Don't require escaping globbing characters in zsh.
unsetopt nomatch

# Nicer prompt.
PROMPT=$'\n'"%F{magenta}%n%f %F{yellow}%*%f %F{cyan}%~%f"$'\n'"%F{white}$%f "

# Enable plugins.
# plugins=(git brew history kubectl history-substring-search)
plugins=(git brew history)

# Custom $PATH with extra locations.
export PATH=$HOME/Library/Python/3.9/bin:$PATH

# Bash-style time output.
# export TIMEFMT=$'\nreal\t%*E\nuser\t%*U\nsys\t%*S'

# Include alias file (if present) containing aliases for ssh, etc.
# if [ -f ~/.aliases ]
# then
#   source ~/.aliases
# fi

# Set architecture-specific brew share path.
# arch_name="$(uname -m)"
# if [ "${arch_name}" = "x86_64" ]; then
#     share_path="/usr/local/share"
# elif [ "${arch_name}" = "arm64" ]; then
#     share_path="/opt/homebrew/share"
# else
#     echo "Unknown architecture: ${arch_name}"
# fi

# Allow history search via up/down keys.
# source ${share_path}/zsh-history-substring-search/zsh-history-substring-search.zsh
# bindkey "^[[A" history-substring-search-up
# bindkey "^[[B" history-substring-search-down

# Git aliases.
# alias gs='git status'
# alias gc='git commit'
# alias gp='git pull --rebase'
# alias gcam='git commit -am'
# alias gl='git log --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit'

# Completions.
# autoload -Uz compinit && compinit
# Case insensitive.
# zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*'


# Tell homebrew to not autoupdate every single time I run it (just once a week).
export HOMEBREW_AUTO_UPDATE_SECS=604800
