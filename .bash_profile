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
alias bake='bundle exec rake'
alias be='bundle exec'
alias bi='bundle install'
alias es='exercism submit'
alias ef='exercism fetch'
alias fs='foreman start'
alias g='git st'
alias irb='irb -r irb/completion'
alias j='jekyll serve'
alias ll='ls -alG'
alias ls='ls -G'
alias o='open .'
alias r='rspec'
alias rs='rspec spec'
alias rt='rake test'
alias s='subl .'
alias sbp='subl ~/.bash_profile'
alias sgc='subl ~/.gitconfig'
alias t='gittower .'
