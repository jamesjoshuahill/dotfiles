# rbenv
status --is-interactive; and . (rbenv init -|psub)

# go
set -x GOPATH $HOME/go

# aliases
alias bake='bundle exec rake'
alias be='bundle exec'
alias bi='bundle install'
alias es='exercism submit'
alias ef='exercism fetch'
alias irb='irb -r irb/completion'
alias ll='ls -alG'
alias o='open .'
alias r='rspec'
alias s='subl .'
alias sbp='subl ~/.bash_profile'
alias sgc='subl ~/.gitconfig'
alias sfc='subl ~/.config/fish/config.fish'
alias t='gittower .'

# thefuck
function fuck -d 'Correct your previous console command'
    set -l exit_code $status
    set -l eval_script (mktemp 2>/dev/null ; or mktemp -t 'thefuck')
    set -l fucked_up_commandd $history[1]
    thefuck $fucked_up_commandd > $eval_script
    . $eval_script
    rm $eval_script
    if test $exit_code -ne 0
        history --delete $fucked_up_commandd
    end
end

# direnv
eval (direnv hook fish)
