DOTFILES=/workspaces/.codespaces/.persistedshare/dotfiles

cp $DOTFILES/zshrc ~/.zshrc
cp $DOTFILES/zsh_plugins.txt ~/.zsh_plugins.txt
cp $DOTFILES/p10k.zsh ~/.p10k.zsh
cp $DOTFILES/z.sh ~/z.sh

touch ~/.z

curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
curl https://get.volta.sh | bash

volta install node@16
volta install yarn

git config --global push.default current
git config --global pull.rebase true

npm i -g gitpkg
npm i -g npm-check-updates

export EDITOR=vim
