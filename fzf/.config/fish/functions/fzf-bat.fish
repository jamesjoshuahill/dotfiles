function fzf-bat
  fzf --preview 'bat --color=always --line-range :500 {}'
end
