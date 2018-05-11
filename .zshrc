export ZSH=$HOME/.oh-my-zsh
export VISUAL=vim
export EDITOR="$VISUAL"
export PATH=$HOME/bin:/usr/local/bin:$PATH

ZSH_THEME="agnoster"
plugins=(git)

eval $(docker-machine env dockerhost)
source $ZSH/oh-my-zsh.sh
sprites_sf=( $HOME/sprites_sf/*.txt  ) ; cat "${sprites_sf[RANDOM % ${#sprites_sf[@]}]}"
#source '$homedir/.babun-docker4windows/setup.sh'
