c() { cd ~/code/$1; }
_c() { _files -W ~/code -/; }
compdef _c c

h() { cd ~/$1; }
_h() { _files -W ~/ -/; }
compdef _h h

# autocorrect is more annoying than helpful
unsetopt correct_all

# GTD dir structure
export gtd_root="/Users/shoaib/Documents"
export inbox="$gtd_root/00_inbox"
export actions="$gtd_root/01_actions"
export incubate="$gtd_root/02_incubate"
export current_projects="$gtd_root/03_current_projects/"
export archive="$gtd_root/04_archive"

# a few aliases I like
alias i="cd $gtd_root/00_inbox"
alias a="cd $gtd_root/01_actions"
alias p="builtin cd $gtd_root/03_current_projects"
alias sbzr='subl ~/.zshrc'
alias szr='source ~/.zshrc'

# Git
alias g='git'
alias gs='git status'
alias gci='git commit'
alias gb='git branch -a -v'
alias gd='git diff | atom'
alias gpl='git pull'
alias gps='git push'
alias gco='git checkout'
alias ga='git add'

alias tlog='tail -f log/development.log'

alias journal='atom ~/Dropbox/Essays/journal.md'
alias blog="builtin cd $gtd_root/03_current_projects/myblog && atom ."

# add plugin's bin directory to path
export PATH="$(dirname $0)/bin:$PATH"

# add go
export PATH=$PATH:/usr/local/opt/go/libexec/bin:/usr/local/opt/go/bin
export GOPATH=/usr/local/opt/go

export RBENV_ROOT=/usr/local/var/rbenv
