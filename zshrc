# Git Aliases Cheatsheet: https://www.hschne.at/git-aliases/
plugins=(
	bgnotify 
	brew 
	colored-man-pages 
	colorize 
	docker 
	git 
	kubectl
	kubectx
	npm 
	osx 
	pip 
	python 
	web-search 
	zsh-syntax-highlighting 
	zsh-autosuggestions)

# "Default" zsh configuration
export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

# SF2 sprites
sprites_sf=( $HOME/.sprites_sf/*.txt  );cat "${sprites_sf[RANDOM % ${#sprites_sf[@]}]}"

# Enable Powerlevel10k instant prompt.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
source ~/powerlevel10k/powerlevel10k.zsh-theme
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet

# Fuzzy finder
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPTS='--height 40% --preview "cat {}" --preview-window right:60%:wrap'

# Krew
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

# Aliases
alias docker=podman

# Kube-ps1
PROMPT='$(kube_ps1)'$PROMPT

