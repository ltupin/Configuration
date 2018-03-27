export ZSH=$HOME/.oh-my-zsh
export VISUAL=vim
export EDITOR="$VISUAL"
sprites_sf=( $HOME/sprites_sf/*.txt  ) ; cat "${sprites_sf[RANDOM % ${#sprites_sf[@]}]}"

ZSH_THEME="agnoster"
plugins=(git)

export PATH=$HOME/bin:/usr/local/bin:$PATH
source $ZSH/oh-my-zsh.sh
