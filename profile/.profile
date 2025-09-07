[[ -f ~/.bashrc ]] && . ~/.bashrc

export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/.config/scripts
export XDG_DATA_HOME="$HOME"/.local/share
export XDG_CONFIG_HOME="$HOME"/.config
export XDG_STATE_HOME="$HOME"/.local/state
export XDG_CACHE_HOME="$HOME"/.cache

export MANPAGER='nvim +Man!'
export ARCHFLAGS="-arch x86_64"
export CFLAGS="-march=native -O2 -pipe -flto"

# clean up home dir
export ABDUCO_SOCKET_DIR="$XDG_DATA_HOME"/abduco
export W3M_DIR="$XDG_DATA_HOME"/w3m
export LESSHISTFILE="$XDG_STATE_HOME"/lesshst
export HISTFILE="$XDG_STATE_HOME"/bash/history
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export PATH="$PATH":"$CARGO_HOME"/bin
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export GOPATH="$XDG_DATA_HOME"/go
export PARALLEL_HOME="$XDG_CONFIG_HOME"/parallel
export PASSWORD_STORE_DIR="$XDG_DATA_HOME"/pass
export XINITRC="$XDG_CONFIG_HOME"/X11/xinitrc
export INPUTRC="$XDG_CONFIG_HOME"/readline/inputrc

export LESS='-sRiMX --shift 5'
export LESSCOLOR=always
export HISTIGNORE="&:[ ]*:exit:ls:bg:fg:history:clear"
export FZF_DEFUALT_COMMAND="fd ."
export FZF_DEFAULT_OPTS="--color='16,hl:magenta' --prompt='$ ' --marker='+' --info=inline-right --no-scrollbar --no-separator"

sudo /usr/bin/loadkeys ~/.local/share/keystrings

[ "$(tty)" = "/dev/tty1" ] && exec startx
