case $- in
*i*) ;;
*) return ;;
esac
# shellcheck disable=2181

set -o vi

bind Space:magic-space
bind -m vi-command    '"\C-e": "\C-z\C-t\C-z"'
bind -m vi-insert     '"\C-e": "\C-z\C-t\C-z"'
bind -m vi-command -x '"\C-e": fzfvim.sh \\015'
bind -m vi-insert  -x '"\C-e": fzfvim.sh \\015'
bind -m vi-command -x '"\C-l": tput clear \\015'
bind -m vi-insert  -x '"\C-l": tput clear \\015'
bind -m vi-command -x '"\C-y": y'
bind -m vi-insert  -x '"\C-y": y'
bind -m vi-command '"k": history-search-backward'
bind -m vi-command '"j": history-search-forward'
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
bind '"\e[C": forward-char'
bind '"\e[D": backward-char'

set +o noclobber
shopt -s checkwinsize
shopt -s globstar 2> /dev/null
shopt -s histappend
shopt -s cmdhist
shopt -s dirspell 2> /dev/null
shopt -s cdspell  2> /dev/null
shopt -s autocd   2> /dev/null
shopt -s cdable_vars
export conf="$HOME/.config"
export snips="$HOME/Documents/snippets"
export dwmdir="$HOME/.local/src/dwm"
export sourcedir="$HOME/.local/src"
export stowdir="/usr/local/stow"
export usbdir="$HOME/.local/media"
export kerndir="/usr/src/linux"
export rundir="/run/user/1000"
export projdir="$HOME/Public"
export privdir="$HOME/.local/share/Private"

HISTSIZE=50000
HISTFILESIZE=10000
HISTCONTROL="erasedups:ignoreboth"
HISTTIMEFORMAT='%F %T '
PROMPT_COMMAND='history -a'
PROMPT_DIRTRIM=3
CDPATH=".:~:~/.config:/etc"

# GPG_TTY=$(tty)
# export GPG_TTY
source "$HOME"/.config/scripts/bash_prompt
source "$HOME"/.bash_aliases
