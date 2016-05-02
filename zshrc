ZSH=$HOME/.oh-my-zsh
ZSH_THEME="bullet-train"
DISABLE_AUTO_UPDATE="true"
DISABLE_LS_COLORS="true"

plugins=( atom brew bundler docker git go pip python rails rbenv ruby sabman sublime vim z )

export PATH="$HOME/anaconda/bin:/usr/local/bin:$PATH"
export EDITOR='atom -n'

source $ZSH/oh-my-zsh.sh

# for Homebrew installed rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
