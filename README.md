### Sur Windows, installer les ttfs powerline

https://github.com/powerline/fonts/tree/master/DejaVuSansMono

### Sur Linux, installer les ttfs powerline
```
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
```

### Note pour l'authentification Github

Si le 22 est bloqué et qu'on ne peut donc pas pousser par clefs.

Afin de ne pas garder ses creds en clair sur le disque avec `git config --global credential.helper store` ou temporairement avec `git config --global credential.helper cache` on va utiliser [Git Credential Manager for Windows](https://github.com/Microsoft/Git-Credential-Manager-for-Windows) qui a remplacé [git-credential-winstore](https://archive.codeplex.com/?p=gitcredentialstore).

Il faut donc télécharger la dernière version en `zip` de [Git Credential Manager for Windows](https://github.com/Microsoft/Git-Credential-Manager-for-Windows/releases) puis copier les `binaires` et `dlls` qu'elle contient dans `C:\Users\%USERNAME%\.babun\cygwin\usr\libexec\git-core`.
