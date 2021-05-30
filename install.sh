DOTFILES=/workspaces/.codespaces/.persistedshare/dotfiles

cp $DOTFILES/zshrc ~/.zshrc
cp $DOTFILES/zsh_plugins.txt ~/.zsh_plugins.txt
cp $DOTFILES/z.sh ~/z.sh

touch ~/.z

curl -sfL git.io/antibody | sudo sh -s - -b /usr/local/bin

if [ -n "$NPM_ACCESS_TOKEN" ]; then
  echo "//registry.npmjs.org/:_authToken=$NPM_ACCESS_TOKEN" > ~/.npmrc
fi

git config --global push.default current
git config --global pull.rebase true

npm i -g gitpkg
npm i -g npm-check-updates

export EDITOR=vim
