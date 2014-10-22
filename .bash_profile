eval "$(rbenv init -)"

PATH=/usr/local/bin:$PATH:/usr/local/sbin:~/bin

export CDPATH=".:~:~/development:~/personal"

# PS1 with git branch
parse_git_branch() {
git symbolic-ref HEAD 2> /dev/null | cut -d/ -f3- | sed -e 's/\(.*\)/ (\1)/'
}
PS1="\[$(tput setaf 6)\][\u@\h \W\$(parse_git_branch)]\\$ \[$(tput sgr0)\]"

# Bash completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

# Git tab completion
source ~/.git-completion.bash

# Aliases
alias fs='foreman start'
alias irb='irb -r irb/completion'
alias s='subl .'
alias bi='bundle install'
alias ll='ls -al'
alias r='rspec'
alias rs='rspec spec'
alias rt='rake test'
alias vm='ssh root@development.vm'
alias qa1='ssh jhill@integration-qa-1.staging.whitelabeldating.com'
alias qa2='ssh jhill@integration-qa-2.staging.whitelabeldating.com'
alias qa3='ssh jhill@integration-qa-3.staging.whitelabeldating.com'
alias qa4='ssh jhill@integration-qa-4.staging.whitelabeldating.com'
alias qa5='ssh jhill@integration-qa-5.staging.whitelabeldating.com'
alias staging1='ssh jhill@staging1.whitelabeldating.com'
alias staging2='ssh jhill@staging2.whitelabeldating.com'
alias t='gittower .'

# Exercism.io
alias es='exercism submit'
alias ef='exercism fetch'
