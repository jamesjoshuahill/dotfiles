function fzf-git
  git l --color=always | fzf --height 100% --border --ansi --no-sort --reverse --multi --preview 'bash -c "grep -o \"[a-f0-9]\{7,\}\" <<< {} | xargs git show --color=always | head -"'$LINES | grep -o "[a-f0-9]\{7,\}"
end
