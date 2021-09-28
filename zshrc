DISABLE_UPDATE_PROMPT="true"

autoload -U compinit && compinit

source ~/.zplug/init.zsh

zplug "zsh-users/zsh-completions"
zplug "agkozak/zsh-z"
zplug "plugins/adb", from:oh-my-zsh
zplug "plugins/aws", from:oh-my-zsh
zplug "plugins/docker", from:oh-my-zsh
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/npm", from:oh-my-zsh
zplug "plugins/osx", from:oh-my-zsh
zplug "plugins/yarn", from:oh-my-zsh
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-syntax-highlighting"
zplug "romkatv/powerlevel10k", as:theme


# Install plugins if there are plugins that have not been installed
if ! zplug check; then
  zplug install
fi

zplug load

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# User configuration

~/z.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

if [ -n "$NPM_ACCESS_TOKEN" ]; then
  echo "//registry.npmjs.org/:_authToken=$NPM_ACCESS_TOKEN" > ~/.npmrc
fi
