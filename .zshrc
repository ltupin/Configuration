export ZSH=$HOME/.oh-my-zsh
export VISUAL=vim
export EDITOR="$VISUAL"
export PATH=$HOME/bin:/usr/local/bin:$PATH

ZSH_THEME="agnoster"
plugins=(git)

dockermachine="$(docker-machine ls --format "{{.Name}}")"

if [[ $(docker-machine ls --filter "Name=$dockermachine" --format "{{.State}}") = Stopped ]]; then
        echo "Docker machine is not running, let me fire it up !\n"
        docker-machine start dockerhost
        eval $(docker-machine env $dockermachine)
        docker ps
else
        echo "Docker machine is running. Enjoy it !\n"
        eval $(docker-machine env $dockermachine)
        docker ps
fi

source $ZSH/oh-my-zsh.sh
sprites_sf=( $HOME/sprites_sf/*.txt  ) ; cat "${sprites_sf[RANDOM % ${#sprites_sf[@]}]}"
ZSH_DISABLE_COMPFIX=true
