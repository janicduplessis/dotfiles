DOTFILES=/workspaces/.codespaces/.persistedshare/dotfiles

cp $DOTFILES/.zshrc $HOME/.zshrc
cp $DOTFILES/z.sh $HOME/z.sh

sudo apt-get update
sudo apt-get install -y zsh

curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh | bash

if [ -n "$NPM_ACCESS_TOKEN" ]; then
  echo "//registry.npmjs.org/:_authToken=$NPM_ACCESS_TOKEN" > ~/.npmrc
fi

git config --global push.default current
git config --global pull.rebase true

npm i -g gitpkg
npm i -g npm-check-updates

export EDITOR=vim
