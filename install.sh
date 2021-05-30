DOTFILES=/workspaces/.codespaces/.persistedshare/dotfiles

cp $DOTFILES/zshrc ~/.zshrc
cp $DOTFILES/zsh_plugins.txt ~/.zsh_plugins.txt
cp $DOTFILES/p10k.zsh ~/.p10k.zsh
cp $DOTFILES/z.sh ~/z.sh

touch ~/.z

curl -sfL git.io/antibody | sudo sh -s - -b /usr/local/bin

git config --global push.default current
git config --global pull.rebase true

npm i -g gitpkg
npm i -g npm-check-updates

export EDITOR=vim
