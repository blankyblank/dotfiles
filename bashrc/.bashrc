case $- in
*i*) ;;
*) return ;;
esac

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
bind "set completion-ignore-case on"
bind "set completion-map-case on"
bind "set show-all-if-ambiguous on"
bind "set mark-symlinked-directories on"
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
export stowdir="$HOME/.local/dotfiles"
export usbdir="$HOME/.local/media"
export kerndir="/usr/src/linux"
export rundir="/run/user/1000"
export projdir="$HOME/Public"
export privdir="$HOME/.local/share/Private"

PROMPT_COMMAND='history -a'
HISTSIZE=50000
HISTFILESIZE=10000
HISTCONTROL="erasedups:ignoreboth"
HISTTIMEFORMAT='%F %T '
PROMPT_DIRTRIM=3
PS1='\[\e[1;35m\]\w \[\e[0;32m\]\$\[\e[00m\] '
CDPATH=".:~:~/.config:/etc"

function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}

source $HOME/.bash_aliases
source /usr/share/wikiman/widgets/widget.bash
eval "$(fzf --bash)"
