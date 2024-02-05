# Fix issues with GPG for Github
# https://github.com/keybase/keybase-issues/issues/2798
export GPG_TTY=$(tty) # Must go before

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Git Aliases Cheatsheet: https://www.hschne.at/git-aliases/
plugins=(
	bgnotify
	brew
	colored-man-pages
	colorize
	git
	npm
	macos
	pip
	python
	web-search
	zsh-syntax-highlighting
	zsh-autosuggestions
	z
)

# "Default" zsh configuration
export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

# SF2 sprites
sprites_sf=( $HOME/.sprites_sf/*.txt  );cat "${sprites_sf[RANDOM % ${#sprites_sf[@]}]}"

# Enable Powerlevel10k instant prompt.
ZSH_THEME="powerlevel10k/powerlevel10k"

# Fuzzy finder
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPTS='--height 40% --preview "cat {}" --preview-window right:60%:wrap'

function glazy() {
    gaa
    gcmsg "$1"
    gp
}

source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet
