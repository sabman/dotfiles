ZSH=$HOME/.oh-my-zsh
ZSH_THEME="sabman"
DISABLE_AUTO_UPDATE="true"
DISABLE_LS_COLORS="true"

plugins=(git bundler brew gem sabman)

export PATH="/usr/local/bin:$PATH"
export EDITOR='atom -n'

source $ZSH/oh-my-zsh.sh

# for Homebrew installed rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
