export VISUAL=vim
export EDITOR="$VISUAL"
export PATH=$HOME/bin:/usr/local/bin:$PATH

ZSH_THEME="agnoster"
plugins=(git)

dockermachine="$(docker-machine ls --format "{{.Name}}")"

startup_zsh(){
        source $ZSH/oh-my-zsh.sh
        sprites_sf=( $HOME/sprites_sf/*.txt  );cat "${sprites_sf[RANDOM % ${#sprites_sf[@]}]}"
        ZSH_DISABLE_COMPFIX=true
}

if [[ $(docker-machine ls --filter "Name=$dockermachine" --format "{{.State}}") = Stopped ]]; then
        echo "Docker machine is not running, do you want me to start it ? [yes or no]\n"
                read yno
                case $yno in
                    [yY] | [yY][Ee][Ss] )
                                        docker-machine start dockerhost;
                                        eval $(docker-machine env $dockermachine);
                                        echo "$dockermachine is started, enjoy it !";
                                        docker ps;
                                        startup_zsh;
                                        return;;
                    [nN] | [n|N][O|o] )
                                        echo "Ok, so do you want to launch you're Debian VM ? [yes or no]\n";
                                                read yno
                                                case $yno in
                                                        [yY] | [yY][Ee][Ss] )
                                                                cd Projects/Vagrant/docker;
                                                                vagrant up && vagrant ssh;
                                                                startup_zsh;
                                                                return;;
                                                        [nN] | [n|N][O|o] )
                                                                echo "Ok, ok.. Have fun with Office... I leave you :-(\n"
                                                                startup_zsh;
                                                                return;;
                                                esac
                                        return;;
                esac
else
        echo "Docker machine is already running. Let's get envs variables !\n"
        eval $(docker-machine env $dockermachine)
        docker ps
fi
