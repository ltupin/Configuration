## Terminal and Shell

### Install [brew](https://brew.sh/):  
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### Install [iterm2](https://iterm2.com/):  
```bash
brew update
brew install --cask iterm2
```

Import `Default.json` file:  

<img src="iterm2.png" alt="drawing" width="200"/>

### Install [oh-my-zsh](https://ohmyz.sh/#install):  
- Git Aliases Cheatsheet: https://www.hschne.at/git-aliases/
```bash
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# This plugin is for syntax highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# This plugin is for autosuggestion
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions

# Zinit is a plugin manager for zsh
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)"


cp zshrc ~/.zshrc
```

### Install [Nerd Fonts](https://github.com/ryanoasis/nerd-fonts#option-4-homebrew-fonts):
```bash
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font
```

### Install [Powerlevel10k](https://github.com/romkatv/powerlevel10k):
```bash
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>! ~/.zshrc	

cp p10k.zsh ~/.p10k.zsh	
```
---
## Editors

### Install [Vim Airline](https://github.com/vim-airline/vim-airline):
```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

cp vimrc ~/.vimrc
```

### Install [Visual Studio Code](https://code.visualstudio.com/):
```bash
brew install --cask visual-studio-code
```
| Description                   | Action                                |
|-------------------------------|:-------------------------------------:|
| Preview markdown files 		| **⇧⌘V**								|
| Open extensions view	 		| **⇧⌘X**								|
| Column selection with mouse 	| **Shift+Option**						|
| Column selection	 			| **Shift+Option+Cmd and arrow keys**	|
---
## Install Kubernetes related packages  

[Podman](https://podman.io/): Podman is a daemonless container engine for developing, managing, and running OCI Containers on your Linux System.  

```bash
brew install \
	kubectl podman && \
alias docker=podman &&\
podman machine init &&\
podman machine start
```	
 [kubectl]()  
 [kubectx]()  
 [minikube]()  
 [helm]()  
 [k9s]()  
 [kube-ps1]()  

```bash
brew install \
	kubectl kubectx minikube helm k9s kube-ps1
```	
---
## Install other packages

### [Tmux]()
| Description                  | Action                 |
|------------------------------|:----------------------:|
| Creates a new window         | **Ctrl-b c**           |
| Go to next window            | **Ctrl-b n**           |
| Go to previous window        | **Ctrl-b p**           |
| Split window top/bottom      | **Ctrl-b "**           |
| Split window left/right      | **Ctrl-b %**           |
| Rearrange windows in columns | **Ctrl-b Alt-1**       |
| Rearrange windows in rows    | **Ctrl-b Alt-2**       |
| Navigate to other windows	   | **Ctrl-b arrow keys**  |
| Detach session			   | **Ctrl-b d**           |
| Reattach to session		   | **tmux attach**        |


### [Mosh](https://mosh.org/#getting)
Remote terminal application that allows roaming, supports intermittent connectivity, and provides intelligent local echo and line editing of user keystrokes.

### [gh]()  

### [lazygit]()  

### [AWScli]()  

### [htop]()  

### [pstree]()  

### [bat]() 

### [Fuzzy Finder]() 

### [Inav]()  

### [rambox]()  
```bash
brew install \
	gh lazygit \
	tmux mosh awscli rambox htop pstree bat inav fzf
```	